void RobotInit()
{
	wpilib_components_add();
	user_components_add();
	COMPONENT_CALLHOOK(BuildComponentsName);
	print(ret_string);
	COMPONENT_CALLHOOK(RobotInit);
}

void AutonomousInit()
{
	COMPONENT_CALLHOOK(AutonomousInit);
}

void AutonomousThink()
{
	COMPONENT_CALLHOOK(RobotGlobalThink);
	COMPONENT_CALLHOOK(AutonomousThink);
}

void TeleopInit()
{
	COMPONENT_CALLHOOK(TeleopInit);
}

void TeleopThink()
{
	COMPONENT_CALLHOOK(RobotGlobalThink);
	COMPONENT_CALLHOOK(TeleopThink);
}

void TestThink()
{
	COMPONENT_CALLHOOK(RobotGlobalThink);
	COMPONENT_CALLHOOK(TestThink);
}
