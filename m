Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEFC9F665A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:01:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9207384BCE;
	Wed, 18 Dec 2024 13:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5-Wi8H5qZ3pk; Wed, 18 Dec 2024 13:01:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEBB284CE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734526893;
	bh=jiKmNVMwuAdQLui3EitIfXRwjXBrphjSg2bEEjEhdSg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5nBRuKcvQBwhz8kPbs3qWXXrmXLtL0CNIZoKLtuFHSBxUSG87X2QKVbb5EMwHvN2W
	 6HFt2wZ7MU1MP9xxF7SpVwtMRmc18XIHpvIcwzXGsOXycOYn2Omwfd5YEFWCgwYkv6
	 ytmPLKtT0NcdftdKT7dHzczLmsfFr/V7VbzkXcKJEDX0XPRYthYvj5Vl5HujhORKJa
	 G5IhUkM60hguz+1nXhzViV8bT6JxXx+UlJs8HwXB31pdnkjPSkV10PFCGwU56pBazs
	 jM4+UbG/mHWMchHTpZAyGxtghFStqmrKGprcqRUvwIsl/cetRXw1/+TI3sMQa+AWU3
	 LRZzBQGc87BSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEBB284CE3;
	Wed, 18 Dec 2024 13:01:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id ECB4ECE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C93364154B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:01:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mIxUj9SA-tcY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:01:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F3944132B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F3944132B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F3944132B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:01:29 +0000 (UTC)
X-CSE-ConnectionGUID: KSI/CZaOQ0ubBPrULO2UEQ==
X-CSE-MsgGUID: OJKpWqhhTaSct9ZA35DI0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34282580"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="34282580"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:00:55 -0800
X-CSE-ConnectionGUID: rjFxwQEqRTa2cP3oR6+fVQ==
X-CSE-MsgGUID: ieHMYvbyT0CfcWMfy+LrFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="98086798"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 05:00:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 05:00:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 05:00:54 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 05:00:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=THEEaGLT49rp0UpADL5jxavzYo3cQGdp2c+c86gUkKeA/mxZBPnUs7S5oeq0eumXokZZ3//E67Yqk2B6wTq92h102zmz0/PWtsDr5GBzqOkWaA930fGTL4FqXVeokptAJbNdMNBPcocFmlTsbJiy4cUHiEXNeTy45KZTmit77p9xTWadv8b6yuM4oUCLL6LFOyfFmHsqMiXrGWN8tsK8ug3JlTOBWlWk1eEIDcnznlH26ncOL6KvZIFLVa+5L6PzfO8XY6r6ZJfxHTIkDFoXOhNQBpBzA3sPZk/xoGWFOlkKz+jE3IjH9IU1SSLQZZd5YO5Uji+wpbbfSkbGN4Ft1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jiKmNVMwuAdQLui3EitIfXRwjXBrphjSg2bEEjEhdSg=;
 b=KRM0xfbdr5UG5t40MquNOPoTMMxJCv71DFx6rmU2cCvdcGePDsmWqLOC4tE/GEOw/IFQPT6Jq2p5Nw1/K2KEesIXFPQwoRmAKCsv6aFZgggl7LYr3P6qyQR0hxKqWs9mV8iAxD/WntIQ8kSqbdj9lDY47cvhNiZDm6DHEV74Tm8OanK1mHTow6RwzyWpxfqNfoNC+tfJpyz2tpzLF7yug0XXUiLS1DUir2CWIK/fiFNStq7DgjLrSOLOe2QimmhLaMpnOVs8S/5GyW2KD1BgcY7K9ADtAmSwm0G9pXy6vMhQWO+WfYMtSMjiJeN5LvIjD8P04l3s1s7nWoayiDb/bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB7941.namprd11.prod.outlook.com (2603:10b6:208:3ff::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 13:00:49 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 13:00:49 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Glaza, Jan"
 <jan.glaza@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 3/8] ixgbe: Add link
 management support for E610 device
Thread-Index: AQHbRvIjnaL9KiJNLkS+zgSqrrs08rLsC4bw
Date: Wed, 18 Dec 2024 13:00:49 +0000
Message-ID: <PH8PR11MB79652D2C3451FB5F5BCF8B63F7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-4-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-4-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB7941:EE_
x-ms-office365-filtering-correlation-id: 919211e0-3c33-4b1c-bc59-08dd1f63fee9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gexm5bSYh8AVNcXkliYVWIREn7tqtJZcMNSHcIUX+muabmess843IBfNR9GF?=
 =?us-ascii?Q?LCBxXiLsgXyTxczpy4ycXnVEc8noG2nyjFqM2S3avhCBupHfEAwpA9hHEWx7?=
 =?us-ascii?Q?r4IN5bCmdvEIOHDjiK0wF7yEmRddjqsDNpVtwEpU2PH8VC0J9b0X61sNgiUk?=
 =?us-ascii?Q?CAbeIupDPHIpklYwgNQ0jU9lHdi7raE1YZqQgIJBT07BtbGV7tKpYamS6HoO?=
 =?us-ascii?Q?TAMciBTDPinhQVATOPnwCHgBvZxaR241RO3kNj9eM1AGk4ybNQi3ILpzu3f7?=
 =?us-ascii?Q?eWsg+OYNbHPw8AztcNi9ePYPGp8CB4yxrJZBDhQJyPNpLBLycAy+9A8UMW7c?=
 =?us-ascii?Q?n5kgHpiFgOeZjrw4+v+HGUIuE4E7upX3s7QDbGeOGsfYO4cASPEOlo+71L2Y?=
 =?us-ascii?Q?XshHM2BMZp5K6gnCfwSIXREh5V2xdGFY1fS/W5Gp1z2Ng7XVP5XkGf0D+Fgv?=
 =?us-ascii?Q?YuHEh84wVt8g4Nh+z95YmdlBGvP/gQF3U+YNkV0IUftwA9L3JJemsZ9XYJT1?=
 =?us-ascii?Q?pO4LqJ6djEEPeK/XTi6xigx4Tizjuh8zKXYcNmE7a7E8gKz3ETsNbi1dTkJS?=
 =?us-ascii?Q?jIJUwpo35aR2h3FJFXVabUgKNdm65PvuhreKP9qw92eS7SuvlDFZI5yI+PiK?=
 =?us-ascii?Q?ufyALZXz91TRReILeYe0vqkdoLCFSxgtGsr1r79riYSwoVjSdiV4Q9ED4RAY?=
 =?us-ascii?Q?5wojN1Op0lNp7RD6MjDSDm2wtdNeCLrJUryB4Z52rZx+8AU42KiYUMi5KmsI?=
 =?us-ascii?Q?ZeXsJNNeG4N2NlGNVtcg2xjeTMX0mjmkjZZ7Fp+oMUHvzIoHPLMtmGiX9H/z?=
 =?us-ascii?Q?NZkgsS79a9TkGEqiMgl+UGhmAc9eBKoMhVqFfxvhcrZYPg2wD+XjQGOHiPg9?=
 =?us-ascii?Q?irQikxGwFII1Dhtj8HbqnNjvegl4mZk8UMFvesoRHsc7XPfPX7vIV/CPKoDX?=
 =?us-ascii?Q?elCAw44pCAmSH5RgQrFwQSP3JWKG5labvUpUZcOuTyOKPiOzMK3slpIMWAe9?=
 =?us-ascii?Q?rscHkvCRVc06wGOh4RHsDuLBDrdSrz9R7Db+bnDv9vlW30i70gwFPa+x+qgN?=
 =?us-ascii?Q?bP02aEDSSeS6tG2zpQPqLayZwOXzuscmOxDkdRrjUpiTpwTAC7EsreVA/HLS?=
 =?us-ascii?Q?TzHN3ALuvwHlEPWhOXFIRFZngMPrzPsFl/ltmmInjjW6uHmKrc6Xxt+PS2qb?=
 =?us-ascii?Q?FtvWgTobQNiJONu+kX1KtEGkrDli/4+meaOb4yvPjldS1bHCgdrYmfX6QryJ?=
 =?us-ascii?Q?2FUggbv3X4rSjXUVY4jHa6C7mR9DFKuYoW4ThsfkANrLd+XaZ6L1a2V72+WS?=
 =?us-ascii?Q?66a4E0K7zRrROOqo2gdWAqbJUDJqBkhDK9ZpjAGWPUp6hIiadFDF01n8aiwt?=
 =?us-ascii?Q?gNwdf9xOp7SElEqxmzhd76zof7qCnMcJXM57oEnokcEIpMofLp/B2Ezo4FG9?=
 =?us-ascii?Q?JfxerWx8bD8xtEkzD1LRUzU5Y0JyOFVw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nX1uFrJXyOVEM8+yJ5JhHnVhhcghJQKofEQPrq/YrOUiTibeI9so6lck+Rx2?=
 =?us-ascii?Q?t/39S6d7mkHJNDQjHieFqg4a9KQJeEIqCUAGnvHLvDaSDNNcNA/FnB68fYlo?=
 =?us-ascii?Q?2nHFS0/czj8aUU2sagxxJefn6o5lNa33AodzWUSa1RZ0j3O8P1RPr+L5gzcg?=
 =?us-ascii?Q?D383NjfuCtHGmvl7teP11C4nic5NgeDTxCNAw7E6+/L3hRWFkUn63p45eMKj?=
 =?us-ascii?Q?VsjYxHkYmCeqyQ+SyRA2ojRBvmwGQ0+DjzLWDA9aJ9sf4t5oRkxBKTooHs0q?=
 =?us-ascii?Q?EsJlviwx0V8HV5TNCMKk6HjvJzNqbqgNNhYZBU8ID68KGKVJJCB0CiosbkwZ?=
 =?us-ascii?Q?kQSg3c3lbL7C7decqdSgHZCpMlAdQzlMRTtIJx6knaH6e/MyJW8sDGpafjj9?=
 =?us-ascii?Q?kSrd6FCNeKt81hJu93Zgvhb/zylgzfgLStatmtMjq5WvkwcZsztpp+ZYV3lt?=
 =?us-ascii?Q?I3XmgFTkkZZ+rKDe0sN++27LxTz2/6/pgoZa5VAgiPDGHrr13dafnBExfyy7?=
 =?us-ascii?Q?XkbNlcHZ1b9hi/iTPuJ7FH6eyAtyfhyKHkz3wryuKvWFuzBw7F3k/6Ass2ZI?=
 =?us-ascii?Q?LYfwABL1ctEQkcM1zramFwSxROWeInBe+ANOSoekEPhL8MddOF/obKYMs0e0?=
 =?us-ascii?Q?yDlc8rA8rUgJAhwS56FFV4Sjn25M4PUk1jAAxPK+SJpaKuSmy8879cXIRDH/?=
 =?us-ascii?Q?bqcTlNubX7nKxMsDM3s3f/QIWu82YPBfIygMy7OvT85sMUsi59dzXuy6wgdA?=
 =?us-ascii?Q?MkLQDmJXHo+DOn9C99ToHfA5F7uJCDk+hLyO/UPSVk1CflwrZcaVtnwvsYaw?=
 =?us-ascii?Q?Wm2nRB6dGFlLYyUaTYmF+YjBHExxb2/Ro37o9WFIeEHAgPHxPuH33r+LiKG3?=
 =?us-ascii?Q?fabHBwIM+qz6muBgCh3W8GM15Z0agvDuUq24bAX1WEVcfJYK7ete9vFXdyvX?=
 =?us-ascii?Q?PrVI7HtqoByH3dBR7fEGFko7+F45CLjqdISlKNgifHSLwTLNLuGV7hEVIFL6?=
 =?us-ascii?Q?PH3BhqqXBnjwK9pLqpjXzpXZVbQ1n3lYsr/f4rXSHwVWLDk7aWJqB0YQJf5S?=
 =?us-ascii?Q?iKz5Tu9yZMVvmJUDnPSw/2ET7FARIvsOpWtrxePZTXdwvCv4DuJwkJzoEUAk?=
 =?us-ascii?Q?h1fF2VRe83LCJBMudJ45/7dnaxh1/kjmJLqWYLzS11+9/kXY8ZLNMY9Q6koi?=
 =?us-ascii?Q?98Vf3M7CjaAKBAmJmNzfEMgh9pN2cqrkI3cZM8g/yGUV9w9+5HIKL2bJCbdH?=
 =?us-ascii?Q?21xMZwAKxCBpuUp/ioMZekTeKUzKTOTRDdKxYK3MHCeBXTq2VjPf5ThDplcp?=
 =?us-ascii?Q?Ablm5GDOZmFJV37l/FoeUaEAHUSTuc/1nsr3cURo+lCBw1BS5G524eUl2JBV?=
 =?us-ascii?Q?W9DV61BcNik+b3rDexvhfXOnZOZ7KgwaAamLgAvdbVQ19mvvufMnSXf+MpUU?=
 =?us-ascii?Q?cz726LwxF8yh3zH4Lypy8724zDYbiLuH9b3keQx4Bncqkgd3KPZ6DirdDKtM?=
 =?us-ascii?Q?D+wOmR/uyYu4IMWrkdoLtMkrlJcY6BDApWGYUptaaKPKp5xggV3A+a5m+bev?=
 =?us-ascii?Q?1klXvUT7ZKxTBLq0WIGVel2kM1b0+fByekHRAqZr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 919211e0-3c33-4b1c-bc59-08dd1f63fee9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 13:00:49.5351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: twpWzbDiKrw32nx/Jh6FWSPF1u5pBDDQp3fZvuaWZt9eqgQojplvD2UVC4dF3fiL+PTG26N30DsiwBQJMfSBaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734526890; x=1766062890;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1lG9oj7mb946u2WSV82udDxh5pknekAZEjYefrBhDUQ=;
 b=GjuXQlEkrLzhCSTjCyoCpe7P3d1Ij17n392M3hbF35WOQSrA691GF6Dq
 WASsW14o5FAjJBpN2i3OV3pF10XsvYS+2VNsVlnnmdla7JFgQJadJT9Ud
 js3trpJq0Q264Brw1VL4hqmN//bcAsqfpeIgmRAB0CeiAgo9XbAXfSu6n
 mEsz25KpmFqVc8E7QkxtTWtWA60i9xDWPjuDF2kViWru7yqL/CD9/kR78
 cTHS+OvTYV/zqUWpl5ycLacsH12AKeXfrHp5+m1Ggphhn6S3+cM6tqXex
 7ySMb4nAzIZuBRIjvgSgwm87zwu1nbIHJe/qNTDpwcuu7V5nODT+oS92g
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GjuXQlEk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 3/8] ixgbe: Add link
 management support for E610 device
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.c=
om>;
> Glaza, Jan <jan.glaza@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 3/8] ixgbe: Add link
> management support for E610 device
>=20
> Add low level link management support for E610 device. Link management
> operations are handled via the Admin Command Interface. Add the following
> link management operations:
> - get link capabilities
> - set up link
> - get media type
> - get link status, link status events
> - link power management
>=20
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1079 +++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   32 +
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |    1 +
>  3 files changed, 1112 insertions(+)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
