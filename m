Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BZNBKJ5ymnk9AUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:24:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDDB35BE1C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:24:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D06C340BBE;
	Mon, 30 Mar 2026 13:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLpatKBFqYZh; Mon, 30 Mar 2026 13:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C3B240BBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774877086;
	bh=FAj6sqWGEm5Vxrmvmyw1rvnSy1hIkdg13QEx4FT/Cwc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iTumhQnKXEUDr8KkWfeRwRup7LCkiE7nCR4Uz7q+CL/oK9UbFTLJpqpfDUr7+fTOQ
	 Ac1YhM+arlZf4LhMUWbBWWUy9B9TOURVqKNSteoGfpCsRdzmSHgO4fJt+uT8vRb03G
	 Fj4sRP28f9/GmAXpWDPez56p2ZtrZU6HqzdjFJ/jgKGrxFyo0mPFKA+8nRFdLsQylJ
	 Fif+wi3qDuawmtI12P21dJSioLjkdskcYnV8/in4X3hTDg7AINip6at5t/SVFeUMrG
	 HSaKVfG7xbbW9/kGxFbiifw62JmzTEl4VDvMoN/k8J3/y57cr40TgkrDSXu/itYf2O
	 YKSXaTl/fpNPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C3B240BBF;
	Mon, 30 Mar 2026 13:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BEC110F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D47A60B4C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v7kVxTxHz2jc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 13:24:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 22CAC60B4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22CAC60B4B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22CAC60B4B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:24:42 +0000 (UTC)
X-CSE-ConnectionGUID: gJ6a+wksQ8mPnnHUIeCJ8g==
X-CSE-MsgGUID: ExznmGbnRJihDVmpbP4VLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75755068"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75755068"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:24:42 -0700
X-CSE-ConnectionGUID: XBSh3HwVQcuiMEJJKXJ8Lw==
X-CSE-MsgGUID: 8pn9bZXYT9mxvyMShQ2RZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="249111368"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:24:41 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:24:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 06:24:40 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QT7pDoPRJAjeex8+0iyTncx4ZqHb6Z2xM/Wfsr9NKjQVF12Xtb8+K5j8zicfbfLwXqpdNDNMS0RezHqoMr4skfCYXm+aFFflzBkRkYZkxUAphSY9S4ucojUHvnRwtv/cVA1krhZSx1Cobl6tovaEd4JsfsEdqVgGedos21164JKMggFHiiPnrShO2DuJ/81FlvxQ4Et+mFXnWgvlrTxMiwyzgrt8Bd9vuqkK9hqY0gvDmB7cTWOk+t719lVYjdsduhL0LYBiijkZlDZyfpgyxmc8i8OGmaygofkIV8yedBVtC6gsUntbwB6+CPz8a1nzFxq8/PSpcIyqGIvzFagxUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FAj6sqWGEm5Vxrmvmyw1rvnSy1hIkdg13QEx4FT/Cwc=;
 b=WX5EvtHcATi6BzIxDBHVBrGE1AUyY8w5+bUE7Y6585bviEqv9i2CzK6r+iqk6s+tXb/g6qA1eFE/8o3GqIwfiMptSi2KXxztlobIHYTe2fFkn4zJIt0v/j1d9Oc0Qc5iXzMeSsrNSxdbCcrmAZQPEA4t9OgcRNlqBBkpJwt2QCB/rEnpBsKGTxqvlJW7iaO7Rr/3QChtRx42basM+Xv2gj5uZGGc7G7jbDRid8miUFu3Ch4Wouar2FxJLpfg1dBu5j75Li9s4Fi/0cVMG+UDEyFmM1DxpPvGcQKbgbApLtQD5zOWXpngwbp1LDRePlh0XmTafFFchLdZxGuqjcUuxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM4PR11MB6263.namprd11.prod.outlook.com (2603:10b6:8:a6::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Mon, 30 Mar 2026 13:24:37 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 13:24:37 +0000
Date: Mon, 30 Mar 2026 15:24:29 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Matteo Croce <technoboy85@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Mohsin Bashir <mohsin.bashr@gmail.com>,
 <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>
Message-ID: <acp5jaFFI57ilC3y@boxer>
References: <20260323182823.5813-1-teknoraver@meta.com>
 <20260323182823.5813-2-teknoraver@meta.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260323182823.5813-2-teknoraver@meta.com>
X-ClientProxiedBy: VI1PR0502CA0024.eurprd05.prod.outlook.com
 (2603:10a6:803:1::37) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM4PR11MB6263:EE_
X-MS-Office365-Filtering-Correlation-Id: 011e3b3a-d09b-4ffb-a061-08de8e5fb0ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: NLw3nditgUMsVyu9jRXoLqY82uerz7bQyQA5UrmF9OhqD18Gd8HOII8IBOZutyNLurP/Q/EfwsrpO3B1o1v17gyF4uXcaEbWdnVG2XXxLEIPOnjJflvF1V6JoAVA0GVM5zVXjTHYEw+Ki59+7PDtZ8zMkb0Q++yqPoM9zIV6dmE7tNjxw42SPPvKogKD0NiIC13j+KtCbOqfKIqQ6A8OkUaUesQQ8YQhWE3XcLx6DLtn7tWEHdt0msuipsMTr8jiJr70sgml7gaOwyFwitPUxxewtBqHOSxnPwSvv/f296QuGEFMmRrumRI2DOKUyZy6JLQArN8Vhe+UmxZFDDyaBdMO7WtedmblxTxzzYDcu4Rs2oeq8pGgoQ/gRNgxQV6IB+X/9/iRQMU3Bi+Ef5xG0CRSZF/zDIuKuQDmk0FeReiZADUml44HtZZ+mOikgZcCly2QSEVSTbOqrUTqK3LukAqZFyFBmbCTyrYfSiBnYZz9Y2hwkYiyGhh5r023D9PZSxaNg8eXcsqHjyp0r/iuWLQnGcVnPyqvkTHpWA2qIqBt9s3mafCRqevgxOQ24X6fxVM863ACn0b5c0zsCLm9IWzUm5UIL61TVB66tucmqpgA+QMWzxScTri7cD8L4d7np4GsOLuBl09XoT3eMn2cVZxDPaItKwKabnMBgLB2r1tR1HVuTx1aG1m0CdaMiRg4v4QlbgVWXwNPEcJTeL5hcr+Gdpw6mpPjfgs5WvA1a8Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bUn3m+pXKL5y91vhcphto+bvj42IKw375C1PbfY0tC1Jkar8tjEK/pPL2wiW?=
 =?us-ascii?Q?cqhNjbhnaCygzvmySLi+fCeeR4Gqxk1fT76ztjij687hTCaOWWy/wA3W9aES?=
 =?us-ascii?Q?sOy+YJETTKNLZR/5bYoH81zve2g1YAQ/jyAgEQYIXa9G/ealcwzvdUUqiCGw?=
 =?us-ascii?Q?ZIWEd5FMfNGaLJCFrt8lxDzcyzTH4UoBDyIZluyFkhZKtV9tz2Ikst54kXWw?=
 =?us-ascii?Q?hGvmbG5mcipJsUZH7Wwjv8e0CRFRkKdRQMbfAXoUfTHXJK1LI6sszsv7Xbp+?=
 =?us-ascii?Q?69vCiVBbly08lP+Q19LHgVHc1pL2OL40976V7FgHWxyEMj/Q3/S4Mnvkd6Oh?=
 =?us-ascii?Q?ELxJr7JqrT4f3b88h6gyCMzMFnujCSOiBqEyhKURuK7nVRu/czZ5p22wJqC9?=
 =?us-ascii?Q?tY8+1EVSFZ1mct1hI1QxRArxarD84sCVrwiCxfx16e00S36KZkD1LuRZobYE?=
 =?us-ascii?Q?v99nB2C6KUU9STsV+f1XAagTpaXbMe4hsG0b0uqWmrrGXwE0XQMHK1LPI3gP?=
 =?us-ascii?Q?prmSpSDTK+7xfsfU31iHghUBaVSV6uL7mP7MxOHUYhU8y6ac4hLbGZxWpf30?=
 =?us-ascii?Q?T7Q/d31f97xUWn5vMZREmmFz7hCG9ZGIqVsbLdlBcfxffsGFHFjUjFDUvnDm?=
 =?us-ascii?Q?UvDrAR4AyGFSfn/N3bbpcbYhE5pYn5MzWrw1haKzHtJQpzMiewRLcc8w5VQD?=
 =?us-ascii?Q?EGzGhA+jwsilYNmms9/1QvFl92/eerJWmQJ+etd81hb1Qq+Bf+ZUAuFnfZOf?=
 =?us-ascii?Q?2ux5V24L5PEIkN6Elo4ipvtoMB3+O/cD80TTCo2CqJ9v9DLEw+RcGoVmgNPl?=
 =?us-ascii?Q?EG4Umo2tEkAoeauVHsKwyFR4Q5cO57vjU2WSZCRHonI5R7l3/GdTwPZ5sr3H?=
 =?us-ascii?Q?KXhnZcIV/XaX8ys93iLDwzNmk6IOI6364y/KOhPbhAQgXS0ff+Fa4g79kYFt?=
 =?us-ascii?Q?47L35abuDT+FpOuctP5bGg0bLORAm+2rO2alOw5r2w72BsGhRVwl13I5I93B?=
 =?us-ascii?Q?W3tyOrixjaQ8BaN18o36/uFhl03khvH8hTwfxIWyFGX2vYbhEv3CUHPNNafw?=
 =?us-ascii?Q?nHcLUa5SlO2rKSWN7FfxxlNm6ibMrLLFyyNsDzKTrzNGxuG9bKliCX6G7omP?=
 =?us-ascii?Q?lZLlJDUpcJmNP0yjxvFBITrSP/BuRu90SIiGimqY2lmM57NgiYoDeBihrDF8?=
 =?us-ascii?Q?ZLF2X9ctoYjZ+QgePapDjoxgtp2DCDbdMg/ijf6bnTc/lg7WvdqHSfpexPMA?=
 =?us-ascii?Q?AvEpQyOsLf/63ryxBZ2TMUvfzUPU+XX+aEzvJXOAKDkQ9cLgBmpXUafF34gT?=
 =?us-ascii?Q?RKiVpi//z/OZ3ZnmfO63nomsf0/RFUakDM9VA0E1wS4mXnhvgkvGdUPaHCiv?=
 =?us-ascii?Q?4zhqK+C1dAx+6eP36WAOL19lRcdev99ANOrETkm0Yy3TtDCbtWpr+JN0s1jP?=
 =?us-ascii?Q?VKo+z7lKV6goZBCSGlvYly4fj1K81L5OGtRLvlzJ+4yws2xPqtNjTyd2R74U?=
 =?us-ascii?Q?o6irdZGZbbZlQAIZAZ/EhfiW9COw6LW2DLvQ5ywV4HvHA/SvX7nB4Ll/2yAY?=
 =?us-ascii?Q?C0HGykmHU7ACF7X7j0kANDKmCvHEURs5QFxfWExxhZgaKX9ZF51F7NXtmBR/?=
 =?us-ascii?Q?2aw9+W0UA96dxWXptdZnqsgQN7RcXMBnamoG3UU6LvLfR2sWYLoPLJxwPEbm?=
 =?us-ascii?Q?Q5gw3BfKnkdbAFX2/APyzVM52a+v7OXzvgYNBa2wXXNuoWjUi8tApn8TK0xM?=
 =?us-ascii?Q?5BJ2datNaJ7g6XmipbNKa4Hpz9rqu2U=3D?=
X-Exchange-RoutingPolicyChecked: pqmho/E9OdbiwRjY4L2hOPOanhIYYTEr7OQ35KDC1rUWpWAVxahTicDJouLGsTdn3hoQgLrgpm4Nb62pqe/6tqaUS3wy/JkmuNqYM7h/sXcalLZ41LpaLnvQF/7CNYKE7/Ufk4Au07T/fMdjpcR8GS2GX2/TjzkRq/mPEdLyEICdQQTmhzoGEpXhZcH/pQnBFjFvgVm5mpoWXlbdqoaAxAOWO8M4TxoSG9wRSCoWcG+RQRGJSLqtwEyAaM0JiRu10qQCsB8ZasXVMi/L7NYnnUFinM5v1n/3Xzl/wJWtgcCJroItwRoMl6Kr2yRw+MVO3CEh6iSp0cH+iViNpURBNw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 011e3b3a-d09b-4ffb-a061-08de8e5fb0ca
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 13:24:37.4595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3XtOmIYk/2JSRiNlKO1SKWsaKchk8UJpGILClHSEsvmz7RN+1Ka8FGbE2lEqHL+CXb9xiaj1yiXcznbSUjyEdklnnjqmmycQnyw/ux7W+gM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6263
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774877083; x=1806413083;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B3K13HjWs6hUrq3Hhr6MPWmP4zJPdCTeYZVUab3T+DQ=;
 b=SKKqOY8LtQP4SjSJZU6XDf8s/1r7Ch/Kaiqc/Aum9OEF9jzwuCBfd7eP
 KUiEikNjiBZr9lLPuVDeVThaRVtKH3W2Z67kQWySQy+vpwDSFqwXKirPF
 BYtnHKzSTLxqU+EqGkR0IEEEp4fhA10BKJqQm4dChuC9wTW336m9ftoUf
 X+rxpGJxrsvdq4qe+GMyRjiJrtC1sUy1hlZbA3V7QJJ06b0FpydHCqdh2
 lAnpiECkPqtAdgHm+2YcZQ+d6qAj6Ewsv8Q3Ns9togRgSdA4edgwHNyi1
 KgWkWjbtOrPYMj8sYW5nUDeC8uj+t3OqvQBPS9Sv/bUVK0TR715H+tJoS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SKKqOY8L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] e1000e: add basic XDP
 support
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:technoboy85@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.134];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,meta.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5FDDB35BE1C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 07:28:22PM +0100, Matteo Croce wrote:
> Add XDP support to the e1000e driver covering the actions defined by
> NETDEV_XDP_ACT_BASIC: XDP_DROP, XDP_PASS, XDP_TX and XDP_ABORTED.
> 
> Infrastructure:
> - e1000_xdp_setup() / e1000_xdp() for program attach/detach with
>   MTU validation and close/open cycle
> - ndo_bpf support in net_device_ops
> - xdp_rxq_info registration in setup/free_rx_resources
> 
> Receive path:
> - e1000_alloc_rx_buffers_xdp() for page-based Rx buffer allocation
>   with XDP_PACKET_HEADROOM
> - e1000_clean_rx_irq_xdp() as the XDP receive handler

Hi Matteo,

Since you started to look onto this driver, I think we should have a
single routine for cleaning buffers on rx. So I would ask for getting rid
of adapter->clean_rx (or at least convince reviewers it is not possible
for some reason) and then implement XDP support with approach as XDP being
a first class citizen.

Furthermore I believe all new implementations of XDP require to include
multi-buffer support.

Last but not least, this lives in intel directory so I assume
primitives/helpers from libie/libeth should be used for this work.

Thanks,
Maciej

> - e1000_run_xdp() to execute the XDP program on received packets
> - SKB building via napi_build_skb() for XDP_PASS with metadata,
>   checksum offload and RSS hash support
> 
> Transmit path:
> - e1000_xdp_xmit_ring() to DMA-map and enqueue an XDP frame
> - e1000_xdp_xmit_back() to convert an xdp_buff to a frame and send it
> - e1000_finalize_xdp() to flush the TX ring after XDP processing
> - TX completion via xdp_return_frame() with buffer type tracking
> 
> Assisted-by: claude-opus-4-6
> Signed-off-by: Matteo Croce <teknoraver@meta.com>
> ---
>  drivers/net/ethernet/intel/Kconfig         |   1 +
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  18 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c | 533 ++++++++++++++++++++-
>  3 files changed, 540 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index 288fa8ce53af..46e37cb68e70 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -63,6 +63,7 @@ config E1000E
>  	depends on PCI && (!SPARC32 || BROKEN)
>  	depends on PTP_1588_CLOCK_OPTIONAL
>  	select CRC32
> +	select PAGE_POOL
>  	help
>  	  This driver supports the PCI-Express Intel(R) PRO/1000 gigabit
>  	  ethernet family of adapters. For PCI or PCI-X e1000 adapters,
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index 63ebe00376f5..4c1175d4e5cb 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -19,10 +19,13 @@
>  #include <linux/net_tstamp.h>
>  #include <linux/ptp_clock_kernel.h>
>  #include <linux/ptp_classify.h>
> +#include <linux/bpf.h>
>  #include <linux/mii.h>
>  #include <linux/mdio.h>
>  #include <linux/mutex.h>
>  #include <linux/pm_qos.h>
> +#include <net/page_pool/helpers.h>
> +#include <net/xdp.h>
>  #include "hw.h"
>  
>  struct e1000_info;
> @@ -126,12 +129,21 @@ struct e1000_ps_page {
>  	u64 dma; /* must be u64 - written to hw */
>  };
>  
> +enum e1000_tx_buf_type {
> +	E1000_TX_BUF_SKB = 0,
> +	E1000_TX_BUF_XDP,
> +};
> +
>  /* wrappers around a pointer to a socket buffer,
>   * so a DMA handle can be stored along with the buffer
>   */
>  struct e1000_buffer {
>  	dma_addr_t dma;
> -	struct sk_buff *skb;
> +	union {
> +		struct sk_buff *skb;
> +		struct xdp_frame *xdpf;
> +	};
> +	enum e1000_tx_buf_type type;
>  	union {
>  		/* Tx */
>  		struct {
> @@ -259,6 +271,10 @@ struct e1000_adapter {
>  			     gfp_t gfp);
>  	struct e1000_ring *rx_ring;
>  
> +	struct bpf_prog *xdp_prog;
> +	struct xdp_rxq_info xdp_rxq;
> +	struct page_pool *page_pool;
> +
>  	u32 rx_int_delay;
>  	u32 rx_abs_int_delay;
>  
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 9befdacd6730..d77f208f00cc 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -25,6 +25,10 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/prefetch.h>
>  #include <linux/suspend.h>
> +#include <linux/bpf.h>
> +#include <linux/bpf_trace.h>
> +#include <net/page_pool/helpers.h>
> +#include <net/xdp.h>
>  
>  #include "e1000.h"
>  #define CREATE_TRACE_POINTS
> @@ -33,6 +37,11 @@
>  char e1000e_driver_name[] = "e1000e";
>  
>  #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
> +
> +#define E1000_XDP_PASS		0
> +#define E1000_XDP_CONSUMED	BIT(0)
> +#define E1000_XDP_TX		BIT(1)
> +
>  static int debug = -1;
>  module_param(debug, int, 0);
>  MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
> @@ -708,6 +717,370 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
>  	rx_ring->next_to_use = i;
>  }
>  
> +static inline void e1000_rx_hash(struct net_device *netdev, __le32 rss,
> +				 struct sk_buff *skb)
> +{
> +	if (netdev->features & NETIF_F_RXHASH)
> +		skb_set_hash(skb, le32_to_cpu(rss), PKT_HASH_TYPE_L3);
> +}
> +
> +/**
> + * e1000_xdp_xmit_ring - transmit an XDP frame on the TX ring
> + * @adapter: board private structure
> + * @tx_ring: Tx descriptor ring
> + * @xdpf: XDP frame to transmit
> + *
> + * Returns E1000_XDP_TX on success, E1000_XDP_CONSUMED on failure
> + **/
> +static int e1000_xdp_xmit_ring(struct e1000_adapter *adapter,
> +			       struct e1000_ring *tx_ring,
> +			       struct xdp_frame *xdpf)
> +{
> +	struct e1000_buffer *buffer_info;
> +	struct e1000_tx_desc *tx_desc;
> +	dma_addr_t dma;
> +	u16 i;
> +
> +	if (e1000_desc_unused(tx_ring) < 1)
> +		return E1000_XDP_CONSUMED;
> +
> +	i = tx_ring->next_to_use;
> +	buffer_info = &tx_ring->buffer_info[i];
> +
> +	dma = dma_map_single(&adapter->pdev->dev, xdpf->data, xdpf->len,
> +			     DMA_TO_DEVICE);
> +	if (dma_mapping_error(&adapter->pdev->dev, dma))
> +		return E1000_XDP_CONSUMED;
> +
> +	buffer_info->xdpf = xdpf;
> +	buffer_info->type = E1000_TX_BUF_XDP;
> +	buffer_info->dma = dma;
> +	buffer_info->length = xdpf->len;
> +	buffer_info->time_stamp = jiffies;
> +	buffer_info->next_to_watch = i;
> +	buffer_info->segs = 1;
> +	buffer_info->bytecount = xdpf->len;
> +	buffer_info->mapped_as_page = 0;
> +
> +	tx_desc = E1000_TX_DESC(*tx_ring, i);
> +	tx_desc->buffer_addr = cpu_to_le64(dma);
> +	tx_desc->lower.data = cpu_to_le32(adapter->txd_cmd |
> +					   E1000_TXD_CMD_IFCS |
> +					   xdpf->len);
> +	tx_desc->upper.data = 0;
> +
> +	i++;
> +	if (i == tx_ring->count)
> +		i = 0;
> +	tx_ring->next_to_use = i;
> +
> +	return E1000_XDP_TX;
> +}
> +
> +/**
> + * e1000_xdp_xmit_back - transmit an XDP buffer back on the same device
> + * @adapter: board private structure
> + * @xdp: XDP buffer to transmit
> + *
> + * Returns E1000_XDP_TX on success, E1000_XDP_CONSUMED on failure
> + **/
> +static int e1000_xdp_xmit_back(struct e1000_adapter *adapter,
> +			       struct xdp_buff *xdp)
> +{
> +	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
> +
> +	if (unlikely(!xdpf))
> +		return E1000_XDP_CONSUMED;
> +
> +	return e1000_xdp_xmit_ring(adapter, adapter->tx_ring, xdpf);
> +}
> +
> +/**
> + * e1000_finalize_xdp - flush XDP operations after NAPI Rx loop
> + * @adapter: board private structure
> + * @xdp_xmit: bitmask of XDP actions taken during Rx processing
> + **/
> +static void e1000_finalize_xdp(struct e1000_adapter *adapter,
> +			       unsigned int xdp_xmit)
> +{
> +	struct e1000_ring *tx_ring = adapter->tx_ring;
> +
> +	if (xdp_xmit & E1000_XDP_TX) {
> +		/* Force memory writes to complete before letting h/w
> +		 * know there are new descriptors to fetch.
> +		 */
> +		wmb();
> +		if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
> +			e1000e_update_tdt_wa(tx_ring,
> +					     tx_ring->next_to_use);
> +		else
> +			writel(tx_ring->next_to_use, tx_ring->tail);
> +	}
> +}
> +
> +/**
> + * e1000_run_xdp - run an XDP program on a received packet
> + * @adapter: board private structure
> + * @xdp: XDP buffer containing packet data
> + *
> + * Returns E1000_XDP_PASS, E1000_XDP_TX, or E1000_XDP_CONSUMED
> + **/
> +static int e1000_run_xdp(struct e1000_adapter *adapter, struct xdp_buff *xdp)
> +{
> +	struct bpf_prog *xdp_prog = READ_ONCE(adapter->xdp_prog);
> +	struct net_device *netdev = adapter->netdev;
> +	int result = E1000_XDP_PASS;
> +	u32 act;
> +
> +	if (!xdp_prog)
> +		return E1000_XDP_PASS;
> +
> +	prefetchw(xdp->data_hard_start);
> +
> +	act = bpf_prog_run_xdp(xdp_prog, xdp);
> +	switch (act) {
> +	case XDP_PASS:
> +		break;
> +	case XDP_TX:
> +		result = e1000_xdp_xmit_back(adapter, xdp);
> +		if (result == E1000_XDP_CONSUMED)
> +			goto out_failure;
> +		break;
> +	default:
> +		bpf_warn_invalid_xdp_action(netdev, xdp_prog, act);
> +		fallthrough;
> +	case XDP_ABORTED:
> +out_failure:
> +		trace_xdp_exception(netdev, xdp_prog, act);
> +		fallthrough;
> +	case XDP_DROP:
> +		result = E1000_XDP_CONSUMED;
> +		break;
> +	}
> +
> +	return result;
> +}
> +
> +/**
> + * e1000_alloc_rx_buffers_xdp - Replace used receive buffers for XDP
> + * @rx_ring: Rx descriptor ring
> + * @cleaned_count: number to reallocate
> + * @gfp: flags for allocation
> + *
> + * Allocates page-based Rx buffers with XDP_PACKET_HEADROOM headroom.
> + **/
> +static void e1000_alloc_rx_buffers_xdp(struct e1000_ring *rx_ring,
> +				       int cleaned_count, gfp_t gfp)
> +{
> +	struct e1000_adapter *adapter = rx_ring->adapter;
> +	union e1000_rx_desc_extended *rx_desc;
> +	struct e1000_buffer *buffer_info;
> +	unsigned int i;
> +
> +	i = rx_ring->next_to_use;
> +	buffer_info = &rx_ring->buffer_info[i];
> +
> +	while (cleaned_count--) {
> +		if (!buffer_info->page) {
> +			buffer_info->page = page_pool_alloc_pages(adapter->page_pool,
> +								  gfp);
> +			if (!buffer_info->page) {
> +				adapter->alloc_rx_buff_failed++;
> +				break;
> +			}
> +		}
> +
> +		if (!buffer_info->dma) {
> +			buffer_info->dma = page_pool_get_dma_addr(buffer_info->page) +
> +					   XDP_PACKET_HEADROOM;
> +		}
> +
> +		rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
> +		rx_desc->read.buffer_addr = cpu_to_le64(buffer_info->dma);
> +
> +		if (unlikely(!(i & (E1000_RX_BUFFER_WRITE - 1)))) {
> +			/* Force memory writes to complete before letting
> +			 * h/w know there are new descriptors to fetch.
> +			 */
> +			wmb();
> +			if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
> +				e1000e_update_rdt_wa(rx_ring, i);
> +			else
> +				writel(i, rx_ring->tail);
> +		}
> +		i++;
> +		if (i == rx_ring->count)
> +			i = 0;
> +		buffer_info = &rx_ring->buffer_info[i];
> +	}
> +
> +	rx_ring->next_to_use = i;
> +}
> +
> +/**
> + * e1000_clean_rx_irq_xdp - Receive with XDP processing
> + * @rx_ring: Rx descriptor ring
> + * @work_done: output parameter for indicating completed work
> + * @work_to_do: how many packets we can clean
> + *
> + * Page-based receive path that runs an XDP program on each packet.
> + **/
> +static bool e1000_clean_rx_irq_xdp(struct e1000_ring *rx_ring, int *work_done,
> +				   int work_to_do)
> +{
> +	struct e1000_adapter *adapter = rx_ring->adapter;
> +	struct net_device *netdev = adapter->netdev;
> +	struct pci_dev *pdev = adapter->pdev;
> +	union e1000_rx_desc_extended *rx_desc, *next_rxd;
> +	struct e1000_buffer *buffer_info, *next_buffer;
> +	struct xdp_buff xdp;
> +	u32 length, staterr;
> +	unsigned int i, crc_len;
> +	int cleaned_count = 0;
> +	bool cleaned = false;
> +	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
> +	unsigned int xdp_xmit = 0;
> +
> +	xdp_init_buff(&xdp, PAGE_SIZE, &adapter->xdp_rxq);
> +
> +	i = rx_ring->next_to_clean;
> +	rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
> +	staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
> +	buffer_info = &rx_ring->buffer_info[i];
> +
> +	while (staterr & E1000_RXD_STAT_DD) {
> +		struct sk_buff *skb;
> +		int xdp_res;
> +
> +		crc_len = 0;
> +		if (*work_done >= work_to_do)
> +			break;
> +		(*work_done)++;
> +		dma_rmb();
> +
> +		i++;
> +		if (i == rx_ring->count)
> +			i = 0;
> +		next_rxd = E1000_RX_DESC_EXT(*rx_ring, i);
> +		prefetch(next_rxd);
> +
> +		next_buffer = &rx_ring->buffer_info[i];
> +
> +		cleaned = true;
> +		cleaned_count++;
> +
> +		dma_sync_single_for_cpu(&pdev->dev, buffer_info->dma,
> +					adapter->rx_buffer_len,
> +				       DMA_FROM_DEVICE);
> +		buffer_info->dma = 0;
> +
> +		length = le16_to_cpu(rx_desc->wb.upper.length);
> +
> +		/* Multi-descriptor packets not supported with XDP */
> +		if (unlikely(!(staterr & E1000_RXD_STAT_EOP)))
> +			adapter->flags2 |= FLAG2_IS_DISCARDING;
> +
> +		if (adapter->flags2 & FLAG2_IS_DISCARDING) {
> +			if (staterr & E1000_RXD_STAT_EOP)
> +				adapter->flags2 &= ~FLAG2_IS_DISCARDING;
> +			page_pool_put_full_page(adapter->page_pool,
> +						buffer_info->page, true);
> +			buffer_info->page = NULL;
> +			goto next_desc;
> +		}
> +
> +		if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
> +			     !(netdev->features & NETIF_F_RXALL))) {
> +			page_pool_put_full_page(adapter->page_pool,
> +						buffer_info->page, true);
> +			buffer_info->page = NULL;
> +			goto next_desc;
> +		}
> +
> +		/* adjust length to remove Ethernet CRC */
> +		if (!(adapter->flags2 & FLAG2_CRC_STRIPPING)) {
> +			if (netdev->features & NETIF_F_RXFCS)
> +				crc_len = 4;
> +			else
> +				length -= 4;
> +		}
> +
> +		/* Setup xdp_buff pointing at the page data */
> +		xdp_prepare_buff(&xdp, page_address(buffer_info->page),
> +				 XDP_PACKET_HEADROOM, length, true);
> +		xdp_buff_clear_frags_flag(&xdp);
> +
> +		xdp_res = e1000_run_xdp(adapter, &xdp);
> +
> +		if (xdp_res == E1000_XDP_PASS) {
> +			total_rx_bytes += length - crc_len;
> +			total_rx_packets++;
> +
> +			skb = napi_build_skb(xdp.data_hard_start, PAGE_SIZE);
> +			if (unlikely(!skb)) {
> +				page_pool_put_full_page(adapter->page_pool,
> +							buffer_info->page,
> +							true);
> +				buffer_info->page = NULL;
> +				goto next_desc;
> +			}
> +
> +			skb_mark_for_recycle(skb);
> +			skb_reserve(skb,
> +				    xdp.data - xdp.data_hard_start);
> +			skb_put(skb, xdp.data_end - xdp.data);
> +
> +			if (xdp.data_meta != xdp.data)
> +				skb_metadata_set(skb, xdp.data - xdp.data_meta);
> +
> +			e1000_rx_checksum(adapter, staterr, skb);
> +			e1000_rx_hash(netdev,
> +				      rx_desc->wb.lower.hi_dword.rss, skb);
> +			e1000_receive_skb(adapter, netdev, skb, staterr,
> +					  rx_desc->wb.upper.vlan);
> +
> +			/* page consumed by skb */
> +			buffer_info->page = NULL;
> +		} else if (xdp_res & E1000_XDP_TX) {
> +			xdp_xmit |= xdp_res;
> +			total_rx_bytes += length - crc_len;
> +			total_rx_packets++;
> +			/* page consumed by XDP TX */
> +			buffer_info->page = NULL;
> +		} else {
> +			/* XDP_DROP / XDP_ABORTED - recycle page */
> +			page_pool_put_full_page(adapter->page_pool,
> +						buffer_info->page, true);
> +			buffer_info->page = NULL;
> +		}
> +
> +next_desc:
> +		rx_desc->wb.upper.status_error &= cpu_to_le32(~0xFF);
> +
> +		if (cleaned_count >= E1000_RX_BUFFER_WRITE) {
> +			adapter->alloc_rx_buf(rx_ring, cleaned_count,
> +					      GFP_ATOMIC);
> +			cleaned_count = 0;
> +		}
> +
> +		rx_desc = next_rxd;
> +		buffer_info = next_buffer;
> +		staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
> +	}
> +	rx_ring->next_to_clean = i;
> +
> +	if (xdp_xmit)
> +		e1000_finalize_xdp(adapter, xdp_xmit);
> +
> +	cleaned_count = e1000_desc_unused(rx_ring);
> +	if (cleaned_count)
> +		adapter->alloc_rx_buf(rx_ring, cleaned_count, GFP_ATOMIC);
> +
> +	adapter->total_rx_bytes += total_rx_bytes;
> +	adapter->total_rx_packets += total_rx_packets;
> +	return cleaned;
> +}
> +
>  /**
>   * e1000_alloc_rx_buffers_ps - Replace used receive buffers; packet split
>   * @rx_ring: Rx descriptor ring
> @@ -896,13 +1269,6 @@ static void e1000_alloc_jumbo_rx_buffers(struct e1000_ring *rx_ring,
>  	}
>  }
>  
> -static inline void e1000_rx_hash(struct net_device *netdev, __le32 rss,
> -				 struct sk_buff *skb)
> -{
> -	if (netdev->features & NETIF_F_RXHASH)
> -		skb_set_hash(skb, le32_to_cpu(rss), PKT_HASH_TYPE_L3);
> -}
> -
>  /**
>   * e1000_clean_rx_irq - Send received data up the network stack
>   * @rx_ring: Rx descriptor ring
> @@ -1075,13 +1441,17 @@ static void e1000_put_txbuf(struct e1000_ring *tx_ring,
>  					 buffer_info->length, DMA_TO_DEVICE);
>  		buffer_info->dma = 0;
>  	}
> -	if (buffer_info->skb) {
> +	if (buffer_info->type == E1000_TX_BUF_XDP) {
> +		xdp_return_frame(buffer_info->xdpf);
> +		buffer_info->xdpf = NULL;
> +	} else if (buffer_info->skb) {
>  		if (drop)
>  			dev_kfree_skb_any(buffer_info->skb);
>  		else
>  			dev_consume_skb_any(buffer_info->skb);
>  		buffer_info->skb = NULL;
>  	}
> +	buffer_info->type = E1000_TX_BUF_SKB;
>  	buffer_info->time_stamp = 0;
>  }
>  
> @@ -1242,7 +1612,8 @@ static bool e1000_clean_tx_irq(struct e1000_ring *tx_ring)
>  			if (cleaned) {
>  				total_tx_packets += buffer_info->segs;
>  				total_tx_bytes += buffer_info->bytecount;
> -				if (buffer_info->skb) {
> +				if (buffer_info->type == E1000_TX_BUF_SKB &&
> +				    buffer_info->skb) {
>  					bytes_compl += buffer_info->skb->len;
>  					pkts_compl++;
>  				}
> @@ -1696,7 +2067,12 @@ static void e1000_clean_rx_ring(struct e1000_ring *rx_ring)
>  		}
>  
>  		if (buffer_info->page) {
> -			put_page(buffer_info->page);
> +			if (adapter->page_pool)
> +				page_pool_put_full_page(adapter->page_pool,
> +							buffer_info->page,
> +							false);
> +			else
> +				put_page(buffer_info->page);
>  			buffer_info->page = NULL;
>  		}
>  
> @@ -2350,6 +2726,30 @@ int e1000e_setup_tx_resources(struct e1000_ring *tx_ring)
>  	return err;
>  }
>  
> +static int e1000_create_page_pool(struct e1000_adapter *adapter)
> +{
> +	struct page_pool_params pp_params = {
> +		.flags = PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
> +		.pool_size = adapter->rx_ring->count,
> +		.nid = NUMA_NO_NODE,
> +		.dev = &adapter->pdev->dev,
> +		.napi = &adapter->napi,
> +		.dma_dir = DMA_FROM_DEVICE,
> +		.offset = XDP_PACKET_HEADROOM,
> +		.max_len = adapter->rx_buffer_len,
> +	};
> +
> +	adapter->page_pool = page_pool_create(&pp_params);
> +	if (IS_ERR(adapter->page_pool)) {
> +		int err = PTR_ERR(adapter->page_pool);
> +
> +		adapter->page_pool = NULL;
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * e1000e_setup_rx_resources - allocate Rx resources (Descriptors)
>   * @rx_ring: Rx descriptor ring
> @@ -2389,8 +2789,31 @@ int e1000e_setup_rx_resources(struct e1000_ring *rx_ring)
>  	rx_ring->next_to_use = 0;
>  	rx_ring->rx_skb_top = NULL;
>  
> +	/* XDP RX-queue info */
> +	if (xdp_rxq_info_is_reg(&adapter->xdp_rxq))
> +		xdp_rxq_info_unreg(&adapter->xdp_rxq);
> +
> +	err = e1000_create_page_pool(adapter);
> +	if (err)
> +		goto err_pages;
> +
> +	err = xdp_rxq_info_reg(&adapter->xdp_rxq, adapter->netdev, 0,
> +			       adapter->napi.napi_id);
> +	if (err)
> +		goto err_page_pool;
> +	err = xdp_rxq_info_reg_mem_model(&adapter->xdp_rxq,
> +					 MEM_TYPE_PAGE_POOL,
> +					  adapter->page_pool);
> +	if (err) {
> +		xdp_rxq_info_unreg(&adapter->xdp_rxq);
> +		goto err_page_pool;
> +	}
> +
>  	return 0;
>  
> +err_page_pool:
> +	page_pool_destroy(adapter->page_pool);
> +	adapter->page_pool = NULL;
>  err_pages:
>  	for (i = 0; i < rx_ring->count; i++) {
>  		buffer_info = &rx_ring->buffer_info[i];
> @@ -2463,6 +2886,14 @@ void e1000e_free_rx_resources(struct e1000_ring *rx_ring)
>  
>  	e1000_clean_rx_ring(rx_ring);
>  
> +	if (xdp_rxq_info_is_reg(&adapter->xdp_rxq))
> +		xdp_rxq_info_unreg(&adapter->xdp_rxq);
> +
> +	if (adapter->page_pool) {
> +		page_pool_destroy(adapter->page_pool);
> +		adapter->page_pool = NULL;
> +	}
> +
>  	for (i = 0; i < rx_ring->count; i++)
>  		kfree(rx_ring->buffer_info[i].ps_pages);
>  
> @@ -3185,7 +3616,11 @@ static void e1000_configure_rx(struct e1000_adapter *adapter)
>  	u64 rdba;
>  	u32 rdlen, rctl, rxcsum, ctrl_ext;
>  
> -	if (adapter->rx_ps_pages) {
> +	if (adapter->xdp_prog) {
> +		rdlen = rx_ring->count * sizeof(union e1000_rx_desc_extended);
> +		adapter->clean_rx = e1000_clean_rx_irq_xdp;
> +		adapter->alloc_rx_buf = e1000_alloc_rx_buffers_xdp;
> +	} else if (adapter->rx_ps_pages) {
>  		/* this is a 32 byte descriptor */
>  		rdlen = rx_ring->count *
>  		    sizeof(union e1000_rx_desc_packet_split);
> @@ -6049,6 +6484,12 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
>  		return -EINVAL;
>  	}
>  
> +	/* XDP requires standard MTU */
> +	if (adapter->xdp_prog && new_mtu > ETH_DATA_LEN) {
> +		e_err("Jumbo Frames not supported while XDP program is active.\n");
> +		return -EINVAL;
> +	}
> +
>  	/* Jumbo frame workaround on 82579 and newer requires CRC be stripped */
>  	if ((adapter->hw.mac.type >= e1000_pch2lan) &&
>  	    !(adapter->flags2 & FLAG2_CRC_STRIPPING) &&
> @@ -7331,6 +7772,71 @@ static int e1000_set_features(struct net_device *netdev,
>  	return 1;
>  }
>  
> +/**
> + * e1000_xdp_setup - add/remove an XDP program
> + * @netdev: network interface device structure
> + * @bpf: XDP program setup structure
> + **/
> +static int e1000_xdp_setup(struct net_device *netdev, struct netdev_bpf *bpf)
> +{
> +	struct e1000_adapter *adapter = netdev_priv(netdev);
> +	struct bpf_prog *prog = bpf->prog, *old_prog;
> +	bool running = netif_running(netdev);
> +	bool need_reset;
> +
> +	/* XDP is incompatible with jumbo frames */
> +	if (prog && netdev->mtu > ETH_DATA_LEN) {
> +		NL_SET_ERR_MSG_MOD(bpf->extack,
> +				   "XDP is not supported with jumbo frames");
> +		return -EINVAL;
> +	}
> +
> +	/* Validate frame fits in a single page with XDP headroom */
> +	if (prog && netdev->mtu + VLAN_ETH_HLEN + ETH_FCS_LEN +
> +	    XDP_PACKET_HEADROOM > PAGE_SIZE) {
> +		NL_SET_ERR_MSG_MOD(bpf->extack,
> +				   "Frame size too large for XDP");
> +		return -EINVAL;
> +	}
> +
> +	old_prog = xchg(&adapter->xdp_prog, prog);
> +	need_reset = (!!prog != !!old_prog);
> +
> +	/* Transition between XDP and non-XDP requires ring reconfiguration */
> +	if (need_reset && running)
> +		e1000e_close(netdev);
> +
> +	if (old_prog)
> +		bpf_prog_put(old_prog);
> +
> +	if (!need_reset)
> +		return 0;
> +
> +	if (running) {
> +		int err = e1000e_open(netdev);
> +
> +		if (err) {
> +			/* Remove the XDP program since interface is down */
> +			xchg(&adapter->xdp_prog, NULL);
> +			if (prog)
> +				bpf_prog_put(prog);
> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int e1000_xdp(struct net_device *netdev, struct netdev_bpf *xdp)
> +{
> +	switch (xdp->command) {
> +	case XDP_SETUP_PROG:
> +		return e1000_xdp_setup(netdev, xdp);
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
>  static const struct net_device_ops e1000e_netdev_ops = {
>  	.ndo_open		= e1000e_open,
>  	.ndo_stop		= e1000e_close,
> @@ -7353,6 +7859,7 @@ static const struct net_device_ops e1000e_netdev_ops = {
>  	.ndo_features_check	= passthru_features_check,
>  	.ndo_hwtstamp_get	= e1000e_hwtstamp_get,
>  	.ndo_hwtstamp_set	= e1000e_hwtstamp_set,
> +	.ndo_bpf		= e1000_xdp,
>  };
>  
>  /**
> @@ -7563,6 +8070,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	netdev->max_mtu = adapter->max_hw_frame_size -
>  			  (VLAN_ETH_HLEN + ETH_FCS_LEN);
>  
> +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
> +
>  	if (e1000e_enable_mng_pass_thru(&adapter->hw))
>  		adapter->flags |= FLAG_MNG_PT_ENABLED;
>  
> @@ -7776,6 +8285,8 @@ static void e1000_remove(struct pci_dev *pdev)
>  	e1000e_release_hw_control(adapter);
>  
>  	e1000e_reset_interrupt_capability(adapter);
> +	if (adapter->xdp_prog)
> +		bpf_prog_put(adapter->xdp_prog);
>  	kfree(adapter->tx_ring);
>  	kfree(adapter->rx_ring);
>  
> -- 
> 2.53.0
> 
> 
