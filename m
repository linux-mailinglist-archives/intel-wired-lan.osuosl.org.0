Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D81ED3C3B6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 10:36:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6A0540B95;
	Tue, 20 Jan 2026 09:36:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZFhXV4D2nQ4z; Tue, 20 Jan 2026 09:36:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30CAB40C42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768901805;
	bh=ZwpA+gBiVGtyk82fZAoUKZLDDwrhYiOuaHkOp+lWQsQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WehQASH0MAMGhl4yNpkYMBBlbOTFtfetkspK18h2plvKWTdrzdvR5qWKVDlH+QQ33
	 +Lpw9FAi+VRw73iBnRMOWWbPLp5jPce+HI4dmh3CYwp+rxp45zlTKzlKzRaJrbO9f4
	 Zoc+Cx6l+WNNjccaj291wxkfEeOryxw7d7JLIkhUDL47nFHVI1g9mid52oIevLxQcE
	 zBIOShr7VXPxjjitxpXVzSth7JCQSdkdvxMXH8scuUiCwfhBGFjxzG7vzUL3fMH44q
	 a+VMai/cFVdnHKekbwxy+Ny77qRyUIgR/OxlIssfocmt7rMVRSCu8V4tkivYcJdfO3
	 vM91avmY5nkuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30CAB40C42;
	Tue, 20 Jan 2026 09:36:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A9B5160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 09:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A66A80C3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 09:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6vj3UdXVqGn2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 09:36:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4409C80BE0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4409C80BE0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4409C80BE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 09:36:41 +0000 (UTC)
X-CSE-ConnectionGUID: FYLWzJDmROW9RRvbeERIGw==
X-CSE-MsgGUID: sgg0S14/TISpVPLbKb9b7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70077449"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70077449"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 01:36:42 -0800
X-CSE-ConnectionGUID: q/uJurBVSBaH3uTLN/5LuA==
X-CSE-MsgGUID: i/vmvEhZRK+5Es/NPF2DnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="206423603"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 01:36:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 01:36:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 01:36:40 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 01:36:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cBBe2jiWRzstwfboFGljj9AXwYy8vLAJpcwXvWwu8/yhoaCeyRKB/iVwpMCh90mhz4IKVbs9dxHJcn/cTpCn3cCybywDYW2QzxP2tJTZVB2U22n3E6vKUHwaSziIRoXeIfhw+EJVRM6LCXvoJUBlyJEtgS7baXH3XElowrkF/M1yIUyzs0+LJkr3tfrFBPy/I4NDHeIp5SooIuwb7VU0Zphvi1rpIAe4IMQqwhRcKrU+SX/FwF2G3zkHjf35rbg6c4+IkyrlC9CTgS2KxcUjzPIsJIXrTrPKHKHOtfs2OoPrxqEmbRdbV4CcK/zot10oPy+IrSlem9YbraKSIXjUJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZwpA+gBiVGtyk82fZAoUKZLDDwrhYiOuaHkOp+lWQsQ=;
 b=SXHSz9uayUJYjbOSTi7klhs2xCHtPZpDkN9b0K0LBAu79/SZ/XZLqoy9ntL9eTWuhJQx4/k415bTEpbowZXfA2MYQP851qJrzhuEdqQqKzXBoavkoj4UqoxumLnJF5QP3GwNPqY6eiDjjWufmD/PAlE7t86GCWaaf9ZlnHRSkA0jEr3BpQxH5s4wUY5mpvdrLGnSB2+rVosDdZpN9A/uepBWdTVySd8zOSpsan4URUP7qyPd3wYBYnMEoK/QSZRPvdBzqmhvZyD+NMTfhAEYfxN0MLOj5ENT3GPwTGjvbenJjh4Wu662ryUhdYArTodq+yUGUISU/ZPO6Z4vgRuF8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB8246.namprd11.prod.outlook.com (2603:10b6:208:445::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 09:36:37 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.008; Tue, 20 Jan 2026
 09:36:37 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "enjuk@amazon.com" <enjuk@amazon.com>
Thread-Topic: [PATCH iwl-next v4 1/3] igb: prepare for RSS key get/set support
Thread-Index: AQHcifAhwDEHAuKmjUKpTOv4HmQBG7VazJPA
Date: Tue, 20 Jan 2026 09:36:37 +0000
Message-ID: <IA3PR11MB8986FEC18B95A9787BF12CAEE589A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260120093441.70075-5-takkozu@amazon.com>
 <20260120093441.70075-6-takkozu@amazon.com>
In-Reply-To: <20260120093441.70075-6-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB8246:EE_
x-ms-office365-filtering-correlation-id: 3863502f-c452-40af-5e38-08de580768b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jrA9gF9+SHL39AMltm40avYQxI/jfpK8pCSq9t0Ns44I8QDaFm247o7PzlP5?=
 =?us-ascii?Q?IAluGvtr2XRlvtu8WjlNI5diEox1+gwtUk7CtH19LgRAqSYiYA5UDtM2cGGf?=
 =?us-ascii?Q?2/9pGr6Ltesq2Y4cs3qSClRmFJuZF6uxUfzMp51cu1ARg6A/MFPd02z3GwzC?=
 =?us-ascii?Q?65llrS2JTlK3MgpTmKwe+qwz3LbWpxGlwct4YDUF0Rad+rOJ9Qcja18sHfmb?=
 =?us-ascii?Q?dkzJPCyQUTgQ1HN9yzR9Xb5t3L+ID8ciS9kfZryhGHsAOkmO8yBy24SJhpjX?=
 =?us-ascii?Q?jjHJuy31HRxRU0kU4tbsZ51UjWiL7oQFrKOc8AWa8UGlQNWnkdxarorSdVU+?=
 =?us-ascii?Q?aUZHwy7+hvcfhfWfyD6oNQuvYfvTcmXidI4/l+MVTEKlaE8PIpzDDClxS9Ac?=
 =?us-ascii?Q?nf6pBHMQ8Cqj6tZ0vxUoqiJQS3H6FZno8d4fPXMY65I6IDCdyl/Ye2BSwiD0?=
 =?us-ascii?Q?eht0ZCRvq/sVJ+Kp9HNl9Y21CVIzPm1OStyzzf3jERrb3XS/l8KFAZOGWAIZ?=
 =?us-ascii?Q?Xsx6/tLZW1yRqchx1X8/xjtZqLJd268dyQZWhGSi1D0JEqf4qfTCJBexB3hU?=
 =?us-ascii?Q?bAIBwQQXpnpLNg79oa1F4wKXEf3xfCNYmxL94yHRHZZFnCQBeXzj4rZECb5C?=
 =?us-ascii?Q?nuohLyuHbHK/LZ0dAKxTSQgDNmcfogwzjgzA7bYG/bNdc0/i3NTetSxqiqI2?=
 =?us-ascii?Q?95ncWoyLolobn4QegzJT1YqVul+8FkyvEV5Xodhyy4bi9H+M90ttbA/7bFeD?=
 =?us-ascii?Q?zrOiruWtN+4rU+kMnu8phZCEVXQnxYvJoWISDIOLp6nUTmhYHJ+koEYaIywm?=
 =?us-ascii?Q?+bppeoHVDNqACZA8omMOtfTZu+AjbTzFSknvxjaOYXakbhdnZrQnEcV1lRIo?=
 =?us-ascii?Q?YEBqHb7ehDXwjjVlOjvItDA33zfjAQKEItDiDQtnLjJ1AxfpkQ8Ry5XuCpF3?=
 =?us-ascii?Q?mMsMo3FzA4n5a5G9ALa619tGYwyVREmTHClbvZzpa7HyWqSsmHbp79GLOZ6j?=
 =?us-ascii?Q?HFEZnVSF5YmxbnsTjhxGz7aEFak1lUHLDaV+8pyK8rS+cNd8DLMleBd1CT92?=
 =?us-ascii?Q?tzOlAYz3oZgN8OHv2W2y0Y6lwq/n6O/7cJngoBl2DaOM7s+H24w2E9OklkAL?=
 =?us-ascii?Q?4M7sNE7u0XewMXn0HCUEbE0h8gHaX5skNPsqsx4ApN89V1wIjVot2WCpFyGk?=
 =?us-ascii?Q?FzBTmrTtPewoTmhOzRgTBMfYNbglaX/EwmAjYw3/aVCCXp2dFb1Sd7KtGo5r?=
 =?us-ascii?Q?UBqvX8NeUp1Am6kaMtG3MqXKpiKAEBn6fqoOamANCvM6BbcTap7C7rjIKQi4?=
 =?us-ascii?Q?JP9XQwz/v/WOJzmpL1xqYQStpRlyjm/dkLYV1sAgwHEbJ+NV1YrQ2Fwf7S1z?=
 =?us-ascii?Q?el5O0sGOGOIWPIEZr4fqpZAzSn5/AU/KhyJ4tkSEnSdCve3hcf3q28XcXpBC?=
 =?us-ascii?Q?BAzK7WyXX/Sc7LgrWexpvSkRxrFWSAjJ+AbKeDLvdiPcuCZYGy4rlz7j5qpH?=
 =?us-ascii?Q?U8YmSBVCozDSMqJbSJuhNrnnvdryFoE+t4keGbRqMLg1Tmgs1bnetTt5Tj0p?=
 =?us-ascii?Q?8IIljGYU/dQ+bs7ESmRc8plBGKdb4gyJrDbkPvq1WtNZkrEAVgg2EHTeAJy3?=
 =?us-ascii?Q?Q1ckzZEgp8mTW3c6vt/jvjA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G4g5lRHglw3IuUDrxiObqNcwLu8GEOWqoGcX3ksbb209trSZPkchP6x/j9uU?=
 =?us-ascii?Q?sJBFxMTm57lSrwt9E4DuK2WCulcFZcPWb3aquOpZSg9FZAEOCE4mWw1DpJeK?=
 =?us-ascii?Q?u/IpRxypLD+reGHYX8PLIuSs1dN9Mfvdo81i3ntpWRBEOOuh2P9TFiw/IA5j?=
 =?us-ascii?Q?lU2Vw+lYkUuPwVnb1oytyTD41TXLkvO17ks9n1O4lEPKXt2pPm1cCfJb/cmn?=
 =?us-ascii?Q?fSJezRn1mRecfnm8/CRQwgNsv5g7/nHtmF/hz8GU/184l/PksYxjoDHsY270?=
 =?us-ascii?Q?a3jQZcmEJ+ZbkHZTsSHd7XB1BM/nBh3n/VJ9bQgrgaUin4QgzTue1MvD+bal?=
 =?us-ascii?Q?YvwN/rPK19fQb8vK1N/KZ8FScc7rHUOxoTvXZJyPWAsQm6XVNgElRk9k4mtB?=
 =?us-ascii?Q?/BmaN5okGB/7NxtaHatCKSiWp9qlQ9UxtaLBFSDmdX5/U11I+EBF1fSMCMnj?=
 =?us-ascii?Q?v2umLYK5M/HY2nmfLswrhLw2YfYZyl8Hzctv8JLpMdC8JwpJUUzyQsVD61yh?=
 =?us-ascii?Q?VjKnDMNhnTrAc7lgiyLUcAhG+eVjakJP3zXfXf01tiR1FE7KYjEMG435Jlt+?=
 =?us-ascii?Q?Gj1/uFO5xnwr2guNcfcu7Tt9HCynU13XAMMgqlCAqtvAUOGx7/sYCklthNm+?=
 =?us-ascii?Q?7/13DmjXd6k6XxOtQDzOY3F18lk1Eo8v3j1Q0lzPge7qj26/YqfkslJPa2yc?=
 =?us-ascii?Q?A3iw/LlSzbsoVfHDhMoXdS7k3EgbJQT7hb5uCNsk2LXINv3qNms49pV42wmV?=
 =?us-ascii?Q?DZaQqfnkF9gwJuTyQVB/4lX5qje7Jva3/P6WTknYTXTphRuGrDYyIvh2lcG8?=
 =?us-ascii?Q?TEcLZzzZW4eZ0r/wu97o4EBPfWXeAB38FZN9qJcWk1GrabmI5/GcCddaMNEt?=
 =?us-ascii?Q?ijNupXLiLLPDEMRZPVFFXKJ1SaBF0sYV9dJIFAVhKneDrPvWYSbbkkrbVp5A?=
 =?us-ascii?Q?YgR4iOr2AdpzhJjaoP/K5roXrzlKU9wlAGkctq0621vDAZBfBttLPOjmCE1t?=
 =?us-ascii?Q?nlFLp1cRPxSKWspH8UIrsLzeGdfKSFoADV20bodbShue9R5nXakO7DLmpCJi?=
 =?us-ascii?Q?iqK+fLFHapQmkMvAVxYU7iR5jm/MD2XANrJWwNU9dl8cVVbzf7cTyMNEhJev?=
 =?us-ascii?Q?4UxabFvCF+mZDXgjivDN4pVMGnbf0arIF6e+HUDtq2bozDC6zOnJscce6gxm?=
 =?us-ascii?Q?WccN+vP+5IdNptN0EoxCGphX83ViMa4m02twR26jUkM5zIlS1Pe65/B9WbdH?=
 =?us-ascii?Q?vJdtAICw7lx0CLToYsKjPcwkxXyz1MEGqZCUHtb6HeWTYA3vFETlC2pZZE9+?=
 =?us-ascii?Q?ZOwreoPuBZucujpg7oC+x1RVhKLrHUtB4SCyELhDDTOSymuJSZfvUntI2ATo?=
 =?us-ascii?Q?NcNw+Py28jbuPKXIYXERf0hK3x1qiE++ptYACz934u4/hfL+ClZomTLcLtq9?=
 =?us-ascii?Q?HjVKqabRtet+BjE8Xj/+kkVrjomISmAF2103qCAHzKJP8vxIF2A1hpC+jS4b?=
 =?us-ascii?Q?6+/+/bE6Veh+sll35+r4Z6Ceb8xLuuqcHjdeT+myneY465ghKjY9B3xNFrJC?=
 =?us-ascii?Q?Uoroc/PzDqAw1AhCsXWr0NDte4Y3MwwRVvffwVfOJQnpXoywofceRAuhPaSn?=
 =?us-ascii?Q?TZF7NumhnmJ+YJlNes1a8Zr7sNMx5SJTmfObCvL8RlZmk+hqmLmj3j6VOfXd?=
 =?us-ascii?Q?U0tw6Kv25M7v/4Hj4fi3Wbzy/6r+yy1/xFnFThx2j2XaIfji/iq48GJyG+ua?=
 =?us-ascii?Q?yehmnLyqF5x4i+r7E25z/9cR80dab0I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3863502f-c452-40af-5e38-08de580768b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 09:36:37.8016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GmZd8azpBnXXH6tUfvPdrRSmXqXYTHdf3mdfnx3Ld3YZ1wu5Cpf1t6+1lrL+WeySub3qN4xYfL80vmDOTR4mEA0CALDbq2PzBxSmlDsbwIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8246
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768901803; x=1800437803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IgpKovq2JNtFeiKEH//w0e1p8uDPtJum3rFWMnnlASE=;
 b=IF7DRJY1EKbM5bL0ci5UgCWd6ey9NnARc/RixpYS3zshRnGfxrRHK3hi
 Av6+/OJjI2+aHv+ugQYQzsrkB7kzHvx5LIX2ASDz2BXVoBqLSWudlCR3O
 OIZ2KMslPZudGE/12Xi3SZWE9dKj4glGkisEueNT7YkjUoZBB3Ub4V62i
 wWhhZ/W46FVGdQ4+Sr0ZRNbTUlWrvFdhKXUl7pohnCtviP1iAonwvBXI1
 uVBWn+zqK3+iD4rdzBChMBaU992NezN+qRSIL9u/jxyHZb4rqEhdj9ulz
 lOHe7cHzIrYJqtXrDQc3xbIiqebWq3w4JM+qUf0x9y6I9DqbP/zysbWOl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IF7DRJY1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/3] igb: prepare for RSS
 key get/set support
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



> -----Original Message-----
> From: Takashi Kozu <takkozu@amazon.com>
> Sent: Tuesday, January 20, 2026 10:35 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; pmenzel@molgen.mpg.de; Kwapulinski,
> Piotr <piotr.kwapulinski@intel.com>; enjuk@amazon.com; Takashi Kozu
> <takkozu@amazon.com>
> Subject: [PATCH iwl-next v4 1/3] igb: prepare for RSS key get/set
> support
>=20
> Store the RSS key inside struct igb_adapter and introduce the
> igb_write_rss_key() helper function. This allows the driver to program
> the E1000 registers using a persistent RSS key, instead of using a
> stack-local buffer in igb_setup_mrqc().
>=20
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
>  drivers/net/ethernet/intel/igb/igb.h         |  3 +++
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 21
> ++++++++++++++++++++
>  drivers/net/ethernet/intel/igb/igb_main.c    |  8 ++++----
>  3 files changed, 28 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb.h
> b/drivers/net/ethernet/intel/igb/igb.h
> index 0fff1df81b7b..8c9b02058cec 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -495,6 +495,7 @@ struct hwmon_buff {
>  #define IGB_N_PEROUT	2
>  #define IGB_N_SDP	4
>  #define IGB_RETA_SIZE	128
> +#define IGB_RSS_KEY_SIZE	40
>=20
>  enum igb_filter_match_flags {
>  	IGB_FILTER_FLAG_ETHER_TYPE =3D 0x1,
> @@ -655,6 +656,7 @@ struct igb_adapter {
>  	struct i2c_client *i2c_client;
>  	u32 rss_indir_tbl_init;
>  	u8 rss_indir_tbl[IGB_RETA_SIZE];
> +	u8 rss_key[IGB_RSS_KEY_SIZE];
>=20
>  	unsigned long link_check_timeout;
>  	int copper_tries;
> @@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);  void
> igb_reinit_locked(struct igb_adapter *);  void igb_reset(struct
> igb_adapter *);  int igb_reinit_queues(struct igb_adapter *);
> +void igb_write_rss_key(struct igb_adapter *adapter);
>  void igb_write_rss_indir_tbl(struct igb_adapter *);  int
> igb_set_spd_dplx(struct igb_adapter *, u32, u8);  int
> igb_setup_tx_resources(struct igb_ring *); diff --git
> a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index b507576b28b2..a93069b761a6 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -3019,6 +3019,27 @@ static int igb_set_rxnfc(struct net_device
> *dev, struct ethtool_rxnfc *cmd)
>  	return ret;
>  }
>=20
> +/**
> + * igb_write_rss_key - Program the RSS key into device registers
> + * @adapter: board private structure
> + *
> + * Write the RSS key stored in adapter->rss_key to the E1000 hardware
> registers.
> + * Each 32-bit chunk of the key is read using get_unaligned_le32()
> and
> +written
> + * to the appropriate register.
> + */
> +void igb_write_rss_key(struct igb_adapter *adapter) {
> +	struct e1000_hw *hw =3D &adapter->hw;
> +
> +	ASSERT_RTNL();
> +
> +	for (int i =3D 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
> +		u32 val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
> +
> +		wr32(E1000_RSSRK(i), val);
> +	}
> +}
> +
>  static int igb_get_eee(struct net_device *netdev, struct ethtool_keee
> *edata)  {
>  	struct igb_adapter *adapter =3D netdev_priv(netdev); diff --git
> a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index dbea37269d2c..c703011b19ec 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4050,6 +4050,9 @@ static int igb_sw_init(struct igb_adapter
> *adapter)
>=20
>  	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
>=20
> +	/* init RSS key */
> +	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter-
> >rss_key));
> +
>  	/* set default ring sizes */
>  	adapter->tx_ring_count =3D IGB_DEFAULT_TXD;
>  	adapter->rx_ring_count =3D IGB_DEFAULT_RXD; @@ -4525,11 +4528,8
> @@ static void igb_setup_mrqc(struct igb_adapter *adapter)
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	u32 mrqc, rxcsum;
>  	u32 j, num_rx_queues;
> -	u32 rss_key[10];
>=20
> -	netdev_rss_key_fill(rss_key, sizeof(rss_key));
> -	for (j =3D 0; j < 10; j++)
> -		wr32(E1000_RSSRK(j), rss_key[j]);
> +	igb_write_rss_key(adapter);
>=20
>  	num_rx_queues =3D adapter->rss_queues;
>=20
> --
> 2.52.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
