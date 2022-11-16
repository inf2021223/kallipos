function Image(img)
    if img.classes:find('contribution223',1) then
      local f = io.open("book/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local contribution = pandoc.utils.stringify(doc.meta.contribution) 
      local author = pandoc.utils.stringify(doc.meta.author)
      local id = pandoc.utils.stringify(doc.meta.id)
      local content = "> _" .. caption .. "_ \n>" .. "Ονοματεπώνυμο Φοιτητή:" .. author .. "Αριθμός Μητρώου:" .. id 
      return pandoc.RawInline('markdown',content)
    end
end
