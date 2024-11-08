Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F03979C27DF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2024 00:01:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50E8E60A9C;
	Fri,  8 Nov 2024 23:01:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RCaLwycg_Dx1; Fri,  8 Nov 2024 23:01:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D24860E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731106862;
	bh=+p1QdWzYks7Kz7ECVgw/p7SMYfKI18s11oiJPJnZ7mA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GdKL5Vyf0QPYdL2RcKTQLeRb8fxe8R0c6S9Wvxatin9Rv73M8XYr8d+MbCj4Ldo/b
	 YP4NwnHWj46JWxUYWAo8QiN2A5Dtnhl84sNJoencl7mAsjzUxGo7TBfyvwc74wlY9R
	 sGb0ccO24d5DH5uSZ6kQXxUiKDQeP3m1dJOe2QrdOpADjPvkWwQtkHc+N+tfQQn0qv
	 o0oP+lAm0CcIncLzCdPWX967dMpXRhIRRq0DcgH/If4UMN4l7gh9BZixrO+rMgpJNM
	 9Qoa9l+q0PYA5Z9J9QKZSZBaeIQnSCyySRrioahiQW/Q/vyqnjQflaebEMYSHtPsTR
	 HmPEnAqWn9NVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D24860E62;
	Fri,  8 Nov 2024 23:01:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CC82BD8F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 23:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADF3D6088B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 23:01:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYWos_ZUDOpC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 23:01:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D7E9B60812
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7E9B60812
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7E9B60812
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 23:00:59 +0000 (UTC)
X-CSE-ConnectionGUID: lRsQvaQDSnOIQtzI7T8LuA==
X-CSE-MsgGUID: H2aisUGuToyvdD+IrqS1SA==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="41629397"
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="41629397"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 15:00:58 -0800
X-CSE-ConnectionGUID: +z+TyqVHRSyDn9hB8lf8Zg==
X-CSE-MsgGUID: Z2j0LdEWQiekZxQxkeXLgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="86133571"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 15:00:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 15:00:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 15:00:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 15:00:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ma4KEwM/hNqhd3Rk6OS30n5MWYL/Y9UmRiInp83kKxn5Dv/eb+elUYwX6cJssRZWNhwDDDqG7BnTIdhi2+4WoEfaDO8rDd93wI8nQb+0innDb4pQcXyu6AjcRUE381r+wvDGzVwPbV99dR9+CsyVZlon8YMFUQxbSvYryNqi4cmAg+m2W4c2DZN5X38ivOHFGW5CbTniPsEHoRETSwYxNAevN0vqCMxu5I5bKQDUUy1r8L4dRfl4pnODAlVKw/xoIKnFGLYwEh1cyGSghC7945dXo14DxLvx5b/HRzZr5A1X2PktBaSehNHlcrXG4WeW22DQ7hHsquoYu7zX7HIJIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+p1QdWzYks7Kz7ECVgw/p7SMYfKI18s11oiJPJnZ7mA=;
 b=Eb5ZtZ5grGur2XATP2fHf10f/D16v17YMHXaKRXNpPVJGCv/Gp+uR/4e77wRFcaXBG61pag6bKMDoZFSqnlQLXJTgEIgW8yoPVmDGveUzM7QFTO+Heui3pTUQkafraSeikNNKdCRKXOo90mygxhWMO98N9rkR0FQHCoD1jBKvIYci/IvVNaW9a5pDBEd2goPkXEkc+OsCEAO97v/am8SfOcu/J9k8FrjMVV9JzQks0ia6x8exYAOTlXoOhq1Zido1pAnONQeEM5YNqH5i3jvPpS403MC8MTxkhSW7V4sbK/bzk5Q7FUhU2dMWv4AIrDH/aIAwNYcLrUKO1xrrT+rBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by BL3PR11MB6481.namprd11.prod.outlook.com (2603:10b6:208:3bc::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Fri, 8 Nov
 2024 23:00:53 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189%7]) with mapi id 15.20.8137.019; Fri, 8 Nov 2024
 23:00:53 +0000
Message-ID: <9f3fe7f3-9309-441c-a2c8-4ee8ad51550d@intel.com>
Date: Fri, 8 Nov 2024 15:00:48 -0800
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: Wander Lairson Costa <wander@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <tglx@linutronix.de>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Clark Williams <clrkwllms@kernel.org>, Steven Rostedt
 <rostedt@goodmis.org>, Simon Horman <horms@kernel.org>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING
 DRIVERS" <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
References: <20241106111427.7272-1-wander@redhat.com>
 <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
 <20241108122829.Dsax0PwL@linutronix.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241108122829.Dsax0PwL@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0035.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::10) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|BL3PR11MB6481:EE_
X-MS-Office365-Filtering-Correlation-Id: aa3b508d-ec46-489c-1be0-08dd0049313a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzgzMlR5WFRadWl1WmduRXlOTUg2WVFwSFkwbW5LRU1tUE50SU9yd012VmN5?=
 =?utf-8?B?YXJRZWVJV1R6cHVwTFQ4cTJTODl6WVByL3V1cXcrNHFucW5ZWkZ0T2lxbDZ3?=
 =?utf-8?B?bFpWUnkwZFFlN2svdmtjQWxjN3dTR0tUajB2VWpwaWhnWXNhSEx3RFVpT2xF?=
 =?utf-8?B?OWVyNG9ZekhMeTg1T0dqemFJVXZUY3RxWGQ3T2Nkem5PZFM1OVFJNjJEdytF?=
 =?utf-8?B?S3VxVFBLSHl4UnFFRnZpTkI2TU1ONThjQUw3ZFVxSDAxdXQyNmhqNDhLZmlB?=
 =?utf-8?B?SEEyd3hlRENFSXJKeHIxT2ZnYnhlRTh5WitFenZXM0FlbnQ1UktyNCtnS25L?=
 =?utf-8?B?U05aU3F6Vmk1djE0S2thQWtaRFpiRjBlN2FFNG1FVzk0d0tOQWkwcnh0UU5O?=
 =?utf-8?B?RGdZSjB2b3FLa1FsZlM5eFZFWG5QZmplTDI2OUlnS1VrREtKU08rU1hzSmxs?=
 =?utf-8?B?KzJQYnVaU21UdmJuSTRIVVFmd2N4YVlMVTNRZ3lmVEVyY1lhNGtldFRUZm9M?=
 =?utf-8?B?ZDloNkhIZ0xJT2lYbjVuQ1NpOTQ2RktpcEUwNHNYSUl3Zmg4ckdwV0xQWkkr?=
 =?utf-8?B?M3Vqd3hZWSt6T3RKRjRSS3dpemZZNkNXRjRPV0RhMHVkTFdzRkRIeGhhWHRC?=
 =?utf-8?B?eFZMa00vZzNYMkM3bm5waGgzYitJR2I0QmtaaElDUUE4T0ZTeHUxcUNrOUkw?=
 =?utf-8?B?Slp0VFF5MzZ6em9lNFhWR3lJY0IycGQ1a3pyYmdPOFNzaEc4a2hpem9Kb2xU?=
 =?utf-8?B?cTNFWkpUalF2cDdVU2hhaXcyVm0yTzlIaUVBcHM5NmZxOWRvTUNMMVBEYlVn?=
 =?utf-8?B?V3pnUWZsWi8xMUlSWldGQkFISFVjeW5BakZ3SzEvdjhpb25zZGZqZlZwbTlQ?=
 =?utf-8?B?bGgwa2ZhNFNPSk9LaTV0TVE3cFYweUpwTmprMno3WTJIV0FJMU5TVzM0eTNB?=
 =?utf-8?B?TENyLy9kR1ZKc1A2YnJYVjFkSWN4bGM5bEdOYnF5MjdYVjdpOW15cEZBZEdI?=
 =?utf-8?B?dlg0eTJPK1Y4QUpRak8zeGpGb2ZMeVpMVDRHMUx4TlkyUDFHRVdUbWd0Zmpo?=
 =?utf-8?B?NGZ3L29DMG9IRVhTWk54OGpCTTZWTnVyczBtQWtOTlVOM0NJS0RldDkycTBH?=
 =?utf-8?B?ejZuaGUxbG45cXRzYXpGem1PekQzclJGZlVPYnpJRVRlejd6NHhWZXNWLzE1?=
 =?utf-8?B?bkVJTElkSjMxUHBpQ0N2dEFKUm9hbkhvTmZGd0YwcUMvUUZOZ0NSY3RUbEFJ?=
 =?utf-8?B?TjUyZFJSTXVSQis5b0VvcmRYcm9PTWs5UzFYdjE3c05JTnNEMDNEQzF4MFZ5?=
 =?utf-8?B?MjRUTlEwM1VkYndrTEdJQnlzK1BpM3orbVJwSXZKNjNhcUtkdG9PWjNUYVRM?=
 =?utf-8?B?T1dRR3BCS2FOYmJaVm9UZnF2Y1NEa0dRV2Q5VmFPY093N0RDWlM5ZTVvRVlz?=
 =?utf-8?B?Zkx1aXQzZnMvZXVpaGpOdWYyeTVCdTA3b1ljSnE2OW1Ram0wVjdNZjRlRlp1?=
 =?utf-8?B?SUhhU0V5U3JvTUdwUmFpRWZaWE1sZjRNSEYwNTYwU1N1ODBDUHdnazltcWJl?=
 =?utf-8?B?a0R1QnRQVUFKdVBmQkFadkl0N08xZGJtRTNOdUVBTTdSWUVYSjBGRzY1TTMx?=
 =?utf-8?B?Zm1SaEg5ZUs1bGtCVGowWFF0WE5BaGhaRTVydnNDWjl3dVNtNWtTMS9COXRK?=
 =?utf-8?B?dnpNU1hBcC9XQUU5MVBMTjhHcXVJQnNhMUFNaXZsa1pSSFdMWU95TnNoWHhC?=
 =?utf-8?Q?7ZNJlTmCJGAJg3zhvQYCx3K2Moro22c1hM4HyOP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEc1UVJpY0RmQXNCQUhTVnlqS2F5QTBacEJCUU9CNXlMb3Vodm5kdkhRL0dy?=
 =?utf-8?B?NW95YjhtUTE0bEYwb21pcHdxRERrUWJrUnBZY0pUU2lIYUFBNDJBZnd3K0dw?=
 =?utf-8?B?NkpsbEk5elh3Uk5RQjhpa3cySjJPY082M3lwcHFRVVNjdGxOdjJDZ0Jsdzhj?=
 =?utf-8?B?MlpreGJmTXVWUjZ3aFhmVE94b01nZHgrNlNHWWhjakxYUHdxQ1dkM0cyd0ZN?=
 =?utf-8?B?aitXWFA3TGovWFhxbnJJRnA1RGI2WmF0UE9OTGR3L202UGJCUVpMWGQxZUhn?=
 =?utf-8?B?YjJmKzd3S3NOK2tpUFdybm91azEyTk55Zml1akFpMjRwdTZTc3hta0tXS3Q1?=
 =?utf-8?B?K0FEUGEvcFhWaWRHMWRWd2tVNEh1Mi8yWjZ0bGphN1JubGlZL2RLdktDSG9r?=
 =?utf-8?B?NnNzZUVQUWI5cEJUcGNwUXVSNk5SbVBmSEwxNWh3UlU0SXJqdmVHQ0hqQjVL?=
 =?utf-8?B?MTRyOTF4NG8wMlF4RkhFUE9QSGUzUm1UWmNlSVVSQnZGT2I5WnNFR3FjendN?=
 =?utf-8?B?d2Z2cko0SmU3MU1ySHp4YmlWZWxtWDFTSExudE1ucWFRZFBYMTFsbDJjRXpT?=
 =?utf-8?B?eER1bEhwUU4wM1pXQUhoRm9sNnZoeVROa2hhTUJlM0xOMnZkNkp2U25aQmdS?=
 =?utf-8?B?S0sya091S2prcDZrZStJRVZSV0NNZWx3alBZdS9WQzN3S1Y4eitiVDNRaE5p?=
 =?utf-8?B?RzY1Uk1BRk5nSUpvZG03RjhSUERvTDdZQ3FBUWhoTHR1UTQ5M0k2anpVOTJ2?=
 =?utf-8?B?NGFiNTd3VVlyTkloaTVSRS9ZNUQ2MzYwWkxkcEp2L1F3RGo0SStxL2l6ZzZj?=
 =?utf-8?B?b3dpNzk4dnJTc205RDE4OUpDUlpLUXFQVEI1cncyWk9ZZ3k4K0Q1ZU9vMTZN?=
 =?utf-8?B?WFB6bjdaemkyYkVqVlROZVFwOXF6WXZlU293d0k1d0tiQWIvb3NZTVV4VVlr?=
 =?utf-8?B?MENIYTdOa2NTZExmdkIwRVFNR2pXaFhtQW9RT1I1SG10MEVBMWlMNU5TVGNp?=
 =?utf-8?B?WWUzSTJXbVgzTFpqcFRpZ2dwZDR4RnJQT0hkaStiL0VlbGlxS0xoWnVaUmFB?=
 =?utf-8?B?YnA5a2s3bFlQRHE0VW9kSzF0K1RoSm1XbkxHWjVzb2FrWjhDT24yMkVScCtq?=
 =?utf-8?B?VG9xcHVoUXhMMkVISGk5aU5QTUVrellsc1gzZ3NacDA0YTZ1RjlGQmVZRnYx?=
 =?utf-8?B?TmY2QUZaN1d2Z1FHRmMwYmQxaXdSalIvaDNtRmlNVjZMbElydTk1WTJxNE15?=
 =?utf-8?B?NHpHV0FJUlY1RU1vbHdTUytWTTZQcy9GNVIrSjFVazVkNnJBbFJkeGFWQk8z?=
 =?utf-8?B?MXZoMThHMVQvbzZRZVo4bW95ZVVtUWI5Tm5NQThybWlCR3lIZjcvb09Db1hX?=
 =?utf-8?B?YTBqdWJOdFZ2enBXY3crd2oyWFREcW9Ycm01SFJCR09Zc2MzRkNKV1NuaHF5?=
 =?utf-8?B?cmJvNkpxSEQ4VHhQcFVTajF4TEFPZjA0aDZhdHpTbFVnVFlDZkFROE5KemVn?=
 =?utf-8?B?Z2FZZ29NR0EwM0NiZWw2a3BTTzN4M3QzeERFZjZxN2dKdXlXQVRLZ3JWMWNL?=
 =?utf-8?B?djNXaFI3bGJncmlzbmdwbEFvUlZZUWozMjlwUXJLNm05UWtXN3RPTHJwZHZ6?=
 =?utf-8?B?UjBrYmF5NG5OZG5zajNTdHV3NHRoTEhkZG5KWW8wWXlraUoxb2xzMjNlcnRM?=
 =?utf-8?B?MWRWQjQ0RTZEbnBrVkR5VHhHQkV2NlZoMTBmaUcvOGVGSHBMTEQ5dTZwTTdC?=
 =?utf-8?B?ck5Wak5meE5sSzVWK1k5R3FpSWc0YVNrYzRVL0NlVDQwckRtVlJ5QVhxY2JU?=
 =?utf-8?B?dDVucFVuRUM3amczZ04xM09uMVAwa3FMRWFHRHUxaFBQZ0NCS0FYWDMyWUc1?=
 =?utf-8?B?dXhmNUZqbUJ4clUySjU0dzBhcldrSVR0L2Q2cDFmb0Qvako0NVVEMFBtWHlx?=
 =?utf-8?B?YXlGMUg4QVdrV29YcDBhQ3NOUUROY2tCbjNyc3BDUWh1TjY0dk13Nkt1d2ti?=
 =?utf-8?B?UnVrVklpdHJRKy9JdmFoZlc3emtzM3dYWENOSUNrMXk5TVdUbTZndE1FRmpy?=
 =?utf-8?B?UVNnTlI4SkpkWStvUFlRUitVR2pTTCsySmtqWmZHSzBmUDNoN0VYNmtjWGJX?=
 =?utf-8?B?VEszMVp3WnIyS2JHaTloNGF4dXZybUZ0ajZESFo2L2VkOU1jQzFhV2oxNEpP?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa3b508d-ec46-489c-1be0-08dd0049313a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 23:00:53.5443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hoNYBkfn20H2YkKh0GXNz3CtJ0TXShtuNnfk35rBKe3mcXaGpUh6Or8oRpwwulQVxzknvi3yPqltnaPaPFqBVy0m456UZ8daZx7rdu1XAec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731106860; x=1762642860;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gQYJsJNkBcQ6bxvryRSVJMPY5D6nl9bMN/86sjgY7UA=;
 b=UWsjIW+Tu5VWbw1l3qyGOlVVkQZhKoCWMj3CFJdKINQhmFu7lgubdqoq
 C5ffk6HxNOc1nQyx17angf9d8LOGhC7PFaF/wU5nMagcrGD8kOsKyp73S
 UZIbA1KJWfDkWDe7KZ2OZ3+uo1fmC7kV1ZzHkVXHlyjHF/pHHznCaG98T
 DcloIrp+s0aIJTgwaY12lSEql+k+7wG/qao2W46wMkynPapM2niZJSbs9
 VY9W8quQYiG8OYrogh5jLKWNwE/oIG54kmJoqiZXsE5ZMRO33Eyrer+lI
 0de8wiMJg1JMekzQSpgyrEPlBfn+uMWhNPWZbCNyKhur7osrJsvZPDrIt
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UWsjIW+T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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



On 11/8/2024 4:28 AM, Sebastian Andrzej Siewior wrote:
> On 2024-11-08 13:20:28 [+0100], Przemek Kitszel wrote:
>> I don't like to slow things down, but it would be great to have a Link:
>> to the report, and the (minified) splat attached.
> 
> I don't have a splat, I just reviewed the original patch. Please do
> delay this.
> 
> Sebastian

It will definitely splat on RT kernels at some point, if there is a
spinlock.
