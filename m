Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80995AEF20D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 10:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9ED2C84A70;
	Tue,  1 Jul 2025 08:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ExqkYer1efT2; Tue,  1 Jul 2025 08:58:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06AE884A7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751360336;
	bh=PZ3qD78IXRHM8BIsGBo/FgKaFowvpT/ZKyDyRvWwg7k=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J6A+Ou1ePRRH2QYEmBAMbxoMqKqUfB7iP8lrecE7olBqUZrEpga8gzVBlJlEABEjy
	 4Cps2AeK9IbM0kaTWZlxLqB27EOtV/q7orrTeyPF6dvAKLy0PDGlt2jG9UkuNmQ71u
	 qU5Pmt9uWUvX7z0QwATOSKVA9xCXv3Vh5VG3FCpJdpLMUvU8J+QD2mLs7dmhm4gQgK
	 tFeUuTvxDJFfacbtmt2hgnt155vp0TrDuaDWu1MuQYt8DqLsh7yBvGPhxEok1fThFF
	 TiKqNOss/TJbY+405SMDqW2weF18NkNYW8e19P6iGyaGkGxXEinvO+NQcLjoL5qo07
	 AH7D2ByPIaHgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06AE884A7A;
	Tue,  1 Jul 2025 08:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6281BDF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 08:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4847B6088C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 08:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEDOo99xX1-I for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 08:58:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D85460824
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D85460824
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D85460824
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 08:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: 0u2JReUdQQGeM+vC9x7WfA==
X-CSE-MsgGUID: zrH2+qpjRv+Ab8DE7RhHog==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="53739213"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53739213"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 01:58:40 -0700
X-CSE-ConnectionGUID: sSk5pHy0T8Ck+665fAeQyw==
X-CSE-MsgGUID: UE7fukmwRAaNpFGYIiKb1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="153325505"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 01:58:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 01:58:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 01:58:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.86)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 01:58:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QFGYpcEGRwUgas+MdPHyeHG+nEzrl2b7ZyiX93vq1yxgmzWVQrM402hai2mFQ4t4wfFS5jLin7UpgljhSMnbfYg0wvbtjaXJGJfmyH1qLWvG1XDX5xzObkcQkGOYQmxEEiXcLS83QQxP4reIYwDKIzWPq2VsYYuc4fHdTCiiXkFdPr15uTQfKr5412f9JoTwndIiEEQtsgFEKJXGf8oTo9Y97D0JAsL/f4drj0v+IJpTvkYbjxx32ceNvxXTl3FroJ+86dvvraBK2JbSGOE47mb4V3i7Tlp+KQsFLACs0MTGxuH7U1oYM83VCKR848DGno5bfQRtJrb04mDFwOwSEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZ3qD78IXRHM8BIsGBo/FgKaFowvpT/ZKyDyRvWwg7k=;
 b=gWQKJov9Bl9AwAX+s0HpPl0sSCZ8uxFd43H27vIGiXG0t60KJmgBSJoJ2WKpESmyok42K1gijVyzCphcuaBCwVnnV+5PW401dxakIvblBDCXLtu0hePn3NPlq2x9gx69zCJoD7P4Gc19Wj8AEqm5YQwCzORQr3UUyVO63o8xNuIpmRYre+rjTFWcW3UtEKnZPzdQRnxKjvtTTqLIfVGNQBo0pPEfeIn8HTfky1fW8CzZfDUsFG7SC9KUceijCDiNu5Bm6pkDXdbmuyiWsP6Kr/H2aXqc3NrPwrXlJzlO5wL1XbOZMdN2bwtJ4niGyU/AKS+Whr6lyVzCb/9Lkd9EBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by IA3PR11MB9063.namprd11.prod.outlook.com
 (2603:10b6:208:57d::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Tue, 1 Jul
 2025 08:58:36 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983%7]) with mapi id 15.20.8857.026; Tue, 1 Jul 2025
 08:58:36 +0000
To: Simon Horman <horms@kernel.org>, Jacek Kowalski <jacek@jacekk.info>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vlad URSU
 <vlad@ursu.me>, <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
 <28347e4f-c6a7-4194-8a80-34508891c8ec@jacekk.info>
 <20250630170034.GM41770@horms.kernel.org>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <5e880e1c-2ee0-22e7-8bcf-3ab35280db47@intel.com>
Date: Tue, 1 Jul 2025 11:58:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
In-Reply-To: <20250630170034.GM41770@horms.kernel.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::20) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: e54404d7-6ecd-4443-ea7c-08ddb87d7703
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amRTWUgwOWkwUk9ISmMwU3JxRFBwYWJvUEoxTkF0eDl2Qk1kMTE1cUNKZXY1?=
 =?utf-8?B?cjNEUHF3TmdHSmVoTkNPdTVoVTQxOWJTdnl3VmRGblkyeHgvTUtyRjFnMW9N?=
 =?utf-8?B?c0pGelN2dU9NdWdyQWErU3BKanBwd0dKa1hKanNKTVJ5b2VrRnFINHRCajZU?=
 =?utf-8?B?c3I2NnZJTXFxaWt2U3ozU045UlR2RzdDZFZ0VnJSZkFHREZ1TDdFbDFLdVpw?=
 =?utf-8?B?UENzL1lHVnBmUmZnUFRkSUFUUnViZ2JtaG9tL01VTEdqdFJ4dVk1Ni82WFI0?=
 =?utf-8?B?dDhJUzE4NkxvVmpnWjJMRE5HdTUzM3ZTdm1HT083enpRSklhVXhvdTBqMjN5?=
 =?utf-8?B?UGRCeUNXUmhWZTBHWUVydFJZZ1orVmxVSlVOSFRhdmZtbWg4ZnJ4R3ZHMHc1?=
 =?utf-8?B?dEdPMFRxbVIxaXcvaVdRdFdlUFp1QjJIM0l6a3cwSU0zMzI4cjZraW5sQmRH?=
 =?utf-8?B?TEFzN05HdWoyMXI1RnNTOEtHWjZ1WDNBamdWVGY3clJWT2ZBeXh2U0tmYmhO?=
 =?utf-8?B?a0F0eDFyd1BkbCs0QllZcE1ESFJzZGZ4M2RuZ0NJV01nTUwvK2s2OC93ZDRu?=
 =?utf-8?B?Z0tlL2V2SW1rRG44ZGEwQVBTYmh5ZDZhbFc3aldLdGl3UlkvRFJLdVdvNFRX?=
 =?utf-8?B?WXozNllHV3p0cldqaStTS0hkT0NoQ0JQNkdJakticXkxdENGTmROV2RsRWNY?=
 =?utf-8?B?WmhuNVZIZEhzS3QyZU1YZFFKQjZNbElQNXN3UkxOUXpScDZ4OFhRK2g2WTJt?=
 =?utf-8?B?MXV3eWYrMUs0MVJ0aUt5MUhhaVk0SjlzSVB1OXVScmdIZmxYN0UyNW5ZTlM0?=
 =?utf-8?B?ZGtzK01ERXlXMnVvclJJM2RFQ3NRcVJoV0RnYUJUOGpOL3hJR3pxVUhpeFN3?=
 =?utf-8?B?anhxbzc0VlA4UTlHRU5uNlRnQWxYYUllKzRZcElqTVM4aWora3RmRVM4ditk?=
 =?utf-8?B?VURORThUVVovMFo2ckFaTUFDd3ZMVFlETFFDRTdIelRZUU9CeTA0VUJoRWhM?=
 =?utf-8?B?dmRPZTBobkNseEpGdldlS0RzK044b011RWRNemttTmJnRVJBSmpEVk5YeVB2?=
 =?utf-8?B?U09MbnhLb3hVVldwVDBhUE55cE1jQ1FUTVpjYm5wdGR6ZkoxTlQ5aEc4L3JS?=
 =?utf-8?B?aDc2a1E2MmRzeFNpcVNTOUJobGtZOExWdERhbGtDVGdGdDRLOGFoazBnd2t5?=
 =?utf-8?B?V0VMV0VDY3VOUXB0M3MzcGFoM0l3UHlGeTRlc0xmalNUbmNneGs4TXhnQWs0?=
 =?utf-8?B?eElxT1EwQlplanJFMTFnYjVmeEp5K0FwMHpyYjd3cUFQSmRUQkE5YVkwNmdt?=
 =?utf-8?B?OHFmam53Vmg1Smx4SkpGem95Vm90M3hxZjVjVHFjRmw3dkp5bWdDTDZwZDN6?=
 =?utf-8?B?WDU4Ti9pL1ptYlI5UG9PSk5lVHdZbGxIUENIMTdWMEpaSFFYNlZwdjgrVzl5?=
 =?utf-8?B?RHdkVkwranlyRXhRTFBHQ0xyVUt1WTR3aG13M0F5bG1zSFNzbllNYjBad0Ns?=
 =?utf-8?B?Wnp6aWtPTHhaZ0I0Q1VpRmpxbEl3U0NwOHhhd2IzcGJ2djgyNjBPYkpWRC9E?=
 =?utf-8?B?RHpZQ09kRjJMbStXNVIwS0t3RFhMdDZvak9JaUFOK3VMQnEyS0hEb1VxaVdn?=
 =?utf-8?B?SXpXOXhBU094MXhWM1B0cmpqODNuYmprNWdoRkFINlVkU2grQllLc2lIRVNz?=
 =?utf-8?B?TFQzaVBIQWVvWmhFb0l1RzcyeXl6ZXVmeTA2dGVaK2NLSUlKYnliRXFtMVJi?=
 =?utf-8?B?MXVvVHVzQ1VWVlRNdkpXaDZLMDNFUHpTQmMxL0hEZk5OMkZ6WCt0eDNYeHhy?=
 =?utf-8?B?N0hyK0dnUE83MnJsNDd3T0d1cDFWSnRDUFRWSWlmcTBpc1E5cStuVmxHRVZS?=
 =?utf-8?B?RklkSjBGQ1VJTFkyQmt5WTZVQWpGeDZMaDUwM0JjL3hzMk5kcWdXSExDOWlh?=
 =?utf-8?Q?Yl2ZNqrSzKg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDUzeUNSMXZ2ZUYrc0Vvd3dXbTNaeUY5RDVJczBMYTcxdXUxMzNabWtIaVRx?=
 =?utf-8?B?U0FwZWJRN2FFNVVHcEsvNzR2U1FRUjgza0pQRyt5ZXVTeG1vdFBFTUZQVHFJ?=
 =?utf-8?B?WmszYU1FRjNoZ0wxY3FKVzB3aEwrMkhxemVqMWVDMFFWVDhkSE5rdXlhRko0?=
 =?utf-8?B?YkJtYWlSY3F2Q0U1SThkNllxRUFpejBGaHlSZEdBR1hKVnUrRUUxZ2xqTDlK?=
 =?utf-8?B?bXlxaTNhcTYrM1AxVzVxZWdhc1A4Sy9pSXlXMkRlU0RZTDcrWjFnZFNOc1Iy?=
 =?utf-8?B?WDBPN05LbWJRN2Y4eVhiWS8vTGxWN3ZPRWZhUitKcGlOZlBqQjloTzBPbE5q?=
 =?utf-8?B?QWdoSHFIQS9WcTBXVnNNRTliYnNxMEZHN1VSVDRKZUZpZ1hqMUx1eGlRUU1W?=
 =?utf-8?B?WEE5L3FUU2pSaXNsaGtIMVdRejVwdTdjTFhESldlZjlDalJFSDZhVk1Gd3JV?=
 =?utf-8?B?dVdBQkpyV3VXOExEWmZUV3dzVjlvVzB0WDBLbFUxZVlLNUIxNVBHYjY0SDFw?=
 =?utf-8?B?c25BeGI0aWJMbXE2Y2Z3Z0JTQzUyUzdPTEJDeXVuSFFjYVlnUlEwd1cwT2Z0?=
 =?utf-8?B?OWxIOGhML3ZDbHIrN2w4YTFVS2pMUTB4aXNOK28rNGhIbUtYaG5EQUJ1bGh4?=
 =?utf-8?B?dEtZQzF1ZkVOMmFnL3hJRXNNc2NJakVvQVFoTzBnOWE4czlRRmZMT3M3SGxl?=
 =?utf-8?B?NW81TnYrTjRkUUZFS2JxeDBmdW5JdlRGTlU3VDVHOVluaW8zbHVlTTgvRlhi?=
 =?utf-8?B?U1JHQWZ3eDlDdnJUNEpmTmxxQjdYOW9OY1JWeHlVUWdqbUx4ZTZpOW5xNmt3?=
 =?utf-8?B?b3lkMGNXRURsNDc2eEt1V0daRnk5LzJ4TFVReXNmYkQ5V0RvNnd2OSs3aUdx?=
 =?utf-8?B?eWtWTUNESmV1NzRJVERUNkpFZmw3WlZRdlJVWUVCRmVjU0gwM1FiWWJiZWRP?=
 =?utf-8?B?WU5DSUVWUzZBbC9XNHFlaGM4aUY3cy95L29zTWRML0tuY1k5WEpTYWdaK25m?=
 =?utf-8?B?cm9oYjNvMStjWVRYSVFOamsyWVJETUloWFkramxMbUwzRGNjc0pHYS9oSWJx?=
 =?utf-8?B?TGpPU0FETG1IVk9HcGNENUczenEzYm9FMjk4NHhaYVJmUlllSlQ1WDdMWHc3?=
 =?utf-8?B?elNYTzc4QlhhWjZEVTlWOUhXNWhvd01hOUNtQlpCQjdBVVR2aDdhRm9rN0d4?=
 =?utf-8?B?WUtCOXdRYjR4Sys2eDNjK2ZwODlwTjdnK1RuSXZWZzA4ckFxUHBCSEEvTnZ3?=
 =?utf-8?B?SHJ2UzdZUHEzcWUraTdGK0kyZ1V3TlVEczQySUsycGF2ZUNqOTB3MUtqU2dy?=
 =?utf-8?B?cTA4d3g2RTllZkQySDI3M0lWK2FlRzZFVFh4TDhBYkpPaTh4RkRsSjlTcUti?=
 =?utf-8?B?T2dFb3FMdkhjZlNlZXpwSmVUSXBwVmgvR0NrWWY0V1lwaDdRUHl3N3lNc1Bx?=
 =?utf-8?B?cnBkRHhhVnhMMW5VVnhBeVFtU3FudGxra0RxU2lwNFpaUW40RTIwYkFoU1pt?=
 =?utf-8?B?aXQ4dXdKdzJrNWQrdlIwbTZ3eHFvU1Nzb3JQU21NSjFJVmJMdWxRMmJVU2dB?=
 =?utf-8?B?NmJlZHFWdEhRZjRLQ1gxWENqcTlpRG5hWWY1enhhaUkyb0ZXMnV4SE4zWDFT?=
 =?utf-8?B?amsvYm01VHo0bTdvL3BBYTE5bHpmR3NGdXV3eU5Vcm0ra2IwakFuR01MQ0RQ?=
 =?utf-8?B?OW1jaEZIUVhuK0ljNHJ2ZmNQbE1LeFVrTm56RzFSWDB0UU1LNy9MaXZ1MEJV?=
 =?utf-8?B?Z2ZMWGRFYnVvaDQvdE9CUzU4VThBT0ZDTXpyb3hwcit1VXlqVVZQTm9IeVZI?=
 =?utf-8?B?OXBqbzQ5QTVNZGdGcmRDZ3dKWndDd2FOYy9tTWRyREV0ZXIzMUsvUktOSjdY?=
 =?utf-8?B?dWxrM1lDcDByZWk1M3JheFFPaTF4aVdtVzlvVHVGZ1IySGppMHhSUkx4aVdv?=
 =?utf-8?B?TXRBVkk2SFRZTFNWaThQTFpBTkJaekFHZUFBMnltcXRXYWozeEVnWlRsZVJ5?=
 =?utf-8?B?Z2NHM0VKeWhKMG5QTUlYSjJmQ25BMDJydDRRODBBMTExem1jUU9mTzR0c3M0?=
 =?utf-8?B?OHA1ODFUanBjQlFjVkhwZDBxMnRNdGVEZjYzSHQ4SUVVVDhFVGo2OTFXcjhx?=
 =?utf-8?B?cmxrbzFwSzgraHREWnJRYUdmLzhKNCtOc1hHSXdBTkpMWlZocm5UWElBVGFD?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e54404d7-6ecd-4443-ea7c-08ddb87d7703
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2025 08:58:36.6299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dQzB0kPICinmR3Ji0MliWYpukeaXjb0oI7MqJqylh/X1sIdAw933jCJeLvBNLUjJC4ytc1r2NBDWJrrTxE83AkcE/h3uu0OMdPc4LBAP2fI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751360332; x=1782896332;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IJpMjNTBI3yCWauv6qXtffJEv1AWGBXynuacexrb+0o=;
 b=nkktod97/0x0pVMwTPobodNHWiJPqlgEQXuhpbMuYXbjgw9mxVecHnFb
 4Avc1mB8qGlhRVUQ/j2ZeCsVrDq7gyHn98s3Vm+mOZI0/zP4v0x5/Zceo
 SIvmPXTFtThXykEWzp3DirOIGp/Ri7TDBlZd7OgQ+JEppr/tevYg4PThP
 iQYkcjI8TSpqvXaUaVEdt+Itdez/GQwL+LRdO9BWFCZa4taopIDE1hHut
 4BfIHu7AIgc9VUlbIqaiv/0aKX+XysCpgnL8RAXGKIGGhsfGNUPTy/tZo
 0emnxZ9zs7J7qqb0UhrpDmIBKcXsURXEC1cRFkQClsqoXhCQdKysqskKA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nkktod97
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 2/2] e1000e: ignore uninitialized
 checksum word on tgp
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

On 6/30/2025 8:00 PM, Simon Horman wrote:
> On Mon, Jun 30, 2025 at 10:35:00AM +0200, Jacek Kowalski wrote:
>> As described by Vitaly Lifshits:
>>
>>> Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
>>> driver cannot perform checksum validation and correction. This means
>>> that all NVM images must leave the factory with correct checksum and
>>> checksum valid bit set.
>>
>> Unfortunately some systems have left the factory with an uninitialized
>> value of 0xFFFF at register address 0x3F (checksum word location).
>> So on Tiger Lake platform we ignore the computed checksum when such
>> condition is encountered.
>>
>> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
>> Tested-by: Vlad URSU <vlad@ursu.me>
>> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
>> Cc: stable@vger.kernel.org
> 
> Thanks for the update.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 


Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
