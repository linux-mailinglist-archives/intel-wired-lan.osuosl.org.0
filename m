Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJzAHN2ZhGmh3gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 14:23:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7906F3305
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 14:23:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0942B41184;
	Thu,  5 Feb 2026 13:23:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eK3dS3KV7F22; Thu,  5 Feb 2026 13:23:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5943541188
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770297817;
	bh=zvM4ml8HBjw4sQj6EZh9CZkVOn/uKR6EZFs7m7+g35I=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G8w+lF7zsSRMbcPPVZZqGkUnRls7GuM/qgfjW6t6bn/kCq0hsswz6EebBp5CZHUBc
	 EXrGVL3uZgQU+cc6kwS3QNbCSPMw4B3wgHFIFOgMyrpwia9hk6TwUb4KXSWjHE1Ykv
	 mhXiU2G6bZgwOidXp3h4ieC94RlFN+Qi7sFRJXhtq9MQbem+iA3/CZ5u84us4zHvvV
	 n2wczK2rvHgfQFC5bZAZPTWMUqHuhXE6vElAcLa+dovuOSUA+pkTPK3pwh3kAiNFOI
	 24H0Xgdrny10EHXHH0orYu1sDzWO1xbIQPK2UzQOoVTBh7SHYRLUoDDzZ1X4NeYIIC
	 4j0blGhMrIqTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5943541188;
	Thu,  5 Feb 2026 13:23:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1590217A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9EA784112
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:23:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rZczTxMCpeK5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 13:23:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 848C0840FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 848C0840FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 848C0840FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:23:34 +0000 (UTC)
X-CSE-ConnectionGUID: 02xgA7wFSeSMNDDkAP+c4Q==
X-CSE-MsgGUID: GkCVI+d2Qlq4K9uF4RZ69g==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="74096078"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="74096078"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 05:23:32 -0800
X-CSE-ConnectionGUID: HTN/bUj1QLqwkIHcHZZEeg==
X-CSE-MsgGUID: BhlQbaYgQb2zTS2tiCW0/Q==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 05:23:30 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 05:23:32 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 05:23:32 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 05:23:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yMCespKyyO0+IHvSzlq0rqii2a8V5P58s+angYdTV46dr/cwl7ioMvduXN/F6PjkyZrLrgMTTh79n3tkls85YXfcBw2UV4RUXuyFUZWxMpIHdleUSeBWv51lssOpdQD3hDPcPT4Ydv3CobYswC9Oh/UPVdzFvZz6QblZ71oIiJsVq0D9JIUhRNMyPYm+DVwxH5HgLYO55bE6BAnmxV0IomI6z64vZVvRSZvdtfxOeD1LVLJfwddzIJAj1Ca5aJ+mSOdA1mTfxZEvzr2lnx1bGx3onM7pHTXgdxefsRNe7FmUT5SrK8vQ2aahEVG+Gowp7BOvx7XhPL2dyBkQweQraA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zvM4ml8HBjw4sQj6EZh9CZkVOn/uKR6EZFs7m7+g35I=;
 b=pPyhHYqvM9vdEjg426skXLIGQPOMOULdWDgyx5CN28gFf4vRQOr14Ld8qD5as8B2lfivZo0kveEAwXjYZwOEGxJwu9IyygjNO+J7sy+l1QwZCBZXIZv6VbnXxPV1LqKxc/iCHmZIWTXQPQd075Nl39zGdxfcHDm8HIwQie5YRU/v6EHh2J2omUTUTGgHbphucA/EblyWYrSh0TOrrdgRUt42QmBOPRN/9zT9lDdiaXXt+gEGAHt7RyypjCC8o2kscOtBmFMOcTOdGjvcZi6afK4Y48xbLWVYJrxX/WJDTpCLpSbxuhzluveUY8jSSzTeYQx+p1z6CIibFO/G+shlnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH0PR11MB7586.namprd11.prod.outlook.com (2603:10b6:510:26e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 13:23:29 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 13:23:28 +0000
Date: Thu, 5 Feb 2026 14:23:15 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, Wei Fang
 <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?utf-8?B?Qi4gTWFybGniiJrCrnJl?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
 <20260205124638.hxzvjiocephzlrk3@skbuf>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205124638.hxzvjiocephzlrk3@skbuf>
X-ClientProxiedBy: VI1PR02CA0073.eurprd02.prod.outlook.com
 (2603:10a6:802:14::44) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH0PR11MB7586:EE_
X-MS-Office365-Filtering-Correlation-Id: 35afce3c-a2e6-4918-d364-08de64b9bffa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IyiB5SZNhrJC6S8kadwWyBqC3RUYgWrtYufaWVMLo4gVx8Vu3qLWw4rx6PbE?=
 =?us-ascii?Q?wqDyMz+pRd7TYupLSlz/MAIuBi7qQMem3SGSc6qhPYHcJUTl8yzKjt0CvjFh?=
 =?us-ascii?Q?YWblVNq1tcWVdYGT069tQ48o/C0CXK3BSYV7eBCWlqTTZkh9/DBR/oBxusQO?=
 =?us-ascii?Q?+WTgCYrzEoGkYUT2KgLlia8WcN3zpsGtd3i5WE2nOgvdv75a/EYCl1JZyFFS?=
 =?us-ascii?Q?WoguB5tNmnzOZ0PHGYrZD+wwOMj7Z32M4kmuXfjdhaH5rDg7tNrYJ4c3/o1f?=
 =?us-ascii?Q?r+Yoyg/NC3nId/k1xHETAuxxzWWh0v9EjjI5tVc435JOVj7+F2rR3vfr7R92?=
 =?us-ascii?Q?wv7gBbhHt7VKWMMef8o44+huEUu33af9ZZBXKdzdsqIgDYMQpGn7G2MeOMy0?=
 =?us-ascii?Q?MIM1DPBpQqxE4rs2/mw0CojPzM+Sfc/oMMMxO3//LTzBSTWTc2/4Td552g/O?=
 =?us-ascii?Q?86MFT5D2ojo+AK11x4TQfkQZ79uvEnVa38X76lnI/nguMSbx104F4SIwWmYg?=
 =?us-ascii?Q?DyJ1qYxDzCCUHEl+ARzDANRXZMLkk/WWnCV4DSv8sGNdwmg8LERFJG9KoFXf?=
 =?us-ascii?Q?XQaSKyxIsjKaVdVrYOWSHA0zzso4S/diIGnLj/+b+w2bddMx9FwB4msO+glk?=
 =?us-ascii?Q?CsM6HqZSBcfamwgQWyHylZ6TN7VpjWinRb64tCDaHiF8H+u1Z5OcNEBa8l/7?=
 =?us-ascii?Q?nECS96w43PbOzLlM0QNj/65Yru/1ftPJ7zSrvETZ3qiftbV0kqp4ehSET5BR?=
 =?us-ascii?Q?8qIMhEop6qfNyq1KCZwFVOq1KXa1y0COiHopSab+7JsWsGuIsK9UYh8yP3wb?=
 =?us-ascii?Q?saFboIGxdfuNQika31vtcc9HTfMpCmbtF7j2xLMhFnk2Uo8o7SC83ZJ0QYPL?=
 =?us-ascii?Q?iuO3SS8/9zCh3HcgXxbZzcKDyRAyopyK9RL/q/SrPYVS7YcifFx7pl/RV0XA?=
 =?us-ascii?Q?GfyIAzVwYPJV1c//evI8yqDCvE/jFmzifbyG9tHd2oaECQrNl/iG0z8MoGk2?=
 =?us-ascii?Q?DriwRt3G5l6Vqe3IrUNSJqdq9XXIHWdveKC4kUw2798kU+3FfMMWdEwruczw?=
 =?us-ascii?Q?e1tLNJ+zOXtYQKPORBNK3bIv7Ica9niNEWIElep5b27DZkSwidUi9lhjVP8i?=
 =?us-ascii?Q?LHdiE0sZUrGIDJriiLx6D4ejmhTcIMZq4Rxvr2YErAGMdE86MviENxHrR+Ev?=
 =?us-ascii?Q?P6qUYjSybPZ3utVJ3ePHnb9XZgjlX4VPQCYfog6hZUr8v8neP/jJ14b9vJh0?=
 =?us-ascii?Q?AfxdHbIqO6TT4jvYqfAo/2XCH1tfgWHAf5/WyzJPRthHQTPAmJ/ikmFH3KOp?=
 =?us-ascii?Q?9ecvb5szOxBkrA2wIJ7+1FFNkHtjlg0wqcGHUUPS8CYqUPMtpWTarWwMF/iE?=
 =?us-ascii?Q?PchbjYCT481EVQsbUd8MrBmOPeqKFRzURn7H1glRaTomzXpC5t/N5ja2xQHz?=
 =?us-ascii?Q?8wfXxxpj2DiChIRmD3+lg+50WmQ6+AHhbZelpteRRHYsdNrlCpsxDz8+7GbY?=
 =?us-ascii?Q?4SrQJYM3tLUTpAYcn9PcY1xtrpu5DQDiFqkq4jpLsfluq6C35R6tfle1a1ub?=
 =?us-ascii?Q?POK+y+wphuKQMLQ7jf0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2lw0SlnUEg4RmHybd2IsNNNa6xI/0r3E0yGuvt5meajIfw2wKmPiagrbDIoq?=
 =?us-ascii?Q?f/wUdSleqV3gFUeHWkj+z+OvV9Sq8jT5lIURzZSOf1kdKU6pdrixr2H2GfnH?=
 =?us-ascii?Q?A8FiJVBZArd8YsYu7T2vSFDBuQPvneTmGuYa+uAg3HfIi2arCeRjnb2rBPkO?=
 =?us-ascii?Q?sA7Huc2ETmIoVN93uwh4VBBbGWejXCV6x6BJfa/tCAXtZ1ro9Nc3+iWuoz2n?=
 =?us-ascii?Q?rdjx/V8IWZBSR1LF0EsXpjZP16O2/e3BNebGvzqmpUaaSOGyMse9OMAYGPhn?=
 =?us-ascii?Q?wBtSqCsSpr/3l/gFytb35FzNorI9nN+c5PUOv3/k/+uMh2geIdsNNyJQpJ2d?=
 =?us-ascii?Q?gV3q9sidGtoiJfzoiZvY5fVys32tZFwGPBg8GZMqeFM5up0X/FDwMERIPFDe?=
 =?us-ascii?Q?SdUNhCIL2iH/QbB5hFoYXZF+PyAzUslu7I0ca+pbDZ9O0dz+gT0+m+14YbQq?=
 =?us-ascii?Q?9NB3n62vqCPArhNee1F3PsVANdKvSam5VdGkVb9iZrj5MPO79TO5QdElvRki?=
 =?us-ascii?Q?9XrgwfSQXr7o2xsaMRPdsuXzVGSylWkxtBJ4uyI3GrHlVdhztviBDd+1c9pH?=
 =?us-ascii?Q?hvhmfUf4UaBBMxEH3N1mSsdBthfBHklvBUFR9I3qyVYamogQUDXVzRgkYY4h?=
 =?us-ascii?Q?6A7cH0GJy3wOJlDDTy5nSDohi60TfJOmXv0tJ1dj+3P3cBOvK0s2dSBEewZw?=
 =?us-ascii?Q?jJLcN3oqzdbManPKtbEDQ1aCQHjsTvg0kGNXJLVZyr54Irm6Ihvo/ZS13a4S?=
 =?us-ascii?Q?5ANLgY83KfNFyV1wf0WE/hu+x2OrtZ3O+ZgCLLopK6SEVeWxUIhf33qiirnM?=
 =?us-ascii?Q?9TZuXmq0urflB3u3dAl0MG9Pkpz+tVpHhvHFdHDtwNwOgegA6p4XzUQU/IOo?=
 =?us-ascii?Q?NneRom+lU/VwZKnG0WxTg//70hthotnD/fNMM06dM/MbTJ4wUowccLaE7iUe?=
 =?us-ascii?Q?62ZQKMaldtMkbOwKbB7VF3mkv/vyk2EQCylmY2T9/LOdW3JHVhazdL5tDAhb?=
 =?us-ascii?Q?cu3R3ylJXkAAK423z1VGAhTCkUp6KIT39i3vx8bzH1H544LHmwhMbUEPijFn?=
 =?us-ascii?Q?8vyBVRwTtmm4dWQ6axCC/SIxcEKRCve08tfIuN9mS21S8yC3uA6zKHI+IAZI?=
 =?us-ascii?Q?5+o/GHjry2zUZD6T6pqxzecAmflYcDS7utu2kwjr1p45VdvOK1APUwbj21Y4?=
 =?us-ascii?Q?FwoSz5ZueJOvDrKk5+CrgFxXKLfxedjYc8dDj/l+MXxGLkvkhRDr2a0PrtqT?=
 =?us-ascii?Q?+f9j35L+oMhniicvG0pem4CgMvAOtByaequC7eRYm13oKvnBNN33DfS3p6ea?=
 =?us-ascii?Q?D2K7dvd0J4NN34ohLKTUStEwzTUrk0ZUwgEyQbT3CY291pVXgZ7HZalU8WHJ?=
 =?us-ascii?Q?SMHuwrHAmzmfT24qeqIHXeC/UFuR2qex9zpuxCnBD/xG9HVtALaWIrGNh3r3?=
 =?us-ascii?Q?zh8a3ze7QSIb7XKsrXRKvwdhjwfN883up3asD0+Rt7utyoCqcPdvjXu+jKHr?=
 =?us-ascii?Q?9AO2IZWWAQOE1eg+gX9m9NRKZeO3L5/3vkc454tvKaPopBITfr7eFqcrcrXm?=
 =?us-ascii?Q?cso18wL9AELG7OCFO17S+un9uQmqWX4d13rWhBWXgd4+xRURmFCxls6jtz/2?=
 =?us-ascii?Q?4PYg632sMUZCEKUy3QX1IIdJR1wLwQHZtZO9Vo1/dHpogaixbAfF8TbM5j27?=
 =?us-ascii?Q?0b5uMBKrAEJXM+pGt4cPP0Y3GGadRiD3lYg8a/hYV7nJB1Ab8V1Op71g3FKu?=
 =?us-ascii?Q?xW0clinX8YjgQiifrj/blXdffut9kOqLWTkZV7avAYRIsSk2QahKagNMZmjm?=
X-MS-Exchange-AntiSpam-MessageData-1: VpzxRz4QSi9ayZSxXFvIf3ixp+sO8+pPBHg=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35afce3c-a2e6-4918-d364-08de64b9bffa
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 13:23:28.8481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mGhuwnZvafQwX3J7tGx7ovFdPI6V9gJtzJLfYQKl/4I9WDNSw9ScHXIv0XePnzZbY1wCgt6Z0qE8L8YD9c23QiGOQuhN5kW8MZPe7JoQZuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7586
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770297815; x=1801833815;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=m6S9Ue8dNFm6DzrWiddytObovDjo2gjOdZgp0LOFU9U=;
 b=ByMACDp69f7U9Ecrf/HqcDSZbtWu8O9UoVEwdOEWFm3Xi2/Lo41XKz+d
 wGlMXtQjTRODEmYPFxTeVHPSsphHVuwXwlPOWDyjB8tNYPqeX0uvhs8OZ
 hrDuBr0tIX/+XtBsisEKIXe1JUnCoWpauy5SAA/GhIrg9SiUuA3rbkotY
 axHrrISCuSdcpDqbB6KNFOtbt7loFExZywp6DkUs9pokaQC5iDe5+h+87
 aj00XiUZ9EoUNArdqGt/oO/fRPpqrGGwsmKkI0oo8jFXHXnkD4G0HLWur
 nFC9KI70MpykCxuC05QV5Ky3LY64GJVWjzVpNoqERAmRW8bEzALXbzPIp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ByMACDp6
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:kuba@kernel.org,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.c
 h,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D7906F3305
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:46:38PM +0200, Vladimir Oltean wrote:
> On Thu, Feb 05, 2026 at 01:41:03PM +0100, Larysa Zaremba wrote:
> > On Thu, Feb 05, 2026 at 02:29:53PM +0200, Vladimir Oltean wrote:
> > > On Wed, Feb 04, 2026 at 05:34:01PM -0800, Jakub Kicinski wrote:
> > > > On Thu, 5 Feb 2026 02:59:01 +0200 Vladimir Oltean wrote:
> > > > > Thanks! This is an extremely subtle corner case. I appreciate the patch
> > > > > and explanation.
> > > > > 
> > > > > I did run tests on the blamed commit (which I still have), but to catch
> > > > > a real issue in a meaningful way it would have been required to have a
> > > > > program which calls bpf_xdp_adjust_tail() with a very large offset.
> > > > > I'm noting that I'm seeing the WARN_ON() much easier after your fix, but
> > > > > before, it was mostly inconsequential for practical cases.
> > > > > 
> > > > > Namely, the ENETC truesize is 2048, and XDP_PACKET_HEADROOM is 256.
> > > > > First buffers also contain the skb_shared_info (320 bytes), while
> > > > > subsequent buffers don't.
> > > > 
> > > > I can't wrap my head around this series, hope you can tell me where I'm
> > > > going wrong. AFAICT enetc splits the page into two halves for small MTU.
> > > > 
> > > > So we have 
> > > > 
> > > >  |                 2k          |             2k              |
> > > >   ----------------------------- ----------------------------- 
> > > >  | hroom | data | troom/shinfo | hroom | data | troom/shinfo |
> > > >   ----------------------------- ----------------------------- 
> > > > 
> > > > If we attach the second chunk as frag well have:
> > > >   offset = 2k + hroom
> > > >   size = data.len
> > > > But we use
> > > >   truesize / frag_size = 2k
> > > > so
> > > >   tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
> > > >   tailroom = 2k - data.len - 2k
> > > >   tailroom = -data.len
> > > >   WARN(tailroom < 0) -> yes
> > > > 
> > > > The frag_size thing is unusable for any driver that doesn't hand out
> > > > full pages to frags?
> > > 
> > > This is an excellent question.
> > > 
> > > Yes, you're right, bpf_xdp_frags_increase_tail() only has a 50% chance
> > > of working - the paged data has to be in the first half of the page,
> > > otherwise the tailroom calculations are not correct due to rxq->frag_size,
> > > and the WARN_ON() will trigger.
> > > 
> > > The reason why I didn't notice this during my testing is stupid. I was
> > > attaching the BPF program to the interface and then detaching it after
> > > each test, and each test was sending less than the RX ring size (2048)
> > > worth of packets. So all multi-buffer frames were using buffers which
> > > were fresh out of enetc_setup_rxbdr() -> ... -> enetc_new_page() (first
> > > halves) and never out of flipped pages (enetc_bulk_flip_buff()).
> > > 
> > > This seems to be a good reason to convert this driver to use page pool,
> > > which I can look into. I'm not sure that there's anything that can be
> > > done to make the rxq->frag_size mechanism compatible with the current
> > > buffer allocation scheme.
> > 
> > I was just about to send an answer.
> > 
> > Seems like my mistake here. I actually think adjusting the tail should work, if 
> > we set rxq->frag_size to PAGE_SIZE in enetc and i40e_rx_pg_size() in i40e, and 
> > not to (PAGE_SIZE / 2), as I did at first, but in such case naming this 
> > frag_size is just utterly wrong. Glad Jakub has pointed this out.
> 
> I mean, it should "work" given the caveat that calling bpf_xdp_adjust_tail()
> on a first-half page buffer with a large offset risks leaking into the
> second half, which may also be in use, and this will go undetected, right?
> Although the practical chances of that happening are low, the requested
> offset needs to be in the order of hundreds still.

Oh, I did get carried away there...
Well, one thing is shared page memory model in enetc and i40e, another thing is
xsk_buff_pool, where chunk size can be between 2K and PAGE_SIZE. What about

tailroom = rxq->frag_size - skb_frag_size(frag) -
           (skb_frag_off(frag) % rxq->frag_size);

When frag_size is set to 2K, headroom is let's say 256, so aligned DMA write
size is 1420.
last frag at the start of the page: offset=256, size<=1420
    tailroom >= 2K - 1420 - 256 = 372
last frag in the middle of the page: offset=256+2K, size<=1420
    tailroom >= 2K - 1420 - ((256 + 2K) % 2K) = 372

And for drivers that do not fragment pages for multi-buffer packets, nothing
changes, since offset is always less than rxq->frag_size.

This brings us back to rxq->frag_size being half of a page for enetc and i40e,
and seems like in ZC mode it should be pool->chunk_size to work properly.

> 
> > ice and idpf are fine, since they use libeth for Rx buffers, so mbuf packets
> > always reside in 3K+ buffers. But for xsk_buff_pool seems like all drivers 
> > should have PAGE_SIZE as frag_size? I will let the discussion go on for at least
> > a day and then will send v2 with patches reordered and those sizes corrected, 
> > maybe add ZC fixes on top.
