Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJdpM37bu2k6pAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 12:18:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF0F2CA271
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 12:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFCBD61003;
	Thu, 19 Mar 2026 11:18:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LUuihkvj4n9L; Thu, 19 Mar 2026 11:18:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 272906100C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773919099;
	bh=gSlqOnQYaRT2a4YtR+3Xyw9wKT3aoAfEkLzkemm0Tdo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gytnCRjmw4Lyj28BlPjPlK9N4hmUGuy+N3uBVgxu/8iQ2KtP70KobO525Vdxmx6Fe
	 CTebTrJdmoe2/gAg4SZ5wnxSz4SzxWLTRnjdBhpxdDwlsh0YvXwLQTd4/I6A6YE9o1
	 K8gBHUPVvY4HhhwMjezrA2C/GVNrdGNv8FceNW6Be14EXK9cCRtcN8H1gJwaDXpOP5
	 XvDoOgpQ/bHX2tVgf6+f807rF6CpBMHweXoNhT2kLNecbYvFeyXmAtgOnI/QWkqe9e
	 ZCExxyUE886mpXUiI7yAya0D3yNTK6CETggZ9FthHFKsWDickTPBYDW93JOu6RMOhE
	 OxrkciIICVkMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 272906100C;
	Thu, 19 Mar 2026 11:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F5A31AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8C6660FE1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MHgrKkWpJt2U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 11:18:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2AD3F60EFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AD3F60EFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AD3F60EFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:18:15 +0000 (UTC)
X-CSE-ConnectionGUID: Y5RqWhdhQbeVtVarDQ4nQA==
X-CSE-MsgGUID: jvQwzSW4T2mAKq0ZyR/vnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="74872364"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="74872364"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:18:11 -0700
X-CSE-ConnectionGUID: h5IwoAGCQ9Oy2lSJlkzkJw==
X-CSE-MsgGUID: adKq2WT6Tmuvbu8Zvmeu6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="245960393"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:18:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 04:18:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 04:18:09 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 04:18:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bnpstX8l1pCvacfOV8LJpvuvtdWT/m6MHcz4Srjstji1Oy3+rdOMN4wcFQD+pgiRvahZqtvqrZ9FZ5ktS+ELABg0CQIKjh/zhEA+7/ks5PMyP/7Fzu/KxNILtjlNKKy2y+OQD9JaC9pOl3ZSDw/TMOc4mFtI9ibSIA0lHMCfboVLGgg4oQGswJ4VyQGWYIQgfYqioQSDglXdP5kUQSLJwDQ5yvSooxMOn8tXWsA6mBJasfoNYTl6dwGXiKZmHlRg7MUyutMpzrKQ5nj8WAC3sAkAdlH4pEdcEm/Xj2tuyjnfjI7lLu+wQayTOmbZdRiGOZF6RQgdsTo/ETfILp1HVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gSlqOnQYaRT2a4YtR+3Xyw9wKT3aoAfEkLzkemm0Tdo=;
 b=H73Q1x7Ix9+jS4RsoQPG+O3fairaivIfZwZNyMazGSdvS1DPC33GKi3cR7YmK8ER73N/7TVNue3Y9h2IgMLquSzDPb8pORCPve4F+fhE78VUCivQ1SOPdvq9Qswq6afNZb4e4hquJcaHrPCixbAdPMu0Cxy2Q+YctX5C5QuLBarqv1OxAgaYBriuKiEOGe7duw2G1y4UAbZuGQ8nAQyoRl15y5KV4ruMdQrG0gYAIz/YYGxu6miQfdkGBwl9jOwHU22wBx1oxz5aT+CtHK/ksGfzmw/fBMupySxFb+5coN/yJeo9HhGxqjrwDAF3mzIpkiEGPPIgna+rVJWodUX4Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA2PR11MB4906.namprd11.prod.outlook.com (2603:10b6:806:fa::7)
 by MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Thu, 19 Mar
 2026 11:18:01 +0000
Received: from SA2PR11MB4906.namprd11.prod.outlook.com
 ([fe80::3f9:7180:ab54:a7e7]) by SA2PR11MB4906.namprd11.prod.outlook.com
 ([fe80::3f9:7180:ab54:a7e7%5]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 11:18:01 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
Thread-Index: AQHcsH3aCkZV4GjS0EiRZNcpFpJXibWnngwAgAUk9QCACP/qMA==
Date: Thu, 19 Mar 2026 11:18:00 +0000
Message-ID: <SA2PR11MB49061ACF35DD536816DC4D54944FA@SA2PR11MB4906.namprd11.prod.outlook.com>
References: <20260310110700.345904-1-przemyslaw.korba@intel.com>
 <IA3PR11MB89862BC3078293849BE46C35E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <6cff08a5-1bee-4cd2-b8e8-aef6a8f4d498@intel.com>
In-Reply-To: <6cff08a5-1bee-4cd2-b8e8-aef6a8f4d498@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA2PR11MB4906:EE_|MW4PR11MB5800:EE_
x-ms-office365-filtering-correlation-id: a20f3ae6-4ac1-4079-a080-08de85a92e9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|56012099003|22082099003|18002099003|7053199007;
x-microsoft-antispam-message-info: ittM8+cI1hQwipCS+hY8bv+htbXUZW/QXRHKfH1JaAQWNoBdeA+3KuJq3eMNQt3COJNIVKjD75JlZRFxq40oJJyDTu/7Vy9nIV+A7R8iCiafapRcQJXjNvDhwX2FFgI2xCKKe94FQ8tTad2GiIdVx+gOZBGepqTWdHdxgTPGIx+lw02ot3rAFBcnJsn0/zny9QQZvLo3/1ZUm9rfAjRpCA0t6zIW1yxoax2KkMTRdFhsg1uvZQfUfYnkBG3/AOsgXpfkoUwk3h6LKCEgWDjikR8b7FHaqxg+xkSAH9Jnz4VpktTd/ahMUVyjdKKYZKPyy3E+wac1imEG0907fa8dXokSi86VQnEWiO3K0oLUFJ5nmBPIpmLwUyjVngUkhvSU96k0jEVcaVhzng99Ge+IoSWW4xQOC4K9yuxXgygB7rEY+K4scB6tawbtSteSldA8oKmCaqqmlCDjzwaYEAzzkYfjbwrofGiH0Am8BvKy1efqKV8MZlX/pGT3DIMBfHEkch4FXXH8mxlvH15VCida3bZH68tmPhQYrQQRU8lLiRP8vmEXJRDPWUtd6L6Bpj47DoEBMcSzBrZunvN5CfWAFa5wUEvRd69Hr2pWaXPEv5zrumluUCqfJl5uVfreuKq+S8G+iU/ov3C3x4D05u15d84N4TAqy735/NM8eLYl0cnNZRgSpxfFop5yAaEUBxenciG+r8d5a6m65ItNISTrAq+pTp8ysqubMbdv6UV0pwNHLzUunO6YhdWHcoY0+82W2TP7WPN409ta78vfXRy0lRfPADuwngHQtTKv84U7jdM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4906.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkJ4MjNWa09ST1l3ZUxaZzFYNkVBOWNVTGprU0pmdkpYVmM0M3BoLzZmazNV?=
 =?utf-8?B?d3BUWXNpWmx5dEVWNHBETlhMUXZFOWtyQjErcTJsaG1YbFJEdmpGNWoxZzBB?=
 =?utf-8?B?NkJHOUtOQ1NuSGFDRW5qbmFXVjFkOGUxakNtdEkrbXlHcUVtZk9lUXhWcm9z?=
 =?utf-8?B?U0NpZW9NaFFmNVlMYjdaM1JFU3RDT2kvTlJuQmZBbVQxRU1VWVVPUnM5cnpG?=
 =?utf-8?B?THlKTDY0Qmh5WlpTTTVkVnhFRFI2S0xjUElMOW52aFJoMjArZnhaekJ4a2tS?=
 =?utf-8?B?akVHYW1XNzl2dVV0aXFZTVk0L05LREZoeTBvYWgwT2IrUWhWZ015WFpUdG1N?=
 =?utf-8?B?S1pVTzVrbnh0ckhiQm45alZwYXBXNGE0dFlSU1IrNVJtMktHdE5vRERLRzFo?=
 =?utf-8?B?U1JHUXZNVlBxTWoweGRKVVYySmJPVWk4VVlIaFVNdndIN25OVlJDNjBUYSth?=
 =?utf-8?B?c1lJREEvckJic1NhQlZ4bWc3akd4MGk2R25YRjJtelM4Y3cvY1BFVUVuU3JJ?=
 =?utf-8?B?YXVnQWZEQ1dZOC9sb2tQLzM5bDlRQ3RIZHk3WWFXSUlQRUo4ZkVIRUxzZHNr?=
 =?utf-8?B?ZGY5ZHJ3Y0dKakU3YWdqdkVMZ21MSzhQc3N2YkJ0M0R2elRwY25YUEtwK0ZT?=
 =?utf-8?B?RVV2QmdrejVKMDI5VEZJZDY1Y285VEN1TER2cVM0YnZQREVqK2JsNjJyK3M4?=
 =?utf-8?B?bWUyRE9iN2ZyNkxvRS9RSVdlY0krdUhhZmhqcWd6Yy93ckhkbW5Id08zS0VM?=
 =?utf-8?B?QWpEVFNDMCtUWlA5M3F3UXdNdWVZS29vS1B6VWl1dDljMmM1bkp1OGhQZmkz?=
 =?utf-8?B?SHROTC94WENFMWdWM2N5RXNVaWttRkcrc3Rubm5QTHZtcndTSXlQQ0lGcnZn?=
 =?utf-8?B?ZDVSbm1ERDJXM3FJa1BrY0Z6NC80aEpGVHNtRnkvNEFadWJoVkpjS1JuQ0Fh?=
 =?utf-8?B?SlQrellRd2V5d2l1M3JHYmx2TjFGc1JFMSsrRHNjbVp1cEl2S2twOWd5L3Fm?=
 =?utf-8?B?ZmZsNFhVQU5zZXR0Z3YybWJ3UGdlL3RIMFlnSENzV3pTQ1FBcytIeWk5MjZ1?=
 =?utf-8?B?dEg5OEZ5SDY4MUxVQ2dRRklUdllFTCsrL3dZWTM2VHRFWUZxSFlIWHpSeWR2?=
 =?utf-8?B?MDU0SjIwMnd1YjduVlZtZ205eDZwbXRPUE1EVnJkZU9aUkk1ZnV2OU1zZmtZ?=
 =?utf-8?B?YU12QXpwNkNyUlJEWktjVXlzRUZBNjQ5enQwcFowZjI1WjJTanJYWXczdU5r?=
 =?utf-8?B?NWg2M0t3cHhuQ2JHcXIvQ002T3RCR3ZkWVdVV1lpL2Z2SFRhUzlmMkpXRVNJ?=
 =?utf-8?B?N1hvamp1VHZjNUxOa0FxamxGVW5PQkZhZHdIUHMySThXc3hOODZSMU55SVBN?=
 =?utf-8?B?T2EySGFtVGJDVkI4TTBEa2pjaWF1aUJabGVINWpoUkFuSnBSL0luMExMQ1Rp?=
 =?utf-8?B?WjA3YjBIWFFGTTlvZmNGRkVpS0U5SUZyUXBuYXo2SVBGWDNrd0hqS0E4RVNz?=
 =?utf-8?B?VGRZby91QlR0SDZiUm9DbVBscDN3Rm5OYjZoSXFHcCtHUnM0L2dkcDZQb0ZH?=
 =?utf-8?B?dXAxRUtJRGxxdnZ1Y0svYTlrazJ1YmhYaHVncCs4RVg0WmhyZTBzNkVjNDRF?=
 =?utf-8?B?QnFaSzduSHhheE9jWGRtN2pLb3J0Q08zSkRqQWVhTUZFa0sxTHRFV2pDSWFr?=
 =?utf-8?B?b29rVTYwbnVzbnVaVnNmUlRuanZLdnhNVElQMkRQYzJmM1lvclN3OENZaHFp?=
 =?utf-8?B?TFBmYjY0U3V3czlmRk8rWnFKNmdIejlUNHp1b2FVNDltTllEU0VNOVpFVmtp?=
 =?utf-8?B?TjlKbytKeU5uakN0QUpsNzZWTkE2TkJEbGVnTk8rWHJTVmg3V0FFTGxvNWxC?=
 =?utf-8?B?YVpRRmNWTzR3cTE3bmdMRXozdU1rT3ZadG1HUGpmd3dxVTB2bHB1SDQyc2Np?=
 =?utf-8?B?ZEdhakVGWnlzbHR6VVQwVkU2Q0RTdmpKUW1KejBKZUNoZjl6OVF4VmVsT3lC?=
 =?utf-8?B?UWtkQmJpZ0ExMHNqMU1RVDZoWHJISHRnSVVIVGdYaG1qTUF4Q25nM0Y1eVFT?=
 =?utf-8?B?ZnRqdlo3MlpLa1puWkpGQ0VyS3JWaDJvSlFkSHlaLzRPaG5NRjJyWmdUNUtY?=
 =?utf-8?B?bXFEWmZMcHNWaU5lS2lOYmhldmlxVGlOY25Sbjl4NWcwMmM0dmVia08rUUhP?=
 =?utf-8?B?NDlSM1pRSlFHUjBBaCtoQUJTTVE2SkxKaGRQNjF2MGV2YitOTThkQjVWbEJn?=
 =?utf-8?B?VDBFK1hTTjh0WXYxbFJlYng4N3FURDhJNlRwc1k4a24wcXhVZEUzY2R3Zmtu?=
 =?utf-8?B?WjRWeENTUXdQWEwySHYvZEhnMmdVSXJncFBhZlpsbENZNkMxWkpkUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bw2pliyx73Tm+y9sUIeM+lnnZT+OACB7ITzkc26L/amFDtWbL7I1fUkQzkSEB7HTiG0zI7MYo7pffOyEBytrzgjMtvzIdvrEe0W3G3B0KCoeHDjLWaZJJ1VSKIbnkOEjgu/OnasowpsQiCeZX5K7en6azwYLLTc/K3hcV6qM33v1bbMQiR7yK1bSrP7yhow3KjhoS/odttoIL7SZJ0uJ09ELLONgh4CRnL9N7ExHAfpiOL4u9ft3Y/T7CYew3/TylzkKDEbjZXaCyTpUIN0OO/BylURwm51oCrvb/rtxJPvNmlwqY3DghKQN+KzSsrgsSeweHPvfWRVWjhek8LXylQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4906.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a20f3ae6-4ac1-4079-a080-08de85a92e9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 11:18:01.0821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WwxjGSDxBU7S5GKWOSP97nH+3J/kcGtt5JSJI3Af3VftKQHm8umNXnZ0x6bx7I7AK6eoF1gaFhEjRwj0Z4k7OQLGcV0E4+nqZoL2FlhoEIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773919096; x=1805455096;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gSlqOnQYaRT2a4YtR+3Xyw9wKT3aoAfEkLzkemm0Tdo=;
 b=kcO1WiXLS+5svgmACT/ser5HbiY8fzoTEsHFhs+DO/RFcjv5oTeryr1f
 gQ9H128QN6aeI+vzs+0olGKDrBmRr63lxW+fcpVqmM/qAYb0I/kScm+3z
 ZoDNSnR1yYJizLvUE2wD4I1Z8ZFv6ycl66IcBA9jSonMdH9poBuSfb6d4
 1na8b9VMGWfYVAJwMq/1oygkvSr2QbgUiwdBqHeXmaHlQ/dPMxP84jvv0
 CHdwgbt13vi3ZXG6bbxP4w/VPgy2jCkD9XRQ6C5QxUHRpVsNfYTH3Bl3F
 9j0R49s5K3/Fhb4YTz6CPLLU5TkXxeRaEdzdD3BvO5tW5k2/lS4WBYg5f
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kcO1WiXL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,SA2PR11MB4906.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: EEF0F2CA271
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiANCj4gT24gMy8xMC8yMDI2IDQ6MTcgQU0sIExva3Rpb25vdiwgQWxla3NhbmRyIHdyb3RlOg0K
PiA+DQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogSW50
ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhh
bGYNCj4gPj4gT2YgUHJ6ZW15c2xhdyBLb3JiYQ0KPiA+PiBTZW50OiBUdWVzZGF5LCBNYXJjaCAx
MCwgMjAyNiAxMjowNyBQTQ0KPiA+PiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5v
cmcNCj4gPj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IE5ndXllbiwgQW50aG9ueSBMDQo+
ID4+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4g
Pj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBLb3JiYSwgUHJ6ZW15c2xhdw0KPiA+
PiA8cHJ6ZW15c2xhdy5rb3JiYUBpbnRlbC5jb20+DQo+ID4+IFN1YmplY3Q6IFtJbnRlbC13aXJl
ZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpY2U6IGZpeCBwb3N0ZWQgd3JpdGUNCj4gPj4gc3VwcG9y
dCBmb3Igc2lkZWJhbmQgcXVldWUgb3BlcmF0aW9ucw0KPiA+Pg0KPiA+PiBPbiBFODMwLCBQVFAg
dGltZSBhZGp1c3RtZW50IGNvbW1hbmRzIHNlbnQgdmlhIFNCUSBkb24ndCBnZW5lcmF0ZQ0KPiA+
PiBjb21wbGV0aW9uIHJlc3BvbnNlcywgY2F1c2luZyB0aGUgZHJpdmVyIHRvIHRpbWVvdXQgd2Fp
dGluZyBhbmQgcmV0dXJuDQo+ID4+IC1FSU8sIHdoZW4gdHJ5aW5nOg0KPiA+Pg0KPiA+PiBwaGNf
Y3RsIGV0aDggZ2V0IGFkaiAyIGdldA0KPiA+PiBkbWVzZzogaWNlIDAwMDA6MWE6MDAuMDogUFRQ
IGZhaWxlZCB0byBhZGp1c3QgdGltZSwgZXJyIC01DQo+ID4+DQo+ID4+IEFkZCBzdXBwb3J0IGZv
ciBwb3N0ZWQgbW9kZSBub3QgdG8gd2FpdCBmb3IgY29tcGxldGlvbiByZXNwb25zZS4NCj4gPj4N
Cj4gPj4gRml4ZXM6IDhmNWVlM2M0NzdhOCAoImljZTogYWRkIHN1cHBvcnQgZm9yIHNpZGViYW5k
IG1lc3NhZ2VzIikNCj4gPj4gU2lnbmVkLW9mZi1ieTogUHJ6ZW15c2xhdyBLb3JiYSA8cHJ6ZW15
c2xhdy5rb3JiYUBpbnRlbC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgICB8IDcgKysrKysrLQ0KPiA+PiAgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyB8IDQgKysrKw0KPiA+PiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmggfCAxICsNCj4gPj4gICAz
IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPj4NCj4g
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9u
LmMNCj4gPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+
ID4+IGluZGV4IDg4NjY5MDJlZmI5MS4uZGY5ZTU0MjJiOTgxIDEwMDY0NA0KPiA+PiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMNCj4gPj4gQEAgLTE3NjUs
NiArMTc2NSw3IEBAIGludCBpY2Vfc2JxX3J3X3JlZyhzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0
DQo+ID4+IGljZV9zYnFfbXNnX2lucHV0ICppbiwgdTE2IGZsYWdzKSAgew0KPiA+PiAgIAlzdHJ1
Y3QgaWNlX3NicV9jbWRfZGVzYyBkZXNjID0gezB9Ow0KPiA+PiAgIAlzdHJ1Y3QgaWNlX3NicV9t
c2dfcmVxIG1zZyA9IHswfTsNCj4gPj4gKwlzdHJ1Y3QgaWNlX3NxX2NkIGNkID0gezB9Ow0KPiAN
Cj4gUGxlYXNlIGluaXQgd2l0aG91dCB0aGUgMCBpLmUuIHt9DQo+IA0KPiA+PiAgIAl1MTYgbXNn
X2xlbjsNCj4gPj4gICAJaW50IHN0YXR1czsNCj4gPj4NCj4gPj4gQEAgLTE3ODUsMTAgKzE3ODYs
MTQgQEAgaW50IGljZV9zYnFfcndfcmVnKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QNCj4gPj4g
aWNlX3NicV9tc2dfaW5wdXQgKmluLCB1MTYgZmxhZ3MpDQo+ID4+ICAgCQkgKi8NCj4gPj4gICAJ
CW1zZ19sZW4gLT0gc2l6ZW9mKG1zZy5kYXRhKTsNCj4gPj4NCj4gPj4gKwlpZiAoaW4tPm9wY29k
ZSA9PSBpY2Vfc2JxX21zZ193cikNCj4gPj4gKwkJY2QucG9zdHBvbmUgPSAxOw0KPiA+PiArDQo+
ID4+ICAgCWRlc2MuZmxhZ3MgPSBjcHVfdG9fbGUxNihmbGFncyk7DQo+ID4+ICAgCWRlc2Mub3Bj
b2RlID0gY3B1X3RvX2xlMTYoaWNlX3NicV9vcGNfbmVpZ2hfZGV2X3JlcSk7DQo+ID4+ICAgCWRl
c2MucGFyYW0wLmNtZF9sZW4gPSBjcHVfdG9fbGUxNihtc2dfbGVuKTsNCj4gPj4gLQlzdGF0dXMg
PSBpY2Vfc2JxX3NlbmRfY21kKGh3LCAmZGVzYywgJm1zZywgbXNnX2xlbiwgTlVMTCk7DQo+ID4+
ICsJc3RhdHVzID0gaWNlX3NicV9zZW5kX2NtZChodywgJmRlc2MsICZtc2csIG1zZ19sZW4sICZj
ZCk7DQo+ID4+ICsNCj4gPj4gICAJaWYgKCFzdGF0dXMgJiYgIWluLT5vcGNvZGUpDQo+ID4+ICAg
CQlpbi0+ZGF0YSA9IGxlMzJfdG9fY3B1DQo+ID4+ICAgCQkJKCgoc3RydWN0IGljZV9zYnFfbXNn
X2NtcGwgKikmbXNnKS0+ZGF0YSk7IGRpZmYgLQ0KPiA+PiAtZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5jDQo+ID4+IGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5jDQo+ID4+IGluZGV4IGRjYjgzN2NhZGQxOC4uNWZi
M2E4NDQxYmViIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2NvbnRyb2xxLmMNCj4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9jb250cm9scS5jDQo+ID4+IEBAIC0xMDg2LDYgKzEwODYsMTAgQEAgaWNlX3NxX3Nl
bmRfY21kKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QNCj4gPj4gaWNlX2N0bF9xX2luZm8gKmNx
LA0KPiA+PiAgIAl3cjMyKGh3LCBjcS0+c3EudGFpbCwgY3EtPnNxLm5leHRfdG9fdXNlKTsNCj4g
Pj4gICAJaWNlX2ZsdXNoKGh3KTsNCj4gPj4NCj4gPj4gKwkvKiBJZiB0aGUgbWVzc2FnZSBpcyBw
b3N0ZWQsIGRvbid0IHdhaXQgZm9yIGNvbXBsZXRpb24uICovDQo+ID4+ICsJaWYgKGNkICYmIGNk
LT5wb3N0cG9uZSkNCj4gPj4gKwkJZ290byBzcV9zZW5kX2NvbW1hbmRfZXJyb3I7DQo+ID4+ICsN
Cj4gPj4gICAJLyogV2FpdCBmb3IgdGhlIGNvbW1hbmQgdG8gY29tcGxldGUuIElmIGl0IGZpbmlz
aGVzIHdpdGhpbiB0aGUNCj4gPj4gICAJICogdGltZW91dCwgY29weSB0aGUgZGVzY3JpcHRvciBi
YWNrIHRvIHRlbXAuDQo+ID4+ICAgCSAqLw0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oDQo+ID4+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oDQo+ID4+IGluZGV4IDc4ODA0MGRkNjYyZS4u
N2M5OGQzYTAzMTRlIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2NvbnRyb2xxLmgNCj4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9jb250cm9scS5oDQo+ID4+IEBAIC03Nyw2ICs3Nyw3IEBAIHN0cnVjdCBpY2Vf
Y3RsX3FfcmluZyB7DQo+ID4+ICAgLyogc3EgdHJhbnNhY3Rpb24gZGV0YWlscyAqLw0KPiA+PiAg
IHN0cnVjdCBpY2Vfc3FfY2Qgew0KPiA+PiAgIAlzdHJ1Y3QgbGliaWVfYXFfZGVzYyAqd2JfZGVz
YzsNCj4gPj4gKwl1OCBwb3N0cG9uZSA6IDE7DQo+ID4gSSdkIHJlY29tbWVuZCB0byByZW5hbWUg
cG9zdHBvbmUgLT4gcG9zdGVkIHRvIG1hdGNoIHRlcm1pbm9sb2d5IC8qIHBvc3RlZCB3cml0ZSAq
Ly4NCj4gDQo+IEkgdGhpbmsgdGhlIG5hbWUgaXMgYSBiaXQgbWlzbGVhZGluZy4gVG8gbm90IHdh
aXQsIHdlIG5lZWQgdG8gc2V0DQo+ICdwb3N0cG9uZSc/IEkgd291bGQgdGhpbmsgcG9zdHBvbmUg
bWVhbnMgd2Ugd2FudCB0byB3YWl0LiBJZiB3ZSB3YW50IHRvDQo+IHJlcHJlc2VudCBmdW5jdGlv
bmFsaXR5LCBtYXliZSBzb21ldGhpbmcgbGlrZSAnc2tpcF93YWl0JyBvciBpZiB3ZQ0KPiB3YW50
ZWQgdG8gbWF0Y2ggdGhlIGRvY3VtZW50YXRpb24sIHBlcmhhcHMgJ3Bvc3RlZCcgYXMgQWxleCBz
dWdnZXN0ZWQuDQo+IA0KDQpHb29kIHBvaW50cywgdjIgc2VuZCAtIHRoYW5rIHlvdSBndXlzIQ0K
DQo+IFRoYW5rcywNCj4gVG9ueQ0KPiANCj4gPiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rp
b25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4NCj4gPj4gICB9Ow0KPiA+
Pg0KPiA+PiAgIC8qIHJxIGV2ZW50IGluZm9ybWF0aW9uICovDQo+ID4+DQo+ID4+IGJhc2UtY29t
bWl0OiBhY2QyYWJjNTJkZWE5MWMzYmMzZDFiNmRkOGE5MmI5NjMxZDQ4YmJmDQo+ID4+IC0tDQo+
ID4+IDIuNDMuMA0KPiA+DQoNCg==
