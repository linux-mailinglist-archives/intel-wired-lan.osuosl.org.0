Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2M1hOQTI/WkpigAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:24:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD354F5B70
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5098D41B77;
	Fri,  8 May 2026 11:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89-qxLSLXr53; Fri,  8 May 2026 11:24:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61A2B410C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778239489;
	bh=YvNMB794/i2efdjux74rHFteq82gdQSg23rHHs9A0jE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uYqe4UGttHNE420v0pHfhgjU8pwEQ94CDK1Ep1auea8QHYqQYURjyoABB7B/o1Rur
	 Knj7AhXBzvHNO6C0ez+C+sFzr5sPjQ5mHCXVJpUip2t2dreOfefwXXQVgXnoaX2l3V
	 2Padx37P2BXSp5GorxR3CfG/JBR+I0llpaRttAF/yFMtEy8H+Syd5RHzed0asPbe8p
	 9luI7/KHEFxS/acktAT7b3qyRZDnZ7ONP+KCjaPfngzWzFtTFna9KvJuQvtQqReOJo
	 6KEyFm51mHUhvtwjgGBMxTUw+lTQ9lQ8CRHILdYGisbjTjVDW7ClU3YNENic2KmZTy
	 771835C1jgcxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61A2B410C4;
	Fri,  8 May 2026 11:24:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C5317272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B6B7840579
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F-geoXXD0RnW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 11:24:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5A6F40574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5A6F40574
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5A6F40574
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:24:46 +0000 (UTC)
X-CSE-ConnectionGUID: edtNJC2oQz2r8h1KL757Dg==
X-CSE-MsgGUID: 5jIkDxbgREmrlLiKW/A9Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79106203"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79106203"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 04:24:46 -0700
X-CSE-ConnectionGUID: PgzUPes3QLmQMg276YM+iw==
X-CSE-MsgGUID: eYVZPMXTS7eDBALYuRtBUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="232400408"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 04:24:45 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 04:24:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 04:24:45 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 04:24:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QFv5e5rhJC/YqM1SB85aJsOh4vdBD7n+H8EnChYDkh6sT3cLZXG0Inc5ru4KWeUqVi5THGsdIxpceHrkLQdp8xshMCwOWGV2uOSmkaLe3XhTJ56MY/dRnvMjN8nJH590m4LfXtu8MdJPSX6nLthnreikMa+d0LaU96RwXa4qycD0WeztoUO+W6zlqdt2E1maoZvFpSFj2CYdHuy7O+bNph95LUkJR2pQeALQryQ10xv2XvtwU22mz6Mux23gftoefb2a7aXG5F2S/exIBBWlVc2NsmKDPmPVbI0tw3fGzwsRKM1reJmtoOLt1O70TsYpLRnUOjTL7e4UMtWA6U52ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YvNMB794/i2efdjux74rHFteq82gdQSg23rHHs9A0jE=;
 b=WxQ21tkIwdmWmpc2nlFIr4szPo+WtU99X0dDirUY6pxdhDXXmCXZRL2ODza6Uh72YJ1g6qZH23NnclEGB2aDHCmjexROMHsX3pFvbLR9fqmEu9wP/kL002mOgxvlopNnspdzfF6xVdeONH+9bxJ1iyvEJWjzNL9G9qjfKA2C9t+p4ZrPOGmxUzP05nJEyvcJiRWdjHry/PvBveRuxL762tik3lpJHaQUUbYJggR+nlPMaIL7XK3wPLApqQCkwZbJVIPJ+TWI/2wfEd3kNJ7gyxibfbQCEVcW29oqCsfVDguXyS6ycRolDXJi96B9a0lzYUYRRh1n7iFfjtODq4SM8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by SA2PR11MB4793.namprd11.prod.outlook.com (2603:10b6:806:fa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 11:24:42 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 11:24:42 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v11] ice: add support for unmanaged DPLL on E830
 NIC
Thread-Index: AQHcoCc/PrUQWGimC0eN9JPnJkCN3LX+6yqAgAWNGkA=
Date: Fri, 8 May 2026 11:24:41 +0000
Message-ID: <IA0PR11MB737843CDF9D584C512E07B929B3D2@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260217155808.1209194-1-arkadiusz.kubalewski@intel.com>
 <ca256097-1538-4c08-ba01-777bf646fc33@intel.com>
In-Reply-To: <ca256097-1538-4c08-ba01-777bf646fc33@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|SA2PR11MB4793:EE_
x-ms-office365-filtering-correlation-id: 683c9980-ea96-4981-122f-08deacf4662a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|18002099003|3023799003;
x-microsoft-antispam-message-info: 3qsWcHuZGHnGvqi7JBVOIrMvQq+hB/Bh+pQlJK+dMDFgseDOCSVtZsYg7CE1lwwGQdNYLD84NgxlFTpkwTQ8YXbrDh8AT9T2NSfDYdEhFtAHhZlOnqXA7hRiZyQzOXGrRbD7M6GuvEdO3ManN5+OIN5Acu5QzA1sr6tdgzc4CxTr/v0AkHUcUcOCw8j+ReYwp3tUgbGkdEukutc8ZwlLxeEN4EvymzFLf56X5Dg+1Kwr98OsXHjMNv9NyLzzNLiglpB9RDLd4bDS39pePvpo6SFoHVSMUSdpddkQ2XWttHKsdQpTZBH1LTKsjaHCwW4oWZTMRkml/5tFKpH/NsawP52e4sTh614K8PnaCp7ONIxElmbQkGKX1JhQzBykfgO3AC0P7GIPqQTZb4AAjQ09TVnS2guyvPuVxQvwz+deYfLF3EYVXBvllBPj6JJRJ3GsMzCabfwAcnSThMwq2maQh9M7QtNDuuM9dfpqMGozCdQi3YkrvohIdrvosNwFFH5bg1kM3r7cm0T5DGJwDr6CT8BCh/A4xDrY1c0A243bJNiFgrVxPevp7lb4UUMr7VL+fkOBptueCRhRm/D/fvC4+so1ezbiht8GmTdS3clcxN59+K866YGdYFvXwGIz8PuGlVZagbCr0UkUYGVYI3Llu+vvQIcU8SzGxyIMLGqPeeier7iWPaxSce5kecDopHyg43FdkdII72BtHh2JK154mKwpLq9qAHjB+EkmqLYhEHL0lcoFH2IKxI0deToqOL4S
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rm1TUzBoc2pLTHZ5SzJhOC8yWWtxY2NRYlllNzVkL0thbGZyTVU4b0Q1OTBG?=
 =?utf-8?B?M2h4amZnbDBZU1FKaWZCcW9WSWFnUThEYjNWbG5ha2ZUTnljTC9BL3YrR0tk?=
 =?utf-8?B?aDEwVUdnaFU4RGlZUE5Fc2lFNnhkcEl6UWl5M3kwUkdJYWVzbllKeTJBbEYy?=
 =?utf-8?B?K3BSUzh2STBnUzFrQnc5ZFJiRWhEVEQ4Z01nWDRpV0Q5QVpQMFJkSnNTcSs0?=
 =?utf-8?B?U011VWgrM01XUG5CenJIY2FxR3BicGdFRkZhZmF2WmkvYlFLL1JXNndlUUZs?=
 =?utf-8?B?eGJLaW9HTk9SVmpWbGczMnNWUG9jN2kzQnI3RFNRUnp1MjJPVEZnSTNscEp5?=
 =?utf-8?B?aUUzWFZoUkx6V0tndDVXSkRNUHBIWXphOUt6YzNickhiaWxpU3Bla3ZwMy8x?=
 =?utf-8?B?OHFYRHR5NnV3OHVOWngzYnFtWWxRSFBsY2NTYUtpTFJOUmp4Tm9OTHJtcnI0?=
 =?utf-8?B?Zyt2d1lsS0s5VW1NaEJjMTFZZG1lVjh4cFNLNWtzSUVRQXk1c1g4YWg4VDg5?=
 =?utf-8?B?RTBROG9SSGNrcUdaV3RITXdYeGRERVNOVHB4cG1DWTB3MHhFS1JXS08vNk00?=
 =?utf-8?B?NVJURVc1aGJ6b1FlN3lmZDRzMU5UeldyamJOcU9OR2x1ZlNwK05IdWdUT0s5?=
 =?utf-8?B?WWNrU3ZRMFowRU9qdjhzaC9ueDljQUovT1RwS1FSTHBaeTBDS3VXZ2h3N2Zu?=
 =?utf-8?B?ZVNWNDd2U2ZOUTdkV2N6ZVV3ZWFzblh3bjltMVBNZHZqanYwVTdRKzJCbVBq?=
 =?utf-8?B?d3JZZ1ZQdXNBdGlhZHlsYWJsTmhVc3A5RG5xcFV3UitnWXM5OEN5dDJYTkYz?=
 =?utf-8?B?REZGT2dqZlpBbVNEREhYVkczbEwwZlBVY2JNSlJCSmxBNWYrZUxOelU0Uisy?=
 =?utf-8?B?dENZR1Fzd09tK2ZhZ3Q3R0dNOGxuTUl4R0FqbzVnOFZuMmZZV0VicjVPSlE0?=
 =?utf-8?B?RC9uZzloYUUwd3RrZGVrL0pXdnNkUEVtejdYSFVzancxNUc2N3k5c1BINVph?=
 =?utf-8?B?Q1QvdDB4Q2o3cU5kUlIyK0xxUjFFOFFzQ1gxU0dLYkdFVUpFbXJDSk5GcXNR?=
 =?utf-8?B?WFVjbXR2SkpxdVZheTh2OWRJd3dPZitVR2pwYXZSTGlNa3laRkNPa2ZhKy8y?=
 =?utf-8?B?YyswMTBKeWZGeEM4Y05pL3pYM0wrUmxOQ3lhN1dFb0MrT0llRnBUa3cxYWZB?=
 =?utf-8?B?R1YxQ0w1bUxMYzhEVHBzelVQY2xHL2o1OHFuOG1GR3Qrdko3T2pFcDJyN1JO?=
 =?utf-8?B?cXVBSmNzbWljZmF2UnNXRnVjSWk5N0FMYVEzVlFjYVdXV2Y2RjBEZVhvMFhv?=
 =?utf-8?B?bSs2cmhUcUlEZTlzQkRGbDRGMTNJMXI0a1Awakc1dFpNbFNxbFlFTmhtWngz?=
 =?utf-8?B?RzVCbGo1SWExYUkrNTBxemJFaFhyck9FTHN2dVZpN3AyL2FyYUlXL293SzJy?=
 =?utf-8?B?dXpNYURFQmRpdWUxTXlWVVhxNE1rT1B1OTVaT0NvTlB6T2wyZE4xa2srcmVB?=
 =?utf-8?B?TC9idWR1N3NSMTZIKzd6NlN4V0pVdXhkNkVZQ3Q0WmpvaVpkV25UQU1EdGc1?=
 =?utf-8?B?NXBQWTJwU0Z2Lzl3UDEwOTIyWk9KdDJVVFFKb1NXeXVXdUU0L3JRL21UN1BQ?=
 =?utf-8?B?TlJvd2Q1OXgrdFgyVEdQUXFzb1o2cUZXaDZFNC9TTXd1R0c3ZDVGWndraXZs?=
 =?utf-8?B?dVJrdmdzMGdsOEhxWmhzMlE1dHZZck1oY3Y3WVhmMHM3Sk9jc0FJOXNlai9O?=
 =?utf-8?B?cy8wNmtJaVlIWElCenNielo5Z3dHUnBleXBEeXpRWS9rSXlRdmZLUUtHRUVx?=
 =?utf-8?B?cG43dzY3NWVodk5mU2dxM3V4N0N0b2lwNDVVNDJaa2kyaEEwS3k1S0pzdDlk?=
 =?utf-8?B?VldoNVd5WndvSFdGa3R6TUh5aUFJWjFOVVFnTGhkMXRuODQwZ0VxUHgyRG03?=
 =?utf-8?B?RC9SeEhnODhEbTZlaXFrRkhnTXZKZU5kSTlXL2lJRTZBbWNEekRwWEFyZkVP?=
 =?utf-8?B?Q3QrY2ZFRWY1Z1JBckVFVzhCYW85UDNHcmpBRzdUWXo0dHhtekZaYkk4U3lT?=
 =?utf-8?B?R1hnazNiV3BzM3NkVHA1cWFlM0JVVW9OWlYvanNpdUtGaFlYbS80aGRmUXB0?=
 =?utf-8?B?ZFBCV3pxa2N4U0hPTjdrT2pQRFJFbXBlS1Z5OEpJV3ViemNTaC9YOVZnNmJk?=
 =?utf-8?B?N2w5eFpFVzNJM2FwbHpIdmhvbkFrWURHcloyb2VDUmh1Z0lURUxpTjZ6dUVz?=
 =?utf-8?B?TzFjS1lXRktLbm5XcVdleWJMVlRjZVdGSTNxRFpTUU40N0NLVjBORVNlSkhn?=
 =?utf-8?B?KytLd2ErUitYZU16N3N0bWkyZWNkV1VWZFBPd3FBM2k5NE02d2dXWExRTU02?=
 =?utf-8?Q?nYs4fWedF64LgS3Q=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kWzG2vKH52Knrr1M63zMI2B2Dg68JIXHcHBTKGVMSifomLNVCOcWEnRfrvJriVpyJdhbUBfMOuXOOqcSUsjX7QSegRVvlhQcIYOZYmFXYEog0TCN3IOoihAGOFmNkq8oo/D3CZN9nMixBaBECnFwxssIKglR5vHDnGiwKb+AHUbmeA1PyjY/ubuGlJlLmHir6kuNXXX3LYuxWWNTEQXEchCOHguAu/iOW6JxxEUgNgl3oaUQM24NjhwPccBbX7LoDY1oeyGoXYJSgd1XAIpKXcfE8iTFW4j21NaqRMtg4GtRZBWojMYGhIQlVBfsOLiD8GpO6dVetQPVFGFE4J5fJw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 683c9980-ea96-4981-122f-08deacf4662a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 11:24:41.8822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Blm6WFOWfUi/ZBd/SVpCFkuoqi70l8u4P4p95i4HJMshk2B+WMqSWWzgatH5czvTg8E494Vnu7jbDgDUL3fIbbi2Wh/nU9RHbGCgXkvrOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4793
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778239487; x=1809775487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YvNMB794/i2efdjux74rHFteq82gdQSg23rHHs9A0jE=;
 b=d1mCpsi9xsMf6A4uUwY5JwwhFtQNSwNDqDAhZlT5kxEQlZkSLfQ3Tb0h
 5QoU5jRRI2dsep0eK7uukT9o4bRTRAeDfBtc9qmskpWunHJUQv8Phue2Z
 Ycu4ojrglDo7v3G/+TgXZXwhQJyvsWZsuQUISXffPXQV9OgKzKkdf+UL1
 LvVLWdwmYoimX4KvdlCYmISH6pQp2vxF66sVy+1gbNOpX+PzVVoRK5sC4
 un2O8SOE+h/16gLA+Dgthpgk8Ijz5H4gbXZc6mLfHhjz+l8pwrIak2wcJ
 6y/1OSAMQGrj02ygru9HSt5HietM/x6cl5A2HCR8gpwkNZwsHc56wSflq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d1mCpsi9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11] ice: add support for
 unmanaged DPLL on E830 NIC
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Fodor,
 Zoltan" <zoltan.fodor@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Grinberg,
 Vitaly" <vgrinber@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: BAD354F5B70
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:pmenzel@molgen.mpg.de,m:linux-doc@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:zoltan.fodor@intel.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:vgrinber@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

PkZyb206IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPlNlbnQ6
IFR1ZXNkYXksIE1heSA1LCAyMDI2IDEyOjMxIEFNDQo+DQo+T24gMi8xNy8yMDI2IDc6NTggQU0s
IEFya2FkaXVzeiBLdWJhbGV3c2tpIHdyb3RlOg0KPj4gSGFyZHdhcmUgdmFyaWFudHMgb2YgRTgz
MCBtYXkgc3VwcG9ydCBhbiB1bm1hbmFnZWQgRFBMTCB3aGVyZSB0aGUNCj4+IGNvbmZpZ3VyYXRp
b24gaXMgaGFyZGNvZGVkIHdpdGhpbiB0aGUgaGFyZHdhcmUgYW5kIGZpcm13YXJlLCBtZWFuaW5n
DQo+PiB1c2VycyBjYW5ub3QgbW9kaWZ5IHNldHRpbmdzLiBIb3dldmVyLCB1c2VycyBhcmUgYWJs
ZSB0byBjaGVjayB0aGUgRFBMTA0KPj4gbG9jayBzdGF0dXMgYW5kIG9idGFpbiBjb25maWd1cmF0
aW9uIGluZm9ybWF0aW9uIHRocm91Z2ggdGhlIExpbnV4IERQTEwNCj4+IGFuZCBkZXZsaW5rIGhl
YWx0aCBzdWJzeXN0ZW0uDQo+Pg0KPj4gQXZhaWxhYmlsaXR5IG9mICdsb3NzIG9mIGxvY2snIGhl
YWx0aCBzdGF0dXMgY29kZSBkZXRlcm1pbmVzIGlmIHN1Y2gNCj4+IHN1cHBvcnQgaXMgYXZhaWxh
YmxlLCBpZiB0cnVlLCByZWdpc3RlciBzaW5nbGUgRFBMTCBkZXZpY2Ugd2l0aCAxIGlucHV0DQo+
PiBhbmQgMSBvdXRwdXQgYW5kIHByb3ZpZGUgaGFyZGNvZGVkL3JlYWQgb25seSBwcm9wZXJ0aWVz
IG9mIGEgcGluIGFuZA0KPj4gRFBMTCBkZXZpY2UuIFVzZXIgaXMgb25seSBhbGxvd2VkIHRvIGNo
ZWNrIERQTEwgZGV2aWNlIHN0YXR1cyBhbmQNCj4+IHJlY2VpdmUNCj4+IG5vdGlmaWNhdGlvbnMg
b24gRFBMTCBsb2NrIHN0YXR1cyBjaGFuZ2UuDQo+Pg0KPj4gV2hlbiBwcmVzZW50LCB0aGUgRFBM
TCBkZXZpY2UgbG9ja3MgdG8gYW4gZXh0ZXJuYWwgc2lnbmFsIHByb3ZpZGVkDQo+PiB0aHJvdWdo
IHRoZSBQQ0llL09DUCBwaW4uIFRoZSBleHBlY3RlZCBpbnB1dCBzaWduYWwgaXMgMVBQUw0KPj4g
KDEgUHVsc2UgUGVyIFNlY29uZCkgZW1iZWRkZWQgb24gYSAxME1IeiByZWZlcmVuY2UgY2xvY2su
DQo+PiBUaGUgRFBMTCBwcm9kdWNlcyBvdXRwdXQ6DQo+PiAtIGZvciBNQUMgKE1lZGlhIEFjY2Vz
cyBDb250cm9sKSAmIFBIWSAoUGh5c2ljYWwgTGF5ZXIpIGNsb2NrcywNCj4+IC0gMVBQUyBmb3Ig
c3luY2hyb25pemF0aW9uIG9mIG9uYm9hcmQgUEhDIChQcmVjaXNpb24gSGFyZHdhcmUgQ2xvY2sp
DQo+PiB0aW1lci4NCj4+DQo+PiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+PiBSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwg
PHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IE5pdGth
IDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBcmthZGl1c3og
S3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiB2
MTE6DQo+PiAtIHJlYmFzZSBhbmQgZml4IGNvbmZsaWN0cw0KPg0KPg0KPkpha3ViIHJpZ2h0ZnVs
bHkgcG9pbnRlZCBvdXQgdGhlIG1pc3Rha2VuIGluY2x1c2lvbiBvZiBIQVZFX0RQTExfRVNZTkMu
DQo+DQoNClRydWUsIGZpeGVkIGluIHYxMi4NCg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+PiBpbmRleCA3M2E0ZTI4ZWQ3NWYuLjY0NTE4MjAyZGZm
ZiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBs
bC5jDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwuYw0K
Pj4gQEAgLTI1ODgsNiArMjYwMSwyMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRwbGxfcGluX29w
cw0KPj4gaWNlX2RwbGxfb3V0cHV0X29wcyA9IHsNCj4+ICAJLmVzeW5jX2dldCA9IGljZV9kcGxs
X291dHB1dF9lc3luY19nZXQsDQo+PiAgfTsNCj4+DQo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBk
cGxsX3Bpbl9vcHMgaWNlX2RwbGxfaW5wdXRfdW5tYW5hZ2VkX29wcyA9IHsNCj4+ICsJLmZyZXF1
ZW5jeV9nZXQgPSBpY2VfZHBsbF9pbnB1dF9mcmVxdWVuY3lfZ2V0LA0KPj4gKwkuZGlyZWN0aW9u
X2dldCA9IGljZV9kcGxsX2lucHV0X2RpcmVjdGlvbiwNCj4+ICsJLnN0YXRlX29uX2RwbGxfZ2V0
ID0gaWNlX2RwbGxfaW5wdXRfc3RhdGVfZ2V0LA0KPj4gKyNpZiBkZWZpbmVkKEhBVkVfRFBMTF9F
U1lOQykNCj4+ICsJLmVzeW5jX2dldCA9IGljZV9kcGxsX2lucHV0X2VzeW5jX2dldCwNCj4+ICsj
ZW5kaWYgLyogSEFWRV9EUExMX0VTWU5DICovDQo+PiArfTsNCj4+ICsNCj5QbGVhc2UgZml4IHRo
aXMsIGFuZCByZW1vdmUgYW55IG90aGVyIHJlbWFpbmluZyBrY29tcGF0IGNydWZ0IGFzIHdlbGwu
DQo+DQo+QWxzbyBjb3VsZCB5b3UgcGxlYXNlIHJldmlldyB0aGUgZm9sbG93aW5nIFNhc2hpa28g
cmVwb3J0cyBhbmQgbWFrZSBzdXJlDQo+dGhlcmUgaXMgbm8gaXNzdWVzPw0KPg0KDQpTdXJlIHRo
aW5nLg0KDQo+VGhlIG5ldGRldiBzYXNoaWtvLmRldiBib3Qgc2F5cyB0aGlzOg0KPg0KPj4gY29t
bWl0IDdhYWU0YTU0ZDNlZjE4ZDg2OTRiYzUzNWI2ZTU5NTk4MzljOWFkZmQNCj4+IEF1dGhvcjog
QXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4+
IGljZTogYWRkIHN1cHBvcnQgZm9yIHVubWFuYWdlZCBEUExMIG9uIEU4MzAgTklDDQo+PiBIYXJk
d2FyZSB2YXJpYW50cyBvZiBFODMwIG1heSBzdXBwb3J0IGFuIHVubWFuYWdlZCBEUExMIHdoZXJl
IHRoZQ0KPj4gY29uZmlndXJhdGlvbiBpcyBoYXJkY29kZWQuIFRoaXMgcGF0Y2ggYWxsb3dzIHVz
ZXJzIHRvIGNoZWNrIHRoZSBEUExMDQo+PiBsb2NrIHN0YXR1cyBhbmQgb2J0YWluIGNvbmZpZ3Vy
YXRpb24gaW5mb3JtYXRpb24gdGhyb3VnaCB0aGUgTGludXggRFBMTA0KPj4gYW5kIGRldmxpbmsg
aGVhbHRoIHN1YnN5c3RlbS4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2RldmxpbmsvaGVhbHRoLmMNCj4+PmIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2RldmxpbmsvaGVhbHRoLmMNCj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvZGV2bGluay9oZWFsdGguYw0KPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9kZXZsaW5rL2hlYWx0aC5jDQo+PiBbIC4uLiBdDQo+Pj4gQEAgLTI0Miw2ICsy
NDQsOCBAQCB2b2lkIGljZV9wcm9jZXNzX2hlYWx0aF9zdGF0dXNfZXZlbnQoc3RydWN0IGljZV9w
Zg0KPj4+KnBmLCBzdHJ1Y3QgaWNlX3JxX2V2ZW50X2luZm8NCj4+PiAgCQkJCXBmLT5oZWFsdGhf
cmVwb3J0ZXJzLmZ3X3N0YXR1cyA9ICpoZWFsdGhfaW5mbzsNCj4+PiAgCQkJCWRldmxpbmtfaGVh
bHRoX3JlcG9ydChwZi0+aGVhbHRoX3JlcG9ydGVycy5mdywNCj4+PiAgCQkJCQkJICAgICAgIkZX
IHN5bmRyb21lIHJlcG9ydGVkIiwgTlVMTCk7DQo+Pj4gKwkJCQlpZiAoc3RhdHVzX2NvZGUgPT0N
Cj4+PiBJQ0VfQVFDX0hFQUxUSF9TVEFUVVNfSU5GT19MT1NTX09GX0xPQ0spDQo+Pj4gKwkJCQkJ
aWNlX2RwbGxfbG9ja19zdGF0ZV9zZXRfdW5tYW5hZ2VkKHBmLA0KPj4gaGVhbHRoX2luZm8sIHRy
dWUpOw0KPj4gSXMgaXQgcG9zc2libGUgZm9yIHRoaXMgaGVhbHRoIGV2ZW50IHRvIGFycml2ZSB3
aGVuIHRoZSBEUExMIHN1YnN5c3RlbQ0KPj4gaXMgbm90DQo+PiBmdWxseSBpbml0aWFsaXplZCBv
ciBhbHJlYWR5IHRvcm4gZG93bj8NCj4+IExvb2tpbmcgYXQgaWNlX2RwbGxfbG9ja19zdGF0ZV9z
ZXRfdW5tYW5hZ2VkKCksIGl0IHVuY29uZGl0aW9uYWxseQ0KPj4gYWNxdWlyZXMNCj4+IHBmLT5k
cGxscy5sb2NrOg0KPj4gdm9pZCBpY2VfZHBsbF9sb2NrX3N0YXRlX3NldF91bm1hbmFnZWQoLi4u
KQ0KPj4gew0KPj4gICAgIC4uLg0KPj4gCW11dGV4X2xvY2soJnBmLT5kcGxscy5sb2NrKTsNCj4+
ICAgICAuLi4NCj4+IH0NCj4+IElmIHRoZSBoYXJkd2FyZSBkb2Vzbid0IHN1cHBvcnQgRFBMTCwg
aWNlX2RwbGxfaW5pdCgpIGlzIG5ldmVyIGNhbGxlZCwNCj4+IGxlYXZpbmcNCj4+IHRoZSBtdXRl
eCB1bmluaXRpYWxpemVkLiBBZGRpdGlvbmFsbHksIGlmIGljZV9kcGxsX2luaXRfdW5tYW5hZ2Vk
KCkNCj4+IGZhaWxzLA0KPj4gaXQgZGVzdHJveXMgdGhlIG11dGV4IGFuZCBleGl0cy4NCj4+IER1
cmluZyBkcml2ZXIgdW5sb2FkLCBpY2VfZHBsbF9kZWluaXQoKSBkZXN0cm95cyB0aGUgbXV0ZXgg
YW5kIGZyZWVzIHRoZQ0KPj4gRFBMTCBzdHJ1Y3R1cmVzLCBidXQgdGhlIHNlcnZpY2UgdGFzayBw
cm9jZXNzaW5nIHRoZXNlIGFkbWluIHF1ZXVlDQo+PiBldmVudHMNCj4+IG1pZ2h0IG5vdCBiZSBz
dG9wcGVkIHVudGlsIGxhdGVyIGluIHRoZSB0ZWFyZG93biBzZXF1ZW5jZS4NCj4+IENvdWxkIHRo
aXMgbGVhZCB0byBhIGtlcm5lbCBwYW5pYyBmcm9tIGxvY2tpbmcgYW4gdW5pbml0aWFsaXplZCBv
cg0KPj4gZGVzdHJveWVkDQo+PiBtdXRleCwgb3IgYSB1c2UtYWZ0ZXItZnJlZSB3aGVuIHBhc3Np
bmcgdGhlIGQtPmRwbGwgcG9pbnRlciB0bw0KPj4gZHBsbF9kZXZpY2VfY2hhbmdlX250ZigpPw0K
Pj4gU2hvdWxkIHRoZXJlIGJlIGEgY2hlY2sgZW5zdXJpbmcgRFBMTCBpcyBhY3RpdmUgKGUuZy4g
YnkgY2hlY2tpbmcNCj4+IHRlc3RfYml0KElDRV9GTEFHX0RQTEwsIHBmLT5mbGFncykpIGJlZm9y
ZSBoYW5kbGluZyB0aGUgZXZlbnQ/DQo+DQo+DQo+TXkgb3duIGV4ZWN1dGlvbiB1c2luZyBjbGF1
ZGUgaGFkIHRoaXMgdG8gc2F5Og0KPg0KDQpTdXJlLCBmaXggaW4gdjEyLg0KRXhjZXB0IGxhc3Qg
ZmluZGluZy4NCg0KPj4gTm93IEkgaGF2ZSBldmVyeXRoaW5nLiBMZXQgbWUgY29tcG9zZSB0aGUg
cmVwb3J0Lg0KPj4gY29tbWl0IGQ5YjQ4MWMxZDVkOGJlOWRiYmNhMzZmNDBiZTY0ZGI5MWViMTJj
YWENCj4+IEF1dGhvcjogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVzei5rdWJhbGV3c2tp
QGludGVsLmNvbT4NCj4+IGljZTogYWRkIHN1cHBvcnQgZm9yIHVubWFuYWdlZCBEUExMIG9uIEU4
MzAgTklDDQo+PiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgYW4gdW5tYW5hZ2VkIERQTEwg
b24gRTgzMCBOSUMgdmFyaWFudHMsDQo+PiB3aGVyZSB0aGUgRFBMTCBjb25maWd1cmF0aW9uIGlz
IGhhcmRjb2RlZCBpbiBoYXJkd2FyZS9maXJtd2FyZS4gIEl0DQo+PiByZWdpc3RlcnMgYSBzaW5n
bGUgUFBTIERQTEwgZGV2aWNlIHdpdGggb25lIGlucHV0IGFuZCBvbmUgb3V0cHV0LA0KPj4gcmVw
b3J0aW5nIGxvY2sgc3RhdHVzIHZpYSBoZWFsdGggc3RhdHVzIGV2ZW50cyBhbmQgdGhlIERQTEwg
c3Vic3lzdGVtLg0KPj4gQSBmZXcgdGhpbmdzIHN0b29kIG91dCBkdXJpbmcgcmV2aWV3Lg0KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvZGV2bGluay9oZWFs
dGguYw0KPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2RldmxpbmsvaGVhbHRo
LmMNCj4+PiBpbmRleCA4ZTlhOGE4MTc4ZDQuLjMxZTZjNTEwN2M5NyAxMDA2NDQNCj4+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvZGV2bGluay9oZWFsdGguYw0KPj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9kZXZsaW5rL2hlYWx0aC5jDQo+PiBb
IC4uLiBdDQo+Pj4gQEAgLTI0Miw2ICsyNDQsOCBAQCB2b2lkIGljZV9wcm9jZXNzX2hlYWx0aF9z
dGF0dXNfZXZlbnQoc3RydWN0IGljZV9wZg0KPj4+ICpwZiwgc3RydWN0IGljZV9ycV9ldmVudF9p
bmZvDQo+Pj4gCQkJCXBmLT5oZWFsdGhfcmVwb3J0ZXJzLmZ3X3N0YXR1cyA9ICpoZWFsdGhfaW5m
bzsNCj4+PiAJCQkJZGV2bGlua19oZWFsdGhfcmVwb3J0KHBmLT5oZWFsdGhfcmVwb3J0ZXJzLmZ3
LA0KPj4+IAkJCQkJCSAgICAgICJGVyBzeW5kcm9tZSByZXBvcnRlZCIsIE5VTEwpOw0KPj4+KwkJ
CQlpZiAoc3RhdHVzX2NvZGUgPT0NCj4+PklDRV9BUUNfSEVBTFRIX1NUQVRVU19JTkZPX0xPU1Nf
T0ZfTE9DSykNCj4+PisJCQkJCWljZV9kcGxsX2xvY2tfc3RhdGVfc2V0X3VubWFuYWdlZChwZiwN
Cj4+PmhlYWx0aF9pbmZvLCB0cnVlKTsNCj4+PiAJCQkJYnJlYWs7DQo+PiBUaGlzIGNhbGxzIGlj
ZV9kcGxsX2xvY2tfc3RhdGVfc2V0X3VubWFuYWdlZCgpIGZvciBldmVyeSBQRiB0aGF0DQo+PiBy
ZWNlaXZlcyBhIDB4NjAxIGhlYWx0aCBldmVudCwgd2l0aCBubyBjaGVjayBmb3IgcGYtPmRwbGxz
LnVubWFuYWdlZA0KPj4gb3IgdGVzdF9iaXQoSUNFX0ZMQUdfRFBMTCwgcGYtPmZsYWdzKS4NCj4+
IFRoZSBvbmx5IGd1YXJkIGluc2lkZSBpY2VfZHBsbF9sb2NrX3N0YXRlX3NldF91bm1hbmFnZWQo
KSBpcw0KPj4gaWNlX3BmX3NyY190bXJfb3duZWQoKSwgd2hpY2ggY2hlY2tzIFBUUCB0aW1lciBv
d25lcnNoaXAgLS0gbm90DQo+PiB3aGV0aGVyIHRoZSBEUExMIHN1YnN5c3RlbSB3YXMgaW5pdGlh
bGl6ZWQuDQo+PiBDb25zaWRlciBhIGRldmljZSB3aGVyZSB0aGUgZmlybXdhcmUgc3VwcG9ydHMg
aGVhbHRoIGNvZGUgMHg2MDEgYnV0DQo+PiB0aGUgWkw4MDY0MCBDR1UgaXMgbm90IGluIHRoZSBu
ZXRsaXN0LiAgSW4gaWNlX2luaXRfZmVhdHVyZXMoKToNCj4+PisJZXJyID0gaWNlX2lzX2hlYWx0
aF9zdGF0dXNfY29kZV9zdXBwb3J0ZWQoJnBmLT5odywgY29kZSwNCj4+PisJCQkJCQkgICZwZi0+
ZHBsbHMudW5tYW5hZ2VkKTsNCj4+PisJaWYgKGVyciB8fCAhaWNlX2lzX3VubWFuYWdlZF9jZ3Vf
aW5fbmV0bGlzdCgmcGYtPmh3KSkNCj4+PisJCXBmLT5kcGxscy51bm1hbmFnZWQgPSBmYWxzZTsN
Cj4+IFRoaXMgc2V0cyBwZi0+ZHBsbHMudW5tYW5hZ2VkID0gZmFsc2UsIHNvIGljZV9kcGxsX2lu
aXQoKSBpcyBuZXZlcg0KPj4gY2FsbGVkIGFuZCBwZi0+ZHBsbHMubG9jayBpcyBuZXZlciBpbml0
aWFsaXplZCB2aWEgbXV0ZXhfaW5pdCgpLg0KPj4gQnV0IHRoZSBmaXJtd2FyZSBjYW4gc3RpbGwg
c2VuZCB0aGUgaGVhbHRoIGV2ZW50LCBhbmQgdGhlbjoNCj4+Pit2b2lkIGljZV9kcGxsX2xvY2tf
c3RhdGVfc2V0X3VubWFuYWdlZChzdHJ1Y3QgaWNlX3BmICpwZiwNCj4+PisJCQkJICAgICAgIGNv
bnN0IHN0cnVjdCBpY2VfYXFjX2hlYWx0aF9zdGF0dXNfZWxlbQ0KPj4+KmJ1ZmYsDQo+Pj4rCQkJ
CSAgICAgICBib29sIG5vdGlmeSkNCj4+Pit7DQo+PiBbIC4uLiBdDQo+Pj4rCW11dGV4X2xvY2so
JnBmLT5kcGxscy5sb2NrKTsNCj4+IENhbiB0aGlzIG11dGV4X2xvY2soKSBvbiBhbiB1bmluaXRp
YWxpemVkIG11dGV4IGNhdXNlIHVuZGVmaW5lZA0KPj4gYmVoYXZpb3I/ICBXaXRoIENPTkZJR19E
RUJVR19NVVRFWEVTIHRoaXMgd291bGQgdHJpZ2dlciBhIEJVRygpLg0KPj4gQWxzbywgb24gbWFu
YWdlZCBEUExMIGRldmljZXMgKGUuZy4gRTgxMCB3aXRoIENHVSksIHRoZSBEUExMIHdvcmtlcg0K
Pj4gdGhyZWFkIG1haW50YWlucyBwZi0+ZHBsbHMucHBzLmRwbGxfc3RhdGUgdmlhIGljZV9kcGxs
X3VwZGF0ZV9zdGF0ZSgpLg0KPj4gV291bGQgdGhpcyB1bmNvbmRpdGlvbmFsIGNhbGwgb3Zlcndy
aXRlIHRoZSBtYW5hZ2VkIHN0YXRlIG1hY2hpbmU/DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+Pj5iL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+Pj4gaW5kZXggM2VlYTgzYjBjZGM5Li4wMDcwNGRm
ZWIzYjIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9kcGxsLmMNCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Rw
bGwuYw0KPj4gWyAuLi4gXQ0KPj4+K3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHBsbF9waW5fb3BzIGlj
ZV9kcGxsX2lucHV0X3VubWFuYWdlZF9vcHMgPSB7DQo+Pj4rCS5mcmVxdWVuY3lfZ2V0ID0gaWNl
X2RwbGxfaW5wdXRfZnJlcXVlbmN5X2dldCwNCj4+PisJLmRpcmVjdGlvbl9nZXQgPSBpY2VfZHBs
bF9pbnB1dF9kaXJlY3Rpb24sDQo+Pj4rCS5zdGF0ZV9vbl9kcGxsX2dldCA9IGljZV9kcGxsX2lu
cHV0X3N0YXRlX2dldCwNCj4+PisjaWYgZGVmaW5lZChIQVZFX0RQTExfRVNZTkMpDQo+Pj4rCS5l
c3luY19nZXQgPSBpY2VfZHBsbF9pbnB1dF9lc3luY19nZXQsDQo+Pj4rI2VuZGlmIC8qIEhBVkVf
RFBMTF9FU1lOQyAqLw0KPj4+K307DQo+PiBIQVZFX0RQTExfRVNZTkMgZG9lcyBub3QgYXBwZWFy
IHRvIGJlIGRlZmluZWQgYW55d2hlcmUgaW4gdGhlIHVwc3RyZWFtDQo+PiBrZXJuZWwgdHJlZSAt
LSBpdCBsb29rcyBsaWtlIGFuIG91dC1vZi10cmVlIGNvbXBhdGliaWxpdHkgbWFjcm8uICBJbg0K
Pj4gdXBzdHJlYW0gYnVpbGRzIHRoaXMgbWVhbnMgLmVzeW5jX2dldCBpcyBhbHdheXMgTlVMTCBm
b3IgdW5tYW5hZ2VkDQo+PiBpbnB1dCBwaW5zLg0KPj4gVGhlIG1hbmFnZWQgaWNlX2RwbGxfaW5w
dXRfb3BzIHNldHMgLmVzeW5jX2dldCB1bmNvbmRpdGlvbmFsbHksIGFuZA0KPj4gaWNlX2RwbGxf
aW5wdXRfZXN5bmNfZ2V0KCkgYWxyZWFkeSBoYXMgZXhwbGljaXQgdW5tYW5hZ2VkLXNwZWNpZmlj
DQo+PiBsb2dpYyBhZGRlZCBieSB0aGlzIHBhdGNoLiAgVGhlIGluaXQgY29kZSBhbHNvIHVuY29u
ZGl0aW9uYWxseSBzZXRzDQo+PiBJQ0VfQVFDX0dFVF9DR1VfSU5fQ0ZHX1NUQVRVU19FU1lOQ19D
QVAgYW5kIElDRV9EUExMX0lOX0VTWU5DX0VOQUJMRUQNCj4+IG9uIHVubWFuYWdlZCBpbnB1dCBw
aW5zLg0KPj4gVGhlIGRvY3VtZW50YXRpb24gZXhhbXBsZSBhdCB0aGUgZW5kIG9mIHRoZSBwYXRj
aCBzaG93cw0KPj4gZXN5bmMtZnJlcXVlbmN5IGFuZCBlc3luYy1wdWxzZSBpbiB0aGUgcGluIGR1
bXAsIGJ1dCB0aG9zZSBmaWVsZHMNCj4+IHdpbGwgbmV2ZXIgYXBwZWFyIGluIGFuIHVwc3RyZWFt
IGJ1aWxkIHNpbmNlIHRoZSBjYWxsYmFjayBpcyBjb21waWxlZA0KPj4gb3V0LiAgU2hvdWxkIHRo
ZSBpZmRlZiBiZSByZW1vdmVkIHNvIHRoaXMgbWF0Y2hlcyBpY2VfZHBsbF9pbnB1dF9vcHM/DQo+
PiBbIC4uLiBdDQo+Pj4gQEAgLTMxNTMsMTIgKzMxODEsMTUgQEAgaWNlX2RwbGxfaW5pdF9kaXJl
Y3RfcGlucyhzdHJ1Y3QgaWNlX3BmICpwZiwNCj4+PiBib29sIGNndSwNCj4+PiAgCWludCByZXQ7
DQo+Pj4NCj4+PiAgCXJldCA9IGljZV9kcGxsX2dldF9waW5zKHBmLCBwaW5zLCBzdGFydF9pZHgs
IGNvdW50LCBwZi0NCj4+PiBkcGxscy5jbG9ja19pZCk7DQo+Pj4tIAlpZiAocmV0KQ0KPj4+Kwlp
ZiAoIWNndSB8fCByZXQpDQo+Pj4gIAkJcmV0dXJuIHJldDsNCj4+Pi0gCWlmIChjZ3UpIHsNCj4+
PisNCj4+PisJaWYgKGZpcnN0KSB7DQo+Pj4gIAkJcmV0ID0gaWNlX2RwbGxfcmVnaXN0ZXJfcGlu
cyhmaXJzdCwgcGlucywgb3BzLCBjb3VudCk7DQo+Pj4gIAkJaWYgKHJldCkNCj4+PiAgCQkJZ290
byByZWxlYXNlX3BpbnM7DQo+Pj4rCX0NCj4+PisJaWYgKHNlY29uZCkgew0KPj4+ICAJCXJldCA9
IGljZV9kcGxsX3JlZ2lzdGVyX3BpbnMoc2Vjb25kLCBwaW5zLCBvcHMsIGNvdW50KTsNCj4+PiAg
CQlpZiAocmV0KQ0KPj4+ICAJCQlnb3RvIHVucmVnaXN0ZXJfZmlyc3Q7DQo+PiBpY2VfZHBsbF9p
bml0X2RpcmVjdF9waW5zKCkgd2FzIHVwZGF0ZWQgd2l0aCBOVUxMIGd1YXJkcyBmb3IgZmlyc3QN
Cj4+IGFuZCBzZWNvbmQuICBIb3dldmVyLCBpY2VfZHBsbF9kZWluaXRfZGlyZWN0X3BpbnMoKSB3
YXMgbm90Og0KPj4gaWNlX2RwbGxfZGVpbml0X2RpcmVjdF9waW5zKCkgew0KPj4gICAgIGlmIChj
Z3UpIHsNCj4+ICAgICAgICAgaWNlX2RwbGxfdW5yZWdpc3Rlcl9waW5zKGZpcnN0LCBwaW5zLCBv
cHMsIGNvdW50KTsNCj4+ICAgICAgICAgaWNlX2RwbGxfdW5yZWdpc3Rlcl9waW5zKHNlY29uZCwg
cGlucywgb3BzLCBjb3VudCk7DQo+PiAgICAgfQ0KPj4gICAgIC4uLg0KPj4gfQ0KPj4gRm9yIHRo
ZSB1bm1hbmFnZWQgY2FzZSwgaWNlX2RwbGxfaW5pdF91bm1hbmFnZWQoKSBvbmx5IGNyZWF0ZXMg
dGhlDQo+PiBQUFMgZHBsbCAtLSBlZWMuZHBsbCBzdGF5cyBOVUxMLiAgSWYgb3V0cHV0IHBpbiBp
bml0IGZhaWxzIGluc2lkZQ0KPj4gaWNlX2RwbGxfaW5pdF9waW5zKHBmLCB0cnVlKSwgdGhlIGVy
cm9yIHBhdGggZmFsbHMgdGhyb3VnaCB0bw0KPj4gZGVpbml0X2lucHV0cyB3aGljaCBjYWxsczoN
Cj4+ICAgICBpY2VfZHBsbF9kZWluaXRfZGlyZWN0X3BpbnMocGYsIGNndT10cnVlLCAuLi4sDQo+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBmLT5kcGxscy5wcHMuZHBsbCwNCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGYtPmRwbGxzLmVlYy5kcGxsKTsNCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eDQo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTA0KPj4gVGhp
cyBwYXNzZXMgTlVMTCBhcyBzZWNvbmQgdG8gaWNlX2RwbGxfdW5yZWdpc3Rlcl9waW5zKCksIHdo
aWNoDQo+PiBjYWxscyBkcGxsX3Bpbl91bnJlZ2lzdGVyKE5VTEwsIC4uLiksIGRlcmVmZXJlbmNp
bmcgdGhlIE5VTEwgZHBsbA0KPj4gcG9pbnRlci4gIFdvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8gYWRk
IHRoZSBzYW1lIE5VTEwgZ3VhcmRzIHRvDQo+PiBpY2VfZHBsbF9kZWluaXRfZGlyZWN0X3BpbnMo
KSB0aGF0IHdlcmUgYWRkZWQgdG8gdGhlIGluaXQgcGF0aD8NCj4+IFsgLi4uIF0NCj4+PiBAQCAt
MzkyMyw2ICs0MDAxLDE1IEBAIGljZV9kcGxsX2luaXRfaW5mb19kaXJlY3RfcGlucyhzdHJ1Y3Qg
aWNlX3BmDQo+Pj4gKnBmLA0KPj4+ICAJCXBpbnNbaV0ucHJvcC5ib2FyZF9sYWJlbCA9IGljZV9j
Z3VfZ2V0X3Bpbl9uYW1lKGh3LCBpLCBpbnB1dCk7DQo+Pj4gIAkJcGluc1tpXS5wcm9wLnR5cGUg
PSBpY2VfY2d1X2dldF9waW5fdHlwZShodywgaSwgaW5wdXQpOw0KPj4+ICAJCWlmIChpbnB1dCkg
ew0KPj4+KwkJCWlmIChwZi0+ZHBsbHMudW5tYW5hZ2VkKSB7DQo+Pj4rCQkJCXBpbnNbaV0uZnJl
cSA9IGljZV9kcGxsX3Bpbl9mcmVxX2luZm8oaHcsIGksDQo+Pj4rCQkJCQkJCQkgICAgICBpbnB1
dCk7DQo+Pj4rCQkJCXBpbnNbaV0uc3RhdGVbMF0gPSBEUExMX1BJTl9TVEFURV9DT05ORUNURUQ7
DQo+Pj4rCQkJCXBpbnNbaV0uc3RhdHVzID0NCj4+PisJCQkJCUlDRV9BUUNfR0VUX0NHVV9JTl9D
RkdfU1RBVFVTX0VTWU5DX0NBUDsNCj4+PisJCQkJcGluc1tpXS5mbGFnc1swXSA9IElDRV9EUExM
X0lOX0VTWU5DX0VOQUJMRUQ7DQo+Pj4rCQkJCWNvbnRpbnVlOw0KPj4+KwkJCX0NCj4+IFsgLi4u
IF0NCj4+PiAgCQl9IGVsc2Ugew0KPj4+KwkJCWlmIChwZi0+ZHBsbHMudW5tYW5hZ2VkKSB7DQo+
Pj4rCQkJCXBpbnNbaV0uZnJlcSA9IGljZV9kcGxsX3Bpbl9mcmVxX2luZm8oaHcsIGksDQo+Pj4r
CQkJCQkJCQkgICAgICBpbnB1dCk7DQo+Pj4rCQkJCXBpbnNbaV0uc3RhdGVbMF0gPSBEUExMX1BJ
Tl9TVEFURV9DT05ORUNURUQ7DQo+Pj4rCQkJCWNvbnRpbnVlOw0KPj4+KwkJCX0NCj4+IFsgLi4u
IF0NCj4+PiAgCQlwaW5zW2ldLnByb3AuZnJlcV9zdXBwb3J0ZWQgPQ0KPj4+ICAJCQlpY2VfY2d1
X2dldF9waW5fZnJlcV9zdXBwKGh3LCBpLCBpbnB1dCwgJmZyZXFfc3VwcF9udW0pOw0KPj4+ICAJ
CXBpbnNbaV0ucHJvcC5mcmVxX3N1cHBvcnRlZF9udW0gPSBmcmVxX3N1cHBfbnVtOw0KPj4+ICAJ
CXBpbnNbaV0ucGYgPSBwZjsNCj4+PiAgCX0NCj4+IEJvdGggdW5tYW5hZ2VkIGJyYW5jaGVzIHVz
ZSBjb250aW51ZSwgd2hpY2ggc2tpcHMgdGhlIGFzc2lnbm1lbnRzIG9mDQo+PiBwaW5zW2ldLnBy
b3AuZnJlcV9zdXBwb3J0ZWQsIHBpbnNbaV0ucHJvcC5mcmVxX3N1cHBvcnRlZF9udW0sIGFuZA0K
Pj4gcGluc1tpXS5wZiBhdCB0aGUgYm90dG9tIG9mIHRoZSBsb29wLg0KPj4gVGhlIG1pc3Npbmcg
ZnJlcV9zdXBwb3J0ZWQgLyBmcmVxX3N1cHBvcnRlZF9udW0gbWVhbnMgdGhlIERQTEwgbmV0bGlu
aw0KPj4gY29kZSBjYW5ub3QgcmVwb3J0IHN1cHBvcnRlZCBmcmVxdWVuY3kgcmFuZ2VzIHRvIHVz
ZXJzcGFjZSBmb3INCj4+IHVubWFuYWdlZCBwaW5zLCBldmVuIHRob3VnaCB0aGUgZGF0YSBpcyBh
dmFpbGFibGUgZnJvbQ0KPj4gaWNlX2NndV9nZXRfcGluX2ZyZXFfc3VwcCgpLg0KPj4gVGhlIG1p
c3NpbmcgcGluc1tpXS5wZiA9IHBmIGFzc2lnbm1lbnQgbGVhdmVzIHRoZSBwb2ludGVyIE5VTEwg
KGZyb20NCj4+IGtjYWxsb2MgemVyb2luZykuICBDdXJyZW50IHVubWFuYWdlZCBjYWxsYmFja3Mg
dXNlIGQtPnBmIGZyb20NCj4+IGRwbGxfcHJpdiBzbyB0aGVyZSBpcyBubyBpbW1lZGlhdGUgY3Jh
c2gsIGJ1dCBpZiBhbnkgY2FsbGJhY2sgdGhhdA0KPj4gZGVyZWZlcmVuY2VzIHAtPnBmIHdlcmUg
YWRkZWQgdG8gdGhlIHVubWFuYWdlZCBvcHMgaW4gdGhlIGZ1dHVyZSBpdA0KPj4gd291bGQgaGl0
IGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLiAgV2FzIHRoZSBjb250aW51ZSBpbnRlbmRlZCB0
bw0KPj4gc2tpcCBhbGwgb2YgdGhlc2UgYXNzaWdubWVudHM/DQo+DQoNClRoZSBsYXN0IG9uZSBp
cyBpbnRlbmRlZCBiZWhhdmlvciwgYWRkZWQgYSBjb21tZW50IGluIHYxMi4NCg0KVGhhbmsgeW91
IQ0KQXJrYWRpdXN6DQo=
