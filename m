Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 039066E67D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1646841E1C;
	Tue, 18 Apr 2023 15:13:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1646841E1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830820;
	bh=Q80AKJexMgopBOFzzx3CtxmUdHseh2Y3EW+Oq5jUgtM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QyE90i4oFwHlgvuMhvCSLudlLWW626SrvU/KtG2woQcJk7UckSFPwH2lqAdyhLpdj
	 KSsonM37ZRYJiEfYIuScOsYCHFsEjvXCqgS+AO2LovO0CN9Qlb/c8Et8LIbh4ENGb1
	 PLGrvaXI+vNHVz6XngRRUKJ3nkUICAkeyBRHxXBMhCQcy48/imPhN73VbQhQbsf3jC
	 2JoVv5O1ygPf/XdmwTKXwU3PQaWpfLw4Rz8syubbHeA5yBY8YHAfKUuNcELxaqv882
	 WRuyUuUStOyXKoz8v0LgrgOGzjscb3Ekuk4CTGJIVXvgA3ryQdw4gHeb8dohueybjF
	 3gubZ/Rcwbwdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3YVvqqPBV-C7; Tue, 18 Apr 2023 15:13:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBBE341E09;
	Tue, 18 Apr 2023 15:13:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBBE341E09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 786071C4253
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4ED3240BF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:35:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4ED3240BF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P3Wr0eC4qTB2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 04:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6E1D400FE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6E1D400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:35:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="372951565"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="372951565"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 21:35:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="815057726"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="815057726"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 17 Apr 2023 21:35:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 21:35:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 21:35:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 21:35:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ArfesyhMo+K/KLKd7om1taaQo/BIl5NMrG+P/XFV/NBdFmlfZ0YISawV0arOEuxkMQ/ZCM17NmKh29dGszsbJNMd+oz9FUrstJ1N1AW42sj4yEaa2uW1yq/1iFrMsirmL7o4GS4odDZ3UH9FxieX0I8uVNK7jN9vb4tBp0a6328yM++CYCa59+HvvVpahFixqNUxpEmdpXmPELvGRTo3d4gyZHu1EBlYbJcrwO6t5j1pCS/Bv/wEBjPVnlhneCIoPBr8zcvbIxqUcToiEH8+wYLoJYeRFxGWv350ZMokQDwT/HOdK4xn4LZL9qozmCx0YhHymCytj/9EcX5pajvCEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQagnkgroKsrVUSjWcxVsPtKnG23rxRVaN+BIS2ThCI=;
 b=BYG0M15EVRwzTBpludDZMfAESa078vVufSVTOTpjv9aBPUOPx9hyUaiBV9Jp0ZnLh9hz+xH2XK+Nk9WQsXhaPHLDQBNYLRR38i4BcfsLZelr4p+LSat6J2v29Py+m0y+weoWaBFxixHLaxWT74KNhPYTOY5+xFlEOFwdvCfBtoB2MHzVPgruJPL0pZ2uzg3v1GGPkplfxzjzECOkMA+Voy/nrAgcPjAmcpqZETlUaIH521HQRWNgRGImhmTiQuA807DD8tfynxIACPzPFef5CQoe0JZb2ErVDyEC7VArCK3G/U+aFq86jHUETuIXsSDldYrt4INnIIKrDTVFIVm28Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 04:34:52 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 04:34:52 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Brouer, Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Thread-Topic: [PATCH bpf-next V1 2/5] igc: add igc_xdp_buff wrapper for
 xdp_buff in driver
Thread-Index: AQHZcTzsnAe6U9nIUE+jaLPBuHApcK8weMVQ
Date: Tue, 18 Apr 2023 04:34:52 +0000
Message-ID: <PH0PR11MB5830DD3BA9F6CBDA648F5AF8D89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174343294.593471.10523474360770220196.stgit@firesoul>
In-Reply-To: <168174343294.593471.10523474360770220196.stgit@firesoul>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|DM4PR11MB7183:EE_
x-ms-office365-filtering-correlation-id: 71c554fa-c605-4a40-1dc4-08db3fc640be
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nj1+6KTnJKkWkq35emk2V/lwNhkaWFQmkVMILsE0m53+l7Xf8yJeTO3JnfX2OYEookufTzf/YjGhqLspRsJlAIHNxwb1zha8dv6eu524Xh95YNvmZGdDhnYu4HPFyauTp5sFKw3cLj07tcGo1ZOZSe4HLvJsTbC7pTiayMlcBZG30Smw6K3foAhynLKXVmO52YEo2FCrBm2DsJFlqHtR186BQEnldaIPMOa+xgV0XAeGwfxkXye2mQoi1F9Ah8UQGlu2uCMhjyrIIDAwvQn0OrMTRqojaZoN5+b1UYPJc1eow7Uk1MJBUBalgVAXaY+cQ+CNtgpwpR0eB7LXQM7KW7Yt8n94ARyxrA+UNFyBQxr/u+DPM8k5A8Ca/qc+LcGRU+ry/qXVcXzQDbPb3m376fKcMIQNs+ZTa8Sqn/awJXxtZqBEZOS2RnW0r4zMM5VeELuitONycVFAWaP3qJ58fb6TAfYOAGLt6Qg9c3e/rDaLVEzj5LUw34Z78NCflfeyn6PRr/zgoYY+e/mop6Cog9uNoE9g3TGI9UKqXRmOaL/7y3ggU1D17sBH4wcLlA+7HtHLVLxSzPQk1SK4yUKUeM2akmPyzQxcMdxq837tgBJ79TtGRgeBj+HodGWEXSFw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(396003)(39860400002)(376002)(136003)(451199021)(53546011)(26005)(9686003)(55236004)(6506007)(122000001)(316002)(41300700001)(186003)(82960400001)(110136005)(7696005)(33656002)(478600001)(71200400001)(54906003)(66946007)(66446008)(86362001)(64756008)(66476007)(76116006)(66556008)(55016003)(4326008)(7416002)(5660300002)(52536014)(38100700002)(8936002)(8676002)(38070700005)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTVTdk9GOU5vWkE0R0dNNTZQWUVsb3RXS1lNb3ljR21tZElpN3NuWXl5bXlr?=
 =?utf-8?B?WFArcEdXSFFpbWhKMktqdURHaGRYc215bEN0ZEgwSlRKQXRYTHlCZGlyT3pn?=
 =?utf-8?B?dzJNNlY3YmF1Q3c3QlZ0K1NGOVFWUnB5S3BRVnF1bVkvSHRQSGkzN2krSlNk?=
 =?utf-8?B?S0JvYkg2RUNWWHpncVhQaW1KUTBjTGZETkhsRk9VeVE3U2FQWUQxRW5rK0Ey?=
 =?utf-8?B?ZG1RWjFHbVJNMHNrVWkraXczcCsxSGlDRVRPdXFjSjExT3hWTFBqQmEzVHRs?=
 =?utf-8?B?a0Q1TWVDSjhZRFg1eTNJcENnMitJSmtoUUtJSncyWmxIN0hOU1VmTmNiRjdD?=
 =?utf-8?B?Z2pwamxwQm5ibjNLeHJGMmhxWUZnbHZPSzdYS25pTDRKaWIyM2V5SFArRzhw?=
 =?utf-8?B?azFUWG52OXVDa2w1c2NFa2ZseWtROXlYejlxTHZ3aHFqazhLQnlQUjR3a3lQ?=
 =?utf-8?B?U2dmR2cxQ09kNEZRazB2cS8ydDVnOVYrL3V4QmxITEp1RWdmR0hjc2ptU0pN?=
 =?utf-8?B?UHMwOGhwdG1EKzJMdVh4ZDJqT3RNSDB0NnI1SHA1Y0pyRXVnMmhTTGhLWE1P?=
 =?utf-8?B?RUQwWkNva2drOUNXUW9VUWVTSUJLeXN4dTVLbVV4ZzZFQXNtYWk0OVdlT2d6?=
 =?utf-8?B?dTJzMUVkdU13SmF4VHVYRU1meGV5QnpibDljSUJnUjJBTlhzeWNxc3RUTnNY?=
 =?utf-8?B?V3F3UGRtSGYrUWNGM0piWUtZMklhbHQrbjZ1K1Bqeksrb1JrRFBvdWVkeEhW?=
 =?utf-8?B?WHVkMVI0c1BpdFFzdG9ERVUxUDN0dDZIRWEwWWs1aCtHWStra2RTWXBKdzBk?=
 =?utf-8?B?aVY2MFNaaitqYU9hS0ZCVDdqWXQ5cDZ4K0RTT1lmek1GZGEvYkIzVDZoVnNk?=
 =?utf-8?B?ZGJDUVM4SFEzZUw5a1A4c2UvZUhpUmU3V0ppODc3akZiRXRTazhtaGVvQ3Jk?=
 =?utf-8?B?cmJ2c05RVUNCZmZGR1o2N2IxY0NXSmNvcnpVTno1c296NldpMmQ0NUZjOEdh?=
 =?utf-8?B?dU9rR1dXRWk0QmpkRjd2Q2h0VmdaeklwNGlBcjVyZFlySEZhZUxrTDFpSk5l?=
 =?utf-8?B?aGZ3aXBlL1lHZ3cxbmt0UkQ1RmpXemZZTit6dzdlcnNoVG5jL0tDcXpValN5?=
 =?utf-8?B?QU44RFNYbko3MUEzdjhxeGc3bmNJMWdsMWVCMW9PaEIyS0FlVG81RS9pb1BP?=
 =?utf-8?B?aFY2SEkyc2pxZnFSY2pkOGNkeW9yUEM2dVFnbjQySVVldmtuajZXVWM0TEJo?=
 =?utf-8?B?bGFzTnpJakRoZDAwU3c2S2d5clRwSkszSUNFdHVWVktySnZxcDM4Uk83MUtw?=
 =?utf-8?B?YUFHTkJtYUhaNzZUZ1dBYWdBOCsvVm9HRlVqK21xYmdSSm1STXh4dll1ZFRi?=
 =?utf-8?B?VW1IRjkxWkxMM25vUGlNMm1kV003Sk5LMGVWak9ySnUrcjNTZHY0V08xeGhz?=
 =?utf-8?B?QVdVU3hkdGFScXcrNSsyUDF0VDNxNVMyUmpGTDNWRm9XWWRsMXJMWldFWU9K?=
 =?utf-8?B?eitYN1hvS3NQa0NlUE9iRFh3V0NVdmRyVllmdXJTNVhpamY4Wm9jTmdnNkpG?=
 =?utf-8?B?ZEt6QU4vYWYxNDI0MnZEd1hDOUxVNmdYOGxaZDg1L0U1Z2lYdzdIb0FlaFlK?=
 =?utf-8?B?V21NNEl2Ym1NY1dYNzVsUmQ0K09BOC9neDJZaG56NVVVU3RBL01ISVZYZkpT?=
 =?utf-8?B?TytIeThENWIzaEV3YXJJMzdXdkhiNzQza0NXOXJvdE1PbmRGc08vdDY5QUdM?=
 =?utf-8?B?OHJqdHlXSTkvbm11WGIzOUFOWEwrb0YyV1RBUGRqWk53cmhqSnJnNGQ2ZW1s?=
 =?utf-8?B?SHhIOXcrVkM1dzFXNkVMMjFRakRRdzZKR0hBbmRsajJ2SzBVY3F0b1kya3lq?=
 =?utf-8?B?WlV3eUwrY015bjlpcCtRVHU2aEVHdHhPSzROWmp6NVIzRm1sRTBaZmlwMG1P?=
 =?utf-8?B?NW1jckFzWjhWTldmYllrc3NoZWtXS3RlQ3hRenJmMkExY2NnT24vLytwYmg0?=
 =?utf-8?B?NXUya2ZZTmcyYWpudFFqK3VwT2Q4R3I2RzhDSXhyOTRvTFYwbFlQS2Y5ckVU?=
 =?utf-8?B?NzZZY0ZNM1VvZzJ3OWozMlRBckNZOHhtaXY3cjdPSDRsZ3VuUDNmNXVEZEpX?=
 =?utf-8?B?RU5LVEphWWZCTU5peElaSHMzbmNURmk4RklSQVl1TUlGU2FUWkpQVEx6MDU5?=
 =?utf-8?B?RGc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71c554fa-c605-4a40-1dc4-08db3fc640be
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 04:34:52.4989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AfU1xHFRhwVgKKs4daZpN6pVP7Yo1wG7WzUbpQm3AEFcm/Jqt4eDxqLIB2cX6xBGuT54KznaMzs7dFpZ1spIS4DOPWNu5Z81U+jB8RiVObQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7183
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681792503; x=1713328503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nQagnkgroKsrVUSjWcxVsPtKnG23rxRVaN+BIS2ThCI=;
 b=LL0SYxPtXRlCGvT/GX5F+0izpXt/YgvSFq5f48pJ4AAoUXjld/O9pAYw
 UiDE9Pz1UCuv1TRgnKm5eZuqlSGQN9AeB0J/qizhhEQjpT2dCoA4Vh/XH
 L7z28JoiEDTuh9ENvfzk2SefUCnXZdk7xHrhJ749Qj3+cC0fDohYQ7GOy
 W7Apg5w928KPCdErL4uudFMDBXkgc1faduYHbpygoipa+A/16ZAexhZ0g
 XS+SbvGWLSwSNhlTH79Yf+f0+5cAJ+ZgndqicHcN+JALpEtJdYRo+ZklJ
 NSOwMeORaVo+g/lrIaLxTmYjjoaWms6+UFV0Tgt6WeyGIPUL89Un6uuJ6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LL0SYxPt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1 2/5] igc: add igc_xdp_buff
 wrapper for xdp_buff in driver
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Monday, April 17, 2023 10:57 PM, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>Driver specific metadata data for XDP-hints kfuncs are propagated via tail
>extending the struct xdp_buff with a locally scoped driver struct.
>
>Zero-Copy AF_XDP/XSK does similar tricks via struct xdp_buff_xsk. This
>xdp_buff_xsk struct contains a CB area (24 bytes) that can be used for extending
>the locally scoped driver into. The XSK_CHECK_PRIV_TYPE define catch size
>violations build time.
>

Since the main purpose of this patch is to introduce igc_xdp_buff, and
you have another two patches for timestamp and hash,
thus, suggest to move timestamp and hash related code into respective patches. 

>Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>---
> drivers/net/ethernet/intel/igc/igc.h      |    6 ++++++
> drivers/net/ethernet/intel/igc/igc_main.c |   30 ++++++++++++++++++++++-------
> 2 files changed, 29 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc.h
>b/drivers/net/ethernet/intel/igc/igc.h
>index f7f9e217e7b4..c609a2e648f8 100644
>--- a/drivers/net/ethernet/intel/igc/igc.h
>+++ b/drivers/net/ethernet/intel/igc/igc.h
>@@ -499,6 +499,12 @@ struct igc_rx_buffer {
> 	};
> };
>
>+/* context wrapper around xdp_buff to provide access to descriptor
>+metadata */ struct igc_xdp_buff {
>+	struct xdp_buff xdp;
>+	union igc_adv_rx_desc *rx_desc;

Move rx_desc to 4th patch (Rx hash patch)

>+};
>+
> struct igc_q_vector {
> 	struct igc_adapter *adapter;    /* backlink */
> 	void __iomem *itr_register;
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>b/drivers/net/ethernet/intel/igc/igc_main.c
>index bfa9768d447f..3a844cf5be3f 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -2236,6 +2236,8 @@ static bool igc_alloc_rx_buffers_zc(struct igc_ring
>*ring, u16 count)
> 	if (!count)
> 		return ok;
>
>+	XSK_CHECK_PRIV_TYPE(struct igc_xdp_buff);
>+
> 	desc = IGC_RX_DESC(ring, i);
> 	bi = &ring->rx_buffer_info[i];
> 	i -= ring->count;
>@@ -2520,8 +2522,8 @@ static int igc_clean_rx_irq(struct igc_q_vector
>*q_vector, const int budget)
> 		union igc_adv_rx_desc *rx_desc;
> 		struct igc_rx_buffer *rx_buffer;
> 		unsigned int size, truesize;
>+		struct igc_xdp_buff ctx;
> 		ktime_t timestamp = 0;
>-		struct xdp_buff xdp;
> 		int pkt_offset = 0;
> 		void *pktbuf;
>
>@@ -2555,13 +2557,14 @@ static int igc_clean_rx_irq(struct igc_q_vector
>*q_vector, const int budget)
> 		}
>
> 		if (!skb) {
>-			xdp_init_buff(&xdp, truesize, &rx_ring->xdp_rxq);
>-			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
>+			xdp_init_buff(&ctx.xdp, truesize, &rx_ring->xdp_rxq);
>+			xdp_prepare_buff(&ctx.xdp, pktbuf - igc_rx_offset(rx_ring),
> 					 igc_rx_offset(rx_ring) + pkt_offset,
> 					 size, true);
>-			xdp_buff_clear_frags_flag(&xdp);
>+			xdp_buff_clear_frags_flag(&ctx.xdp);
>+			ctx.rx_desc = rx_desc;

Move rx_desc to 4th patch (Rx hash patch)

>
>-			skb = igc_xdp_run_prog(adapter, &xdp);
>+			skb = igc_xdp_run_prog(adapter, &ctx.xdp);
> 		}
>
> 		if (IS_ERR(skb)) {
>@@ -2583,9 +2586,9 @@ static int igc_clean_rx_irq(struct igc_q_vector
>*q_vector, const int budget)
> 		} else if (skb)
> 			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
> 		else if (ring_uses_build_skb(rx_ring))
>-			skb = igc_build_skb(rx_ring, rx_buffer, &xdp);
>+			skb = igc_build_skb(rx_ring, rx_buffer, &ctx.xdp);
> 		else
>-			skb = igc_construct_skb(rx_ring, rx_buffer, &xdp,
>+			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx.xdp,
> 						timestamp);
>
> 		/* exit if we failed to retrieve a buffer */ @@ -2686,6 +2689,15
>@@ static void igc_dispatch_skb_zc(struct igc_q_vector *q_vector,
> 	napi_gro_receive(&q_vector->napi, skb);  }
>
>+static struct igc_xdp_buff *xsk_buff_to_igc_ctx(struct xdp_buff *xdp) {
>+	/* xdp_buff pointer used by ZC code path is alloc as xdp_buff_xsk. The
>+	 * igc_xdp_buff shares its layout with xdp_buff_xsk and private
>+	 * igc_xdp_buff fields fall into xdp_buff_xsk->cb
>+	 */
>+       return (struct igc_xdp_buff *)xdp; }
>+

Move xsk_buff_to_igc_ctx to 3th patch (timestamp patch), which is first patch
adding xdp_metadata_ops support to igc.

> static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)  {
> 	struct igc_adapter *adapter = q_vector->adapter; @@ -2704,6 +2716,7
>@@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int
>budget)
> 	while (likely(total_packets < budget)) {
> 		union igc_adv_rx_desc *desc;
> 		struct igc_rx_buffer *bi;
>+		struct igc_xdp_buff *ctx;
> 		ktime_t timestamp = 0;
> 		unsigned int size;
> 		int res;
>@@ -2721,6 +2734,9 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector
>*q_vector, const int budget)
>
> 		bi = &ring->rx_buffer_info[ntc];
>
>+		ctx = xsk_buff_to_igc_ctx(bi->xdp);

Move xsk_buff_to_igc_ctx to 3th patch (timestamp patch), which is first patch
adding xdp_metadata_ops support to igc.

>+		ctx->rx_desc = desc;

Move rx_desc to 4th patch (Rx hash patch)

Thanks & Regards
Siang

>+
> 		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
> 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> 							bi->xdp->data);
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
