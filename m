Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E9E88634A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 23:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8658D40120;
	Thu, 21 Mar 2024 22:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5O7U98ttNIJg; Thu, 21 Mar 2024 22:27:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 354794178C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711060077;
	bh=QCUX8Oun6JYSLE5I1bYeGJYzq7FyOStr1+7NDovaDa0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sL8km80UiDqgF9xCsUZuWo0TibrL4dLaykgCS7QYHr2xxKKudjlt05Y1LK12x0nDS
	 XbOSW64pJtGpjvxAmTGZr2s+gTbiZJ4NioVj0eaxu7BQ7bSrEBzU9cMT/DdmaueeIV
	 h2tCO198hF5ydNtl8H0BtQa00T5iGCzZd2vTw+iNwYHoclAYde7sDTnA+64qLOgWpC
	 OaAqrwa2MMYqwUqoeYMjtcQNV0ZGQmk2dN871vv7/EJ1khRlKapb3zLqoIv9aCQgyF
	 SPm59MqjAYvA/MDAJGfwEwmqD9VMdJMmUJSIa8O/KpUGiCAA1MOclGNFCSQIehWFQz
	 jZIUnonNyPDAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 354794178C;
	Thu, 21 Mar 2024 22:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F4F11BF33D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 22:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87B27608C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 22:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id elrQ5-PiIMkm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 22:27:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E0EA60692
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E0EA60692
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E0EA60692
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 22:27:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5952975"
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; 
   d="scan'208";a="5952975"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 15:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; d="scan'208";a="45663425"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 15:27:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 15:27:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 15:27:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 15:27:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k9pdZwuQv9NH0yNB7Wb0DSeXhxhDtYX0QhwQFZ6jc1wlhMPkXBEPZtCEsqzhrol607j7MBL2vlUVMu3vOP+lI+QIT0J8m7JXL+EHZRjwndJpp2WkPKAk1X9Rv0IaZMsQQaw36SySU/i4QVOcVgnTz6TePLhNadczeIqi6QGUfzXisj4NiOwBpRrxJM+0HAEdtjZFsDZJEgMKO8qlwBYu1ov05n0Fx7Hw/GCLsXpoJYspZmREH1tuhnjh0w2VeuaHtG0OKIdHEeB2vGAefv903trdG2gQEvUFaWmgSS+6b39BhpGw3MGccFSIe4+ey0yKV7TdPo5+wVrwrutL5dejMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QCUX8Oun6JYSLE5I1bYeGJYzq7FyOStr1+7NDovaDa0=;
 b=JjE6/xG1DI3izCYL37MXbbF6tz12RIvn+97nfjXvIH5sEWKYoXxW3jH+FKHw2gaYdex4n6i5R3HEKcH/ePUZPUzHxdIKWaerAavBx0iFAB0pIvut3boPi8xO1SBG2wS8+i6XEsldp9wv4Wt/yi1pZIzippW+kdeP9B8VMqTJoEpDt+73xH1hRuskLWlfWz4bRRhUXVIrUe3iI/X6F+HPpT+d+vYnm6rxMNVFVkKyb/8VvfF3YsN95B+BwxkYNcsX+9DRXa3yKPFJznC+ZA5ao2prYxzJYEGwfJhFGCkihkk9ioZ8MJLwcPS398HeJ93kbvB2oOsXYkjGfNzxVwLw4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SN7PR11MB8043.namprd11.prod.outlook.com (2603:10b6:806:2ee::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Thu, 21 Mar
 2024 22:27:50 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50%6]) with mapi id 15.20.7409.010; Thu, 21 Mar 2024
 22:27:49 +0000
Message-ID: <b9dc2c7a-2688-4a7b-8482-1e762c39449c@intel.com>
Date: Thu, 21 Mar 2024 15:27:47 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Julia Lawall <Julia.Lawall@inria.fr>, Jakub Kicinski <kuba@kernel.org>
References: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
 <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0247.namprd04.prod.outlook.com
 (2603:10b6:303:88::12) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SN7PR11MB8043:EE_
X-MS-Office365-Filtering-Correlation-Id: afb40969-dffe-4ef8-0c94-08dc49f62430
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dcG93zAzcpcyvo2239IqcR6xEWgKYoObjUgfKVLyTlax/bTmTfThh/XrMqhoFb07GIxdkSFGYfDUSTFrmcw/HiV52dHot8m8Sg2JNmnDF120b96nJ+FFGafuPgbq7BVc6BhucbQs7m75ZKGarip1faeZxfcJu2R2g8pakxvaatfZsHE4EzOyrmJevFN2LLgMXCh++BbIEWoR2K+01elYGegSCJ3W9wCCUiFn7HMpsvOwbGRb37CfpXmCK0WVXq+dRC1Y36GyQ/J2fSrJaaaK7FiQqgwEW6SxfSCBA3AJn2Gw45ss6/KbKSrAb9PMIddb9qcAklBP3cTw0IVOsdbhR3sy6uTPOCPwJ1yg0ZETKX6Syu2kGW/dU8HzfuQT3izPCqJLts9bNREF55i7EjDFuY/NvW3y90rqDfW3BX2GvFiTcYkt4U0Hfked+YYbZNOuv5DrZqnxE0HlVJIfBJlSm+Gk2ws5LwEFWFgWpdyfRBlre7JN2NXXTXr4w72iLIdPl5QFfeDdqCOk5N6u0EfNGyw2hjIXfB4PB+Jsv8DuDi3DnejKHA9ZNfgBcT7mQajmRS2IVifgOsCbVP9sTiwpPCkNvkPL0NCMCG2Y6hx1s+E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(7416005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEZVeWM4aXQrMXpyVjZzU1BralUxN1hOVDZPUGdDY1RkeFpjbDNnYTNMdUVr?=
 =?utf-8?B?QzNPT2l4aXdYWnpTdHYwcVhUdDMvajQ4OG80azJDeVE5cWx2NDVpTzZ1ZDRZ?=
 =?utf-8?B?eWplemxRaEMvc3laRzVjM2tMWENKdnVxUFlEM25iallkVUZPRXlyRE9XSkY4?=
 =?utf-8?B?TkMvNTY0ZTdaN2lGUmdpd21zdjk3YzZnbi83K0xqQWNabEg4U0w5cis2N1B6?=
 =?utf-8?B?ejllT3pxNXZpc01oWWI1TWFKcTU0TjN2aXp0Wmk1dTRmSW1QSSt0VkhCazJF?=
 =?utf-8?B?NGFha0gweTBKQldHRkNidjluVGo4WU9pMitmVllzM2xOQkpMNlRhT05HdHhm?=
 =?utf-8?B?Mmw2R1dBN3VpMHcrcW5SdFdwMUFwTURodE9WUG40a0RsaElvNmJvempWUHNN?=
 =?utf-8?B?SVhlWUFKQkdBMVdvOFVldmtCOS9KRHZYRXFLVWNnRncxTkN1ZTBsUVpXL2Fa?=
 =?utf-8?B?eXUwanNLZGt1MTcxYWtMWkdKRWs0UzR3OG5SRmMxZGdHVk1haUNUYzUyVmds?=
 =?utf-8?B?U09pT1JJd3RoNjhaMTlkMWI1enJ3N0NINXNObTJrZ1ZzUmFJVmRFbjBrWVNE?=
 =?utf-8?B?ZFQrT2g0VVBXamVFOTd5MWo3bTRtR0U5d1diL3JQSFBqdWhocjg0bElpOFFN?=
 =?utf-8?B?U094M25CYk13NDVEZ1huVU4wdUdQQzFDQUNhdE4xUEMxM2pVbWc5cVVjNWhS?=
 =?utf-8?B?L3puSTNxdEl0citlZGxHTWZJdFBaZ2dMM2VTZDMxcXJhWWhpWUtCRTU4K0x2?=
 =?utf-8?B?ekFSL2RmeUNES1FlUmZoN29LblNKZEYyeXhLSmpndGtIaWJoZU5tZFlLTGpn?=
 =?utf-8?B?S0RxRmY5Zm9CMnBTUzlnU2YrY2lMMzhrTzhlMG5keWMwWXpOU2JybmhKQk9R?=
 =?utf-8?B?K3NNcmtuc3N4TGVkd2xybWppeEdsSGNoMEVKbWxQVHR2L3VPU1FuSm5uY0pz?=
 =?utf-8?B?bHNRYk9Jem5pdTlIeVc2NTVuMCtWZEZ3UjVVWTBwS1hKdWhrRjBCOGdscEdO?=
 =?utf-8?B?ZUlyTjEzQ1J4R2ZwNk5HR0VQQlladkdlWmQ1YXIzRDdqQzNrc1IzZE9RZGw0?=
 =?utf-8?B?U0IwQTF5RTJKY2MwWXB3QTU5RkthSTRNcFZnV0R1TmJySzdONUVJZ2MvcVli?=
 =?utf-8?B?TmU3VXV1aUVtSVk4MThyY09CN05DT1lVV1JnVFZUbW42YVNKeTZsUjh2cEJ5?=
 =?utf-8?B?ajR6NmRlTzVMOU95UEkySHUyd0VJVWtGbmpMYkVyaUxJQVRVakl4ZldhRDZp?=
 =?utf-8?B?TitkR2RrMkJBRGtxVENzU1lpQTdnVDFTbU02c3JJaEQvT1F6VWhNTVl2MldG?=
 =?utf-8?B?OG5PeGxFZEl5T3lnYXc2ek5EV0Vod3FabFN1UGplZCs4MUhoOEsvalN3YmM2?=
 =?utf-8?B?emRRNnh2N0Irc2RBKzhCU09Kd2U0bEV1UmJKN0RPblRCM2pSUWZ5aXVVanVY?=
 =?utf-8?B?ODg2a2JUNXRLc3d5KzdOMGg0bDJQT2RidmR4RDhCd3ZMdHZKSTFHMjVDaXRY?=
 =?utf-8?B?eWFnQnVkMjZZUDFoUFFkUkQrUkV3cFF2NHVKcURtcW9UOXQ2U0NtNkcxS0pi?=
 =?utf-8?B?N2xVaWdPK1ZHd2hQZHE4K25YYTIwTXhOSzFQcXBKTFl3Yk5rclFUZjVNbnIz?=
 =?utf-8?B?Tld3bnY3bmFiWkY5VjdQZ0RsVzAwbnA2NE9SbGQ3ZjJzelJXVUJNb25lKzRE?=
 =?utf-8?B?Unhvam95b0RJeVNtTTRMdlJwN29BV0NvSWkwZ0tLWGUwUHVVZUtKUnBXY0ww?=
 =?utf-8?B?OTh2dklHcnJYWUx0VlcrQXNtY1RYZHhmV0JqVGpEUUwzSVBQKzMwdlI0WnN0?=
 =?utf-8?B?TGp5QVozQ3dGeVdSeFhhdnUyd2QyRE90UGNrcVF3NlEvNXg5WWRIclg1VWJ0?=
 =?utf-8?B?M0dXbEpEOW00Y21tbFgvMUJ3UUZKK0VLRnhRb3pwSEhtbHNsVGdKMFM2OEha?=
 =?utf-8?B?MHhnWDB4d0NHMmowQTY0dzdNL3l3TWM2aTdETFdIdGFKakEyc1VyMjd0ZGZD?=
 =?utf-8?B?OTRsdUtPL1Rtd0dpV1JCT243K3g5U2NmWnQ0b3JaSEltcWhKYkdCcUFnRzgv?=
 =?utf-8?B?UUdrUittSm96ZG9ZdkxkOW5rNkhuQmlyRStFSEV1eUVleDVwMHE2eGV2aWov?=
 =?utf-8?B?ZjJuS1FNNkdOdG4xdUlzRnhVcmxEZTQ2QkpxSjB6OTRiQW5ZQTA4WmdZTDB6?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afb40969-dffe-4ef8-0c94-08dc49f62430
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2024 22:27:49.8906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nec6gPFeHjnr2S4yJSCui0x8tn8Au6Aywrht+EdsQd3A9MWAdLwmweL4v4tMeOoWHxzLpxFsXv5io5UCJ+3UuuId9w66UpI+t71evbDiaFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8043
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711060075; x=1742596075;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ipPovo+1tzeVWYy8TWOAuh4eFz3rIOJo1DqKU/SG2hk=;
 b=U94xZi3XBP029ro/pDneJjzkm/cefvkAB+5/CAL6/Qvo9d0TWjfGjlOk
 9W1OZt8YhjBlYK/eA1JQqAAn4Qaw0M4itABxRZZZzYATLTgi0prpXwCZB
 Jsr5eUO6nqH/oxaCRl91tAtjkV/kkyGVQ/d0zVvgEMP2gjT5MRJ0vzLH3
 x1yLaersX9B2wvXgiE0dLR4tVtv0SLaJo0uFhA1jjJj2agCf32GJW0erf
 sWhdWOumDO9FxZ0rOUOl/JweJo+aYoAIX5eR4qELJ3RH3vb0XTtNvvsQg
 MGG3d4HgsCo4d9LwJYx1rYAMGSOhayJfD1mLiI/o7H4LdFZX3x9sjk3ow
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U94xZi3X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: kernel-janitors@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Maciej
 Fijalkowski <maciej.fijalkowski@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pucha
 Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Kees Cook <keescook@chromium.org>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 David Laight <David.Laight@aculab.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan
 Cameron <jic23@kernel.org>, Markus Elfring <Markus.Elfring@web.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/21/2024 1:20 PM, Julia Lawall wrote:
> Does one prefer an initialization of null at the top of the function
> or an initialization to a meaningful value in the middle of the
> function ?

I think the latter.

There was a related patch explaining the direction, from Dan posted here:
https://lore.kernel.org/all/171097196970.1011049.9726486429680041876.stgit@dwillia2-xfh.jf.intel.com/

We had been having some internal discussions about use of __free(kfree) 
in the ice driver.

The gist of it is that we should instead be using inline declarations, 
which I also agree is a reasonable style for this. It more clearly shows 
the __free(kfree) and the allocation (kzalloc, kcalloc, etc) on the same 
(or virtually the same) line of code.

I'm curious if Jakub would dislike this less? Accept?

as an example:
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c 
b/drivers/net/ethernet/intel/ice/ice_common.c
index 88c86de82e09..822628d25b2f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1003,8 +1003,6 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
   */
  int ice_init_hw(struct ice_hw *hw)
  {
-       struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
         void *mac_buf __free(kfree) = NULL;
         u16 mac_buf_len;
         int status;

@@ -1083,7 +1081,8 @@ int ice_init_hw(struct ice_hw *hw)
         if (status)
                 goto err_unroll_sched;

-       pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
+       struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =
+               kzalloc(sizeof(*pcaps), GFP_KERNEL);
         if (!pcaps) {
                 status = -ENOMEM;
                 goto err_unroll_sched;

Any thoughts?
