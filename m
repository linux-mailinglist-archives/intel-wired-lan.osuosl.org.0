Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ffHjENTeUGp66gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 14:00:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EBF73A7B5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 14:00:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="V298/kor";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF3E540918;
	Fri, 10 Jul 2026 12:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MYQo3llb_6Uo; Fri, 10 Jul 2026 12:00:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A55140912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783684812;
	bh=ih1o4voIW1n2p2T6bQrDPEbwwaqEPl5Ei9ZY/He+/uY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V298/korBPuztLqFQYzeY1TzQH00YbIviNcuz2pmSzQ9xNgLZdcfu8ICKEEgoh11q
	 d7Sg1J+IGblsj1XNuf4By81HKhbzXZX8QsJTBdDJ1OSnv958qlZvNfqrskuqmQKtNY
	 z8J21fkHV2E4W1XAu+0npytGhbvDRGund6JPrJF1AtDrJnDLw7v2YgWRlzUuflIfPf
	 HIhZ8H5ToEsP9OjPQ48V8Gwh6kKOaSkGosns+MGJ3KWnQLvdj2NTDedjrjX4fbzqr3
	 3NJR2uvS8RAbawaCzIwSqusLsPkHYUYsmYN+IQ0tU/7YXYItNJHUOHmVX4xLzvA/Mu
	 3n3PPAtF0dFuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A55140912;
	Fri, 10 Jul 2026 12:00:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 59ED9320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 12:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37E9860693
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 12:00:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FLqmYASxqW14 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 12:00:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D2EE06067A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2EE06067A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2EE06067A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 12:00:07 +0000 (UTC)
X-CSE-ConnectionGUID: TMyyQN1WQmSU3aKfve75hQ==
X-CSE-MsgGUID: yCWlkgbkTbKsGMlZREFGKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="83359149"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="83359149"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 05:00:07 -0700
X-CSE-ConnectionGUID: gtxcDAhcSUSrvCar4/ELNQ==
X-CSE-MsgGUID: Cmf51Ne7RuSrlMkDNK25SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="255518846"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 05:00:07 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 05:00:06 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 05:00:06 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 05:00:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PYsqEnITCEJ/W4mbjmhdzqa6v60eDhh7xTYfcKisitomAAW4fTzaSDuni39/IplMbP1EsJi6813zDmjTjqqiPfO6hBgDkeU3juDU2cE7diSW2oBHBF0DFXs7PY4MzrSGCroKOEFgYZxpB0qBa0QKffYA72io3Ie+UTQt9rPdHs1ApNVMGC/8op9VRi68kGCmQic4U5wWhsR0QKiYwdmvtjOvsc9vOMAb5QquzpS55FmS0Jyx5bdFAxy4Ugv0C1B+8mrstKJHgx2CYhEtQYwy+pMc0JD0/x1eHld1w0ohwBQZwQoEZwP/rw2WB5iKm7MhAOnkdyT4dD3fxQb2E+b7jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ih1o4voIW1n2p2T6bQrDPEbwwaqEPl5Ei9ZY/He+/uY=;
 b=G3MOp2fRFyhdQ+YDOz7pTuTgYPzFoRpV5b4EknThN0woItVkR/X5tko8x0trEu5WZgAocx+FpGt6TaaNECWM3G6LZEOmQdqAZBXyZOia6Tup4iLNn5uGC5rWUIIjtn+1q60o6Hhnr/9/4LBR9gnzcztUe34Rd/7ef8IgN6vXNv4m/JKWj/AIKBDWdWoJsXm7JnnChsM2ye8FLlpGv2w8jubACWzPTCEuPH73rS2iYEYtCdxt2NxlTi4YCcWdKlrddhoDedT+O7zU8xGvnTaZ8tuM2jQHoJnF5br/NTK+KHSoYYPZmAqlT3BJDvEgGq2806ld04QPZsv1qKwhT6QKiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5890.namprd11.prod.outlook.com (2603:10b6:303:188::18)
 by MW4PR11MB5870.namprd11.prod.outlook.com (2603:10b6:303:187::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Fri, 10 Jul
 2026 11:59:57 +0000
Received: from MW4PR11MB5890.namprd11.prod.outlook.com
 ([fe80::b3b8:941:41d9:9d77]) by MW4PR11MB5890.namprd11.prod.outlook.com
 ([fe80::b3b8:941:41d9:9d77%5]) with mapi id 15.21.0181.008; Fri, 10 Jul 2026
 11:59:57 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
CC: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
Thread-Index: AQHdCgYiWmanBfClLkOeQCRi/Q496bZj4wGAgAEV4OCAAZg1AIAAIYBw
Date: Fri, 10 Jul 2026 11:59:57 +0000
Message-ID: <MW4PR11MB5890685F934F8FEAABD7B7E8F0FD2@MW4PR11MB5890.namprd11.prod.outlook.com>
References: <20260702091553.57112-6-jedrzej.jagielski@intel.com>
 <20260708170223.1514429-1-horms@kernel.org>
 <PH0PR11MB59029D8B78557F03143546D3F0FE2@PH0PR11MB5902.namprd11.prod.outlook.com>
 <alDCHrOYHvS1EdHE@boxer>
In-Reply-To: <alDCHrOYHvS1EdHE@boxer>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5890:EE_|MW4PR11MB5870:EE_
x-ms-office365-filtering-correlation-id: d88a0b68-1056-4f89-1103-08dede7ac338
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|22082099003|18002099003|38070700021|11063799006|56012099006|4143699003|6133799003|5023799004;
x-microsoft-antispam-message-info: A5uVUtsKd/+SwQsBsD4evsg4nx638NYFvwi5H0Z4V0AnXztOBLTMNsL2DdX8P5s3QaHgMmPe/8iI11qI2LTB95GcX4UYnpWLMMj9QJAoBa0/MfV7/62zd4bztpnBHfwd9HZjLVB6VUZPCrC5XNCgDbbxDjUAt5pvQqNNhiXrYMbz486BPrCQ94/U8+vENHhTyX/oQ9ZWvnwhPW/AKytnEGZWePdzv1KFjdmuaFomBQPFVdDHZSVncRTY4XU8/CL+WCnJXNPCweRslVeLdJBAkTYmCLhSE9OsKSkFt6kiWo7u4Mue0abNvM+u50oZFE01r87UwwlXloVItT557JavD1bCaIpcHeuOAK+nroiikzQ5LDTkUIqOM3A9Budl4AEu/a1TOgGLxHc7p6iQEvu5wdsgn4quMM9tlEvQOA576EM+lj2R0DNibm4skaVDTC+O6xoRTtOQEbwRABegtd37Pt1YbhO1YDnRh4NK0SC1L0XeKGpfMZHwytyzCqoz/Vf0QM8gDMPdkyVB4sa6lP3dlM2NQrJka2FyBaEC8qAw72x3orvoE10FJ6iT5R6eiKXnfux/kzwmGShuS7nb3o4f27xfdvr3xrcPyAQAX/vJUdnIa/XqRC0/5NToIJo0aImyyCiiJfWC+PDLUccUBNRjQXA9dWS4xTnEYtu1krzcFco=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(22082099003)(18002099003)(38070700021)(11063799006)(56012099006)(4143699003)(6133799003)(5023799004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HGjgSU4PswnS1DQzVCnk3qwEPZq4xY42/bMzYC9SAMZ71WxS2fr15Jl/EYfs?=
 =?us-ascii?Q?RauS7F3wAZaO+VVacTom9iGjEnnqsOZ7RMkYLe6mpnP24Yaw/aVneVFhezOF?=
 =?us-ascii?Q?DcNkva3J19V9mzewQvTIp5FdXFGUUskXs7T3KvolGQJchKaEJW8rsPNFpLfn?=
 =?us-ascii?Q?g2tq+PwmYJH7+83SJDJqGKicgcVNmCNXOidBXDW8Fn/inIzT5Fj/lWzBWRlZ?=
 =?us-ascii?Q?nT3IjNm50TqE/qk1dMMXpk6TmpdMcTSFABTco1KnJZ1aq/OT95JrdCg326Zx?=
 =?us-ascii?Q?mh7EaR4SJS+/241O14HzoRdpEYcYI/qgkABg4X6HEj0Y0v6StuWjT7e8ev/r?=
 =?us-ascii?Q?jBU8k1ZqmeVL+RtEVVYyBEivrX7W5Pr/BVK9y5eIXE70jAy4mjOslldwQU2Q?=
 =?us-ascii?Q?R9kKV38qGTB3w9tVgzwZUA6F22eayuqmHiTc4fVEjQaVEjtWYdj71IVpFmCS?=
 =?us-ascii?Q?6+RYMxp6H2KTr38TK2jZPeiJPGuA72c2TEqc5ZVTE/0iPoetTA4VeFsq8FuD?=
 =?us-ascii?Q?nLkXpWmo3/pXK4qJCx2fyaaY8t/pcS15FUgkM3gLfKg46KeE5AvvoU8dofkw?=
 =?us-ascii?Q?jHCuGOcym0aF5sDEdb4cQHcSrCnVkS0eP9cGH48KvPCxTiiUcujGvA8rT5GW?=
 =?us-ascii?Q?QGAddwaGWP9JQhMxELiRvYqeK6ZpojUWqaB6UyYkq/ZcHUPv4EpCcbm+HruR?=
 =?us-ascii?Q?7TXOQdU/UfGq9KEOyB9jwA7EeS7cpIzD26T158+VJ54fTud5JT2eOSSX+1Sk?=
 =?us-ascii?Q?Ft7F/Vk09N83GNd65RNjnUqHK685p69856HZmKsd0f/6sbZ6n6NdUp2chnzx?=
 =?us-ascii?Q?Wp6+A7gtwBMzgk3DZVr33KGknjcFczMBA+BFloVC/rP0t2zo5Pbmr+YF59ib?=
 =?us-ascii?Q?6mrsgIkF7fQTw3dEAscBbN65K8TFkkjmIyze04R6v528zXeurdilUq+bLywB?=
 =?us-ascii?Q?QiYmf+0Asci3r+4GPNsRMir9NPQctTZVUKeB+mUgbBjSMUU82Cx6KLbQv7A9?=
 =?us-ascii?Q?a2xDWNdK72kTU7mBbhwpZV/MGsNb2JKm4ecBtHtCizd2KKs2Qocc0QmH+xVz?=
 =?us-ascii?Q?AW1s1utZ8PSQvgUE8pEXYeLMSw58vULNGzCa9Tu+duxQLpqnqnzEghN9Q4ie?=
 =?us-ascii?Q?ZP+fZbTYYFAdJP55xOgpk/2K3gaMvbkJO3l4P75PpT0um+yA9dbLp/7z7bXp?=
 =?us-ascii?Q?Mtn+T9J8QRw9jsN4QEUsLiKTSaG9pDM2A+kfzd0hd+CmffhkygaTynLs7s66?=
 =?us-ascii?Q?rHqmDcr3AKlPQUnNpK0RRJo3bkEQa7eH0ZS038OwOLrIs8bxYm6+8QfCzllz?=
 =?us-ascii?Q?mIPw4NfOoQCRZ3wFOEXVyDPykBww8xfucnIGB9cCv/VDqf9cQqmeSpIq8O7t?=
 =?us-ascii?Q?lvbPWHOlXmjUgMfAiex88ud2BqEu7hufPQg5aEEq4t+Ad+dbcwHyNdRoLWp8?=
 =?us-ascii?Q?kTCDpYda+r31khlpHvY2WT8BqwmHFrpJ2g9tJmxLqUkk3aec8iZ+4xz5ONUr?=
 =?us-ascii?Q?wUnAn+q9ZZfZJz5J6XIuv/w6cEdAlDHITrR6Z1pHquGW6hHdSReJjYkSrzUB?=
 =?us-ascii?Q?oWS/CwhTWMJ4OoO5v1XPEhBh6oaqTJGXTW60KPjrYulq0YcBPvWzGaxOV93d?=
 =?us-ascii?Q?uQbrBGVUMoCRly7P/B7ah5Vt8WAHjvSO8SHf/2ulITZLBU1Jd2u/8qUJolin?=
 =?us-ascii?Q?NTmhZqeZJh+yzQAWbH2npJMQrhSUU/1pJgzwrrbQzZUdeqR7Cx9TjafPRU0U?=
 =?us-ascii?Q?AbudyrsAdQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZpnhyUlZ7ayoF3Wvel6315tUHtxZFEZ+cXsYvy8jTzLZ9eKZlF+DTe7TIYAtIHlAVYomzoUc0cXmsA2eJM0ezOdazIQireKi1ezIihnoM0qgRif4O9J0zHacdb5/YfqBGHWtD8g88POncu9ddMDQVapdHoiYx+7zr9P+hCqXRDHHEYpGjI3yBpNk2JmxihWnIMnI/vOvadUqXOkfZUswcNxaWHQSOiOrpgSeLGeTtGuoiMx+vtcZYiZ10d4n/UjpQEPGRlmqPZh6xWrzEnWHeO+DwAWqZA1PiTuANc818/a8Cb4gjkUOlXIiX1FCobMCuE7sGIIONtwLLppou7SwDA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d88a0b68-1056-4f89-1103-08dede7ac338
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2026 11:59:57.5747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gVe24513SI2Sax3qZ4K6GbfCEFFI28echvCBM1UBbCm22RMEc25MUtI7mZIdQ9BRj3Zb7xTz6w1ovn7+w8iGRCXeyga/EbgwhGCNHiL6JT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5870
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783684808; x=1815220808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dlr15F7vGlODEFRRmSlBLYf3yzCUAfAkFIZxBq+GXMs=;
 b=FxxmjYJqIdNhBjK+gSca1x5Ok4w96NWpBeSJcry4JuD4N3ano1VjXPGM
 CK+ecHJ2dYfOubpeCPRR5VPkfL42aihzZ7acaGSv7Iybo0hxHTzSFoUaQ
 R+nmbzoHZDynj3dSW+ZWsLRMdY1RPDihvmyVKz/r7m4gEZdqkFjIru6uR
 qsyfom7Ohme+GVltrN1+y6RgR4oPqqbfFPadNXMie04OGP+AYl+AwnQ8D
 n6fCnCDuf37BdMCe1AhryXRMK0ia+ZzODigrGyYNH1igvo/hI5liAoeLI
 8r03vGKHC5EzxBaMxm+4nIH2cZEJEKUPccPIyCPU/KfZNMD8/9keY7W4y
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FxxmjYJq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,osuosl.org:from_smtp,osuosl.org:dkim,MW4PR11MB5890.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6EBF73A7B5

From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>=20
Sent: Friday, July 10, 2026 11:58 AM

>On Thu, Jul 09, 2026 at 09:37:27AM +0000, Jagielski, Jedrzej wrote:
>> From: Simon Horman <horms@kernel.org>=20
>> Sent: Wednesday, July 8, 2026 7:02 PM
>>=20
>> >This is an AI-generated review of your patch. The human sending this
>> >email has considered the AI review valid, or at least plausible.
>> >Full review at: https://netdev-ai.bots.linux.dev/sashiko/
>> >---
>> >ixgbe: E610: add MAC address runtime refresh
>> >
>> >This change polls RAR0 each service-task cycle on E610 and updates
>> >netdev->dev_addr, hw->mac.addr and mac_table[0].addr when firmware has
>> >altered the MAC.  A refresh is also invoked from ixgbe_reset() so the
>> >address survives RAR0 clearing during init_hw().
>
>[...]
>
>> >[Medium]
>> >Would it make sense to hoist the E610 gating out of
>> >ixgbe_mac_addr_refresh() and skip the rtnl_lock()/rtnl_unlock()
>> >entirely for non-E610 devices?
>> >
>> >The type check lives inside the helper:
>> >
>> >    static void ixgbe_mac_addr_refresh(struct ixgbe_adapter *adapter)
>> >    {
>> >        ...
>> >        if (hw->mac.type !=3D ixgbe_mac_e610)
>> >            return;
>> >        ...
>> >    }
>> >
>> >so 82598, 82599, X540 and X550 adapters (which comprise most of the
>> >ixgbe device family) acquire the global rtnl_mutex every service-task
>> >cycle only to return immediately.  Something like:
>> >
>> >    if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610) {
>> >        rtnl_lock();
>> >        ixgbe_mac_addr_refresh(adapter);
>> >        rtnl_unlock();
>> >    }
>>=20
>> Cannot introduce rtnl locking into ixgbe_mac_addr_refresh() as this
>> can be already called within rtnl-locked path
>
>i40e does a lot of dancing for cases like this. rtnl lock is handled via
>boolean provided as function arg:
>
>static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquir=
ed)
>...
>	/* Release the RTNL lock before we start resetting VFs */
>	if (!lock_acquired)
>		rtnl_unlock();
>
>...
>
>end_unlock:
>	if (!lock_acquired)
>		rtnl_unlock();

yeah, not the prettiest solution but, agree, should work :)
will redesign it, thanks!

>>=20
>> >
>> >would avoid the rtnl_mutex contention on non-E610 hardware.
>> >
>> >>  	ixgbe_reset_subtask(adapter);
>> >>  	ixgbe_phy_interrupt_subtask(adapter);
>> >>  	ixgbe_sfp_detection_subtask(adapter)
