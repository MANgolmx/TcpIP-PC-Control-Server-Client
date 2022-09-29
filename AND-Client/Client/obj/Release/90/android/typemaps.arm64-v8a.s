	.file	"obj\Release\90\android\typemaps.arm64-v8a.s"
	.arch	armv8-a

	// map_module_count: START

	.section	.rodata.map_module_count, "a", @progbits
	.type	map_module_count, @object
	.global	map_module_count
	.p2align	2
map_module_count:
	.word	2
	.size	map_module_count, 4
	// map_module_count: END

	// java_type_count: START

	.section	.rodata.java_type_count, "a", @progbits
	.type	java_type_count, @object
	.global	java_type_count
	.p2align	2
java_type_count:
	.word	168
	.size	java_type_count, 4
	// java_type_count: END

	// java_name_width: START

	.section	.rodata.java_name_width, "a", @progbits
	.type	java_name_width, @object
	.global	java_name_width
	.p2align	2
java_name_width:
	.word	53
	.size	java_name_width, 4
	// java_name_width: END
	.include	"typemaps.shared.inc"

	.include	"typemaps.arm64-v8a-managed.inc"

	// Managed to Java map: START

	.section	.data.rel.map_modules, "aw", @progbits

	.type	map_modules, @object
	.global	map_modules
	.p2align	3
map_modules:
	.byte	0x3e, 0xb3, 0x1b, 0xbf, 0xe5, 0x96, 0x56, 0x43, 0x8b, 0xe9, 0x6c, 0x75, 0x9a, 0xb2, 0xf8, 0x8	// module_uuid: bf1bb33e-96e5-4356-8be9-6c759ab2f808
	.word	0xa3	// entry_count
	.word	0x54	// duplicate_count
	.xword	.L.module0_managed_to_java	// map
	.xword	.L.module0_managed_to_java_duplicates	// duplicate_map
	.xword	map_aname.0	// assembly_name: Mono.Android
	.xword	0x0	// image
	.word	0x0	// java_name_width
	.zero	4
	.xword	0x0	// java_map

	.byte	0x89, 0x13, 0xc9, 0x3b, 0xd0, 0x56, 0xc9, 0x4c, 0x92, 0xd4, 0xad, 0x7f, 0xe, 0x60, 0x59, 0x4d	// module_uuid: 3bc91389-56d0-4cc9-92d4-ad7f0e60594d
	.word	0x5	// entry_count
	.word	0x0	// duplicate_count
	.xword	.L.module1_managed_to_java	// map
	.xword	0	// duplicate_map
	.xword	map_aname.1	// assembly_name: Client
	.xword	0x0	// image
	.word	0x0	// java_name_width
	.zero	4
	.xword	0x0	// java_map

	.size	map_modules, 144
	// Managed to Java map: END

	// Java to managed map: START

	.section	.rodata.map_java, "a", @progbits

	.type	map_java, @object
	.global	map_java
	.p2align	2
map_java:
	.word	0x0	// module_index
	.word	0x20000e6	// type_token_id
	.ascii	"android/app/Activity"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000e7	// type_token_id
	.ascii	"android/app/Application"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/content/ComponentCallbacks"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/content/ComponentCallbacks2"	// java_name
	.zero	18	// byteCount == 35; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000ee	// type_token_id
	.ascii	"android/content/ComponentName"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000ef	// type_token_id
	.ascii	"android/content/ContentResolver"	// java_name
	.zero	22	// byteCount == 31; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000eb	// type_token_id
	.ascii	"android/content/ContentValues"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000ec	// type_token_id
	.ascii	"android/content/Context"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000f2	// type_token_id
	.ascii	"android/content/ContextWrapper"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000ed	// type_token_id
	.ascii	"android/content/Intent"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000f8	// type_token_id
	.ascii	"android/content/res/Configuration"	// java_name
	.zero	20	// byteCount == 33; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000066	// type_token_id
	.ascii	"android/database/CharArrayBuffer"	// java_name
	.zero	21	// byteCount == 32; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000067	// type_token_id
	.ascii	"android/database/ContentObserver"	// java_name
	.zero	21	// byteCount == 32; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/database/Cursor"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000069	// type_token_id
	.ascii	"android/database/DataSetObserver"	// java_name
	.zero	21	// byteCount == 32; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200006e	// type_token_id
	.ascii	"android/database/SQLException"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000071	// type_token_id
	.ascii	"android/database/sqlite/SQLiteClosable"	// java_name
	.zero	15	// byteCount == 38; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/database/sqlite/SQLiteCursorDriver"	// java_name
	.zero	11	// byteCount == 42; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000073	// type_token_id
	.ascii	"android/database/sqlite/SQLiteDatabase"	// java_name
	.zero	15	// byteCount == 38; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/database/sqlite/SQLiteDatabase$CursorFactory"	// java_name
	.zero	1	// byteCount == 52; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000076	// type_token_id
	.ascii	"android/database/sqlite/SQLiteException"	// java_name
	.zero	14	// byteCount == 39; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000077	// type_token_id
	.ascii	"android/database/sqlite/SQLiteOpenHelper"	// java_name
	.zero	13	// byteCount == 40; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000079	// type_token_id
	.ascii	"android/database/sqlite/SQLiteProgram"	// java_name
	.zero	16	// byteCount == 37; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200007b	// type_token_id
	.ascii	"android/database/sqlite/SQLiteQuery"	// java_name
	.zero	18	// byteCount == 35; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000dd	// type_token_id
	.ascii	"android/graphics/Bitmap"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000de	// type_token_id
	.ascii	"android/graphics/BitmapFactory"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000df	// type_token_id
	.ascii	"android/graphics/Point"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000e0	// type_token_id
	.ascii	"android/graphics/Rect"	// java_name
	.zero	32	// byteCount == 21; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000e1	// type_token_id
	.ascii	"android/graphics/drawable/Drawable"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/graphics/drawable/Drawable$Callback"	// java_name
	.zero	10	// byteCount == 43; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000da	// type_token_id
	.ascii	"android/net/Uri"	// java_name
	.zero	38	// byteCount == 15; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000d3	// type_token_id
	.ascii	"android/os/BaseBundle"	// java_name
	.zero	32	// byteCount == 21; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000d4	// type_token_id
	.ascii	"android/os/Bundle"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000d2	// type_token_id
	.ascii	"android/os/Handler"	// java_name
	.zero	35	// byteCount == 18; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000d7	// type_token_id
	.ascii	"android/os/Looper"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000d8	// type_token_id
	.ascii	"android/os/Parcel"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/os/Parcelable"	// java_name
	.zero	32	// byteCount == 21; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000121	// type_token_id
	.ascii	"android/runtime/JavaProxyThrowable"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/util/AttributeSet"	// java_name
	.zero	28	// byteCount == 25; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000cf	// type_token_id
	.ascii	"android/util/DisplayMetrics"	// java_name
	.zero	26	// byteCount == 27; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000099	// type_token_id
	.ascii	"android/view/ActionMode"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/ActionMode$Callback"	// java_name
	.zero	21	// byteCount == 32; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200009e	// type_token_id
	.ascii	"android/view/ActionProvider"	// java_name
	.zero	26	// byteCount == 27; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/ContextMenu"	// java_name
	.zero	29	// byteCount == 24; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/ContextMenu$ContextMenuInfo"	// java_name
	.zero	13	// byteCount == 40; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000a0	// type_token_id
	.ascii	"android/view/ContextThemeWrapper"	// java_name
	.zero	21	// byteCount == 32; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000a1	// type_token_id
	.ascii	"android/view/Display"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000af	// type_token_id
	.ascii	"android/view/InputEvent"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200008a	// type_token_id
	.ascii	"android/view/KeyEvent"	// java_name
	.zero	32	// byteCount == 21; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/KeyEvent$Callback"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200008d	// type_token_id
	.ascii	"android/view/LayoutInflater"	// java_name
	.zero	26	// byteCount == 27; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/LayoutInflater$Factory"	// java_name
	.zero	18	// byteCount == 35; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/LayoutInflater$Factory2"	// java_name
	.zero	17	// byteCount == 36; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/Menu"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/MenuItem"	// java_name
	.zero	32	// byteCount == 21; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/MenuItem$OnActionExpandListener"	// java_name
	.zero	9	// byteCount == 44; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"	// java_name
	.zero	8	// byteCount == 45; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000092	// type_token_id
	.ascii	"android/view/MotionEvent"	// java_name
	.zero	29	// byteCount == 24; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000c0	// type_token_id
	.ascii	"android/view/SearchEvent"	// java_name
	.zero	29	// byteCount == 24; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/SubMenu"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000082	// type_token_id
	.ascii	"android/view/View"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/View$OnClickListener"	// java_name
	.zero	20	// byteCount == 33; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/View$OnCreateContextMenuListener"	// java_name
	.zero	8	// byteCount == 45; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000c4	// type_token_id
	.ascii	"android/view/ViewGroup"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000c5	// type_token_id
	.ascii	"android/view/ViewGroup$LayoutParams"	// java_name
	.zero	18	// byteCount == 35; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/ViewManager"	// java_name
	.zero	29	// byteCount == 24; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/ViewParent"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000093	// type_token_id
	.ascii	"android/view/ViewTreeObserver"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"	// java_name
	.zero	6	// byteCount == 47; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000096	// type_token_id
	.ascii	"android/view/Window"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/Window$Callback"	// java_name
	.zero	25	// byteCount == 28; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/WindowManager"	// java_name
	.zero	27	// byteCount == 26; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000b7	// type_token_id
	.ascii	"android/view/WindowManager$LayoutParams"	// java_name
	.zero	14	// byteCount == 39; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000c8	// type_token_id
	.ascii	"android/view/accessibility/AccessibilityEvent"	// java_name
	.zero	8	// byteCount == 45; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"android/view/accessibility/AccessibilityEventSource"	// java_name
	.zero	2	// byteCount == 51; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20000c9	// type_token_id
	.ascii	"android/view/accessibility/AccessibilityRecord"	// java_name
	.zero	7	// byteCount == 46; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200007d	// type_token_id
	.ascii	"android/widget/Button"	// java_name
	.zero	32	// byteCount == 21; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200007e	// type_token_id
	.ascii	"android/widget/EditText"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200007f	// type_token_id
	.ascii	"android/widget/ImageView"	// java_name
	.zero	29	// byteCount == 24; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200007c	// type_token_id
	.ascii	"android/widget/TextView"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000080	// type_token_id
	.ascii	"android/widget/Toast"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x1	// module_index
	.word	0x2000007	// type_token_id
	.ascii	"crc640ed5f944e1e69828/Connect"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x1	// module_index
	.word	0x2000008	// type_token_id
	.ascii	"crc640ed5f944e1e69828/Control"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x1	// module_index
	.word	0x2000009	// type_token_id
	.ascii	"crc640ed5f944e1e69828/SignUp"	// java_name
	.zero	25	// byteCount == 28; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x1	// module_index
	.word	0x2000002	// type_token_id
	.ascii	"crc643fa3c810459e540c/MainActivity"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x1	// module_index
	.word	0x2000004	// type_token_id
	.ascii	"crc645239cf42a3984e65/Helper"	// java_name
	.zero	25	// byteCount == 28; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/io/Closeable"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000195	// type_token_id
	.ascii	"java/io/FileInputStream"	// java_name
	.zero	30	// byteCount == 23; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/io/Flushable"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200019c	// type_token_id
	.ascii	"java/io/IOException"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200019a	// type_token_id
	.ascii	"java/io/InputStream"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200019f	// type_token_id
	.ascii	"java/io/OutputStream"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20001a1	// type_token_id
	.ascii	"java/io/PrintWriter"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/io/Serializable"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20001a2	// type_token_id
	.ascii	"java/io/StringWriter"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20001a3	// type_token_id
	.ascii	"java/io/Writer"	// java_name
	.zero	39	// byteCount == 14; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/Appendable"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000162	// type_token_id
	.ascii	"java/lang/Boolean"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000163	// type_token_id
	.ascii	"java/lang/Byte"	// java_name
	.zero	39	// byteCount == 14; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/CharSequence"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000164	// type_token_id
	.ascii	"java/lang/Character"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000165	// type_token_id
	.ascii	"java/lang/Class"	// java_name
	.zero	38	// byteCount == 15; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000175	// type_token_id
	.ascii	"java/lang/ClassCastException"	// java_name
	.zero	25	// byteCount == 28; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000166	// type_token_id
	.ascii	"java/lang/ClassNotFoundException"	// java_name
	.zero	21	// byteCount == 32; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/Cloneable"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/Comparable"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000167	// type_token_id
	.ascii	"java/lang/Double"	// java_name
	.zero	37	// byteCount == 16; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000176	// type_token_id
	.ascii	"java/lang/Error"	// java_name
	.zero	38	// byteCount == 15; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000168	// type_token_id
	.ascii	"java/lang/Exception"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000169	// type_token_id
	.ascii	"java/lang/Float"	// java_name
	.zero	38	// byteCount == 15; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200017f	// type_token_id
	.ascii	"java/lang/IllegalArgumentException"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000180	// type_token_id
	.ascii	"java/lang/IllegalStateException"	// java_name
	.zero	22	// byteCount == 31; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000181	// type_token_id
	.ascii	"java/lang/IndexOutOfBoundsException"	// java_name
	.zero	18	// byteCount == 35; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200016b	// type_token_id
	.ascii	"java/lang/Integer"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000184	// type_token_id
	.ascii	"java/lang/LinkageError"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200016c	// type_token_id
	.ascii	"java/lang/Long"	// java_name
	.zero	39	// byteCount == 14; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000185	// type_token_id
	.ascii	"java/lang/NoClassDefFoundError"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000186	// type_token_id
	.ascii	"java/lang/NullPointerException"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000187	// type_token_id
	.ascii	"java/lang/Number"	// java_name
	.zero	37	// byteCount == 16; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200016d	// type_token_id
	.ascii	"java/lang/Object"	// java_name
	.zero	37	// byteCount == 16; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000189	// type_token_id
	.ascii	"java/lang/ReflectiveOperationException"	// java_name
	.zero	15	// byteCount == 38; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/Runnable"	// java_name
	.zero	35	// byteCount == 18; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200016e	// type_token_id
	.ascii	"java/lang/RuntimeException"	// java_name
	.zero	27	// byteCount == 26; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200016f	// type_token_id
	.ascii	"java/lang/Short"	// java_name
	.zero	38	// byteCount == 15; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000170	// type_token_id
	.ascii	"java/lang/String"	// java_name
	.zero	37	// byteCount == 16; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000172	// type_token_id
	.ascii	"java/lang/Thread"	// java_name
	.zero	37	// byteCount == 16; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000174	// type_token_id
	.ascii	"java/lang/Throwable"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200018a	// type_token_id
	.ascii	"java/lang/UnsupportedOperationException"	// java_name
	.zero	14	// byteCount == 39; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/annotation/Annotation"	// java_name
	.zero	22	// byteCount == 31; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/reflect/AnnotatedElement"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/reflect/GenericDeclaration"	// java_name
	.zero	17	// byteCount == 36; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/reflect/Type"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/lang/reflect/TypeVariable"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200013a	// type_token_id
	.ascii	"java/net/ProxySelector"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200014a	// type_token_id
	.ascii	"java/nio/Buffer"	// java_name
	.zero	38	// byteCount == 15; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200014c	// type_token_id
	.ascii	"java/nio/ByteBuffer"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/ByteChannel"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/Channel"	// java_name
	.zero	28	// byteCount == 25; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200014e	// type_token_id
	.ascii	"java/nio/channels/FileChannel"	// java_name
	.zero	24	// byteCount == 29; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/GatheringByteChannel"	// java_name
	.zero	15	// byteCount == 38; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/InterruptibleChannel"	// java_name
	.zero	15	// byteCount == 38; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/ReadableByteChannel"	// java_name
	.zero	16	// byteCount == 37; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/ScatteringByteChannel"	// java_name
	.zero	14	// byteCount == 39; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/SeekableByteChannel"	// java_name
	.zero	16	// byteCount == 37; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/nio/channels/WritableByteChannel"	// java_name
	.zero	16	// byteCount == 37; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000160	// type_token_id
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"	// java_name
	.zero	3	// byteCount == 50; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200013e	// type_token_id
	.ascii	"java/security/KeyStore"	// java_name
	.zero	31	// byteCount == 22; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/security/KeyStore$LoadStoreParameter"	// java_name
	.zero	12	// byteCount == 41; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/security/KeyStore$ProtectionParameter"	// java_name
	.zero	11	// byteCount == 42; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000143	// type_token_id
	.ascii	"java/security/cert/Certificate"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000145	// type_token_id
	.ascii	"java/security/cert/CertificateFactory"	// java_name
	.zero	16	// byteCount == 37; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000148	// type_token_id
	.ascii	"java/security/cert/X509Certificate"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/security/cert/X509Extension"	// java_name
	.zero	21	// byteCount == 32; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200011d	// type_token_id
	.ascii	"java/util/ArrayList"	// java_name
	.zero	34	// byteCount == 19; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000112	// type_token_id
	.ascii	"java/util/Collection"	// java_name
	.zero	33	// byteCount == 20; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000114	// type_token_id
	.ascii	"java/util/HashMap"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000122	// type_token_id
	.ascii	"java/util/HashSet"	// java_name
	.zero	36	// byteCount == 17; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"java/util/Iterator"	// java_name
	.zero	35	// byteCount == 18; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"javax/net/ssl/TrustManager"	// java_name
	.zero	27	// byteCount == 26; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200005e	// type_token_id
	.ascii	"javax/net/ssl/TrustManagerFactory"	// java_name
	.zero	20	// byteCount == 33; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"javax/net/ssl/X509TrustManager"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x20001ba	// type_token_id
	.ascii	"mono/android/TypeManager"	// java_name
	.zero	29	// byteCount == 24; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200010e	// type_token_id
	.ascii	"mono/android/runtime/InputStreamAdapter"	// java_name
	.zero	14	// byteCount == 39; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x0	// type_token_id
	.ascii	"mono/android/runtime/JavaArray"	// java_name
	.zero	23	// byteCount == 30; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x200011f	// type_token_id
	.ascii	"mono/android/runtime/JavaObject"	// java_name
	.zero	22	// byteCount == 31; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000131	// type_token_id
	.ascii	"mono/android/runtime/OutputStreamAdapter"	// java_name
	.zero	13	// byteCount == 40; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000085	// type_token_id
	.ascii	"mono/android/view/View_OnClickListenerImplementor"	// java_name
	.zero	4	// byteCount == 49; fixedWidth == 53; returned size == 53
	.zero	3

	.word	0x0	// module_index
	.word	0x2000173	// type_token_id
	.ascii	"mono/java/lang/RunnableImplementor"	// java_name
	.zero	19	// byteCount == 34; fixedWidth == 53; returned size == 53
	.zero	3

	.size	map_java, 10752
	// Java to managed map: END

	.ident	"Xamarin.Android remotes/origin/d17-2 @ 4e061b739747f624ccb03c98940d8900548a98ad"
