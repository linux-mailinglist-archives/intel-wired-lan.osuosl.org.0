Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDxaJufOzGlFWwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:53:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F283764E1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE0C140F87;
	Wed,  1 Apr 2026 07:53:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 86Sinn24QXzl; Wed,  1 Apr 2026 07:53:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5497440F8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775029988;
	bh=xnLqsmTednL/LzWrMhLmFWMLEPubVcbDGhO4xzbcn1w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dCumSGGAaIy3qbH9JTTgpcoVkjktAfiGjOIwEM1hRFsDxaBtrndS3+RZz27TsK674
	 tQyZQToeX7c/n/R9qdlXCL57ihEgpZ8muJOXPz2y1PwPpbWvzsI8v6Dbon+pdyNepS
	 710ylWwKgxvxm9mimlWUDKlHBw17EL6Ffr4W/fCpZTLAKqPgrAPF88s554dNFF639D
	 AK4e2un9ECwPD9DYhAajoWlDCWGyIX7ajDT8BuXmM2zx+6QSUHmLtOrQ25iZLdxW/A
	 HBvHZXOxZnxuFhBIvY2/54YaDlczOlkNLH2V152cK03JN6kIVM6Mm6flWwOfznJaor
	 dn5jeXXHyPmAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5497440F8E;
	Wed,  1 Apr 2026 07:53:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E69882A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:53:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBB7B60F6F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:53:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9yGTrsRiy2Y2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 07:53:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 449F060F6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 449F060F6C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 449F060F6C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:53:03 +0000 (UTC)
X-CSE-ConnectionGUID: S5DqDgKwRYeqYsY/u6qgdw==
X-CSE-MsgGUID: Emo9zTG5Sca3+UmpReRksQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="93452089"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="93452089"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:53:03 -0700
X-CSE-ConnectionGUID: U76yRrP8TC6Ah4ad+0vH7w==
X-CSE-MsgGUID: CrjHQAODS0mqG9QQn0LpQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="231021356"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:53:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:53:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 00:53:02 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fb2r3Z/wDfWLZKznvbtSQX/+mYAc89dXasLSVjmzC6vg3VtBSCcmLv8juO/PUdWSNCUF7YjXcrYq0OsugVlZ3nIRroQ5QOoJE+ssxFDGWrXMgvKKqzvrYmTxUIlKBdW7vjZCBgcI7vk0DQD4T43tby/kJ6sMTYDvv40AWi/LyWRrumRCXl5ZFjmpkAThnu/AIgizsuIXCwBxN9k7fmQha7q/nnZF2Luo/6QIzNFFF8/6R8wpCee7z8cbA37MAWrpr4IHZlNjWaj0wyrygp08NhVYYZViaymuxQ15VVadoNRk2KvsbVEIWtmweYWa4P+2NV7sVcRPKY68sZx8rrojcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xnLqsmTednL/LzWrMhLmFWMLEPubVcbDGhO4xzbcn1w=;
 b=OnUEv9+gq1Qvi/BN2Wx6SFipuLatmeJSj8PiIgpQYBU6FzC5SknJisyBMY7kNryJSf318GyRITCLi2Fdh5r9Lq6YLfQ9a3yA8kaK3xwHL12PAhq79JxZaMvf5m1RZUMuQRWaMFsVXAu1TQESIjkYZ3cb/IPrh4yAI8UofVtGKRJv4cDOPc+fuP6F9HyZdfwgmqg9APoo3YS2/C/Yo6mylmhS26okPR3uYWtyKtHn7WME0Fhg/gd3WWj2GwV/yjUz78DSxfzN25foM6HWHcb9CvuLL0nhh7y6O3fCs73vyb6ZHNF5YTVvo9qeftasnp2ywCMxziZmgxLbDWiQt7GPFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 1 Apr
 2026 07:52:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 1 Apr 2026
 07:52:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Daiki Harada <daiky0325@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kohei Enju
 <kohei@enjuk.jp>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: use
 napi_schedule_irqoff() instead of napi_schedule()
Thread-Index: AQHcwSMmF+rqm1qaS0ymJ8GNUovbGLXJ1r/w
Date: Wed, 1 Apr 2026 07:52:54 +0000
Message-ID: <IA3PR11MB8986F7FACEC1C5866FBA0146E550A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260331103924.36422-1-daiky0325@gmail.com>
 <20260331103924.36422-2-daiky0325@gmail.com>
In-Reply-To: <20260331103924.36422-2-daiky0325@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8556:EE_
x-ms-office365-filtering-correlation-id: dd0a824d-11b0-4ea1-013b-08de8fc3ae7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: TA/vL9egpCFQR+xs8YHPF59uzGkcFn14Q5fR6TU7m2tBhzDjKmjoDjF7Fpazu1HhSZlpH89OVQzb4ojLIcMM1wquqPBWRi4Nf7iUo1do8RC3T4gwBSQPD7rIGsioPx3cEGt0y+tgpvmfVYo2tbxvF89RLli5V2gmjQ3KemZ4uGFDsOOtqXUbAovryirhgHHRQOfObZY8kcMF25OhjTh0hwQwJWGDnLk95jW/VRVx62ejJGIUm2+VYb1UB9cs1v4camWzofsef0OYwK7UdOBoKNaUwZyktG8PI3ZWQyq8q8YgfTgIzLxAg+Wc+U7S1cO1p9IAdVpt10MJCu48xOBZrBMJ8imNkKiP2IDPN8OZzzgGNjaWOJSk/pPdlWiCTXmiB7nVMd3OFx7Oy7E9JW+bxEotnkuyGfQb2ndnPYrJL1NF7oYc+3W+ew9ISKFkGs+Ai4xpgISCn/NEcKUdgRaSxb2L2rmQ3EuZQ8+tz7JmCwwrmhRonwioIt2NxfTUg3gFbXxo/eNRi+HmaTPCmeYS8ARHJZ4rOD4UN3QlA0B6HFslG14nPKl51RsPoLu9cFGswjdeYVGWc2hMuIizcgjv9hRduN0DdB+iKAgZb88yS//UREjZDp6eyAt4jyQveu7PTVg9uh2RJNs/jdrHXThSddpleGMSDUvsPYPOdpWSSpr/LXBrIQcN20qA572vA9aoUVkQTTVIvO32tqnwRQe54qB+OqIejO8lzFC1XtxV75IMlYS9SPAIuMWshfU1qB58sO0M+eMv740LZHZiQAPgkQf06q9vVKrf1gpwWj5lusk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xefpktewHjBaZvaXHh4Mwmjuebl6/fQaMwSKqOFoZAtzCFow444Jq5z7PkR7?=
 =?us-ascii?Q?jZXIvRL3s1zgedjhx8dduEgBuJVtRgXaDIZnR9YZmwRnRvBW1kbrJJ8/gq0x?=
 =?us-ascii?Q?UcFOxyH+gMJ5HeeL+VyVVDx77nL71J9G1buSprbxqy4KP83xlokFyM1laSn2?=
 =?us-ascii?Q?DrwDnoTRKAw/W1Aow3RM6BPZJaiFsVU7QD9CmIqH9qqqqDW0OLOuGEmHLRYA?=
 =?us-ascii?Q?LDCj/jva57SdGymAj0drp3CnY6QiH0wOxSAQTyNSJXYDiXm08UEpDWxlGTH+?=
 =?us-ascii?Q?BjsqkW0Xlik2YvKUbup7+1Ka25QXWZuxVIHRNWW2mlo/0MzA4aS+E2e3npLs?=
 =?us-ascii?Q?zLB6a058laQuhky3JYJYe0qiG744YQ810PgwaGh2lGAhi3jvJj0F3OcDvsCk?=
 =?us-ascii?Q?zl6pHLOS1C/ZFSsWq+8kPOXJxroiQeumiccI8ekzFLECFCq7NPBIEHd5EjqV?=
 =?us-ascii?Q?OhnGi+tEJojESVnNugS1pZMjHsaqHkzgkgKAqbxXHvXs/fnt7fCi6EEsgh1f?=
 =?us-ascii?Q?T9dBxSrZCwNomkVbhlIzmq5NKvS9pZtegH30oyseorKPPhqKS3J7WZqTpf/D?=
 =?us-ascii?Q?s92uVKPz2GXnKiaiuVbReKHzmYYucF2l8yiwjLX/Yaaf0m8z0N+8ChZWxGEG?=
 =?us-ascii?Q?wRm0tuNZ38M78OrdYgFQfLpzxC6sJ42Umk1bFE2YQGTivBre1HHKBnBvYLDH?=
 =?us-ascii?Q?fkEUbqpSXSK5YZmqJn10kpLxniM+Y8drndlst8o0X0lGwvT1rSt2hTw6Ve4/?=
 =?us-ascii?Q?kX/tl/ng6jbJjxjIV6S+UPdVdRjT7VPvNPqP1x+gN3KXWyQ6/Qh4ufb722e5?=
 =?us-ascii?Q?Pnea+VaNJR7pb24j3sW18gckRoja8wgF9yJXthzcw5m3gDzzgJFHJ85+StaQ?=
 =?us-ascii?Q?6R75x8A3sUEw+5oagsTc7h9DCU6mO14Se3mOEBthRqcPW7epkSuHcu4THaH1?=
 =?us-ascii?Q?qz4K7V46CZhFrr/aQvuLNx3cO5UQoQywMQqdBnf/GZm/pi5xUM29APW/UVHk?=
 =?us-ascii?Q?+cfxS7C/ULs9oR9a1sK/S19co8ctHVLh3PANXTo6oY7mPdYJ+dRcoJeOkG9x?=
 =?us-ascii?Q?Wxt8v5da/PjE5FyskX0d/O9+rotiIN+kMHBss/XF2TGQfhR3SqaJaGWwKvYn?=
 =?us-ascii?Q?ybXJkURHCXnLpf8v6eQQt3x1ZMv7z1g3zrOEuvgBMDHzUOD5UyZdFg+BoWyb?=
 =?us-ascii?Q?pEDEh1hjksGh/LQQj+6kypDfjy9HsVIZSQlxrimB6ll+os9rCoiw6KMNwV4F?=
 =?us-ascii?Q?sKHrNg9pTzFs/Cu0pc8cEPnTKBTGaglggnxh5PVzuq546bxX3z51m36O7AkQ?=
 =?us-ascii?Q?9tfWwx+OI0xu4S9zYT6T2dyQ7YTFBFcnXjF5riVfbLjAxVUIia6cbGEFE8ur?=
 =?us-ascii?Q?clH8KYSXouvrpnDjKO7UeEG0Jg8ix45qdJjDLiJsZwtrCtObJ4XvXAqLfzyN?=
 =?us-ascii?Q?i2N6iTcX5xu7PepEdQPzH5grXzE1e56F7Fkr4blyL0+GnuNutfb7jHoiNhCS?=
 =?us-ascii?Q?Agowm8vjenV5KVsEim01Q/pZ3kKKVcXWlK2QALK7x6QJTvAuuzM9oLgYOi43?=
 =?us-ascii?Q?NcLmWNpfNHOlzH60NPo9KCVevKdeqJmq6QbwZJruNxq5vvVsIaZancIK7geG?=
 =?us-ascii?Q?kKIz2yWaeYSO7Y9hMSAKA+sBNPg52gpDVujP64paFm7J6+0yqR93Z5+WlxBx?=
 =?us-ascii?Q?/majRCmoioCezlOuYXXTBtMBKzEjE3A6Dlqff3WM3qvmUHTXGeUFnZobhIUh?=
 =?us-ascii?Q?oWdYGJ88tcgeOXNCzXbSIysmRhbqkLU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: s5WP+/vroNbRYCA4wgInk9j+fANoG0LVNOVReVN04dL412LV7JYiIxcKrDZwea7FT9ftOlGF1YWlk31buzp9+SUrOqGi+SAsj4BUI5kBJm1mrrYc4r8omP+JgkYvghFZYp+yTGLkONXDnoRuIN5hhNXE+pI/g0exdSxnvvdpzvTyyJ0FQPRlFdUKERByDOuAy2Uyry6slfjULIgzSmom3pEyr4Wg+QnyCDZIdBXvYL/ip2q/dONGzdvr+1SkvY2I7bbdc6Q4lBN6Hex3CMB+ODRxU9NhltBVmciwD97DXbXEj/n89vEJ5fwCvqoQRmeoa4ijGz74+coabK8ikBb8oQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd0a824d-11b0-4ea1-013b-08de8fc3ae7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 07:52:54.1732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9CIwo1Bj/NMIcKfk3xTCe+i6xmj3qUbjVY2WIttLakUbCcNXImqXKyWPNi0Oo2lApw6hGntdwuWD8zekyoogY18oiCz+3szVCC0Et3e9xfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775029984; x=1806565984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sPa0+BoLYaSDfofvlwHmmIEBubwDX1fbMg9Mw5jZGSQ=;
 b=aJkhE3XMXseNRiH/cpLw4u9ycInT2P85deS2xKG5qQkXJGAlPj30jDE9
 EsltEXksgFDpZ/vfYsZ9ZACSSXd+aqSGt/SkrlTHlFJDQ7QY4dgWMvx8C
 aBVwri8mrOzEwV4SeDhYcZggqeqfHXBCa/JgGHVKSy3GPfHbsSApzOJkC
 VtoV2T1K1ARfzpH7yZMpXb7eLtIWwyre5jpRtJumXgpijKzuAcwvem9op
 sSCBpsEimTzMcoXux8aKLh741XYcs5AUmSoLF/o2uvjCQ7B43GL6qGg93
 W8gbuFa/yphb9pQA3xswKbbisgMxT471H7dpbwPcDt8IC7NdYc2DqjQPq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aJkhE3XM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: use
 napi_schedule_irqoff() instead of napi_schedule()
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:daiky0325@gmail.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org,vger.kernel.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 72F283764E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Daiki Harada
> Sent: Tuesday, March 31, 2026 12:39 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Daiki Harada <daiky0325@gmail.com>; Kohei
> Enju <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: use
> napi_schedule_irqoff() instead of napi_schedule()
>=20
> Replace napi_schedule() with napi_schedule_irqoff() in the interrupt
> handler path in igb driver
>=20
> Tested on QEMU with igb NIC emulation (-nic user,model=3Digb)
>=20
> Suggested-by: Kohei Enju <kohei@enjuk.jp>
> Signed-off-by: Daiki Harada <daiky0325@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index ee99fd8fd513..d7a6ae938cc5 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7158,7 +7158,7 @@ static irqreturn_t igb_msix_ring(int irq, void
> *data)
>  	/* Write the ITR value calculated from the previous interrupt.
> */
>  	igb_write_itr(q_vector);
>=20
> -	napi_schedule(&q_vector->napi);
> +	napi_schedule_irqoff(&q_vector->napi);
>=20
>  	return IRQ_HANDLED;
>  }
> @@ -8199,7 +8199,7 @@ static irqreturn_t igb_intr_msi(int irq, void
> *data)
>  	if (icr & E1000_ICR_TS)
>  		igb_tsync_interrupt(adapter);
>=20
> -	napi_schedule(&q_vector->napi);
> +	napi_schedule_irqoff(&q_vector->napi);
>=20
>  	return IRQ_HANDLED;
>  }
> @@ -8245,7 +8245,7 @@ static irqreturn_t igb_intr(int irq, void *data)
>  	if (icr & E1000_ICR_TS)
>  		igb_tsync_interrupt(adapter);
>=20
> -	napi_schedule(&q_vector->napi);
> +	napi_schedule_irqoff(&q_vector->napi);
>=20
>  	return IRQ_HANDLED;
>  }
> --
> 2.53.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
