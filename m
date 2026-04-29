Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHGiBdPM8WlckgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:18:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AF3491B21
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:18:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C874F422A6;
	Wed, 29 Apr 2026 09:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jQ_yzqSGsrFg; Wed, 29 Apr 2026 09:18:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4545A422A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777454287;
	bh=blJrQI2x27A5EJfGNXzCB/todmqxiNkBJpTO31I4cX0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mNJxg/JbeWiYN3QiOKYAQHUbZ5Yv2Gz636UH5JEO49aF95wO9GaAX81uhckdOgqeG
	 7pun8pF/DspjjcjavFZzrzRSrbS2v51XpF54bI9XMLAue2zjaQ6EtyVtowUXAjC1uw
	 2cvfFuqlKR8y+aF9NOKThxSQaLsuGw3hmQ/hAwnyV9EeGwsjz1ArsifH4B6NUKU3K3
	 apbR8qRimm3PQHyz0GW7D/NtXNn+AA3UgTdW9y4oY/ws47db42oRs1momSLxEOnzf9
	 X/882IDF4EA3aFou5rGTVq49Pn1fpPvRZHiEDTZDXhugMpn2ZuWSHCuaNd8Vr7OB+R
	 Zv64vZHqleLsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4545A422A9;
	Wed, 29 Apr 2026 09:18:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AE4623D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D36A422A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JnOuenwLFwXH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 09:18:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ACF4D422A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACF4D422A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACF4D422A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:04 +0000 (UTC)
X-CSE-ConnectionGUID: 1XdPBDf/SWymXpNcFKjzxg==
X-CSE-MsgGUID: xZUkJ+rxRY+oSfD5EZUP3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89756388"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="89756388"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:17:54 -0700
X-CSE-ConnectionGUID: M4Wfo5YmTvaiDaHou39bgg==
X-CSE-MsgGUID: wsx52v6LTa615rKj0+GNIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="257771173"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:17:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:17:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 02:17:37 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:17:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrVaYR/S+JxfGg3FXjYi2j5rkXK3kgRdjNj6exy5jCN0tK8qWr9+TkDR+3kMBWLNCWOJJVYNu9pV5pi+skt1EC8mfiBx6Qrn8JsOvmF+sLNw5AgK2vTdTbDmm0YNEx73BtjMQx4fpL4KKbklxqgwKCxsPb0NbNTWbZ6Nn6RtFMEe8tluGP2MIIFw5Uc3nul+pT8mjdfRYcan14RDVnATPGT0lpR0lW68yOeWoCr1aNM8fqXqUdwi4ZyPzLAKEa5C9I5EqZCiJ/Qg0yPw7St9wbDMZpadNd7YbxuvwByeCZ7R3cDKsYcEumZCCwEbOom4JtPpha1OJ4taNWZrYU7ZZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=blJrQI2x27A5EJfGNXzCB/todmqxiNkBJpTO31I4cX0=;
 b=aKcxUf2DHD1zgmA4CLsI72te5yTdg2W5x7MSqC4PT9yqc1ND20DJmxOBlAuh0bMZFxWhgPyu7pnOrZPZ4drBane4r4ehWaknt5EXFEo3S4Q8RTDZJ3N6YUwjR1CSAdTR0ga/O3hGPZZFiLCR0pgm2mpZtQdgEoxFZS+5gU8XtPToRuiRKOj39bdkgvZBWvegz7V2VbGTW3S1JLbTVNpKs8nioyB6PNgbEPujGPNreYKo0coLEwcbLioVtnARZ1GtcwCVe3oRdXbueh/KGr7HDDTOrBPZZYgEJGLK5mrNQwYxOIfnJUH4eFmHx9+80ehHAdCjR0rEcs0Lekx6K68zRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 09:17:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 09:17:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vincent Chen <vincent.chen@sifive.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
Thread-Index: AQHc16S4Y7rLNF2F9k+v9Q/tHUIGlrX1wqwg
Date: Wed, 29 Apr 2026 09:17:34 +0000
Message-ID: <IA3PR11MB8986CF64FC3168AFD28231C3E5342@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260429065127.423949-1-vincent.chen@sifive.com>
 <20260429065127.423949-2-vincent.chen@sifive.com>
In-Reply-To: <20260429065127.423949-2-vincent.chen@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL1PR11MB5303:EE_
x-ms-office365-filtering-correlation-id: 8ac0b655-be7d-487c-3fb4-08dea5d02603
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: 2ACS/OPoni1lSAaVOQ1egAf+gxg6d83FlEn/GJq/Qj9OvApsGjrOEJBt9Ds86HiLJPZsP7PwU3RMKk/Bztw+aQbhGq2Bz43FiK7aYSjo1Su/0p0B2qBxtV8DPVTe+IuhahqglPlcCTIHcnU2zA5UrSPckx50EgjE1zTPKUUC+naRW79z6GifBhXbUU13x/AeL6tfB7LiUXerP2L9vzYXjGUgm6niz4EEVs0Lm6/VLx0aTOnmtkNMFMJXwkl5zJ+enwX7vsTXr53XxvMqPE3Molna2RgiNp8D+us7ibjt50+EaKRIW3Np0HlFvWsRjVtMw/3vxa8L0jdLeRN+tdXccpM9MAF2H3+1lFkT+DzEfwFyPQKymbp6MYmfh9C60XUK+slL2emqgBNV3aH4XHTo3uzwfqbAAOuTz1AgAqjGap8InrAosPBVAOrzQW9qcuG+dzqPbZaWmLJbiYE12HGfAupqIKU60xsm97kTxIdtEiUqX/z6NGB6o1hhYWenTulDQP/ML9wB6H538e1Z4j5ZOT3Emav9m6tyx0AnKDtZorc9/7hGzYY2K7fZYDCQ8/b5cdez8kn9AIlPrwX6wfjCxaKU9AqmjKjgjtZ36zUbDP7BKP9Kt3bIdFg/6xLocnxE24q2w496HhszIOltgKAqjhCtWvI1XbU//gWH/u2efRZedi7EsjOatcE8Mq25W8HXzcyLwq+wcjckxk3HGJvSY872l3gWz6siYSl/hZ5h/psxjPaI9toIGvzzlie7l8nOwoTCwZo++bP9F1SkE7RrDndax2ELfLp9kOTUoIQqGK4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lkC+vUSCCrGg7daKMhOeoC2nVruV+U++99w+Ply2kfzcmvfPqexWN2SBElPS?=
 =?us-ascii?Q?i6/64Gwxj9fEFwEkq4MyeJRePjvrXDOT4/BWdVkOGnwZFXmaPO3F9i+z4yd0?=
 =?us-ascii?Q?KnqLpe0uHyx2CVXNIX3U/1gEsQIBB7XvF8MzJJLjiZ2MaBg0jAKlTFkYyfm9?=
 =?us-ascii?Q?osdMRN2sEx35OTZCyFXtCZdS4Afr0PfJI6UP3uwfojoSwLar+gpEDIPZiHVJ?=
 =?us-ascii?Q?tpqCtPIfVHjo00YKvXSwhIVfvMG4U01JEnblg5sgsWkLlGjmXR4YKSZGp6mM?=
 =?us-ascii?Q?aFvjP2Kr1mYVDa4dDhEckT1Weny9YXy0eVZStAIcSnfje733pFlS7rt8egFF?=
 =?us-ascii?Q?opSGQO1EuJV+WAGoOgF7LNY4pMc3N7pd4oFyChCJctmZkbMerf362CpCvShP?=
 =?us-ascii?Q?7H0RMgEWPwauYpXEpCYfE8h99FGs8rbUkQ9FhYpxWnnTiXcp21gmkLmFNsAD?=
 =?us-ascii?Q?6Dc3sSBeE/rI4rVvzDDQnL+mpDaXcB15TczeTtqcAuaJmGJofjvLg+Hik5XS?=
 =?us-ascii?Q?kLgXUn6s6//aCzltzbm2LQ2tkjZs+GKEDAfM3INV6szqwB8OabOc+V0F0KIC?=
 =?us-ascii?Q?Y8U09kuzUilTKxJLRpseZFpSfNzuPxChi/fFjVbCclxmIP7KgcazEHGsgaB0?=
 =?us-ascii?Q?/HAudAk9JqMtdaWw8TUaRtK6u5ZgJj3CLI3TVrPYXGXuCevIEYs66XyVm8Yt?=
 =?us-ascii?Q?IdT/Rn5OYvcsVfHpeInwc7dEIaLjbnk4tVnFgES7kki6i3gpke3fcgdX7PzA?=
 =?us-ascii?Q?OQ7oT8NuXVcvDoo3WOL8xOR4PUdATCGiYNbl4A27L+2K0ca4JivjuPCUNNXL?=
 =?us-ascii?Q?NG3USE7WjCHHfwvCAtLumeCVaE7G4LmCvtU+XxWFdbCMsed2XVNSNWxpcgIP?=
 =?us-ascii?Q?af7TyFOjeRM/0jPrq6HhuDwgIZff6PXiuffQlE2hYDy84haGKVVsBRkowfTJ?=
 =?us-ascii?Q?mfT7KXrub8/20umuO5cIRFbjv9uHdSJ9Saxvtwx8P+fr3lGjdPnQHsdFJ+3j?=
 =?us-ascii?Q?r5yH0uHxhH0zYJQ9fFa0sCdR6zJbV1wMHiZ7JmxXUBALZWDw3kq0N1vwzXLC?=
 =?us-ascii?Q?7BnU3gtdd4lNHz4R1kYZZ0JdC186wDBLE8jOQ/2P+Rsmgq80eYjFwUsN0GHH?=
 =?us-ascii?Q?FNTxRyyQIApbNtoVoRBLElRxCdShcarN1BL7mKYsoVovq1qliwRD5Z3DFJVD?=
 =?us-ascii?Q?Zm/iLxZoNjJFNy90x6tNXfWCR5ThOXX69BerloUQbW6z8pnzRLzJ4kFwArhz?=
 =?us-ascii?Q?yCj61D3JHGqSS96o4q91tP1GadKpTnp8nVfOdMx/r7h9MnabylG3E5lBbKEH?=
 =?us-ascii?Q?qs33/CIs9MrQVAMe/DH1z+kh8V+G+RIBBXYGF7vyAXE0fJHu+PF1l3zVN3Ej?=
 =?us-ascii?Q?5pcVVxkEs6vrOZNW/ZPxw6qS8CDSjLq0cJIYFpZJhvcU+IZd8yJd0Vb/UJs/?=
 =?us-ascii?Q?VyWDa8ZM64X5B6iX04BMZzknrRwAk2BWAVYl8A3JXMKcDcRmeZ538c3Noxg+?=
 =?us-ascii?Q?Kb601P7v+KPxQ0cee6C2/j2A7rboewh3PTjCsZpLfWZHXQpH1oiK3vlYZfcg?=
 =?us-ascii?Q?60IIkaWnPW4JrsXbdaczo5ZPsfVdDDQ8mQFDTZoGIP3usADGhD0un656qVjQ?=
 =?us-ascii?Q?KVHwvTtHuugeEs28lbEEm8R0pvyBXJt0uvvqmWZimHgvhjYPAg8hnebzyzGt?=
 =?us-ascii?Q?bKrVn6WPdak7UUzGBIfAx2517ei5LIvE6Fbh73APOv7tUDR+lPm0zrNrKRRO?=
 =?us-ascii?Q?x/Lxo7zoS/UNmipyIDUKyZMvHGWDmI4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PmpTrgVwbOBqxCdVV4SaUTubnrVizYihwzYxHs3H7Wcsldq7Z974fNiYwndkFWrdq3HiHfi9JkZIDotx3XXaN6HXiMtKmHrWtgxx32EzKOjLCgAzdgeV6+Yir3BrnLkLQmJGBVaNauR0NE47KRC0rnU+3bQWqYCkonxLBnYPvfO5QBaJ5YQYW8GIC/8ByoUsaRR1+PYSs1qmXFOMfxmYJHaJjbEr0M3AEB5ni4O4f3SrgBfR2IVQYTdKH0N6qBIwn9UxVBAXBO8+9nXFdmD5jf0zrDy91Hhtpr1q1mVfMpGT/frnL2vCt2Noi+IEqtMCjDV+rfgT+nM0y1nszDgTvw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ac0b655-be7d-487c-3fb4-08dea5d02603
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 09:17:34.2542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jcmNKIoeYSkfPPUpdCETem8oaNdWXHnoV2mgq41bc4BBqmgG4gg8AtnOkfMX/5p7jY0orytLk4pIt8yLeKRFe2uZ5RGEGTKvArvzFAIg4zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777454285; x=1808990285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LAS43hwMF7Lr7q2fMl50f8qcXme/MO7AC01jhSYnUyw=;
 b=YBh7FU6P7zv/PJZxqMlfjjfyqw201ftkwX5vD6Acyvu4ub61IL1Y4ssD
 pLXnlZ46Uyf8cG83CgcOFbtP84RaKFB8ljAojrUfrTBbxwGSZxa5EAEVb
 fF8cZCZmvbE4FGIPLzjRntPY2Qv2u87ghYccDA+VbbAz+v/7iKnPT04z/
 y435jCay3shxpu1sYDqsDqYuN9PPlC5cEdlUXWTBmxr7ktwUVfq9GAeAz
 FMpHf4/h/REjqtESkj57UxtBBrob/TwrODoTalqULxYVL1997vQcfqbMj
 D9HIzXt1UHpTnE6lLjcZUQEvu8+lu6fG3EDZEiV0jCJ9J+fFrBPmQX+B3
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YBh7FU6P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
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
X-Rspamd-Queue-Id: 47AF3491B21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vincent.chen@sifive.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vincent Chen via Intel-wired-lan
> Sent: Wednesday, April 29, 2026 8:51 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; vincent.chen@sifive.com
> Subject: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
> !CONFIG_ICE_SWITCHDEV
>=20
> Currently ice_eswitch_attach_vf() is called unconditionally in
> ice_start_vfs(), which causes VF creation to fail when
> CONFIG_ICE_SWITCHDEV is not defined.
>=20
> Fix this by adding switchdev mode checks at the call sites before
> calling ice_eswitch_attach_vf(), consistent with how
> ice_eswitch_attach_sf() is already handled in ice_devlink_port_new().
> This is similar to commit aacca7a83b97 ("ice: allow creating VFs for
> !CONFIG_NET_SWITCHDEV") which fixed the same issue for the previous
> ice_eswitch_configure() API.
>=20
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 14 ++++++++------
> drivers/net/ethernet/intel/ice/ice_vf_lib.c |  3 ++-
>  2 files changed, 10 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 843e82fd3bf9..6a0b724e46f9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -484,12 +484,14 @@ static int ice_start_vfs(struct ice_pf *pf)
>  			goto teardown;
>  		}
>=20
> -		retval =3D ice_eswitch_attach_vf(pf, vf);
> -		if (retval) {
> -			dev_err(ice_pf_to_dev(pf), "Failed to attach VF
> %d to eswitch, error %d",
> -				vf->vf_id, retval);
> -			ice_vf_vsi_release(vf);
> -			goto teardown;
> +		if (ice_is_eswitch_mode_switchdev(pf)) {
> +			retval =3D ice_eswitch_attach_vf(pf, vf);
> +			if (retval) {
> +				dev_err(ice_pf_to_dev(pf), "Failed to
> attach VF %d to eswitch, error %d",
> +					vf->vf_id, retval);
> +				ice_vf_vsi_release(vf);
> +				goto teardown;
> +			}
>  		}
>=20
>  		set_bit(ICE_VF_STATE_INIT, vf->vf_states); diff --git
> a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index de9e81ccee66..71595410174c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -807,7 +807,8 @@ void ice_reset_all_vfs(struct ice_pf *pf)
>  		ice_vf_rebuild_vsi(vf);
>  		ice_vf_post_vsi_rebuild(vf);
>=20
> -		ice_eswitch_attach_vf(pf, vf);
> +		if (ice_is_eswitch_mode_switchdev(pf))
> +			ice_eswitch_attach_vf(pf, vf);
>=20
>  		mutex_unlock(&vf->cfg_lock);
>  	}
> --
> 2.34.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
