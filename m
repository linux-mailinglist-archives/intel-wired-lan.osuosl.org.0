Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGcQEuqmzWmvfgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 01:14:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0749381861
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 01:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C63C06080F;
	Wed,  1 Apr 2026 23:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KjrS1JwseKxb; Wed,  1 Apr 2026 23:14:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2013A6087F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775085285;
	bh=WwVkIIDo3Z2zsJZbzVr8eyuk7qBE2CQPsTK40ZBzspQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uc8zCapAVfQOKfj5UasbOPvk1euIlmbx/l49JduHioTGidlJCP3rd1ooXN15ONFsG
	 Ek+iZ452iUl293/BJsNNA778UJ+GlV/YBqukAIkkIfvGuA1ksx3MbxoK2gujBgnl0V
	 G5j7pf6OuaYgANywgO4eWu3t6I7Dq2xaWo5QbfFCG9s5jPogD/POxLRSW9sMuCLstp
	 +OFdyZOFlaCnohTHjyeAG1dlW2LxdPfIogGUq9AZhPSO027ZpJ+fRGRfehY0lbng0v
	 1JF27tL6oj4VSUYq5SVOjahrAvZeSs+2QI7PI7v/o7Bmefs7DusEQ2WuunLArK3hE/
	 F6crIH+WkICgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2013A6087F;
	Wed,  1 Apr 2026 23:14:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 71F8A196
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 23:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 579D040CCF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 23:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1teCZtMdVVvw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 23:14:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 79E3740BC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79E3740BC4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79E3740BC4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 23:14:41 +0000 (UTC)
X-CSE-ConnectionGUID: BlQZlaocS728A9ZauU9VUA==
X-CSE-MsgGUID: k1LupIUdSyq9c03gj/5lBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76024768"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76024768"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 16:14:41 -0700
X-CSE-ConnectionGUID: jxliyXxfQtWkNXCiESiIXA==
X-CSE-MsgGUID: KNmvMGX0S/yGg/j69QnAkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="221965428"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 16:14:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 16:14:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 16:14:40 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 16:14:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dgO0N/p3S7AJXhPlRiaYKIXrhJJ5fTqnahJWegZge+9aF9G9KiYvZQrXzrqoYVQGwCk1k3i8YZHthHCPrFY9xTWFXp4lywllGGrnUxk50DhX4BuncH4f8fEvfpddYyv3l3abcN8aGvye7aJ/0O9m4OBjN0J8bC8knpc5P+iauECec2vyGrSmKy46USRSgJq20ghYX3dp+cTbAZpsTB2VlWuPZVi+LluLpgb3Si8ZPnKKnE1I3VA1KppC9SWcFMgAtAvZR2R0UGsJ5jjRlK+ui9I76YLD7GlIK3PXhTp7N8zCOETRAC0d2BYcpfGpL55I4+WERqmXFf80m/tgkpbzUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WwVkIIDo3Z2zsJZbzVr8eyuk7qBE2CQPsTK40ZBzspQ=;
 b=DWrGvRJXw5gJdTr0KoKtjELWVqPGWYEo9PQD/86a9kLawQmrZ/lmrlAdi/YJuul7NJ4mWOYy9U7KhJXlL1tAxpaeQg2/UBbVqaKhkM8ud+Gylolgl5UAplrp8d61OiG5Duwo6zfTTkw9amWJeAI4g65fR5qwUi7FdoGXk+Wwf7XvtccJn87/l3yCxVsoO906dFyn5nRNUJzgi03eurStHJ/mJV6QaCxw/KN+wVaIZuc3hShtqZQkHY+5IqmQkJRMufvcBTw965yCJmKiNb1JfdZZEUywvJnlFTE/CAnAEMPVIjnjPA+/bKDVwYj1rTsrMCVd6+wAIVbl3xjPWLeH2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SN7PR11MB6945.namprd11.prod.outlook.com (2603:10b6:806:2a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Wed, 1 Apr
 2026 23:14:35 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.015; Wed, 1 Apr 2026
 23:14:35 +0000
Message-ID: <09421682-7837-4f5a-a0ca-0baf9879eea6@intel.com>
Date: Wed, 1 Apr 2026 16:14:33 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260327072236.129802-2-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260327072236.129802-2-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0014.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::19) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SN7PR11MB6945:EE_
X-MS-Office365-Filtering-Correlation-Id: 26dcd298-5145-4552-ed36-08de90447070
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Q+GpVP+pgNm7an4RzCm1aYubhZrL8bcBvQ64oulJVyyuyF3KjHHCTJ+Ax7g58SvK4OLE9uLEmMJiQMte8EsvI4L2QD3kgN+GGBbZQ9oE6Jdn3DlG/VMZW53jHxpxrOUXttIOCCLNEjxqumqx5P2wDBI2Ec/l8zOcAlg6RsWneWjGI+o/WzSv6XR+yOj8Wlo2GcSiNXNa5wKGbCyHvsKcA90TjptJEOU7Gd3+s9MnanVc6bENsHBmhtIcg0YNBdkHyECFhJj1qWLABK7+xV/hiH64U+vd0uEzVCbOdpv0BJgMFg5DA3+GEvi2LhxQDyj0oVckWnYAOM7A9b4BRHHnUTFzfNs7HzVyxqbKSsIGIoRrZv4p5X7C3rNrgoPdyCXGNmjqd/sHckjz/yiOyDew7jKKe4Ka/sNyzS6ABMXAzZnXFwbE/zw82HA/BCEpuPYJKTkXat3eVtw29EwgiiVbO3y2ChosCk0UywxvVx6TEOrKDGs4NbRwJ5oypvEg903L9/ALFTHqqA+DD+Vt/eEsm5d8qPBqeXMw/YSXZVUGHh9JxHyWRWKMo79f4QJz4cBB3BfoK0f+uYasg+y3ZM0fQMJsuRDGFcBGl8eMemibLaRCtaFwdDu7WwClBkqz7m8EVSGi2IvqkqngGpL+qu06zdYpWi+DGe2dDM/dQxnq1gf7apQut++L+hfGsUTMGbQk2d/3el6TjHYiPXOo0itcmWt65qqrIN1H2nZORnTDTH0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3cvN3FJdlhhT0l0VWlzU2hZZGNtVXNib2d2RjNMc1M0QzBFbVZ0VXNUWTJa?=
 =?utf-8?B?a3hYWFNuMHJuWjJvNkVCaE5CditodFUxRzQ5MUg1cURTdFV0MzVkd051b29x?=
 =?utf-8?B?U3B6N3o2T05NSHYvNnJ2N3hId0FBYXBuOUVzemUxVXM2SXZwMUthOGhuMGJh?=
 =?utf-8?B?RXJsTE8yZGNBM1pwaEZiY3ZXbHp0dE5GaW1nOVNwQld2bmFnTDBIQTFGalhj?=
 =?utf-8?B?RjdTclNkRjh0L0Jkczduajl4aXpiUnJ4bVplR0xydHgrc3c5WklWbkVMTm1y?=
 =?utf-8?B?b2tSVzF5dWh2RDJ6Y05XREEvdnpmMmE4Kzl0cVhuV1ArTVZvbktDai91N1FL?=
 =?utf-8?B?L2k3SmM4ODh6L0IyOFpsS0RqSjlqUUJFMVNnUDNENGt4YjlYNW9HODJkcjFB?=
 =?utf-8?B?T0dnWWtqVkdCZWd1d3ZPOWVUN1pnckxzMnBvRUlIQUt3Q1F2dWtYT0RLRXRu?=
 =?utf-8?B?d1pXMDRLdEU0NTBsNncrRlNzT0lsbzVxZ0hsMEJMenJMc2pxVDNabFlBZW9m?=
 =?utf-8?B?V1V3TytibUlmMW1rSWxXQk1wb0VnSlN4c1BiRWhoMlhsS1pHVVdwME5YU0x6?=
 =?utf-8?B?a0pFcHpkaDVOU1NvZHRhOStsQTR4Z1dKN2wxbWNVNHdzUmVZZ1RyUVJqL3Rn?=
 =?utf-8?B?WFhHR3d0bVd1Y1hvQ1Q3L2w1aC9pd2JLY0YvRlZYYUw4M2ZmNUhkTnVnWHhD?=
 =?utf-8?B?ekpWSWdOdmdzaE8ySFFyYnFGaHY3ZmVOVjZpUERBTUtDRHdBeUhCUDU1RkUy?=
 =?utf-8?B?SEFQUkdmV0Z1TmViaVJ6ZXhTL0lJTlVMV1ZhRUxJYW1ZUFpSL0szaGtGTjF1?=
 =?utf-8?B?c1hvZzZDc3R0ZVFqZDNQcm93RGlVUnFkam9ISFVLTHpiZ0plU1lqRmJIaGZx?=
 =?utf-8?B?K3hzbVNKRzgrS0RNZ0NGcElNNEVDMURqVEo1aTk3R0N6eXhPdUNRSm9YRVR6?=
 =?utf-8?B?d3hranRxRit2RDZ5WS96RXpnUzJ5NHQ3aW5RVVRxdTQyRzZWZmpsdHZ2Qnhi?=
 =?utf-8?B?aGlDWlVlVzZpem13dVpTdGJ6d3hvc2hId3h5d3JJOFllc0pqdE0zVVBId3ov?=
 =?utf-8?B?NUc5NzlrTnloMS84NW5tSzdtc0tuODluaVRRZFZwUVA2VHRmZE8yY09PQ3p0?=
 =?utf-8?B?WU1mN2liQnJPWVVBcms4Y2F5SkhHaFhlY0liajZyTzhvRmdLQUxVakxtZmxX?=
 =?utf-8?B?Vm1JRFpnMVNDMXFhZW43eGFlQjZkTThvN2RZVzBNR1RRYUYzVnd2Y3JyWEF4?=
 =?utf-8?B?TGlvSjZHQ3NtWXdDYVZtcVA1Q3pXVEhyRTR3NXhTeUpXWjNIL0t1N3pBcHNa?=
 =?utf-8?B?c0huOTR5WUlJRG92cGlZMUhWZlBWMURyZ2RHcngrc2hhUGw0NGgwd2FKREVU?=
 =?utf-8?B?OWd2YjllUjhsbThkY2VXbkRhbnplWExEV0JyMVBEY0xPOE5QazdyMnRwdVpH?=
 =?utf-8?B?ZkF5aC9veXJuNzYxbUVFMFllbVhZd29XSFdqSlczM3pTYzBSbTJGS21maUhh?=
 =?utf-8?B?d1pkU2xaTFEvclBXZGsreWJ5NzNIa09WdmpXU0tJaU5pT2E0Zzh0S29UZGZX?=
 =?utf-8?B?ZFpxaHZuN0JtaTAyUVdibHN3UmdYTnVqMlZNVmE5WFRLNGxXakdtb29HNjVj?=
 =?utf-8?B?VGV2TkJ4UHg3VllOdVJucDFUZ0JGNTZZYmd4bEI5cjNUZ01DeEZ3OWxPSU1p?=
 =?utf-8?B?WU93WXlIQnlQYm1RSVhuLzlBOUV0NlNlc2t5Y0MwQ0FUdmc2M1BOcEs0N2tZ?=
 =?utf-8?B?MnFSanZwOVhFd08waFRRbjZ0RW1xUzd1QzYwVnoveGdPM2FSNEgwNGcvdm5l?=
 =?utf-8?B?TlMwKzFSRGFNUkdFWVlJbi9WT3ZNQXVQVzB4ZW1XRlRacWdGRVF2R3daUmth?=
 =?utf-8?B?OG9FUTBJSHFUL3B6eGRVN3MvOFh1cC82RkZXU3VQd0VwNXd3Mmk0VlpleUVE?=
 =?utf-8?B?dnNLWjltcVlNL3ZLcW1sTHFmYnEyR25sMnZ4Ly9aT1lzalNyTVNWa29qNmk2?=
 =?utf-8?B?QjVpVHA1WFdlUS9FTFZpZDZhZmpQRG1yRU5HdVJFNjd1RGp6VHZzU0ZSTnhB?=
 =?utf-8?B?bXJteU1mdzZocVh0aXZIMFVzK0lMZ0ZEV2p6cEcxYkZvc3JIRTNsTlpwU3l4?=
 =?utf-8?B?aHN2YTNKUDF4NzNWeGZlbWNxODBrT0FaSEs4TzhvV0ZWOXdGQS92cFVKd0xk?=
 =?utf-8?B?T0hsaFExanR4UFZwTlVvNVRrQ0pjV3ZZWWRTMnVQYUxKSUdOdThCKzQ4TEVu?=
 =?utf-8?B?dlRqQWdPZTNOVmFobE8zMmEzb2hHN241U2pyK2NoL2ZyTVVXODVlUTFxeDd1?=
 =?utf-8?B?V2o1bC9zOFZBSjN3SThWdkt1VUQrS1VnRk16OWNMbytwL3JkZXpITzMzTEs5?=
 =?utf-8?Q?ddjCpX4739+7eJBs=3D?=
X-Exchange-RoutingPolicyChecked: CXELvPbG0aeoGYC74KVkNSxea27ChSH2H6/XyDsMn6aIYSC7YTICx8iKmmVZT/9AoVaygRLS/S8+6WcmaoK3tr5m0cq9KEdJLhCe3KnKRBs9OsoMIn6/wEhwwHtW4/5rpOl0+6fF2PwZoSqe38ukU6BSUIzOBP7Fb4+qzqTCsKXY5cunqVZb/gUfDOaAhjqYjS74Cr0/KVPvGxAeFQ2LBRvCALE1rxuJnpeIAcoxDdehE/WxpS3p51yzm9X6pizD0IQF+zS3PTCCy5lWhd8ES7Z0DoT4HR4WPiIjLEwykXbyQ+s1ikFFwsJObtgvL4Y33C9JKoCyTazax2aTtYE5FA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 26dcd298-5145-4552-ed36-08de90447070
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 23:14:35.3942 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BbcY55Vg8NNakSoE9JrqniK1NbXBWVoU9lXrAbPgoZ/B27Gi7NadNWfZppQyXfSpD5tWrnptNWTZSlL3Al9YQbePQEnRCuxPdgvY5bT0S0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6945
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775085283; x=1806621283;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=78U+oe5/u5G5GKya9zoM3d46bPztPKynTIFAAZ11GbQ=;
 b=dhDmx39hiCZDMKRUCmLyViiX3IRyX2+7goP7L3X8p1aEUPlVbblGu7Z0
 p8hIzhoHnwlpJiDYeke398I7jc+8R1ErGLtE5/o7Bt+J6zRfh62vdVJJM
 blrwizgO1vwYuDcEme+69X1jWGSIgsZYvta+GMe6cxOfbUDYOpCWuUO8t
 hGPCKkEcEV0BQUZNO0TXrx3+E30uQqcC3RHL1YuJYis5/LR4LLKqtvhFX
 X3qRDU8N/ePnB9UfJBDvTOoStAOkCrEpYLi9bf0vEyAp6AcnmllYMW7n+
 +9Ai7ozYORqoD1IAzDc4grSgu1MXL3jVAqAuv/NAJnOaUq40uH+wiJoOc
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dhDmx39h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: do not reset MDD
 counters on VF reset
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: F0749381861
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/27/2026 12:22 AM, Aleksandr Loktionov wrote:
> From: Mark Rustad <mark.d.rustad@intel.com>
> 
> Do not clear MDD event counters on VF reset, to be consistent with
> how VF statistics are not reset either. This allows accumulation of
> MDD events across resets so that persistent misbehavior can be
> tracked and reported more accurately.
> 
> Fixes: 12bb018c538c ("ice: Refactor VF reset")
> Signed-off-by: Mark Rustad <mark.d.rustad@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> 
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 7d33f09..9bcc739 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -227,8 +227,6 @@ static void ice_vf_clear_counters(struct ice_vf *vf)
>   
>   	vf->num_mac = 0;
>   	vf->num_mac_lldp = 0;
> -	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
> -	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
>   }
>   
>   /**

AI Review says:

There's a documentation issue in 
drivers/net/ethernet/intel/ice/ice_main.c that should be addressed. The 
comment in ice_mdd_maybe_reset_vf() states:

 > /* VF MDD event counters will be cleared by reset, so print the event
 >  * prior to reset.
 >  */

This comment contradicts the new behavior introduced by this patch. 
Since the memset calls are removed, MDD event counters now persist 
across VF resets rather than being cleared. The comment should be 
updated to reflect that counters are accumulated across resets to track 
persistent misbehavior, which is the intent documented in the commit 
message.



Also, the threading on your sends seems to be off. If you are going to 
send them together, please make them part of a series. If you are 
treating them individually, please send them that way.

The target trees also seem off; some 'net' and some 'iwl-next' patches 
with Fixes: that sound to be bug fixes. I'm working through and sorting 
what's been sent, but please try to tag things properly on future sends.

Thanks,
Tony
