Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD705B9954
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 13:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AE98812D3;
	Thu, 15 Sep 2022 11:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AE98812D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663240129;
	bh=8tDdYGraDRHikeS9qf3DCoayttAnAmgUCxjiHXsep68=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HBgoXEmqitQ1PSKJkuPHyjlTVi016UODWWCc5kgn5Gm+vLEn8wxf4mVtUfbyN3C/h
	 Eq78SBwn0uRM7SV+ogr52yhmtLlP8U7YIOVL2ePQaw82Nq3Aw8C7lCjkaszVPbuf2m
	 H5eoJwkgaaSX3yaJGBEanN2f3bakMhAgSxX/+3YYcuk4gFC709bdrNR3amXW6RYluk
	 oilbPwtn5zXIb+YQ7vCaAluqpufJlWnMKjS3/gmaMehD5Gy23Q0AaN7D3fQN89jK4E
	 UmGLKA0k0glJ8JV0JuKedbDL1c4nTtSIgCy4O1gvnjnCfu/WMlaWB3z4iDWbH22DEt
	 ZcDakhDGl1m0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PDMJEmloGlky; Thu, 15 Sep 2022 11:08:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78197812F2;
	Thu, 15 Sep 2022 11:08:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78197812F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23D911BF414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 11:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE06460A88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 11:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE06460A88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Gl8KYU-P7Hs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Sep 2022 11:08:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 211D2607B4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 211D2607B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 11:08:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298677719"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="298677719"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 04:08:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="594774598"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 15 Sep 2022 04:08:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 04:08:41 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 04:08:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 04:08:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 04:08:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsvGkfXYoie7OOjhRvFdChk6y1SYLuFq5mIn+2253f+Lt/HpWicJhKDk7gabm/Gm8IT/ZWQSK3iU3lOjTw/Z6APpRx1aSuz/DAvr2nN6vQRY1ll9ISWbdTKG9jyYp0IOIdBraNmGT5Iq4H1C5OgHdYkTf/MFgrv1CYi9VwHNTVSTgGJNWG7jwdFKEK3qNZ953JR4NO6xRHtHe08t6IhRd/sLwA9hoIwqXWSZhTB7SY8PhMauLeC2fc2NCVd8pERFxvoKLVey8fC4IhYCNLbLPMZ3hNGvA+B1pIwQA3Oha3dxFmIOx3UVo+N0NhHqXZbbfiFxq5/nJv5qZ0QwsvAWrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9pUKEzINTEB96QFaHS1WxIGkz7jf0F0BBbxpwz4Ysfc=;
 b=P96TM/avxJqlkqzMMsmSujWFNw04w38Jty7RSoU3LXikroIM+n22J8WJPj4UZCLs7KEiheQNwj8jzZ/9y7gGGiGH8JyUR8omJw4lWbE8g5rdr04NYO1r8N3wdHpUKrUC7OXX/Or5NBKhbUtAH70nLNzLzqt83rCSI8FtxYV11YFIFwnBKjVqPp5RJSr8ZJO22R9ZC6I7KqkJj/vu6/2YGT9DHGyXjiFbtMVylImxzzYAI0aKTbWvNFYjVprHsEfYSgpkP5QcTcLj8Bkmdv2B2AJivf5j/5ZB2iWHVAPPScWykxi0+cgyRx9U66MJf2eZdqz2X26zZy3hf+MsztCKrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3608.namprd11.prod.outlook.com (2603:10b6:a03:b1::24)
 by DM4PR11MB6336.namprd11.prod.outlook.com (2603:10b6:8:b9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Thu, 15 Sep 2022 11:08:34 +0000
Received: from BYAPR11MB3608.namprd11.prod.outlook.com
 ([fe80::7340:bc1:6e67:fc79]) by BYAPR11MB3608.namprd11.prod.outlook.com
 ([fe80::7340:bc1:6e67:fc79%3]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 11:08:34 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] i40e: Fix set max_tx_rate when
 it is lower than 1 Mbps
Thread-Index: AQHYvdd0WJxA8wsog0WQEeFMqlGcWq3gandg
Date: Thu, 15 Sep 2022 11:08:34 +0000
Message-ID: <BYAPR11MB360856FCCAA42FAABAE08CD58E499@BYAPR11MB3608.namprd11.prod.outlook.com>
References: <20220901074933.1580713-1-andrii.staikov@intel.com>
In-Reply-To: <20220901074933.1580713-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3608:EE_|DM4PR11MB6336:EE_
x-ms-office365-filtering-correlation-id: 2c7af60b-6ccf-4171-f56f-08da970aa197
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eyFqQTVeBKGlacBDZcrpWg2d+7oAwrUtDDNms12panuXmsSUWhoY5D+vJ8rHop/qXSvP32Jiff/Zcw8IF3khwhluGgcEuVX0ePJzqddHm2pXRmlq3AYT7QMa77sg/wP/F0Rpb+gMeHhRJB59elkBQ22Tu3gCLTBa5wk+Wd9Rdh1lz2J1utr+gtil+7YYHwxnsetFXfgxE70L22Zqd25yXdCxNVlVUNu/6byPCUFfqEElxEuGt9c6jbmX/eUIUGz1lI+8UZVsovNVu/nl5s0wKl+uVt4wDW4fzU0PD9XvvamORzyCvMRmqhX9wTBO8cIMbDE+TdWkXzOgFu5PNDxXvEiM/eT3X3IuXIPD3nGUZo75AdziYr6PndDeyk8a4gjmK1eI6JPoNPZaA1rRO1/YKfMfpIWgh2f6aqDd1vZGIbiekBiWIhzqGFBXvfxEhAXKpdgCOdnKAcLqPjYoCIRIY7BMJnshXha+TWOPkjTZ07lW6I2hqbxPqfKOFcGttW2TC4/T0nlXqZSq02y2kAIgv3RZPnHQ5ukJ+Sp8xEg3mH/Omg7L7cJT/TVbDJfPYLGXLSlxbBdXcOu/eqBQpgMBQtJY7AoimtazEhXVefIg+ucL41Eh7RF2WcMkNhi9HNgJ2FEG4YZvbbqWJ2oZFS9pNDTwo1wT/6mf8N+tsiTbp2C+MCEe26wBWsQPL0j2htnmV6BPuzrSYBo6o8OQrVWQx7p4LXnfvl3aGA/Lkx9PaCaMCq4MVfr5JX/3BWi+zOj8OrrrTBO0zwsF9UYMgBCxAkHi5Q5QLrK30WGjODXl170=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3608.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199015)(64756008)(38070700005)(66446008)(66476007)(316002)(26005)(186003)(478600001)(66946007)(55016003)(5660300002)(122000001)(82960400001)(53546011)(86362001)(83380400001)(9686003)(8936002)(7696005)(38100700002)(33656002)(52536014)(2906002)(41300700001)(76116006)(8676002)(6916009)(6506007)(66556008)(71200400001)(20673002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8SjtrJIQDZIVLOviS/OtP5yKTx3e4MNJlu+TbMzkleqs/hmn7FupBXZ9bgbu?=
 =?us-ascii?Q?glRV4pi0SoziVFP/yIjy9OvNUiaHCUaTAdt3diPv74uhnCdpSvNiO242dWDi?=
 =?us-ascii?Q?vtvVxxbLnnAI3IBfhAtby7SwqNvuHhUJu9tqHHf8JTIWugsk68fmbaNDMGWK?=
 =?us-ascii?Q?1EcJ/jn1Zxi0KvM4NbutuI3Vb1EcxPcM1jp41tXLo3mw/OIj65KkghNVmGM5?=
 =?us-ascii?Q?5k0J9YEyXn4CMuaSihU0NYtBQVEfJz4dhGbC5BvLhYqV//HPo0KiOC6eNL10?=
 =?us-ascii?Q?ru6hFmgeZ0Aini2c/QIAWhzLJGqzlw229i0/BdIi9qo7dwFytPcwkQ3Wwpi/?=
 =?us-ascii?Q?S0fKRBMsVGVMIkVGaeBkZV29KekhiFSS4l6nlm+caI6wn5dM2sTsEiuj+pxP?=
 =?us-ascii?Q?mvB4OMojn/NXogKcn+Tza25chug7S3WDJalXjABA3l74DlezJB38Nc2d4pJT?=
 =?us-ascii?Q?e0gZDKjJVu/URv5+7I0gLaJYRtQ97zEC1kI58OrPetAMn9A41EFYYRI4VDPa?=
 =?us-ascii?Q?ysZ8/4XZfrQs5P9E68PZ68cS+wfcKo8TycfJmAAwDxJ/n6nQUHrZzXTzaXhm?=
 =?us-ascii?Q?QcMkwUnEFq+cDSbo6nLfzzk+Y7GkxdZ45XnA46JWRAPMNygabdKp6L20HCxo?=
 =?us-ascii?Q?aGU3cKUP7IZWyzm8b6ZFOvGsnsCw9CKf2+6X5/qjBvx2cXNm/MJeUpjM9A/j?=
 =?us-ascii?Q?F/VSRaiO4acD02fkDslk476uZDBRoeSFb0XvZEfdn731tmgBH+pvuRVk6bkL?=
 =?us-ascii?Q?VweqQqzhw1EWbW0zNwMMqLq2+osB4L/OTYXaSuIZbq9pCt3+7JsWC9JIz4XS?=
 =?us-ascii?Q?u2kRlBLf1g3yBrVDM1Pbg1Wkh0+T6k9qSmD2k9aWxKn88d41dQHXxdzG307L?=
 =?us-ascii?Q?4N82wVE3ugnu2BHxwjp9xnpO1TKb1DNvVX4g1wUYkbe17H/Xq1nNQrN5aj4z?=
 =?us-ascii?Q?uwZpwwfegNdiDN95QVhL3/f+l1RvmWKia3I9/jUAl3RRLD0viNZ7Wi9pwIOt?=
 =?us-ascii?Q?8AgWe1/gbovcAo5Fi9KW/zaSHsHl4D4tyIeUexHB4FmG9zfbL3S0WIZSrwz9?=
 =?us-ascii?Q?oWVI+1lFBzHz21WKc0jkZWpqlNeJVDSMT+e85tKVIekUnePYkASuP7ppRmLe?=
 =?us-ascii?Q?UehtUemlCHLABjQIXAW1Ad5cgFiTs/AKVFTYvckhH3Rwg7zl1cX4Ak7g7lWr?=
 =?us-ascii?Q?BoMXmLlnBt4bAhDZvbpszdoY39yY4mh0MmzErevlYjWKSJA7APNhkLUynKvq?=
 =?us-ascii?Q?816iEXX3DvJAX58N2Sp3ZMclapc9nbox6aPoeKsH6Rj7026HbOO9oi4O4OTf?=
 =?us-ascii?Q?8kPkK/r2LYHr+BDuS9B0ynj7po7Hk8CdXgNbd2dgQ/h1sYx8zg0ck0ybc/cs?=
 =?us-ascii?Q?2QRIQPBbbRm1LeutUTwS2gkkVjoO9M9Cq9803yaP4LdUcLiAIPu55Ns0eQGp?=
 =?us-ascii?Q?Cs4XQjt/VeZMkkn5tmVsHU4QqRBnWm8a0HX2O3N6fKrrrO8Upp8kSM9TmjUw?=
 =?us-ascii?Q?uyotDLKBqHo+LSfDnLoFg9UbPjb0OtTxER0Yvdjqmd6FytNrZ1MnV3Vmx3C5?=
 =?us-ascii?Q?oV2sN5UqMgVQ5QV4qDR4qyoTwrItLatm88TlUA3N4CzHSDIzg04vSpaorj3W?=
 =?us-ascii?Q?UQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3608.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c7af60b-6ccf-4171-f56f-08da970aa197
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 11:08:34.2747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eWjjVJ7QaaAB/To1OCTA5jJ7i9i66VIPiwWYme62VflGqEX8hGwPAeg4VysKy1NNNBIRKN2Kfzc/QJt/mG7oKZmfRQhM/I0zNaql0Jd+mZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663240123; x=1694776123;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qejkU1Q8R1JTlr/8tIJxiY2Fth+/OYnJX98N8EftS6A=;
 b=PoKlYbifsE0fFGCttwiiem1ZexiV5rLo9v8X6GbSthZdiFnCKESZgerD
 a7Ql3Bkt7UY58ghcd1QxkQa5Kr9xhjGpSR2ulhFyx9b8aw5s1CZ6CpvCs
 hYHBqvjr6X9uiN63APmjiqG9EalWKlsILy1CYkrnCjOkC+ZiIGuPGsp3E
 6CKAwqrvUFizSRrstTrH/E5VZk3AyNbro8ATzJ+jmL1sbBYBvs33bBqcl
 vE1/e9QwQEfzCyU8wW8mjxRoW43sMn1bG+es2WApyc8nv55pirMGojZFZ
 vBZ0Ns7FMqqE/hfdHBDroPxAMZ03A4iTbxTNnF9mC5Y9AOQRMYAgCCnP3
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PoKlYbif
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] i40e: Fix set max_tx_rate when
 it is lower than 1 Mbps
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andrii Staikov
> Sent: Thursday, September 1, 2022 1:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>; Staikov, Andrii
> <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix set max_tx_rate when it is
> lower than 1 Mbps
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> While converting max_tx_rate from bytes to Mbps, this value was set to 0, if
> the original value was lower than 125000 bytes (1 Mbps). This would cause no
> transmission rate limiting to occur.
> This happened due to lack of check of max_tx_rate against the 1 Mbps value
> for max_tx_rate and the following division by 125000.
> Fix this issue by adding a helper i40e_bw_bytes_to_mbits() which sets
> max_tx_rate to minimum usable value of 50 Mbps, if its value is less than 1
> Mbps, otherwise do the required conversion by dividing by 125000.
> 
> Fixes: 5ecae4120a6b ("i40e: Refactor VF BW rate limiting")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
>  v4: Rewriting the commit message from scratch in order to make it more
> verbose and comprehensive.
> ---
>  v3: Providing the visual behavior without the fix.
> ---
>  v2: Changing author, adding fixes tag, changing commit message.
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 32 +++++++++++++++++----
>  1 file changed, 26 insertions(+), 6 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
