Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B31708325
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 15:48:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 485EA4291D;
	Thu, 18 May 2023 13:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 485EA4291D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684417714;
	bh=UfgavWcbhgwL0C54xRf00h0KXpKUuezc6fCxmNTLjPA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ThMz7PegDkRMQ35lVOeIrQv7ubVFTaF9gfkjdxUCyoM92WLxu/MFgHI436TByDtgy
	 d0BccbIqL0XGXb0bw9DK2QnYmuRuIWtEyENIpE1xs9aH7ik0wvh/wq+19ytWbd+Z2S
	 h6BH5pXsEaPNf/E3NLuonafsruwlzr9F4M8F5lvJtk/oC2UE1wT0junrjSOOZLLgi2
	 H9rU4YpPD7xiwFGlUGhUpfjK3JCYCXIGcr51GGh+mSOD/k7LSXyJd87DeQJCSVxK/w
	 Tawk0I+sTlEN/gVwK21QX6zMof2ppkKMtb4eijIAMgnz7oj/g7VNT9IZI6Q2I+nZfh
	 Zw2ojZttaJ0Rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F9vunhFaC86a; Thu, 18 May 2023 13:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1079428A1;
	Thu, 18 May 2023 13:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1079428A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 703561BF47D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5540860B51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:48:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5540860B51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gmHf82o2kysC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 13:48:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B3B0607F6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B3B0607F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 13:48:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="349581389"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="349581389"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 06:48:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="767212884"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="767212884"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 18 May 2023 06:48:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:48:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 06:48:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 06:48:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XcaMzQCiIH4s7OKL3joOK0C61QhI+eNzOkEfhMj6HyfsuaPmGWSojAxIA1cw8wBy+8xIR0vhpAlZ22cd/1/qAL3PkhDg9U+jy6E+oA+n3YHO/pnISInR7oZJrsB84F+oTU2wsYI04dzKTrqdD5xwIOrazsKzbnOTWh4nJXDbGS6faFXyO0QTqd5hW3iWHhgxTpEwVy+f8T4bgeR2CZ/rYv462e7t6PX4V5AmBZLXzh020SgVzWg1HZdEAtolckAg7XJyTDttLuIr+m+HQ40VKJZBmXmg5SQ4DW+GmsZOEuULJzoaKq9BpvuNs19xy/R6cuZAQvecS2BNfzt1X7cB9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2xXXayEFMlr7fmI7ieIeXpMs046nTcQUKOJHAiZCRg=;
 b=aOErSyT9x7vvQgOnWDdzeZJCsyhEh3eCxpiDApw8CFw0WbRxgCwKflorgEqD7rgkpitJOLRf+l5Ygv0If9zzp5Lx2lRafwXpcl4ewGaXUrKD+ytSluB9MZX27/kM8ouLPFh4xeXvCmiiNl5q2OUppzBr7sKaCTJhYLAmzqzn2XLT/wGsJIqVSEMUG1uzpaVPoB2QDTy23kt6rcYpfZMmXKAiyINXaSU4KaX9JcF5ErxvHrC3voUlUQ2UBhF2Q56d6skfon1BaWmOzdeIVlYWP2jPpYjAwdS5w0AgK1RgKhp3k2WMLqXtxQe5hvoWOtgt4jlwNu+71MnZg6sANOYhug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by IA1PR11MB7941.namprd11.prod.outlook.com (2603:10b6:208:3ff::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.35; Thu, 18 May
 2023 13:48:16 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 13:48:16 +0000
Message-ID: <4242406b-6948-2714-22ce-bce8a93e20ab@intel.com>
Date: Thu, 18 May 2023 15:47:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-11-aleksander.lobakin@intel.com>
 <20230517211913.773c1266@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230517211913.773c1266@kernel.org>
X-ClientProxiedBy: DB9PR06CA0012.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::17) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|IA1PR11MB7941:EE_
X-MS-Office365-Filtering-Correlation-Id: d42a87ee-dad1-4714-a545-08db57a687d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 77IShpQagFezDf/YGV8Ydm5s5zlMZBjPFLNG9RT71sIBhGHFACqQ0bOwOfGMrhOv2HBrxANU0LDcPz3C8EeMW0yDzVgQyheqGEtDfWZ7R25l/bRVDG0fHM4uUahAVXxbtz3HiQU6NKwCCMK57e3vubsDtoFvf+Fgb3f8HlfxQfWRouUyGwhFu2Jbg9EfIrPjRBOfOpVoxief60p6qaNfm1nic/0TwgYVdQIWdZrl9r/j2gTNUHcEhYRiVAKjNcvj8vz313FRSvKn9xurUazjQRt3hBsRVPAcyHRqhFrCxijrZROqA+86T6WOZatdoKnvCVKSydDZnbPFeuw+mHnUwI/lUHjLATJN1X36HhtxVS4nFot9VhazpqMF7zNQBY30GK3spu5z3wWewlL/mWqt2ANY/D1nGGlOB9WUd3sRqXDJL1LcVUQyane+R2ZHvM6TWHBmNUClhxYqZLxS+N8xUyOxczWyqykFDCLShlV7aGE9cCQggzQJgKz6zsD+XJiGJCDOfvpDHDERp4WhJQacQtGS+XpU0Z+SUQKNBzgHU6kS4M8FFGlpoDc/pcBn1L0dFujEc6mhDqNOHlt4Ke1S5KtL/wx6L4YmXtuVGS0zuXRrmPDxQ9pW2VJReemBtw7EhNA6XB0xlLwGquRu97sbpA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199021)(31686004)(66946007)(316002)(66476007)(478600001)(4326008)(66556008)(54906003)(6916009)(36756003)(31696002)(6512007)(6506007)(186003)(26005)(2616005)(86362001)(6486002)(2906002)(5660300002)(4744005)(8936002)(8676002)(7416002)(82960400001)(41300700001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTFXNndoSnRMMjIvc2FZbXlXcmVsNEpvZ3l1ZllpbzE4ZnBNMURPbHRZYmVa?=
 =?utf-8?B?Sktha0VqUTRCeHVBQmJBNjdML0Z2OFU3cjJjcXJrTjFVLzkxZmFjczM4U0s0?=
 =?utf-8?B?a2p1WE44b0xkNDExZXV2alVURmt6OWwzU2MrbS96YjRxaFN1aTY2OTc5TDJ6?=
 =?utf-8?B?VGlESUcyZXdkUXoxSXdMZzdTZjYvMUZuTUZpS1QzODhjMmd6R3ZWanIwNFdO?=
 =?utf-8?B?Q0lCWkt0cEEzS1BveGZsTGdVZ3Y4Y1NQU1RrRzFNT3BwN1l6RkZaNWFJS0ti?=
 =?utf-8?B?anNsMFZzRGZUeDVkSUNHaEZiV0U4eFc0OXlhbG9odFg2dHdQcFRTWDVXb2tR?=
 =?utf-8?B?VEZlK0VhcVd2RWFGOFRhNEN2blFvSXZpR244KzRGenBKTlROakViVzFIWG4w?=
 =?utf-8?B?S1FZY1UzWUI4TFZEZTd6d3Nnb2VtcVl2bDgxelNVM2szYmtFSENsakRHM3R4?=
 =?utf-8?B?K25VcHZxQ2xVcGRwSXpmTlA2ZWErZm5IUDVQdjNsQUJob3JMaVRDbEQ2aW9o?=
 =?utf-8?B?VjhrdmpsUWtHRGVKWjhaR2QxWm1DSjlTcEF5M2J3MmhoSVRBWXVBME9pNXV1?=
 =?utf-8?B?ODF3MTVqS2NYVG9QM2piVHFOYU5MYUtpWXpmNzYrblU1KytKN011ZUExYnBS?=
 =?utf-8?B?bTF2WmNEZkJ1YjAzSE9xYVNER2RjUkN5SWJQVTRyUENGeE9WdGQ0R2s1NjQw?=
 =?utf-8?B?WkgwczdaV0lUWmtCWlFMV285TktnNCtyVXh0ZGhmK0xmTGpmbW9la2xKSUV4?=
 =?utf-8?B?QnJNZkNyVThCTHYzTXNRWkFkTG9QZ3FOWWNLc3lNVjllMGZzUjlrN0FQbkxk?=
 =?utf-8?B?Ym0vWUU0UXZkTTdMZXdvNStodVRJQzc5YXg3L1AyUlJ2L2FSc1VaWkM2SzJ3?=
 =?utf-8?B?TE4zSkRCZjNvL0dtVnFaUXpqb2cySWlNMzdtTTBFMHoxWTNXVE5VTk04NFRn?=
 =?utf-8?B?NHZZNHpKaFhIZUJwTFl2WUI2WU9XTkJLU2J4SVJudjdqVUNReFl0UXZlUHRp?=
 =?utf-8?B?R284RDhtU2RZZFBiM1FPcTV1a0tJOW9yNDlBMVRRYTRVeWQ3RUtzNlZ0RklB?=
 =?utf-8?B?TW5lcHJUMTU0aWZpVkpnanBnbklYZnVnQWErcmxsWExPcGhYM1JwQ0xTK2pR?=
 =?utf-8?B?QmcxRTRkSFJ1V2JGYWNBU0I2Q25BWEZiYTlteVVFU0d6MlZxODNYNklEdUFn?=
 =?utf-8?B?c3Q1OXp0SjVrT1dEVXdib3R4VzlnNjgyekh1NVFhdGxFd0NQUUNyVTFwVXNB?=
 =?utf-8?B?dVViUDh4YW1ZUnZNNUdvUVZUY1dUbGxNRFZRNkhzaFR2SE9WeWwyOE1Yd1NB?=
 =?utf-8?B?M3NCdTNodW45LzNVQU5KSkxFSTBrbWNHS053Sk9CLy9BdkZTUkFrQ2ZCTmpB?=
 =?utf-8?B?YVRDU0dZdTlSQkwyRnRhNkcrKzYycEh5eGZKdmFMdmNtbXpGUFlLWFNOTEZ5?=
 =?utf-8?B?YzNGb2pSNmN2emx0bG9RMUlkK1FWeXVtTEM5cGtSaFBqeGpBYlUwVCtnaEk1?=
 =?utf-8?B?QURLMUdQeGxXR2RZb0xweURVNTc1WXc3NzNLand6YkJxNE0xQ2xMRERzb3Ry?=
 =?utf-8?B?aXIxNGVSY25OSjZGcm5GcHU4aDRVeTZhejUvMnlsN3ZNNFNGMkxOM2xmQ25N?=
 =?utf-8?B?ZkVhY2RKNzFKZi9RVThoYmNwRXFVSU81bm1iQzRxekVKaWZ2Z2RtZE9zRmFE?=
 =?utf-8?B?RDJVdkJpOGNRYjJUTGlvaVVxYjdpWGVERUcyWnZUQUE1bGFrazhqOFZWOU02?=
 =?utf-8?B?emU2SkdoSnl5TTkyQ3NGS2pqTEFFODR1eUhxTkY4V3RDV3lseUUwemQxQVdu?=
 =?utf-8?B?SzFid2lZSERkYjZzR29pN0krWlhkVVEzWXRXTldOalYwd2FUTFlEdTNacWN0?=
 =?utf-8?B?dXJqUkEvRWtYdVhGM3cvTlZKelJBQnJ6c0x0WjdBbE5UQWppMmNHZGhTaXRs?=
 =?utf-8?B?dlJzYjQ4OHBiMDhsd0hOa3N0dzFVUy9zWTJMRHErNXEwOVZGTlFKZXNoMGg1?=
 =?utf-8?B?UlR0a3FqQjZsaGZkMTByL3oybEU1aCtqa01XU3VEVDNVcHMwS05nVTFuYjds?=
 =?utf-8?B?WlF6RzhPN1R1Z1hpdWNMRUhxb05UM29hbk1FRFhObnVqR2RZZ3Z1bWg2TkhE?=
 =?utf-8?B?SjdIYk5oeVRqajJHWlJEdmNscHFYdzFMb3d5RlJzeXJrVjJ3L1dIRzBVUzli?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d42a87ee-dad1-4714-a545-08db57a687d9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 13:48:16.2055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uosgv03hkFdrGSenqCmHrirwOPgHlxpg76eLSmT89RNRfOYOQEidc7lA33gUGJPH/f8yqryTBtB1evTe3zzELnvTCun7sVNjT9DiYZjHNao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684417706; x=1715953706;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cQHTjO4TP9pGK3gGXUclWCsvPWqjdJe79blxDddENZs=;
 b=lkpGsgeza/+5KskUNRE9K/j8LD25p7BCWivJGeUD2wPUKEQxxMBCoonu
 geRGKqIdHBhbu5nXp5sXaV1TjVsLLAki7OlEAyx1+ol2HUobvkYqsuQ0e
 AsOIFfWPAHJ+yDWr7z6Wq0xlq8zGe9dm0Is8wr23vmsolJjuekuheImnp
 PneIneYq05fCsYoH0OXdGdr+X7TTh++RrOe9EZOUSqSUgY6j1MYWUx+XM
 2cEiZYM5HbHJAhsduVIsBopOAXY8BpVQ6IEqUtYMj1IqVxWIs/VSwqMgC
 iT7R/fRUT3nMCZWqDy9DBw1WoSvImQ5vx9Z7Q5JCtTgMXLFeNVeSeA1IL
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lkpGsgez
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/11] libie: add per-queue
 Page Pool stats
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
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 May 2023 21:19:13 -0700

> On Tue, 16 May 2023 18:18:40 +0200 Alexander Lobakin wrote:
>> +static inline void libie_rq_stats_get_pp(u64 *sarr, struct page_pool *pool)
>> +{
>> +}
> 
> s/inline //

I was afraid a bit the compiler can decide to not inline it for some
reason ._. But I can drop that with no issues.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
