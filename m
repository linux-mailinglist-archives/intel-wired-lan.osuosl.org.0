Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3971753686C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 23:27:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 123D78485C;
	Fri, 27 May 2022 21:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTEMbB3bB2HO; Fri, 27 May 2022 21:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A03678486C;
	Fri, 27 May 2022 21:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17D4A1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 21:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EEBCA40A9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 21:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7WrNNg5oGDPl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 21:27:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF96A40A21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 21:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653686823; x=1685222823;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xtjNVKZfmqFTBJeg5urEmEmRnMr7+4gM2iRyLIWkBAM=;
 b=X60dFjR24stJaaksrKdyLOh02JiKL9VppzdPk2gmgEsmgH3W7kjukROG
 iwBoe4oycDc9JyV3w5VlVTap5bRUfm7hLZHQU57jCH8/TbtzdicNIMnCA
 BhuG9SIcrNXz8qPO2KfYR7KY8gC7dYCfZsJ7fXgJ0A24Aa07T3lLRi9m9
 gwcOwLIH+9BT0aE+FUQoE3AJ+7SOHCmj+ERPIwa8T+7Xbqc3nX2tBexCI
 q9VDi42ts0mOqWeJjFQ8pfSHwEqPjFiaMR+f5kQvObhDwluaKq6XQ1B+Q
 5NoTlL+SzJBsEDhVk7qqhdNakCHz6iG6UcGoVWGVxvIJTFahOFL0sXyfi Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="273394300"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="273394300"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 14:27:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="821929752"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 27 May 2022 14:27:02 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 14:27:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 14:27:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 14:27:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cXdrmBaSJEYiyg2nnvGLuc6EKGGH4pmcsxsXhsPgAshlD6uqynGP5PK667zeAc0ztyCjjIl8polx9TIqmYSFWQWIzO3t3DSXKO2LyyIrtuQjY+fDaXCOmj7lu0i4Z0liSefPJewwBhGFooCrML45pyc4N0OBhsOcdzupiHfgcFwTYzAoqm2iV2Kr3ap7aCq87s69lI6Lm4CYcr5A3QoQAXuv8UaSCDDqHgr8rvl4X6EiIUX8cA0EPeHg/As5lRMA4svgJzG5UEYi0entuKzRgVTulZ+YlpjoP2gXO4QbNvxZgTRMwa8LSrzUmvfpjgcEIRodQPvtny+58tpdNPUGAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x0+2PnrKFU9+yfLT2pvwH5oU8z7nCpgwUVNOcX+JiVA=;
 b=I63vELfsi6vBtB22gYRovLhPbM7MggI5GG7E89agIKri+dKsVyRLIdnPgFlJew9AuNwRIzXkhiGDHI7FWttWH2dOhg3U1F20QDFEOmdqq7OhCvTeoCmc+Mku6TeJx+mHYOvvBpMx6+Cm91bL7CvBSrbz8zrQPVD4QyrPqZQP8HZMMD1pnoXXiyuef1gBRR3I9GTIkHpSaWBVgD7bZqB9i/z58Iv1qvjHdQ4qF7igcNYdSWO1YJ0WRaODXG6jGc81RyqtIK48Rq3oGK8VcqS8yLMGicXJC5WJyKPegM4lTrhMiSROMi9EofHeGkF2mKbaL4cWsUUw+BZaMv3J8KexCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB0015.namprd11.prod.outlook.com (2603:10b6:301:66::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.19; Fri, 27 May
 2022 21:27:00 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::2d92:b42:12d4:bd51]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::2d92:b42:12d4:bd51%6]) with mapi id 15.20.5293.016; Fri, 27 May 2022
 21:26:59 +0000
Message-ID: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
Date: Fri, 27 May 2022 14:26:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Sven Anders <sven.anders@anduras.de>
References: <700118d5-2007-3c13-af2d-3a2a6c7775bd@anduras.de>
 <ad3e244d-2f87-c74b-1d40-c21e286a721c@anduras.de>
 <20220517134550.7c451a83@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20220517134550.7c451a83@kernel.org>
X-ClientProxiedBy: MWHPR1601CA0003.namprd16.prod.outlook.com
 (2603:10b6:300:da::13) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 90c9c6cf-fea8-4239-886b-08da4027a24c
X-MS-TrafficTypeDiagnostic: MWHPR11MB0015:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB0015B63B11F5738A8955049C97D89@MWHPR11MB0015.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YYmsLrHJBDA6Z5RoPtSx9w22gic1BnCp4+A+z3JNHOGpD0CJ6FS+aQh7T/OG2jlel0pDak/cZ0RFFAroeva8JA213NEtFEiL/zAvzAWOi2z/rXaQP7Hv26ASAekhoUOMBtX/++RvlPXr5bYXsoFGKZRRhSnm2c3IqAAx9Q9FKYDcAEILXNrFQK6gH11T/YegYQmv5zb3fnheKBvHPc/frcWhhATzEg45NLez8VKtKaAzbOZoKSF5YPWQFny64U3PqbkHwZZFLQDvzsqBzaMvLG4+iHEt/bxbwI1wfihQvmR8EHgYH+BAVWOp0r4YMIKoFpR2msI2kPYJELDBnwKRUGlTr3MIgI2D3exds6fUqIUJ3PSh8uGJ4GiP3/tbxmU3W/ze5R1rE6LgqaXYaNp8vwHeeZO8vPRn0kViNCdLTrbjxwa/GrTgmeRR8pWmbMpZr2KATdgKgFkrf6NLWNWZoVtYW5xhEG/18LtN1DYJ346RAksMJwrafNekJEDuSd+3nXqpAnZ2k0VTYMBoopCb85smg3wvaVCHGdeo9MmTFfYPV015Oxa9g5debCv2mjYTdFMO6JbwVLrtbFAjYWvP0dcolrSJx1mQXiZZ12Q/c4ItzmIpMB9dFLzcLrSOWzjsYZuOAZYoNYIZIbax5oOP5RC5YoGmbsdWlxMiJeuvMD0xD+ZqP99StLLb93eSaaT0yMOVYd8wTz66oNC9iohp2YaaWT51Sy3hIwMhO0GNDG4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(44832011)(5660300002)(2906002)(82960400001)(38100700002)(66556008)(66946007)(66476007)(316002)(31686004)(2616005)(8676002)(107886003)(4326008)(36756003)(54906003)(110136005)(186003)(26005)(86362001)(6506007)(53546011)(31696002)(6512007)(8936002)(6486002)(508600001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2JrM1NKRXUrdWpRTll1LzF3RnVHazkwaCszcUVZRnorb3phbjJVUDYxRHJU?=
 =?utf-8?B?bFhvZWREODE1dm9TOVZpTG9RcFI2SjA4SU9oR1ZmYU9wRitEbVhpSERUeTVn?=
 =?utf-8?B?bTdwZ0VRQXB5bkFMVm43R3FuOUgrOVcvY1pKdGcvV3JyNjZXT0tTbmxXMmhU?=
 =?utf-8?B?Z0IraXFTRVpYNWREV0Q3Nm5XcTRFdkFTU1M0RDlFckNVUGlWY0RBSndHdFB0?=
 =?utf-8?B?T1BRanRTUEs3ekdjck9VRHpoUEdSczU0Qk5XVnJHMEVHYk5udDZ4OHNmYVJD?=
 =?utf-8?B?U056U1VCbW5pclhiSGhyR2FSZHZQdnA4eEVBSStTb1BkWWc4Z0hRVXMxdGxp?=
 =?utf-8?B?aHJLV3lTQlh1a2tQd04rUGRkTDIwNWJOQlgxZTk1THgvcVBYMnkyc09rbFBr?=
 =?utf-8?B?MWZLOVdVdkxWRjg1YUtoUlZ2WHRsZUsxeXg4cXVRYmd2Wml2NlMwWWs4bVRz?=
 =?utf-8?B?SUsvbVQ5VmVxOEJqME16N1N4eTRQZ210R1lXOUNucE42UjNoR3JDM1J5WWNq?=
 =?utf-8?B?Q0pEV21tcnErSjdRcjY4cXMxU2owZmN2QlpxSmU5ak1ibHVtVnhrY3hEWnZw?=
 =?utf-8?B?Tno1dzJ2bGp5R3IzUnFRQjA3VHlZSFVTWmhhdzNyYlhlYThTV2s3ckl2VW1h?=
 =?utf-8?B?NTRYLzRkMjZMYUF5dnVXKzY0bFZrSzdPUVJPNHRNZ1hEN3p6RGtLcDU3SlNC?=
 =?utf-8?B?N2lIRlFYaVFkb09ESVRvdnh1N3ZNRDl0RStJcDJ4dWE2NHA3cmt5TU9pZGgv?=
 =?utf-8?B?cUp0TjNTa1ZrOWFDTVpYMzJ6TXdQTlRvUjdqZGRycjYySnRHMGM2dCsvWDBa?=
 =?utf-8?B?cy9SdWFOSkZ0UXJjZWFYRlZwSDRsWXlqSCtQZlg1eDl3NEhPNzBpSG5WZnlu?=
 =?utf-8?B?cVcybGE1L0tTYVhNWTgzbmcxRTNVcTVmTkV5RXk5QzVkZFpjMFFNS3pOcis5?=
 =?utf-8?B?M3FhSTkrc3JsY0xwSkFmR3ljZUI4ZGdoZ2FuV1BhREZBYXY2aWNKSmVYSkdT?=
 =?utf-8?B?cGRnNXNkcG9VWDI3TTN4VnM4TGNhMHF4bE1XQ2hETE5CZW52ejFqeEU3dTVL?=
 =?utf-8?B?Tm9tUFhiVVRyYkRka0JNZ1BDV28vVjBnMDduYWNBVGswUkx5MTlWY1J0NWJh?=
 =?utf-8?B?UzJ2NlJ3a0VhREJqY0xRaS83Z3pyRHhjV2FyN0RqWUt1ZVJGN1lHMWc0dlN0?=
 =?utf-8?B?ei9ORGFhNlNLMGp5MEV3RVJmajhZWExxVEdra1JPc2t0OHV0RE1ZVUV5bnBq?=
 =?utf-8?B?R2prM3dITzhrN1l1azZwU3k2K1BxTnVRSldMZ1Zvc0NGdGRLdXZycUVLa3pv?=
 =?utf-8?B?dy9CT2dwVnBBK1lka2ZmU0VNSTJxaGtScGorNjJZVHZSZm16VW0rZGs4NzFN?=
 =?utf-8?B?aW9QWkVqZmNhanNFL3RDMG4wUTNxRVE1Q1RCUDVHY1dGaWRVaEZTWjhxTlhr?=
 =?utf-8?B?clpmeEp5RzE0SFlzRmIrYUJKYUxTeFBEZ2ZkVVNmZTZqVTR1ZFFjd0JhZ2JP?=
 =?utf-8?B?bHN5Z1BRTVg3SFdHVGt6N3grNDUwaWJ6dHV4cEVPQnZGNFNDNFlBbFFudHlj?=
 =?utf-8?B?QnpnU2xBZHhFam9JcU1NSTZ6RUtDeUFQMTJwdG5TdGplWVBNQXRqaE1NV0gw?=
 =?utf-8?B?eDhYSG5LY3VQWDg4akNIc1V4bVpHRGZDd1FEMnYxVnZPeGNIYURQaktkRmxp?=
 =?utf-8?B?MjR3N2tpalRQdTlieXBwR2xCSGF3M1Zmb1U2NXJnNzh4NTRNbkpFVXVNcVlT?=
 =?utf-8?B?VTRRY0FlcTBQR2pDTDJmSFZFOXpYdUtWNXBKaW9OdzRnNVUrTlBjYVNZY3lL?=
 =?utf-8?B?N3ZOcXNzc0c1UVczUHZubVl6bSt6b1JrUW1WWE8wNHQ3dXFDbHlSOG9IZnpk?=
 =?utf-8?B?SFNRS3JFWWpqNm5NTGlHQ1p3d1k0cUVNSWlNZ2dMZllHRmhMT1VkVVphUGZu?=
 =?utf-8?B?VGpqZ0VWam51amVHOGpPc09uSjVkTy9Fbk55bWtRaFNTT0VmVzE1UG53UGRi?=
 =?utf-8?B?MkE4ZUxlZjk0dEFzdEtGZlF5aWR6c0xjZVk1dTFaa2FLRG9keCtOTTFxMDl2?=
 =?utf-8?B?QnB1NnpFeFM1TkN1bWlVR0JWYWZUWklzKzUvcUNlOTF5NFdHRkM5QmJVbG11?=
 =?utf-8?B?TVB1b04yN0w1NzNNUFR1SG9aaDNaWHA5cXQvSVJQYVRBbFpXaTZMRWVISVho?=
 =?utf-8?B?TFBxMEgrK0FqS2dMazhYTzRpUVpJalRHLzVsV1N3VFIxK2VXQzhCVjJYNEZU?=
 =?utf-8?B?MzNuN2dJRk1hSGF0emdmMmtGZGUySkU1cHVqNmdwNmdQU0FQQzdEV1V2NitI?=
 =?utf-8?B?NWtoZnN4Mml4QzBVbCsxMTRPZVpDcmpyN2pxcFNXMW1iQ0E2ZW80QS80TUdn?=
 =?utf-8?Q?e3eCNQP9JFep1t2g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c9c6cf-fea8-4239-886b-08da4027a24c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 21:26:59.8579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n540g4A4BkwC7sFFWDx2XjyE8PiOw7kFPfqN8hTbVxe6ajUTxxf5UaWeRC5OjnDSBwQDMDv6vuMNuHZHe7H2GYQpXyizJaKHvHp5ZzwjFI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0015
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Bonding problem on Intel X710 hardware
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
Cc: netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8xNy8yMDIyIDE6NDUgUE0sIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+IENDOiBpbnRlbAoK
VGhhbmtzIGZvciB0aGUgY29weS4KCgo+IAo+IE9uIFR1ZSwgMTcgTWF5IDIwMjIgMTY6MjM6MTYg
KzAyMDAgU3ZlbiBBbmRlcnMgd3JvdGU6Cj4+IEhlbGxvIQo+Pgo+PiBUaGlzIGlzIGEgZm9sbG93
IHVwIHRvIG15IHF1ZXN0aW9uLiBJIGRpZCBub3QgaGVhciBhbnl0aGluZyBzbyBmYXIsIGJ1dCBJ
IHRyaWVkCj4+IHRvIGZpbmQgc29tZSBzb21lIGluZm9ybWF0aW9uIG1lYW53aGlsZS4KPj4KPj4g
SSd2ZSBnb3QgYSBndWVzcyBmcm9tIHNvbWVib2R5LCB0aGF0IHRoZSBlcnJvciBtZXNzYWdlICJF
cnJvciBJNDBFX0FRX1JDX0VJTlZBTAo+PiBhZGRpbmcgUlggZmlsdGVycyBvbiBQRiwgcHJvbWlz
Y3VvdXMgbW9kZSBmb3JjZWQgb24iIG1heWJlIHRyaWdnZXJlZCwgYmVjYXVzZQo+PiBJJ20gaGl0
dGluZyBhIGxpbWl0IGhlcmUuCgpZZXMsIHR5cGljYWxseSB0aGlzIGlzIGEgcmVzcG9uc2UgZnJv
bSBvdXIgZmlybXdhcmUgdGhhdCBhIHRhYmxlIGlzIGZ1bGwgCmluIGhhcmR3YXJlLCBhbmQgSSdt
IGd1ZXNzaW5nIHRoYXQgeW91IG1pZ2h0IGJlIHJ1bm5pbmcgaW50byBhIGZpbHRlciAKbGltaXQg
ZHVlIHRvIHVzaW5nIHZsYW5zPwoKPj4KPj4gU29tZWJvZHkgb3RoZXIgc2FpZCwgdGhhdCB0aGlz
IHNlZW1zIHRvIGJlIGFuIGVycm9yIGluIHRoZSAiYm9uZGluZyBkcml2ZXIiLCBidXQKPj4gSSBk
byBub3QgdGhpbmsgc28uIEFzaWRlIGZyb20gdGhhdCwgdGhlcmUgc2VlbSB0byBiZSBubyBzcGVj
aWFsICJib25kaW5nIiBtYWlsaW5nCj4+IGxpc3QgYW55bW9yZS4gU28gSSB3aWxsIGhhdmUgdG8g
YXNrIHRoaXMgcXVlc3Rpb25zIGhlcmUgYW55d2F5Li4uCgp0aGlzIG5ldGRldiBsaXN0IGlzIHRo
ZSBib25kaW5nIGxpc3Qgc2luY2UgaXQncyBwYXJ0IG9mIHRoZSBuZXR3b3JraW5nIApzdGFjayBp
biB0aGUga2VybmVsLgoKPj4KPj4gSSB3YW50IHRvIHVuZGVyc3RhbmQgdGhlIHByb2JsZW0gdG8g
Y2xhc3NpZnkgaXQuCj4+Cj4+IDEpIFdoeSBpcyB0aGlzICJlcnJvciIgaXNzdWVkPyBEbyBJIHJl
YWxseSBoaXQgYSBsaW1pdCBhbmQgd2hhdCBpcyB0aGlzIGN1cnJlbnQgbGltaXQ/Cj4+IDIpIElz
IGl0IHJlYWxseSBhbiBlcnJvciBvciBpcyBpdCBtb3JlICJhIHdhcm5pbmciPwo+PiAzKSBXaHkg
aXMgdGhpcyBlcnJvciB0cmlnZ2VyZWQgb25seSB3aGVuIGNoYW5naW5nIHRoZSAibnR1cGxlcyBm
aWx0ZXIiIGFuZCBub3QgZHVyaW5nCj4+ICAgICAgdGhlIG5vcm1hbCBhZGRpbmcgb2YgVkxBTnM/
Cj4+ICAgICAgUmVtYXJrOiBJIGNhbiB0cmlnZ2VyIHRoZSAibnR1cGxlcyBmaWlsdGVyIiBsYXRl
ciBvbiBhZ2FpbiBhbmQgaXQgc3RpbGwgd29ya3MuCj4+Cj4+IEkgYWxzbyB0cmllZCB0aGUgbGF0
ZXN0IDUuMTgtcmMga2VybmVsIHdpdGggdGhlIHNhbWUgcHJvYmxlbS4KPj4KPj4gTWF5YmUgc29t
ZWJvZHkgd2lsbCBmaW5kIHRpbWUgYW5kIHRyeSB0byByZXByb2R1Y2UgdGhpcz8KPj4gSSB3aWxs
IGFuc3dlciBhbnkgcXVlc3Rpb25zLi4uCgpXZSBhc3NpZ25lZCBzb21lb25lIHRvIGxvb2sgaW50
byByZXByb2R1Y3Rpb24gb2YgdGhpcyB0b2RheSwgYW5kIHRoZXknbGwgCmdldCBiYWNrIHRvIHlv
dSBpZiB3ZSBoYXZlIGZ1cnRoZXIgcXVlc3Rpb25zLgoKCj4+Cj4+IFJlZ2FyZHMKPj4gICAgU3Zl
bgo+Pgo+PiBBbSAxMi4wNS4yMiB1bSAxNjowNSBzY2hyaWViIFN2ZW4gQW5kZXJzOgo+Pj4gSGVs
bG8hCj4+Pgo+Pj4gSSdtIGhhdmluZyBwcm9ibGVtcyBzZXR0aW5nIHVwIGEgYm9uZCBpbiBhZGFw
dGl2ZSBsb2FkIGJhbGFuY2luZwo+Pj4gbW9kZSAoYmFsYW5jZS1hbGIsIG1vZGUgNikgb24gYW4g
aW50ZWwgWDcxMCBuZXR3b3JrIGFkYXB0ZXIgdXNpbmcKPj4+IHRoZSBpNDBlIGRyaXZlciBjb25u
ZWN0ZWQgdG8gYW4gQXJ1YmEgMjUzMC00OEcgc3dpdGNoLgo+Pj4gVGhlIG5ldHdvcmsgY2FyZCBo
YXMgNCBvbiBib2FyZCBwb3J0cy4KPj4+IEknbSB1c2luZyAyIHBvcnRzIGZvciB0aGUgYm9uZCB3
aXRoIDM2IFZMQU5zIG9uIGl0Lgo+Pj4KPj4+IFRoZSBzZXR1cCBpcyBjb3JyZWN0LCBiZWNhdXNl
IGl0IHdvcmtzIHdpdGhvdXQgcHJvYmxlbXMsIGlmCj4+PiBJIHVzZSB0aGUgc2FtZSBzZXR1cCB3
aXRoIDFHQml0IEludGVsIGhhcmR3YXJlICh1c2luZyB0aGUKPj4+IGUxMDAwZSBkcml2ZXIsIHZl
cnNpb24gMy4yLjYtaywgZmlybXdhcmUgNS4xMC0yKS4KPj4+Cj4+PiBEYXRhIHBhY2tldHMgYXJl
IG9ubHkgcmVjZWl2ZWQgc3BvcmFkaWNhbGx5LiBJZiBJIHJ1biB0aGUgc2FtZSB0ZXN0Cj4+PiB3
aXRoIG9ubHkgb25lIHNsYXZlIHBvcnQsIGl0IHdvcmtzIHdpdGhvdXQgcHJvYmxlbXMuCgpBbmQg
dGhlcmUgYXJlIG5vIGNvdW50ZXJzIGdvaW5nIHVwIGluIGV0aHRvb2wgLVMgd2hlbiB5b3UgcmVj
ZWl2ZS9kcm9wIApwYWNrZXRzPwoKPj4+Cj4+PiBJIGRlYnVnZ2VkIGl0IGRvd24gdG8gdGhlIHJl
Y2VwdGlvbiBvZiB0aGUgcGFja2V0cyBieSB0aGUKPj4+IG5ldHdvcmsgaGFyZHdhcmUuCj4+Pgo+
Pj4gSWYgSSByZW1vdmUgdGhlIG51bWJlciBvZiBWTEFOcyB1bmRlciA4LCBhbG1vc3QgYWxsIHBh
Y2tldHMgYXJlCj4+PiByZWNlaXZlZC4gVGhlIGZld2VyIFZMQU5zIHRoZSBiZXR0ZXIgdGhlIHJl
Y2VpdmUgcmF0ZS4KPj4+Cj4+PiBJIHN1c3BlY3RlZCB0aGUgaGFyZHdhcmUgb2ZmbG9hZGluZyBv
cGVyYXRpb25zIHRvIGJlIHRoZSBjYXVzZSwgc28gSQo+Pj4gdHJpZWQgdG8gZGlzYWJsZSB0aGVt
LiBJdCByZXN1bHRlZCBpbiB0aGUgZm9sbG93aW5nOgo+Pj4KPj4+ICAgwqBJZiBJIHR1cm4gb2Yg
dGhlICJudHVwbGUtZmlsdGVycyIgd2l0aAo+Pj4gICDCoMKgIGV0aHRvb2wgLUsgZXRoMyBudHVw
bGUgb2ZmCj4+PiAgIMKgwqAgZXRodG9vbCAtSyBldGgzIG50dXBsZSBvZmYKPj4+ICAgwqBpdCB3
aWxsIHdvcmsuCj4+Pgo+Pj4gICDCoEJ1dCBpZiBJIGRvIHRoaXMgSSBzZWUgdGhlIGZvbGxvd2lu
ZyBlcnJvcnMgaW4gImRtZXNnIjoKPj4+ICAgwqAgaTQwZSAwMDAwOjY1OjAwLjE6IEVycm9yIEk0
MEVfQVFfUkNfRUlOVkFMIGFkZGluZyBSWCBmaWx0ZXJzIG9uIFBGLCBwcm9taXNjdW91cyBtb2Rl
IGZvcmNlZCBvbgo+Pj4gICDCoCBpNDBlIDAwMDA6NjU6MDAuMjogRXJyb3IgSTQwRV9BUV9SQ19F
SU5WQUwgYWRkaW5nIFJYIGZpbHRlcnMgb24gUEYsIHByb21pc2N1b3VzIG1vZGUgZm9yY2VkIG9u
Cj4+Pgo+Pj4gRGlzYWJsaW5nIGFueSBhbnkgb3RoZXIgb2ZmbG9hZGluZyBvcGVyYXRpb25zIG1h
ZGUgbm8gY2hhbmdlLgo+Pj4KPj4+IEZvciBtZSBpdCBzZWVtcywgdGhhdCB0aGUgaGFyZHdhcmUg
ZmlsdGVyIGlzIGRyb3BwaW5nIHBhY2tldHMgYmVjYXVzZSB0aGV5Cj4+PiBoYXZlIHRoZSB3cm9u
ZyB2YWx1ZXMgKG1hYy1hZGRyZXNzID8pLgo+Pj4gVHVybmluZyB0aGUgIm50dXBsZS1maWx0ZXJz
IiBvZmYsIGZvcmNlcyB0aGUgbmV0d29yayBhZGFwdGVyIHRvIGFjY2VwdAo+Pj4gYWxsIHBhY2tl
dHMuCj4+Pgo+Pj4KPj4+IE15IHF1ZXN0aW9uczoKPj4+Cj4+PiAxLiBDYW4gYW55Ym9keSBleHBs
YWluIG9yIGNvbmZpcm0gdGhpcz8KPj4+Cj4+PiAyLiBJcyB0aGUgYSBjb3JyZWN0IG1ldGhvZCB0
byBmb3JjZSB0aGUgYWRhcHRlciBpbiBwcm9taXNjb3VzIG1vZGU/Cj4+Pgo+Pj4gMy4gQXJlIHRo
ZSBhbnkgc3BlY2lhbCBzZXR0aW5ncyBuZWVkZWQsIGlmIEkgdXNlIEFMQiBib25kaW5nLCB3aGlj
aCBJIG1pc3NlZD8KPj4+Cj4+Pgo+Pj4gU29tZSBkZXRhaWxzOgo+Pj4gLS0tLS0tLS0tLS0tLQo+
Pj4KPj4+IExpbnV4IGtlcm5lbCA1LjE1LjM1LWNvcmUyIG9uIHg4Nl82NC4KPj4+Cj4+Pgo+Pj4g
VGhpcyBpcyB0aGUgaGFyZHdhcmU6Cj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+IDQgcG9y
dCBFdGhlcm5ldCBjb250cm9sbGVyOgo+Pj4gICDCoEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0
IENvbnRyb2xsZXIgWDcxMCBmb3IgMTBHQkFTRS1UIChyZXYgMDIpCj4+PiAgIMKgODA4NjoxNWZm
IChyZXYgMDIpCj4+Pgo+Pj4gd2l0aAo+Pj4KPj4+ICAgwqBkcml2ZXI6IGk0MGUKPj4+ICAgwqB2
ZXJzaW9uOiA1LjE1LjM1LWNvcmUyCj4+PiAgIMKgZmlybXdhcmUtdmVyc2lvbjogOC42MCAweDgw
MDBiZDgwIDEuMzE0MC4wCj4+PiAgIMKgYnVzLWluZm86IDAwMDA6NjU6MDAuMgo+Pj4gICDCoHN1
cHBvcnRzLXN0YXRpc3RpY3M6IHllcwo+Pj4gICDCoHN1cHBvcnRzLXRlc3Q6IHllcwo+Pj4gICDC
oHN1cHBvcnRzLWVlcHJvbS1hY2Nlc3M6IHllcwo+Pj4gICDCoHN1cHBvcnRzLXJlZ2lzdGVyLWR1
bXA6IHllcwo+Pj4gICDCoHN1cHBvcnRzLXByaXYtZmxhZ3M6IHllcwo+Pj4KPj4+Cj4+PiBUaGlz
IGlzIGN1cnJlbnQgYm9uZGluZyBjb25maWd1cmF0aW9uOgo+Pj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+IEV0aGVybmV0IENoYW5uZWwgQm9uZGluZyBEcml2ZXI6
IHY1LjE1LjM1LWNvcmUyCj4+Pgo+Pj4gQm9uZGluZyBNb2RlOiBhZGFwdGl2ZSBsb2FkIGJhbGFu
Y2luZwo+Pj4gUHJpbWFyeSBTbGF2ZTogTm9uZQo+Pj4gQ3VycmVudGx5IEFjdGl2ZSBTbGF2ZTog
ZXRoMwo+Pj4gTUlJIFN0YXR1czogdXAKPj4+IE1JSSBQb2xsaW5nIEludGVydmFsIChtcyk6IDEw
MAo+Pj4gVXAgRGVsYXkgKG1zKTogMjAwCj4+PiBEb3duIERlbGF5IChtcyk6IDIwMAo+Pj4gUGVl
ciBOb3RpZmljYXRpb24gRGVsYXkgKG1zKTogMAo+Pj4KPj4+IFNsYXZlIEludGVyZmFjZTogZXRo
Mwo+Pj4gTUlJIFN0YXR1czogdXAKPj4+IFNwZWVkOiAxMDAwIE1icHMKPj4+IER1cGxleDogZnVs
bAo+Pj4gTGluayBGYWlsdXJlIENvdW50OiAwCj4+PiBQZXJtYW5lbnQgSFcgYWRkcjogNjg6MDU6
Y2E6Zjg6OWM6NDIKPj4+IFNsYXZlIHF1ZXVlIElEOiAwCj4+Pgo+Pj4gU2xhdmUgSW50ZXJmYWNl
OiBldGg0Cj4+PiBNSUkgU3RhdHVzOiB1cAo+Pj4gU3BlZWQ6IDEwMDAgTWJwcwo+Pj4gRHVwbGV4
OiBmdWxsCj4+PiBMaW5rIEZhaWx1cmUgQ291bnQ6IDAKPj4+IFBlcm1hbmVudCBIVyBhZGRyOiA2
ODowNTpjYTpmODo5Yzo0MQo+Pj4gU2xhdmUgcXVldWUgSUQ6IDAKPj4+Cj4+Pgo+Pj4gUmVnYXJk
cwo+Pj4gICDCoFN2ZW4gQW5kZXJzCj4+PiAgICAKPj4KPj4KPj4gTWl0IGZyZXVuZGxpY2hlbiBH
csO8w59lbgo+PiAgICBTdmVuIEFuZGVycwo+Pgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
