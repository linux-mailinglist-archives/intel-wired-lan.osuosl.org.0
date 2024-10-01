Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB2198C445
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 19:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E2F46079A;
	Tue,  1 Oct 2024 17:14:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P1Fr4vT_3H-E; Tue,  1 Oct 2024 17:14:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A62A607CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727802896;
	bh=ZQ/6w+Uqu9f/J3b64AoJuJVP6M4I1mZGgyPTZM0UkPU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IWlAofaYOoOFpP9mcMExb1ZI+q6PCIxm/kjf+BiUT2XBidjnzmdihV4kvdRrAH0cI
	 g2Ya0GU6rKe6O0EAGZEE5CrOsFwFp9IiWm+wBZWl9qlq1P7EHPqj18AE4x7CwSaGEV
	 rKRa499hl5JtvtiPm+vLNtnJjnmAus+AL7yENZSngNIG2QnJOjrSzYDe1VGtgc81b3
	 eL8SB4bXmc1f4kw/om9CSkc4omnwjy5FXwWgDj6g5HL0rLntYqmYioO3J3Av/76gNd
	 kXg84wTbgqQKQD+uelOBH6gJ5sKaBZqTU/v1c84fWecAqEEH96b/9xdXS710wfxkOC
	 9cpnx13BQYmeQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A62A607CC;
	Tue,  1 Oct 2024 17:14:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 426291BF294
 for <intel-wired-lan@osuosl.org>; Tue,  1 Oct 2024 17:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FD08400D3
 for <intel-wired-lan@osuosl.org>; Tue,  1 Oct 2024 17:14:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xODcvUeBrwbJ for <intel-wired-lan@osuosl.org>;
 Tue,  1 Oct 2024 17:14:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 15FE3400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15FE3400D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15FE3400D2
 for <intel-wired-lan@osuosl.org>; Tue,  1 Oct 2024 17:14:52 +0000 (UTC)
X-CSE-ConnectionGUID: lDLiyltyTCeSHHVPFwuxLg==
X-CSE-MsgGUID: 3pmsrYFwQCWrBz9xIh9rUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="37623093"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="37623093"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 10:14:52 -0700
X-CSE-ConnectionGUID: 1S9YTZJcQge7RExizg8V7g==
X-CSE-MsgGUID: CCvGDxy+QWu6jeozy2CL0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="74155470"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 10:14:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 10:14:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 10:14:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 10:14:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 10:14:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LlfaV4s/axPZxNLDifdXlidf45Xi2XS+Hgjy7bBJBz4kMcsmY7IbLdzmVCJj0Rhf4VG8m5F7NRX24cSS7ayy2WkJVp+FFiyqvVZUeBw94Aq3bW+tr2A0g/2goNyCZp9yn/qPmnONhkkTSsUWA2RhnShU7FSQ/2YeMzER2MZHQSXBv7fmbNwy5t4o5Xi4EpC8/CNQugfoTx4orIHbmXyNytkqaPnc6Wu/hZ1U7rFIYkz2v2BU8DEipOUo+PMPZjbb4BpGq3/00GMKvZCiJjRGhgFXdPqCuPPQJP56pIR1psIeH7SEFC1WHPplxA3crG550HUBBvbYb3PuaoRBASuKKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZQ/6w+Uqu9f/J3b64AoJuJVP6M4I1mZGgyPTZM0UkPU=;
 b=GqHw0uL8BnnVNH7z+WG4wWngW5cyOdBTm1pZwpn14pzG33ov6buIUZiAj3dYmhpB1AcmTFWbigGUm9BrgWfDTL6A7IG80hotJM/haqOC+CPwySyaII0IF7uiE0FgAvs4PlJonTMUn4ilU6u2cuxoBQr6AzS4LK4Pyej6t0JjbWIadU9ASXyw9GwOTfKSqlJ+5n0fOtVjiwJKxr+jReMdVkr/K+1acNZG8mp+5N2zXp+vKfhS0aWZieDz9HYAQxlMWl/Pt9C8JaZpxBlSpyq4/YU8R5lvdENi0wt00O5eziaMS8Fr5ANMld8cHhSpCpJNqV2FJTnfvoYbh+3te084gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CY5PR11MB6414.namprd11.prod.outlook.com (2603:10b6:930:36::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Tue, 1 Oct
 2024 17:14:47 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%7]) with mapi id 15.20.8005.026; Tue, 1 Oct 2024
 17:14:47 +0000
Message-ID: <c67ada03-8e13-4f19-8a4d-fa4c208febce@intel.com>
Date: Tue, 1 Oct 2024 20:14:41 +0300
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240930171232.1668-1-jdamato@fastly.com>
 <20240930171232.1668-2-jdamato@fastly.com>
 <20241001105016.GL1310185@kernel.org>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20241001105016.GL1310185@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CY5PR11MB6414:EE_
X-MS-Office365-Filtering-Correlation-Id: 288f2e6c-e5ab-4602-f81a-08dce23c8cec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnNmUy9vWGhkS2pQYWZ0enY2eEo1cGZuSkdaNTRzdmZVTVc5cXR3aGY3dFNL?=
 =?utf-8?B?SzFnRWtScStMWE56eTRSck5RZHZNdVI2L2FIUnNtcDBGNGVBQXpDSkhCSUR1?=
 =?utf-8?B?Slk3cDh2NzFUdE1QR1NRZi9TMGZ1MGREVE1MeHF6M1pWbFc3WWFrTzZndDRV?=
 =?utf-8?B?SDN6M29vMzQyUXhvaTZBNUU0K0p2ZFpBaGo0YXNrdm12Q0Myb25waE0yU1I2?=
 =?utf-8?B?bUZnS1BYNktwQWlOeWhwVStFTTlNTUNWVXZqKzFkNnZ3Y2R6YnpJSU1hTy94?=
 =?utf-8?B?bHoyZkQySjNWaFB3U0J4dHBEbEdTaC8vZEdVMmtpOUkrREloYkgvcXU1U085?=
 =?utf-8?B?UVRtZVhrWXNMVzRmaU5ZaGpUcnZocjBXZ01jYWxncUdYdTZVbmZzNURWU2xs?=
 =?utf-8?B?TmttUUN6dnIwRVR0T3ZlZS9pNEcxaVYrVlVScnVIbklrdDJZWnFPSGN4L1dn?=
 =?utf-8?B?OFFuOExWQWY0ZjFDSjRFZm43MGxHRG1YbXhQZExkemZZQTdnTzV6dHNKOGJF?=
 =?utf-8?B?eGhyMUJ6WFptYkhBRC9hTzI5eExqOUtwK3d0ckVPWHZVYWRzd1JPS1g2MXVy?=
 =?utf-8?B?a0V6SXFtVCtSRzZQSWk1OCtGNTIvN2UvNkxXSUJGc21tVDRWVk1UZEQ3cUFU?=
 =?utf-8?B?cTc0UVljeWMyQ1VtV0wxWjl1c0ZiWTRyd3cxa2RzeGxzZTQ3T3podlR1UlU0?=
 =?utf-8?B?WFREb21QSUhrQ0lITWJmUWUxVWdBMUtKcWRZamZ6czRINkVYM2k5SHhBUVhl?=
 =?utf-8?B?QXA1V2dKdCtzZ2hqRUo2VHhyelNnZ0E5aVgxQU4xcTdwUTdPbWxPSkEyRndO?=
 =?utf-8?B?UWJQdkhBWmpjTXorSHkwc0RjUWRIOEhZVTA5M1NPVm94Wm5mRzBmN1JxalpX?=
 =?utf-8?B?U1NLYjNvLzRPZlRZV3lKUmxEQ05RZ3VXNWJuSWd6U29OZG15NzN0UVNMbTl1?=
 =?utf-8?B?cXhrYUQybWtzV2NtU1FIT1JPRTN0YmRzaWwxM0lZaXgxOE43MERPT0R2Qngv?=
 =?utf-8?B?MXEzMzVoYVM0ckZCTnJONDdjYk9QY0NMVjhHeUxRSDJWc05vNzJBaXI3WGUx?=
 =?utf-8?B?NVpNUllnYVZvNUcyMWN5dVZueER2NzdGOG94WFBDYVR5WFErejVNWWRid1ZP?=
 =?utf-8?B?ZlB0KzNFbVZSVWx6YmZsWjNRdXlhUmVTSmdHZEhCcHpnQ3F2SmdjMXhSTDBi?=
 =?utf-8?B?c0loODRRTmtmbXNCWTBPY0ZxSUtPb0pOMDhpTW92Z0hVVUtQR2VHVS96RnMx?=
 =?utf-8?B?U1hMemlSR3R3Z2hERC8wdWhrT2pFNXErQ3RMQkppNXpSYTBldDMzQVV0OEZZ?=
 =?utf-8?B?UnVYQkJaQkI1b3h0VzFmaFBnVlliUGlsQytpeHJvK2dpaFNoUHluMGlyRlZl?=
 =?utf-8?B?c04wd3JZaU1WMkYrVmc0RGFlWDhGNm9aVU9SSFAxSjJXYk02b0RuZlo5SHJR?=
 =?utf-8?B?NWR3R0ZDZUtHV042UGhnUU9heDA5U09sajdSMEY4cFJSaHFCRExDTXRtU1hZ?=
 =?utf-8?B?WEpkbWZDMDVJZkF3S0toSzU2SVNlTU5sZDRUT1BWTHdRS2JRK1hWejF2QWNv?=
 =?utf-8?B?djVkYUNGTm1tb1JySlE1RkpISlZMVENya01LelZ3Y3k0T2FUWTB0aTJ6d2FU?=
 =?utf-8?B?NDNsRnBFSG1lQVhnSXJYR0NuODJzR0J5UWM2WlZZUllobmg3VUQyMmNtUU9U?=
 =?utf-8?B?WHRsR1BNeXQwZVJxczQvUDhCMmNKQml3ZlRFSzI5NkZPekltUkVVYUFBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGJUSDZFV3ZWNkJsSCt5Q1pvc1hYZDg4N3B2S1lKckRUeWdIczFVc2tUNTNC?=
 =?utf-8?B?MjU5UGNrN1ljOWxKYkpYRkxneU9SSHpla0JTRUdrOEk2QkorYlh5T0U5VDRP?=
 =?utf-8?B?VFhpaDhydmF3SGVacUJlZm1nOVZjQmNzbVlsRVl4d3Jwajc5ZVdXUHlSK1JI?=
 =?utf-8?B?aE9LNzcyL0VFclJNdnJhb2RtUFJQaXJIaC9Ed2pqb3pvdWk3U2ZlTjY5Q3Nm?=
 =?utf-8?B?TFgzK2VSRVYwSTNSUE42ZWVLdm4ybXJMb3VPemRUNHVKLzVNNkM1cjlCbWRO?=
 =?utf-8?B?ZEdpYmk4QzNNUmtaSUdLT2I3MHprdCtuTzFJZkVCeklCUTltalg2TUQwekRM?=
 =?utf-8?B?Q21oeVEvdzFDMUtTVmVXSnhRcXFnQ1JCc2gvMG1SQWo5SFNXWFFyQ0M5emhP?=
 =?utf-8?B?bkM3VlJBZUlITkpiSXZvWDhURGlSZjRLMWpzRUxQMlp3TmluZ1E0Unh1VjMx?=
 =?utf-8?B?SDRjVDdWaHVxWmd5SkJaeDVjK0Mxc3pwOTB2RmRxSFRCMlEvaHJ3WitVeWFI?=
 =?utf-8?B?WVFOZ05Wd215a1hWTG1kR3NGWEd3MUVyYkl6cklFVTJIcWtxWHJKTVhpYzVU?=
 =?utf-8?B?NUZqWXhiSWs0QmJWTUhCSWxYWjZhd0ZRM1NRQWxUc05lbmQ2WHN0Y0ZtNUll?=
 =?utf-8?B?N2VkK21BOExWMjkyYXhOTENuZ1lyQ1k4VUI2TXN0SzdRbk5XRlZwVktnakRu?=
 =?utf-8?B?L3hFbk1zVkgrMEJrYndDTU9KaytyRzVkb0szYU0reFRxdWxtZmtEOEp6NTh3?=
 =?utf-8?B?cmNtQkxIbm9JaENVK01wWFV4OEtTSCtsMzVpTFI5dE1kaThjTXBoUXNnRHpH?=
 =?utf-8?B?U3dIeGJKcWJYd3RHN3ByMiswRm9tU2R4S0NYQXVsaUNMdXZhNCtlSmMwRmVC?=
 =?utf-8?B?b20xazE1ckhRdWVwd2o4WTJnendjalRNSTJldUxEbndPNGN1QUVoNFVFeTcw?=
 =?utf-8?B?YVlmYURxYnRVQU5RK1FVVThmdDEyOVhLYnVXSGxQZi9GR2lhb2hKaVVOeGhJ?=
 =?utf-8?B?QzliZGZ2QVJaTEFBbFd1SXNLallXaXZDU1ZnalFBdmt6UXY2dk1md1FmQXd3?=
 =?utf-8?B?M3VzWk50T21WRjBmUEJXbUZtMm12dXhOY1ltYXA1amZacHRjVWJVdWJEdWp3?=
 =?utf-8?B?QWRwdjVoYmQwQ2hPUnM4VjdUUGdYeWZaUXFyR3AwZE9wbWk4b2VaZkVkT0pE?=
 =?utf-8?B?dmlOS0MwU21Dc3BHYmoxT0hLYWlVU3hkSnRnQnZsaXpjTlhTOVRRTlJQdUtz?=
 =?utf-8?B?bUgwRHN2bHVQdUlHTnVFano3dkZjWUVGZXJoQUJ6cm40aWRhU3dKMm1IL2di?=
 =?utf-8?B?YlE1a2dKL1U3TVdFNkdBQUJLYWhsS2hjMThsNjFVTllWWWxOY1IweTlIUU9q?=
 =?utf-8?B?WDU0Rm1nWklCeVU3eU5KVU1IU2ZjWTdCN0xDeGw2ZUZCWkdOMjhCR00rdHJD?=
 =?utf-8?B?SG9sc2NiOE1PVG5iaHRTRjlyNUFlVjlsV1g3QXdYNnREZmoraWVEUEhtMHZY?=
 =?utf-8?B?a1lxcm0xYllIT21lbWNTZ3pVS2JFQUlLTU1WclZjZWphWlhJd203OEl5aWF1?=
 =?utf-8?B?NzZQOE0xbkRuSUZ2My9nUGUvUDR5RXI0VlNlMFlzazFBeXNvOEVXaCs3YjlR?=
 =?utf-8?B?RU5vTThkR0xTYUE3aEtjL1V2Vm1sOSswQ0JxL1Zjbk9sbnhOc0JBd2NJNXF2?=
 =?utf-8?B?MDNpYWxKOW9qMUZHUTdqNmFITTF6VE5XeEorOGRFRnQ2bWZzcG1tbTlFaU04?=
 =?utf-8?B?MmFyQXBUdXdIa3NaNm5HcWJ1S3RBTXN4aUNHRldjTDhmTW95RDlsMlBnMjIr?=
 =?utf-8?B?TS85dCs2Rkg0djhVZ3NzQ1A3L1BkVGYrbXYxT245L3BaalpXVHlGanhpcUdN?=
 =?utf-8?B?MmNSU2tMYVBUQWZaUWkrdS9hOGhuUUZSN1A0d0NqeGd1OXVxd2Z4N0pxaDIw?=
 =?utf-8?B?Q2pVVnV2V2dSbUhUWXViaGhSbHgwdTU1alEzMkIrMVpNLzdYVno4ZUZIOC9Z?=
 =?utf-8?B?VFROc0lhT0VqaS82TE5xazJJU09HaHJNNEcyZTlIS2REMzB4S1UvWFhJZ1Fh?=
 =?utf-8?B?MDZXeFVmbGxKcE9IdkZxNDNIb3dQQUlGOXUzY2k0K2kwaC9UVGZKcjhBMzhB?=
 =?utf-8?B?OFE5NzcvZnFMakMrOWZqUU5NM3UvclNremZPbS9nQitBaGhXYnFZMkZkYVVH?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 288f2e6c-e5ab-4602-f81a-08dce23c8cec
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 17:14:47.2846 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KYtPQ44AKdtdZVeGtMiDk2pTyQCKALDhhVr4OpsPQFI0uePIdH/a/PdaEOxO3J0yXBKTtWY3kan3rIcAYwJolB2Nb54mcOTLIjfkkXd9kL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6414
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727802893; x=1759338893;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DOJk/C0kMxNsDgEC0OQXWHPB52p3Lmy95XWsKAk8eag=;
 b=exLmMXDYpYrbdudRnRX9Q+R0pPUnzpfIQe4Y11GLKxU5axzhMb3epi/g
 VbJxj+w+XyMaPa3xmF3nJlszqZdySnBdbGtUdAbk8FgJNKeAJpDpmMKBY
 Cp7OQ0XYCTnIArJTteYYODHsEdFoekxIulIPYE0+y1LvusyNgY6XS4hkB
 ZuFG3/3B48aHjH38Fg7O38fLcFyKu49hlzGCAHv9zrHaNLQlzH0l+9RfB
 BTej7ue38awRU/rH6Doot2yXpUD5LSBSHjrnW6nJIsdNMZ2IZCSoqetZX
 7MJ0sEn31pL5JzHvJY43Sr9zBG+8QfLU2ftiPkKRN7N973MvFzVfOneCn
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=exLmMXDY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3 1/2] e1000e: Link NAPI instances
 to queues and IRQs
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/1/2024 1:50 PM, Simon Horman wrote:
> On Mon, Sep 30, 2024 at 05:12:31PM +0000, Joe Damato wrote:
>> Add support for netdev-genl, allowing users to query IRQ, NAPI, and queue
>> information.
>>
>> After this patch is applied, note the IRQs assigned to my NIC:
>>
>> $ cat /proc/interrupts | grep ens | cut -f1 --delimiter=':'
>>   50
>>   51
>>   52
>>
>> While e1000e allocates 3 IRQs (RX, TX, and other), it looks like e1000e
>> only has a single NAPI, so I've associated the NAPI with the RX IRQ (50
>> on my system, seen above).
>>
>> Note the output from the cli:
>>
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>>                         --dump napi-get --json='{"ifindex": 2}'
>> [{'id': 145, 'ifindex': 2, 'irq': 50}]
>>
>> This device supports only 1 rx and 1 tx queue. so querying that:
>>
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>>                         --dump queue-get --json='{"ifindex": 2}'
>> [{'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'rx'},
>>   {'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'tx'}]
>>
>> Signed-off-by: Joe Damato <jdamato@fastly.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 

Acked-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
