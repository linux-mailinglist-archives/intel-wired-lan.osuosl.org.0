Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E039F708319
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 15:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FA2442951;
	Thu, 18 May 2023 13:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FA2442951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684417612;
	bh=Nscu8gAwfe/s5YhLCLpdvCJHo6j9VuS/oPw7L0KJiBs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uj446pMzbJLTtnVPhdTol3n0dJ4AvZTm63JxxfMN3sWa+I/RFMGqHigSRHTBWul6F
	 v3V4rG2wc0Z500N3m/+HcAC4/4lfi16wfRicenOXnhX5FWyo7kCTm924Xz2wxFYx48
	 RM7S8RhhsaLIpzMZQDr5f48JPONHDLQtn50fKl7K7/yVMUFUFUpaY2DbiI+96YWBdI
	 5tJZjcPB1f3+5UkLw2pQCwZs173Uj8LAnofsAkUmVvkSYWCIDJLUwxf+BMI8IRQI+o
	 Znm/gqfonnIC8a1Sc/wfWvc3oFwqneai/ZHC2gQq+5msBiHMVzSjlxkPJmngebtMOr
	 EQzZcdugFje3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjsRWZMs05c7; Thu, 18 May 2023 13:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B376642952;
	Thu, 18 May 2023 13:46:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B376642952
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8BA21BF47D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B03AC84444
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B03AC84444
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAnNpKiVwQqr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 13:46:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A83DE84442
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A83DE84442
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:46:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="332436017"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="332436017"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 06:46:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="1032191287"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="1032191287"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 18 May 2023 06:46:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:46:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 06:46:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 06:46:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWbe+foDm10fIQUIdJFIgQnR32YTURpb1kNyjvfhsFAcwZwi8+kl6DD7Iqt0eMkv/uy8sX5iuzDV6r5TgmASc58nW5PfRzvJtRzvcL9HTf8M+SnGlGuAIUbwM3F16csOIaH6FeHu369QkBAPv4/WNh3urH9oIFP9e+HD6bgTOIGKwR6XKt2YQdu77oDfL2OqyMbnME5PCGyPi4wts6k8hcvjoNBWNoE3WTje5G+bWiq8+xfGf2x7ffIZQ4LS7aMk6mB8BCHyz5dJHyb/hBsgSkV8LCd4ez25r5wGtHb7AYwIxiijAcGgx59pOnTFEBbY9521Whnd1jYP73URz89Abw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHHdFCg4iledKcQL96ipQRJVE2dtdWpTWQVholj9aFQ=;
 b=gv8dwiXJT61m3Wls1sQ9HATwbsujnLCfNx1qJssgsvScuh968jwIWlj7KN3YElKEFmvsmjL1widsZ2x2f0jCQ3vwrRjZEbPPbOMB0FG+qsAqxnBwNaT42UE6GTV6Zw9KteMwGmXWMcAurwitIyID1EfSUi9kMRS2/vemabyDbQBgx6+yJCPMV8MHjACh+AbONu7C/NLvVx3vVNhV670Z8rOn53W30lQzF+Dw4Bps1T9Jl+B9G/uqFaaW5MsdGKYOfU/WbNY7W3JhuZp9HnQHqe0OQ+S/l8ADtvI8xRt4kT2cmlMXzsRlX2pXLOPTdgg6HhbdJQ1a5rW00Z9v7P2vQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MN2PR11MB4614.namprd11.prod.outlook.com (2603:10b6:208:268::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19; Thu, 18 May
 2023 13:46:32 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 13:46:32 +0000
Message-ID: <9feef136-7ff3-91a4-4198-237b07a91c0c@intel.com>
Date: Thu, 18 May 2023 15:45:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-8-aleksander.lobakin@intel.com>
 <20230517211211.1d1bbd0b@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230517211211.1d1bbd0b@kernel.org>
X-ClientProxiedBy: FR0P281CA0167.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MN2PR11MB4614:EE_
X-MS-Office365-Filtering-Correlation-Id: 83ab6f7f-ef19-4de1-8455-08db57a649d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8+CoCdkYevW6fia7VXYb56GFlijtBSzNZcOU1RH2Mpg7TaRTSXyH4JiT+1CApjTTTmZ3ozvWcRqmmszm8YCkXVBi7Lv29QDwU/AqS/76uQOSADST2fdQ3d3ZdLFKSc6w9tJwiU0RsnGt/PYUJezjGll1gPS0GiCHoXOYRCBwu4Wqz8Q58E8rDfZWaKt68mse05Hi6lotcSJrEFq8QVk2LJwM+yuVcB9QGVHRCED0ignVJrj0XWC/c7yC4ZFdlxDYeP0ymrHEjXJkJofjrnAfwMbXD5K2nF3DdiRZKpl+IsrcH+2k6eY1SQHtp4ZVmnjkOoZzhTk23Uv8PO+XSSNLbAECzbqxEDpDiV9hyy2WTJq6LeXTQBm2T1E/GYYM1l3uUDlA5VwFGS+w+tKdHZjef0iG8OnrIWOV55mrl9SB3C4oqpcAtEn8nJLNUsNv9uzxPohKhTiSmMk5ksL+8gvFhGU5DzXXOygsZBdI3J3RCanqv152FYCAhkcPNjdMv1o37f1E/flYl5/4fgGyR5Li/MgIp64CmlEL1/04bm+0FmxI3zI5fp3kOycFg20wIhkX2ZxqX5KZNofhSIMmffK+xhdx90QXJxfyPMpWUnvqYxzpaUNCia2gFlOnaYDG67fOiHixJckmPUy5H8wdnmF3Kw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199021)(26005)(186003)(31686004)(107886003)(6512007)(6506007)(7416002)(5660300002)(2906002)(2616005)(83380400001)(8936002)(8676002)(41300700001)(6486002)(86362001)(31696002)(82960400001)(36756003)(316002)(54906003)(66556008)(66476007)(38100700002)(478600001)(6916009)(4326008)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2F4cnlnQ3o5d2dmZUxhK0NVenB0MFpZL3ZYdXcxYzlmQWQxNDE4Vyt5aHFm?=
 =?utf-8?B?WnM1LzUyYUhhY0laeTdRcVVWRVh6cytPYkR0RXpmNm82aTdRWTFDM25CWmxK?=
 =?utf-8?B?dnhuS3JlN3FwbDZjTk8rZStZTk9mcGh6TWZKQjVsOTI3R01tR25WVDNGTXhC?=
 =?utf-8?B?T003UjF6bnVRUm1SZzNNZzdWOVpQMWpidFVZQ0tpL3h1OC9EcFNiUXVwS0gy?=
 =?utf-8?B?S21qZlVaQy9hdjRXTUN1UytaQ2g2YklJa0lDQ25SWXhYZmpPdVZ2Y3JKZk82?=
 =?utf-8?B?MEdGSURhSHhPSHVmQTdhc053NzlpaG5oRFBHcUo0M1R6SWhEcFo2REpmSzBV?=
 =?utf-8?B?ODBmOGljYjY1RVY1NEFYOU9UZjVLQjlGeWYzcFFDNmxpSEh6aWR5WTJIelVW?=
 =?utf-8?B?MnpLeUE1ZUorbnd2bjBZeHRoYWt4UTFUckhwVm5tUFQwaW5kTEJMcFlGcVdj?=
 =?utf-8?B?NzZHMGpzSWVES1NZZWdjcXQ1U1FhZ2VuT3ZPZHhZOVhNR1B6a3NjTGtadkVX?=
 =?utf-8?B?YWUwNTNkQnFvOXdtdXFYczh3cjhIcm5oUUdCc2RaMERtVlFCTHRFdTRmNEx1?=
 =?utf-8?B?NXpOMnYzQXZuSzN4andTbXArdjFiYmxqVTRYWEgwSS9IV2JpTWJTN2FoZHNW?=
 =?utf-8?B?dWIvQStwbjdYbDYrUlhKWHE4c2VmQ3ZjOHFjWkR5cTI3OUxmVFhLMCtXS3BG?=
 =?utf-8?B?Q28zL2YrZTl1TTNmdzF4K0FLeHpoSEVKaFRBdVZhT2JudDNsOFpEQ2s5UjlT?=
 =?utf-8?B?Vjk1ZWVCS200VVp4NXdPZXhyb2dtbStYcEJqWlhVU1RyYkk1SmZhUUxZd3Na?=
 =?utf-8?B?dlBlZnNzcUZUN0NrOXpzRDFkZ2ZlSjNsZkVTUUlUWCs4amhQSS9xN09HTUht?=
 =?utf-8?B?YWt5alRqOVBWbU9zRXVQTFdScnVBM0plMzFBRVpsN1M2VW9TRDRhbFFTVVhV?=
 =?utf-8?B?RnllUWs4U0U3YWloaGhQeFpRKzVGb0lGMUZrbGtQTXVRNHNjcHl2WUp6Tkw3?=
 =?utf-8?B?N01DTDZEcktyTEh4OTNYWkhQK3pocG1jK1BmL3lzTkJWRHBjWXZGSzVxaENq?=
 =?utf-8?B?NjZkQ3JjUUo2NHJROVhxem5FRDV2S1RKa2IwL2htdFZocllUZkZnRVNtVVBT?=
 =?utf-8?B?ekJ0L3Fld0RmaWt2YkRHS2JpN3RFV3JJYVgwR0VKUkJveWpBL2lxS1ZZckph?=
 =?utf-8?B?Tzh0VHZtMm01V09Rdi9RMGJ0WHdMZU5ldWpIN2E1NVN3b201RFJDemFweHBk?=
 =?utf-8?B?d1dGSmdwNlk0WE94Ky9kRjlSQ2NGRzR3K3M4d0MrWWY4QllVVkcvOEdMSExa?=
 =?utf-8?B?RVFJN1lWWUVNbTNGRllmYms5Y1hBbWppSlVKUkdwbXAzMmcvbHZ2ZXk5cCs5?=
 =?utf-8?B?Qy9lQ2pMUk8yK1FNZFJ6Ulhnemc3eXJITE5qbVFrZVNrZ09yV3llSmpyWWM2?=
 =?utf-8?B?UFl0MEd1NTlKRDFyTjI0RW85MjVPMnBtR1FsZC8vcEMxZlJsWVRDN3hWMTZ4?=
 =?utf-8?B?R2o0cFNMVDJRMUJQczN2c1BxaVBqZ04zTmJaT0R2VjBqMHV3SGxzaEZqell3?=
 =?utf-8?B?bk9xRzRXRUpPVi8wdXE0dU5MelhSMStaUk5HNXJWZ3FCeHJTb1k0dzFxVWVV?=
 =?utf-8?B?YXpLN3ArbFplNmRpckdCTVZGSTNZV01pQkJobmhFcXd2L1RMb3l3OGtnNEFN?=
 =?utf-8?B?cC9kTk1OZ1ZiRGRwei9IbEpTUTRpeWJDcEF6dzRLM2hRcUZBcndaZ3daN1NN?=
 =?utf-8?B?eStUM2NaVGNpekU2VTFWYzB6SkZWUm9CMGdFaVlrZmxrZVBaV3krd0t3dnlp?=
 =?utf-8?B?UXMxaXNWTnY3WFVpakV3ZysyMXRiZ29kZG5PMnZmZ28xVUw5Ykd6Z0c4bzR2?=
 =?utf-8?B?M2Vqd2RnNllKVnFqV1JseERybEM2TDg2eCtaR2prMis5Tm9Bb2hSVlJDNFFr?=
 =?utf-8?B?Z0lDNGpQOFhvbk15VVZHc012cFl3OXc1TDNQRFo0ZzFwdlVPdGFiUzk4cFRR?=
 =?utf-8?B?VVZNUHY2dkhRMnNVRmx5aGxqOUdzVm1LOHBOQXhtQXEzVGZOS2J0RWowM3Yr?=
 =?utf-8?B?ckVNUW9HOEt1YnRlcTFKMlNxYktncXpLMXUyeFlpYnBWM25iNTVMVGJIaUtF?=
 =?utf-8?B?ODMyZjRhUHBrTUJtaVdjWkRBYmdOTkJaL3BVRTlHRTZaRSs4YVhCYU1VRmpK?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83ab6f7f-ef19-4de1-8455-08db57a649d6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 13:46:32.4077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: szimUc+L9fh7M/oDSHsvQq5zp7fnODRhe6qOC2XxNEuPpBmZaT9r+ulcS1nj2y1Cob6BysGnN0G7/cR6YI15K3A9FHJb3fszXVgHlY7Xkok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4614
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684417603; x=1715953603;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=itCxthsK1yxKNi37C1Sj/EKX5/xVxle24tc1wed2CAU=;
 b=Vc2CUTmRP8WPjFx3lai5oXER75Ah4C5HGH4XCt43wKoa9yqxNichNhIJ
 HU9xJ4jOlJDTPIZ6l1WozFQwHDgKuY37/6+9ms8Y7nSdwzBsNsNBBmci+
 qUQA90xZUQAZCv5KVwDKCare6vuWI8uaXSLdw+FkyOV0YK0k14a6fFc2c
 /wXjiwHmIVQ8hIglyKZVmyjE9GaQDN2QKI1WpyGTRtTM2I2mSmIY8yDBr
 KlRtItzFhXCCpTH7Qfg/6b+oKk4fSbkrf7l+QVF3WAzxDJ/S//iKQBa6y
 cff9BfEbFIAWjKiasw1ybg0pcdEXSl2WjCKYZ3HWciGe1l3GkKv5Vq0G8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vc2CUTmR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/11] net: page_pool: add
 DMA-sync-for-CPU inline helpers
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Christoph
 Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 May 2023 21:12:11 -0700

> On Tue, 16 May 2023 18:18:37 +0200 Alexander Lobakin wrote:
>> Each driver is responsible for syncing buffers written by HW for CPU
>> before accessing them. Almost each PP-enabled driver uses the same
>> pattern, which could be shorthanded into a static inline to make driver
>> code a little bit more compact.
>> Introduce a couple such functions. The first one takes the actual size
>> of the data written by HW and is the main one to be used on Rx. The
>> second does the same, but only if the PP performs DMA synchronizations
>> at all. The last one picks max_len from the PP params and is designed
>> for more extreme cases when the size is unknown, but the buffer still
>> needs to be synced.
>> Also constify pointer arguments of page_pool_get_dma_dir() and
>> page_pool_get_dma_addr() to give a bit more room for optimization,
>> as both of them are read-only.
> 
> Very neat.
> 
>> diff --git a/include/net/page_pool.h b/include/net/page_pool.h
>> index 8435013de06e..f740c50b661f 100644
>> --- a/include/net/page_pool.h
>> +++ b/include/net/page_pool.h
>> @@ -32,7 +32,7 @@
>>  
>>  #include <linux/mm.h> /* Needed by ptr_ring */
>>  #include <linux/ptr_ring.h>
>> -#include <linux/dma-direction.h>
>> +#include <linux/dma-mapping.h>
> 
> highly nit picky - but isn't dma-mapping.h pretty heavy?
> And we include page_pool.h in skbuff.h. Not that it matters
> today, but maybe one day we'll succeed putting skbuff.h
> on a diet -- so perhaps it's better to put "inline helpers
> with non-trivial dependencies" into a new header?

Maybe we could rather stop including page_pool.h into skbuff.h? It's
used there only for  1 external, which could be declared directly in
skbuff.h. When Matteo was developing PP recycling, he was storing
mem_info in skb as well, but then it was optimized and we don't do that
anymore.
It annoys sometimes to see the whole kernel rebuilt each time I edit
pag_pool.h :D In fact, only PP-enabled drivers and core code need it.

> 
>>  #define PP_FLAG_DMA_MAP		BIT(0) /* Should page_pool do the DMA
>>  					* map/unmap
> 
>> +/**
>> + * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
>> + * @pool: page_pool which this page belongs to
>> + * @page: page to sync
>> + * @dma_sync_size: size of the data written to the page
>> + *
>> + * Can be used as a shorthand to sync Rx pages before accessing them in the
>> + * driver. Caller must ensure the pool was created with %PP_FLAG_DMA_MAP.
>> + */
>> +static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
>> +					      const struct page *page,
>> +					      u32 dma_sync_size)
>> +{
>> +	dma_sync_single_range_for_cpu(pool->p.dev,
>> +				      page_pool_get_dma_addr(page),
>> +				      pool->p.offset, dma_sync_size,
>> +				      page_pool_get_dma_dir(pool));
> 
> Likely a dumb question but why does this exist?
> Is there a case where the "maybe" version is not safe?

If the driver doesn't set DMA_SYNC_DEV flag, then the "maybe" version
will never do anything. But we may want to use these helpers in such
drivers too?

> 
>> +}
>> +
>> +/**
>> + * page_pool_dma_maybe_sync_for_cpu - sync Rx page for CPU if needed
>> + * @pool: page_pool which this page belongs to
>> + * @page: page to sync
>> + * @dma_sync_size: size of the data written to the page
>> + *
>> + * Performs DMA sync for CPU, but only when required (swiotlb, IOMMU etc.).
>> + */
>> +static inline void
>> +page_pool_dma_maybe_sync_for_cpu(const struct page_pool *pool,
>> +				 const struct page *page, u32 dma_sync_size)
>> +{
>> +	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
>> +		page_pool_dma_sync_for_cpu(pool, page, dma_sync_size);
>> +}
Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
