Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOuTJfqPhGkh3gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:41:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD21F2B52
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFA8F60DD0;
	Thu,  5 Feb 2026 12:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l7L-SkpTm8tG; Thu,  5 Feb 2026 12:41:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C8AF60EA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770295287;
	bh=wX17tvnhQb6/ss1TVQ8V5/raU5Qzzql1hRv7pzr2muU=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9gen28zDxUJGdZ3kVGuhu9x/8OvKXqe3mVURNASnyfzxMkHg0tWt8++s8k1ldA/Vz
	 yPJB+eqF9CGhhRHG2dhh7CC6knD7kiTYFrPwJgSfO3kTeEtCaOB7K5nnBMIM9h17bO
	 LzQxIvYa9PM0S3bDtp0ggnuke9GdST/Bt5YBqfXZqB2bPTftu2lS7wJMYgDwVOttQ2
	 L+lO9ei+VEV8wmTUmso0mQYFh68k0+SODrvzh21fNTCseYVVYsnNLoxpokGc+fF1r2
	 ehrmFc5HJvEvDyUWn+ZJrWYkm2tgku6wPTtIVfnNdGKN4/nOUm+KPq5s4rTKcZiW/Z
	 HU7eFFkMqnFlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C8AF60EA3;
	Thu,  5 Feb 2026 12:41:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2905F173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D13F407C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:41:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kLe4tmf_YHsY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 12:41:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C606E400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C606E400CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C606E400CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:41:22 +0000 (UTC)
X-CSE-ConnectionGUID: dJCnO2iAQD2CG5bt1An22A==
X-CSE-MsgGUID: +aOo6bOQTgimoBJ7qBvBsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82861962"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="82861962"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:41:21 -0800
X-CSE-ConnectionGUID: 4bryPGE+S0K7PHl+K/344Q==
X-CSE-MsgGUID: woVsrA1RS7SeZC1Hov47cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="241181176"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:41:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:41:21 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 04:41:21 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:41:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cfHRsjx1nHh9GawXq6GVYb9LB2OV9Co+hqGcSFii0Oq+kGzvkn6C/6uZmNm5Muum0qQmlIRBj1V3QNeD8eA7/pm5fSQ0R+AmhGuniL61FvihkdCuKoGEJvJISc091z/+FTYEwWyjvDz26ZAL7wvYS+BVZmaFmPixI3TG3Heec4IyWduJzcHMk3jEZ/rHHThKj4RSQyFQvzxIOILpO4NuykqAZtiGC/4QQSH1ekXuj+bVeYYx2imyT9+GZhAtOKT7/XEyhc6If8FGc4Qn2m10tXF7ZeoyOooMZti6xvo5BnnUNw5kCEoxLmWa0yh87eyut0SZOKjSArQeNHpwTj6RsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wX17tvnhQb6/ss1TVQ8V5/raU5Qzzql1hRv7pzr2muU=;
 b=cUiKD0w3JeEHWxEALr65WFUyX3BwkgwcbrEq13PGl/Fx9Og9BOMYJNkNp4g1+qByB/CAuZQqzB0lc9DnBhCjg3yCyxl1fhzIROUjIPEqP8H499J6wRl55EWGqBKMi1FW3MLw1ovE9RrazvSGtn8v9DXkHwbtLRLrsYaV6L2RzHLBwdvVBsO8x3uusMLtzxK95Lv2tq8/FxRUfEyX3ANmAVnD6SCvtolOwd6kneV1g/Na6fG6Q4SYhYhVAYixqm+K8Uf9jKn0Be9Z57fsZIP2EN78W65Y8WiQ4dzyc7nopjC1p5nVysPTzqbz9OzXcIBtc/D9JI0CO8+1xYIuMAS4xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 12:41:16 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 12:41:16 +0000
Date: Thu, 5 Feb 2026 13:41:03 +0100
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
Message-ID: <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205122953.lscemcctayrvszdu@skbuf>
X-ClientProxiedBy: VI1PR04CA0055.eurprd04.prod.outlook.com
 (2603:10a6:802:2::26) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: e535b072-fea0-46bf-2fc1-08de64b3da9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|10070799003|1800799024; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5CMrmQ2zfPotDyTASP2iv85TDHy8AF83qSrGG5+qzYS0XEbIbCieOWSG3Gmo?=
 =?us-ascii?Q?TDm5MY+ANdRkOmSFnvSsex6EZcsP+OaFh7dfI/NvRxwKxMAe2V+ZRGuRukjc?=
 =?us-ascii?Q?xFYGbsdts/R687I+iVc4LKIw4Atw2gc8zZ641VIJ1MLYgTmkKnu0HRaOkPB9?=
 =?us-ascii?Q?odMskmFX/fyfREy1nfdxWWCz7K2+EOCmDiJLx3s7G09+9TFCzAC+tc7TXpYF?=
 =?us-ascii?Q?EDn5w2UroVfX24h7KoUUzpySvL/kTJNDfZH8bgA32neS87sjBo/BMq6C4k15?=
 =?us-ascii?Q?W7TPE4p3Wn6n6xl84ml1S6tbjOkBsl3Q74HYe3ovZ5EGuC/JGfA7Cu3W72MS?=
 =?us-ascii?Q?MbiyzDUbQRiSKU4w0Mqht627ZE7SlXXOPWbtyHbqFMeLw41oktxsTl/FVl0e?=
 =?us-ascii?Q?OtpMJRryBnhyA8/CfR6rZuqn3TX2KTHQ3LZ6j36mvO+nxCMlx+Ntt5OLE363?=
 =?us-ascii?Q?pERN8fdGoTrdy7YGKtKaDvv3cz3qSIEkjFgtm7J73QDnR+aAkut9qhJVMRou?=
 =?us-ascii?Q?gEZeYyWwX8OcJ4svz+tHQtakFX5l3lTIusqiKiD0kUH2P5suxpqvtKQzmcvt?=
 =?us-ascii?Q?LxaxW4fTXbQ/OLZNI+dw/VRU3LBr+MHkoJ+9ggk2oi8jbjikkTTmZmWu/opo?=
 =?us-ascii?Q?V8ljdvusQeh8rjZsz0jBlXRTQBwEcDgWVAJ2/9UTIfsYLPb+Q9AyBqDWMbRd?=
 =?us-ascii?Q?TrGd4givaQjpEOmw+igc30A+mjWTIyS1/9/1ZlFUjvnxlMIVrCCx7b8brdea?=
 =?us-ascii?Q?vSZu56nanz7pv47nTLgIRbijg/ioZcWUR/u68O/kWVwOKY064aVkoB5JYen7?=
 =?us-ascii?Q?F90pqWsVYUqlAY+RBuAYNqK3pdxlrtZxe6+l2JUwSSf9NUpa414sQdlwSseE?=
 =?us-ascii?Q?ebzlTiGMgxFIBHYhFLPjR2nZ7OVnOulpKxyclfUfCYy2OA3zZOupPKsJWrsA?=
 =?us-ascii?Q?k49uGeUUXShcWs4nuXrlprHB8E7+IRkDeN9+McoDaqB322xlZp/e/USf3p0X?=
 =?us-ascii?Q?4X9BWV3tp50aHEVGdwGghH0H4nBakpmD1bcxrs0k/AOCp1y8KLcuAxeO/z/E?=
 =?us-ascii?Q?nXTCN0Gmb4Dbkss60YmglJekGQ57ZFWTqp4KNuYKaGHRlJvioBwl5lnnIN9T?=
 =?us-ascii?Q?DjX+NZcI6gJUfFlAm3X3CJknIT8IAozvE8nPXNsIY5GyOm6yW1pRsWQhjApE?=
 =?us-ascii?Q?nv2nM/G6kT/Jg7t/H6L+2LrZm+jlq96DOxojUP2EByVwKj5tDi7o6LDDatul?=
 =?us-ascii?Q?bkT6NuV76kSOKr02yq0khsd50yHGn00zdC8dpdLGqrek5qLlTn1KODAHkJv+?=
 =?us-ascii?Q?Lar0OPNyHzBNkW76M+g17r2PcMiR/PygtKJ7NipQ5nvUhWn1JzpGpT4ONKwh?=
 =?us-ascii?Q?IBqlbytdhNLB65RPWxR4eGjDLLMAzVte0oG/TTlIPRD7thwKZx8arQ9npyku?=
 =?us-ascii?Q?gLyV6WI/kR7HinFqrswDdI8896qm6yA36Cqs5w60nd2lGLDwVARHRFJE827h?=
 =?us-ascii?Q?Q8oaOL5Kta/vNoagNw8wbUBb63ai9RZXq1wZlIiPX6/27KavdwirwUU/IIq0?=
 =?us-ascii?Q?TZ3YidjEyN6r7IqXZbI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(10070799003)(1800799024); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qSGsZn4UdYNZVtHJAEBIBc73rfKtQYpIPN0idjuvilG1EbTnKe6otMt0IM+6?=
 =?us-ascii?Q?IjXm3uqw6L3uDSeOhaWfOGhM5NeGrG7OK5rUx74Rzuf1Unu/hlMJ92oneOv2?=
 =?us-ascii?Q?Dwtei1s2uc6H+ra2AHg3FE6Zaj9H1wdHrCsFXO90T0hbYklAoI+z0mqHPkMV?=
 =?us-ascii?Q?o68D5FFmNJJezHPfUcj/txIBeDput6tRjGhpxreIkaZLe5whnGQOROPSbhDz?=
 =?us-ascii?Q?UHpg58LugzdZKVf255xWg1Av53P2JpXv+oJUQU/xz5JV0LTja8E1FhY/6/rv?=
 =?us-ascii?Q?iELQ8knPBPQOPeqefwdKkExhk0M+MtwNipPmf8PBYvIl1heUUXKV5Z2W7c/P?=
 =?us-ascii?Q?LByn0WJEa2Z9bRkig8gI0z7t41mslwx3lnYfuiG9wEL3c/KsR6vAsb6oabqz?=
 =?us-ascii?Q?yDKc3Ll0bjpeM81xLVmFDwz/oh5ypwVpq/0CkwRC+oMGx4IXOEwtHy146q0Q?=
 =?us-ascii?Q?OpUSO8QDVJhTtjUD60/xaTyWro4L4/shJf7kFclaj0mi9CHJSlmQdcrgMCbm?=
 =?us-ascii?Q?3nE082gtnVthNbbMNeVeBWS9+APhy+F6VjNrFB4iWq17sPss5b8LJU0SF8uv?=
 =?us-ascii?Q?OXgF8+KCQGnVzDY5Up7afnIiEoHAe6o5vuPHgmhQMPlZ+vZnKx6J8PvtpeV6?=
 =?us-ascii?Q?vcNO3YUhOrTg0i/ADFmq17ueBnjcsSXExe+R49hyw8vB/rg3YSMwxtA3RyFt?=
 =?us-ascii?Q?q4ednywRu6pTPTkhq9JuGRwA2MPrygQE5sWfkegsxgcbNigGsQHLU5zu8Pto?=
 =?us-ascii?Q?S8QUTeDhQz34yWav843mlBJ1pnA11DpWOAviex2bDpEFhmsrJ0cyokwVRkf6?=
 =?us-ascii?Q?wYz2lc5OjuuzS7Oe4ZiVaiZgRfzm4ucel+6lPj3LxjR+pLkRP0ZvdKQazxFo?=
 =?us-ascii?Q?+o4YFbdx+rwK3sWEf9GD69A4TUrDubgEf4uDBo2e/EAcROrQZe+AKTUZtcfo?=
 =?us-ascii?Q?fTn84blmgdJmjgDDO6xerhdGCS8IWomsCSYu8xUvNVtX7k60qUqsPWZfkDZ2?=
 =?us-ascii?Q?/Ut7Q+P6MLay+fstEVTre9VmZHM8LNqv4HkKJZQS4BkXTXKpXm8U49wVFNap?=
 =?us-ascii?Q?xaocSAUb9XplPiK/gcYevPVLhnl0csUsqfdAB5dbeM8RRIV3yRe1KJoprzUg?=
 =?us-ascii?Q?//wofowDOgrgyeqPcSiP/w1YxJE9MjbGI6CBeNXSwv/VTbt4EGagfnOcNHH7?=
 =?us-ascii?Q?wUobwZwTs+JE+NOU177GJXKXTojldjt91ZYt9Y5WIscIlbXMtipZxe/EojXg?=
 =?us-ascii?Q?f0wDG2I282vnC5hMkQWZflWPXS3nelyZCnNs7OYivRyYvJHxzFJSte2/lhYb?=
 =?us-ascii?Q?VRImAIB/pSF3ZyNMqOCSQ+cBpqh1luDxYQ3efkvHhBS6StdeFXKlbzxCTYIa?=
 =?us-ascii?Q?TXCIm3cYThf/AvZaOlM3F9/xgYYfg/BvzZtgv9LHQoNZGEy5nAgDvX741SA0?=
 =?us-ascii?Q?Y2POsRZYc9bOw0rh+kfQVcBCnStaFnHpLO0k1wAGVuJFmDKwLdFsZjh+ETII?=
 =?us-ascii?Q?7xddnV2XXCuS3xZ3Cq2S6Y2psu1o5wYePyWnVLPl2rERN7eufGbYMxjKSIbw?=
 =?us-ascii?Q?LdwnUCOJV5rz9qgIgIxjeobTww5IfB4yqznOZG/i8bAzz+UJiIolKTqbvdWj?=
 =?us-ascii?Q?MjZITG/0NWWLHOq58o+IK/x5AN7V4U8Wi9p0QZZ35jYC1ONVY9Ttyuwz0s/I?=
 =?us-ascii?Q?Z8dzm2gZx6ZteV1eO4nntXnRUiXYY7Lmk0O1D6T5ULW+Vpv5MBEPJA9Jct1l?=
 =?us-ascii?Q?a1dgE15ZwCjwhuLKkHCKgCIMLH+G8Uji2+y2m5tVSyB6kLTWq/PRE20BvucP?=
X-MS-Exchange-AntiSpam-MessageData-1: u19EQlz1g/P2kJpBUnUmTM2LKGMilJcOiqg=
X-MS-Exchange-CrossTenant-Network-Message-Id: e535b072-fea0-46bf-2fc1-08de64b3da9d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 12:41:16.5202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aPUwLAOrd6Slw0A7suFgxZh10oWZYiRfIqbniJqgBjwIuyNHJTlTGLPy8ktOlDzhF0jcmZs77VugJQp/dTSop1RYUNc1cGJ0wkiugMHEk9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770295283; x=1801831283;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BpF7bQZ0CJzPl24NBrjvWVOI1F2AiPcXX+gFonKYesw=;
 b=Uzf0B8qfmzsrgYrgG1Sofr6CYdpQO+4lJfE/mq5He0OehJwgSPPfZf3f
 CtcpwkXV0PlGXHwuKQPJ0E5bjSiMjw1wuGfozpgRj8xeTyLNxYdSEFnjw
 qmPtNVCTi29ZyFnx/+fl2/whDrxsbRfA8eZkOSx0LNqId8hpshRSw8Q4l
 mGezVKXUKVfvqEzIv/2UNZmXIjkgIXzXVMu3Xw8qGBwNJoT85gQ/eJDaF
 t6gXgPm8NaFdkllyolOpUtyDhTplYMrdFGXVOelaEZ3cqSOqk9meMHdYL
 QH6wZBFwTfAuY7i4q2V2rFA9j+V6yjkXYwqUv0usRWbxlht6MmxL53iL7
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uzf0B8qf
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:kuba@kernel.org,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.c
 h,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,soc-5CG4396X81.clients.intel.com:mid]
X-Rspamd-Queue-Id: 7DD21F2B52
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:29:53PM +0200, Vladimir Oltean wrote:
> On Wed, Feb 04, 2026 at 05:34:01PM -0800, Jakub Kicinski wrote:
> > On Thu, 5 Feb 2026 02:59:01 +0200 Vladimir Oltean wrote:
> > > Thanks! This is an extremely subtle corner case. I appreciate the patch
> > > and explanation.
> > > 
> > > I did run tests on the blamed commit (which I still have), but to catch
> > > a real issue in a meaningful way it would have been required to have a
> > > program which calls bpf_xdp_adjust_tail() with a very large offset.
> > > I'm noting that I'm seeing the WARN_ON() much easier after your fix, but
> > > before, it was mostly inconsequential for practical cases.
> > > 
> > > Namely, the ENETC truesize is 2048, and XDP_PACKET_HEADROOM is 256.
> > > First buffers also contain the skb_shared_info (320 bytes), while
> > > subsequent buffers don't.
> > 
> > I can't wrap my head around this series, hope you can tell me where I'm
> > going wrong. AFAICT enetc splits the page into two halves for small MTU.
> > 
> > So we have 
> > 
> >  |                 2k          |             2k              |
> >   ----------------------------- ----------------------------- 
> >  | hroom | data | troom/shinfo | hroom | data | troom/shinfo |
> >   ----------------------------- ----------------------------- 
> > 
> > If we attach the second chunk as frag well have:
> >   offset = 2k + hroom
> >   size = data.len
> > But we use
> >   truesize / frag_size = 2k
> > so
> >   tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
> >   tailroom = 2k - data.len - 2k
> >   tailroom = -data.len
> >   WARN(tailroom < 0) -> yes
> > 
> > The frag_size thing is unusable for any driver that doesn't hand out
> > full pages to frags?
> 
> This is an excellent question.
> 
> Yes, you're right, bpf_xdp_frags_increase_tail() only has a 50% chance
> of working - the paged data has to be in the first half of the page,
> otherwise the tailroom calculations are not correct due to rxq->frag_size,
> and the WARN_ON() will trigger.
> 
> The reason why I didn't notice this during my testing is stupid. I was
> attaching the BPF program to the interface and then detaching it after
> each test, and each test was sending less than the RX ring size (2048)
> worth of packets. So all multi-buffer frames were using buffers which
> were fresh out of enetc_setup_rxbdr() -> ... -> enetc_new_page() (first
> halves) and never out of flipped pages (enetc_bulk_flip_buff()).
> 
> This seems to be a good reason to convert this driver to use page pool,
> which I can look into. I'm not sure that there's anything that can be
> done to make the rxq->frag_size mechanism compatible with the current
> buffer allocation scheme.

I was just about to send an answer.

Seems like my mistake here. I actually think adjusting the tail should work, if 
we set rxq->frag_size to PAGE_SIZE in enetc and i40e_rx_pg_size() in i40e, and 
not to (PAGE_SIZE / 2), as I did at first, but in such case naming this 
frag_size is just utterly wrong. Glad Jakub has pointed this out.

ice and idpf are fine, since they use libeth for Rx buffers, so mbuf packets
always reside in 3K+ buffers. But for xsk_buff_pool seems like all drivers 
should have PAGE_SIZE as frag_size? I will let the discussion go on for at least
a day and then will send v2 with patches reordered and those sizes corrected, 
maybe add ZC fixes on top.
