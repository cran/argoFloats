CDF      
      	DATE_TIME         	STRING256         STRING64   @   STRING32       STRING16      STRING8       STRING4       STRING2       N_PROF        N_PARAM       N_LEVELS   L   	N_HISTORY          N_CALIB          	   title         Argo float vertical profile    institution       CORIOLIS   source        
Argo float     history       X2021-02-25T21:21:22Z creation; 2021-02-27T00:18:21Z last update (coriolis COQC software)   
references        (http://www.argodatamgt.org/Documentation   user_manual_version       3.1    Conventions       Argo-3.1 CF-1.6    featureType       trajectoryProfile      decoder_version       	CODA_039g         @   	DATA_TYPE                  	long_name         	Data type      conventions       Argo reference table 1     
_FillValue                    6?   FORMAT_VERSION                 	long_name         File format version    
_FillValue                    6?   HANDBOOK_VERSION               	long_name         Data handbook version      
_FillValue                    7    REFERENCE_DATE_TIME                 	long_name         !Date of reference for Julian days      conventions       YYYYMMDDHHMISS     
_FillValue                    7   DATE_CREATION                   	long_name         Date of file creation      conventions       YYYYMMDDHHMISS     
_FillValue                    7   DATE_UPDATE                 	long_name         Date of update of this file    conventions       YYYYMMDDHHMISS     
_FillValue                    7$   PLATFORM_NUMBER                   	long_name         Float unique identifier    conventions       WMO float identifier : A9IIIII     
_FillValue                    74   PROJECT_NAME                  	long_name         Name of the project    
_FillValue                  @  7<   PI_NAME                   	long_name         "Name of the principal investigator     
_FillValue                  @  7|   STATION_PARAMETERS           	            	long_name         ,List of available parameters for the station   conventions       Argo reference table 3     
_FillValue                  0  7?   CYCLE_NUMBER               	long_name         Float cycle number     conventions       =0...N, 0 : launch cycle (if exists), 1 : first complete cycle      
_FillValue         ??        7?   	DIRECTION                  	long_name         !Direction of the station profiles      conventions       -A: ascending profiles, D: descending profiles      
_FillValue                    7?   DATA_CENTRE                   	long_name         .Data centre in charge of float data processing     conventions       Argo reference table 4     
_FillValue                    7?   DC_REFERENCE                  	long_name         (Station unique identifier in data centre   conventions       Data centre convention     
_FillValue                     7?   DATA_STATE_INDICATOR                  	long_name         1Degree of processing the data have passed through      conventions       Argo reference table 6     
_FillValue                    8   	DATA_MODE                  	long_name         Delayed mode or real time data     conventions       >R : real time; D : delayed mode; A : real time with adjustment     
_FillValue                    8   PLATFORM_TYPE                     	long_name         Type of float      conventions       Argo reference table 23    
_FillValue                     8    FLOAT_SERIAL_NO                   	long_name         Serial number of the float     
_FillValue                     8@   FIRMWARE_VERSION                  	long_name         Instrument firmware version    
_FillValue                     8`   WMO_INST_TYPE                     	long_name         Coded instrument type      conventions       Argo reference table 8     
_FillValue                    8?   JULD               	long_name         ?Julian day (UTC) of the station relative to REFERENCE_DATE_TIME    standard_name         time   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
resolution        >?EȠ?Q)   
_FillValue        A.?~       axis      T           8?   JULD_QC                	long_name         Quality on date and time   conventions       Argo reference table 2     
_FillValue                    8?   JULD_LOCATION                  	long_name         @Julian day (UTC) of the location relative to REFERENCE_DATE_TIME   units         "days since 1950-01-01 00:00:00 UTC     conventions       8Relative julian days with decimal part (as parts of day)   
resolution        >?EȠ?Q)   
_FillValue        A.?~            8?   LATITUDE               	long_name         &Latitude of the station, best estimate     standard_name         latitude   units         degree_north   
_FillValue        @?i?       	valid_min         ?V?        	valid_max         @V?        axis      Y           8?   	LONGITUDE                  	long_name         'Longitude of the station, best estimate    standard_name         	longitude      units         degree_east    
_FillValue        @?i?       	valid_min         ?f?        	valid_max         @f?        axis      X           8?   POSITION_QC                	long_name         ,Quality on position (latitude and longitude)   conventions       Argo reference table 2     
_FillValue                    8?   POSITIONING_SYSTEM                    	long_name         Positioning system     
_FillValue                    8?   PROFILE_PRES_QC                	long_name         #Global quality flag of PRES profile    conventions       Argo reference table 2a    
_FillValue                    8?   PROFILE_TEMP_QC                	long_name         #Global quality flag of TEMP profile    conventions       Argo reference table 2a    
_FillValue                    8?   PROFILE_PSAL_QC                	long_name         #Global quality flag of PSAL profile    conventions       Argo reference table 2a    
_FillValue                    8?   VERTICAL_SAMPLING_SCHEME                  	long_name         Vertical sampling scheme   conventions       Argo reference table 16    
_FillValue                    8?   CONFIG_MISSION_NUMBER                  	long_name         :Unique number denoting the missions performed by the float     conventions       !1...N, 1 : first complete mission      
_FillValue         ??        9?   PRES         
      
   	long_name         )Sea water pressure, equals 0 at sea-level      standard_name         sea_water_pressure     
_FillValue        G?O?   units         decibar    	valid_min                	valid_max         F;?    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =???   axis      Z        0  9?   PRES_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  L  :?   PRES_ADJUSTED            
      
   	long_name         )Sea water pressure, equals 0 at sea-level      standard_name         sea_water_pressure     
_FillValue        G?O?   units         decibar    	valid_min                	valid_max         F;?    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =???   axis      Z        0  ;@   PRES_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  L  <p   PRES_ADJUSTED_ERROR          
         	long_name         VContains the error on the adjusted values as determined by the delayed mode QC process     
_FillValue        G?O?   units         decibar    C_format      %7.1f      FORTRAN_format        F7.1   
resolution        =???     0  <?   TEMP         
      	   	long_name         $Sea temperature in-situ ITS-90 scale   standard_name         sea_water_temperature      
_FillValue        G?O?   units         degree_Celsius     	valid_min         ?      	valid_max         B      C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :?o     0  =?   TEMP_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  L  ?   TEMP_ADJUSTED            
      	   	long_name         $Sea temperature in-situ ITS-90 scale   standard_name         sea_water_temperature      
_FillValue        G?O?   units         degree_Celsius     	valid_min         ?      	valid_max         B      C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :?o     0  ?h   TEMP_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  L  @?   TEMP_ADJUSTED_ERROR          
         	long_name         VContains the error on the adjusted values as determined by the delayed mode QC process     
_FillValue        G?O?   units         degree_Celsius     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :?o     0  @?   PSAL         
      	   	long_name         Practical salinity     standard_name         sea_water_salinity     
_FillValue        G?O?   units         psu    	valid_min         @      	valid_max         B$     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :?o     0  B   PSAL_QC          
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  L  CD   PSAL_ADJUSTED            
      	   	long_name         Practical salinity     standard_name         sea_water_salinity     
_FillValue        G?O?   units         psu    	valid_min         @      	valid_max         B$     C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :?o     0  C?   PSAL_ADJUSTED_QC         
         	long_name         quality flag   conventions       Argo reference table 2     
_FillValue                  L  D?   PSAL_ADJUSTED_ERROR          
         	long_name         VContains the error on the adjusted values as determined by the delayed mode QC process     
_FillValue        G?O?   units         psu    C_format      %9.3f      FORTRAN_format        F9.3   
resolution        :?o     0  E   HISTORY_INSTITUTION                      	long_name         "Institution which performed action     conventions       Argo reference table 4     
_FillValue                    O?   HISTORY_STEP                     	long_name         Step in data processing    conventions       Argo reference table 12    
_FillValue                    O?   HISTORY_SOFTWARE                     	long_name         'Name of software which performed action    conventions       Institution dependent      
_FillValue                    O?   HISTORY_SOFTWARE_RELEASE                     	long_name         2Version/release of software which performed action     conventions       Institution dependent      
_FillValue                    O?   HISTORY_REFERENCE                        	long_name         Reference of database      conventions       Institution dependent      
_FillValue                  @  O?   HISTORY_DATE                      	long_name         #Date the history record was created    conventions       YYYYMMDDHHMISS     
_FillValue                    O?   HISTORY_ACTION                       	long_name         Action performed on data   conventions       Argo reference table 7     
_FillValue                    O?   HISTORY_PARAMETER                        	long_name         (Station parameter action is performed on   conventions       Argo reference table 3     
_FillValue                    O?   HISTORY_START_PRES                    	long_name          Start pressure action applied on   
_FillValue        G?O?   units         decibar         P   HISTORY_STOP_PRES                     	long_name         Stop pressure action applied on    
_FillValue        G?O?   units         decibar         P   HISTORY_PREVIOUS_VALUE                    	long_name         +Parameter/Flag previous value before action    
_FillValue        G?O?        P   HISTORY_QCTEST                       	long_name         <Documentation of tests performed, tests failed (in hex form)   conventions       EWrite tests performed when ACTION=QCP$; tests failed when ACTION=QCF$      
_FillValue                    P   	PARAMETER               	            	long_name         /List of parameters with calibration information    conventions       Argo reference table 3     
_FillValue                  0  F<   SCIENTIFIC_CALIB_EQUATION               	            	long_name         'Calibration equation for this parameter    
_FillValue                    Fl   SCIENTIFIC_CALIB_COEFFICIENT            	            	long_name         *Calibration coefficients for this equation     
_FillValue                    Il   SCIENTIFIC_CALIB_COMMENT            	            	long_name         .Comment applying to this parameter calibration     
_FillValue                    Ll   SCIENTIFIC_CALIB_DATE               	             	long_name         Date of calibration    conventions       YYYYMMDDHHMISS     
_FillValue                  ,  Ol             ,  OlArgo profile    3.1 1.2 19500101000000  20210225212122  20210227001821  3901602 ARGO-BSH                                                        Birgit Klein                                                    PRES            TEMP            PSAL               ?A   IF                                  2B  A   APEX                            7837                            102015                          846 @?a$??|?1   @?a'W
=?@E?+I??M` ě??1   ARGOS   A   A   A   Primary sampling: discrete []                                                                                                                                                                                                                                      @?33@?33A$??As33A?ffA?  A홚B33B"  B2??BJ  Br  B???B???B???B?33Bܙ?B?33CL?C?fC?3C ?C*??C4? C>33CHL?CRffC\? Cf? CpffCz? C??C?  C?ٚC??C??fC???C?  C??C?33C?  C?Y?C??3CԳ3C??3C??fC??DY?D	??D??D?DffD"??D(?fD/fD;y?DH  DTy?D`??Dm??Dy??D?@ D?? D?? D? D??3D???D??3D??3D?I?D???D???D?  D?P D?vfDڼ?1111111111111111111111111111111111111111111111111111111111111111111111111111@???@ٙ?A(  AvffA?  A͙?A?33B  B"??B3??BJ??Br??B?33B?33B?33Bș?B?  BC? C?C?fC L?C*??C4?3C>ffCH? CR??C\?3Cf?3Cp??Cz?3C?&fC??C??3C?33C?  C??fC??C?33C?L?C??C?s3C??C???C??C?? C?33DffD	?fD??D?Ds3D"?fD(?3D/3D;?fDH?DT?fD`??Dm?fDzfD?FfD??fD??fD?fD???D?? D?ٚD???D?P D??3D??3D?fD?VfD?|?D??31111111111111111111111111111111111111111111111111111111111111111111111111111G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?A*{A*  A)?mA)??A)??A)??A)?mA)??A)?mA)??A*  A3??A>?AFI?AMx?AMVAO??AQ&?AI?FAVn?AZ??AVI?AFv?AC?#AG?;AB?yA9??A.?!A+??A$??A!A#??A#?;A#??AjA?
A{A33A?`A?AG?@?A?@?bN@?-@?dZ@?ƨ@?Q?@ɲ-@???@???@?
=@???@?l?@???@??P@???@?+@??@??#@???@???@?|?@??}@??@?=q@???@?I?@?1'@???@?33@???@?@?1@|?j@z??@v??1111111111111111111111111111111111111111111111111111111111111111111111111111A*{A*  A)?mA)??A)??A)??A)?mA)??A)?mA)??A*  A3??A>?AFI?AMx?AMVAO??AQ&?AI?FAVn?AZ??AVI?AFv?AC?#AG?;AB?yA9??A.?!A+??A$??A!A#??A#?;A#??AjA?
A{A33A?`A?AG?@?A?@?bN@?-@?dZ@?ƨ@?Q?@ɲ-@???@???@?
=@???@?l?@???@??P@???@?+@??@??#@???@???@?|?@??}@??@?=q@???@?I?@?1'@???@?33@???@?@?1@|?j@z??@v??1111111111111111111111111111111111111111111111111111111111111111111111111111G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?B
?3B
?;B
?HB
?HB
?HB
?HB
?HB
?TB
?HB
?HB
?`B??B=qB??Bx?Bz?B?XB?sBv?BVB??Bq?B?yB?;B1'BoB?^B1'B33B??B?yB5?BXBS?B2-B{B??B?HB??B?3B??B?Bs?Bn?BgmBbNBZBP?B9XB,B0!B>wB5?B%?B{BuB?BbB%BB??B??B??B??B?yB?sB?`B?`B?TB?NB?BB?BB?/B?#B?B?1111111111111111111111111111111111111111111111111111111111111111111111111111B
?3B
?;B
?HB
?HB
?HB
?HB
?HB
?TB
?HB
?HB
?`B??B=qB??Bx?Bz?B?XB?sBv?BVB??Bq?B?yB?;B1'BoB?^B1'B33B??B?yB5?BXBS?B2-B{B??B?HB??B?3B??B?Bs?Bn?BgmBbNBZBP?B9XB,B0!B>wB5?B%?B{BuB?BbB%BB??B??B??B??B?yB?sB?`B?`B?TB?NB?BB?BB?/B?#B?B?1111111111111111111111111111111111111111111111111111111111111111111111111111G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?G?O?PRES            TEMP            PSAL            PRES_ADJUSTED = PRES - Surface Pressure                                                                                                                                                                                                                         TEMP_ADJUSTED = TEMP                                                                                                                                                                                                                                            PSAL_ADJUSTED = a1 * PSAL + a0                                                                                                                                                                                                                                  Surface Pressure = -0.2 dbar                                                                                                                                                                                                                                    Not applicable                                                                                                                                                                                                                                                  a1=1, a0=0.0000                                                                                                                                                                                                                                                 Pressure adjusted in real time by using pressure offset at the sea surface                                                                                                                                                                                      No adjustment performed (values duplicated)                                                                                                                                                                                                                     Real-time salinity adjustment                                                                                                                                                                                                                                   202102252121222021022521212220200610000000  IF  ARFMCODA039g                                                                20210225212122                      G?O?G?O?G?O?                IF  ARGQCOQC5.1                                                                 20210225212143                      G?O?G?O?G?O?                IF  ARGQCOQC5.1                                                                 20210225212143                      G?O?G?O?G?O?                IF  ARFMCODA039g                                                                20210227001752                      G?O?G?O?G?O?                IF  ARGQCOQC5.1                                                                 20210227001821  QCP$                G?O?G?O?G?O?000000000208F37EIF  ARGQCOQC5.1                                                                 20210227001821  QCF$                G?O?G?O?G?O?0000000000000000