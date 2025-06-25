Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ECFAE8B39
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 19:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E79E8410B;
	Wed, 25 Jun 2025 17:10:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wG-ZVGWaGQM8; Wed, 25 Jun 2025 17:10:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 611778410D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750871419;
	bh=L46zyH2sUQYjmiRBjNW4EVltEu2Ayb4ECNblhR3E4Ak=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HNzXheV186cainSslX5zW2gcH5aelMskxSqZHbE6b57DL8AbN3KjdFf/r4NjPbeP1
	 PxzVcc3D2lTmS3+jEHItgRTnY9QhjdqIG1gZqaYaCf69qVT+g11T2hI0gg1RvHeLwY
	 wiQVf4RcqQNSpmcFsadCcHUxV3jWe4zk2n4ReErjd7pkP+19C9w6DHOEcPLdjuHYEY
	 D51sHHlnIxDCaKR0c+D1fsngeHYxRkBDs931kCrBBbbcxzpZLRc9bAfk1nvIfD1vTd
	 xsnm/AYhg83hEqkj90G+6evRBkysEIwn8v48bpGfXZVUZkfZ5S0gC2GyHeoaYEWf//
	 G0stZ7vjTB/sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 611778410D;
	Wed, 25 Jun 2025 17:10:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F41AE43F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:10:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E617640401
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:10:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2v2KVyXXtr1I for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 17:10:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A2C640111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A2C640111
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A2C640111
 for <intel-wired-lan@osuosl.org>; Wed, 25 Jun 2025 17:10:16 +0000 (UTC)
X-CSE-ConnectionGUID: gYBA14+yRSy49mHn+kkkpQ==
X-CSE-MsgGUID: QvTrzx1VTUC8mLkcmsKpxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53289016"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="53289016"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 10:10:16 -0700
X-CSE-ConnectionGUID: FtR07TVCT4CA9bQ3w/GBxg==
X-CSE-MsgGUID: nioMiqjFQd2GJfr7lZrMLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="156670573"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 10:10:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 10:10:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 10:10:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.81)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 10:10:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LHNYlKmUVs8OWeFKxBPDM88RIOQ2EwoVv2KelLVUVv8LXLIPqRfeVFNkc9zpuDuBV84MwphgOXCZ9OmH8AAikVGjGLrBqw5AgMDRk0xH44XgLiedwEb/PZxAZ9+3hIuK8VJnpCA0/tIkbmg7KjwwLFGB7dp/DDwQP+gpT8gt2lwhpSHG6x1aA4QGiFmbgXw9y+4NmuAAQaB0Kab61xQNB31soANu3NH6k+cKpHpXFF1dAH4qb90/ZhdQWD/SpboPKjg1avm0aD28kYyfESrCdvwbww0UWAJKHaFUwpxV/Inil8ZS4VmWxoo97/7jjKcopo3RZJwMA0jXJcWTC+y9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L46zyH2sUQYjmiRBjNW4EVltEu2Ayb4ECNblhR3E4Ak=;
 b=HMfiuIMrvaaz745WqyOrnvZbLo8RBXWQyl0VUBAM58+gSVCQcQXKLb3g4KkRV5Er0Ohb6eu1cxq/N2vT08aWmHgWmjNnidA7iqVkz2fUTLpKQctTntPsaxt1Ky6Ov2OFcuxtZya+MEZUndYj6EQNo2me8BCzzlv4KAZ6K9oFESXGpFt2uiMSiWVJSpljZJI+XEqs9JU8nFAs3sD9OUQm3bKsT6Sp2NMIlef0C7prFiBEJNlaoIdpl1rRtA95Lglcqd1L1D7PQSlFIjUqvfmI+avQ0Q8dt2QazcQ6T81hrBtGkEHDVn/1JmFkewJBcsJ6llLyhc2JH/iaUj8H+lu9Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8894.namprd11.prod.outlook.com (2603:10b6:208:574::9)
 by DS4PPFCE18D981F.namprd11.prod.outlook.com (2603:10b6:f:fc02::50)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Wed, 25 Jun
 2025 17:10:13 +0000
Received: from IA3PR11MB8894.namprd11.prod.outlook.com
 ([fe80::817d:526d:9031:d5ba]) by IA3PR11MB8894.namprd11.prod.outlook.com
 ([fe80::817d:526d:9031:d5ba%4]) with mapi id 15.20.8769.022; Wed, 25 Jun 2025
 17:10:12 +0000
Message-ID: <783f54bd-9807-4874-94c8-1b99e914dd78@intel.com>
Date: Wed, 25 Jun 2025 20:10:08 +0300
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
 <20250624194237.GI1562@horms.kernel.org>
 <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
 <20250625094411.GM1562@horms.kernel.org>
 <613026c7-319c-480f-83da-ffc85faaf42b@jacekk.info>
 <eb418aae-c0d4-438f-9b3b-fcb870387b1a@ursu.me>
 <20250625170050.GJ1562@horms.kernel.org>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20250625170050.GJ1562@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0013.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::6)
 To IA3PR11MB8894.namprd11.prod.outlook.com
 (2603:10b6:208:574::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB8894:EE_|DS4PPFCE18D981F:EE_
X-MS-Office365-Filtering-Correlation-Id: c9e23618-63b1-499e-6034-08ddb40b256c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K3A5Y2V3bU1meERSTXA1T2ZKQWtTUGJuZU5lN1BneDJNeXZnUGE2aHpYODJq?=
 =?utf-8?B?VHFpcFRyU0FYaitrT2xBUDRxUzduZEZMOEY4YmJZNGhuUW9pV2VFVkRDbG9L?=
 =?utf-8?B?K0N4cmNMMDVILzA0YUZnQ0NOVFRNOXpZU1ZnOEIwcFJ4REdUdFY5QjhYZkk0?=
 =?utf-8?B?YmZ3Y21yVHlhelh4NW1ocmhTak9SWXZKZ3VMSEhNaFYrYmEvM1BLbUlBbWlk?=
 =?utf-8?B?ZVczSGJGZWNwRUpINlcybjMzSVIvendnVXhRaG5kM3dzSXRJbFFBeHlzR1Vi?=
 =?utf-8?B?amhDNGhEQndGZG5NZTlyYUdqZU0raURGbjVVckgycGd4UHMvbWtudWNWSWJN?=
 =?utf-8?B?elFER1pMLzA4WkVtVENDQ3hodHh1RmEyeG4rSWhZVmtadFFWeHpFNGJGNWpo?=
 =?utf-8?B?NHI1OE42TGovcExqS2IyNzNNVnNtaUxkTUZqbnRCVy9pYmNnTjNMZ0hIOE9p?=
 =?utf-8?B?MjZpdHJMdGdBcWZPR2trYjR1VEpEYmd3Ni9ScHVOMGwxREgzSjhVSTRXcmZy?=
 =?utf-8?B?dDh3Si9tUEIxa3QwTW5GTjVVOGJ2UDM1L3RiYjNGVCtzVUU2SGVRcllZL0ow?=
 =?utf-8?B?QXBTNGJySjFJQUZJdlVwK2J2Q0lOcExhT0R5a0Ntc2I5blRrRzNuVEVDQ3lB?=
 =?utf-8?B?RlMyMS9pcXlNNmtxdlNORW5jVHJyYkdKMDVtbGJvNUlmcEJLS2F2K1NZQnhl?=
 =?utf-8?B?d3RWR3hia2RSQlVtSHlkVnNZa2c3RFBybzZBNEFaQkUwZU43cVR2Tml0cDVT?=
 =?utf-8?B?aGNuOTlpRmUwUW5DaFhxaVRzSEFmbzloRXp1NXo3QjlHYzFPbEN1a2R4Mk5Z?=
 =?utf-8?B?bHNPWUd3ekY0cFBOZTdSZ0xiaGs4TVVDRTFEeFQvVHBvMCt4cWM5cUM3cGJu?=
 =?utf-8?B?S1kzMXQweHZmSWhtTGQrZ3FmMXpxYTZIOUtSdjVnMGZKVExYUm5sZXIzT3RB?=
 =?utf-8?B?amtweEthdXU4K00zVW81a0FHRFhYdkVneCtQUExuYlYwYzdzdlR5ZlhHZFlI?=
 =?utf-8?B?Q0J0SVcvcjU4eWJKNERWQWEyTFE5d0Q0TEVlRUlMdVVhUXd5UDFmUE9idzdR?=
 =?utf-8?B?aGYzUWFmSHVwaU80YnV0UVNXU1psbEJNQUZmbTV6T3dISDd4VjErMUhDbGox?=
 =?utf-8?B?dDdzSVFaV0VQZzQrK2YvOGhMM3RBQng2aUthblE2bXZNUUVTR2NqZHdEVlU5?=
 =?utf-8?B?dkFVQUZSY0NhRmJYbnFaVVhhY09WL2pmYi9tUmRnZ3d2a2o0blRiaDFxUVY3?=
 =?utf-8?B?QTBWVWk1VWhKVGdDc2FXK0lVRU5Kejhuc29VNnhrSW0wb09zOGV1SDlRMXVw?=
 =?utf-8?B?M3BCUkQrOUNTZ2JYWjU0KzFjWkZQTXRUeW85UnRVUmVlM2w0OUwwYUFySVFl?=
 =?utf-8?B?bVl1ZHJwWVgzaXN6akQwZVNYL2V6d0VYNkZBRjdGVEsvZWhHUWpIR3Z2ZlJJ?=
 =?utf-8?B?b0l1SWlJSUF3TVFWZlV0YWJERWI4MldiM3haZk1YTGs5Y2IrbWN3L2VLQUIx?=
 =?utf-8?B?aUJKVGtaSUw1SzBDdVp0VldWaVIxaUpjNW93bVdTU0MxOGg5dWJlazJvUVFI?=
 =?utf-8?B?R01iSlZSMGdlRTBESGtacXdaL2dKVEhuMWNDSkgweEtwdkhBMHpaMGdpdnRC?=
 =?utf-8?B?aEgvTUhEQVVaNVNWeUlvZEZWUHUwSUtFTFRjVHlIZDNZZ0pLQTlGZEt4V0ZK?=
 =?utf-8?B?a05UNGN3cnFMOG44TitVNVc2YkVJTmZEcW1aVlRpTDlXZmQ4WjhibUc4ZVVy?=
 =?utf-8?B?OVQyaitYNTNqb3ljOGM2aWIzdHgrd0JrcWdHQitvK0I0MTRkVEhoaUZ3aXdk?=
 =?utf-8?B?ZVZlQllZVHlTSVVJVlJaaFFtQ2N4Nm5ZNlJ5TWZFY1pJVjIxcCtLQjZ1dGRz?=
 =?utf-8?B?OG9TSTJTank3R2lhRWtDMGV2ekFoSUp4dDZEUC93b1NqTHc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzBlQVpBblZqNFhNdXl4NFNNdGtFMmdmSFQxZjh0UzNOcTdUVTNVY1dMUVEv?=
 =?utf-8?B?WVNRaHFLbDVjYkFLTkM5Yzl0RXduT3J5dW1XTnpxQlFMOVVxdGpXd3oxb1Fz?=
 =?utf-8?B?amRuVS9RVDgraGRJdzdIZkNZSG1uVjJ4V0JVQVFBV0dLLzFxc05jOUdFQjM0?=
 =?utf-8?B?ZXB0SHQzNkFaQU5lcG5NZTVFQ1J5b1dwQWRNd3ZzLzF2aUZCSEljMWprYTVm?=
 =?utf-8?B?SDROcDZzT3g2NDZIaVd0QlUxZ2V2Q1lwV3ZIRXFWbGlxSzRHeXJmTExuUXNt?=
 =?utf-8?B?RmRZdytXZVhYVlFSeWZDWVlFek9DdEVkVWMwNllndlg2SjllTHhRSmdNbTNW?=
 =?utf-8?B?cjd0Q3hrOEdxeW5CdXRyZHgxYk9hQ0tNUkkxd1lIUFl0MTY0OHZxVEp1U1Jh?=
 =?utf-8?B?Q1praWUxUEM3OEp5ZEphbjF3Sk9kVkRkcjF2aGhaYVBMVzViZS92M0xpZ3lp?=
 =?utf-8?B?QzVZOGZkeFlLNi9PaVgvYjgvZElsQVdJbURxQlFQL0tQN1BCWC95ZW5kV0Rx?=
 =?utf-8?B?UUYyVCtsTjRaSFpnWkpld3RRTGhBM0lwOThHeGdnSkNTZWEvWXZkUWFEaUIv?=
 =?utf-8?B?RklodlhkMkhqSmxRSStlaHlORklVS2s5Q3VpMkduY0VPdEpOa0x4S3ZaNFZn?=
 =?utf-8?B?N1RqUko2Y3RIckFZZ0xUN0kwaWhqemtsaHM2YStGQmtScHR6MWpmWDNYTHUx?=
 =?utf-8?B?SVFIblE0K1piTnhmWFFtVGlKbmJEajVPVE15RC9hQWFYRzVFVjU1VU1qNHNy?=
 =?utf-8?B?VGtJOEQ5TUN2dUx3VlNUUGFhcmViZjY2QTk3S25Ia2w0RzFNb2FVRWdpRmEw?=
 =?utf-8?B?MC9zL3lkTUowUTloQWkySDVFQ0dSNVlUeER3aGJ0cmtodE01NzJrc1ZnSldx?=
 =?utf-8?B?VlhYTVBLU3k1ZGNBUkNsYkF2QTB4a0R2cjR6L2FoWGpaZ3AyZ2tycFRscWRn?=
 =?utf-8?B?NEdpSjErTm1xdUZTNjdVaEc1Zk1WRTdnUmg2ckJDa2tFanBSOFF3NUVsRnZD?=
 =?utf-8?B?a2lnTmZaZ1l3am5YbGhaWnFGeUNuT1Z1Vmt3b1k1T1c3dm0rZTVhWkJzb0tY?=
 =?utf-8?B?YmJlNUhXck5tZlo0eTc3STlQQUp2dVdDSFljcWozYk9vMytJTSszMmFrd1BH?=
 =?utf-8?B?NkM4U010eVA2NXBhY3FUSzc3ekx2Rk5sbTdqVnpHRVJnN0hDSllFR3ZlVUwx?=
 =?utf-8?B?VDU0VWFaeVVuS09nVGdYSXgySUdzZklacE43NWZpRGprMzhjSzd1RFZSSTJF?=
 =?utf-8?B?WFN2YkdxZ09KU1dBV2NpbUMrUmsvc0xZYXFreUVxcWs5Y3NmZFB5RERueTB5?=
 =?utf-8?B?Z3ZFcWd2RzN6VWZqRTZza0JUbXRmeHRRT1pXRXZJN0hkZ1g0NVIrZjVXT0Js?=
 =?utf-8?B?ZXBDZkVKTXl2UnJsNWdSTS9mVmhBZ0hjKzhwRG9GUEtNandMTEtKek1IcVY5?=
 =?utf-8?B?a283bUE2RXk2eGNCLzJYNmUxNzNidXBiTmxtbFNwTVJmNWVRUlg1WGMrRU56?=
 =?utf-8?B?ai84OTAwQTI1b1F5RGdQQStXTVlrakIyMHQrVStzdXN4OWhJNENQYmorTVg3?=
 =?utf-8?B?Z09pRTVjUXplV1kvUkd3R0NtS0h5TmxPMHpwcTVvQXplcHJTdE1DNWJXSVNM?=
 =?utf-8?B?aGxtMVh2SThpNzJ1TGp5QXNYTDBvQmtaNUNnczV3akR2T1ExTytveUJtNmpU?=
 =?utf-8?B?Mkc2ZG4rZzdEeW0rSk9DWWdnaFVyUC92L0FMbm5wUmU2dTZ5QmN4T3ROeDdi?=
 =?utf-8?B?KzRWaXlROFEwL1FJT05LbHFWTnlmamRhbE9VQy9RcEJyV2FBOTF6RWdjZkhC?=
 =?utf-8?B?QWlWdzFuOWlXVnlYUzVXR2NidENIQmhMelRIdWVPV3JRSnFNaWZCMDFGek9n?=
 =?utf-8?B?eDM0blkzRk9SNGJLcUVUYzVuRzZKc1o5cXo5azRNTjYyY1AwbDJObkErWjFI?=
 =?utf-8?B?MFRFMlFYV1hwZ1JqZThSWk5tZGlBaGpGVEFEZWpIVlZJbFJtMnFrM3NwZ2Nr?=
 =?utf-8?B?T2lGMzYyYmQ5UHEwc0pBNWtWZjFpOWNRNFI3NHZXdkRFNCtVNzlPQWx2OWVq?=
 =?utf-8?B?WEN2Z3pjditSOVdrUk9wKzE4UnJtNnpuV29yYWxtTXF3WVZ0M2ZYcCtyYXlF?=
 =?utf-8?B?NkpwQnIxNEJ2WDBrWlNxNklFR0RITWZuVGhHa3pmemNGUlVsRWwyaG5JbVZ6?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9e23618-63b1-499e-6034-08ddb40b256c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 17:10:12.4951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: soQYQbtyWPOPXY9USflkx3po3OlEUAGkjsK6tafor1R8ZTOCdiFRQc7XZwLhdMb6OkyP/hXU+32GJDcG50uNNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFCE18D981F
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750871417; x=1782407417;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=28BIWX5eu4FfSZq2MrnTM99463zInkSEaIOshFiBmDo=;
 b=FOHuQlbQ/MpRUXtOBmWyoMYymsPoCc1Hk9NNiLtTKnhk9tPav15NPPCY
 N/76gnR4AyIYpO+/8iHIB9sJ9Cbd3b/jhbrqU8icGKBDgkKWJOqmT/6fR
 hxNa0iBUZDMt7e4bH/lIzg8gkzYepihL1XPdG16ELpsGTRMiLZZBGLPTu
 uxrPTt3/bX205sn/1Ats+nKCKk5/vuz8iNjRT4aQIQToshkesYChSMAXc
 NmZTn+/JTNA2C0FGIbI0iF39c2NdgeMSkN9q7huNmV6dBztinDWH5v9E6
 OF4MJBikaBeKJrEL7O6SK2JrlORnDSqNgldC7jaYPhVLI7XUh5ku8IICQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FOHuQlbQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On 25/06/2025 20:00, Simon Horman wrote:
> On Wed, Jun 25, 2025 at 05:06:44PM +0300, Vlad URSU wrote:
>> On 25.06.2025 16:05, Jacek Kowalski wrote:
>>>>>>> +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF
>>>>>>
>>>>>> Perhaps it is too long, but I liked Vlad's suggestion of naming this
>>>>>> NVM_CHECKSUM_WORD_FACTORY_DEFAULT.
>>>
>>> So the proposals are:
>>>
>>> 1. NVM_CHECKSUM_WORD_FACTORY_DEFAULT
>>> 2. NVM_CHECKSUM_FACTORY_DEFAULT
>>> 3. NVM_CHECKSUM_INVALID
>>> 4. NVM_CHECKSUM_MISSING
>>> 5. NVM_CHECKSUM_EMPTY
>>> 6. NVM_NO_CHECKSUM
>>>
>>> Any other contenders?
>>>
>>
>> For reference, I called it "CHECKSUM_WORD" in my proposal because that's
>> what it's refered to as in the intel documentation (section 10.3.2.2 - http://www.intel.com/content/dam/www/public/us/en/documents/datasheets/ethernet-connection-i219-datasheet.pdf)
>>
> 
> FWIIW, I'd vote for 1.

I suggest NVM_CHECKSUM_UNINITIALIZED
(as this is what a value of 0xFFFF really means).

