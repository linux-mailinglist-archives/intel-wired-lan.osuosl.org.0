Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF42A833C0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 23:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F7AC811F3;
	Wed,  9 Apr 2025 21:55:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id STGloocwhbae; Wed,  9 Apr 2025 21:55:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E12BB81151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744235727;
	bh=puxCqEOyyWnmiUx2J2a9EJ1ZSz66k2yLtwB8EwiTPgU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zZUyTtP0yhdho2om/VrNmfb9QOr0cPN6ChOGLeoPnhyuqRDUCWUFrTD0FZzv/W3sD
	 pigOuilxjRhFqQ+oqG0If1Z7s5isISjbMFuW4guhUuiqUbGrWJoFC8AQt38IZ4EFWx
	 CFZfjqbyDlVEwA+982gzUOyd81Jo1ZiZyyDaO0Al2sIhIA2Btr20DrPrM1/duaCSpI
	 NjQXanX95deqHfvLO4zfARQ14NGxtTM9H+7p/w40rdp8X56sBQsHDZecHyo4Kyfqc2
	 eeWR9l66gigaAcPEl9uaNgJzvBrsuZWJCYFS8kcUbKAxYjH1gwKKcCMjLppSynTItK
	 uGwpV0muC+ExA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E12BB81151;
	Wed,  9 Apr 2025 21:55:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E499108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 21:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 464FE80F08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 21:55:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNgzD-x5RXIM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 21:55:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 90FEA80CA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90FEA80CA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90FEA80CA6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 21:55:25 +0000 (UTC)
X-CSE-ConnectionGUID: icnWttVsSMSdfCMNQfVtAg==
X-CSE-MsgGUID: Q1PpbshiR+ekm1GVvyumig==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="48434455"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="48434455"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 14:55:25 -0700
X-CSE-ConnectionGUID: c40ewMdMS8ufvB75O4WnnQ==
X-CSE-MsgGUID: fpGhnNtYRUCm07p+7eCE5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133576018"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 14:55:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 14:55:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 14:55:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 14:55:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qBPo2rIoeSWv1ba1P8QcTIVjIzQawQyDL3+y3xwmq1volqHtbaC9yqyriYQFEfHz3+uRRiRGUtVwvc2xXIpEeb+6S8sVb+8JzZMiTiBgDuvGawUObU3x6Evj8F4bwagFiFAWm0Cj0GynGVJK27EAOarG9WCCHfdY1XnPQUuQpJaS+6McwXEFbmUrkoAx5IhOuiFDw1p3ajT/yPEFr+3g9UolKyX4c1l5+Lo8g8BDvT9T17Zh6KQN5LPdp/5ipgtc6NaPTBaTwa+tj52DJluC96s0F4p25cBycIIZkkQplawa5m4VTB9DxKYOH8lNthD36ixlNohO8cQanZ45glxURw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=puxCqEOyyWnmiUx2J2a9EJ1ZSz66k2yLtwB8EwiTPgU=;
 b=sjutwggpm/O9hUdKHnn/dswIlA9ZbRWQ3XHfcc+nPaQx0M0jjI53PBDkSsjRvkGM60gWdRuzblUtUYoYusuXSR4g2NseHm43fRlar07vMRyh1Z924OVqSsj81orGzVwUSYXlDz1kl1864tSjgffuHrwC78fvyBWBf/DHDBNI8FQRqWNnfY8n2PfpdMPqu0nxgduO9Lfc2TQ7ycGhjX8mIzLQKL1BkXutTrtezKwLI/hmJTWmsfz7myKYfevyntS9fwMxrMoPdBMeWJD6PlAiBYX12HSFRh6nOVqr95zNKN40dCKIdLWDM8dF0lUUBm68mOY//ibY8ojHqEgNIemQ3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB8349.namprd11.prod.outlook.com (2603:10b6:806:383::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.22; Wed, 9 Apr
 2025 21:54:52 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8606.029; Wed, 9 Apr 2025
 21:54:52 +0000
Message-ID: <afcafd64-d7d8-41cd-8979-c76aaf4c1b04@intel.com>
Date: Wed, 9 Apr 2025 14:54:48 -0700
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jbrandeb@kernel.org>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 "Jesse Brandeburg" <jbrandeburg@cloudflare.com>
References: <20250407232017.46180-1-jbrandeb@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250407232017.46180-1-jbrandeb@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0221.namprd03.prod.outlook.com
 (2603:10b6:303:b9::16) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB8349:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bfeedb2-1e41-441b-5152-08dd77b127d7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SDFzcVpPT2NmdUpMWTdDeW9GWm43OTkrWDNRcG5FQWVKV3VYajZGOXhkRGxB?=
 =?utf-8?B?UHF1MmhBYUhTS013bk5hRU9xaTh2M2JaNmVFMTAzY3FnNVB3QXY2ZWFCZjM0?=
 =?utf-8?B?WkcvcmFwUDVUSnpDYzArYlFLOG1Held3M2w5UTVvdHcrcndqWGJ4SVdJalhi?=
 =?utf-8?B?TU1ZQ05VUEdwcjRERVY3UXdNZnVtcU51L3ExemFjT1IzVlNRajNReEhEWi9r?=
 =?utf-8?B?c0dwRzVuQlB2LzVTTGVRcytrVzBscWFQQ1UvekJRWWdqQ3k0dkVkdHE5c0la?=
 =?utf-8?B?dmFMTlpnUEVhQlRuMi9xSkU1L0llVnpwenAyY2E0Mm5RN3NLZzNpUXdGMzkz?=
 =?utf-8?B?Slg1cmppaWxtVExucytwUnorWWRmelV2QVNyeGFEK3p2V1c1UGt0RjA2NGZm?=
 =?utf-8?B?ZCtxZGlKSUtuemZDWkVpbjgxbmdVNUFDSEs5QjlkZVVtSkhZT05lTTI3bFJi?=
 =?utf-8?B?aEhXcFhLeTY3SjNzZ2laZk5uNWhmUWJBRFB2b1FyL29rais2V3d5by84ay9E?=
 =?utf-8?B?cXpqeFZ5MUVJTHhnbzZFQW1ma0ZLbndiT01OdnNHVFlZYm90Y1BhbStjRitH?=
 =?utf-8?B?eW9FVTdGeHROakgzYnhZZWRzdFVJMTZzcHBGWTdCVTNKN090aUdUZ3QwM3px?=
 =?utf-8?B?OXlKcE1JSkpRRUpnK1EzQlRVdU5YS25sbHlIWkFreXB1eVB6ZFVqQ21zTVZs?=
 =?utf-8?B?S1dvRTdPODZZQXFiaVZxa1dvYWtYM3Y2VUQyTHNPV2NGRmxPOWEyUTNybDRO?=
 =?utf-8?B?YUpiak00TmUvUTBzZkxCMjRDWXhMOWRSOVh6STQ4ZlJaaWl3ZWVwd1ZERnJz?=
 =?utf-8?B?ck90aHJ3d0E0bjBiUU0yT214Wld0VC9VSUxkZVR5aXBsWlFXdWpJNEk5aW92?=
 =?utf-8?B?bjVpQTJmM1lCRUpRNGNzaEhOR3Z2UXlFYkZ5dXRPcDRZeGVqNm9vT2lKS0x1?=
 =?utf-8?B?dEQxOTRjMmR3R1RQNndra2YwZFBTbS9qMEthK21HRnJ4WkJDSFpoZnZ6dTlV?=
 =?utf-8?B?SHJ3UDFMK3hWUmFBaVFXdTM3QTJ0ZkRtUlBRZUl5cEhBR0VsTUR6enJVbnBj?=
 =?utf-8?B?ZUJUbEtzWllOaGRIcmg5MWpEVHNLTlpNL05aZW9jUDV6SkVWRVduVElXMWt3?=
 =?utf-8?B?Qnk1WmtWdXQ5S0MzNFlDUUlrWm1rYnNmU3JXc2N0YlYvYXZVMTJFOXNlK2Yx?=
 =?utf-8?B?UFBpNTJmc253b3p1RTYxald6enRxWEsrZ3pQa3VWWTdMdGJHQ2tqQ1dLSFgz?=
 =?utf-8?B?WUUwbVFDTTU4a0V6bHdhNC9QYnRETEZPTmZlVHFHTTljS2NjWVBhdHd1Q1J2?=
 =?utf-8?B?NG1IOEdJclRad2MvbzFkamVZNWQ2eDk1am1Pa1JZMUdsUEdFY2FkSThZVWFX?=
 =?utf-8?B?aG9MWnpvSnpWRlhPalMzbWUwZXMveDlQR1ZMUWFCYVorcjB4Z3VLMlBONUQ3?=
 =?utf-8?B?T3I3V1ZwWHZCZng2STBLbDVpdi9DZ0FpRnpGUFhOSWN5cW5yMllUL1ByVS9S?=
 =?utf-8?B?bFpVU2Q4ZTBmc21uK0pSUjRSb1RRMWJKdk8rM1YxU2EveFFjOU84QUxsQ0Fn?=
 =?utf-8?B?alhlSE9LZE1zNC9zWGt2VCtFUEhUMWNXbUdhODR6REVWMjVaZVR6bnVrV2g2?=
 =?utf-8?B?ZEQxbGVtaW91d2FnemVTSWNWdGtuektQV1RmaGxTNlpXeVVpb0NraFBtdnMv?=
 =?utf-8?B?NDRLYTg4M0NMcENXMjJqRmZva1dXT2lSRmVMRjlsS3M5ZU11cjR1SWR6cjZy?=
 =?utf-8?B?ZmNGK0lQWW8rb0NqTWQvZ081dlEvTmhOblJZS1ZCT1JVNjhkbkpMaytCVno0?=
 =?utf-8?B?OC93N1lpa2ltN2lTTGR0S29FT2dtYVUvVGlLb3Z5M0hoTmgyVkc4QWhUUnB2?=
 =?utf-8?B?bVFiMXJ4OURPMm1JL2pIUVJVdUF4Q2FXRW1JYytlNHFoNWc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3RoV1VNc2JGblhGTmJBeVRaTStYVXVQRm5yd1kvaXRQdFdhd05sYWRYRmdr?=
 =?utf-8?B?T1NUVGQ5Q05LUUpTQ1JzNndSSEsrRGpBMTZYUnVpMmFlTjVQK0hJalhEdVFu?=
 =?utf-8?B?OUc3RnlXck9GQ1RMek95REVaRU0zZlIzMExhN1dkZkhMNU9YVWs2RVVFdWdw?=
 =?utf-8?B?K3FBSlpPOG9meGJPOWJGV3U0cGtoYStmMkR5TkJ4T2YvMnZoSTlyS0hGWm9J?=
 =?utf-8?B?UnE1T3dlMHlycEtvWW1lbmFiNlZJQ045aGkvU3kya05raHdWa3FBczJIaHA4?=
 =?utf-8?B?NUNKcDhCZ0FlN2JQMlp4Q1BHSTk2UmwwWWd1TEZSODZ3T1dwTURHZ3pMbHI2?=
 =?utf-8?B?WnhlRXNQanpzTWRtREhFREhMK3dYa2oydTRwQU5PMjBpUkg4NEszcXMzSWkz?=
 =?utf-8?B?Q3R2emFoTSs2MFZMNEJFcUxxcGs4RjdjN012TzB2SXVXOWVGYnVqT1N1cGtu?=
 =?utf-8?B?QU44UXFpZDRna3FNSFMxOHk0d0FXYUowUFp1NHg4bHNjZk16WG4vQnJyVmRl?=
 =?utf-8?B?VXk2MkwzV3VDZ3NnSlBJQXJVL3l6bW83TDFkUWlPWGZyNzZDQ3Y2bEFaWVg1?=
 =?utf-8?B?SkdTYUUwSC9ha3hRRlFiSUdIMWRreUpvQzBIWUNHbnR5eVdySFdXdGFld3Ft?=
 =?utf-8?B?WHAxZnRFUFRpZlVER09LSXJMV3dJeHRjdGhWc0JGcDQrM3lBd1JlZmlqRDBD?=
 =?utf-8?B?M3I4ZGZJMEQ4dm8xY2kxcDJMY0xleG1jQzR6MkNOOW1DeldCWkZ0ZXZtanIw?=
 =?utf-8?B?bmd3N25DL1llekI2NFYyNXhLcitDK0VlbTRlZU4raFZWMytjb3R1OHovcDdx?=
 =?utf-8?B?Si9KM1A5NzJTb09YdjlSSlR5aUU0QWFmeWljVWc1VjhXUUs2eGc3WnJZclRH?=
 =?utf-8?B?SVg5Tnl0MWhCOElVZUNIY3FXOGdaaTNCOHpWaUxXZkhQUnhWa3MvcUxrR25D?=
 =?utf-8?B?ZmlWdFVWOGUrOHNjcVZ4TXg0dXgvMjFkM2FIdnhjbHpuNmtJSHMvdTRmY3cr?=
 =?utf-8?B?OEJMN24wNGp4NGRGdWNObDYyQTBUVWtiM1dUNE8zOVlhWGRUMm8rUXhsUi9i?=
 =?utf-8?B?OTd3bnRMdElGZjlqQzFDU2YxR2hhaEhYNGZRMHZUTGJybkFKQmlUUFRjNnZl?=
 =?utf-8?B?RGFRZ21TVGtLWUFnUnVsdlpsK29Qek9sMy80b29yc2p4REFGQlRhTnI2cmFq?=
 =?utf-8?B?U3Y5QVVTbFQyLy9kQWhlMXdMUEJJcU5kMjlrRE9SREcxaFNZdG4xYTRKcVc0?=
 =?utf-8?B?eUdQZWFKUkRNL2JnRWlvbUJzTTBZdDR1ZU5uUmhnZ1lON0ZCNTNwSDc4a0F1?=
 =?utf-8?B?SXVESVlnbm1HUi9zTGZxc1pqSlhTa09iTk80NFg0SXRMaHdFMXgzQitvMzlM?=
 =?utf-8?B?L0xvaWNqWjh2dENVeG02aFcxMEJMdGlkN0lDQXhKSEQ4WUo2WE1yZkNpTXVE?=
 =?utf-8?B?R3c1V3pjL2c2MCtjSjFXU2E1TDdNMkVHVnVwZUhyQStDaXNEVCtwNE9xemdN?=
 =?utf-8?B?WkxlbFY2c1FPMmx3a00rV3NBUWVxRWUrTjRLcVhhbno3MjRvQk51MmtPYnBV?=
 =?utf-8?B?QnZybDlZUTJDbUNTWEMvRnZqU05WdVFIQlNWOXdreHNlRG5haUhmMUxoUUpx?=
 =?utf-8?B?RW85UmVRajJ2TTV4ODNKa1lNb2U0bUxCUS9Lam1MNlJHUmdVWmxNL011ajZ1?=
 =?utf-8?B?Z0FpUjJHMVNaZHErUjFGYjBSblZFOWtXWkhOdHIwVTNoQ25ESzlSemJCaGVG?=
 =?utf-8?B?WUU0Zk1UREVnUStDT0hYSzA1c0VBMGdRemNBQkJWRGFuMHBFTWdQcVlvcGM3?=
 =?utf-8?B?MWxZT0wzZ1FnejhadFZOdzYrWGdZWVFzQlJkR3R2RXhGQk9rbCs1b3I2S3RJ?=
 =?utf-8?B?cEpxUlk1OWxhMytxU0ZHSEcyalZ3eGgyT3dwTlFaRGdoZnljNFpoREhtTlF6?=
 =?utf-8?B?WGNjKytnS1ZpWDRybzZTb3ZyRUVJL055UVF1NGplWExJdC9oVm5OTkJBakR2?=
 =?utf-8?B?dkw3Y3BxTHZOZWVMWkdVZUlQWTJkTkVHbWp2TXBYdG96SzN1Ums4TmlyTk90?=
 =?utf-8?B?aGR6VFlqY1FxSEYzWG1MQ3dXeVpNWVVSY1YrUHRrMXFOMG16MW5PckZNb3Z3?=
 =?utf-8?B?NXN4WjZtMGFIQlpnU0hjYVpnVm85Z2dMNTNyYWZMMURWWElGMU43YmdpMzJs?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bfeedb2-1e41-441b-5152-08dd77b127d7
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 21:54:51.9857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vbxBNkbcsqXYiDbKpOZme2v3gGVX90OUYLmTEwI7HGD2qvBWsKFu9sxEeOBfgW17g5nMg9UYMQw65b4cW2Umkt/7CkeBwxwhYpROKkzKywA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8349
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744235726; x=1775771726;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6lf2+i7bI7ZheQq2/nql9LmdwJQyJlot5XxVencPg68=;
 b=G86w1txoe0DsT6d4VywWDSpK8xQEl+0NE9QAB7KoxbvUfbZqICOCV9hv
 fNAZvN4e/NWMjfu1eRQv5RnBMzFc1KpoTNYES/igizlTHFmsT8lxByB1+
 rAvlT/iwqaa9tet4nWB2eNlm0uPHKyUi59AXhsz0uHtHS36isIbHXO208
 tJLLjuvxRLWx7w+2vYMHMRQsF3JDJJo9EXChcwVsHuIhAXdEnDugBIBym
 IVo5gzzyCA/9friqEdcnF24vwOXbaVINFdXSfF0TT/C2b0rT8N3Roiu0H
 gkQ9znfZu6owE4osjk/9VG3a713T/VSTaoKKcrCHBvdoriUAF42XjtHwe
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G86w1txo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v1] ice: be consistent
 around PTP de-registration
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/7/2025 4:20 PM, Jesse Brandeburg wrote:

iwl-next, not intel-next :)

> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> 
> The driver was being inconsistent when de-registering its PTP clock. Make
> sure to NULL out the pointer once it is freed in all cases. The driver was
> mostly already doing so, but a couple spots were missed.
> 
> Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> ---
> NOTE: we saw some odd behavior on one or two machines where the ports
> completed init, PTP completed init, then port 0 was "hot removed" via
> sysfs, and later panics on ptp->index being 1 while being called by
> ethtool. This caused me to look over this area and see this inconsistency.
> I wasn't able to confirm any for-sure bug.
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 5 ++++-
>   drivers/net/ethernet/intel/ice/ice_ptp.c  | 4 ++--
>   2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 049edeb60104..8c1b496e84ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3968,8 +3968,11 @@ static void ice_deinit_pf(struct ice_pf *pf)
>   		pf->avail_rxqs = NULL;
>   	}
>   
> -	if (pf->ptp.clock)
> +	if (pf->ptp.clock) {
>   		ptp_clock_unregister(pf->ptp.clock);
> +		pf->ptp.clock = NULL;
> +	}
> +	pf->ptp.state = ICE_PTP_UNINIT;

Hi Jesse,

It looks like we get a proper removal/unregister in ice_ptp_release() 
which is called from ice_deinit_features(). From what I'm seeing, I 
don't think the unregister should be done here at all.

Thanks,
Tony

>   
>   	xa_destroy(&pf->dyn_ports);
>   	xa_destroy(&pf->sf_nums);
