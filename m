Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2163795704A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 18:31:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C406460829;
	Mon, 19 Aug 2024 16:31:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMWk9qwctBMl; Mon, 19 Aug 2024 16:31:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7035960819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724085062;
	bh=/c8zQ81690MDclAfI37e6Y7pP00VrfGFizsDnExTu0Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZYLL2AlIE+8onKE0j7KL4Q6j8z13iXwDAafOY/AD6TD/7HLOXNQ3+RvAkqmbmn0Eu
	 f736Q0W+TCF4xkm3odUklAV/EYcZm2StCI6J+8gbb69Tx6qENuUsP4yzQA9G3vTjQj
	 m7hmitcPAGGYpYAB9kFRxp4C1aLLbp+7yN6TqGRz0HESIeiCk8PCsUmcCuQgrAsUwM
	 TjJEJelXqhugHndM6ijfnKn6eHcz+jQWXIQJroDdz8YmOE0UFHd+iaQQNJNjaKUA1g
	 lRbr+tmI1v7Sqj7xJaY+C6JVShInssNgWMv+R/d4JZGvdWylMX4ttjQ0TCkE37HALC
	 wOD6KQM8jgAtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7035960819;
	Mon, 19 Aug 2024 16:31:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8BD1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 16:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52EA04048F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 16:31:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aV_-GJiRFMq7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 16:30:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 508A840471
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 508A840471
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 508A840471
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 16:30:58 +0000 (UTC)
X-CSE-ConnectionGUID: Ne5/dOk4RFOrT1q14vt0bQ==
X-CSE-MsgGUID: Nr81MX9TQrqYuhZRKNEQCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="44866272"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="44866272"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 09:30:58 -0700
X-CSE-ConnectionGUID: qQ4pjA6qS9GPNfcnLRV+ug==
X-CSE-MsgGUID: wgRNyTz/QcOirsBrqoo4PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="83635975"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Aug 2024 09:30:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 09:30:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 09:30:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 19 Aug 2024 09:30:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 19 Aug 2024 09:30:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pwUSCPsBz9zoo5mdLYFUwTW6rsYhzWtttM96PDbAxQd6NtWYUPrFstleMNGWPb8FZpguBv0hjU/qYNowuJOOHrlXMAe7rJ4xowYdiiRO1A3Wu4mlpgVS0LXgdn7KWGZw6iCvAveWPUwXFmawP5ivOMO9QGpuZRXOWcaSzimKj2sMoOUMcmiRD5uZw6D4HL/566Z2YTQeQ8OIRR7Sad/qWw3lkaxQ+kmYsPaa5ZWF5j9kgqp9vidTMpUK3qm94Eab0Bb7H2Onc86JL7cKeSh7DwJjPrX1wigrsJV9s9GTBTjUv0kBfnkfX1pbRjc3pueWJUGed8kJ1kL28nLzXKym1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/c8zQ81690MDclAfI37e6Y7pP00VrfGFizsDnExTu0Q=;
 b=zL+HS7hadM7dB2kagpckdQslBF5vsfJKHVSy51UVQ2Zm6CDb4pMwFpEzT9w8hen3iG8EnCQkO4O3cOeLtkCOTDU1e3tt+4VYWXXs5A3udzgR1AZxtP5zlfROnjF8bWL3etAC8LWfZOtpkYmg2iNTAp2LymQtYoR6IhzjoUogVUcDJY/yNWEVh7EeAdxU6UuASy769ETgiO9838ir++ZcrSl0pYWZwDSr289mezQ7fPkTBOeksT09dMwpcffK/5vlVPG6wAwjrl6bv5RSAHMGha6ZocfKQuvh4co9tOhdD6qaChy0sW+bWJbXEqMoJeCG2SRiJG2JG5OyB4R3MDfq8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SN7PR11MB6776.namprd11.prod.outlook.com (2603:10b6:806:263::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Mon, 19 Aug
 2024 16:30:54 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 16:30:54 +0000
Date: Mon, 19 Aug 2024 18:30:38 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <ZsNzLvH38p/cWwI0@boxer>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-6-4bfb68773b18@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240711-b4-igb_zero_copy-v6-6-4bfb68773b18@linutronix.de>
X-ClientProxiedBy: MI0P293CA0012.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::20) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SN7PR11MB6776:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d797d49-f8a0-4bc1-723f-08dcc06c4bbf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6akwEorMsePxTZ+XCwaRaCS+dISb2tW0Oo1tOsgs2pNov1J15Jcg3a2KJpDv?=
 =?us-ascii?Q?LKQlMsGogmYhKpv1hzMaFnMGQs39dpdThYs6Qp2886kZiRP35MuT9wwgsOnn?=
 =?us-ascii?Q?j+elOaks3hGedEDPxvwK0mU7kwAne+UDOuiYaNBTUjd1t80YMFJ0AiLjS/y4?=
 =?us-ascii?Q?ctuJ9q9jY3wZv9vG67nvCo7Y2FIwKlkRRRiFNUBSlpXLW2kxA9pigzSOrfu3?=
 =?us-ascii?Q?Pw6uvItXkwaF1YBJB2kxjK5cJQVqAjOg42jE+rypIJGFOTCVhpUIbnuZsHrV?=
 =?us-ascii?Q?/vTprYk4PMlUq0i0RgZ+IkhQCrJBAgMjSJoebMvx0SLY87/KsVLYi6ub9+4p?=
 =?us-ascii?Q?V5C1iAkAGsi/3KbB9Ke1LFOWKkAkhkwc4DDn6ijPt8qc7Ftdfz14kK4WgaFi?=
 =?us-ascii?Q?HS0lHL/N+YX0OmbGxfM3zWhMz3zQMl8biQA+S0FBGUg/07ahzA/Dr3n3cXds?=
 =?us-ascii?Q?fTmgTKpA/D/1KezIRiiT0NzTFNGO+7i3C+oGBmPOTwAarXfKGnEXZCq+3YBy?=
 =?us-ascii?Q?xMR/hl5O+G7tprcD7rlmx0Wehv7M/yKH861gAtknckdVGUzk6dqtdxLgbL9e?=
 =?us-ascii?Q?F+F6C0thS4CHCOwnggFyaZFZyLN/iYTngwIj0VZ3/WcEQsZBPBkuACPYKryN?=
 =?us-ascii?Q?DMbDd10q08uA68kFEPnr1WDkETKrElAFhj8vAYYi8W1PUb11ItpGpV3w42oV?=
 =?us-ascii?Q?ahfUY9aY9T5fTSP9eRLTYgqeTKKU/LR/X8wsN0jcmNNqUvLJAJZpGZBtPYRW?=
 =?us-ascii?Q?igccjwkkHCydZ9OdJBhCB4nBY9jnEUDcC4VlxOQ0cM/5H/JE/3TOx2X55DTr?=
 =?us-ascii?Q?jvGSmiY8x6AyNtjW2cDTd32u3EebJ/esPeZGbdxV6hIAH13ycmgMZHlhrT0F?=
 =?us-ascii?Q?hZooyAgtjYbsqeAC6CZi/UawJXul8+/4g19hSEfRlMkwGbaisSEEh1IqQkWb?=
 =?us-ascii?Q?TFOlm5IbAQB7HFQ1rycw0QatuEkDM3sVNi67JIMdDSd+Jq+RfW46NpAEFlBq?=
 =?us-ascii?Q?VIiCnu5tYP5flR5ZGEFSk5U4RoZG0pztHRvaNazRNu/L/9XSeuanHrWUyBpy?=
 =?us-ascii?Q?mXjnrxqPUo1U6TtTRXS2zbt/GzegHWzcXX3AWuQ/ufrEnU9M2CU6UXO1YezF?=
 =?us-ascii?Q?eCaUmnQaorLfy0Kmhvl0lHjUHSXWb/PFsFALR0zszqecmLVFK1wz/ifInURA?=
 =?us-ascii?Q?tJu/KfraVISSxTrGDfagFIIVOoJ6CVgmgHViJ3Hd8QB3NU8vM9vOQ3rliJcN?=
 =?us-ascii?Q?Vs8wm7oawPV6QlZRQk+Whpva+DhV4vk8KEDzswTMeu6WFJ7xCKicAkKFZxt4?=
 =?us-ascii?Q?YUqGgsgHTzaQgBHdsJhi15X06mU+CgmabQmOY3Ggj88fng=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PAeEAyeNf3GbGPmpm71GVzmL3eXh5POU/4crQ49EVh9qs3kd/fu9qG22jb7u?=
 =?us-ascii?Q?6U0sfovXzt+OF/n5JBlY0qogBQsdg0bnBVJ8e3FiW0uWS48n8ArsqYQTFqdE?=
 =?us-ascii?Q?1smfExk58v4fYq6RZm+AkY2SsQ6XkaWAxPWEbr2j2iah+E4i/yjurtLEa+Wm?=
 =?us-ascii?Q?yaMA3wjBl3P5MfldfVqV/R+7EMHi52jW6QT6PQA0DQLo5OC5qriiDsj71hmR?=
 =?us-ascii?Q?TXprTI1o4VMdGR4ZIJp7NrE5+L0vxgJNQX0HCvs/30vfMNWXVireIBrHzMk4?=
 =?us-ascii?Q?wQgb/QTj4/ZjumK8xue/sTU9Ma0Wayro9LUvgz8yF9lSjJPONFar8vxg+fwc?=
 =?us-ascii?Q?eGWDHqEz2Y8/XDaZmb68n4dD21Ur9lWXzs6AlvdQBtmBH/7BcOzSPH8xAZgA?=
 =?us-ascii?Q?Yjx2LE2IiAypUs5emTj1AMSGHTTcoKdZgKIpvkwb1LWl2bwtZt19vfLXo5+F?=
 =?us-ascii?Q?E9eb2vwVGKVrJHCZb86NiYx7690DHyGpbHOId2W9tvorXMUxdM92+9zcNwy1?=
 =?us-ascii?Q?V9v/ELckhfGHea59XbCswyu3BSHNx4H2lSvC+ZXZLPKV+6x5U4NOl6lc5oQc?=
 =?us-ascii?Q?fggBscb0p/QtQq+klmKTxcYmpAuDiXZQyP93ZCdi8+rabr1tXZYHtNYvAFbM?=
 =?us-ascii?Q?XHPTyM9Lm2/hsV5chtWPQm2C5o1EDiUby4EIHlk8as79MiGx67bjgVAiIMIq?=
 =?us-ascii?Q?TTfP0jK9d61tzGfgoTPfoFqqmmZKi0puyg54WhWusCgH6oR3vOOZPhEn3CGl?=
 =?us-ascii?Q?z+p7l4gsx4C/55u/t8vp65e/wSjAx2NNhC8BEB1wfMzQVqRndo/rPiieqJRs?=
 =?us-ascii?Q?NcGAvWE+Tet/6pp3AcG3bvtGwbF1zW/+lP/RbBi1PY6wjIxfV10a5Gu5+t+e?=
 =?us-ascii?Q?fBDqFZU24Qz/a10wcf99grQzW3XwVfbxD3J6iOxNA70ELu0P9re1hVjeKIoF?=
 =?us-ascii?Q?B6GI0kh+0EiidFoR0he/uDBurSLlMpeQwsUjPKoa+SWgb9r4VLoObdJpK5Ay?=
 =?us-ascii?Q?rWsAJRe8RgjFriESf1bYeH9PeZFZncPmGI3JN5VqkfQxuMnhGxFG+POf60cL?=
 =?us-ascii?Q?pOrCsHqtJ+yayFmZAUM5Fhvwk8KlRM2XCYxFcopRCfrVzAH/3OiK0Su93xRk?=
 =?us-ascii?Q?55o1wpSkudUB9D4Pme1FH1NGdqlK+SS0yCrUxNQOzybTlSsqBYdOsF5I2nfi?=
 =?us-ascii?Q?P1SlraKOWcqqu7buDueW04Pj8Yc4AFbluep+KI+KcgVYBX+osu8/MY+T+IKx?=
 =?us-ascii?Q?biJZUvUyoLmmfwITA3AKpn7X9P9WNYFgCSUGmT/NsMF7/ZrpPpxNjD+KHg51?=
 =?us-ascii?Q?oEy4fbzXyGbN2Hsdk0r95aSetIAi4TonueR7TsG3FSxo6pwVPDXJWeWRh53o?=
 =?us-ascii?Q?W4/bt9O800RXXAsDeEDsep0O6fvBFupiywGiEuPuMw3M09T7bRuOIZnbfr7t?=
 =?us-ascii?Q?gVHgp9xmM3n9bxNrAFoXKAm2eUcFrvzwqjeAmm7VX0Y4bOiaOAGMrfMjupAv?=
 =?us-ascii?Q?+ftBn6HCqjC7uMKdndBTc66wtUaDuLIev8PXvOw44s+whRkp8s9/vwepA0Qq?=
 =?us-ascii?Q?DuTfZQuseQaUiQs+RHI+anRtIqFnFCihwCghLlVu4GCCI9fwWCr2umDn/eN8?=
 =?us-ascii?Q?Ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d797d49-f8a0-4bc1-723f-08dcc06c4bbf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2024 16:30:54.1220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0fcg/WWtTRtScKwRL1Efvg6oTZsyKLGmhpzcmWCLYjPbBOZX1SyKYdKLBRCWSR02WHbMjFgCHk3Yjou7aJ192iTCDeSTOmUrt7gYkV5kaZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6776
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724085060; x=1755621060;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DnCXBKXbiOYrHu9UhC/qa6VFm7NivZmF3tDF9xXcCtE=;
 b=aNwBy4udnkUXesEFX0uoA7B++3gwnGLl/COk1prAJd02VaF1xS0yxD5Q
 NIWCXEuJtJlPhkdDku/dSwDC3lOAF5Gz4WkKcogc97XY94EVMB6Z0a14G
 wDXdkodO0qEdhyqa7TsPaZoyVDx/o77SVmG4lZX5dsPdaeIPlHhOENNkE
 txY2yam9yi2549blJRAkTivMwGVdaEaw5MLRAJwdI62M6p7Oq0glRUHhN
 92Gys5pA4XamBSw+/xskQMMgyH90i/TAD31ySHsX1wd3HRY5Fr6EMEBTG
 RlNrTMVGCpJ+EXc4YmyfC8w7UG2VynfA9jvvwwti260DgorSdAMrCtlT4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aNwBy4ud
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 6/6] igb: Add AF_XDP
 zero-copy Tx support
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 16, 2024 at 11:24:05AM +0200, Kurt Kanzenbach wrote:
> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> 
> Add support for AF_XDP zero-copy transmit path.
> 
> A new TX buffer type IGB_TYPE_XSK is introduced to indicate that the Tx
> frame was allocated from the xsk buff pool, so igb_clean_tx_ring() and
> igb_clean_tx_irq() can clean the buffers correctly based on type.
> 
> igb_xmit_zc() performs the actual packet transmit when AF_XDP zero-copy is
> enabled. We share the TX ring between slow path, XDP and AF_XDP
> zero-copy, so we use the netdev queue lock to ensure mutual exclusion.
> 
> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> [Kurt: Set olinfo_status in igb_xmit_zc() so that frames are transmitted,
>        Use READ_ONCE() for xsk_pool and check Tx disabled and carrier in
>        igb_xmit_zc()]
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  2 +
>  drivers/net/ethernet/intel/igb/igb_main.c | 61 ++++++++++++++++++++++++++-----
>  drivers/net/ethernet/intel/igb/igb_xsk.c  | 59 ++++++++++++++++++++++++++++++
>  3 files changed, 112 insertions(+), 10 deletions(-)
> 

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
