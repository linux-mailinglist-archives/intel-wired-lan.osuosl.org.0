Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 829E9A9201C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 16:47:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 102DC849E4;
	Thu, 17 Apr 2025 14:47:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0HonR558XDX5; Thu, 17 Apr 2025 14:47:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00879849DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744901263;
	bh=nylAZDhFllfp7ZODgLuhKIFEw194BEzA5aL+udJVacI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e1jWSzmMV9tVJiPAG3JOMo/vPzMvIYQ5dB9AqLlIYLEmfm3a6GCQZclbKqijKT+dM
	 SAfIGXEH6f3dplAozBN3kyU8QfuP9QF2wkj+4F8DYQ96hXeaYKVAIjtqbapqqKY3Q4
	 6lPhSReYDN+xT+vu8e/1nnEIHTmgZ3eqGknaZy3p+HlgkZKz8GHIFlxLctddv9wzZH
	 EheBFlGAgHtS9WUS0qM73UCJXtFTsoZcs1qcdE6Y6RuQA21PAfCJqwvlWdf3+W+/kc
	 p9cmLI33hq9vWDK6ve1WIs4O81Id+zidt9Ds7kJBERtwF1PKyOmQWmO6/rc6+mq2Y5
	 wJsJO1pxAsP7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00879849DE;
	Thu, 17 Apr 2025 14:47:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 27C4E11F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 14:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BCA640B0C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 14:47:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oND6tFvjzzK6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 14:47:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0D8CA408C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D8CA408C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D8CA408C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 14:47:39 +0000 (UTC)
X-CSE-ConnectionGUID: 3N/UwVciS3KaXfCeglKFNA==
X-CSE-MsgGUID: Z60L6lmMRL+o7Pdw8Y1EJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="50315151"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="50315151"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 07:47:36 -0700
X-CSE-ConnectionGUID: r34Vyfv4QUCdtbgod37O2Q==
X-CSE-MsgGUID: clCaKb5FTO6uHhWtAAm5XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="161871711"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 07:47:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 17 Apr 2025 07:47:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 17 Apr 2025 07:47:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 17 Apr 2025 07:47:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TwqJw0z7FXAZaqE4amW63vujjKJBvnrawghCACyZpbLQ/EQPkYGXq7VDpp8E7Ofobw+6AvLOmt3p5p178E/cukhWDHTIee2IdNSSqjDfY4uA7UYuQPavFhWu02N0mRtBRkxC8Yg3akIvUu6qn0pCcImc8RsX0G9AOMTsG/ZK+z6JoqSDnyksnhLiWQspY5hQ/IdSeG5l0KP3cfJ9Abu5k044N0lKvt4kSUxM/GoPiLzhK0pqiwxyksxb0LsYNu9eDkah+WECKXeLDxar6u40LnC3WNkc3V4nLizW1hqSx/AmuUw/7A26N+XqgxDySgurAS2nlSOcfIxQArPMzA7eCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nylAZDhFllfp7ZODgLuhKIFEw194BEzA5aL+udJVacI=;
 b=OW30jWZPIPRXJPmPSJcQmE4fTN6buQdRTVoq8QQuOeuhd/par8RJEG6bft8TIm15CS7302ScM8smB5DXf/L/a6T2dmufeEmL0oByE2tKjYa9LQwCGY3j+8+t9jHh40o1Izk4L6ovnmUAgZWPzyo2DliXzPxfXat6yIsGoo4QeMpOKIQv7PIii1IT2i4ue/8VcI7fM+NqjbIZsbSr7GVk8yPE8Pjj/fKSpEeNtrmLrxFL9J6VWQ8ddUJ2eak7x9yx/qbIB6lIKfEo/6eRKQ/llzI+23mdTdNGqQkg29bRuiXOgZ8gtKIMqrsMe3jnMYjTcjFbgQfQ/niF4RksRxIiYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 BL3PR11MB6340.namprd11.prod.outlook.com (2603:10b6:208:3b4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Thu, 17 Apr
 2025 14:47:27 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.8632.030; Thu, 17 Apr 2025
 14:47:27 +0000
Date: Thu, 17 Apr 2025 16:47:13 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>
CC: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jay Vosburgh <jv@jvosburgh.net>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <sdn@hetzner-cloud.de>
Message-ID: <aAEUcXIRnWolGWnA@boxer>
References: <d33f0ab4-4dc4-49cd-bbd0-055f58dd6758@hetzner-cloud.de>
 <Z/fWHYETBYQuCno5@localhost.localdomain>
 <ff7ca6ea-a122-4d7d-9ef2-d091cbdd96d2@hetzner-cloud.de>
 <Z/jPgceDT4gRu9/R@localhost.localdomain>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z/jPgceDT4gRu9/R@localhost.localdomain>
X-ClientProxiedBy: DUZP191CA0040.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f8::18) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|BL3PR11MB6340:EE_
X-MS-Office365-Filtering-Correlation-Id: 7450fe7b-d6dc-4521-8875-08dd7dbec588
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dz6hdmkqoyYBu7Rxc8JxHVr+5gjXVatZ5ih54ZuyB1aahf2qvRoeKB3OCE+A?=
 =?us-ascii?Q?TlToshHzDmdMV6l6iuLZBYsbWBSYQfRHwg6YiksyKykUwWmZw7YJaYkMF0GO?=
 =?us-ascii?Q?NXifmym3iSvQrEdGI5cstAMl3HRzqPtP+iL98MzgT+EtB01Gklz+izFrtGaD?=
 =?us-ascii?Q?sbvk68hCcbugu1PsM+jENfznDOCxws10bzPeY2WtI65+1Ralv3n6lI4dtb/d?=
 =?us-ascii?Q?nVJ/Y9qvQE/eboDI2bn5FaBjRsdreyzV660+ZfpM4yN5tjH/azooZ4p0jCXu?=
 =?us-ascii?Q?9u60jIUi3uhFVuMms9hn1izfq3VH8TYVe1/96BUb1s/88+ynsUjdIBXkjsBm?=
 =?us-ascii?Q?mUAiGveOaXcF7PtbYwbrCwc5u1aelP3SduM9hLpunwqGiwXrmG/TqzlKxNHF?=
 =?us-ascii?Q?cx876Lhe4GYe+JGwcRYENJoJCQgh87m0Ly5IDJBkAgfeJIDr1iIT6Ok9uzVn?=
 =?us-ascii?Q?PPU/LFtglFpg//FzSjfDOt5qK6WY0/PU/YnI0XG5qO68tCGGi2nNaM8XHI+C?=
 =?us-ascii?Q?4ehKfylYdhqh/ls2/mjgERAiDc4uiocM4u6ohYJrOOuteuQH5W6EQlwkfeua?=
 =?us-ascii?Q?S0XknvU7IjNzFZktweq4Lrk95vNve2NRSkUDNN6bXe0AJ1qDuqCgCkQgrqNP?=
 =?us-ascii?Q?KUpdB7UK5sNw15IOXvVw450RkKhuswXxbQYjfo8d88FF58pRR5t84x0EZsD5?=
 =?us-ascii?Q?+Pn2nv3T990mWZDSay/u6o/RyulRtEDHM8cDc7Z3oi7+46XJWb1Vt0445Ig2?=
 =?us-ascii?Q?JgeSvHtjPvbSM5bPgQBE92pZLR13f3JRc/AefgLWrOcMCZK2HDb3d/YRGOQw?=
 =?us-ascii?Q?leW0DnVl8vqW0FM1oTQq5UzrGSs7fTyxvaEq8CI8TTOu/2fGaCiXrSojqhWX?=
 =?us-ascii?Q?OMCjRVd+pndO7mHWA74+sLUpfse7q68G6+G8Ji31FQo19aXlbmf87reQ/N+n?=
 =?us-ascii?Q?WkZA3GOR0q1fal/w+pHsY7as12L1ZDm2EjBMCuUv5js4TQxeErw3PLvRENNc?=
 =?us-ascii?Q?jJOJFrNEspJLO5WKKcEEPowlgA881M15U8FOBY135ycghzD2eN+NH+G3RMKs?=
 =?us-ascii?Q?0LQzFKukGd1Jy+46Fy0oS1uKg6f4RI5qS+PpHpZHd1fmFqeo2qZKBIU/eqlo?=
 =?us-ascii?Q?nczoIGe2QY0itnCGvMh7BOykBIlcsLAglBAhYKZUYkjwDnN77mo14ovie+DN?=
 =?us-ascii?Q?u2DD8C9OgeUrzk/iw5fWQbmplcVRylZ5T8b3BsFNj6Jvcui6h5D89HUSvC/L?=
 =?us-ascii?Q?WZx1TNYIMR4SsazZ6O7Xu9dGRWmXR+1O3rfdnuAgTReExjXs0PGFI6CneH4z?=
 =?us-ascii?Q?S1tM573oV8yaUxwsXRDlGf/Fpz4FAMEB18xmc/U6CK9ZPJ7Xg5ioNqdENbFb?=
 =?us-ascii?Q?XvOiB4+AQu7p12ACLBrKQfKl4huL9k6vvsFjG5Onh8s1JTimMw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1x+8Vj/Au7n3C8mJ13e/pAXdAY4tn/qj3wAo69vmD7AxB+pGjJb3LBKLoGH2?=
 =?us-ascii?Q?hkFNhEuLpT4rGFPw5fv1TsUTlnKG/DhgYOQfS+r26QAPSgjOuAdTGc+krFk+?=
 =?us-ascii?Q?IZIXYiovXgwHXm1lP1KJm+KFi0PCaNe3bwNYBmh/Po/7c/MqwF+TlMPeCgMb?=
 =?us-ascii?Q?BC1ZXq2vtM+vxWc3SYkgTqKyEjR9X4IlSuhWipH8WaIECMvf/59vP92REdoC?=
 =?us-ascii?Q?HbxDTchm7JHzYIMK9Kvz3XYiH32vx84VnwBIHsDidzWfe32UwnEYALOI3J6h?=
 =?us-ascii?Q?kLSO+Sb/vAVUniArhvmpGWFYp/XzhwFcXnDBDQQ7vZQ/n44P2S+QuKrCnsie?=
 =?us-ascii?Q?Gmr1U0iDiBWY+C53yllkcHN9HI2IuafQ0GQbWTr8mnrvwUkRag3uA+BF18nj?=
 =?us-ascii?Q?yju7ysZqi2Vfa5nRNx24Y5zkcR8BGNbhVfiR2BteKZ/tTe3XG53R3LJGr42g?=
 =?us-ascii?Q?5hbm4Jght17SxDe9PqLMGSl3YVTh6YFIoocE48LzPE6cp1dwui7z7cxYTyNF?=
 =?us-ascii?Q?l2nwSVWAbXlclNYuuZFM1DPf7OBQMvkqoJ+bvUulRLkIjzJNt8xnYuMFFBRd?=
 =?us-ascii?Q?yy2ra6AY7hHHIPVvBHmMxqM7p6s9DgZOQ3Vr4JFTvJp6+PQAfjVFVulok1N0?=
 =?us-ascii?Q?yN4idHUbdbdOi89rqGxIq40m5z8TTvCZ/y1BlWdsqCzs5QlOwiEVVzrpNUor?=
 =?us-ascii?Q?fxazJOIpnSGPIWAKlL4jjH9X/ARF559gcRLjK1kWKbyZn+QpP6l6T0vaGsrj?=
 =?us-ascii?Q?uK27dz22ifl0EGDrasuvhNklS+yptmD88QsV/o43F2sE0FTMSPG/y3t5gEe8?=
 =?us-ascii?Q?W3KL0FIySA3VyydLD4sqdjHdWDZ8BoHf65eHsT060kkG0MGHwXCJ7y9rlb98?=
 =?us-ascii?Q?12fI57yuneavzthEtWcB66FQqL8mBIS46uCqYyMbwSCoY4V6pczH8qf+VFqb?=
 =?us-ascii?Q?DD6GXm451jA+3o3IH4vye01RJLYf9nmxCaGpXK0emylyXZQeq3mIeo/fZgCG?=
 =?us-ascii?Q?qXTqScHp3X0t+Mkt6cssmk9wWqE/cs+11PV2hETx+qmMGVaxn5jZbvk1EQ8p?=
 =?us-ascii?Q?vm8xJ43baBYMVf0DZN3Kp2M44tgq2k+Y0Mw4xXybKQDJhbxkGbL7QWCJngGP?=
 =?us-ascii?Q?hP7IMc3PR8C9sgZ6NSAWsuiDBb0oqZVX4ababBGygglrxVdqb2gQhCVKJkZ0?=
 =?us-ascii?Q?kraX/eBsi70VOo2HLZnMkcz3yynxOwyJhgEjWhIFqd9qu/TRqFDZw8eEr/4V?=
 =?us-ascii?Q?NiCCwS8ecNcLPLcmVOnAp5CHfxbBd8tK0/TmDm5+CAM0v8iI9UjvZN2LV6iP?=
 =?us-ascii?Q?iBU3GIZs+T1tSpKoQabFSNYx1EaCUxONsRiXJq4wjYFaEpMDbGcgMugFEdCR?=
 =?us-ascii?Q?HJkPpi5gDRthL0Y9NOhSag2RlmF+Fz/dYc2wSu59waGoA4fA3IGwrtbfIYON?=
 =?us-ascii?Q?YrfYj3KQZ7GmvsredUoSoQrscK3F7o0LIg99hwuOOwROEnEq6G7OrH18VTRb?=
 =?us-ascii?Q?WElRjbmcOrjPUiPrCS+BZUxWP0+4qMdj01HX4YLHkEwbUcuiJEtoSYddbc/Z?=
 =?us-ascii?Q?VJQCPzDRp9mjG4LeccNns5z/eGMFp9ruxhaAUCCbT7SxDeyFXj/9VkRZNG/w?=
 =?us-ascii?Q?aQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7450fe7b-d6dc-4521-8875-08dd7dbec588
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 14:47:27.2277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TlTvRHzfiypnM1/TdppmVn5S1Ygn0bdFYb7likCVEJWHTWhl/xHKYFIQ+226zuAW1oUArJ4LB1jIf9kVrlrNEoo/AOY1jfknGmM6I0X1VEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6340
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744901260; x=1776437260;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jLp7Efdccmr9fS7UskIBPjVq+M2FCrAe8/W6Uzffq8E=;
 b=cJLEQSk/RNvWMcqpspr08zRWoKjqbK9J49eyHgVT/qRaT/Kd6AoFxHmD
 SRD6adAGPI7+k9H8yQvqDIHyFxFtCiwgdnDBV9l5hk9/Gk/zZqc5rOHec
 PhgM5eTdrTMTRxIYyC9W947kXgxK5ZChL89XkaYuOZn0fEkgiiyxrmFg5
 WLA769HGG7brgONBXg4N0Jjdrzzm2mpYXD7LWSo/6ayBEnm78XX1quLh8
 cEzOxf3J+jK3IDvWnzh/6lrShS8bIG4gEIbMSf8biLKC8AJ/OUE+Sh3y8
 g+/2GGklj7ImEA29KL2l+eORp3HpW9brcWu7PCN7DeNKvPFVOuEu/cjOQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cJLEQSk/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] ixgbe: Detected Tx Unit Hang (XDP)
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

On Fri, Apr 11, 2025 at 10:14:57AM +0200, Michal Kubiak wrote:
> On Thu, Apr 10, 2025 at 04:54:35PM +0200, Marcus Wichelmann wrote:
> > Am 10.04.25 um 16:30 schrieb Michal Kubiak:
> > > On Wed, Apr 09, 2025 at 05:17:49PM +0200, Marcus Wichelmann wrote:
> > >> Hi,
> > >>
> > >> in a setup where I use native XDP to redirect packets to a bonding interface
> > >> that's backed by two ixgbe slaves, I noticed that the ixgbe driver constantly
> > >> resets the NIC with the following kernel output:
> > >>
> > >>   ixgbe 0000:01:00.1 ixgbe-x520-2: Detected Tx Unit Hang (XDP)
> > >>     Tx Queue             <4>
> > >>     TDH, TDT             <17e>, <17e>
> > >>     next_to_use          <181>
> > >>     next_to_clean        <17e>
> > >>   tx_buffer_info[next_to_clean]
> > >>     time_stamp           <0>
> > >>     jiffies              <10025c380>
> > >>   ixgbe 0000:01:00.1 ixgbe-x520-2: tx hang 19 detected on queue 4, resetting adapter
> > >>   ixgbe 0000:01:00.1 ixgbe-x520-2: initiating reset due to tx timeout
> > >>   ixgbe 0000:01:00.1 ixgbe-x520-2: Reset adapter
> > >>
> > >> This only occurs in combination with a bonding interface and XDP, so I don't
> > >> know if this is an issue with ixgbe or the bonding driver.
> > >> I first discovered this with Linux 6.8.0-57, but kernel 6.14.0 and 6.15.0-rc1
> > >> show the same issue.
> > >>
> > >>
> > >> I managed to reproduce this bug in a lab environment. Here are some details
> > >> about my setup and the steps to reproduce the bug:
> > >>
> > >> [...]
> > >>
> > >> Do you have any ideas what may be causing this issue or what I can do to
> > >> diagnose this further?
> > >>
> > >> Please let me know when I should provide any more information.
> > >>
> > >>
> > >> Thanks!
> > >> Marcus
> > >>
> > > 
> > > Hi Marcus,
> > 
> > Hi Michal,
> > 
> > thank you for looking into it. And not even 24 hours after my report, I'm
> > very impressed! ;)
> > 
> > > I have just successfully reproduced the problem on our lab machine. What
> > > is interesting is that I do not seem to have to use a bonding interface
> > > to get the "Tx timeout" that causes the adapter to reset.
> > 
> > Interesting. I just tried again but had no luck yet with reproducing it
> > without a bonding interface. May I ask how your setup looks like?
> > 
> > > I will try to debug the problem more closely and let you know of any
> > > updates.
> > > 
> > > Thanks,
> > > Michal
> > 
> > Great!
> > 
> > Marcus
> >
> 
> Hi Marcus,
> 
> > thank you for looking into it. And not even 24 hours after my report, I'm
> > very impressed! ;)
> 
> Thanks! :-)
> 
> > Interesting. I just tried again but had no luck yet with reproducing it
> > without a bonding interface. May I ask how your setup looks like?
> 
> For now, I've just grabbed the first available system with the HW
> controlled by the "ixgbe" driver. In my case it was:
> 
>   Ethernet controller: Intel Corporation Ethernet Controller X550
> 
> Also, for my first attempt, I didn't use the upstream kernel - I just tried
> the kernel installed on that system. It was the Fedora kernel:
> 
>   6.12.8-200.fc41.x86_64
> 
> 
> I think that may be the "beauty" of timing issues - sometimes you can change
> just one piece in your system and get a completely different replication ratio.
> Anyway, the higher the repro probability, the easier it is to debug
> the timing problem. :-)

Hi Marcus, to break the silence could you try to apply the diff below on
your side? We see several issues around XDP queues in ixgbe, but before we
proceed let's this small change on your side.

Additional question, do you have enabled pause frames on your setup?

From 6bf437ee12b4ef927a9015b568654cf7d8cabab2 Mon Sep 17 00:00:00 2001
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 17 Apr 2025 14:42:45 +0000
Subject: [PATCH] ixgbe: don't check hangs on XDP queues

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 21 ++++++-------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 467f81239e12..06c62ec445b5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1263,10 +1263,13 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 				   total_bytes);
 	adapter->tx_ipsec += total_ipsec;
 
+	if (ring_is_xdp(tx_ring))
+		return !!budget;
+
 	if (check_for_tx_hang(tx_ring) && ixgbe_check_tx_hang(tx_ring)) {
 		/* schedule immediate reset if we believe we hung */
 		struct ixgbe_hw *hw = &adapter->hw;
-		e_err(drv, "Detected Tx Unit Hang %s\n"
+		e_err(drv, "Detected Tx Unit Hang\n"
 			"  Tx Queue             <%d>\n"
 			"  TDH, TDT             <%x>, <%x>\n"
 			"  next_to_use          <%x>\n"
@@ -1274,16 +1277,14 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 			"tx_buffer_info[next_to_clean]\n"
 			"  time_stamp           <%lx>\n"
 			"  jiffies              <%lx>\n",
-			ring_is_xdp(tx_ring) ? "(XDP)" : "",
 			tx_ring->queue_index,
 			IXGBE_READ_REG(hw, IXGBE_TDH(tx_ring->reg_idx)),
 			IXGBE_READ_REG(hw, IXGBE_TDT(tx_ring->reg_idx)),
 			tx_ring->next_to_use, i,
 			tx_ring->tx_buffer_info[i].time_stamp, jiffies);
 
-		if (!ring_is_xdp(tx_ring))
-			netif_stop_subqueue(tx_ring->netdev,
-					    tx_ring->queue_index);
+		netif_stop_subqueue(tx_ring->netdev,
+				    tx_ring->queue_index);
 
 		e_info(probe,
 		       "tx hang %d detected on queue %d, resetting adapter\n",
@@ -1296,9 +1297,6 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 		return true;
 	}
 
-	if (ring_is_xdp(tx_ring))
-		return !!budget;
-
 #define TX_WAKE_THRESHOLD (DESC_NEEDED * 2)
 	txq = netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
 	if (!__netif_txq_completed_wake(txq, total_packets, total_bytes,
@@ -8011,13 +8009,6 @@ static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
 			return true;
 	}
 
-	for (i = 0; i < adapter->num_xdp_queues; i++) {
-		struct ixgbe_ring *ring = adapter->xdp_ring[i];
-
-		if (ring->next_to_use != ring->next_to_clean)
-			return true;
-	}
-
 	return false;
 }
 
-- 
2.43.0


> 
> Thanks,
> Michal
> 
> 
