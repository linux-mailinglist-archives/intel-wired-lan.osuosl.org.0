Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJkeKF/PGWrgzAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:39:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8030C606AD8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:39:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F92842394;
	Fri, 29 May 2026 17:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4GwTnkYFKeM2; Fri, 29 May 2026 17:39:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9EE742391
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780076379;
	bh=ZU8D0wBB8OfJ0NPVoiUH3BBFA2maI0dImOLeZzj8q2c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qhaRgnYVcei6wvHHBIT68lfYZVdNj4ZZRCMfEdHFGLzZDu9AN6Rjlycqm7f8Iogyt
	 Q59HiH3maC/29FXLBARcY5orDAwSVIMCjlUP2cgQYIxNCeJ4BsHmyrZxODEtpwb7oU
	 1ApaKdT2jFFajYg+s7TMy4ajDvn6WTH/ScXLCe+GzPTiVgZhrBn4tbLJZjqOYh+4v1
	 AXajTKYOBUDw1h+Aw9iZlWho0W7ZBZ3Eq39ZHLFbGRiJaeSharIumDXt+17hr+nkAO
	 T9gNV2D9iZcmywaGOS+xGqbx3XCYMhprDk/2vJ2+RVQYKpeCk3+AkRALjAQxnomULq
	 TT+MCLsJ/CEEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9EE742391;
	Fri, 29 May 2026 17:39:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E188D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F058E4238E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:39:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id raNymVZ-jFpS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 17:39:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 22BF141FCA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22BF141FCA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22BF141FCA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:39:36 +0000 (UTC)
X-CSE-ConnectionGUID: JVKrEPSoQ4mPhlx3HwbkBQ==
X-CSE-MsgGUID: a1+E4R8MSmGcjsDNrjqynA==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="92316255"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92316255"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:39:35 -0700
X-CSE-ConnectionGUID: Ela0N0YnTBev+Txna+HTQg==
X-CSE-MsgGUID: 8xx+xvE0QZStkWJbWnXJ+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="247851751"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:39:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:39:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 10:39:34 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZtdC39eya2diQLWhbw2G3lcFQFRtaCIHscWzwPfM9+Reb6T8MnUoQgOqYgJ2c+EzZaO240DHXTRk1sjeDampcRRA9NQYHt6lrs0vZjBbRsmK57rYjGp/XMZGJEsZ+uqSPoq8fC+AtwEytIigbMU+ynlUyVr4kZ6A+lF4lnDYceBOSa6mk+CJ3H2SmsI3YvXIvTZq8HSm1LUmpyqRsqU3CNuj4ZxdA13mNKzMlCW3cMNBg9jNmabQ+biqukMNPvS2KI0pKfxdzhafmUpDOkW8v25lDswpyQa+CnzPEQrzCoLuHMsHG1teozpAPj2LphCTxJceDXy9b1d0ecb9knydhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZU8D0wBB8OfJ0NPVoiUH3BBFA2maI0dImOLeZzj8q2c=;
 b=vT287uQKxIkI/IVaWe/uTeXqAB2kK8NK9U19uTZ8BDish2MWdv9kh9U4B6Kn5p/sWuRMHWXx/ytUgjDVQKFzW3FOhmut0A1g+1UQq/MKb6NK9q+dk7GM0xKufJBpHMlLCxajfpEeaY57/343nZVUC55xzSCFWYSWcj95wFZkeuXlI2wH/Xy6gqEW/snGgqbZ/Iv39gcQCSM106iNgbcj3dpBqfeLNA98baqqOweT+urXuYTmPPJoPVVNppzmODgRnNtRB39aOAt50jYWMMmCpZznmuyvVvuhpwnyCAtQlRtXaUvlJR6mrxyisFIsEANxx3xOipNlRjbHUO8uH+VeyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by EAYPR11MB9561.namprd11.prod.outlook.com (2603:10b6:303:2be::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Fri, 29 May
 2026 17:39:31 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:39:31 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 01/10] ice: rename shared
 Flow Director functions and structs
Thread-Index: AQHc6SB7daD667vG5EikFFGCWDxY/bYlUPfA
Date: Fri, 29 May 2026 17:39:30 +0000
Message-ID: <LV1PR11MB87904D4F839D8D915FF4320690162@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
 <20260521115000.4637-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20260521115000.4637-2-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|EAYPR11MB9561:EE_
x-ms-office365-filtering-correlation-id: 1dc12bb2-b32e-467b-d734-08debda93d50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|4143699003|38070700021|18002099003|22082099003|6133799003|11063799006|56012099006;
x-microsoft-antispam-message-info: D0cvdie+f4URBfI5oV3E6mIP/+G5BukSsZZd9t2yBEYL9E+7q7AEmsHwJhTJW3fYqSSodBEo/qh3JohHa2ZmdcZ3Yry34E34zqzEsDN8oS+oD/LnQ4anDrzhbeBTfD94ISPocXSrae+wsJY8zu/yhUB1biItmmWGeyVROPWgB4vmMsUS29VeCyaTARB4visZ98TEhV1pEX1JF2L6nrsq5C+UPSN5MZW5QsZ6nb6w2wADWnpKXhunEqBRir57JXrFVZoSodbNdZe0ocHMVAx/FwJlTH5C+6jlMdhgXOoOvItRh0N9Tp5Lc2pQkmI/tsnjbEvoEdwurajIF94AKpblzAlRi9i98/FIyOaKLuNTw1HTQgx024ZMY7dG+AiWXIdbVxnizwQjmRo4lVsoCj256Dxef6gSAYJGuCeEpmj/R1oyvOrr3X75t1Z/lGGtvuzEICVnLtF/H4rZ3OVdZi9LGkCzJ8e9fAmOE0bJSeiFX4NIULv74nj90MxhpTYD5DBIw4BQ/Sp+K/Li9vTUS+1VnMVvaoAOMsoczjM7/c2gPbtosrv/TwNpDTELCUFs9VBueIFlEGiG/Noyh+lPZFpl7aI2Y9uTNf3GYlM5rGdUeVuzlXqLFmxYqTHS0bGuhFQbIeQUh/UzW5cKswaEWQL0m26aTIqe0oCDWWqWtyAYYG/em6gQVf3fu8Iwz1G6uN/bs07lLQUX5iBnqzNkXgDpx9Hu8dWHa77h4cTBRDjE1vwhl2rmDeL2l6hmiTq+krJE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(4143699003)(38070700021)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X2ikSK4Jff9RdelNEZu2UsQYP5iACTUv9P8rUqLB3gQ+YUHw/FqvLDGE/MJy?=
 =?us-ascii?Q?wStt+BNJ5q0J+W1YyPcm8FjXdWUHNyd0h+bXVNmBjZPzGyzdQAu1s83vdHMp?=
 =?us-ascii?Q?HMb6Wi4VIPSp2qzDAiz4ok2Yii99iZWcpPBRUc48mrqBa/cioAaFAdP02nXe?=
 =?us-ascii?Q?glajIav62jdogNkHMqXxzFroqcX5GPvgv9DgQj8e95XyiE3Wa2wEWYytbKLZ?=
 =?us-ascii?Q?9wwIHIuXB/JBU7xTxr9w4wSjdy1koiIE55A6DZjZCY0YxMoEyyHfkVd9XZAF?=
 =?us-ascii?Q?7LtVArHi4gjw65W0WAGPqvRYgYS8Wq+/j6gZmmG137JysSKCZVduODYrnAGY?=
 =?us-ascii?Q?zYR4Ma92XP/8giBW/nBobLP7cFDzf7xhgSUsFbXJMoKakSS9PKYKywpRvooJ?=
 =?us-ascii?Q?WYsQoW/B/yumS4imSPkaaCMiRmO/WhjiJvIl/xkcPpuI0lbaXovPB+wy3wDz?=
 =?us-ascii?Q?PSNv09xZqsv2IhEuZn9PLEATzjUhr1Ycprn77aeisU1mqrIFWF+UbiYirCag?=
 =?us-ascii?Q?a14P0qEg9d0Ava77NV8f+UZepQFOY4slHUhmIPqUQ1cNNHceEgWtnGB3X9fr?=
 =?us-ascii?Q?1Ri9i3vXp+Y0LKHbE6iS007T3tl2ouh+7ZheTkTfc9+f8J/ULOaAN4C/PtEo?=
 =?us-ascii?Q?+JmCEACpMw5XMTvKeNfOew0goZFgU1A0ZxDxCWijRAQtrSNdVdhwekxkKKjK?=
 =?us-ascii?Q?+7/t3PlFHc/Lx3g32GZHeXtWgLqKALsB4+n/mAi14FGXFC4WlL8CjO0aoP7I?=
 =?us-ascii?Q?cJjtAtud9EoNyWbe4FOiQX+hSdumf/NEuJImnV9XEA07NPNuHjnTgws72NI/?=
 =?us-ascii?Q?ozwrxqw3k6c5511aW7i4IvCRWA/7GejRhXww6wTGd9VRcKdH7sj0PPnYZ7De?=
 =?us-ascii?Q?unsf2k9f3I3CtKSzGoOYGYnVcuP3/YtEuoRorbvfNwGTEQJtCbKehpCz6Sbw?=
 =?us-ascii?Q?/Vbh2XijofTK2rHPeWyiPGeEnrGSC9bPrDzTpcdtrka65mqMqFGFinZYx5mc?=
 =?us-ascii?Q?ZyU+afpDL0MUvttI8nwygzFV0lxbyPthlxbg08X5dgTs5k6IF45P9Rf1PPM/?=
 =?us-ascii?Q?sRxtcfyulLAL/jyjVBOIZ7sV5UmHgLoKUWzLveuV14OQioZlgvvGIktlk2VX?=
 =?us-ascii?Q?bkSFKJxfx0Y0qy5gU3KmQ+hkzqLlMa5ltlaqmNnSvh0xpVhQn4GsHiQ1FZLS?=
 =?us-ascii?Q?ny1XUyXuiVwTtV2/hPQbJk6wocuDpl5tBRm4TmqXELChvCpsAGiH1xg7s9ts?=
 =?us-ascii?Q?D4QvzqEgGNlLhY/cH0p+1hEnUiJB8j6TlX64qlsp0jrZOoNEEqxr+VkqpG9A?=
 =?us-ascii?Q?oH96m/AAyT7IQoYxgtqPo8Ka4cAIck/ebSr6w6eGwbiocA8wBOe02X0DB15a?=
 =?us-ascii?Q?k75v8v8eGBLrntU/ATtCjfpcBW91EUbc3G6Mm+RmGx2rKed8DnUkLiCzQCMx?=
 =?us-ascii?Q?1CjcEkxv7c6cPQpCctDd9jyw50HHfemDxaBTDBt4UeWejkN65Mi3EWGMNHGr?=
 =?us-ascii?Q?gXjs/S5irwAT1cF6/nQT2Z1/FNNybkabJinKxLbzwRwy28tAeE7IO7DQ7fPF?=
 =?us-ascii?Q?10M6SqRXBILi8YFayJDJTkm/JxCPQxc0TvNEPZ0m11hRFC4JIJzrSmCDb9X+?=
 =?us-ascii?Q?Ow/W+ViktOx6qXL5oAM5wCkW2Xq8ZY8WWbMpeGIKW6M+9jKfe1EOOMkmuOf9?=
 =?us-ascii?Q?KnKLCSvtsjT9rBGY8wNj1b8i36b69W0S6kt0LHGnjcxxuSqgVPGH21RZU/z9?=
 =?us-ascii?Q?tKEZa7cIuw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dDKNLPNJPE5xMMOf4Mo/A6vO8pGy7suBjhf2tnwfY7+ntuH5pOisrfku7A1SnhXgYqVOyNqiWMTJmAI/sneePysoy/fjALWtV/8pelNSpk07ErhvrkiFXcq/jAVAp6G2LpEduD5sHFJcpMBM4Yzsqx2g4hcAucUDaKjwO+FFasKw4+ylzeEbSsTYrewgMV2VnyyeclkXEGfHIEhxK8vc0hUciUoZ7cNh/zth1jmJyTMfJFH8yYzGpPANle4fb1+jxSsGJNt655rESabqMX1S4xuo+ortXVIuNrIWprNFT6r93bDtzJs3/2k6Gt6UidVeE9rmcRGF/lkpxJ9xfCtYBw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dc12bb2-b32e-467b-d734-08debda93d50
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 17:39:30.8449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wh/ysFEc8nz5ejdFb3aw1Agm7brVNiy7nUEIGMK9LyCopa525YvQiKbhCELVqM7xzxaLlnX/lOMoo2Y81MQQv5CZ+jqH2XHY+a0cWNxBtkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: EAYPR11MB9561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076377; x=1811612377;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JeLMJL3t2CuyknzGq/54gC4y6sMt2sfFdhiHWJCUaC0=;
 b=GMVWEARxSCvSBj6NxrFctzHgfKBZYpditbGORSwPlvqN67X9MvEpaDJ6
 UYcjZA5++15cGbW31OnrcasR+w2dBjHoxLr6561j0mm1Eki4g1qC8P9OB
 kppXa/doPQWRBB1Kis28TH+/PqRz1N25web3RgYDSZzsRWZwOYZ1NgGj9
 3UHWhrzxtCKXiOrpUsF8r/p8CEEXb8Sxzqt3YrC7nJNr9Pqj6A/MFugVi
 u2Q5IrLl31F+A0qRI9RDeWAMIFlad6c+wyTmEAWLqTz0U5MDduMjqgITR
 5j09hoPzQXBLA8ZNG9qQw48hQAX4BMGGuUx8rmLnchI3Hc9pIICNXClCG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GMVWEARx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 01/10] ice: rename shared
 Flow Director functions and structs
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,LV1PR11MB8790.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 8030C606AD8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, May 21, 2026 4:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Nguyen,=20
> Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr <aleksandr.l=
oktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 01/10] ice: rename shared F=
low Director functions and structs
>=20
> From: Tony Nguyen <anthony.l.nguyen@intel.com>
>=20
> Rename shared Flow Director functions and structs. These entities are cur=
rently used to add Flow Director filters, however, they will be expanded to=
 also add ACL filters. Rename the functions and struct,=20
> replacing 'fdir' to 'ntuple', to reflect that they are being used for ntu=
ple filters and are not solely used for Flow Director.
>=20
> Rename the file to also reflect this change.
>=20
> Co-developed-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2:
> * Also rename struct ice_fdir_fltr and file
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |  2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |  6 +-
>  drivers/net/ethernet/intel/ice/ice_arfs.h     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     | 12 ++--
>  drivers/net/ethernet/intel/ice/ice_arfs.c     |  8 +--
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-  ...ce_ethtool_fdi=
r.c =3D> ice_ethtool_ntuple.c} | 58 ++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 18 +++---
>  drivers/net/ethernet/intel/ice/virt/fdir.c    | 28 ++++-----
>  9 files changed, 70 insertions(+), 68 deletions(-)  rename drivers/net/e=
thernet/intel/ice/{ice_ethtool_fdir.c =3D> ice_ethtool_ntuple.c} (97%)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
