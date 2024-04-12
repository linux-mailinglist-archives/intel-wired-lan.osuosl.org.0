Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 495F28A2BEE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 12:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 863144059D;
	Fri, 12 Apr 2024 10:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bkn-CavrFnEx; Fri, 12 Apr 2024 10:06:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5B4440785
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712916415;
	bh=GryJxE48909azy5oBwZ1uLhQHf8ObTCJy+yGeb+PKII=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cw+t+A2kOg4W+ZQxqZyIiu6W/iWcYds0vbGNWAKY/gnru4mtyBu26kOzn9biUGV57
	 uMPFO495yFmW4CEm0VtDT9hQ1Sf82G6Xb52I7kgiFUybhoUOkuzPdjwOffX3qZSC1a
	 FilBXJfeYP2Y/8wiGomflk25cUWDL5RjF+aprsC8lmkS44dYk/dLS1E0vD6mFF0qrH
	 MMRSfqftQW81M20zilqx7ySoSYHGg/GE3mDxJttZuZ5pUTY69cFX56NZBnvVRJ++wv
	 Vl7oLeroCH3GwbX5vziyMKz5G7T07VNniAjXeK9aQZKWYYHZ3YLOwTeCoHm/gjzjat
	 /2mIvL/4pf5xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5B4440785;
	Fri, 12 Apr 2024 10:06:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C87C1BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 10:06:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 182D1400CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 10:06:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5z8pz-af9UD5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 10:06:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9EDE0400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EDE0400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9EDE0400BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 10:06:51 +0000 (UTC)
X-CSE-ConnectionGUID: IK9f2kOASVqaWEOr+BCOHg==
X-CSE-MsgGUID: aqL4ACykQQuRNq4i1KFjXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="30847619"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="30847619"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 03:06:49 -0700
X-CSE-ConnectionGUID: IUWnpUFKQNKfz0CgbDNd7w==
X-CSE-MsgGUID: 8Y7ljx1UTsmE0FQiebLCMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="44455686"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Apr 2024 03:06:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 03:06:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 03:06:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Apr 2024 03:06:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Apr 2024 03:06:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcgYuMrTcDiIlk0k6LGIklGAahjws4CN5nDUpQL7I//bxou4ZEFFuCu7ID102XRVGMeBCkHZXptWgCcXjVh1DZGQ0pbhvX03pSQgkMyHXeYjBl3M1sURktN3e8wvPRWgVFqOBaoSyXQj46nqYu+Ma9bH9BlOtVVmhvKiNuDsPILmpFnXSPFCs81iphHvrAsnmj6EPD7qsrN8EO2hyMXleP94e3vHFM9OY/ALGlVyVMWuAHZ19a/gS/NP/4GGHhABGTJJ4PvCmJ7+vNaKxTAQIsai8TUmaPuSMFMZlhOH3TNoZMKexB5eCdqDd271dXysWMAFtTKCK1P/7RXrOO+lqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GryJxE48909azy5oBwZ1uLhQHf8ObTCJy+yGeb+PKII=;
 b=DBiqA0CyCT6jLLiiWmAy8uLrsLeEuApae8mtO9HBU4z7r3BvnanODoCtgipRLdQWNG8jFDkhPsyTG2XlT7VDen3ZDFwHAvwD7AFraOgB2vCyR/uhyClX8qeiDpzdLOjw7gQjmWlB0Ij51JdzyZ4aqXvkrnsl4H9J6yzkexApgeVye2192g8lMCaJpXv3057PJVjnTpwxQ/3LTFNeAsJ7c869CsuUiCPCwEsaoh41+es7sJFn1lRxAVA7m/VdrAaqIf6bE1CTRyKJJ7sHm9HnpjjpR/0Tz//2K09ns1LBitz9QCFCJ7dkMC9I7iBlT7OZa1rn1NZFF/nGN0uRqEo/EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ0PR11MB4846.namprd11.prod.outlook.com (2603:10b6:a03:2d8::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Fri, 12 Apr
 2024 10:06:45 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 10:06:45 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v1] ice: Remove
 ndo_get_phys_port_name
Thread-Index: AQHacWlQRp/OuZlS4kiUKsNOauu95bFknx4A
Date: Fri, 12 Apr 2024 10:06:45 +0000
Message-ID: <PH0PR11MB5013BF47AC623F7791AA52D696042@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240308105842.141723-1-dariusz.aftanski@linux.intel.com>
In-Reply-To: <20240308105842.141723-1-dariusz.aftanski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ0PR11MB4846:EE_
x-ms-office365-filtering-correlation-id: 9705327c-b5c1-4903-a2cf-08dc5ad842a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NQi5MsaPW0CxcxH+dcc6PKMJ8cn0mvqkOFLXn3ysQIO+EoE+v9sDLPvrqTOvyPpXOtfAO/6u5KZhl1Zg6Tnw0spEyGa0J7NjdTNu8M5Es2pkMQ5bZI19z6+a/heSXjOYrRJLmhLvYLbKLDrKIXeJMre4U/yAMUsf7Ton2Acalm4//p14iuC7bfK+FmzLwxMNd2UO48ddQbH7vSzgDDOwc+bf72cNwtZV9nPgTho/oK0nohACFIHxhxZy2sEdfj00Ubs9quyevZeONtjwlPgo2ZumCQSzihLPy8HuYMkr4TSiF0PmqbA/ehSX18BRrRd5lQbuKgfFlBNq0KqswlZxj1JXrAlj1wPSma8DtcDGoaAS+XIxahVim4+HwOj9tG7Dact6w/Vb3Aj3sBGbqHhP7WsXiQrJJnXsvqqJ6zhqgqtFfmNBqXfbeCOCJB8jalIwBkwi0rKlXIEIhSfae9BIHXnnli72b4S/M3nNUvtUwcAB/XeV4T5Efr44XLND8ry3LFthsMOfJ45Jk297YW2Uxaz6+LOCslC6KseiMoYTufGh8KouEGbmARr/KbKE/F7sMyVV55Km6DrxLYay3bgVJlzc2H6TgkNXGkRrsCTQMSYLbfdtxsiKwtLOa/8iq3xeRFmb2BsKKYugAroOKwR4zsV3+DyGIb3LpONwDA7hL+qSMOmt2GyFFIP8wXojsfIxefReghQsl5GiBP03mJN8xdcJp70sy/SZHvaPa4SlHDA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e/5SIokGZfuW1AbblhJUZaXzSsPxCicElAuPev/24FNFeiSSwW4m0OfQhv48?=
 =?us-ascii?Q?dY5QZNX9WP8F3mZQFwgy6T5mCTRATPyOA5Zp/bx3m012BLsL/TpmNwIDCTRb?=
 =?us-ascii?Q?ZjBAKtO7h6dtbwdpeE93FLjBRcYxgksnV7sAb/RhYMpkg1+PqxLTxMBaxBzT?=
 =?us-ascii?Q?7qXTkZZOKkjGG9EeVQ+nL6bC016ylExsjbnWaesGqGM5ph9zBcjpNjw9epSl?=
 =?us-ascii?Q?zD23OPA16+rrgK6WJQBbYEEBdTFTYROejnApCFqGUZlu+B0o1tezuiCen3qc?=
 =?us-ascii?Q?E+mJfeP6xbM5/PgfN62yclW4h9K0Ec0827QQGxeOKWHe25sXCULJMhwBamBj?=
 =?us-ascii?Q?v8c0e1agP4krMnpNXsfDjRW+LF3OaMZjrlIv6JdCk4sz/pYJRoM8FeSCUDA5?=
 =?us-ascii?Q?z4kh3rYmE9yBND0SpbsQfjjTbB7pwmBLy1R6sPfUx0Wpmn8gKeAl0oUAeMk1?=
 =?us-ascii?Q?NB1oRwiEKIbY3KtZ+dqnfv4EXXHR9nx7IF/iu8ANGUBKPev7e3afGpwRcfmS?=
 =?us-ascii?Q?QSQ9B2PEY07xGDAnVKlBpE/jByzbZfXgFvU14aOMW4YXzmlBWkptEIXYc7Vu?=
 =?us-ascii?Q?uaM7ZONGHlvyqUt6U/9/9w1chHUtreuOVoInR8XJrUThQDVdNwrUhf0OPl1I?=
 =?us-ascii?Q?n66V8NFyygs0fC5+TbMcn6JZHx9zVkd3zkknIKNg7gU9SdS6u/PLUKFWaRtp?=
 =?us-ascii?Q?WcDNLhUs2BNv3gUMPJe3fMnoK0ND1Wz/Pb8ULvwrDy2T64+WAY86rmmA1x0N?=
 =?us-ascii?Q?PXSG9zwCrIATVreorJq0V3OscehULjuGJH3USM3qoLFK/qecsvD+C6zYEWSd?=
 =?us-ascii?Q?usX0hWdQE+d+oGyqoxT3w2p2lD+Z4ucZb/iQjkHavxMxIiaWzxlgVwJP9Zv8?=
 =?us-ascii?Q?qbK7aHs2HBHUq+4d9WINYm9CWcNKQMLucJsD9Y4LRTXs2wtJiN1vPYpZpb1P?=
 =?us-ascii?Q?IQyB7T6KETzeqbjCVFgWXtb8CRQONzq+KKCNF0dER/P3un1L+/LbP6jDkj05?=
 =?us-ascii?Q?RWcwasSkTxv3I/LZz8C/QNfjEqssp6iYG9QQZmtPGqCTj5iUoE3/wH7t66VD?=
 =?us-ascii?Q?AWtcV4lJIl6I4kHE9AEx/fYtHxTUHwiKl+sDSGbWZMyeiQJcF7y17Gvd5GB6?=
 =?us-ascii?Q?6wV97vBOK+5LQ/mDeUW8h/054/xuIVYPmhIzzGAVI1daDvT1/AzKkZFZjQxk?=
 =?us-ascii?Q?S5rKU9MRdo7hS/F/sKNyfNjQ2zi13GW4LJscT+uQCV2wEKJn6KbUu8MhsBk8?=
 =?us-ascii?Q?xmXP800W1QRVEBp7NN9fOkAiHRwccpu9Kc9i+l6naDZ0aPvgA7rzh+948t8a?=
 =?us-ascii?Q?K7jKDJgk5apq2nUzwFOnTk3h+3H1QqgfzgcaaDqmNbG9vrPaSu8cZLRHLVgi?=
 =?us-ascii?Q?7xgs7xaE26UIo8mpTSqNXK6ZjxWhsta8Ve1vgwTmMhQ6GoY3P544AgcBu0RI?=
 =?us-ascii?Q?8wheoOxUPtYL0ChxakXjv7isKwUmk00ce5vYfYGaZv08M4Fs0y1U6Q4bzI6C?=
 =?us-ascii?Q?rTHwyqlGwXlo0NnzLhDv2Py4kCGZ0DyYezBJ9EljY86v00+78z1oWLtNGWfZ?=
 =?us-ascii?Q?SyXv/XgnTTembh7s8P7+lYXaWglS5LAJZ+dhghQ8WvZBD2pgtWLWca9knnm5?=
 =?us-ascii?Q?Gw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9705327c-b5c1-4903-a2cf-08dc5ad842a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 10:06:45.7271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q/9mstshgZJH2guGBlpUgVmhlN+2JEfE7FKH8gmMc9ZXbW0XhIJKQ74j2pGYm94E4zjjq+QTEXUSqjb/N/6czJFsC8ozoh52uQkDQzwTuoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4846
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712916412; x=1744452412;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uq0XXzJ/snhkBEfOfFhxuZqZUObA4qqC9LPcGIrGdss=;
 b=YxZQJXHslOfuHC+yhxTYW1uojkVVUaRIvb4taLzeby1hl2yKPM8i/HUb
 v30OS8yH+IiRWx77+GqOdjD3YrXM3cI8KjSbNimq4SDF9I9kP7mf3odMT
 VEyyhHf3wp0aq4em/ktwZ0aRZ4h5lPYQFs+EcXxXVY1EyWDSVdh3PveRn
 rM1nOo19w+SzSuz1cLvZJGBn29UCQRmIO/LLs5eZXXGH+JA3MIJr+KsbY
 0VuTF2tIrUk80GnVevoShTbWxiHJ8jXMGDVHDLhNdIKelYtmHqYtUb+SE
 myxCSSzbibPiQsgo0V9ldsVulvuS2/onxGZyu1kI9RI3S09aYxlr9WfqT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YxZQJXHs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: Remove
 ndo_get_phys_port_name
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dariusz Aftanski
> Sent: Friday, March 8, 2024 4:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Dariusz Aftanski
> <dariusz.aftanski@linux.intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-next v1] ice: Remove
> ndo_get_phys_port_name
>=20
> ndo_get_phys_port_name is never actually used, as in switchdev devklink i=
s
> always being created.
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_repr.c | 34 -----------------------
>  1 file changed, 34 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
