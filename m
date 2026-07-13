Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ogYAB5S1VGpjpwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 11:53:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6757497F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 11:53:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=JhZWnM37;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3376605D4;
	Mon, 13 Jul 2026 09:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_3OjD3cqZyW; Mon, 13 Jul 2026 09:53:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06E5E60749
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783936401;
	bh=2QK74Re9S4L+Cd+8XZ9ABpckQR6Qw43yWQDp4dsUHF8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JhZWnM37clg4YbF5vlD+L7GLERAVDEFYBbFdMO69n2ZhHtgXaTROpR9enugyviYNi
	 INx3BE98/ZxSoCrBquRYGtOY2PnFRhNVAzghx5GEZGTZnGvlKz/W112pzWCTIztmUL
	 l9lJj9DnSpqDbvrwVG8SCM8UcxjIYXpDAxGIH5o8COo5EeACg8VOnGFrA6mkD1gdJw
	 fcCKVFzAKHXle5w4d0c2/xEm4GaRPJanruH3YawjDEl7AWaEzlwJyuOmLzZkozLsS+
	 C0v5d07iHx5Vzj9oSpgmEKnULpsCd03HrsVtiCwjB9pS6Itr4dFySzymJuq/zDxn+l
	 T0VcVWVEEQ1xQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06E5E60749;
	Mon, 13 Jul 2026 09:53:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C531A2EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAEB7401C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:53:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gbmxKh4YGC4U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 09:53:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AAF4D4009B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAF4D4009B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAF4D4009B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:53:17 +0000 (UTC)
X-CSE-ConnectionGUID: sbnjBWahTgaaRYgyDRHrTg==
X-CSE-MsgGUID: qrXzRd83Q2a6GGbzMIHuiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95688523"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95688523"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:53:16 -0700
X-CSE-ConnectionGUID: IAvA8iCXSEqh9JvGGGn/Cg==
X-CSE-MsgGUID: clol7oWGR1iQaqwdHJIMIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="257460610"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:53:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:53:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:53:15 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:53:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HoMrwjpnZEdHzFtbfdwljRhrteoD9bOqy9IOzXoFlEVt8PLA77inJqG09Q/332sme0KlBZDHjB3X3Zmpp4Em65slACf6qcpFf93zaSIqFbGRbL3lzq98+UE6syOMNAqA/6nZXNWc4hLdeuZNlSduj1UZzIYUvj+IFgb8iNGvawsoo3FCEmpD/id40uimd0p3xIuJUiIcpilJQsx3QIcGa2noWgqFkAf4UAAvGk+C5Guc48/sngxjpuHciqoWQ1aAoAbokb9rNO+f5IUidB0A6AjpgtYA76NCagW4QSM6iLa9AJaVZisXAVAA5q2U02WeJCbIY1KKrQVSv4T0LghWfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2QK74Re9S4L+Cd+8XZ9ABpckQR6Qw43yWQDp4dsUHF8=;
 b=edY/grVC1Pn3qnojzyGZkdkuwaZz5reJSYMatV4qjX4D9MfOhBpoFo/XHpzoEA8xsV6VnsDCauHiLBki03sDAh/KJnokS7GxOfqc/qDmpckUbECaX2uHPT8zjDFNBSEQlS1/dYbf3P0zmmyDIhE4ks2ULJG4m0wNAhIOl0q23/1cO4fpCenmGwNsvZjEt60dUJ4yyI8S0Du9CirS0AubJ2tbioezbtgwrRkJrqmFU9vulQYkDd1fkpoQNY0EwCmx6G/n5TOfSwCbqxW9uC3xXbM/fgBKFiA1RH9yaCvzisavoauT8dxB94r5Zw2B+3VRi9x58Qfn/gZZU6qnm8fLiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 09:53:09 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%4]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 09:53:09 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Jiayuan Chen <jiayuan.chen@linux.dev>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jeff Garzik
 <jgarzik@redhat.com>, Bruce Allan <bruce.w.allan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] e1000e: fix IRQ leak when
 request_irq() fails in e1000_request_msix()
Thread-Index: AQHdBX651+0S1WPCvE+Fmde5ar7ysbZrTqwA
Date: Mon, 13 Jul 2026 09:53:09 +0000
Message-ID: <PH7PR11MB5983B1931B871A639467BD86F3FA2@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260626083917.49745-1-jiayuan.chen@linux.dev>
In-Reply-To: <20260626083917.49745-1-jiayuan.chen@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|CO1PR11MB4849:EE_
x-ms-office365-filtering-correlation-id: 8a8081cb-5513-4060-9e16-08dee0c48bbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|23010399003|11063799006|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: zehuMc9LQjMLHx9M54At1pH3nteRWpWhzYeSE/cMw9Z+IHTRZebujfERp5Qq1xWSNtiNxmDXyOFrC/PPugWUprEDr5DOn/89rQnnniuODDqTMDA7p7CaWAAZYiHWcrReSPY89JQ0Xoi5R0vGeH2XqYhXNSj4aHMVNp3hv/cnGkC+38YYVilLhBu0+CAAy2QK/S94J2cqOffO5isEvRoXf/gJcBsKJqFFb6D6IyPfK074e/3D8JXtLDElxdzVHAvKZe5y2IrhmgTtmu/qkHEQxHFDUVDWTSjMwWL05NOUJtjDBHlt2DAGV4wakx+np4twGadhPEnb5R3piMuI7VPyDuzMp+ZVujVJQ/DMiObajWLQuMMIoeXodH1vCxjneTYAJoCa44ddcYNqZWdjbu/OFzfy6JMMzL4JkCJYQ+Z9yiNq64S9Gw7kr76ytaZkKF/3OE14Yb74hwu1Qhu7gksoJA39a9BFl+jMWblB4UOJGyMkQ/y6vHJRZJH0CPsQePfWmJhZ/xn6eMKsjY4S76Yi9uT5AMmwY7HUSAwl1naLMeiMm98tfL9xK5ayS7/aJk5ZEYxks1g0+Zu3v0DPoSH4O9PhS/OEk8LG+vBJ2UmDSxBFhq5BvOS929iSGjmUb1ZV0scLIPj83VkeXSS0QEyihBOVrzzYAhxeZHXDsbfg+5cnnWEyKigSe9IuYRH2U9rTB3dUlDNbbfCkI0pnMUmaW4AJbI9hkccy8djx01qyYio=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(23010399003)(11063799006)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V5JonrL+Xg2Mp/97SRU0w3SPe9DcvQDESV7IAiA1jVL/vLDUBPeBGFdqUbv1?=
 =?us-ascii?Q?SUy6/ZIWq24B8jxmiS5A+yQPaMdE4X53DnxZ1ryOzV+P80QRlbRMq0EmOuN3?=
 =?us-ascii?Q?7jeCW/AA4jmVy24NqxbGxxjsBWZXe4Y7QSEKmz0+uA8sCmNsElcBDknlJvIZ?=
 =?us-ascii?Q?2L2ckbid/uzoXijHgr7qBmNlkwfBFBp76c1WeaU1CjfmSp0wH7EknjJ8j1Ls?=
 =?us-ascii?Q?Yw6dGw2QhKJbg90o6HmbqC8yz0uHRHyK0obz3i0+313K2OyWA6yr9YIBE9pl?=
 =?us-ascii?Q?lt1C6GcBmKvR7wW6BTPaHqR0vnOITxmxp/f8uPUSM/jwjmib7VhbDkFQY+CH?=
 =?us-ascii?Q?UQCs4lsMetaWEq5U+YIXpQRKiKoKMS1GmfAU0xKxeMlyoz0UxpdTOunKJbBp?=
 =?us-ascii?Q?OFS5fPtvOuHKoHmd5yQ+xUjOwyU4BX27szbxG8AAAssGf2VZiFq8ZP6w3TKg?=
 =?us-ascii?Q?wD7qeHxSjVb5lShLTl99VycCz5Hb8deXH/U45B6nda91D9dPzrUNGYWpsB2d?=
 =?us-ascii?Q?cw7dpIKhl6HcLFjoyY/RHM5KHK1YKHdneP2Wbh+hzBsouvvwSCUCdrQMuFfU?=
 =?us-ascii?Q?HdxYze4Y9VL2MNiEsNBphKmbE6b8i5hVmWc+WIYCsOpy5hXdWEMOplZGL2K7?=
 =?us-ascii?Q?U2eoe66UmwD/8fBkg/DF6LT/QA5gDOeBw4WNEiUoc8Fplz3aSR/qchl1xeiQ?=
 =?us-ascii?Q?uXG5QReu0WBFO7MR4Mwt2spAFxiMmGd7t0MVIW9xDv1LwgT8doKdgR8DL9FL?=
 =?us-ascii?Q?MUf2L32PL48oRmRen8BRBMDD5EtGGkzxM7/5DsshHci7bRi73FBOgQjsUFRZ?=
 =?us-ascii?Q?yZ1EYkJcVBfAdKogBRLuuxfnWUNfdEoHbo43/PlHbeiC9Y5TA+5Myez/GCtT?=
 =?us-ascii?Q?1w2m8B5OBDNDESfATFuViqGP03P46hK0Fe7n0TqCbm2DQ+bq+vz8kAozyOxN?=
 =?us-ascii?Q?QSAJs+fUGBEDLSrGqpNTo+YoWL5xzOwhRlEZ67buLqPvgMQdebI+NSsi9NkT?=
 =?us-ascii?Q?UqI9ebANE9rbXdH4amwNCNg3bC1d4bwegKK5ZL1aPERJk8K2p4y6hnEt1dfY?=
 =?us-ascii?Q?nVcRI3xloHYLX2df7pxgqdHvWkyj2CYMGCO/MwbYHUyA8Qih/Nmz3JZwBzoK?=
 =?us-ascii?Q?DfpOSql/+fOMiI8TYxRllf7MsFX5VORDg4Mbdyq35StQuPCf6IsfX5zC3d5v?=
 =?us-ascii?Q?XmdkKGuTpgWVKDqc52pu3wv3Rcqn/iZL4PejkGTS9AaXXVhW8oJbjdQf5YU+?=
 =?us-ascii?Q?QK4+q3LyzSIg22/ghYmRdLXjJqieDx6HOeniAGCmV7BIrP1Ik/yOe5HkQCQZ?=
 =?us-ascii?Q?iQOIxu2gfhnZagH7IOu4+VlC2JVRedAgJVsGazgflZ33LBdlPdfEhAURTO/i?=
 =?us-ascii?Q?aLUUkEXruK5ZE4l1vsI3adFjY6WoNiY5SfTxmxItOWpqblgayj0BfVOWDceO?=
 =?us-ascii?Q?ThLEZ3T00T63gGLEkLQ28qNpbWRDghyMhwB/nSRSWeCZX/0sxQbYAY2YR35t?=
 =?us-ascii?Q?tYF7aACIySx8nVUHBD06fisQLPH+kAgdM3LdtNOU1Q0UlFH5Vzm72Os0B3Zh?=
 =?us-ascii?Q?HrDRm9XdU0OrLAh6NT9hf0gnDdtAxuuWRRNzFC11SItq8dKYw1yf0lpvQ25V?=
 =?us-ascii?Q?VDRnwccAvMR6/n2fMUJRn8iF/ClmWIhV4/+4ZqBKE/b3gKqg7/Ac45HuBYbe?=
 =?us-ascii?Q?lA8Y/D8UZ86BhCbx3aedi3L80yLWnpkhw/fDBsbNkVfMYi86LsCAfXaF3s9x?=
 =?us-ascii?Q?2A6l2MhLKg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: U/2j8DG5oOfXD3xpqgRZigQ1djWcf0qmzcKCY2YGl88XiAYbeXIB7nUT2KsJNXQr0te7DcQt4DDRbky5tp46pMGD8p5AfIFROTR85OUtnhi/Z3moQ4tvm4JqoZEFfgTreQFqZviYd877GvmcUox/vF0SkE954BrLXVrwqgYM0w03BQGr7APPqDjZ4dSZhW9QW96SWr8nqtOKFK+EqP+IbU2rcxW60gGqgGyBejHBUN197Q1akSwOkmKulp9EHDIe6msHVg3vx/EUqPtq/2XiE6i9T8oqcYv2OUWwuKQsN5GQj6BaYyrrZxCXmrxjjPzc+HwsIMTZqtQW3iavIosOgg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a8081cb-5513-4060-9e16-08dee0c48bbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 09:53:09.5569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dAlYRMJoH70bxOqYtuep0TtSAtUUysDP2eRfbVdvza+APGH29ubgFPFfkX4HdPQbXaxdCXdFAtXJV3jYb07OFAmhY1f+ejN8j/6kx3aYj/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783936398; x=1815472398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b9Dh1BuP+gLlpHeVhYZliyoKRpNP+qIbQJp65RBgSMg=;
 b=Cu/xpVgjKjRQsfTqUONXXsWVpgrB1gwnuD5rlRgFp6luZiK1K0qCNWGq
 AxiSh2uwzS1jFRTaBgY3K1Da2C9IEqHv1byQ62hWAak8KDxTStpC8d4RB
 2CrdF0ZvOaiH3XCx8SUtB2geNc9LcJ2WG1X1WJaDQkWMy049pfT6Z75C3
 TLvAtvvD8ZMoqMs3AK69qG0WeQD6pIIuwQu6JoFXS2Gt+xiRK+2pwtWaF
 Q70tcGF61RPVyyRWww8eVdUmORB66iQq9bPZ/LQnGGF8SyoZHwDz6zsAv
 zIGuqE0NZk0kBOdynUW5hlbMzEJGMjHePJb2CSaQOCG/C/lbsd8W6sfUm
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cu/xpVgj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] e1000e: fix IRQ leak when
 request_irq() fails in e1000_request_msix()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jiayuan.chen@linux.dev,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jgarzik@redhat.com,m:bruce.w.allan@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B6757497F9

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ji=
ayuan Chen
>Sent: Friday, June 26, 2026 10:39 AM
>To: netdev@vger.kernel.org
>Cc: Jiayuan Chen <jiayuan.chen@linux.dev>; Nguyen, Anthony L <anthony.l.ng=
uyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew=
 Lunn <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric =
Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Aben=
i <pabeni@redhat.com>; Jeff Garzik <jgarzik@redhat.com>; Bruce Allan <bruce=
.w.allan@intel.com>; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.ke=
rnel.org
>Subject: [Intel-wired-lan] [PATCH net] e1000e: fix IRQ leak when request_i=
rq() fails in e1000_request_msix()
>
>An internal syzbot instance reported the warning below.
>
>comedi (comedi_parport) lets userspace request_irq() an arbitrary IRQ numb=
er and can thus grab one of e1000e's MSI-X vectors. When
>e1000_request_msix() then fails partway through, it returned without freei=
ng the vectors it had already requested; pci_disable_msix() later tears tho=
se descriptors down while their irqaction is still attached, leaking the /p=
roc/irq entry.
>
>Free the already requested IRQs on the error path.
>
>genirq: Flags mismatch irq 28. 00200000 (eth1-tx-0) vs. 00200000 (comedi_p=
arport)
>
>remove_proc_entry: removing non-empty directory 'irq/27', leaking at least=
 'eth1-rx-0'
>WARNING: fs/proc/generic.c:742 at remove_proc_entry+0x436/0x560, CPU#3: ip=
/445 Modules linked in:
>CPU: 3 UID: 0 PID: 445 Comm: ip Not tainted 7.1.0+ #284 PREEMPT
>RIP: 0010:remove_proc_entry (fs/proc/generic.c:742 (discriminator 4))
>PKRU: 55555554
>Call Trace:
><TASK>
>unregister_irq_proc (kernel/irq/proc.c:406) free_desc (kernel/irq/irqdesc.=
c:482) irq_free_descs (kernel/irq/irqdesc.c:874 kernel/irq/irqdesc.c:865) i=
rq_domain_free_irqs (kernel/irq/irqdomain.c:1917)
>msi_domain_free_locked.part.0 (kernel/irq/msi.c:1619 kernel/irq/msi.c:1645=
) msi_domain_free_irqs_all_locked (kernel/irq/msi.c:1632) pci_msi_teardown_=
msi_irqs (drivers/pci/msi/irqdomain.c:28) pci_free_msi_irqs (drivers/pci/ms=
i/msi.c:925) pci_disable_msix (drivers/pci/msi/api.c:200 drivers/pci/msi/ap=
i.c:193) e1000_request_irq (drivers/net/ethernet/intel/e1000e/netdev.c:2028=
)
>e1000e_open (drivers/net/ethernet/intel/e1000e/netdev.c:4681)
>__dev_open (net/core/dev.c:1702)
>netif_change_flags (net/core/dev.c:9806)
>do_setlink.isra.0 (net/core/rtnetlink.c:3207 (discriminator 1)) rtnetlink_=
rcv_msg (net/core/rtnetlink.c:7068) netlink_rcv_skb (net/netlink/af_netlink=
.c:2556)
>
>Fixes: 4662e82b2cb4 ("e1000e: add support for new 82574L part")
>Signed-off-by: Jiayuan Chen <jiayuan.chen@linux.dev>
>Assisted-by: Claude:claude-opus-4-8
>---
> drivers/net/ethernet/intel/e1000e/netdev.c | 13 +++++++++----
> 1 file changed, 9 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethe=
rnet/intel/e1000e/netdev.c
>index 808e5cddd6a9..19b9823c5679 100644
>--- a/drivers/net/ethernet/intel/e1000e/netdev.c
>+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>@@ -2099,7 +2099,7 @@ void e1000e_set_interrupt_capability(struct e1000_ad=
apter *adapter)  static int e1000_request_msix(struct e1000_adapter *adapte=
r)  {
> 	struct net_device *netdev =3D adapter->netdev;
>-	int err =3D 0, vector =3D 0;
>+	int err =3D 0, vector =3D 0, i;
Thank you for the patch.
I'd suggest to declare 'i' right in the loop, besides:
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

>=20
> 	if (strlen(netdev->name) < (IFNAMSIZ - 5))
> 		snprintf(adapter->rx_ring->name,
>@@ -2111,7 +2111,7 @@ static int e1000_request_msix(struct e1000_adapter *=
adapter)
> 			  e1000_intr_msix_rx, 0, adapter->rx_ring->name,
> 			  netdev);
> 	if (err)
>-		return err;
>+		goto err_free;
> 	adapter->rx_ring->itr_register =3D adapter->hw.hw_addr +
> 	    E1000_EITR_82574(vector);
> 	adapter->rx_ring->itr_val =3D adapter->itr; @@ -2127,7 +2127,7 @@ static=
 int e1000_request_msix(struct e1000_adapter *adapter)
> 			  e1000_intr_msix_tx, 0, adapter->tx_ring->name,
> 			  netdev);
> 	if (err)
>-		return err;
>+		goto err_free;
> 	adapter->tx_ring->itr_register =3D adapter->hw.hw_addr +
> 	    E1000_EITR_82574(vector);
> 	adapter->tx_ring->itr_val =3D adapter->itr; @@ -2136,11 +2136,16 @@ stat=
ic int e1000_request_msix(struct e1000_adapter *adapter)
> 	err =3D request_irq(adapter->msix_entries[vector].vector,
> 			  e1000_msix_other, 0, netdev->name, netdev);
> 	if (err)
>-		return err;
>+		goto err_free;
>=20
> 	e1000_configure_msix(adapter);
>=20
> 	return 0;
>+
>+err_free:
>+	for (i =3D vector - 1; i >=3D 0; i--)
>+		free_irq(adapter->msix_entries[i].vector, netdev);
>+	return err;
> }
>=20
> /**
>--
>2.43.0
>
>
