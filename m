Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPZMOCdqoWkOswQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 10:55:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 573D51B5A1D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 10:55:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03DFD81991;
	Fri, 27 Feb 2026 09:55:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gx43EeU5l3vq; Fri, 27 Feb 2026 09:55:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F270819BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772186149;
	bh=HUKdyveMZ5UZgUcKEORZeb9bY80ZG5rzJ3uXaqDKTaY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WwcqMXY3gOlJO1UM3JpEpcFURxGDYwxp2rc97OHUSPyISDFKVLd5/ONW0kZ3KbobB
	 7XE2NY777/fuH7SAg1HM1E9ayT8jMbAnU/K91NlmSfiKrTO0Ih1dEvB2MJdppQq6DP
	 rgxSq+YPmuSMo4zxoA9llR155GJkYE4yxMIK6MwcNZCTooguw55EVsLLFxEZ2stXIA
	 zcvytLzAy4jEYP44keMH3wuQcIa3I912cc9y+lH6pepFjnofMkiwOViG017pvXgycP
	 w7AqS6Bk0CMjUHl52hXFQsz352yfnGSzZoKQktuOCAoi6arcKa4TPvH6kb9t4iKGtw
	 uSmrPOWWTMlQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F270819BC;
	Fri, 27 Feb 2026 09:55:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CC293204
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C98C5404AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:55:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vc_ds5SCh4jT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 09:55:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1EB240482
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1EB240482
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1EB240482
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:55:46 +0000 (UTC)
X-CSE-ConnectionGUID: XEZSWLgiRN6COqU7TQfShg==
X-CSE-MsgGUID: sRCJuSWCSYmSDGbnzPY1/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="73450234"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="73450234"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 01:55:44 -0800
X-CSE-ConnectionGUID: NW/qXCCwSvG9t0FAA+r82A==
X-CSE-MsgGUID: wNVzM3aVRmS86a/3SOc1NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="214292469"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 01:55:46 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 01:55:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 01:55:45 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 01:55:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dLFQdNiLuXqsWVy9Z64Ep/PLQdEA684VkORX7PFA2nkqsCBXEwgX7R0qfxE+2NDjIaOhVwUZig0daeNKrPCjIoWpLdMgU5Iz1ozsyZe0yyUchmE0FL9GBGr/zYTu+DBeAQ8AXX/0DhZZOm6EFw8wSYYB7foox2kWwOg8icxYC2DY3oxtvSbA9NWJL5TOACWWIC0qVUFHwubeSbGb7BCkZ2WepucAFLwNNmuOnOtKN9WLcWAEBhWyEJlt+yc7IySwSI2cmsEA/MSw3sqPv2jtW4WSDEioKWUKkYazeMMLHFBhPYEF9U5SWs6H54Cte2C/zLT9VCxgWxSnyVen0tAzQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HUKdyveMZ5UZgUcKEORZeb9bY80ZG5rzJ3uXaqDKTaY=;
 b=eALFl+DUUK4WZOvhQigrzotSbFYH0fYPivNQgnKMiSmbkqvPtwAxITVAl171JLzSak1L5o+byPsHgYx4eDpnqMZ4RdhvFuYkBtHBoOQs9s9SdpKUvBBEEBJPGKMcvi7SL2sOK/uLzoiGlO73WFnxxVEUZTLprzeJwHRIT2hxiQp4qjZrk465hEPgYdlPkZOoSKKP3O+SwlfbYuvUCpIY8A+jELh+yio7mNH5ywuw6BSCbmyUz4Yeklb++2yShXd2QMwjBI9BuaFm2mMygEqM9Y8OhdM9kX6EHVj5KSYOFB7YMudooJ+Ie4qoZJQJr6E66A7xOQuhxZ4apeUYg9g2yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 by IA0PR11MB8333.namprd11.prod.outlook.com (2603:10b6:208:491::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 09:55:37 +0000
Received: from CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee]) by CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee%3]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 09:55:37 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "horms@kernel.org" <horms@kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "enjuk@amazon.com" <enjuk@amazon.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 3/3] igb: allow configuring
 RSS key via ethtool set_rxfh
Thread-Index: AQHclQx+q82AFEDfwEiX3adA/xRlxrWWarMg
Date: Fri, 27 Feb 2026 09:55:37 +0000
Message-ID: <CY5PR11MB625810BD6BA76352434032DF8B73A@CY5PR11MB6258.namprd11.prod.outlook.com>
References: <20260203125417.37285-5-takkozu@amazon.com>
 <20260203125417.37285-8-takkozu@amazon.com>
In-Reply-To: <20260203125417.37285-8-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6258:EE_|IA0PR11MB8333:EE_
x-ms-office365-filtering-correlation-id: c1954884-f117-46ed-05bb-08de75e65bbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: CPd+Z5Q2np/dmioQFWIvZ6iJJX+SYVe8kfZDCRJB25cUQH8i6LanQkMvKQV+t7OcZHjvZfvYJXDMYY2Rhhk9BUuqVojTdutUvht2ts5zRD2V4w6Yf52eNLrS+VDR8mBSoAbctCDMQvVY2KCAS0BCiTR6hcep1FEU57tef9g3zKnKbPttLUhOD3d8H/+jqGs/NX2blOCuuIp5GJ4oL/58ptZNxff8UmDV7NkmQsh0JxDVpDGl4ZOidwIP329pIRssPxGjpWk5F5RoC9VfBJ81xxtETA/+7/x+AFygYlFkExsSN0AZVmTRlp9rD+QuUlaO23nnRW+Dck2w9nBYJ72FxY0Yxsy3RPcv9nQs1mA73UnsBx+A3CbtAZ8Y9e2Jwmh37Bkqka31sWCe5bw+B3Scg3prB5JjgEvLWNoC6jN8h3DKdxgwVB7l22hserPXPzAo0MuijnncnbfwDIQ6ntu3kjtfjwIgNMT+UD9MLgajRATTUTx6jRif6ll9/+2DHLcKip3km16sBA8DNlEqCTBAIQXr7/Jb105tvRmi0L9cbs3OHYe5QlfCCrFpx384h6pO4QHxo5xSt3JfiQdGCIeq37g/xhBXhYOazh7K63sndTYWcfUf1WqJiVsd8jxDzkIS3x0fB0xIJNkK+5/VSzYdJYGp2mwhsLAzFmHhp3SK3gVNqYkfGP4gkyuevKGOXa7zkfiqIRWemaR+l8bckaEsPM6Bu1pso8/JFEBTJJaLH4FyAVMKXEL1zvNEMi2dGLB7q5rjdEvDzGSxL9q5ZGXRE1sIvCyojg8kF9huDHrHARk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6258.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a0K0sqR1a+yaVLWyJ6HwvEUP80EgFchfNDw5eWpg56byJ+S++Xgox/u4qEv2?=
 =?us-ascii?Q?a5wHun+OZQ68/fb0nlIK4y0RiMT9uZ7jWtxyJXfYzXP8W1R61qMPhrIIhOLz?=
 =?us-ascii?Q?SPV5Jw0do7ZFad2l9j8OoM2GDvUyBWXLYCA6jYCKnLxPjKdRTJxunWfXl+6x?=
 =?us-ascii?Q?5Bj7tCkMCTbK90eSxHCO7+Z+/MfypIWkFvU74YiAKNDAflm6bkt6M9p1qcE9?=
 =?us-ascii?Q?IoWV2t0kKCYu6rFUE/gxLHcG7EfhwwRlpxIy6T6ISc5Rb5w4iney69kS+xNP?=
 =?us-ascii?Q?seeDrwOdUDwEcsxGVAk4ynNc+02/bq3sm9GVofluf9zZmPpKHBL6jiFFD6pC?=
 =?us-ascii?Q?j70d8Dp8XmiIOICd4K7sRTBgtJQnRK4C1UfVDJNlAat92BTDY5Jf0bmehmx8?=
 =?us-ascii?Q?Zmzas2ipF2ojEYw17Jx6UFyWv9IvJqtixai9oT7IBUyvBkLxXYO1qxxcpMkh?=
 =?us-ascii?Q?ZketgZ+lTEgQC0Tt1DKX6GxdqoRjMcTYRuafnKDhIAdmiiFpOXICTz8Dpbsu?=
 =?us-ascii?Q?ddvGj2fbk6QofR7ajPm8s7b2w3mUrtMlZ8LVXKNbRyKk9SQHrbn3ioCdEHmn?=
 =?us-ascii?Q?7ZoIT3kBNbnfzqmWAJQ60eXBVvBU+rxJpcLsb5ksOkMTtyJbBA4Kkbfuoz30?=
 =?us-ascii?Q?ztjA3eXAH0C0+v5HW834G0DyzE9GhoHWYgiGA4y1BEuhIPXvCEIwuMYOBrOZ?=
 =?us-ascii?Q?LDYWKo+YaifIu3RDV98jpQvQGlTsQMFvHCY/YgdtYpaoyoUgiaktX729NFP/?=
 =?us-ascii?Q?xQcS9H1L7zGeyD5tUMQxNdJWQ8ByR16KggE0Y76tp1t5JTKLdS9MqCJ1srqo?=
 =?us-ascii?Q?00fcqu0djuVpIMKJsW3X0996vXc48IL3kWHOmU9Zf+S+V2CzoTl+3LVMMlzM?=
 =?us-ascii?Q?YTaf2cVknbBeP26j3NuCauMaWIlQpa7fkS/9aXBDaZKKIGTMcGIKMr0mwCwj?=
 =?us-ascii?Q?ZX3EwJ7v/FGxYTrbutOM1cDY2poj/+ziHsdV35kQ1WEIj1mWpAOxlpC1QV8U?=
 =?us-ascii?Q?dHuCAaWuliMedTCOAz3udc8Up5+2O0K9TGZOMh76iQPKDst+raVWQ2oyAOA7?=
 =?us-ascii?Q?Vv99zzrnJSMB/mhXS5LmuFC92rT+cRvpDJrmj0kPlpttz43WmxI29TvLRBbd?=
 =?us-ascii?Q?c7ST07QTFlBa4KOT30T5WX+xZUvjidj3v9MNQtSp1kjxR4cMsQzQsAt8zXUH?=
 =?us-ascii?Q?0fErT3zb59uaWnM4PQaBEIXAW/r8U2zMGhZ/fIHVIOpesB8qDFs+xWLUAj2K?=
 =?us-ascii?Q?XTy4ywdPGOeprFnZOEUqvGcAeX2Th8oCBumsUllXZz57T2ge8FbIGxpBIm0u?=
 =?us-ascii?Q?oNLUzXJ7j2EbGoj5K3xwVYxRf/aCj02uOWFQVXdsRkzhDJRbFnd/tv4MadkE?=
 =?us-ascii?Q?diAoYHY79iPe3sXJKHI9wyMPFDbaIs5FZgKXymmZa/glM2/ZTiu2kwGZDnw1?=
 =?us-ascii?Q?sTpoCanoqVW5iXStRq87o4rYDsOSAIWzFoz10nJnqaXLARLkr0/RICCZ+RNx?=
 =?us-ascii?Q?L4ChyRIJQoq07iil0nVBONWBsOnM30xb5G4sMEifZvnODQZBbG9rzzg9yV+8?=
 =?us-ascii?Q?XtrYhb/sHTml/HS436wQwt4YA9IbyXj0kLUHhnwtXZFaQFt4H2jQvZPJhnNb?=
 =?us-ascii?Q?jT7+8/rN1M7UQZQ/4CPk3AxHlnAbCHzta6fDwu4gTr//YaFj9Pp0sTj+Jf38?=
 =?us-ascii?Q?qdfeUvwwktlf9NZ612M0fugB0Ictm4+ySR2qxK3MZnu6mFtI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6258.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1954884-f117-46ed-05bb-08de75e65bbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 09:55:37.4867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eQZXJUks57YwTJcGkvaF89W835Y3P7R+1NKP+xCvC5H641L7u+c5QUVjSAWkIiby+pzCprhyibH/Fhh9krbcUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8333
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772186145; x=1803722145;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HUKdyveMZ5UZgUcKEORZeb9bY80ZG5rzJ3uXaqDKTaY=;
 b=hC2FggK6GpVK/QsjmIukgasCCyVDZRTuoJ3uDsNkWsrjKXK7PyhuLbp4
 bqq7nlPFztdDZEyhr0vu+ArwbP9knKmEwPbBh1C2O8q1ofGUJFOBHobbk
 3eXx8nonqFIJxFjSmVU0Ihc7TsjbI1ac+TexrriPNEYvP6I4mw/csAGSK
 ZAICSL6NkZt5Nm4K00Ylpve2yGQsYK2+45EJQCKoRYDzNIBKwDZCveaVy
 0nQKVPPXWs9UrooYhScio0u7tT55L1QDh+irsrpUJQZthF+/KwXHyy2Fc
 +zqoM6HhmM6ENyN/LsHDTIt0XV98jc2k/kcawrYlLITuBm7h3jToGoQQ8
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hC2FggK6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:piotr.kwapulinski@intel.com,m:enjuk@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 573D51B5A1D
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
akashi Kozu
> Sent: 03 February 2026 18:24
> To: horms@kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@li=
sts.osuosl.org; netdev@vger.kernel.org; Loktionov, Aleksandr <aleksandr.lok=
tionov@intel.com>; pmenzel@molgen.mpg.de; Kwapulinski, Piotr <piotr.kwapuli=
nski@intel.com>; enjuk@amazon.com; Takashi Kozu <takkozu@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 3/3] igb: allow configuring=
 RSS key via ethtool set_rxfh
>
> Change igb_set_rxfh() to accept and save a userspace-provided RSS key. Wh=
en a key is provided, store it in the adapter and write the
> E1000 registers accordingly.
>
> This can be tested using `ethtool -X <dev> hkey <key>`.
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
> drivers/net/ethernet/intel/igb/igb_ethtool.c | 48 +++++++++++---------
> 1 file changed, 26 insertions(+), 22 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
