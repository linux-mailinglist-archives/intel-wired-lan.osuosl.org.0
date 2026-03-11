Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJTQFZ1ksWkZuwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 13:48:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB32E263D5A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 13:48:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A56F844AB;
	Wed, 11 Mar 2026 12:48:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GS4KKm-gTKvq; Wed, 11 Mar 2026 12:48:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2EC3844AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773233306;
	bh=xE9Qi+AcyZp3fZMitxtcPTZr6QIxbkUpfSX2v3V1OG0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DNN4lCXhd75n87kdDpDOqc6eHV9pzKZ8vqvvEjH++Q1ON3X9kbFt7TtVstMUqE+du
	 Lmy/VBRBiRmhBl+KdLDcmiJ9Qt1lhTrcWv+qVIwOQhPpsNBXdXatNB2pB+BsOvfbvy
	 CjA/wdD0YmiRI5s20ir3mHostZ/HkyroTM7uuQfn+djpTChMPJR3WFOTe+roeqvVWx
	 K/jGIeYA0aWCtpzMxvluViMX9eBnb7ISq+dAoIyHcGiJfokdR0LZvcVJsX8Ny8g/5d
	 3FmdDY4J33VKweF6yZNHHVPuFPbOZ2OGZD1nMBwGQPIAoUfaK4mItgZMjl25FhdmO8
	 9jKNZsDbwPl3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2EC3844AD;
	Wed, 11 Mar 2026 12:48:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D56E201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 12:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F2BE844A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 12:48:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9alhlghpkqnB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 12:48:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9B8DD83BC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B8DD83BC7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B8DD83BC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 12:48:24 +0000 (UTC)
X-CSE-ConnectionGUID: z/D9jdzbRQeEs4VY4ZsZgw==
X-CSE-MsgGUID: v7Y0ENp1QAqwpE46FIJEcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91679199"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="91679199"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:48:24 -0700
X-CSE-ConnectionGUID: hHTKxtXoT8KZHBTkH9raDA==
X-CSE-MsgGUID: 2Dqw/4bMRSqx1RsLXW7Bag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="246032955"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:48:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 05:48:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 05:48:22 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 05:48:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EiImhIK8U5Lx8Jda+hJTFKsZ77uOiXxjpSp+bOYtYWoacJ+oEP5qa5ct/1nLX11cAvJSS1St1ro3pqxjCBQZCyoF4lYi6zW2etFq+Z6JChmxRd75y234PjEU1Hla8TVXvgwEX08sMVc7vCqaVQdneWM2zsMzXnfuzIGa5nHmN1tn+71BY1CrXCWUO9JpBN70xscH0WH0hWyu0Fogtb5amFggAgYruIRMZCnbdpdbf5qfty0q8bntR3Tsw+/isljV1c0IH8IzYC5WOIXigrIVi+eiE5UoFHIUajoOesk4/Z2XGghyJDZvcrBPH8Xrz9IkeaUqXgLZnIPStF3HAtTUTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xE9Qi+AcyZp3fZMitxtcPTZr6QIxbkUpfSX2v3V1OG0=;
 b=fGVTgl4RMlTIx/NMQSCxyud+HCdqQgI+y+hMGdcFX0zGB0hrAxr/sbSoJaEihtEgv+hOykoixjILM0ynebkgdqkkK47ctZ3LAUFf3kte2SeUMCDoHyMsB+Ld9VQfX13mYHqnjBq8HqujWpdASUZUsrJD+Te/am03KywCuectRgg7Do5afooPQGG1IJUaNMZKCCLuKiUpmtRbaTlLanw6UY2IZIhTCWzySyJDRgGNGCWDccFEW2SkRwYiOasMXA4emkA4u7ESa6Thxw5lEE9YwjNaeUwE83bmNJW3CP8nA7I3w+shfCq/nUNGGcgRxC4OvBkEWaEOTNGff09E5IMcIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by CO1PR11MB4801.namprd11.prod.outlook.com (2603:10b6:303:9c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 12:48:20 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 12:48:20 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
Thread-Index: AQHcsH3aCkZV4GjS0EiRZNcpFpJXibWo+xaAgABOdkA=
Date: Wed, 11 Mar 2026 12:48:20 +0000
Message-ID: <PH0PR11MB49041E1A867A41D186EFD4C29447A@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260310110700.345904-1-przemyslaw.korba@intel.com>
 <d8a70780-3490-473d-9641-fc015c7993cf@linux.intel.com>
In-Reply-To: <d8a70780-3490-473d-9641-fc015c7993cf@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|CO1PR11MB4801:EE_
x-ms-office365-filtering-correlation-id: 3b27c0f6-a563-4cf9-1c94-08de7f6c799c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: uM5N/Q9TEQsM8buL9lbR357wayTR3x1qRjfof0NTJ/Vm4kTbGdSjsGAKOvsBiUHKMRVYlRpA2Tp5S6RONHFkr6dxiDctbPFTZXJK7Wuj0ucAuMfGNqUG2cyjL9gQNCs/HOMV5Yqxpdlrauu6jOkcCXsJt/fYfsP/UEmzLADxP5HCBpV3fQOclVdQTQDHRI+01XCVQ8umLXy+IEf5UKfJKq//gUpDb2GFGiVnFfJHQYYx/8xUMxqjUwvC7D7Zq52FpT7SWxipcVB7rOMVA3u2KZdToHD8YV41yNap45jUfudqxX5gWr0iXEHxhxqUyMeD0M6aYmezWdz2sbokDfr0iRt1Hw7sD1PEyQtd60cUjbDQ5DtZWibHxT6qFMGAjlQr8my95+eQcuuZtMoCAZRcnHgonYI/1hNRPKjV7TXPFOPwvOWHUhwKaT/r+lCsBBI6GFhSWN0/e2/uyT2yeg/OhnFIu80cCFMgbJiDe2t3TCtAHJFmn96svuUenV3/zXXdA8M0s44mG82IXSViQ7X3bXhkQ1BTAczUd9CXO32YIGU7BE1YGdHIVD8w21M56N/P4R1yBFctWhHo8LerAecai7lR2/W3oAUoSxfubQjAFRbA0yzaCaA3OWbjBcH2y2KGvYId+WxLvt7dBxApd3U3BtH+YzyymtUkHPfn4O3Fkbm1KGvbwiduMcSsgIXVzbB0zg2Be1PiUL2wj8+ci7ZukT4u1HeNwAOQhUxDEXK+eCLMganwUw1z/b7DsZ3YevXVIAdYKwU1iHhTBCRIc0D5rNRzzMfNUv39iAAOcOGuM7Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Sm53MkxaK0VtZEpMeWxPNVFXZDFMRWN1N29tUE1mdUtyWVhrN09DSXVPQ01w?=
 =?utf-8?B?NEN3cHRiRlhQSHVPelVSdEFoWTZvU3ZhS0NrRFJDd2pKZUpEN1I3TWdoVEhl?=
 =?utf-8?B?TVBqbWpYMGdiQkxnY2k4K3BHYjNWUU5ES0JRQ3kveTlHM3pOMUwzbzFRWmg0?=
 =?utf-8?B?S3ZHWlcrTXd0akJwbmRJeHYwNERjMUQvb3RORHFHdjRjd0JZZWhSNndYR2hC?=
 =?utf-8?B?bzVTMmcvdmlWMTZrUWxETzJCK1FsNmhIaXVEOC81TnJjdzZQcFBzejFrY1k1?=
 =?utf-8?B?NTZ0MEI1S0Z4SmVKeERDVVR6MWZhbUtOOUh1SmxVQ2gwZTNrUXQyZFMyRWZm?=
 =?utf-8?B?d1oxc3pDVm9zTWpZeDFZcklKblpCL2MzNzVzSjMxR0trdUlWeXU0YnJ6VHRp?=
 =?utf-8?B?eExPTFEwTHFnSDdwcWlyc0NxdXZ3NnFLZ1hOY3FwMG9LZkc0UmFkcHVlZE1O?=
 =?utf-8?B?VGxYTzF0Qm42ZTdNaitndXBXNFpnMGhGSGtMVUdtOFFUTHJPRkxXYUdtQ0hh?=
 =?utf-8?B?VVNiTUZhVmszVnNyUmpsYnNXOFdGcUF0Tm9jQ0VlTys5eWdraEo0OENDNnNS?=
 =?utf-8?B?K2U5WlNWZ1dxY3ZsYXRmVzZVUStPUzloWlYzMkU4bmZNTzJsNkdlUHROcHds?=
 =?utf-8?B?NEF0OWpkZHp2NjVkZUdabVp1Vy9jZUlJbTN6SENLM29hZmU2TDNHUVd6QllR?=
 =?utf-8?B?eXZIZkVibGgxWE1iVlJwUGttTlprVU1JOGg3R2UvZTRLcnBaUmVkcVA1UldB?=
 =?utf-8?B?em5FNkwwZVBINnk5bkd4SWZOUnhhb2pMZGNHSjFvOFpUampjVWprL1lwL2J0?=
 =?utf-8?B?cGc4dDhVQ244VW1qZVUvZ2thbkM4Yk1WZHFTVnBVa0dOTzFWZ2lST1VIbnpr?=
 =?utf-8?B?bXpwTlgyZkIreERVOTZPNUN2RVNsTmFxVzNzcUo0L0tHNVRmeFBwaWcwU3VK?=
 =?utf-8?B?MktSbWl4RlFObUJqNE0zOUtaQ0lXNDlDY0xpZURSME16ZHloOGJYQTNyeCtU?=
 =?utf-8?B?aGNCR3Uwck1tUWwyeE93WDV3Vm1QTkJHelBBZ0N1cVlCMW9iNTUyL0pZMm9P?=
 =?utf-8?B?ZVJUcmd3anJBVjdpQjRDVHVQMHB6VWFueG4xOTJabWRTU1hOK09aQmpLZ3cw?=
 =?utf-8?B?eENTbVBzNW9WVEhlazVibDduRzVZUzRQcTUwMXhLMTVIN05aTzdLWFcxbloz?=
 =?utf-8?B?SDdoYWpLdTgzL2pTY0RoNjZXZDBXSStzelpRRWx1RVNkZ1F0UFdwZ0FJYTZR?=
 =?utf-8?B?NXFHZDFGWkh6cXkxVGFKdTMyZHNOa1Bma3FEZjdwcHcvdm94VXJzYnBPV3NX?=
 =?utf-8?B?OG1hU2t6aVR4QXM0WUxRYUNleXpVTTVYNWxrcmE5UDdoa3NtaUZ2dTVTVU8w?=
 =?utf-8?B?MjM5WWNmbllBdjQ1cVl3QlIrUlZTUzg5aEdSSitZMGtUcEp6a0JlbXlEbHdT?=
 =?utf-8?B?VTlTUFRSaCszQ3dwY29nQ2MvTEt4TGdhTVNVK1ZCcDJtSkJHM0JFeHJVajFS?=
 =?utf-8?B?THN3d1p0RjMwaXpJOE5PNW4yTTlPVkZLY0xxWUkrM2o5cVhOY1YyZW5xRVZj?=
 =?utf-8?B?MzBmTHlmU0RjcDlsNnBPazVWZy9mb2VNdjd5eHkzYVZhODJ2S1FGeXFXaEtv?=
 =?utf-8?B?eHNoeWVrNDFKRDMrTlFCOU8wT2piVldLc2QwQXZSSFNCSEtEZzFvSWJtazZt?=
 =?utf-8?B?U2x3a2pob0ZHSVlxR2g4WXFiQUdPRHJCYzhEYlRNMG01VGs4aTRQbEU1Tk00?=
 =?utf-8?B?bUdXd2tManpBNGQxU0NVYm5OSy9VaHpnZDVvZWo2WkRoVFBqUnlwQlJOY0pV?=
 =?utf-8?B?OWwwMHpnYjV3a29YdENhaEhENm5HU1BjU1BCQ09XUnp3a0ZkVGFQU3J2VHFw?=
 =?utf-8?B?NlVDNDhJMWZyQVEwQmFMVy9TVXNvM2k0YkwwSXhKNEN4ZDRsZ0tVcktpbjQ4?=
 =?utf-8?B?Z01mUHMzQTBwYnpUVmphWlpYdU9mclU3RDJjbVY5SXBlT1hQSjlkYnpsM1Q4?=
 =?utf-8?B?WkZ3Q0pyeFk0T2pIek44WkFaUXp2bW0zNWVrdjkvSlNGRWdzV3IzQVI3ZUIz?=
 =?utf-8?B?Vml6MjFrY2p1YWUzaUh3dFhQT2s1UDVGR1dqV0xIaXo0N2h5NkkvTzd0MDFm?=
 =?utf-8?B?VFIvT2N1ekxkcm1HNEZPYlB5SkU0ekdRL3U4d2VSd081NDVXYUV3akJjeHl5?=
 =?utf-8?B?U1AvUWNydUxjeDZjZ2prYk5WeXhMd0pURXNhYllwbTYyKytOU2dlbTNsRjMw?=
 =?utf-8?B?d2Nxd3RRMEY1dTNiamhPUU4rRVViYkJsZFQvVWtLNlN6U2pYK252RU96ZkZI?=
 =?utf-8?B?MzJNK0lEcCtma2tIVHArQWIyUklCV1VzMWk1OE1rc2lOa0dnYnh1dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XjkUo2BU6Ke5Hr3qQPIlKRUPpuQiGwugIgzLwvhZPDYXJDeHMHZSDLh5f77n4xc9vjhcvHOEZur65cs+43ZW8FRCQ1KJIBdsFXKHNkwfbmGd1/vVF6vyRzkDd+QTswqnw8Q7DZMcRbkPNYElgsoQzkgCVwQIBhhj5rq3+Id/TkETZT7Wx+Zovc2NrxyHkKfeU96kjAh0KqWxOziMnJqoSO1V3solpMILj7vSqAUsecUjGARLMiCfzaiEXqMjRpNAoUpXu0XfwZ5GFOgypRUXWYh12MZv0EJE8y8OyQqmTXxSYQ/p312r4Hh6HKJ+X6C73WxtgNQLmCGS2N8IEk7MNA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b27c0f6-a563-4cf9-1c94-08de7f6c799c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 12:48:20.6630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cTPB+C1c6T9BJ02uCgXDcBdxHR/6CDNw0khw5l/hgFQrKTRsvYCbtCb6qPlwsLnhsTtRbHzN8V2TksmgQQlpbCq7Vy+PaaxSOaDNORIWooo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4801
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773233304; x=1804769304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xE9Qi+AcyZp3fZMitxtcPTZr6QIxbkUpfSX2v3V1OG0=;
 b=M0TxS6wuWTka0u8Ooed9Q/VwWI/hsICpPTBebKmR/BlU0PjBOd8jsorr
 D6NHo1wTMDtX/p2q8F91KiQcUP9QkQXkhthuRbHRSVDPWtXmUx33wQP6+
 HMembe4+5LiSIFxv8dOAzQS/25YLhMXK8ak3eaPpPRnz50zA1uGCyxw4j
 iVVxdFV4Eh0ThE9NstLWF+RfX2lV8zsbLhyJJFbe/4xSS5q3GwPnvGONK
 P1qI4wZzSEP9ODME/L3JbsDjZhBZykTpX3jXzzxHKzIWMYo1waPedazmp
 nY6fX2pyv7TrxM3b7joOQqT17+UjAhGBzzX2l62w3CokZujM8dHWKG08c
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M0TxS6wu
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
X-Rspamd-Queue-Id: AB32E263D5A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dawid.osuchowski@linux.intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,PH0PR11MB4904.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,intel.com:email]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEYXdpZCBPc3VjaG93c2tpIDxk
YXdpZC5vc3VjaG93c2tpQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBNYXJj
aCAxMSwgMjAyNiA5OjA3IEFNDQo+IFRvOiBLb3JiYSwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5r
b3JiYUBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzog
bmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0
XSBpY2U6IGZpeCBwb3N0ZWQgd3JpdGUgc3VwcG9ydCBmb3Igc2lkZWJhbmQgcXVldWUgb3BlcmF0
aW9ucw0KPiANCj4gT24gMjAyNi0wMy0xMCAxMjowNiBQTSwgUHJ6ZW15c2xhdyBLb3JiYSB3cm90
ZToNCj4gPiBPbiBFODMwLCBQVFAgdGltZSBhZGp1c3RtZW50IGNvbW1hbmRzIHNlbnQgdmlhDQo+
ID4gU0JRIGRvbid0IGdlbmVyYXRlIGNvbXBsZXRpb24gcmVzcG9uc2VzLCBjYXVzaW5nIHRoZSBk
cml2ZXIgdG8NCj4gPiB0aW1lb3V0IHdhaXRpbmcgYW5kIHJldHVybiAtRUlPLCB3aGVuIHRyeWlu
ZzoNCj4gPg0KPiA+IHBoY19jdGwgZXRoOCBnZXQgYWRqIDIgZ2V0DQo+ID4gZG1lc2c6IGljZSAw
MDAwOjFhOjAwLjA6IFBUUCBmYWlsZWQgdG8gYWRqdXN0IHRpbWUsIGVyciAtNQ0KPiA+DQo+ID4g
QWRkIHN1cHBvcnQgZm9yIHBvc3RlZCBtb2RlIG5vdCB0byB3YWl0IGZvciBjb21wbGV0aW9uIHJl
c3BvbnNlLg0KPiA+DQo+ID4gRml4ZXM6IDhmNWVlM2M0NzdhOCAoImljZTogYWRkIHN1cHBvcnQg
Zm9yIHNpZGViYW5kIG1lc3NhZ2VzIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IEtv
cmJhIDxwcnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT4NCj4gDQo+IEhleSBQcnplbWVrLA0KPiAN
Cj4gU2ltaWxhcmx5IHRvIHdoYXQgSSBwb3N0ZWQgaW4gcmVzcG9uc2UgdG8geW91ciBwYXRjaCAi
W1BBVENIIGl3bC1uZXh0XQ0KPiBpNDBlOiBQVFA6IHNldCBzdXBwb3J0ZWQgZmxhZ3MgaW4gcHRw
X2Nsb2NrX2luZm8iLCB5b3UgYXJlIG1pc3NpbmcNCj4gUmV2aWV3ZWQtYnkgdGFncyBmcm9tIGlu
dGVybmFsIHJldmlldy4gSSBzZWUgeW91IGRpZCBzZW5kIGZvciBpbnRlcm5hbA0KPiByZXZpZXcg
YnV0IG5vYm9keSBhY3R1YWxseSBwcm92aWRlZCBhbiBSQiB0YWcgKGF0IGxlYXN0IG5vdCBkaXJl
Y3RseSBvbg0KPiB0aGUgaW50ZXJuYWwgbGlzdCkuDQo+IA0KPiAtRGF3aWQNCg0KSGksIHRoYW5r
IHlvdSBmb3IgdGhlIHJldmlldyEgWWVzLCBJJ3ZlIGJlZW4gYSBiaXQgdG9vIHF1aWNrIC0gZ290
IGludGVybmFsIHJldmlldywgYnV0IGRpZCBub3QgcmVjZWl2ZSByZXZpZXdlZC1ieSB0YWcuIFdp
bGwga2VlcCB0aGF0IGluIG1pbmQgbmV4dCB0aW1lLg0K
