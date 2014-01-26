within ADMSL.Electrical.Analog.Basic;
class Capacitor
  extends ADMSL.Utilities.GradientInfo;
  extends MSL.Electrical.Analog.Basic.Capacitor(
                          redeclare replaceable class OnePort =
        ADMSL.Electrical.Analog.Interfaces.OnePort);

  parameter Real g_C[NG] = zeros(NG);

equation
  g_i[:] = g_C[:] * der(v) + C * der(g_v[:]);

end Capacitor;
