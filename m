Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JEaLSE3e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:32:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14079AEB8B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:32:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B127F60870;
	Thu, 29 Jan 2026 10:31:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OoTAFJKWUMv1; Thu, 29 Jan 2026 10:31:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A12160872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682719;
	bh=agdZke3rYgh19x2nvRkLZDUDgwA0EyLLbF5w+hgrGgs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nu7cXOTYQA21p9LqXbpp8m/8sx7AhxWhVsqEZ1T/pjTdUBYK9S4IGhWzB22M8/7Wv
	 5frkFXVuGGzdHPtPDiw5KUSMymvgJ07SWGhoKXtt4CA7+3zFs7VL1bFdw5KEZGIRS4
	 jlcanTOLO5xZEpvCuP7nfApewxBI5KuNV9PTVjeu7OwA6kddHvuOh4Dq2d+y+MZWvT
	 F5jBc4e0ftyiEfk4HjXRiq8gVRjEiE7Zfbe84rOfsDQEqnO5poA+6RAnoD078t+9yw
	 JGMfQlcMMJKzQa59ceH9ubOlsSHdfKOil93BR+LwhZOcIO/NQRnjEUHBtfrw03YGsl
	 B/f/ZMHxCViYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A12160872;
	Thu, 29 Jan 2026 10:31:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0432F118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E94716086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:31:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7Qv1L6B1IV3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:31:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F401C60866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F401C60866
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F401C60866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:31:55 +0000 (UTC)
X-CSE-ConnectionGUID: Ojh0fCJsSSK0j9VhLthrPQ==
X-CSE-MsgGUID: CldncuFLTcqal4BIXqYZtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81552603"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="81552603"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:31:55 -0800
X-CSE-ConnectionGUID: Puj5nZw/Q0i3wndMLJRDew==
X-CSE-MsgGUID: s/l6wR7WTxmADZCLl4Ly0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213090082"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:31:55 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:31:54 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:31:54 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:31:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zb3LismlS28vNyBeBYXb3wuzn9CmWbiWz1z7J6SE+VCCch3PcBv8JC36r+s6oCMz/lNnKJ1H2FI2G/X3SDvY+YRdpKxlZE6eEf49H//zNhsmfEWQ9+eV3V3SiqVnFiBbzfuMyrZHYdNhnigeTIMXizOsucBc1CzMOyiMsjpo1Q0XFR0Thx7DwR7ZO/xdOCRPP2TSBiGZXvpZJ1VRHc9sPI7fXsTTM4ev16POB1CmG4cb4jxzIrAcwLQh31PKQjLtoyzBSXvZpc5GpX0PLhWXrhiewuXDUxlQLSUsYIYqS3JyG6WVUZ4DiHHeG6/Fg9qcT73MoEHaAL9Gwqc6XlfRwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=agdZke3rYgh19x2nvRkLZDUDgwA0EyLLbF5w+hgrGgs=;
 b=NS/9YD9k0am1aLob9pfTQGjIcpBvqVrnLw37Kj5tLJHK3tiHGZOiECsllZ1lk7oJt5DcPxJ6xjxhvjAvv081V1Aj/pHprFEkCm2urUM7c5pODTatZhs2g6ZmgysK0dpM1Oq1jOs3R6LLE8Okw6pHHAnyQl/0AGygBnIkiylceZrh7lLBc3kWzuLHr1SPmjB82OxJFY9hnc+p+x3yzK62mQNp3+DCcSTtBnHcS9XPqwD12AyH3o+zD600crfiX/xRe6eejd/UdQVe4i2P1CFaIZ5Jmaz3V7O68ZkfUPZHrRx3awqh+gL7KQLGb0pJVOOLugVq7IziSxZKTr4vfWUHvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:31:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:31:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 17/30] docs: kdoc_re: don't
 recompile NextMatch regex every time
Thread-Index: AQHckPaFQ08DpSNTh0KD+gPTUCYm1LVo8voQ
Date: Thu, 29 Jan 2026 10:31:46 +0000
Message-ID: <IA3PR11MB89867B010E36B682F10C1F44E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <168e559a46713f390c2984fc1c11e16e552ab0c1.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <168e559a46713f390c2984fc1c11e16e552ab0c1.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: 0890df10-89ad-4654-8c43-08de5f219adc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ejlRbW4xL1JOeUpZRjdlL05hcDlyTG5QMVQwQnkyYVBUUHlTOGxRQVFXc1lZ?=
 =?utf-8?B?V2NlWHJYbXkzOHVRb24xQ1N5WVBhODRBTnVSbVl0QldMSGNxbkw1K0xVZU5P?=
 =?utf-8?B?Z01pQ0RyMExQa21YNUdCeFA2SVNDYmZubXJSeWFISEduc0dwVXpyV3Q0czl1?=
 =?utf-8?B?TXZ1TjE5NVdlNC9QMm02NEtIZmNVRU1naEtiUENkLzNDTmNjcGIyZmdDOG1E?=
 =?utf-8?B?TXAwUHdheFpLcnA5MUVBVTc5R0l2U21GTURQaXBZcHhXbk5YaEFMNVpVVnJH?=
 =?utf-8?B?eFZ1SmlGMjRHYWFMM0JvWlgvTkNsNGJGTW5yVUsrbEQ5RlU0UUQ1RDBNRUhV?=
 =?utf-8?B?NmZwRUJramhaVWdkSXlETFBHaTdYZnRBcStpMDZNQTJJN25rRWdPVGxQRXZa?=
 =?utf-8?B?NklqL0dSbVhraWFpSm8wbEY5amhkSEgrb3VpY3JpWThFcnpMaXhmOHRsa3NE?=
 =?utf-8?B?Y1RrQmQrRzJHb09RY2QreUY3eXBnOEdYMFA3bWhGQ0tHQXVrclprVFF1cC8w?=
 =?utf-8?B?UFhnVys1YjhuSitEMEdTbE1KakRCZG5jV2RYSFYwQ2VrRldydHI5RzlyWDNF?=
 =?utf-8?B?US9qa2F5N2hCeWxLVWZITm1sTHgrUkhaeVYwcm1oZEduNXlzeFFOSklpRTRr?=
 =?utf-8?B?a1liTUNyOGVuTkROREZuUEczbGY3b1hKMzhMSk1tbEZmVDNqSU5PQUdpMWV1?=
 =?utf-8?B?L0R0OXc0eG1LYTA5dU96M0lWZExLcjQyOWNMS1QyQkp5TVpOYnE5bmhYcDha?=
 =?utf-8?B?cnBNdUFVakJkemRCTnZHeFo4NWJSWUJVNW5wS2FNRHhBeGtadkkxeUV4Z3R1?=
 =?utf-8?B?ZlQwUjk4SkpDNkFzc0liOEc3dTlzVDB4R3NGMzlya1NKS2FEK2g5L042eEx4?=
 =?utf-8?B?SVhCZEFzbDJjT01KRFJOc3habXNkeStBNW05ekduVFpvYjlwdEhvM2NWOWxp?=
 =?utf-8?B?ZGx2dkVUcnkzY2VtcXIvTzh0NzVMdVZ5V2FhM1VrSkdKa3JRUzhrVjBGQ2NX?=
 =?utf-8?B?aE8vTG41bW5JK0Qza3RSd3R2UkdyOUFSazhvcklBNXgrZUFER0NWaTM1M2Vh?=
 =?utf-8?B?ZHZQdkxTa2QxUGU0dVN1QU4ybUJqSDY0cGRkU3VkMzN2SEg4WHlFblhLWm9W?=
 =?utf-8?B?QVNacWN5b3JWb0VvWUlUS2dGdFVCdWdlTUtQdHowVVkvNDdLSWFWbmFNdXdV?=
 =?utf-8?B?T2FPR2t6alV3SnI1T01uR1lXWDRlYlNSMWJaNFdQRUtqNW0veFZDaEFxOGxF?=
 =?utf-8?B?dkwwZGlOV1F5VDdwV1RKelk0Q094MzVINXk5bGlpdUtXYlV1STcyL1dMQVRH?=
 =?utf-8?B?OVBaUmlDd3FPR09Ja2ZOczQ5RmRYV0FwMDJmTUQ4YUJkcFZZbE5iYllKZTdj?=
 =?utf-8?B?MDg1Zjd0eDhBVFlNYUs2TDBLeUpGOGZYWkJPWVYwVUVtT3ExcWVvK1pYdjMv?=
 =?utf-8?B?dWZERlpGTzk5QkdFQ0hYU09OQXl2YmVOZU0xVXk0elhmT2RTVG9TZno3M0tx?=
 =?utf-8?B?d1MrVjI5Z0F1VFVkV2dVRms0TGtDWHV4b0Z0UkpKeGhkVmdSV3RiTkpFOThQ?=
 =?utf-8?B?clJOM1V3bEcwYWtkdkxSMHlPdGhJOVZNckZqNm1HMGNKVmF6YnZiZXZTUVh4?=
 =?utf-8?B?elA2VmtjYlowZGY5aG1wVUoyamk0MUFvSTRlL0xjZEd5WmxJeG83bjdDWThz?=
 =?utf-8?B?Qkl6LzNFNW0yM3hqMzNrcHZFaWRaZzJ1UlRWT2tzb2hnMmtmbFBKdm1yWTZU?=
 =?utf-8?B?RGNkSmZ4dHFIRU5Vdk9iS2lHa3Y2Rk4xOFJad1MrRE54WTgyR1ZYSzZidHJL?=
 =?utf-8?B?azVtcHlDNDQ1TENxODhPNjVuMGtTNi9CM2lxNkc0aWh4UWdUaDhqemNzaEFm?=
 =?utf-8?B?ZzF4VS95cWJCb1Ywa25VNnoycjFPZ1hLdEVNWDd6ZGNzYzFJTDB6VUFNKzIr?=
 =?utf-8?B?MTNJTkRuQkxQT1NHb3FzdkVwbk5EQjhoWHpzSEZpRkg3NXA0RlY0OFBOSXBn?=
 =?utf-8?B?RmhOeWNXWU91eWNzQ2tLR2RFZW13MEF5bGNMS2xMSEVuV0tlcGFzRGdUeVZv?=
 =?utf-8?B?NVlBSzQ3T29vT0lyTGxUTTFRcUFqWm1YaTRhMXFhMlorTE9ncjhoeDJ4YkdV?=
 =?utf-8?B?QnRuUVNxeTR2VTEzcVRIWmNlRWpBRW83WUdUcHFuK0xkVlh6ZGoyQkh2QWZB?=
 =?utf-8?Q?NWFSTSCwCaQgt1zbC+wZnA8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXFEVnFzZ2ZQRTgwdHdSblE2Q2hxVTVGV1d2Z2U1UjVIVlAzWjZPbUtQQmJZ?=
 =?utf-8?B?Nld4djFFeXJsb1NhZXBjWkkyQlcyWmE2UmZudHJwSWxLcE9LcXJxZXVLZGhH?=
 =?utf-8?B?S1hhVTdOc29vTzJVaFlMODFJSUgyaEdCMjlEdnJYRDNGTE9vNFZydzFqYmFN?=
 =?utf-8?B?ekxHNkJ0eWdxcGpPQmN0NmFMY01SOFhWNVRZY0RPQVAvdy9nMVduUk1RMkl3?=
 =?utf-8?B?RUFqczhDV1FHOHVoamdwelEvOHp0WlpEWjNBQkIwdXBDc29VdWpjK3ZORVBN?=
 =?utf-8?B?YUFnM1EzaXZNMnkwSUhMYUlaZGwyc0dCcW1oU3o3bVV3Vy9OWGpLbXE1c1pO?=
 =?utf-8?B?SDBvbzRnQ2dlTWJ6N0hPd2l1OGxRNjlCVVZYd3duZTRVQnF3ZDZJLy9ZZGxF?=
 =?utf-8?B?dnQ1WUhFQXVPeXZsL0RMclRod21RVEh6WTJwcFZqT3hFalp4VzRKY2UvZC9y?=
 =?utf-8?B?NHhZVStNcmZSWUwvNmRyb0NzVXJCbTJkODgzMXdIb2Z5ZlZ4UFAwK2xUMUhj?=
 =?utf-8?B?MXgyRWtMWEYyeE80RTlFN3FSdHBoTWF2TjdYUUxNK3NNU2xYMnFpVEF6Ty83?=
 =?utf-8?B?aUdUbXUzbXF4NUFDQ3p0NVFnZ09hMy9uQkpmNlhRcXlueFR1N1V2SVZtNFVa?=
 =?utf-8?B?MnVmd3ZiMS9Wb2tWYU9xVGdOc281Y2RqWWxQa1pYU3pmR3lqSDNLaGsxc1Ft?=
 =?utf-8?B?MWEyclZuRkVaeFR3NEZpcjlKQk1lTGcvMVp4dGxXQ0poVG12Rmc3c3kzQkJG?=
 =?utf-8?B?blBPTUhhNHNoODN2bTlsUnlsREtLRlAySmo0dGR1T0cyays3SUN0eFNuTDF3?=
 =?utf-8?B?YldqaW1QUzJhN0xQZEhvazFCYTk5RzhFeDdJdEdYM3BYZFVLbkNEL283cGdG?=
 =?utf-8?B?eS9oTkZZbDFzeTBleTlDb0g3TDFNd2pxV3Rpczg0LzlQTWx1b1U0MkczQ3oy?=
 =?utf-8?B?VFZ5QUdxOGZsQU9pbGlTdjBjZndJVytTUDFTV2RRZUVCVjhNQlpSSmhzK29r?=
 =?utf-8?B?S3FwRlhOdFErTDVLaFNqUUprQzBxOUxNSSszVTRRTlN5Tjl5eXlWdk90WEtG?=
 =?utf-8?B?NXpwVlBZZHNoa2Z5ait5aGp4MXNFTU5PNWJ6bFNYeWl5RDNYM2owdGZhUzhw?=
 =?utf-8?B?c1JINjRLUS9ubjJ0UW04WXZxUUtCa0N5cndqaE5oNm9wL2ZNSzh2bVNQWE1D?=
 =?utf-8?B?N2dzWGdDMUwvaER5Q3hmQ3hFQ2xOYjBCOXp4MFhxVXIyTWVIZnl3aXVQSHU0?=
 =?utf-8?B?Zis0eHlCUUliYkJlRHBBYnhDc1oweHIxRFV0c09XNUlZaGJQOXhMUmRreGpF?=
 =?utf-8?B?eFZFcVk4NzkrRlJ3RmlUMXBpVThlU0FkTWJoeWsyRWpPRUZrbEtndHNWWVdT?=
 =?utf-8?B?NTFCK3dOYUdkVnZSeXVNdWhsVEhoeEwrUFpxNnRqaWhwc0QreXhNTUUwZ3RU?=
 =?utf-8?B?YytqendySVJpR3VXS1hiUy9OZm0yRjg0aEF3anBxMHF3WStXTEhEU2I2ajA2?=
 =?utf-8?B?eFIzRTByS0lGQXdRdkhzSWZWK1d2MVQyQVhOenZ1b24waHhPUzI3VHM1eFdx?=
 =?utf-8?B?U0JWY0ExN05TWnBSa2J4ajdmRncrMHpJUmdXMnJ1d0FaeTJxTVM5T0pBNnJ1?=
 =?utf-8?B?TDRySUxrc0FDSENMWXpzWjBOUmdOcDhOVDFzSGVJZzR1Sjh6MDUreHNwTFVa?=
 =?utf-8?B?cmh3VnBPdEx0UU9Pc3ZRSVJHTWkrSUtyeHk5YU1BWEpxRE9tMTFtb3doWGFq?=
 =?utf-8?B?ZGlRcnRjZGd5aHJjejUwY0s1Sm5KSVpQNmNCRytNeVJxdE1MVzEwcExDalZF?=
 =?utf-8?B?RnZJeEhYTjUzM1lQN0prMGRqTnEwNHdZaFFkVXFyRU8yTzdVUSt4bDJyM0Q4?=
 =?utf-8?B?dFo1OW1SLzdzbDBIeFppVHNpNGxmUUJkWmprY2tHSERlV0JBMGdqcEx5R2F1?=
 =?utf-8?B?SktsL1dNcWZhWDIxNlBOdVFGVHk1dFZSZVoydlZYRWlsdVNTMW5GYjdZdE1X?=
 =?utf-8?B?czVoQTNMbjlkUk5GZU9rMlhnWVBVRjY2NmhkeUpDS3F4c0Y5Z0pERldKZ1R3?=
 =?utf-8?B?V2E2OXBmdTFrRkZnb2YzQjJMME9iNkZuYmwwVk9FSzgyL3dEaU1HMkppL0V5?=
 =?utf-8?B?clZ1ZnNkTjViZW85UVBLdGRwc2JMR0pMSjlKdk9abE00dFJ2Vk9UbmtVZXBC?=
 =?utf-8?B?RVRKT1VZbHFLemFxWEMzQnRsK3hkcE43ZElaVHI3OVNKdllYT0Z6MnIrTVdF?=
 =?utf-8?B?K05GRVY0NGJQSzZub0VXd3JiSVNLSzBrUUtqY3E4RC9COElhSnRFcXV6R0NP?=
 =?utf-8?B?WFE2c0VPTW5aU3FTMGRadk5Ea085aHVCT3RiSEtweldwMVVQdmhWU3hXQ2pM?=
 =?utf-8?Q?kYH3/0Oa7o44RYnc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0890df10-89ad-4654-8c43-08de5f219adc
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:31:46.9452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p2jWD0u01t1jzoCf72cRd9VnW39sY5DkiNbRDCAbvjF2xcMJrbjc+bV9TsnXPn8kjyvq6vATuXKMXU1GboWlgs0/FL59wAIKkj1clwGr6KM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682716; x=1801218716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=agdZke3rYgh19x2nvRkLZDUDgwA0EyLLbF5w+hgrGgs=;
 b=cBxkAPo/j9YCZARJMuaiVxwTxqsJiK7siFDqPJlsdhL6Q1a0eB3m/+k7
 PnNH51CNOW1iUhsW5A3+VCBOBa1+apEnkrdGOCk02ggPdDjIH88xFe63G
 JOs4beO7scNvbYyuvY4AL8q65qLDfifJL3ggNqy1Am7dg4fnlaFT69g+K
 3+JELQU4i6KgOHjIT+zylqLbhWQ/+Emi5tGVZeGVf03cGMT88lo+30t2M
 8efunhCRGju9UbhO2nu4l65oCRFAryScP0+02f4D1KUBDp150dwaJj5PC
 H2K8vPDEq4jScNqxtzDcrN29xORaufMvYtX5nUoK70jK75yy9OT+KZZC9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cBxkAPo/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 17/30] docs: kdoc_re: don't
 recompile NextMatch regex every time
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,lwn.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,infradead.org:email]
X-Rspamd-Queue-Id: 14079AEB8B
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDE3LzMwXSBkb2NzOiBrZG9jX3Jl
OiBkb24ndA0KPiByZWNvbXBpbGUgTmV4dE1hdGNoIHJlZ2V4IGV2ZXJ5IHRpbWUNCj4gDQo+IFN0
b3JlIGRlbGltaXRlcnMgYW5kIGl0cyByZWdleC1jb21waWxlZCB2ZXJzaW9uIGFzIGNvbnN0IHZh
cnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIr
aHVhd2VpQGtlcm5lbC5vcmc+DQo+IC0tLQ0KPiAgdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2Nf
cmUucHkgfCAzNSArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tDQo+IC0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBiL3Rvb2xzL2xpYi9w
eXRob24va2RvYy9rZG9jX3JlLnB5DQo+IGluZGV4IDNmNDA1YWRkY2M1OC4uN2I3ZGRjNTBhYzM2
IDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiArKysg
Yi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBAQCAtOTksNiArOTksMTMgQEAg
Y2xhc3MgS2VyblJlOg0KPiAgICAgICAgICBzZWxmLmxhc3RfbWF0Y2ggPSBzZWxmLnJlZ2V4LnNl
YXJjaChzdHJpbmcpDQo+ICAgICAgICAgIHJldHVybiBzZWxmLmxhc3RfbWF0Y2gNCj4gDQo+ICsg
ICAgZGVmIGZpbmRpdGVyKHNlbGYsICBzdHJpbmcpOg0KPiArICAgICAgICAiIiINCj4gKyAgICAg
ICAgQWxpYXMgdG8gcmUuZmluZGl0ZXIuDQo+ICsgICAgICAgICIiIg0KPiArDQo+ICsgICAgICAg
IHJldHVybiBzZWxmLnJlZ2V4LmZpbmRpdGVyKHN0cmluZykNCj4gKw0KPiAgICAgIGRlZiBmaW5k
YWxsKHNlbGYsIHN0cmluZyk6DQo+ICAgICAgICAgICIiIg0KPiAgICAgICAgICBBbGlhcyB0byBy
ZS5maW5kYWxsLg0KPiBAQCAtMTM0LDYgKzE0MSwxNiBAQCBjbGFzcyBLZXJuUmU6DQo+IA0KPiAg
ICAgICAgICByZXR1cm4gc2VsZi5sYXN0X21hdGNoLmdyb3VwcygpDQo+IA0KPiArIzogTmVzdGVk
IGRlbGltaXRlZCBwYWlycyAoYnJhY2tldHMgYW5kIHBhcmVudGhlc2lzKSBERUxJTUlURVJfUEFJ
UlMNCj4gPQ0KPiArew0KPiArICAgICd7JzogJ30nLA0KPiArICAgICcoJzogJyknLA0KPiArICAg
ICdbJzogJ10nLA0KPiArfQ0KPiArDQo+ICsjOiBjb21waWxlZCBkZWxpbWl0ZXJzDQo+ICtSRV9E
RUxJTSA9IEtlcm5SZShyJ1tce1x9XFtcXVwoXCldJykNCj4gKw0KPiANCj4gIGNsYXNzIE5lc3Rl
ZE1hdGNoOg0KPiAgICAgICIiIg0KPiBAQCAtMTgzLDE0ICsyMDAsNiBAQCBjbGFzcyBOZXN0ZWRN
YXRjaDoNCj4gICAgICAjDQo+ICAgICAgIyAgIEZPTyhhcmcxLCBhcmcyLCBhcmczKQ0KPiANCj4g
LSAgICBERUxJTUlURVJfUEFJUlMgPSB7DQo+IC0gICAgICAgICd7JzogJ30nLA0KPiAtICAgICAg
ICAnKCc6ICcpJywNCj4gLSAgICAgICAgJ1snOiAnXScsDQo+IC0gICAgfQ0KPiAtDQo+IC0gICAg
UkVfREVMSU0gPSByZS5jb21waWxlKHInW1x7XH1cW1xdXChcKV0nKQ0KPiAtDQo+ICAgICAgZGVm
IF9zZWFyY2goc2VsZiwgcmVnZXgsIGxpbmUpOg0KPiAgICAgICAgICAiIiINCj4gICAgICAgICAg
RmluZHMgcGFpcmVkIGJsb2NrcyBmb3IgYSByZWdleCB0aGF0IGVuZHMgd2l0aCBhIGRlbGltaXRl
ci4NCj4gQEAgLTIyMCwxMyArMjI5LDEzIEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiAgICAgICAg
ICAgICAgZXNjYXBlID0gRmFsc2UNCj4gDQo+ICAgICAgICAgICAgICBkID0gbGluZVtvZmZzZXQg
LSAxXQ0KPiAtICAgICAgICAgICAgaWYgZCBub3QgaW4gc2VsZi5ERUxJTUlURVJfUEFJUlM6DQo+
ICsgICAgICAgICAgICBpZiBkIG5vdCBpbiBERUxJTUlURVJfUEFJUlM6DQo+ICAgICAgICAgICAg
ICAgICAgY29udGludWUNCj4gDQo+IC0gICAgICAgICAgICBlbmQgPSBzZWxmLkRFTElNSVRFUl9Q
QUlSU1tkXQ0KPiArICAgICAgICAgICAgZW5kID0gREVMSU1JVEVSX1BBSVJTW2RdDQo+ICAgICAg
ICAgICAgICBzdGFjay5hcHBlbmQoZW5kKQ0KPiANCj4gLSAgICAgICAgICAgIGZvciBtYXRjaCBp
biBzZWxmLlJFX0RFTElNLmZpbmRpdGVyKGxpbmVbb2Zmc2V0Ol0pOg0KPiArICAgICAgICAgICAg
Zm9yIG1hdGNoIGluIFJFX0RFTElNLmZpbmRpdGVyKGxpbmVbb2Zmc2V0Ol0pOg0KPiAgICAgICAg
ICAgICAgICAgIHBvcyA9IG1hdGNoLnN0YXJ0KCkgKyBvZmZzZXQNCj4gDQo+ICAgICAgICAgICAg
ICAgICAgZCA9IGxpbmVbcG9zXQ0KPiBAQCAtMjQ3LDggKzI1Niw4IEBAIGNsYXNzIE5lc3RlZE1h
dGNoOg0KPiAgICAgICAgICAgICAgICAgICAgICBzdHJpbmdfY2hhciA9IGQNCj4gICAgICAgICAg
ICAgICAgICAgICAgY29udGludWUNCj4gDQo+IC0gICAgICAgICAgICAgICAgaWYgZCBpbiBzZWxm
LkRFTElNSVRFUl9QQUlSUzoNCj4gLSAgICAgICAgICAgICAgICAgICAgZW5kID0gc2VsZi5ERUxJ
TUlURVJfUEFJUlNbZF0NCj4gKyAgICAgICAgICAgICAgICBpZiBkIGluIERFTElNSVRFUl9QQUlS
UzoNCj4gKyAgICAgICAgICAgICAgICAgICAgZW5kID0gREVMSU1JVEVSX1BBSVJTW2RdDQo+IA0K
PiAgICAgICAgICAgICAgICAgICAgICBzdGFjay5hcHBlbmQoZW5kKQ0KPiAgICAgICAgICAgICAg
ICAgICAgICBjb250aW51ZQ0KPiAtLQ0KPiAyLjUyLjANCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5k
ciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
