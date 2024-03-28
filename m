Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15257890C53
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 22:16:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACC79417F7;
	Thu, 28 Mar 2024 21:16:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GoyczAfFhduP; Thu, 28 Mar 2024 21:16:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D66A6417FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711660586;
	bh=arsb2+BFiLn7A8rO9LDvhdl9zzy+7fx6weFnBzzV6Ok=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BGsE1vZiS5EdDkvWJ9guiCTC2y/dCWVnQCdyKuloESlGUVExwgNgBSS2m4IcfHza4
	 LyA8bOyKnlxfpvZf/2I+uoygvMRepFOQlnVdsXhRusAQWQ+IM5KnjNNi5h3yQw/tyj
	 Ob0cn6jvHvfZVUMpBWvFfu37tj2VEOmW2JQfN0fa076yaKXJDbuludxD9bzKP3R/Ja
	 QWFbSHPFQKVnWmamvVocx+ZFhnooKB+aj0LdlviD0tdY3PoICTgE90JXHMKErXJRca
	 +hsWEcIvyjmk6ci3cgAT3a8Wul9wO3Xqm9r+YLwqvQv9w0cNf74m5dE012auTLx+nX
	 vR3YN8YbPNIew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D66A6417FC;
	Thu, 28 Mar 2024 21:16:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A767B1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:16:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9251760E5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:16:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E6uxGfsh9wmh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 21:16:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6594860E5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6594860E5C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6594860E5C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:16:22 +0000 (UTC)
X-CSE-ConnectionGUID: 0OvSxIeNT9Cdoq3FFmc6PQ==
X-CSE-MsgGUID: JDJ1qfz7RneRcYYN/dAekQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6780249"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6780249"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 14:16:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16806085"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 14:16:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:16:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:16:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 14:16:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 14:16:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BocQtuVhmG025xmzSJkiWqvoqqjxhnF/HggUvqiw7ek+iJCI7gwYGj1dPPvTIrWQA8lYpYr+/x+aYVMRRUazvaS2HFYSGIPmLA/qqeNOoyKnUeiLeW5LrCMlH7UrRviImkZEWGxSl0Zvp0pjgYXxeXWCLFpkoy1hGF7+M7pqL2yOdVekwVtBMXenh/Ka66dzh0/w/HulQfB/8lJPJ6cFOgvvaCIUCYjZphNyfgRjrLabJylEOVkHZFp2kLG953ujxWop/em0THRUbw7ydtZ9WDIjOPfO2xvRErs1xAD6jXGcpeBZBFjVvDdqtZGuFNrKQ1dkWm4XTGyaDoVMyz+zAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arsb2+BFiLn7A8rO9LDvhdl9zzy+7fx6weFnBzzV6Ok=;
 b=It2ymV0GftTJ07ISL2Rg78Qmn1BoyIu42GtDohysKqsw750btROYx6z+kGnpBbmWHbNR5NNavUu16HWKc54B34gtrYOC/hQS+17xkuL+SkVDCTwBrEB5s2MV7Qr1LDHQLPT+VHGsG1B6NeX6uyALrouGANwEYOPOOSLxm5yOYdSGul6rsENmvOvXCKvzqilEuJ5Ur3xST7JTBIiz96hJUnQIkDFFtEzM5831cVCc7/0lnbTWSYItfiuoqwyHVcKS9hV/T4MZn7ctqME3MEYde0dEMp0vK1EZ5OSdxHLEk1PdUVo8+E95IRo098NAv7Mcbr8/DDsVKZ11lHcX65h7Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 by SJ0PR11MB6791.namprd11.prod.outlook.com (2603:10b6:a03:484::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 21:16:18 +0000
Received: from PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::c8f:b939:aa0f:717d]) by PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::c8f:b939:aa0f:717d%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 21:16:18 +0000
Message-ID: <212d2acd-5f5a-aa20-ca24-13746f23d492@intel.com>
Date: Thu, 28 Mar 2024 14:16:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240326163635.1529314-1-paul.greenwalt@intel.com>
 <20240326163635.1529314-2-paul.greenwalt@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240326163635.1529314-2-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW3PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:303:2b::11) To PH7PR11MB6449.namprd11.prod.outlook.com
 (2603:10b6:510:1f7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6449:EE_|SJ0PR11MB6791:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SAJMZDegM2fqUg1GU4pPKF8+bm2gOZ8FHIxhzclGWVCVj6DPhteIyeWLWyp2Ce/Ob2tlVIDVpK3KhUgeRSEy9pO51X/6p7h4+6SWsOzXNfn9Jg4MVoOuhu3e/iVI/WYFkLWq6Gz1JQ+Ct86qsLUo0JDjwZWin8XbeVh8qboKVGqznJX2QoxLDU/MgEIIIjTsdwPVPZhFP+Do5Ow77uDoTI8BzzGvGgni0caxNPxmuHrodsO0lS6ycxS2uW03NGEnqbHC4m3Top5jyBhBXespPtiuCtmPVdGt0epEk3dFCzfwVkkjPgS4Sfb5Xuvpcf2pLmTdwKZPPyIspzJbTxFgpLrwCaEW/lZwM3c/npwQCvLQNTl59vSkqFNTOFRNcBukpsJar2bawbA/lZ9oasa60N/i+Ayejfxkw0e45rS3aejGZJvBXXaW7+mjZGFDeuhl/tqvCDXFpLOliWPgI83WW5Exc15tAMZErTnnpKoqyPMLDZM5xQpkfc+pdfakTYrV3RhXgzV93urnbE1FTiqcIFg8oHbB5Bi+86dCcFj8lpZAid2BRYv2lB6fOo5Tx7sUGAr4DNWhve5TG/FJahitaXCyMssQUx7POLGUt07JDG6GCZT4+7IagcpUg/eDbbbjjo8EtbNXY1x9woJm9HbRPQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW1Ed0l2Wm1kTllHWUdXRUYrc1NEVk55bVJRV0VSY0ZvK2pkT21DOC9ONEx2?=
 =?utf-8?B?TytYOUgwVHNHVVY3RlRWYUFKS01vZ29ZdGhtb0hUS1hKM2xhUG9lNzR5NEpH?=
 =?utf-8?B?alI3RWN0NmhBZEJ0Z3ZveEhRZ3BrUklyR3QwL0lWOG9nS282Yk0xUU9nN0J2?=
 =?utf-8?B?MWRYOWtWdi9wU20xM1Bqa3dxbmZtcTFTUDZDOERNVUE0VW11SE5zVldtVk1V?=
 =?utf-8?B?SzNoakxkNEtSU01FWmwzeEI0Z29MMzlHQ094dTRFcFQxWXNhN1hicDNNL1NR?=
 =?utf-8?B?VVc0d2E4RlBHVTNXSlB5b05Nc0hsVUFvR00rM3E1RWwxWnc3M1dTZHBqN2Qr?=
 =?utf-8?B?bHB4U0xoT3RPOW9Gbk0vN2JkRjA3eUdEWStGdWdqV0pkQThCQkFpaTIwVGhm?=
 =?utf-8?B?TnhMSkF3ZzdjeXZ0SWNTZjJ0ck9XOFJUSUk3LyswL2ZMbWxzSmtoUThrWTRs?=
 =?utf-8?B?dXJvTTE5RklqU3ByRXFlZmRyQTZCZW0vRUpmSmluUTN2d0dZUGpWeloveWxI?=
 =?utf-8?B?OW5LcDI3bXB3NjBLeTRMdmNrdGxFZ0t6SnRGSkRwejNOelBFdDhSMk8vclUr?=
 =?utf-8?B?bUdZSENheXI2RUJGMzgzVlNrYW12ckFvRWdpQTlUK09mTWRCMjZVTjlZUVdj?=
 =?utf-8?B?dm96cGFPQnl1cDI3TjJRbkZRZWtjKzFxYTF2bEJ3dXcxSk4zZndOVXVidzV5?=
 =?utf-8?B?SmZYQ2YrbEpDVDN0M25RVXpHdktFRlpJSFoyTkxYUmFXOGVIWVY3L3FmdWVU?=
 =?utf-8?B?K0pBMTd6M0pvcHVBd0NaaGlwcURsaWxYZ2xJZTBCWFpZNzJkVCttbVVSbHNT?=
 =?utf-8?B?VkJ1OXFxbmtrK3RPMFlMQ0xBazlSbzloZ3Z2V05BeVlzUllMcVhsU2dISWR6?=
 =?utf-8?B?YXMxdkxNS3QwVVJmbmtNdXEvSkFhMHVUWXkyZ2lpT3JSdVF5NUEzWlo1NmJa?=
 =?utf-8?B?aTNPbTNCQVZxbE1icUdwSDJMU3VRZG9QMHFKK3V0UGloaEFLU0pncjFGYTNx?=
 =?utf-8?B?RTF6a2RTNk4rcVJQc1p6OFJMd2RHUTVvSFRJUU16UUpQSGdFTzR5WG56MlVu?=
 =?utf-8?B?WmNFWm9kVEVWL1Qzb1RFejBvd2pEL0U5cG45cDF3aVU4K3RWSVBBT3Q3MjRT?=
 =?utf-8?B?WGhReW5jQlNIZWcwR0h1WXR5bVlsK1NDU3d6d09RQzRzQ3c0cFdWa0RZRnkw?=
 =?utf-8?B?Z3FYNnE0ZEM0UXU0dnNoQUQ3Smh3RTlab0xFYkJvUEMrR0l5MHRibW85bGZH?=
 =?utf-8?B?d045dlN6UUx2dzF4bUhieDZQNENvN09EOG9ZSGNXMVpkUG5kYStMbUVzOEcx?=
 =?utf-8?B?R3pHc0lRNGo4TWNGbFRwNlNDQ3hMOUVrYlc0VFVTTURnQnVad2dQYk41MVVD?=
 =?utf-8?B?RHI5ZDYrbHQ1WTNVZ09sUXpNekVIWEkybnJxcWdicjhPclZndmltSTBrT2I1?=
 =?utf-8?B?SzdTTS9raGh2NU84K05DUzRxd3ZzQitkdGNFSkRwZ3pXblI0WDUyM0lKSDNt?=
 =?utf-8?B?eUZoRmkxRUxWNm9OWVp5a2RHUTJEaGJGSlJ3ZEFQWm84bTQwb29GdmFOc05w?=
 =?utf-8?B?MmN2dnhLcS9zRWdOandRd0tGTXdXS3RjOXZ5YUVJdVJUb25vZWRjVitLWE8x?=
 =?utf-8?B?dUtWaDZodmx1K1Ewdjc0eGNxK0w1WVdmYXV0UjlpcnJqL2kvcXlpOHhteHYv?=
 =?utf-8?B?N2RxQ1pnR3JVdnZjb1F1VHR6UmNqT2xKd0pNbGhzUWZaalM2ZjlYUjkyNmlE?=
 =?utf-8?B?Sy9lU1BNbFJIYnQ3T3VYMHpaRDJ4T3pZaGpvS1ZtTFhFTytlQStHUUVUalhC?=
 =?utf-8?B?ZXVSR1hvRjlud1luWkNWNGx2RVdybk5ISkppT3BxYkNSRXBHTmptZ3V6WnJX?=
 =?utf-8?B?MHpFL2NmWGg0ZGRocHNGa2VzaTgrNU5RNlI1a0FJQmlUWVpWdHM2Zmd0dEVZ?=
 =?utf-8?B?ZWZObWl4NlQ1aVM2UmNzRWV5dlpxMDhpSWtVUW5SOWZIUWczcGY3elNoNDVM?=
 =?utf-8?B?bGRWWGxybnJmY2xrSXB0aW4vZnRLYXZybXFMQng4UlZERVgvajc1MDh1b0x6?=
 =?utf-8?B?TlNVekxvazZSenBIVC9CY3hITlA4Tm52a0xzS1BiaEtYMGM0OGM2MzAzZDJC?=
 =?utf-8?B?STBwVHJsK2JzdWRERVpYUnhLMVVwVU9aQWNTWlBlOUhCTXNnVXZ6U2ZJV0Ns?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d04d1b20-1b4f-4256-24df-08dc4f6c4ef8
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 21:16:18.1416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CMXMjaGLDtagJUz0JotaOOEHr0/OjGKUPA6Bl8hFoFv93/DBjakAOJkSvE60wNL0rrNoPEnfY0dO1No/vvY3BfRX6uWoz7wA0IdtT5mi1Qc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711660583; x=1743196583;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IRsMg+p7dqiher8iwCbQyruzdjb7hsR1O6arXhYRwMs=;
 b=UcBoXuyLFdtvA7mQtRsAR3OLmhgIr54LqCRVZd0OxaF/5XNMAtp0h3BX
 ZdPx6cqTV0iAWT1JacGoLvW8ml6lzp8kzBDNKQuLW7kqHtfqI6anvxIjj
 oXYexMXzZcVmFUOTpEwCj6k+ZR2KYGziexIXNR902eot/iudDRFIvvGEr
 er9iBi3xTEb/HjUdW7DVUcls0S+RWtEzDN1LAdt65RnYqjpM8uMVorQbO
 c1SZuXdQ08VBdH19qIl56uR886QoTVbzBnpH2GhC2blNNVOq7tLdZmofy
 9IyC38qGcRvFettHnCvHMXeJfRGmeOKQFDmCGpce03vn7zR13KK8erD74
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UcBoXuyL
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: update E830
 device ids and comments
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/26/2024 9:36 AM, Paul Greenwalt wrote:
> Update existing E830 device ids and comments to align with new naming 'C'
> for 100G and 'CC' for 200G.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
> index c37b2b450b02..9a1bc434f167 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devids.h
> +++ b/drivers/net/ethernet/intel/ice/ice_devids.h
> @@ -16,14 +16,14 @@
>   #define ICE_DEV_ID_E823L_1GBE		0x124F
>   /* Intel(R) Ethernet Connection E823-L for QSFP */
>   #define ICE_DEV_ID_E823L_QSFP		0x151D
> -/* Intel(R) Ethernet Controller E830-C for backplane */
> -#define ICE_DEV_ID_E830_BACKPLANE	0x12D1
> -/* Intel(R) Ethernet Controller E830-C for QSFP */
> -#define ICE_DEV_ID_E830_QSFP56		0x12D2
> -/* Intel(R) Ethernet Controller E830-C for SFP */
> -#define ICE_DEV_ID_E830_SFP		0x12D3
> -/* Intel(R) Ethernet Controller E830-C for SFP-DD */
> -#define ICE_DEV_ID_E830_SFP_DD		0x12D4
> +/* Intel(R) Ethernet Controller E830-CC for backplane */
> +#define ICE_DEV_ID_E830CC_BACKPLANE	0x12D1
> +/* Intel(R) Ethernet Controller E830-CC for QSFP */
> +#define ICE_DEV_ID_E830CC_QSFP56	0x12D2
> +/* Intel(R) Ethernet Controller E830-CC for SFP */
> +#define ICE_DEV_ID_E830CC_SFP		0x12D3
> +/* Intel(R) Ethernet Controller E830-CC for SFP-DD */
> +#define ICE_DEV_ID_E83CC0_SFP_DD	0x12D4

This doesn't compile; there's a stray '0' here.

../drivers/net/ethernet/intel/ice/ice_common.c:166:14: error: 
‘ICE_DEV_ID_E830CC_SFP_DD’ undeclared (first use in this function); did 
you mean ‘ICE_DEV_ID_E83CC0_SFP_DD’?
   166 |         case ICE_DEV_ID_E830CC_SFP_DD:
       |              ^~~~~~~~~~~~~~~~~~~~~~~~
       |              ICE_DEV_ID_E83CC0_SFP_DD

	...

>   /* Intel(R) Ethernet Controller E830-C for backplane */
>   #define ICE_DEV_ID_E830C_BACKPLANE	0x12D5
>   /* Intel(R) Ethernet Controller E830-C for QSFP */

