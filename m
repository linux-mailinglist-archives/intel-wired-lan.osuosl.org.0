Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9AC86CEA4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 17:19:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F54041A84;
	Thu, 29 Feb 2024 16:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPXD05BuDe2Z; Thu, 29 Feb 2024 16:19:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D319419C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709223576;
	bh=sqVvYz2YA6uplp/tsS26yKDfQehq+tLiPVtZlWyrxWc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4B0V86S9G3o6NBLvRbgnpFlpG/FRyof3Y50hs+pwP6CpIiNFaV72Kqmx1uETEVI/6
	 O84/6upslzp0SYalmJwHWUQkeFM8smktDwq0vOhK3U+W8BMkShUgNkEUeUdFvmtRmB
	 90FgFEv4tL07ZmLcHxB8EAdmfUBDzDXpn1MKFmQKL6I41baDCuU/CnT82ovoLEa83K
	 FuRHDwWQ7MZ6A9FTEZRRoaj7PJrI2wKXaRc0cWqeHc/MYtb3mOy+9kCLrx6u5bSmFe
	 rwxh5rDFNI4b0BWzGkQGiFgKNFNgzQzjvPF7P7m+nFNwoBiO1OAN/j/VpnBRMzsVrw
	 KwsQxqnvRM9Zw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D319419C3;
	Thu, 29 Feb 2024 16:19:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC4401BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 16:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7E3041960
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 16:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z7rxhRETMKRk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 16:17:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BAABB4193C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAABB4193C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAABB4193C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 16:17:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="26165278"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="26165278"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 08:17:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="7822233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 08:17:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 08:17:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 08:17:03 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 08:16:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XDon/q/5HIvz9APF/OYNlLvxF/04VUyFQOyZ2EG+p33bE1vw2koMf99sPGITUJ86khe/o/0K0a6RU4hcUivQGw/aAVk5kU7uCXUGeGOxSiv+vdnqdhqn3YkAi3g7RxtVIqh+Sd0z1Vl6h3g54eIOGzdQHFSIMkkSGss6cRlGPDJAnTijqi/AMalJtEkZJ/b6LMdQY0zTHZa/mzmoiiXtu3ncHqFveWgEZhEXldoUuArnUt24lFsm0JhMN3Vj3dJIKQnwTQ0N+Itw+3z+HGPTbc5CiZLlRcdFbuMBTZEOBSrdHzmGyH7dxPtZIm4Ihbkn0Zcr9EvY+lZGdM8/+NDPBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sqVvYz2YA6uplp/tsS26yKDfQehq+tLiPVtZlWyrxWc=;
 b=NjdAYyJbjbzzrWoHrpfB2fQ9M0m2PxE76TFx8KiNGWWjozLkST067eterIzF0F+EgNKyj/VSWC6aFO2pnEPDIJ0Ufl/2RVfGcBUusRrKTgJuQjvp0ENvzpbz4PuJqm1gaO28SreZQK1PMWRdmXEm9IKP827tanCHqazXXxqu9Yb357CNAZBUsZj3iHDT+mUjWNVxShSvCs6WijYUl9MH29G+RqfEBxnwze3kMmCaA0a8TQNym3dm0Ymqcw5FH9YLJd8yTvzh+X+RqOBBgjuut0AR4FUdDv+3OxSsoeQlp0cp8rl/+5c+63YDs5zolmYwC8ZH3CH/ms4iREQRayRtVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH7PR11MB7480.namprd11.prod.outlook.com (2603:10b6:510:268::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.14; Thu, 29 Feb
 2024 16:16:48 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::919c:f185:60bd:9076]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::919c:f185:60bd:9076%3]) with mapi id 15.20.7362.010; Thu, 29 Feb 2024
 16:16:48 +0000
Message-ID: <d1866c7c-9f83-44f3-9740-3f419a544839@intel.com>
Date: Thu, 29 Feb 2024 18:16:43 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240211151245.811320-1-vitaly.lifshits@intel.com>
 <c2b8c45e-1986-41a4-89cb-7db48512eccf@molgen.mpg.de>
 <daa81688-b453-42f8-a8c0-999b7d9fafd4@intel.com>
 <168e588a-9271-46ea-b2a7-005127ce8ff4@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <168e588a-9271-46ea-b2a7-005127ce8ff4@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FRYP281CA0013.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::23)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH7PR11MB7480:EE_
X-MS-Office365-Filtering-Correlation-Id: c23d2d49-a213-4363-bed9-08dc3941d454
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2vzeeAU7LaErSxEHKYL7J4l8mpL6rc719P65OvtLdYPXrUwdKE52Xebl0oLPtbHUr0afMZlzykEfsK//+pGSW31b8xI5vVc7FJ7B0A8Hwj2LZYbGDGz+UlHoyLXWj5dGt5MMNioUrmUBnXkfhn3ra8ze3zyI1AbsEXPE0dsAUTVrFcXyrH8sx8M9q8MW/gzpxqvoQtd8UJnC/pnaC2cEQcbnjn3LmTs8V6CKfJj02ldl/KApNEnZdQvcpDRqW3OuiuMSHkVSarmLlqjzEV+iL2base56Ww5OmLsVV/GgVD4l+ycE8DB45ebgkVOlaNBeERkWv5eX8LAIzv7Ggk5ApANy/gxz6NiJJLWp7btRBGM5Glqy+ji0kXcxiCQbtxiLS/9MBsS3Q+fgEWtHF88p4X3cgAYEC4KpfD/3b2Fv/j953Cec8a9JN9+XC/hF739H6Juah18Ifq1RbknFKGlbpmYkTglAY2KF5EPiG4XoT/rpSxjzMmRxtbyDpaPcmqJ7aPBi3748XQXvVktQ1iDFrewCJNUwNYUQhgewHNlQBPJiXtlalDqG7+oAQQksH4xP1agG4BMcmLxAhxfjpah8gdU328rz3otpzqQbXDejlekls0ZvBDtGh10/K8vyYrHMydxUnKQnlWKsDSetO+wjWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aitXemkxQUdMT0RpNG5KeDE3Z1pLRlNHd3JzTUR4M0Y4c21pK3c5RnM1Qllv?=
 =?utf-8?B?SmxpQVVQWGFEOGU3VERXRUxuZWhhUUpQYWVkQ3p5LzJuTGxoZUJMUG1jdEpz?=
 =?utf-8?B?eSs3TmcwTTFxekhNNHc5eWFwQXZtNVRzYmFYUHJqV0NrKytTcHhQV3R0OEVW?=
 =?utf-8?B?NmFGU09uL2RpQlFkVk5GbkgyN25rUUhvMFczVlhkNWNINFVabWs1OWFCRHZX?=
 =?utf-8?B?SFd2dnk0SFhrSjV2dGozTDZabEJweVFES28vdld3c0drcWhrTXJEQ0orcWgy?=
 =?utf-8?B?SXM2YTl1ejBBUjBXSUw0YW9aNnRYUGpUWk9TNmZjZGhja0UzeXd6Nm9lZ0V4?=
 =?utf-8?B?MmFDamFUOUx2WURMMzRFeFc0Y1pnVXBFT2JkR0QvbEFDaUZCL2hnb0w3SzEv?=
 =?utf-8?B?d1VyTTVUb0szOTlzQnlMUG9QczVoZ2pGcXRPR0M2SzdDL2FNVEphSWlaaEt1?=
 =?utf-8?B?c1JieW5uNUszN3h4aEpnaTVxYUFQd29zOUNCcWUzdkM2UGhWK3Babk50c3lo?=
 =?utf-8?B?VVEwQUtnMzFXRUxPcVBMdTY5MEk0UExzUHNBUHV3cVpkdWVEVkR0blBuSXdP?=
 =?utf-8?B?S2JoOGo1MXpmSC83YWJnb0hhaWFpRXAyOWcwc2srM3lQOGkzMTY2VGl2cnp1?=
 =?utf-8?B?MmZVU1h2SkQ2NmtlZndyVzNCL2l1OXNtNCtQcW11bWsxR3hGT3BHMVZpK1lu?=
 =?utf-8?B?QUJJUHhyY09IdmVPNUxIRE5rak1UQkNXQTYyT2JVbUlqZHMzaXlIenZ2cXI2?=
 =?utf-8?B?ZDhMcGxLU1RHeklXSGxpS3gwbjNEV0lWR1Qwb2I0V1E4RHFVRE8yK0U2UjdD?=
 =?utf-8?B?dFdVbEJ0M2tKT0EzazhJc1QxK2VCNWs2TlNLRURCazVWenNzR3oweS84NHZC?=
 =?utf-8?B?OUV3TGdRM2hCeUxBd3lBaVJpTEc5SXpOdDE3NXFIZU1jRXA0TnFOR2JDa1cx?=
 =?utf-8?B?ZSswV3JmekpERzJvVnZtMHNFZE80WnU2QnlJRmlienhYSEhjUkphMWRXZmMr?=
 =?utf-8?B?OXNEdWxGTkExLzBJb3hheFV1TEhta3FmY044Zlg5bm5GZXRZSElZMjFNeEtK?=
 =?utf-8?B?dWYrYS94Rk94a014OWxNLzAvRHBoVFJJanIxc2xLQXN1RVFES1RzSktxVlpV?=
 =?utf-8?B?VURsSGtDS0YzY21GcmgwUlJiZFUzeTNpeWhtcVlsNXMwbURuUFp0RFQyOG9G?=
 =?utf-8?B?Ri85dlVwYTF4dzdsdW5rNmdjOUoyUGpDbk1qaHYrL2pzWWdkVi9pUDczTXZ6?=
 =?utf-8?B?TC9sbXEwVVF4UUFNWUNWa3M1ZzFSMFBFNDd0M1R4QmNwN25jNit1L0hDN3JP?=
 =?utf-8?B?eUdzdDBLUkMya1dFUG1Wckw3amtiMDZvanZCVHhnTG5YV3ZaQU5scllaWDBC?=
 =?utf-8?B?RlZnOVR0T3hvMUlHTVdpOTIwMDlnSkpLOFV1SlNhUDVFOUluM2d4dVV5VzZH?=
 =?utf-8?B?T3JqYmw0bVJJRlp4Z3Y0RkoxeXBmVUFZczJFbUhpZlp1U1RmRk4wTTF3cGVO?=
 =?utf-8?B?bnRYQUZacmFoQUZOSUlReTVxa05wckdxRi9mUzFLN1FROXNJOG1vbitUaS95?=
 =?utf-8?B?NnV1YzB5Ykx4RXVZTTR5SmtzTFNSVlhpSU1ENEpWSVMzT3Brc2h5ZmkwUFBR?=
 =?utf-8?B?SldsdzZZMjZyTWROVktzMFM4MnhWcXh2VVoybGhYLytRcjFMWU9BdnhqMEFM?=
 =?utf-8?B?aGhZczRBa1B0VEFBaFVSKzVsaEoraVBySUVlNTNFK1pPZjU1SVlQalM1am5u?=
 =?utf-8?B?VEJ3Tjc1ZkJzRGxhVnQxT1F0WUM4ZEZYL2pTcGkzL2dYQzZtRGFqa1VmU3pZ?=
 =?utf-8?B?aWJVM2FHMWJ5QVlmS0tBdVY4bDNqWFlhVkYydmVxc1B0UUIwK3FJNm5LVnI4?=
 =?utf-8?B?ZUM2ZWNnK3E1c09QQnRlS2kvZ1BVbGRHWEQ4UUE0Mmhpa3VTT1hPU2poQ05r?=
 =?utf-8?B?K1cvQlFSVXZyM1hKeUxPTDZNaENQeU9kR0UvbGdPcEpVZFhsYzEzbGtaNWFJ?=
 =?utf-8?B?ZkZ0dmZlTjR0bFl1M3JmVU53ZlVPYmNCd0ljeFFYVzdCdVhtR0ZMZlVHNFVw?=
 =?utf-8?B?M2NGMmUxZ29ad3lJUDBDWWpQdDN0dWF1ZGo1Yk1UYVlJNE9lRGt0TkZwM09i?=
 =?utf-8?B?cW9OU3B2R29MZHEyelhuRG9aOUpEYWZkQ0RXRVVTVExlbExiclcvM0VoN0Jo?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c23d2d49-a213-4363-bed9-08dc3941d454
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 16:16:48.3124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GXOEMc1hsPveDwA2y5x0PHg9npH7AxGByiNBcWaJOkOanPhspjGkltd2d8KMuvU+KPQZ3rqbnV6S7NzJmZ6HED76bJJngUoVF3vYQTqMsj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709223427; x=1740759427;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kxy/iwUqqO9jrbk6QM+1VDSzdh1+FZX30OGZDy2CubU=;
 b=Kt8Jrj38gApnISrrmy49Jn/3H2wGtTWC5HyQnPqNL2kI+BP/c0GTaFRH
 IJMxZqsyRZoy2cz5z/g2d+ciuNPMc7+s7GOztamY4ckkbHNQjxS6HNstI
 col/mhqa+Zgzn+qfXnYKp4C3n7cNs1WPscTOhddOjc1rXIrwkQgKam46K
 QTOYXYP76j6G7a+WV5P6897Of70BULTXgLVfoIZPWRhsBNnHAtAR0NQML
 kCqKDVV6z5dcFZ/lKpsDbqtJPDT893PVs8hnGyMGuWnSpOcBQ5NAwuL+W
 SNqmqkxr98ejaUHSdDXNAi4KSuvvC728MUHER900tQeVnJYWzENPQXvKe
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kt8Jrj38
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: move force
 SMBUS from enable ulp function to avoid PHY loss issue
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/29/2024 4:31 PM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for your reply.
> 
> 
> Am 29.02.24 um 11:34 schrieb Lifshits, Vitaly:
> 
>> On 2/12/2024 11:00 AM, Paul Menzel wrote:
> 
>>> Am 11.02.24 um 16:12 schrieb Vitaly Lifshits:
>>>> Forcing SMBUS inside the ULP enabling flow leads to sporadic PHY 
>>>> loss on
>>>> some systems.
>>>
>>> Please list the systems you know of.
>> On some Meteor-lake systems, we also suspect that on some legacy 
>> platforms this issue happened with some low probability.
> 
> It’d be great if you could be more specific about the Meteor Lake 
> systems. What model and what firmware versions?
I do not have this kind of detailed information.
> 
>>>> It is suspected to be caused by initiating PHY transactions before the
>>>> the interface settles.
>>>
>>> No new paragraph is needed here. Please do not break the line, just 
>>> because a sentence ends. (If you use paragraphs, please separate them 
>>> by a blank line.
>> Will be fixed in a v2.
> 
> Thank you.
> 
>>>> Separating this configuration from the ULP enabling flow avoids this
>>>> issue.
>>>>
>>>> Fixes: 6607c99e7034 ("e1000e: i219 - fix to enable both ULP and EEE 
>>>> in Sx state")
>>>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>>>> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>>> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>>> ---
>>>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 19 -------------------
>>>>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 ++++++++++++++++++
>>>>   2 files changed, 18 insertions(+), 19 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>>>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>>> index 717c52913e84..4d83c9a0c023 100644
>>>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>>> @@ -1165,25 +1165,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw 
>>>> *hw, bool to_sx)
>>>>       if (ret_val)
>>>>           goto out;
>>>> -    /* Switching PHY interface always returns MDI error
>>>> -     * so disable retry mechanism to avoid wasting time
>>>> -     */
>>>> -    e1000e_disable_phy_retry(hw);
>>>> -
>>>> -    /* Force SMBus mode in PHY */
>>>> -    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
>>>> -    if (ret_val)
>>>> -        goto release;
>>>> -    phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
>>>> -    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
>>>> -
>>>> -    e1000e_enable_phy_retry(hw);
>>>> -
>>>> -    /* Force SMBus mode in MAC */
>>>> -    mac_reg = er32(CTRL_EXT);
>>>> -    mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
>>>> -    ew32(CTRL_EXT, mac_reg);
>>>> -
>>>>       /* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>>>>        * LPLU and disable Gig speed when entering ULP
>>>>        */
>>>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
>>>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>>>> index af5d9d97a0d6..8fcf8f11f5a4 100644
>>>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>>>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>>>> @@ -6622,6 +6622,7 @@ static int __e1000_shutdown(struct pci_dev 
>>>> *pdev, bool runtime)
>>>>       struct e1000_adapter *adapter = netdev_priv(netdev);
>>>>       struct e1000_hw *hw = &adapter->hw;
>>>>       u32 ctrl, ctrl_ext, rctl, status, wufc;
>>>> +    u16 smb_ctrl;
>>>>       int retval = 0;
>>>>       /* Runtime suspend should only enable wakeup for link changes */
>>>> @@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev 
>>>> *pdev, bool runtime)
>>>>           if (retval)
>>>>               return retval;
>>>> +
>>>> +        /* Force SMBUS to allow WOL */
>>>> +        /* Switching PHY interface always returns MDI error
>>>> +         * so disable retry mechanism to avoid wasting time
>>>> +         */
>>>> +        e1000e_disable_phy_retry(hw);
>>>> +
>>>> +        e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
>>>> +        smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
>>>> +        e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
>>>> +
>>>> +        e1000e_enable_phy_retry(hw);
>>>> +
>>>> +        /* Force SMBus mode in MAC */
>>>> +        ctrl_ext = er32(CTRL_EXT);
>>>> +        ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
>>>> +        ew32(CTRL_EXT, ctrl_ext);
>>>>       }
>>>>       /* Ensure that the appropriate bits are set in LPI_CTRL
>>>
>>> Why is `__e1000_shutdown()` the correct place, where it was in 
>>> `e1000_enable_ulp_lpt_lp()` before?
>> First of all because forcing the SMBUS is not related to ULP enabling 
>> flow, but rather a configuration that is related to shutdown. 
>> Secondly, moving the function to shutdown function allows enough time 
>> for the interface to settle and avoids adding a delay.
> 
> Please add that clarification to the commit message.
Thanks, I'll take care of it in v2.
> 
> 
> Kind regards,
> 
> Paul
