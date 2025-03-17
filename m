Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 711CBA650C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 14:27:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E951640580;
	Mon, 17 Mar 2025 13:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AeevtLFkesOP; Mon, 17 Mar 2025 13:27:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D69F94059E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742218075;
	bh=+2+0thoTeo9MIg6CSC1lSOBgfR/WXrwic2EMXylLaH8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BrZ1mBwTsOsDIFw3VjuggTN70V368RQa8ICNUiRVdX5wG+/SHZpoWG9B0mjUJKc1/
	 2VsdZ3vfDn9HdABjZF24yq92xPAVoQhFu3Dfr1Qt5w1S9CZRELKKNJyYJ7K7mNxve/
	 hrYxnmO9pv+w9zIml4uEYDQpbgL52e4zYKxN2us6Wl6KoG2coBeKOzHgA7b3SslMgN
	 nNFat4zWGNoSCCKmlWYXDzLJe/FpnTmVJy2ijS8lmlaVt/pFKWvtbCEXMp8zcvXdD8
	 ZRcqR4xdmNNdzXC8lOk4GKNCk3/iR7CdG51zcyvq+qBw4mY3tnnYLT/cLe2ZNIA9lv
	 429UpO6maKtNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D69F94059E;
	Mon, 17 Mar 2025 13:27:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B6B63D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE8DF40906
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:27:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RL6VThhxlsyd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 13:27:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4D0514042D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D0514042D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D0514042D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:27:51 +0000 (UTC)
X-CSE-ConnectionGUID: 25maXxZeRvGVxJ9bVeTyKA==
X-CSE-MsgGUID: ExmTm5EARjSES52zlmSjNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="43177506"
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="43177506"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 06:27:51 -0700
X-CSE-ConnectionGUID: u6eEvnO4TXC00fVGpfHzmw==
X-CSE-MsgGUID: 0AXtbZYYQZen9sz5uVpU6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="159087269"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Mar 2025 06:27:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 17 Mar 2025 06:27:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Mar 2025 06:27:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Mar 2025 06:27:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bvQPiMj5gahyJAIM3F4gyTAEhwgo0a/pmnS8gb4fh8MJmu89L2+xtMqJSHqDYGWgW3Nr2XwRkBjHN+8aIzV0dPbtwCw3aYzccUXkAhjGpW8w0hjUKr0MIlOXaTHsaCdezkA9UulAoIaw5gYkXABL6TEli3QMsaOZp0wBcuuKLIKPGTpzk0G2F7TObDFkKOePbesDflzBXKoaC/vDhp/aj6Wdrn6+lzrvfCIwLqXgb2U1idjE1ZE+1Cmiq5/zEO+Sz7j3IlNIoPmXvVxzx1V2oSujTU5VcEHLHLggJ5v3wL5Wxm+xdAGV37MMp9DyT7cLVh3r3g82lNpCiep3n3MXWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+2+0thoTeo9MIg6CSC1lSOBgfR/WXrwic2EMXylLaH8=;
 b=vQvvDQxg3JSsxCta79PxN4FHCgXfr/Q28SSUfJ7zDsqQ63/1QsNg4c8DZUZH4+OxXJttriTV7OjKt47ez6Nzjs9St9uhH3szbFNqLuUfjky/7zDkN9R7HFGDR3yw27RafEqKIrETg5KfhhKo74r2uKU+OI1w4pwsNpPXE/KKczFYe3BBBVwfYoBz52AUF0Mja2YdXZWSQTN+hyPXUV1cC5KOKrdFgHmhNXf/HfKwHrarbTVzrOH/TSAWzX5jY80mq/Dne3HjCiW2mARY7G2AQv43h9pV8GTSSgGfqudWTbQBnf0bB8SX5kTFJv+xE+rQSHanfBt1y2cqBJ9TLs0ooQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 13:27:05 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 13:27:04 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net v3 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
Thread-Index: AQHbjPX2uTWO6Jx3E0WRK9Pd/IyYYLN3Zopw
Date: Mon, 17 Mar 2025 13:27:04 +0000
Message-ID: <SJ0PR11MB5865D4A5BE1085A67720B3318FDF2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250304110833.95997-9-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250304110833.95997-9-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH7PR11MB6676:EE_
x-ms-office365-filtering-correlation-id: 0a438c87-f7f1-4a14-e58a-08dd6557689e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3T0m3JFXoiFUnMQqy5CXSEJSNOPVGmh6kuup2zMtrohSq7GOh0hLjRbOrn1E?=
 =?us-ascii?Q?wBtLLRIOu95Zkczu/+ZOECs6l5jvYFaDOETUEnY5CQJUl6O8IqBaC4xJ468S?=
 =?us-ascii?Q?OYuOxywi/vnZBQxvWLxbUPDMAkWWKWPLgPjylDgvgZtO06ZinJ5X326vUseW?=
 =?us-ascii?Q?8o6/Xt/bSv6ir9Ssnppg7mphQ78zSqFtE5retd/SwfHOpQyU/veRTsR2UQi2?=
 =?us-ascii?Q?KAR52slU81/AOcrBSkNG653Fra9EF94aIS6+VHQvYrs27gBo8dstu/JnvjxP?=
 =?us-ascii?Q?Iq9eTViZLphV+Iyc/eYX46Nria3HraCRyxbgo9rI0QF0ZU//3mHiIqNlCSjf?=
 =?us-ascii?Q?6rybNSDVn4t0e01xKHFwVSvIhZSFhy2l9SoBPS9JUwF7EhDzWldidvbRucXs?=
 =?us-ascii?Q?vZlfKgJZLKquNEOVHKJtg7Eb/gyIKqSGjLrwUI082mFEClHcclYzwQXRbp5A?=
 =?us-ascii?Q?pujU0DI/PlRvtVfsNa36V4y6wtKEqPiwGsWH7rUbG16I/Pye3+zdVozK6QKh?=
 =?us-ascii?Q?a2xXpqBr4pds/f7gitDxheJ/l30w9Maa2Iw2+ds/imz4m2GbEuulvHpplt2a?=
 =?us-ascii?Q?ZVj7+l1SBc3lEJNdJif8UA5KPO3cleMFP5XcrxCUQYQsbYhAF7/oBLh9pcQr?=
 =?us-ascii?Q?r5fOZ/0yxXcE54SDUpkfdIGzhewhH+20bOUsJkN4gTG+yDB49q51dtwT6KPY?=
 =?us-ascii?Q?C+YB474Ffg7j9Vbe3p0U1rEYjEkOXUIlnva3kUBCn3Lxho2hS9msULqMs8WS?=
 =?us-ascii?Q?+4vwWeHFZ5KPdg/rcBYETjcOWhjNbYT6TVd7wHvlaO3D4zrC0aiSkb2vzVsW?=
 =?us-ascii?Q?1Lc96FSm7rt9q1yeQLcHoMx7uVCOyKz9xjwv5mxSt9O1I99s7vTTIx99078f?=
 =?us-ascii?Q?220V2RfGPnzVHJXiN+cm4ZX9PS/4MtVgkJLiUYOiTlLMp7mAzv2ILImZf+Jh?=
 =?us-ascii?Q?krjHP9paspUEZcmlDE1VMRyONs1XiXO7+8MNcCP0/kZorHu+cM7vQFNZdCXq?=
 =?us-ascii?Q?zBQXdRXObNsCk1Af2dF3PyFofVAhLVnKuXLTngwAISijidZbXzCETaGJXXnJ?=
 =?us-ascii?Q?8o0vYtkYuqcDyF6SkMavEtkEaRS1iD6ssYKTB3YGXGqfjQRreTiYOC/TeU2E?=
 =?us-ascii?Q?Mf1xSAcK8XKBQBmuc7vquN/6OyJilLhq7JmSvnHpp3z2kkJvV16OHEaUCst/?=
 =?us-ascii?Q?tvMV0N4rPa2xKrmC+I5Uee2fTOe3Pl6q/ESK5XqV8QqKfXG16oFY5hPLToqT?=
 =?us-ascii?Q?8iialcn9t5n3ABhTMc3wQRndFFp0Z6XI5MzUIb2sml3E6S/+hKpcoupMFMlB?=
 =?us-ascii?Q?KTZhYQA7j2SzutGxEPUkDPtpKlK8MRpgRcifTU2W0uFWEeA/yucszEK0oqO5?=
 =?us-ascii?Q?O9MDv7j6GuHzfoUOjLrr45waWcFtHv6BtfWsRsY8gPYHq1YVHhvWoDYhiR6d?=
 =?us-ascii?Q?MxvbwrEkTDI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EuAlEJ3lYRlxgULysOXrIrrGXczE303EWdq/++mxx1fnEy9bKUozfNn09sSH?=
 =?us-ascii?Q?hYE/1XOfmt+k3umCV1jJUEvKU5kdDD2e4MwkC6XS7zB5N6CLohs31egfDDMo?=
 =?us-ascii?Q?jVAhK3Xb3IPyghxifa69OZG71Uw8WvhD4wiRm5vlwPaqHJs1xKEJ70qBSn79?=
 =?us-ascii?Q?03vwN8YVUGiZEJMTt/vJNhWvQdPCDTMX/23BCVz7XOKK5qGkqoqfw+yOrlWb?=
 =?us-ascii?Q?WboMO9lxvmbM34+PoQ5MYjfeBGruDeJG7HY4FEPOOl/81WiRKmhaGdCLzo/R?=
 =?us-ascii?Q?uQxnDduEAS8s5rIkKS5TJ/kVR8w9aoGkZp/C0t7L7mTu5B5Zrx5ycbBbn0SS?=
 =?us-ascii?Q?KJ2k+rSeajD8v3dwtoDFF7V20DHHOe5vXH2vhIwIjrwC9L9+/yZaXyql7LbR?=
 =?us-ascii?Q?/r4NfqD+aewE3A3T/8R/Xrc7qDEvllFRBuBUeNOcu+ei5mXZyaaVXTAk1ySP?=
 =?us-ascii?Q?x7WxfxSAI6HUD64+oNV4cUH/MQ/UwegJibgSfslIO/08fDKlzg/DclJIsr0Q?=
 =?us-ascii?Q?ugJPJ1QRaxX6WrKT6JZHVXkiPyr1oqpEH5NEo37eQfy0TV5q5uBramWLYhdr?=
 =?us-ascii?Q?/W5WHjmqpYiOROSBdaKMZRj3U7SnBFjF0g9ezPBqpDZlOxJ5Ks2dgOlQ7U0j?=
 =?us-ascii?Q?zWi+PcsqTYMJbsSv3EZ/YCdb+mPHIWyvT32wZ57c5hRfGsSe7vt8IlZUK9VD?=
 =?us-ascii?Q?2OG78D33Lj3qmi+j3/UZ4jDofiFBsGsbYLjYVHx6M4SlS8L+OsrxtUfTd1z3?=
 =?us-ascii?Q?Camkw7010LKqb9sIqzyKrgr9DApyw+bxjyf39wLWZ5DaRb0RT848PGqTDWi6?=
 =?us-ascii?Q?lj0ogzLTot3LVCKfy/C4Zz680tmwcwpuM4Rvjv9dY9Gw1yPQ5OAZ/4Dk942v?=
 =?us-ascii?Q?zt/I4y/euwHe1JX2Os00mflHiDu+n7HsVOx6wfM0VSau3cGaAAfEAKBIFmqi?=
 =?us-ascii?Q?F2hhSxPTid/oWJNQKsdLkOc3//8qvkIk1P5ckz0UJlXaeJU0CZHqA+AuI37t?=
 =?us-ascii?Q?k4yTYzyJFfrCBts2CkuyR7koI9drnXG3mjWuxPGRP9d5ATMa1QBK4ouLSDwA?=
 =?us-ascii?Q?vEgfoq49yafrx0gTWCI6IIu0Np2aCGknFcsukmGuGXrQswJh0pKtBkiGG0xx?=
 =?us-ascii?Q?NybGzq30L5LONdnXRNIO6AskIGbPdIcaajG7J/DgCP6yLOpuxBvaoHgMU7mj?=
 =?us-ascii?Q?fh7ewpO6R+K3vChoS6tNaS3pMjXZNtOGQqwLKUlQwMqJnuhnJ/PCCGtm3u0Q?=
 =?us-ascii?Q?ncO5kFL/8RYpmI5WJ+4RW7G6Klq3O/UR8pXo88YZhydJr81taASuJliFYEJL?=
 =?us-ascii?Q?CeVu7VnYe546AqhtKh4VEQGsR94Ex4CuLDTZbUIbGztCBJfBX4rliqIBPSvG?=
 =?us-ascii?Q?TEQdwZ4NQjpeIGn2y1GfwcJm6uBe8u+LJ4/t9QbiwJj7Evc80E6BtG2kgPso?=
 =?us-ascii?Q?WoeprJSFrquFgV6iVS/qyfVeocMXA8Ji/JJqX7hZvEILHxfC+Td7vyhoDYP/?=
 =?us-ascii?Q?t8LKOwnnNO2NSfQvg7GsybZqSX5Ox2u1on4T+QJCPCiW0JdrpKPurZTwBn9C?=
 =?us-ascii?Q?Pbq/ycwbrT4KHDYI26rU6OYaKHHaM/iTYGdi7WFJmyY0a5IiyZMUN5ZQjI3/?=
 =?us-ascii?Q?1w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a438c87-f7f1-4a14-e58a-08dd6557689e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2025 13:27:04.8121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S/xJ1qOo/R999/oICoVhBV5rj4rrxaGofjiHBrlAEDFU5du9Co54I/sIYJ5DTUL9IfUHZJtTSUcVSDXzZNpH5CfCm9wIynUvN7eAD7Tdnwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742218072; x=1773754072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uRVtsp2zvU9eD0qfyBM754pg4DP0KJcibf7V6IjbT98=;
 b=ekNwNmakrc4EyeWVFqa207LVgk4NDzkf06MZgpdH9r725oi328ea1L8m
 DGvTFRowp72tmfF6odFiEP83pY2oLDlHLzcBdrQ59wGsVOIhR29D6488H
 2Qqv/WvcH0pjRYoyOJjSoacp2Q65up3xzMABsx+TEzvpPpJs/u2HEklpz
 7PZVgOj+YwmzDXWQWSEyfN24SoeA+KBbGe2+bZ5FUED9+WLp0fCuPNdx5
 Yx9xYdaOVNaKGjDvghHkhl4z0LvlAN8Milcdin8hpuEtZiU9Fkb79o2Gs
 2ZfUq8LTAoogRgJo2CKeyDfdMyBFZMYPJqFlWjuB2BfAq/VFGarD3jU8g
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ekNwNmak
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v3 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
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
> Martyna Szapar-Mudlaw
> Sent: Tuesday, March 4, 2025 12:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-net v3 5/5] ice: fix using untrusted valu=
e of pkt_len
> in ice_vc_fdir_parse_raw()
>=20
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>=20
> Fix using the untrusted value of proto->raw.pkt_len in function
> ice_vc_fdir_parse_raw() by verifying if it does not exceed the
> VIRTCHNL_MAX_SIZE_RAW_PACKET value.
>=20
> Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary patterns f=
or VFs")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> ---
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 24 ++++++++++++-------
>  1 file changed, 15 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 14e3f0f89c78..9be4bd717512 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -832,21 +832,27 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


