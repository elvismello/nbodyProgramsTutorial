%----  Relevant files 
InitCondFile        ./metal_test0.0
OutputDir           ./output
SnapshotFileBase    snapshot
OutputListFilename  output_list.txt


%---- File formats
ICFormat           3
SnapFormat         3 

%---- CPU-time limits
TimeLimitCPU              900000  % in seconds
CpuTimeBetRestartFile     7200    % in seconds

%----- Memory alloction
MaxMemSize         550

%---- Caracteristics of run
TimeBegin           0.0        % Begin of the simulation
TimeMax	            1.0        % End of the simulation

%---- Basic code options that set the type of simulation
ComovingIntegrationOn    0

%---- Cosmological parameters
Omega0	              0
OmegaLambda           0
OmegaBaryon           0
HubbleParam         1.0
BoxSize               0
Hubble                0

%---- Output frequency and output paramaters
OutputListOn              0 
TimeBetSnapshot           0.025
TimeOfFirstSnapshot       0.0
TimeBetStatistics         0.05
NumFilesPerSnapshot       1
MaxFilesWithConcurrentIO  1 

%---- Accuracy of time integration
ErrTolIntAccuracy        0.012 
CourantFac               0.20
MaxSizeTimestep          0.5
MinSizeTimestep          0.0 

%---- Tree algorithm, force accuracy, domain update frequency
TypeOfOpeningCriterion                1
ErrTolTheta                           0.6
ErrTolThetaMax                        1.2
ErrTolForceAcc                        0.005
TopNodeFactor                         3.0

ActivePartFracForNewDomainDecomp      0.01
 
%---- Initial density estimate
DesNumNgb              64
MaxNumNgbDeviation     1 

%---- System of units
UnitLength_in_cm         3.085678e21        %  1.0 kpc/h
UnitMass_in_g            1.989e43           %  1.0e10/h solar masses
UnitVelocity_in_cm_per_s 1e5                %  1 km/sec
GravityConstantInternal  0


%---- Gravitational softening length
SofteningComovingClass0      0.1             %  UnitLength, 0 for AdaptiveHydroSoftening
SofteningComovingClass1      0.1           %  UnitLength

SofteningMaxPhysClass0       5              %  Not used with ComovingIntegrationOn set to 0
SofteningMaxPhysClass1       5

SofteningClassOfPartType0    0
SofteningClassOfPartType1    1
SofteningClassOfPartType2    1
SofteningClassOfPartType3    1
SofteningClassOfPartType4    1
SofteningClassOfPartType5    1


%----- SPH
ArtBulkViscConst       1.0
MinEgySpec             0
InitGasTemp            0


%----- Star formation

MaxSfrTimescale     1.5         % Gas consumption timescale (multi-phase model)
FactorSN            0.1         % beta, mass fraction of massive stars (multi-phase model)
FactorEVP           1000        % A_0, evaporation parameter (multi-phase model)
TempSupernova       1e+08       % T_SN, effective "supernova temperature",sets feedback energy (multi-phase model)
TempClouds          1000        % temperature of cold clouds (multi-phase model)
CritOverDensity     57.7        % overdensity threshold value for cosological sims
CritPhysDensity     0           % critical physical density for star formation (in cm^(-3))
TreecoolFile        TREECOOL


%----- External Gravity

%A_StaticHQHalo        200
%Mass_StaticHQHalo     10000


%----- Adaptive softening

%GasSoftFactor                   0.1
%MinimumComovingHydroSoftening   0.01
%AdaptiveHydroSofteningSpacing   1.075       % (maximum softening / minimum softening) ^ (1 / (nclasses - 1))
