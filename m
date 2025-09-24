Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAA5B9A5C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 16:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFF2240D94;
	Wed, 24 Sep 2025 14:52:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQJTQNzbFY_1; Wed, 24 Sep 2025 14:52:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C817940DA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758725541;
	bh=CJbGi8UWa81jlvg/khlUfFuAn/iXUyJNiUm/8+1IOIk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hybaC1UDm65JCJCzLMxWFrgPquR8InEEPMA1bK0XsRKrorNGvERAJqEiA9NcGhh/0
	 heMSa3mPyzX4LDdLGvnIb5qDSzfr5ptux9jkP9fGRX/kdC7ji0TEj+6WdSLhFHNwWc
	 eSpfDhAKxpLJdBlQe+CEg5LFj2aBjqAz4+EnGEdwYd/2OdK7JKs1P95fugAHzJjfzO
	 le72M9GgSpymHeG6ZXK/SFGJ2B/YiW0mXq1mK5dn5XqPOCaczyj/L1L1gOwqNiT5C/
	 Znjjcn3fmgRFSwHTxRzmU8E93gDcTs6Dscsg+3D+0V4Wfw0jRTarMDb4UBwd0S+TYD
	 zBKmw334ivnFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C817940DA4;
	Wed, 24 Sep 2025 14:52:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B914C199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 14:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F14540CE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 14:52:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WLgc2NlsX1CE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 14:52:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3625D40634
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3625D40634
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3625D40634
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 14:52:18 +0000 (UTC)
X-CSE-ConnectionGUID: AYy08WVORxaRNE0GDMc0dw==
X-CSE-MsgGUID: ufKUTvzaTO6o3wA2ZoqJjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="78659588"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="78659588"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:52:18 -0700
X-CSE-ConnectionGUID: XlOF31sOQJu+f7maem40Pg==
X-CSE-MsgGUID: W6t2y+6/S+qJiJWQxxMURg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176895565"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:52:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 07:52:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 07:52:17 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 07:52:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OeuG8rspCjrPKVCoPhUx/IT6m0Doo2jz3eFBLqc5qMoIGujpMhoF5jwc+u2nHKNwLeG8hM0dVfXEyTc4GTGOEf+VKUeK5cl3TPa8RVXltAYVqio7/mepsS0et2if+ePdQAwcbJ74sJPlanMt70BbGNQzR82SbXVC8Ex4tVXmjjwEUBbkJ6EIeDgnnnF+PFH6LljDcFOVoeE6O/3y6HQb2wauIIuGjS34tn2sPWm5oIm9CLt55EOUM6KC9An0ao5LoY9IUzlBuLnTGVkOU5ukJKl+OfeY/vcNn0MKbRojPQa8z8iIOLFhhhAJt8zo/M9MrroDZAwL7W4AC5hUWQPRaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CJbGi8UWa81jlvg/khlUfFuAn/iXUyJNiUm/8+1IOIk=;
 b=Gab3AnU9Ze6Jb6UYqJcfbq0/Aiiq/lon/yG1JNCqTFGE+HsOb4ucTOEcR/PGsLU0ovuCqnA8ImtnDOVtvNoZdKnvuhyCMmDeXpllEPURTtpcthtzrn0mGTK7bBZDM/EdFC8iWzEb6GP5YZxd5rUn1iw3E/2VfROAm+YxeYrNM3M9aI7J9y1mQlnDb2lRWBCGNl6DINccCRrq04WJz3y7xe9ueU7ZSZVZndZ8/71t4rovReIjajf+r4tEPEF2TMWrzdLAERFRqPGccGFQl1YJnC/YjjqVH9reqCjzVTySMpT06DN3eo8TSgEQMC9LFSBY8RRsRvn7brc/4n4y2QjWHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA3PR11MB8917.namprd11.prod.outlook.com (2603:10b6:208:57d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 14:52:14 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 14:52:14 +0000
Message-ID: <18111eee-3b3b-4cfe-98be-ab5f93b0aafb@intel.com>
Date: Wed, 24 Sep 2025 16:52:09 +0200
User-Agent: Mozilla Thunderbird
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <madhu.chittim@intel.com>,
 <netdev@vger.kernel.org>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20250903035853.23095-1-pavan.kumar.linga@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250903035853.23095-1-pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0202CA0021.eurprd02.prod.outlook.com
 (2603:10a6:803:14::34) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA3PR11MB8917:EE_
X-MS-Office365-Filtering-Correlation-Id: 1de47079-eaa3-4de7-2319-08ddfb79f26e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXVJQ0o4bHE0dk1WMFVNSlhDdTd0MGcvc3V3M2VxajZQbHVkWXRId1g4TzdI?=
 =?utf-8?B?V1h5OWgzbG5lb25IcHpQTjBsSzFTdVRQZHk4dW5GUVhYaEkvVXVqdHlqQ0tq?=
 =?utf-8?B?TTBwSkt4bC9uMlU5UElWK0hKa0dPQ2NTL20zTmk5Y3QwRlE2TmFCblZUT2hT?=
 =?utf-8?B?dzExMGZVZVBnaThUWDQwV3FOeGErM3ltUGpOcmN5Vzh2SHh0R3grZHB4enZQ?=
 =?utf-8?B?MGFLQmk3NFlWZHN1U2EwY2ovVlN3U2JGbWhnYm9DVW1mcFcvaTN4aDZCVFk5?=
 =?utf-8?B?UnF2aHErWlhrbm03V3VMYnVSR2c2cTBMWTczT1dmQUpOc3QzZkVGMmZZRzhy?=
 =?utf-8?B?dWwwU1Q2MkRJV2RMc1J4eVlrUGN2S1ZYK2tSV1lwdHlscE03K2k5UGNzYzkr?=
 =?utf-8?B?TllYWk1VbjdzOGcvS09tbUtVVG1QQVB4NHRZTW1lbTBPOUtaQmU5OW5mbXVz?=
 =?utf-8?B?ZS9LK3FqS3loYWVmakpNOFowY3MraDV0RnozenRFNFVmYmptbmdodU8wdXl0?=
 =?utf-8?B?c0tOb3ZQTElOMkVKMVowNFQrNXlBa1FEdVR2Sk10eTJaUlV2cnVvT0ZzS1FS?=
 =?utf-8?B?TzV5UWJOYlVlY0k1SllZcXNBTUtjSlpteVUrRWZwRXM2MVBOM2NXc0o3T2Ft?=
 =?utf-8?B?OGswQ3Y2QTdrVVNueC9lbm1YNFRZUUlNWXBwMWE3QjNlVlhmb3MvMDBKZGl1?=
 =?utf-8?B?Z0xlTFhBeEFSdTMrYlRscS9yRVNBTG8vNmx2VjhlcCtmT2F1R2c5NVM0VGd4?=
 =?utf-8?B?U0xOVjNmUGhtM3EwMThBYmhoNjdVQndZRUFtQ2E3cU1nL0g2a0ZyNzVKMWpN?=
 =?utf-8?B?Y3lEaHJSeWhoR1BrOW9HYXJMTHNFcVZrR3lHa3dZMnJYMTRZNFZBTWxXekt4?=
 =?utf-8?B?QnlmNXErMG1WTlpyUjE3YmhUTXlNY0h5cXRpczZoMzd1RnVXcXVHN1V5MnJz?=
 =?utf-8?B?RWt5d2FYTFBHb2ZQK2p4amhKMjVRQ2xFUDFrTUtwVkUvaHdudEMyYnFPL2FD?=
 =?utf-8?B?UUo1L002MDBYMFYycmJqZFdHQmRSV3FXTUU2R3dob1duMjFaR1l5K3N6NW56?=
 =?utf-8?B?UjN2ZjlXN2VYeXpVY2dCNmd4SVFtejVPSTlEaVpoMmhNL25EaFRRaHVTcEJN?=
 =?utf-8?B?ZklWTUhBdE5rNkJQcC81SUQwYy9jMXVmNnhuLzFtT1BpVmV4VTE2MUVxRmtz?=
 =?utf-8?B?dDFhd1BwaGJkN21mN3NnOXA1VzczTmZaQ3EzVm1NMzJZUStpRVAyUzRxaTZT?=
 =?utf-8?B?UHRFWkh0MGFoVDRab0h5SUEydjdIYkYrNU1KOTRwUkpRamM5R0RlcU9xQ3Jj?=
 =?utf-8?B?dHh4cWpVSThqbWhFRktyNjE2WlhDL2xxZDhjUnNQb0FnWWtnQXRaYVllK21O?=
 =?utf-8?B?MkZjZnhJc01qeFRvNXFoSWxwOHBhUXk2U3BmaVdaNHg5d0l6dEVROUYrWWFa?=
 =?utf-8?B?Q0NDYk1pR3J1NlRESWxvaWdQZWR1WFljSFppZWlJdDkxUlpKSEUwcHBZMWNt?=
 =?utf-8?B?VkxaaGRiTzk0aks4bUdrMWxBUGZzZm1TN3NXYlU4c2dzMkdnMWM1ZTQxUmlm?=
 =?utf-8?B?QUJnc01HUE5kMmJ6bkUvOUFpSjFpdExnSGZSY2dUWE01M1J3eGJIbVJ5SFIr?=
 =?utf-8?B?Rm1RbEdtV2xjaStDdmo1MklWeDQ2WW93MHJGZXdIc0wvc2lrekhpU0xnY1Q3?=
 =?utf-8?B?N3FaWUJFWjNVNVpMN00vcTVORVFWYUlIWnpiNm0rRnQrWGFFM3hycCtBc3Ft?=
 =?utf-8?B?cnFQeUtqeXBuWjZVc0s3TzJhWWdQbnJJeTIwSkJMblJMZk95L0tBazE2Ny9k?=
 =?utf-8?Q?py1uCOHU4VTTrQ3/AfQZ1dYpajy31QJqNiwKg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFNjMVEwaG9ENURmS0ZseHpKMXVzTUZJcTdvZlc5dEY4c0pZNGxuQ3JtdHBS?=
 =?utf-8?B?TEkzRjFpdFRjdUZINnI4RTc0Ym5ldG9qT1dHaTR4b1RHSFdOV3Y5bnp0NWNS?=
 =?utf-8?B?UVVGaVlwMUFqNjJBZE1TazhjNmlzMy9EemFBWUpOczUvM01JMFZnUzZnU0Fs?=
 =?utf-8?B?eVI5ZTVKUFN3ZG9wUTRoc0tRZU4rY1N0ZHBxRUVqRmdtb2trelBVUjB2RkVK?=
 =?utf-8?B?RGZUOFQ0amovUkltVnhGZWsyWHVWZU5qTDR6TTcxV2Q1RjVJQ3BGS2dqOEY0?=
 =?utf-8?B?Z1JyMUV6dS9SMWUwbGVTd2pnR3RQNGVKeTJORDJUN2VWRi9uVmIyciszNGlU?=
 =?utf-8?B?R240Z3c1UFRoZnp3dGg5b1E3QWtmQWZUR2FDeUxUN1NKRm0vUzNTdEhvVU9k?=
 =?utf-8?B?VlJrR0diU3h4RlQ4dkk1MDBPZGFMczgxSHhiQ25HcWVJSGRLQ1ZHc3lBcjhu?=
 =?utf-8?B?VVluWGNQVEdpUmJ2cXNFamZPZGhFakhrRHpWeXZLWW05em92L3VXUkd2MEJa?=
 =?utf-8?B?MUVzK0ZCcjJWTGpwMmtiL3hsMHNSQm5zRnYrNWR0cW82dFJkdVBvVmJKZjcr?=
 =?utf-8?B?TTRZbDZObkt4WU0rWnhML01FbWRSZUppZ093TWgvbWRiNko2cFBKL0dCRHQr?=
 =?utf-8?B?bkNTUXNnZVBTNVlUcFd1MkdRRUc5T1NubnFobUxrUmduWmU4MG5SaW16Zlg0?=
 =?utf-8?B?Y2FkVUVlVklpckF0UUluRnRUbDY4cEQvZTY2Nyt1ejFiRVI1K0tiOWtHaFRp?=
 =?utf-8?B?cjZZbFlKZ25adU9uN0RNcDB5MlNzTWlUeXQ2NTZwaFNDeXpKNTIzQWIyMTFG?=
 =?utf-8?B?TjhaR3ExRndmYjBVa053bjdhY0wzM1ZjUUloWlBJTkhWVHNXVzgxMitzMGJM?=
 =?utf-8?B?WC8ycW5MNEM1UmYxN29zS3RFUXZUcmxBOU5ldVBSN1dQMFo3bFkvTTg2SEFS?=
 =?utf-8?B?enlJenllMXBJWFpFaDJWZHY0Z29VemNvaStjQ2hPcmdKNEcrcUlMSmlIbG9L?=
 =?utf-8?B?NjBlTGdrdENRcnZ0YzhucVBRcmRqL0s1U1BXa0sxUE42bllKM3ZmaW0zQzBQ?=
 =?utf-8?B?RkVqSDl5aWVwR1NiQXU4UWVjUWhhOE9oUnYreC9CZGJseTJIeE1hWi9QWlV4?=
 =?utf-8?B?QmFHRTI3OGhDU1FtUnFid2YrZjFiekhZQ0FkamNNUVgxRmRZVFlxTWtmUXRX?=
 =?utf-8?B?T05wMjRKbTE5YlpURHJlRFU4b2ZkbGZ4MmxXSnBsaVlzVjFXUGk0R2xJVHor?=
 =?utf-8?B?RzJucEJRZXBLNGpFWnB5ZWNjL0ZsdGpnSjBwSHFXQ2hyTzR1bWhDSXRNTG1T?=
 =?utf-8?B?M2lrUit6M1pwUklRa1ZVOFlwTmFHcFprUzVCQ2d3Qjg3Mk5HTGhYR1l1dndS?=
 =?utf-8?B?djRWRUVPOFI0Nm02WG93akJiUEVaaEFJTG94amZQa0dyTnMwMDl2V1htQUwr?=
 =?utf-8?B?SmtHRFRzWFVzYWx5K0d4Y2RjL2JLMTVpbzJ5ZjN6M3VKQTRkcENjY09PUGxU?=
 =?utf-8?B?Y05YaGl4OVZtSGR3Wm50UVhHSVN4bHlvZHlrN21vemo0Z1dBWkYzd25Hb3Uz?=
 =?utf-8?B?MDNVSDJXQ1BjRm5qNWhJM3FYcGZRQlhleVd0Q1A1Uy9hYlBONTJZdUZjV0tz?=
 =?utf-8?B?OG5weHdodjNJUE1LY2x3OFV1MGFydHRqRmZYRllmMzRPTThEVmt6TUpWMk85?=
 =?utf-8?B?bTZVRDFoODZuOG94MWw3Ym5ERGlRbEt2c2lNSXo2ZU9USFpzUHJ4c2QyVi9B?=
 =?utf-8?B?azgrZTcwVlJTZHRnb01GbFhmVUdDSkRIS1hnUG15dTNaZGpKYkIzYytyaHlJ?=
 =?utf-8?B?UGFWOHNoeU5PSlNIYk1hdWFvZy9TZVdla0pVZklHVGlnQ0xSQldXZDllRDUz?=
 =?utf-8?B?RVN0NFRCMXpqa2laV3c0MzNsdVdOZGZtZ24zcmwvVW5PNDRZWEFWV0JlVlo2?=
 =?utf-8?B?dEo2R29vUFZaOEx3cytOeUdHbnJPRnRYbnJSeGFRS0hTS0s4Y01nM3VRNzRK?=
 =?utf-8?B?SG41TWJIUEd3SC9HcEQzVTRqTXNWUGFaL2ZVemNZZHllSnZjaGR6K0FwTVFF?=
 =?utf-8?B?SHVqY3RIVmtFK050elJSMTkvQXVGWDU3aTRJNVpNWDdKc0RFSjFDK09rSUNs?=
 =?utf-8?B?d05KT0IwNDRMK1kxTHhwYi9mQjNDZk04bnkyeCtpUkhuM2hoMy9RbkJaNGdH?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1de47079-eaa3-4de7-2319-08ddfb79f26e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 14:52:13.9197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zlj1SuQFHwJOdP7j7HDAnkJ/WiMupaJKBVKeCTWX6L+zxIjI26kELgJHTdJMVT2mP4ww52rfDf4QyIvgkRM1aL4l77ZgMtjixMNgDtpa/F4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758725539; x=1790261539;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PhgqOZLIlXMx6s/gvl0zy2auQ1BQRQShbHsiqhxgVhs=;
 b=KyLKf1E5aHMxJmQucZ+CRjH45Lox+3DQPeWVZXsSFs5CjqE2Ku97E5D7
 /0y8kMOUCpZIZsMXmZc5a94t87peYqsY54MhApZu93OIm+I83UoKkZcUX
 J4Yx+I2MCQVzRdgsTZAEop0pAh3qLqPT8NvdLUrgcFNRVstlAcjvgAngZ
 TxrATod1nEXgWsLk5qV8SoQoXrnHCYir7m8jGgtVRHKKCcnV666I3tORT
 nEhhkOwo2KzX9lT8NEo650oRnP2RiTMar3w26g0C8kJsNSLkwMbqXMtJ/
 OAvmnZQKXfJcx3L0byR6t+W4TRmERlN0FpK4E8OekcO3IoKRb2GDC3ToB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KyLKf1E5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] idpf: add support for
 IDPF PCI programming interface
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

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Tue,  2 Sep 2025 20:58:52 -0700

> At present IDPF supports only 0x1452 and 0x145C as PF and VF device IDs
> on our current generation hardware. Future hardware exposes a new set of
> device IDs for each generation. To avoid adding a new device ID for each
> generation and to make the driver forward and backward compatible,
> make use of the IDPF PCI programming interface to load the driver.
> 
> Write and read the VF_ARQBAL mailbox register to find if the current
> device is a PF or a VF.
> 
> PCI SIG allocated a new programming interface for the IDPF compliant
> ethernet network controller devices. It can be found at:
> https://members.pcisig.com/wg/PCI-SIG/document/20113
> with the document titled as 'PCI Code and ID Assignment Revision 1.16'
> or any latest revisions.
> 
> Tested this patch by doing a simple driver load/unload on Intel IPU E2000
> hardware which supports 0x1452 and 0x145C device IDs and new hardware
> which supports the IDPF PCI programming interface.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> v4:
> - add testing info
> - use resource_size_t instead of long
> - add error statement for ioremap failure
> 
> v3:
> - reworked logic to avoid gotos
> 
> v2:
> - replace *u8 with *bool in idpf_is_vf_device function parameter
> - use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter
> 
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
>  drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 40 ++++++++++
>  3 files changed, 97 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index c56abf8b4c92..4a16e481faf7 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -1041,6 +1041,7 @@ void idpf_mbx_task(struct work_struct *work);
>  void idpf_vc_event_task(struct work_struct *work);
>  void idpf_dev_ops_init(struct idpf_adapter *adapter);
>  void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
> +int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf);
>  int idpf_intr_req(struct idpf_adapter *adapter);
>  void idpf_intr_rel(struct idpf_adapter *adapter);
>  u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 8c46481d2e1f..493604d50143 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -7,11 +7,57 @@
>  
>  #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
>  
> +#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
> +#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
> +	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
> +
>  MODULE_DESCRIPTION(DRV_SUMMARY);
>  MODULE_IMPORT_NS("LIBETH");
>  MODULE_IMPORT_NS("LIBETH_XDP");
>  MODULE_LICENSE("GPL");
>  
> +/**
> + * idpf_dev_init - Initialize device specific parameters
> + * @adapter: adapter to initialize
> + * @ent: entry in idpf_pci_tbl
> + *
> + * Return: %0 on success, -%errno on failure.
> + */
> +static int idpf_dev_init(struct idpf_adapter *adapter,
> +			 const struct pci_device_id *ent)
> +{
> +	bool is_vf = false;
> +	int err;
> +
> +	if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF) {
> +		err = idpf_is_vf_device(adapter->pdev, &is_vf);
> +		if (err)
> +			return err;
> +		if (is_vf) {
> +			idpf_vf_dev_ops_init(adapter);
> +			adapter->crc_enable = true;
> +		} else {
> +			idpf_dev_ops_init(adapter);
> +		}
> +
> +		return 0;
> +	}
> +
> +	switch (ent->device) {
> +	case IDPF_DEV_ID_PF:
> +		idpf_dev_ops_init(adapter);
> +		break;
> +	case IDPF_DEV_ID_VF:
> +		idpf_vf_dev_ops_init(adapter);
> +		adapter->crc_enable = true;
> +		break;
> +	default:
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * idpf_remove - Device removal routine
>   * @pdev: PCI device information struct
> @@ -165,21 +211,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	adapter->req_tx_splitq = true;
>  	adapter->req_rx_splitq = true;
>  
> -	switch (ent->device) {
> -	case IDPF_DEV_ID_PF:
> -		idpf_dev_ops_init(adapter);
> -		break;
> -	case IDPF_DEV_ID_VF:
> -		idpf_vf_dev_ops_init(adapter);
> -		adapter->crc_enable = true;
> -		break;
> -	default:
> -		err = -ENODEV;
> -		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
> -			ent->device);
> -		goto err_free;
> -	}
> -
>  	adapter->pdev = pdev;
>  	err = pcim_enable_device(pdev);
>  	if (err)
> @@ -259,11 +290,18 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* setup msglvl */
>  	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
>  
> +	err = idpf_dev_init(adapter, ent);
> +	if (err) {
> +		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
> +			ent->device);
> +		goto destroy_vc_event_wq;
> +	}
> +
>  	err = idpf_cfg_hw(adapter);
>  	if (err) {
>  		dev_err(dev, "Failed to configure HW structure for adapter: %d\n",
>  			err);
> -		goto err_cfg_hw;
> +		goto destroy_vc_event_wq;
>  	}
>  
>  	mutex_init(&adapter->vport_ctrl_lock);
> @@ -284,7 +322,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	return 0;
>  
> -err_cfg_hw:
> +destroy_vc_event_wq:
>  	destroy_workqueue(adapter->vc_event_wq);
>  err_vc_event_wq_alloc:
>  	destroy_workqueue(adapter->stats_wq);
> @@ -304,6 +342,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  static const struct pci_device_id idpf_pci_tbl[] = {
>  	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF)},
>  	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_VF)},
> +	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, ~0)},
>  	{ /* Sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> index 7527b967e2e7..4774b933ae50 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> @@ -7,6 +7,46 @@
>  
>  #define IDPF_VF_ITR_IDX_SPACING		0x40
>  
> +#define IDPF_VF_TEST_VAL		0xFEED0000

0xfeed0000U

> +
> +/**
> + * idpf_is_vf_device - Helper to find if it is a VF device
> + * @pdev: PCI device information struct
> + * @is_vf: used to update VF device status
> + *
> + * Return: %0 on success, -%errno on failure.
> + */
> +int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf)
> +{
> +	struct resource mbx_region;
> +	resource_size_t mbx_start;
> +	void __iomem *mbx_addr;
> +	resource_size_t len;
> +
> +	resource_set_range(&mbx_region,	VF_BASE, IDPF_VF_MBX_REGION_SZ);

Why use `struct resource` at all here. You  have start and len already.
Encapsulating them in a resource only complicates the code.

	mbx_addr = ioremap(pci_resource_start(pdev, 0) + VF_BASE,
			   IDPF_VF_MBX_REGION_SZ);

> +
> +	mbx_start = pci_resource_start(pdev, 0) + mbx_region.start;
> +	len = resource_size(&mbx_region);
> +
> +	mbx_addr = ioremap(mbx_start, len);
> +	if (!mbx_addr) {
> +		pci_err(pdev, "Failed to allocate BAR0 mbx region\n");
> +
> +		return -EIO;

I'd remove this newline.

> +	}
> +
> +	writel(IDPF_VF_TEST_VAL, mbx_addr + VF_ARQBAL - VF_BASE);
> +
> +	/* Force memory write to complete before reading it back */
> +	wmb();

Make sure you know what you are doing. writel() is not writel_relaxed(),
it already has a barrier inside.

> +
> +	*is_vf = readl(mbx_addr + VF_ARQBAL - VF_BASE) == IDPF_VF_TEST_VAL;

Maybe put this `mbx_addr + VF_ARQBAL - VF_BASE` in a variable to not
spell it out two times...

Also weird logic. You don't map the whole BAR, you map only a piece of
it. Ok. But going this route, you need to read only one register. Why
not then

	addr = ioremap(pci_resource_start(pdev, 0) + VF_ARQBAL, 4);

	writel(IDPF_VF_TEST_VAL, addr);
	is_vf = readl(addr) == IDPF_VF_TEST_VAL;

?

> +
> +	iounmap(mbx_addr);
> +
> +	return 0;
> +}

Instead of returning only either 0 or -EIO and passing the result via a
pointer to bool, you could instead just return either:

* IDPF_DEV_ID_PF
* IDPF_DEV_ID_VF
* -EIO

> +
>  /**
>   * idpf_vf_ctlq_reg_init - initialize default mailbox registers
>   * @adapter: adapter structure

Thanks,
Olek
