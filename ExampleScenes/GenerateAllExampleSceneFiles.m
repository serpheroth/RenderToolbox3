%%% RenderToolbox3 Copyright (c) 2012-2013 The RenderToolbox3 Team.
%%% About Us://github.com/DavidBrainard/RenderToolbox3/wiki/About-Us
%%% RenderToolbox3 is released under the MIT License.  See LICENSE.txt.
%
% Generate scene files for all example scenes, but don't render them.
%
% This script is intended as an example for rendering in a production
% setting, like a computer cluster.  It's not intened as a general-purpose
% demo.
%
% GenerateAllExampleSceneFiles.m and RenderAllExampleSceneFiles.m work as a
% pair.  You should run GenerateAllExampleSceneFiles.m first, then run
% RenderAllExampleSceneFiles.m.
%
% This script is useful for generating lots and lots of scene files, to be
% rendererd later with RenderAllExampleScenes.  In some production
% settings, like computer clusters, it's useful to have a top-level script
% that takes no arguments, like this one.  You should edit parameter values
% in this script to agree with your system.
%
% For Mitsuba scene files, this script must be run from a machine that has
% OpenGL support.  This might not be the case for computer cluster worker
% nodes.
%

%% Choose global RenderToolbox3 behavior.
setpref('RenderToolbox3', 'isParallel', false);
setpref('RenderToolbox3', 'isDryRun', true);
setpref('RenderToolbox3', 'isReuseSceneFiles', false);
setpref('RenderToolbox3', 'isPlot', false);

%% Invoke rendering scripts.
% choose where to put output files
%   for example '/Users/myName/epic-scene-test'
%   or empty '' for default folders (see GetDefaultHints())
outputRoot = '';
makeFunctions = { ...
    'MakeCheckerboard.m', ...
    'MakeCoordinatesTest.m', ...
    'MakeCubanSphere.m', ...
    'MakeCubanSphereTextured.m', ...
    'MakeDice.m', ...
    'MakeDragon.m', ...
    'MakeDragonColorChecker.m', ...
    'MakeDragonGraded.m', ...
    'MakeDragonMaterials.m', ...
    'MakeInterior.m', ...
    'MakeInteriorDragon.m', ...
    'MakeInterreflection.m', ...
    'MakeMaterialSphere.m', ...
    'MakeMaterialSphereBumps.m', ...
    'MakeMaterialSpherePortable.m', ...
    'MakeRadianceTest.m', ...
    'MakeScalingTest.m', ...
    'MakeSimpleSphere.m', ...
    'MakeSimpleSquare.m', ...
    'MakeSpectralIllusion.m', ...
    'MakeTableSphere.m'};
results = TestAllExampleScenes(outputRoot, makeFunctions);
