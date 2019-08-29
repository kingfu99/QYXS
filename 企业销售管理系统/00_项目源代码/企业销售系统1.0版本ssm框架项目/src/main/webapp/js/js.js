
$(function () {
echarts_1();
echarts_2();
echarts_4();
echarts_31();
echarts_32();
echarts_33();
echarts_5();
echarts_6();
function echarts_1() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart1'));

       option = {
  //  backgroundColor: '#00265f',
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    grid: {
        left: '0%',
		top:'10px',
        right: '0%',
        bottom: '4%',
       containLabel: true
    },
    xAxis: [{
        type: 'category',
      		data: ['天津', '深圳','南京',' 重庆','石家庄','大连'],
        axisLine: {
            show: true,
         lineStyle: {
                color: "rgba(255,255,255,.1)",
                width: 1,
                type: "solid"
            },
        },
		
        axisTick: {
            show: false,
        },
		axisLabel:  {
                interval: 0,
               // rotate:50,
                show: true,
                splitNumber: 15,
                textStyle: {
 					color: "rgba(255,255,255,.6)",
                    fontSize: '12',
                },
            },
    }],
    yAxis: [{
        type: 'value',
        axisLabel: {
           //formatter: '{value} %'
			show:true,
			 textStyle: {
 					color: "rgba(255,255,255,.6)",
                    fontSize: '12',
                },
        },
        axisTick: {
            show: false,
        },
        axisLine: {
            show: true,
            lineStyle: {
                color: "rgba(255,255,255,.1	)",
                width: 1,
                type: "solid"
            },
        },
        splitLine: {
            lineStyle: {
               color: "rgba(255,255,255,.1)",
            }
        }
    }],
    series: [
		{
        type: 'bar',
        data: [25, 14, 7, 6, 5, 5],
        barWidth:'35%', //柱子宽度
       // barGap: 1, //柱子之间间距
        itemStyle: {
            normal: {
                color:'#2f89cf',
                opacity: 1,
				barBorderRadius: 5,
            }
        }
    }
		
	]
};
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
function echarts_2() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart2'));

       option = {
  //  backgroundColor: '#00265f',
    tooltip: {
        trigger: 'axis',
        axisPointer: { type: 'shadow'}
    },
    grid: {
        left: '0%',
		top:'10px',
        right: '0%',
        bottom: '4%',
       containLabel: true
    },
    xAxis: [{
        type: 'category',
      		data: ['高上补习班','大钰贸易','正人资源','师大贸易','学仁贸易','实翼','五洲信托','华科','永业房屋','留学服务中心'],
        axisLine: {
            show: true,
         lineStyle: {
                color: "rgba(255,255,255,.1)",
                width: 1,
                type: "solid"
            },
        },
		
        axisTick: {
            show: false,
        },
		axisLabel:  {
                interval: 0,
               // rotate:50,
                show: true,
                splitNumber: 13,
                textStyle: {
 					color: "rgba(255,255,255,.6)",
                    fontSize: '8',
                },
            },
    }],
    yAxis: [{
        type: 'value',
        axisLabel: {
           //formatter: '{value} %'
			show:true,
			 textStyle: {
 					color: "rgba(255,255,255,.6)",
                    fontSize: '12',
                },
        },
        axisTick: {
            show: false,
        },
        axisLine: {
            show: true,
            lineStyle: {
                color: "rgba(255,255,255,.1	)",
                width: 1,
                type: "solid"
            },
        },
        splitLine: {
            lineStyle: {
               color: "rgba(255,255,255,.1)",
            }
        }
    }],
    series: [
		{
       
        type: 'bar',
        data: [117483.39,115673.39,113236.68,57317.39,52245.9,34101.15,32555.55,32203.9,31745.75,30226.1],
        barWidth:'35%', //柱子宽度
       // barGap: 1, //柱子之间间距
        itemStyle: {
            normal: {
                color:'#27d08a',
                opacity: 1,
				barBorderRadius: 5,
            }
        }
    }
		
	]
};
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
function echarts_5() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart5'));

       option = {
  //  backgroundColor: '#00265f',
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    
    grid: {
        left: '0%',
		top:'10px',
        right: '0%',
        bottom: '2%',
       containLabel: true
    },
    xAxis: [{
        type: 'category',
      		data: ['绿茶', '鸭肉', '光明奶酪', '花奶酪', '山渣片'],
        axisLine: {
            show: true,
         lineStyle: {
                color: "rgba(255,255,255,.1)",
                width: 1,
                type: "solid"
            },
        },
		
        axisTick: {
            show: false,
        },
		axisLabel:  {
                interval: 0,
               // rotate:50,
                show: true,
                splitNumber: 15,
                textStyle: {
 					color: "rgba(255,255,255,.6)",
                    fontSize: '12',
                },
            },
    }],
    yAxis: [{
        type: 'value',
        axisLabel: {
           //formatter: '{value} %'
			show:true,
			 textStyle: {
 					color: "rgba(255,255,255,.6)",
                    fontSize: '12',
                },
        },
        axisTick: {
            show: false,
        },
        axisLine: {
            show: true,
            lineStyle: {
                color: "rgba(255,255,255,.1	)",
                width: 1,
                type: "solid"
            },
        },
        splitLine: {
            lineStyle: {
               color: "rgba(255,255,255,.1)",
            }
        }
    }],
    series: [{
        type: 'bar',
        data: [149984.2,107248.4,76296,50286,49827.9],
        barWidth:'35%', //柱子宽度
       // barGap: 1, //柱子之间间距
        itemStyle: {
            normal: {
                color:'#2f89cf',
                opacity: 1,
				barBorderRadius: 5,
            }
        }
    }
	]
};
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }

function echarts_4() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart4'));

    option = {
	    tooltip: {
        trigger: 'axis',
        axisPointer: {
            lineStyle: {
                color: '#dddc6b'
            }
        }
    },
		    legend: {
    top:'0%',
        data:['订单金额'],
                textStyle: {
           color: 'rgba(255,255,255,.5)',
			fontSize:'12',
        }
    },
    grid: {
        left: '10',
		top: '30',
        right: '10',
        bottom: '10',
        containLabel: true
    },

    xAxis: [{
        type: 'category',
        boundaryGap: false,
axisLabel:  {
                textStyle: {
 					color: "rgba(255,255,255,.6)",
					fontSize:12,
                },
            },
        axisLine: {
			lineStyle: {
				color: 'rgba(255,255,255,.2)'
			}

        },

   data: []

    }, {

        axisPointer: {show: false},
        axisLine: {  show: false},
        position: 'bottom',
        offset: 20,



    }],

    yAxis: [{
        type: 'value',
        axisTick: {show: false},
        axisLine: {
            lineStyle: {
                color: 'rgba(255,255,255,.1)'
            }
        },
       axisLabel:  {
                textStyle: {
 					color: "rgba(255,255,255,.6)",
					fontSize:12,
                },
            },

        splitLine: {
            lineStyle: {
                 color: 'rgba(255,255,255,.1)'
            }
        }
    }],
    series: [
		{
        name: '订单金额',
        type: 'line',
         smooth: true,
        symbol: 'circle',
        symbolSize: 5,
        showSymbol: false,
        lineStyle: {
			
            normal: {
				color: '#0184d5',
                width: 2
            }
        },
        areaStyle: {
            normal: {
                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                    offset: 0,
                    color: 'rgba(1, 132, 213, 0.4)'
                }, {
                    offset: 0.8,
                    color: 'rgba(1, 132, 213, 0.1)'
                }], false),
                shadowColor: 'rgba(0, 0, 0, 0.1)',
            }
        },
			itemStyle: {
			normal: {
				color: '#0184d5',
				borderColor: 'rgba(221, 220, 107, .1)',
				borderWidth: 12
			}
		},
        data: []

    }
	
		 ]

};

    $.ajax({
        url: '/index/queryForList',
        type: 'post',
        dataType: 'json',
        success: function(data) {
            var names = [];
            var nums = [];
            $.each(data, function(index, obj) {
                names.push(obj.timedate);
                nums.push(obj.money);
            })

            myChart.hideLoading(); // 隐藏加载动画
            myChart.setOption({
                legend: {
                    data: ['月份']
                },
                xAxis: {
                    data: names
                },
                series: [{
                    name: '销额',
                    type: 'line', // 设置图表类型为柱状图
                    data: nums // 设置纵坐标的刻度
                }]
            });
        }
    });

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
function echarts_6() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart6'));

        var dataStyle = {
	normal: {
		label: {
			show: false
		},
		labelLine: {
			show: false
		},
		//shadowBlur: 40,
		//shadowColor: 'rgba(40, 40, 40, 1)',
	}
};
var placeHolderStyle = {
	normal: {
		color: 'rgba(255,255,255,.05)',
		label: {show: false,},
		labelLine: {show: false}
	},
	emphasis: {
		color: 'rgba(0,0,0,0)'
	}
};
option = {
	color: ['#0f63d6', '#0f78d6', '#0f8cd6', '#0fa0d6', '#0fb4d6'],
	tooltip: {
		show: true,
		formatter: "{a} : {c} "
	},
	legend: {
		itemWidth: 10,
        itemHeight: 10,
		itemGap: 12,
		bottom: '3%',
		
		data: ['绿茶', '鸭肉', '光明奶酪', '花奶酪', '山渣片'],
		textStyle: {
                    color: 'rgba(255,255,255,.6)',
                }
	},
	
	series: [
		{
		name: '绿茶',
		type: 'pie',
		clockWise: false,
		center: ['50%', '42%'],
		radius: ['59%', '70%'],
		itemStyle: dataStyle,
		hoverAnimation: false,
		data: [{
			value: 11,
			name: '01'
		}, {
			value: 20,
			name: 'invisible',
			tooltip: {show: false},
			itemStyle: placeHolderStyle
		}]
	},
		{
		name: '鸭肉',
		type: 'pie',
		clockWise: false,
		center: ['50%', '42%'],
		radius: ['49%', '60%'],
		itemStyle: dataStyle,
		hoverAnimation: false,
		data: [{
			value: 8,
			name: '02'
		}, {
			value: 30,
			name: 'invisible',
			tooltip: {show: false},
			itemStyle: placeHolderStyle
		}]
	}, 
		{
		name: '光明奶酪',
		type: 'pie',
		clockWise: false,
		hoverAnimation: false,
		center: ['50%', '42%'],
		radius: ['39%', '50%'],
		itemStyle: dataStyle,
		data: [{
			value: 6,
			name: '03'
		}, {
			value: 35,
			name: 'invisible',
			tooltip: {show: false},
			itemStyle: placeHolderStyle
		}]
	},
		{
		name: '花奶酪',
		type: 'pie',
		clockWise: false,
		hoverAnimation: false,
		center: ['50%', '42%'],
		radius: ['29%', '40%'],
		itemStyle: dataStyle,
		data: [{
			value: 4,
			name: '04'
		}, {
			value: 40,
			name: 'invisible',
			tooltip: {show: false},
			itemStyle: placeHolderStyle
		}]
	}, 
		{
		name: '山渣片',
		type: 'pie',
		clockWise: false,
		hoverAnimation: false,
		center: ['50%', '42%'],
		radius: ['20%', '30%'],
		itemStyle: dataStyle,
		data: [{
			value: 4,
			name: '05'
		}, {
			value: 50,
			name: 'invisible',
			tooltip: {show: false},
			itemStyle: placeHolderStyle
		}]
	}, ]
};
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
function echarts_31() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('fb1')); 
option = {
   
	    title: [{
        text: '销额客户分布',
        left: 'center',
        textStyle: {
            color: '#fff',
			fontSize:'16'
        }

    }],
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)",
position:function(p){   //其中p为当前鼠标的位置
            return [p[0] + 10, p[1] - 10];
        }
    },
    legend: {
        
top:'70%',
       itemWidth: 9,
        itemHeight: 9,
        data:['高上补习班','大钰贸易','正人资源','其它'],
                textStyle: {
            color: 'rgba(255,255,255,.5)',
			fontSize:'10',
        }
    },
    series: [
        {
        	name:'客户销额占比',
            type:'pie',
			center: ['50%', '42%'],
            radius: ['50%', '75%'],
                  color: ['#065aab', '#066eab', '#0682ab', '#0696ab', '#06a0ab','#06b4ab','#06c8ab','#06dcab','#06f0ab'],	
            label: {show:false},
			labelLine: {show:false},
            data:[
                {value:9, name:'高上补习班'},
                {value:9, name:'大钰贸易'},
                {value:8, name:'正人资源'},
                {value:74, name:'其他'},
            ]
        }
    ]
};
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
     function echarts_32() {
            // 基于准备好的dom，初始化echarts实例
           var myChart = echarts.init(document.getElementById('fb2'));
    option = {

            title: [{
           /* text: '职业分布',*/
            left: 'center',
            textStyle: {
                color: '#fff',
                fontSize:'16'
            }

        }],
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)",
    position:function(p){   //其中p为当前鼠标的位置
                return [p[0] + 10, p[1] - 10];
            }
        },
        legend: {

        top:'70%',
           itemWidth: 10,
            itemHeight: 10,
            data:['电子商务','教育','IT/互联网','金融','学生','其他'],
                    textStyle: {
               color: 'rgba(255,255,255,.5)',
                fontSize:'10',
            }
        },
       /* series: [
            {
                name:'年龄分布',
                type:'pie',
                center: ['50%', '42%'],
                radius: ['50%', '75%'],
                color: ['#065aab', '#066eab', '#0682ab', '#0696ab', '#06a0ab','#06b4ab','#06c8ab','#06dcab','#06f0ab'],
                label: {show:false},
                labelLine: {show:false},
                data:[
                    {value:5, name:'电子商务'},
                    {value:1, name:'教育'},
                    {value:6, name:'IT/互联网'},
                    {value:2, name:'金融'},
                    {value:1, name:'学生'},
                    {value:1, name:'其他'},
                ]
            }
        ]*/
    };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
function echarts_33() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('fb3'));
option = {
	    title: [{
        text: '商品类销售占比',
        left: 'center',
        textStyle: {
            color: '#fff',
			fontSize:'16'
        }

    }],
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)",
position:function(p){   //其中p为当前鼠标的位置
            return [p[0] + 10, p[1] - 10];
        }
    },
    legend: {
    top:'70%',
       itemWidth: 9,
        itemHeight: 9,
        data:['零食','调味品','海鲜','饮料','谷类制品','其他'],
                textStyle: {
            color: 'rgba(255,255,255,.5)',
			fontSize:'10',
        }
    },
    series: [
        {
        	name:'商品类销售占比',
            type:'pie',
            center: ['50%', '42%'],
            radius: ['50%', '75%'],
                   color: ['#065aab', '#066eab', '#0682ab', '#0696ab', '#06a0ab','#06b4ab','#06c8ab','#06dcab','#06f0ab'],	
            label: {show:false},
			labelLine: {show:false},
            data:[
                {value:30, name:'零食'},
                {value:15, name:'调味品'},
                {value:15, name:'海鲜'},
                {value:14, name:'饮料'},
                {value:11, name:'谷类制品'},
                {value:9, name:'其他'},
            ]
        }
    ]
};
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
				
	
})



		
		
		


		









