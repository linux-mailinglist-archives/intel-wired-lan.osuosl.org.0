Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A83C99E303
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 11:45:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECD5260888;
	Tue, 15 Oct 2024 09:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9XUGkD7JE0bf; Tue, 15 Oct 2024 09:45:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F8866088B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728985553;
	bh=9DhN7yHa9+kzTR9PVkUNAniiHmXovEaSaFKlhegm74M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8PiovRKjDx7agj2vuJCeT0MEKpttS1Bgh6OEDTnnS5sd0xT8ar7dWrtoOs8clLaZh
	 n++g381zW9PwQYGd4ogO10UApZTanwYOEUgbnDVryuG2GfASIsgtPzW3QcxA340SWS
	 0pIGl5MWzujIeloFf/YZFOebuulRFor0KFEt+rj436w6zCsM1HXunMMY7s4apavP/d
	 LI/xSIEsB2PiQyxNjhPgULg2rfsrXobQB2WmqkelCtHEsdePp8wAYfpHQ4tz+ct0Wl
	 AUEJeRL0ZRR6t6PDgVYgvyXcMJZ5MuD0TVA21XdMTVDDJ/oE1g0p+t4BBKkekkyPIJ
	 FvjM5TCxG7Dyw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F8866088B;
	Tue, 15 Oct 2024 09:45:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3F191BF339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 09:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A23D181193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 09:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_hc_c5IbzFw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 09:45:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 81B018118F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81B018118F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81B018118F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 09:45:50 +0000 (UTC)
X-CSE-ConnectionGUID: LRpjL7B5THKnPAUgLHN//Q==
X-CSE-MsgGUID: bAo70yyxSR2OurQbE0HSqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39489559"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39489559"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 02:45:50 -0700
X-CSE-ConnectionGUID: 3SqFRH6/TMeISbfDOj2jfg==
X-CSE-MsgGUID: 0a9CYneLS1OhQttLubQ/Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="77922299"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 02:45:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 02:45:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 02:45:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 02:45:48 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 02:45:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NZNvdplvQijvqsOwVeZoTzmfWxGxr4tomkm4PKWFPLiGNoyMLPYaESj24uRdJDOuZtan0U5Kg6cbasxf7owb3K/XBJkS+u5/sWjObRFY6n5V8eJ6NUkjIjXyGmroxwCMj1AO3ZKV0EhKLaFWW+l/NQc1b4145heRNeVy5sPBaN9SPySRaz96ty3DKt6ADNF3a4dKabAvmoOfGIKR6a3kHyV5T3W2br+2YIv9ilUJZD8S3ngcpKW3NVoQHWFt6vgUSkiIYZPZtInwQ5CuXPIA2WZ5f1raAx9jyzyjNoKnrbK00b1dyI9+ve0aoSutgrkWGAJelNTxNdJFLKwriGJTOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9DhN7yHa9+kzTR9PVkUNAniiHmXovEaSaFKlhegm74M=;
 b=btWl7XmVlMZYl+/TFxnCzjIr+dsIWa1XrttCnJGQv+UK6twuxYyhVPX/TSRfNW9kUGXOTSlqKwMzTm6VRX45qzFX8lqzQZYa2Eeq3qX8HMJRuyO8FswSBp4KaqYdvUdbHpYsI+EmkVIDXcK7mAYAIz9Lk3ZuolQopUMglmOxajJpgWE/2T70lQFw3ypVia9ZR0AhS5PaW+e6MVto3fyJSSzEFDrl+/0QGNOT0qGaYJZF1GksB4d1BJ9DCtzwcw36UQQcs/ftbpdYiK70h0JCyCjMWxaYgD0QmfyTpJTzFkO/vyFjH6MZzuVtaX8QG+I40VVjrr/UgtKM/ZilnUhN3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Tue, 15 Oct
 2024 09:45:45 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 09:45:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix "Error
 I40E_AQ_RC_ENOSPC adding RX filters on VF" issue
Thread-Index: AQHbHtCLpdcGfqFUkka27Ty2B67vdrKHeaIAgAARUzA=
Date: Tue, 15 Oct 2024 09:45:45 +0000
Message-ID: <SJ0PR11MB586684C1B9995B605D83CF71E5452@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20241015070450.1572415-1-aleksandr.loktionov@intel.com>
 <011cfa1f-d7df-4d38-ba5d-7820176ebf8b@molgen.mpg.de>
In-Reply-To: <011cfa1f-d7df-4d38-ba5d-7820176ebf8b@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|BY1PR11MB7983:EE_
x-ms-office365-filtering-correlation-id: d5a6fa87-fa89-44c1-22be-08dcecfe245e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WEV0ZkkrRmtoUmd2TWxMam0wb2MvWHBUTGd5T2ZmaVB2ZFBQd25JRll4NElk?=
 =?utf-8?B?T3lXbzQ1R25HR1YrQXhXeVhpcWVxbnZhYjJIVi9tVURDdnVrb3pFY0dwcEUw?=
 =?utf-8?B?WWVvUGU2QXl0WitnV0tJaGpkbHNBa0hoMy9JTS9ieHBaK0FaZ0pidElEdU1U?=
 =?utf-8?B?N2V0KzhER2FTcVJxT3R4UjI1Q3dvcFdTV2tiZkxuS3pnMXovVHIvOWl0aEc3?=
 =?utf-8?B?RWRPRFpzclhPMHJPYmhnYldxTTNid3BsWS9UWFZCelRvUlVxRElWVHNrZ015?=
 =?utf-8?B?RGRmT0ZyaDlYL1lTQThpQVIxVmVrVHpjeHJ4dXNFenFrNDVsdXdNd2w4RTA2?=
 =?utf-8?B?VTczQlp5dlpGdDAxdm40SlNwaHRqa016WmdXTnlHVmF0bHMvYU53RjlFclBX?=
 =?utf-8?B?QSt6bDVDY3RORzVTUXJIT1RmaHNLU0hFQUx2QVNnSnlSTThqLytGUU9mTjQ0?=
 =?utf-8?B?MHIyVW81T1pBeSs5YTFFSXlaeG5zNXFjb092ejRNcmpZUWF5T0tXeWhXRlVy?=
 =?utf-8?B?ZWp5dkZJNmFkcDhFNVhEYjFZTDYrWkw4bDF6YmpHTHMxQTlGZVlEbmU5STNi?=
 =?utf-8?B?N2NyRXZKbnRTUXFaVHg1WUlrMVI5aW1XT2pwaFRzT3pXaGI1QU8rcmk1ZEcv?=
 =?utf-8?B?cmJ0THU2SVFycnRnNW1VN0Nmd3dGaDlBNDFOMm9BTGZuQ3k1a3VTeVNJTFF0?=
 =?utf-8?B?UUc5U2piMlpTSFBzN040RUFOZWlaTVduWkp0aGRUbzZxYndRdjhsdlVPQmhT?=
 =?utf-8?B?c1NmVmxvVzk3RlAwaUk3TUdBakRWbStHaTZPT0Z6anpqSk5ibW1mZGdKMDdu?=
 =?utf-8?B?dkdhOHh6eUFHZDBoUzJxeTFqT0pPQTlXbS9CY3NkUVp0M3BBQXpxMENOelo4?=
 =?utf-8?B?cVQwUUFmanV4UDRmQjkvcWljYXZSWUpKTE1YOGxzelJGNzY1MWRyM2lGSDFK?=
 =?utf-8?B?UWdaTHNtcjZDakJud1FlbXZUWWRsTG5FR0FPSFVWL2dCUHVabE4zSyt1R3dN?=
 =?utf-8?B?NTJkMDNEWUp4Rno4Y3g3ckNCZ2t5Vk04U045SXVkanh4TjBJb3YrOUtOQnF6?=
 =?utf-8?B?RUVmQXRhdXhzOWhHa2pwUmpxcDQ4U2llL2tyUmZUSC9qVzQraWFuc1VoNlZ6?=
 =?utf-8?B?SmloZVpucFJGS1BhL2VRUkh2aDNrdjY5Nm1jK1NrZk9TTHFXWEpncUY2L3hr?=
 =?utf-8?B?REgxakgyOWE3MVpQa0cwNFoxcHMzSlg0VXBKemhzQnNub2k5ajdVZHFkYXlB?=
 =?utf-8?B?b2tWTG1jNUFBbk12MlR0dEhzNmkxWHRIMTNTU3AxRUVhWDI1bFFjeUozZVFx?=
 =?utf-8?B?NG0vdzk0ZHlRMTNrM3JPVnVKSG1pTURYWTJxenFWTUUzVGVzNUpKSUpyU2VK?=
 =?utf-8?B?QitPaGtWaGorb2NEcnBwWVY3NGUwRXZTdUF0ODBiQ0JMdS9iN3l1YXNWS05v?=
 =?utf-8?B?bzIwbEREcENzZEh6Q2NKUVlvNDhiZ0ptVVhNWURKMC9uVFg5VjhVTnF5YkEw?=
 =?utf-8?B?cThCTmJjN3hOZjZBcGlXOHJ4YmlVVm11Q2hlTGpyZzN1ODhtMy9yNS8zY2pq?=
 =?utf-8?B?Ni9IMWpjZTF3TkFyVDBoeUwydjl0bzlZN0VvV01CYjhPdmxqajk1SExzeDhW?=
 =?utf-8?B?M2JZcFFPaXl5MFdvZjFLdC85S1RmcW1WYTNVYU5tZGVyMVZnaHhVaXlLRk1S?=
 =?utf-8?B?czFCS2doNi9oTlkvTFdNN0hQdE83Tk9mTmxqenY0bC9ENHE4eFBTT0FCb0ht?=
 =?utf-8?B?dkVFQm40SzFWVGFoQThpMVNGTWNPNjB3OUgwd0Zid2J6SFNyd21MMkkzQ1Vy?=
 =?utf-8?B?Y1U5SW80ZUhvL1JCTWdjZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0pPVDlkSkhmNFV6b1FNZEVGNTA5TkxPVi9IUThvR2p4aXNGL0ZRRExVMEZv?=
 =?utf-8?B?MDY1TU9Kb0hKZkh0YXRTV3NQWXV0S1UyUEFGU1BkZ3UzU0pzM0R5V3ZHTlp5?=
 =?utf-8?B?azFIaDI0S0lpcDR2d1p3NEZMRUp6cDBMTEgzUWg2Wi9PZmdyTThiYVJZUUda?=
 =?utf-8?B?emlQcVUyWWVVTnVXR213MHNFSXplQ3l6UFB0YmloSVB0dVJnVkNoc2tDQ3pk?=
 =?utf-8?B?Rmx1TXduZ2twTE5rWVl3aXVZVUFiNm1BY1gxUDVGYW1aaWJnNnJEN3BGTm5a?=
 =?utf-8?B?eWFBVStEeUpxL0RCU2R0L1lZMW5wQWovN3hvSUJCOGd2ODhYQmNFT0lZVlA5?=
 =?utf-8?B?ZzJ5alNuV3lYSSt5aFlsMGR3b0hGRGNSenYrWklpTjJkNU5NTStRUXpkcE4v?=
 =?utf-8?B?RHdVNCtwOTBiL1U3ZndqYVRsSHYvcy9lK0w2WktqNWpRMm1VMlcvTXhpb0NV?=
 =?utf-8?B?MllkMzhseTBiZ1RaVVI1R1JVVWo4YWpxcTRSSVA2NHBpak9sdDJRQk1qb2xo?=
 =?utf-8?B?ajgwZkxrQjh2emkxUWZ6c0lPSHNRR1h1cVdzek1MZWdzeXIySE9wa0dyN3Zh?=
 =?utf-8?B?dVh1MUtxOC9yaXpPY0FhMFFBU1RGVmduSWFXSHhPSjFvK3FLd1B2TWMxcTV0?=
 =?utf-8?B?SFVKa2xuZWc5eXQ5SStJYkhUU1YzYUtnbWhGT1dyd0g5aUlUNGV1SWI1SERu?=
 =?utf-8?B?OUl5VlVGd3VSWUZ5OWovUW5jQnRiUU5RTkZwVFhqb3BGb2dkandxcUl3ME1C?=
 =?utf-8?B?RXhCeG9tYnVpaWQvd3MyZnREa2lpRDY2WFM5Z2JZc1hYR1FMRU1DNWpqODk3?=
 =?utf-8?B?MnM0VVdtU0prWGhxc1Q3MmVDVG9XdGJwcHJINkZhVE80a254WkNsNEIvTTIy?=
 =?utf-8?B?dVNUa1l4WlhDTCs5Y05WSDdMelQrSCtWRTJjREtjdGdWaS94bGpacFdJd3pQ?=
 =?utf-8?B?V0tOZWZZQmhRRVBKZnp3QTZFbGNhd1p1WVRTaVIwTUxKOXgzV09iRk9QWC9N?=
 =?utf-8?B?d2MzZ2VOelNKSXFtU1dqdkhtbXIwU0kzQ3VzZC94Mk1jbTZyZHlJRXN4YzV1?=
 =?utf-8?B?OTFGeTg4R0h2aS9GSnk0U0FnMEdjOTREQnNxTFJJQ3ZvVXFYUExJS05LOTRo?=
 =?utf-8?B?K1YwVy8yVzg0YVgrWERhNGdDa1JEejEwcWMwSlQvZE5OM3p2TFRydGp4QWR4?=
 =?utf-8?B?ZDVEdUR4aVYrSFVKUFY3S3MyZmUwd2xUYnkzUkQreU9MbU9GQ3U4TFVXLy9r?=
 =?utf-8?B?VFdGSWZvSk1TblQ4TENMUC9aSG5uM3NhbzVnVW1USHZsN0F5SFp2MmpuR3dq?=
 =?utf-8?B?REpWdEExd0tMcThSVG1NakkvUHdlMGR3VXBzL0VQc2EvczZ1MGxMQ1FRUndH?=
 =?utf-8?B?NVRnL2ZDcE10ei9RTjBTSy9pcFBiemFLaUF1NHNDQ0lRKzVzcms1QzN1WVA1?=
 =?utf-8?B?UGxRRVZpMXlKWmorRzlxa2oramlIMHBuZ2h3T2R6VEdpN1ZqLzdsb0grRzMv?=
 =?utf-8?B?UDlqczExektLMmI4YnJ4RXBudHF2NkF2QTBuY3lsZk5zaitpNkZKUEtBZXdR?=
 =?utf-8?B?S3RHcERpcUgra0c2S01lclZHRE5wMU84S2ZWeE10aVpNeEl4QWFRRU9QaU1X?=
 =?utf-8?B?aDMrcDc5a05kcXJhbmNkZ2NkRFF2aXVjcDVKTnVjQTF5SzFpbkMyZFF3TlUv?=
 =?utf-8?B?QThnUk02M1JQcHZtKzQ0cFVDNThabXY3Zm1tQzNoYVdhRGtmVXZWczRCSHg4?=
 =?utf-8?B?anh0ajVNMXVJSUoxNWE2SkFuTGFYNHlYbks5VE9KaEhTZXpkV05MdWVHdEJO?=
 =?utf-8?B?b2lvRXR2N2dON0x0bmNBdG1JYVZ3VytPYUJrRzA2MnlYdVRoSTIySnBRZDFt?=
 =?utf-8?B?RG1haEdMak5PQlhMc0lQa3FQK1VENXNhZjZCVUo3OENaMGNWRXdGMlZBa1lH?=
 =?utf-8?B?ZUVXNVZMeWx6djZPY1Zrb2dMWUtEV0Zpc1NUM1ZQelNtNTBwMFFJTzNRK0tG?=
 =?utf-8?B?MHJUV082emVOaDIrZm5EWDV0V3djOCtCaDVqcjVkV2VFYkxNTkUwNTh1bW80?=
 =?utf-8?B?MVJkRWZqbjA4TXMwclZJSlJRZ0JkL2JSajdCU0NTYWx2QjV1dFJYYTlIaVd6?=
 =?utf-8?B?NXo4ZUVaYkl6bEtHM1lLQVRhNTJWQzIrRlJuck04UTh6d1VpUkNkN25jTHNV?=
 =?utf-8?B?Q3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5a6fa87-fa89-44c1-22be-08dcecfe245e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 09:45:45.5246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JdjDK5doWpfmJLVuU7up+8LMTiq+27l1USOAqiaMIVaCvJaWDSt8wExXxXZISCPGcEVXBdXoXnxykEXmcP6a9+ko4d+kxSsU8/9cszwoqXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728985551; x=1760521551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9DhN7yHa9+kzTR9PVkUNAniiHmXovEaSaFKlhegm74M=;
 b=P3nHvXupMRV5n/dT/WO9EzsqE6uBt5Z9vz1QS5yclUcEUHo1qKvsqAF3
 oiXTh1pAIWh+c9fezO4rB876HEXio1lKEez032jkojrh5ZhTSDQRKzQIX
 pzSH5oxsacsYro8tFBmlhDZUjrfYS+29hWqkFWUgmpk2D3EvX2ingTlGg
 sP1wSImDE1QV5Lo/MHcA6PMnv0VWVJPpW0gwTYVmgOsaEjlJr92e2CNJX
 MuEHHRnFmmHmG9DOXmI7TDCqGxRzmcsRwpkH51BDw6UnhSlVvowV5cY2y
 p6jiKK85AR9AB5AN4VUlEL7lAaW9CqDI/6NdJTyzya//L1P8fmAVaCo8j
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P3nHvXup
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix "Error
 I40E_AQ_RC_ENOSPC adding RX filters on VF" issue
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAxNSwgMjAyNCAx
MDoyNCBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXll
biwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wt
bmV0IHYxXSBpNDBlOiBmaXggIkVycm9yDQo+IEk0MEVfQVFfUkNfRU5PU1BDIGFkZGluZyBSWCBm
aWx0ZXJzIG9uIFZGIiBpc3N1ZQ0KPiANCj4gRGVhciBBbGVrc2FuZHIsDQo+IA0KPiANCj4gVGhh
bmsgeW91IGZvciB5b3VyIHBhdGNoLiBGb3IgdGhlIHN1bW1hcnkgSeKAmWQgbWFrZSBpdCBtb3Jl
IGFib3V0IHRoZQ0KPiBhY3Rpb24gb2YgdGhlIHBhdGNoIGxpa2Ug4oCcQWRkIGludGVybWVkaWF0
ZSBmaWx0ZXIgdG8g4oCm4oCdLg0KPiANCkdvb2QgZGF5IFBhdWwNClNvcnJ5LCBJIGRvbid0IGdl
dCB5b3VyIHBvaW50LiBUaGlzIHBhdGNoIGZpeGVzIGJ1ZyB0aGF0IGNhbiBzdG9wIHZmcyB0byBy
ZWNlaXZlIGFueSB0cmFmZmljIG1ha2luZyB0aGVtIHVzZWxlc3MuDQpUaGUgZmlyc3QgYW5kIG1v
c3QgdmlzaWJsZSBlZmZlY3Qgb2YgdGhlIGJ1ZyBpcyBhIGxvdCBvZiAiRXJyb3IgSTQwRV9BUV9S
Q19FTk9TUEMgYWRkaW5nIFJYIGZpbHRlcnMgb24gVkYgWFgsLi4uIiBlcnJvcnMgZnJvbSBGL1cg
Y29tcGxhaW5pbmcgdG8gYWRkIE1BQy9WTEFOIGZpbHRlci4gU28gSSd2ZSBtZW50aW9uZWQgaXQg
aW4gdGhlIHRpdGxlIHRvIGJlIGVhc3kgZm91bmQuDQpJIGRvbid0IGFkZCBhbnkgZmlsdGVyIGlu
IHRoZSBkcml2ZXIsIHdlIGhhdmUgdG8gYWRkIG9uZSBtb3JlIGludGVybWVkaWF0ZSBzdGF0ZSBv
ZiB0aGUgZmlsdGVyIHRvIGF2b2lkIHRoZSByYWNlIGNvbmRpdGlvbi4NCg0KPiANCj4gQW0gMTUu
MTAuMjQgdW0gMDk6MDQgc2NocmllYiBBbGVrc2FuZHIgTG9rdGlvbm92Og0KPiA+IEZpeCBhIHJh
Y2UgY29uZGl0aW9uIGluIHRoZSBpNDBlIGRyaXZlciB0aGF0IGxlYWRzIHRvIE1BQy9WTEFODQo+
IGZpbHRlcnMNCj4gPiBiZWNvbWluZyBjb3JydXB0ZWQgYW5kIGxlYWtpbmcuIEFkZHJlc3MgdGhl
IGlzc3VlIHRoYXQgb2NjdXJzIHVuZGVyDQo+ID4gaGVhdnkgbG9hZCB3aGVuIG11bHRpcGxlIHRo
cmVhZHMgYXJlIGNvbmN1cnJlbnRseSBtb2RpZnlpbmcgTUFDL1ZMQU4NCj4gPiBmaWx0ZXJzIGJ5
IHNldHRpbmcgbWFjIGFuZCBwb3J0IFZMQU4uDQo+ID4NCj4gPiAxLiBUaHJlYWQgVDAgYWxsb2Nh
dGVzIGEgZmlsdGVyIGluIGk0MGVfYWRkX2ZpbHRlcigpIHdpdGhpbg0KPiA+ICAgICAgICAgIGk0
MGVfbmRvX3NldF92Zl9wb3J0X3ZsYW4oKS4NCj4gPiAyLiBUaHJlYWQgVDEgY29uY3VycmVudGx5
IGZyZWVzIHRoZSBmaWx0ZXIgaW4gX19pNDBlX2RlbF9maWx0ZXIoKQ0KPiB3aXRoaW4NCj4gPiAg
ICAgICAgICBpNDBlX25kb19zZXRfdmZfbWFjKCkuDQo+ID4gMy4gU3Vic2VxdWVudGx5LCBpNDBl
X3NlcnZpY2VfdGFzaygpIGNhbGxzIGk0MGVfc3luY192c2lfZmlsdGVycygpLA0KPiB3aGljaA0K
PiA+ICAgICAgICAgIHJlZmVycyB0byB0aGUgYWxyZWFkeSBmcmVlZCBmaWx0ZXIgbWVtb3J5LCBj
YXVzaW5nDQo+IGNvcnJ1cHRpb24uDQo+ID4NCj4gPiBSZXByb2R1Y3Rpb24gc3RlcHM6DQo+ID4g
MS4gU3Bhd24gbXVsdGlwbGUgVkZzLg0KPiA+IDIuIEFwcGx5IGEgY29uY3VycmVudCBoZWF2eSBs
b2FkIGJ5IHJ1bm5pbmcgcGFyYWxsZWwgb3BlcmF0aW9ucyB0bw0KPiBjaGFuZ2UNCj4gPiAgICAg
ICAgICBNQUMgYWRkcmVzc2VzIG9uIHRoZSBWRnMgYW5kIGNoYW5nZSBwb3J0IFZMQU5zIG9uIHRo
ZSBob3N0Lg0KPiANCj4gSXTigJlkIGJlIGdyZWF0IGlmIHlvdSBzaGFyZWQgeW91ciBjb21tYW5k
cy4NClNvcnJ5LCBJJ20gcHJldHR5IHN1cmUgaXQncyBxdWl0ZSBpbXBvc3NpYmxlIHRvIHJlcHJv
ZHVjZSB0aGUgaXNzdWUgd2l0aCBiYXNoIHNjcmlwdHMgLypJJ3ZlIHRyaWVkIHJlYWxseSBoYXJk
Ki8uIFJlcHJvZHVjdGlvbiBpcyByZWxhdGVkIHRvIHVzZXItc3BhY2Uva2VybmVsIGNvZGUgd2hp
Y2ggbWlnaHQgYmUgbm90IG9wZW4tc291cmNlZC4gU28gYXMgSSd2ZSBleHBsYWluZWQgaW4gdGhl
IGNvbW1pdCB0aXRsZSB0aGUgcmFjZSBjb25kaXRpb24gcG9zc2liaWxpdHkgdGhhdCB3YXMgaW50
cm9kdWNlZCBmcm9tIHRoZSB2ZXJ5IGJlZ2lubmluZy4NCg0KPiANCj4gPiAzLiBPYnNlcnZlIGVy
cm9ycyBpbiBkbWVzZzoNCj4gPiAiRXJyb3IgSTQwRV9BUV9SQ19FTk9TUEMgYWRkaW5nIFJYIGZp
bHRlcnMgb24gVkYgWFgsDQo+ID4gICBwbGVhc2Ugc2V0IHByb21pc2N1b3VzIG9uIG1hbnVhbGx5
IGZvciBWRiBYWCIuDQo+IA0KPiBJ4oCZZCBpbmRlbnQgaXQgYnkgZWlnaHQgc3BhY2VzIGFuZCBw
dXQgaXQgaW4gb25lIGxpbmUuDQpPaywgSSdsbCBmaXggaXQgaW4gdjINCg0KPiA+IFRoZSBmaXgg
aW52b2x2ZXMgaW1wbGVtZW50aW5nIGEgbmV3IGludGVybWVkaWF0ZSBmaWx0ZXIgc3RhdGUsDQo+
ID4gSTQwRV9GSUxURVJfTkVXX1NZTkMsIGZvciB0aGUgdGltZSB3aGVuIGEgZmlsdGVyIGlzIG9u
IGENCj4gdG1wX2FkZF9saXN0Lg0KPiA+IFRoZXNlIGZpbHRlcnMgY2Fubm90IGJlIGRlbGV0ZWQg
ZnJvbSB0aGUgaGFzaCBsaXN0IGRpcmVjdGx5IGJ1dA0KPiA+IG11c3QgYmUgcmVtb3ZlZCB1c2lu
ZyB0aGUgZnVsbCBwcm9jZXNzLg0KPiANCj4gUGxlYXNlIGV4Y3VzZSBteSBpZ25vcmFuY2UuIFdo
ZXJlIGlzIHRoYXQgZG9uZSBpbiB0aGUgZGlmZj8gRm9yIG1lIGl0DQo+IGxvb2tzIGxpa2UgeW91
IG9ubHkgcmVwbGFjZSBgSTQwRV9GSUxURVJfTkVXYCBieQ0KPiBgSTQwRV9GSUxURVJfTkVXX1NZ
TkNgDQo+IGluIGNlcnRhaW4gcGxhY2VzLCBidXQgbm8gbmV3IGNvbmRpdGlvbiBmb3IgdGhpcyBj
YXNlLg0KPiANCkhlcmUgYXJlIGJlbG93IHRoZSBjb2RlIHdoaWNoIGFkZHMgbmV3IEk0MEVfRklM
VEVSX05FV19TWU5DIGVudW0uDQpBbmQgYWRkaXRpb25hbCBjb25kaXRpb25zIGZvciB0aGlzIEk0
MEVfRklMVEVSX05FV19TWU5DIHN0YXRlLg0KQWxsIG90aGVyIHBsYWNlcyBpbiB0aGUgZHJpdmVy
IGp1c3QgdHJhY3QgSTQwRV9GSUxURVJfTkVXX1NZTkMgYXMgbm90IGp1c3QgSTQwRV9GSUxURVJf
TkVXIGJ5IGRlZmF1bHQuIA0KDQo+ID4gRml4ZXM6IDI3OGU3ZDBiOWQ2OCAoImk0MGU6IHN0b3Jl
IE1BQy9WTEFOIGZpbHRlcnMgaW4gYSBoYXNoIHdpdGgNCj4gdGhlIE1BQyBBZGRyZXNzIGFzIGtl
eSIpDQo+ID4gU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxv
a3Rpb25vdkBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGUuaCAgICAgICAgIHwgIDIgKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMgfCAgMiArKw0KPiA+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyAgICB8IDEyICsrKysrKysrKystLQ0KPiA+
ICAgMyBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5o
DQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gPiBpbmRleCAy
MDg5YTBlLi5hMTg0MmRkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZS5oDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlLmgNCj4gPiBAQCAtNzU1LDYgKzc1NSw4IEBAIGVudW0gaTQwZV9maWx0ZXJfc3RhdGUg
ew0KPiA+ICAgCUk0MEVfRklMVEVSX0FDVElWRSwJCS8qIEFkZGVkIHRvIHN3aXRjaCBieSBGVyAq
Lw0KPiA+ICAgCUk0MEVfRklMVEVSX0ZBSUxFRCwJCS8qIFJlamVjdGVkIGJ5IEZXICovDQo+ID4g
ICAJSTQwRV9GSUxURVJfUkVNT1ZFLAkJLyogVG8gYmUgcmVtb3ZlZCAqLw0KPiA+ICsJLyogUkVT
RVJWRUQgKi8NCj4gDQo+IFdoeSB0aGUgcmVzZXJ2ZWQgY29tbWVudD8gUGxlYXNlIGVsYWJvcmF0
ZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuDQpUaGlzIGlzIGZvciBub3QgYnJlYWtpbmcgY29tcGF0
aWJpbGl0eSB3aXRoIGRpZmZlcmVudCBkcml2ZXIgdmVyc2lvbnMuDQpCZXR3ZWVuIE9PVCwgbmV0
LW5leHQgYW5kIHBsYWluIG9sZCBuZXQuIElzbid0IGl0IG9idmlvdXMgZnJvbSB0aGUgY29tbWVu
dCwgaXQncyAiUkVTRVJWRVJEIj8NCkNhbiB5b3UgcHJvdmlkZSBtZSBleGFtcGxlIGNvbW1pdCBt
ZXNzYWdlIHdoYXQgSSBzaG91bGQgZm9sbG93Pw0KDQo+ID4gKwlJNDBFX0ZJTFRFUl9ORVdfU1lO
QyA9IDYsCS8qIE5ldywgbm90IHNlbnQsIGluIHN5bmMgdGFzayAqLw0KPiA+ICAgLyogVGhlcmUg
aXMgbm8gJ3JlbW92ZWQnIHN0YXRlOyB0aGUgZmlsdGVyIHN0cnVjdCBpcyBmcmVlZCAqLw0KPiA+
ICAgfTsNCj4gPiAgIHN0cnVjdCBpNDBlX21hY19maWx0ZXIgew0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVidWdmcy5jDQo+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMuYw0KPiA+IGluZGV4IGFiZjYy
NGQuLjFjNDM5YjEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2RlYnVnZnMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9kZWJ1Z2ZzLmMNCj4gPiBAQCAtODksNiArODksOCBAQCBzdGF0aWMgY2hhciAq
aTQwZV9maWx0ZXJfc3RhdGVfc3RyaW5nW10gPSB7DQo+ID4gICAJIkFDVElWRSIsDQo+ID4gICAJ
IkZBSUxFRCIsDQo+ID4gICAJIlJFTU9WRSIsDQo+ID4gKwkiPFJFU0VSVkVEPiIsDQo+ID4gKwki
TkVXX1NZTkMiLA0KPiA+ICAgfTsNCj4gPg0KPiA+ICAgLyoqDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+ID4gaW5kZXggMjUyOTVhZS4uNTVm
YjM2MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfbWFpbi5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X21haW4uYw0KPiA+IEBAIC0xMjU1LDYgKzEyNTUsNyBAQCBpbnQgaTQwZV9jb3VudF9maWx0ZXJz
KHN0cnVjdCBpNDBlX3ZzaSAqdnNpKQ0KPiA+DQo+ID4gICAJaGFzaF9mb3JfZWFjaF9zYWZlKHZz
aS0+bWFjX2ZpbHRlcl9oYXNoLCBia3QsIGgsIGYsIGhsaXN0KSB7DQo+ID4gICAJCWlmIChmLT5z
dGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVcgfHwNCj4gPiArCQkgICAgZi0+c3RhdGUgPT0gSTQwRV9G
SUxURVJfTkVXX1NZTkMgfHwNCj4gPiAgIAkJICAgIGYtPnN0YXRlID09IEk0MEVfRklMVEVSX0FD
VElWRSkNCj4gPiAgIAkJCSsrY250Ow0KPiA+ICAgCX0NCj4gPiBAQCAtMTQ0MSw2ICsxNDQyLDgg
QEAgc3RhdGljIGludA0KPiBpNDBlX2NvcnJlY3RfbWFjX3ZsYW5fZmlsdGVycyhzdHJ1Y3QgaTQw
ZV92c2kgKnZzaSwNCj4gPg0KPiA+ICAgCQkJbmV3LT5mID0gYWRkX2hlYWQ7DQo+ID4gICAJCQlu
ZXctPnN0YXRlID0gYWRkX2hlYWQtPnN0YXRlOw0KPiA+ICsJCQlpZiAoYWRkX2hlYWQtPnN0YXRl
ID09IEk0MEVfRklMVEVSX05FVykNCj4gPiArCQkJCWFkZF9oZWFkLT5zdGF0ZSA9IEk0MEVfRklM
VEVSX05FV19TWU5DOw0KPiA+DQo+ID4gICAJCQkvKiBBZGQgdGhlIG5ldyBmaWx0ZXIgdG8gdGhl
IHRtcCBsaXN0ICovDQo+ID4gICAJCQlobGlzdF9hZGRfaGVhZCgmbmV3LT5obGlzdCwgdG1wX2Fk
ZF9saXN0KTsNCj4gPiBAQCAtMTU1MCw2ICsxNTUzLDggQEAgc3RhdGljIGludA0KPiBpNDBlX2Nv
cnJlY3RfdmZfbWFjX3ZsYW5fZmlsdGVycyhzdHJ1Y3QgaTQwZV92c2kgKnZzaSwNCj4gPiAgIAkJ
CQlyZXR1cm4gLUVOT01FTTsNCj4gPiAgIAkJCW5ld19tYWMtPmYgPSBhZGRfaGVhZDsNCj4gPiAg
IAkJCW5ld19tYWMtPnN0YXRlID0gYWRkX2hlYWQtPnN0YXRlOw0KPiA+ICsJCQlpZiAoYWRkX2hl
YWQtPnN0YXRlID09IEk0MEVfRklMVEVSX05FVykNCj4gPiArCQkJCWFkZF9oZWFkLT5zdGF0ZSA9
IEk0MEVfRklMVEVSX05FV19TWU5DOw0KPiA+DQo+ID4gICAJCQkvKiBBZGQgdGhlIG5ldyBmaWx0
ZXIgdG8gdGhlIHRtcCBsaXN0ICovDQo+ID4gICAJCQlobGlzdF9hZGRfaGVhZCgmbmV3X21hYy0+
aGxpc3QsIHRtcF9hZGRfbGlzdCk7DQo+ID4gQEAgLTI0MzcsNyArMjQ0Miw4IEBAIHN0YXRpYyBp
bnQNCj4gPiAgIGk0MGVfYXFjX2Jyb2FkY2FzdF9maWx0ZXIoc3RydWN0IGk0MGVfdnNpICp2c2ks
IGNvbnN0IGNoYXINCj4gKnZzaV9uYW1lLA0KPiA+ICAgCQkJICBzdHJ1Y3QgaTQwZV9tYWNfZmls
dGVyICpmKQ0KPiA+ICAgew0KPiA+IC0JYm9vbCBlbmFibGUgPSBmLT5zdGF0ZSA9PSBJNDBFX0ZJ
TFRFUl9ORVc7DQo+ID4gKwlib29sIGVuYWJsZSA9IGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05F
VyB8fA0KPiA+ICsJCSAgICAgIGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05FV19TWU5DOw0KPiA+
ICAgCXN0cnVjdCBpNDBlX2h3ICpodyA9ICZ2c2ktPmJhY2stPmh3Ow0KPiA+ICAgCWludCBhcV9y
ZXQ7DQo+ID4NCj4gPiBAQCAtMjYxMSw2ICsyNjE3LDcgQEAgaW50IGk0MGVfc3luY192c2lfZmls
dGVycyhzdHJ1Y3QgaTQwZV92c2kNCj4gKnZzaSkNCj4gPg0KPiA+ICAgCQkJCS8qIEFkZCBpdCB0
byB0aGUgaGFzaCBsaXN0ICovDQo+ID4gICAJCQkJaGxpc3RfYWRkX2hlYWQoJm5ldy0+aGxpc3Qs
ICZ0bXBfYWRkX2xpc3QpOw0KPiA+ICsJCQkJZi0+c3RhdGUgPSBJNDBFX0ZJTFRFUl9ORVdfU1lO
QzsNCj4gPiAgIAkJCX0NCj4gPg0KPiA+ICAgCQkJLyogQ291bnQgdGhlIG51bWJlciBvZiBhY3Rp
dmUgKGN1cnJlbnQgYW5kIG5ldykNCj4gVkxBTg0KPiA+IEBAIC0yNzYyLDcgKzI3NjksOCBAQCBp
bnQgaTQwZV9zeW5jX3ZzaV9maWx0ZXJzKHN0cnVjdCBpNDBlX3ZzaQ0KPiAqdnNpKQ0KPiA+ICAg
CQlzcGluX2xvY2tfYmgoJnZzaS0+bWFjX2ZpbHRlcl9oYXNoX2xvY2spOw0KPiA+ICAgCQlobGlz
dF9mb3JfZWFjaF9lbnRyeV9zYWZlKG5ldywgaCwgJnRtcF9hZGRfbGlzdCwgaGxpc3QpIHsNCj4g
PiAgIAkJCS8qIE9ubHkgdXBkYXRlIHRoZSBzdGF0ZSBpZiB3ZSdyZSBzdGlsbCBORVcgKi8NCj4g
PiAtCQkJaWYgKG5ldy0+Zi0+c3RhdGUgPT0gSTQwRV9GSUxURVJfTkVXKQ0KPiA+ICsJCQlpZiAo
bmV3LT5mLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVcgfHwNCj4gPiArCQkJICAgIG5ldy0+Zi0+
c3RhdGUgPT0gSTQwRV9GSUxURVJfTkVXX1NZTkMpDQo+ID4gICAJCQkJbmV3LT5mLT5zdGF0ZSA9
IG5ldy0+c3RhdGU7DQo+ID4gICAJCQlobGlzdF9kZWwoJm5ldy0+aGxpc3QpOw0KPiA+ICAgCQkJ
bmV0ZGV2X2h3X2FkZHJfcmVmY250KG5ldy0+ZiwgdnNpLT5uZXRkZXYsIC0xKTsNCj4gDQo+IA0K
PiBLaW5kIG5yZWdhcmRzLA0KPiANCj4gUGF1bA0K
