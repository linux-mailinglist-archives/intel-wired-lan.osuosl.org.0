Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A082C88E520
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 15:18:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2EA64074E;
	Wed, 27 Mar 2024 14:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 65Mc0lyqNNHW; Wed, 27 Mar 2024 14:18:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7484406E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711549094;
	bh=6nO+m5xUudmjableUxEYJMfm2Q5dLc3xurkSUsYlPYE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AO4aDJT/l8vh8I6ennic5RXn7wA4tPxo+Hilww4gT46VrgSYhr31rPMm7iBDlXbaj
	 3V+ndChWPUtZIsdTbEHWoD3Ewmi/W2yBMZWR6Ii5xirSZT6YNMBXusmcvwoYbEDaQO
	 QSbT3Y2bCR6rRKWK+lF9LjbHBMYR/K7fmkBQl22b8bJKKzoVOx7jpZ54+aaYDj/DHy
	 qL+QNaj15zzBJbH8duAM+dOxgL2sFRQqIjW/+NjNs50RfqA1HIHdcbepSAYM4EGd0g
	 EXnn3dNgwFGzy3Ody690KvU/vtLEMoPEucGxOwbcJyoQe/6npR+ss1OuPvvFDY9/s9
	 KDvNccl2Exh7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7484406E5;
	Wed, 27 Mar 2024 14:18:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96DC01BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E7CD40579
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S9ttUNbdgTIx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 14:18:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 166F24015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 166F24015A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 166F24015A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:18:05 +0000 (UTC)
X-CSE-ConnectionGUID: Gd7xGXOhTCGBxx/7qME2qA==
X-CSE-MsgGUID: pbcXfxIOR6Kgp/msnIeyhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6767473"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6767473"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:18:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16957245"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 07:18:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 07:18:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 07:18:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 07:18:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y0qLenlGU5aID8FUXwnAqVoguOJewXdngjQopS50YlNwfooh6PmNhr5V0ygQbKKu/MtjZwhkOBQgjhoNV+ODt0AyZ7iOOtqxpO824/fn6LRrDX3ia5rYc1vt8DJPK/RNf8bj7x3TlSGVWqPaHNU2CZkjA/2ryYOyYihQoylwNVcYMoXjNcrt1kNOdD5SaGEDbcHlL54CBwVyne4mGpJH1brRextu+ND8hokPaSZJ/Jn0mVeZpMQ5S6gk6iWAXkSvqqF/8XtQf0AoomwePd8FLVQxXt5SebjR0tXZXxGIkqn34SuJVYiigilb4RJ2g5OKNw9ccKLkdsT9rDP7LSF73w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6nO+m5xUudmjableUxEYJMfm2Q5dLc3xurkSUsYlPYE=;
 b=HNeLQufldQIRIaIViFD++wTLGWXb+zAcQbVYTGv17wlUN7LmZo0Wvafs1HNVbL+7LoGKduqHjAiImeUYsgl/A5dUfkRFnLIjLPoxFYGPZz44o3ZAgZ1s8AzVHAc2zGm/P2d5y51WHr9dqriKsSXLe/VjoAwi43ODvofimqFRnqtH5mSqnR1DsufhLIeOvPUhlHSMkzC0JR0DfTJ7fNETjAY9YeCpBgLQ8kzrZOfeUPOvMgM3hoUplYsg/yUmNIXQTjjEzAu0LzB8ZivdLVnWbI30hhGfi7CBr/Tp1ga7Gaqf4mHya58SbtFsVIln2adjOSkbYkxhtGCCASjCArMWdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ2PR11MB8323.namprd11.prod.outlook.com (2603:10b6:a03:53f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Wed, 27 Mar
 2024 14:17:59 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 14:17:56 +0000
Message-ID: <2aeb41a7-912a-4176-a73c-841b46334709@intel.com>
Date: Wed, 27 Mar 2024 15:17:41 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
 <20240326164116.645718-3-aleksander.lobakin@intel.com>
 <20240326210412.1bfce311@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240326210412.1bfce311@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0284.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::22) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ2PR11MB8323:EE_
X-MS-Office365-Filtering-Correlation-Id: 72f5cffc-b919-461b-9f3a-08dc4e68b2dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z0mGzkb6QRny/sdba8hvO36Z9tDvxLON+8LUsIk+p0rRQak9gDVMA205CHVKgscXUvCRGZQVinJM9DFo198OR5QmMuGVRPtT5pLoqeQGHU8whF5QwpcJRFKub3AhtyCbUycvXNpy75+kNxvApbRIVEns1aCKDOFKuL+REJHC3mMQ1jVqWDHR/kOfXMddvz5lmgdGYlJZXcBTXHe6xC5vzIg7uHK6wsRGX4USCXS/DBJipaKfTshmtSTeoy8S4MHx+fnf6mbQZsK3ckN1weqWhqfOL04d9h+Yqbh1iFG8U8Tbw7gXD0x8p1PpJKtbow4CnAUf/XyyfhpDnNDNEWTsonpeMa/mahM0LvSyLU3T5LY4gySIxbN36x6fOFdfI2HXJCfZCc11b5clWYF5GxV6b0OTrd8abQk90gH+lMFQCuzp670cX5KMn4xXL7MgJzQEjtqyJUeK0MejF8UOxNelL6TWQhMF9Sw8yjC/Y/LzrHM4MpFdqdjzaR3PFHbyhKrJbSjSriuswSH/IP8Fxu9WFo1nEnTimmesgS4uFHi5YSfxx0fHXXJwqX3yvXwCbMrEbXuwRQ2+IFLDnoUBK6j+/XR71XbklCfLfKmEJE004QapPzKavfpDFCQaP85oFmJY7FD7EliyTxr63jx9vSfebWXwwZSMWPAJBwXqRVTkq2w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(7416005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWNpejJTTVRrdGNSS21XQkFtK0FoVWd3T1RZL2FGTlFtZ0lXczNjRko2VU1p?=
 =?utf-8?B?MUJOWDBIUXlUeklWU3BhZEMxM3ZZT05DTWJwb25QWTIxemsvcFBxWHRpNXE0?=
 =?utf-8?B?WWd6RS8wQjlRaFhVVzFmaS9CRkc4U1ZuL3NXTThpdVdER0FERmF5SEpKNnVR?=
 =?utf-8?B?Q2NRY3JxQVRRa1JQM3JqYUJORU5pUDVpSjVvVVQ2VE1vWTJkZmpmZ3Z3K2NQ?=
 =?utf-8?B?amJqZ1ByYThnZTVvd2xxSm9XbUZJMC90N29NYk1kRDZZWDJ4STVkaHdOamJ3?=
 =?utf-8?B?NVYzN0RrS09JMk5PeDBHekl0Q2NsMDdCNTlDYUFjdkZCeFRYZTJGMTNDU1Jz?=
 =?utf-8?B?UU5SR083R1p2bDBxWFRSRWlRYjJKck9QTXdHVEJuMlpLc0NIblhZcnFxL3hN?=
 =?utf-8?B?WXRRNm5DUGFhNk1JdTJUQjF4cnRCL0RGMHVkWUtKYzVrdnpnT3ZKQW5YbFRC?=
 =?utf-8?B?MkFXZkRJbCs4TEtvb2tBREkreTRWMnBkQ3haaEpCRjhjeWJCaFM4LzR4b202?=
 =?utf-8?B?K0FsTXo2ODh5b2FmQnd3YXdYTDZaaG5DSnJVSTRkM1dFdWRhNXpLSU54Z0F2?=
 =?utf-8?B?KzhnWm1RamhZYTZqNnJwblpNcVF4OHRGTnlxM214UTFSTWdycDlWVDdJVVZj?=
 =?utf-8?B?VTRLWmZsaVJ4NSt4ME5NWmtRTnNWV3dxcmFFRFlDZ1U1Z1dMQWMxQ0RuOUsv?=
 =?utf-8?B?SjI0eHNZZloxZWMraEtOK0NES3lOaHpEUmhMczJrN1RhSTM4QUdxSVp5UzZ3?=
 =?utf-8?B?cWJ0S2c2QVhFTDVHR0lGWndxSXRCL2RYWnNaNG9IQWIvaGI4TzhjbW1uWmcy?=
 =?utf-8?B?UUk2VlgzTlc5OFZkeElWSUlxVWxwa1FyVWVYRWExOTJhZnduUkxXMm10ZTlr?=
 =?utf-8?B?UEpJNWx5anZoUkRzcUl2SjNHSGF2N0tjRkR1OG43WnNnaHFEbU1qRTB4aEYv?=
 =?utf-8?B?VmNZQUtzdXBLdGlrRS9IQnJpc3B4Uzl6bU5VeUN1OGc3WWlKeGNJdU05ckx4?=
 =?utf-8?B?bjJhREV6cWlsK0VBWVJtWjhPNXdaSnFGUURQSFRleitTVU10M1dZRUNuSUlN?=
 =?utf-8?B?UnJLSkFlTHppazUydTlidXpMdW9VZ2hEa3VIQjJEanFFSUxySzZwdm5qMWtN?=
 =?utf-8?B?QVNOWS9PZHQvS1hXTHNmbHFsNm12UDR4aWFkUXFhNFphL2hFT2RYS25CblhW?=
 =?utf-8?B?OVVvd2JjdDl2d2I4RHdIMHZXb0c5cDFoWndmZnlFLzcxL3IySmRmY0xkTTNT?=
 =?utf-8?B?bXFWSkJVdnpBOVNKZHhkTEV6bWpvUEc5eVd1UlgzLzc2SzZKMXlSWFRVcER5?=
 =?utf-8?B?UldTRFpRdnZMbTg3d2RZaFVMM0pYejJXVCtxdVNsamFzcHpKM2hnZkRpYlBB?=
 =?utf-8?B?cEpVSldnT284WjArVXVpN1g4UTNiYnkrRklTMDVFZkhnaGp5THBLK050a3hj?=
 =?utf-8?B?aUVhTW9LMGF4MkdxekZCajZ6OHkzcjY3V3J2RDdFRGtGQXo2N1VJbUNBdjVi?=
 =?utf-8?B?WXhRSWxqZjVuc2MyeHU3TEhYM0VXMStVeXZQcjFQdjMzYUJhQWJIQXZiZUha?=
 =?utf-8?B?ckVKY3RnSi9YUktJMjFlOW15NWFGdnBvZGhkK1RLQnZFY3NXMVgzbHRSb0Nr?=
 =?utf-8?B?UnF2cHhTbElQdTNMWG8zU1dGMkcxbWU2WFJLMThtTHlCRDlOb2hQMFY5WVQw?=
 =?utf-8?B?VzZHY3JyL3pKVDIvRTRQRlIvM281S2QyVU5ac09nenZaa1pkaTB3dzVGbW5s?=
 =?utf-8?B?MEZZREhnbTA1eWdmS0ZHdE0za0ZuMVd5dS96bVRhV1dPTmdDdmF0bTR5Y3Rq?=
 =?utf-8?B?bkFpL2RrK3pZa1ZWTEllWFJQdkRKbFkwWGNEVUhFR29BVDVNcnN2akFMdmVH?=
 =?utf-8?B?M0tBdEU0R3hHbFdsK1JMZ0phM0pYMTAvbVd0WHZzOTRBOXkxYjNtS3g5eTRp?=
 =?utf-8?B?UUMvUjZ5aThEVmNYakFpL09UWXZKdnRnQS85c0hnaXNpbVJUb0xZSW9YaFZT?=
 =?utf-8?B?MVBDUmNYWkczYlJmMWdrcXYyTlcvRGFrMWxmZEdpVkhJNHNXNm0yeitIbFk5?=
 =?utf-8?B?ZWord1R1QWY5KzFjaTlOMGplMVBGMy8vYkhWZTI4L0pJVzJIRHZMWWttWXgz?=
 =?utf-8?B?b20wY1FySEViN0ZleVBuNmgycStGZERBWXQxdTdqaG1CTnhWcDFrWXhDRjBn?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f5cffc-b919-461b-9f3a-08dc4e68b2dd
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 14:17:56.6543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b42yrOw5RwYIFD236iIJ/WzAuexI8VPBX0KT06aTdKUD2dziULqof7bq72kMqSQoVom48myainl5zS/AzqkacRTB96go52bvI/jUvpXRhtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8323
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711549086; x=1743085086;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jv0/qMaC1LUAM8BfOiHKaOzL5YINoBrJhUvLLodQTV0=;
 b=kPJwOO7b9b9tAcKNp9PpgBTdMjzFg15s7+93X7f91XMGofp7AiZnGRs6
 Vis7z+Bl+fPAjqVU7fopajF/tzVRqOxO8mOTmrHt32mgidRWc5DIdanG+
 evdTIROIyuZaFqYFMK/QfA7RwJ2o8PIo0+gkf39v7pEFwQGRsqgjbIBFs
 58yqotlLK177rLa0jRI7DxACWFJ8xpv3fzh+do723cNC9c3zHkuO3HBij
 gDVo35L72sI5y3vrhvy8d/gsud/rjh5Ic7OTd2cegXZehUQxcPdMqnmkz
 /sw9rDNZQd8tKHWTe1LSjM+5gEGKiAKinqsA+ccaUem50WGe8xkLrQh+h
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kPJwOO7b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] idpf: make virtchnl2.h
 self-contained
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Gustavo A.
 R. Silva" <gustavoars@kernel.org>, Nathan
 Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org, Simon
 Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Tue, 26 Mar 2024 21:04:12 -0700

> On Tue, 26 Mar 2024 17:41:15 +0100 Alexander Lobakin wrote:
>> To ease maintaining of virtchnl2.h, which already is messy enough,
>> make it self-contained by adding missing if_ether.h include due to
>> %ETH_ALEN usage.
>> At the same time, virtchnl2_lan_desc.h is not used anywhere in the
>> file, so remove this include to speed up C preprocessing.
> 
> Breaks allmodconfig, it seems..

Oops, forgot one line and my night CI didn't notice anything...
Sending v2.

Thanks,
Olek
