Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B45A7F1256
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 12:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 511D060AEC;
	Mon, 20 Nov 2023 11:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 511D060AEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700480564;
	bh=CTzvb30CrgAjg/U+5XUD4A0zgea2VnvODHhIaPBei9A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qw7Jh2swcabtInLJmcMwy+EBCqDZ1XaGybaBAKYByxA21uunZBMnGWMrlV21Z0m3S
	 OsHM0guUreXWj9ucH8gCz9h0Hk92VHpsm1Wp8Owz0yyuXrxdhOWWdF/Gh4DZ7iWwD4
	 A+qkNeEYP3xRQ8ZUZ/suQ6qk37w6UiF3cGqoddUknLRikQ6SuMfoxi3z03FAZMeD7A
	 3NmzV5JmbzId+g14nBag8ohcl9v0WJ5M9U/uXJL2cdWDzLwGu0Ms6shTrvVBmnMISk
	 /+BX2WDerp6skwwaN/9IfZjmoB65uY98lzshxQw4m/7lmyklxCyzAghxlLZWzZ4jGe
	 UHsGnpEfrVwHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bMhlF6Tovx_G; Mon, 20 Nov 2023 11:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BFA160681;
	Mon, 20 Nov 2023 11:42:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BFA160681
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB1C41BF380
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 838E660757
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 838E660757
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o3RpOjZ3YR-R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Nov 2023 11:42:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 930CB60BAE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 11:42:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 930CB60BAE
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="376636308"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="376636308"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 03:42:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="14136085"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2023 03:42:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 20 Nov 2023 03:42:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 20 Nov 2023 03:42:33 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 20 Nov 2023 03:42:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LnebNumb2HGIMBLbsF6SWiyrXI4LMQEbZDZbDI5S7oyZOBo4nxgdijCG9URnRj+PYbYMR3bABP28OUGmeIsnipmtJzkVIAJHEkt9sJxPqeWx8GS8qEa5Ule3pyW3Hsd2UKsvmaSCdtxJAzPtxbV5jKhQ7tjg02efoAd5TyzJIyrazfLYZ+iBTVdWsjkCnc2AolbhGkNGiurigJQVtYz4q0IiNDKg70yb3ncypoQ8zL3fHsIg5bRWniJMYOdglZN5mXevFtcdCehU6LvYANEl0/h1JVmahiSwF00xZX+Lrw8JXjjwt13/GiA1BYbhsYYq5nuIGzkdLPaF3lnvvvD+Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BT5F9RWAAftVtnD+g11S9NtAMqGa57HMK6O+GT3//Xo=;
 b=leBKOsLryU7MzMJnuPzOXHuuhEAZR5OUfqqmtlM/FViovCkoMI7V/Mr4V8vBb8s0Mn8sl6uWWtcC/GsMTxZyMT3+cH3YZrlOPnxGmJz2JjsCnKuCvJ58bGai7oYtE+wqS6CCTGSAIsrtFr3d1UE4sGejhMLsEM3r4gWlWGZIlx3je9pB2LBbxcNALv4F9irocpALjmSjIas6kGxzhloR6Wf0RYkm4kfwYL4jbIPJXBUBJaxb2j/kjzdcM8N2kAjadCytebQKyApTvh9Xlx/fapzvrGVWWXZxs0XxIh52LH3HOZdIh4KtEPvkOfd6uBrG+3VQ8oZ+X5h64H1YjmQfgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by IA1PR11MB7385.namprd11.prod.outlook.com (2603:10b6:208:423::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.26; Mon, 20 Nov
 2023 11:42:31 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7002.026; Mon, 20 Nov 2023
 11:42:31 +0000
Message-ID: <2c61c232-1bbb-4cae-bb7f-92a7f2298e97@intel.com>
Date: Mon, 20 Nov 2023 12:41:51 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kunwu Chan <chentao@kylinos.cn>
References: <20231113093112.GL705326@kernel.org>
 <20231115031444.33381-1-chentao@kylinos.cn>
 <55e07c56-da57-41aa-bc96-e446fad24276@intel.com>
 <4b551600-f1a3-4efe-b3e9-99cb4536f487@kylinos.cn>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <4b551600-f1a3-4efe-b3e9-99cb4536f487@kylinos.cn>
X-ClientProxiedBy: WA2P291CA0029.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::29) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|IA1PR11MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: 9027d766-4f54-43b2-07cb-08dbe9bdc78a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4s44bXuEh2oNrPj/sT4Xx4j3tNpMc4oeewSVjwM6m0m7vvg6CjolRVMRNa91nCXlrm1J550kMaZW0dY6+61X1/qKyLg9+Ryy2TfHmI9pf4JUSb41k4vkexCtPZoo9i22tRl7lhIKHihpcH8xD2WQA4+xwkw8wN3TqcssRrCOhU2rR9vA/F8M7TJBy1SrGLNdwWo9RvApGYNVy98nTG99FjmtJ2naMj5zoYLuqlyo7D+9luGlJrD6/2HaOAVNu79Av8w50AeQ9NZFiwMCh+56VrkZFGhjMkJSszD584zoqsyd+gGRN8Vt2/nXMqzj9vketZLS8zUWWz2h/FBlbULZdoBpgkEAZoUFdmLMdMQTdKdMCR12O3lwAyy7pt9CjeyMpzUgcB4lPu8rAVk0FfXAYqK28r4nBxJrdBymcVxhuFvVbY63WQwsqcv0jnJekefUq7PYlKcarzfQORZsHR3+AnVXJ0k/It9tiYXd3kq1q5kkfZKaiO/ayEgx80VKuhDwZ3oahdFhsUmIM1kdmYJUyH6TbHLt4vpZyRn4qKIpDO+04svLIVywLNBNSzxPPnMea6VDty03c+he2y2+3rmalnY6cDN5PuCVPkRvUnlRgft9yikhOYEwWDhTwah+hhf3G4yhjKQF92PPyDRFAb+Qng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(39860400002)(136003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(2616005)(53546011)(6506007)(41300700001)(6512007)(83380400001)(36756003)(26005)(82960400001)(4326008)(8676002)(8936002)(7416002)(478600001)(5660300002)(86362001)(6486002)(31696002)(6666004)(31686004)(2906002)(66946007)(38100700002)(66556008)(66476007)(316002)(6916009)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnV5bmI3NTJtbUZWbmwrN3JCK1hwQlQrQ2twRktUUDU3WU80NXJxbk5TNHN5?=
 =?utf-8?B?MGZXd1JRTFlkVTcxQXY0L21zV2svR1I4OWdKMStkRDMxcHF4NEhJWUErTXpw?=
 =?utf-8?B?c2RJYWQyWVArUDZUZmhxb3N1bmk3a0h1TU56OEN5NlRrTUlPeUYvakxwc3RP?=
 =?utf-8?B?MWl0Q21iekhJc0hJN0JTZ2JQVWx2bWxSWlJQL0RLcFVqZXc5MlVPNEtPZFpk?=
 =?utf-8?B?c1JWWTZjQ1JhU2xrN2lqR0NhUWlkbk1oeHN2OTg1M3RWMWN0U1d2VDBBVGIz?=
 =?utf-8?B?ZmhkOU5TRlMvNDZlSkxiWlJ6T1NCeXBrN3k0VW9PMWZDQW5SWVM2VVZSRzB3?=
 =?utf-8?B?eG5ZakZHdTB3RGZ2VWxwa2pPajVYOHlNWFg0bVdCa0k4cmw3R0t5SWhBTnV6?=
 =?utf-8?B?eEliRWN3a0lDRjVzWFp4SVNYUXpiM0xHSVJMdEs4VldUYnhkMWx6ZExlYzJX?=
 =?utf-8?B?NGtaaFdhbFhuSFBsSGZYQTlJd2JTV2FzNWZUWkE4S0w0bTRWNERqRTdsSzNt?=
 =?utf-8?B?OTZkTjlOeDN1eDgwM01ML2JLYUFMdVpqQndEelZ2Qm9pTVVOOVFlVkV4UzZC?=
 =?utf-8?B?ZEFudlBKUFdLeDl6dCtLRE5SR1M5Z00xcnpRbFJkRGxRN004Zkg4OE44VjZp?=
 =?utf-8?B?NjBLOUt2MUZEZlZvYUZTSzI3SjRXVmpSaU5KRG5rYk12cTVJdGJpSkFVNTI2?=
 =?utf-8?B?N2NKSk1rVDlIM1JwUDBmN1FsUEgyS0wxdFRMN2R6Nlg0TXVXd09UNHJtN0JT?=
 =?utf-8?B?dmh1dUplM21XUGZsVDZUTGNXY3ZNRitENFlNOEhvRTRXUEdOWitHbnZsUzdj?=
 =?utf-8?B?Q1BRNXM3dU93czh1SXo5NHJkT0lBV0ZiaUJXUC92MEtTQkM3OVBPVDRNVnZo?=
 =?utf-8?B?YkhQU3B1dzB6NWE5RFVITS85T0FYdTlMcDc2SnQ2SThWdE5vM1UydGlyNTBx?=
 =?utf-8?B?Yll6eWtCTjM2TGwzRW8rYlNsM21xSWNZbFZOcDZYK1FDNWdQZjI0TWpLdjM3?=
 =?utf-8?B?MEd6bE9QcVdCVVUvekE4RS9Oa1c2OGEyNkVNWi9TY25KaWRNL2FYNlY1S2s3?=
 =?utf-8?B?ZlhPYWc2cWIrR29iS1loQUFaRUtZRno2aGFuZkVLSDRmdlBhZTlzTTgzczZK?=
 =?utf-8?B?RUtUOVloVGJpSGhSSS8rb0IvRC83NE5JcDYzVnhyS3lYUFdFOXZLUmh2OTkz?=
 =?utf-8?B?eTBFeXVSYjBFTWFhTW9wUURMRFdHQ0hvRGFISkh0RmI0VnlnbytZcExtalNO?=
 =?utf-8?B?dVAzMGtadW5wSkZ5SmFVdHhSU3VKejNreTlQcE4rY0tGdmY5VzlMOXlERksr?=
 =?utf-8?B?TlFuYldFWkFnait6ajRFSXppNC9YSGY1aGVRNEI5RWFEVEZkWEVXdVNkMEd6?=
 =?utf-8?B?YkZ3SHVFcWxTZVlIMmdrSXdDNm5CVVE3b2dEVFJyT0NPNlNNUHhvRG04N2hR?=
 =?utf-8?B?VllzZ1FpRTNsNFh2ajBSeHMxMEJaMlFqUHV5bWhZeTNyblRKeFk2RjB3bkJM?=
 =?utf-8?B?Vml0S1pGM3lyTWJzTkk2M0xNT292bmdMSEVPL04xOXFGL3RrRUF1T21oWlNn?=
 =?utf-8?B?SEFxUTgrUHN2TEwrNjNYVlo2bEUrNm11b1ZXcFR4NnNkYmZ1ZVkwTlREV0t0?=
 =?utf-8?B?aWN3bFhFeUE2eTJlTWY3ZXo4REdPOVRXdkg2eFNjMndDdHFxVHFrL1UwK3dt?=
 =?utf-8?B?TWNJT3JsalFSVEc5V3lCWXhRUGt5ZzQvbDRqcG13Qk9mVUxDSDFIOW9jNW8z?=
 =?utf-8?B?U21mMnB6aVhNaHNVT0k4aHNVRzEweEUwamlzQzJBYUR3cmUvUVlLWFdlVEcy?=
 =?utf-8?B?UTgzNUNUVFRUS3lHR0h0TXJJMUV2WS8zR2plZll4MWhVd0ZPcnk2d29TMU1q?=
 =?utf-8?B?QWpKNnFCNHZCUU16R1c1WkdzcnN3S1JrbXNJeTFkeURySzBjaE5oajEyaTBI?=
 =?utf-8?B?R3kxWWRLclB3WDNwbHlRbmxYVGVtTUZMM3A1TEZIVGREVi9CUUtiZFlVbWlR?=
 =?utf-8?B?NytWUW9XWDIyWUl2YWRCdzFpNXdES2RiQ29HaW1nSDBIdFRHSG9LOWlKTjdn?=
 =?utf-8?B?Zys3d3MrTEVOaFpMWGZXZmZaY0grcDc4djVvZHUxTXU3MTBTKzhxSVBQQW9D?=
 =?utf-8?B?bTUzeTBuZGc3NDFsL0VQMXY4SUxXdUhjVWh0UTBBZUNlMG51UDVIWlFmZDFh?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9027d766-4f54-43b2-07cb-08dbe9bdc78a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 11:42:31.1283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/BOECmCiwQVCA4/Ufzveg09ZZp6eHITTwfa8vxR01409cZJPZ8PccYSK/jkRXX49E+Sd47HHuinI/yOIBpXz3VjIUA09me3lVwgfRI+LnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7385
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700480555; x=1732016555;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OvSOmxdQj3EiGCraU125XPAOXvkdSgfQjEttLCg/BWM=;
 b=dIN0LSUprFObNdufQkbF4pTFvzM9AkWdyxQr1sl22KMLrF4jmsfCy6bc
 5IIhEOoE72HKkNE33nJdPRr+CUmPlMe83FvSN99MEV3kZrQTMi+fGX/bT
 jJICyXwJ1xZthr8wHFk/394pW++GTaNJ4ebKc3Sqh/i7bKGgymBecxzpU
 pp90RZPYwTr490hdn9ubIMgnNuP0OVgOKxqcKy9OZ67tKAZcQ+4zH48tZ
 61IyBrOhsbnRMp/WRoV7ZRcU8YAEXegBHaf39YdmBrtUH0RdE58CpaISD
 4BKWe9HiJQ3BTp4n0BhJY2FcMWQn1/ADryU/6E0VmNcl4I04kgN8Xfjam
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dIN0LSUp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 horms@kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogS3Vud3UgQ2hhbiA8Y2hlbnRhb0BreWxpbm9zLmNuPgpEYXRlOiBTdW4sIDE5IE5vdiAy
MDIzIDIzOjEyOjA5ICswODAwCgo+IEhpIEFsZXhhbmRlciwKPiBUaGFuayB5b3Ugc28gbXVjaCBm
b3IgeW91ciByZXBseSwgSSBsb29rZWQgYXQgdGhlIG1vZGlmaWNhdGlvbiB5b3UKPiBtZW50aW9u
ZWQsIGl0J3MgcmVhbGx5IGNvb2wuIEknbGwgZGVmaW5pdGVseSB0cnkgaXQgbmV4dCB0aW1lLgo+
IAo+IEJ1dCB3aGVuIHVzaW5nIGl0LCB3aWxsIGl0IGJlIGVhc3kgdG8gZm9yZ2V0IHRvIGZyZWUg
dXAgbWVtb3J5PwoKWW91IGhhdmUgYSBrZnJlZSgpIGF0IHRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9u
LgoKR2VuZXJhbGx5IHNwZWFraW5nLCAna2EnIHN0YW5kcyBmb3IgIltrZXJuZWxdIGFsbG9jYXRl
IiBhbmQgeW91IGFsc28KbmVlZCB0byBwYXNzIEdQRl8gYXMgdGhlIHNlY29uZCBhcmd1bWVudC4g
RW5vdWdoIGhpbnRzIHRoYXQgeW91IG5lZWQgdG8KZnJlZSB0aGUgcG9pbnRlciBhZnRlciB1c2lu
ZyBpdCBJIHdvdWxkIHNheS4KCj4gQWx0aG91Z2ggJ2ttYWxsb2NfdHJhY2tfY2FsbGVyJyBpcyB1
c2VkLCBhY2NvcmRpbmcgdG8gbXkgdW5kZXJzdGFuZGluZywKPiBpdCBpcyBhbHNvIG5lY2Vzc2Fy
eSB0byByZWxlYXNlIHRoZSBtZW1vcnkgYXQgdGhlIGVuZCBvZiB1c2UuCj4gCj4gT24gMjAyMy8x
MS8xNSAyMzozOSwgQWxleGFuZGVyIExvYmFraW4gd3JvdGU6Cj4+IEZyb206IEt1bnd1IENoYW4g
PGNoZW50YW9Aa3lsaW5vcy5jbj4KPj4gRGF0ZTogV2VkLCAxNSBOb3YgMjAyMyAxMToxNDo0NCAr
MDgwMAo+Pgo+Pj4gVGhlIHNpemUgb2YgImk0MGVfZGJnX2NvbW1hbmRfYnVmIiBpcyAyNTYsIHRo
ZSBzaXplIG9mICJuYW1lIgo+Pj4gZGVwZW5kcyBvbiAiSUZOQU1TSVoiLCBwbHVzIGEgbnVsbCBj
aGFyYWN0ZXIgYW5kIGZvcm1hdCBzaXplLAo+Pj4gdGhlIHRvdGFsIHNpemUgaXMgbW9yZSB0aGFu
IDI1NiwgZml4IGl0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEt1bnd1IENoYW4gPGNoZW50YW9A
a3lsaW5vcy5jbj4KPj4+IFN1Z2dlc3RlZC1ieTogU2ltb24gSG9ybWFuIDxob3Jtc0BrZXJuZWwu
b3JnPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
ZGVidWdmcy5jIHwgMiArLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2RlYnVnZnMuYwo+Pj4gaW5kZXggOTk5Yzk3MDhkZWY1Li5lM2I5MzljNjdjZmUg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVi
dWdmcy5jCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVi
dWdmcy5jCj4+PiBAQCAtNzIsNyArNzIsNyBAQCBzdGF0aWMgc3NpemVfdCBpNDBlX2RiZ19jb21t
YW5kX3JlYWQoc3RydWN0IGZpbGUKPj4+ICpmaWxwLCBjaGFyIF9fdXNlciAqYnVmZmVyLAo+Pj4g
wqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaTQwZV9wZiAqcGYgPSBmaWxwLT5wcml2YXRlX2Rh
dGE7Cj4+PiDCoMKgwqDCoMKgIGludCBieXRlc19ub3RfY29waWVkOwo+Pj4gLcKgwqDCoCBpbnQg
YnVmX3NpemUgPSAyNTY7Cj4+PiArwqDCoMKgIGludCBidWZfc2l6ZSA9IElGTkFNU0laICsgc2l6
ZW9mKGk0MGVfZGJnX2NvbW1hbmRfYnVmKSArIDQ7Cj4+Cj4+IFJldmVyc2UgQ2hyaXN0bWFzIFRy
ZWUgc3R5bGU/IFNob3VsZCBiZSB0aGUgZmlyc3Qgb25lIGluIHRoZSBkZWNsYXJhdGlvbgo+PiBs
aXN0Lgo+Pgo+Pj4gwqDCoMKgwqDCoCBjaGFyICpidWY7Cj4+PiDCoMKgwqDCoMKgIGludCBsZW47
Cj4+Cj4+IFlvdSBjYW4gZml4IGl0IGluIGEgZGlmZmVyZW50IHdheS4gR2l2ZW4gdGhhdCB0aGVy
ZSdzIGEga3phbGxvYygpIGVpdGhlcgo+PiB3YXksIHdoeSBub3QgYWxsb2NhdGUgdGhlIHByZWNp
c2UgcmVxdWlyZWQgYW1vdW50IG9mIGJ5dGVzIGJ5IHVzaW5nCj4+IGthc3ByaW50ZigpIGluc3Rl
YWQgb2Yga3phbGxvYygpICsgc25wcmludGYoKT8gWW91IHdvdWxkbid0IG5lZWQgdG8KPj4gY2Fs
Y3VsYXRlIGFueSBidWZmZXIgc2l6ZXMgZXRjLiB0aGlzIHdheS4KPj4KPj4gVGhhbmtzLAo+PiBP
bGVrCgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
