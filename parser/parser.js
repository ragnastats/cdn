var fs = require('fs');
var $ = require('node-jquery');

fs.readFile('grf/idnum2itemresnametable.txt', 'utf8', function(error, file)
{
    if(error)
    {
        return console.log(error);
    }

    process.chdir('../item/');
    var items = file.split("\n");

    $.each(items, function(index, item)
    {
        if(/[0-9]+#[^#]+#/.test(item))
        {
            item = item.split("#");
            var item = {id: item[0], name: item[1]}; // new Buffer(item[1]).toString('base64').replace(/\//g, '-')};

console.log(item.name);

            fs.exists('src/'+item.name+'.png', function(exists)
            {
                if(exists)
                {
                    console.log("Item "+item.name+" exists.");
                    fs.symlink('src/'+item.name+'.png', item.id+'.png');
                }
                //else
                //    console.log("DOES NOT EXIST: "+item.name);
            });
            //console.log(item);
         }
    });
});
