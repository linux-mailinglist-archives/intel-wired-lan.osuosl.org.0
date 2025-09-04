Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1DFB449B6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5F1C4081E;
	Thu,  4 Sep 2025 22:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tNwUTdEj6X8V; Thu,  4 Sep 2025 22:35:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F387B40825
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025335;
	bh=F95q1/IR1JpqWdhOI83IcF9ui4zY4hr10iqyDjYqflc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yTSqWe1biHWNB7G7Lnn/cN1peJE+2kimQW/iHvGVR6vAp9O8TTvzZlW7kXPvHd6Bo
	 ykPPYiLQoS22oyqA4fpdEEhp1BC9bwlluwu/rRE+mfmijRh5xGo7bLW0QTaqeFSDXS
	 p6ilwUNVMnBqdxTEP5FpZrTwEYfTDwAU3ZnhHcHvJ8kjpJCiSZ/FsHNgMw8KtxP9Pz
	 6lraauWvnuVGw8WTf1N3ikJT1rb2Jx2hHRa4pFpyuTdCcWsN2TFFqJApz8VjvDeVWg
	 Kc45HOUXuCrKgiwlG/eRiXhr7hUVQaxWtIvmFDixlUfq6L+qPSaOh9g/breTJ89+wQ
	 C2nveIGPOP8/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F387B40825;
	Thu,  4 Sep 2025 22:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 72BF6B69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6435180D41
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kHRFAggPJYM1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:35:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E92E80D40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E92E80D40
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E92E80D40
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:35:32 +0000 (UTC)
X-CSE-ConnectionGUID: vrwzMUlHSQ2Yimg4vDb6pg==
X-CSE-MsgGUID: /R18skfRScaIQY6Aj3jHtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="59234862"
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="59234862"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:35:32 -0700
X-CSE-ConnectionGUID: 2YXk4LFfTI6be4exe5aK9g==
X-CSE-MsgGUID: W6ZqdmooTHqmNlYINCFzGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="177266001"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:35:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:35:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:35:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.77)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:35:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fApZsk5b1kKcpsy2u3QOT9QbmCSM53zcD4QrVMR+69eZfXEKRYWxZP5BtoJbKrZR1J+oZ5scnrsOY/+Wwxg1XPrcs+lOe92alJwSQnE5ZglFa83JyCGWhlb8RAm1urHbNYUqecX27qv2RFpCaNEcdkUED6DxNx57SNHEWucX6VzzOjcBsWa8ZO+jmxmF1IGKkeEN719GBc7OivF/l6jI++yhDmZMSn3OO4ViRid7qwsdp5raamyy/WlmUqfiMNr7uHwL+hFVjO1meEKlNG2C3sD4s4XH/riMo/DrszoR2FHX4Re1K7PxfULT30s+ZfNkrGxQ7HpeEpF682LXfCU/kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F95q1/IR1JpqWdhOI83IcF9ui4zY4hr10iqyDjYqflc=;
 b=iq0wGrR8yN13pEBbkb7dOn0CUXWNKYuUHZGvuEpzB0L8wz4B4TWypdJYch+qf3tv+vJmphsTKY5GY5+ako5fF2Istk9mEQhZ21t2cE6uDNSOrJzKLZYn4r9ojaJGQzzS8/4Y1QKmtmEQsxX5uW+Hk8iO5zrKtRmdq1RWAA7y8ZRw6uQCIu+5Z9SMzODBPJo6cQzsZR2nav5zoTHBcft0wwPMqMLLHvB3VEUl115SaszfZXCrppK6vCnyVm64oFaBPBl8N3Iqbh1BLOHQB/ljT20Z/kyZoT8y73H5K/B9WtNE7+lMvkhg2zhupGh6iu2OxzhrBw0UYHxJq9wjdsrVrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 22:35:28 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:35:27 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 7/9] idpf: generalize send
 virtchnl message API
Thread-Index: AQHcEy+TMUVmdQ1yFESaBNT/nmizsLSDsfzQ
Date: Thu, 4 Sep 2025 22:35:27 +0000
Message-ID: <SJ1PR11MB62979DD4769733E5D1ADDB709B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-8-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-8-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW3PR11MB4635:EE_
x-ms-office365-filtering-correlation-id: f464a851-e4c6-4b21-80ad-08ddec0358bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?duoaOei0AGFR9NzjlrmeyFHpT2fha+1KzAzjAXGoJldnOuWgsJNua1/hCTE7?=
 =?us-ascii?Q?lh73M5w1ObD4rVIUfNRer4fRyL+C1XWOLqizvkR2sitBGndqD7aYTxCqNRf2?=
 =?us-ascii?Q?3auFFVg48fV0a6RU6/qcvvnjaLLHsZya3EZx3cEtDRoZpPC0P6UTFvO6ArC8?=
 =?us-ascii?Q?8jTS2op/eJDBbOz5k5Pe6gTIKlGY+phZEikMaLTd5FDMyF3ZbMoekiIXWLdk?=
 =?us-ascii?Q?j8hWBru2XX6XNOsPq8snBrN5/hU7Vnb3firX3dCx6L48xEF0hJlRSEyz813G?=
 =?us-ascii?Q?FEIK9+cXe9EpqUQls8Tz6oskAO4n7hmlwFQojOgr8J6j9iqBzRUKNW5SFHZ3?=
 =?us-ascii?Q?zyLG6MZToP7qDdNmK+Ktr3zwhDLCQQcxUtiMNvysDimCX+Pg4hahdlAfPiqh?=
 =?us-ascii?Q?GIhCDI0C20R9FAEo74NnCmKhF8CRhRZIiEnc4H2wJjcWWlEik1R07YQUFASA?=
 =?us-ascii?Q?aVjJakR9U36A8swsVMxkv21xWZyTJRPQawcLk+mozJdkfPSn9Sbgik/c7nZL?=
 =?us-ascii?Q?NSQXYLgNap/kfnFV8u9/cJ59M3JGOtxZnfb1lK9O3kZ8RirtYDIRlWVMOCp3?=
 =?us-ascii?Q?4LDQH3bw2bjAgw08uKbTvrQczKmjYpYbbsOFFzTBYkYKyjojoRh44jhSD66D?=
 =?us-ascii?Q?U8VznlTGCwAXNYmw+zTnEJ48KeLNCcKfy98V9mMWykxurDuaBF869L6GxJxl?=
 =?us-ascii?Q?OZdBv4t9kY/udC2FJ5dmwscCdcXmXd6JiESQK52rDI5ebzyVTKFPyvMPzBYj?=
 =?us-ascii?Q?72REbHRY0sWOQOAxnwXa43CGA3b2VDMO+6M/RudsC3/jDm8j83EHZrh+gBej?=
 =?us-ascii?Q?WuXsZU4ib0i51BAD44PG9igIebQHN0QyijAf7jnaqXkQNak0aBWuojD5HfJ3?=
 =?us-ascii?Q?r3+X63gyCLoxp39+U0PM7isjShkSKZnNQ4KcSDqeyBbbdESP3HTRDqJJlgFD?=
 =?us-ascii?Q?pQc1uvC0pPGZz98rCnABaCasfx+iZP+NVBBB1+lxTw52kk0Auowal198fmR7?=
 =?us-ascii?Q?a2z78sV4VEAZ8/ETgy41LV7lLWcp3dwYh7IbWkLNVYDb+7AR751Rh6cS+2RP?=
 =?us-ascii?Q?8MYabPlfR4pgDZpPOw+iQMCxLKeHeBQ4axtppY9ZTgtiRTIITyA/3be9HaDG?=
 =?us-ascii?Q?HrkpwXXChysAQKU4kQNSi9Nr7MRDO0mKLWSonbYfTw1zYX+iT8NaAjIuTuSR?=
 =?us-ascii?Q?fIwpRXfZ1lS5GQ0bpnF4QOgs2g+6OQKT6cpI5E2Ej41N9EelyW6VeLoL7G2+?=
 =?us-ascii?Q?AWisOCtFt4QMzWBJC2DMXutV0j7qVu9Er1GmWoxez84eFzoAEKEhJEpA67JQ?=
 =?us-ascii?Q?QbB/Kr1YKaT+GpkaSAEX2q+TtQCZQgkruyNtLVGzwcSCtHIIT8gzEoCo/eWA?=
 =?us-ascii?Q?uiGBJhi/1BxLh8Yr+IfaQl0dGY2Lg1grsHHggBFq/hErc/EilXMbI0T+HZK1?=
 =?us-ascii?Q?gUZgsBPVu6YTOepU+N6yp2z9NV0Qa7H3GWU6X0uqCfHDPtDusosaLw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lTG7gfx9hWPs2e47WLYJn3SFIMAc/S1CYa3lmF4817TNDwzcffF8Fz280eCK?=
 =?us-ascii?Q?chN3ZHvuZc0HMZ8N/a0hZ8O2GrdkNj4zWVqzTZKEDGPje6S7ofqxJ+jwF9eI?=
 =?us-ascii?Q?s8FabNg+q+G6udUar7Lyy6FN7jXKu1BJBJn6nhOz4m/dgIEzlZ6rHWRxvzRj?=
 =?us-ascii?Q?jyvzpmxTAJ50zBuCUfBVikOMvLOvmyn0OYIAeahcJ0PxLN4h45tVvyonrOEk?=
 =?us-ascii?Q?yRaZzraTXTBUYJudjq9nGDtlXNTrL+VVJXffBBifDmSv+4pGtYQwqr3LMTAL?=
 =?us-ascii?Q?7AdyE6Cqr4qYLBtZDPnzr4QuVRGarAzcpp42AXjHifHwRNXfd2CUjB0Df6+3?=
 =?us-ascii?Q?AqI5ngHO7Y0YPWKgp66eJR7aPhk32zqlJTaX30ix4evKRL4a5SELdAMaq/H+?=
 =?us-ascii?Q?y2Jk/k+XwPNYNGxi6cZoQnP1PshnV7CxQ7JByGuiDjwmvCScpF90P+nKI+6u?=
 =?us-ascii?Q?3NFwZwUQh9E6MpJtcT0DKTCoEnk966CnY4fN+j32/WXzi22KaZnuTDif8KNR?=
 =?us-ascii?Q?H/nIbP4LWBsJ73sM6O9voBCLF4tAyFrOpcio9Eb3wazYBXMNEclm/SAS7hpk?=
 =?us-ascii?Q?9/wAVKhxGI8ytnSpFz94/Iywi0BEMwE4Pgqw/oOTb8cgAmL4nzsMbw0cofon?=
 =?us-ascii?Q?i6PSTfm8kKHBrIbnAP2Mrrz4DogxqcOjBKfFuuuuZb6G4yZBkhJE0PHrVPUx?=
 =?us-ascii?Q?tVwBbMc8EJwa9CGhFGGdYU3EVupBryKQLl5eEHFxO4AFm1/tWCwX26C3M+yy?=
 =?us-ascii?Q?5vK+tWBWUSsEM2Ke+2vrDK80RtqTe+peHxJnnghbqt14oWvw+fRAr9x2uN8d?=
 =?us-ascii?Q?xhZncQRuVGNV6PUItnAlCi/yHSVa12y/LIys8EJ2SCC8/2tTHjj+WjMocZz0?=
 =?us-ascii?Q?Uytn0Tnb0XSjzvE2CvDs4O8smgXsh31kdfymemnaGZvYvdHfL+vx05etKNiY?=
 =?us-ascii?Q?YCeHBtAB9hYDEUbI7tUEZ4FPWblobimEYyyk/IiEtVfMbYb0uUed8loAABJh?=
 =?us-ascii?Q?HWVwGZRF4JtOERbPToif8pZZrUd5i8KTmEG4JgAFhpTaBZUmh+ntg3L4rvr5?=
 =?us-ascii?Q?wtHbWY3h8hE+t3BZ5o/Spr2x1eLYIGOE1F4+TI1gtbvC1oSjbmqD/n1+pasP?=
 =?us-ascii?Q?wMO9dRVHc2FPl246L9dS6A8PYsHvHmkEy/BDKSDQZl9aq8hwoab/hLDkz9UV?=
 =?us-ascii?Q?ptIyxfIYgh/vAwf3EJLrSoMWBGD33ils7HVyKUdiHBCNr+2+lleHK85Cz9kN?=
 =?us-ascii?Q?cro4xuxqbsOIQzuFZ38tysdqobw5gBC+MrUPCMJ4tSDGSw8AtjcuxqcHSNP0?=
 =?us-ascii?Q?bPYQpT1E5ad4nhM/8t6JMMmCl68sgkppWP7lmoxzxAWbtbVQ1vAH8eKxuoAp?=
 =?us-ascii?Q?TNGYnnFhdgSryelYce/rOPnh4wqPOFI2SupAPC8JWlWApVC1WSHF1mZZnXmJ?=
 =?us-ascii?Q?qqRLxH5UOcvL3zLteVahzUWLgO5TMzD3Aj6Ga2YRNL4jqxy0IvE949c2vF1s?=
 =?us-ascii?Q?oUtTjDJkHRKeP9ojscpcSoSykWD15KrOYje+Eb3eF+X+VyBLHqTsHl0Zvdzq?=
 =?us-ascii?Q?k3KDO+XWG6SusMKhYLGLKyoBDwqsQ0tYWc9Qh78w?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f464a851-e4c6-4b21-80ad-08ddec0358bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:35:27.3743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aLpnUpU7sP2tM0kXHfD0h/8drHpvF+7dLJ8stcXz0IM/Zxuq0ygE2dinJnKU+UO10a9JKRJNTQk2p3pEeZDVrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025333; x=1788561333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F95q1/IR1JpqWdhOI83IcF9ui4zY4hr10iqyDjYqflc=;
 b=NGuWr+/+yrJXsjAH9DSfgRXmos69tWiwjd0A9Nt6y6MrB0/xaeSxtOdf
 GiCOXL4i1qCLqiWmvvREJiIy/6GdryRlVDm6AOO2WftHB8p8WTTHajmwO
 Q1Xos0WK53YSPlucWg+dRyYY6bn80TYS7xsFfBF0kyjt/O8+L0RoyUVFZ
 FvPSb2sZibWNj9Sr5fXdFPUdcd3sm0tIvz0fv5SMi1MIq4Gk5p489ierc
 HyfEcnabA9ugDR/g8JpDCEeROx/sR7+e/rQS46/pAaxnpymPnP9EWUXat
 cfef6C3dg8FFTs/3gvKzW72+LBx2SBrTocV0n//R8qkF6BATHFsFIW0dV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NGuWr+/+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 7/9] idpf: generalize send
 virtchnl message API
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
> Pavan Kumar Linga
> Sent: Thursday, August 21, 2025 11:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Nadezhdin, Anton
> <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 7/9] idpf: generalize send
> virtchnl message API
>=20
> With the previous refactor of passing idpf resource pointer, all of the v=
irtchnl
> send message functions do not require full vport structure.
> Those functions can be generalized to be able to use for configuring vpor=
t
> independent queues.
>=20
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
