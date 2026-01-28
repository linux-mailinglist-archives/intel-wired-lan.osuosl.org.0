Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MK0IC71Lemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFE7A724A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28228607B8;
	Wed, 28 Jan 2026 17:47:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ebcADDMet6g; Wed, 28 Jan 2026 17:47:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98C3A607BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622458;
	bh=Os235nzZAbdaOH7M6O+DAy/ajGo/kOiYfQaohvNGhao=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nG1haN2u44hUJfV7ZOQn2pMZl/OeIcZHPzfkusiZGUHjYq0XRF/JHCk2fKL6NxrVB
	 S1B2tD5zsQJy2eq/l/YaNyHudptnV4DBFbKDnn6uTdRxNF3byS7Jar+Bi9NSgVLCDx
	 g4EMCl1vRLA0uimqkRCFwkl5IxESVITdhszUqsPURc2UWl6F/oOhYl04TfUaWZMB2w
	 svPDmp4VCivWejdrpg5Xch/wh/1oc5K7DF/Y7BkZzWx+oWJzHSP6yfUops+7GddEtF
	 reJMGZFwk3/dyWC1qewjAl3Hm2bci1Ov0ENZXZRswic1PauncSihGZVy1bWrbKRr+W
	 9Cag63mPCQPgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98C3A607BE;
	Wed, 28 Jan 2026 17:47:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BB79C1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAB7640184
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a3XjV6OvVQhr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:47:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7CA54400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CA54400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7CA54400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:35 +0000 (UTC)
X-CSE-ConnectionGUID: rTXV4n76SVSNrcZfSM371w==
X-CSE-MsgGUID: qlTNB+7PTUSzWdiOwSOcNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70897953"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70897953"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:35 -0800
X-CSE-ConnectionGUID: Am1EbgLESJmczmfyGfAFSQ==
X-CSE-MsgGUID: 368u1rb0Qh62q/BeUdocbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213196846"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:35 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:34 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:47:34 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ujRE6XeGejOquDmR/x5ve407QJzh516bo+faEm36xTtOaCX92dgSAhmXMddbMIZDCtBbg6CEWzy5RoDTeaHAMIJBgxz3wopk0NvLmRUX7mPhOJK30eCAaGKRcIGaI8rGOZFJAMpkAey7RxlZ01QqQlE8UlumRWJXkuYZR5EKYJrlNY+0N7ttb6R7IFU9V2kH2/3ovVTTac9MGfqkuMtZyWX7SPl2AsIb5kTKlwUu1OvypdosqUYsGsXQ3YswP0ayaDDaPKjJSPo70WoKzE4Vyfd4pS9Ci+1S/+083WX3AdoOM+mHD1NySzOVmE6sxRzGYo0AArlExj5tuxyB6c4pwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Os235nzZAbdaOH7M6O+DAy/ajGo/kOiYfQaohvNGhao=;
 b=MOlFTmU386EOQbXO7L3WBWTknBXfIOrzWb48KDwU7LrWagulX8lJ5xT6Vz8LBQnQfG8gZB6muSncICU6e+gY7ulX3xiLKP2kDo545c6Cky8kW/DeAwafj7XSn8bTzr6KN3rpKEqY+LH7GgwVLPYBAjWZ0gZPHPSj37q1M5YElm10Ta6Jyl9JwbMFgjJwTCt59b9BMnQyIQpbGQtgPtYSyRyZwJqWaBpwmbVznB14d79QuW3sHZrqqoaYTbT3PyMvk48xn1BocbZU48PaEKr3rOZ1T7AURDmahwngAa4gjfNu2Q8GSvRPzB7PXpbF1KZCEoze9I1DAdDWhMbsUX4sOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:47:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:47:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 13/25] docs: kdoc_parser: add
 support for LIST_HEAD
Thread-Index: AQHckHZhfD6OKjn/oku/SrWcfZ+evbVn22Rw
Date: Wed, 28 Jan 2026 17:47:31 +0000
Message-ID: <IA3PR11MB8986CB79865409CE50F0AF4DE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <7a254f627ed79e2a7ffaf3e91bbb5ab269595d20.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <7a254f627ed79e2a7ffaf3e91bbb5ab269595d20.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: 5ea0957a-49c9-4cb2-ec08-08de5e954fe7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MHFVTjBHOGNjQncvWUFQY1pIcFl0MU80d3FYaUY5SU1EaGFkWXNTZmR6VWJx?=
 =?utf-8?B?OUFiUWxxQWgwQWp1QmppOVlXcWttQklBMSs4ZDZGdjcrWjhSQXBoUHp3cEtW?=
 =?utf-8?B?ZFNySVNSWkVGeWhvT2dNMVlMUnB3QmlZWWE5ZHNjRWMzdFFhS1JSZUtGSVpO?=
 =?utf-8?B?WFhYUDZZbGQ1eGRqb21pWjdjM1pvR01zODFSYnJLVEV0dS9kU0VRNEpTZW1a?=
 =?utf-8?B?ZnlHVGRWQTN6bzBuZEIvaXgrWUNDcmpZam5qLy91SXhPMjJ5M3p4M28yVFNr?=
 =?utf-8?B?SVNRY0J5YnRHSWpMVk9GL1RoVGl0dmJ1RFVjM1N1TXJHWEtxMUJ1UENJOFFY?=
 =?utf-8?B?N05EcGlzRGc5V3pvZGNNa1RmTGZrcUJBMlBNQ2thdEZDRXhML3l0djA2YVJE?=
 =?utf-8?B?d1hvV0RrNlhZeFk3NTZtRUgraHU1VVZ3OUs0ZitqT2hrcW5LSjlEMDZJMzdL?=
 =?utf-8?B?bkJhUGFCMXBJK1FlMFVidUJkUzVCalZYMXpWeU9haWxyaHRJL3VGRlo0akhW?=
 =?utf-8?B?U0xCcUF2VHdSMExGMno5Qm5QZXZ5bWlhcmpMTGdRL0NGUmNnSkh5bG9SbFBE?=
 =?utf-8?B?aWFFeXluY2t1WG5kZ2xyMVdPT1NiWkQyOWJiTFVsOEpjcjVxMW83eGY4eVM0?=
 =?utf-8?B?RUx2bDZBRHpMSm5tYVp1enlGdmY4QVFXQnhtdjd4cHhzb0RLMDhsTkFvMWsr?=
 =?utf-8?B?UDMxbGQ3TnUwcis0T3BDaGI0TWlTYVRJVEs0djZpSkcrZ3N3QUk4LzVuVlpT?=
 =?utf-8?B?clE2TUM4eXA0Z1NXcnVLSU56WEVjdmxhQWRQelNGaU5GR3hvR3JUT1VwNmZs?=
 =?utf-8?B?NTczK0FPN3NiMjNneUZjQ29qenlBMWpLTHRxd2tlcUozTU1LQXpYdlhCZndk?=
 =?utf-8?B?TTNuRVBlbnBGWHVvdkpGZXRjSTVOTnBuc3ZlMVdGd3hwT1pZWWdxdmNSY3pN?=
 =?utf-8?B?TytiVE5RY29VQW1COG92RWRXK3hhSUJhQVpyUUlpYlJSZTdIRnplMkF3bXpJ?=
 =?utf-8?B?OStCSkpRSWNNRTVkUm1wckNUdmVyMkhxRFE3QWp3RzlCS3kzN1pjVWt4cnBP?=
 =?utf-8?B?R21Td0N1RzVzQVRkaks0Ymc3WHEvNUJtWDJ4RmpTOEs2eTJYWjlsNHhoakxG?=
 =?utf-8?B?cXJzQnhweTFoZHk5VUZ2U0h4MjZ6TVJhNzZCbmFwZEd1YWFXM2oycVpzeUdi?=
 =?utf-8?B?TEJaQ0lQNDlYWlRiWE5UcWpoZTl2M2lBNXhxMDRERkZCL25PSUdydTNpTFZj?=
 =?utf-8?B?cUNvMmxXUm5UeHNiTkxWYzdrUGJjYjUycTRXVzN5dUtjc2ZXakF2V1BpM2xN?=
 =?utf-8?B?YldZSjhBd3VUR2NJb25pUXdMNW9ubFBjaWJMMHByOEVjMnVMZW8vQStvSE41?=
 =?utf-8?B?ZEdVU3I0SmFycmt2R3FGL2FvcmJRZG1kc0hLczNpY0YyQ0kyNDgzS3JHTTZk?=
 =?utf-8?B?OEhiemdqUStvWWNPQmtMTlVQWE93cjBtRkhhZUI1VFlJZVZQREVvQ0ZMcVFy?=
 =?utf-8?B?UzlTL0pjSUdPcmdLUVNqczZONGtYbDlBdDV1bVRjd3JuWUhVM0FiVTBBbkp0?=
 =?utf-8?B?d0F2LzdUbFdKNXJSN1hZaW53S3ZJUVB6a085VE5CZTQxSDNtaTZOdlpPZWlW?=
 =?utf-8?B?QUNmbEltVzRoR3Z6RFN1bnQyMi9RMUZnQ05rckt0SDZ5UktpL1lvb081ZGFS?=
 =?utf-8?B?TzVuL0JkdExPdlIxVlFSMmhQbnluR3F6cEhPamQzTjlWK3hkd2FyYk5oTUdX?=
 =?utf-8?B?LzFtMjhwTENDOXd1UHp1bHBLc0hnMmdYSVVsdUttbm5yY3dMWnp2a1cyZGlY?=
 =?utf-8?B?QjN6MUFkUWVYcmxRQnQ4Rk84Nk1BbUZpaVJWVkQwbEQxNVNiTVVMMVhSa2Fr?=
 =?utf-8?B?Q1pZemZqUmVOelk3TzN6alYyeHpoM2YyNHRNWHJyN29DZHpGd05CaEE2WUFw?=
 =?utf-8?B?c28xblRkSkdpZEwzSWVTZnJMODJDcks4cE01Q203OGNNVFdINTVoak1EN3RR?=
 =?utf-8?B?bC9Tc1F6anNXZVpIaWNiZkZSdGV3QjlKanRpanY5cnFUKzQ2c2tidjA5Z2NO?=
 =?utf-8?B?YmlkUDlXZ0FLcW1Ud0lVVzEwUnhvSis3UTNDRE5ycmVUbHJ4U3VHTXI2bmhn?=
 =?utf-8?B?ZG1jVlVmOWNCc0ZUeVJPQjdGUmJKU251akg3akw4aEo2THJhM0R2MVRpLzFK?=
 =?utf-8?Q?wMllEahZKLQtNHZyq/QErLo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TU12WTg3UXYwcEk1QWJaS2l2ZTBKdGYvQkFBU2NYYlMweFNHdytSUVovVFc4?=
 =?utf-8?B?K3JZTkxRNVlDSDlOZHVSbi9NbVlLbnBFcGVTWWp6cWxRS1JTWk5YNE41eXJH?=
 =?utf-8?B?QXFYNFY1ZG4wbXZWaFdiQUpZdlJjRXJ6dGhnTmQraHByZjMyeGt3azY3QmJX?=
 =?utf-8?B?eFZYQ0txVWIrZlNmMTBGeVVaK1ZJd0ZnTDUxY1BjRTJHQ21wYUlDeVl5cEN3?=
 =?utf-8?B?azRZcEFsb25jRmYzNkdjZk1rQWxQSTk1VXhlNjRuMlRzQVNibE1kMExhN0c3?=
 =?utf-8?B?QzY1TDhnWWRUeU1yd3FreXp0Tm5Kck1CZVNlVXh0bHNhbW9zZnRQTkZzV3d4?=
 =?utf-8?B?OHYzKzJ2U3ZiY2dsMEx0cHVVK3pXMnFtQk9vWlUvNXF6UDRmNnZNb0MxSEt3?=
 =?utf-8?B?VnRwVFFLQVphUEE3TFU1Qzk2MzkwV3Jjajd0SHRldnpUU3pqK3g0Y0QzeVNB?=
 =?utf-8?B?bTQxOGR2OTFzcm1BRnZOeHlWRlliM2NDbTRYeU5Pb1krWjJlU2hrV0FQNEda?=
 =?utf-8?B?VEMrOHJHMloxclIzeW1iWUExNTNzM21BNUo0STl3WlA2VXhWblFBRWNnYUJY?=
 =?utf-8?B?ZFRLdFRMZzVPQU90UFlRbXR0V0VxeWpzeDUxaDFlRTFjNXZXc2xxQ0FLTHBW?=
 =?utf-8?B?VHFvSC9wN3FPVzh3dkdkb000T2V0UEl3bkxzSzlvdDJROXpkbVJhK0ROUkN3?=
 =?utf-8?B?eFJYT0pQTCtqbXd3UzB0alcvZ0JNZENFTVQ5VzhmWXVUUWpPMGo4K2JQMnN3?=
 =?utf-8?B?QkdJK3VIQ0lZdGdRRU03N054U0ZzZ29EZm1vekRDMVFla1NMQUtqYXJVVXBY?=
 =?utf-8?B?STlKZ2JyMUxxYkdGRVI5ODBTUGlxYzZ3UGtVNDFtL1BKYUhscS9FTjZQVUUy?=
 =?utf-8?B?T1BMK01RODJQL3o5dzhIcGRGeHlHNkNKWWtVaEtzc3VmdUVlQ282UGhWQkhP?=
 =?utf-8?B?T3dyWkFEK0pqSWd5eElqaktUeXBmd2plUERZWmhpQ0VseTNsaGtpaWZ1cUNm?=
 =?utf-8?B?NGJTRFh3VW00OHhwWWtvdDdzY2J6d240TXQ5UlVrZjUweis0c3orQlEwOUMv?=
 =?utf-8?B?am02dnNjUU5LUzRnUStwMXFocDdGcVBBcUpGRFJ3YnZEbUZJTlQvV2hra2lC?=
 =?utf-8?B?emVmYVZUVmZnRHNBekd0UkRnZDcra1VONC9DY3QrdzI5NlpIZGJOTnJyNG5W?=
 =?utf-8?B?U0hjbXVESUhKd0RtaXMwejdpRjNqcUdmekVZOVY1M3EzS3RTUGExa1RZR29h?=
 =?utf-8?B?Um5SQ2pBTDZtUHNGcXdNUW5GamZIZHpvUjJHUllyM0xPK0hNWDdTUHJ5aDJ4?=
 =?utf-8?B?REt5ZWNaVW16M1VoUjE0L2RFRHFENEx3VjNvTzdqb2JrNVlWUE80aDJzZWFK?=
 =?utf-8?B?YXFHa0J5emkxTkNuM1gxaFdXRDN6S1oyZlplOUVPYW54RHpweWhBY3hwSHp4?=
 =?utf-8?B?eVlVWkZiekpxVW9LUVkrTHFwZlhjWlc4YTZPUGhiZnpnL1dWdWpJUW1jbnp0?=
 =?utf-8?B?VDVqeDVNSnVnckNrVzRWeWxIeThPZ2pmMFd1Vys2UFJCT1hkZXZZM1hid3pT?=
 =?utf-8?B?ckp5dysrcFVvY3JCRW9UTnFoc1R4ZjNORTZjb2hZa000TWRHM0dwcFhvb1dl?=
 =?utf-8?B?eVdPTXZCSm9OUTFZY3BBRHFYNFFLOCtxMEI3Nk1ZSU1zOXVSZ3ZHRjFIQUFs?=
 =?utf-8?B?QjE5M0NBaEs0VXA3UWNkRUlwUldQNXlaNlU3Sm9sQytxdi9Cb0YwaXVBaGNo?=
 =?utf-8?B?VFNMclpOaEU4dWh6cHlMaDd4TTN0bURSWldBelc3UDVKRXpyVC9HdUVGKzFl?=
 =?utf-8?B?cnkyS3I1dllaekJBWlVveHdKeVloRHhQOFJNaTJjbXlLeXFKK1B2USttVkZs?=
 =?utf-8?B?a3Bka2FBMWlvMVBBb2FCVTJzN3VzYnpNVHhwalNrU0F4NTI1WklBWjVEMVpM?=
 =?utf-8?B?eWJQbkVYOHZhMmpManpaOFVic2dDSVNLYkdYSzZ6ZEJrQzkxWHJUQlYzK1pi?=
 =?utf-8?B?S2ZjcGx2TmtCUHVvTDBqcVEwaWhuYkhhaE5KT3Uwb3VMTWNndHEwTTU3aTQ5?=
 =?utf-8?B?Q29JMndrbW81MURhQUNhL01zR2gxS1N1Q09vUVE5T1ZOWVVaRVR5L21jMWFo?=
 =?utf-8?B?aG9RNmdjbUlhOW5XbnVOWUdqN2ZscTFCaTVHWnRxMk91eW8rMEUwYXpiZjhZ?=
 =?utf-8?B?QnFnNC8xY0NtVHNad0UxQzAwY3pCMjNlZzB2NlEwbDBDejFKZ1dIUXNvRFN2?=
 =?utf-8?B?NDhaamUycWMwRGNRU1pROHJ6YjRyRnVBMzZoSmEwdHhNdDRla2xqOS8zZEhk?=
 =?utf-8?B?NGxQMFVRVCtuMnNRaFdVRFFRRGQrdkF1RTF3YjI4Q3hCUXgxdGMrUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ea0957a-49c9-4cb2-ec08-08de5e954fe7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:47:31.6769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3KlaZz3PNHx6AcnJRU48O9XA5Zk5y2actspiEiAjevso2DsghpU0Qu+85XBMn8jWLAEFngQYh5yEj9d3kKLB5NWaVGKWNoq8Ip3jmrEMCMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622456; x=1801158456;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Os235nzZAbdaOH7M6O+DAy/ajGo/kOiYfQaohvNGhao=;
 b=DxMpGgMgE0ELVQ9ym5SX1Pb3T1mxH8CfFQhUBEsJyPLwuZnmNS2OnfGr
 kI+1E/QEVlH+bT1NnR1TMmqjcSuneYZXUZlniCn0iRepp/k7thVn4yd5Y
 +Ez7ou/Vh3LpNIbJtOAp32BHiPknb5li24jKLEHJZODAm91FHWLpGtOIg
 Lvcv8O4i1D1B0k1aXHcGRe1+lDHfyIbHdjfWvUDIZWn/Yw3bNJst6KKzb
 spOJBlsH53yFfkQ46fIVuPvMAk9Dcu0ydLwQOVpbn8QQPuL4ppyqQmMHt
 zdkbnWwwmOzb0RIahW392GxQY6q9boHYQEWX1Aq+i+5Ql0feEcFVAio2d
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DxMpGgMg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 13/25] docs: kdoc_parser: add
 support for LIST_HEAD
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
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lwn.net:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,auug.org.au:email]
X-Rspamd-Queue-Id: 7CFE7A724A
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxMy8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGFkZA0KPiBzdXBwb3J0IGZvciBMSVNUX0hFQUQNCj4gDQo+IENvbnZlcnQgTElT
VF9IRUFEIGludG8gc3RydWN0IGxpc3RfaGVhZCB3aGVuIGhhbmRsaW5nIGl0cyBwcm90b3R5cGUu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVh
d2VpQGtlcm5lbC5vcmc+DQo+IEFja2VkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFk
ZWFkLm9yZz4NCj4gVGVzdGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9y
Zz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkgfCAxICsN
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rv
b2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBiL3Rvb2xzL2xpYi9weXRob24v
a2RvYy9rZG9jX3BhcnNlci5weQ0KPiBpbmRleCA5MmI1NTAxODk5ODguLjMzNzEwYzRiZTE0NSAx
MDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+ICsr
KyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBAQCAtMjE5LDYgKzIx
OSw3IEBAIHZhcl94Zm9ybXMgPSBbDQo+ICAgICAgKEtlcm5SZShyIl9fcm9fYWZ0ZXJfaW5pdCIp
LCAiIiksDQo+ICAgICAgKEtlcm5SZShyJ1xzKl9fZ3VhcmRlZF9ieVxzKlwoW15cKV0qXCknLCBy
ZS5TKSwgIiIpLA0KPiAgICAgIChLZXJuUmUocidccypfX3B0X2d1YXJkZWRfYnlccypcKFteXCld
KlwpJywgcmUuUyksICIiKSwNCj4gKyAgICAoS2VyblJlKHIiTElTVF9IRUFEXCgoW1x3X10rKVwp
IiksIHIic3RydWN0IGxpc3RfaGVhZCBcMSIpLA0KPiAgICAgIChLZXJuUmUociIoPzovLy4qKSQi
KSwgIiIpLA0KPiAgICAgIChLZXJuUmUociIoPzovXCouKlwqLykiKSwgIiIpLA0KPiAgICAgIChL
ZXJuUmUociI7JCIpLCAiIiksDQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5k
ciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
