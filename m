Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KK4xL7U2e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:30:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D6CAEB0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:30:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C220581DD8;
	Thu, 29 Jan 2026 10:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-k3ovKMVVl6; Thu, 29 Jan 2026 10:30:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34A9E81948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682611;
	bh=PmCG/asj66bCBLQx6gO9VXgnHoAAjLcBuIqEmkhdxHg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=10jK7T53Q8IlNSfQUkehN+gBrk7I51kb4qsxCJS4CKNw73jCE8KDQ4UgDG/wwrH5g
	 0kynBDAqXMpJpgkXcoPvyW2pZnkaqj047Sw7E+gd55ozeDsdw+8XJaTVQtWbK4FCgz
	 odcmeOTrn5tm3NPBheZqNZ8ZSZmIL65l5ep5iT5fWOinX4+cqDc0aVg1MwoUZKjRSp
	 d+IR9dDp62LEWS5du0xbyBLQpmANisBMWPcoZg/KF91CuRF5bXE9RCfZu3AxSLtL+V
	 JSvzMjAGss/F/JXQvRZos+MLJSzCrtnz/kIZUN5080goonEQpHl6ep575fSsqz0cN/
	 Wgs8tgU9QVSwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34A9E81948;
	Thu, 29 Jan 2026 10:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C8D8A1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B482E60866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:30:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cf08BSVjlJGj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:30:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C24856086F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C24856086F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C24856086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:30:02 +0000 (UTC)
X-CSE-ConnectionGUID: I+oAgnRjQES12umxjJsRmA==
X-CSE-MsgGUID: /ELHy3MdTMKSdhbfXKOKCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93578589"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93578589"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:30:02 -0800
X-CSE-ConnectionGUID: gN9vtVvcRb6VPNoD5bXfDA==
X-CSE-MsgGUID: pFRbUqRbR6GeA8s37DTD/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="207657041"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:30:02 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:30:01 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:30:01 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.17)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:30:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MaPEAeV6/j68/0IW05M0z6mt3DHGkAVItFwQX/YxONQ0/H7SOnmFHY5qFu/a2cq7VjXZgH6PD5FJIHKSFvghaAYFihqj7zFhPOgSMYWtr9n0tWwsNhcq4iBdowqRPWvY7MctTHrsW3JrRmZTC5+BZ9nurGoJiKQV+7eEZi8QgBOfAdFXwXISWDx+bfoF9PwNAO3jzeZtOXTeYGknW1fhVUUpHa6791DvSnqdoUiQ6y+Gk1w/uh8AxaBb1oPrH1ON97LwyUWTZisQbPxcfufU5ZqIMi66fc6ejLEF99SKJe79LzFFkHT4JUj0OFiLAig4edwqEOmzyvS0vbksN61KDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmCG/asj66bCBLQx6gO9VXgnHoAAjLcBuIqEmkhdxHg=;
 b=oi2Ceh1+Un7jRlousbshB1ptObHuN/Cqy/uHvS/yQNty6Xx6WdU97v3OU4CgH5QTDUCbWA5eYLNvhHFMU4q7GU6NkqByOyMyXiY6uz/iWcR9/o3KSJlnC+k3wEIz3yjbSKGxYKfG1oX7g0PGBRgn9G9FsFUpEbo3oBXfqv6XRqNlUyNg15y6Np48aF8q4iIHOfcAXaYbNISxYOsGqv22OD3ZU9Ky+L9OBXDG4KiU6SeyI5quvs4NhaT67A3RAUQJgEIBt8jMeFzAOffrmLdtXxYIbWtRTaIJLTFAYGVkgnT9KOVOjYV3Xd+zMatM2If8RdWn4N79U2HCH5UFr+iVOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:29:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:29:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 11/30] docs: kdoc_parser: fix parser
 to support multi-word types
Thread-Index: AQHckPaW4RwWeqh+YkWZvA4naD7OJrVo8nug
Date: Thu, 29 Jan 2026 10:29:59 +0000
Message-ID: <IA3PR11MB8986F5BAA3948B905758A7A8E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <ed3918b24518ee58bd92c6c2729fe0927d1bde95.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <ed3918b24518ee58bd92c6c2729fe0927d1bde95.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: 204b0485-fc79-4d92-9811-08de5f215a9d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZTM2UmRDbUw5QVo2dFZ4RnhJeEJMUEFnb051UFo5YWprM2RBMjFrMS9PSVFl?=
 =?utf-8?B?bEhtZWIxaTl6biszMFZUVGtzQjlDWGYrYTJ6eUNxbjk2ZTJ6ODdtWUwwV002?=
 =?utf-8?B?TW1OUG42czM4TThvSGdMdkFsQWExc012YVMxblFxSUx0M3VBNmRuR2t4SDcr?=
 =?utf-8?B?Wk14QklaUXdvSmRockZlNk4vTFRUQ1JXUjlMNWROOVJ2V2doZGVTZXlwV3FY?=
 =?utf-8?B?NFJUT0RBOHJ3dFlEUlgvMHJkVktpcE1nS29HU29qb1dsb012aSttOTBTelBP?=
 =?utf-8?B?bENqYllNeXVmSGV1QnphTDVvKzM1SmZ0d2VRV25BMXRNR2JXd2NQeko1VjRz?=
 =?utf-8?B?WnFPTVBPMDRwbGI3U0Q0cTZqRDJ1TjR1WkJFMGhVOGtRZjl4elc1TkNlS2pC?=
 =?utf-8?B?OHVpd3JPeDB6Q3E2YW1kblBOQXJRNEhQM1pFTkVJeXViMlBMOWpjOUFCeG9s?=
 =?utf-8?B?MVlDRWJkV05KVldyc281OWgwcFdmZGtKZWJBU3ZBbjBJMm9STHk1NWVVcHJv?=
 =?utf-8?B?SGc1NzR2SEdvVkJZN2FjbkJENDdhcVR2QVYwd0JHYkVKQWI2UERLdjRzd2Ja?=
 =?utf-8?B?T1E3M2R2SmdZNTRtSlpUOWw4RHluUTFBRFdHYkNER01ta3MxRU1pbTZGM1V2?=
 =?utf-8?B?d0QrZld4aGREOE43aGsvOUtvOTdZNE1OQmF4Z3VYNk1KWCtvdVZhUnhUUXpD?=
 =?utf-8?B?dnJGTDI1Ync5Y1ZiTytXRTJzYlh1cVFrZytvb2M2NFNpYTB3UXYvRis5TEhq?=
 =?utf-8?B?aHMvbzlpRXdpUm8rTWdZM2YxbzhIaFgzWTBhNW9EOUZ2L2cySjR6dk1Ca0NQ?=
 =?utf-8?B?K3pFc2hsLzM5bU5vNnRsTXQvZUQwV1IvTXZ5K2pkVUFWNTduc0RYbDlob01U?=
 =?utf-8?B?eGNJUVpPY0JNTjBVR3pjY1FBUkJ6UmN2aUFGMnh3NnpnMUllM1hYUGRPbm1B?=
 =?utf-8?B?RlUyeU5rOVVCenNKYUxDZ21lbU8yMDlaQ1gxaWUrRDkxWUxIZzJRMCtwbm9t?=
 =?utf-8?B?TE02YUVwVHI4WkFIWUVzMGxjWXpjaW5lbzVFQXVjMjNBYXJtaTZTd0hiUFFr?=
 =?utf-8?B?VEhkWUpCMXk3SFBVMjYzMTdLa0ExbWxaUU9uODE5eEh6d2FXZlZmemg5STZF?=
 =?utf-8?B?R3pJK2ZyZVUrWTZnL0pYSWRtbEtBNG1vZXJpMVp1YzhtMjc0QXN6UUdZMm5W?=
 =?utf-8?B?N2t2aTFzUkYxNVZiSnhTVjdOTTVBVk4zMHpPZnNibGZPeDBUaHo5RHFSZTVX?=
 =?utf-8?B?aTV1TUhqMkMxMHJPVTBMMzRocWF1QUpsOEsvSzU3RHpHTTZQT1JEN1pTc0xT?=
 =?utf-8?B?VFpNbUtRYk81WHRKVDJwclFXdXFraUI0Q3JpNk5mVXFEN2ZVbFkyUisvWDFC?=
 =?utf-8?B?dHByVkhlN1BORFFpQjRFSXR0a0xXSVFkTVF5Rno1VkZ1ZjBXVzZFVG0yQ0F1?=
 =?utf-8?B?bWtRMjh2d0w4b09xaGI1V1BMZEVuZDdaVVUrVnAxaEhWU05VeDlTNEQ5YStN?=
 =?utf-8?B?RnJEU3RISldqMlRLZjB3a2xjelU2bmI3dCs5dk5JMXp5THBSTjAzQjVMRlBm?=
 =?utf-8?B?bm12RnNPOVkwcUJlcHpzOWwzUmpNVHp4QUxYUjBLOHBwRm8xSWFsYnBQVDVE?=
 =?utf-8?B?Z09zQzlwVDZkaVdobUpleUM0WElMdVh4SXRKbHh5bmJZTVJWRnErcHdFUGh5?=
 =?utf-8?B?dWtOaVFNM1ZDbFU4RExRdXFDWi84eGtWNTZnRm5hdnBtUGEyb3hwM1V3MnBu?=
 =?utf-8?B?MFJmc3J3QThFRFRZZWhlc2dnQUJMcmQxc1dBa3RMbjBsa0pveUVyNjNEYi9u?=
 =?utf-8?B?ZGxjUVI2cnZLUWwwdzJBOWJZTU1ScTk4emE1SGRXR2c5SENETjlkRXNlRHpq?=
 =?utf-8?B?S1BvRFNVM0I2Vy9RbUw3anc2aHpoK1hQcGY4TXJMaEg1MzZiVVBsUjlOekw4?=
 =?utf-8?B?Y3RiVVZrV3JBK1VKNXNZK1hOQ0c5UkZKeFVrTmsyNTRaZ1NORzg3SGs5YUsr?=
 =?utf-8?B?SDFtRTlVYUJNU3pCbGpHN25OSXgrS0wrdmdsYzhxTWNNZFRBanZvZzFRK1ZH?=
 =?utf-8?B?VWpISmxuanAxb2lDSkliMWE3cXRwRVY4VFpicmhMbGZMcEFlVHhhOVd2MFo2?=
 =?utf-8?B?eVFaQjBWQittOGdudUxzNmNlZ1FPSklPRkdxcmxJS3BqelN4N3IvVkVZSnFQ?=
 =?utf-8?Q?ohE37EDX84IBGBBmFSwRhJY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1JSbUFhRzJ4OHBHYVd3MFRYZ0trOG1TR3d1Y0pyQ25MOUZPL2JXTTZwWHBJ?=
 =?utf-8?B?ejA3Slg0NFp0ZktmVHBFemZNTTNMbk9HWGluTEUxNFYyL283WmxsOUkySWhS?=
 =?utf-8?B?QlZCYUVjVG4ybFRvUDZUaFlXLytVNCtTZnFJSEh1ZzlpSDBoWmRsSURCd2N6?=
 =?utf-8?B?dG1wZ1pmTENRaElLeWEyaytaWW5ZanNBUGlCSlp2Yjh0ZXBHTkhoTWRrUnhL?=
 =?utf-8?B?YllIOFNvYnJ1TmppUUlzczZndDM5UWJmNjlraGc4LzRudzRBc3VTMi9XcmpF?=
 =?utf-8?B?WUNIeFlqSmxzRlA0SkU1M1dPd080d2twUmYrMWZTYUorMWx4RDdydHE3S2tB?=
 =?utf-8?B?ZFpRY0ZKSHNva1o5Yk9mSGF4L2lQU3ZJdzR5MmU1VS9QN1dpb0JyOGpoYWxW?=
 =?utf-8?B?dDdRdkhwWmdJS1E0aGZQZTBHdlJtZUJPOFc0RnNEQkJkTjRndmtKWk1VNWF6?=
 =?utf-8?B?TGtJVnpQSmIydzk1RENHK0JBSlpMWHVlNWZFRnhLMEtlYnpwSTdWNzVTTzJR?=
 =?utf-8?B?MVRLSldKczkyLzVIY3JhdHV1VkYvb2J4cjdDbEtiUnJlalZjQWI4Vkx0UEJM?=
 =?utf-8?B?Mzgyb003dWVnbHgzUkR0RGlDNXJQQlZPZTVSalZSWEQ0VXArREFNV2dQOW5v?=
 =?utf-8?B?MUI2SzFvYUoxK2Ivc2Y3dkxGZkRJVnFLdDAzWWk5TndOSnQ5N3diVEhVQjlZ?=
 =?utf-8?B?Qm1ZMVZlYmF4Y0E3ZUdtRFRFVnY4YkxUTHBMNGU1Myt3cTE1Ujh0SUZhUlAv?=
 =?utf-8?B?N1NKbldXSmQrcTg0UFQreGZCcWdsUERxZFIwRlI2OHo2US9GWWxlRGRobXM0?=
 =?utf-8?B?SEJTM0tGeUcwWDl1ZFFJazZiMmFkYVlhUjluYWZmRUV5VlovZyt3MlpUZjJn?=
 =?utf-8?B?dWxWa1c4YUFVL3VJTVRFeUlqbEFjWFdLOFFaUGdiSm8xT2tFZzU5V0MvWVdj?=
 =?utf-8?B?TFArTmFoRG0vTG13QW9TNW93M3d5dTBWSUFvZVN1dVVqWnJXNlAyS2xqMGZ2?=
 =?utf-8?B?N3ErUkxtcEtUV0k5Z1NOcWpNWG4rR0xuZXZRWndWWnlEYzYyenlWOXdzTGxT?=
 =?utf-8?B?bytjbmMrcU9QRVl4ZkY2RjVXRWJ4SDlpaFFzeHdxa3ViZ2crY29ISFpQL0lW?=
 =?utf-8?B?N1p6M3FhYmFQa3ZGZnNDdG4yV1h1SHlXeDNHMVNkNUNyb1lxV1NGNGUydlhM?=
 =?utf-8?B?T3FxQlROOVhrTXF3R2hUVFo0bUxFTzVZZzdub2I5OTNQUVFOa3ZQL21ZRWlC?=
 =?utf-8?B?MmFuRTk3ZWtFODJLaXZtZXdzMWNHbk9nTnY3VjZKQXZydnAxaENCeEprYmlK?=
 =?utf-8?B?emNzTWZIZExRaEVrN2NpOGtHSmtGdE9UWjEvZjV2V0RNcnU2aEFMcUZTdlAw?=
 =?utf-8?B?YVIyS3JWL0FaTGlaL28vZVErYXF4WFQ0djUxVTM5cGlmZzBVbnVyUHFWQ0tv?=
 =?utf-8?B?SFFKbkN2bml2SVVESW1oUFJtZVpDMzhJQTRvbjBOUVdITHVpckJ3K012YW5B?=
 =?utf-8?B?TjhKeGVPdkFOQWRxTWxXWUJjcWtlMk13ckxyV2J0bmFBSnJUZEtZNHZhL0tO?=
 =?utf-8?B?eER0c0NXM0trOFJuMWZtTkx5clZQZ1U1WlNGOUQrVUZmSElzU1dOQzM1UTlC?=
 =?utf-8?B?cmwyekFoc09uZkt0eHZaOGhkQlRHbWc5bFVUMENZUnRwYWt0UGJGeEl3TlJk?=
 =?utf-8?B?T1BGa2FiSFVkY05CUHhVaXl4cS9FamNtUE1lRWhnbnh5RVlRdjdxbVVKL3VC?=
 =?utf-8?B?cDd6VDd4YmgyekwrUlc2RUlTWC93T1cxMGVKRnFzeHZuUC9jVmREb1UrZFk0?=
 =?utf-8?B?SDRkSXhienZYRmMwd0RnaXFKTU9KWCtJRDByUXl2Q2htcDdEMk91QUdmc21K?=
 =?utf-8?B?dmVJZnlHMlNmYkxSZmJmYm9TV2wyQzVNKzNoVnZZZkhHcGMxYThSVjNWUVlB?=
 =?utf-8?B?Wlk0RERBclppNjliekxmSDQ2bTFhZ3Z3RTkyeW4xRXFxNE1FbnBiTTJYVGtL?=
 =?utf-8?B?N1JxeTZZN0U0TUs5dVpqejd6dUg2RSt0ODZHVTFFN0x0MkdPWDI2cHVWNWZt?=
 =?utf-8?B?Wi9hdDZ1RTJIYk9BZC8zRG1Ra2pwOHF1WDhnUWNBVUlyb0gzQVVET0kwZ3N2?=
 =?utf-8?B?UXR6aisxZmtMY2J5OHBaYUZwMjJ6SlQ0V3Fzb0NrYTcxMzBSNEFsNUl1RUZQ?=
 =?utf-8?B?UFZmL3VhRFRtSDVvMll2SUFFajd4UjVKbjZEUUlOaGVTbWl0RGEvSktUOVV6?=
 =?utf-8?B?enhFWG81OXVGRUM2UWx6RDRsS0VZL3VzNTVKWWpZWFJsTTRabi96M01SZWZj?=
 =?utf-8?B?RDVBRUpmdHhRQ3VsNnQwdG0vT0RMdUVMeCtMWUZ0SEgraCszZVBVdVc2UEZa?=
 =?utf-8?Q?ntQErOMfszbl5ZOM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 204b0485-fc79-4d92-9811-08de5f215a9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:29:59.1514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2hL81r/BkuxIKLakMshPrfZ5SHn1pjQthu2h+I+AIjQ3gVUDelANQ9G1HtPhvIH4PY4e3Yan+ExB6c7zhqhJlWUP5hmHw8mciBofsSI2YfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682603; x=1801218603;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PmCG/asj66bCBLQx6gO9VXgnHoAAjLcBuIqEmkhdxHg=;
 b=aQ7kesWmiPnjj+zSNaCPv7w6rDu98STWDuBlGGcve0C8QrxQVzdbwmNc
 8D4q7f8aeexReeT6VCFbz76jXIFKvg/pWjAb4e1+xhskVGhbWthYMx5OO
 Sto9swnxRX04b8rH0ezSUo/FgoBL6W6mV9sGWnZUjSG2veNgmnS9p4hXv
 4tEKtH9hNO9j/w+Wq3gaC3BuYcca7kWdwTAZdQnQTo/VnYZU7jNPrGKY+
 M0FZ0MLOI14+7gcz1OlAysWRT6LGLvQIl+hVwnb9ds1MhM9ZeVpt4yg19
 v+kjErKS4fmzl2S37GyNl9rtyQTk/MX4XPc6HO0t/C8MrcOJx+pCtRVPR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aQ7kesWm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 11/30] docs: kdoc_parser: fix
 parser to support multi-word types
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,infradead.org:email,lwn.net:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 19D6CAEB0A
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
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDExLzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogZml4DQo+IHBhcnNlciB0byBzdXBwb3J0IG11bHRpLXdvcmQgdHlwZXMNCj4gDQo+IFRo
ZSByZWd1bGFyIGV4cHJlc3Npb24gY3VycmVudGx5IGV4cGVjdHMgYSBzaW5nbGUgd29yZCBmb3Ig
dGhlIHR5cGUsDQo+IGJ1dCBpdCBtYXkgYmUgc29tZXRoaW5nIGxpa2UgICJzdHJ1Y3QgZm9vIi4N
Cj4gDQo+IEFkZCBzdXBwb3J0IGZvciBpdC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENh
cnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4NCj4gQWNrZWQtYnk6IFJh
bmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiBUZXN0ZWQtYnk6IFJhbmR5IER1
bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24v
a2RvYy9rZG9jX3BhcnNlci5weSB8IDQgKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS90b29scy9saWIvcHl0
aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19w
YXJzZXIucHkNCj4gaW5kZXggMGI2Y2JhNDQyZDcyLi4yMWNjNGUxOWExZTggMTAwNjQ0DQo+IC0t
LSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiArKysgYi90b29scy9s
aWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gQEAgLTEwMjYsNyArMTAyNiw3IEBAIGNs
YXNzIEtlcm5lbERvYzoNCj4gDQo+ICAgICAgICAgIGRlZmF1bHRfdmFsID0gTm9uZQ0KPiANCj4g
LSAgICAgICAgcj0gS2VyblJlKE9QVElPTkFMX1ZBUl9BVFRSICsNCj4gciJbXHdfXSpccysoPzpc
KispPyhbXHdfXSspXHMqW1xkXF1cW10qXHMqKD0uKik/IikNCj4gKyAgICAgICAgcj0gS2VyblJl
KE9QVElPTkFMX1ZBUl9BVFRSICsNCj4gKyByIlxzKltcd19cc10qXHMrKD86XCorKT8oW1x3X10r
KVxzKltcZFxdXFtdKlxzKig9LiopPyIpDQo+ICAgICAgICAgIGlmIHIubWF0Y2gocHJvdG8pOg0K
PiAgICAgICAgICAgICAgaWYgbm90IGRlY2xhcmF0aW9uX25hbWU6DQo+ICAgICAgICAgICAgICAg
ICAgZGVjbGFyYXRpb25fbmFtZSA9IHIuZ3JvdXAoMSkgQEAgLTEwMzcsNyArMTAzNyw3IEBADQo+
IGNsYXNzIEtlcm5lbERvYzoNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
Lmdyb3VwcygpLCBwcm90bykNCj4gDQo+ICAgICAgICAgIGVsc2U6DQo+IC0gICAgICAgICAgICBy
PSBLZXJuUmUoT1BUSU9OQUxfVkFSX0FUVFIgKw0KPiByIig/Oltcd19dKik/XHMrKD86XCorKT8o
PzpbXHdfXSspXHMqW1xkXF1cW10qXHMqKD0uKik/IikNCj4gKyAgICAgICAgICAgIHI9IEtlcm5S
ZShPUFRJT05BTF9WQVJfQVRUUiArDQo+ICsgciIoPzpbXHdfXHNdKik/XHMrKD86XCorKT8oPzpb
XHdfXSspXHMqW1xkXF1cW10qXHMqKD0uKik/IikNCj4gDQo+ICAgICAgICAgICAgICBpZiByLm1h
dGNoKHByb3RvKToNCj4gICAgICAgICAgICAgICAgICBkZWZhdWx0X3ZhbCA9IHIuZ3JvdXAoMSkN
Cj4gLS0NCj4gMi41Mi4wDQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVr
c2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
