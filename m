Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CAF96A7F0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 21:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82600606F7;
	Tue,  3 Sep 2024 19:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 59yrDJRQBfRe; Tue,  3 Sep 2024 19:59:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD55B607CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725393553;
	bh=NCETMaoYteO1at5c6wZMU3FVHtfPGjP24shvdx3p9C4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CPHKd6SeJJUb3etlL965J0KATMI3Ix8PRIkhuNUaDpax3edcVkHNhMnsVA80AdftN
	 1gr+LxlU3v+eNPPZrjfAfOZvOYUtOGPK+0s3zAySUF0RdO2EvGQPbxGOj43fnZnz67
	 cW8eWZ9alhOm+h5jbphgCGUEM2V+/1reHR7VEBV2XaRhWKjuPjIa001Th/gA+depri
	 DfPpuWGJyQSexILm8238bIawxI27mGew42GPeQIajw49Eeq5omabRcFntsuj+gSi9y
	 /Mm7ba9dmy5lIzIuQ7UugnKY5FisCcCKNO+CTQJNFMj835L/vXYtIdF7+RRrm0u5ES
	 RNdtk+AgGFJkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD55B607CF;
	Tue,  3 Sep 2024 19:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C581E1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 19:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1B84404C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 19:59:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m1WOnX1XAuxP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 19:59:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3DEB40198
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3DEB40198
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3DEB40198
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 19:59:07 +0000 (UTC)
X-CSE-ConnectionGUID: 0+LY/ma9QxCDF/RtuLVafQ==
X-CSE-MsgGUID: /tnifCa2SRyMjKz5io7lOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35383933"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="35383933"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 12:59:07 -0700
X-CSE-ConnectionGUID: W/rsBnVNSGmdwDwrRHJGyg==
X-CSE-MsgGUID: fyBz8RUFRIyz8uqYC+WHZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="69835988"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 12:59:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 12:59:07 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 12:59:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 12:59:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 12:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RxCZ2iWKqmOFj//qg2Uos8lU6VrENZXIYQOxTe0P7bIOSEjqoUOw3d/9be93skLpO+YvN19XNdU4dvQjydGzsAkrrwJsGVX5ddAwM93sJxRICMhwgTHurkmOWoIe5xtyV7v58tQB+ZmDxaS8ChWXqmL9+aLSWdWCqxi74Ix5qqIsIAAfS4KuA1iBAVwTgy/HHE5zwK5qt4V8me0hfaqp2dQTRB8Il+HpKooTz4Q4kWcOb2gDZbcWe0UsSlueg7HkYkBZJRpeeVvoFz5s8SV7hEUl6NUNgS33VwbGxiadRZR1Zu7MYjfTHZvUrTQEkzRxfMd/q7i2/+8c0NZ038xUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NCETMaoYteO1at5c6wZMU3FVHtfPGjP24shvdx3p9C4=;
 b=AbV/U2Y7kckhACwUx1/ns7AZihBDPz6u/W7kfHPAKmZzGfiR0eXzFNfyZsuQFacILpvjZGa5GvAjtkseK+ouqRXa5I9N1VD3MvHMUrjQ93oxbtOLZVIftnKaSruiD5SJplqZNI+y2K0RYayWhs8aL++mq57bw5x0IUPiQUrZz20xDquLD4iMudO/6+lBiMbYFyt815dexVGpG5p6OS3SSRpCNGcpF7TkjE9DDnuePpcwXI/DkaEUUEQhOlsmeUqqQD4g4mW6yUdMsEHt6eRZZQkPYQ0DjZY5SNqCFX1pe5v1Z7H6ZofF4ISO6l0c4HttdDhNaetkSxS9DYBgpfx4IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CO1PR11MB4850.namprd11.prod.outlook.com (2603:10b6:303:9c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.25; Tue, 3 Sep 2024 19:59:03 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 19:59:03 +0000
Date: Tue, 3 Sep 2024 21:58:52 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <ZtdqfLfHYvEKPE+r@boxer>
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: ZRAP278CA0011.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::21) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CO1PR11MB4850:EE_
X-MS-Office365-Filtering-Correlation-Id: b1fc2d1d-db12-4a1d-1d68-08dccc52dc5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?q407bnrhOgrMISvLAtht7B3sJJZ+uU9pA44XtILkhnx0172tjsoBMzJDNKxg?=
 =?us-ascii?Q?EZYTfDVVhgbOzR9/nq8xVAJ6DmNDFByfcZW2tGyhYJYv1mAEoasBwr5H8ADG?=
 =?us-ascii?Q?ZB1sQ0geXwWDA7nscczSKEK7upaFN9QAoyC/tqbvh99y6uCMWsDpssdNMUSz?=
 =?us-ascii?Q?J8o91JUfNn8XGM2RUGkSyfNZfFja3/Zaej3N4klLtbA8Mi1MJ64dgAMbAv6h?=
 =?us-ascii?Q?/HlhllEGzvZEpBwhG+mMWFj6eqgAtW5ESru4y2cW48HdtVR3TJcFrKWT+KCq?=
 =?us-ascii?Q?0CmYoi7y5/7A1vZj7XTR40E732T0/rmW1BXVKouiMY7IJlYDgAwqg8edTMbb?=
 =?us-ascii?Q?jN5l3y8W8DG0ULhjGhoNa5y3DJI4FXbthykcn/loM0SR+3qlcIG7lM//V4BC?=
 =?us-ascii?Q?ilU553i9g6TgVnSfnbnwFxk28CFuM4j+NzellWNBkj31hJThU5LBHniyzwA3?=
 =?us-ascii?Q?Vg3Xx2AjVjVwr3hl5CAn9a3HLFxycE16+geXpI+RazDpacYY6+abhXl3ydfW?=
 =?us-ascii?Q?XcCzRnute/dCPC/a1LOMjp2A9TFk8Z6K8T3dLZwJSq7vZguzObZeQJkW8lWC?=
 =?us-ascii?Q?me/0G+vILJma/ax7mpZpYOkmDkRo+ZyX8n3pUE2Vvwj4ETzwaeSg3TTavyJV?=
 =?us-ascii?Q?UnoAlYBLhg2EyTqBCfRvwTVvk4uENTMYtBHB1k1NJSvy7kLYP3j/TYkxJTzo?=
 =?us-ascii?Q?yf/B3ts2npFminrrvAfgRnuk7MP3QxUcVkSwvPBYjj1+vwE1mPhP5xKAXxCu?=
 =?us-ascii?Q?BYRQQZI+NVS3jFgNPuSCGLw/wapxieGT8Xspq4tB9+UlLSQP/fkPm1jTJbj0?=
 =?us-ascii?Q?L8B5BrnQuhSOtwzP3r1KoKE3TV+AvnoBqmyCAIiIuXnY4bEqO59xKpzithlc?=
 =?us-ascii?Q?HcUXJKNSNv8amNpYfnSgeyu53wsGSsoIvSumFOW1Oq/EKEIyeREdWWi1SAKu?=
 =?us-ascii?Q?c40M8OsafQM2T8fHNVReA+rZvaacWioybKz3HiYek0riOipHSevEAQ5LQ0TA?=
 =?us-ascii?Q?APHGrS3ot2Z7nmTNY5W5uaQ3ZkWne8l+Th1cb6q8YWWgYdcrP3z4/YW+Kcvh?=
 =?us-ascii?Q?63P+YRza28Zw5W5Aj4UPngJD0xBrbGOppBJ+I7tZ4Dbd4aJmHfWK6oxut/4w?=
 =?us-ascii?Q?KYdUGs60yCEUKX2l1XkQuW6PB5jfcOC+wH8PaqiHKrg96yZBaYXPrNcWq3pT?=
 =?us-ascii?Q?crzZToInpdWF3At6nWEr51h1MHrtRV6lDb5guBH1KOYrUqnC61IT3SGNQb8U?=
 =?us-ascii?Q?SVf00a7ulGQLL849+KLOd9/2s7pRe0SQsIRpOsnxH8Fym6RxQ1LwusrlbLbP?=
 =?us-ascii?Q?iYgumKLEEfQHp/+MiGCjcIZqZS6qMjJtPIcdlVuIJ/GPgw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UkBXH93DcsUJy67zGKpa9vaM7AGik5Ilvrw1QcA5oAtH9jb4ai0uyM+qbpgu?=
 =?us-ascii?Q?x3jWbQ/Ob0HZR2bZuOdiSsyDCnOMRH9zj/6F1MqwOcIYzA4ZZukIYcOWPgAJ?=
 =?us-ascii?Q?v5PkTvaYpP6/QO4n7O7tcQTXLQh+32sVL8NIZlvsR/AgFs0FJHr29K9ArzyX?=
 =?us-ascii?Q?UX1D9IgUI+zabVpqtf7DiLwVii/n3XZYmL1Tc9GhmgoKnNhb61DmIwM/1bp9?=
 =?us-ascii?Q?O6u18LzuXjiVN6qE+SbtHGv2vcmWWZNnJZPoB1lfUwTBPR/kaUGEeQ1fRNDt?=
 =?us-ascii?Q?BFT9BGX9oi1R/025OTIkKv0P2pKrYS0d040LNls/pbuy2CbZRKDD5yHbt/nu?=
 =?us-ascii?Q?sfgH5HwVNjVVOkfdiCucdNkdIarob+GDKH3D9vI9AAhUpr345aW0c6MMTYe2?=
 =?us-ascii?Q?akmh/IPRSau8tPMNQqQuMOVl7WzYdxn8t0pRfzPXq1yQJxHdjF7TkAnVCUCh?=
 =?us-ascii?Q?jfMPmbuMEWI7AwrHe143QAztKmBFXeIsSfOOs/NDyMzltd59GAGeVMeLGdqI?=
 =?us-ascii?Q?QihSntB35JCzJTnhsFGgNE/VNDYwno37S4LuWhF1wEx/74CnNgADp2BOoYsC?=
 =?us-ascii?Q?SiXUwPRaT9Hv39f7V8Hy1aMU4cdxXoXU7pXf6nn2fwIC/JmSwNVUlmgOLyIK?=
 =?us-ascii?Q?QRjFk+zyo5bzk4OqfGnf/JN/2I0RqGwX42GWw2dBlNCnC3cQHcD27ch3Jh2u?=
 =?us-ascii?Q?9svIbrEz99Y52y4YO+qOnxleJNy0kY3kD4dgkD5L2815V68ikzlULoOdMSB6?=
 =?us-ascii?Q?0DAWwsKDSJaGYEU/fZABmwkzFgHSvb/XlAGrlIvpk+RxUZ2mAHNO3F4ZObKN?=
 =?us-ascii?Q?OPK3Ky4W+p2DPIfO/NYFuXlvSoVHSQRk3Ru2lKlmOl2CjKkxikHRfdr/ErgO?=
 =?us-ascii?Q?rJ8oUlkk3hFcd1/zsbNKDb9lYodk4EMwgPGWNLZ2XPqEgWBV1dooFaGg36bA?=
 =?us-ascii?Q?nQ/ds6/0xHR8NmoG0a7UeFddFdN9h9LfaDlQAh03Kdz3kDzzkZss5A5lwYWA?=
 =?us-ascii?Q?6vj5Gvdarw8TSbW5HQ8PdPnWaXdMzAX8rpUZxKqhwNLigGBdJ4NrGlxwjS7y?=
 =?us-ascii?Q?JPVCwRcJxYPRO7B63zhlDAMlCIXTblfTMFCHQTAGTuDdKdZTavbYYEUlGmuF?=
 =?us-ascii?Q?/AsVQzuLdoyvDwb7j5PZL7IqkEV7E5DrfP79HMzucIiXcuv5e0JoCTNQVOkD?=
 =?us-ascii?Q?kEAAnFl9mt2yrr8QiFKvsAdYOy4orxN8mLYaZWtpAS6zJ0KRtqWPn99Vqk/a?=
 =?us-ascii?Q?LvtPOggF9cM3nCpavrgBKYeCKtf6dLeKVsV1o+N8mRuOYmz2o47WxhAS0/Oo?=
 =?us-ascii?Q?beGTpnv+zfGVgtpbD4F3vyKgX1SU9v9oFsd4DU7P0tGrrZmC58/jiiDJSpOu?=
 =?us-ascii?Q?t64R14selEQangPr8zBMBAZlP59P5pSRkbFsteNUeTER09eJBO73dIN9FGLz?=
 =?us-ascii?Q?N6dhKT7CdbYyhTVfHJwrLcSVQ/oHW4dnY9wIToYxH6pF3Wo0gGiY/9f8fYPY?=
 =?us-ascii?Q?9w+SfH/IajAT5AnMpSiGoeVCs2YoxD8n9cIhh48HCf2P8phT5drQTzHLiSdc?=
 =?us-ascii?Q?20tUtNn31gBTfAD/zIMhDivHUFMjVbGy/kEl+zsSxvWMP76vcf6IpHerwNGA?=
 =?us-ascii?Q?pg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1fc2d1d-db12-4a1d-1d68-08dccc52dc5b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 19:59:03.7714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zjuWICacvsSSwBY+CaLGe7bLfFB70GksPBnF8CLkELOSlQ4JZtGtn37dKHduJiBCyU4K+ZSJ5vBX5f//XI4HZ9c2bV76O4feQtCuZDhp6uM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4850
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725393548; x=1756929548;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ePU6xtGx3BmKQ/D01qjv+sBGB9YEjqycxlTFbQjcoM4=;
 b=ZFLm1KSeqtKSCF6zEZlc5ZO/iQ9bgmwq4kMZSnDeBcyyJ7Rut0pM3agm
 6HsCLz4cF3zCSFzp6Ya3SDi23/Y/mzaEiTj9ddTzEQEVMeP9BLz3hI5w4
 b8TtuNIQQ9k7fRVikDRSdWa4RbF2XXIo8S1DPdgT4PCG6amG2FOo+arD8
 MDq07frQciJm92WY58ywmOIrGtL9p3y12Gr/y0WAdXUoGc94myK1b4mTP
 s5ZVKxXJJz7jP/f6Vrv30hq5+ZLS5yYg+6AEI8IRkmaCObIFDvlzIOC1A
 lUbv8lOw5l4i2eS2dnHB6ZY8VNS/lk/z4s+PP4+xVpEpBerSRk9ps3A61
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZFLm1KSe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
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
Cc: anthony.l.nguyen@intel.com, Jan Sokolowski <jan.sokolowski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Padraig
 J Connolly <padraig.j.connolly@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 30, 2024 at 09:28:07PM +0200, Aleksandr Loktionov wrote:
> In cases when vf sends malformed packets that are classified as
> malicious, sometimes it causes tx queue to freeze. This frozen queue can be
> stuck for several minutes being unusable. When mdd event occurs, there is a
> posibility to perform a graceful vf reset to quickly bring vf back to
> operational state.
> 
> Currently vf iqueues are being disabled if mdd event occurs.
> Add the ability to reset vf if tx or rx mdd occurs.
> Add mdd events logging throttling /* avoid dmesg polution */.
> Unify tx rx mdd messages formats.
> 
> Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by:  Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2->v3 fix compilation issue
> v1->v2 fix compilation issue
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   2 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 116 ++++++++++++++++--
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-
>  6 files changed, 122 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index d546567..6d6683c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -87,6 +87,7 @@ enum i40e_state {
>  	__I40E_SERVICE_SCHED,
>  	__I40E_ADMINQ_EVENT_PENDING,
>  	__I40E_MDD_EVENT_PENDING,
> +	__I40E_MDD_VF_PRINT_PENDING,
>  	__I40E_VFLR_EVENT_PENDING,
>  	__I40E_RESET_RECOVERY_PENDING,
>  	__I40E_TIMEOUT_RECOVERY_PENDING,
> @@ -190,6 +191,7 @@ enum i40e_pf_flags {
>  	 */
>  	I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
>  	I40E_FLAG_VF_VLAN_PRUNING_ENA,
> +	I40E_FLAG_MDD_AUTO_RESET_VF,
>  	I40E_PF_FLAGS_NBITS,		/* must be last */
>  };
>  
> @@ -571,7 +573,7 @@ struct i40e_pf {
>  	int num_alloc_vfs;	/* actual number of VFs allocated */
>  	u32 vf_aq_requests;
>  	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
> -
> +	unsigned long last_printed_mdd_jiffies; /* MDD message rate limit */
>  	/* DCBx/DCBNL capability for PF that indicates
>  	 * whether DCBx is managed by firmware or host
>  	 * based agent (LLDPAD). Also, indicates what
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index abf624d..6a697bf 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -721,7 +721,7 @@ static void i40e_dbg_dump_vf(struct i40e_pf *pf, int vf_id)
>  		dev_info(&pf->pdev->dev, "vf %2d: VSI id=%d, seid=%d, qps=%d\n",
>  			 vf_id, vf->lan_vsi_id, vsi->seid, vf->num_queue_pairs);
>  		dev_info(&pf->pdev->dev, "       num MDD=%lld\n",
> -			 vf->num_mdd_events);
> +			 vf->mdd_tx_events.count + vf->mdd_rx_events.count);
>  	} else {
>  		dev_info(&pf->pdev->dev, "invalid VF id %d\n", vf_id);
>  	}
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 1d0d2e5..d146575 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -459,6 +459,8 @@ static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
>  	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
>  	I40E_PRIV_FLAG("vf-vlan-pruning",
>  		       I40E_FLAG_VF_VLAN_PRUNING_ENA, 0),
> +	I40E_PRIV_FLAG("mdd-auto-reset-vf",
> +		       I40E_FLAG_MDD_AUTO_RESET_VF, 0),

you don't tell us that this is implemented via priv-flag in the commit
message, would be good to include info about it.

>  };
>  
>  #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index cbcfada..28df3d5 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -11189,22 +11189,102 @@ static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired)
>  	i40e_reset_and_rebuild(pf, false, lock_acquired);
>  }
>  
> +/**
> + * i40e_print_vf_rx_mdd_event - print VF Rx malicious driver detect event
> + * @pf: board private structure
> + * @vf: pointer to the VF structure
> + */
> +static void i40e_print_vf_rx_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf)
> +{
> +	dev_err(&pf->pdev->dev, "%lld Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
> +		vf->mdd_rx_events.count,
> +		pf->hw.pf_id,
> +		vf->vf_id,
> +		vf->default_lan_addr.addr,
> +		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" : "off");
> +}
> +
> +/**
> + * i40e_print_vf_tx_mdd_event - print VF Tx malicious driver detect event
> + * @pf: board private structure
> + * @vf: pointer to the VF structure
> + */
> +static void i40e_print_vf_tx_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf)
> +{
> +	dev_err(&pf->pdev->dev, "%lld Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
> +		vf->mdd_tx_events.count,
> +		pf->hw.pf_id,
> +		vf->vf_id,
> +		vf->default_lan_addr.addr,
> +		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" : "off");
> +}

Unnecesary code duplication, two functions with printing the very same
statement with a single different letter.

static void i40e_print_vf_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf, const char *rxtx)
{
	dev_err(&pf->pdev->dev, "%lld %s Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
		vf->mdd_tx_events.count,
		rxtx,
		pf->hw.pf_id,
		vf->vf_id,
		vf->default_lan_addr.addr,
		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" : "off");
}

	i40e_print_vf_mdd_event(pf, vf, "Rx");
	i40e_print_vf_mdd_event(pf, vf, "Tx");

> +
> +/**
> + * i40e_print_vfs_mdd_events - print VFs malicious driver detect event
> + * @pf: pointer to the PF structure
> + *
> + * Called from i40e_handle_mdd_event to rate limit and print VFs MDD events.
> + */
> +static void i40e_print_vfs_mdd_events(struct i40e_pf *pf)
> +{
> +	unsigned int i;
> +
> +	/* check that there are pending MDD events to print */
> +	if (!test_and_clear_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state))
> +		return;
> +
> +	/* VF MDD event logs are rate limited to one second intervals */
> +	if (time_is_after_jiffies(pf->last_printed_mdd_jiffies + HZ * 1))
> +		return;
> +
> +	pf->last_printed_mdd_jiffies = jiffies;

why homegrown rate limiting?

> +
> +	for (i = 0; i < pf->num_alloc_vfs; i++) {
> +		struct i40e_vf *vf = &pf->vf[i];
> +		bool is_printed = false;
> +
> +		/* only print Rx MDD event message if there are new events */
> +		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
> +			vf->mdd_rx_events.last_printed = vf->mdd_rx_events.count;
> +			i40e_print_vf_rx_mdd_event(pf, vf);
> +			is_printed = true;
> +		}
> +
> +		/* only print Tx MDD event message if there are new events */
> +		if (vf->mdd_tx_events.count != vf->mdd_tx_events.last_printed) {
> +			vf->mdd_tx_events.last_printed = vf->mdd_tx_events.count;
> +			i40e_print_vf_tx_mdd_event(pf, vf);
> +			is_printed = true;
> +		}
> +
> +		if (is_printed && !test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags))
> +			dev_info(&pf->pdev->dev,
> +				 "Use PF Control I/F to re-enable the VF #%d\n",
> +				 i);
> +	}
> +}
> +
>  /**
>   * i40e_handle_mdd_event
>   * @pf: pointer to the PF structure
>   *
>   * Called from the MDD irq handler to identify possibly malicious vfs
>   **/
>  static void i40e_handle_mdd_event(struct i40e_pf *pf)
>  {
>  	struct i40e_hw *hw = &pf->hw;
>  	bool mdd_detected = false;
>  	struct i40e_vf *vf;
>  	u32 reg;
>  	int i;
>  
> -	if (!test_bit(__I40E_MDD_EVENT_PENDING, pf->state))
> +	if (!test_and_clear_bit(__I40E_MDD_EVENT_PENDING, pf->state)) {
> +		/* Since the VF MDD event logging is rate limited, check if
> +		 * there are pending MDD events.
> +		 */
> +		i40e_print_vfs_mdd_events(pf);
>  		return;
> +	}
>  
>  	/* find what triggered the MDD event */
>  	reg = rd32(hw, I40E_GL_MDET_TX);
> @@ -11248,36 +11328,50 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
>  
>  	/* see if one of the VFs needs its hand slapped */
>  	for (i = 0; i < pf->num_alloc_vfs && mdd_detected; i++) {
> +		bool is_mdd_on_tx = false;
> +		bool is_mdd_on_rx = false;
> +
>  		vf = &(pf->vf[i]);
>  		reg = rd32(hw, I40E_VP_MDET_TX(i));
>  		if (reg & I40E_VP_MDET_TX_VALID_MASK) {
> +			set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
>  			wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
> -			vf->num_mdd_events++;
> -			dev_info(&pf->pdev->dev, "TX driver issue detected on VF %d\n",
> -				 i);
> -			dev_info(&pf->pdev->dev,
> -				 "Use PF Control I/F to re-enable the VF\n");
> +			vf->mdd_tx_events.count++;
>  			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
> +			is_mdd_on_tx = true;
>  		}
>  
>  		reg = rd32(hw, I40E_VP_MDET_RX(i));
>  		if (reg & I40E_VP_MDET_RX_VALID_MASK) {
> +			set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
>  			wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
> -			vf->num_mdd_events++;
> -			dev_info(&pf->pdev->dev, "RX driver issue detected on VF %d\n",
> -				 i);
> -			dev_info(&pf->pdev->dev,
> -				 "Use PF Control I/F to re-enable the VF\n");
> +			vf->mdd_rx_events.count++;
>  			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
> +			is_mdd_on_rx = true;
> +		}
> +
> +		if ((is_mdd_on_tx || is_mdd_on_rx) &&
> +		    test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags)) {
> +			/* VF MDD event counters will be cleared by
> +			 * reset, so print the event prior to reset.
> +			 */
> +			if (is_mdd_on_rx)
> +				i40e_print_vf_rx_mdd_event(pf, vf);
> +			if (is_mdd_on_tx)
> +				i40e_print_vf_tx_mdd_event(pf, vf);
> +
> +			i40e_vc_reset_vf(vf, true);
>  		}
>  	}
>  
>  	/* re-enable mdd interrupt cause */
>  	clear_bit(__I40E_MDD_EVENT_PENDING, pf->state);
>  	reg = rd32(hw, I40E_PFINT_ICR0_ENA);
>  	reg |=  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
>  	wr32(hw, I40E_PFINT_ICR0_ENA, reg);
>  	i40e_flush(hw);
> +
> +	i40e_print_vfs_mdd_events(pf);
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 662622f..5b4618e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -216,7 +216,7 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
>   * @notify_vf: notify vf about reset or not
>   * Reset VF handler.
>   **/
> -static void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
> +void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
>  {
>  	struct i40e_pf *pf = vf->pf;
>  	int i;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 66f95e2..5cf74f1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -64,6 +64,12 @@ struct i40evf_channel {
>  	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
>  };
>  
> +struct i40e_mdd_vf_events {
> +	u64 count;      /* total count of Rx|Tx events */
> +	/* count number of the last printed event */
> +	u64 last_printed;
> +};
> +
>  /* VF information structure */
>  struct i40e_vf {
>  	struct i40e_pf *pf;
> @@ -92,7 +98,9 @@ struct i40e_vf {
>  
>  	u8 num_queue_pairs;	/* num of qps assigned to VF vsis */
>  	u8 num_req_queues;	/* num of requested qps */
> -	u64 num_mdd_events;	/* num of mdd events detected */
> +	/* num of mdd tx and rx events detected */
> +	struct i40e_mdd_vf_events mdd_rx_events;
> +	struct i40e_mdd_vf_events mdd_tx_events;
>  
>  	unsigned long vf_caps;	/* vf's adv. capabilities */
>  	unsigned long vf_states;	/* vf's runtime states */
> @@ -120,6 +128,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16 num_alloc_vfs);
>  int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
>  			   u32 v_retval, u8 *msg, u16 msglen);
>  int i40e_vc_process_vflr_event(struct i40e_pf *pf);
> +void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf);
>  bool i40e_reset_vf(struct i40e_vf *vf, bool flr);
>  bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr);
>  void i40e_vc_notify_vf_reset(struct i40e_vf *vf);
> -- 
> 2.25.1
> 
> 
