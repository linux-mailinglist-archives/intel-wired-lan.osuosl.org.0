Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB6F8A9D1B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 16:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D6254095C;
	Thu, 18 Apr 2024 14:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A56rzqxkdZ-w; Thu, 18 Apr 2024 14:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21E714095D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713450610;
	bh=Rz48M4gaXIbmU6BEm3R5XkFc3y1axa2+ziZej7zvyM0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E3pgQ0w5TBM5khQHzvQJ8TWCBdIxZIh9UQWTpMuZ5Ejy3eXjeOW+BiGXPe7/cd7aj
	 ltiT8TxuCpdu/KmJJlPPKM+9BIVPu5Ji92QhG9QxgrISEJlMRjN2Z0mX3TcZSfOPK5
	 fqC7fT6VIuQXrpsaphpUnUTwR5vG4uU7i0jUXlDktkYegvLRqhYV1hSvq/VZeelNya
	 OkTlw9VVjBfNyRtX5Uu1N9MQP6B0gnhLbXCyzLEFYkcBt0p6rdHrfErhyxdl1ILk8s
	 Png8WknYj9ZZsGgYxUae6zOj6DEOAygPgMZA8GS1kx718QmVN6KgGOZzRdqMlsEStR
	 ymzMRgc4oCcJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21E714095D;
	Thu, 18 Apr 2024 14:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87A091BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FA3A80E13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:30:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4Nzy9IzI6u2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 14:30:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6C2FB80DD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C2FB80DD3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C2FB80DD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:30:05 +0000 (UTC)
X-CSE-ConnectionGUID: /6VulEinQmWHQjsHx/4ZfA==
X-CSE-MsgGUID: y9gBh4trQcerxpsluijGdg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9548982"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="9548982"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:30:04 -0700
X-CSE-ConnectionGUID: e9/PvxKbRzyOT7t2T2O58A==
X-CSE-MsgGUID: C1PKWFELQ7eWDJz6WNB3rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23029145"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 07:30:04 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 07:30:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 07:30:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 07:30:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1NjYn5N2Eg88rP2aKuUhNtoEE4x36R2qYVpgUkHk8U62Q0Ht12/WOTgag3kxgDAA42GbZ/Z2aBz9NlzPv4qH89j5pe3hCIRkp36K56gf5kDmrkl9m2JZan3wbJjxGMS0kWuN1bmw4tXYoJ6PiyYFPMUpYl4s9NpH4CWw+3mRnnWkX5aVCwbSx+6nLdq3D2a8e5y3/HYdt4NYgWqZ9YWNLcVcVRRpQYyU/Smby3VWu6FMip8FJcbQzsKp7WKg0pQZWWew36GGHxJjXgOR7UbQCSHzulKdxuhFeTkv+nWHibIVid/Tt1JLAp/OHYMJYlpUJo4NYuOxfujnDuGt/3NXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rz48M4gaXIbmU6BEm3R5XkFc3y1axa2+ziZej7zvyM0=;
 b=HICs4h2ba4AExOMWVJEAE1bG+AFtGrBsGOttIKWYglXDtUGsUoxYFuqWh1xy0vn1LaP36gkCPxW5SpxrAv7m8+kE00cKSyN5qKlIHAsIwdAvA6tvqea75+bAgOTSSyMS0lWgzI42Nw8t5D/kedyLkmnFXi+740X+dzN+Nrdzso+Q0PYpPj2reg0GELxGxoPbI/5kPASjJAX1IBwqIQpWlkK2Va0I83Alg0MlfpoNirEreNfkTHlllg0z+ncqBn06pPSKhMgnMkAcBUMgmegu324fSLZLodid3TTv3pA4pNExuKhXPkxh0qNZIQnUvm6rITtpv7FuntoaPO842z+Llw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by MN0PR11MB6109.namprd11.prod.outlook.com (2603:10b6:208:3cf::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.28; Thu, 18 Apr
 2024 14:30:00 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%5]) with mapi id 15.20.7472.025; Thu, 18 Apr 2024
 14:30:00 +0000
Message-ID: <2227faf4-dfc2-4c30-bfe8-874ed1d22743@intel.com>
Date: Thu, 18 Apr 2024 16:29:53 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0033.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::9) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|MN0PR11MB6109:EE_
X-MS-Office365-Filtering-Correlation-Id: 608c00d8-362d-4828-c7b2-08dc5fb40756
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CWqBptMJdkUr5Hrw9Q64mozf3l+2T96M2V2JspR3G8V94u2gBcGHDlfNSliDlj9yG/Qk4IYCojo7K01qPd8dtN3LNd68jnkjTMRiKcRayRuD0CacRinq+LFf4/ecEUkqytAJXiDc5vK4pE5IuzhPjpIkkWlNhgAckoDtfhBF7Dki9x7Clj2tpt77mG0xpLOMRrYGHgprwXYF1sj2Zittyne0gQf6q4+twO54q22MJeB/7xQD1nrzsL7+Ash0Y3kjLBY1IeTOFn6FzWKVOXQiRV80XbGqgFERqbqvx4Da5W0WTOo0SPYiI+e8w2tVz9natwpaVbmYdCfM58cKy+EC2gGWB5/D6yfUw/g44RmuCoQunS/EP7BXLlJFDz8ziB92zAbseIJxdyas3H/8XM2SRcxdaPjAN75Fg+3KGYW/6p7/5zNH25py4q+/WNhchJKnDFyhYRjqpq2SWvvwSv5kJc35C4nGI2EnHIJ/NlhkPYo9eyOt/oLxKjiki+FAFdtDmcYgTnvvWiAq0f0dKi75xxM/VXGiLw65BAXZWvWpfjyI8izE+Fy9I0aoQamV1FH5qKQ+xWT4/QdWd6ZIcHIGnYbroWnROPMW1FGxSmR2uMcmR4a8RUnM4un+hzfL4NULJo8yFFriz349hSu8ybs5YicwLFT2zLYSCW2/pTutpK0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b29kdTcvKzRqSHRqVHg1YTlLT3gwSndpTVRFWWx5amIrb09xUGZYa3ZNQVJx?=
 =?utf-8?B?WWd6KzhabXd5QjJVdXE4bHQ4dUkwVVVNeDZyUzFEeXZYUFVpNGhkZGlQR3py?=
 =?utf-8?B?MExITXl2dVl0TnNmQU9JdWp2TE5yUENwc3hxNlZTUFBsTDNXU3I1VHZLNVVR?=
 =?utf-8?B?WXR2OWtkYUo1RWN5eHhrTStGRE80UENSV25qSkJHaFdjU2N3WWRSSkRmNFhX?=
 =?utf-8?B?eENkcGlJRVZEZGN1eU5jdno2c3pmc2lad2J4WCtpVVJENUpNUEtIanFyQ2dD?=
 =?utf-8?B?aU5qWldQbEprRFBDQWJmTlBoRWc0SUhQQk1uaTlodW42T0xXMU43dml4RzJq?=
 =?utf-8?B?TVJRVTlLUnlINzZ1clQwdTJlSTJmUmtIbGJCbXc2djJmUkZXUEZHMTVtanlY?=
 =?utf-8?B?TEs1b0c1WnBxY3NMb0s1TEpBelNtYStRT2xmZ25SVDVnZnVEQ2hrSTFsN0JM?=
 =?utf-8?B?aElmQ1l5TmdCRGEwZ01rcEcrN3h1Q0U1UDJGN1VNWVlldkYyR09GRUZiSXZQ?=
 =?utf-8?B?cGJETkI0cUJGK2NGcGt4blZjemtsK2N0OTBUSjUrZTZlNUpCQWtHdjV6Mk1o?=
 =?utf-8?B?aDJvUk1LOXRqa3BUUG9IVEN3aTE1M0MrSVFVL1JiM21mNmF0WXdnZDgyT3ZO?=
 =?utf-8?B?ZjFlK0MwMURsNS9HRkNLTGJPWk15UmhOWFpWN0N6UVVvUTZqUWJsNWlXSnhz?=
 =?utf-8?B?dEhEQ2dQMmxWRHFDS0tjdCtBZkZIemM5RkVmWDNzNTFsQ1NONkU2NFhDVzZC?=
 =?utf-8?B?ajJmVXpLNjA2OG1VR3hoMGx5Skk0dUF4Q2ZLMHV2bU9aYkNGWFZ0UXdYdy8v?=
 =?utf-8?B?aWFLMlJsZER3UjNPWGVveVNtVXlKcjJZTzhoWkdIaHpGVVU2OWZjTDZudzBq?=
 =?utf-8?B?dGhtYzFMZTZYaElTa3ZIUlJZVWZKRXd6L1VLRW1MODQrWkFhSHhrTUdLdk91?=
 =?utf-8?B?Sk53UzhFK2h4NE9PMlN0cEIyNEhMMU1wbGxNWGVBYktiWE41c29DVFBSUS9z?=
 =?utf-8?B?OU5uSEpvb1gxbC9YWjdPWkJQVi9lU1J2OURVRWdLaHFDK0Npa3YxbmduV1hu?=
 =?utf-8?B?WkIzdDJ1azhzajZhR3ppUzh4b1JPR05DU1FpWGRhMXYrY3ZZQmp2Q05nNHlW?=
 =?utf-8?B?TkRwbktXNjZoK05wdGhYQjFEQ0dMUi9WRTVDVHZ5RkhmeXpCVUJ6NW9sOFlZ?=
 =?utf-8?B?SXF5R0FRVjZoOGpLdEdyR3BZRnZuYUVFZ0lHZnE1M1daYk9vbW9lZlNSZW1I?=
 =?utf-8?B?YS9rYXduNnhtRE5yMWFtVkJFWGpnK05uUzd5Y0k0MmZNSGp4SjQvSmNFcDlh?=
 =?utf-8?B?V0J6U0xiZXVYdUIyZVJadkFKcmgrTUpUc1VZRlRTTFZhTmJCYm5VWjdnNnV4?=
 =?utf-8?B?ZTRmVFVLS2JMdFcxUTh5akl5U3BrdXlaZjhWWDVycTU2RnJVTDYrWVhCTm5s?=
 =?utf-8?B?SlByV05rOG9IeHE5OUw1Z2tudjE2RVJsVXZJM0tmbWd4bTl3NFRNdVJPbDh5?=
 =?utf-8?B?YVVuMkQ0RE1mVHd3R05rYVNSeDhjVXVCRWN5ZVJ6bi9XUTZsZmd5TThxYkc0?=
 =?utf-8?B?ZFNXN3E0OE5iSHBMQnUyK0RpblZIYlJCRTgxa3VjVmNGaFBDM2pFaUpMVTlU?=
 =?utf-8?B?bFpvQnR5TlhxaUp1RXh6dFJkeWxUYjRwNE1yWHZ2alVUanRRZmtjZUh6a2V2?=
 =?utf-8?B?cWVmbFloQnhlVlljUjJ1WWNsZ29Ob3dBLzVjTDdySEkwdkVCeGxuSmd6dGgy?=
 =?utf-8?B?VGExRHowQmx5MnVPK1R2NkRERzRGN1JLQ2tTVXY4NmovS1djTUJUZk5NcGM2?=
 =?utf-8?B?ejJ0SDJZQjJmeXNiNWRCcnFKMytlMTh2dmhhL2UzS2hpYWlCQjBlVTh5ZXBz?=
 =?utf-8?B?anU4STRwZFZERCs2dEpxYnVIQU1JcVlmaU1MMUplZURGUjNLWEU2dXlubTRp?=
 =?utf-8?B?OWRvSjNWeWVreHA0YkwrTWVvK3RZS3Uza2pmbHpHSTc1TWFvajBuWEp0WVlU?=
 =?utf-8?B?UVdNcUx5b01HTnp1cWdKWHJETm43cWtrMG1ZT0t6Z1lvUEszUTJ0L1JWKysv?=
 =?utf-8?B?WFNLQStGYnd2c3BGZnlwRVZUZnErZDhiUGg0MGFQTGJXWlRUOHg4VldnSVBL?=
 =?utf-8?B?M2xXRDdLbld2S1M4Ulh6cGFoWVF6NjRYTGQzWUM1Q1A3QzI0dFlEYW9wOUNS?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 608c00d8-362d-4828-c7b2-08dc5fb40756
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 14:30:00.3158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X1/f28qJI5Gv71e98fNUioL9kCJK4wXwyhxBXV5TNsFfhZAIxZ+/t1xjdbqb29LsOtWE4F5mqYhxht8oe7dcuq04pvt9OH/H7aVF7rSi6rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6109
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713450606; x=1744986606;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QMvVIVN5zqm5Gzc70iZVdQlKmFplLiy8KRgnmr9xKHY=;
 b=YurA/vuice5C5u3gUAdMUp0AYRrC0NZVpHw/huDWw4ghZ5CU4G+QNbGo
 cwCG+zdoTQPZXEvWZIwsMZVGPBlLaWpJQcInfH1qEGovRHZBz/OiBhvNZ
 RJqTYjXZ/Uih+sZBQ8w9Mtq5lUZKaOY0pQEuijSMmdle+OX2mdil/6t5C
 A7STHi54VY3MNaakWssMQedlNdWOHzjy9/0GKW+qAxnTlJv0e1vX3I8Ib
 XlOZ0Lpf5qBAb4nzcx79fI8HUaBx/EaxsSaDOCwLn+YYUvMGs7AOzJrW8
 P1QdVvCDUcJWHS0W25lZQHKBFoy3uW8/ST//pjm7u50ScspyEzqxc90sm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YurA/vui
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 00/10] net: intel: start
 The Great Code Dedup + Page Pool for iavf
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/18/24 13:36, Alexander Lobakin wrote:
> Here's a two-shot: introduce {,Intel} Ethernet common library (libeth and
> libie) and switch iavf to Page Pool. Details are in the commit messages;
> here's a summary:
> 
> Not a secret there's a ton of code duplication between two and more Intel
> ethernet modules. Before introducing new changes, which would need to be
> copied over again, start decoupling the already existing duplicate
> functionality into a new module, which will be shared between several
> Intel Ethernet drivers. The first name that came to my mind was
> "libie" -- "Intel Ethernet common library". Also this sounds like
> "lovelie" (-> one word, no "lib I E" pls) and can be expanded as
> "lib Internet Explorer" :P
> The "generic", pure-software part is placed separately, so that it can be
> easily reused in any driver by any vendor without linking to the Intel
> pre-200G guts. In a few words, it's something any modern driver does the
> same way, but nobody moved it level up (yet).
> The series is only the beginning. From now on, adding every new feature
> or doing any good driver refactoring will remove much more lines than add
> for quite some time. There's a basic roadmap with some deduplications
> planned already, not speaking of that touching every line now asks:
> "can I share this?". The final destination is very ambitious: have only
> one unified driver for at least i40e, ice, iavf, and idpf with a struct
> ops for each generation. That's never gonna happen, right? But you still
> can at least try.
> PP conversion for iavf lands within the same series as these two are tied
> closely. libie will support Page Pool model only, so that a driver can't
> use much of the lib until it's converted. iavf is only the example, the
> rest will eventually be converted soon on a per-driver basis. That is
> when it gets really interesting. Stay tech.
> 
> Alexander Lobakin (10):
>    net: intel: introduce {,Intel} Ethernet common library
>    iavf: kill "legacy-rx" for good
>    iavf: drop page splitting and recycling
>    slab: introduce kvmalloc_array_node() and kvcalloc_node()
>    page_pool: constify some read-only function arguments
>    page_pool: add DMA-sync-for-CPU inline helper
>    libeth: add Rx buffer management
>    iavf: pack iavf_ring more efficiently
>    iavf: switch to Page Pool
>    MAINTAINERS: add entry for libeth and libie
> 
>   MAINTAINERS                                   |  20 +
>   drivers/net/ethernet/intel/Kconfig            |   7 +
>   drivers/net/ethernet/intel/libeth/Kconfig     |   9 +
>   drivers/net/ethernet/intel/libie/Kconfig      |  10 +
>   drivers/net/ethernet/intel/Makefile           |   3 +
>   drivers/net/ethernet/intel/libeth/Makefile    |   6 +
>   drivers/net/ethernet/intel/libie/Makefile     |   6 +
>   include/net/page_pool/types.h                 |   4 +-
>   .../net/ethernet/intel/i40e/i40e_prototype.h  |   7 -
>   drivers/net/ethernet/intel/i40e/i40e_type.h   |  88 ---
>   drivers/net/ethernet/intel/iavf/iavf.h        |   2 +-
>   .../net/ethernet/intel/iavf/iavf_prototype.h  |   7 -
>   drivers/net/ethernet/intel/iavf/iavf_txrx.h   | 146 +----
>   drivers/net/ethernet/intel/iavf/iavf_type.h   |  90 ---
>   .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 320 ----------
>   include/linux/net/intel/libie/rx.h            |  50 ++
>   include/linux/slab.h                          |  17 +-
>   include/net/libeth/rx.h                       | 242 ++++++++
>   include/net/page_pool/helpers.h               |  34 +-
>   drivers/net/ethernet/intel/i40e/i40e_common.c | 253 --------
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |   1 +
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  72 +--
>   drivers/net/ethernet/intel/iavf/iavf_common.c | 253 --------
>   .../net/ethernet/intel/iavf/iavf_ethtool.c    | 140 -----
>   drivers/net/ethernet/intel/iavf/iavf_main.c   |  40 +-
>   drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 551 +++---------------
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  17 +-
>   drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
>   drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 111 +---
>   drivers/net/ethernet/intel/libeth/rx.c        | 150 +++++
>   drivers/net/ethernet/intel/libie/rx.c         | 124 ++++
>   net/core/page_pool.c                          |  10 +-
>   32 files changed, 836 insertions(+), 1955 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/libeth/Kconfig
>   create mode 100644 drivers/net/ethernet/intel/libie/Kconfig
>   create mode 100644 drivers/net/ethernet/intel/libeth/Makefile
>   create mode 100644 drivers/net/ethernet/intel/libie/Makefile
>   create mode 100644 include/linux/net/intel/libie/rx.h
>   create mode 100644 include/net/libeth/rx.h
>   create mode 100644 drivers/net/ethernet/intel/libeth/rx.c
>   create mode 100644 drivers/net/ethernet/intel/libie/rx.c
> 
> ---
> libeth has way more generic functionality and code in the idpf XDP
> tree[0], take a look if you want to have more complete picture of
> what this really is about.
> 
>  From v9[1]:
> * pick Acked-by from Vlastimil and a couple Reviewed-by from Przemek;

thanks for the updates too!
I've read the code ~two times across the life of this series, nothing
bad spot, so for the series:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> * mention that the libeth_fq::fp kernel-doc generates a warning and the
>    fix for that is pending on the linux-doc ML (Jakub);
> * no functional changes.

// ...

