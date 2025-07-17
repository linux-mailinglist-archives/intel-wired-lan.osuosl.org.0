Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D625B0956C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 22:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7994C4116F;
	Thu, 17 Jul 2025 20:05:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GK-bNLLv4cyV; Thu, 17 Jul 2025 20:05:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DA95411D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752782755;
	bh=HD6z1FJl0MmOkEt9YeKbXmw7MagQZsUQgUWiMpeVf0Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w1tEBAdQQ2AMzlgls07id9JPGFYxUmLq2grc4G/aKGKBfByr8tM7+o247XzibXXFY
	 hPCblYL2dfFlPFmJuhVZb/37K/gzwluzTGocSYR5EchNgylwZ3Ffb4aMBZHbnBuA7e
	 y3QZ0bYwu0rCu9Iusz2QJpc1JSQd3d3KbfB2bW1EGEBJJJkkF4zQKCfpxdxsMPfs6e
	 lO2V/5TGr4kJ4THYOQ70GcZ+MJ5Y7g2S+o4wNlnuSkeoxocuN2bO/y3YsU1xjcwek4
	 YCL8vWiGjGiEMCmnbCbZHmdtkGNhLzTU0GLj3Dj+Yn9cUjSuihQFmHwg+uwuR9c5b9
	 FSM9vqoOmwUlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DA95411D6;
	Thu, 17 Jul 2025 20:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DF9BD226
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 20:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C5D324116B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 20:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U_FVv2BndJuU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 20:05:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C68641131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C68641131
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C68641131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 20:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: 9iGmR2x7RN2xOfpSEL0HuQ==
X-CSE-MsgGUID: Z0JSnOuRS0qdwzRt4AmL8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65329877"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="65329877"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 13:05:52 -0700
X-CSE-ConnectionGUID: j2M8WmAuTN2w/R4z6IRewg==
X-CSE-MsgGUID: kJQvYrKWTAOTjAKf2m6U4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163517999"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 13:05:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 13:05:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 13:05:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.76) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 13:05:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mlzJNk9xYZJn/ncXKXRnUGvV8Vtbt/K5vD1mZXE7f8WqVgjKTPD5xHoCGbfHexsKepm2s7SdMFmrzGInxftUe0NBauFn6GpDHpLu/FihDVXHeAq/a9f/GOcfSd928R/pf1AaJnzhtHT5l7FPy3RNjKNOVb6vwV1+Yt3PHLMoNz9vYRHjHQXYQTswgcjNNbq5SvMbLS6H8U4y5zuRfSvAaUXhiy0WZdAPUP5A8I94WlmVbwgDQwoB91th+p7riGJk4lYRU41U/n6xDW5D/ZuvslBWPh7h9iDYu3yUW9I13/k4ZU9nGJnCAuWk0e/RZ53QD/pgNy6e0G/5/ihS14CcCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HD6z1FJl0MmOkEt9YeKbXmw7MagQZsUQgUWiMpeVf0Y=;
 b=QLzra7ilFzaFjbWXclBLh/UtlE0nTa9ucbetCwinOK7Q84X9e7+NUh5fApj0ZOAFS60pglUTDW+HkxouP6pjUkKsOlWq4/o4w1MdWie2pN0rvIKXnuPjoX8gjeTeGAa+TUyUFzDxckKUL3JIAD/usqzeoLCmI+wFT23gaXN+nUpDcnuTyd2Vu1XiPhUjyEz/3vsznSP+HqSsLw9Hrh0tMnD7QiZklnm77a36Yqyf0qEwZ/mZG05j4EgldIbkZ3SLgo/LaNAyq3NYEedsFK4mq+JoX1+TdZknet18YMEbdK7Ei8qwGgxb6LrwmzHpO6/VolHBserBMUSSVMjySdb73g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8922.40; Thu, 17 Jul 2025 20:05:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%4]) with mapi id 15.20.8857.026; Thu, 17 Jul 2025
 20:05:41 +0000
Message-ID: <c9ecef85-a460-4442-95f5-99f0d3ff5496@intel.com>
Date: Thu, 17 Jul 2025 13:05:37 -0700
User-Agent: Mozilla Thunderbird
To: Dennis Chen <dechen@redhat.com>, <netdev@vger.kernel.org>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20250618195240.95454-1-dechen@redhat.com>
 <CAOftDsEnyXZa8arEGL5pRa-0RvfwS5Tv7eb-uhOzCUAZcUxoAQ@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CAOftDsEnyXZa8arEGL5pRa-0RvfwS5Tv7eb-uhOzCUAZcUxoAQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0073.namprd04.prod.outlook.com
 (2603:10b6:303:6b::18) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB5971:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c9fd1b5-d67b-4326-71bb-08ddc56d4e04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cEVDWDkvNjFlUzh3cE90OXloVGtZblZ2S0dXU1J5N00xcFZqYy9pbWQwUEh6?=
 =?utf-8?B?eE9rSTBzUG5sbUdCdWhZaHQ4TWZjZEo4QWhVaVdEbURjcTI4MEZGWFBPaXFE?=
 =?utf-8?B?elpqVUkzZTdYaHpTdUZoU0VocUM2eHZBTHcxbVlHYk1GdldvT2xjTlFkZGlG?=
 =?utf-8?B?a1pwK25LaTJhV1cwWG5Sb3VPSEtUODZkT1pVNHgzTHpWUnJ1bzQ4MTdrc1hE?=
 =?utf-8?B?akRoNC8xVWFua09OdnVPdnRwQXlIM1hDSmdpVitLVnZYbmVrelA1bmdUQVVL?=
 =?utf-8?B?VHRrRVk1a2RRazRRZ2oxQlNVR25VVGNuS1ZFSGNLQndGZTAzN3dKdkpaSXpp?=
 =?utf-8?B?MnJjeEgvUHROWTVuQ3AyRy82QlRpR1BQTXR2QW9oMFNkSlAvKzc3cXdteHNF?=
 =?utf-8?B?c1hMci9PSGY2SDVLUW5vcisrZTFidzRvM1A3SC90QlhCeTFoMUx1Z3B1anJw?=
 =?utf-8?B?KzJsbDZCUWU0N29JTFZNRWpKSVV5clZnMGp3RkxRSURFV1I2eHpWWkZiSzRs?=
 =?utf-8?B?Z2NJTmJNQzZzeUIrek8wa2sxT1g4V0RycU1HNjhESm5hR284S0JDb0tJeTI5?=
 =?utf-8?B?MVhJSmpwTEtaa3lDMEkrSXhNWkczYU9UQW9Mb3RWNEd5aHBiQzFIMklGc3Zm?=
 =?utf-8?B?Z2R4dmdsdmkzRmsrVUxJN0Rta1RHQXZqZ0FZSnJOWGxydFE5OXdwNG5PM0NN?=
 =?utf-8?B?MUFVcFhwTG1TN1N5UjUvRkowTzlvSTd4UE5ESXVjV1Y4SzA4TWNiaWMwUHI1?=
 =?utf-8?B?TWdzZ2xmd3dwd1B2V0pSeVZKSm1TZStZQUNIZTZnMUllN255Q2hDOFZEc1RG?=
 =?utf-8?B?d083Mm1adGNodHpqYTA2T1paNHI1bEF4T1hlM25aVnJZWG0zdUgvUEQyQzRE?=
 =?utf-8?B?aTdQaTBFRDdIR2s3RDZNSHBONEh0aDZLeUxWNFA2NlQ1YVNnbjV0MklXelVE?=
 =?utf-8?B?Mkttdy9senk4clpoczRZYU82MzV3TFpvaURpdzNGVzVKa2o3bEFrUVNWaDZ2?=
 =?utf-8?B?SndSVVJOVWsxRmYyQ01Od2FtT3JZWlpzeDlKZGw0T3NhOXVpQlQvcjZTbmdO?=
 =?utf-8?B?bFYyLzJFbk9aMTFFTW55cDNSODYzNG1LTDdMOGNCU1RZUldSZmh1aW1KV1F1?=
 =?utf-8?B?VWd3Q1B3ckVjNWd3V3lsaUdtWDBCOHJXbk1jSGJ4eTJXQmNtSml5MlZMYXJp?=
 =?utf-8?B?T0VJNkw4aE5aNEdWclJjempKcFVrQWFNbTBQa1J5Q1FuK3htM1ZZMGFTMm9Z?=
 =?utf-8?B?NWJEMWtwV1hlZXNWejJvTmdaSWhvZU1kVURHNkgwVmhLWU5mMDA1ZnBNOE5U?=
 =?utf-8?B?RHZTeGxqaTdUYUFKM0VLaXBRWGlEL2YxZllKbk91TE1vSlkwT0Z2U09LSkZx?=
 =?utf-8?B?MmlCZHlpQ2cvdnVtVHBnY3V0NzIzTThSclRuNitrajQwNDF1YU9oVUVacmRH?=
 =?utf-8?B?aHNFVHdtMjdWdUY1SXVNTkl1VjdWNmdrb3ZpRTlBd0x3WjFwckQ4d0tZdEFz?=
 =?utf-8?B?b21qQWg1K0dVRHNocmdxOFJ2MDVRQ3JDckdtaGMrVTRObFdUUlNlTmJFcmcw?=
 =?utf-8?B?MXpqU0N6QkNKR04rQkRsS0UrbEk1WEEyczNDSmF4UHdId1hTWmJkVGJPTll4?=
 =?utf-8?B?TUt3NjFPdGViM2ZucDEzSkNDWDJQOE5KOEh3dThWeDFzdkFRME1mNnN1V2tP?=
 =?utf-8?B?bjFpZlVzWVhubC9rbERRK3hvVkxFdlVIUHdZdk82TDJnSmNRU0YvcjBHaHFs?=
 =?utf-8?B?a255NG0yM0dHMjFQSGhNcmt3Q1B3YkduZU1XS3hWZmJmTGZ3UmN0aWpDVjZw?=
 =?utf-8?B?SU54M2lJeDh2dXdLdUNCNlBaUVkzTFFRb3FPRW83d0RuR1kyZWV5YWZmMVIw?=
 =?utf-8?B?MzNOdmNVUndSWGlWMUhXUmZkbTZNS3dmR2hyM2c0eThOR3N5UFJxKys2WkpW?=
 =?utf-8?Q?CA/iRwSg89s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NklKZ2o2WXkyT0FZNkYyNU5rS01kQWlCTHRGNVR5NmhOemRRdDJMM1MvQUZp?=
 =?utf-8?B?MUg4NC8xT0FwSzVEWXRZelJ5N3BYQmNtTzFLQlBvaFQyNHlWZFlqdmVkdmo2?=
 =?utf-8?B?VytLa21PS2p4Sk5USFREcWdYN2g3NmlLb2UvT0JHdHdSQmRndFNIQitmSTk5?=
 =?utf-8?B?OXlaekFBdVd5ZUZkczVQT0ZVbHdYRjlwSVd5Z1BnRnp2QlMwazJPbCt5aGkx?=
 =?utf-8?B?ZnBBdi9zaUJOUHkzYTR3RzQvaVA5Ry9CN1dLU1pPK05wMm14dGIwUGRycEVx?=
 =?utf-8?B?Si9tb2FFOVhHcVc5R25MdWt5S3V5b1E2eS92bzFuWFdRUmJ1VENYOTZUT3h6?=
 =?utf-8?B?ZWJKRy9tK3VUdEZlU2pIQXNSV2F6TGZERFNQbTQ3T0l3ZGhrdE5QQ0lDWlc2?=
 =?utf-8?B?dzhDM2dvWHFjVFJCeEtrdkRLdXNkTzVma292T2NPMXorR3Y5MWhmVExBQmFR?=
 =?utf-8?B?c3VXY3JhU1I2dlYvc0kvSFBTZ1JwQWRYdUNnSThnckRVMk42OVgzb0l5ZURJ?=
 =?utf-8?B?L1J4bVg5V2VFeDdrZG9DbkJGby9Ndnd1MGdWYmU3WVBTbUpDV2pzZVcrMEFE?=
 =?utf-8?B?V3B4R3VxQW5JejkvOVZmdTVoeU9EaUJuL3lSQ1ZNb1U2elVGK0k1TkR5cklI?=
 =?utf-8?B?aHlPNEpvZWhJNVB6MDdzYWdvSkVRMVRSdzBWbjk2OXVra1YxOUZ6QnFhclMz?=
 =?utf-8?B?d0dWWDU4RHVzOU5pdGNiZE1IVGc2NUFPRW9OQzVyT0dBRFhaVlA5Um5SU1VX?=
 =?utf-8?B?Y0dIZXlpYlFYUGtUTnh4Rk02T3AxVDdKRmJENHB6NTZxRWtvNk41ZjA0WUh2?=
 =?utf-8?B?b3RXRVd5bFRncEl0YnRRdnRQUk9jVTVYU3gzZkRZc3lqSkNSMStoS2JUdU5X?=
 =?utf-8?B?YXJBbWdaOGQwbWEvclkvem5kUmhOSVp2WGJKY3F4d0VUVjZPSzFQTTN2aTF3?=
 =?utf-8?B?SzhKaC96MDVHWkhoNTdrZzdJNnpyZXlNT214UTJmQmFOeWl0ekhOWndkeWdY?=
 =?utf-8?B?L2dkNHc1eU4zSlZaMmsxRmJ6K0dTNis2dTEzczdSeUxxZ1pNSzdEQmFsa3pM?=
 =?utf-8?B?NUw2a2RTNmx2N0locmhIRnlVd29wQ3p6cVZVT2FEVE9kR0NyNGcrZmwwN1JO?=
 =?utf-8?B?TGQvWWNiT0k2VS96RDJPeFIvNWUzRFczYmVZdU9HajRKU0Q2MDBNeTBWTVNT?=
 =?utf-8?B?RWpMa1hyVkwzU05TOVh0R3loekMrSEluZUFuR01hS2UxNEM5ZCtHS2M2dGQ5?=
 =?utf-8?B?UVJpN29oWmZjWW9iWllLcVBHaUtKZVBweGNLZTlvSDl0Yk1SNXlSdGRzOVV0?=
 =?utf-8?B?bGNLczZLK2FQSFQ0ZFQyZGc3QjBCNlZNdTZNS1BPK29YR1NseG1ZMEcxUjBV?=
 =?utf-8?B?VjQ5aWZIc3J5YkJHL2RTdk9ZR2dzOG1idnpuV0F0bWNRMmpXZVJUUEFVWklm?=
 =?utf-8?B?UDQ5ckptcEdOR1orWVRkb0VVbkxoVkhXTCtGMXF2Q3l2VXhOUXBISUxZc09F?=
 =?utf-8?B?eXcra3E4Rll1V1NlSEJISlVUS251cjViYkRHNi94d3lRajZmMVJJZUhMTllK?=
 =?utf-8?B?K0JMTVFGY1NHd3VvR29uMEFRSHMyLzF6WTNvSWRpQmZ0dTBsckVnL2hxeHB1?=
 =?utf-8?B?VVl3ckQxaEJrYkQvZ3dHaVJZNitMYVRlZCtPb0drSlZQYmVVYUsxZVl1OE0w?=
 =?utf-8?B?VmlaRXJWQUsxbloyNTRMREdlVkprVnRGZU9oYURpSWZkMC92NVhFQXNZQ25P?=
 =?utf-8?B?ZEV3RnVXN0l6aXkzelJUYmhTNENDYmZMSFkzSm5BVDNQZXJEbk5LcUJSRDJB?=
 =?utf-8?B?RHZSR2NocWNlY3I0ckVMVUw4MDlZMWtORVJiZXlQWHd6S3RLNUpFZGJwSkJL?=
 =?utf-8?B?aHhvMGg2R1Fid1ZhUjNmY2ZRZDEzMGJaKzdob0dBUDlZdWNLS2IrSmNNdHpL?=
 =?utf-8?B?QmhVNFJmYVBOMDhreVM2cVUyako1MERUWkZRNFQrZUFyUEtqL1BicDZ6ODh0?=
 =?utf-8?B?TUozWXYrZm14Y2IrT3FOdjVTYkNGcHhkNXJ1R0lKemZsbXFlNzZSemthQnNz?=
 =?utf-8?B?UFQ4dlh4VFJHemVvV0I0dmd1ekhtUVdiU09LVHJTM0JvZHBuT3owWlRzVGEv?=
 =?utf-8?B?eUFiTEhwREIwM2I2SUdGMSs0cVVBaUU3TFFtSmRsQnRVZFBBdGpXaUdiS3k0?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c9fd1b5-d67b-4326-71bb-08ddc56d4e04
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 20:05:41.1442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: paYqq2wDeK8bKD4t+Eg7FIL1JFXSHjPW+aLp2jVtDFhP05yginBt6XdRbY47EY4fRAjnBZkpwmXdl8VykdcCAsxs7F8Y0t1K5Njsc0NLZxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5971
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752782753; x=1784318753;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7jZ7usHL//KRnG6DSOxvfeoljClYrH+pgWFr3rBF1Yk=;
 b=jeG3xGUo175fgE2NQntv0Uwop0Y754z8JHfEBe4QSLVjokLYvi1Ze+Ql
 OkI79JQuA2omAYStIbQhEkT/ZH2cKPAZeaNroOT61VNNyjv3le+JbMD9r
 Bv91OkLSt+S54sDMLg9/AxH4EqFANf9MgBoWCJVPjH9vyYL4LG6ENsEyW
 mlOEE5zF6v0t0if6w+uFCTkEQnYhW43QXcXP6BzQEvEUZQcwtHMu9r7at
 KmJRef7Ty9sDknkZMXiiMSzf3QxBmXxT3jLXIlzTpFDmtKMQ7fNkaZ97U
 DmDrzqFbQEaKtKdkb06Glba4YIMgXwASmHdDN+Ehp7JImbquoG4CvAe0T
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jeG3xGUo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: report VF tx_dropped with
 tx_errors instead of tx_discards
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



On 7/17/2025 9:46 AM, Dennis Chen wrote:
> On Wed, Jun 18, 2025 at 3:52 PM Dennis Chen <dechen@redhat.com> wrote:
>>
>> Currently the tx_dropped field in VF stats is not updated correctly
>> when reading stats from the PF. This is because it reads from
>> i40e_eth_stats.tx_discards which seems to be unused for per VSI stats,
>> as it is not updated by i40e_update_eth_stats() and the corresponding
>> register, GLV_TDPC, is not implemented[1].
>>
>> Use i40e_eth_stats.tx_errors instead, which is actually updated by
>> i40e_update_eth_stats() by reading from GLV_TEPC.
>>
>> To test, create a VF and try to send bad packets through it:
>>
>> $ echo 1 > /sys/class/net/enp2s0f0/device/sriov_numvfs
>> $ cat test.py
>> from scapy.all import *
>>
>> vlan_pkt = Ether(dst="ff:ff:ff:ff:ff:ff") / Dot1Q(vlan=999) / IP(dst="192.168.0.1") / ICMP()
>> ttl_pkt = IP(dst="8.8.8.8", ttl=0) / ICMP()
>>
>> print("Send packet with bad VLAN tag")
>> sendp(vlan_pkt, iface="enp2s0f0v0")
>> print("Send packet with TTL=0")
>> sendp(ttl_pkt, iface="enp2s0f0v0")
>> $ ip -s link show dev enp2s0f0
>> 16: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
>>      link/ether 3c:ec:ef:b7:e0:ac brd ff:ff:ff:ff:ff:ff
>>      RX:  bytes packets errors dropped  missed   mcast
>>               0       0      0       0       0       0
>>      TX:  bytes packets errors dropped carrier collsns
>>               0       0      0       0       0       0
>>      vf 0     link/ether e2:c6:fd:c1:1e:92 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state auto, trust off
>>      RX: bytes  packets  mcast   bcast   dropped
>>               0        0       0       0        0
>>      TX: bytes  packets   dropped
>>               0        0        0
>> $ python test.py
>> Send packet with bad VLAN tag
>> .
>> Sent 1 packets.
>> Send packet with TTL=0
>> .
>> Sent 1 packets.
>> $ ip -s link show dev enp2s0f0
>> 16: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
>>      link/ether 3c:ec:ef:b7:e0:ac brd ff:ff:ff:ff:ff:ff
>>      RX:  bytes packets errors dropped  missed   mcast
>>               0       0      0       0       0       0
>>      TX:  bytes packets errors dropped carrier collsns
>>               0       0      0       0       0       0
>>      vf 0     link/ether e2:c6:fd:c1:1e:92 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state auto, trust off
>>      RX: bytes  packets  mcast   bcast   dropped
>>               0        0       0       0        0
>>      TX: bytes  packets   dropped
>>               0        0        0
>>
>> A packet with non-existent VLAN tag and a packet with TTL = 0 are sent,
>> but tx_dropped is not incremented.
>>
>> After patch:
>>
>> $ ip -s link show dev enp2s0f0
>> 19: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
>>      link/ether 3c:ec:ef:b7:e0:ac brd ff:ff:ff:ff:ff:ff
>>      RX:  bytes packets errors dropped  missed   mcast
>>               0       0      0       0       0       0
>>      TX:  bytes packets errors dropped carrier collsns
>>               0       0      0       0       0       0
>>      vf 0     link/ether 4a:b7:3d:37:f7:56 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state auto, trust off
>>      RX: bytes  packets  mcast   bcast   dropped
>>               0        0       0       0        0
>>      TX: bytes  packets   dropped
>>               0        0        2
>>
>> Fixes: dc645daef9af5bcbd9c ("i40e: implement VF stats NDO")
>> Signed-off-by: Dennis Chen <dechen@redhat.com>
>>      Link: https://www.intel.com/content/www/us/en/content-details/596333/intel-ethernet-controller-x710-tm4-at2-carlsville-datasheet.html
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> index 88e6bef69342..2dbe38eb9494 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> @@ -5006,7 +5006,7 @@ int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
>>          vf_stats->broadcast  = stats->rx_broadcast;
>>          vf_stats->multicast  = stats->rx_multicast;
>>          vf_stats->rx_dropped = stats->rx_discards + stats->rx_discards_other;
>> -       vf_stats->tx_dropped = stats->tx_discards;
>> +       vf_stats->tx_dropped = stats->tx_errors;
>>
>>          return 0;
>>   }
>> --
>> 2.49.0
>>
> Hello,
> 
> Any update here?

Hi Dennis,

Let me check with our validation team and get their status on this.

Thanks,
Tony
