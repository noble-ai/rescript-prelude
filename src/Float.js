import numeral from 'numeral';
export const formatNumber = (number, format = '0,0') => {
  if (!isNaN(number)) {
    return numeral(number).format(format);
  }
  return '';
};

