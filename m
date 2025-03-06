Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A667EA548D9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 12:14:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7D7060FE6;
	Thu,  6 Mar 2025 11:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W1RbtrwIRxhY; Thu,  6 Mar 2025 11:13:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A235D60FDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741259636;
	bh=3Fxf9bBFLQymcLBjvzXgRUsXBgzF5/pch65uGs0kee0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x2hyWaGj4znl4ZIHb2JP5q2HAZ01wat/Z5KPj32rgmBJlnyfzJxLVtNmIxxtn2J8x
	 tlRjo8kwcb63JRgs+z0VpqnSyxp1LMvIkaw62D7vdENtXOTktMuKwtekylpWwHnqgm
	 ILHVQqvsNgwR0o0efAIlTd4ZRXHcICksNbf+eJwq8fcjTZey5oVt2RSEc/6ibymS1t
	 XwwH9YQ/Xr9Jme9Avf5qRTwve21Q2THCS4a3GjfTqILu8qsnh9WJuW91L5cvsdRrdJ
	 quoUtxRQk09hKyJ+rTLyDVfROwPeRYcKYNXJHcOd1D+JckXplceXJUTqyxlMieuDFP
	 tmpnraH/zMQ+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A235D60FDC;
	Thu,  6 Mar 2025 11:13:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75700E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 11:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64E2160FD9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 11:13:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XIV3x0GM2PP1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 11:13:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 529B660FD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 529B660FD7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 529B660FD7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 11:13:53 +0000 (UTC)
X-CSE-ConnectionGUID: 6DcXqJ3xS/W4Idzu0XTi8g==
X-CSE-MsgGUID: 5ro/Y0K1SZq4k10tslwLYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="46187003"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="46187003"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 03:13:52 -0800
X-CSE-ConnectionGUID: nYfT2xffTBe6ySldowelVA==
X-CSE-MsgGUID: BU6PR+p1Sd2/tKTRZZAPig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="119001567"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 03:13:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 03:13:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 6 Mar 2025 03:13:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 03:13:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TkiY9bO4sZPcBtIn6pVsLuvxG+sr3hFtifXyilzd4Zq/NYz6MMTxHq64CLN8cJTLTsuHQzfDO+4iN6cAi1bS1oNpcIJdeRfbFmrWTkSQ9GYqLQJfKWwTh0ztFt9i+sHBq58n+XjtB5S8jM+gd26wbBnjC8PrZUQF4zCA51O5IbOJH5FwkMQvs6ImnllXSTv5MOc/vUXUbfGredTNaNsdk1N7eIFe0kpOp8qKwXzq3XM/skuGl4UhQY/aNsWzXovuQdLTl5wlgCZS4cPenDmpSjUXQ7sYio0NFIy/SvPxu1Ne9/yjUPtwM9mkv0TgW52IpfhhBxY+IKBPt4TZqVqVHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Fxf9bBFLQymcLBjvzXgRUsXBgzF5/pch65uGs0kee0=;
 b=ExYm6FswHHaGc/56pqDCtXSx5lwtfSJdtp/9Ug9rMF+u6ZPxHKGcrhJuROEVYmtPNudvth9HalBDLmy8gOtDOTA+Rdvl2AErVeTR4b9nd87yAsR9Rzqpvd9rVax5AhjkRevWuOxAlxTB2CmAigQrmeu+n4qWLxxXSn3EOH+/SfDV6tAzFe9x6Mgb8ck/DIpod92olr5iGvwu51txXbxm8GH2XSqO4OzNwS5guQQOLkgWQfOkfpRT1vmtvNqA/374ICc2Rpw/pm6awqsI+64zrVuwwSN0eZpZiK5/fnqxUdoA/u23boM+EkYAe05Rkw9zEdViXg86FBcLhm3UcvPjZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB6721.namprd11.prod.outlook.com (2603:10b6:510:1ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.29; Thu, 6 Mar
 2025 11:13:07 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8489.025; Thu, 6 Mar 2025
 11:13:07 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kyungwook Boo <bookyungwook@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH] i40e: fix MMIO write access to an invalid page in
 i40e_clear_hw
Thread-Index: AQHbjlhFhFY82fRtJEqn7gLKGJJrxrNl9EOQ
Date: Thu, 6 Mar 2025 11:13:07 +0000
Message-ID: <SJ0PR11MB5866435852B88603767EFF15E5CA2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com>
In-Reply-To: <55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB6721:EE_
x-ms-office365-filtering-correlation-id: 59278db8-ef2c-4cc0-a628-08dd5c9fdf54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?elN5MzA5ODRPTVIwWWVRY3ZBeXVSemZtaHNDdnY2UU1hZTRFNll3YlVURnRL?=
 =?utf-8?B?UWlhQU9sajljNHBybkRqNERzYTcrSktiK3hUUDhLWUdMTWU0Q2RiS3BIZmpm?=
 =?utf-8?B?c3dWN1lPcHRVbndXTFJqVlgwWHdRcTJFQ2lHRHY4WnpKVVRoYUhTYzhtMGZC?=
 =?utf-8?B?SVo0TllPYUd4dFFxbTN0b1lHcFpFWWw5QTZ1T3BWSTBka01UQndGTENPVjV5?=
 =?utf-8?B?UTU0MElkU0FKRjJjbzIxMVdOVXdEc1VNNGROT3p0WUo5cGc2dmw1SHJmbWMv?=
 =?utf-8?B?Mm5VbXRQQzU2ZmkwWmM1V2VWN0s1ekdlb0dFRlgwOEgvbWo3MndENkx5SUR1?=
 =?utf-8?B?TzhCMzZLRzRSK3RtMnNGcVhwR3N0MkxSWk9CSlo5RENvMHlIK1lObnZZOVBK?=
 =?utf-8?B?U0VlVVo0TWpKblZpTmNFRUNxS1dRZzdmWnJSb3V4dVp3QjV1Y1V6aW9QZXFO?=
 =?utf-8?B?S1hUTEZvTHFaWkdEZGZiY08vc1JrUmJGVFJIdGV1Z3pXbVd0RytjS3dWRFlW?=
 =?utf-8?B?aDkvOExuVW9pbEZSSmRwNTFsTE1OWDZSbWhYSkhZK1ZUL1BWdWVIODBFR2lx?=
 =?utf-8?B?LzFxcnhja2lBMnFxaFF5NlpnamNDa083aS9HckZtdlhYWFB1aDh3dXByTjlY?=
 =?utf-8?B?Q1hQQkMvRnZoWWpXZlVaMlJUcjNsR1NnRUJqNFptckFwQ29KWVhFUTR1bTN2?=
 =?utf-8?B?ckRBenhWbjBTSGtBaTNXLzRCMFUzVU92OTljNDhjNTZ5L1RBY291ZjhteVdt?=
 =?utf-8?B?V1JjNngxT01EWXM1Wk10QzZ6Y25OTlkybEowMDRRamZ1dDhKdTBjNERDMU1h?=
 =?utf-8?B?ZytleHExa1R3SmpsUENFc1NDb0s3TWpCVDV2MXdidy9Pa0taLzNyNTA4MC8r?=
 =?utf-8?B?bFFUdUdOVElTSU5TR21QN29Uc3VrMVJjV2VleEErUXVsdk0yQThwSjhkWnc4?=
 =?utf-8?B?dFh2eGtEUWl3aEVnUWlhOCtwdTBMcmFBbVhGWmsyN3RFODlwUlpWWFZvTldX?=
 =?utf-8?B?bVRPU3d0VTdPYmhzYTFkbEdXMDIyMzhFY2lZKzA0bE1ZbnZhS0ZxTlpjazZB?=
 =?utf-8?B?R2d2K25yL1E2UmlBUmxnVTNYbzd2cE03S0FnTDBHWGdhcEVmdnFRSEtiQ25P?=
 =?utf-8?B?Visvd0h3NnBBMXJ1dTlnRlZGWWFFKzVMVG9XcUNKWGV2RFo3MllXbGdZTzhP?=
 =?utf-8?B?bnd2ZXpVRFdPRXd4ZTdJQXM1R3Vsai85c2VQcjNhOTZGUTBCbm0rckFqVzhH?=
 =?utf-8?B?SXljS280RHRseTZLU0xjSzlsc291dER6MmlXNVk5SXEyVy91TTNCWmNaWGpx?=
 =?utf-8?B?SFVCeXZJZ3NBQWl2S1dobU1DTUlLam1NVkhOMDEzRWwrUk02UmRTZGVJbzRM?=
 =?utf-8?B?T09NaWhLRm9uazJMRzkwMWdSNVV5TnJYTEk0YWhZN3VzcnJ3bjRaMHFyUXA3?=
 =?utf-8?B?NUM3cENHZEhNSk83WWdtRE8weVBrSGFrOW50Rlo5Vlpob3lQeVJqMmF3bDNy?=
 =?utf-8?B?TFIyU05yMWhNZzNXRllXcEV5RHNOSHNoWWJtU05FWHRVRjNRcGZycW5QRERp?=
 =?utf-8?B?R3Z3L1VBUlVOaFlPN01ZbXVSRHp3WldPYktUcUVCM3ZDRnc5N2ltZk5rUldv?=
 =?utf-8?B?empzVEkyaU1hUzdpT1ZybVl1NlczVGlCclg2SEx3SGZEczVLS0htSDJTMkU5?=
 =?utf-8?B?NVZSY0IyWTRpc1VwZk1Sb0c2TWJpT2d3dlkybWZDQVV2NUIwVWtJcldOM3hi?=
 =?utf-8?B?UEdkSS9CMUEvVzFpRE9aeml0cmZxeC9Za1IvbDZiR2c5MVNuWjA3NXRCUUlD?=
 =?utf-8?B?N0RIb3M2eUdWTEJIc1I2bUVKSnpUTGs3TzE3UjltU2lvTmdpUkZON0hPOXJB?=
 =?utf-8?B?OEpJNG56NEliM0tzWWVFQlVzM0NYYjkreHBNTHhha0lPTGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXNiQ0R2bk1UZCtDMUhES0J4SmVIM3d2dDNYS1lLRVZndWQ5a3FCQXZJcUV5?=
 =?utf-8?B?aVZRZjViS250c3B0cmlmUUEwVVlUTEFyWmJCMWpQSy9yYXVyeHZsN0M3Vk9m?=
 =?utf-8?B?Z1cyT25SOC9GeXZIQVJwZUp0aUl6YVR4dS84VmpvZ0lBUGtwUnJzdllBOXhC?=
 =?utf-8?B?RWhHWUlEMXZxeno3dUhvaUpCRUJSaW1abnREckYwSzltMzB2K083czI5MjlY?=
 =?utf-8?B?eFUwYjMxc0M0SGZhdDZsZitCMDF5bTdnc3ZsMW1jc2MrL3p0OVdPUk1scW0z?=
 =?utf-8?B?TTZNOXo4bnRoZU9mWVBQQzJEaHZ4cjNEeHRzUVNaK2R2ZUg2NnBxTG1tZ2xK?=
 =?utf-8?B?Sk9tN21GVXdpUTlOSW1OSjcyYjRUK1N5QWhGK3Fjb0lIc1ZGY0I2SW91MWtn?=
 =?utf-8?B?dWJxWXNtL3l5UU05Q3d5Y1RNOGdIS0hWU2hCS1VJbmJjMWUyK0VOd0FsOSs0?=
 =?utf-8?B?UlBRQ3BkT2xRdUx4QnNqS2N4WkM2bmFMN0h5UDBSV054UjhnUkptcERjeDJN?=
 =?utf-8?B?ZnlmUGJGS1JTQzh6aWttNU1BVDJyUFhudERNZG5IU1YxUG9uaEpDSUtRNXJm?=
 =?utf-8?B?RmQzOHV3dHY2b05WbXFoMlZsL3VHbGZlMWN0OUZXS1g4YkZsTHloT0RsMmtC?=
 =?utf-8?B?Mk11SmhvTVN1aDc4NVpMTm5RR3FpejZPRUh0YjBzQUFJNTlwd3JzR3N2MFhR?=
 =?utf-8?B?Vzdoa28rRFBPRkNHTW16VDFWK0lTTWJrVmE2T0l6K1MrNjMvaG50SmoyMStN?=
 =?utf-8?B?ODIydjY2cWFTNndCbzh3U01OL2Y2aGF0RUZWWlVNdEdkUGR1ODZ0SVNQaVJW?=
 =?utf-8?B?NEdqb3JUS3JjZ1hXemhWZExUYWxPenNlME5Dd2xBMmRPWWxCQm1YYnRxNFUv?=
 =?utf-8?B?aGtoZzdyMW9mQk0xZWV3T3E1Z0VHUzZoR25nMkhYdnRCQTRtZ1cwUEFVT05R?=
 =?utf-8?B?bWJlOWVmQVJ6Mlp4ZlNWU3VHOEk0cCtlT2JuVjU1Uk45UzdXd3lvUmR6QXpQ?=
 =?utf-8?B?UDZVMWQ3aHYrVFg1ZmY2b09IblZURWxhN1lBdVd0OVBzL3RXWHA4eUlCMm9U?=
 =?utf-8?B?UG8rRjlKTUUvOWgrZlAySUVXSmcxREFGeUM4Q2FmQUJKQlBibFArLzRsV3Zj?=
 =?utf-8?B?Zk4wbTVTZTYza29HV2tOeFJmT08zRmxNYXc2MFNnYU8wM2pyT0szOTRFVjR2?=
 =?utf-8?B?Z3JVcHBVdWhyTmJMWHpZT3BDRmUxckd0TlZ4RmFzNUhnWkFCbnZSeWJ4RDha?=
 =?utf-8?B?WFlJVm1CQXB5alEwckkvWWkxd1NSWk9HNWRrRkZLUSs3TFd6ME9Sd3Brbnh5?=
 =?utf-8?B?ZzdtN0hEMzd0c3h5VnlmemlmcWpzYjlhaXU0SXRSWldSc0JMTko2VE0rb3Mx?=
 =?utf-8?B?Q0FEcnRiSHMzWDVLL2hhOFhRcDNDWGplbWN1bDJMS2NHN0QvaXdKUUlHMFd1?=
 =?utf-8?B?SU1RM25ZcHN2VGI5UFEydHBCQ2JybU9JQnVpWm4zemVMRjJ2SGl6OWpwWHlR?=
 =?utf-8?B?WDBDY2pEK3RWV3NxSE1ZOExBMjl0UVdudlJGR2dXblI3SnMrY01QTjdJbVFw?=
 =?utf-8?B?Wm1GazZCZ1NqS2FuOGE5NHB1dkxVeWxjOG1Jcmx3VWRRWDZiL3BteTFRUDlR?=
 =?utf-8?B?RGJtaGRpeG1sODBmTC9wWW85RGhKQTI3bllBbUh4cEZDVG05NDdkem9PQlZz?=
 =?utf-8?B?QlZpcVJsc0ZxT0k2cEpOWFRFVUc4a3VjUi93Wnk0RlFDK2R0TmxOTlZpSmFY?=
 =?utf-8?B?cTd3WW1yYmhTVGdiUGt2dUNrNFhLa0p2NjlhczYvNTRLVVBud08ySlc1VU44?=
 =?utf-8?B?NmFlMTJNT0JDTWNFdWk2K1JSaEdSSHZXV2x3SGFFMktnc1REbUVRVlczRVhN?=
 =?utf-8?B?bWFRN1pkelRyaDE4ampkSUJBQkNEVDB3S1VjZEwyMFZkRDBNZXRuUVZWY0FX?=
 =?utf-8?B?S2MwSVpGVGkzaGhvRFlZY0JXMmtiTVNRZ0t3QzYrZnh6WG1ubWkvMU10R09R?=
 =?utf-8?B?RmduczJCM0kwV3VJTWFhZ1VncUsra2VFR3F3bzZ3UHFTb3FPSDhUcVc0ZEd5?=
 =?utf-8?B?ZDV3dFVzTmh6YTk2RDZWSmNaUEdpSTFnSEtWRTZGRmFhMGhwcGJlT3l2MHlB?=
 =?utf-8?B?c3crVkVkbEZDNmRDbm1JTk0xaVlPUFI3V2xjOE5XcDVVOGdya3I4c0FlZTBa?=
 =?utf-8?B?Q3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59278db8-ef2c-4cc0-a628-08dd5c9fdf54
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 11:13:07.2374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dvpqVXsxINc3TsEbWC+un2nH0+FnSWP6HjZoyjSNXzIl9Tx2oPrbCE2IJAiZt9mLG24hajSDk9uo/ek0vl82JH+kC7YpZKeOzuaCVUFGsmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6721
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741259634; x=1772795634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Fxf9bBFLQymcLBjvzXgRUsXBgzF5/pch65uGs0kee0=;
 b=lZkobXZMC96OztIHepGtbkVZcAZieiYi67zOEh322y1IKE8dMQnmKzHF
 xYH8eFSjhwr350NPSpnpmg34aD5kTZUl/FtVo3gehmnS1ioADfowWz6WH
 P6o8NIpFbBSCWACyZgFxTDk+nY03LdeMIfaUteS/5fGAjZypwIi7dl17f
 F4T6A5+Ipj7BbSyJuRJq4wtuu+ZFdSvdwHkHdPJYNROoiMFICO+AgO1cp
 RlpSzo2NCl9criEJh0wkxIZ/1xMf5kkKkgqwS6Zpo2440pZhD9+8XYCbb
 GJQxv1Bfl0aNux6yFBlTYM5xMpV6W20OvFPzVmPNsKLaGj0fzRmOxUC7I
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lZkobXZM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix MMIO write access to an
 invalid page in i40e_clear_hw
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3l1bmd3b29rIEJvbyA8
Ym9va3l1bmd3b29rQGdtYWlsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1hcmNoIDYsIDIwMjUg
NjoyNiBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGlu
dGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnDQo+IFN1YmplY3Q6IFtQQVRDSF0gaTQwZTogZml4IE1NSU8gd3JpdGUgYWNjZXNz
IHRvIGFuIGludmFsaWQgcGFnZSBpbg0KPiBpNDBlX2NsZWFyX2h3DQpQbGVhc2UgZm9sbG93IHRo
ZSBydWxlcywgYWRkIHYyIHRvIHRoZSBwYXRjaA0KDQo+IA0KPiBJbiBpNDBlX2NsZWFyX2h3KCks
IHdoZW4gdGhlIGRldmljZSBzZW5kcyBhIHNwZWNpZmljIGlucHV0KGUuZy4sIDApLCBhbiBpbnRl
Z2VyDQo+IHVuZGVyZmxvdyBpbiB0aGUgbnVtX3twZix2Zn1faW50IHZhcmlhYmxlcyBjYW4gb2Nj
dXIsIGxlYWRpbmcgdG8gTU1JTyB3cml0ZQ0KPiBhY2Nlc3MgdG8gYW4gaW52YWxpZCBwYWdlLg0K
PiANCj4gVG8gZml4IHRoaXMsIHdlIGNoYW5nZSB0aGUgdHlwZSBvZiB0aGUgdW5zaWduZWQgaW50
ZWdlciB2YXJpYWJsZXMNCj4gbnVtX3twZix2Zn1faW50IHRvIHNpZ25lZCBpbnRlZ2Vycy4gQWRk
aXRpb25hbGx5LCBpbiB0aGUgZm9yLWxvb3Agd2hlcmUgdGhlDQo+IGludGVnZXIgdW5kZXJmbG93
IG9jY3Vycywgd2UgYWxzbyBjaGFuZ2UgdGhlIHR5cGUgb2YgdGhlIGxvb3AgdmFyaWFibGUgaSB0
byBhDQo+IHNpZ25lZCBpbnRlZ2VyLg0KUGxlYXNlIGRvIGZvbGxvdyB0aGUgbGludXgga2VybmVs
IA0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBLeXVuZ3dvb2sgQm9vIDxib29reXVuZ3dvb2tAZ21h
aWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRy
Lmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFByemVtZWsgS2l0c3plbCA8
cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGttbC9mZmM5MTc2NC0xMTQyLTRiYTItOTFiNi0NCj4gOGM3NzNmNmY3MDk1QGdtYWls
LmNvbS9ULw0KPiAtLS0NClBsZWFzZSB1cCBoZXJlIHZlcnNpb25zIGhpc3RvcnkuDQoNCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYyB8IDEwICsrKysrLS0t
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2Nv
bW1vbi5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5j
DQo+IGluZGV4IDM3MGI0YmRkZWU0NC4uOWE3M2NiOTRkYzVlIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29tbW9uLmMNCj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1vbi5jDQo+IEBAIC04MTcsOCArODE3
LDggQEAgaW50IGk0MGVfcGZfcmVzZXQoc3RydWN0IGk0MGVfaHcgKmh3KSAgdm9pZA0KPiBpNDBl
X2NsZWFyX2h3KHN0cnVjdCBpNDBlX2h3ICpodykgIHsNCj4gIAl1MzIgbnVtX3F1ZXVlcywgYmFz
ZV9xdWV1ZTsNCj4gLQl1MzIgbnVtX3BmX2ludDsNCj4gLQl1MzIgbnVtX3ZmX2ludDsNCj4gKwlz
MzIgbnVtX3BmX2ludDsNCj4gKwlzMzIgbnVtX3ZmX2ludDsNCj4gIAl1MzIgbnVtX3ZmczsNCj4g
IAl1MzIgaSwgajsNCldoYXQgYWJvdXQgdGhpcyB2YXJzPyBBcmUgdGhleSB1c2VkPw0KDQo+ICAJ
dTMyIHZhbDsNCj4gQEAgLTg0OCwxOCArODQ4LDE4IEBAIHZvaWQgaTQwZV9jbGVhcl9odyhzdHJ1
Y3QgaTQwZV9odyAqaHcpDQo+ICAJLyogc3RvcCBhbGwgdGhlIGludGVycnVwdHMgKi8NCj4gIAl3
cjMyKGh3LCBJNDBFX1BGSU5UX0lDUjBfRU5BLCAwKTsNCj4gIAl2YWwgPSAweDMgPDwgSTQwRV9Q
RklOVF9EWU5fQ1RMTl9JVFJfSU5EWF9TSElGVDsNCj4gLQlmb3IgKGkgPSAwOyBpIDwgbnVtX3Bm
X2ludCAtIDI7IGkrKykNCj4gKwlmb3IgKHMzMiBpID0gMDsgaSA8IG51bV9wZl9pbnQgLSAyOyBp
KyspDQo+ICAJCXdyMzIoaHcsIEk0MEVfUEZJTlRfRFlOX0NUTE4oaSksIHZhbCk7DQo+IA0KPiAg
CS8qIFNldCB0aGUgRklSU1RRX0lORFggZmllbGQgdG8gMHg3RkYgaW4gUEZJTlRfTE5LTFNUeCAq
Lw0KPiAgCXZhbCA9IGVvbCA8PCBJNDBFX1BGSU5UX0xOS0xTVDBfRklSU1RRX0lORFhfU0hJRlQ7
DQo+ICAJd3IzMihodywgSTQwRV9QRklOVF9MTktMU1QwLCB2YWwpOw0KPiAtCWZvciAoaSA9IDA7
IGkgPCBudW1fcGZfaW50IC0gMjsgaSsrKQ0KPiArCWZvciAoczMyIGkgPSAwOyBpIDwgbnVtX3Bm
X2ludCAtIDI7IGkrKykNCj4gIAkJd3IzMihodywgSTQwRV9QRklOVF9MTktMU1ROKGkpLCB2YWwp
Ow0KPiAgCXZhbCA9IGVvbCA8PCBJNDBFX1ZQSU5UX0xOS0xTVDBfRklSU1RRX0lORFhfU0hJRlQ7
DQo+ICAJZm9yIChpID0gMDsgaSA8IG51bV92ZnM7IGkrKykNCj4gIAkJd3IzMihodywgSTQwRV9W
UElOVF9MTktMU1QwKGkpLCB2YWwpOw0KPiAtCWZvciAoaSA9IDA7IGkgPCBudW1fdmZfaW50IC0g
MjsgaSsrKQ0KPiArCWZvciAoczMyIGkgPSAwOyBpIDwgbnVtX3ZmX2ludCAtIDI7IGkrKykNCj4g
IAkJd3IzMihodywgSTQwRV9WUElOVF9MTktMU1ROKGkpLCB2YWwpOw0KPiANCj4gIAkvKiB3YXJu
IHRoZSBIVyBvZiB0aGUgY29taW5nIFR4IGRpc2FibGVzICovDQo+IC0tDQo+IDIuMjUuMQ0K
