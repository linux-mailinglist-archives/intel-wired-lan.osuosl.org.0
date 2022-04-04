Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0FD4F1F31
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Apr 2022 00:37:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08162825E6;
	Mon,  4 Apr 2022 22:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ob2SvaBCoaqI; Mon,  4 Apr 2022 22:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C4AA82572;
	Mon,  4 Apr 2022 22:37:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 463E91BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 22:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 256E2408FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 22:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ynRrciwkIwY9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Apr 2022 22:37:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7264408F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649111853; x=1680647853;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O9L2Rs5nRM+U+dyMW1X5vPyE0Ei/ckOSEXPefA0qxqk=;
 b=chzRdX21mDBzCgkqwdI/EfF6iNiVtUzNPcBiMVTBTTNBKSvamJ3y5AIb
 7tZDsGHh6/un/zivg5bKhFkgaJbVXDYpPLcYLaasMBzpB5JpRFm0Qknz4
 guXpAlqL9DoBxPuBM0CqRMuzfRfnKcWBAt0AKVJjklNn/jc72c2/HSC18
 AcaRPp+9qBmf1JMhDoS82d1wTHwDMDS7bFAT3/uwV8jv/Yp/vCYRVbEjQ
 eA73DBL/m1TgF9u5xUaW2E0VeHSj3GDQQO5LTKVnhhtEiNiox2GlrdR05
 yNnKGrRP7CVeRVqmkhvcNfAwlA2ml88sWMzOuBOf1rrJltVHSLaWprIy+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="240558319"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="240558319"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 15:37:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="608198910"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 04 Apr 2022 15:37:33 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 15:37:32 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 15:37:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Apr 2022 15:37:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Apr 2022 15:37:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lm9UYRnuEjE7p99x0ceTreNG/QqZ25t7OphhgQk/BCVsn+TgbHHjRyEt44JJLbyqfPrTx/hk32tIsqbMiBuYrVBlZaQhE94fuAVRni7sn1lyAC44fAaBfuddSgcbsoaHh6qTU/cWXRdjidNYgKOrQmjorBD+Aw3lmB19oOKFfSJkQaM1h7S5joTKB3AD6Q5Tz4kkXwUzIY6z9VtUKZvqJi8f+n7E63qWVQtCiXe2KSoFJ3N2oJ0a2KG3pBoW1dzlpteFWY6Q4rs8PzU8Eo4YyU7Um/Po4C/5J2s+3Dj6rRieHAa09XOriXQ4pJk7M//qvPJHwcrlABw/GAln+RqPcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hgXJVzTi/OreRtC+OlooSB5Oy4dUb7A3xbskhRuetO0=;
 b=ByhplWG8Mj2J6y/9Fgs663bMhcOlJo+MAngTmqxuHpaBhJ8GIN5E8/unKs25H8kNLgsjOXPkZISU9gbpmEa2wEu4WyQQf4cfmUfyE2lvNuLIJBwiIwl1MGOJ7tVMLhWhTWmEEF10RM54RSnAhV1bOxtdm86++ZnZkBasNRoswqOJ0BlqHKEV3qyuQuEGSjArt2E/DVUQvCF5oGfPhYIzDjZTvF8bep3OSpniayN/ThfkQ00uKeUGWHpVSM5O0ljltiF5GuzEgn8/35/UGq6LiwM2I50lRDCE3FqzCGNz+o/YGQkGXBQPynqdseuLruCzHD9Q80SXCOYHbgwGzmpiyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB3115.namprd11.prod.outlook.com (2603:10b6:5:66::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Mon, 4 Apr
 2022 22:37:29 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::c560:8006:3235:7aa7]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::c560:8006:3235:7aa7%7]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 22:37:29 +0000
Message-ID: <05d3d673-6e7a-1139-4043-16495336d18e@intel.com>
Date: Mon, 4 Apr 2022 15:37:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Michal Maloszewski <michal.maloszewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220331111526.1333801-1-michal.maloszewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220331111526.1333801-1-michal.maloszewski@intel.com>
X-ClientProxiedBy: MW4PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:303:8f::13) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 06b460b0-7261-4564-823f-08da168bb346
X-MS-TrafficTypeDiagnostic: DM6PR11MB3115:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB31152409E65A4DC2F7326B21C6E59@DM6PR11MB3115.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0qfCuQuoxQGCPsUwClrczXPOZzUnve4HjdGACsCU08ZmPaU6m1au44N5i5ttMexRL7wfxNa3Do1gEGKUPsOPBKA3j5Pxtwm1rzoI8NLWlOUd1L1PY7Haf7h3bI5fQYU27feau5YvjPaL3ARiZvz6U/X4ts/7LnsRyd2TrmqfaXSqp7X9M2qW9w75sSD/7lkXqXnXBG4OVxtcb1XeX9hT5+awwIoJTXAyy/W0plQ/kC0Be37iewgGzS4dWh50+iPTMx68KwzNvsGLAkHyAPQMg3WtNn2ja1rM/dPq9r8x62bcu5kJTTVQCOzkQUMuwNqnd1ZWTt3wHOctUx15QlgOxM6miGzcOvQ8KIWYDxl53iBCkPdd5OxzkY29zb7/cqhA/uT/E9/wiFXAPi3fLL1Bg74fZFwU89saHSx2eDzifgN/0ER72xIbCrSha1qalSaSj9mg94r7mGV290ZWowYIbDAeMl0XHGPEjvGZyxMCkGoFHplBtT8T6PPc+Wg0DGcW5gQBhJcuCA1QecMLsNgQ/jyW0RoIoEw180ANl0w2dHPQ5+/AyEL16nk44naVHTvLqlzSI28+mkdeyrBRTLMK4xr1itt1GYylnd9bp5l0VXNCh+W+GRsR8SyMzB+oHBLQQBLMzQuya1rYlYeb5jBoRNuYE/DgDS51WSSfJF6xdIhM4wt8r+rIwNbKEeRLfrRsdLQIcnwTDNVp1jbt3pyK0bL+wBf7bAt9PWzG+rPt/WaVaLHWS7YqJWLbwnlCzmCA95Vl2yQOdEZHDs6Vjei8HKaGyPNNwmLBgqwXhmFNo10N3W9vb8nv6nw8Orl3Vp8rELPVZQ8cEX5B5x95cvTmCCbpAO5wWwWZYpEyHJDFlO0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(31686004)(186003)(26005)(38100700002)(107886003)(2906002)(4744005)(5660300002)(8936002)(36756003)(6486002)(6666004)(8676002)(83380400001)(508600001)(6512007)(4326008)(2616005)(53546011)(31696002)(6506007)(86362001)(66476007)(66946007)(66556008)(316002)(966005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVVDbE1RdWkxT1hmbEdMbXdhVy9SUnVoZU1SR3BYK3lXMGpUcW0xVUJCZDdW?=
 =?utf-8?B?VEpaeFlzYU1TMktCQ2dqTFMrZFFVT2NQOUhudHZuUUkzWGMvVVBPYUR4TGgw?=
 =?utf-8?B?WXJlR2tzeTBUOHh6bUdIRVlTVUVtVDZCS1h1NmRjNm1ZZGJrMHNzS1R1dlEy?=
 =?utf-8?B?OXIwTG4vckN0S21mbGRqR1FsYjBqdTFySitFWU9GeC9DeTlTT3BpVnd4MHFU?=
 =?utf-8?B?OHQyOWw0dDY1TUlBanRUMnJUanlPekpQa0tWTldEV0VKRkY1cDd5K0Jmb0Uv?=
 =?utf-8?B?b0NHcjFFTTRVTjZ3WDMzN2pmV3FTaENobUxwbUpWNmZMWGVnZExTM1ZhZWRF?=
 =?utf-8?B?dUZLRGpUbTNLODRnNHJST25MOG41ODdLdHBUS0VVTzU2SkQ5OFFVYVhlWE1X?=
 =?utf-8?B?djUxZUN1amNuUnNVR2VpWEFEMWJwbWFQdlJnK0ZWQjRyU3VrUVlQZ3lrZ3dW?=
 =?utf-8?B?S05qSzBmUWkxcW1JZEZHSVZadjRWa1dSalVvRVUyajhDNnd6RVU1MUtKOWZW?=
 =?utf-8?B?NGlFd2JDWW1HMTY5Z3YwanpYL1ZFWGNUWnh2cWgwcTN6SGt4aEIrNngzb0Jy?=
 =?utf-8?B?cnU5dWdXaTM4UFFud0hTN1hwcUVwQ0NSRVlyWEFTZkV1NjJ0S0FmRmFSZU9x?=
 =?utf-8?B?SGVaYVNYb2pHU24wb0EzVjAvTHhPakN6bXpYY0RyWCtKUmQyQ2tLcnlzeEQ1?=
 =?utf-8?B?N0hWamdFY3lZK3psZ21XYks0TFZJcVRKdmJPandGaVN2OGY3ZFJkVFJTQkZa?=
 =?utf-8?B?OTFnSytCUXlNekdMOWdiK1l3M3dhNEJUTndFd0I5TDlyeXgzLytRb2xjdEJt?=
 =?utf-8?B?WmxwbENETmlPOXdralBBbHl4ZUtFL1l1WXRLU3lUU3NyVFRjSExXU1pvSktw?=
 =?utf-8?B?OUtXVFdyVExWL1FHYVdZeDJPSjdUWWFBUkNYWTNEdDA3RkpLbmNCbmtxNTFE?=
 =?utf-8?B?RFBaRkJCTTcxQ3dLQ2FCL2Z4ZElRVXlRMU5vakdUYytRS2M2L3c1UWdPN2to?=
 =?utf-8?B?WEQzSEx1ZlcxWHpjWm80NXkwSTFmdWd6Vis3UmxESzlLR2cwRXdUVmYzVVBS?=
 =?utf-8?B?Y3VXZG84a0hick1KTXBQRFgzRTJZSlFxSFpuZzY5MVZ3VlRZUTM1UFh4Q1Fu?=
 =?utf-8?B?OTdyVmREN1REVUFueFJuYjNNdjV2aE9SZHpxQmQyZGlta29xQzNzY1YvVXNR?=
 =?utf-8?B?MWNUK3E1dml0MTF2TmdqSVl1dU1WZ05oZ3BoOUQzYjV1Zi9UOXFzOVNCY3lp?=
 =?utf-8?B?UmxJV0libzZ2UWt0dDduRXEvYUN5dmhCb1h3cVZSMUJsMWxMN1lyZ1hYUHd2?=
 =?utf-8?B?OElnU2M1OTB3QUNqVEpVdG94d1h6MzhiUTJFeitNZDBNbG9IWUlQeUJRVkZV?=
 =?utf-8?B?RjdoTnI5SFltcy8yNlpyUk1reXdQNTUybDFLdkJLL3Q3Y3pwcDlGaSs1Ris0?=
 =?utf-8?B?TVdXWDk4T3F3K3JvenlVaUdwaTB0Sm5ESm00WFVtSlB4TU9qbjk1VzJ0T2oz?=
 =?utf-8?B?TlRUSVNYbEJiaTRvNDJvRm1LYXFWUUNkeGMyamZYQjFpK2NVMWR0Mlp1MEV6?=
 =?utf-8?B?VTZiYitxMi9hc2daNW9tNU4vK1dYUGpHM040RFZIZ1lVeXJISkl4bmFsMlJG?=
 =?utf-8?B?V1EzSjl5Q1FkMG95RjlZS1FXaVp6Q0NWekxka1puY3dodEVwenhrd0FSc2JO?=
 =?utf-8?B?aVk4SXBnZ01sYXZkY0NlK2FubFYyaWNlTklhUlZLMm0wVkpraUlrdzR5RkQz?=
 =?utf-8?B?NUJ3U3R5OTl4Z1hOSXVkeExDeGFCUnd3aWdXa3VzVzRBazM4NHZmay95WEJs?=
 =?utf-8?B?VElJRkQ4Y3ZWQ0lxbG1iZnR2QWE2NjBmRGFmUkFVNVBSN2J2WGFqdU8yL2Vi?=
 =?utf-8?B?bWhMcXNLVEVmbStsTVdSWnpaYkpPUXNtZDNJVmRMbmRLcGhuL0c1OUlZM2dm?=
 =?utf-8?B?U2cxakFWRW40YzFSVmtYa2FjQUt3QjJ3V1Y0aU1uSXV4UlIwN2ZoVm53d3Yy?=
 =?utf-8?B?bnZaUkN3cHVlSTZyc0JFRjRYT01kVVhiRms1K2tPTHJNbTIrUFg2T29mRzFZ?=
 =?utf-8?B?Y0FOSDRxMXBBQUdxYU81STkyMXB3S3pVZHhJWE9Ld0pjRlkrTC9CY2M3SWNH?=
 =?utf-8?B?UUJqVEgwbkI5UXRKT29RSHFLeVF0WHZic1AxQzdvNE1EWmxTSXdHa09uYmZx?=
 =?utf-8?B?VTZxTEZFOUNNcTZlTHdtam1CUzgwQXpFZng0U2RBWjM2WnBkR0JMa2hRMDAy?=
 =?utf-8?B?aTRyK1VvdStweFpKRzVXQkU4YWxsZW1GQzJ2dzJOVmFJRHNTclBYbkNPSzdI?=
 =?utf-8?B?NkhxQmRxODRQcGRBeDdTU0UvVGpXeE1jaWVMSlZ6V01pbUU1QmFIVzk4SWh6?=
 =?utf-8?Q?9NgMT9FMNHnI5RQA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06b460b0-7261-4564-823f-08da168bb346
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2022 22:37:29.2072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t86oLI4HJ9Wb6dUIZmMia77icxmQpE2HMIIl+UnoibFKL7LGEIeR2EY8+DPaB36nGhP8wHEVOSw3iNDgwaSdwcHdf2SBlqXYtcQTfjQXJX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3115
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing
 ring parameters on ice PF
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 3/31/2022 4:15 AM, Michal Maloszewski wrote:
> Reset is triggered when ring parameters are being changed through
> ethtool and queues are reconfigured for VF's VSI. If ring is changed
> again immediately, then the next reset could be executed before
> queues could be properly reinitialized on VF's VSI. It caused ice PF
> to mess up the VSI resource tree.
>
> Add a check in iavf_set_ringparam for adapter and VF's queue
> state. If VF is currently resetting or queues are disabled for the VF
> return with EAGAIN error.

You've sent this three times as all v1. For the future, please increment 
the version and document the changes between them.

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220331111526.1333801-1-michal.maloszewski@intel.com/

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220330200551.1319989-1-michal.maloszewski@intel.com/

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220330195036.1319631-1-michal.maloszewski@intel.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
