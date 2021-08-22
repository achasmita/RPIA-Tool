"""
Copyright Â© Prof. Anurag Srivastava, Gowtham Kandaperumal, Linli Jia, and Dr. Sanjeev Pannala.
No image or information should be reproduced, transmitted, or copied without the prior agreement with Prof. Srivastava.
"""

import json
import os
import random
import time
import csv
from datetime import datetime
from random import choice
from flask import Flask, request, Response, render_template, jsonify, redirect, flash
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from werkzeug.utils import secure_filename
import pandas as pd

app = Flask(__name__)
random.seed()  # Initialize the random number generator
app.config['DEBUG'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:password@5432@localhost/radiencedb'
# SQLALCHEMY_TRACK_MODIFICATIONS = False
db = SQLAlchemy(app)
ma = Marshmallow(app)

#Output Edge File
class RadienceOutputEdgeFile(db.Model):
    name = db.Column(db.String(20), primary_key=True)
    from_node = db.Column(db.String(6))
    to_node = db.Column(db.String(6))
    status = db.Column(db.String(1))

#Output Node File
class RadienceOutputNodeFile(db.Model):
    name = db.Column(db.String(6), primary_key=True)
    voltage = db.Column(db.String(6))
    load = db.Column(db.String(6))
    gen = db.Column(db.String(6))
    kind = db.Column(db.String(6))
    critical = db.Column(db.String(1))
    pathredundacy = db.Column(db.String(1))

class SystemInfo(db.Model):
    key_code  = db.Column(db.String(6), primary_key=True)
    key_desc = db.Column(db.String(20))
    key_val = db.Column(db.Integer)

class CbDetails(db.Model):
    cb_id = db.Column(db.String(10), primary_key=True)
    cb_loc = db.Column(db.String(10))
    cb_status = db.Column(db.String(2))
    # cb_timestamp = db.Column(db.DateTime)

    def __init__(self, cb_id, cb_loc, cb_status):
        self.cb_id = cb_id
        self.cb_loc = cb_loc
        self.cb_status = cb_status

class SubsDetails(db.Model):
    sub_id = db.Column(db.String(10), primary_key=True)
    sub_loc = db.Column(db.String(10))
    sub_out_feed = db.Column(db.String(10))
    sub_remarks = db.Column(db.String(20))
    # sub_timestamp = db.Column(db.DateTime)
    
class TransDetails(db.Model):
    trans_id = db.Column(db.String(10), primary_key=True)
    trans_rating = db.Column(db.String(10))
    trans_loc = db.Column(db.String(10))
    trans_op_condition = db.Column(db.String(20))
    # trans_timestamp = db.Column(db.DateTime)

    def __init__(self, trans_id, trans_rating, trans_loc, trans_op_condition):
        self.trans_id=trans_id
        self.trans_rating=trans_rating
        self.trans_loc=trans_loc
        self.trans_op_condition

class GuDetails(db.Model):
    g_id = db.Column(db.String(10), primary_key=True)
    g_kv = db.Column(db.String(10))
    g_unit_id = db.Column(db.String(10))
    g_status = db.Column(db.String(20))
    g_ctrl = db.Column(db.String(10))
    g_mw_measured = db.Column(db.String(10))
    g_rating = db.Column(db.String(10))
    # g_timestamp = db.Column(db.DateTime) 

    def __init__(self, g_id, g_kv, g_unit_id, g_status, g_ctrl, g_mw_measured, g_rating):
        self.g_id=g_id
        self.g_kv=g_kv
        self.g_unit_id=g_unit_id
        self.g_status=g_status
        self.g_ctrl=g_ctrl
        self.g_mw_measured=g_mw_measured
        self.g_rating=g_rating
        
class LoadDetails(db.Model):
    l_id = db.Column(db.String(10), primary_key=True)
    l_kv = db.Column(db.String(10))
    l_unit_id = db.Column(db.String(10))
    l_status = db.Column(db.String(20))
    l_type = db.Column(db.String(10))
    l_mw_measured = db.Column(db.String(10))
    l_mvar_measured = db.Column(db.String(10))
    # l_timestamp = db.Column(db.DateTime)

    def __init__(self, l_id, l_kv, l_unit_id, l_status, l_type, l_mw_measured, l_mvar_measured):
        self.l_id=l_id
        self.l_kv=l_kv
        self.l_unit_id=l_unit_id
        self.l_status=l_status
        self.l_type=l_type
        self.l_mw_measured=l_mw_measured
        self.l_mvar_measured=l_mvar_measured

class ThreatType(db.Model):
    t_property = db.Column(db.String(50), primary_key=True)
    t_value = db.Column(db.String(50))
    
    def __init__(self, t_property, t_value): 
           self.t_property=t_property
           self.t_value=t_value
          
class ResilienceAnalysisCasea(db.Model):
    property = db.Column(db.String(50), primary_key=True)
    _value = db.Column(db.String(50))
    
    
    def __init__(self, property, _value): 
           self.property=property
           self._value=_value
 
class ResilienceAnalysisCaseb(db.Model):
    property = db.Column(db.String(50), primary_key=True)
    _value = db.Column(db.String(50))
    
    
    def __init__(self, property, _value): 
           self.property=property
           self._value=_value            
    
class ResilienceInvestmentAnalysis(db.Model):
    property = db.Column(db.String(50), primary_key=True)
    _value = db.Column(db.String(50))
    
    def __init__(self, property, _value): 
           self.property=property
           self._value=_value
        
class AssetDamage(db.Model):
    a_type = db.Column(db.String(50), primary_key=True)
    a_id = db.Column(db.String(50))
    a_location = db.Column(db.String(50))
    a_specifications = db.Column(db.String(50))
    a_criticality_index = db.Column(db.String(50))
    a_operational_limits = db.Column(db.String(50))
   

    def __init__(self, a_type, a_id, a_location, a_specifications, a_criticality_index, a_operational_limits):
        self.a_type=a_type
        self.a_id=a_id
        self.a_location=a_location
        self.a_specifications=a_specifications
        self.a_criticality_index=a_criticality_index
        self.a_operational_limits=a_operational_limits
 
class InventoryEstimation(db.Model):
    inv_type = db.Column(db.String(50), primary_key=True)
    inv_specifications = db.Column(db.String(50))
    inv_requirement = db.Column(db.String(50))
    inv_availability_status = db.Column(db.String(50))
    
    def __init__(self, inv_type, inv_specifications, inv_requirement, inv_availability_status ): 
           self. inv_type= inv_type
           self.inv_specifications=inv_specifications
           self.inv_requirement=inv_requirement
           self.inv_availability_status=inv_availability_status
           
class CrewRequirement(db.Model):
    crew_type = db.Column(db.String(50), primary_key=True)
    manpower = db.Column(db.String(50))
    crew_location = db.Column(db.String(50))
    
    def __init__(self, crew_type, manpower, crew_location): 
           self. crew_type=crew_type
           self.manpower=manpower
           self.crew_location=crew_location
           
class InventoryAvailable(db.Model):
    inv_type = db.Column(db.String(50), primary_key=True)
    specifications = db.Column(db.String(50))
    quantity = db.Column(db.String(50))
    
    def __init__(self, inv_type, specifications, quantity): 
           self. inv_type=inv_type
           self.specifications=specifications
           self.quantity=quantity



class ResiliencyScores(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    res_timestamp = db.Column(db.DateTime)
    res_rg = db.Column(db.String(10))
    res_tif = db.Column(db.String(10))
    res_dcl = db.Column(db.String(10))
    res_clnl = db.Column(db.String(10))
    res_val = db.Column(db.String(10))

    def __init__(self, res_timestamp, res_rg, res_tif, res_dcl, res_clnl, res_val):
        self.res_timestamp = res_timestamp
        self.res_rg = res_rg
        self.res_tif = res_tif
        self.res_dcl = res_dcl
        self.res_clnl = res_clnl
        self.res_val = res_val

class ThreatImpacts(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    threat_timestamp = db.Column(db.DateTime)
    threat_vol = db.Column(db.String(10))
    threat_freq = db.Column(db.String(10))
    threat_sch_load = db.Column(db.String(10))
    threat_sch_gen = db.Column(db.String(10))
    threat_present_load = db.Column(db.String(10))
    threat_present_gen = db.Column(db.String(10))
    threat_affected_loc = db.Column(db.String(10))

class ExpectedOutage(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    eo_timestamp = db.Column(db.DateTime)
    eo_fault_loc = db.Column(db.String(10))
    eo_iso_sec_detail = db.Column(db.String(10))
    eo_wind_speed = db.Column(db.String(10))
    eo_wind_direction = db.Column(db.String(10))

class EventDetails(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    event_timestamp = db.Column(db.DateTime)
    event_type = db.Column(db.String(10))
    event_lat = db.Column(db.String(10))
    event_long = db.Column(db.String(10))
    event_wind_speed = db.Column(db.String(10))
    event_wind_direction = db.Column(db.String(10))

class ResilientMode(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    resilient_timestamp = db.Column(db.DateTime)
    resilient_tf = db.Column(db.String(10))
    resilient_gf = db.Column(db.String(10))
    resilient_tif = db.Column(db.String(10))
    resilient_dcl = db.Column(db.String(10))
    resilient_clnl = db.Column(db.String(10))
    resilient_resval = db.Column(db.String(10))

class EconomicMode(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    eco_timestamp = db.Column(db.DateTime)
    eco_tf = db.Column(db.String(10))
    eco_gf = db.Column(db.String(10))
    eco_tif = db.Column(db.String(10))
    eco_dcl = db.Column(db.String(10))
    eco_clnl = db.Column(db.String(10))
    eco_res_val = db.Column(db.String(10))

# This table is for all the Nodes location on Map
class RadienceStaticNodesGIS(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    node_lat = db.Column(db.String(20), nullable=False)
    node_long = db.Column(db.String(20), nullable=False)
    node_code = db.Column(db.String(10)) # Codes like N200, N300
    node_desc = db.Column(db.String(100))

# This table is for all the static links on Map
class RadienceStaticNodesLinks(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    from_node_lat = db.Column(db.String(20), nullable=False)
    from_node_long = db.Column(db.String(20), nullable=False)
    to_node_lat = db.Column(db.String(20), nullable=False)
    to_node_long = db.Column(db.String(20), nullable=False)
    link_desc = db.Column(db.String(20))

# This table is for all the Nodes location on Map
class RadienceDynamicNodesGIS(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    node_lat = db.Column(db.String(20), nullable=False)
    node_long = db.Column(db.String(20), nullable=False)
    node_code = db.Column(db.String(10)) # Codes like N200, N300
    node_desc = db.Column(db.String(100))
    node_status = db.Column(db.Integer, nullable=False)

# This table is for all the static links on Map
class RadienceDynamicNodesLinks(db.Model):
    link_id = db.Column(db.String(20), primary_key=True)
    from_node_lat = db.Column(db.String(20), nullable=False)
    from_node_long = db.Column(db.String(20), nullable=False)
    to_node_lat = db.Column(db.String(20), nullable=False)
    to_node_long = db.Column(db.String(20), nullable=False)
    link_desc = db.Column(db.String(20))
    link_status = db.Column(db.String(5), nullable=False, default="1")


class PreEventNodesLinks(db.Model):
    link_id = db.Column(db.String(20), primary_key=True)
    from_node_lat = db.Column(db.String(20), nullable=False)
    from_node_long = db.Column(db.String(20), nullable=False)
    to_node_lat = db.Column(db.String(20), nullable=False)
    to_node_long = db.Column(db.String(20), nullable=False)
    link_desc = db.Column(db.String(20))
    link_status = db.Column(db.String(5), nullable=False, default="1")

class DuringEventNodesLinks(db.Model):
    link_id = db.Column(db.String(20), primary_key=True)
    from_node_lat = db.Column(db.String(20), nullable=False)
    from_node_long = db.Column(db.String(20), nullable=False)
    to_node_lat = db.Column(db.String(20), nullable=False)
    to_node_long = db.Column(db.String(20), nullable=False)
    link_desc = db.Column(db.String(20))
    link_status = db.Column(db.String(5), nullable=False, default="1")


class PostEventNodesLinks(db.Model):
    link_id = db.Column(db.String(20), primary_key=True)
    from_node_lat = db.Column(db.String(20), nullable=False)
    from_node_long = db.Column(db.String(20), nullable=False)
    to_node_lat = db.Column(db.String(20), nullable=False)
    to_node_long = db.Column(db.String(20), nullable=False)
    link_desc = db.Column(db.String(20))
    link_status = db.Column(db.String(5), nullable=False, default="1")

# Marshmallow classes
class RadienceOutputEdgeFileSchema(ma.Schema):
    class Meta:
        fields = ('name', 'from_node', 'to_node', 'status')
output_edge_schema = RadienceOutputEdgeFileSchema()
output_edges_schema = RadienceOutputEdgeFileSchema(many=True)

class RadienceOutputNodeFileSchema(ma.Schema):
    class Meta:
        fields = ('name','voltage','load',
            'gen',
            'kind',
            'critical', 
            'pathredundacy')
output_node_schema = RadienceOutputNodeFileSchema()
output_nodes_schema = RadienceOutputNodeFileSchema(many=True)


class SystemInfoSchema(ma.Schema):
    class Meta:
        fields = ('key_code','key_desc','key_val')
system_info_schema = SystemInfoSchema()
system_infos_schema = SystemInfoSchema(many=True)  


class CbDetailsSchema(ma.Schema):
    class Meta:
        fields = ('cb_id', 'cb_loc', 'cb_status')
cb_detail_schema=CbDetailsSchema()
cb_details_schema=CbDetailsSchema(many=True)


class TransDetailsSchema(ma.Schema):
    class Meta:
        fields = ('trans_id', 'trans_rating', 'trans_loc', 'trans_op_condition')
trans_detail_schema = TransDetailsSchema()
trans_details_schema = TransDetailsSchema(many=True)


class SubsDetailsSchema(ma.Schema):
    class Meta:
        fields=('sub_id', 'sub_loc', 'sub_out_feed', 'sub_remarks')
sub_detail_schema = SubsDetailsSchema()
sub_details_schema = SubsDetailsSchema(many=True)

class ThreatTypeSchema(ma.Schema):
    class Meta:
        fields=('t_property', 't_value')
threat_type_schema = ThreatTypeSchema()
threat_types_schema = ThreatTypeSchema(many=True)

class ResilienceAnalysisCaseaSchema(ma.Schema):
    class Meta:
        fields=('property', '_value')
resilience_analysis_casea_schema = ResilienceAnalysisCaseaSchema()
resilience_analysis_casea_schema = ResilienceAnalysisCaseaSchema(many=True)

class ResilienceAnalysisCasebSchema(ma.Schema):
    class Meta:
        fields=('property', '_value')
resilience_analysis_caseb_schema = ResilienceAnalysisCasebSchema()
resilience_analysis_caseb_schema = ResilienceAnalysisCasebSchema(many=True)

class ResilienceInvestmentAnalysisSchema(ma.Schema):
    class Meta:
        fields=('property', '_value')
resilience_investment_analysis_schema = ResilienceInvestmentAnalysisSchema()
resilience_investments_analysis_schema = ResilienceInvestmentAnalysisSchema(many=True)


class GuDetailsSchema(ma.Schema):
    class Meta:
        fields = ('g_id', 'g_kv','g_unit_id', 'g_status', 'g_ctrl', 'g_mw_measured', 'g_rating')
gu_detail_schema = GuDetailsSchema()
gu_details_schema = GuDetailsSchema(many=True)

class AssetDamageSchema(ma.Schema):
    class Meta:
        fields = ('a_type', 'a_id','a_location', 'a_specifications', 'a_criticality_index', 'a_operational_limits')
asset_damage_schema = AssetDamageSchema()
assets_damage_schema = AssetDamageSchema(many=True)

class InventoryEstimationSchema(ma.Schema):
    class Meta:
        fields=('inv_type', 'inv_specifications', 'inv_requirement', 'inv_availability_status')
inventory_estimation_schema = InventoryEstimationSchema()
inventory_estimations_schema = InventoryEstimationSchema(many=True)

class CrewRequirementSchema(ma.Schema):
    class Meta:
        fields=('crew_type', 'manpower', 'crew_location')
crew_requirement_schema = CrewRequirementSchema()
crew_requirements_schema = CrewRequirementSchema(many=True)

class InventoryAvailableSchema(ma.Schema):
    class Meta:
        fields=('inv_type', 'specifications', 'quantity')
inventory_available_schema = InventoryAvailableSchema()
inventory_availables_schema = InventoryAvailableSchema(many=True)

class LoadDetailsSchema(ma.Schema):
    class Meta:
        fields = ('l_id', 'l_kv','l_unit_id', 'l_status', 'l_type', 'l_mw_measured', 'l_mvar_measured')
loads_detail_schema = LoadDetailsSchema()
loads_details_schema = LoadDetailsSchema(many=True)

class RadienceStaticNodesGISSchema(ma.Schema):
    class Meta: 
        fields = ('id','node_lat','node_long','node_code','node_desc')
static_node_schema = RadienceStaticNodesGISSchema()
static_nodes_schema = RadienceStaticNodesGISSchema(many=True)

class RadienceDynamicEdgesGISSchema(ma.Schema):
    class Meta:
        fields = ('link_id','from_node_lat','from_node_long','to_node_lat','to_node_long','link_desc','link_status')
dynamic_link_schema = RadienceDynamicEdgesGISSchema()
dynamic_links_schema = RadienceDynamicEdgesGISSchema(many=True)


class PreEventDynamicEdgesGISSchema(ma.Schema):
    class Meta:
        fields = ('link_id','from_node_lat','from_node_long','to_node_lat','to_node_long','link_desc','link_status')
pre_dynamic_link_schema = PreEventDynamicEdgesGISSchema()
pre_dynamic_links_schema = PreEventDynamicEdgesGISSchema(many=True)

class DuringEventDynamicEdgesGISSchema(ma.Schema):
    class Meta:
        fields = ('link_id','from_node_lat','from_node_long','to_node_lat','to_node_long','link_desc','link_status')
during_dynamic_link_schema = DuringEventDynamicEdgesGISSchema()
during_dynamic_links_schema = DuringEventDynamicEdgesGISSchema(many=True)

class PostEventDynamicEdgesGISSchema(ma.Schema):
    class Meta:
        fields = ('link_id','from_node_lat','from_node_long','to_node_lat','to_node_long','link_desc','link_status')
post_dynamic_link_schema = PostEventDynamicEdgesGISSchema()
post_dynamic_links_schema = PostEventDynamicEdgesGISSchema(many=True)


#Routes
@app.route('/')
def index():
    return render_template('RPIA.html')

@app.route('/systeminfo', methods = ['GET', 'POST'])
def system_info():
    if request.method == 'POST':
        f = request.files['file']
        fstring = f.read()
        fstring = fstring.decode("utf-8") 
        
        #create list of dictionaries keyed by header row
        csv_dicts = [{k: v for k, v in row.items()} for row in csv.DictReader(fstring.splitlines(), skipinitialspace=True)]
        csv_dicts = csv_dicts[0]

        for k in csv_dicts:
            try:
                updateStatus = SystemInfo.query.filter_by(key_code=k).update(dict(key_val=csv_dicts[k]))
                if updateStatus == 0: 
                    return 'Unsuccessful. Please check the file structure'
                db.session.commit()
            except:
                return "Something went wrong. Check the csv file structure."
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"


    if request.method == 'GET':  
        query_result = SystemInfo.query.all()
        final_result = system_infos_schema.dump(query_result) 
        return jsonify({'data': final_result})


@app.route('/cbdetails', methods = ['GET', 'POST'])
def cb_details():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)): 
            cbrow = CbDetails(str(data['cb_id'][i]), str(data['cb_location'][i]), str(data['cb_status'][i]))
            try:
                db.session.add(cbrow)
                # if status == 0:
                #     return 'Unsuccessful. Please check the file structure'
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = CbDetails.query.all()
        final_result = cb_details_schema.dump(query_result) 
        return jsonify({'data': final_result})


@app.route('/transdetails', methods = ['GET', 'POST'])
def trans_details():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)): 
            transRow = TransDetails(str(data['t_id'][i]), str(data['t_rating'][i]), str(data['t_location'][i]), str(data['t_oper_condition'][i]))
            try:
                db.session.add(transRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = TransDetails.query.all()
        final_result = trans_details_schema.dump(query_result) 
        return jsonify({'data': final_result})


@app.route('/subdetails', methods = ['GET', 'POST'])
def sub_details():
    if request.method == 'POST':
        pass
    else:
        query_result = SubsDetails.query.all()
        final_result = sub_details_schema.dump(query_result) 
        return jsonify({'data': final_result})
       
    

       

@app.route('/gudetails', methods = ['GET', 'POST'])
def gu_details():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)): 
            guRow = GuDetails(str(data['g_id'][i]), str(data['g_kv'][i]), str(data['g_unitid'][i]), str(data['g_status'][i]), str(data['g_control'][i]), str(data['g_mw'][i]), str(data['g_rating'][i]))
            try:
                db.session.add(guRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"
    else:
        query_result = GuDetails.query.all()
        final_result = gu_details_schema.dump(query_result) 
        return jsonify({'data': final_result})

@app.route('/threattype', methods = ['GET', 'POST'])

def threat_type():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)):
            threatRow = ThreatType(str(data['t_property'][i]), str(data['t_value'][i]))
            try:
                db.session.add(threatRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = ThreatType.query.all()
        final_result = threat_types_schema.dump(query_result) 
        return jsonify({'data': final_result})

@app.route('/resilienceanalysiscasea', methods = ['GET', 'POST'])
def resilience_analysis_casea():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)):
            RA1Row = ResilienceAnalysisCasea(str(data['property'][i]), str(data['_value'][i]))
            try:
                db.session.add(RA1Row)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = ResilienceAnalysisCasea.query.all()
        final_result = resilience_analysis_casea_schema.dump(query_result) 
        return jsonify({'data': final_result})    
 
@app.route('/resilienceanalysiscaseb', methods = ['GET', 'POST'])
def resilience_analysis_caseb():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)):
            RA2Row = ResilienceAnalysisCaseb(str(data['property'][i]), str(data['_value'][i]))
            try:
                db.session.add(RA2Row)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = ResilienceAnalysisCaseb.query.all()
        final_result = resilience_analysis_caseb_schema.dump(query_result) 
        return jsonify({'data': final_result})    
    
@app.route('/resilienceinvestmentanalysis', methods = ['GET', 'POST'])
def resilience_investment_analysis():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)):
            RIARow = ResilienceInvestmentAnalysis(str(data['property'][i]), str(data['_value'][i]))
            try:
                db.session.add(RIARow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = ResilienceInvestmentAnalysis.query.all()
        final_result = resilience_investments_analysis_schema.dump(query_result) 
        return jsonify({'data': final_result})         
    
@app.route('/assetdamage', methods = ['GET', 'POST'])
def asset_damage():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)): 
            assetRow = AssetDamage(str(data['a_type'][i]), str(data['a_id'][i]), str(data['a_location'][i]), str(data['a_specifications'][i]), str(data['a_criticality_index'][i]), str(data['a_operational_limits'][i]))
            try:
                db.session.add(assetRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"
    else:
        query_result = AssetDamage.query.all()
        final_result = assets_damage_schema.dump(query_result) 
        return jsonify({'data': final_result})

@app.route('/inventoryestimation', methods = ['GET', 'POST'])    
def inventory_estimation():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)):
            invRow = InventoryEstimation(str(data['inv_type'][i]), str(data['inv_specifications'][i]),str(data['inv_requirement'][i]),str(data['inv_availability_status'][i]))
            try:
                db.session.add(invRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = InventoryEstimation.query.all()
        final_result = inventory_estimations_schema.dump(query_result) 
        return jsonify({'data': final_result})
    
@app.route('/crewrequirement', methods = ['GET', 'POST'])    
def crew_requirement():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)):
            crewRow = CrewRequirement(str(data['crew_type'][i]), str(data['manpower'][i]),str(data['crew_location'][i]))
            try:
                db.session.add(crewRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = CrewRequirement.query.all()
        final_result = crew_requirements_schema.dump(query_result) 
        return jsonify({'data': final_result})

@app.route('/inventoryavailable', methods = ['GET', 'POST'])    
def inventory_available():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)):
            invRow = InventoryAvailable(str(data['inv_type'][i]), str(data['specifications'][i]),str(data['quantity'][i]))
            try:
                db.session.add(invRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"

    else:
        query_result = InventoryAvailable.query.all()
        final_result = inventory_availables_schema.dump(query_result) 
        return jsonify({'data': final_result})

@app.route('/loaddetails', methods = ['GET', 'POST'])
def load_details():
    if request.method == 'POST':
        f = request.files['file']
        data = pd.read_csv(f)
        
        for i in range(len(data)): 
            guRow = LoadDetails(str(data['l_id'][i]), str(data['l_kv'][i]), str(data['l_unitid'][i]), str(data['l_status'][i]), str(data['l_type'][i]), str(data['l_mw'][i]), str(data['l_measured'][i]))
            try:
                db.session.add(guRow)
                db.session.commit()
            except ValueError as ve:
                print(ve)
                return "Something went wrong. Check the csv file structure."    
        
        wait_time = 3000
        seconds = wait_time / 1000
        redirect_url = 'http://127.0.0.1:5000/'
        return f"<html><body><p>Your upload was successful. You will be redirected to homepage in { seconds } seconds</p><script>var timer = setTimeout(function() {{window.location='{ redirect_url }'}}, { wait_time });</script></body></html>"
    else:
        query_result = LoadDetails.query.all()
        final_result = loads_details_schema.dump(query_result) 
        return jsonify({'data': final_result})


@app.route('/staticnodes')
def static_nodes():
    query_result = RadienceStaticNodesGIS.query.all()
    final_result = static_nodes_schema.dump(query_result)
    links_result = RadienceDynamicNodesLinks.query.all()
    final_links_result = dynamic_links_schema.dump(links_result) 
    return jsonify({'data': final_result, 'links': final_links_result})

@app.route('/preeventedges')
def pre_event_edges():
    # query_result = PreEventNodesLinks.query.all()
    # final_result = pre_static_nodes_schema.dump(query_result)
    links_result = PreEventNodesLinks.query.all()
    final_links_result = pre_dynamic_links_schema.dump(links_result) 
    return jsonify({'links': final_links_result})


@app.route('/duringeventedges')
def during_event_edges():
    # query_result = PreEventNodesLinks.query.all()
    # final_result = pre_static_nodes_schema.dump(query_result)
    links_result = DuringEventNodesLinks.query.all()
    final_links_result = during_dynamic_links_schema.dump(links_result) 
    return jsonify({'links': final_links_result})


@app.route('/posteventedges')
def post_event_edges():
    # query_result = PreEventNodesLinks.query.all()
    # final_result = pre_static_nodes_schema.dump(query_result)
    links_result = PostEventNodesLinks.query.all()
    final_links_result = post_dynamic_links_schema.dump(links_result) 
    return jsonify({'links': final_links_result})

@app.route('/exportfiles')
def export_files():
    edge = RadienceOutputEdgeFile.query.all()
    node = RadienceOutputNodeFile.query.all()
    edge_result = output_edges_schema.dump(edge)
    node_result = output_nodes_schema.dump(node)

    path = os.getcwd()
    path = path + "/outputfiles/"
    with open(path+'edge-file-case0.csv', 'w', newline='') as csvfile:
        fieldnames = ['name', 'from_node','to_node','status']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for eachrow in edge_result:
            writer.writerow({'name': eachrow['name'], 'from_node': eachrow['from_node'], 'to_node': eachrow['to_node'], 'status': eachrow['status']})

    with open(path+'node-file-case0.csv', 'w', newline='') as csvfile:
        fieldnames = ['name', 'voltage','load','gen', 'kind', 'critical', 'pathredundacy']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for eachrow in node_result:
            writer.writerow({'name': eachrow['name'], 'voltage': eachrow['voltage'], 
            'load': eachrow['load'], 'gen': eachrow['gen'], 'kind':eachrow['kind'], 'critical':eachrow['critical'], 
            'pathredundacy':eachrow['pathredundacy']})

    # print(final_result[0].name)
    result = {"result": "Files created"}
    return jsonify(result)



#Updated files in the system

if __name__ == '__main__':
    app.run(debug=True, threaded=True)