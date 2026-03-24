Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEeZGqnHwmmIlgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 18:19:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC61319E82
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 18:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 477CA41090;
	Tue, 24 Mar 2026 17:19:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmMUurKVe_iA; Tue, 24 Mar 2026 17:19:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC3A74108C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774372774;
	bh=P2dwcznQGpeDfsqpQFIz2SCZoTKPTqI/gxtSiVjPPH4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HoxGbBfip2aXi5FP4ctI8mnTWLenSP7WbOJEm4IuJ0VwTEAArFHCVqMBjtpscB9bz
	 M/a6PJ9VbEyS4eSCc5fcgIw9JVIpTZ4WJCoXho3Ty3ry9dWl8j99/hrU8IMqDnguey
	 LgZZyuUqKVAo4/lM0LOkOZjpKkLIhOZE41JOtEhgsUNjF/qByiy6OBe0IH3Bx8tODR
	 CdauMgJbHnlq9OwuN9vijnQCrO70Wl0OezfD8N/GKAkvGZZ0zFhOWFMpBzn8L7qKq+
	 I0eGIUTFR4TVRRzd7rtEZrcILRskrL4RlRZTpvcMDyGdOiEDZ5vjXSUF3ujh+AHu4M
	 efCTrMgD60SVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC3A74108C;
	Tue, 24 Mar 2026 17:19:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E7A8353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 443C8838AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:19:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cuKmPPZ2tEcu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 17:19:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 599E983896
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 599E983896
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 599E983896
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:19:32 +0000 (UTC)
X-CSE-ConnectionGUID: to8D2zELQWeieYXPgI7fDQ==
X-CSE-MsgGUID: acz8yptwQtuUL5+uZarvVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100846450"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="100846450"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 10:19:32 -0700
X-CSE-ConnectionGUID: dYEIJUwUQkCsI/8WUhsIqg==
X-CSE-MsgGUID: cTLQvBgSTfyti21G/VIMAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="247476379"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 10:19:32 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 10:19:31 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 10:19:31 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 10:19:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QRTTPrt4f5Ze8/cIyf+Juoxh8PoIyEKtf+ls6WiS2fzjW7iNEX6kSPSG7iRU4D96wDmkxqGrFbvk2xz3maULXc+IkhOF0M0bddu3ayzQCenwXngLTGcTJFm4hMsWtMSBQK06ITdIbCFqWld/hk93utMBSx96elhwlY+zXDlOy6v9obMhthbPGK93UOFcYV7uNv1GEj+XL5RZ09CNEP5MU8V0EFMeLkgpBbpfN7EW7y2GITJRe+H6sePUqXYVTut4CWdBoMapcnbozfH94peqqvPJQhsp85MmXEuS2akJx7FfFWtMX6u27+mRL38Ha57rOdvcms3RUYbbllMmBTToVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P2dwcznQGpeDfsqpQFIz2SCZoTKPTqI/gxtSiVjPPH4=;
 b=UAO7DTns5HtUKn9DgXw5BcspIShEE5VhnLEJvw44Dcq+TsJ4BNk8LBKFdRxHiM4odkAJMK49+uSFyoApQTye4Zmj9qCtbheH7kYLtasN5z26m8SxF5aGN9QDw5VgoMzyGq0aBbIbFkNcqSarEiVnz2SEyIlQEh837ul74k0g0HDe9n6/6ORGghn0SDMKPKKLtSxZTRLeL/9DREZh1D7JNWymVvpMoNUZhnfQWRJA66WL1Y6t1ipQaOC/KKCRWuckEXTYiDnqnFzFy0XN1fLccZgYhfCJaaf077ryKODoWrBuhEw3ZrqHxkNBHaypUMq0H06XsHFcJci/lVPExuk63w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH7PR11MB8009.namprd11.prod.outlook.com (2603:10b6:510:248::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 17:19:27 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 17:19:26 +0000
Message-ID: <7c8f8642-6d93-42c2-9342-b38a6970d7b5@intel.com>
Date: Tue, 24 Mar 2026 10:19:24 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Ramaseuski <jramaseu@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <przemyslaw.korba@intel.com>
References: <20260310150557.1138437-1-jramaseu@redhat.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260310150557.1138437-1-jramaseu@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0334.namprd04.prod.outlook.com
 (2603:10b6:303:8a::9) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH7PR11MB8009:EE_
X-MS-Office365-Filtering-Correlation-Id: 094bc6e3-10a5-4f83-1671-08de89c9804f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 0/MWWlCFv7//JXgGhlYXRgwEjQ0vkEzPH9029GAcOUSwF8H82arNSzJny4NB/YGmSv8X3rTrOhLRdnv6C/xOvOqo5FZnZ8cQMZidPdXG2E8HXER5sd99fSYAfIrB63w60zqWo4NRa3LvRHnYCoCkJwzE93DtLzCXY1hVOWTJryFvZh1Qqldy1xpNRhe2qF/B3sT7NyPLSYoMtjvlf0+4WgS4rwcnvAg6hwd1CnihP9wBqRpG0pNggcjq6kiMVecbcIRrli6jUy/2uMAy0Rwhw4xvLmYLSzCvUUMJIV3UKb1JsSYa0j4aMwEwUL083mGn+FNTS/4azI+t+3S39XwwY/HSdaaCHpDrSKJPMHiggVx6zjC8nLKiGn2ut8HND96rEZqx/eAUFGHTx9ehcO+cWOGW1gYFR1fjL21TTFB9iyVEWobd9vCjkTQKbAd35SqVaInY6Sp6VI6BUWGMv4R6XLfWYUO408mL3gbNgbODA4wej+iA/R7Q7TBe1cWKFxyIaWfcqgtNaxCMkiuR4qapA9m/W8HLVopdG1tns2VWFjgiQ/tS/vO3wszlzq+sbT2yKFDYTg1ZsEIxBR766ZLZ9snVK/n09cNokvPklJYINvEeVQVFKFcHYbkpR7A2lmKhnuTGXfMuGqGxYoz1QhDy0jM2NQc/ZaHcsOx2bLNk1uFS5xXyxClG/MWA3mytSCaRho+Dx3mLP2ZT8krPkK9NQhpR2zLqMLRFaaGzcG3XR+g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnp0dmZHRzFMUGFTaE5pODEyK2dpcHh6NmV2Qk9lRE9HOStaV2U3eTR1Mnc3?=
 =?utf-8?B?eGlKSmNUTVowUkZvczFaYzBzejVsMnFFcWlRSnJCcU04MzB5akVQWWVpZ3Nj?=
 =?utf-8?B?Nlo0eFQzTnBhUDNFRXoxR2RIcEVVNFZWTFNjSHc1RTZPaEgvS3NVOEEraGFh?=
 =?utf-8?B?RnBqOFJQQzRieHY4aHhDaGoweEJSZ1YvODE3MjFMWkgwWGRTNGM4ZjFxMHQ4?=
 =?utf-8?B?VldTRE1wdVltS1RMSStvNzdrRmg3MWlSbnJjaVg1c01QTThvanVSWWZoTnFm?=
 =?utf-8?B?NFpUOEFSZkFIcmQzM09nbXBia3JrR25MdTNuVmJJZ0xwd000SGI0cHpRN0ti?=
 =?utf-8?B?d2t3V1pXcHZNZ0k0TXR5NEVJSEQwYWJ4Zi9DSGdDL3lNQVJZSnZCWFp5L1ZO?=
 =?utf-8?B?azdXT21ZemNTOHg5dDZtSXF2ZEo0eFp4cTZ3WjFiVWgxNUVKR3hoZnE4TlQz?=
 =?utf-8?B?aXNWR2xTYzliSnQ2UDZvUlc1L2hHLzVZbkxUMDVqOTh2MEtRYW9kRVptYVVt?=
 =?utf-8?B?Y1U3bEpGcHVGQmFPVXI2UGh5ekVEbVBRcFJGd3NXUU1OVjQzMXdzbXNJcjJx?=
 =?utf-8?B?MTNlYnJSQ29pL1RPSXQrTVJEMkFCVExHc1ZPM2hLK1ROSm9YV0RyK1dOU2Iy?=
 =?utf-8?B?aE5jbEpFOEpmNWxSd3dmNmlyWmg5WlpWLy9ncmh5bTJNb09HdGY3K2RWRTVB?=
 =?utf-8?B?MWc3L3JFZk84QWw5dzFHVTNNZHB2bTB0bGdlZm4rRE1vTCswb0xXa254MlVp?=
 =?utf-8?B?czVvVVVMb2pqVjJ6aFRrUHlHTEpPaDhJanJnV1RsZTRyQXNvTDFQTC81VnJT?=
 =?utf-8?B?S0pmYVBkcmI0MlM0QmpjTGJYbVFZMDVqekpNUDlQYnAwVlpUWDV4VEN2dTdP?=
 =?utf-8?B?SlNNWjNCL1Z6TVU1NEJoU1JidGFHb3VhZlR5UXo4bXpHU04zeDBtYkV6S2dM?=
 =?utf-8?B?SG9OQUtjQjAvdTZiQnFDN1BHWTI2eDdtSG82RDNWd1UraXROSjQvblUzOW5w?=
 =?utf-8?B?R0xKK2wvLzNTWlJ1UDhTUHE4WlFMV1VySEdkZmlES0xqeldqYXlCSmhTdnZX?=
 =?utf-8?B?T2dUZFFmNEQ0VFdlVCsyUGY2U3VKTTJMTnBZZkN4aW5acUNQYlJ5M0dDcHhU?=
 =?utf-8?B?bnBMNy9MUGJIRXJsWlVNVlJicm96bExvWlVEQVk2N3hXN1EyRnpEc3VWaHRp?=
 =?utf-8?B?U2ZCdkYzUUNXcSs2bFBsYS9SMVpPa1U5K0laenRHTXYyQ0lMVnNpOW4yVFhP?=
 =?utf-8?B?QnFhWitDUnZDdVZ3TEViMlZmdzZ6Ym91R0dLMDNSMnptTGkzQXlmOEFIOXB0?=
 =?utf-8?B?VENyeUVMUFZJMXNkQkt4Ynd3cC9FVlAvdWFaaU1Wa0hTQkY2MkEvK0MwQ2xJ?=
 =?utf-8?B?c1RQK2RRRTE3RTRDTVJkMEJMUTFlUStRNDFuYVhaYk9LUU4rbjA0SXViUEJL?=
 =?utf-8?B?NlhFTThzWERvUDdQaW93N2F2S1VGQjI4Lzc5ZzYvS3BVQTF0ZTB1V09mM0Vr?=
 =?utf-8?B?NTUwQ3J3dlJnL3Ryd0h3QmMxbXcyRy9yK2lXT29aKy9kTFNyR0FXbWhmbkkr?=
 =?utf-8?B?R3FmazJwVFhNd1ZqYjZBb1BMYU9YSmR4Z0xYdWVRSWF4VThKZFBNZFFWZzU5?=
 =?utf-8?B?NzRmeThMRDFNU2JGN1JtZ0cwWnV1RDY5ZEcwdlVoand4dHVCb3BRMWhFbHdn?=
 =?utf-8?B?MzB3QnplOHkxcll3TTJVUlY5WWo5WldVbVVIYnVTVXFPTWlocG5LUkhZbkRQ?=
 =?utf-8?B?ZlBYc1BITVZaUU41L1BVWmNhV2ZUS0pNaW9sb2pYb3l4c21mT2srSUNzRE9P?=
 =?utf-8?B?UktRZUYzSFdBamNWVzNLdmxaUTFTdUx6Smw4eDdSK0ptMEd6Q1BHOGhXLzY2?=
 =?utf-8?B?RExFM1F3R2FkTmh4K3QwVHMrT2ZuQkxiV3Z1N2RaNzA1QmtHMGo2cm9BR3lu?=
 =?utf-8?B?c2t2dFNiQXByU3ZuQW5mVVhVQS9VOHBsVEgyNDVoZndVSlh6K3ZNaWVKV1Ri?=
 =?utf-8?B?d21VYUdMN1h6TkdKQXZncmxyRG1maGJCV1I3MlpWeEdWMTZMZ1d6YmlvaHJU?=
 =?utf-8?B?TzNZNnJUU01MS2l5SWlEbHlDeUZUdkdwMTNHYXM3MkZEQWFLbFlzMStha05u?=
 =?utf-8?B?UmZuQTZlMmd3SzVmL0JjeTY1OW5QN1U2aFY4UWVPd1RLUFZoWjk5a2EvV0Nj?=
 =?utf-8?B?SGZGNVlHenJjZXVRekJBMmc1NDNUNVZYYm5Gcy8zRm1ESS9SdWMwREtvT29h?=
 =?utf-8?B?Nzk1bUxSMGRNNGxFQ0ZSRk1YVGNpRVRuZGpZMmdha0tsQ3JWZldrbm9rdlF1?=
 =?utf-8?B?eVZVVEJmZ01JSFFDWEtvbUpFKy9ralVQM2ZpSTJvQ1RXdWtJeERHT3Brd0Fy?=
 =?utf-8?Q?4IEUD25RIISsacRw=3D?=
X-Exchange-RoutingPolicyChecked: T7Pc54S8fsodjan3Q4tEgSdNCGK8UU11v3bauKz7g3+I2Ggta/Ny7wejiNBt8zpzxeRSJqjOrxwJmkZgSI0r4aVdkcQIGxdT/wDsAf1f7mI0UA7S9i66czTFokjniCTnN8jYIl0QW4qJ8bDr9yE4bN6H3tfbobgTQ8J8YzC/EHHjH9r2N5z9HPz/LwMQV0Q5tD5q6crn6e5loQG89f4YkoImV9fEZ5kiHjMU7AnEniTgea7F4uQ/jLXxh6agKB/PNcy3CbmLGqwU/M7sLtqBdpGvRzYZv6Rch6ySZOrnzeXzOpILmQIi5q6LmtJRtYjs0kKYWsXZQ/PlvNTcE3qCTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 094bc6e3-10a5-4f83-1671-08de89c9804f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 17:19:26.9301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NOyCVCwCErO7YPLajcwBwgJvbA50fwKLHmL6nQ5/+re7eDNkKd1V65j66r8O5GFglVvkcOv1h7P1+HdfGvtDrUcgd3PkRVF2noYHkr5+VzY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8009
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774372772; x=1805908772;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L+hw2MuF9bJm7pyB8Ixwade7/eLU82758RWFdPEydbQ=;
 b=mXPf+ygWY52fNipAp59HvpLG4pRHLYbDmZKf15WyRTIFBmZ40ymj3kGl
 P47g5qYRgEJa3jhtpDIr3FNJ6C6pLhq+P8ztkKAlNHOhUMxSw5+/nHBNG
 hB9WPE+/FPM/k2lLIuyiFxNMXKpEOCZbf3ZFeCZe6cCcyYHIYsC0gBolz
 PZX+mg7rg6J08riCGzvB6U+/n4HYJ9gMRcye407ncazPqj87BPkDBxGck
 XT4yfxESbHskVYphy6O6m3ZjrwAO+EXUI347QgYwtB2RS4uSh8rQGBrab
 nRyQLm4GgsNZCHyXN6ktxsep/MHKONMnISuVotB9Sbm6Y8LmUq5BDdYDR
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mXPf+ygW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: enable
 NETIF_F_HW_CSUM for GSO packets
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jramaseu@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:przemyslaw.korba@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: BEC61319E82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/10/2026 8:05 AM, Jakub Ramaseuski wrote:
> IPv4 over IPv6 GRE currently fails on E810 with skb_warn_bad_offload,
> while IPv6 over IPv6 GRE falls back to software segmentation.
> This happens because the kernel's GSO engine requires the generic HW_CSUM
> flag to trust the hardware with complex encapsulation offloads.
> 
> Add NETIF_F_HW_CSUM to the device's csumo_features to satisfy the network
> stack and unlock full hardware segmentation for GRE tunnels.
> To prevent checksum corruption on standard traffic, evaluate the packet
> in ice_features_check() and dynamically clear the NETIF_F_HW_CSUM bit
> if it is not a GSO frame. This forces the driver to fall back to safe,
> protocol-specific checksum features for non-GSO packets
> while preserving the generic offload for tunnels.
> 
> Steps to reproduce:
> 
> Server Side (Receiver):
> ```
>    #!/bin/bash
>    DEV="enp65s0f0np0"
> 
>    # 1. Configure underlay device
>    ip addr add 2011::11/64 dev $DEV
>    ip addr add 192.168.42.11/24 dev $DEV
>    ip link set $DEV up
> 
>    # 2. Create and configure IPv6 GRE tunnel
>    ip link add gre1 type ip6gre local 2011::11 remote 2011::12 dev $DEV
>    ip addr add 2023::11/64 dev gre1
>    ip addr add 192.168.44.11/24 dev gre1
>    ip link set gre1 up
> 
>    iperf3 -s
> ```
> 
> Client Side (Sender):
> ```
>    #!/bin/bash
>    DEV="enp65s0f0np0"
> 
>    # 1. Configure underlay device
>    ip addr add 2011::12/64 dev $DEV
>    ip addr add 192.168.42.12/24 dev $DEV
>    ip link set $DEV up
> 
>    # 2. Create and configure IPv6 GRE tunnel
>    ip link add gre1 type ip6gre local 2011::12 remote 2011::11 dev $DEV
>    ip addr add 2023::12/64 dev gre1
>    ip addr add 192.168.44.12/24 dev gre1
>    ip link set gre1 up
> 
>    # 3. Execute Tests
>    iperf3 -c 192.168.44.11 -t 20   # IPv4 over IPv6 GRE (Triggers bad_offload)
>    iperf3 -c 2023::11 -t 20        # IPv6 over IPv6 GRE (Triggers SW fallback)
>    iperf3 -c 192.168.42.11 -t 20   # Native IPv4 Baseline
>    iperf3 -c 2011::11 -t 20        # Native IPv6 Baseline
> ```
> 
> Signed-off-by: Jakub Ramaseuski <jramaseu@redhat.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e7308e381e2f..9b4ad03e1a32 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3565,6 +3565,7 @@ void ice_set_netdev_features(struct net_device *netdev)

Hi Jakub,

Responding here as this has the code. I'm getting some clarifications on 
things internally which is what I'm waiting for. There's a couple of 
concerns here.

First, only E830 supports NETIF_F_HW_CSUM so advertising it for all 
hardware wouldn't seem appropriate.

>   	csumo_features = NETIF_F_RXCSUM	  |
>   			 NETIF_F_IP_CSUM  |
> +			 NETIF_F_HW_CSUM  |
>   			 NETIF_F_SCTP_CRC |
>   			 NETIF_F_IPV6_CSUM;
>   
> @@ -9789,6 +9790,14 @@ ice_features_check(struct sk_buff *skb,
>   	if (skb->ip_summed != CHECKSUM_PARTIAL)
>   		return features;
>   
> +	/* Hardware requires strictly-typed Tx descriptors for non-GSO frames.
> +	 * Leaving generic NETIF_F_HW_CSUM enabled corrupts checksums,
> +	 * causing TCP drops. We strip it here to force safe,
> +	 * protocol-specific IPv4/IPv6 offloads instead.
> +	 */
> +	if (!gso)
> +		features &= ~NETIF_F_HW_CSUM;

Second is I suspect this would break the HW_CSUM feature for E830.

Thanks,
Tony

> +
>   	/* We cannot support GSO if the MSS is going to be less than
>   	 * 64 bytes. If it is then we need to drop support for GSO.
>   	 */

