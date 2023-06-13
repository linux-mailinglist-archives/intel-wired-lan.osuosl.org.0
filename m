Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3954872E4CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 16:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C829A6108F;
	Tue, 13 Jun 2023 14:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C829A6108F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686664999;
	bh=SXH54NIw3Bsnk0knKy1HFzMDTxjKyNjw/tVV4YtTd5U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C+rdmb34IpXFZCYblxP0q0L6HImMVppq8U1WbjEVrk8KGZ4r9DXcIitwWeVK79gZ/
	 xcdmRnVyLUBUN/q8HnTBARNQyUj93ZVUlBQZ6raNJa4aiSP51XI8qsuMkHdLjtPyEj
	 b/+InlIc1ZLfgV9Jvv4xTPCG2ATGUReem+Kq223ar8FddaRhe7xBkwY60Ybyic6ReO
	 53TGEkJPXaj6z0Pun45Qae6ULpTp9LQy0zMP+wOoq85bkL4iz2EgPiqVdzNbXTNoQQ
	 9fiQi9HlC+2t9WTd9OQdR5yOg118eDDtMaD2wiLGe8uxfNstidvOqnxPaIpwKjvnhJ
	 hXhFDjtz0D7wA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fePqrsxYUCGt; Tue, 13 Jun 2023 14:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A9DD60B57;
	Tue, 13 Jun 2023 14:03:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A9DD60B57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57A4B1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2967240020
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2967240020
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojjjGHGSAHfF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 14:03:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22740410BE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22740410BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:03:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="386738378"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="386738378"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 07:02:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="705808773"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="705808773"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 13 Jun 2023 07:02:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 07:02:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 07:02:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 07:02:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 07:02:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dquH+HlgIkl5gJFRSy2buYJyfYBa5YU4f/Devhv4T+/n1ujFWE6rgsLMam9MzsKHk6E91K+nFzIOsVAW1DwhJM5623+8dEa8c9tdu/A8akBQhoMRusoTTMZm+IjD1BnPvbkaqIPQ42P5pyv4+Z63wgGcMaDuW88LMc2yC9m3c5vBxPpbIX70dzX/u561CZeoZX8HqB6SbOrELM4jrfbxWknkDTzsAD9Fcdi1C2KnRqSfSEg8lmGIcLI2wpaKaAj/pLBGc90wBI70H769B8+uCIqmfR/wDGARCkWN+ETWQ/auXebE245HiGcFa/mBmK6ZW5NKYs0c5Z47IBQgPtF9WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6SpnBK1KGJT3cWhLi8yjz0FXye3PARoGGFxUoKQF3Y=;
 b=cqrWDgdGY1VlFxuPgt6Zz8HDJi5qGYOzE0uj3tYWA17DfUScKvwJQhIqw6sGZiD08J8NkwQxCoNfBOlaqxuR/cOmNdFqbBPbo772DstKfDJq/53FTRQWmLSsjkli65PvnNrdV2vt5DSYB89I4l3qLDAqDmQ/soJFWiBibYZWSV/mMfIPTjp4ij39e5qDouIqPvAwfBBSgXjUd/YQdR+Pxozm1jbTpk5mDEX24AE+0EbyAM+L9wEylp54stX5WENfDCto/R31epgwtGkt1cx8a2zXHtrFia9PZcVy89knKtFiSDLLJDyjWzGonypmd544UZG040ogqz0xVUK8sU6P0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Tue, 13 Jun
 2023 14:02:43 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Tue, 13 Jun 2023
 14:02:43 +0000
Message-ID: <4db2d627-782c-90c2-4826-76b9779149ce@intel.com>
Date: Tue, 13 Jun 2023 16:02:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Piotr Gardocki <piotrx.gardocki@intel.com>, <netdev@vger.kernel.org>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-4-piotrx.gardocki@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230613122420.855486-4-piotrx.gardocki@intel.com>
X-ClientProxiedBy: FR2P281CA0159.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::8) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB5802:EE_
X-MS-Office365-Filtering-Correlation-Id: 8df1d257-912c-4fc2-885f-08db6c16db90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WoW8E0Fr9AcQdxvU5UM1AuoX7IaIkbaeMVYOVXeKydVfKw/LgE1g6wP5w50iQAJ7iT+TRhTnKrweJJhXna4BUDMEsYWTvcNsWvphhnZWtabjjByYHS8WkJvuUNhE3edBEkZwiyIU7TzuN+QBuuZ5Q2n0/QSX1qXNZ2GTfNjCmxePPe2naRtekzuxLWA/RmSA+gY58rYITwTbbHBBKJdgPt0lZM8SimYBdy2jcUhoVOd0GDX/Or2txdVYaVvRZa4yjPKpiIcIr5LSIOUqn2s3q1o/lkM1hy03i4KQT98p0Iylwa3ybSpbBmgEAUoaAq/b8oA31bjgGD1I8CF2GLWwysg00VZCdrJbp6YZzGucCoEEffaxJ2kHBt4TL4yudR/ojCJKWKm99k2dYeApwY2fnokd5mFQwuheDnGkTmmzLCXCgEs1JM+0WdWLc3vl3oIRGZIs29o1vwk4WlrsAEGxFfwoRUj79xoEmVb8/CAO1gt15l6XsN8jl2slRXHx4HOp43ATHIK9s867bhPos3wyeqBtJKvNWEXbXZmIZMwiVUXsYBEtlQZ/05zLwwPLvAMGLPnwSebXwCjoXy6SR/+atKDrZOnixiRIGKvin214LqAWwrLPcnRQWHnhkzz63znCRQp1+MiIjSrCWqhoFoNqyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(136003)(376002)(366004)(451199021)(83380400001)(53546011)(26005)(6506007)(6512007)(2616005)(316002)(41300700001)(38100700002)(82960400001)(31686004)(6486002)(6666004)(186003)(86362001)(2906002)(36756003)(8936002)(5660300002)(66946007)(66556008)(8676002)(4326008)(66476007)(31696002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUU4N082Z1dyR2FDb2JBWTNFb3k3VkRWTjB3WVVjRWxtcjNWbjNGb0VOeTFP?=
 =?utf-8?B?QkIzSTBQTVFlQldYVUdJTmVRYW1MeC9TNHVsZ2FiV2ZhNDJrOWlDR3l3UkZC?=
 =?utf-8?B?Qlp2bmhEWTlJOUZwdjB3LzB0UCtBQlJmbTRVN3RkdzdTbFRjeTBBekZoUklr?=
 =?utf-8?B?cDkrZVFUcGtmNFMzbmR5KzY4ZGx0UENOUjF1ck1iZVVuK1VzNm1NWFIrVkNY?=
 =?utf-8?B?bGlpNEdzUFNxSVB6WVhGeWFTN2hVYlVaa2VkRk1WU0tXM2k2WGtUbEpCUGFs?=
 =?utf-8?B?Q1VMaFBMOFRoWG5PVlZFaUJvcklFbXlJWmRMa0hGUllueTJYVFlMT1FLd3Rr?=
 =?utf-8?B?RDBUeXNZQzRmeDI3M2FtZzRjdENXY0FsSDFiN1kyVDkrQUIzTXhIckdORUwz?=
 =?utf-8?B?TWhUUkdmL2ZkRUZaMEY1RWNjZDRTYllaZEF0ZjZoVmp5VHNzUzFhWVdhODFK?=
 =?utf-8?B?OG1zVFlmbmNFK3lGWE5CNU5nbEw0UlVzUi8yRXdKRTBaMEMxT3pBSUNyTUU0?=
 =?utf-8?B?RzFBekhIM1dSRG0zRW9jQVYrTkJEZG1pL0xCTW5UU3BQZTYyYWZWRVd6Y3Va?=
 =?utf-8?B?Y1p2Vk9aQlpNeS9hRk1sNVlmbVBqTWE5MGpmbXJQaXVhQjNSc29iTDNheGVD?=
 =?utf-8?B?NzczU3k2cUVpK2hqMnNjMHlGZHNERFVTMTdTTkNSSHQ3VzhsU09lcmI0OUh2?=
 =?utf-8?B?bTVlZWd5R2lyTlFEZVZPVE42U3NJM0VLN3ZNUUo4dXpZaTFab1hxUDZBZzA5?=
 =?utf-8?B?WDAyQWxBTkVaOHA2ZGhtajZkYzllSm9kdXE4T2pUa1R0RHR5b3IzcXJnV1p4?=
 =?utf-8?B?N3l2UERudmhBdVNGS09aeVZLV3NPVWhGRHIwbVRQNElySmhXVnNZL1NYY1Na?=
 =?utf-8?B?RjkvMENlTkgxQnpiQXhiRDI2MXBLdGExbHdCenFZYi9IUTFXWGRVNkIrS0ph?=
 =?utf-8?B?QldIVnVwU3RycTg5SlIxRm9wbUxiNVFiaVBId2xMQUp6cGNiVGlEWUJiK2FY?=
 =?utf-8?B?MXNpWGJXL3pRWVFFS0N0TXdRek9RTFE3Q0hxTFJxNXhjTWtzcll3STVhTitz?=
 =?utf-8?B?ODUxd1Zwejk3a250dXZIdVp4OWJiZU5UQms5SW03eitkWk9wWGNROTNBTmlZ?=
 =?utf-8?B?am1RNXAvdEhnWGwxTGp6Slg5dldKYldQNlFkR2w1V1VXT3dJbVZMWHZ0S1cz?=
 =?utf-8?B?RFphOXpTTlE1c1c0cm1QUWJEU1F6blgrWGYxU2IybWlJSVZTSWFTMldFRjJK?=
 =?utf-8?B?dFlKUW1oRlpuUGdSL1RiZys0dEtSKzNnL1hZcFRtN3hEWWdOdnBFKy9tb1dz?=
 =?utf-8?B?MWFESG04N1JGU3FwaDZrMUJNUTUxZ2FZeVFhTE5jVnNCODlCdmJBSVdzNlMy?=
 =?utf-8?B?Q0JHTjBLYkdzb2c3K3pYSjY0alJMOE9hNWpGM2NOSFlaQnJnSERpNnJOK3VM?=
 =?utf-8?B?bUpMZGxrWFdjL2orSFhIQ3ROQS9wMEZNQkdqWFI5TzlJZ280NkVyc3UxdlpN?=
 =?utf-8?B?OVVYY3ovbXVELzRXanZJVSsvNmxrZ3N0OXlNdHlacTVxL29wTm11K1U0d0tt?=
 =?utf-8?B?eFZ6bXRjK0dJM0F1ajVuMm5IMHZRWmtRKzJLamM3bnNSMlRQS2RHcEp2NGtm?=
 =?utf-8?B?Y081NU5wNnphRkF0eEVPalhBc2wxNUlTa2ZJL0N2empjblc5R2tzWWhxUU42?=
 =?utf-8?B?UVgvQ1hKVElYUUJqT2xPc2Vkamx4WHlobUVtVUVnV1Mzc1lqT3NnUWU2Y2dO?=
 =?utf-8?B?blI5MEcydHcySnk3M0QzR2x2RHdQZzJoQlhXdWxhY29tdXo1NGJ4ZlAxa3Bq?=
 =?utf-8?B?TkdFdjVJbWdoSENvemZ5b2JabjVzMHJMY0JBemtZWG5yS041S05ENk5VMXNq?=
 =?utf-8?B?Mlc1WmtyaGVUd05qVW93Q2VoaW0xR1hzbEloZk1CQndGTCtqRm5qS1EybDlQ?=
 =?utf-8?B?RlNPWnlYOCtZcVB0d1FSOE0xeWxidDlIVmd6UERvU3dZeXY4OThhdjUybWZh?=
 =?utf-8?B?U25XK0NxNGpmM3JwbkdCNHpnajZoK1g1ZnE2SzZZV2pzTXUxTTNJeWY2Tmhz?=
 =?utf-8?B?ZlZ4MlpRR3BHcGFUK3FKS0RHR21ua3Fvek5CbVAzcW5Tenp2cVZUOWY3Rk80?=
 =?utf-8?B?MWI2ZWFQYUErUk5aOVAraVFZMi82cGJBRTdSOGZJbFV4YUFjUlRDKzZYZFFJ?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8df1d257-912c-4fc2-885f-08db6c16db90
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 14:02:43.6564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hOxb1hoOFEUM4SOP7VBrkP43xpZon3hwcTES5M1tI7WWvSvamHFdfsbe0xZrAORvNSWSthUtJaT62Zw31jTEQbZGYcjMoSJ738R0M+es7ak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686664992; x=1718200992;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yQ2yEdRkThEZYBFhWjTC+XdLZxlngrYFaElm5SoqVWg=;
 b=PLQfOba/jiLh+U/H9FV6XO165ZxVJ8iUNUNGdslKDPX3ZTa6WKNuRnRJ
 96Ijr96gXkENqHYGiNXs2j+8lKA+9GeN0zxm3xS45fw2ZLj7y3QXchMOm
 XcX99DdguuyOWEO6cjDAYkbNCAkBEgn+in6X4a+7EEzZ49O6/0UtvQamC
 FT3a/ICnhhzb2Wb6cDCP/SHIqdV2yx4Z+giaWVFJx7UrUv/qHdyyFK2IE
 7gfoDc0OtrEGyCgx+ghXIsu8N4rd+qn3Dltrswt/rcNE+dO3dQ6dMt0dH
 0dwIGYbcp5PAo5VKaXGYoNNQsJlzTL0buMGxMsZLFkCWBvDzKYr47BxO0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PLQfOba/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: remove
 unnecessary check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, simon.horman@corigine.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/13/23 14:24, Piotr Gardocki wrote:
> The check has been moved to core. The ndo_set_mac_address callback
> is not being called with new MAC address equal to the old one anymore.
> 
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index caafb12d9cc7..f0ba896a3f46 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5624,11 +5624,6 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
>   	if (!is_valid_ether_addr(mac))
>   		return -EADDRNOTAVAIL;
>   
> -	if (ether_addr_equal(netdev->dev_addr, mac)) {
> -		netdev_dbg(netdev, "already using mac %pM\n", mac);
> -		return 0;
> -	}
> -
>   	if (test_bit(ICE_DOWN, pf->state) ||
>   	    ice_is_reset_in_progress(pf->state)) {
>   		netdev_err(netdev, "can't set mac %pM. device not ready\n",

I would expect one patch that adds check in the core, then one patch 
that removes it in all, incl non-intel, drivers; with CC to their 
respective maintainers (like Tony for intel, ./scripts/get_maintainer.pl 
will help)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
