Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E890E7C75E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 20:34:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36C5982798;
	Thu, 12 Oct 2023 18:34:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36C5982798
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697135677;
	bh=jQ4cTg749WmxEOAea+AEh5L93NxmXev0N1RvjqIeQ0E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fW6Elb5B4VnjKo5goSXs2fES9HfxOq/6Rpy/vun4r92OAnOrNBFz/H6YwtdEgYDCk
	 f/LDhxZBaOUbY2ZAzJbUqfn0zitPg0j7ZgDZkfLIeeUtgXvWwQO3Qv9WAAjdyyzc5w
	 A0A95wa+uPeIVKzMnqoBtHcGgx3qM6VFZzRYD3OSMEPN8kZPPlqzsdd22Wgu86tLoa
	 ZCOVTD8QC6nlwB/SVuAKvJsjGc3IwegkOvK+w49LvlC1f5zHrgLEBDxiXlbiQN/Hhz
	 tPukrGlZbD13wChL94BULxggKpL3Gj2kjRmLpdggcIuPnJOqjC9XgbPG56X41Y1KKS
	 DzP5uNe4zWJyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NfdM6IgqBQM0; Thu, 12 Oct 2023 18:34:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4FDC82503;
	Thu, 12 Oct 2023 18:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4FDC82503
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3051BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 18:34:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B9AE40496
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 18:34:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B9AE40496
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1bmyanyQAhHy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 18:34:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E997D40128
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 18:34:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E997D40128
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="387861107"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="387861107"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 11:34:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="845101966"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="845101966"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 11:34:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 11:34:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 11:34:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 11:34:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJtg4dtU4JgLMGzvr0Wr0LjKqVnc/Ohmr4Hx+MTuyFpyRd8jK/VFCPPyZs85byW6xAJ26Ot3aJSsZ/yWvPhnoUG1oNqFddhSEiXWtKYwjfIr9QA4DqaZCJC9rGdQ8A8iaiyrGK7CWBidkZH/ZR1BoAfRryV1WbU21NuN0Brzrh/01KJsvQDu2cwOei/O2cePuUVe89GcQxoHX41UBE/K4FS5irV6k1xmwqKgrEzhfSr8yKEU1u8nQSHiQX1R9seAsgTaUKJilYHl3+hKU6Xee57adnFXRbPFJnKomaF839ECUo0DjG8a3jeYBQY/gOFbrQC3ZU4D9CYk3v/+G0Q1Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9bLH26Cc693hacHSFBeql0VC3pFg0drdfby174FIdn8=;
 b=m9cG2qU+EuF+lCU1had6HjUXTtKE/ttmIzw7jYeSlw3NlAz6E5SP8k7TajXwuCAP35NCCK/SVjujP6qoCVLk6oki2p1XRwS48Y0tBlGW2WMF6yXwQM3wU6bk3fufmCsZLWjUWnAVl8gbkPbulMO5RCdkxn/Bz43seeiiIwgh22KUvmzcfydHBhxW5RFCn91PhxvcZK8MeOPEAKlPhYT5mYDW50QGiGd7thCpn/PS3tSn/cKSTr/1xQOPuHYoFvxoZxbWGzvvSWFBg9a7p05YpPHDXXOKPXoTrIVFClrYLuAYkAAzMPYhumHsJSuL4z72aaYFfzyOFwt9tPGPsdvikw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Thu, 12 Oct
 2023 18:34:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 18:34:00 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined
 reference to tcp_gro_complete() when !CONFIG_INET
Thread-Index: AQHZ6+2zvL5dTK0KXEmSDZ4XN62JhbAkO2eA//+1xoCAAI2EgIAh8C4AgAAr6EA=
Date: Thu, 12 Oct 2023 18:34:00 +0000
Message-ID: <CO1PR11MB508965D49B6144B0CC7E5221D6D3A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-4-aleksander.lobakin@intel.com>
 <2038f544-859f-4ffb-9840-37c1ba289259@infradead.org>
 <0df556eb-71b2-9612-a81d-cd83c27a2cd7@intel.com>
 <8eaece43-a30d-45e8-9610-28ed2af842fc@infradead.org>
 <b5c1030a-9831-4580-8684-7c68f5888131@infradead.org>
In-Reply-To: <b5c1030a-9831-4580-8684-7c68f5888131@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 4ea109bb-4d01-44ff-1bd2-08dbcb51cda6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /hEu5Br3hk2Bkef9PaARIy6fiY+Rgl8U1vl2WOsFzZcV5rNseU3mKRgDYHR2TFgxb1MmyCZVIG/NkSIFVqEces2h2kA+qtPY1NcsJpIymGSqHnHoL2TSlnzwQsQVOPBBHTYdQSgkqOOdHTgyaFk2mkigF7qWuQQYNMzA2FdgKk4IeICwydkriz+x48j8/qsWZ87NJPsIYke2yfMn0ZICK5z7GJf0s8BvWAKEYoePz4JyY33d3Bo3bUXIP93ijqGGn0a+o/xwbMH70whVRP8qmgzuNNufybcgqoUaKJ7FRKTjWBtzFKl8wbx5vbFwX/dC6skkpPL71vjOmAQt4a3GIYyWgZtz7K0whC7sx8JowihS1G6FSCVmEbPqJCYmx74q5wUfTbrP/7NCAVFi2v0/BSUkFxryP/JFNFBQUm4O0wQoikqEo7/McW6LBbK1y9Whlx6UyPfz4Ipl3i3o56diQ5YtPlmYPhSE42SVIBwG51vTktWmsEhVS7QhG19g5MT5eUo8o+JLme+EnFH4hGRLrBc4+Q5jAIQFnFpnEOd4mxoPwLYT+TdMfPLMQi08j2BBvEtEzVZUUcCbXtvdB1CSQxTSOnvt6MygLpokWtb280tGcNq33EIE1sCfgKfA/QjhJLsbbRS4N/50oYAEZ+N10w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(366004)(376002)(346002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(107886003)(83380400001)(26005)(55016003)(9686003)(82960400001)(5660300002)(66476007)(316002)(54906003)(64756008)(66556008)(8936002)(71200400001)(66446008)(122000001)(4326008)(8676002)(38070700005)(52536014)(38100700002)(66946007)(110136005)(76116006)(2906002)(41300700001)(478600001)(53546011)(7696005)(6506007)(33656002)(86362001)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WXAxMHdiNHdmbkE5ZStNM2VveHVDcU5jMWZtb3ZpVEpiRHhiSG90Q3J4OHhl?=
 =?utf-8?B?REdzS3JINEZaZ0RUZUFmVmoxbWoyRmkwQXpzbjVYR0ZpREJmdFdaOWdSVVV5?=
 =?utf-8?B?eVRiOWIyRFFySkRvanFyM3E0WHpseVRUdEhCQXVmNUJDVFVxRXZJaWtXUXUy?=
 =?utf-8?B?N3JHSi8rbk5BMnRYTnQ0amk2ZFNxOUJjWUJCMTllSmdyMWU5ZCtPUkRoV3FV?=
 =?utf-8?B?SmNCS2c0OXhNZ2pYb3JRSkdzQktpaUpCZWdPZ1hJTXdDRU13MG5RcmNLZzAx?=
 =?utf-8?B?RDZmSzBzQiswa2JXSFR1am1GNk5GZ2VSNjJEdjJFLzJOV2Z4dDN1RE5MQzYz?=
 =?utf-8?B?dGZkT3REYUV5VG4veEw0WkVpLzJDaytSV0ZkRE9uNG1jVDJ3c2ZtTURnWG1Y?=
 =?utf-8?B?cUc2aVFJNFhzK2V0WEZPWWtJaWJMVUwyZTJiejlsM1ZiNng0aHhzclhaanF2?=
 =?utf-8?B?UVA5MSt2M3I0cXJWQnowRmVvUmFwOS9HcW5VK0dRblBkRWJoM21zNjRxSG02?=
 =?utf-8?B?TnVhWk9POXNrc3UwM3FMc0doaXpOcWtSRit6T1poSUI0TmtnUWRKRHZjYXNp?=
 =?utf-8?B?dkxEYkpEd0c0U0I3Rk1wWW5na1Q1UVlRZExQVTJuWnF3MEVkbmduM2lwRkIy?=
 =?utf-8?B?OG90TWtja3JRVjRPbUxyZ2c3Zlp3R1o1Y0tPSGZUamxYM0hpTG5DR3ZYelhw?=
 =?utf-8?B?RjdEeEUzWkd4SGhySGZCdUZqMEVZcGNuOUlsaVV5cm1NS3NPSWtDaE9LeW41?=
 =?utf-8?B?VnEwNUV5b05PcmE1S3c3b200R3NHTWw5NnF5aWFid2lrK0hxWldMNjBVRjR1?=
 =?utf-8?B?VXM2TmJNMVliZFoxQWRDUklQd2VUVjNha0F2SDdGb0w0eUZQN0VFQnh0bXhp?=
 =?utf-8?B?SzN2NHZST0dweEdRSnhRa2Fsb1dHN0l3czY2OVF4TzF5d2NVb2tTU0hFV2lz?=
 =?utf-8?B?UmdQMWtCWkNJZUdibnF2VXhEdVNLOHg2OFdqWnJFM0xKbzBQR0E3c3M0RTRn?=
 =?utf-8?B?QWRBSDNMZkQrMDRhMUhXQm1EV3h4QUFxQVFnUlZocUg4UjJyWkt4MHZlYzBy?=
 =?utf-8?B?aHJpOGRicGdOVVVZc1I0ckl1UkMrOVBBU2FWd1B6ZUNEd0lwZ1g2S3ZpelVi?=
 =?utf-8?B?V05SazJxUUwrbnM0VUJNSnBYNitibGtnakd4K283V3QrbTNuU1dXV2wrOC9W?=
 =?utf-8?B?Mzh3VUhYZ3kzVFcyanhKQzBmdC9tTTBEWld0MGw3dmUrRHZRRno3Yy80MTFE?=
 =?utf-8?B?STYwRUxTQUNZaDlNRmovbjlhQUZyTDNsMGVaZmVVMmF4bXkyVk9YbXkyMzlU?=
 =?utf-8?B?emZoRW1GRWJsYnEzanN4aU5lUW50bEtXc2xaRStGRFN6V3F3OUo3MXhQUCsz?=
 =?utf-8?B?ckkrTUhXTXk1aGI1anF5aDM2VzZ2TW5HUUtZemlQUDRBZmwrY2FmMVhNVXIr?=
 =?utf-8?B?RXVwbU1FRTRUNllRUS9WMUdITlg3aFZ0a0d0UEhMQWEyNDJySElVYmxqWmFt?=
 =?utf-8?B?SjJWd1l6Z3czNjRnZGRyV2h5NkMyZVg1SVdXQU5qQms2N3VRQXhyZi9yTjNq?=
 =?utf-8?B?Y092cGdxOEpOcUh2UzJxa0w2a2tYSk1PckYxV3Z2ZFppZnc5SzNCQW5HLzJU?=
 =?utf-8?B?NlhNUjkwMHd2a3Q2ditRR3VQNU9BaTh2d1hDenlyd0pyMTlNeThoVXdNSTRq?=
 =?utf-8?B?ME0waU5FL0hBTndDLzY1U3ZXQW5VbDA5RFZCRE9scnNoN2tXeElMOExxRTRY?=
 =?utf-8?B?eGpzejEvZEhwWDJMNEF1Y2RINWsrU1V4MzNaWnhncVJXdTVDc1hxankyeExX?=
 =?utf-8?B?Z3YvdDQxZ1p6OEM2SmRHajE2RFNWTCszU1lsbGllTDdFcHBJMTliOGpPUFZz?=
 =?utf-8?B?VU5hTUl5a3lXZm5TaGZFYkRlVm0rYTRBUVBjTE9haW5zemR4bStkaWlHbGlu?=
 =?utf-8?B?bTdSWHdyS0VaL1kwR1JlRFVQeFk4TWJsZncrZmRzTjBqb1JzY3BBMThEMWlT?=
 =?utf-8?B?R005dFpiLzRJdERTVFVGWm9qUEdHeGlDTjh2VGFWMmxxYXM4VXJ5dmdYekhT?=
 =?utf-8?B?ek1td2J1dEJzUEUwTFQ1V3g4Z3dRUlBIcjVzQlhsOWZvenRxRUtoWXU4VzZD?=
 =?utf-8?B?Q3JmY1M0WFZuVzErRUZwcVVaOXA2VHJYNXp2UmR1aVdoQUI3MnhXOXVMRDdj?=
 =?utf-8?B?emc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ea109bb-4d01-44ff-1bd2-08dbcb51cda6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 18:34:00.5576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +m0hE+jLBYy254D7dZWfK6bJhaex37rurr3Y9SWefX9OP4y8lCzb9XafIo+opUC4AoprnWsDZwF0Vw/4fODtZb10W9jvHJxVMH2L3U2m/pk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697135669; x=1728671669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9bLH26Cc693hacHSFBeql0VC3pFg0drdfby174FIdn8=;
 b=XTXSDqWHRu0lg9ByowNh9+O8M8ferRtFcOurHk4nNBN88uVw+zRkH2Fe
 yXnBoF83z0PsOAMdzFPV669MLboFWgJ2DV05IDENycEFqMFt6t6EqCcmg
 H6cENzFEOLb3qlcUG7+IafVak2rmX2vdngVCn7Rfw01T2a9hfto94xC0V
 hPCMEAiqERD+WcUmpoZgq4m4Uyb3BTcFIszmSfQ9GWH1Lwy1le/0yEkYc
 4INn2RB0pKHdU0hfLODHc7FY1COPhrQa3CVvRrZyaHSgYVAEYOvlveKmt
 eOm9cqNv6++W+SAdJz6l7EJsQq4E4qwbpAzKzTE3g4CrlwRU2WXXB1eiN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XTXSDqWH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined
 reference to tcp_gro_complete() when !CONFIG_INET
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "Michalik, Michal" <michal.michalik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski, 
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Olech,
 Milena" <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Randy Dunlap <rdunlap@infradead.org>
> Sent: Thursday, October 12, 2023 8:47 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>
> Cc: Michalik, Michal <michal.michalik@intel.com>; netdev@vger.kernel.org;
> Richard Cochran <richardcochran@gmail.com>; linux-kernel@vger.kernel.org;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Olech,
> Milena <milena.olech@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined reference to
> tcp_gro_complete() when !CONFIG_INET
> 
> Hi,
> 
> On 9/20/23 18:30, Randy Dunlap wrote:
> >
> >
> > On 9/20/23 17:04, Jacob Keller wrote:
> >>
> >>
> >> On 9/20/2023 2:30 PM, Randy Dunlap wrote:
> >>>
> >>>
> >>> On 9/20/23 11:07, Alexander Lobakin wrote:
> >>>> When CONFIG_INET is not set, tcp_gro_complete is not compiled, although
> >>>> the drivers using it may still be compiled (spotted by Randy):
> >>>>
> >>>> aarch64-linux-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o:
> >>>> in function `idpf_rx_rsc.isra.0':
> >>>> drivers/net/ethernet/intel/idpf/idpf_txrx.c:2909:(.text+0x40cc):
> >>>> undefined reference to `tcp_gro_complete'
> >>>>
> >>>> The drivers need to guard the calls to it manually.
> >>>> Return early from the RSC completion function if !CONFIG_INET, it won't
> >>>> work properly either way. This effectively makes it be compiled-out
> >>>> almost entirely on such builds.
> >>>>
> >>>> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> >>>> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> >>>> Closes: https://lore.kernel.org/linux-next/4c84eb7b-3dec-467b-934b-
> 8a0240f7fb12@infradead.org
> >>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> >>>
> >>> That builds for me.  Thanks.
> >>>
> >>> Tested-by: Randy Dunlap <rdunlap@infradead.org>
> >>>
> >>> I hope that these patches can be merged into the v6.6 instead of
> >>> v6.7 kernel at some point (i.e., [PATCH net] instead of net-next).
> >>>
> >>
> >> Did any of the offending code make it into 6.6? I thought all of this
> >> was from recent merges after 6.6 closed.
> >>
> >> Thanks,
> >> Jake
> >
> > Oh, I think that you are correct. Sorry about my comment.
> > Thanks.
> >
> 
> Even if this is just > v6.6 kernels (i.e., linux-next),
> it would be very good to get a fix merged for these build errors.
> I keep getting build errors in linux-next....
> 

A standalone version for the idpf driver fix was posted at [1], and another alternative fix was posted at [2]

Fixes for the ice driver have already merged.

[1]: https://lore.kernel.org/netdev/20230921125936.1621191-1-aleksander.lobakin@intel.com/
[2]: https://lore.kernel.org/netdev/20230925155858.651425-1-arnd@kernel.org/

The fix from Arnd got approval from Olek, but it seems like it stalled out after asking about stubs. I'm fine with either approach but would  also like to see a fix merge soon.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
