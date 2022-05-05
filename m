Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AA751C162
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 15:52:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 060916112F;
	Thu,  5 May 2022 13:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1IKh48SLW0HU; Thu,  5 May 2022 13:52:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D578D61120;
	Thu,  5 May 2022 13:52:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7F2D1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 06:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B44094030D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 06:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCnRCCujn4jS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 06:37:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E77C402C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 06:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651732622; x=1683268622;
 h=message-id:date:subject:references:from:to:in-reply-to:
 mime-version:content-transfer-encoding;
 bh=I/l5Om8emdaKvtnimHjGEnNdHrX5axKbWXEYz+xindk=;
 b=WCyyYXH9ZQBkvyuvi0U+rRYoCSank6JcA0Onqi6YJru+KiI7gGw1nSUl
 0eXjgmllnD+S6wKdNXPyNPoaETl4ZFJGmHWBNDRtrJTchksi7RRQ1uFXX
 tJAefqS84vdaigKs3AGFEvv4yrSnQP0GrtfE8sS2EAaz1nqbgWXFo3c4b
 geQCPnvBc6qyVXSooHOfjP+s9Vt8Xb/NQz1idJVStxMpa+8WHuKJuugyI
 n4z4/QmgoccOG3LnWQ/2wycf1/L3Q3WLYOgfapOIWipPg5CyneP1Di10J
 W2QeafFjUjhuSsUj3Z6vsUbrFSA4c4w/A85WolxdRKYlJ8PWpqKGjqg0h Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="255491151"
X-IronPort-AV: E=Sophos;i="5.91,200,1647327600"; d="scan'208";a="255491151"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 23:32:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,200,1647327600"; d="scan'208";a="585167159"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2022 23:32:23 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 4 May 2022 23:32:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 4 May 2022 23:32:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 4 May 2022 23:32:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 4 May 2022 23:32:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L91m9wWdj2hYR63SZQfcARbanRjS0JD5P3hOo7Rt4q6jGwbU+zeq3MdiHT3/3rao6ZH5xQlcRkSromQp01fyo44QeJme9610O00S+6qIUZ1lorg5+nNOwBHRndUbsLZqHiCPGlpPOpqf3kRstOFXD6c1SRbrRvSMW4eYtIDn1wCe5OhES5nYU4bvImnPIbcD9ggMTEdvrfPAlZZASRQn/LKxIJ10E6zEFpWCwJxOW9wJTkkDmNwK8khHIpQqrTZF2uSl7LBJByKrJ6IzW0BD81Ac2rOGwNn8r9vWZCUar4oPVfAKpCw4/TEp+AV0oXlO132eB1MbNONphwl0/+lz8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=va+jPW1w5LkrLpjt/u/ILvmab9XfD77Iwg0QuL1svns=;
 b=Yx5sj7gadbpeY3sGd7Nl27y2VTU0U6cI6Cp7en7VAJ7/tIcNB6QTTddLfDchlOYcrxovtRdnYLwSOikxx0KuzYbLW9nO6LPcpFTrOLqWtkFiCiWN4WM1gKmLVKxXgcG1LOzvVdKPXuZ0MEmzncRxsYeXzfdhZcAo4LsWSzhs8zhAh8AxMux5CXRBzUf7pQTkzXSSUQ7AF/fvKsd2eHlvnaTgqM32ikAzXfyxOerOMHWCDNiCdMRbaQj5UwuJJGi6bC3uL+WTK4TytwtoVCBG3z48mGfQdIGvR+jYEod6yUk0zMJqoiNrMNnsNYdwnQ1jSMIPn0TeGgliottuho+BDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB2028.namprd11.prod.outlook.com (2603:10b6:3:d::18) by
 BN8PR11MB3586.namprd11.prod.outlook.com (2603:10b6:408:84::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.13; Thu, 5 May 2022 06:32:20 +0000
Received: from DM5PR11MB2028.namprd11.prod.outlook.com
 ([fe80::542e:e5e6:cc3d:f81d]) by DM5PR11MB2028.namprd11.prod.outlook.com
 ([fe80::542e:e5e6:cc3d:f81d%4]) with mapi id 15.20.5206.025; Thu, 5 May 2022
 06:32:20 +0000
Message-ID: <b5307c42-8f1c-228a-a3c8-17d65f3b9def@intel.com>
Date: Thu, 5 May 2022 08:32:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
References: <20220420075452.126-1-michal.wilczynski@intel.com>
Content-Language: en-US
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <20220420075452.126-1-michal.wilczynski@intel.com>
X-Forwarded-Message-Id: <20220420075452.126-1-michal.wilczynski@intel.com>
X-ClientProxiedBy: LO4P123CA0214.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a5::21) To DM5PR11MB2028.namprd11.prod.outlook.com
 (2603:10b6:3:d::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d895b61b-8c19-41d1-bcc6-08da2e610185
X-MS-TrafficTypeDiagnostic: BN8PR11MB3586:EE_
X-Microsoft-Antispam-PRVS: <BN8PR11MB358656E4543A4FE6C60D5D55EEC29@BN8PR11MB3586.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e+cxEe0Bxf1M8l30MaSC54LFfKoIVyV0RYA81IgL+HZ1DOyyJfgyx1dde/8m0C4Decv2jMHHvkDOwXFKaloAu3TReq+qyDCdVe4Hcw2Z6MacP4f+eFIzfhVHd0S8dxlT69U1wDSog8ix5YI3svBfl7jme3DnBeZj1Qb18TaYii33LZqa+pWFx93zEmd9L5ifejRGP6iv3fKpRCgmXBPQvPfbsDRJPKSjxrYBfK3sSoy6UL4ld9sjlgRg0w1dffj0RExn2DUHPNPFtuWfnXuS5Agupk7+m8yGBGjA7f4rx29jh3on9Fucmwuu8aNcBN+TTSFlhPcQAA/cYIfQVlRQJCh6OHY8LjpdvDd7lOYtYpmC7owRQVlTsNiYBgeoXNZcno6ijqtnn8l3egeVedv+/hvl70aHMuU84kl8DpoyETKMMkYzaGAWMGOksmSno1Gnx/5eGwdz2Ht+Bzn9jnld+T7ZW/iCD6B2DHSp2ARBsiuE8Q2MCyAN57JSFKKc37HDi3B/aSMbSZhigDHFo6MTH+lxbXO2vM+8es7YLiUhzNSRQE2wf2dIQtcu2wSABgrouTY2++IPryVWDLyk19Py2t+isVwWTepfqqPnU+ZbX+1VbmoqeLBXUJ3rkL+314Zy26FtFKQGPPytvPeXY5Q4zd+XmAGgCvdft90ZKPMK5P/hbTqEq3c/pOVAjGw5kG87UOou2H+PzwJffcbza4f+beLcLSmAQ2SzSlbq2uOxBu8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB2028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(2616005)(316002)(186003)(83380400001)(6916009)(31686004)(5660300002)(6506007)(508600001)(31696002)(36756003)(6666004)(2906002)(8936002)(6486002)(38100700002)(6512007)(8676002)(86362001)(66556008)(66476007)(26005)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFhhZWFXUWkzZnViOHRIemJ2amdSVzIyc0VzRE5NR0I0MHZHWHhIOGpURUlH?=
 =?utf-8?B?c2NndS8zcG0yOXlINW5pdjFqZFlBdGFWQkhtNUxWdkw4UmVBYWhuZkg3cnVF?=
 =?utf-8?B?WWo3SDBIdGJ6MENCYjN5TURSYmRCTHhXNmVxZVl5Y25VeGpuY0FrV3BqNFFx?=
 =?utf-8?B?WWIralJBZTJtTlhXcmFBR1pNVFlENDhIWTNBMkt0ZFZxS3p6RmxhQWlmcUhk?=
 =?utf-8?B?bTBwNGJmemJxdXN4Z2Zjc0FTMjJpQnVueEh3MTdadjZIakRSTUllM2hWQW5l?=
 =?utf-8?B?aEgvYUdqVmUxVTRnTDMxY3czeUtVWHgwK3NlNEl3bGM5WG44dzAxZFFLRVF4?=
 =?utf-8?B?ZHN1eWhiU0xYQlhSQzVNWXlsdG9lVGJPcGNFU0hlYmo1VzlOWEdoZHlzVDZm?=
 =?utf-8?B?dXU0NjJaS2xHaDYwWnRqUnR4NWVjKzRIczBwWDNDQVk2MGl6VjNsbUZERkRT?=
 =?utf-8?B?N09RQjJkaWNySWxhZ0hwaTBaMHFHSE4yNG1ybGU0OXhFdEMwQml2M1cxM1Bz?=
 =?utf-8?B?YXVlc0poQVUvdVlqcDJkS3RGRTZYWHJaYlZlZS9iNnI2cVdEWHBxR1V4YlhZ?=
 =?utf-8?B?ektzemlRSjQ5RW1hSGlSMmY2RS9nK2RCdllleTc3SFNQMDAyaGNLTG9HcTNL?=
 =?utf-8?B?V0EzZDdRbEpsbWdrdnE5WW1OUG0yenlMS2dVWFYrZXNaKzk4Q01jMGRnaEhw?=
 =?utf-8?B?UkNDY0x4QnFJSEtGK2svdk1kelVzSEhnNkFLajVkM29uZDQ0L0RWSUdJU3J1?=
 =?utf-8?B?MGZoeSs1cTFKVGg3b0FTL2pUYkg0NEhWOUJ1Z2NxdDhva1Q2ejlVL0ZlM0pN?=
 =?utf-8?B?d0hielVqc0pQSW4zR2pGRUhnU0NyY2E5aHIzZ1gycVJaaVJtdnVIOFdOczJm?=
 =?utf-8?B?aXNrL0pSVFJRZ0tSdklxc2RDM0k5aGw4MDJuUDd2V3FZYjkzbzIyTGdZWWRx?=
 =?utf-8?B?eExxd3J1dGV3Zk8vR2toT0ZralNQUTQ3VmdGZHdzcFFyQjMwZlhJWldNRzRn?=
 =?utf-8?B?U2RxU0NpWU5yRy9Mb2U0TmEvM01QdU9JS0xEZnNPeDBXRmtiKzlZRnpIcUhD?=
 =?utf-8?B?bVU5d0Jua3gxckw2SDJYeTNoaTFGMDVjT0piQ2I0dWdFcVZQVy9LTm41cDBs?=
 =?utf-8?B?MnBwRTd2MGY1dUdsUzh4SURIbmtKb2RHbjlNRjVMcnQwWW9OUHN4WXh3ZlI5?=
 =?utf-8?B?WTdiS1hmd0xqUXJMakNTVDM4T1E0VEswUXp0b3h4cnZmczBxTUEzbmE5Qkl2?=
 =?utf-8?B?UzVkQ3NDclBjSnlxS1lWS25XM0hUOTV0VHZFZ2loT1FrU2xONExZS0MvNCtn?=
 =?utf-8?B?b3BIek1CTFFOblpiSUVFSC8xREJFcWJtV2h0S2E5YU9SS1ozWWFZS3hmVkxq?=
 =?utf-8?B?TmNQTVVqakV1dXRkYTdpV3hndFJEUDJWaks4MmxHR0V3TUVtKzV4SWd3SXNa?=
 =?utf-8?B?TXhDeGNwbmRYM1BvOExPTm1HbHdvYVNZQVZLakVvN3c2bDF2ZVM0YVVIQzVY?=
 =?utf-8?B?cmhNQVYrOVA5NWRQNmpTQVZEbEYzSXVsL2pvL3lNMDEyY3B4UitDdVNHN2o2?=
 =?utf-8?B?bG0vTVh0Mzc1YnBicWlJOTZTaGZWSUcyVkNicXFublZhemdBMWxMSlZhb0Zx?=
 =?utf-8?B?dU9QZ0ZNRERvdHh4MGJOeG9GLzh6YlJRQmlNUk0zNGlLODE5ajkzbjBoRWgz?=
 =?utf-8?B?MjhjNXJMcFJQKzJONFNhQUQyYVBjeFRNMVdma1NQazJISDNYcktHbVFiaVJr?=
 =?utf-8?B?cDFLNlVJN2VHZlUyWE5IM3VHdUZ1TmpDWDNiSW1ZZVNYN2JrbElyVXpEUG4w?=
 =?utf-8?B?dksxVld5OEZCSEhGUndYWGRrQWRyVkVzQ0loZjhNbmdiMlU5cjBGVXRZc1hu?=
 =?utf-8?B?MzFyMTRMaDF2TTJDdm9jM1hrZU1RWTZtZzdJL1IrTndkR3BRSDc4ckM1dE1V?=
 =?utf-8?B?aDNRWHJaNlY3bWl2c1ZzN1BaL3VvT2ZEdmxSZGdSQUdUeUJlK09XQjV6UXNt?=
 =?utf-8?B?eWZ3ekRHTXlnTVJKZlBMMy9abFdMQ0hNbFBvSkdPUjY0aVFjK2hWZ3hTSjlE?=
 =?utf-8?B?Mi96K01zVkNGQmN0cDZYWjg2R2czZy83RkE0RFZlNUJRd0FjVWJCOUdWY1NX?=
 =?utf-8?B?aXVxZTJ6ZzA3SWtqSndnOXFxeXUzSDBJWWxpc0x6QXV6REUyZjdCbDJjSlY5?=
 =?utf-8?B?NUo2dTB3YS9raGRPVk9FYURZcmp6U3VlcGxSK1F1ZHpGUHJWYXh3SHpFOUZM?=
 =?utf-8?B?bC9SczUxWVM3ditIRDJWclExWGdwK0ZobmFkbVRzYUV4Y2NzajNtZ2xBV0dh?=
 =?utf-8?B?RHlMN3E5alBsTmxVdlJMM2k2elpOeGNjeVdkKzI0Y0tFYmtzeENMZHFMazNx?=
 =?utf-8?Q?pPCYSo7unuCUiE8E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d895b61b-8c19-41d1-bcc6-08da2e610185
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB2028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2022 06:32:20.1874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LkDIfOPhmSyQ+O9aAdxxnUPMu16ITsdq1nqVHZQFVE/U5helRhNXjBvIW5su/qnYMopLvDhxsjCT6QnM6Rt6Jypy4Ys8zNPWX0IM60nMw4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3586
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 05 May 2022 13:52:10 +0000
Subject: [Intel-wired-lan] [PATCH net v4] ice: Fix interrupt moderation
 settings getting cleared
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adaptive-rx and Adaptive-tx are interrupt moderation settings
that can be enabled/disabled using ethtool:
ethtool -C ethX adaptive-rx on/off adaptive-tx on/off

Unfortunately those settings are getting cleared after
changing number of queues, or in ethtool world 'channels':
ethtool -L ethX rx 1 tx 1

Clearing was happening due to introduction of bit fields
in ice_ring_container struct. This way only itr_setting
bits were rebuilt during ice_vsi_rebuild_set_coalesce().

Introduce an anonymous struct of bitfields and create a
union to refer to them as a single variable.
This way variable can be easily saved and restored.

v4:
-Moved Singed-off-by tag to the end of the commit

v3:
-Added proper Fixes tag

v2:
-Changed argument to ice_write_itr to rc->itr_setting,
instead of settings in order not to pass unnecessary bits

Fixes: 61dc79ced7aa ("ice: Restore interrupt throttle settings after VSI 
rebuild")
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
drivers/net/ethernet/intel/ice/ice_lib.c | 16 ++++++++--------
drivers/net/ethernet/intel/ice/ice_txrx.h | 11 ++++++++---
2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c 
b/drivers/net/ethernet/intel/ice/ice_lib.c
index b897926f817d..8c2c3b164df0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3037,8 +3037,8 @@ ice_vsi_rebuild_get_coalesce(struct ice_vsi *vsi,
ice_for_each_q_vector(vsi, i) {
struct ice_q_vector *q_vector = vsi->q_vectors[i];
- coalesce[i].itr_tx = q_vector->tx.itr_setting;
- coalesce[i].itr_rx = q_vector->rx.itr_setting;
+ coalesce[i].itr_tx = q_vector->tx.itr_settings;
+ coalesce[i].itr_rx = q_vector->rx.itr_settings;
coalesce[i].intrl = q_vector->intrl;
if (i < vsi->num_txq)
@@ -3094,21 +3094,21 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
*/
if (i < vsi->alloc_rxq && coalesce[i].rx_valid) {
rc = &vsi->q_vectors[i]->rx;
- rc->itr_setting = coalesce[i].itr_rx;
+ rc->itr_settings = coalesce[i].itr_rx;
ice_write_itr(rc, rc->itr_setting);
} else if (i < vsi->alloc_rxq) {
rc = &vsi->q_vectors[i]->rx;
- rc->itr_setting = coalesce[0].itr_rx;
+ rc->itr_settings = coalesce[0].itr_rx;
ice_write_itr(rc, rc->itr_setting);
}
if (i < vsi->alloc_txq && coalesce[i].tx_valid) {
rc = &vsi->q_vectors[i]->tx;
- rc->itr_setting = coalesce[i].itr_tx;
+ rc->itr_settings = coalesce[i].itr_tx;
ice_write_itr(rc, rc->itr_setting);
} else if (i < vsi->alloc_txq) {
rc = &vsi->q_vectors[i]->tx;
- rc->itr_setting = coalesce[0].itr_tx;
+ rc->itr_settings = coalesce[0].itr_tx;
ice_write_itr(rc, rc->itr_setting);
}
@@ -3122,12 +3122,12 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
for (; i < vsi->num_q_vectors; i++) {
/* transmit */
rc = &vsi->q_vectors[i]->tx;
- rc->itr_setting = coalesce[0].itr_tx;
+ rc->itr_settings = coalesce[0].itr_tx;
ice_write_itr(rc, rc->itr_setting);
/* receive */
rc = &vsi->q_vectors[i]->rx;
- rc->itr_setting = coalesce[0].itr_rx;
+ rc->itr_settings = coalesce[0].itr_rx;
ice_write_itr(rc, rc->itr_setting);
vsi->q_vectors[i]->intrl = coalesce[0].intrl;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h 
b/drivers/net/ethernet/intel/ice/ice_txrx.h
index cead3eb149bd..ffb3f6a589da 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -384,9 +384,14 @@ struct ice_ring_container {
/* this matches the maximum number of ITR bits, but in usec
* values, so it is shifted left one bit (bit zero is ignored)
*/
- u16 itr_setting:13;
- u16 itr_reserved:2;
- u16 itr_mode:1;
+ union {
+ struct {
+ u16 itr_setting:13;
+ u16 itr_reserved:2;
+ u16 itr_mode:1;
+ };
+ u16 itr_settings;
+ };
enum ice_container_type type;
};

-- 
2.27.0

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
