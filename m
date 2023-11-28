Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1167FAEE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 01:16:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3CF4405FD;
	Tue, 28 Nov 2023 00:16:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3CF4405FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701130565;
	bh=TkwZIte+jddw9cjgMOYrQBsGZdOQjVp3y9ocqb+vj4Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FGFJPKrQdl62Ggtn5NhADoKYgsVT9klIy/PQc0HZXMtq+4180l+kSuJtg56DJvThz
	 xZCkBE5FgP3zg5i18jhBdTRxbqCHhx4HyxzRLDNFp6ceiYQo81D3wu/KjKGznikRhe
	 OozuRa3+oyF45k8kZqcTFJPBRQHhR2JctWBtS9NP936WHC/QfMqBhi4t42Xr7pwjKw
	 tDrlp38c2hVofGAPtmGvgCJPauahNO/UOogdhwv5G0y+BR7Vit/skxAdY2nrGbIG7d
	 DIrtBSgbjJCqG1MzLsUUdj8Od6BCBBQfsgtMjnYl5W7W4r8Vu+zsoX/sac16K+Ka+S
	 LviCMoxO4vyeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bnZTFllJVtkl; Tue, 28 Nov 2023 00:16:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3223402F5;
	Tue, 28 Nov 2023 00:16:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3223402F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8E431BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 00:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A6C840499
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 00:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A6C840499
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rmd3SeDTMk_2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 00:15:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B894F402F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 00:15:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B894F402F5
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="11513921"
X-IronPort-AV: E=Sophos;i="6.04,232,1695711600"; d="scan'208";a="11513921"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 16:15:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="797409244"
X-IronPort-AV: E=Sophos;i="6.04,232,1695711600"; d="scan'208";a="797409244"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 16:15:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 16:15:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 16:15:54 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 16:15:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZfMZ3uBdlEe0D8xdYeGcnUFB4J2Cm5z4FPpoiWmGmmmo3MKs5T6RdQYDUAtMT0WfZBBtgqrgh+9no8Qdf3L3X0nupDAverrbbMQqAaClysaC0pHK0nP4VBcckFJEOvPHdjOGwU+mfc6/9YTaaGEjwsLf0fgMzixINKDlBpx93pk8fprCYhB8InJifuRtvq75/Y9R8NQfLxPcVQRok/MpYwY4CuVuvAQcyrEexPz4RBdcxoqR7CpIS2stcYN8pltHrSl2c6IzWrZvxDE7XTy9Q83ushvORmRq8dEGpFz0vxl12SAhbxENNk4m8G+9xdHpKxheo0tQbupWKXKFTfSpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=el4psocP/UHRkOFJrb1//G6n8AFNBXwZKegqA45kDeY=;
 b=ff9f0np7qfY/+kJ7CsVus1PQHu3/Pa1xKflcbqrLNn2E7XARzbXDdtlM1ycfMqkb4t+bv8xIIgDTfODv1pFl0m5UYMliOpUlnCLsepScSyZk7AlejDxRDYy16lELCrVaJSxAiHzUNEPbMhkKKDNLNz2CUnILfcQ6c9HRT7IHRpko1J2ui3e1uBhMyGV6qHQyJmMy8s0PWNCu/rmZHFdZTqIbN5Wb5s5IyRAJ3qUrOmPvvq4GRDYUFbekjJDicFAOj4pou4aUFbPoPHKBd9+gYbiGwOddi3vC37QEp8m6yWpFnha18f0UVsbWnPJsBe2hwEHnIL9GgdmnEnS6Mt7/Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by SA2PR11MB5145.namprd11.prod.outlook.com (2603:10b6:806:113::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 28 Nov
 2023 00:15:52 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::124:ae3c:93d1:981b]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::124:ae3c:93d1:981b%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 00:15:52 +0000
Message-ID: <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
Date: Mon, 27 Nov 2023 16:15:47 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
Content-Language: en-US
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
In-Reply-To: <20231122192201.245a0797@kernel.org>
X-ClientProxiedBy: MW4PR03CA0164.namprd03.prod.outlook.com
 (2603:10b6:303:8d::19) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|SA2PR11MB5145:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a57de07-9b7d-420f-bf2d-08dbefa72e6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FGX5r9pew1o3Sq3U5Fpv+QRgqGGm7nkmbFgftJH5e8r08SYHihLPghA1BCnCHOwwjfOD/2y9XM+Zx1kO7+Hk9y+V9NArobm6ciqNQWZHO91fIVh4CEw7m33UZpFFYTlOeUSCV4oobTrWMPIzv4AwRLgG715BOysX8r6A04xaaCTUKSgyLAAT7cdZ04TM9/7yUWfcrVta72pJHXpRwjoPTW10A+JjF5ahL6caCMqYHy3VWxVVXT/rfQMJFXbv2SkMU4J7ozvZJQk+MObJ4EO43gVKdGYIBt2fAuGU4kPtMNnQ8xJZxjnKNL+k3gDCwJDr9+GirirYDi/eAW/jCGLH7FFb1u2sNopxYOTWC1gVRBuCD6zvSQpDE8Agze86VndT8uj+Ycn9KRUPZyygHT/LeVY4oszAs4FZthk74iwTlxdUEjvgAGFx9KcVD2XvVQKOI/A/1dx5HI5Il1y5dFVN7oSpaWMusi93oQpRQnCLrQ1uLaJWKrt2A8j9v35qe5iVcHvVOt4yQlVQvN8d2lUwt7mpBNqF0YMlZTc29rUYqPVuWXzJVF5JBhdiNEjledsbmyDEi4jiF5kRhd5mlxZAgyWUu5hGB5NRcYp5IJ8bEYpn3eNCZWmAhKvQqBQO8sRPQwagc+EUSds8jG9XJ35nLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(376002)(39860400002)(366004)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(38100700002)(36756003)(82960400001)(86362001)(31696002)(54906003)(316002)(6916009)(66556008)(66476007)(8936002)(8676002)(41300700001)(66946007)(6512007)(53546011)(6666004)(6506007)(478600001)(6486002)(4326008)(5660300002)(2906002)(31686004)(26005)(2616005)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHVxd2E0Uyt2ZXdXaXVrZHhiZTA0ZUVMaVlBYUJwSnJMalJteVB6cmJBWUo1?=
 =?utf-8?B?d3p1aHRJcS9tclJvZ3ZZOVF4L1BreTd0YlM4ODZ3TVhlQkZHTWlpVGhwZ3lv?=
 =?utf-8?B?cXdQSW9BTEpzcWtQQWlqdEJrK3ZzbFc3WnhlVTJXOVFrNENkME9iUk9aVEtP?=
 =?utf-8?B?YlE5L0xVckg5VnFyQkw4OTU1TUdpMjU2bWlCWU1pVFZ3a0xqaS83TENjdG42?=
 =?utf-8?B?TVUrWTBGQmRNVHpLeVMwMWxuOEU3Qk1EU1g0aFY3a2RXc3k5aGRXbGZuTGxR?=
 =?utf-8?B?dnBNNXlRMnpHSEhieE9nZkNWT0NFTlBiR2ppdXVkUUc0REowbWNEVDVhSi91?=
 =?utf-8?B?VEdtK3lKaVp5bDRUSWNoSGNNdGFSc1JhV0V6dFRTMmRsS00rOHhsWlMxTUtu?=
 =?utf-8?B?bE13UmxRT011UlBhWUtoeWVDVXkrYjE3QWVLOTFWL3lSalBTR3pDaUhqUlll?=
 =?utf-8?B?TnNGb0lJUFlWQlJVdEhuSFMyMG1aZDNTUE5SK3c1eW4vRzdvUXgzQVMweUw4?=
 =?utf-8?B?eXdZamt4dFZINzhGYkIyYVdtT3pqZDVDTFdmbE96Uk5JbTQvZ3hOTURHZ1Vw?=
 =?utf-8?B?K1g3SDVGcWEwWGJ4SWF0K3J6eUZtcHBLbXROSjgvcDg0TTVkTHFsWCtRMDYz?=
 =?utf-8?B?SUdmNk8wUU9Qc3ZxMmplL21Ib2F0aWN3OC9RMEtqU2FvbVBlazFMY2FGMmN0?=
 =?utf-8?B?cWhrRGI3bVNxZDl3U3k5M3dlaFVsK2hCcllHZ2tUZGFhS2s0amtoazMrcUMz?=
 =?utf-8?B?NXZUdnFtSWNjV1RPRWpLTlFsbENPL0dBRmJCSVcxNitlSW5ReG5PdFV2bFZZ?=
 =?utf-8?B?akhwYlk4aGhlUEw4cWx3UG52bDZTL3BMS1RFaEFkME55dm1sa0FTTVBVdC92?=
 =?utf-8?B?NExGQzNZdmd3S0c4WVNGVU9BamliLzZ1dUFvbnE0TFgwNWJnTTRUWFNIUUJz?=
 =?utf-8?B?N3o0dzlnVTFjQWZ3dFo2aGRHRnYzTHd4RWhZMWlwTDhBQ2I4S1cvMTlHRjJq?=
 =?utf-8?B?MWZNMEpidVl4ODJ3QVJqRC9GK1JlbFR3WUxGeWdhVUwxWHRwWUxCUTUrNmFl?=
 =?utf-8?B?VWZtaVhwbnNuZDB3WGdVMU1sOEJMNlo2T0VmODJtbWIyeGtrS21XdXhuMWkr?=
 =?utf-8?B?T0hzalNUOVBDcmZmajNZMWdxem1UZ2FqeE0rU3U0UEdXSE9zUFNTR1Z6Ry9u?=
 =?utf-8?B?UGdpdGhOenZKY2ZsU2grZDh6emZHNmVyQzAwTklySGpPVE1oMzNRUVlsckwz?=
 =?utf-8?B?RDNXeVdzYzRYb3k3TElvdlFNZ29DOE1Pb1cvUnQzb1pFTHRzdkRiZVVNT2Jr?=
 =?utf-8?B?Q09vSjdwRnFuMERiMGNwUHd5YmNhY2N4VWF2SVNkY1hWM0MrVVd1SHF6Ukhk?=
 =?utf-8?B?enQ5Mzg3aDFyc3prSHFCRks0UWoybXQ3Wmp2YjZMejMzbFFBNURiemZKVkNr?=
 =?utf-8?B?MkxCTEQvTUNsWFdBQ1RNZFNYZzZ5cmFuU0Q3YzluN29hdDVqODhSMHoxbEZv?=
 =?utf-8?B?WDZJT1Z3aG1kK3A1eUpraktCNGJRRkJEN0tYYURnNEtaSEhmYmhzRmVzWmZt?=
 =?utf-8?B?WHloTmMwWlRsQUVQaWJBcXBLYmR4WmRMM2NPZU91cGxnOGEyMzcra2pmcngz?=
 =?utf-8?B?ajZqdDhlbGpCVnM2SzdPaldKK1A5T2tNRnl6WWwzeU1PQ0hVWkd6YlBYLzcx?=
 =?utf-8?B?UDBzdlplZUlwQ1FORFpuWEs2YmpEQ21vK2FtK3ZSQkxKcWZ0akVNeFdlRjVW?=
 =?utf-8?B?MElqQWthekkySXQ2Zmg3M3NCOUV0SEtyL0hWLzZZNTJkZlVyclpKL1AwN0ZY?=
 =?utf-8?B?SWltcVFqdzBUUGpMdm52ZlNJZDhjUERnM1RDZXFqNWgrbHFkeDVxaVYySDJh?=
 =?utf-8?B?VjdqdmRONlQzSU55K25FZFE3enRlaDBUYXZBekR4bHdieUt4UzY4ckJXNzVB?=
 =?utf-8?B?dXUydjhxa0tiS0daTEdGZER5NUczTHFNbUxyVXVpZ1FQT1gyOVNTamJpSTM0?=
 =?utf-8?B?SUVBaU1CcW9GcFR4dDQ0dFVWWDZoaXdJU2JzcmpWRjhMc1VSMVF1cFh4Q3pN?=
 =?utf-8?B?NnNsdWlsOHlQMkdmMHo2bDdwTHd3NUU4VlZqdXkvU09mNkJ0TEd0WXI5Nmxy?=
 =?utf-8?Q?ZpFe/Dqa/TlMZDPx8WBRd+t2H?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a57de07-9b7d-420f-bf2d-08dbefa72e6e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2023 00:15:52.1965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q6/PWOsRkygPFzYiMlMzfJHHXMx4krIESBZzBsxLs3oPY46Bwk+eiQgx3canG5KgRIvXEjfPtUiHuTywSNV/oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5145
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701130557; x=1732666557;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eg5Ei2n6dao9SYBJ/2r6EUjDxL1Y9wvvcWlwMc7aU0Q=;
 b=afUkGzCXAX/XMShZhZk1WEsGLfEnInznyewswfVJJS6k5qOnIOrSnSnG
 ED0x/CrwNnU77IltT279VfK063j7kfy1sDST9I1FsF+K87gtxUM517w8L
 yhgeUsUFJ7cVw+4PjVIDfZ3kaH3Mbs44AzxNyeDRMTX2QTGsrlVrXOce3
 yAFfbjUN7Rgvr0IWAXIXp2NPc9ZFzI8c9yrR/4z00mRBEU8EsRkisiELX
 QNH/Gb6XMEG7XQoQbZnmtT5SZEAIIgqJOIWfr/P2b90cFv+TzPfQpjw8d
 kApXwfGSU8XWTKzrjRfiYUCJXszkapghBZLW/SkRu7gwldklRb44b8n1x
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=afUkGzCX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, "Chittim, Madhu" <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 11/22/2023 7:22 PM, Jakub Kicinski wrote:
> On Wed, 22 Nov 2023 14:19:14 -0800 Zhang, Xuejun wrote:
>> The proposed API would incur net/core and driver changes as follows
>> a) existing drivers with ndo_set_tx_maxrate support upgraded to use new
>> ndo_set_tx_rate
>> b) net sysfs (replacing ndo_set_maxrate with ndo_set_tx_rate with
>> minrate and burst set to 0, -1 means ignore)
>> c) Keep the existing /sys/class/net/ethx/queues/tx_nn/tx_maxrate as it
>> is currently
>> d) Add sysfs entry as /sys/class/net/ethx/queues/tx_nn/tx_minrate &
>> /sys/class/net/ethx/queues/tx_nn/burst
> You described extending the sysfs API (which the ndo you mention
> is for) and nothing about converging the other existing APIs.
This is extension of ndo_set_tx_maxrate to include per queue parameters 
of tx_minrate and burst.

devlink rate api includes tx_maxrate and tx_minrate, it is intended for 
port rate configurations.

With regarding to tc mqprio, it is being used to configure queue group 
per tc.

For sriov ndo ndo_set_vf_rate, that has been used for overall VF rate 
configuration, not for queue based rate configuration.

It seems there are differences on intent of the aforementioned APIs.

Our use case here is to allow user (i.e @ uAPI) to configure tx rates of 
max rate & min rate per VF queue.Hence we are inclined to 
ndo_set_tx_maxrate extension.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
