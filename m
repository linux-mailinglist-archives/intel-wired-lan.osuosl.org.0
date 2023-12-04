Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5795B8034E9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 14:29:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF6CB81F03;
	Mon,  4 Dec 2023 13:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF6CB81F03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701696584;
	bh=feEWuhCrZaZQs+fFvKZVxjVrOPCit6OCJLH6jOdjiIQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mDJFQv/ghi/5hbGDNubPdT8vym+tEw3n0D4ZJsT/4iTdb3uwTABrPwJqOEh1+FJJt
	 AztLtePmr4l8BRmINWT6aLlT7/uuheDCGvKuUv2Zz6AzCpPgZ8NSmKgKJetyVwx3/e
	 91w5TC62ARcUHQRcl7XJMDtg9o4EsOvc/rzmkJJHdNknsACYysIROEtjptBOvvWLbl
	 yrjEBNQ6MInfDiNA6s1Utjfo5w946o8J1Bi1QNATa0nzKXli/nvxrW2j5CsBWjtOL2
	 4rptPQIldVW46y52gomNcbTG34P5ZFuIQS7hFRk2VAynj2r9Rm4fBIHiR/nNn+ewBd
	 kqMQwoIGqAffQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1M04JnkD2Lf; Mon,  4 Dec 2023 13:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 462BB81EFD;
	Mon,  4 Dec 2023 13:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 462BB81EFD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF75F1BF969
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 13:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6580416A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 13:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6580416A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwHztexWhxJV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 13:29:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E573741687
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 13:29:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E573741687
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="15278136"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="15278136"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 05:29:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="763941746"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="763941746"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 05:29:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 05:29:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 05:29:35 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 05:29:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OL2UJLlgfLJOV1xF8lm1+ihl7sAe+72YrfzZLAyaW4193qIpJgcGtz6McbIS8kB5G7WqKc20JjlEBRCszJmIHAUz2gyLQPVRqx1zUIsSeBzPu4XpSeSo3t7DnivEWpNvcNSG/PlNhHoHQz55fxmBE8df8YvPU0BmlVYWlYKpQyxwgaK22RU/wAKAuOfK0qKHIpZFcFynGtqf3LKQ4cGvzlCQTbSbJNpRmSYrAvg5jWfYnywNHQZlPjErc0Sw5Srf7gw8o4ZNEl8IhiGzppil4zJgPxwOR9p0Q7Xfo8tFa68uiQbj4jaxwplARga7xoxTRu9aHQuN4Fq2k93LTNzTdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wHK9iXZy8Hiy0tLHRTvObSwtVYLuz48rwG+EqSAV4m0=;
 b=GDk6gPp/EQP/wJJDn4OypXIACDREc3/I2l3Ce+okVYMcMjXEyUFgM0MHvqYsaaMhAhjKCSfgeSmgEQH2KtksYpzVOlhcVBlHs8sSUOgfYoay/9511eZLzRYCjc8oCNUJ/FbrqvEJ9EbGfQZWx/1/blRwuT+MHuMlAfAUMWJ3PlKAIHvV+nTEeGn188B1gLVHIybq+R8xac9P50Sqt2Px6/fEqQTodj61Wp6wJuBOYQLKttj61do4FpNnK0Dcmj6b3oZuBuCF7Q4Fw9krK9ylOpPYkNiIMvpVdlMkPGf7C1RwfWvi+pPwTUTCHek6dVniOFbuY6akziY4JpCQxneQSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by IA1PR11MB6466.namprd11.prod.outlook.com (2603:10b6:208:3a6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 13:29:33 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 13:29:32 +0000
Message-ID: <604cca27-57dd-ed40-a776-0b4163e0678e@intel.com>
Date: Mon, 4 Dec 2023 14:29:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231204131041.3369693-1-andrii.staikov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231204131041.3369693-1-andrii.staikov@intel.com>
X-ClientProxiedBy: FR3P281CA0084.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::20) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|IA1PR11MB6466:EE_
X-MS-Office365-Filtering-Correlation-Id: 18bfdf85-efcc-4d25-570c-08dbf4cd0ca4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O5tpGhgNgEP0NemBPxtMMozflOOnL/+EemgEgIWIbr65oQVD3R/a5tux/YpzEFAP32i0lbRHE36jNyHGxpEbNpj7MsjmprSAkDYC2GyjH2U+mC1xDCwNUkFtMj68PX2alMwYN0peiGAoWlo4kw8o0jokJZM2jqucqP956zUYAyyoHc6g0XAQtSGwQFe3IFSMFtAtL+bvdmpNWzVd0keVv9Ec8USaixHrhdWkIcpbBbTLt+JypOIIXyQKZZ1l6YLUiRWTVTE8fCkdLH9JdDKGgM6eJ4m2VJnBGBmadWSb/HRG2+1PgVR11s/oYZcI+VUhCdplqvoUF5DXlGz++gWu2FBRXyBX4pm7rsom+hLSqkKj6JN2PqYwOIiTk6rR3hdqwYQIpHc2rf5r/1Gfn62c4kmUoxH+5Z+X+6LANTfczstJ5WK0yE/i+pR5qsgRl9wOAtqXQ9If9iS2+bADDJxSxy16v4ElahFGCHLW03Xsd7DE5PX38FtGJNR5uuTZrcT96FEbwpdp1jTwKxcZXM9LKGChajuoUkB/QvmGAwqr0raiX7pY2hYJzWiuGA00lg/RrUPiIUozuryND8kd/g2UR5FqTK1u7XSXbpVEpEeS+pW93Nwjc+jTkK1/K4LdjhD9Jf94MUuBfZL95tBeBbRwaQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(396003)(136003)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(26005)(478600001)(6486002)(83380400001)(6666004)(6512007)(6506007)(53546011)(82960400001)(36756003)(107886003)(2616005)(316002)(66476007)(54906003)(66946007)(66556008)(31686004)(38100700002)(5660300002)(4326008)(86362001)(2906002)(8936002)(8676002)(31696002)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U202K3FxbTlFL3FPVXJGREgyVmE3d0RhUlRYM2FRclJlWkQ0K1Jqcmt4NzZa?=
 =?utf-8?B?T3ZyNFU3aFdzemwwdjJwWXVEdnhGWCtXTFNuSlBOTzVLdEd1c0p2Ri9LSkZi?=
 =?utf-8?B?ajBCNzNNRmI3T1JKb3d5eVRUcHhUa1Nray9jVTNmT3Z6YVp1dXl1dzIwMmdB?=
 =?utf-8?B?aDRhQmIyNU1KWWJGM2RyVWZxa0NaVklEMCtkclI2MndXUmxjRDk4eWRTYXU3?=
 =?utf-8?B?Ykk2ZDYzL2pkSmJ5S0JMR29XNksybEdyNWUreDJQRGhKL1VURWlQVzFadVBG?=
 =?utf-8?B?d1c5NHVlR0JnQjVCYmVuNnpVeGhGc05vYjdzWnRVQ2dKTHJIY2lNWmpLc245?=
 =?utf-8?B?ZDhZalgxZ1k0b3RPS3JMNmViR1BFb0pGSHZuWU14c1dzcDFsV2tXR3loNVpG?=
 =?utf-8?B?ZmJhNjNDL3JXY05qbXd0ZUNNRnUzSjlrV2tVN0pLb3FtODlUcGpDWDFzTlVJ?=
 =?utf-8?B?OG8ycGdyZTVGS2pSeVV2V1lTR3YyU2czT2Y0UGZWSGoyYktVMVVlbG9YbnFs?=
 =?utf-8?B?U1ByTDZmei9ERUZzQjRvTkxoSTFLajF6MWRWaGprbkE1a25USlZHaU8xWXpI?=
 =?utf-8?B?WkhJYTZLZ0t0RUpuZzNkM0lvRHdqOWNRT0pTMzc0U0VzLzExS2tDbEN1MnNt?=
 =?utf-8?B?Zlg3S3pWZTdLN3dWS2l6R25GZGNpVURqMms1U3FTc1VMNE53elRraG1NV3Bm?=
 =?utf-8?B?Z0ZqNUFRaFJaMHhZdFJ5aStyK2ZONG9TaG45dUVsamtGNllpZ21vbDJYQjhU?=
 =?utf-8?B?QVlDQmdTK01CalZsUDM1L0hBYU9CTjhDZ1JRYjhuVjNHUWJRcGtpMjQzMHh5?=
 =?utf-8?B?dG5HcExuWkF5VC96bnNTdUNXS2FJNmJQbFFFbjN2SHNFZEpkWjErKzJFWTRZ?=
 =?utf-8?B?VXFiSGczQXRWMzErdGw4Qk03aWQ0QVdHSEt6eDY4ZHhrczNobHFxeVdIMWk5?=
 =?utf-8?B?V2ZuMDlSUU9ZZzhBZlNpcHZzd0VHTzJkbEg1d2FyT3VTUHJmb2c3RnNiLy9C?=
 =?utf-8?B?K2tvZ3J1bHV2bXVXVWN6Vnh1N1ZweWpOM1ZlSlBOQzQxenBJTGgwRDEzYW5Y?=
 =?utf-8?B?Y1dsNWdaZEZPRzc2MU1va3dDK2UwdTAvTEM1QWpaOTRmYXAvMjMrQllSbDI0?=
 =?utf-8?B?NHI4cU9iVXd6aHdjQU1WMEZzM0wvVmlGSlhNd0V6YTk1WGVCTVloMmw4Tyta?=
 =?utf-8?B?SENIWmJMNzBnbGZTSDdyemtaaVhtSStNaDBsQ0dXdFR1RVdvU09VNlZqTmpG?=
 =?utf-8?B?cjJDZ3ZUSm8zRDBWU1ZsQnhRTFpybkFZdnZIS2FwMUdTczJvbVNQRHpQdFpy?=
 =?utf-8?B?eHF2NFR0dUFDcDJzTnJQcTJObEFrc2IwTlM1REMrbmJyekRlcnU4SHBCam1U?=
 =?utf-8?B?SFBTK2tzc1N0MFpJM21iTSs4c3p2bndLVlIvTEFFRW55alBrY2w4QUUrNnRq?=
 =?utf-8?B?OFZMOHFvWURFQjdmRTFUbUtFWHpOcjFXalkyYjdmb0JFSzhQL0trZ3JPaVBR?=
 =?utf-8?B?Z2FWdXFtNXZ2VUhSSVdaSEdVeGhIVlo0aHhncVdLaDBIMHFUcmhsNU1Ta2VU?=
 =?utf-8?B?ajVxY3MxNHo3UFA1ZmVxYTd1TlMraFpONUlmTGlpbnZHOGRXSGlXWSswaWI3?=
 =?utf-8?B?SmxYZFhTbUdQMS9UWVVsU2QvcmJpYUJMbXliMUYwdXovcXJUek9VUHg3Ukhu?=
 =?utf-8?B?VjZBWHcxYzZxYkdNUlZRbnFrL3c2QlAyWEJSOVRZdll3Y3I1ajlFd3N0QTBv?=
 =?utf-8?B?emh2OUNsZUduaG1yMEFPT2MzcllqM0RpbWhSR1R3UktLYVg2NXVWL25Ka1d5?=
 =?utf-8?B?eVhINFFFV1gxME9jU1dWYkhOdXZKd0NubElNV3dpZXFJakhVakNvY1ZRdU9m?=
 =?utf-8?B?aG44SUUwWHpNYzd3dXJ5ZG9mczVHV3gybFhTYnNsOEFUejBSK1c3YjNRMUVu?=
 =?utf-8?B?elRSL1l1ZUdORXpRa1NrUjNDSFNWdkJETDhVMitRQVBiYlcyWno2dEVCbjly?=
 =?utf-8?B?N2psaXJTUEVKN015TGI5ZlE3VXZjMERUcGVXQS93bVV5Tzk1cHNMdWRTaEU1?=
 =?utf-8?B?bVBBTllOZkhNakRyTGhGNkRHeE0wcU1SWTVBKzk5bGhlTnZMdnd6My80QkJ4?=
 =?utf-8?B?NXRLNWloNUdBcmcwdWNZQUw1dGlUQzdtVzU0eHVlZGZNMTlmZEZmM1BETTB0?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18bfdf85-efcc-4d25-570c-08dbf4cd0ca4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2023 13:29:32.3023 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p0tdkWKdg6IhKu0hfLycLrr7qPXFja8Z0raj+6fQeMyGyw4DKHFsyfcCvyEPt2YOf4+IXDpFeKvh7r+EkGUkiXdbJ3isEElIQtokKCKbW6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6466
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701696577; x=1733232577;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z1nqqdD87MhZ83D80w6FkO6ujH/o4ArBUqAOk7Ez90E=;
 b=ZL7LZfcWa99pkdfraOYApJdUBYtIqKdmCVoBbM3npuSs7Ue8A3EJCeyU
 Ch1XvQ1SD+EVYWZRKGOPlXfNy8h9PflnzY6QU+waMoh25EOpH1rX3Oqby
 t11b+tijRYTI9nMpBlICSXCf341eHW1k1UXYxWK8jTNd8QwwQGDrGBA3i
 M4eSDWbA3tx+NoO09YCP+tT9H18lvKtndO3ZreNk/cXzOROhv6r4pBFt1
 EQyJ0BTGdpsp91yPci/1lFRHROm0E2BsvQwGoiaAq6XIV1khOdCRijcgP
 a2IxtHaXW8G6ou1+No0hOZHG23DrG7qHAZgXo87KvauLQJQ4GCBiSCvxN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZL7LZfcW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Restore VF MSI-X
 state during PCI reset
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/4/23 14:10, Andrii Staikov wrote:
> During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
> register will be cleared. This can lead to issues when a VF is
> assigned to a VM because in these cases the VF driver receives no
> indication of the PF PCI error/reset and additionally it is incapable
> of restoring the cleared flag in the hypervisor configuration space
> without fully reinitializing the driver interrupt functionality.
> 
> Since the VF driver is unable to easily resolve this condition on its own,
> restore the VF MSI-X flag during the PF PCI reset handling.
> 
> Fixes: 19b7960b2da1 ("i40e: implement split PCI error reset handler")
> Co-developed-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v1 -> v2: Add reviewed-by tag

you forgot to change the title :P

> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 ++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 24 +++++++++++++++++++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
>   3 files changed, 27 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 7bb1f64833eb..7272d0227a55 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16513,6 +16513,8 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
>   		return;
>   
>   	i40e_reset_and_rebuild(pf, false, false);
> +
> +	i40e_restore_all_vfs_msi_state(pdev);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 3f99eb198245..b3da4cdf9d10 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -154,6 +154,30 @@ void i40e_vc_notify_reset(struct i40e_pf *pf)
>   			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
>   }
>   
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
> +{
> +	u16 vf_id;
> +	u16 pos;
> +
> +	/* Continue only if this is a PF */
> +	if (!pdev->is_physfn)
> +		return;
> +
> +	if (!pci_num_vf(pdev))
> +		return;
> +
> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> +	if (pos) {

declaration should be here, then one blank line

> +		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
> +		struct pci_dev *vf_dev = NULL;

normally you don't 0-init variables, which get overwritten
unconditionally prior to first use

but here case is different, just code get somehow wrong :P

> +		while ((vf_dev = pci_get_device(pdev->vendor, vf_id, NULL))) {

instead of NULL you should pass @vf_dev as 3rd param

> +			if (vf_dev->is_virtfn && vf_dev->physfn == pdev)
> +				pci_restore_msi_state(vf_dev);
> +			vf_dev = pci_get_device(pdev->vendor, vf_id, vf_dev);

and remove this line

> +		}
> +	}
> +}
> +
>   /**
>    * i40e_vc_notify_vf_reset
>    * @vf: pointer to the VF structure
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 2ee0f8a23248..1ff879784563 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -137,6 +137,7 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable);
>   
>   void i40e_vc_notify_link_state(struct i40e_pf *pf);
>   void i40e_vc_notify_reset(struct i40e_pf *pf);
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev);
>   int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
>   		      struct ifla_vf_stats *vf_stats);
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
