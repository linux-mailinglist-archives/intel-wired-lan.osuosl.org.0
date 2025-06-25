Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CF1AE8582
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 16:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F40C48216F;
	Wed, 25 Jun 2025 14:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zweHkuvbvm8P; Wed, 25 Jun 2025 14:03:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1377D81EC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750860215;
	bh=3u7V+84usjXuBZI8ELFaO9ysAY/Ef75TdAOdpnqBJNc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0eqpdTtOqSVTeZjiIUHoRfFwfkruiCeUzYqDLQi15yauGjU9F4sJMNTBG6B0UeFsZ
	 H24CH+ih6jUSUoZI/U/KnBh+Y+8trcGANqlxdswsxnHrWRKkP1NrsJtl2DZqTWIrrm
	 C/mKCIcbRiAUIG+b42LCvodePpWbBiSCwUgpcPHFuZ7ktfq4Jv68SCVWAHnvXSg4Io
	 7tQlmiG+IqDgefpOMmVFqvA5QbgyNvBEC0reNCIDA3qShPLkSbphWUefBmR9iSQOcG
	 RavEUJatD/+X9ESfOctpXm72lsN/hyryb6l8+eD5L2YSQlSjRvjUmrwkiIPaP80ULw
	 VS+21RIeCU8wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1377D81EC2;
	Wed, 25 Jun 2025 14:03:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 16C47E27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 14:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 084BF80FFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 14:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3DsTsLVsTyOv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 14:03:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3A07E80FAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A07E80FAD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A07E80FAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 14:03:31 +0000 (UTC)
X-CSE-ConnectionGUID: 9GARFwevQ3WBVGVlsMGN1A==
X-CSE-MsgGUID: FZURAnMaR9ePjQSVhTAmOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53267035"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53267035"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 07:03:31 -0700
X-CSE-ConnectionGUID: b4d5ITxDQEeUixLTppjQ8g==
X-CSE-MsgGUID: i7FcKIsGSmOOBlsk8O0XDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151652324"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 07:03:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 07:03:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 07:03:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.88)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 07:03:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ip8SRnt5X+K1OKjlFFJxdMLRAze0ERcajd51Yi28VCWCY2Njj2f1YVMCTyQvbT3xn2RRq6oNVudY1YY4KNH++9yilYTsLKyxPS26TD+eRfvLmg09FGTrLXrhJ7VIluTlLRJ9PSb02I4t7cO+nHKOeLl2Alp3uqr6yoZ+7f/fvMhTu9p2SUh86/VxXet8M3pX3AVGWC4zOYqpdegGtUlEbll30tZgY6VwHaq9jaCiuDZ1V/vmrBueABLJgkTiokLcAxvzEEh5p6l+Qrz71swjqyAkjuQcTo7qtKiJN464pYmJvUVCc7i8VLpta1NmYhd+BHLndc0YPnt90a/+zbOZbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3u7V+84usjXuBZI8ELFaO9ysAY/Ef75TdAOdpnqBJNc=;
 b=o6J+XLsX3CVj6CVxAykgsMNi4ik4++VBpUakkWfIWzfQC9dHwI69UMjtJR1CrxXEuh0mS530s/4aIG4lp1EOdWCu8vE+psScjiqJ0gcNp6508HZvHE99EkFkV1qW7/Pu+ebWIbLv27b5zArhti+VnjD4YPelhhIgnGrnzHzxcwNpfivZ+brxUrFXYlHjoZKmzGx1cpSul6qyTcYAhlSvCR5IMFel/UTLy5sFd7q/jJqlVtoYcqAvCAVxbSRq2rw2Vs5Pa8jjxMIg5u/ek0AAK24hNa6M4PUN3h34QGsUQzf/I0HFwISvEzW15TuaTbaRzueHJCNJwAKaGAIH9D716Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS7PR11MB6150.namprd11.prod.outlook.com (2603:10b6:8:9d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Wed, 25 Jun
 2025 14:03:26 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8857.026; Wed, 25 Jun 2025
 14:03:26 +0000
Message-ID: <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
Date: Wed, 25 Jun 2025 16:03:19 +0200
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU7PR01CA0013.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::8) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS7PR11MB6150:EE_
X-MS-Office365-Filtering-Correlation-Id: dcaf1434-40d3-4a59-9f14-08ddb3f10e45
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bzlRUXUxVjlLaXVLdnI3T2lBTzJMT2NCSXBGbGRyTDY0Unl6alFGTW8yZWxF?=
 =?utf-8?B?K3VTRkpMM2laM05rNWt1MnQ5R2xYUlBuSitpMTdPNlU1OTg0cVQ2TDRKcS94?=
 =?utf-8?B?TkNWdDM0YU10MjRyNmt3ampkM3FBdkVpbEU2MjZBb1Q2cW1rS3Z3SzNnUGlJ?=
 =?utf-8?B?Ny91aWl3eHdRUnFaUTk2SFNIQmlsdjU1c20xaHdselk0MTlmSWFxRTVjOGZp?=
 =?utf-8?B?MnRkZHFRcDliYTFNMGdaNnR5YVE2SmNrQWZrbU9qZ2VGc2tGVEpXSE5saEtF?=
 =?utf-8?B?ZG53UEFDUitpTXNoblRmYmxVcVNkd3k3djNTcWVFL05LeGZFRlUrdVorRFZL?=
 =?utf-8?B?K0l0emFyOUxBR3N3RisrM0VCM2tXZTlBM05Qd3hkbmdHZGs1bk5YV3JiN1JF?=
 =?utf-8?B?NlFybk9wNW9YVHJlMnlaSk9rWEJ1bkxFWHgyc2d3UDdVQlRhRDQwQjdLV09D?=
 =?utf-8?B?OEY3ektUUmJ3OXFEMW9tZFllaTRZMVNNQW9aKzlTV0ZGR3FESCtRNy9KVVpO?=
 =?utf-8?B?WDI3Rko4S2tlMUJCM0QwakxqWC82T2JoZ2c0YkJxUGdqZkM5eHNMazIySjNk?=
 =?utf-8?B?VEcwMWNKNVRYSy9DUnQrdkQ0Njk1NnlRUEN5ajI2WnpoUXNMZ25xdmFZbllB?=
 =?utf-8?B?djhzS2twKzV4RHF4dlEzaWNqVyt2Ly92a21zeWZxVGIrN2RZdkJ6a1IrTWhC?=
 =?utf-8?B?eVk5dUdFdmk1WmJsWVQzZktMZ1ZEMUgza3ByM0l5M1JaUU9JbXpocTlvQ2VQ?=
 =?utf-8?B?aDBydlFDYmlhSWMyN21rWVB0ajRwZ1hDakdHZEVuZEtweTA3UzNuTXltUlk0?=
 =?utf-8?B?QmJRV1ZGdjRmNjhnK2hqU2N0WXVWK0F3L3RiSzhqeVB2NllVVG9oY3F2VWlj?=
 =?utf-8?B?aG1CdFlHam9HVUhlUkNXamNxV0JGVVpkZ25BOVNpWlhjODRKSXRnd2JURGtE?=
 =?utf-8?B?d1RyUFhRUUx1QzZ5S2lIZTAwVDBPZWNSNHlGNUR3Q05kRDZHM3ZDMEFoUTJW?=
 =?utf-8?B?Uy91d29KNytWYys3K0pOSDJhQWYrc0pJZ3FodHdNYXNIekltMlpWZGpyWm8x?=
 =?utf-8?B?UzBWaDMyNGEyYnhzME9SUmNaSnhaV2pDc1hNblRBUHhnVzQzaW50WkNJWlVS?=
 =?utf-8?B?cE9qcGphK1FqVk1Lc3lDcGlLYjk0TlJOUzMva0xacVB6dVhobTVyNmdWdUt1?=
 =?utf-8?B?K0pwSXFKSTlYUmR5MEJSd1ppUVpNa1hXMWdjeXluKzBicGxnQjUyd3crK21z?=
 =?utf-8?B?YnBVZTd3d0ZKZWZwc3BFVDQzSjIwMU1rcFppdUhpL3p1a3ZJYzN5eExoZTNw?=
 =?utf-8?B?Sy9kVXJ2dytjRCtWaXZlRk52Q2gyTVFkL29YYUY2dEEwMThIVkNTWUl2ZCtI?=
 =?utf-8?B?Tk02aEtHNHBWNy9sWkYzUkpEL2xWYndWUytBRGg4OFEvMGRxby9zM3pWbjZn?=
 =?utf-8?B?VnkwUWZOSnoydVd6aWl2VFhHcDBoSWxlWm5kcFRxS0g2ck1JT2hNYS9teFd2?=
 =?utf-8?B?bTVkaExCYVI4ZEphckNoMnJ4ZWJxaU5LK1d2bis2VXFhVEhtOUFiV1ptQ28z?=
 =?utf-8?B?cnhPdDA5MTR6cjNBOXNxYXpKU1E2Q0RoeTRwWUQ0R2h6bk4yUVpYVHF0MDNZ?=
 =?utf-8?B?YWRubDdRVEVKWWZvRzZDdTVwbEU1bHd1aVhhakV2MU1PRzdXVGJlYjYwdkNG?=
 =?utf-8?B?QVM1a0Q5cjN0K1dxZU8rNkxCdFJ4VzBYUU9NNjU5blNXNWcyUVdYSWpOODMz?=
 =?utf-8?B?eHZySGdxdE0vbHZNQk9YZkQySnAyUTc2cHlrMXVyaXFzRmJPbTIzc3FTOG9s?=
 =?utf-8?B?VzZGTTd0Rkh1L0NLenJQR2Y1TnMvL3dpQVpoM1p5SzhMSHRoNWJ4K2pRdkwz?=
 =?utf-8?B?YjRUdE9YdEhsM2xTRHBDb3g2YVlrNC9EQzJXSVU0WW9OZXFFRERBZ0RiM3BY?=
 =?utf-8?Q?rWwyUy7Fvrw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0VFVytjNTlkanVGK3dZMnpvTHNmRjNRUEloR0ZKMHIzZlRGanIzQ3loamlt?=
 =?utf-8?B?ejhIb2lBRUc3V2YrZitXU1NRTU9Gem9iRWE0R3Jlb1VqOHViNFkrZlZBWVFL?=
 =?utf-8?B?OTlBcHJZSUUxbVgvR3pZcXEvR3dpa08zYzIvOEhCSENTQk9yMVZpdmd1cXpX?=
 =?utf-8?B?QzJIS2lWdVM2U2lFa0lickV3eWZRZURTYy9VWWVKMUZGVU9CdXl2Q0h6Tm15?=
 =?utf-8?B?U1M0VnVvRnNiZGQ0T2ZoaFBRaWo0Y0pLdWdhOHBJamlVVDJHMkR1VGpidnFF?=
 =?utf-8?B?VEtqN3J4VkQ2N3YzaWwrbU8rZXV3NjJkSTBBNmVhejZTaGdxNEJUcVU1ajBw?=
 =?utf-8?B?cFlKanBkR2kwbHl4ckNoRElMQURBd0VtSW14a2RoVC9SclFHVUlLdjFuUGM0?=
 =?utf-8?B?V082UVUwTXlsY1hBTXpRYVM1cFBhWHpvU0oxU2hBV0krNnk2QUo3ck5tNFVB?=
 =?utf-8?B?L1VCaU85OGhCZ3dZOVF0OEQyWGdYWWpwMVhIQThxSk13WlN1cFdidUpFS014?=
 =?utf-8?B?YnErRFNtK2YwbDNNbDdTSEg4Rm51ZXlvOFlhS3hsTzc5UWEvb1dyYWZ6MVVi?=
 =?utf-8?B?RVZGOFdSRTd5eHR6YmloQ0ExWEQ3U1VPYS9VSitaeWZMaXRIYi85MzBYekFZ?=
 =?utf-8?B?SGlJVkpUclBuOGFhYTBHRU42dkxEVUdTQmsrQzhISE9DWi9OOHM1eTNFazhG?=
 =?utf-8?B?NFR5b1BRL003SytxcGdTUExQWm95OG5taC8wVGx3ek1jQ2I5aldUQkhIcVV6?=
 =?utf-8?B?OEtQOUJvcE11Q2R2MnlidGxqNlVqcVcycGFzZVgzbXA3QmNRTU9vd0ZKWURQ?=
 =?utf-8?B?dGUwRlR6eGxwQUxyTGc2aCtkU3FFY2pKeXA3R2h1T0s5Y0dmY0hoMnRQQ1Q0?=
 =?utf-8?B?SlBidWU4YVpBdkZKa0Y1N1p1SXBnV0lwMVE3dk91SFZiNENzdFlmbm5TSXdV?=
 =?utf-8?B?dHEzMjJweGtwU2pJalB0VHR6UmNXdFNqa1dFbXUrSDBLY0RSY1NrajFBR3dx?=
 =?utf-8?B?L3hVZXNvakZudGd0YmtwUGt5NjB5aEptanUyQlR4OXBWY3Z0MUJ4K01CN2Jk?=
 =?utf-8?B?ajY3UFhTcDBIK2pnZnJuUFcrS2xUMXJqNk5wR29PQnpHZFU3R0t5OS8wOWxH?=
 =?utf-8?B?RkVGZTZHRUp1TUVDdzV5MkcrMFJ6WkZmWVFtSkNsMDBwTlQwNVRrTy9VOHAz?=
 =?utf-8?B?OWovK0J0K1F1QkhaSUJCcDhVS0RxQlNqLzRrWHZ1U1NKL1ZxaWR1RDljTWh1?=
 =?utf-8?B?cGdYV3NBNWFxT3JrcWYrMkl6WEtXbDFJQXRLZzM1Tk12Uk91VVhEZWphd3lP?=
 =?utf-8?B?ZzYyNkNjNEU0clBYc1hORGRtSmtsSlFwRjlhakQwNE5GZ0FBNzRGNzZSNnNN?=
 =?utf-8?B?ZTBMNGdTdjNpZjNCd1dRajd0UFQ5WGwyRlRlVXMvbkhyeFc5YXkrYW8wQncz?=
 =?utf-8?B?YzZZVFpXM0RpWW11Vk1telc1NzVMZjhFejdKODFWOXNsRkZPZHU5SjlVMkE3?=
 =?utf-8?B?aUp4RkNoVVpxSm1lTjlPaTFlN0NSdjhTb01pMkcvQnhaMnZkcnZTZWx4RGJ0?=
 =?utf-8?B?SCtOOUVmMHdjNCtLRlc0TzJYdEZBWEhPK2YxNExrdTI1VCtCL2V5Q0hwazhr?=
 =?utf-8?B?b2xtdko4YXlyYTJKc0F6d3ZsSW9JVzEwTlNjQVQxRE1TbDRDd3UybWpWd0ZM?=
 =?utf-8?B?aFhWWlM4a0tUUDY3ejRKYWRJQnZuQThzN2M2NkJFQ0VsWHhqekhSZmV3elhn?=
 =?utf-8?B?U3dpSEJnT1FvMS9lVUt2NVF5KzBmZ2NKcHNoQXhnWXE4WFlBR1kwQnh6cTFH?=
 =?utf-8?B?c2pqN2xNL21JK3Y0VXc5SHZVOWZiOHhtWHdaZ0t5TDhPY2o5ZnROOHVjUGJK?=
 =?utf-8?B?VmFXWnBJYWtzeStmRnZSMlgwcm5GcDdJS3J2QUd6dFEySldDVHBWNXQyOC9w?=
 =?utf-8?B?Mm8yUk8rQjNaaTVEakZaV3c0L3ZDYU15M2pnL3FJWXA3OGtCaFFLTTJNRGFw?=
 =?utf-8?B?WFJQNVZ4ZzMrM3Y1amxPMEZaYUtrTGU5amZteXQxQXlCZ3Z5V1ZZQjFzTDNr?=
 =?utf-8?B?RFF2emNKYjJpMGNXMWd2WW01Ukg0alV1RGJUYkg2UDZ3ZzNOUjlMbTl1SFdW?=
 =?utf-8?B?NUVMQ3VWOW8rQ3VIc2F3Vm1vM0VjMlNIN21RNm9LNC9lVmFBc0VWK3pleUpo?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcaf1434-40d3-4a59-9f14-08ddb3f10e45
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 14:03:26.5789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdtxdg1Rvog8G5y0DwjOUp8tawDRFKYNqwlp7J1hs6uzhS6E4AKmEXrlKXUQnCzvuYZBNxVwXe9gFPeje/XjcSl5ZLZV1FrrrCp/ip2t+jA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6150
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750860212; x=1782396212;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S8dbmEtuVMrDxD6F8r0nCzyiLv2J9Lq3a3Faupur68g=;
 b=WJkpPaWA1zmKkJJifAOC8tsY31geLq0bcUuL+5jK9VcI2PlfCw5EnQZL
 XWgoW+WiBHDJvcNU61ONUqS/U2GBX2V9/KAIOLjT2EsgAINknmOx4WrB6
 Wm93y3bSDL47ARoVytRXknOZWPCjtY9Nfcja7o7xRX9OtUVppoQ5Rxfpm
 Su3Jem2x+6ya8GPuAqPk1faEDURA0e3hAra0wcFTuUs3tPxK5a1yuh716
 JesAxGSyjnVTRtKnXqlm3bh0vKC3ACyKvuMEdXww/CF5/kURPMoP8D8Hq
 BHa6DGaSbbFiDs4DDnijqeQtGkg5Wh1tb9xd7neyHdXtWdkyoCGFr1Uf2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WJkpPaWA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On 6/25/25 14:17, Jaroslav Pulchart wrote:
> Hello
> 
> We are still facing the memory issue with Intel 810 NICs (even on latest 
> 6.15.y).
> 
> Our current stabilization and solution is to move everything to a new 
> INTEL-FREE server and get rid of last Intel sights there (after Intel's 
> CPU vulnerabilities fuckups NICs are next step).
> 
> Any help welcomed,
> Jaroslav P.
> 
> 

Thank you for urging us, I can understand the frustration.

We have identified some (unrelated) memory leaks, will soon ship fixes.
And, as there were no clear issue with any commit/version you have
posted to be a culprit, there is a chance that our random findings could
help. Anyway going to zero kmemleak reports is good in itself, that is
a good start.

Will ask my VAL too to increase efforts in this area too.

Przemek

> 
> st 4. 6. 2025 v 10:42 odesílatel Jaroslav Pulchart 
> <jaroslav.pulchart@gooddata.com <mailto:jaroslav.pulchart@gooddata.com>> 
> napsal:
> 
>      >
>      > čt 17. 4. 2025 v 19:52 odesílatel Keller, Jacob E
>      > <jacob.e.keller@intel.com <mailto:jacob.e.keller@intel.com>> napsal:
>      > >
>      > >
>      > >
>      > > > -----Original Message-----
>      > > > From: Jakub Kicinski <kuba@kernel.org <mailto:kuba@kernel.org>>
>      > > > Sent: Wednesday, April 16, 2025 5:13 PM
>      > > > To: Keller, Jacob E <jacob.e.keller@intel.com
>     <mailto:jacob.e.keller@intel.com>>
>      > > > Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com
>     <mailto:jaroslav.pulchart@gooddata.com>>; Kitszel, Przemyslaw
>      > > > <przemyslaw.kitszel@intel.com
>     <mailto:przemyslaw.kitszel@intel.com>>; Damato, Joe
>     <jdamato@fastly.com <mailto:jdamato@fastly.com>>; intel-wired-
>      > > > lan@lists.osuosl.org <mailto:lan@lists.osuosl.org>;
>     netdev@vger.kernel.org <mailto:netdev@vger.kernel.org>; Nguyen,
>     Anthony L
>      > > > <anthony.l.nguyen@intel.com
>     <mailto:anthony.l.nguyen@intel.com>>; Igor Raits <igor@gooddata.com
>     <mailto:igor@gooddata.com>>; Daniel Secik
>      > > > <daniel.secik@gooddata.com
>     <mailto:daniel.secik@gooddata.com>>; Zdenek Pesek
>     <zdenek.pesek@gooddata.com <mailto:zdenek.pesek@gooddata.com>>;
>      > > > Dumazet, Eric <edumazet@google.com
>     <mailto:edumazet@google.com>>; Martin Karsten
>      > > > <mkarsten@uwaterloo.ca <mailto:mkarsten@uwaterloo.ca>>; Zaki,
>     Ahmed <ahmed.zaki@intel.com <mailto:ahmed.zaki@intel.com>>; Czapnik,
>      > > > Lukasz <lukasz.czapnik@intel.com
>     <mailto:lukasz.czapnik@intel.com>>; Michal Swiatkowski
>      > > > <michal.swiatkowski@linux.intel.com
>     <mailto:michal.swiatkowski@linux.intel.com>>
>      > > > Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA
>     nodes with ICE
>      > > > driver after upgrade to 6.13.y (regression in commit
>     492a044508ad)
>      > > >
>      > > > On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:
>      > > > > > > And you're reverting just and exactly 492a044508ad13 ?
>      > > > > > > The memory for persistent config is allocated in
>     alloc_netdev_mqs()
>      > > > > > > unconditionally. I'm lost as to how this commit could
>     make any
>      > > > > > > difference :(
>      > > > > >
>      > > > > > Yes, reverted the 492a044508ad13.
>      > > > >
>      > > > > Struct napi_config *is* 1056 bytes
>      > > >
>      > > > You're probably looking at 6.15-rcX kernels. Yes, the
>     affinity mask
>      > > > can be large depending on the kernel config. But report is
>     for 6.13,
>      > > > AFAIU. In 6.13 and 6.14 napi_config was tiny.
>      > >
>      > > Regardless, it should still be ~64KB even in that case which is
>     a far cry from eating all available memory. Something else must be
>     going on....
>      > >
>      > > Thanks,
>      > > Jake
>      >
>      > Hello
>      >
>      > Some observation, this "problem" still exists with the latest 6.14.y
>      > and there must be multiple issues, the memory utilization is slowly
>      > going down, from 3GB to 100MB in 10-20days. at home NUMA nodes where
>      > intel x810 NIC are (looks like some memory leak related to
>      > networking).
>      >
>      > So without the revert the kawadX usage is observed asap like till
>      > 1-2d, with revert of mentioned commit kswadX starts to consume
>      > resources later like in ~10d-20d later. It is almost impossible
>     to use
>      > servers with Intel X810 cards (ice driver) with recent linux kernels.
>      >
>      > Were you able to reproduce the memory problems in your testbed?
>      >
>      > Best,
>      > Jaroslav
> 
>     Hello
> 
>     I deployed linux 6.15.0 to our servers 7d ago and observed the
>     behaviour of memory utilization of NUMA home nodes of Intel X810
>     1/ there is no need to revert the commit as before,
>     2/ the memory is continuously consumed (like memory leak),
>     see attached "7d_memory_usage_per_numa_linux6.15.0.png" screenshot 8x
>     numa nodes, (NUMA0 + NUMA1 are local for X810 nics). BTW: We do not
>     see this memory utilization pattern on server s using Broadcom
>     Netxtreme-E NICs
> 
> 
> 
> -- 
> Jaroslav Pulchart
> Sr. Principal SW Engineer
> GoodData

