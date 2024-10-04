Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56306990722
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 17:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93BAA40D5B;
	Fri,  4 Oct 2024 15:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wB3cqNm2FEjC; Fri,  4 Oct 2024 15:05:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECA0C40D0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728054330;
	bh=2JxkO+iexOrQo0ePVl6XtnrnCxZ6Rh9ZqCreRaIPOMM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uUxMvV5DkMDsCuNF+b2v/AJun1pCwB7oZD4gkGDuUJLolEaDYY4Yvge2x5a2w7smE
	 1VsImdSDV+Dz2YRJ7JQWBNdCUltyAe2ROvKW2LWYTn/Ur+9+Q4lIyXzoE9xngaf0FG
	 khqrkyPC1wHBam1IbcXtJJaEhjAcV2+Pyd4iHgKLG9OSLKvfs0kgcIPJrEyOXPSfz1
	 yQxGFQw7cQ80r15HGoS7baT4bWfKVmS3jqnsMJCIrOJD8w0H7q6aGXuUmR7qUVmiUO
	 52cIcrM4r7PnzOXXm8ANLtoWnxjUjVtpR20+5EwyrmTOrHZAruaQDolT76BrFCc9yb
	 Hrsk+ueFmtjdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECA0C40D0F;
	Fri,  4 Oct 2024 15:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A24681BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D4CA401A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xLZexjqsIQGX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 15:05:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 89C46400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89C46400F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89C46400F1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:22 +0000 (UTC)
X-CSE-ConnectionGUID: Z8sq0AN1TMO3MfqBwXq/wA==
X-CSE-MsgGUID: Ik3IfMbRThuQ0atmhgwbyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="26747802"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="26747802"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 08:05:22 -0700
X-CSE-ConnectionGUID: /XpEjcMQQjG3ZMGbALmdJQ==
X-CSE-MsgGUID: 8GAyKOEWRSi68vWrDoGyEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="74722484"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 08:05:22 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 08:05:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 08:05:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 08:05:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PxdcSRUoy44yT7WTR7QkfE6OqOOemZuB1vtdZ2dD8RWJu30sbUDgKa2inn4qDweM0oBcsITU9VnfTF7HGcMozxRGcrtKO0DLdmWvhno0QwJFAqGzmB2ISfNlsbhB5uvejNZFosBCRmMm7Dkmic6/V4bY1U9bmfXQBU5suIzlfDPZGNGyCuK2T0n5wVFD+gB4wapTDmYjps8bnHlVm95/iQbDSZMXLapC52GzAHpMKlsfgq3/3QZMR5rPs16FvwHHMOi1osYtrGLLYknKWO4Rc67sFU/6cbV/SkfkpyVMynGncRCD9pblfUXPiArAmtp3gxZYhVPkL6aAkgSnTa8RQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2JxkO+iexOrQo0ePVl6XtnrnCxZ6Rh9ZqCreRaIPOMM=;
 b=anrdv6DY8LddO54fvPnPv2sYonZ/TsbqJKRdJo4SXGuT7XCLzMxz3BRbYMIwRSBtvD7Shq017tw8hWp5bbJERDPYvVg5UV448/m5I7ACaIKu3iEpKlgLfKXXwq2bqLm4wRuKcMHmGmwklFlMNFSRe0+UksH7z6nS4Hm+ZE2crdSn0D1eqvy7tecDp6hkCQnV9TIUVc3SWZDmeICP6mCTVGTyhjhjYrMgemRstyTOz+GUXuK4NE7RZfW8UGpsXoLfSs1DvUrI6ANKcH5p2NAd3NB4O25Ms+nbqLV6YNV2BeQowNt2mx1VzFfqPZPXyqvtjeC/LT2ROmNwKUnPxAFTKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Fri, 4 Oct
 2024 15:05:12 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 15:05:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v12 iwl-next 6/7] ice: Refactor
 ice_ptp_init_tx_*
Thread-Index: AQHbEzKt9V9AvHDyFE6+MkKmkjGr17J2tf3w
Date: Fri, 4 Oct 2024 15:05:12 +0000
Message-ID: <CYYPR11MB8429FEC81F949E86C330F52EBD722@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240930121610.679430-9-karol.kolacinski@intel.com>
 <20240930121610.679430-15-karol.kolacinski@intel.com>
In-Reply-To: <20240930121610.679430-15-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: 0eb60ca8-5535-4c08-cf4e-08dce485f22e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?D+wnLHVhH/kYedQ/DCAyFnH0hkM9kacsuAJphjI9Si4GtAmdbAoi3v2WfuAR?=
 =?us-ascii?Q?RrUTXxlDYMpP7DGnxdOlcYLFhunHSsXSNvFhSunlwU5UwZQb1YhfL1PAgsJr?=
 =?us-ascii?Q?BKV4O0zkdlxB7UazEz7yeiXH/AyFB4CwClk9vmq5FG4byEs9+OYuUFQHraRz?=
 =?us-ascii?Q?XJDVezix1YHHocSO5nwd9GzGEppI5+/VRkMcHoXu3LZ2WALinkfifBMpLXba?=
 =?us-ascii?Q?y2ng8m8zb89T0fX0/NN3lleuJJE7RLDCniE1mK/AuDtT5zPWK5yLoFKzQPSJ?=
 =?us-ascii?Q?oSFTOWX8UwkNYQKX86DDYJ1KbWum+A1T6cgfIHwLrIGQON8hoim4WPS3X1wo?=
 =?us-ascii?Q?OaUd8eVo+HWjErBY2+lFkyUZLcf8btQx8fwhFiHvPjJVpAlyk1DAtNoxRjca?=
 =?us-ascii?Q?+TM3bOkL+xUGFF6gY7+HMiBz8sjKtequLqKf7IEdzu7HrH7K/0seCAkgCncb?=
 =?us-ascii?Q?SCqXkPtGkpONOo6KoJhGtLUmJsT5a7g7074iFkga79CgYMAU7pJtw5TOasuX?=
 =?us-ascii?Q?BgmopGcJBPUNNFRVI+JmzT0hgoKu+CXQaCRpweGzMPEOqZoGF/KUdSizAbzc?=
 =?us-ascii?Q?qv3cfBV9lAaN4kBnU45jANyh3255fyx/Dfp45LPau77PullR6M4Ock+xu/7J?=
 =?us-ascii?Q?SeTKXA4Tz43SRFFssp5W+hHYLImUUs8OJsY4rKWzCaMsdK01kTzAuGeg5wHL?=
 =?us-ascii?Q?pSrilFXpSfhnxfASLM8lNo8fZAc6m7T2ti14mj2wNDjTF/LFxzffn0ayRwOJ?=
 =?us-ascii?Q?Lpbt7GVjJcIs0cP4lDrbdD4YlWz4cldHKGOPPt0b1fGFuhUIZdkWWZ56hAJH?=
 =?us-ascii?Q?ksQspgRTzWrCHObojxHhlQa4aPBDrLSl2ARU9URLHhG/XzD2lQK5RyRr/7kd?=
 =?us-ascii?Q?9HvEhJOyKXMKUklaIJ188iZ+RM1TjwR37BBS/pYAD7LG3y+aaTanJGC5RNMM?=
 =?us-ascii?Q?BRLdmHyldz8cTHSr2Jcgw6Ply8taRcFZLHk0F9RnEmDzZVU9xxylZVAt79MM?=
 =?us-ascii?Q?VAWNJIdGMS5JO6sw1koujyCKz+q3urtWDBMW1vTPsfAecMhKDKyDtRcBvTYo?=
 =?us-ascii?Q?0Xic9bDpXOmCSErXXRKgsCAd+7tEjrXDbR1B1up3oZeOb8FiL3OJx3lH6NR1?=
 =?us-ascii?Q?4pVqAiHKMWiGVIVps+sbTi20eYoFN35/KvYZlhkvgzWJuJo4YfrrgIxcB7Md?=
 =?us-ascii?Q?GMoaDsehtXzr+DtMWe4HcK/q2d/Sb/j4EtVivecVL1A/5a3EhFyJGAN97FG+?=
 =?us-ascii?Q?eF/Xg+fP6xhJAQ3Sz9Pc/WXJoQgW0Tt++AI1V7PFRD+X64GDWCDKOVEdwqEE?=
 =?us-ascii?Q?hOOPXzYjgE5S2SKnc0icTeK+S8uH7ApMgwtbY7KzQCXQyw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ziPv6OJBh4lJ/ejtuY1jK0PUjxD90cGgiZ093x1FxxXEa4YAfhS+ZU9ahxuy?=
 =?us-ascii?Q?unElLEP4NgfYQIVcNcqgZMCR8vEXGYkonYneDzcTcX33zHPiXc7REYYeYHZE?=
 =?us-ascii?Q?M7iafWW+bzL1wMyDnlXePFrMFaWDdMNiYg/RiDcWimqrUDAhQGKUD5xuLq9M?=
 =?us-ascii?Q?hNftei9Nbspq9aOTnbqmxqDj17GyU6iPKOTKSFDvcDI/iXAhtpN1RoD+Kq1n?=
 =?us-ascii?Q?sVVRJmPgOEbfVXni/y0Q1uCL11G1VGSi7zissv8VjntlQz89PeKiK0ZGcbyO?=
 =?us-ascii?Q?++rBNS7TSbOn/63zqyPxwqlqVNBm7NjDoaVhMUe/d9H2tF3+Sh5OVTF4MC+k?=
 =?us-ascii?Q?kXmhPdDVJjFHtyvcsZzBzCT7AbsudAuSlEY+h5cQdOckpC7miUm5rWHa9xmL?=
 =?us-ascii?Q?fXVTuZwZXfAuAtZct9VqI8041ebacoNB0fOH25IcOjgRpqmHp+Yt2+/5i1h4?=
 =?us-ascii?Q?F0MfSIi1iqudJu1OnvbHX7Q6g4X90QVp+W4wEhWucsHUrzu8njXANI28ufH9?=
 =?us-ascii?Q?seizvnzNBsgK0ALbJkG/PKeKqpbX/gaRVT7MLeM2RO9AgcuHX7H7/Xd57jKG?=
 =?us-ascii?Q?a7/M+AorZ+74Ia/cYl5Pcn6eiWZFMD5M/l0XZFmrxjaGx7mehV6+Cd+ukgg9?=
 =?us-ascii?Q?yOzPjBpp0J3IffYXGfhjU5C/yL1lyrLxzYKCEERMTRofiPX/PEmhB0w8Jnfr?=
 =?us-ascii?Q?bdepd05RSzdh7Vz6cFPNJVlK9GhOJoHrGSW33fU179SH+4NHkZQXJZ+uGjjK?=
 =?us-ascii?Q?VYJxqCJ71wRTfWMCPSdK1Qpnx6Y2ryek6bpOaeL3zONhjV9kEzLtFd3OfL81?=
 =?us-ascii?Q?cRYK7iYqVA5CZ34fvxuYiNGIZtWd64gn/tB4BHN7ZOUlosq4tMGgAsfwh1Mp?=
 =?us-ascii?Q?M+bpeRxJSGchM2BfabcTC0kZWdoY8knL+ujXAYyDJ44QPR89zK2HceCvS94T?=
 =?us-ascii?Q?XfXCKTkuY5pka4WP/ZqbUb0wlqVmSGWXfuLX8oBNnOu3AtgfJiZVJtVPn8Cy?=
 =?us-ascii?Q?/UYxI04aMsue4L8hsmQJuGWo87uvnZQM7KyCp+9Po2jJh8Rdw69mixDfhRcm?=
 =?us-ascii?Q?E7kXts96NftDMVQbcE4FPD/10rjCo8TwsP3Sa7ZK3bAhFxyO28uvnCI/6p/w?=
 =?us-ascii?Q?9No7z14j5Sv98YtCOt/RbNUlXlkZyEjWPYDi9Xu6pnrU+lDnR5P4eUT1BLDJ?=
 =?us-ascii?Q?SgX1KRp3SX89z9cHXURSgcEZwGsHkhjPI2F3Vbaufx/rnjVYxp6LR0ZQFSqF?=
 =?us-ascii?Q?U2R8jIkHmY+jTWUztNQBrO+qFV66lcOyw5NyBPaE6hdD9tG+35rN31fle1UN?=
 =?us-ascii?Q?jsFPP9WC/mui+tovj2Uw3aG0iSnkAoBNFi70ybMsSBTpfJx3DuOiy+J5Zg5Z?=
 =?us-ascii?Q?ImasMykPaSJ8NjX0ba1bYzDd9OUxd3xqFsA9yMfVyB6DQBNMkJJo8LRD3YxT?=
 =?us-ascii?Q?jK1Or+V7rWqcen0noPnTiwMygwjU66I8O3FSwTcHlzhIc7Gr5FQxCEJiyGvh?=
 =?us-ascii?Q?CTJg9MunGvZo1rXV7zIUquOr3/IIgb9SJnK3Nx/5gaB+7cYDTLty7u8R8p2f?=
 =?us-ascii?Q?NNq6ZtfdvAPfAR1260s0LwuwEgtRwNZc0XmYnLgTPYhNHy2DQMaP5VAdfYrq?=
 =?us-ascii?Q?rQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb60ca8-5535-4c08-cf4e-08dce485f22e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 15:05:12.4590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5bDq1KNeENrE7uGw7nftWWUGvwGkWNMtI2r7aQdvQWnD2NeOdDJLsQiWFe+5wkHyMQloaRRxQ9TSBOpNbblBb8WQh22sH/qKWeC4EKFclS6k5K3P3AkDfKHOJhSIoZ4y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728054322; x=1759590322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UIDXSKXdmHIDCeY/uvnzHT86/UmuC++TYvNi8E0XfEw=;
 b=UWB23369KsytGtwmEoZGKjH/Mgut7iCmW34Vz9PNM+myI/2HbToU1SC3
 gPFSpN/XBwsU70Ll8jBL336IBxqdoZjLTxX19171Zvp1fuzJXzGZrDoWU
 zGu9I5o4HE0rXbz0T3LH8eNGV6L+EQh/VlT0qW0oukzUUw04VhWCAfaU3
 mDdpyUZ5vH5tX6ZXBhNXaFRz0PItiJPgDNrfiU0XfyFl4CYF6EcF2AJZu
 vWIg5Wrp55RbtLf9NCoQjHGDJN7RmrT3YSHkdIJNAyCfjsS1gvMDTOIOL
 hq2bHK2WDBKwBfHINrhQADNJ2xRD9IvIAI8O5M1V5y9g4VZqAgVZXJxeF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UWB23369
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 iwl-next 6/7] ice: Refactor
 ice_ptp_init_tx_*
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, September 30, 2024 5:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <prz=
emyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v12 iwl-next 6/7] ice: Refactor ice_ptp=
_init_tx_*
>
> Unify ice_ptp_init_tx_* functions for most of the MAC types except E82X.
> This simplifies the code for the future use with new MAC types.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V7 -> V8: Renamed the patch and reworded the commit message
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 56 ++++++++----------------  =
drivers/net/ethernet/intel/ice/ice_ptp.h |  3 +-
>  2 files changed, 20 insertions(+), 39 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
