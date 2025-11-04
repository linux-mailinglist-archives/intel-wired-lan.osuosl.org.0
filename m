Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E733C2F965
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 08:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB1D781ABB;
	Tue,  4 Nov 2025 07:23:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1DxB6xDAA0K; Tue,  4 Nov 2025 07:23:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E69B81A99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762241034;
	bh=Pa3kHsQZip+njKYCopmIV9FzCFvotgl74uu1cXU428g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x8osXSJpc8b9r1bYpjUeplxB/ZYw52YufFiHMDw0NdCOC5VgExRQT6ss/hNTfGcSk
	 xfU/dvwGzKrpW7Spn1D1OimNDVxjQNjkQ1ocHLQxAAWcnOeWtDbAB+SRf1cgJlwIDH
	 fSKivn1yf5O++HpKZGXuQzB7lhsdIfYDW0I+VdjbuY0bQwiaEHHmu/k7LdFs75AIN3
	 DMYcfskaIUIH1IawxYWTSXmqm6DWeAFa5I8JaAamjvYcK5NAYF7bH6P/NEH81WHGPq
	 atfGlVmuUZgvPeco4eBClFHpCFfpgCf469DJt78JpGvxUK4YnFz2yAd0n2+130hOHU
	 khi/bcAxgfVxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E69B81A99;
	Tue,  4 Nov 2025 07:23:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 82E70278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6946681A6D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:23:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NhBpp-6yx-IH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 07:23:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D744816DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D744816DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D744816DC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:23:51 +0000 (UTC)
X-CSE-ConnectionGUID: TJMwAP8vSiuq8RN03kq+Tw==
X-CSE-MsgGUID: yaM3UJGTSOGAuXIUkEw9sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75777291"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="75777291"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:23:51 -0800
X-CSE-ConnectionGUID: 63fzYBwvQlaDQ25nxMcupw==
X-CSE-MsgGUID: DcakbWmkR82reiNz3CTv3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="192174160"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:23:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:23:50 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 23:23:50 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:23:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EIX8M7m6OEDu6lxvfuRil+oY9mRub+vrOFTqoXir5deREKySa9mpjjYXz8Q9JkvUNT5KD64JfFXfbq5dH9qN7g/W66CHrpM6uqdPIS3zKr4rhhmxgd/zCxChJqAJnlbL6tOCGEWPKOvexxNFnMlqfnlLixE9SXxB0TTK95nIwjpatMiBafcLDA0yvFfvXcQo+we/pRW+vLoWT/YVaptdxI3ObTfEcWRVP5YUft3kP4PI7ZYIDn+dLZD3ArrWxGzOTvlqiHJyfgHmIKFgV1OVXrmsGPRqtkecmNOxtdNxYYUNDqPtlUxvWJJSQ0DvpK2kf9IpM9WqoZwRyL63XHP/RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pa3kHsQZip+njKYCopmIV9FzCFvotgl74uu1cXU428g=;
 b=tRq8lJfS6lWSzo+o4gFhLzYv+AXA1I9sd1mBPuFWXtPgk98DWELimYsA+CJacsclt4K+k0wJEhrpURLyox5iOVKEhr4LD3xSOOFY7d4HS11QBUDHd+kp2JVRVGx//YFBmk7VXNf2TvPGN32UmzLqEDbsZAWd6KQ2e3zTb7AJQ4pEQXxnBGVxLNk8fbS+Xkk82BnWBkgS5pBsDbi6zT9D0OXC+VEoqjZg58zJRtX4ByHGzHJy/SwuE5Sw0GniOCpNqgwn8hsv8lh4jWVk/YczMr3bdvQLf7h1i/oRNX4uvni3F6R2BBqIxY88xeu9/yEEkv9Uj8p4Y5gz2IGtm+742A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:23:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:23:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 5/9] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
Thread-Index: AQHcTSdrFlQzWPQ9oEWPYJI0vP6wc7TiHY2A
Date: Tue, 4 Nov 2025 07:23:47 +0000
Message-ID: <IA3PR11MB89865114B14FD779D16127E2E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-5-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-5-164d2ed859b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: 88e76ac8-13d4-4196-7c95-08de1b731855
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Zkd2WVlIdml5ZDl2V0F5TmVUd2FEejNJempBTlVqbFVSL01CamRYL253c0ZV?=
 =?utf-8?B?MlZ3dlZLYkd4VkN6aVRtYVlIeHg4S0Q5K0Y1cDIwVzhCSjlvbkJPQitDaFM2?=
 =?utf-8?B?Qlp2TTR5SkZZTkhWRWhUVXJrbjRya25pTWtka3d4YUxuY010eCtpMERHZ0k5?=
 =?utf-8?B?bTloNjJVU3dYRzkvT1hGSUtMazJsL2VtNlBERnVnZ3RFcWdYcDdwdDhMM3dX?=
 =?utf-8?B?WGR4WlltRXZFTGhYcW83cUhRNjJ4cVhrR1pRKzRmQ0Z6OUNOTWZSZDBqbE45?=
 =?utf-8?B?WXVoYTRBNDloR3RoM2lOVWo0MzJwSHRZMVdzelBpblJTUVg4QTVpTUdRRTd1?=
 =?utf-8?B?TFRxVHhPTmVNa3BQNW40eDhKZ3YwdzFZYXlvTTZid2lHU2FGdDJCSFd3WUJF?=
 =?utf-8?B?QTdiODk4Y0tqZ0tQSlZHZmJDblZCVGk4L1hsemUwb29iamFRekhuckhvK2RW?=
 =?utf-8?B?V0tPdUVhZDJTY3F0dkRVQWRPbE5TVHBiR3ByOFJ0UnM3cGRjaHFaQm9QZk1o?=
 =?utf-8?B?VWsxY3ZoQUl2N3B1L1VCV2sydW9sTUd6YU1tOU5vbjdCVGtzQjBjM0VvQnlK?=
 =?utf-8?B?aXZyUmJaWklEQWQ3TGNOc2E5RXJ1UXY2Unh5UStvNXBuOGR2VE11d0xRcklJ?=
 =?utf-8?B?NlhLWHcxSjZFZHpVRk5VaGZVUTZTYVZ6RE9YNmlvdXM0VFYzdFZGK3pabWZo?=
 =?utf-8?B?K0QwaHpsQ01JZEs4NjN6TTd2cEFncmU3L1NIU2x5V0NpYWduVU5xdWJLNWtY?=
 =?utf-8?B?MXJZSVRVODNWaWprTFNkN2VqbVVYNGduOWljSWZzS3RRR1hUaG5ESkp1dGoy?=
 =?utf-8?B?R2E5TW5zbDFNVjdlNmZzL3pmcmtLNkhublBNVS83VVh4cWk1Z1NDVUhER1la?=
 =?utf-8?B?K3dIbldtQ2tWNlZOZGsxVlUwcDkwT1c4TkxmVVgwQUhFY3IvWDJBMUlyVDdI?=
 =?utf-8?B?WWFrSkpqeFlPendMODY3bTdiSEowTWRONUVGdWhySlVKMzEyT3RZeXhUTFJK?=
 =?utf-8?B?NVBlWEJkSW1JUWVISXV6OS9WSENDNHg3bWN3cmZobWloQ28ydGlwMjUySlht?=
 =?utf-8?B?Y2hTUmlGS0szZ01PUlhkMjgxSzUvSWlWL3lFZGRvQm9mamppY0xDL1B3bGlt?=
 =?utf-8?B?S29XVzBBT3N0R01jWUhWaHdYUzgrQkRwa1l1azBwWk1rRzFuMHp2TmFFUG9y?=
 =?utf-8?B?SEFsTTczbVpaNjBpZkhHSGtqZDZ5T2p0RnZmMFBQaGVFbzRNNVRGdmxnbDVk?=
 =?utf-8?B?ZGRuejE0a1UrWEI2SlNNUmk2d1hoODcyUTdqSm5ZSkR0M2VUN005dWVjYWFI?=
 =?utf-8?B?THBVaWxQSkx2ZFIyemZVdThTcmsyUlhTVk12RHNjdFVXMWw2U1JhQ0RmaUNw?=
 =?utf-8?B?OWFNREZKZlcvR3QwK0JsL3k2YnBPMWJtY3JnQVAwb0NwWXFDT1NHZlQvcSs2?=
 =?utf-8?B?bXdaNUl2RW0vaWkvZ043eG44d2RwS2NMYlY4b1VoR1ZRRkNuSzgwM2MrOWVK?=
 =?utf-8?B?MjFtczRBT0t5UXRwam9ZOGUwV2ZTWEhqdExOdkxuRm0vNVZwLzFtVExiOFNE?=
 =?utf-8?B?UmRBZHVmNmcvVmtBbTNMVUpDY2ozM1BuMWhGVCtTNXdMMGhJc0R6c0xVK2hn?=
 =?utf-8?B?SW5oT0U4TUVhcFNtZ1FFeDFHY2FNNzVDaXdlNk15bGVPMlBtMDBpOW9RSlRi?=
 =?utf-8?B?ZzVpU3hUdDVUbmdxNVNPdjUzM2xkV2lwL3lpeWhJMzVkb2xxVnBnRWExcnVG?=
 =?utf-8?B?TTZuNzRwSGk2ckVUSExpbERocTM4MWxCdTRuWVY4U0R0UXpwSTBXbk82azNt?=
 =?utf-8?B?aGwvbzRVRjBRU1ViZWwrVUVIWFZhT2t2eEdqcjFHWDRRaitUcURMZDNyUkRQ?=
 =?utf-8?B?ckZuQjZBSW9UTFNZdGJwc1NQR0VSdDhnTXcwRHRFRkp6d01RNWE1dTh2WENI?=
 =?utf-8?B?SCtxSUtkNHhZb1MrSnZQWk5EdG1jQ1hyY0puUTFPcWtGSWtHdWVoNHBMdzVG?=
 =?utf-8?B?ZjliYWhGM2NHZ2hkR2xWNjdwd3pCdktWaW9oa2Q5VWlRc3ZCTjQ1TndwaXR1?=
 =?utf-8?Q?hGlzik?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVpoYXJHSUZpT3Y2c0gzUSs0Mnhrb2NXaU5KbjdFck9JTWZsd3RIUVJzbW5H?=
 =?utf-8?B?Um0yNFBpVjRSM2I1RzVDQld2YW9tYVVsZ3piTHV3Wi9oS3ZpVFA5L1N4d0hR?=
 =?utf-8?B?OUVOU2NwNzFpSitFNFpqVUNHU0dhYmJDRzRZc3hqZzU2eUhxRTMwOU9EL2hW?=
 =?utf-8?B?d3Y0U3lsV0FBZzlBa2xJSEZoLzNWZXAwZ0VIVy9CSXR4UGtxQUVCVDR4ejNo?=
 =?utf-8?B?bDlwdG1jd2tab2R3Y3hxakgyaHVFNGNPUC9LTitrb3pUaUFSVEtGcXZpSkI4?=
 =?utf-8?B?VmJkS1QvK2FMYWYxMWNMTmpjMWE4eCt1WTF3MUpLYXJPa2ZGdEJTSGh0MlFO?=
 =?utf-8?B?RFNNQmRHMVM1ZFVSa3ZOVjhiY3JsS1dGdXNqalFqWjFEVkt1VUFTczZPSkVX?=
 =?utf-8?B?ZFJSNkExWTFUTXliemswc3lSTGhRL0NjbEJmOEc4dkRvWm9rR08yZUlHN2FQ?=
 =?utf-8?B?dmtidzdITzhTUGFkYXllTW9pa0hJUU9aUHRIZlhmZnE3U25sL3VsTS83blB0?=
 =?utf-8?B?cmYya2xRdGMwOUFtdGl4ai9YQjJZQU9sSmM2cVo0UXREZkQwZklHbU15aDJo?=
 =?utf-8?B?eEdoeHV2QnRaZnk2Y3hSdzEwVFN5Q250aWlOaWJSU0xSUDYvYy83bmJaUHFs?=
 =?utf-8?B?akRlTGo4NUIrRTZwT3BBL1RMRmRVbEdVSjBMUWl0S1JsVGJvNzdjV3FRTjRm?=
 =?utf-8?B?L05MVEpyNXVnZUlpdGx0QmNJYk50MHRWYWdLMmVtbXhWd00zTXdDYnFQWWY3?=
 =?utf-8?B?Q0toeVdVdUZVZzFqdmhoUCtjWVYzeS93cmRGejBOc1ZkMjh1MjE4ak1SWVpx?=
 =?utf-8?B?VmNBZTJlekJabGJhZklaNmpwR3RYOEFMUnFEQys5cmV2L0dsNWxMNUdVSnBR?=
 =?utf-8?B?d0hoOWlzY2VsZlcwSjFJUEdpOG1RbnBCWlcrUDdYdWs0VXd3SlpxTnZmanlQ?=
 =?utf-8?B?d1c1emJzUW9STzJsTXo4dFREOGtyOG5FQWxrTkVRd3Nrd1Vxa2dHSG1ma29H?=
 =?utf-8?B?OENJQ1JXV096d0pUTG5XVU1KZEM4V2YwZkZESmx6akt5WWFVTzlnRFZmc3FU?=
 =?utf-8?B?VUc1UXA1TmtNa0lKMm5NSGRqMFZhVGt3eXViQVJWYWhockFBWTRwUCtHVkFQ?=
 =?utf-8?B?bTFPV0tIc1VPbzkxRjJhSTdWamVHemN4cElrcjBJRTBVRnVSYmtGNlU3dGNR?=
 =?utf-8?B?cjlxWnlEcFFxODJwQW1VOGE0dk1kUHo1WWc0OE1SWS9ZT2ZTOWEyZWpqUm1L?=
 =?utf-8?B?UGpKczd2ZmQrcWxjQnhiZUhqNThQVGs4Y1M2VzFPUStRNU42aVU2cWdzOG5v?=
 =?utf-8?B?Q04vbEgyQlN4T041NHJNTmFWN1ExdFNjMTBHZkpDaGl5SklkVGMxUU5QQzF3?=
 =?utf-8?B?cmhkM2VkSnFXWVNmMXpWVHdRVGRuMms1RjhweVdFTUE0UG10ejBtR2g0enRO?=
 =?utf-8?B?VDJNQ0kvdUlhL25PK3pIR0tSdUJ3NFJjTEh6NUxRTStTUFk2TVc4aGNXZGQ2?=
 =?utf-8?B?cGJpVlF4cmJHdWtDYU9qWlBQbDRJcGtrZTNQZ3NaeXRMSldQT05rZU02Q0gx?=
 =?utf-8?B?clBQM29pclBldks4ck80d2NQTm55L2RUcUxGRXkrUzhqRkppeUp3TFdXSXFX?=
 =?utf-8?B?QUFONXZPbjRxWjh0Q2NQQjNCWjF3b2oyenZ3VXVvc29ybE45ays0Y3duMnFC?=
 =?utf-8?B?aVpvdzE0anUvaGdobGlNc3BWcEZIUVlGdUl6U21tZWl4SVBlcUhzMVFvTW9I?=
 =?utf-8?B?N0phM2d1SXBsZWxraXFSUVplMXhoNFpnMk9hMzlMemNvUVJQbTlkMDhJRm5t?=
 =?utf-8?B?ZjZ4ZWVGN2xsQVpaRHN3NVhGNk9CSWlOamdaZEMxWkhpc21NSFo1d2dkcUpj?=
 =?utf-8?B?a2lxU0d4amNRUGRrTks3b25EREZITFlGWCtIRTlSSERRODl2NHh2b0dJZ2tL?=
 =?utf-8?B?eVp2c1lSdXQvMEYralpBYnF0TzM0cVc1eTRDZlg0RkhsdGRzN3hIZ1ZpWTcw?=
 =?utf-8?B?MklNdzFEU1ZaamRjMFYwZVBQRHlEZnB5THJYZWtTdi82aHdRam0yWThnMWJV?=
 =?utf-8?B?WW9KTmtKSVd2RitpWGttb3dlVXlhbjUxcGtScG8zaGwvcTJXM2RudnRrWGF4?=
 =?utf-8?B?Ny81emtlTzAvV2ZWYS9vV0tTK2ozQ1luUVhzVXVLK2RkRHA4aFA5cWwvbHJM?=
 =?utf-8?B?VGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88e76ac8-13d4-4196-7c95-08de1b731855
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:23:47.6069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: voL5nwoP1CoRaK8I54yUFboTrIw4Oev8loogpCixTN/iTvW8ilXws5IDY8Z+78iYi3NzFU0sop08ziYpD4DVq1ht14Do5v8thpjHbpMnhgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762241032; x=1793777032;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pa3kHsQZip+njKYCopmIV9FzCFvotgl74uu1cXU428g=;
 b=KVb1J9AQy3AT19WhCaNMGPs/JCXs0NYwhPWeU5jlfPg+OcdY8W6TVWOd
 3YQNZOCVM4L2hdgWy/dTqDSp74xXIHHPJNhNgiDjcgD9QFPDHiChpyg0z
 xj5AtHBp50hoctnj+vx/Qbo/8LCLNKygYh081Vzo21mT4b/EkgmY4W9KX
 7j49tZjWgwVX/hPWvJ6CH51asi5hnh2C6XyJOPhWFNPp/aVKuejwzZWi7
 1r8Y+XjdJPRvoL+41B3X7dWa2jZA3YoX8wq0lvmlCxxfaDZR1feAoeIqg
 RQTRqmXtkBeOANWMofB9XjXnnqZlSMI9xpwJAZAGuTghL1OfMI2YKesNr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KVb1J9AQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/9] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDQs
IDIwMjUgMjowNyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCA1LzldIGljZTogcGFzcyBwb2ludGVyIHRv
DQo+IGljZV9mZXRjaF91NjRfc3RhdHNfcGVyX3JpbmcNCj4gDQo+IFRoZSBpY2VfZmV0Y2hfdTY0
X3N0YXRzX3Blcl9yaW5nIGZ1bmN0aW9uIHRha2VzIGEgcG9pbnRlciB0byB0aGUgc3luY3ANCj4g
ZnJvbSB0aGUgcmluZyBzdGF0cyB0byBzeW5jaHJvbml6ZSByZWFkaW5nIG9mIHRoZSBwYWNrZXQg
c3RhdHMuIEl0DQo+IGFsc28gdGFrZXMgYQ0KPiAqY29weSogb2YgdGhlIGljZV9xX3N0YXRzIGZp
ZWxkcyBpbnN0ZWFkIG9mIGEgcG9pbnRlciB0byB0aGUgc3RhdHMuDQo+IFRoaXMgY29tcGxldGVs
eSBkZWZlYXRzIHRoZSBwb2ludCBvZiB1c2luZyB0aGUgdTY0X3N0YXRzIEFQSS4gV2UgcGFzcw0K
PiB0aGUgc3RhdHMgYnkgdmFsdWUsIHNvIHRoZXkgYXJlIHN0YXRpYyBhdCB0aGUgcG9pbnQgb2Yg
cmVhZGluZyB3aXRoaW4NCj4gdGhlIHU2NF9zdGF0c19mZXRjaF9yZXRyeSBsb29wLg0KPiANCj4g
U2ltcGxpZnkgdGhlIGZ1bmN0aW9uIHRvIHRha2UgYSBwb2ludGVyIHRvIHRoZSBpY2VfcmluZ19z
dGF0cyBpbnN0ZWFkDQo+IG9mIHR3byBzZXBhcmF0ZSBwYXJhbWV0ZXJzLiBBZGRpdGlvbmFsbHks
IHNpbmNlIHdlIG5ldmVyIGNhbGwgdGhpcw0KPiBvdXRzaWRlIG9mIGljZV9tYWluLmMsIG1ha2Ug
aXQgYSBzdGF0aWMgZnVuY3Rpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIg
PGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlLmggICAgICB8ICAzIC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9tYWluLmMgfCAyNCArKysrKysrKystLS0tLS0tLS0tLS0tDQo+IC0tDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oDQo+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oDQo+IGluZGV4IDE0N2FhZWUxOTJh
Ny4uNWMwMWU4ODZlODNlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlLmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5o
DQo+IEBAIC05NTcsOSArOTU3LDYgQEAgdTE2IGljZV9nZXRfYXZhaWxfcnhxX2NvdW50KHN0cnVj
dCBpY2VfcGYgKnBmKTsNCj4gaW50IGljZV92c2lfcmVjZmdfcXMoc3RydWN0IGljZV92c2kgKnZz
aSwgaW50IG5ld19yeCwgaW50IG5ld190eCwgYm9vbA0KPiBsb2NrZWQpOyAgdm9pZCBpY2VfdXBk
YXRlX3ZzaV9zdGF0cyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpKTsgIHZvaWQNCj4gaWNlX3VwZGF0ZV9w
Zl9zdGF0cyhzdHJ1Y3QgaWNlX3BmICpwZik7IC12b2lkIC0NCj4gaWNlX2ZldGNoX3U2NF9zdGF0
c19wZXJfcmluZyhzdHJ1Y3QgdTY0X3N0YXRzX3N5bmMgKnN5bmNwLA0KPiAtCQkJICAgICBzdHJ1
Y3QgaWNlX3Ffc3RhdHMgc3RhdHMsIHU2NCAqcGt0cywgdTY0DQo+ICpieXRlcyk7DQo+ICBpbnQg
aWNlX3VwKHN0cnVjdCBpY2VfdnNpICp2c2kpOw0KPiAgaW50IGljZV9kb3duKHN0cnVjdCBpY2Vf
dnNpICp2c2kpOw0KPiAgaW50IGljZV9kb3duX3VwKHN0cnVjdCBpY2VfdnNpICp2c2kpOw0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMNCj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYw0KPiBpbmRleCBkZjVk
YTdiNGVjNjIuLjVhM2JjYmI1ZjYzYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9tYWluLmMNCj4gQEAgLTY4MjYsMjUgKzY4MjYsMjMgQEAgaW50IGljZV91cChz
dHJ1Y3QgaWNlX3ZzaSAqdnNpKQ0KPiANCj4gIC8qKg0KPiAgICogaWNlX2ZldGNoX3U2NF9zdGF0
c19wZXJfcmluZyAtIGdldCBwYWNrZXRzIGFuZCBieXRlcyBzdGF0cyBwZXINCj4gcmluZw0KPiAt
ICogQHN5bmNwOiBwb2ludGVyIHRvIHU2NF9zdGF0c19zeW5jDQo+IC0gKiBAc3RhdHM6IHN0YXRz
IHRoYXQgcGt0cyBhbmQgYnl0ZXMgY291bnQgd2lsbCBiZSB0YWtlbiBmcm9tDQo+ICsgKiBAc3Rh
dHM6IHBvaW50ZXIgdG8gcmluZyBzdGF0cyBzdHJ1Y3R1cmUNCj4gICAqIEBwa3RzOiBwYWNrZXRz
IHN0YXRzIGNvdW50ZXINCj4gICAqIEBieXRlczogYnl0ZXMgc3RhdHMgY291bnRlcg0KPiAgICoN
Cj4gICAqIFRoaXMgZnVuY3Rpb24gZmV0Y2hlcyBzdGF0cyBmcm9tIHRoZSByaW5nIGNvbnNpZGVy
aW5nIHRoZSBhdG9taWMNCj4gb3BlcmF0aW9ucw0KPiAgICogdGhhdCBuZWVkcyB0byBiZSBwZXJm
b3JtZWQgdG8gcmVhZCB1NjQgdmFsdWVzIGluIDMyIGJpdCBtYWNoaW5lLg0KPiAgICovDQo+IC12
b2lkDQo+IC1pY2VfZmV0Y2hfdTY0X3N0YXRzX3Blcl9yaW5nKHN0cnVjdCB1NjRfc3RhdHNfc3lu
YyAqc3luY3AsDQo+IC0JCQkgICAgIHN0cnVjdCBpY2VfcV9zdGF0cyBzdGF0cywgdTY0ICpwa3Rz
LCB1NjQNCj4gKmJ5dGVzKQ0KPiArc3RhdGljIHZvaWQgaWNlX2ZldGNoX3U2NF9zdGF0c19wZXJf
cmluZyhzdHJ1Y3QgaWNlX3Jpbmdfc3RhdHMNCj4gKnN0YXRzLA0KPiArCQkJCQkgdTY0ICpwa3Rz
LCB1NjQgKmJ5dGVzKQ0KPiAgew0KPiAgCXVuc2lnbmVkIGludCBzdGFydDsNCj4gDQo+ICAJZG8g
ew0KPiAtCQlzdGFydCA9IHU2NF9zdGF0c19mZXRjaF9iZWdpbihzeW5jcCk7DQo+IC0JCSpwa3Rz
ID0gc3RhdHMucGt0czsNCj4gLQkJKmJ5dGVzID0gc3RhdHMuYnl0ZXM7DQo+IC0JfSB3aGlsZSAo
dTY0X3N0YXRzX2ZldGNoX3JldHJ5KHN5bmNwLCBzdGFydCkpOw0KPiArCQlzdGFydCA9IHU2NF9z
dGF0c19mZXRjaF9iZWdpbigmc3RhdHMtPnN5bmNwKTsNCj4gKwkJKnBrdHMgPSBzdGF0cy0+c3Rh
dHMucGt0czsNCj4gKwkJKmJ5dGVzID0gc3RhdHMtPnN0YXRzLmJ5dGVzOw0KPiArCX0gd2hpbGUg
KHU2NF9zdGF0c19mZXRjaF9yZXRyeSgmc3RhdHMtPnN5bmNwLCBzdGFydCkpOw0KPiAgfQ0KPiAN
Cj4gIC8qKg0KPiBAQCAtNjg2OCw5ICs2ODY2LDcgQEAgaWNlX3VwZGF0ZV92c2lfdHhfcmluZ19z
dGF0cyhzdHJ1Y3QgaWNlX3ZzaQ0KPiAqdnNpLA0KPiAgCQlyaW5nID0gUkVBRF9PTkNFKHJpbmdz
W2ldKTsNCj4gIAkJaWYgKCFyaW5nIHx8ICFyaW5nLT5yaW5nX3N0YXRzKQ0KPiAgCQkJY29udGlu
dWU7DQo+IC0JCWljZV9mZXRjaF91NjRfc3RhdHNfcGVyX3JpbmcoJnJpbmctPnJpbmdfc3RhdHMt
PnN5bmNwLA0KPiAtCQkJCQkgICAgIHJpbmctPnJpbmdfc3RhdHMtPnN0YXRzLCAmcGt0cywNCj4g
LQkJCQkJICAgICAmYnl0ZXMpOw0KPiArCQlpY2VfZmV0Y2hfdTY0X3N0YXRzX3Blcl9yaW5nKHJp
bmctPnJpbmdfc3RhdHMsICZwa3RzLA0KPiAmYnl0ZXMpOw0KPiAgCQl2c2lfc3RhdHMtPnR4X3Bh
Y2tldHMgKz0gcGt0czsNCj4gIAkJdnNpX3N0YXRzLT50eF9ieXRlcyArPSBieXRlczsNCj4gIAkJ
dnNpLT50eF9yZXN0YXJ0ICs9IHJpbmctPnJpbmdfc3RhdHMtPnR4X3N0YXRzLnJlc3RhcnRfcTsN
Cj4gQEAgLTY5MTQsOSArNjkxMCw3IEBAIHN0YXRpYyB2b2lkIGljZV91cGRhdGVfdnNpX3Jpbmdf
c3RhdHMoc3RydWN0DQo+IGljZV92c2kgKnZzaSkNCj4gIAkJc3RydWN0IGljZV9yaW5nX3N0YXRz
ICpyaW5nX3N0YXRzOw0KPiANCj4gIAkJcmluZ19zdGF0cyA9IHJpbmctPnJpbmdfc3RhdHM7DQo+
IC0JCWljZV9mZXRjaF91NjRfc3RhdHNfcGVyX3JpbmcoJnJpbmdfc3RhdHMtPnN5bmNwLA0KPiAt
CQkJCQkgICAgIHJpbmdfc3RhdHMtPnN0YXRzLCAmcGt0cywNCj4gLQkJCQkJICAgICAmYnl0ZXMp
Ow0KPiArCQlpY2VfZmV0Y2hfdTY0X3N0YXRzX3Blcl9yaW5nKHJpbmdfc3RhdHMsICZwa3RzLCAm
Ynl0ZXMpOw0KPiAgCQl2c2lfc3RhdHMtPnJ4X3BhY2tldHMgKz0gcGt0czsNCj4gIAkJdnNpX3N0
YXRzLT5yeF9ieXRlcyArPSBieXRlczsNCj4gIAkJdnNpLT5yeF9idWZfZmFpbGVkICs9IHJpbmdf
c3RhdHMtDQo+ID5yeF9zdGF0cy5hbGxvY19idWZfZmFpbGVkOw0KPiANCj4gLS0NCj4gMi41MS4w
LnJjMS4xOTcuZzZkOTc1ZTk1YzlkNw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25v
diA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQoNCg==
