Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 973DEAA665F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:45:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5DFA608EA;
	Thu,  1 May 2025 22:45:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pzoPf_H4pQis; Thu,  1 May 2025 22:45:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24B4360826
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746139533;
	bh=bfq0aokOsa0X5yT/aG+K+MW3AM76ss3plKZfiDut6kc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s9xIcWeQz9QRpa/OjOVHnfqP2ZuqTolLeFt9+sDWNghhmr2oN/bsYGhSgfvY+vu9I
	 JEB6x6XJ44HZMd0gSfqgCVmbyFW7KANEoDcmvz5o9skIT3VPoObu8ccpqCF36cGMmw
	 Zn59E3iJOzalMlNuD4G5g967h719S5L6h3ZpXep3a47osoRyY4MrotvZ29/nyFlFZb
	 DSiWQnpGG0zE0lKnXsmveHndEb6ELR5ztlnkDBDYi2bP33Q6+G3HcgfBuy4Iyh+QGL
	 gZJTzqkuTlc8q4sSWeF1kuqnXxHZtPDZy8sNq5X/whBnLcV210fe1lYSio9Bhi9/im
	 dVhUrmMlzAMkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24B4360826;
	Thu,  1 May 2025 22:45:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E9D5722A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:45:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6BDA60826
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:45:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uoCa9CM5k1Kl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:45:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9870560816
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9870560816
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9870560816
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:45:28 +0000 (UTC)
X-CSE-ConnectionGUID: Wimyq0NQRNyPbkh5Tw+CNw==
X-CSE-MsgGUID: sNuI64LeTFaxv0gUeZQn+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47706124"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="47706124"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:45:27 -0700
X-CSE-ConnectionGUID: mta1lnuKTL61VIMlou8lJw==
X-CSE-MsgGUID: Z0485p2iSQKkhnRhYYdC/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="165427964"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:45:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 15:45:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 15:45:26 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 15:45:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ko861To7GC92gCEpF0y/Vv4/fkESWpQ1x6EM34/dJdTITFYMh5Be+rEyVRlw96bzm2NjscN1ui8DD4SAblinKl86a75qsqdxJAZVwrGuFEdk2Ijkivx7AzSHF595kOHv3WJ7bIfSx4j3DPkHGZjD3uCLRSmko+CUX6GxvCPy01zNGsOBGcpQbGvYXHM/3FfbDvGm1E9M4nLVHEXMAi1KAaMvPPVGc8uCaKb+l6WBlfQwEmEQV/GnV34HI1lpdKODctyyFoUl14wAOid7wu4RwAbkUNUWypD/yRbnvyjxb7QuA8ayqI+G8houxfK9WveByjYOLJ8IYP2xUK436QOpzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bfq0aokOsa0X5yT/aG+K+MW3AM76ss3plKZfiDut6kc=;
 b=ADb5n6kWG7gWOQ1LlXA9VdkmUACQxVqzntB4Do6gWntbBdqH4syflBmtjkh3y6omLEp3SX2rfi3F9ateKYH7YHISmKYQ/r7AM8ETaKbD82ePMV1vYdQa2ttCW9UMB/glQxjbdC/CpWGrGwy8B1vaVSlty+TrNyO2MpJGN3us+rK2rC1Iy7NGccGI/kD54Eh+9Srvpfx/psD+CtCZ9dfW/S10BbCPmTCa7Cmoe6ecEjm84XceD1uG4ZAgNMyzRkYRbHvESgokhSoiMRcVMQbqn5vwILJtjmPFqH/iPh7XXyJfsABIXS4332E3k85TTy2V9E/qPGxHrfWj+DG8xYzOUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Thu, 1 May
 2025 22:45:18 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8699.019; Thu, 1 May 2025
 22:45:18 +0000
Message-ID: <216ee17f-44e9-4ce6-8280-e68869364ee9@intel.com>
Date: Thu, 1 May 2025 15:45:15 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Anthony Nguyen <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Milena Olech <milena.olech@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, Karol Kolacinski
 <karol.kolacinski@intel.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
 <20250430-kk-tspll-improvements-alignment-v3-15-ab8472e86204@intel.com>
 <6b4ddead-ab12-4dea-9b02-1943d6330c01@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <6b4ddead-ab12-4dea-9b02-1943d6330c01@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0251.namprd03.prod.outlook.com
 (2603:10b6:303:b4::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB6913:EE_
X-MS-Office365-Filtering-Correlation-Id: 77d68b85-023c-4839-5885-08dd8901d7e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDFFL21veUZtb1Jibmk2V0NnTkFDK3RUMWRSbE83OHV2QTdFVXhQOExNK21z?=
 =?utf-8?B?N0Q3ZEh3dFFUMi9uaTlhTmExRUdDU1JvbGRrcGNEakRkOGJ6QkM0aE5nQkNH?=
 =?utf-8?B?eUxuSGRrZDA3azZZYU0yc2dkbW1SV0hoZ0EyaTJqUnJUSDJPaE1SMHN5VXhP?=
 =?utf-8?B?aUdVL0FZWWtueXVXTVJiaEo3azN6QytlVDRUZlhoWTJzKzVHSlNIV1N4RndR?=
 =?utf-8?B?UFMwN0NXUVkwOERjd0FYdDdwMHFocGVOdkovTHJZZEw5WTdvZkVmZjQ5UllK?=
 =?utf-8?B?eWtNZWxSdWlPNFJ0OGlQLzJkMElYTFAzMkh5TVIwd3YwNEUxcEUzdnZIRXZa?=
 =?utf-8?B?WHY2dVlJVUJaQzZCdnJuNXp0VkdnWGlvS0o5RkpJcEdZWEpzSk0vTU5XRzN1?=
 =?utf-8?B?c2lMUERsb0F5dEhENGVqWDg1ZjNqU3N2MnBNL1JqdnFSZlBKdUpCbm9jRnhZ?=
 =?utf-8?B?a1BDSC9lSmpqb2o0UWliem9tSVRxREFIbURUTGV5MjIvd1lZMU9vMERMREMv?=
 =?utf-8?B?QmFSUnBVem9QQVVSMm1sT0IrOGdLRmRtMEsvRHZGZ2QzM1hRQXR3N2I3Y25h?=
 =?utf-8?B?TUZGTEV5R2tYWUpST2YvMjlpTThXRmJJeE50VFd5NVMxQlh5YTZ5bzBSa3dx?=
 =?utf-8?B?ZFQwd0NiOWNTejMrcHFINjRKUnVVbFMwUG80N2JqalFoajlvOGtYWTg1OWRZ?=
 =?utf-8?B?QURnL3loYU5XYkszSmh4MWFIOEhjeEF1SVlodyt3Q3N0ZlE5aUYwTU5EcWcz?=
 =?utf-8?B?TWZFenJkMFVXOTZ1eWpDYzFVT3VnN0FWaUcwZHhVZWVKRzRTK1YrUlMrZUxy?=
 =?utf-8?B?ejdWdzJkVllMWCtsa3ozOTVSQVBVdzl6YUtOTDVrRE9mSmpLOEh1bFBSVDBW?=
 =?utf-8?B?U3F0TWs0WHQwakYwYlVOVUhpOHV0T2VwSnBxdVdSbjRWQnUxQmlnbnBINFJD?=
 =?utf-8?B?TXZKMFMxd2ljQ3VpbWM2ZTB1TUw2OFcxaXo0WFI2QUkzOFF3bW82TExETlEx?=
 =?utf-8?B?a3NwVXJwS3k0SlRpZVNYODY1TW41WU9xS1VOWHVQRXN4emRzQUN1QmtpaGY1?=
 =?utf-8?B?UVppcFNJaUJNQVZNZ3RUK2pscS9hQ1lqOFA4Y3BBR2VQNHFwU0p3Sk84ZGZt?=
 =?utf-8?B?b21neWdVajdZSHJZV2t1d1FEcWFuTHJ0WHdrc29qcGZvSXIyczFoUVMyWFRw?=
 =?utf-8?B?bjdmejVmTklZenVuUEpxaXZ0SzNzM2VvU0gyaFYzdVJmc1ZxMHU0WFlxa3Nt?=
 =?utf-8?B?eEsyblJPVnQ3ek1UMnN5NTBXYS9nTTU1TmlkTUNaWmFNa2cyVlROd0JPMEJQ?=
 =?utf-8?B?M1JYeXJGUWttTFdQR1NjOU5RbXBPcW1TVjBwdmlwNGZ0QzJXblJPbmxFZklF?=
 =?utf-8?B?QUJublBtZG04VVZUMS9kSlZ5S3VZSlpSSEhlcWJxdXp1a1hQaUdGN1BSL3pG?=
 =?utf-8?B?OXVGTUFqYUFtSjNCQmJHYUZaeGdqZWRVdEQ3UEVqa1hCMWZlZmtsOUtSZkNI?=
 =?utf-8?B?d0VUNFFRMVBQMjczOHFFMmw1eXFRTVRtWjU5eG1rd2FIUk5VTVBGUmZoZ3Rk?=
 =?utf-8?B?OGtFN3JpZURCVmF2MWtoS2p0ZC9GVjhFeXJQRVVUcGFhdVczakVVMUN5dEY4?=
 =?utf-8?B?N1c1ZFJmbWJaQzUvNFVYcnZYU1paNU5XM0E1b1hmcXFnUnROL2tTRW9SbnBB?=
 =?utf-8?B?UEY2VHIrSUowb09YYnlZeCtSTTNWSkxDajRxVzhYU2ZzN0FSM2hmMUZVQUtj?=
 =?utf-8?B?OEkyNUMzOEVGVks3eUJ1RTRLWEQ5TGIyckpFdmtOazdCQzgzOEloZTZKOVNX?=
 =?utf-8?B?K1JYZlR4ZktRUlBLcHN1aDRqU0plcWo0M29jS0R3clU4aHB4RGVRbkFINFB1?=
 =?utf-8?B?NDNCMlordXlYTUlUZFBHM1J6Y2Erb2NHcWFvcGFiTzI4a20weDhud0hiVDNw?=
 =?utf-8?Q?qIiO658UjUI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVl6K2ZGVmYzOGloSnp0bmdyM2krU3QwZ0RuOFZVMWwrc1B1QnhWLzZIbU5Q?=
 =?utf-8?B?Rk5rSVFyQ0ozK3JNNGNxcERzSmU5dFcwb0Mzc29wV2NpYm5RbHAyWUdHUDhQ?=
 =?utf-8?B?R21KOFVneVBtZWhwNUhUSjV5TjlCUUFGV2JoeXZmZmtyNmpWWEs2OHc1SnNl?=
 =?utf-8?B?TVM2azR1dDlETU1wSFJEL1hJdHhOY0dLWUFYSS9CdjFrd2FrYlVZSkMydnpt?=
 =?utf-8?B?dzRwbGpleFQ4ZDRvTFAvV3VxZkU3c2s2cVRzSnhQWVhVQjczcGMyY3FUMjFk?=
 =?utf-8?B?V24vTGRObi85WXBXZWZaSWxRb1FMWFordE5nd3NpQkV1aWVWd1NiU3lsRWJr?=
 =?utf-8?B?WXhVdXF2ODIrY2VBZjBZY29mZmY5S0EybFIyNXUxcDZneEZIeDl0U0UxeW1C?=
 =?utf-8?B?YU1HRnQ1cTlGT0NyRGY0Q0NKR1hKTDJGVHlJcEtyMGM1eUJlS25IclE0eHcw?=
 =?utf-8?B?Q0tWOEE4STVNa1JrbTFlTGtBemM3aE5pUjdWMHJmQU5oMk1kK1RxTmZxajV3?=
 =?utf-8?B?cGtrVzV0QW5RRDlRV2dlSlV0cU9KTkdoUitNYktpcTRZazZXMDNOcGRlZytj?=
 =?utf-8?B?SFEyMHpqa2hjczV5ZlBBNW9SS09TZlg1WDhlenFpVXJyejRlSzZkcFFmU0xn?=
 =?utf-8?B?djVLcVVoMFNPN0NDczhmRnNuMWRLTW5FbjdTN0g4M1dWZDVKYUgyLzFpZnMw?=
 =?utf-8?B?Q2RkZ0NpZUVXVElHRmlxQWxHL2FKejhRaTVrWWE2bVdSZ2oyTFoxbUdBMW9O?=
 =?utf-8?B?T01ielVvZ2JVd1ErM2hmaGhEYmhpNUJhM2RxTllRM2I2RERzKzRWQjdTTVo4?=
 =?utf-8?B?VTRPQXo4TlQ1cktCTUZEZktkSVVrbzdtRjZoazBYWjlnK3RUVVNMZ2VYb0xr?=
 =?utf-8?B?KzVWb2R6a255VllwNmFmYjIweFZJQkFEK1hyY2hmbU1ka3gvZ3dWcXZyWkF5?=
 =?utf-8?B?U1doa2gvbEFpc1YyR1FNSGtoMVFxR2FhZk9QenJ5L3Q5R2w5eE81cFlYWmxS?=
 =?utf-8?B?VmZCZWdTNUhWTzZSRGswVFhZM0YxUzRyUGFNbXozb2FXcmdMS1dCd3VXaHRi?=
 =?utf-8?B?VkY2TGVYQzcxa0NEV0hVMHlCMCtsUzZUTUVvdTN2a1RyUWdLRmpZZ1FEa0RI?=
 =?utf-8?B?NjhIWU1zLzA3cU1mMmRDOUNnODNSUjhTbGtsSkFjTDhuZElQK1FMUTFOT0h3?=
 =?utf-8?B?ek54SGprU29RNzB6bzBjNUdOSG13eGJTMXV2cTlhWmMvNnNTZHhOYmswTm0x?=
 =?utf-8?B?T3ZJaExncWc1aCs2TjJEUGxtOExTcjIrQU1DM0R0eFVTY2ViZjNlMmxkUkdV?=
 =?utf-8?B?S1F5TWM3RlFoSmdsMEQ3TkxpQ3B5WE9aMzFkd1hNSWF5NE5JL3k0RGYvZHlU?=
 =?utf-8?B?RTlhTnZwam1OK0pES2NmNmUyVW1OaHN1T1Z6Uit2SDlBQWVrdUVibkZESW52?=
 =?utf-8?B?MjV4UW16cG1UN3F1QlNPTmp2TWN0eUY2M2NGNGdTVzR6ZUhpMTFxUU5GVis1?=
 =?utf-8?B?Y09RMktYVVdpeHJlK2NraFJoUStHZDRuSTdhbWlsYk9iZTFEU2hObThac0lt?=
 =?utf-8?B?UVNoV1FjUFl2Q3YvU2FLSlpjZmpML1RPcjJlZmpraDNUUlh6TnV6UUxlNnNl?=
 =?utf-8?B?Zzkvam5QVm1DUFc3Z21MdXowNWc3a2k3ZGJRa2lTWUd3WENldlZzbVc0ekJH?=
 =?utf-8?B?WjNWUU9uU2h1akpDQlFxOTNZYjJmeCtPOFdJaGdGRmt2bHJabmgxZTR3bUpJ?=
 =?utf-8?B?eEMyMTFkTUJsR01CU0xGTlIvNmR2ajNhMklZa3NJL1dkSTFDcE9qNzJQTEw2?=
 =?utf-8?B?bStMVWducElrVy9pNC9vaEVzNEpocVRBU1NkMCsrY01nL1VJZ0YxYm5wdWk1?=
 =?utf-8?B?QVUvZ3NXckRiWndPQVlCM2lZTTAvdzQySk52TkxOTUg4R2VBTk1zamRPLzQ1?=
 =?utf-8?B?THFQckxtb21LSC9XWkJrcUFHSGlQOUFveGxvQ0IvRjhXME5iVmR2NXRpTzZu?=
 =?utf-8?B?Sjg1MXcwSzBMN0p2R25Jd0hnOFlydlZUS3k3OGRVTmgzclphWXhxbWdwNE9T?=
 =?utf-8?B?dGNyNjJrZzJITVpUMXBZemhYZ3RxOFVLYUNsMjFJV3N5U2VMOG1mMllidkFp?=
 =?utf-8?B?eUEvRjloOFpyc25SWXBZbisraHFrWU5ISnU3NWhKRm1ldkhZSHVHVGh5Zlk0?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d68b85-023c-4839-5885-08dd8901d7e2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2025 22:45:18.3380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3FmJ+vgGbS+Ya3xLkw/Wa0hQggRyNDM58dvRWWI1Eb5Ys8EVUcu4sS4fw/jIEQFk3zDBrHm2NNffAS6TxyZTOwNIk+O4dZAP0DQjbjKkpg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746139529; x=1777675529;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q7Sfuwl/Lcyce/aFSU+WsYL3/IT3XRYMveGi9kgAC8o=;
 b=bHCtGm8pKtKmzQ7FEOTb9BNCkJ5rZ7PH5GkWv4tKMZHSqMbTLgYMYLVe
 RQMYvewBRbq9al+NkE0lPNbjjVnrwZDsLXYPhuhzi8O0EpINqEVnuqqjt
 pZNQxF9+9Z3eUBMn2pgmcdy0g2v32s3c4sRCUzRp/qy2pIQVDLJ0cLYuZ
 9xZsIfcbGlMAIe71/xfYI93/lk7Aqk+mPtpp8dRUpeHY7SdDffbOBKgq+
 bM6Axwrwt4wjQ/dxnVzbeVN9yhVr2HU3ifSkAf9sJCTOtlxVwiuhNypQd
 yvXoUWNzm19gy3fSoRvBV9XsMmBIYX/xbioyGepoemjgZHUoy0FhtYlRM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bHCtGm8p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 15/15] ice: change default clock
 source for E825-C
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



On 4/30/2025 10:49 PM, Paul Menzel wrote:
> Dear Jacob,
> 
> 
> Thank you for the patch. For the summary, I suggest the more specific:
> 
> ice: Default to clock source TIME_REF for E825-C over TCXO
> 
> or
> 
> ice: E825-C: Default to clock source TIME_REF over TCXO
> 

Sure.

> Am 01.05.25 um 00:51 schrieb Jacob Keller:
>> The driver currently defaults to the internal oscillator as the clock
>> source for E825-C hardware. While this clock source is labeled TCXO,
>> indicating a temperature compensated oscillator, this is only true for some
>> board designs. Many board designs have a less capable oscillator. The
>> E825-C hardware may also have its clock source set to the TIME_REF pin.
>> This pin is connected to the DPLL and is often a more stable clock source.
>> The choice of the internal oscillator is not suitable for all systems,
>> especially those which want to enable SyncE support.
>>
>> There is currently no interface available for users to configure the clock
>> source. Other variants of the E82x board have the clock source configured
>> in the NVM, but E825-C lacks this capability, so different board designs
>> cannot select a different default clock via firmware.
>>
>> In most setups, the TIME_REF is a suitable default clock source.
>> Additionally, we now fall back to the internal oscillator automatically if
>> the TIME_REF clock source cannot be locked.
>>
>> Change the default clock source for E825-C to TIME_REF. Longer term, a
>> proper interface (perhaps through dpll subsystem?) to introspect and
>> configure the clock source should be designed.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>> index e5099a3ccb854424f98c5fb1524f49bde1ca4534..bfa3f58c1104def9954073501012bb58a13e8821 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -2302,7 +2302,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
>>   		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
>>   	} else {
>>   		info->clk_freq = ICE_TSPLL_FREQ_156_250;
>> -		info->clk_src = ICE_CLK_SRC_TCXO;
>> +		info->clk_src = ICE_CLK_SRC_TIME_REF;
>>   	}
>>   
>>   	if (info->clk_freq < NUM_ICE_TSPLL_FREQ) {
> 
> As there are now Linux kernels configured with different clock sources, 
> and there is apparently no way to introspect it from a running system, 
> does it make sense to log it?
> 

This is about the source for the internal PHC. Generally, this is an
internal oscillator known as TXCO. However, the device can also
optionally be configured to use a pin called TIME_REF. This pin could be
connected to a number of things. Some boards have it disconnected, but
it is usually connected to the DPLL on the chip.

We do log which clock source is enable, albeit with dev_dbg, so its
disabled by default. This happens when we call ice_tspll_log_cfg() at
the end of programming the Clock Generation Unit. This message logs the
actually programmed clock source, frequency, etc. This is done because
we fall back to TXCO if the CGU is unable to lock onto TIME_REF signal
(for example if its disconnected).

I believe we have plans to figure out an appropriate interface (maybe
something in the DPLL subsystem?) to both introspect and control this,
but design for this is still ongoing.

> 
> Kind regards,
> 
> Paul
> 

