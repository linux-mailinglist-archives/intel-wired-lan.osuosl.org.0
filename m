Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aZUgKBl12Wn0pwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 00:09:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1396B3DD19F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2026 00:09:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB6BA41238;
	Fri, 10 Apr 2026 22:09:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ejHIuqio6iML; Fri, 10 Apr 2026 22:09:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 011764123D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775858965;
	bh=x++Mc5teo+y+K3QS0wBI69qrj4GF+crnLC/aIDvl1Jk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jPdy1IKoNPjanMUC+WoEZ7aqzDcXeX25ZNA3rgF/SD3z+YBPn9BFppRHyYtOcAJgI
	 GlHq3NdBQhnsNfzM0vFPHwOjJsaSVhFbFgCO0e6SlhOgL1ubBPZDQx9C1+bY/um4mk
	 bs7OrRk1QEtrmrW+tk7vad3nNTgTfk36Qx+lXh7IS/QhMeEdOwGzWo0f9PQq5DCQF8
	 gesKhklyHzGjCRLoz/DOee28GfUS/VbtLNUTJVZ4LDWuJed3hmmckd5GoxqisolY4C
	 +iF3zLMkH9yNIH/jRo8tPC9cnKzczenBqXZS4qbpX68VuKPCLv5WigXp/KpcKEV2B1
	 0nlQY3MjSjUOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 011764123D;
	Fri, 10 Apr 2026 22:09:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CBB3CEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 22:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8C1C83BCF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 22:09:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Upai2aOUc-VQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 22:09:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8F50C83AE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F50C83AE8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F50C83AE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 22:09:22 +0000 (UTC)
X-CSE-ConnectionGUID: t59DPLZURDGDXAKaaBSTuQ==
X-CSE-MsgGUID: j5Iq6apSSDy8QldPZDbBnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="87964747"
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="87964747"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 15:09:22 -0700
X-CSE-ConnectionGUID: DuiDV31HQJ+7U0z+4fuy8g==
X-CSE-MsgGUID: Ihld4nUiR/SaND5WCokbyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="226031990"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 15:09:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 15:09:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 15:09:20 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 15:09:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xiz2j5iF4eSPkHL6hmW8YxlQw81PRCEz6c8bXw2a/BKQu8mompc8CIdwc/e3qUQUWzJsROvgsa6ea150GFmxH6yH/wjXv+AaY1Soyg/X9rp3gv1twt20DoscuRyS/n6uVdaSfeQD3Rqqvd30fIDD51fNTUm2CmpV+3eHfsZZNAhdXtV0pZgdJwslcVs7nwfMkg98PM/s6JxcDyw8A7y+FhALnal1hG8yEUnG+zscqRF2PAO8OAgR2XzeIENOaK/85fyzhd/qb3YjB5AJ/kq45bnwxN6ldzE79Tz4IXaxYxd2QBCP7+BkxQmwwyC4LElb2A2o9+brvlzFPZsTAC4L8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x++Mc5teo+y+K3QS0wBI69qrj4GF+crnLC/aIDvl1Jk=;
 b=HbSr10Iucs41sz7VccODN66U67aVWjwN55n7JU/kNiM/CKwSE+2ZzkOOKPrd6DkmEJFDQtTKSZpGxiqGQwfeLsKdqt5671jW6gqJA4H4mAgAoX2vL8gRox0VhmYsuC78SpMbzF20tSsjz7QD+3shA+Pah6k4Gto5Ax+hsKbxdW23uGlwm7XCWEhI6B2JKT4Q+u5vF0wlFypLYYJe6Q0kNcCjgTSnmiahbkRxF5lDOcIPCZOA2RJ0oM/Ino4ru+s9KFyjQZjd9h0bSpOeXBuHlNc2snffyQTOLt09FhV9cesOkClDK9klwCuWPscgUHlxnfCrZb1G3eS0SSSf5Ujj/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7588.namprd11.prod.outlook.com (2603:10b6:510:28b::16)
 by SA3PR11MB7978.namprd11.prod.outlook.com (2603:10b6:806:2fa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9791.34; Fri, 10 Apr
 2026 22:09:17 +0000
Received: from PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3]) by PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3%4]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 22:09:17 +0000
Message-ID: <ac7266d7-e63e-46d2-8f2e-b3462b8c91a5@intel.com>
Date: Fri, 10 Apr 2026 15:09:14 -0700
User-Agent: Mozilla Thunderbird
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
References: <20260309141220.343224-1-przemyslaw.korba@intel.com>
 <20260310182458.GQ461701@kernel.org>
 <PH0PR11MB49044CA89B5D8780D477561D9447A@PH0PR11MB4904.namprd11.prod.outlook.com>
 <20260313133451.GZ461701@kernel.org>
 <PH0PR11MB490443FB49C3F762297A992E9445A@PH0PR11MB4904.namprd11.prod.outlook.com>
 <dce634db-bd85-4c39-ae01-4272c432f017@intel.com>
 <PH0PR11MB4904AB3C1045FA1A2F99A03194592@PH0PR11MB4904.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <PH0PR11MB4904AB3C1045FA1A2F99A03194592@PH0PR11MB4904.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0167.namprd04.prod.outlook.com
 (2603:10b6:303:85::22) To PH0PR11MB7588.namprd11.prod.outlook.com
 (2603:10b6:510:28b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7588:EE_|SA3PR11MB7978:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dd2c973-6eb7-4219-02d0-08de974dcef6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: FESd12RiJzHLsHkvYv4cAqQFQq4nC8Mw1vpTjaytEDXLorW/xMGx4hnXFUHZkWafiHHz8ZBDQHX9b0yPu//hqpTCeB6yqmhABJJVdMLXc7BbYlrV4usV4CVadTDxoq164YQn0b/GyrkurRIfGoC96V8fco7E6rL/q03OsEUgNWH6Jy7wxSdlMITs/ZkkFAd4QBYw6iRmlYWMP3weaKiRw2+Yrq+G4cq7S5QOqG4GmScaY+2/nUeNXrqswTYQ5cBXPAtJ2iLD+L5h5FRbIcvaVWFj9t50ogQ1+RJL9R0wfOontiv4W3MWMzr9in1GGjoz8s/gv5kfY5UDeESir2Xb5p09JSxfajC9ps5HYYvg4QpZ6Uu2nvY1s5CPaous2X1dYSsmNa51bV4zJzxvIG/zbYxWBkqIGjFrmxNCYZwCmV9zyOPPSCGLlRj1x3fcz3A270rGSTMsv8OivBYCakdhcVEAGDowlhN/vFR6Zufsp6U0p3sx3txqLnyRezwqPIYx6qACXcslbY8B6RQd6uKn7YsRO4NV/p99I8ObGZX2MIiuq+fY59Cdkw2MsVEDo2wfxk4FykKfj9Ky0QZkUZYbWFoUD4WK0WHzHiiWIIrvss5Cgz0g1FaQ0KlM5d0aIbJFiLGt46ZcieEgUsAciKMY1jDOMKf5sYitDBi7PjMsP/i1niMuP1wOgv8w896F2wZp7SDwgtzEynCHCYdDXqt/5Vnk+zv3sgryBcPZA/fWFnc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?byt2TlpzTlpqL1k2QXVieVFyWGhXR0NSSWNlMm5XSVFUU2VxSm1SSm5xVmlG?=
 =?utf-8?B?WXdhVDZJR0UwcDNUeFZNR2NJQ1d6OERsbnNVMktONE5xRkpKQVJEYzZRWTUr?=
 =?utf-8?B?UGNlUnN0T0UrcXN5YXNhTTlrZnd5SG91UG5FdU5TQjVxZG1nZG1yenlRZGtM?=
 =?utf-8?B?cWh6cU9zdTFrUU5Sdm5jMmVxenRUTzcvbjFoa1I4M1lMQlFVUnIwN1ZONGpz?=
 =?utf-8?B?RU0xVVpFMjY2TlhKTkhMcmZkMUlvUkRBYTk1UCtkek1rOUZoUHRlNlV3Ymhq?=
 =?utf-8?B?clhBZEw4RDJiTGI5Q1lBWnBSbEQrZjkzMHNOTUo2NW04WXlGZHhtM0FsMFFU?=
 =?utf-8?B?Sm5mRDFpMjZGdXFGZkQwSmVzSno2Qlh0b0ZzcjIrMlVaVjJDL05aalZCRGZD?=
 =?utf-8?B?bzZNRTVuK21IQmI0blExaDZDNVczQm9rZWZNNXJRZGFHaENsTE9hWm1CTVVX?=
 =?utf-8?B?blBrSGhkOHdoK3ZndTd0ZzNuOUdpQ0VSRmJmR1RuTDBOK0ZFQXJoQTBkaWg2?=
 =?utf-8?B?a2MxeTc2aE80aUVEL00xbmt1U2FoRVJwOHlGV2xnZExwZ1VmcmY4bGJFNk5z?=
 =?utf-8?B?djAzbEpkWlZMdDV3Z2NvMzdHN25PL1hWbVhLR0phd1pUNTFGNE9tcWxKRjg2?=
 =?utf-8?B?Z2pvZUhOZVFGUk1pZnR4MklTaURUcERXb0dBK2M4c1UvMm9lMzJndEp0eVFQ?=
 =?utf-8?B?WXlUKzhIeGppOUpSd1o5cTRUT0o2ZVpBUjdSV0VnL1ZXZ2F6TGU0MTVQb1cx?=
 =?utf-8?B?R0JXa3pGc1BSZXVLVXVlZXZsQ2EvZ2QzOFMwRmcrSC94dFdjWHp3U1ZidkNU?=
 =?utf-8?B?TjJLK0ZQYmt3cTFsSXN0aGgrcU1GZ09EdUxpcFhURzU5N3Q3QVRxdmpRN2hq?=
 =?utf-8?B?cmZsVVNMU1ZLTjR6MzNSRStCK0FPeXhlUVo1ZXhlUG5BbVVlTjlVNkI4NlFl?=
 =?utf-8?B?VDJoZlBYMW80MGlLTGQvWkJ4cTdnOGJ0ck9Db2R3SytvbHc5Y2wyUGFaNUJv?=
 =?utf-8?B?Zm80ZTNtVW5XSzhFRmFhaXBKeHBmemxEai9FcWYwYzI0Nk1GWDRWaHNYcWYw?=
 =?utf-8?B?S1pDV2JjRHNNYWdHVWh2LzJtSlZGclVqU2N6N0tHd0k1Q1N5d0Fib09nclR3?=
 =?utf-8?B?aDUrRk5BenFPM2VQVERoMWxzbzMwUnVIYnN2RHFuSkNpSERvMFRGdTRnU1E0?=
 =?utf-8?B?cDl5UVY5WStjL0xnQXFJRFBsd3IwaWtNdHY5cXhmdG9idERLTkV1WUpyc3hV?=
 =?utf-8?B?cGd2dXVsTlYvd0o5QUNxQ2txMktSUm9uME13R05qVEp3akJVOEFBVFBORHVB?=
 =?utf-8?B?a2VaSzY4a09UYzVTKzhFTEZzbHBKYlNkNktOazhwTFJQSmpjR0NNNXNZNHFC?=
 =?utf-8?B?cDUvYjBJS05kMEdYU0hXbmQ1Tm0wcmFBRVBzd1VITWY5UjdZbFNEcE0ybDBV?=
 =?utf-8?B?UisxVGFYYjVqT0NJaXZJeEIwZURhWjBCZklJaktGRWZUbmNucTlEdmwwTmZU?=
 =?utf-8?B?eDcxdFduWENZOXVKdllGZW9mdldZVi81bEN5U3BldGpKS3F0VmtWbkdlVnZX?=
 =?utf-8?B?dnBCTEdJSEc0Y0llOC9GNDQ1R3JFYk16SlJpK2xUcUhvYklXdDJUdmdtcGhM?=
 =?utf-8?B?cDlYemJxcmFhSlZadEcxek5hMXpMWXZzUjZvOXRYM2docVhvZWVITEZzMmpy?=
 =?utf-8?B?ME9ZWjN5Mkw0Uk5QTVZBbXJXcTRBRmRpYy9iU01COWJSR2NxdExGSElxVzho?=
 =?utf-8?B?akpoU3Y4MUc5NW5BOFBod3BJQkhseXZWN3BSU2w4cGdIZ3VhM2FuWUhYeTJP?=
 =?utf-8?B?VEsvK3FuSGNRT2Yya3Q0SDg2NisrYW1YTzRRaWYybnFIVFdXalExZ2lVa1ZX?=
 =?utf-8?B?TDNHcnJtUXQxMHBoQ01nQUVMcTdWMi9ZNDhMQXQ2eEdHSGVKWC9CNklHbG95?=
 =?utf-8?B?ZjV1bjhGUkpiaXdnYzQyc3dXYW1oMU95NzJsR1VqU05QQ0YyRFpna2hZN2J1?=
 =?utf-8?B?b0pkKzhjNGloK3hPSHEzR2lZek9TT3lHREl3WWkrMFFBUHpMT3JyQ0wrMXJH?=
 =?utf-8?B?RXVCeGtkOVVuN2toK0U2dTBWYjZBcUVFU25SOC9WbE5tclB6UnQ2Z2VJY2pp?=
 =?utf-8?B?eFFXRG5UQmZBSWJhSllaZi9kdGxPaWRuV29sQktZODJ3MUFCOVFabUFKckZB?=
 =?utf-8?B?K0RwckNYRktNUmJBclhKdnhrRnVBOG5na3MxZ3puSzhsZmJsc2ZVMHErbkJQ?=
 =?utf-8?B?TUxzZnFVYW5TK2VPcENJdVRuVXhvNVFtOVZoRnFWeXNxZ1FKOExwMWVJTnZY?=
 =?utf-8?B?Z2xiSlBxR1VmR1lPRk5iNUJUdTdFaE5MRHFxSWpXVDE1WUpxUWh2Zz09?=
X-Exchange-RoutingPolicyChecked: QVxaCjF3mD2RAW5gQwWzG/edzxtE978HMZCRtvAPlTz7SWygCrZemwJTOI+AWjvorzCdMA2U7WPhLeOKZkTxKxjNld4no8Sm6pGUcUR+62W7CL/owUwEm8pamq2GS0/AeensRfcAWbXV+uGbv6O/y6/8wNlFvKLjpkPqpvfFtTRVamqGttHkWKkPyoXib28Z70bPp9FtcceopL5WFH/DlCpYh99QzCNC6ffY1Bszc97NEgVynwRk6wslxEbaY44G3QoPKuMn6xszfVgLPr6dfV6yevB2xxEykeUTFJ94NPlICD+XBrrrNM4K5HoDMnYaijzjdIfJymMVMOvyely+Hw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dd2c973-6eb7-4219-02d0-08de974dcef6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7588.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 22:09:17.5948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKg1kLVFfAEEUbeWY+VBsxSTYmvqWUte3uhP4ZnN8r3vFKlog0F+taX51YRXfaTi+jAHSbzK4GRoSmCM+dkTQGgx6VMhFrOEm2Y6TKNshlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7978
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775858963; x=1807394963;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DYRDyOc0wt48uT61NTlxKknKjcE5zhcgonCyyLkBLOA=;
 b=Ayy2Ixk5/gPg/O9x6bxBggNH5emfuMktF7v6T/3HQQQyxwzLsyT5XII1
 vBDuTgVybg8myuIluDLl2pM8rDA/3H/+hZ0Ht8icGy/27cpkidrSFDBc3
 PUl1dDdvM2PC/IuM0XebzMCpk6djyZNusCgibr0pP79gXYxG8LtPyVg49
 lWlVvA5wAI7hb7hfROl1SeNN1Xes9pvajKd515xKZnHNLZCvJMvl9ipmJ
 qmQoAIjtUNw0qdORuYVqjQVHqxpNFdsfpdMlrfcjb1+p+frm6CBI6dxIG
 FeHk66ytwI28bOrqWHUWtd4abB5DTf/9PNR25CgGrDoaoMmu9x6kA1+Mc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ayy2Ixk5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: PTP: set supported
 flags in ptp_clock_info
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 1396B3DD19F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/10/2026 6:20 AM, Korba, Przemyslaw wrote:
>> -----Original Message-----
>> From: Keller, Jacob E <jacob.e.keller@intel.com>
>> Sent: Thursday, March 26, 2026 1:15 AM
>> To: Korba, Przemyslaw <przemyslaw.korba@intel.com>; Simon Horman <horms@kernel.org>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Subject: Re: [PATCH iwl-next] i40e: PTP: set supported flags in ptp_clock_info
>>
>> On 3/13/2026 6:47 AM, Korba, Przemyslaw wrote:
>>>> -----Original Message-----
>>>> From: Simon Horman <horms@kernel.org>
>>>> Sent: Friday, March 13, 2026 2:35 PM
>>>> To: Korba, Przemyslaw <przemyslaw.korba@intel.com>
>>>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>>>> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
>>>> Subject: Re: [PATCH iwl-next] i40e: PTP: set supported flags in ptp_clock_info
>> Yes, Simon is correct, but we do have to be certain that the driver
>> actually implements the facts correctly, i.e. that it will actually
>> honor the RISING or FALLING edge, before you actually add the flags to
>> the supported flags list.
>>
>> I don't see any mention of PTP_RISING_EDGE nor PTP_FALLING_EDGE in the
>> driver. Thus, I can't confirm which edge is actually timestamped.
>>
>> Thus I would NACK this patch until you can confirm whether the hardware
>> either a) timestamps one edge, in which case you should set only that
>> flag as allowed, b) timestamps both edges, in which case you should set
>> all flags and then explicitly reject the case where only one flag is
>> set, or c) can be configured based on which flag is set, in which case
>> you should set all the flags and then check the flags when programming
>> to enable the appropriate edge.
>>
>> This patch does none of these, and is therefor incorrect. Applying it
>> will "allow" the userspace to work but they will not get the strict
>> behavior of timestamping the desired edge, which completely negates the
>> point of the strict mode!
>>
>> As an example, look at the ice driver:
>>
>> #define GLTSYN_AUX_IN_0_EVNTLVL_RISING_EDGE     BIT(0)
>> #define GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE    BIT(1)
>>
>>                 /* set event level to requested edge */
>>                 if (rq->flags & PTP_FALLING_EDGE)
>>                         aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE;
>>                 if (rq->flags & PTP_RISING_EDGE)
>>                         aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_RISING_EDGE;
>>
>>
>> It sets the appropriate register values to ensure the correct edges are
>> timestamped as requested.
>>
>> Thanks,
>> Jake
> 
> Hi, thank you for your review, and sorry for late response. 
> The original point of this patch was to fix the issue, where ts2phc fails due to not seeing supported flags
> (now when I think about it iwl-net would be a better place for this patch)
> I've read in our documentation FVL supports both rising, falling and both edges, 
> but in i40e_ptp_set_timestamp_mode we are hardcoding EVNTLVL register to Rising edge only. 
> Implementing other edges would require DCR, and I couldn't find anything like that. 
> I think for now setting the rising edge as a supported flag would be the way to go. Do you agree?

Agreed. I would propose the following path to resolving this:

a) as a net fix, set the flag to match what the driver actually enables.
If this is Rising edge only, then set the rising edge and strict flag.

Strictly, this is a bug introduced by commit 1050713026a0 ("i40e: add
support for PTP external synchronization clock"), because this commit
added support for EXTTS output without checking the flags, but.. the
original issue was being too accepting, while the new issue is being
caused by silently excluding the flags because the flags aren't listed
as supported. Thus, use Fixes: 7c571ac57d9d ("net: ptp: introduce
.supported_extts_flags to ptp_clock_info")

Since you confirmed that the driver explicitly sets rising edge support,
you should set STRICT_FLAGS and RISING_EDGE in the
.supported_extts_flags field.

b) as a net-next improvement, add support for both flags and
conditionally set the register to program the desired edge. This might
take longer if we need to go through internal approval for a new
feature, but in my opinion this is small and obviously correct and
something we should support within the PTP ecosystem. Since the window
will be closing soon this part should wait until after it re-opens in 2
weeks.
