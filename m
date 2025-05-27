Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D06AC5257
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 17:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D781260B67;
	Tue, 27 May 2025 15:53:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HU7bBqFhj8_P; Tue, 27 May 2025 15:53:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4426F60B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748361188;
	bh=dx155vlxJz2jw6+uPw8kM1NdirA57GRtyIK6auYdXEI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iGzcC4uH9JFQmYLMznD3IcxBEvSxICg0Rm2z0b7bUK+5vfnl/9yFW7MUAGQtd9JhN
	 lDIZ7tA4mxxdmZVc41OS1o6vjgWFo6Poepq44BRQrWb/4I6cIjOOSQj4Q5AmguHY53
	 fIHufKO9sKfvcib8s18kn32+2Ah/G3siVQnYIQHpC67OrHju90iqwdyh8XWyvQI0XC
	 zxNJuag1wX3ll4lqejBHmA6msYROPhVtLU1dxN0aFnjNSHdi01/A41JjV96r3MEAvM
	 FGrZMJaWOiUMU6xTE2h1ncd1LFY37vEJsq49eEq8IPb5egf+CogvgxdKy8BrkPqmwX
	 WLDs30wtSlvWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4426F60B26;
	Tue, 27 May 2025 15:53:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AAF7819D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 15:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 914F3405BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 15:53:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79ogWPuS8b4u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 15:53:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C78CD400F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C78CD400F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C78CD400F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 15:53:05 +0000 (UTC)
X-CSE-ConnectionGUID: pxPtcQZ6RF2HgywLxili4g==
X-CSE-MsgGUID: xxRUQfXkToyjJzx0HL30+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="37982127"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="37982127"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 08:53:03 -0700
X-CSE-ConnectionGUID: bgx+VUmLRuqAvyfeIeb6ow==
X-CSE-MsgGUID: UgepY/GeSdiCp9/QpzmL8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="143835499"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 08:53:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 08:53:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 08:53:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.75)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 08:53:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E+IEAkq8aaoczxwplrUb4sspHwW8apVUGFiaCGXTy8MDCDWESX0EvFGfrx289qWAlm4UiU0CqqZ/ertdwv9SQF4TWyOxVa7orLUXljvuo08U98BEDoLnSgUrXBLK5e9ihoaI+gis/7bxam1N/59SeQSLPZn+VdZVOpgRqh+kos5KjUeqbHhYRFbTZ7m5nOgjz2CL+a4WCirl4NHWyElNxvuihsd0Ik3pXYmcIC/M2oMMG3C48FcdlfOrNLlYOqvkR6qoqNV9Z8rnAnOUzs3YDaqP8MgI/05f9c9gWCatqfVp9DjfYqJW1eyxUFt7mV7U31Y57Bo2qq+/bzUvkO+SoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dx155vlxJz2jw6+uPw8kM1NdirA57GRtyIK6auYdXEI=;
 b=Jo0KFvr/GFM3LUPlwAodO4IMLt6SNMp2HFfI6LC3+wZzu05nUR/VyG+0AKSR8NoVxj4P+RLlDPRujppR+10V4t5p8yW913MnnrXt573Fngec5ueeWyusc2F/qj0f7f31a7fqh//Mz3rYEJMC3bx0KHpgwZjc6gFmfn8t2A1iocemEU4oWFPXWIcGP8aaGmwlzo0grm4dGKfUBaqOKxjuDFoHBwAGj2vRd+W6bVZLVzaA0wfhdrbCqCTU6TcdFAwhMjRZHFQ2p98Ke8Vcunslh85qzxJz+P6T4k1+WHKlHNtI5wy/N7byrloWhdK5vpjtjyo3eQ4iYwJjJHmDxcnglA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA2PR11MB5084.namprd11.prod.outlook.com (2603:10b6:806:116::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.27; Tue, 27 May
 2025 15:53:00 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.8769.025; Tue, 27 May 2025
 15:53:00 +0000
Message-ID: <cbf22030-8068-4eda-96ad-b2e6f3ba01c7@intel.com>
Date: Tue, 27 May 2025 08:52:57 -0700
User-Agent: Mozilla Thunderbird
To: Mikael Wessel <post@mikaelkw.online>, <netdev@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <torvalds@linuxfoundation.org>,
 <przemyslaw.kitszel@intel.com>, <andrew@lunn.ch>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <security@kernel.org>, <stable@vger.kernel.org>,
 <davem@davemloft.net>, <edumazet@google.com>, <linux-kernel@vger.kernel.org>
References: <20250527085612.11354-1-post@mikaelkw.online>
 <20250527085612.11354-2-post@mikaelkw.online>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250527085612.11354-2-post@mikaelkw.online>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0174.namprd04.prod.outlook.com
 (2603:10b6:303:85::29) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA2PR11MB5084:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e24db0d-1e0a-4adc-a40e-08dd9d368e9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dlRxQU9OeDBtMW13c3h5Nmh5WkJwSFc2cndFaElxVFhHR0lqMkh1SHVVdEhw?=
 =?utf-8?B?M1dkQ1RJS0ZVRUcwclRDeFR2QlZBclZpRm81a24wdjNhVFluY1REajZ3cUxl?=
 =?utf-8?B?U1B4bmhRdnRNZUliaStjMk81NzZhMUhISVFDRnpqcXJuNmgvT1pDVk9ZN2xP?=
 =?utf-8?B?M2NtUEFkUFZkQ0V4M1F3bXRvRENnTjhkcEo4aU1rUElIVTJxZDRaOU5weXVB?=
 =?utf-8?B?VUtMK2lBR1BpQmt5Y3VVT3JCSlRoNnhLSENFMU02U21GT2xsN3p0TFRWUE9U?=
 =?utf-8?B?R1Z6QVEzdXdTZmozYmw0NmhDT3FhRkZ4RnBwK3JkdGtUQm9WRDdpTGFjeFdj?=
 =?utf-8?B?VDcxSGRqbjd1S2VzdFdLcW1Ldlp2WjduSG5KSXUzK2taV0EwM3NkUHRoU3Fh?=
 =?utf-8?B?cWl3UWliN2dVMktiSUI2UktpU2JrZ1F2bldUbEEyRUtkcG9FbnZrS1VPakVW?=
 =?utf-8?B?YUh6d1JNL3RJYVhOVHpWT2V1VW5lQWVSRTk4Ly9uRUR6SjRNMEJ4YzZMZmFr?=
 =?utf-8?B?MkEvVmNGanBLOVJTMkZhd1BVaTc0U0NmR0JQYVhYNzJxSXJwVXpKeWxoSktk?=
 =?utf-8?B?TmNvZ3dESlJMNEFhOEhvNTg1cTl6OFB2K0RwaEZrZ0xTZC93VHhyaStMRzBZ?=
 =?utf-8?B?NStzdUpWSWNZOWE2QTlvVU56Sm1RTk9XK1BqZVNVODFHWW9mSC8xR1NmWkVh?=
 =?utf-8?B?Zm9UbVpIODZLd29LSmRqb2FVKzQxai9wUWdkeXdOUGF5dzM0RUNqb0lrUzJS?=
 =?utf-8?B?bnRwUHZZNnpSSVFwWTM0Sjh0N2NWVGtIeWJWalFsSXVZK0R1ZlhvdUJ1UGsr?=
 =?utf-8?B?cEM1eG5VdEFLRzF2LzZoeUQycGZucmNhRW51NWJpOExsN0FMZ1VhRzROYW0v?=
 =?utf-8?B?NzBJNG5vMml0UmU1TkhZSzVyYlJGb1ZEVUUyaXZmUVhoYWltZ2E5RnNEcUhX?=
 =?utf-8?B?OTcyVUY0VlVyclQwWm5TdGV6dy83N3BFL0pIdy9nYjFLaSsrR3RhbC9mQVVi?=
 =?utf-8?B?MGc4V0JLVXpxd3FGNFYzRDU1cDlVS1JMVWhORlgyU1hzSXgvaGFQM3U2N0Ex?=
 =?utf-8?B?WFdPZzM5RnZCUjhFYmxTMDkvT3A3QjE0RFBiQWt4OStsVk1WVWxFcG02YzVF?=
 =?utf-8?B?OTFGRVpiZUlOcEtnN2Eva0UyYzVUTzJNVS9FUldYVVZ3b3BDTDNRamRuZERS?=
 =?utf-8?B?eHNtc01ucXhJaEJYT2pBbVFxVlZXVU9ueE1hblIwV05PU3N0Qkx1dUJJSnBX?=
 =?utf-8?B?ZkF3K3Q0STJqWW1OWVhYSExrOHFhWVV2UFdiaHRTL2R5aEgvTUhDN2llNCts?=
 =?utf-8?B?VXdwdGlsVFNzNkpCUm5YK2NwQS96dTM0RnF6Ymsxbkd2TlMxdDAwWFQwZVhV?=
 =?utf-8?B?TGVpL3crTHRTckplL0NranhybVJINmUzOTh4NzdZMk5DSXF1ZzBSaFVYK0cz?=
 =?utf-8?B?RWlBeTdmQmM5SXhJdTQvR29memtlZ1FUTjk3dUYyRW8yOEkrQU4vVmMxakVk?=
 =?utf-8?B?U3pwOHZtRXFDbTRMWmVvZDdBZnh4OWNFaTZSWTJlamFybDhOYnpIOFE3cFor?=
 =?utf-8?B?VjJDVGx3aFF3WVU5NUlZYkVneHhGcXhvYS96TVRuN2NpektMTkN3ekRBWE4w?=
 =?utf-8?B?QmY0VGs5bG9jVzJ2S0NCSkJ0WEdaQ0I1R1YrRWJiWXJLOEsvUmhDcHNmSndW?=
 =?utf-8?B?ZWdQdkJlaENQc2V5UkZkTzI3aWtPVWVOVkorT0pHZ0ppd2kwenlRT0ppRDlK?=
 =?utf-8?B?SlFUTlU4S3BWbHRhVFNudnV4dllyQjZ6cllIcmd6OFJxUTNYTElCTHBEN0Z2?=
 =?utf-8?B?ek5BekFpSTVtVHhodi9tWkhzbDdNNFpoeEhNOUlZSjBmNjFpMElXYkRlcWFR?=
 =?utf-8?B?emhMUmR1NUxGQVZyN1R6UFRpaXJ0QytGcW0zbGlGL21XamNyZDRmV0tyNVd5?=
 =?utf-8?Q?tW3RhdvCO0M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjZBSklDLzROL2ZqbkJWd25nU1J6SW1zczB6K2d1NWZrWmdGYzF5bFd4RitC?=
 =?utf-8?B?ZW1aTTVsQ1pqWVZnV2F1a3FtUFhPQm5CbDExWnorL0RXNkI2VG42TjB4dzZq?=
 =?utf-8?B?SDVCclNwajdDSC9GQ2tXLzBtRnpKTzF6b3NBZWF3SGVHWWxxc1YzNmR5Ylpj?=
 =?utf-8?B?SjJ4RDRFak1CRmJoOHg0eG5hQUtXRGlvVkk4a2tvY0JsNmxDRk43REpOSUF4?=
 =?utf-8?B?UXJ6UmFRM3hNakU1ai8zeTFQbWxmQ01nczBvY2NkSjI3MXNpT1lzVTZBc1RO?=
 =?utf-8?B?RUxnUWJLbG52enJkZnhrdmR2WndaTEIzMW5STlA1U2JCZC9BS3JjbmVzMXVP?=
 =?utf-8?B?SlZCelgxbG82OUtQN29HTm43c1dlbjNnOXJ6TW9Wd1VzMVBRMnJ0bUxLbldx?=
 =?utf-8?B?RkdxTSt4K2RYMjFoL1BRMVU5SUFuUk1GWHowbk1rc0sxRGdyMnpQRzR6WlMw?=
 =?utf-8?B?N3Q0Q0I0c2ZMZXhrdFlsektoYjRWNHVyVnExS21yanpIeVc0M1p5ZkpVT1NG?=
 =?utf-8?B?VC8wTjdQQ1hWdEs1Wk82L0lTWXA0WDdlT2M5UW0vUDJ1bnpDSThxM0FtbkQ3?=
 =?utf-8?B?REVMd2c3d0xycU9jczZOWVBDY1g4VlpISktQS2ZJYXFqNUlCUndPM05NcnQ3?=
 =?utf-8?B?NkNPaEt2ckZpZkhOV3JENHNUTkZiOGlHOUMrM09DK2NxUXJvb01wVnFDWG5M?=
 =?utf-8?B?WGF3bXc4Z1czeW8rQVRuSUUwd2ZrcjlEbENUR0wxUUcwTUpubWR6T2EvNEJZ?=
 =?utf-8?B?SEJJNkhZZklNU2RleSt0M0pBM1pDakNxOTJGTWVaL0gydURTMHgrdHJud25J?=
 =?utf-8?B?SjR0bVZpQlZQK0V5bUFrL3ZZTkp6blR5U2d0T1NTSlM5YWNLeC94Lzk2TS8v?=
 =?utf-8?B?aTBtT0dNOHE5SHNIbVJMNkpRNU9YcE9sa01wNDlkZUd4b0U0eXBSZWZ2Y2R2?=
 =?utf-8?B?VnBGMTdYbXhQWGZqYlFGNkk5MlEyb1pna1ZqZ25ycHIzRWp0T0tYTzdpQ2RB?=
 =?utf-8?B?UXhLSkJTaUhWYmlJVEJheTlKWGYxZkxrdXFFTlhtdHdTTFU5ZUZiRjhJd2pY?=
 =?utf-8?B?K3NaVXR0QVdEL0o3S2lFVHUzbTViNW5qSHRoOWNsWS9CN2ZGRUNVeVYrR3Yx?=
 =?utf-8?B?RkdsMjdLaHc5b0xUVmxzdk15NXZJUDc5M0RSS3hlN25qSm91SjhBZE1FL0FI?=
 =?utf-8?B?bzFVZkRacDhoUEI3QThSOGdVRDhVaGlUWVpocEFNeGtNODV3T0lPN0svM3c1?=
 =?utf-8?B?Y0VIVDFJZG9SZlRjOG85WDZ2SFVsTHM1dGt1Y29ON3BQUGZLUFd1cHZDTCs5?=
 =?utf-8?B?ekh2dHlSSjdsUHREREg0ZDI3Ym1jSFd2Z0hPYUxCcjJnQk9hYkhYMnZnQnpp?=
 =?utf-8?B?eGhDaTg0RVNDQzN0TGtETHdTV01VQTRIK0orcTJQUEZaWEJoSHVLbmN5QTBk?=
 =?utf-8?B?WjhLa3hKQWtVNE5Ib3p0dUdqbGovSGFrZTVTU2g0dU5Ick5lTmU5WXErTm51?=
 =?utf-8?B?RGZ6YTRFZGVkKzJER2w2SWdFRmgrSmxvbTljMEZhaTVFTjZJMlpOOGUvdHFS?=
 =?utf-8?B?V1lXeE02UlhQOHZVTGV5cUNOcy9vaUE5N3FIaHFjV2JrSDloS25DQk81UTdq?=
 =?utf-8?B?OG1DUG9JNzR1SWE2dGd2cERmVkVIWlY5R0JzWnpQVEluMEIvOVhkUUlieGgz?=
 =?utf-8?B?ZDBWSGN1b0ZkSU5QRVc2emVWV2RoWEZ2U2QvUG5ORDRsd1lhYnNBK1VPbmxK?=
 =?utf-8?B?UkVIVEt3ZU5jUXp5aWdlK2tVUHJ6RHVHK21VQWRWNjlMQXkrMm9vNVlnU0d3?=
 =?utf-8?B?WTRkTFV0bDRaY1A3YU1OYUVUOFlyTlZ3eW8wckV3cGhLYWp0QVBQaTNsYUhP?=
 =?utf-8?B?QmJ6Zi9Kc3JMQk9xb2N2K1I0ejlxeTV5VnFxT3orTXRnV05xdGxaWkxsVFBa?=
 =?utf-8?B?ZXdHeHpBMkpaenpzYkpmbTB4WGx5YzI4TFZuMDlVbnJ5S2trTHcrWWpmVUZQ?=
 =?utf-8?B?aUU5clVOb2tkcDlQQnhlU3R4ajNSaVJNcWE0MWRzcUM2ekxycDlkYTFzZzB3?=
 =?utf-8?B?OFhXamUzY2xlN042TEhCckhyQ056QlV1dGRVMTgzQWw1ckg5OERvZDVjNXFw?=
 =?utf-8?B?Z1dJOEtGMUM0NG1mamJocHNaVmtramd3Rk1hczQ5YUYzSnZEa0tRNWtNUlJO?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e24db0d-1e0a-4adc-a40e-08dd9d368e9f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 15:53:00.5163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VJ6g7UMwmMp21gdHYbSZJe+VFy+UhSvT4VHZl5dYZBLOpjgmPdulBkf3iSWuUpZzxnrajVf3uNBm2xvuw/vffmTiSu+mQBRVpa43f5Zq5xQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5084
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748361186; x=1779897186;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zwRZmlaYEUeAqXd07egHhP/lX8Lbis1OU8vJ7vf/3w4=;
 b=YJ8XWX5Msb6Z5v7RcaAGjW3c44u11YhyWfBm+d5BUyG9TlNY8B4iXM1C
 8AWYSlRwvUiO/feULQjtzPG1e/FKbq/F3ad4+oonUTh8+X0Gxm/4PW3cw
 6MjSeG21r0j2s4Ls7x7e5OViREZviVblDcuFoL0aeeKRL8dYHVF8qidUy
 LS+wiZrdN2ZayrsOVxzgYzO2rcDCkyG3n7vncLKPeunqYyN1cy6OsJufk
 VDPgTkie9/T/gQnF0jMVNO6QaSoXv1fQKMKQY+Ycnj8dkx6t46fL7uSea
 p5IPvWcFI5Avt8v7HMeD7U3XIu8ZHDcEnKK1pF2aA6wrIc+jd6ppVp7KJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YJ8XWX5M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: fix heap overflow in
 e1000_set_eeprom()
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



On 5/27/2025 1:56 AM, Mikael Wessel wrote:
> The ETHTOOL_SETEEPROM ioctl copies user data into a kmalloc'ed buffer
> without validating eeprom->len and eeprom->offset.  A CAP_NET_ADMIN
> user can overflow the heap and crash the kernel or gain code execution.
> 
> Validate length and offset before memcpy().
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Reported-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Cc: stable@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..98e541e39730 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -596,6 +596,9 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   	for (i = 0; i < last_word - first_word + 1; i++)
>   		le16_to_cpus(&eeprom_buff[i]);
>   
> +        if (eeprom->len > max_len ||
> +            eeprom->offset > max_len - eeprom->len)
> +                return -EINVAL;

This is going to cause 'eeprom_buff' to leak. You should use the goto 
out, however, seems like these checks can be moved up before the 
allocation is done. Also, indentation looks off.

Thanks,
Tony

>   	memcpy(ptr, bytes, eeprom->len);
>   
>   	for (i = 0; i < last_word - first_word + 1; i++)

