Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E06EC93C732
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 18:31:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D9F7409A2;
	Thu, 25 Jul 2024 16:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E1Etf3wHF_ZE; Thu, 25 Jul 2024 16:31:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2FFC409B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721925108;
	bh=5fvD5GGWsLE3Yda1bC0+PIB4QFzIvuxznc1FEAmcfI0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w5dGpzMmIX5USgDhygpIr0+TMkD6n/ARv7iuOzfAmYXzgq86YIH1l7mDkWdgfMRLC
	 VdVb16zLI1NC8IxHYd8J5qufvMbk9CPwUmRtfvy0SDu8pReJnycJFO1FVKjl9BciiI
	 6T++bpWDzsJQg104jOd7Jk3SR75lb3HlqSRz5X1DzclFZjXPbiUcddTLUOQz1RKEH9
	 dLGy6QgTOtPkQBLanlphnU9UdEQFJWGJ7n9HaLW71yTiGOCOIcr/ExNYFZBjiVz0O6
	 4XeZU8e6Xl5/YgYFQa2c67P5JbH25/TpuVJpC1u01QQRAEd5lSyhiKaZqVkAufmOAH
	 g5p57hXkZ1iHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2FFC409B2;
	Thu, 25 Jul 2024 16:31:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF39B1BF330
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 16:31:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8F7140990
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 16:31:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vLRlhC_jsROB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 16:31:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BE2D44098E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE2D44098E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BE2D44098E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 16:31:45 +0000 (UTC)
X-CSE-ConnectionGUID: FWcyuI51TkK+wiXl1iUMPQ==
X-CSE-MsgGUID: HzU8nGj4SLq2SWL4LtAxMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19832963"
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="19832963"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 09:31:45 -0700
X-CSE-ConnectionGUID: +672OMJEQxasxGXksAoiXg==
X-CSE-MsgGUID: KWASmntqSrmFfaiMEJgchg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="76201195"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jul 2024 09:31:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 09:31:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 25 Jul 2024 09:31:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 25 Jul 2024 09:31:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UEwhonc0efeu7eh46/uePLk1EEgb4weXP7+kVvTggdBkvC5xWzNHG/VLh2siSrDt73hc48vG4CeuRXsA31WpYjcyyDO40shVQ3NuDEDaPfZcTaT673HfcPORh9nNscAOELK6HIk6N31JqIl8w8k0Zmejgn2w2SrEg23Vv+DJ4area05OyzoVCfLPwD9+FVyKjZcd0sFWfFW8jV7dqPThRUpdEk2+Ot6IQTibQhHz8N5UunRWBxjHEIdNEwJwnxFk5VffillidxjawlcFCQd+nrCK7zYOqEB2rHeSpWGKOftXfOUe0lKJTd5XWvkdOCPLatkH/+n5GMeT5wqSzHxwoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5fvD5GGWsLE3Yda1bC0+PIB4QFzIvuxznc1FEAmcfI0=;
 b=NfmRyhVKR9IL5xYgrwBlUF9nelKfnbD+L7MrZXWYv9RzSk8ByRN34+l1wwJvaHN9zk7qcdv3CXzXKZoVJjZ1lDsrLAIOksOcLaq57IXEdPPnsepoLVccbCSR2EuhQULhfukaE8eSKaSYxuyBagIJ4WRHLUHU1Y0sZ37LFWOyhoj21KXse+geo/+hp1+/LLrFSWsXJS3ckhI6QBmdrEZLtwoofui14b1rCWJwy2eng1HjzQyTxvCh3PTsBjl2CIvOHvUgzNk/+sX9OydzWZGc21r5eh4qChyopq1I+YFq5uTKdM/dcbmfSgjUqTNEPabWZOlMHAmaBqgYQ43Pb+3XOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Thu, 25 Jul
 2024 16:31:35 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.017; Thu, 25 Jul 2024
 16:31:33 +0000
Message-ID: <b60a8fef-3262-4921-a8ba-360465eb8832@intel.com>
Date: Thu, 25 Jul 2024 09:31:31 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-10-karol.kolacinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240725093932.54856-10-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0206.namprd03.prod.outlook.com
 (2603:10b6:303:b8::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB5889:EE_
X-MS-Office365-Filtering-Correlation-Id: 88b22cad-113e-40ec-25cd-08dcacc73e78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RlFBMzVHT2dZU0dDRUlQc2NkYmUreVJlWTJrZHlUb2JjM2ttS01WVVhOY2dS?=
 =?utf-8?B?cEdmcFFNQ3FhbzdTVGZKcWF6aHI2VnlGRnRsR2hGKytYRU91REhHbW9kdUpm?=
 =?utf-8?B?Q3VtZUc3YlJpNkRiZThXaDhrcmZncXdUdUN5QUYzL3llbmVRb2VXL2t0S3l5?=
 =?utf-8?B?SUxWaGxQS3IybndyQ0gxNHRJc0oycXlHVnZoVzZvcWRTZ3ZqWFFzN2VmMHJ6?=
 =?utf-8?B?QjFWWW1GL1YzSkRMSHZDdFRCQ3hhd2lyakUrRnUvdm9FenBXSUlCUlNoam9t?=
 =?utf-8?B?aGVUSXcwYlpubVVPWVVqbW1QWit4TlRicUFqckk1V0F2SkhEUXdNY3NtNk8v?=
 =?utf-8?B?Q3JybHF3aiswdGJTb2lYaUszWUZkYWYxcTRaN0hsL25FTXkrbW0vWFEvSWtv?=
 =?utf-8?B?NmpBbm92MXZzWlUvTjNCcmxISGRKV1FGMmRWQVhaenpQcEF0NkZOeGtRa25C?=
 =?utf-8?B?eldXd0pjQTR4V2FlZGNMd3QxckNERllvbGZLcW4vd0V6bFdHaGhXZXNlSGwv?=
 =?utf-8?B?eWtKdGZhV1BuWVgwWUc5d3RBdVYzSzRvVmF0cld5ZHJmQjc4MGZhd0FlSXpw?=
 =?utf-8?B?ckpjTFNwTUpXZEQyNGxOTG45V0plcWR5R1NhNHVsWEtWTXYva1pDN0gzeXVi?=
 =?utf-8?B?ZjlpYTA3ZHplQlp3d3FlZW1LQTY1TlkzejZKY3NScXpHVlFsd3I0MmltSVgz?=
 =?utf-8?B?Q3lUVlhFOE55S3lLUzJ3V1dCZEVGRkQvQWlqSUhycXo3NTZ6VktERkhpZy81?=
 =?utf-8?B?YldZR0U3YTFWQ1BsQnBDTHE2cWR6NktZM0dNUmd3Q002UXRKVzhkMDZiK3hx?=
 =?utf-8?B?MVNpUHR1UmpiRHRCL0J4V1VadnVBNjNtTHhBZm83SE56TlZheGFKS1BEMWFm?=
 =?utf-8?B?Uk92clBONTVNSFRxcThMVDhObXdMeWRNNVdySGlNamMxUm8wZkNEYmJCUGdi?=
 =?utf-8?B?SHhDR29jSzFjLzlZL21YLzVNS0RpSXN2NzVjQlJjL1VnelNKenNSbXo0K0Vh?=
 =?utf-8?B?b3phdU1ValVoL3EvUE5wVlVZRFFYZnhsTlk3bXFwVVZUbjlZVnNOV2t4UUV0?=
 =?utf-8?B?MEFINFlNMVdRK1lWaFd2bi85dzdrbzdSMGs1amFIUTdUQVNOa0lsenVmcm5w?=
 =?utf-8?B?b2hoU2RsbzNxNWZHOHZWYnhRVXUrZHdRYWRDQlEyYUZwWk9nZlNtRGVjbW41?=
 =?utf-8?B?RWxRWnpkNUZJQ0RNckdQSVNXQW5EZWxIYkdwZ2dGejBXdUZhbVdwd28rWng1?=
 =?utf-8?B?bDRHZGJSWk5reitxKzNkSWR6QWtWaFJRNnRIQzJsYk9TSG5TRksrVVpKL09D?=
 =?utf-8?B?UG1zdldHT2Jhd2hKRXRrY3lsYllXV1ZaTitjWGl6c3JLNGhGK2NzZ2s5Tndx?=
 =?utf-8?B?TmdkTkVNSzQ2OUtIQnErYkgra1lJdTBjK0x3S0RwRWpKZlZtREpaN0F6YjNx?=
 =?utf-8?B?ZTg2ejYvSEhVL0VQbDUzZVdNZjl3Q29PNFFPSXBSbFgyMTJERUhlYy9XdlNT?=
 =?utf-8?B?Q3BlaE04Q3RMQ2RGazZXTXc0ei9hOTdRNmdtd3gvYU9PdE01dkE0SWJPQVdh?=
 =?utf-8?B?MVZtTHdqdmFHOHh6bkhjaVp0ZUVBRU9SWnhMcEV5SiswR3lCekZPbWI3eTBH?=
 =?utf-8?B?TjNGVUtwTUVMVlJleGhuczlQRnpVTzNzOXhJREQwNkkzZ2NjOWNRMVVLaUhD?=
 =?utf-8?B?N3dvcjY1THU0L0Ntek5sYmE1Ulc4RjE2OXBQOXdYaU5yQ3ExZzViMXJVQWM4?=
 =?utf-8?B?eHNoWE14UzhwRHRjVWl1RkdqV0ZCK3R2OEdIT1h3cXBNNTJnNUh1YXNVUFFi?=
 =?utf-8?B?YXBlOElvMVFiRGlCN2NUZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2ZSUFNRMjF3bXdleHJaNlpiZWZDU2IxaThPMUZyS1hTZ0doU25oSUVMR3pq?=
 =?utf-8?B?NkxjbFJwTStUME1mcTdLelJ5T1Q3Yk9GWUdGK3pManlVTHhiYVphQVNncElV?=
 =?utf-8?B?cnBnUUhUbFNLeS9zeS8vbjhmMGRKOXNodUhkOU0zWGxBK0t4allZelh5T1E4?=
 =?utf-8?B?MEl6K3ZJRHZHV1VnSy9hS1JiclFsaUg1dDJLMXRzM2VNa3VJeTZNSVEwYXpm?=
 =?utf-8?B?enpRUUJXS24zZFhmb2VvNVJwMTJSTzVQQ2ZBK2hoTFJrRDFwV2dFZjlaWnZi?=
 =?utf-8?B?S1RXemlXZk9STWZGQmxDTUpMZk9IbXlrRmU2ZmkwK2FSOVRDYU1lOUU5cXIy?=
 =?utf-8?B?OE1QZXA2YXQ2QnhXUks2WVA0dWZvaTlMQXdSREFJWkc4OURreGo1bUtUeUt3?=
 =?utf-8?B?ZHBYd1lWd0srN0hKK3AyNU1iTUtIS1U2RENzQ0dWVWpObGJHNUR4aElrUVIy?=
 =?utf-8?B?NHRhOFFySDIweGZxY3hxNjAvRXVXZUcyeXVSUzVhUTB0Z3VuUytObDdiSjZB?=
 =?utf-8?B?YU5qdVdTTEE4NUlkSHN6Ymkva0s4THU4NTVQcUtHWHl3TVpmTXpwOHFpVGpV?=
 =?utf-8?B?NEtCbCtzNGwrR0grM2plcFYvdmpvaHdDcDdrVklNQzNDSjAzMVBNWGRkalZq?=
 =?utf-8?B?aE5MbnRqTTZpcGhScCtJS0RPZm9VaElmRzdNRHllNU9ReW5icm1ZNWJETmNh?=
 =?utf-8?B?RkVlYmVPY0I3Sm8vYUhVdDhmVnpnUEJuRXpVU21BZjRWM1BBa0lhQ1RERXI0?=
 =?utf-8?B?dUNHaWtUb3F1c1dxanBHMmdjbUp4Z3ZWZ3VLdkFaNkt4Si9RV3NPOWo2U1hD?=
 =?utf-8?B?WDZsUHBtQmdmSjBmeGVqd3FaU29DcU1mNnRXVXpkMGwxZVNDbTgxem1KWG96?=
 =?utf-8?B?M25Gb05ZanN0Mm8zV29KSXBVMDVzQ3Nnb0o1UnRkalVhU1hxN0NsZVBGV0ND?=
 =?utf-8?B?QmF1YWg2STJRZUQxV2xZUVNMN2MydHRwejBjSnl2WkVuZ3RiSCt2aXdpelJt?=
 =?utf-8?B?eUtDa2NuSXcvdlpMcUFwLzM1M2trYkFDOUhIVGdzTEJKb1ZJR0ZhZUUyY3k0?=
 =?utf-8?B?dEZzbjI5SG1HWXBSTW1YNmlUNG5Ic21MMDZTcmFhNU5DTXN5L0FvclZDbU9z?=
 =?utf-8?B?TjlHMVJxUHR1UE9QLzNYeTkxWEc5ejBwd1h5c0ZCdWZoam54WG9ja2E4bU5I?=
 =?utf-8?B?WExjVUhTOUxWVTFmZUM4Qy8rekZ4cWpkQzhGdHBjUVd0Qm5temhCZGsvZjZ5?=
 =?utf-8?B?d3p5UDdOajZtRi8rMk1IQlRSb2RQcTZFTWRRR0tTbVBwcUF5OStnenRSRDBp?=
 =?utf-8?B?bzY1citrTFdNSElMVW1OU09EVGdaNW9NcnhMRy9tdVhQV1pha29DU2ZXRlNx?=
 =?utf-8?B?MXE0cDRqMFd2VDhGUDdzb1BPdndnU01QQ0NoRXIxZFdndy9BdHFxRFVBbDhU?=
 =?utf-8?B?TDhOODBqb0pEellmL1VsaWU1OWEyZ3BRTmpuN3FXODI3dVpDRFdiTmVCamVj?=
 =?utf-8?B?aERwdXlFVTZtS2pSQmRvRXB5eVlIS3plbGJYRUNmcy82ZDFCbXA1anllajE5?=
 =?utf-8?B?b1FtTEYvZlk0QUhHa3BXcHFLTnNPWHVtM0xoMy9GekZBT0E0UFNpV0gxYXlM?=
 =?utf-8?B?alA4cXdwaDY4VWNuZmE1SVJpbjBKMGhObkEyMTAvcjlhNXlXRXZzcEtDTktJ?=
 =?utf-8?B?YzlqSk9ybkExalpVTW4vMG5WY25MRm1kNWNOT0FDQnJtMTRmMU1aVXZhMlE4?=
 =?utf-8?B?c2hBWFFMbXZEZXppTUFnSDdYTGVYcjJXZ2hIZU5zaUZzM2txNmhPKzkvYTVn?=
 =?utf-8?B?ZjMzT2dabWlCR1c3WXdYL3ZhN1VLSytTTnBxSEhCL05nTXZncy9sRi9IQk80?=
 =?utf-8?B?NFNaWE4wbGRmeWg0bnM4cHdLMHRWVDJLT3JIM1R3eFBJMjdmcUFuc201bDND?=
 =?utf-8?B?T3VOMGM0cGpOakVlMFpKQmQxOEpmQ0Q3TGtoS3ZYc1ArYjR4K29mWldEKzJ3?=
 =?utf-8?B?TjZWNW9nZVdUbkhEWjA4TnBMWkYxbUV1c1RoTS9lSHlaT3I1WCtqSkpuR0xF?=
 =?utf-8?B?Wk9kWWc2NDZaUWFOZDJnWTVRMWc3QnlISGFkSXZORVJESjNOcWt4UEhvOU5h?=
 =?utf-8?B?aUlOOE9zT21RUGdFOWd2WHMzVG4zckhZdlNWUndueTIwWTdFWXRoajlYNWpy?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88b22cad-113e-40ec-25cd-08dcacc73e78
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 16:31:33.1056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lgwj5gn8L2a7CRhmWQMsv/OckBoT1pnzAzmjD7aKcOEwcQVSZKxdEhrq4VZXqMzXmI85d6rItIGDhT43E7Qus1ZvpBhG976p8XR4coPMs0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721925106; x=1753461106;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5w+lLvtCwOqZwG3Scgi+sI6uWkGt44CcOf7I03sNTtE=;
 b=glD618rA5BZWOt5o3QP32onYIIBipMO8ouYRrOOIWA5zP7rGILkqyu98
 Iadj2K38TgKPtXN9MQUtOYgK/g2OF4pXvDrTBwIk/g2V7M+UOFXW9p+IO
 UYy8WzI5AXf9UhLQ8P38yrBtua8Xo35RZrqWnranYuN/l5+o6/XV1w7jr
 /moNLFozVyZPB369EPD4uB46ZZg8VC5kdVr9VWpPWQPShXLNzZNG6/YG0
 MCI4n7/Io1RsaC8znWVEKbZ+WH+fFPwNBT6YovYpQlAJVFA/ud3AaDrd6
 CQYGMntDmrMvgwoaL9ApNOm7gXLvptyC1FYdHe6zwmerPcfE/52yghkF9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=glD618rA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/25/2024 2:34 AM, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The E830 and E82x devices use essentially the same logic for performing
> a crosstimestamp. The only difference is that E830 hardware has
> different offsets. Instead of having two implementations, combine them
> into a single ice_capture_crosststamp() function.
> 
> Also combine the wrapper functions which call
> get_device_system_crosststamp() into a single ice_ptp_getcrosststamp()
> function.
> 

The commit message could probably be updated since I think this is
referring to E830 code which is only in our internal branch. I guess you
must have squashed this together with the original E830 implementation
rather than sending that up and then this refactor/cleanup?

Not a huge deal, but it is somewhat confusing when reading the actual
patch code.

Thanks,
Jake
