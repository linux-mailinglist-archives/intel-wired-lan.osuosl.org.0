Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 193DD6E815C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 20:43:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA3226FE7B;
	Wed, 19 Apr 2023 18:43:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA3226FE7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681929794;
	bh=UOlNJdtsL693ze88aNulPu0GJUOztstJzrQIU8RL0xE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nnINUB+9hcwtEf6yij92EXj4cPSwVMHGoHXp46V7Zussge0gJwODO7m4cPcRfsk7z
	 01Dz48E+BVsK34DetdJwH0ZbdQk1D6orfhxqpq2N/aTBzkDpZ1Dff4owLMZOBoKyX7
	 9+Ih4SBR5/G2b8F+pcFwWNTlacqCEOiU/DVRDBbvZHmZNA+aHD3w5TQbFpuXHmJoYu
	 5n+U5T8oJryrJsHLG5zpkl873yERMOapOK2cZKNBQX6X+Om1S+NL244vNK7E8PUgZu
	 su2dxhMRqCwB1R1H9wUucA8VLiC8EgjlhNkAHPbbwe3PXncBKZSLIVbwtfEpIeAp0F
	 qfpI2V9ptCFTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5OiWG51IDeM; Wed, 19 Apr 2023 18:43:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14419616F5;
	Wed, 19 Apr 2023 18:43:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14419616F5
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B67B61C4335
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E0D084075
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E0D084075
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YiCS3EEilfqz for <intel-wired-lan@osuosl.org>;
 Wed, 19 Apr 2023 18:43:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6533581F7C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6533581F7C
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="325143341"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="325143341"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 11:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="691612626"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="691612626"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 19 Apr 2023 11:36:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 11:36:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 11:36:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 11:36:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 11:36:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BtQ3jGJRRXHvbvI7PXmHsJAq9CXW75yfDE3bOoxx2kNqvBjGWLC7G6/EQSwN+5OwnHPVgtTyLMEyYX6EnjmaEAZkrdUB7Ke4wDWa0PzhMnArZB87bV1MGmD4ilvI49qEuUmAEHKJIR824ev8xjnKnEvmk10fMoStVupu9QwbFjZXCIM6cw7ZgJkYkfQEs9BCXmS1ndQd+QuOPsf34IeKeivUY9Luh9AJehak5XURdcFCHF57whWOuUhJDN73OzecOWOdQ3d/STktUOIH4YRJoE5q6+1JKOBf7sszlEg7aDQo1k90SOC8GqM49FGyztWQaW+/HkQcFh84aMRK/Q8JsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iy8z3HN+G1slwkP2xOCxWfKspKL28g5po7qrMGG1wMQ=;
 b=L/rtSh3xvvD7z5TxkBxLJ5t30N+pOT199+TWgxWSMerw+RV1MLGADskqGwLomjUwbj1WNL2c2MtbyInCfup3NZXsCqb9Ph6+TjXLEXl3IDNcugd35EwF1KUaIKIY9qIFqrB4zae7ML425tFtP36DwnhUvr3M0tu2PgOSltKO4H1in8c84sktfGqLBySZsf//1Uqoy0ihVxxLyqH1w9o6sZdPwzV9FDKOn2E4BRpeSkjtp6usacpnyK77p+cKOTgZoef9yrztBpNGl2BMBHhzHDsHyK1Xtf0xSS8QUKZjjhVTGGNM9uy3NXiJ98tK2RFGFSVflVx9fUonAjYX4I/wSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5111.namprd11.prod.outlook.com (2603:10b6:510:3c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Wed, 19 Apr
 2023 18:36:38 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 18:36:38 +0000
Message-ID: <576a224a-9a13-6503-41f1-01b09ae87a5c@intel.com>
Date: Wed, 19 Apr 2023 11:36:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
 <20230419115006.200409-2-kamil.maziarz@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230419115006.200409-2-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5111:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c0f16e8-aebd-4ca9-58b5-08db41050309
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LBo22uQJabfz6qxL9Sg0FjaUf6qtMLo1EcTvzaLZgTspUL1tjtozbW9cdepSZ4ygTv9GdcPai1KdPI/DXEQ9LKgOGWfIUWgqTifm2oUjUIZWbUIWF/MEHVulP0omKhv4DCBAMy/9xSZQv3/8msVs0IHKyRMnofcXNkU+yw7Qin2qAfuLg2SbUu5ESesUQHmxnzv6p6+4h9myR8EuV7jeGcay/W4NjCIsCT97oHf1L8TqqVOVgeWqREPrm1FBXZlUT81TjBDn9RwLCWUwk/hqVWk4Xc843VC3SDeQuUdtGz9SWOIEZA0sU3rJfYMuMuJBcXBd0sx6L6GMjxbc51Mw+C/pMzhkqZF8xjEJoXHouOlhvrQRkcCLqA7J52eTS0XdtiD1f3nHJb4WlahhCYBRrJO4AGWB0p5Jyd1vV/CNuz7xbYukMsW8BQl014CFQxRZ6k+riiagiHFU2z+10sgEfwYx4/UmN6432W5MIL/mtDVHGYM5i7zH1Sc9aiwcACb9niSeKlR7T1/ywJ3ZKxEnt69eAJrOQ4Y85rZYLLTk7+95Ryh/W/bNsUxBn4bSwxIQZxxgV8+mEZJmtOYfQtG1ZH11WeyBKUh5I2byYh8E6wxzBCgzyQEDHoDKp1OCTrAaYMe3kIU7RQziXotDdfflDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199021)(31686004)(83380400001)(478600001)(2616005)(31696002)(6486002)(6506007)(26005)(6512007)(82960400001)(6916009)(66556008)(66476007)(41300700001)(66946007)(53546011)(316002)(186003)(5660300002)(38100700002)(8676002)(2906002)(8936002)(86362001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGRmc0tVaXMxODRjOVVSZFJNa1lwRW12NWZOV0NhSXZmZ3ZveW1ob2NELytT?=
 =?utf-8?B?UTh2NWErMUIrTk1wellMOVZ6bGFuWWd0djlmVWNFNHFEeTdSSEtTN1pMNjFT?=
 =?utf-8?B?bEpkK1RNK1pWejFFdVBsNVhpeGVLalhIakwxNmgzNVlMUVNZZ1lTVUd0bkxV?=
 =?utf-8?B?L2tHMGFSaWJCc2NNVnMvOVFlOVpxam5QUGNSbUdzQUZsWks2UUxUZkk5Nmti?=
 =?utf-8?B?M3NiTVFMNTF6dW9GQjcvNjRsQlk4QUxXY1R0VVlVWC81Qk5VQzFqTit1UVZU?=
 =?utf-8?B?RzZWdko0d2ZPNnJKME13S3BiYzEvN2xWenN0a3lGdEhlQUpoVTlENlBucGhv?=
 =?utf-8?B?ZzlEcnNpSkJFV2lPQ0pnUm9xNlAyWnlLd25zSHUvcTd5SURFeG9pemhRSW5V?=
 =?utf-8?B?Y1VEdGdCcGhWYU9XSEVqUi9xbi9yNHZZWlR0YkJQaTNkYVRNZHBnSDQ4Z0NO?=
 =?utf-8?B?SDNrTGIzZ0FEUnEwK0crbDBma05NYnowVnpCUTBZNkp3WVlkUDRTRWR6dk1Q?=
 =?utf-8?B?QlBhZDEycWRWOGloOVVrNCtvZE5MdEgrVHNsWVA0emhDb1hjaEwrdlBHTU9L?=
 =?utf-8?B?U3VhalRhNElYaHB5SE9iSXlxSzdsN1FNczdRd3hHcDNOZmJUTENEODdMdU9n?=
 =?utf-8?B?Y01lNkp4YXk4amVBTlA1bE0rNDlpRzB3TTRLS2ViRTViOXV6UGZLZzNqMFg5?=
 =?utf-8?B?Z2tZZWhYOHlmYXhDREw2a1ZaeE5OcDMrWE9CVDNQd2tiYlBNRHo3NWFxckxT?=
 =?utf-8?B?SlBLZG9PcVhmQzlFSWlKcjFac29Dd2ZDYkhNNlpoRzFuRzFxYTVpcU5ZL1Zy?=
 =?utf-8?B?S2pOb3prY09ETHE4bFVnVk1FSXB3MTJOcmNMdWNRNnQvVDRhczdVWkt4c1lT?=
 =?utf-8?B?U3hWNDR6bHYrdWczQzJMOXpna0xSbnJNMytoZzd6VXROWmxGczNFdThCN25x?=
 =?utf-8?B?RGFMZzRxL0NldXRiTGlxWUNCUnk1RjlMQXJOaUpPQURzU2NKWDg1b1RBWTJU?=
 =?utf-8?B?Z0V6NGFKK01SckV6Y0Z1U3Nsek9xQ08xSFFGcXY4RkdaUGR0Ty9iRndaUktR?=
 =?utf-8?B?NmNHTWZMcEN4b0dFZTE0MnRjOU5SK2ZMbXBQdFJDOHdWa3VuSk5WNCs5V0s2?=
 =?utf-8?B?YjJseUNOc2t2eXlOR0hzTmtXdnErSm0xb201dTRlYkU1ZHRON01tUzNJYWND?=
 =?utf-8?B?Zk91cVVvb3h0aGpLekdTQmVLYmlDYUUyQ0FheFVHdGowN3MrM3ZpM0dJTkdB?=
 =?utf-8?B?MzhRck5zTUVmbXB3TUZRNzloYTJFandOSW9GVmZ4WHR1VU5HbHBDeFR4by9s?=
 =?utf-8?B?cmZZeUlnbDJVbStvNksrQjRmY0xsN2lrbFlwNnBJZ0hGaVVhT0xRTmcxeFJQ?=
 =?utf-8?B?cHVGaStQeWdRZUNCOE85NnVIT1p1V0JNUEo4ZTZsclgwck1ZdU90bXVZVStM?=
 =?utf-8?B?ajFid09Vb2FkemRZZmpGNjdRT2FSR1JxOW84R2N1aVlTTmRYTXFGNmEyUlhm?=
 =?utf-8?B?ODQxc09qS25JZy9pT1FDR1hvZWFtR3p4VDQ3N3lZMDk5OHhhTENnaGRkcjhO?=
 =?utf-8?B?bzJNcFJxL3VXOXRGS212VVRHUFlUVmZzTjljaUJxYmp4cUNabWtRaU41dGxq?=
 =?utf-8?B?YU51c3ZxZUdydWhpTDkvM1Q3SkdzRC94dGtXRWM5Q2hwS0x0OUxRbWtjd3JX?=
 =?utf-8?B?TFMzZWNzWlhMQTVRak9HbTgvOStXRkJJVWx3aEZEaGxVYnUyOTJ1eUhyVGcx?=
 =?utf-8?B?N0NhRVA5YlBCa0xUTWVseW1wQW1zYVBsSkwrQkNCaW1WSGVyeWEwU2FRZWlV?=
 =?utf-8?B?dEZqVDRrRk9KV1NUcnBSL2V3Mk5jeU5lNE5xRy9jU0RFN2g2Smc4YTJhK1h1?=
 =?utf-8?B?Ymx2U2xRdHc3czJ4M21SL1pwV0l6VFhBU2xEWWxVL2JpNmFlL2t6TzZoN2hs?=
 =?utf-8?B?S0I1bkpkelQvRkNmT3o5dFRnak9RVUswQzR6TitRSzRXL2l6VVFaVllvNUFI?=
 =?utf-8?B?RytOYXNIMXd3S3d2UUZPTUJxQjRQblZuYmdPcEI5c1RWV2NKUC9wT0JOSlpX?=
 =?utf-8?B?TGlhakZOYk1ha000V25xOFdUejRRRVAxYkQ3cVBrUWNINGlPdmQzbHF5SHQv?=
 =?utf-8?B?RHNsVTk3RUlTWnNsTFlXalFQbDRFNlJXY1ZveTNHc3g0cVlJT0xRTVZKNHIv?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c0f16e8-aebd-4ca9-58b5-08db41050309
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 18:36:38.6766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uDodqgzASqzJQp2ttrsaa3/kSYX2JOFi+wqGEohRnI4D9rVKt87MI2eia6LXCJGK5TNvjTp6Jrq1AA6GPdUUaeMRi+vX8vGqesrW+8wVBts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5111
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681929786; x=1713465786;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B3tH5xHap1QIIZYMh7R4spwE5EVhRX5dvIMwYwQ2+EA=;
 b=ErIW33oT6zK8JPBoMvyRLIg6pceJpQqoCPzv6BQDds5EKZiPpvtoRJMB
 UxTu/27kPd8mzsUAjhN86fIQKyaJvLB99WVH/EAWMryQ1wZqLbalF2F7V
 jQhXecNQfBvybxahuAkIuwe8eN07Dpjz1zwgVYZ0RjqmLUWxEZHkZItdP
 6U1ilz377PKoGta7oyJWB6zoUH3po3z7g8ez/XI5X/QbykdGO+tuoVBAh
 P/FYmuyM1Xc0pkzWUYg7zZPAxCceiwin+tWkHSlwWvYmHO6CRPwxRoXb0
 bysY6pbkkNardGxVQlRFzQG/QIUE5bcgy3nzr8GsRQB/eIOeS483/aquw
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ErIW33oT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/4] iavf: Wait for reset in
 callbacks which trigger it
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/19/2023 4:50 AM, Kamil Maziarz wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> There was a fail when trying to add the interface to bonding
> right after changing the MTU on the interface. It was caused
> by bonding interface unable to open the interface due to
> interface being in __RESETTING state because of MTU change.
> 
> Add new reset_waitqueue to indicate that reset has finished.
> Add waiting for reset to finish in .
> 
> Add waiting for reset to finish in callbacks which trigger hw reset:
> iavf_set_priv_flags(), iavf_change_mtu() and iavf_set_ringparam().
> We choose 5 sec for the timeout waiting time because the same interval
> is used in oot where waiting
> 
> Add a function iavf_wait_for_reset() to reuse waiting for reset code and
> use it also in iavf_set_channels(), which already waits for reset.
> We don't use error handling in iavf_set_channels() as this could
> cause the device to be in incorrect state if the reset was scheduled
> but hit timeout or the waitng function was interrupted by a signal.
> 
> We use a 5000ms timeout period because on Hyper-V based systems,
> this operation takes around 3000-4000ms. In normal circumstances,
> it doesn't take more than 500ms to complete.
> 
> Fixes: aa626da947e9 ("iavf: Detach device during reset task")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
> v2: commit iavf: add waiting for reset to finish in iavf_change_mtu  was squashed also added the information about the timeout length origin
> ---
> v3: no changes
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 31 ++++++-----
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 51 ++++++++++++++++++-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  1 +
>  4 files changed, 68 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index 746ff76f2fb1..47f777674087 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -258,6 +258,7 @@ struct iavf_adapter {
>  	struct work_struct adminq_task;
>  	struct delayed_work client_task;
>  	wait_queue_head_t down_waitqueue;
> +	wait_queue_head_t reset_waitqueue;
>  	wait_queue_head_t vc_waitqueue;
>  	struct iavf_q_vector *q_vectors;
>  	struct list_head vlan_filter_list;
> @@ -592,5 +593,6 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
>  void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
>  struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
>  					const u8 *macaddr);
> +int iavf_wait_for_reset(struct iavf_adapter *adapter);
>  int iavf_lock_timeout(struct mutex *lock, unsigned int msecs);
>  #endif /* _IAVF_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 6f171d1d85b7..b7141c2a941d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -484,6 +484,7 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
>  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
>  	u32 orig_flags, new_flags, changed_flags;
> +	int ret = 0;
>  	u32 i;
>  
>  	orig_flags = READ_ONCE(adapter->flags);
> @@ -533,10 +534,13 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
>  		if (netif_running(netdev)) {
>  			adapter->flags |= IAVF_FLAG_RESET_NEEDED;
>  			queue_work(adapter->wq, &adapter->reset_task);
> +			ret = iavf_wait_for_reset(adapter);
> +			if (ret)
> +				netdev_warn(netdev, "Changing private flags timeout or interrupted waiting for reset");
>  		}
>  	}
>  
> -	return 0;
> +	return ret;
>  }
>  
>  /**
> @@ -627,6 +631,7 @@ static int iavf_set_ringparam(struct net_device *netdev,
>  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
>  	u32 new_rx_count, new_tx_count;
> +	int ret = 0;
>  
>  	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
>  		return -EINVAL;
> @@ -673,9 +678,12 @@ static int iavf_set_ringparam(struct net_device *netdev,
>  	if (netif_running(netdev)) {
>  		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
>  		queue_work(adapter->wq, &adapter->reset_task);
> +		ret = iavf_wait_for_reset(adapter);
> +		if (ret)
> +			netdev_warn(netdev, "Changing ring parameters timeout or interrupted waiting for reset");
>  	}
>  
> -	return 0;
> +	return ret;
>  }
>  
>  /**
> @@ -1830,7 +1838,7 @@ static int iavf_set_channels(struct net_device *netdev,
>  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
>  	u32 num_req = ch->combined_count;
> -	int i;
> +	int ret = 0;
>  
>  	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
>  	    adapter->num_tc) {
> @@ -1854,20 +1862,11 @@ static int iavf_set_channels(struct net_device *netdev,
>  	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
>  	iavf_schedule_reset(adapter);
>  
> -	/* wait for the reset is done */
> -	for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
> -		msleep(IAVF_RESET_WAIT_MS);
> -		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
> -			continue;
> -		break;
> -	}
> -	if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
> -		adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
> -		adapter->num_active_queues = num_req;
> -		return -EOPNOTSUPP;
> -	}
> +	ret = iavf_wait_for_reset(adapter);
> +	if (ret)
> +		netdev_warn(netdev, "Changing channel count timeout or interrupted waiting for reset");
>  
> -	return 0;
> +	return ret;
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 2de4baff4c20..dcf4232ba1ca 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -166,6 +166,45 @@ static struct iavf_adapter *iavf_pdev_to_adapter(struct pci_dev *pdev)
>  	return netdev_priv(pci_get_drvdata(pdev));
>  }
>  
> +/**
> + * iavf_is_reset_in_progress - Check if a reset is in progress
> + * @adapter: board private structure
> + */
> +static bool iavf_is_reset_in_progress(struct iavf_adapter *adapter)
> +{
> +	if (adapter->state == __IAVF_RESETTING ||
> +	    adapter->flags & (IAVF_FLAG_RESET_PENDING |
> +			      IAVF_FLAG_RESET_NEEDED))
> +		return true;
> +
> +	return false;
> +}
> +
> +/**
> + * iavf_wait_for_reset - Wait for reset to finish.
> + * @adapter: board private structure
> + *
> + * Returns 0 if reset finished successfully, negative on timeout or interrupt.
> + */
> +int iavf_wait_for_reset(struct iavf_adapter *adapter)
> +{
> +	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
> +						   !iavf_is_reset_in_progress(adapter),
> +						   msecs_to_jiffies(5000));
> +
> +	/* If ret < 0 then it means wait was interrupted.
> +	 * If ret == 0 then it means we got a timeout while waiting
> +	 * for reset to finish.
> +	 * If ret > 0 it means reset has finished.
> +	 */
> +	if (ret > 0)
> +		return 0;
> +	else if (ret < 0)
> +		return -EINTR;
> +	else
> +		return -EBUSY;
> +}
> +
>  /**
>   * iavf_allocate_dma_mem_d - OS specific memory alloc for shared code
>   * @hw:   pointer to the HW structure
> @@ -3162,6 +3201,7 @@ static void iavf_reset_task(struct work_struct *work)
>  	} else {
>  		iavf_change_state(adapter, __IAVF_DOWN);
>  		wake_up(&adapter->down_waitqueue);
> +		wake_up(&adapter->reset_waitqueue);
>  	}
>  
>  	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
> @@ -4330,6 +4370,7 @@ static int iavf_close(struct net_device *netdev)
>  static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
>  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
> +	int ret = 0;
>  
>  	netdev_dbg(netdev, "changing MTU from %d to %d\n",
>  		   netdev->mtu, new_mtu);
> @@ -4342,9 +4383,14 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
>  	if (netif_running(netdev)) {
>  		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
>  		queue_work(adapter->wq, &adapter->reset_task);
> +		ret = iavf_wait_for_reset(adapter);
> +		if (ret < 0)
> +			netdev_warn(netdev, "MTU change interrupted waiting for reset");
> +		else if (ret)
> +			netdev_warn(netdev, "MTU change timed out waiting for reset");
>  	}
>  
> -	return 0;
> +	return ret;
>  }
>  
>  #define NETIF_VLAN_OFFLOAD_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
> @@ -4945,6 +4991,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Setup the wait queue for indicating transition to down status */
>  	init_waitqueue_head(&adapter->down_waitqueue);
>  
> +	/* Setup the wait queue for indicating transition to running state */
> +	init_waitqueue_head(&adapter->reset_waitqueue);
> +
>  	/* Setup the wait queue for indicating virtchannel events */
>  	init_waitqueue_head(&adapter->vc_waitqueue);
>  
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 7c0578b5457b..1bab896aaf40 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -2285,6 +2285,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  	case VIRTCHNL_OP_ENABLE_QUEUES:
>  		/* enable transmits */
>  		iavf_irq_enable(adapter, true);
> +		wake_up(&adapter->reset_waitqueue);
>  		adapter->flags &= ~IAVF_FLAG_QUEUES_DISABLED;
>  		break;
>  	case VIRTCHNL_OP_DISABLE_QUEUES:
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
