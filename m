Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIPFJDgEqGkRnQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 11:06:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D33C1FE16B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 11:06:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F024408A1;
	Wed,  4 Mar 2026 10:06:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uswq-8D7ZU04; Wed,  4 Mar 2026 10:06:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4A9D408A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772618802;
	bh=D/KBmyCnDEwYQO6LcucE+QgXWKRa/OJdGeOUzBmyaFM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JyRXDig3FFxgdsdyIBhFtdOky7ZQj5/lKHSgl/44kUASpHxBsvPk32AX5Cvo6NkaQ
	 ulskkI+EvAnRVYM2W44epNeXw9rF+WlJ06MiCm8bYaeBSkKXZSWP8LMikz8P52Hvt2
	 r/NbQvaucMbv8ClymZ1PODjvLWUN/ezfMS6EVPDwJZyRI39PiQ49VdDMqpxtP3D612
	 PqNFzIuhT3WatzlvgvnEPWaCJdiTtFq37rVsT0vEmzt0b3JNUc9uRWHxmnz84lEK3+
	 Yxf/R6IXpO660bAsXQTnlHWqWj5r/Cz0LBAagd+vKtsnxjusgk8DR3IE+UtmmdBcjM
	 M1VuZllo1BX7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4A9D408A3;
	Wed,  4 Mar 2026 10:06:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 901D125B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 10:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8DB87408A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 10:06:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OIEePHkoo1UF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 10:06:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F2B4D4089D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2B4D4089D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2B4D4089D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 10:06:38 +0000 (UTC)
X-CSE-ConnectionGUID: U+YWjmR2TQOX/lWjcI/IPQ==
X-CSE-MsgGUID: qWZeBW5pQNGRJ+HUmczO5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="76277468"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="76277468"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:06:37 -0800
X-CSE-ConnectionGUID: whzUCF0gQRCjK2rxr+oNJA==
X-CSE-MsgGUID: YjaLmk0nTiqAwP9ewXEATg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="244981298"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:06:37 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:06:37 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 02:06:37 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:06:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MjPyWlxHpBsLQfHwNCZfAuYw7/AdW9KrV7W4c7St0KbbnZzoSs6CvhOgFtOzWQqA6gZC1vBWv7L8qOFYer2ssoSFBNgosZk/F9kfmBbj2lH/tFQRVNC0TsWYjaP7kwyPnw13OuV5vX4ynVl6fFmUEQZuyniuZupcx04DQio9lXXurHUOpzehhjIl6+wd3NXMJjxR+OpqtnefFY45SIOYX+2qDKTqEdb/ODZVvX/8TRF0WSXM+zPke1vNXq9VfgV+HRWB7q0p1fQOmuI7Thtn+yf8lTH8cSBW4FAcRbgldlw4JrNhb6B127NtIygbnyc3Wy5WD3NjD2OH6WbiIhVmDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/KBmyCnDEwYQO6LcucE+QgXWKRa/OJdGeOUzBmyaFM=;
 b=bjkEMciLcB9I1TdN1aL2xqy6svStpi3QOnUWENUWvpFkBOvF3Y4g632FOn4gSSDOmK5oJA9DvbmWSAywxt2R5UU1YrwaSxtWe4e/nV96VurAZuoCnmfO6eFwbGJ1YVomJ/x1I5BMTw+Itu3XrhwVqWMgLEx+k+Oyjjq0FR90+x/KcnG8/BrEUEHonYNfBpv1aGp7sqEpBUrRCKHUm/xrkl8k6KNz+lJ2ydZjvrWv71ZNDVJSNVbEdvheGxQA+7potz4ZTljdvO7QDuZKS5imlGoNhf0Yvaw2K6hpbAXtrNgkSaytt0z75jvx3JZSes/rnNtyfKs7yLskdYNj9QdMVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 10:06:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 10:06:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "maximilianpezzullo@gmail.com" <maximilianpezzullo@gmail.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Joe Damato
 <joe@dama.to>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/2] igb: fix typos in comments
Thread-Index: AQHcq6ejTgpUQ3AizUuiPFUBxThKAbWeJcWw
Date: Wed, 4 Mar 2026 10:06:34 +0000
Message-ID: <IA3PR11MB8986473B798C746190D6AEC5E57CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-0-b6a9f1d336ff@gmail.com>
 <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-1-b6a9f1d336ff@gmail.com>
In-Reply-To: <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-1-b6a9f1d336ff@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB7874:EE_
x-ms-office365-filtering-correlation-id: adeca015-9d69-4de3-90f0-08de79d5b75a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|921020|38070700021; 
x-microsoft-antispam-message-info: m7S8NSjQFWvV234n5wqq4slJ5x00XMwAhTWOdh5I9mCu+gdX9sExvnI3AKuzhQpB/4xTiMbpvBQatZVFgMo0Oon6ROG9xYa31mFL9x6esDRgpD+vMniTaYNAgkhh8908ZjQwfT2dRKB+mdZ2TqiIeR3BDIxy+tHrMkJbkxT00FLDMJ2+3C5P+yelO1NlcomT8y9dfEWcRBiN9reZZg7lSqASd7oaY5YF2eR0zNlM1WYO/2v8AAbugVrTe4Nrbkbsf/+YoA+nKv9yfxN2E1LrQV6pnCt1OL/ncP5hzAJZak/oJo9arF7uD93f+dgOjWGTVu0BvrXvUu9xWUiYpSPKjUXKALPXdGjf54Qg2U/3qpvn1oPgANHkgPrpaQltK0LieqmY9NXHv+ALsSaM2pk/JaOjO6RSMPuZJa7+ZPi8fn6/voeFxY3gPowlj2PK6nQSzxFWDllYODbHafB7FrZ96qH4AYMV/dsPtiG8BoyGNDXOKUmjJpK3oBDEpGpDVN9LROgFB0uvUXdMJN5GOK108mbVGOsu/OYd8PtUSyrmPB3d82nRQxcZ45ekQfum6GVPpz5R5s/DV+8eozOUQkaVwcSwovKzz6+YN1+HZNmsipFKyF2OlZxTyYzMV5sF5j0ALsf03HygZKV5+1ncE5HO9uZz6S8cI9dbhwA2UNVR8nO+dZO0OCYMlQAYLdehbWiV+G8WdQ4hd00JKS3kTEpeMetaO9yqxL0lJQyHfcfVnv4c8cUVcsNVyA5or3jtMULUunpd3zJAFbt6ELQvkAPLI1fTL9Bnr00aF7Hb0qNBFuxJLwQYyCDy2IkB8HvRKUsZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWJkZE92UDkySytyRzQzNzNUS0dhZE1meldLNGtTcGdacVh5WWVGcm95VGJV?=
 =?utf-8?B?c1FoaWVoNGU0STJXaWE2Wm5YLytxSlp4aHVzbjQvaXNzWFRqZmJVemtMMk1l?=
 =?utf-8?B?OWRlWnpFd3A0eW9LaFdxMEZJdGJHc0xvUi94RE4ySzJyczdaVDNhOTA0T0h2?=
 =?utf-8?B?YmE0NVNkcnZrVmo3bEFodlpCUTUxcmRySm5ZdCsyUm5JVjNsR09hYjYydk9S?=
 =?utf-8?B?eXprai93Zm15ZkdXcituZ1A3MTRCTi9UdDZIR2xseVkycE5DSytmNlhLa25Z?=
 =?utf-8?B?SzNvRlZpSkIxTU1FcGJRcVE1SVJ1MTRTTy9IN0xtYlpjNTh4M1VJSHJQaDRj?=
 =?utf-8?B?Z2lnOWduaGtNUSsrSThWc0NybXlzMENmaUFIVUYrNjVMM1VtYlN5Nll5emhr?=
 =?utf-8?B?WlJyMi9MdGZXdnZadkNUbmZhNUs1VVh5WmxvRFhEUlFiVVVHVFp0NXVrc05w?=
 =?utf-8?B?WElqMndrUmVZUUN2V01CaWZEZUt3MG1Md28ySHFqcHkyOTFId0NnamJNcHNq?=
 =?utf-8?B?dUtMWTg4Nm9uZWE5SWxsb2NkUGV3YTQ2Vy9idU55SVU2cDMwb0NjdFV2Zitz?=
 =?utf-8?B?c2c5QUhkamd0QmNWL3hsdEFUYzU0MW9QcGExeDdDSmhaK214SjR2cldyREFO?=
 =?utf-8?B?NHJLUHlTRGZSSWZja0tSdUNUN1Foc3pFQWVjOTN5SSsrS1ZuMmwwdVN0ek85?=
 =?utf-8?B?Z1U3WElTOEYzTGJOSkJZc05sc0FlajhCdVp5RlovZ1hKRDFwVmF3bnR3YnRF?=
 =?utf-8?B?S1E3M00xVlpZaG9UNlVhdkFQQ1NwOVdjanlESlR2a1BSOTh1MU9ib0NqaDRs?=
 =?utf-8?B?cVpuYkg5cHo1a2s1ejNWMDE1R0NHTU1HWG1RVlRkeVRwZnlRaHJobDVTRlJH?=
 =?utf-8?B?QlhvaktMVkI1enVtSmk0TlhJd3FNOUdaV2J0NDdxMFJDQWh6OHdTTGJhSFRa?=
 =?utf-8?B?TmtDU0N4QncvU0hmTWJMSmJRdjdpNG14MlR0WUQvdFZSRDFxRzI5YXZjMDRH?=
 =?utf-8?B?SDVkZVlTdVR4ZHlDcUt6cE9UR0NyOGg4em0xMW5MYTJtMDJjNUxETEY0eWRp?=
 =?utf-8?B?bE1tUXpNeWRWWWQvWHhQYTVWNmFDQzNOc2NiUXVjUkhYeVJkRXhvbWpSMUJQ?=
 =?utf-8?B?L2FCR3NqSC8zWEtaOC9ZVDk4MUNERkUveVdxYU5RZ3Z4WVlvcTJrbElobk5R?=
 =?utf-8?B?ektMNkY5cFVtRVJ2b2lONGJUVk1nVXB0Y0VJcnZFZTd1aGtTcnRyVGRIUHZP?=
 =?utf-8?B?RiswVUlvSUdCY09OZFpSb3p5Y0llalF6VlVSTVQwTEl2dTdZQ1NmekVIZ0lU?=
 =?utf-8?B?Y21mZm15dHpPWkk0NDEyVU9mM0Z6ODNjWm1teVZnNXA5YWtDK25nOTJsMnZV?=
 =?utf-8?B?Vjd2SzFpNys2d09KZWhoUFp2T0M3UTN4SXMvWCsxQnBVN3FkMnpMaEF2L1R0?=
 =?utf-8?B?NHNEOHdIVElnUnFUeCtCVTlFcjVuMXhZNXRsV0JxNWN4bk1qQmZwc3NqZ0s1?=
 =?utf-8?B?STVMNXIwa3pRbjZsZVV6NkgxVkkwUTh6UjZidmY4eEVrcy9HZUcvanQ0NFND?=
 =?utf-8?B?NDV4MHlyTkE2R3l0SFYwQUhuQXlQZUlYMjBhVXZuNFJqSlBpek94V1puMjhX?=
 =?utf-8?B?ekY3b013eWppenQvOHR3VFhLZDZHR1Q2L1gzTEt6ejNtUmJWay9CdWRuTlNq?=
 =?utf-8?B?TjVEOGI5RTN3NTRTRytTUVFuQTJBM0tydlZGRHBMZHNqeVVKajByWC9jNkJo?=
 =?utf-8?B?Z1FVZkRmc3pseGdnS1J6L3BjQmZqMEhWOUY2bUJXcHEyQUdWRUNzKzQrMWlO?=
 =?utf-8?B?VE05N0RtbzdDdVVBTW9OS3ZrUnVoL2l1M0VvS0c0VE14UmJRV0xHYTA4Y0pB?=
 =?utf-8?B?QjVKYVZUTkR3Q0l5TGNDRCt3OVhNbHNEL1pKcWhPcTdDa0pSUE9IaHdscVdv?=
 =?utf-8?B?a1JaRU9nTHdUOWNjbnJ5bmhZL1dta0JSbVNtL2IyY2pDYWV4Sk44TUlGTlJZ?=
 =?utf-8?B?SEZwenhLNUdCOGphMTF1K0dsWmJKdEdXMlpFQmh4ZzBkOUwxaFVKQ2xreFJB?=
 =?utf-8?B?MWFFTHVIMlRGVGlZMkp0Q2pjVVArVGtZTEVqQnVXQy9HMWtNclAvQmI2VlRy?=
 =?utf-8?B?cTRIL1FQb3pjQXI2RjV3elcrT3NUV0ExVnRRY3ZOZGFDZmdZdGMzMVpIZzdI?=
 =?utf-8?B?TjVEZWJ1dmUvSWxtdGZ1ZjRvQUQ4ei81RURCV3dEeSsxUTNXYUZHemNUWGFm?=
 =?utf-8?B?U0tXckswbFRCdmQ2aEVWOWRFVGdYL2lQTGpNRGkxQjZNYVRRL2V3QXZjSXhy?=
 =?utf-8?B?TlZ1RWdmUDdUaURiQ0pGbmh6ZVJWM1lpOWdBenpnUmlRM1pBa2RVRVVrWXNM?=
 =?utf-8?Q?X5nKi6GdmmuBqL2g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adeca015-9d69-4de3-90f0-08de79d5b75a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 10:06:34.4250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yEjT6/BYIBU9C05STtncemq/3ihecpNamuBsfhSRr9FZtUSIeb5bUHyxSErNHAMtTbK3UZ6yxRAuQeIYqitNAM/XtiOoQQwjOOmOq2nhNhc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772618800; x=1804154800;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D/KBmyCnDEwYQO6LcucE+QgXWKRa/OJdGeOUzBmyaFM=;
 b=KEeOLL/m/SDZO0qx8ssac5OwESstqhmbQCj3vw/WET33qWbWhDzP3RsW
 Dt8pEk1rHvPA9ofMcBdiK+e7aXyuwuPaJX9siaTjuTJ8U44nFziHw8dce
 cgGoCAY1bojVFESKIe/iOGgVOZ5Vjh4bMUBa2H6e10nI7VXeZteB+tR0k
 stWEInK6fUNNVHbkbNQXInWi3kIsEfeOXOm7AR+owXvMMymAoFk7h3ym9
 XfbXs1Kfo5Ts82rwqUD41gxZy1d6HqQhP4JqCSGj5En5GBUKR/VrmIsB5
 Q09dX3tnLeFkWzW2IphwUIfBARB0dlN9D1WLhoDJGKoSi0OChDgdxHu6R
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KEeOLL/m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] igb: fix typos in comments
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
X-Rspamd-Queue-Id: 0D33C1FE16B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maximilianpezzullo@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:joe@dama.to,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:email,dama.to:email]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF4
aW1pbGlhbiBQZXp6dWxsbyB2aWEgQjQgUmVsYXkNCj4gU2VudDogV2VkbmVzZGF5LCBNYXJjaCA0
LCAyMDI2IDg6MjEgQU0NCj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVu
QGludGVsLmNvbT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBBbmRyZXcgTHVubg0KPiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQg
Uy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYw0KPiBEdW1hemV0IDxlZHVtYXpl
dEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvDQo+
IEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5v
c3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgSm9lIERhbWF0byA8am9lQGRhbWEudG8+OyBNYXhpbWlsaWFuIFBlenp1bGxv
DQo+IDxtYXhpbWlsaWFucGV6enVsbG9AZ21haWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2ly
ZWQtbGFuXSBbUEFUQ0ggdjIgMS8yXSBpZ2I6IGZpeCB0eXBvcyBpbiBjb21tZW50cw0KPiANCj4g
RnJvbTogTWF4aW1pbGlhbiBQZXp6dWxsbyA8bWF4aW1pbGlhbnBlenp1bGxvQGdtYWlsLmNvbT4N
Cj4gDQo+IEZpeCBzcGVsbGluZyBlcnJvcnMgaW4gY29kZSBjb21tZW50czoNCj4gIC0gZTEwMDBf
bnZtLmM6ICdsaWtsZXknIC0+ICdsaWtlbHknDQo+ICAtIGUxMDAwX21hYy5jOiAnYXV0by1uZWdv
dGl0YXRpb24nIC0+ICdhdXRvLW5lZ290aWF0aW9uJw0KPiAgLSBlMTAwMF9tYnguaDogJ2V4cmEn
IC0+ICdleHRyYScNCj4gIC0gZTEwMDBfZGVmaW5lcy5oOiAnQXNlcnRlZCcgLT4gJ0Fzc2VydGVk
Jw0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1pbGlhbiBQZXp6dWxsbyA8bWF4aW1pbGlhbnBl
enp1bGxvQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvZTEwMDBfZGVmaW5lcy5oIHwgMiArLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2UxMDAwX21hYy5jICAgICB8IDIgKy0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9lMTAwMF9tYnguaCAgICAgfCAyICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2IvZTEwMDBfbnZtLmMgICAgIHwgMiArLQ0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX2RlZmluZXMuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYi9lMTAwMF9kZWZpbmVzLmgNCj4gaW5kZXggZmEwMjg5Mjg0ODJmLi43ZTZm
OWFhMmQ1N2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9l
MTAwMF9kZWZpbmVzLmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2Ux
MDAwX2RlZmluZXMuaA0KPiBAQCAtNDQyLDcgKzQ0Miw3IEBADQo+ICAvKiBJbnRlcnJ1cHQgQ2F1
c2UgU2V0ICovDQo+ICAjZGVmaW5lIEUxMDAwX0lDU19MU0MgICAgICAgRTEwMDBfSUNSX0xTQyAg
ICAgICAvKiBMaW5rIFN0YXR1cyBDaGFuZ2UNCj4gKi8NCj4gICNkZWZpbmUgRTEwMDBfSUNTX1JY
RE1UMCAgICBFMTAwMF9JQ1JfUlhETVQwICAgIC8qIHJ4IGRlc2MgbWluLg0KPiB0aHJlc2hvbGQg
Ki8NCj4gLSNkZWZpbmUgRTEwMDBfSUNTX0RSU1RBICAgICBFMTAwMF9JQ1JfRFJTVEEgICAgIC8q
IERldmljZSBSZXNldA0KPiBBc2VydGVkICovDQo+ICsjZGVmaW5lIEUxMDAwX0lDU19EUlNUQSAg
ICAgRTEwMDBfSUNSX0RSU1RBICAgICAvKiBEZXZpY2UgUmVzZXQNCj4gQXNzZXJ0ZWQgKi8NCj4g
DQo+ICAvKiBFeHRlbmRlZCBJbnRlcnJ1cHQgQ2F1c2UgU2V0ICovDQo+ICAvKiBFMTAwMF9FSVRS
X0NOVF9JR05SIGlzIG9ubHkgZm9yIDgyNTc2IGFuZCBuZXdlciAqLyBkaWZmIC0tZ2l0DQo+IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX21hYy5jDQo+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX21hYy5jDQo+IGluZGV4IGZhM2RmYWZkMmJiMS4u
MmJjY2U2ZWVmMGM3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvZTEwMDBfbWFjLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2Ux
MDAwX21hYy5jDQo+IEBAIC0xNTgxLDcgKzE1ODEsNyBAQCBzMzIgaWdiX2Rpc2FibGVfcGNpZV9t
YXN0ZXIoc3RydWN0IGUxMDAwX2h3ICpodykNCj4gICAqICBpZ2JfdmFsaWRhdGVfbWRpX3NldHRp
bmcgLSBWZXJpZnkgTURJL01ESXggc2V0dGluZ3MNCj4gICAqICBAaHc6IHBvaW50ZXIgdG8gdGhl
IEhXIHN0cnVjdHVyZQ0KPiAgICoNCj4gLSAqICBWZXJpZnkgdGhhdCB3aGVuIG5vdCB1c2luZyBh
dXRvLW5lZ290aXRhdGlvbiB0aGF0IE1ESS9NREl4IGlzDQo+IGNvcnJlY3RseQ0KPiArICogIFZl
cmlmeSB0aGF0IHdoZW4gbm90IHVzaW5nIGF1dG8tbmVnb3RpYXRpb24gdGhhdCBNREkvTURJeCBp
cw0KPiArIGNvcnJlY3RseQ0KPiAgICogIHNldCwgd2hpY2ggaXMgZm9yY2VkIHRvIE1ESSBtb2Rl
IG9ubHkuDQo+ICAgKiovDQo+ICBzMzIgaWdiX3ZhbGlkYXRlX21kaV9zZXR0aW5nKHN0cnVjdCBl
MTAwMF9odyAqaHcpIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvZTEwMDBfbWJ4LmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBf
bWJ4LmgNCj4gaW5kZXggMTc4ZTYwZWM3MWQ0Li45ZTQ0NTI3ZjVlZWEgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9lMTAwMF9tYnguaA0KPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBfbWJ4LmgNCj4gQEAgLTMwLDcgKzMwLDcg
QEANCj4gIC8qIEluZGljYXRlcyB0aGF0IFZGIGlzIHN0aWxsIGNsZWFyIHRvIHNlbmQgcmVxdWVz
dHMgKi8NCj4gICNkZWZpbmUgRTEwMDBfVlRfTVNHVFlQRV9DVFMJMHgyMDAwMDAwMA0KPiAgI2Rl
ZmluZSBFMTAwMF9WVF9NU0dJTkZPX1NISUZUCTE2DQo+IC0vKiBiaXRzIDIzOjE2IGFyZSB1c2Vk
IGZvciBleHJhIGluZm8gZm9yIGNlcnRhaW4gbWVzc2FnZXMgKi8NCj4gKy8qIGJpdHMgMjM6MTYg
YXJlIHVzZWQgZm9yIGV4dHJhIGluZm8gZm9yIGNlcnRhaW4gbWVzc2FnZXMgKi8NCj4gICNkZWZp
bmUgRTEwMDBfVlRfTVNHSU5GT19NQVNLCSgweEZGIDw8IEUxMDAwX1ZUX01TR0lORk9fU0hJRlQp
DQo+IA0KPiAgI2RlZmluZSBFMTAwMF9WRl9SRVNFVAkJMHgwMSAvKiBWRiByZXF1ZXN0cyByZXNl
dCAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAw
X252bS5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX252bS5jDQo+
IGluZGV4IGM4NjM4NTAyYzJiZS4uY2Y0ZTVkMGU5NDE3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBfbnZtLmMNCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX252bS5jDQo+IEBAIC00MDUsNyArNDA1LDcgQEAgczMy
IGlnYl9yZWFkX252bV9lZXJkKHN0cnVjdCBlMTAwMF9odyAqaHcsIHUxNg0KPiBvZmZzZXQsIHUx
NiB3b3JkcywgdTE2ICpkYXRhKQ0KPiAgICogIFdyaXRlcyBkYXRhIHRvIEVFUFJPTSBhdCBvZmZz
ZXQgdXNpbmcgU1BJIGludGVyZmFjZS4NCj4gICAqDQo+ICAgKiAgSWYgZTEwMDBfdXBkYXRlX252
bV9jaGVja3N1bSBpcyBub3QgY2FsbGVkIGFmdGVyIHRoaXMgZnVuY3Rpb24gLA0KPiB0aGUNCj4g
LSAqICBFRVBST00gd2lsbCBtb3N0IGxpa2xleSBjb250YWluIGFuIGludmFsaWQgY2hlY2tzdW0u
DQo+ICsgKiAgRUVQUk9NIHdpbGwgbW9zdCBsaWtlbHkgY29udGFpbiBhbiBpbnZhbGlkIGNoZWNr
c3VtLg0KPiAgICoqLw0KPiAgczMyIGlnYl93cml0ZV9udm1fc3BpKHN0cnVjdCBlMTAwMF9odyAq
aHcsIHUxNiBvZmZzZXQsIHUxNiB3b3JkcywgdTE2DQo+ICpkYXRhKSAgew0KPiANCj4gLS0NCj4g
R2l0LTE1NSkNCj4gDQoNCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtz
YW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
