Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F0587BB2C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 11:22:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3017360DFA;
	Thu, 14 Mar 2024 10:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qw1Q40nLBerI; Thu, 14 Mar 2024 10:22:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C32C607D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710411738;
	bh=Ly0PHD4MmJQSOx+kycW2Ryr8qilj2sXvsPw+rEmGLvw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2oN2EIISomyqoY14YyD+TjnXBjiCLLR57aFJnCdDUdD0mIGSOuuPyc9zqwQjuTgtK
	 eJy+cDyRSxxYd9vZg5MT2arwVEJqlNuI/mG2THzP6Pi5z7UFvwCANNzNQWGSdJGXZu
	 +iZxOBhwIc6vr4T/PIykxqjXcof/rQIBnRRLJWVVUYYVFlPHwXO4MR0xikSMhDpJd0
	 0pTDDED1/FYlPgXuxTI3hQpqdqd5DK1rChdrnsP20shRI00BCRFYw0ANtwt8aUmCYT
	 voaE2DHl6Ym3bDpo2X0ssx7BDou7FhzJ9Oesp8dTMYD6KCS3NnGLCvgJ+toh0DUie+
	 vIY2bjv12i60Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C32C607D3;
	Thu, 14 Mar 2024 10:22:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 691821BF267
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:22:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54DC740949
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IamD3ZY7GV9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 10:22:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD22940937
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD22940937
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD22940937
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:22:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5825328"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="5825328"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 03:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12695485"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 03:22:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 03:22:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 03:22:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 03:22:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1WRMNhuiIzIOnsDsSPMb4t8YVdssuoRbXNJGEF+eiC/Io8BE6MMiWzXFNj2y2J7hjVFNbea80pKIBYlshqBahb5arVssU7h1Xpe2uoPmDa+b+BzwL3eeRY+cIjsorE4sbxt9Zi9HocQ1EQX9XXN0ay9KvRm3gjKBekRf9oHnzlYWLXioZLunVLJeQjcShd4eH6bVqj49XNVqRbnxciQa5aCIo7suQDjIvgs3CMV43AYnuYy9EtInf5cyqMsSXLh+q9kz66/FpTLtP3UYtIs+w8paaMoYacQhJH63DAQegNnZUXJMhob2X2koAjXcUG+rtLKcMiV6MZbUmmvCmAUiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ly0PHD4MmJQSOx+kycW2Ryr8qilj2sXvsPw+rEmGLvw=;
 b=Sxj7tA1uvezRijPfrE66PJLCfBuTscyhNva3e+66GAK6i56TWrjGxjU6xUBjDTFzTwT/l/JXbeExdUmDh1ngI9CLT6DdCyt5E1G8gOAOgKGdms4GswL4rPgUtB1swKlzjF88GC7Y9cZb7qIu07i7ENzVFAerBxbeo/OKb35YQhqTPZoM5M6FYsK/YMkMLjKToF+AV7fHTZbElt/UMUL8PXzQeEp82URBKh+beUSu2t2uPGVQxUjoA6L+0NT04vRaAPtb142NtdeWS6UtFJSxacf5FfNEH81GiDrta2sZhCkFGh8vEyBVTpiLR+8+ahXAFus5PxFbs0HnYkgVQVWC9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8249.namprd11.prod.outlook.com (2603:10b6:510:1a7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Thu, 14 Mar
 2024 10:21:59 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Thu, 14 Mar 2024
 10:21:59 +0000
Message-ID: <d87f0752-a7ea-45b6-9a79-aac0c6cac882@intel.com>
Date: Thu, 14 Mar 2024 11:21:38 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Muhammad Husaini Zulkifli
 <muhammad.husaini.zulkifli@intel.com>
References: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR09CA0013.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::26) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8249:EE_
X-MS-Office365-Filtering-Correlation-Id: a6661b22-7921-46dc-40f9-08dc44109575
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4pmvYm6ApUu5id41mKcaEoXCYEEGqkiFINXaGQdU2OAbWyxSLvJ6BZJHhKQZcDTa0k6/kNj8vYxwUz5V+VBa+N4b/sshbQrT6r3FhsuPuXxQiUcsnI+M8ebsbv9fyymaOxz7lzZqkmb1TWKdsKH5ATdFk4jHp3rFS7qIIPNSkIZPP2WfLSB1fjhxNlJFjkp+VQCuMMOn81S94XJCL8qmhLVZHNQZTdDnSiMbJkry3EwH3EdhJD/xG6xvdlL3g9H7xgyxeFdF09zV4Wh+Uln1qp2GmjnCYqPMgciRg7oT9ZugNSIoiyGRH8Obrh9xlckXf0JdIaUakvsEArdmjFTEPvoaQ5RlWd+tJzm7ANKvzKZitwZ7xuTEInqiUiyc1dQMcZENZ2IFOZa/BeO18ldrDqHt5sAWYTvMsiHqEPeFKRZPWukNkyYKSU50oCg79h/gfZMxwo8jRU8UkFCn3Al8s6fru66xNP6HF7LG7dr4Zj6rNPdFsPP3YlQ2CVCt1pDeAMUwBId3fACf9jo0MSVd58Atu9SllKh6Q4LhJgImOwlECN1j303WlhguGwR6jIoa5dLVqRGrelpzQ2mmgFV+DsPW6Kwt0PkpdP4FIth3VLHole/8I7Ezj542VSeU6p8gh7eNrt8etBX/y6GOBlvdd9RPyw6Lc2k+uUAf1i9LkB8/5oD4L4Q4+LValog9vx45Fu6kDamUDEJmoyky50E7wQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(921011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3ArbDVpVTRZZnpscGlHeFpTNkF2UHplbFZQdUlJa3diMDJjTU00c2YvYmt3?=
 =?utf-8?B?UUhrckR5VldTQjd2TzJIeVJEaUYzS2VoUzRxSVFOWWEzendvNXhFVDRya2tj?=
 =?utf-8?B?cnpKZ3pLU0t3eE16enlHZlVPcEZMaGt3L2lCYThsSVZYZ3gydWMvZDhuU0Fi?=
 =?utf-8?B?eGdZdDhSaGg2OHdRNnh1N3oyNlJLZFJkRnR1SXNyRU04VEVJR0dpN205UFNS?=
 =?utf-8?B?bW9MTENWVVVpRU8yWTR6R2x6R2JMckJEWENDSmRJUERsZXF5Q0hlL1Fkcmw4?=
 =?utf-8?B?TTFjL0x5L3hqTEJteGExQ2dsMkEwcVF5V3JzcW8yNG9Vc0FCTFM4Z0hWOU9o?=
 =?utf-8?B?djM2MTRVdUtYSE5QWXFESkIxeVkzUkI2VkQ4SFVtU05TT3ZEdWVpVDZsNnJm?=
 =?utf-8?B?dVNza08zNXhYbk5wdzdud1hLZUdkKzhVckxzRDBtUHB5REQzQ0FDNHNtYlhl?=
 =?utf-8?B?NVZ4a1cvTkdOcDNHS29rK3RFemJGeVdtS05UUTZrVGRMUURCNDV0MUVlSkVK?=
 =?utf-8?B?U0VTcGl1NFJJR09pNDNzY29XZHBXeWdmOU55ZG1PdExJMjlDTkRmcTBBSTJJ?=
 =?utf-8?B?Ym1yMDA5NWIvazlhTWp1VkpmdEpoK2FsMVZCbnQyM1VOWXNVYkJnR1lTVUFV?=
 =?utf-8?B?UEl1dUVtcDdSSUo0Q214dkJrY0dabTlaczB5NUxidXMxTGNqYW1zWGxEQ05H?=
 =?utf-8?B?SktWdlVVRjNQellKNnpYYjdweXN6RnB1cThtc0ZVeitNV2NHKzhzaDMzTUIz?=
 =?utf-8?B?K2Fzc3YwQzdvbGJNNWtOS2R1MkZFZklPK0ZsRE5veHliN1BWQ09vTFNDajd4?=
 =?utf-8?B?Mng3ck0yb2xuUFd6bGFzOUNPNDFGZXA0NTl3NmRsYmFXVUd2NEdiL1NaYktl?=
 =?utf-8?B?NzN6UjFlRTZnUGFkNEZlZUo2aHNQQS9hSXNwYmVmNDlRdDVyNEJJdGU1YmJY?=
 =?utf-8?B?QXVvVlRyODNYYjdyN0g5cXYvdjJJUjZCVFNsZnpnTmhlSTcvcWxwZkdVVDZo?=
 =?utf-8?B?c2JmSDVrZGljbmp4THp1aFZpaXJJSDZtaytYRFVoVkJrWlQvcXFqRStaeHps?=
 =?utf-8?B?VGUwR3dIbU9hVGlJaHFGVnJkVEZxNHVPZFR2bGEvTkY0emVmRTgwTVhhb1Ex?=
 =?utf-8?B?YWRjNkl2dGQ1amdWOXlnNXJLM0RQcXZ4RkZPMTBmQkNPV2JlRisyZ1c1cUEv?=
 =?utf-8?B?eGtHcFFub3FqNzdhRzZOZXZtSVd5L0Q3Q1NHa2NIMWZFMS80SUYvaFFOL05V?=
 =?utf-8?B?eW50OTdjd1M1aFR3OC81UTBYZS9POFVLQjd1K3ZKM3hIQkR6R2dib0hjVVB0?=
 =?utf-8?B?WGlPWVRZZTU5WW1LNlVMVVBsc2hQVDBvN1UyUjVISTZzVGV2eGlWUVpLUTh6?=
 =?utf-8?B?YjVrZXg3UVhodlA2dHlLOU9rVW82bHA2M2NjRXc0MGVvcnhOYTVnbmdhaUwv?=
 =?utf-8?B?WUFuSUJDbDY5L2NJZEZkTTB0TDFNOHVoRnQ2aTlabXpoRld0U0VpZngvMDR3?=
 =?utf-8?B?RDV2djk3ZlBsbDA5OUhlTklBa09iekRGUThnTjkvZGNyVWk1VzhkS3JFZjJs?=
 =?utf-8?B?bGo2Yy9YMlp6elV4RHUyOC94c3NQbEtEMHhxMnRWT2dYN3NFL1ZWb1JYdEd5?=
 =?utf-8?B?QXJ2bmZuVnRwWWVVTEM0VGpWSzdadlAyUzg1QlpjM2JvZGhzVXNldFRkRFpu?=
 =?utf-8?B?eG1RcWgyQWh4MnVkZkdHakVYZzhXWWlJZFFZZ3h1WEwwaDVlTmpLMGo2c3ZW?=
 =?utf-8?B?Q2N0SlRLWGhsS3dFK1YwRTA4MmNaaW50VXpLa0ExU3FxOXd3d1dzUFJ2Qzd3?=
 =?utf-8?B?RHkzZ2RHc25UMFlZVWhtbmpodVVIYXNFaUNGMGJvT242RyttZnZZekZrVHdk?=
 =?utf-8?B?QWppNlFnYktzclcwczdhbFdVNGRSdDRVY2N0UEt0Y3NhWkRDWGlOZ2JZTUFU?=
 =?utf-8?B?TW43TlVGR0xnQkdqN0syNFVlSStXRGEvcmxsRzZhdWRoNzd0MUg2QkJJVi8z?=
 =?utf-8?B?NDJ2Z0k1YUpCYXUxUDBYOHhTbzVyUUlRRHIxU2I1aEROL29HVE9wbWlNa3dK?=
 =?utf-8?B?WEdRWWRTYnV5dTlhWXBNZnhzeHR3ZVl0VEhHS1hoSXJNWmFDOGtrN2NaVTBh?=
 =?utf-8?B?R21CdlRIMnZmcG1LMnZPVTlBcWE5RldCY2ppajdmaWlCNWNBNk1uR2FxazhD?=
 =?utf-8?Q?xHkabebx820HK0yWg0N8cy0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6661b22-7921-46dc-40f9-08dc44109575
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 10:21:59.8172 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zqdr0Y8VNuVl5kiSsmcQtOFDgh0uCZbWtd5/z3ODtQsDm8vDVUBaSkXACqnovUfAdstsnDK58aDjMrf6PvghxplLq/o3RJtCox6byiiAy3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8249
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710411734; x=1741947734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qLMvhUk1aWuxdiVMyebj9iSR8NtqsGLt6pks+UeW3eM=;
 b=dOn36PlGt3cWKhNvp8LDZnFMO8i1QmgLoF3XBvctkIiQT2dscUf/RqqW
 QeHmbnOZ0Y3yv2dwv4WnzCzY/IWEKj+knwU8TRk15rK8kctoM7nl5EXKA
 XiugAHpmU2yYqpo4b7bSvZ/Atx8bHGdq1lAnVyNXKKcJ3Ta/mVPXUGA5a
 HM6xU9AruMMFo98H2ZByGiP8CE8rAJzcjkCfb85UueCW7GmIsT4V9Xlqa
 forSaY0K//tLWOjmKT4266wVVQinVAPQ9MuQGV4xe0x1JZMpcOQQZcabd
 somUyxZ7XYbhVdudNb9SZhefuVuo5K4hwf1dQ8jswcToboip0SiahKtdM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dOn36PlG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Remove stale comment
 about Tx timestamping
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
Cc: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/13/24 14:03, Kurt Kanzenbach wrote:
> The initial igc Tx timestamping implementation used only one register for
> retrieving Tx timestamps. Commit 3ed247e78911 ("igc: Add support for
> multiple in-flight TX timestamps") added support for utilizing all four of
> them e.g., for multiple domain support. Remove the stale comment/FIXME.
> 
> Fixes: 3ed247e78911 ("igc: Add support for multiple in-flight TX timestamps")

I would remove fixes tag (but keep the mention in commit msg).
And I would also target it to iwl-next when the window will open.

Rationale: it's really not a fix.

> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 2e1cfbd82f4f..35ad40a803cb 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1642,10 +1642,6 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>   
>   	if (unlikely(test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags) &&
>   		     skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
> -		/* FIXME: add support for retrieving timestamps from
> -		 * the other timer registers before skipping the
> -		 * timestamping request.
> -		 */
>   		unsigned long flags;
>   		u32 tstamp_flags;
>   
> 
> ---
> base-commit: 67072c314f5f0ec12a7a51a19f7156eebb073654
> change-id: 20240313-igc_txts_comment-81629dfc8b8a
> 
> Best regards,

