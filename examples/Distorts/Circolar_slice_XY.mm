filter circular_slice (image in, float ang: 0-1 (0.15))
    in(ra:[r,a+(r+t*ang)%ang-ang/2])
end


stretched


filter __composer_filter1__ (float simple_int_2_offset_X : -1.000000 - 1.000000 (0.000000), float simple_int_2_offset_Y : -1.000000 - 1.000000 (0.000000), float circular_slice_ang : 0.000000 - 1.000000 (0.150000), image simple_int_in, float simple_int_offset_X : -1.000000 - 1.000000 (0.000000), float simple_int_offset_Y : -1.000000 - 1.000000 (0.000000))
    simple_int_out = simple_int(simple_int_in, simple_int_offset_X, simple_int_offset_Y);
    circular_slice_out = circular_slice(simple_int_out, circular_slice_ang);
    simple_int_2_out = simple_int(circular_slice_out, simple_int_2_offset_X, simple_int_2_offset_Y);
    simple_int_2_out(xy)
end