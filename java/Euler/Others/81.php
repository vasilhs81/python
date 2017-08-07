$file = file_get_contents('matrix.txt');
$lines = explode("\r\n", trim($file));
$matrix = array();
foreach ($lines as $value) {
	$matrix[] = explode(',', $value);
}

for ($step = 1; $step <= 79; $step++) {
	for ($i = 0; $i <= $step; $i++) {
		$top = $i ? $matrix[$i - 1][$step - $i] : 0;
		$left = ($step - $i) ? $matrix[$i][($step - $i) - 1] : 0;
		if (!$top)
			$matrix[$i][$step - $i] += $left;
		elseif (!$left)
			$matrix[$i][$step - $i] += $top;
		elseif ($left < $top)
			$matrix[$i][$step - $i] += $left;
		else
			$matrix[$i][$step - $i] += $top;
	}		
}

for ($step = 79; $step >= 1; $step--) {
	for ($i = 0; $i < $step; $i++) {
		$top = $matrix[(79 - $step) + $i][79 - $i];
		$left = $matrix[(80 - $step) + $i][78 - $i];
		if ($left < $top)
			$matrix[(80 - $step) + $i][79 - $i] += $left;
		else
			$matrix[(80 - $step) + $i][79 - $i] += $top;
	}
}

echo $matrix[79][79];