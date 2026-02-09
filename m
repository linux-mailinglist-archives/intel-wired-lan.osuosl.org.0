Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QN8JDh2tiWndAgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 10:47:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B65B10DBA5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 10:47:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5252D608F4;
	Mon,  9 Feb 2026 09:47:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R_gvbiQBZ3AY; Mon,  9 Feb 2026 09:47:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB96D608FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770630422;
	bh=kVEEH94w1gNR4cylsuk+zUYsXgYnjffdg5Z3GgckVl4=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AHStn/FHlsDIIqMNUD4nPSrNaBejAZhQQ8KsQNI9QyzbrgM2IFavZ6kl53o646aWG
	 HATPYg4LFPXdr8hvNX6fSp7yee1L0nPc8FSukw3qglIZKv1+JfQrA63q0Sqdmu0Dm+
	 Q9L2sTrqeGqgLRWynMCRnhJhjbgVRw8NwFzFmPbFylzU+5wpkyNrRCtaEDJ/El0MEV
	 TjKyX7ceK+nDKcQL0zlcGtDBzoMGLshmN+gP4FyetHd0STdWEObKTcSNz+RNEov0rc
	 ICbfmzN0qI8mAoeziETbj0S2ye7E41v3VWGFcO88NzGFTe1dVOG/e/yBkr8SlSq0vC
	 zGh3XmrRKE0lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB96D608FD;
	Mon,  9 Feb 2026 09:47:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 792D8219
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 09:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 763A5608ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 09:47:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vGI43m1FrXY5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 09:46:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 970B8608E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 970B8608E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 970B8608E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 09:46:59 +0000 (UTC)
X-CSE-ConnectionGUID: cw1GVM1FTu6BL4Nsx5yOgQ==
X-CSE-MsgGUID: j+6FK+ShTlmSKbec8lxHow==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="71803215"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="71803215"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 01:46:58 -0800
X-CSE-ConnectionGUID: Kg077jILRIiqPButfqHf4w==
X-CSE-MsgGUID: sgLhFFoWTpyPbsyHcZm++g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="241709337"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 01:46:57 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 01:46:57 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 01:46:57 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.40) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 01:46:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wlraNrcngs2UsNrLAHL0WUznQpiWT5l7RvruGi7gRwmBkLHulPMOVxBtdoxbGJOtBZtxke3yErsZ/oKwCTgK6DWjNdnv1mIBy1ULcbc4+pnV3UkCY3gi+pGBk5cnU9gIic8JrOqdISvfuivt12BJaAljtyC/x1DtoNC/iKUhQ+mPWw0tA/Kw90X1WIA2bpdFXpZErApGUj4n/LBjmjVAH1g4dI9ygCW5d8FLRtf3dOLa071DEsCbHBz7EHSkdJXrup8YwJP4d8lHaUjfX1cnQUBC6MoAGT1kVbn4xGR4u/iCvkLs9UQHkqGf3cbd5aZUFJijREyDUmLM9BrjYroDIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kVEEH94w1gNR4cylsuk+zUYsXgYnjffdg5Z3GgckVl4=;
 b=olTenkYCaWGBTbbceBO0sLkpPNWIa5t6IKciIgHUQQ6cyTil6jr2p+B8NnsSGf6a4CTq+pbTsH4DfZ6gCUb31zTIj0+LJEbS7HjyZykGCl+uKwI/oG73kYcdxvBUw3TGGyFNd4dID4lPb4aJsRPrM+Qr8S2KvZLHivDkg0gVG2TsXv5F14rzGLOG0a5WMjb6xHwTAQ3qCvTCUyKK0MBkhiehv3G1DrCVSoGI4WnIid7Z/Nd7QDRNe/ek0RfxvRqYBziQvQcmA6olh9qlxTBdADGcqQWJqMkgt0M+yjAuiRuSCGesTSmPvTfblPi2PhH6xTnKilQosiJViCPk4e9OpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH8PR11MB7095.namprd11.prod.outlook.com (2603:10b6:510:215::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 09:46:54 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 09:46:54 +0000
Date: Mon, 9 Feb 2026 10:46:39 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: Vladimir Oltean <vladimir.oltean@nxp.com>, <bpf@vger.kernel.org>, "Claudiu
 Manoil" <claudiu.manoil@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 "Stanislav Fomichev" <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 "Martin KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman
 <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, "Maciej Fijalkowski"
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?utf-8?B?Qi4gTWFybGniiJrCrnJl?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aYms_0wdZQ4AwRc9@soc-5CG4396X81.clients.intel.com>
References: <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
 <20260205124638.hxzvjiocephzlrk3@skbuf>
 <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
 <20260205134046.pggwyosutj7ggi4i@skbuf>
 <20260205175408.30ab72a1@kernel.org>
 <aYWoBRmt-lcM_JkG@soc-5CG4396X81.clients.intel.com>
 <20260206185735.787fb0e5@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260206185735.787fb0e5@kernel.org>
X-ClientProxiedBy: BE1P281CA0426.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:83::11) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH8PR11MB7095:EE_
X-MS-Office365-Filtering-Correlation-Id: b57873a3-18ea-4ee5-5d1e-08de67c0282a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|10070799003|366016; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EHVjm004q00Oe4BWJ9+RLeZiSftRY+3x/Xa1CietqzOUEHXnDTdE0MBzcrvy?=
 =?us-ascii?Q?cSvWou7WsJA/e0OfAYdct8GbCUEt7B8Mw12/nhm7+WKNfzeVblBNIDw1ENUe?=
 =?us-ascii?Q?uMPsIJ9X7TYIMSIdBDvPrzsNaIcVyvPtEtX3SpDWKHX+fg/GnwAGIAPe6dOf?=
 =?us-ascii?Q?KuYph08CKfT29d7uLYDo1Oy9by4AkA61+CMUGEzXzZ5pCY9r05Xf3dkRu0Vl?=
 =?us-ascii?Q?gU0UxMK0x4nWgfvt0DlpuWvszap/l0X4thq6GBIsqqMTTfJ6v84TAnvVtkKd?=
 =?us-ascii?Q?F0CE76hPF4+IBjieKvRidwfUc204vULzw7oDZuQamxQLT2CBwCzAS8yJSWF+?=
 =?us-ascii?Q?eXNl7ZG4tqIIOFy2GbicRYwoefZUiUzHOC16XanIloHVIV9HDcsrUtnErHMG?=
 =?us-ascii?Q?4grmJTgSPgRG6O/F5FolPbCWlHZ37FwHns2AspygYXkMhXPA1rQZoZGsjJY3?=
 =?us-ascii?Q?tbnQiGqjRxZWkRvFRmQoD8tjjq4HHtGDQpOsmv0wZoPX1vYkUcl3bv8wr9Fi?=
 =?us-ascii?Q?xbmYAlLjyoHbpFdCflzXzp77ESLmDoC4/kH/FP93d2TcVWzdJlI9cr55AWU4?=
 =?us-ascii?Q?hmWZMRJU6e+dzep+pze2bgihrgqfj0R2M5BqEuc4ESva65kjdk3j3kqSMJi4?=
 =?us-ascii?Q?X2Kgj062yqkV2P4HL9JOlLQnZGvP4OawcullwGoPDcW1EoHfAU/V4AW+O4/Z?=
 =?us-ascii?Q?7bckPDvrpJMH+awS6EAoe+ZneB3P67O4E67gnuPSX0g5cMTBxmf2Q08R7vCg?=
 =?us-ascii?Q?XfsmfOf9MYH40+kpe5cV/mI4gJU0Xx1O+KlGjt6j/sBxsvvzyoW0/utZSjb+?=
 =?us-ascii?Q?9A4DlrcSGFV+LjmssiY3/51z2dkKKO1z3Iqi2xC/HaSxLEgNwMA6p68//2Ra?=
 =?us-ascii?Q?OT17qusBX2pZ0uPL836SP9BBhZZxKYNE4GJ9koHtT01J4hzF3dfx5fUYVHzt?=
 =?us-ascii?Q?ZcIIzJ5TB9hNz/APsx/OpmD7QZgmhFRpFVDzrgDlGGWfx8Pzu/ugInsuy/LA?=
 =?us-ascii?Q?X+ygmnlGoi3NwzF6k0zKqEypT2qQXBj9OVw0kGqvnUSuLeDU6Xqf6xhBlsY8?=
 =?us-ascii?Q?0IRV/N9AoD8jrP1EsdvR3J2gYETbRI6NkaP8wi/hnhQfkhhRNwGMdZFr4QWu?=
 =?us-ascii?Q?WyVMuc53WkwymsBFVMz4knl9S231grJp/IqvY2SAwNoVPKoVTVbveiNkSEx+?=
 =?us-ascii?Q?VMulR904Fyk8rfAoCT2cVGNGOW+kpu2cuCdUcayGFqXuYZILYKGwbceNII5a?=
 =?us-ascii?Q?4pjxzz29nwtabW75ieY3WEQx3SIjKELhtkKmiBiUSX5J5tRBwL9xj3logFNE?=
 =?us-ascii?Q?FAOc5KoGrxfzLkIF9aein9UL2rP+vGhFQ4G7NbAWBdtVnNETptTZuD4hKBtM?=
 =?us-ascii?Q?ap5j80mM9gw2gPisSPy/Jl9Ql1i95yHMFGA5ILQs88wWgk/YLyzmYHeIoziF?=
 =?us-ascii?Q?2duqh+mBsL+aAyCKMuUYQNINVW5dQVelDkSXTt2mVHNUPYHdWolVOwSEOiDs?=
 =?us-ascii?Q?4WeRRDwHrOulP4pOqnZvyMLApItneyMu+wlw56R1wj4HSktxGVw6nJJxM6Zj?=
 =?us-ascii?Q?sAjJtqDL0qLeYgmluY4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(10070799003)(366016); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1se9shbdmhhmhFrAptnOji8FP0+KB/68G9HjM1AevAsqEQ0x0islVzYTNndg?=
 =?us-ascii?Q?HMRAXlYbRKwQN/T3ctdNV+UkPDXygzVOu6DeF7LWCpBdPufoX3KIaMZbrBUR?=
 =?us-ascii?Q?H7tUj1lO50SSyZ5tbPIqvXL22HpJDTFyLGI5CadqoLkRd+YNm3GJAGI/v+yO?=
 =?us-ascii?Q?g2X0gZaiRPIZoM0/p640rN/g2QIN833igIOMY5OgTcAq0lJh9byF6xWSKZI/?=
 =?us-ascii?Q?FooWJcNkQiyQLu3i0KYkF/JDUYklm4Y1Zp+ZJBIdALUubdr7QXIK/2FUZiZa?=
 =?us-ascii?Q?6HuBT/QjP9NYS3kfdje5QYQ/6BPlpvzIsMz4SQW9wcuYiyOPpPIKRFadowkg?=
 =?us-ascii?Q?i5V0Wi7nUiS+SGdcPQUhVV5hsqHAEUmaDWCXL+WwF8SABkyX5V5ZKnrZZWLn?=
 =?us-ascii?Q?jE4+92zeLQQ+YbEv2BmqIRSWRotbkROQA+NLtUeB7xvif62psBcuvgv7DKX0?=
 =?us-ascii?Q?+BaW9YkeTZYUgALr9vfvq41R9JlCWd+86O7fNc5aJORZ7gHk7CfOgH6tVKYV?=
 =?us-ascii?Q?WEgiQ2PW2BT33UzhPK53Bi2QKdHljng8YkL/3Mngg+WougmbEd0Wsvgq7cZh?=
 =?us-ascii?Q?ALqowj6UmV5C9ihfNaZJqUyqZnqOsGm5kg8E1pkyPKPzdZzVZmlHIl+1Qcmj?=
 =?us-ascii?Q?imxWLZWzIjmbcJ0H9RJZKDhQ4AaWO/o8hO3tDPgQMVZi8bmFS/x2184hfEu/?=
 =?us-ascii?Q?QnVr5Vv6MlhbmTTpOFB9UeAN2r4XWDPrZn/MIE64bu/68tzfJ9WHiMV7+yY4?=
 =?us-ascii?Q?STH1qrqHgaWmyvfwepadAPiFxx1QpPpMXSJh/0P5VdnAKrzw/a9TWFhWOchF?=
 =?us-ascii?Q?i8DF/lnUdZBDk/dGBwuoXQqSfSzpnHBix6EUtfaBXauxsLncdl2/sBcemHuG?=
 =?us-ascii?Q?gmqRP0wSR/FQqTCKFW0smE2eHJMDnoCSdzxYOYuKfsJfw/iE16jl8p1/+O+D?=
 =?us-ascii?Q?zB49U17/qD5tWVbYvsdmYPuokTl0rMUSTs2LWwRz967IRsGp2fTKWelAMr4D?=
 =?us-ascii?Q?W9Eqrbq4FhFLiPommtGwt5RpwTtNuZ0FiS6MP9dD+38kuEB+cREBQl+Fuqvr?=
 =?us-ascii?Q?oFR9f5kueLTzO6T26S/7iyxfOk6yetBmT5nrlmD7xuI7j5eQn4VUimCrDe9N?=
 =?us-ascii?Q?9f0/mQ7H24Up5FB9y2f0sy+qgYnEFILzXHbtYlca9WDKxqj+ljincAVajNvB?=
 =?us-ascii?Q?nUw3QFmVrc/ZJPxTCmzqNI8D1edmQR8gszSwGdAWh9rZfBb6no0sq7yhWTL1?=
 =?us-ascii?Q?pxZIrJBrF/zgOWY6Xrcw07JyzmScjglIUssjhnpS+gRkfMVmexvM6sQPiyWh?=
 =?us-ascii?Q?BmLy9G6hkgAI4wgLtU2kd9r2b/qnQXb7z5oBpYTHF+gOi/7rmfXQVr6Si7WU?=
 =?us-ascii?Q?4oY3M8igZCD00n/w8FGSZ/kBLbPkrI8xoph32r8tcujHfiCCMy7cMKE5vG5U?=
 =?us-ascii?Q?Ucz9laGZNeNnbfL2dhnVmpMrvdwh+BiZ4jr70WRZwEv7lknHFqbQvnNr1d4O?=
 =?us-ascii?Q?vbqd4gIEOGu7Gi0jz1AtFm8MtRgaLlaImp5ZqTP5BjoMpX8dcO4HnlV7Ltfd?=
 =?us-ascii?Q?vZFjWcTX4RfNkWrUw6iNv61Htnp0SdWbT10z6ZtZGYEgOGbZ1WwwPHldGVce?=
 =?us-ascii?Q?+aM1FUYwAQ8Exekf2fRirnouvXcYBQgTO87jhbE3Lc0Sx4r8uzzmVGZjaOaL?=
 =?us-ascii?Q?nREwYgzHvjzO9kbfr3dYn2/NLj3txc28Aj76XBim2/khacBf3h3FHL5GvWto?=
 =?us-ascii?Q?2wMbu0XRXRyRUMWymqXI65xeCPF86qFrXpONGfIurKBR6J7Ym9uJ3h9MneYO?=
X-MS-Exchange-AntiSpam-MessageData-1: aEZv0Gpamx2lIXVecNGp5zWA37+HNoq1vF0=
X-MS-Exchange-CrossTenant-Network-Message-Id: b57873a3-18ea-4ee5-5d1e-08de67c0282a
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 09:46:54.0339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: agNcyMPwS2wKVpWKwSEcrTSs4S3/dB8izNInPmEXFoUY3xsZzhv5H7EJX6A3Z9d+AOjV5Ib4XJvc3jfo5K2jk7QmmOuJh53nFk0zDJykH3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7095
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770630420; x=1802166420;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RUxfyDN/TJNR15GhjcrMgNnAF+rwbf4mvyoQfkjrtLI=;
 b=SEQk4/VuUYJ/nfiVxM8548Bm91GVfzaf9/s/JDX7V7f2Xq/0PyCLQ/Uc
 dgmzsJ+i5Q7fki8465wBbTaS5af0HJpp7DT/WRq0/99VivijXyOrWkJAk
 5zuzAGw4KR1AUESw+yHKoQrp6yVBlMMLV9fuxG8fVUopPrwn+JK79+H5z
 bescnt6+OMc7j8A+BrZES+3YLwmjkdLl6fH0ktmT11YukziKJHvMtsgi5
 rm0wWt9LFhWSVuwrRyVyMYsTDp95rTRD/DUbtbbZ77a4dLz/mD9pwT31w
 BOA2iPjwfbMsuccao3dS8tCHIC9Y46NecfKgEdHRHg6MZZsAOLdBjjbCK
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SEQk4/Vu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
 XDP RxQ info frag_size
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:vladimir.oltean@nxp.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.c
 h,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.973];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,vger.kernel.org,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[soc-5CG4396X81.clients.intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6B65B10DBA5
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 06:57:35PM -0800, Jakub Kicinski wrote:
> On Fri, 6 Feb 2026 09:36:21 +0100 Larysa Zaremba wrote:
> > > FWIW my feeling is that instead of nickel and diming leftover space 
> > > in the frags if someone actually cared about growing mbufs we should
> > > have the helper allocate a new page from the PP and append it to the
> > > shinfo. Much simpler, "infinite space", and works regardless of the
> > > driver. I don't mean that to suggest you implement it, purely to point
> > > out that I think nobody really uses positive offsets.. So we can as
> > > well switch more complicated drivers back to xdp_rxq_info_reg().
> > 
> > As Vladimir has mentioned, if the driver does not use header split, frags will 
> > have a tailroom of a size of skb_shared_info, so tail growing does work in 
> > practice.
> > 
> > Allocating a page_pool buffer (given XDP queue has one attached) is certainly an 
> > option, although I am not sure if anyone needs it. Furthermore, growing tail 
> > would still fail for a single-buf case.
> 
> sbuf is a different code path, sbuf has precise frame_sz per frame,
> not a single value in rxq, no? Don't mean to argue, just making sure
> my mental model is correct ;)
> 

You are right, xdp_buff in sbuf case is self-sufficient inside of bpf ops. sbuf 
mostly requires memory info from XDP RxQ for proper xdp_frame handling.

What I meant is that intended conditions of failure to grow tail are the same 
for sbuf and mbuf case, the last (which can be the same as the first) buffer 
needs to have enough leftover space.
