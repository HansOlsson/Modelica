within Modelica.Electrical.Polyphase.UsersGuide;
class PhaseOrientation "Orientation of phases"
  extends Modelica.Icons.Information;
  annotation (preferredView="info",
    DocumentationClass=true,
    Documentation(info="<html>
<p>
<strong>In polyphase systems, the angular displacement of voltages and currents of the phases as well as the spatial displacement of machine windings have to follow the same rules, i.e., they are based on the same
<a href=\"modelica://Modelica.Electrical.Polyphase.Functions.symmetricOrientation\">orientation function</a>.</strong>
</p>
<h4>Symmetrical three-phase system</h4>
<p>
A symmetrical three-phases system consists of three sinusoidal sine waves with an angular displacement of 2 &pi; / 3.
</p>
<h4>Symmetrical polyphase system</h4>
<p>
In symmetrical polyphase systems odd and even phase numbers have to be distinguished.
</p>
<h5>Odd number of phases</h5>
<p>
For a symmetrical polyphase system with m phases the displacement of the sine waves is 2 &pi; / m.
</p>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\"><strong>Fig. 1: </strong>Symmetrical (a) three-phase and (b) five-phase current system</caption>
  <tr>
    <td>
      <img src=\"modelica://Modelica/Resources/Images/Magnetic/FundamentalWave/UsersGuide/Polyphase/phase35.png\"
           alt=\"phase35.png\">
    </td>
  </tr>
</table>
<h5>Even number of phases</h5>
<p>
In case of an even number of phases the aligned orientation does not add any information. Instead the m phases are divided into two or more different groups (the base systems).
</p>
<p>
The number of phases m can be divided by 2 recursively until the result is either an odd number or 2. The result of this division is called m<sub>Base</sub>, the number of phases of the base system.
The number of base systems n<sub>Base</sub> is defined by the number of divisions, i.e., m = n<sub>Base</sub> * m<sub>Base</sub>.
</p>
<p>
For a base system with m<sub>Base</sub> phases the displacement of the sine waves belonging to that base system is 2 &pi; / m<sub>Base</sub>.
</p>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\"><strong>Fig. 2: </strong>Symmetrical (a) six and (b) ten phase current system</caption>
  <tr>
    <td>
      <img src=\"modelica://Modelica/Resources/Images/Magnetic/FundamentalWave/UsersGuide/Polyphase/phase610.png\"
           alt=\"phase610.png\">
    </td>
  </tr>
</table>
<p>
The displacement of the base systems is defined as &pi; / n<sub>Base</sub>.
</p>
<h4>Note</h4>
<p>
In array or matrices, the base systems are stored one after another.
</p>
<h4>Symmetrical components</h4>
<p>
For each base system of time phasors, symmetrical components can be calculated according to the idea of Charles L. Fortescue.
</p>
<p>
The first symmetrical component is the direct component with positive sequence.<br>
In case of  m<sub>Base</sub> = 2, the second component is the inverse component with negative sequence.<br>
In case of  m<sub>Base</sub> &gt; 2, the components [2..m<sub>Base</sub> - 1] are components with non-positive sequence,<br>
and the last component [m<sub>Base</sub>] is the zero sequence component.
</p>
<p>
This set of symmetrical components is repeated for each of the n<sub>Base</sub> base systems.
</p>
<h4>See also</h4>
<p>
<a href=\"modelica://Modelica.Magnetic.FundamentalWave.UsersGuide.Polyphase\">User's guide</a> on polyphase winding.
</p>
</html>"));
end PhaseOrientation;
