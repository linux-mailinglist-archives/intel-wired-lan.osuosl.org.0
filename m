Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5A39512A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 04:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60CE780A7C;
	Wed, 14 Aug 2024 02:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pjK7hoJGoyjk; Wed, 14 Aug 2024 02:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 934578053A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723603470;
	bh=r/bcoaylbvlo1XCerFOHzLNOp9BS4zQ7Vnehzxur/Gw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=578E+aDy7oEJl2mAGs+b694RgWrktveTLVj4XVfHoJwatp1RQmChiDF8A5i1wuCMJ
	 3DqEHkMj2V2XOWDAsQOdiONCZ4aINHN6qiNwLEvc5LsheESO/o5SIjg+aJeLn/jw5O
	 Qm1CoZ5nlI7GAi3EG0vhfsbiX7e4d3NIJUBcorCMxwmdVU98GDXZGJ5FLtavYuTqZR
	 atYJ3VskxlL1mtfzWQr57i8nkM3cHOr56RGvcmxdGRF0bH8yRd+HFpDqMCPmkTTK49
	 4AKMuAz+7/+6V6PohurlpHVhEcV916PxO/aE9wxtH2IRsoBH5aIG+JqrlT7Xf5rtT8
	 ISQ6hlyM47h6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 934578053A;
	Wed, 14 Aug 2024 02:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA6051BF847
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4C048136F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:44:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8x2i6Q1nB6L8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 02:44:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CC87A8136A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC87A8136A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC87A8136A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:44:27 +0000 (UTC)
X-CSE-ConnectionGUID: blF1Oe56S+aCp0Kj9z5WYg==
X-CSE-MsgGUID: Mf03qslSSeSYEqwDGf926A==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="39248208"
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="39248208"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 19:44:27 -0700
X-CSE-ConnectionGUID: GRAFRDzzToOrlzZiVCOWbQ==
X-CSE-MsgGUID: R9nKUuwsRsGNhvJC7V5g6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="58554923"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Aug 2024 19:44:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 19:44:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 19:44:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 13 Aug 2024 19:44:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 13 Aug 2024 19:44:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IWnfDfi8V7HwRPMAEesP+2XiBMHjZ/oKuf+Fih8/wSULz18uUb/+lSzC8Z/M7m/Z4tMTEHzg1nyJbocfOIuyayQot427x0wjLPlMJmWouREU4jnp2Pl95KbF7nhw+lM5I2im/gTrh5Nqw5uB7wD4DmspCz1+iNeS89mTaL37HC6+cnrm7d2fNTZuZYdzfw7zBcrsaDhFO0saDYDLCv8qRf9/AjUubQtrdlHU2dMCwzH0Y1O5mzQvr9TxOkelHNYI97DbVReXeX9uD4Dbgb9+oKs6Ix7gsalsGR9/INB0wL0IOiYz5RHtcocJ1cJfpJmLzi3nXk0OmNRzHJldpingiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/bcoaylbvlo1XCerFOHzLNOp9BS4zQ7Vnehzxur/Gw=;
 b=n82v3zbM+RUnYKc2gkVXReiLnRfPUGU8XdNF3ht+3w3LmMHHrdVfAdDGJ9Z990TYaYN+bATy986o7qRs5OtLdwgi9h3RHELKtSGWMZLwUK9WInaJzAKXM+PGo02rYl9i6c4Xgpn1w3i5RuuJQaDbH8QZloJ9XV8ouRY8Vpgo5SpyuYYXZpb2D5lGlfNa5la/s+TlJL6j5DOH4W1tdxKf2NkRZzoPuBubSkCRAf5Nz9hpF3Ab0+k1z2hr6yaw3EGXIJvtwryDdoUeNvOoiNaUcaNcOs451K2q1w/i9KHA9vDvk5SzN5z5PpvoVR+biQdo4K/zCcfTxh9NZP4z2QkYJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 14 Aug
 2024 02:44:23 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7828.024; Wed, 14 Aug 2024
 02:44:23 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix page reuse when
 PAGE_SIZE is over 8k
Thread-Index: AQHa6LhbSra2+xq1cECVET8A/NURr7ImFhrQ
Date: Wed, 14 Aug 2024 02:44:23 +0000
Message-ID: <CH3PR11MB83130220B2E8D42C3C5E1055EA872@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
 <20240807105326.86665-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20240807105326.86665-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW6PR11MB8438:EE_
x-ms-office365-filtering-correlation-id: ab5fd647-0db9-4917-b731-08dcbc0b0188
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?JV55AP/iGR9zxgqONDvj8pgTSlokqmESmBDmlSlFZu/1UHZTerpXCcAyDRAN?=
 =?us-ascii?Q?zy/MiSUFMX+FiO8ckCz3ezuHGWwuGZ61uADVSXyUNJhOHZpy1M9OauQWMXaG?=
 =?us-ascii?Q?ueF6bB5KuVUmqqYxS3aBCKPL3aSk6jS+iy59fN+KKtpmWJfoGIWs4Su6L9Us?=
 =?us-ascii?Q?17TsHA9VfYdeLLn1/g7GeOQ5EPywgj1OxwP94XRt/ifT+adw/uAoLfy/x1nv?=
 =?us-ascii?Q?xOy+q5hv7hCMpfJkkBpWGfejXChXJdQRSRljMowryWgyUngWJUTZI+EM2l/n?=
 =?us-ascii?Q?izT5wDL7e/EwBEuAOYxfctSlTZQbhRtCUGGXzcRbxtzD0Txv7rWm/lEo/DEw?=
 =?us-ascii?Q?W+22ux2moroaDcNnJcKnkWVkIno1pIAWuyBl6NHu6sCFZMpj13sszvrfuIkX?=
 =?us-ascii?Q?cdeJGXdZ53XDcv8GP1UipleEfCJdoPkU3clz4U0O2So+Qdgm6/YpUz+HLcdy?=
 =?us-ascii?Q?lA+WIy7XamCIAqbrkPjQCoMj16V3Mq/m3HGBa5TVQHSl4OZEprfnPW//jItf?=
 =?us-ascii?Q?MpqXH3fomMbeSnOCCV3tghHRswuuJm0jcnCGK6+Ewa2lBcior1lPrcGgPyBT?=
 =?us-ascii?Q?vnBgqx6Lj9ovkfLfr6KBbspm/pAoKe/6n/T08yd6iNZSOdfZoU1E/MTMjaZg?=
 =?us-ascii?Q?D9zhbEDnUc6mqFae0K2KlmUzHQgOArn7gNCux2QW47LHBXfW8sR8jDixQVq2?=
 =?us-ascii?Q?DHMieiR/b9fNcI1ZVCOXSvZug56AphZIJHi0oncAH7CI5D1tPUBglzUntPOT?=
 =?us-ascii?Q?DjYfi+iXamtSpS1f3NRrz0RPPakctDxVbza+r7/zYeIy9UNCO5TDQtFW5j5P?=
 =?us-ascii?Q?2UgMJ6vhwkdOPLiPpmnpL2J0a1S3MvyTNvTBhFjWHRli5dEl0WVzm61dfON3?=
 =?us-ascii?Q?1Xn+y8Jcm/c9320C3UEz12EJ8CAePffMJrsSKw4YW6t0avhJC6lBi2p38Y4e?=
 =?us-ascii?Q?Pj/8nG2aImr/p+4q61+U+HWZNWu1HUWyWH9d4zLAeIkPerZk6gO8q1Keadjr?=
 =?us-ascii?Q?mU5dFVijkkeehOhXwOOpJt8KAkr6VHAiLqRDEpd+3JRwqsKeqLJW0cF1WvhL?=
 =?us-ascii?Q?BDkwVSnZCE2VLkuRa8kPr9polhpKxUam0XM65Vam7rEQAgalN+ja7brk+Dtw?=
 =?us-ascii?Q?elsd6wYfQL9A4mgNhzwiRFqPYflGWdPl291gDCyWM4T+DXAQHk8RtxPXGXRS?=
 =?us-ascii?Q?TbBUZJj/FJD/FOPs8YnTXoyWnFwOEaslnFAj4u4i8WreiF5nRi/mjgNekkQB?=
 =?us-ascii?Q?Nz8tYoq54jZ25pK1il1Ys6jOy0j1N+ASZ+PSHCHEbwCjLFKhDXC5r+tH1+/U?=
 =?us-ascii?Q?uAooRUPfSAfYZrxtJ/cjTRlq4PElBjpC0Nxt0Yzs84cGrWDAW3nXfZjgxeVS?=
 =?us-ascii?Q?jFlZmjyzAuRgcLqu4rfxK0MwrucsjdKx+hPTzjxjla5Dqg/sfA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Iy/n6OKkXJeNJpnTsKIsxO2kJcRrr114fZumoUqI86YEaZ7S+D7PpfAyi0j7?=
 =?us-ascii?Q?BYHFOUH3DZcZKAhNA5RueyRh/H7tYw/7mjGdfwLBLaXC2gwy/CGGpBoGvgmP?=
 =?us-ascii?Q?XbVC8ue6xPf2ZkCo27oyAGkB+s87CnjI2Q90nDI1JFfgRFjSo2c1vIEXeRNy?=
 =?us-ascii?Q?zEnQz0D2FH1IL/bUOCQlhtC6lrZQklW8AI0kGQi/WLPpMV2d7BRsZx2oBPdD?=
 =?us-ascii?Q?ydxNo8/ZgfhmdttM79fjVXVeFes+Ldb+Rw0/WMmwvSP+IbP6SI7pRqqz7YSn?=
 =?us-ascii?Q?TgS3d4sLV/kTlmIjlz1Ftanx1vNP8RfrFP5em8bhPlnySWR1qFqd8cL9I3Cx?=
 =?us-ascii?Q?RgVz8UCzwRh49VyGEgTUa8qRzqubU5b/fZm+YQeDP0wTnapH4KTJxq+JzfAa?=
 =?us-ascii?Q?ELjnxhccRpul5zCbQDfpGlFqfTUqlnuy0Jgq/4xzEQkjiRyKvsAgpqL2BX7i?=
 =?us-ascii?Q?V3LbLZEPCOcDCzBJaW2lJ2UJy9eYM7fA0AbTLBOhdmit4KLx+d01OUT+BTmu?=
 =?us-ascii?Q?1BJCBfpNnzMvzAwalwb8GXNlwuEkQMr8O+lE0GzBc+bzzNNIODIzTwqsYPyQ?=
 =?us-ascii?Q?3vdGPZZUM4GUAdo/dUubLSD68D3Irnhq4oOhfy4hWCEp41A0pm23eGzLW5V/?=
 =?us-ascii?Q?kMjgeapWIz0ajYcnntnEtScYOS1ckH/k/IoBSEBtKvR7ZhoCfeQOqi4ts/l3?=
 =?us-ascii?Q?MR8+2bIC3DGRD+SNvEGXhUMnwJL7kDHfywKcMbT9/LnqbWZ6Jkr7+k/yot29?=
 =?us-ascii?Q?Mq0V/9fvsl+N3Yf5Obkvkz5Ww+gLDrY5tukJAikxw0J1pbz9mUn52NvzO/BE?=
 =?us-ascii?Q?5lShmuvZEGxdRHx/nq1PC+8SPdfIaGOKn8xaCvk2gQrwVuK1kb83/3bOE9S3?=
 =?us-ascii?Q?mCyQPS13f/N4qsqfR992qgZlEOJIloREHV/L7LfuXoZewhWz6h6zNb7uSEoy?=
 =?us-ascii?Q?Mv2Teq55HAgDEtm7Bk22hnoPDxavPjgWSUedNmE9/OHxIeelCh6kOogXWblx?=
 =?us-ascii?Q?wGylYsXg5CLxvEALB7UqWiICBjDNuFPC6b1eLRi9wZ8NIzXoIb23n+jF6im6?=
 =?us-ascii?Q?TM21t1Ko9ZhEhgc2UfZWp43aro7MxMk6gbrYS4Sh/B+XtJfCAQFmHQQhed0y?=
 =?us-ascii?Q?U6pmoU2iLOpElBgGMxJz7+Vh1DtNkX3s+Y/TSUqqkXu1KxxmDkzbGt8+Gk3a?=
 =?us-ascii?Q?rXiDl2IrsTgRArQnKM6pNhSiNStMCJWXc/rUB5S38CqOu/awft0vTHsHhSR7?=
 =?us-ascii?Q?XBTg5HZeTxO4utxOLutZnYS6dpPkNuyyxXI50oE9JUZKZhnS45z5b6F7oq04?=
 =?us-ascii?Q?Rc/bTmdxnlxmgCCto6YGGkrwI6V57cisdi65d2qbqNHs/clIlihXVya29/Xh?=
 =?us-ascii?Q?lM0Fx6TcleiTGjnaRAb/5O74IoALfTpBHXuQeblXqTaW6J3LGfVjegJGigeM?=
 =?us-ascii?Q?97m+mEpHwwO/lK4oyA0HrnRC7zv5OvbxGZI6Jz7NBwOThdtCiDHH4ACqMdRs?=
 =?us-ascii?Q?526BCodj3cINti6oPRI1yeNmHkOgQuglDhxqYhWm3qt59ROyna7eHTYg7g4v?=
 =?us-ascii?Q?gjB15SP4+sVALSIgea6dS1l91PJ1maxxF3W7/T7e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab5fd647-0db9-4917-b731-08dcbc0b0188
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 02:44:23.6049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EwAlO6qmCAjCejr9hIKtn1cv9H4ahE8OveO1T7nFu0c5TdStKxR5naYSpiwG/ZatQ/0QyHBqtcYP5QUcQI1jZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723603468; x=1755139468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dPywKcv+vryU4c4SwsaDAeB50pXYlGFL+IQoYbCgY0c=;
 b=cWK+kI0BpZY46Ob3cug8vMkY+j9stJvJh9iEyncrEnvTMYhluKiZs6dh
 5QiSnttcXlKHLRQF0nMwwE0E4jivzRiezO5erYe5ojho+gY9s8fpQIdtW
 6+47isVeJ5Jypp6Nc7AQk6/QIiMpVi8vHJXYzn1xtgNfca3+GpxYICozv
 QTbplOzwy9yZ8RRvhyK8TG9ertqM9yj3ruHoXj9t3x+hWRz5O5iyLyuQZ
 ZpfbVb/dG630qLJun11KJhB6Xt/U4A28oWSIgawIjnri4BswhtCkfLVtY
 vbf9f/G4UtDkcVzEMqG5+NEfR3owDtQBv2f1Iia1hRh2ki8UCK8xKeM/x
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cWK+kI0B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix page reuse when
 PAGE_SIZE is over 8k
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "bjorn@kernel.org" <bjorn@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "luizcap@redhat.com" <luizcap@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, August 7, 2024 4:23 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>netdev@vger.kernel.org; bjorn@kernel.org; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>; luizcap@redhat.com
>Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix page reuse when
>PAGE_SIZE is over 8k
>
>Architectures that have PAGE_SIZE >=3D 8192 such as arm64 should act the s=
ame
>as x86 currently, meaning reuse of a page should only take place when no o=
ne
>else is busy with it.
>
>Do two things independently of underlying PAGE_SIZE:
>- store the page count under ice_rx_buf::pgcnt
>- then act upon its value vs ice_rx_buf::pagecnt_bias when making the
>  decision regarding page reuse
>
>Fixes: 2b245cb29421 ("ice: Implement transmit and NAPI support")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_txrx.c | 12 +++---------
> 1 file changed, 3 insertions(+), 9 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

