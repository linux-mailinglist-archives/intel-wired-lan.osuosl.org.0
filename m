Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1BD9A1619
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 01:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E116A6068F;
	Wed, 16 Oct 2024 23:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qD4tL4WOaT3k; Wed, 16 Oct 2024 23:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FF63605F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729121086;
	bh=GSDIVmUHOz4RksUhfHGfc6Anhg97BIX/y3DLqHgdS2E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GCR3SW8vv/k9UlB5+NfOgUDhiK1UXuG/8Sl+HfTEW7VJjKlPy66V/h1p4bLlExbwx
	 mjFmMpf8aIzg/Dfx7QjAirKvl8rdvGwWMoOFaMXCr7OnKjrpSQWvmMjveS2pcJAl/g
	 5hF6xnatMQcozlSOwGjiGg2anOH2tKdgkJ+ZYArygy0mR0w/kbf/JIbEewOYpRe11c
	 ZnHYp+Tj/YH2rG4knLxI6mscmdJFXwGkZVbGRcPWoFmSBk1k3SnPQP0TEQPNbtMN0W
	 6YbGBy1do6jIV38Rnb+Ki0yqR12W+EUcDkekbFZs3E25i5PiV4w1GfgDNP/CdymDcK
	 JH3KMtYUK1+LA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FF63605F9;
	Wed, 16 Oct 2024 23:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E528F972
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D41AF605D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GJ2EhwdtWrGU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 23:24:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 061E0605C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 061E0605C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 061E0605C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:24:42 +0000 (UTC)
X-CSE-ConnectionGUID: xoLseLJcT/S3FwZps+Q0wA==
X-CSE-MsgGUID: ZvZaiZTlQTmwhbE4lYMXqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28470759"
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="28470759"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 16:24:40 -0700
X-CSE-ConnectionGUID: hfhrffrLTIy44Kadme0xmw==
X-CSE-MsgGUID: Ftkei2ekS/KxhdkV5DCvHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="83030787"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 16:24:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 16:24:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 16:24:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 16:24:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tblsNTaTWk0bjIo3iIwvqUCbf1dGrXOHkdm7t5AzlCJwGxN0HrmqWJT+qLIo209Vk0+ocW8AH0MrZO5oQ3qUaQajx4lfeYIqfX6M2/me/WsxZsdFkYzBtVGg2vgg+W3lHx2s1BOsGrg/F0JtZt2IRkvV9U1T/YcM4vfZfguFdpWdFML+7rrEeUa18rAeooZ5exTxxp/qr4N2+E4KRzO7F3E5cGQXEk3cTy0mBIvG9VG50tF6/2No9ut30OsixEoo9Z/dUjgsr77l81BNyxNZ07SQ60DJ0ywzFLmq3osjkg5cwAkljXfiDXaeacWPR2k5g5JtD+hjGdfHfNzgv/NbNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GSDIVmUHOz4RksUhfHGfc6Anhg97BIX/y3DLqHgdS2E=;
 b=SAhLaFe9uS7UlpsXKYD84InGaq9pSotUtee7C6e/2wniQzCJHlocvmM44YLJJrYNlLei5iK93Cmi17z6TUs1wIvLdU+LqQbmgvsvD2skf4MPVbiDC0yDRaPPOnWMWVnE+0Kp6Iu6u+xhTG5zY2kSFkrlp+8rtlZcSmvwdDb+HkZwNdPkPHzWcbqCzlCvDLDZanyiqlm5fCai0x8jtHBPEdvHniOrT6Dllb1t/wKBRKiXyJyD8g0HXxPmjAKL15qzNoEp0M/xHma4X5Ipj7c6/r2Xcc33h2YnRpI4H4CjNRkKgvFoJWVcMouGBI1BAegp8+wf/GmDtO1bhD9IYlwKSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB8377.namprd11.prod.outlook.com (2603:10b6:208:487::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 16 Oct
 2024 23:24:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 23:24:32 +0000
Message-ID: <4eec05b3-6c95-4b4a-803e-9dd24be21ab0@intel.com>
Date: Wed, 16 Oct 2024 16:24:30 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
 <20241010142254.2047150-2-karol.kolacinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241010142254.2047150-2-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0048.namprd03.prod.outlook.com
 (2603:10b6:303:8e::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA0PR11MB8377:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e3a161f-e98a-491f-0394-08dcee39b064
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHlKd2VLRFJjU0w0aHZLOTV6MGRBNlFSZkwrUHhhRVRSOFllblNaRm03YUNo?=
 =?utf-8?B?K0ZXU3VpTVJhcG96YkZFTEF1aFRsSHVFeHBuTW9OeXRZUjFob21Db3gvMmYx?=
 =?utf-8?B?V0paQjNVeGdXYnkxd0hWYXEwOFlPLy9VeGlQeVdadVd5R1dwb1pyUVBmSE1w?=
 =?utf-8?B?RUttMUxVd1VSMVd2aGhJUTBIOTYwdTlVQ25tSHczRG9wTDFxOW5rTFNNbU5t?=
 =?utf-8?B?K3RaSlVLbURCUnlCcm56QlU2YXhUd2lWL2U0QWhXeUkzQTVzMk13TlFYNHkw?=
 =?utf-8?B?U0pBUjNmTmNEV0JRM0ExMTN3Z1VBNEZQdjZWTUpOR1NLZkJ6Q2xmTXFwblpm?=
 =?utf-8?B?K0tQQ0ZvTk9nU1VzSDFIZmVKTUswWmFMRlNjQVJUcFpVajRXeXBQa0VQQmRv?=
 =?utf-8?B?cHFKc2cwbDlyenMyNFk2bThQY2IzMFVvcXc2SjhmMERUVzhNNko5NmpnS0p6?=
 =?utf-8?B?SnFuSG1udUZ5dFlySDdZTHVacVM3T3QzNWFWeXZ1eE1JbWZSd1Q4V1FSZm1l?=
 =?utf-8?B?WC9mbGhvZEJiMUt2bzRPWDd1TkFzb3N3cmlRcUZ4VE1GY09rYzJHWGxtVDRV?=
 =?utf-8?B?UE16dXZOWEFmbTI5RDdLVElHUE1NNSt4NHFNb1lPWXVaQUd2bHdVMHBOVVFj?=
 =?utf-8?B?TlUvUmtlejAxVlFxbmphNDNuWitRTFNyQzVjNi9mbS9jakpVaERMbzg2a2hx?=
 =?utf-8?B?SHVNcnJpUDRMRWhHcitLOEdDSzZYRjZGY1RqUERiUVFyNThQam1TeFJXYndo?=
 =?utf-8?B?M24wSGtRVW1NYWJHR2pEN0VQMlVpc1VoK1BnZEUyM2hmVGFZRS85aXhGdzNT?=
 =?utf-8?B?cmtmd1FDbDJ5NnZOeHEzM2JLdlAvbElyRzQ5OEJhaW1Zc3lTekt2NndtSkpu?=
 =?utf-8?B?dTVmTXpJa1FnYlhLY2xwK0ZNS1YyTmdUeU5GZDhneHdIMVF3OGVmT05pckJO?=
 =?utf-8?B?UG15M3BFQWtlRjZKK3lIQm9TL1hUeWVJbEtieS81MjNMNkRJOHBvMWEvZzR4?=
 =?utf-8?B?bHg5QzhUTDc2eW1JWm9DaGJBMG40UEt3TGpGNXNFV1J5amFZdi8rZ1lWTVY1?=
 =?utf-8?B?QmRJcDgzU3FwcUtSWGErRDdIRURLQmNTZXA2eXZSWTdRWERvRmJLOVNlem5p?=
 =?utf-8?B?YXljVXB4WlU2bnVMcndTS3BhOVFxNWF5M0RKVnRDWG9aWHMxR3NtMHdBQ1Vo?=
 =?utf-8?B?QmhuNXB4a3RpeDlDc2dUWDcxbGdPNjdpRVEvK29GVlpSTmNvTngwYUE1K0x0?=
 =?utf-8?B?a2Z2UXcxNUNiNjhHMEFBLzM4eUVQN2hEb1FyT0xDQmp1VEpTSW8zYWVPUWE2?=
 =?utf-8?B?NnBhTmZQSlJ3TWh4N2ZkdXl3WE02RllsMW10OGpvWitSTTV1U1FGNFdhbXpa?=
 =?utf-8?B?TmEyd2dGSVY2V1VQNDkrV2d2VldiWXo3N3ZwbnozZmZmWWQ1VjA2TVJkZjdB?=
 =?utf-8?B?K2hDcEl1cktBWk1oUU1ZQm91d3ZSWXd6aW5EUlpIeExRNkdWaFlWN3BxVDhE?=
 =?utf-8?B?TzZhaDZwT1B3Tk1ER2tLSTh1NGVhQ3A4eCt1QisyUE9QQnFWWTBrYllLTlRn?=
 =?utf-8?B?dnZlSHNaeGltYVl3WG1qNGRkQlpNNk9IRThnTWNiREVTcC93OFZBMEhxQUJK?=
 =?utf-8?B?czExWGZ4YmtFRlQyYlI4ZzZEVFJDS3VXdEdaNkgwalY1QjRlbGl0NDJucmxr?=
 =?utf-8?B?ZnRtUFp2WUNKVlprV0dsOUM1cHJnS01qRDVlMDg4akk1OFo5TEpNV3l2TUkv?=
 =?utf-8?Q?0BPkgAvYQ7RFnGfVYtWMeOTEo2yIH5gdXzZU896?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkRsaDVEQ1FKQTR3OUdBVmpoQXI1MlRhZE1YY3JJeUdnb2dHQ1haWml5MkhG?=
 =?utf-8?B?cTZ2RGE4RWVwVWNneGlkZzUvTTRobXYxQUY5TWNXamV0cEtxcWh0UE9JcVYy?=
 =?utf-8?B?dFZ2SS9KTUUyZXZkNi9zMEwxcGQwcUdHMDR1ajc3TURYUlVFYXUvY00yb0s4?=
 =?utf-8?B?R2Q4TnY2MXA5Y0Z4OXYyejFtVVk5aTZBMWdqank1T1B6SlI4UVhRRXdlWmpv?=
 =?utf-8?B?eFhrcFI2ZmFDNjBoakIyNnp1NUFpeXZFaXZtTzRIZFgwN05zMC83czB3K1FH?=
 =?utf-8?B?STVZOXN4cFNlWTdab01aNVRkL2tDZmc3VUNxUXdoN2JEekhraDBkTUdwcVRn?=
 =?utf-8?B?RmFCMEkvTkgrQnJiYytRQTYwbWN4TWU1eCtMRTg5Zjd1SGVkckpXOVJlTDIv?=
 =?utf-8?B?MGVvdWFoMU9PS0QrTDZmN2xIdE1NL1JwQUY1bmNZUzlYc05NRG81NG4xZGhh?=
 =?utf-8?B?QmFTNFBoVThmaG1aaU5ObW9kMHJWdkhCWnZoenU0RjJpZkZ1MjhjRUcrbVRm?=
 =?utf-8?B?SGlqTjNqblNweEpVOU5sUkQvWUJhUnRXWWtJY0xlSTdBSWZxRTZ0cDllYjFw?=
 =?utf-8?B?UTViYUxzM2N1ZnYxRlpPRmQ1cE9lYlJGYTd3TEFqL2YxQ2F3MXFSQWFSVnRh?=
 =?utf-8?B?ZXVOcFZrNkpHZ0dDNVZ3R3AvOER6aU9jM2lRTEloLzFJclVBalE5K1E2cXpo?=
 =?utf-8?B?ejVNb3d2MGZzY2dqdEs4YzBraFZXTGIvK0JGVHdUcEs2c2V6TUdZcFNPcTNM?=
 =?utf-8?B?RmJXVjFobEh3V24xWDF1K2pvRlZudmY0ZWx1YThWbUpwa1BqbHI5SG5pQTNN?=
 =?utf-8?B?SW5VSmZZNEc0Zmw4TjlYakF6emdqTHZRZGJqWmMwS3pCRHVoc3BvVHVUSnlj?=
 =?utf-8?B?Z1ZIcE5mdy8rTG1yRVdRTmxtQjd4SVNDTUpIUlBRN0Z6NmFuS2FZbWFuTkFP?=
 =?utf-8?B?ZnAyb1h6Yk1KR056SXRiM3RCVk9ZNC96aUxQOElqOHQrRWs3aXA5eUp1NG1T?=
 =?utf-8?B?elQ0Qk9hbkVtWTVUa2UzMVg3REJrZFplYm90c3pFUnpSMzE0aDRJSkh6SjBV?=
 =?utf-8?B?Y2tQTFdJOGE5b2tNNG5sSWdGK1JnU29pMWtBdWlnUlBjYTN5bHdHK2dESFZL?=
 =?utf-8?B?V2o0SU95YmYxdEFZN0huclplUWVGZWdoV2k1bHFMeDN5Tk4waGx3T24zRVRC?=
 =?utf-8?B?SjZzUlYwbTFLeEYrTkFnV1lIcnE5b0ZVUUJ3MStsZVlBZlZYSWZudm5scldU?=
 =?utf-8?B?MXZEcHBIZ2ljbnJVRFYxT2s1cGYxeGFxNm9wc3Aya2YrRWFNWXRLTzdYMU12?=
 =?utf-8?B?SkhocWowR2lLWHhJVUxWSE14Qm12c0ZodzZFT0pCZU85Zm5GeTkrZmc4SVM3?=
 =?utf-8?B?bFI4Tlk2eUtDQzZvUTVlaVduK3VSOTRoMEJZODJaNE1kOE4rdHBYUGp2dTNJ?=
 =?utf-8?B?K2IzenY3R0RPcC9QT0NwYUlzSFJSZlNqUjdWQmxUU1VVbTJUbGFDOGVYM25a?=
 =?utf-8?B?bUxacFFBbE82Zi9kVXJsc2QrRE5yL3J1cUhrWU1ZOWdBQkdzc1A1YVB4eW9P?=
 =?utf-8?B?M2IrTEtjbWNoSitoNzYxRGxaZHo0dEtnZ1FxQkRON0w2ZXdmVHAyZ3NCMmdI?=
 =?utf-8?B?ditnM3pFaUhhVWJIeXBKRFBhMklpSEhtcmFZdVg4R1U2SEhQZWtwSUx0WWJX?=
 =?utf-8?B?L2krTGVmcWh2bGRzYkczS09uVEhvOUd0eDlldTdNby9nbndXeDRUanBDVWpl?=
 =?utf-8?B?T2NzbU9ZQm51bHFSeit1NWxxRVVnb0xHa0FJdzg3cmc3c1FMZnZXL2JmMWY5?=
 =?utf-8?B?aDBoVDRQdnB2TXNlN1cydWVyRlpjODhOQ1Z6WHEvcUg2dTlFU0FSMi9lZHg3?=
 =?utf-8?B?ZEdmZzlWOFBmTGJsU09kK3lpRjBtWUJacEF5bkZKMExPWWdPVzZMczhoUFBZ?=
 =?utf-8?B?NGVuNHYrNU1qRlVEVzY3eFlKWGd3cFpQUnJ4Ni96WG1sRElDa21wZVkxWjNm?=
 =?utf-8?B?N2ZyQm5CV1gvUFd1Ny9BeWEzakFtZXlCeDd2d3Ztc1RFM3p5VGhBZHREVGpm?=
 =?utf-8?B?cFVJNmxpM3dlSW51N3E1Vmp2bTBzeUd6M3h0bWRFQ2hJc1orditjdkh3Qysz?=
 =?utf-8?B?a0JWdXQxdTFDQUtkT1cySWtVQnc3bkR1VUtLVzhmeGRzb2ZkS1YyQVE0VS9P?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3a161f-e98a-491f-0394-08dcee39b064
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 23:24:32.1291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y/ZhKtwEd1Gf2RJsMY84d4KVHi/ALg2LB+9mewmKJ+RKsr6jzDwWB9ZPpJThNn7pIBpN/F8vjHfDYdR3997FXmEyF5uh7iK3l9xShn5phlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8377
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729121083; x=1760657083;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XCR+MSpVq5LUKQX/JZTTd22NHKqwwMvzVnlaESQaf4Y=;
 b=VMOYDeFPPMJiG+nzPV6tmukKkQ0x41yAcgEGxPyd8IowNIQzhca1yRyV
 Mony2UU6iBwjPIknXXop/nJhrcBmEsYlLSSL1hZAe8ihohk1MfMp2Nw4n
 aSnredHhkGhavB0LGNR3ghe52tXu+iW8vBKmxTSgTRVV23RWS+WypCYLk
 QFLiRroYQdJFrh6RhAf9iA9+26o0Zq4Hk+Xs40YXZaKs6fyJv+do01mdo
 7exypMFgj5xfc2clbWN0hPY0ABCuRVvGUqrIyvPfgWXGLwaTiaD6iCOqY
 eC8wlYKqRoHxCHms11Wa2FYJCtjiSJpEvlHg25OFMHDkM6CCRzjIZWkeK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VMOYDeFP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/4] ice: Fix E825
 initialization
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



On 10/10/2024 7:21 AM, Karol Kolacinski wrote:
> @@ -2686,16 +2687,9 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
>  	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
>  
>  	ice_sb_access_ena_eth56g(hw, true);
> -	for (phy = 0; phy < params->num_phys; phy++) {
> -		u32 phy_rev;
> -		int err;
> -
> -		err = ice_read_phy_eth56g(hw, phy, PHY_REG_REVISION, &phy_rev);
> -		if (err || phy_rev != PHY_REVISION_ETH56G) {
> -			ptp->phy_model = ICE_PHY_UNSUP;
> -			return;
> -		}
> -	}
> +	err = ice_read_phy_eth56g(hw, hw->pf_id, PHY_REG_REVISION, &phy_rev);
> +	if (err || phy_rev != PHY_REVISION_ETH56G)
> +		ptp->phy_model = ICE_PHY_UNSUP;
>  

Shouldn't this return like it did above?

>  	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
>  }

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 0852a34ade91..35141198f261 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -326,7 +326,8 @@ extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
>   */
>  #define ICE_E810_PLL_FREQ		812500000
>  #define ICE_PTP_NOMINAL_INCVAL_E810	0x13b13b13bULL
> -#define E810_OUT_PROP_DELAY_NS 1
> +#define ICE_E810_OUT_PROP_DELAY_NS	1
> +#define ICE_E825_SYNC_DELAY		6
>  

Why is this hunk in this patch?
