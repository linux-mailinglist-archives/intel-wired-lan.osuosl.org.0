Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F60369242E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 18:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C06CA41A45;
	Fri, 10 Feb 2023 17:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C06CA41A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676049160;
	bh=z9v4DIwa/NdO48DrSd5o40A5WsjZkmeYubgRNSyAVhU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MZKqf/RH6bhI9JeH4VJPGObTHfLzk8pnvw0zDvO7wpws6bxXYd9ItwFN52c2eGAdu
	 2ifNHosXaXw6PAyO00HhaAE8tDM8ykfyz6stJAYb7cD+PytgexXqRMgfjPN1dz1Nfe
	 9Fm00g9ANB1Gok/5ylGi0lrW/yN4AWVwMbfDAYHFAFYcXv48Tb7KnusziwbzGIhtvR
	 mFYUdVstKKG7+/O5iLCPv6i1g6zlv08W+uCwgQncmkf+3Tqa6LIxkur+UVusMHT0Sb
	 xhbmQtiPMiAjogrbOUHFpI6v13ddmwGoCfY0n99fXWKv3UzRqgH2KgASGEOlMoMjB4
	 O9qslrCTFsoYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kRvr2GP3tfPl; Fri, 10 Feb 2023 17:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6509141A09;
	Fri, 10 Feb 2023 17:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6509141A09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ADAFF1BF479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 17:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8ED736100C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 17:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ED736100C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ID_chr5tJ8s7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 17:12:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB4FC60E65
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB4FC60E65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 17:12:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="395077491"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="395077491"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 09:09:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="661466767"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="661466767"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 10 Feb 2023 09:09:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 09:09:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 09:09:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 09:09:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOrNLl48J+4cwTygf4cR3hqLM+Ah91GVmBxVanYOua/oh64klydY5vSHhm5yXJ5kry6RETqDIHPXzY3V8/g7gxBAo7SnD/JLaN+dT4l/abEOTEJntOhDKaXkhewAR3TFajuDeUR3C9Mc1UuA5XYLRSkmoIld/Jw3FdNASpCJ1rGOYppf9+ltjDxVQi6FYLnKtfMEu/YHSpiFHW/CkNeewXEx+czZzlhWsQ63gd8/hCcsVYjqOBZE36kU9+nndSfMhu1au4bcEH+wHdGtLsLrmAlMkjSoGjjGxCL+nOh/wJT08XTk3e6xq44JiDE58i2BnyzzkHV168O17jP2SQGhjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KKLNkATYez2TKGnmt1xFjpMfiYCtGoMsGDOhUFSnV5A=;
 b=aOnUR6lKGp+1pJvzNj7S7wqGTCo09KCKljNgVJX5wjzAj84mdWQnzeupLJe4hBRAM4ad3Z0FsaiLmTCZASpvU6I7RDaAw9c3e80qSUnKX1y1HZGrAYQSk5qjVtcDj1/89PvdXBVI1zG3bqijTclJnaRyh95pVkWtTgvsza5PC2iJInwjdUxGaYaQxRgFFCBIR5wFoLC+90I/Oo+edjWS7FXnfrPsRzO/5aQOLDb2AL6YbgNmtw/rt0vUq2O75dubcQLbmDheyMCcHLjp0lJAUnothGEbU618JpnbApKqm37KksYzzkWjqdMPnIAOIKJHQfqB8+8gcvz7cG2vbHst/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MW3PR11MB4731.namprd11.prod.outlook.com (2603:10b6:303:2f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.21; Fri, 10 Feb
 2023 17:09:22 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6086.021; Fri, 10 Feb 2023
 17:09:21 +0000
Message-ID: <831dc822-5464-ea60-a688-43be86e55474@intel.com>
Date: Fri, 10 Feb 2023 09:09:19 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <Y+Oky4j0zDyfLp8r@localhost.localdomain>
 <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
 <Y+Xep2FQgmEWdzs0@localhost.localdomain>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <Y+Xep2FQgmEWdzs0@localhost.localdomain>
X-ClientProxiedBy: MW4P222CA0030.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::35) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|MW3PR11MB4731:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f7f3c0b-d9aa-402f-9060-08db0b898d67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l4fhodbN1fRKxo0frpAHCJHbmZ4Ks6nTt62ufKP1WcnrqxOjwiox7s2vEiVs+vVHXfclszpywwcB5WmW/7yAcnlXObKe0tpB5T6iCC2ifqXjvETpWyIpiFMDRZymebrwZRWSRQS0KN8+eKvKPQYb9jlj9dNikLJyMaDPU67rZ/lyvjmrVk0dCRsyEkFpjD3Xso98F90GdV2h9tu42mrHQMJca6EGMC5naci2xR2wqem9e4/i/FL063RKhvw8JUyN+3/zM/kCOTmfzsg+cO9svBSWPP+VnPBfhnX3UkWgAwGjO0/3eEaiY/67RVOvX2tWHh4Ti5CX1Xcy+Plnp4GtHbREmuIvnUSamC+8T+ZS/BL69AeMFdiqzZMaI3Mm5Y11EpVDXwP3Z+2yZ3+u4IEgt2XmTD8i0wWpmIxNDR4s4Hpvx6qHm//52Q7oT92nsGsMaYARUmFtQBj2aQqNh8cwl7ZkBc0DlfJxVSSP7vUiUwhGqp3VTO9ozybtLpBHqGw84B+XniBeuZoIa7KvUxOmF/qFEcnw5stCWEC2DvzBMo7He31EVRY6Wzywk51+1N2kDbrr7+8is+YmELrHSFjOkg7MJgdRwry4kAOH5knAqBHpya78IkxNNk7xe27hH19KBwpBNkW8ALvGAGX3djgoBasvTeq97zKgKcSwGwqzNwBfi1SHzxYIe+drOepeJS5CP2i+izKEWH3bu6hHInrHhJNvqp2sQUUFWhYRiNrtURQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(136003)(39860400002)(366004)(376002)(451199018)(83380400001)(66556008)(66476007)(66946007)(316002)(8676002)(8936002)(5660300002)(4326008)(6916009)(41300700001)(478600001)(6506007)(6512007)(186003)(26005)(53546011)(6486002)(2616005)(31696002)(36756003)(86362001)(38100700002)(2906002)(44832011)(82960400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MlMrNXZNUUozQkg0RzBBdDRaME5LWTdYVXV2azcvTjFzRVAzVzQwSzZ0RTlS?=
 =?utf-8?B?Z1VVa2ZzaVVmcFlQcVdUSWF5b1o2amhlSXRyTVRBYVpTMVhqaGZpS0dFdzNx?=
 =?utf-8?B?Mm9EZ3lEKzNMODNlWE11K0NIUEZna1pqZXNaekhDM01mNFQrUm9wSHdIU2RK?=
 =?utf-8?B?bE5oNmdZcXowUTZTVFZxV2FLQU02N0p3bmd6TGdqQ1g5Y0VSUFBjb2Nydlo2?=
 =?utf-8?B?eEhMdGdLWTd5NFo5Q0xiaTlFaVJ0Ti9uSXNyWElEVVI1WDBBbVVmRzJoUGlP?=
 =?utf-8?B?Uzcxam8yemw5K2RUcnM4bjNaQlFaTk5QWnN6ZzVjUHRTeWZMa0NmN3N2Qkt4?=
 =?utf-8?B?WVRmeVNjTTlIWCtGeERFSmk2ZWs3N0E1VS9RdW5lNTdIaXpRaXVqTDBQTW1T?=
 =?utf-8?B?S0tFRjhkUlRVSDQyd0dycU0reG91N01yQS9WVjdJMUQ1VW9PUkY4aWFYdW9v?=
 =?utf-8?B?T3NQam1DZDUzblN6dVRqcVVhRGdGK3VJYjZBMjk4NHVtY1hGR2I5MFBUN3Zl?=
 =?utf-8?B?ak1XUFlIK1djK3FpWmhvaEJoT29zaXZTaGdqb3Jpb2VNM3RtSTRtNGtaWFNr?=
 =?utf-8?B?OVp6dHdGb29hRmg3VnJueVFEcHRheitNQWNlbFBpc3o4TFplZHZtZTBxOW5K?=
 =?utf-8?B?S3J6dlpIMnFIYTZIOENmekVOaGtTVEpuZmtFdUFLMEowTlphSzVGcGN6ZHcz?=
 =?utf-8?B?aFpYRk4xOWlBKzRsSG81TE5kdXl0QzROTG1ndVZUd25hL2dSdTFiSm5IQnlF?=
 =?utf-8?B?disybEFqRlFaRGZ5a3l5dk5UZnJmOFllS0R4aktMbXBhUGJKQ2hhRVEwQXkx?=
 =?utf-8?B?S2hScjFlb2ZhdENpTXVkdVd3dXNyakdXK2kzYlNwWjlpNFJadWo1d29OMElj?=
 =?utf-8?B?OTRYRUxkMDlseEpaUURZNXB4Ujc1em5GeXQ3VWZYMGVhbFJtZ0Y0K3I3eDhE?=
 =?utf-8?B?MGVncUxOVTlsZDErbmRXQldxNGhrUGtJdCs3cXlCWHFVZ2tpOWVkV292TjdH?=
 =?utf-8?B?U0NWaWt5Ums0ZGZ5TTI1Y3FOSjdUcmY0QjZob0FQaFdyQ1V2eS9NeCs5dWlW?=
 =?utf-8?B?Q0Q5LzhTT0ZNdGc3V0wwaUlRcXVTTE1WRVRtdU5LOGM5SmNWQVgrOXFvSVNY?=
 =?utf-8?B?Mm5mNWFXeGdSYXE2RnhLVFBrL1d2eUdwb0VoV1F4cC9ZMkhDYjRGUlczbDRN?=
 =?utf-8?B?Vzk4UDVTbG5DdU5lQ2xQbzAyK2RpcU8zREEzNUxzaXZQOGlYdXl4MjdXT3Mr?=
 =?utf-8?B?NGgwNlR3RTNCV1N4TkhZeWhBR3d4SUt2dWhpTlBQY3EwTEtBR1NsbUltZ0di?=
 =?utf-8?B?eE5UNGdhdllNdS8wLzZxK2pJQnNiZlJwazVMRUVhcVRBSmFBY29kSzRCSGF4?=
 =?utf-8?B?WXNmNkh5bFhIS2NCMVJwajlUS0dybkt5aENoejhYMkcvRFlEOXZLRlllLzli?=
 =?utf-8?B?VWlMMGFudldGZnlWYkxvZUVoVGoveUZocFdTK2ZuL3Z0ZjhjR1g3aHl5Z3d0?=
 =?utf-8?B?alk0WGtZMmhVbEFrc0U4aFBCNkdBRDVZWE1reElHV3NxeUxvSnhpakVVLzd3?=
 =?utf-8?B?bFgzV0loamFXY25mRUw5blZjUjdzem05dWNtM1d4NnpiVFJZcG5JanFBVFFs?=
 =?utf-8?B?VU9nTzBQZFBKblVqUUhlSDBqSHdYWll6dWhqWTlWQ1lwaXNCcnNpc1BnNFVW?=
 =?utf-8?B?NWpwMW1UWWpVaENoaEY2QlpIMmZxTEpSM3cxT245WDA4TUFWdjcwT1libnpH?=
 =?utf-8?B?eE00SnJ3QS84Q0JWTUpjWW42NXdkdVJXUnNtZDRwaXNSRDNZMThTVFJoREZm?=
 =?utf-8?B?SGtidVJ1TUpTRzV3S1EvWHBKSnJKM1Z0RVVYalh5aStkbld4dVNEWUxCR3Zy?=
 =?utf-8?B?dmxTWnk3TlFjSktwaGc3b293UFJrc21mekxBeFRFQ1lGN0I2c292WE5XbzR0?=
 =?utf-8?B?T1owWGNXQkNDVm9rbmJMTTA4ZW5lVFhSdmdYR09pK0MrWWtyVHg3RW12bjdT?=
 =?utf-8?B?VGVNUk1JQ1QzK2xTUHVkUmxDTS8yL01MMWVGQmIrWGExOWxjWGQ5ZllyQkg0?=
 =?utf-8?B?c3M0YW55ZkJlNzFQdUdadkcremRGY1BzU3UrTkhhcGxpN3FNai9YUDVpR2ZE?=
 =?utf-8?B?Mkh4Q0VLNE9PLzZpbEJTN0trQ1d0ZlJJZG96NnVkZy9zb1pXV0h6eVZJWERE?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f7f3c0b-d9aa-402f-9060-08db0b898d67
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 17:09:21.5743 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fqh6FrM0T+x9CGBblFtgicq3x/Fe7WfG6FuIhv8X/npByq5TYq5BQXIVLwZv2Yx0QQCPxA64e0mM6Qd82GubirCjZ0LlIl7DjNH6lzTI4qY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4731
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676049152; x=1707585152;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+5noRgMzTVx6pMyYWla27tbvG9ePAXQhMXAgGD9K0ZI=;
 b=Q3wURXyvn7N9hcm+wpkEZSlNfxUsQQNCgHgRHievap3K012O7TGW97Fj
 GSLUikGfi1a6VHsEzkpTF0Ew87jnJbBe8kOZBgXDDNJED09e53nD3b0kC
 yws+YogSzziViquH8FVdro/YyhMFGLcgOUJxZpsO0QQNcl8Ag5Ju3D76x
 CpC5dk71evnCaunAoK0/Oakhsq16z8T4cTyxy8Pj5d1/tILc3fUVbu+Gv
 IlS+DztOCh9UQHkRzGQ63SBNzvFXHL/v8x6c0a603C5T+r52J6jqygMH2
 lqYgCmKnREwt9uPlgzVn29P//vDDdodbopr/Ry29kD62EpHv4pUYgmpTv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q3wURXyv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/9/2023 10:05 PM, Michal Swiatkowski wrote:
> On Thu, Feb 09, 2023 at 06:08:45PM -0800, Jesse Brandeburg wrote:
>> Yep, it's always how it should have worked, but it wasn't quite working
>> right, and using bridge "fixed" it because bridge sets both PROMISC and
>> ALLMULTI bits.
>>
>>
> 
> Ok, thanks for explanation.
> 
>  From commit message:
> "The root cause of the issue is that if the PF is asked to be in IFF_PROMISC
> mode (promiscuous mode) and it had an ipv6 address that needed the
> 33:33:ff:00:00:04 multicast address to work, then when the VF was added
> with the need for the same multicast address, the VF would steal all the
> traffic destined for that address."
> 
> I wonder why there is no "perfect filter" for multicast ipv6 on PF if PF
> have an ipv6 address? It is deleted by kernel in this configuration? Two
> "perfect filters" for the same MAC results in packet replication (if
> they have the same priority, but in our driver they have).

If you have a look at the script I posted earlier in this thread, you'll 
see the tree of devices that was created.

PF ens259f0
   VLAN ens259f0.3 (VID=3)
     OVS ovs-br0 (child device ens259f0.3)
       IPv6 addr something::4

This combination ends up not creating perfect filters on the PF for the 
MAC address in question, maybe due to how OVS works?


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
