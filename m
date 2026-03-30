Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAVkExx4ymnk9AUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:18:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D022435BCAD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A18A940B46;
	Mon, 30 Mar 2026 13:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oYZpJKrby3TR; Mon, 30 Mar 2026 13:18:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2895740B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774876696;
	bh=loPvIgAnZXzz/VjsbRFbreWa8/1mhG4iGY7D4RP38ug=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wVYIKtMIiUaK9pI1xJGQUKChk72HI/JPfGtBo7kde0XEXJuN79n7+BjcXxepfsb+e
	 MYOAyXQGUMcr5F4/XNoMOnPbC6Fl8wVJqt0Pbe3Kuqi9zEegRn9BbTnzcNlEkYy/m6
	 x67751k2lc7OUvF4yXzGI+xHPr0EAd2V5INZ87xpvw6EgQcxO6TmvcCRupmXh6Y25y
	 moW1n2J59nCdwE3Kvo91C3Z0063ezJlMk5Md6Ui65hdPfaw3ZV+zMrhxQQ7AqhyuiF
	 vG5VXmi9+ibzX/t1EL3nV+VWUymwdzqtsd7eFmkktfPVJSNBw1Gv85sa8B2CgQKOIJ
	 /Hil+c32TEOFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2895740B8E;
	Mon, 30 Mar 2026 13:18:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B07B810F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BCBD60B42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kG0AKCBOGFDt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 13:18:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CFE43608FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFE43608FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFE43608FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:18:12 +0000 (UTC)
X-CSE-ConnectionGUID: y59ZHfhsSRG/dTjf78psDQ==
X-CSE-MsgGUID: e17UnkzgSwa/RAEbIAzlHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="79769370"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="79769370"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:18:11 -0700
X-CSE-ConnectionGUID: Ltc/ZTR5QOGGLA6b5Wl3FQ==
X-CSE-MsgGUID: +Qiqmo7gTwC+bOdmFb9IDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="256562756"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:18:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:18:10 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 06:18:10 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.34)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:18:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jCcYWCfQvOD9nntpgtaPCC0qAFqDGRR3m8z9YrmFVkP/VsAp2Q8FIwy2g7w9bXGdgxUyfcWLm+zNzbnU1M8eEBxDd9wPao///6n7HZeTluCo9+FpM9oyI83nYrflgB+M0lvrz2DRaEzZxQhTSYjHq0IzGIRaBrHTVi0EK4R7/QvDeCvaZdZNumwsReTXMWvcLdCS5pSudq3r20O8f43sZrdsO5UrBLGl52RSk4togxsCmNzi3/K7/7zu1PRMy4nNJfyD3692D+r6mEVWi7yXm93/iRMHv9w2DqItjgPo9LOisXetljHB5OjjJ6K3bEASBjGe9yOFISVkf70MrpNd8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=loPvIgAnZXzz/VjsbRFbreWa8/1mhG4iGY7D4RP38ug=;
 b=ogDCXRsmIlEf4qGljnX4LN783WsHC16hB5wfQtWgOJlawr7ZRRdZ4Mhb24bA1Y79xbK8PsQjUc2PTEg6QtspfI58jMfZh71e4gv52UypY4q0VUAaY1K3z7WEAmBeAb3YiA+IBE2mErBEvmQjUnFqPVgYoFwIscSXAA4f9vqLLTYhXSn0w/BOCHFpP1bCIKXOR/NFzQNhtw87vkAkQ30ezWmj1rmgprYKs3H4Q6Lq/Xs16uLIgPJgwLNNYLz4ygixgU4UZLIME5PIjTcI/3qFW3xEDwbvb0KT4SEtGGXje0WFuOZplu+vbYo9x/m9NAudbLPIXRbv/vYuZUPATapJiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 13:18:05 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 13:18:05 +0000
Date: Mon, 30 Mar 2026 15:17:57 +0200
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
Message-ID: <acp4BblnJfpVClct@boxer>
References: <20260323182823.5813-1-teknoraver@meta.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260323182823.5813-1-teknoraver@meta.com>
X-ClientProxiedBy: VI1P190CA0021.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::34) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 18735b26-db3d-4efc-6077-08de8e5ec6f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: skjVbsLk14u+H8n8JOBT1WjTCLEwLkmJdfqrLcW7ump8BJdRDrfIW9s25HW8Cw+ePE56WhWMkvrTEgJZGeVLn/KIbnb/fWQqVD1WfgQzRQZSN50Q9dMFCeL49G+bBgrwHXI58l7PDr/PND2H87NB/VDEpp4Aeq4O3d94aSejfTwEy+uxlMgQxoifcFToOESbRZFc2oTRgE8ce9Dm+IQlC0qPALIUzrTawgqmv6ojLknDTO5y3ZEupUmsFztJ8m2aLn1cVJahWlp/Nyya0SXL+AykH78JJQITWv4ha712AqXb/2hWdrLiKAqk6xiWbTXWf6qx4/m8c31Raog0kMQjKf7PtSVJmlRp8P3oW1JbNSrHSUSRwzrwaM/iG0K/eBaDUfSQTZfb0g0DUsU6V6eEJm6F7O8w6JBdydcr9wlkcGVPxWOOkOHNxwLSzqJMTM8U5fLlYgM6t4m54X2MK8Mni7fAjnYhKUT48YNgN2Z2n1Om36id5k7/0bjPHanF7oRMT3SDQCpaN9owRMg2T8UObUn8Se0kELGz60vLjNJu7LnXNMhqto6RM7yasYCs0HeNC3kVpZUcJxL7ym0hAOU11QGNpHDsYnlXGu2Yi129QfCiEB6mhr4jM6axiIM/jn+NkBnlzByWufkeL5UrX9rEl9u7iqbOraupPV5PkZMF1AbvVagHtZwnDij3y2nePvFurbxF1bxRWMDtalE3+s3sl4Z6HcVp+5+4qPExckCLtUU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5UnDnvYVQ3bOotVsLbgfN67cWQcXBzCJc31re+ek4uD1iJkWn9XkUSM1VXm/?=
 =?us-ascii?Q?x8/Z8gDQMANdqE5EMp4QyS4jpBsz93bb/KgRS6tjkQ50RFtDeNBBEF1hoyyJ?=
 =?us-ascii?Q?H0GbLylLgobftRlb7AQNya/8oqDtHJb9og6oUuERbmt5ImmuNVG83WYH1ydA?=
 =?us-ascii?Q?ROs4VJwLQA+1fAtGe+ONmQ6PIiJlk7aZNzY7yce5GRqFHDAvztq4mPoHjhtM?=
 =?us-ascii?Q?lfZRCSSmo73BL68OKX/nv26WA7pagnp3K6jaSLIZ5UBFVbTLGa7shsbbAArD?=
 =?us-ascii?Q?7eusd5KnDolbtA36e8rVHzGCRGyHbVpbsTizBopbdgH5X4Pe1EE0StzLysTH?=
 =?us-ascii?Q?BZYVmWbRPwuOah6Sq3DXTh2EeHElAHNb1hSqLvfpt3QRbEt8Wo2EWaTRVOEF?=
 =?us-ascii?Q?NP/LFILowj7Q7+SSpt+REy9wrsapbLCrzRuvjABHSbGkdXUBdg63mN6clk17?=
 =?us-ascii?Q?IMt3AewZ3Elf3ofDSQMhfFniQXrVkMRF8fzp7gVQ/ovKh7joa5fM9XtMJ1Or?=
 =?us-ascii?Q?+aTvo5ZBp7XMPXsz/v5niu+41HZqaQlAHP0QrIDC+CzT7ycJMTtFOqyIAnS0?=
 =?us-ascii?Q?dK9es0sAQ7vUQBFofhGLhQw43xfcVgNs+JyBgY6UFK9Tp1zLWElUcOJsbcKJ?=
 =?us-ascii?Q?DlI3rWD050hOvYx6vmWyNwZqg/owIPyZ/gwLN1g4lMs0MAqSzmlD4MHqjj88?=
 =?us-ascii?Q?Vin3Ra8a+ZuD+fszDJIiD09CTcWDSwC3Ka8X9jxrCRarNYmXbtgdTB1totwp?=
 =?us-ascii?Q?zRB1El30v+sFHXeeeALnduWkGHHQGwPNQuJPaIMiQlLzPhXlMnDjz+vLcchg?=
 =?us-ascii?Q?uwojFOv1gcOcYuDA9wCC+4FyC7rgW5NVxtWRThlkUDow/8oJ5cqz3YUGg5Yn?=
 =?us-ascii?Q?lDcUkUDrPyIPIYUAlnj0nIOPUZM1me17smoARUQGI3p3wvoBYEBSkk2nWOH6?=
 =?us-ascii?Q?8QMIzNkh4hA/RJ6doHYGhDAGHZwpGT2JzX4Ip0xwvJrhKQCMD8r+Px5FY4ni?=
 =?us-ascii?Q?rl+KyBEj8ctaLaQg9TWcj50Ylu/DNz58GV6BuSbEwXCEQDZO3uu7FcdGscHE?=
 =?us-ascii?Q?ETRlkCkAW6m4LCmhpFceN0K7f99YzRVleL6FvkI7jftnhudGRHfwH2abcD+/?=
 =?us-ascii?Q?W0Ok5aF94aIZykO60BwyXYsqT2HkJbSq71h/J4FS3qch9mR2Q0hZH8qgjnxN?=
 =?us-ascii?Q?NxFvBE6Aui9tfI1O98mFO4SrNBTL3EFMPrqim9KPxZ+cX2CLzS5dMGiJxvXR?=
 =?us-ascii?Q?E2MQJ00QmfrBi0IspL7s4yaYH7Yx8rZ8M2Ra9E0MflohbyAIO9IcY2AFEISw?=
 =?us-ascii?Q?w8Zfgi253fmggRcHc95cRRU2ENcOkm/ycfpzQIvX9r4GFndgNNwrKjA6snhr?=
 =?us-ascii?Q?qpLWe2yFLYymsgvrnIUlNUjwFjtUHM30LyrVn6ZB+B83c8NAHAd9GC+FahTE?=
 =?us-ascii?Q?bLVpGkWuHhH46uWEWnKTusr6MoMKCOLwIBRqc0uAnpHzIgClkhTh3mNB5vIH?=
 =?us-ascii?Q?npkQZROK7HJwQxi7HAuzgi0nfQwnrbDnSsDtkNGID8h/QCUEduJxa8OZ4dqI?=
 =?us-ascii?Q?uB9eHshojTZqneZH5fHU4GXcsF63a8PJ197ws+N4ScOkJBXSVuEad4dE2+zM?=
 =?us-ascii?Q?1EskitDFQH9EJiYgGltueiR8oxkhiB/sgQPER+3W9WX/4XEH7NTg+/FEaavg?=
 =?us-ascii?Q?P/hPq5bqeMVpl7gNwqEg8u7NnT0pHhHtQVmx3eWoENEY4lI1Z1RuObwzNy4p?=
 =?us-ascii?Q?VS7fJlUpjjrN5hLSY+9PBnMa1jU9Nco=3D?=
X-Exchange-RoutingPolicyChecked: v5pR35PIIv0LHyGv4xFW4HUFuq1JbjSpOrYgRiLvFKkJTKSpKxKV8Dus3aH/JG6meY4KdYSvVfSNF/MHFodv7vCrxKtuvusE6AEFKjp+s0sREw8GHuVUSNZnE4jLM1HCo2weSz0TLbTNNcCnu8YxuPfbG2JRYZR9FrGDaroa7DM2NSXMD354r/N9c+5r3HKgyL44IEG/SKH2u5bgQiN+ZHO8aEn57qzC5ar40OF2pBX5GNuD/20w8j01FCOhkEQT/U8LgQHxl6WSTeQoCSBx5VejHCUUaImXNiTfAaohrt+ajKZCq2RgjWursQC3AQFIFNMpFPOLvc7GiEEn5uN8kg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 18735b26-db3d-4efc-6077-08de8e5ec6f7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 13:18:05.0484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TM7fBXYwBykiTT5Z7btRRIJDlt/Z4Q9lZug2a/5OiiqZhRPo7QyMBy4bPs43pTxVxI5CDwygmvcvDZNg45ywWeKrcbofoThsuqND9Oitu5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774876693; x=1806412693;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pRzVTOTS4UJjgyalL5JYfdmk0syJH8PQpIJRm79OrRs=;
 b=C5CgWIHxW/im4lPsNEKNYUjDq4z32ntdpx+/iQQb8D+DltflSD88EmaT
 N6lf8Ju3Yd1LRutSfpmfpEptH+HzQScTjes4KRVpF7Dd/3bjnP+kNDOXq
 rMp4tLV0awkMgJuSRg9TGx3AX3FCzo0jzxA+OA7pF8gVI51Htlgq5d2BR
 pRqjZ4oTlRwEIj2T0oGKTlNDW3x700/unkz8RocJKdFlx1hHyKJO4uLAo
 YIyjocwYSHWTSPhBH+SCAlVoRhpfwfuhha64+pCdK6Y/IxioxrwTcwtQ0
 0PzigUMIew/CPR6GwHEHta2FMkk7Ne+6vIZU/BfvW5PZHLog1sO8CdI1q
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C5CgWIHx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/2] e1000e: add XDP
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:technoboy85@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D022435BCAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 07:28:21PM +0100, Matteo Croce wrote:
> Add XDP support to e1000e driver. First patch adds basic XDP support,
> while the second one adds support for AF_XDP.

This set has nothing to do with AF_XDP.

> Tested on an Intel 82574L Gigabit card with xdp-bench and xdp-trafficgen
> 
> v2: added a missing 'select PAGE_POOL' which triggered a build failure
> with some configurations.
> v3: removed a leftover file.
> v4: bugfixes
> 
> Matteo Croce (2):
>   e1000e: add basic XDP support
>   e1000e: add XDP_REDIRECT support
> 
>  drivers/net/ethernet/intel/Kconfig         |   1 +
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  18 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c | 610 ++++++++++++++++++++-
>  3 files changed, 617 insertions(+), 12 deletions(-)
> 
> -- 
> 2.53.0
> 
> 
