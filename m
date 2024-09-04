Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5994F96C788
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 21:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C44040B8C;
	Wed,  4 Sep 2024 19:28:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cIZftM-OBnQB; Wed,  4 Sep 2024 19:28:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8238440B81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725478106;
	bh=Y3KiYsLB0biIuZZ6jAtqxJEAwNNUn2Yiv521DpJDy8s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BFuxOrTM95MsxurgmSwSsxw3j7j0SM2l8V+znRf2cUh9MhBaxEnhQCPNmDUXK+bnN
	 OYSnquvJU6QYjgfuHrYD86s0XVHcmvLPiRxKrhTAUUOQTFQodJ2tDHubidGIN1PgZv
	 qy5EQTuIgz83MTh4+BJDAQDiLWxXKpGEx7c9pRndssU/ug5duoik3MCGUqAlIKENO/
	 BGOa7Ilf9ksv5ZdRJJJFAK9326QOMrCLcovxctq4bA5SGJX+enElhq2Wzl24Rn2Ktb
	 PiKKsQCEf1G7s9vANPcBlMfqp4n68howw7gkratyF/dfdSJplfp6k7cBZJNfG3zGPs
	 i4IsPv3svN0/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8238440B81;
	Wed,  4 Sep 2024 19:28:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E07D1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 19:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6812740227
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 19:28:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9zZe0ZrTbnfP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 19:28:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3A65F400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A65F400D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A65F400D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 19:28:22 +0000 (UTC)
X-CSE-ConnectionGUID: Oixs9jgyQGCm/3ZRktWsUQ==
X-CSE-MsgGUID: DD8kWOAMTNOswBFf6nMzOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35548526"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="35548526"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 12:28:19 -0700
X-CSE-ConnectionGUID: oPPf7nbJT1GgAlaMGVufeg==
X-CSE-MsgGUID: ysflU/TCQJGXh6ljHtV7cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65208900"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 12:28:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 12:28:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 12:28:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 12:28:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 12:28:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MZ/yIkd2LFQw66Utr2hWPJlipZjMe4851WuTqJ7CdEwpik1LHoxiXfwDVNX8Vmp2Teaiu+VWsmWqWF2QLOxiPp2ok2nSdT7YWixoTj9ljxsQ6dJDLa7jHdw1GMOBqixy/+fV1UIwDgZq8AFoQDA2g60KjVEMv4/QpS08eRL9MwYb7NwqSumlXYvHHq/ZBMzum3JHTeXW+IMrtM+LcY3bnYEetfL87Gj0yaV8f/2MGUyMo7UI5CenCVZxpVkpjIK56rJKlay+Z+Ff+A7PzgYm/7BGsL8I/9CJvbAADp+5GZhK/eNVTBDFnrNaBHC59CeavMa93s8mXKG0FmS5FHarkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y3KiYsLB0biIuZZ6jAtqxJEAwNNUn2Yiv521DpJDy8s=;
 b=bAh1L6dNOy+hMGwanHz393cD+rajqX4PFA91tARs9YUhws3W0DtjYNVYWpVyS3/fPHajI6oc1RNOGmT5FJH2VBsERP4dvSmKyA0Clho5ZmatW55FklXGuWJDkaPyG1FrFaPr+pz0QyqDgO+KWTPsgijocmZ8GzsuSnjDe4Yn4UUUS9HpUEdtyGeBh75/+BkMgnZSUoHkvVyRX9mNsxB1VhDmP3ofngD6D8aJ6r3OjejDRHtDUzrs+NpON/cubmdaWEAYjUXB4BCO3HvJinJgKJ6buIZ/P30Q8/xVdKCazoEamhF/Bc7Rxl1h/vQWARmtR6rphx0tm2un/4uhCHGeMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7395.namprd11.prod.outlook.com (2603:10b6:930:86::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 19:28:14 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 19:28:14 +0000
Message-ID: <08298ba9-5f18-4eb9-a6a3-6e7410d8c4f0@intel.com>
Date: Wed, 4 Sep 2024 12:28:12 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240904123306.14629-2-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240904123306.14629-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0159.namprd03.prod.outlook.com
 (2603:10b6:303:8d::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7395:EE_
X-MS-Office365-Filtering-Correlation-Id: c4aa85c7-c744-4caa-0bb2-08dccd17b872
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHNPelp1S2gydURrQ0ZhRDFiRExRcFhzVmRkMmUwcHpORURKekRSa2dwWmRX?=
 =?utf-8?B?ZDIvd2hmQ3RwdnEwa0RLNndzQWhNOE83V3ZXU01ob3dIaExZWVhGWWJRT1pF?=
 =?utf-8?B?R0ZGc2hqcm5vdnExMS9jcUhuVnJ0RDkyYlJYWGJvTk96S2N1RUZ6QW5RNGxk?=
 =?utf-8?B?Zis5VjdiVXNPM0grbC9kU2dCNEM0dnpqWjV0SERrRzE0eG4xaGQxMDlzL2FG?=
 =?utf-8?B?c0FTUk15RUFJV2d4L2lRa1FXNEpvYWpOK2hTOHlQL3U4UkJYT2lOOHF3a2xE?=
 =?utf-8?B?Z0wvTzVpdGpSOWQvdS83NW9oRTBFKzBPZEdYcWlSZUs3NnY3SnNZTCtVZi96?=
 =?utf-8?B?VWZOSC9mbEQxSmMvMmtCZkp3dnhzY3dVc2NpUDVhaE1rMlhrSWZZRC9XTHZm?=
 =?utf-8?B?a1FGQkFQNEQ2azVzNU9ENnYwaS9JdmFoWVliNGFpNWZWNUpnb2pjY2Y5N1VO?=
 =?utf-8?B?eVE0aXBCaEhTWWEvNXdrWEhTdVhqY21mY2NDcVV6QUtFUjZ6VDR4NFN2V1M5?=
 =?utf-8?B?ckphNC8wTDYrbzNGdHpzckVDU0Q2cDVFWG5QK3VpekNPRHhPSm43S0xTU2ZP?=
 =?utf-8?B?bkFoR1hmaG1QYXk1VWt3bXA4Tkp4OWZtdGNISDY0OTIwbWNPalVVQ1dNdmFN?=
 =?utf-8?B?dnBRdDcrTG1BMTNLYzZQcW1tSG1uUzQzc1h1RkpvUzBQZVhzMzVwdEVYUnMr?=
 =?utf-8?B?cmhYdG5hanZVZjlmTHlVT3JyQ0pZWXI0dTAyOTQzOUhuS3FnT0I4QTlMdmhZ?=
 =?utf-8?B?TnYzNUh6RGI1cm9udjVVaUlVZUc4OXZZcVYvcWZhUUE5RHhVbThmSTdBTkFx?=
 =?utf-8?B?NlM4dUFDYnVvYklWdEJHTldLajBnaktBMTFzdXFnbkJOMm54VVBpVUsyTDA1?=
 =?utf-8?B?eE1FRGlNeUMvUm1nelhMd0NWSExDUVFwbS9xT0dOSVFvU3ZkTmtkOVRVekdH?=
 =?utf-8?B?UVRiazBlL0duMGp3OG0yMGJRYlFSSHArUVVQVnBKR1JYclUzaVN6eFpkNFhQ?=
 =?utf-8?B?RW9VTlhPMEY5dExjMDIvN0ZCb1dMOFRncEZaem80c1hxVVN1YnowQXhGM3ly?=
 =?utf-8?B?bnpMSlFZTW94anB3TjMvaHJEL0NrUmdtQU1oQTZxMkFVSE4xK2Yvc3RQV0M3?=
 =?utf-8?B?bWJFQjVKa0ZaejU0bzc0Q3FkcWxrS2h2Nlg3Rm9HT0IzRHFXREZ6RzJ2RUZN?=
 =?utf-8?B?ZDVMRy9VZ1ZtaVA3NFdEOWtpWlZBc0ErZ0xqOFZML3psaWxrZEFWSjVITXM2?=
 =?utf-8?B?UWFlUEYzc2t0WHNpTTlNRTZUb3g1amdld3VNa2NQTHQ5RzZKL09rWkhCTGNF?=
 =?utf-8?B?a3cwT0FPZ2NQZWl1d1pWMGx1OFZialBZR3lqL2sxTWYxNmx3TzB5WC9PY2R1?=
 =?utf-8?B?ZUdqbURoc2FkdkVraTRuSGxpakJGOHg0N2t4NlRMeUt3UHRYdVI2UW5QMVY3?=
 =?utf-8?B?TlFkSTVPR0s5M2FhazNQc1N5eHRyUWR3ellzVG5FS3g5VEQ3bEt0SnR2UGdo?=
 =?utf-8?B?cThwT3JHSzQvSCtkMkMrcFVha3BwQkI5djlZOTEwSjAvUEJWNit1Wm8wVmg3?=
 =?utf-8?B?MHVMTE9Sa0pXNks2Z3ZrTExWSGxMNUhyeXNkQ0ZyUjNxZlRwd21ZRDNvdUlx?=
 =?utf-8?B?eTZXVzlwbDRzT2srQ0p6RUpkQXdLOGE3dE5wbExJVzFqamRNTDhXcitjK1JP?=
 =?utf-8?B?RGwySENkb0Q1OFFoYTBVTjNicFlrSGk1RGQrU1IvUklPRlU3VnVNYUk3N0x4?=
 =?utf-8?B?YlhBd0V0NlVNblBUWGl5WVdFTGlIZ29DWDZBR3ZxNGNqVGl1QVY4TXBMWkJN?=
 =?utf-8?B?ZDBGTFdPdTcwT1RoTWh5dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aCtyWFhnTm5SbmJIV2x6K0dlTk8wQVJkbjhkSkNpVE5YUEszSExybU95L1Vr?=
 =?utf-8?B?emJxaVJnM21kbWNuUDNaaXEzK0FCdk9oZkI3bUVuclFtb0RjeGpncVZkcWx5?=
 =?utf-8?B?aFVBM1NnSzdTaHNPc1NiYWJCdUpSNlN5eVI4cEZXV2RwVm1QOWd1N2tIUWVo?=
 =?utf-8?B?MW5YZlVYU0oyTGpQb2hTdjQ0WU5RYzlIMmhRd21rd0hvYkJrUUxVV2F2NFRu?=
 =?utf-8?B?ZDVVTWd6cE5DK2RpL3N2SHFtdFFsSlFxQ0NMblAzVU5VMFVHQjdvNW5xUmds?=
 =?utf-8?B?bUJGL2tmMnR4SWNKek9XYVptZkUzUEpJSkwzNkVOcUErWkllVStoTm1TZnJF?=
 =?utf-8?B?enVXOXRhbkROc3pTVFN1NEhWLzQ5UjdQUlIxMjVnRjFSc2k5OE5laVE5T1RE?=
 =?utf-8?B?VkdhUkJIUERzdTE1dEQ5dktjWVV1NjlleVZrTFpsNnY0MlI4Zk44NURoNjNv?=
 =?utf-8?B?Q2NkUHd3OVcxOE1rclZUVkVyWm4zL0VYVnp2bE5HeTl4cHlPMWFWN1FKV1Rv?=
 =?utf-8?B?bStHZXpycUlPRkY3UnFrcmc1cVdWZ0ZsUW1YOXBFYllGeWo5OTFxbERqRmpj?=
 =?utf-8?B?ZnhmL0FERFYxeW9wZ0U0Q0piTGVqblpZbW5PdmtwSStyaUg3ZXFIbkE2aG1o?=
 =?utf-8?B?Rk1ETjEyOG1hTWEvNTMxdDFKSGRRZ29sNzRyaUcyNThpRUFiUTF5ZzRVQlRK?=
 =?utf-8?B?TTVIckRVMlBTUHVXdXlCa0NLK1o1UUJYVHl1MFEva1R2SW93d05KK25rY0Zs?=
 =?utf-8?B?Ykd2cHRhbWFEM3RncjFwRm92elp0N1dHQXlneFJBMGdVcDNmWTJCTXRaRmhG?=
 =?utf-8?B?Q1JJaUQwcGVHY0VKQjJWdzBaZTlzTFBMMDhrcFZwdUNEU2FNUFpiNXRVZkFh?=
 =?utf-8?B?L3FJS3kvNWluU1ZOMzNnZ0xsRXdDblBWTTd1Uno2dmJsb0kyeVFHQm1ub0RG?=
 =?utf-8?B?VFZqUXdZQWlMQUNEdkNpTjRaYW5zV3ZLcUgrS01UU3l0dG9mRzhLOUFZbVRy?=
 =?utf-8?B?ZXZqSlZCV28vREJMOGZRalpHTytuVmwzQi8veXdqYnl4Qjd2ZUtqZ2grcTU4?=
 =?utf-8?B?bnN0VjA3SUZiTktqbzk1OWJ3QjRVNlpFK1pCVUFXOFBURjhzMzZ5bG1CelhZ?=
 =?utf-8?B?RHV6M29LY011NWgyT21Ka0NObkx0My9vTnJnT2t3Vmx2N01OYUMyeW05czl6?=
 =?utf-8?B?WHdzN0NlN1M0bTJJZGNrZGVPNHIyU2podmFpaEZwTXdCL1NJalNqbkRlMzdE?=
 =?utf-8?B?SEYrUzlFVzh0a2diOEhwMmNGK0dEWXh3MkxVREtMMzdVZW04T29td0c4c3Yw?=
 =?utf-8?B?dGhjNitaeHRPVjJPNi9RSE95b1F0bGxQQSt6OXY3SXBXTHpvdFlzUDlLcUFR?=
 =?utf-8?B?TzNmYjBseFF6YkN6RS9GcnlWeitPNk9Lb3FHdXZ0czBrZ05pd1o4cU52bjZU?=
 =?utf-8?B?MkdFUjRQbjU2bjJwUmRuLzF1SGZWanBpbjlXVUFVL3JjcnZkWXdiMEpSRXVQ?=
 =?utf-8?B?NkRJMzIwMUlmQSs5bkkvNllMTXpudzF2UFBTOFRBaExqZVZIZFRMaFNkYTZ3?=
 =?utf-8?B?NXBnK2hRUnU0TzJxNjhCOVhPUXhSMk1EN3lYbGFDQmE3ZWZDYUlGOFgxYUt2?=
 =?utf-8?B?dERZSzBQSmI2MmhsekpWUmtKRTM5Y0dBWERlcjRPOGpMWE5EMVN1NFJ1ZlhW?=
 =?utf-8?B?eGlzKys0aTdqb0QrMEdoc09kM3gxdEtUQjlub1cxWFZrd3U0YnIzY1ZwUHFt?=
 =?utf-8?B?cXZORGZJMzRjaEh4ZUk3dkRPVXBYS1c2RFlTRDk5L1VJUnVHZmJhTGFwRUs4?=
 =?utf-8?B?cE5GZ3pnQzh2TjlTZUQvZy9UQUxFRmtlR1RqVzNhTFI4R2lycEhaazM5VGNS?=
 =?utf-8?B?ZE9WYU0weDFkcit5N0hVU1FQWmdVeFdTZVhZRnZ1L0d6aVVpa0JrVTlDTTk0?=
 =?utf-8?B?Vld5eTFrazlxUUVCSW5uMXdjS0FFSW82WVdwVmIzWG5EUDRmYjVvbkNDbE84?=
 =?utf-8?B?cHNWdVM5RzhtVXQ5TFY4ck5HOEZxZUMvUEJoOGl2U3NkWlE4SXBoL1h1eEcz?=
 =?utf-8?B?RTVkS2dsbWQyNkh6WkRuTGVpVjNndEs4VUpYYjg5RE5YSTF4NlNLZXV5bEUw?=
 =?utf-8?B?cUQ3d09PcGx6aVp0MWxSZUpSVjR4ZmdUMktCR0JEYUVBbDk1YnFvUS92WnFL?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4aa85c7-c744-4caa-0bb2-08dccd17b872
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 19:28:14.3219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47G8Cs4TeBjBdGh80eUoLlXr/sU1luLoPj329/hpzgzZMBBGZxxsELK5Y/JqmeTvdi+oGNBnAeX4YwDRJKpGjX87bj08nMpEfzKddFHirbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7395
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725478103; x=1757014103;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oXNaosARI9TLoqPyE2jAgzhxZOYOZViwf044L5XS9Xc=;
 b=CsfU+WitPcPVRLbr2VDTkq53b+8oQ/6MpX8sWwwTwm9Gi2OUV+87Mo/L
 uNj4V1nyOwFtjxtBKxKmfBXa1h4N3fIM9qqNpnDWEX1nMoXWFRicO+1MZ
 XLi9caHdfe4fVzKMV9k3HxltSt1UolAi5Tq6lZ2XXTkHVCldHRCaxH+sU
 BqcTd+323t2qja0un0tmUcSK+rl532EX/vp1ODrhR5ZEVr+3aYrEwHJE/
 GVi/8B/g0f6g5/Tgywr8td+7kIjVagpqMDYtljKFNR+DoPNCkWrutd71q
 nJ4Bj2repP8BozOabhW+MANNRE/GT3QG32qREzw327oYXeoUhHOdTcFdl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CsfU+Wit
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix memleak in
 ice_init_tx_topology()
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
Cc: netdev@vger.kernel.org, Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/4/2024 5:32 AM, Przemek Kitszel wrote:
>  	dev = ice_pf_to_dev(pf);
> -	/* ice_cfg_tx_topo buf argument is not a constant,
> -	 * so we have to make a copy
> -	 */
> -	buf_copy = kmemdup(firmware->data, firmware->size, GFP_KERNEL);
> -
> -	err = ice_cfg_tx_topo(hw, buf_copy, firmware->size);
> +	err = ice_cfg_tx_topo(hw, (void *)firmware->data, firmware->size);
>  	if (!err) {

Yea, just casting away the const is sufficient here, the function
doesn't modify this buffer.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
