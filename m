Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEVTG54IF2oo1wcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 17:07:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2725B5E68C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 17:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A45D084189;
	Wed, 27 May 2026 15:07:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2rccSThyd8G; Wed, 27 May 2026 15:07:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CB988416A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779894425;
	bh=u5E2z+yhbK7hyM2dq1efp5YVpX0WWq1/jQ1XWYMWmzE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dUEoxOBEgjx6TqVF9ho+KZRNmHPYqViztoJDKUQQMPuNNlL16LWUF5yVVYHfi3Z8h
	 YJ32+biluac26e6fcDPX/WFlBHnjOLi4HrGo4avZnQYvxJWXwnZ/uCObhK4T16o6zH
	 +E1aevmzaHBpRRkiEUKwYGTFE5rX2vBeI8C9x8TbecR7FhUWXAXQ/PszyoY5TM6eFY
	 wS4TsR72spwEE7Vq9HiEaup1Jxbmwf3BxDdlzONoWTsefwVqKu6X35BCgwz0LSDP54
	 40jD3ERh2vVIa/S97Adr9Ypyd5GDX2SzdAWzDQVeEiYoHOw10H29WYF2ck/wQlPPf1
	 ZRtpKI2jt8rJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CB988416A;
	Wed, 27 May 2026 15:07:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2528921F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 15:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 074A361408
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 15:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IWlK_oxeCfM7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 15:07:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0842561407
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0842561407
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0842561407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 15:07:01 +0000 (UTC)
X-CSE-ConnectionGUID: LYa/dEoLQOSBe66X+j4fxQ==
X-CSE-MsgGUID: 1P+jBgbgR0Ob4Ma4idsGaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80836964"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80836964"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 08:07:00 -0700
X-CSE-ConnectionGUID: HZd15pZ5R0yQ3qAotKbeKg==
X-CSE-MsgGUID: zsGaaqcPRzSXhUqYiBp+9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="246293366"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 08:06:58 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 08:06:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 08:06:58 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 08:06:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a5G7BfxvssZezNma3gh8zv2k4YmeGv4VS+4eznLaVByMFmi2RRKxCJpt3peoGErplgbk9bEwc3I9i3GCaw4Iy8BZdEzo438L1CZeM6xbAvYBY1aMMOXCZyy/PQMwvnuszXPnHa8JFM6q+q2CdtwB6i3c9ijO3HVIecV56E1DRcRjoy2JVr8uHDAnADf5A9B3X03GiMOsOwFQHUhy0VI+em5OFA4gMGy1g5m2AsCgqqYjLzsp6+/ZpnMkCFIMafDengE97PvoBHsdJxnQNddkXoCur9/0F/AQoWUsUi6YrFQu0FCaXInHCSDVBKg0rOGxijp3YzwK9ngS2tynvt8u1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u5E2z+yhbK7hyM2dq1efp5YVpX0WWq1/jQ1XWYMWmzE=;
 b=C4RkJJXjqpVcItChZ+tcKsuamUPPcsR9aCtLw1ny1dhUiKWk4BHDJ3VWuwXJVtiAa0Ru4HLm6K348QgsFaHiP+vf0YwXyMR6CyoEV4dTXzEw8pJOZRCP1/5hIQ47Qt5o4wPcbleXZV0LTOdPizaDl718LGpmgcMh31OPQyaWaS89Q9Y/bjGJMAzREwVEOzOqIKSLC7d1zPh4qXX2Tj1ktGJ/ewXFFGsCEgO+LdBEe0QKc/+TRVR5aluP39vEFbRNzbDK7eU0LbpBejlCSyKYFKENTgM26p5SSKkw/FQSTNKm5WU8yPP8IxGjdvf/wzTzXF+2BBcNol3CK08YxDh1Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DM3PPF8ABC16DA2.namprd11.prod.outlook.com (2603:10b6:f:fc00::f36)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Wed, 27 May
 2026 15:06:54 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.21.0048.016; Wed, 27 May 2026
 15:06:54 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Olech, Milena" <milena.olech@intel.com>, "willemb@google.com"
 <willemb@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] idpf: fix mailbox capability for
 set device clock time
Thread-Index: AQHc3xvEP+hn3pRbOUOVGo6FMVldOrYiFcyQ
Date: Wed, 27 May 2026 15:06:54 +0000
Message-ID: <SJ1PR11MB6297B7EF97D30E9200A8CFB99B082@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260508185123.2422760-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20260508185123.2422760-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DM3PPF8ABC16DA2:EE_
x-ms-office365-filtering-correlation-id: 931805e6-838c-4111-ab76-08debc0196d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7416014|38070700021|921020|6133799003|56012099006|11063799006|18002099003|22082099003;
x-microsoft-antispam-message-info: OCV13GOWqHr21hgSL4KAE7Np+swaVZ8TY1+nCGtbXYDBlfnXgUzaqo26F3rJ7jA/g2p6dHQVzs5wALRFrshyTFlH4o5wpi39rBMOr/ZWnB/8bC9Q/sznY10H2z5n5I6F2N2N68Bh3hs04qFAavvQehPvO7G+gxJDH9dBIcU4Oop5APUIDSY71m63qZTz1LC8LmBslPEUZK7Fv0ptHtwCakWkDwp7Ti3sOu4y1xl6jUo/Jybvw5cJ7/MkQ86o2b63wYLroiKZPMfdlyQXHJdOq6sGuoHWIU6FJkXvH8v7RVZJbK0d0xCPfFJXmDpClOXM3PkH54KEgRvkmMReBTSPxLyrG8kYqseLdsKXc9sxZc+DeHUp46rUoby9C9vh38cYTo12dsp2wXL4qz0hjucbxx7Aml01H1x7UZ3kmhwHyyQxiOhvOiSVJsEJcIAd+AVKUNpV2+JL94a094oxZuTAV19fMph49hIcN1aiTwccWR/M+65jhuDf+oFYsgzAcutHFszr++RDECOuNSyx9Uuz9SP1yDpF8A/gINeAQY2T0Th5UJH+sTHsEdM/3g08fZledw7MWxCVzR2qSiGRJ5pJ58rSF2G8zxGHpos37maVpdwGx0XAIbxsvks+K80Gpg+euth3vOgh1NYQ17SUHms0g1LPXey+KrZ4k2z7xolJmvo3jDM9HsDKuMK8aphhzbPQ9iDborbW0sjQqfkCecHcl/4mwdkeGMw3GFlKOY/o/Ym+sONrt6FtxmM/Uv2zlE8b93BQ34mca2VFlfXBRNe6wA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7416014)(38070700021)(921020)(6133799003)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eZm6wztL9RoWQVRq9Y0RW8smlh5lpvjaIaphC8utH2SY/z3oaJLs2PP5W4R3?=
 =?us-ascii?Q?NSo1wg59LaoL3hl9QNctY5/mBwjIEKuWrKVbsQAuiATcxQYT7QPOdxNPLtan?=
 =?us-ascii?Q?9Wcqr5cQWsOhJhoKwdTtKcwUt6wVLnrB0kal+71znlgKQLtmaUJliwL6V87+?=
 =?us-ascii?Q?JJLwWOOh1pq/cjPyE72chxEPQg91ehgeUwxSoFxBVrfaiZhBTd8q2AjW28sH?=
 =?us-ascii?Q?RWnU6weaFfwbhpVv5lvLzbXlTceV4X5abbQwxrMoZmQOHCKiEX6jLg7Sudun?=
 =?us-ascii?Q?CBYsP3xa5prc7qw3DMXJVQ32Phz4omHjeCXeRfvmIsc5fzF0Nw0oSHAo7OvL?=
 =?us-ascii?Q?ngMWKdD+PHzkJZTcMO4naNuPbwp5POH381ol+NBYr1aWa4cfDJHdlnwxCSpF?=
 =?us-ascii?Q?MHQ0FPhKSpJXCwt8I/4sQ0v4rXVtYuJHDngT3B7G7RQB8ACskMNOG8BKNc72?=
 =?us-ascii?Q?8MP35ZMT2S+w5YDttAUmVtkXg/5cQRpIa2BnXDog2wC2rlYu9hFWIqjOU3IR?=
 =?us-ascii?Q?7Y4im+35tyxTOMJf/QcwMOvyOb30o5ySq8i+PB+t9xU0SnnI4BAt/UWHAGqf?=
 =?us-ascii?Q?SMVa46mHCfHNMbvFEuN0fk7iL1ur4qAi8sal+0qY2pRjkUyzRZV4Qyc8UtL/?=
 =?us-ascii?Q?rJr7T3a/QIIPs44Jkno3LKeSGAzVBzzhtL59jPoZso413KxWOSMcXryFiaoA?=
 =?us-ascii?Q?Ul8a1hrl1luARYZV+NACY2aeKjsG0VlIjOLprJ7EERldx8D6LslBXLUAM5/a?=
 =?us-ascii?Q?6bzoVYJoStu4EfxjkHpzIfDeGchDTC8xejR9LN9NvLInMWu8dgXqbM2p6+zj?=
 =?us-ascii?Q?/NhEpGjgiLaO3VvL2tNGY1NqMOTRM/m6kO7ZtVhuaeFncJhZIu39+w4/8LpJ?=
 =?us-ascii?Q?HhQBLFJX384Cy4MgT884TSZYgE8NHOAi5Ms2yxiSWGpZjINSoX0REDXmJM7y?=
 =?us-ascii?Q?nfHZQwXG4fbdh+fr8TtwhsPtl2AyCWQF3xW6c+ReRT5kHxDZcTo/ddQYplaF?=
 =?us-ascii?Q?K/3/jDl7Yn4+Z1M8/FqpfucmrgixIipJFV9UATRw5Ln08q3wtbCV7JrBFvk8?=
 =?us-ascii?Q?/cLU6A6eGHHjOLUQv5rQDxCeqVLwH11eOdL3ZZpefE606OWE/V8t1m7w/FL8?=
 =?us-ascii?Q?HLvST1EUMPPwfU4XUeba52H1cw/fIUTVeI4VYuyspEaThGLu/FtM24xRvPqy?=
 =?us-ascii?Q?XMSnUyBplzLi5/xDt/t1AuhQdcblrB2CqPIk0Wm70q3ctp0svY8k3he2M4/4?=
 =?us-ascii?Q?68QsnSh0FySu5f16n+Tm7StkSVya370WIAnSieIamPA6WGqiA4JmYxBq8h0y?=
 =?us-ascii?Q?hjDfQvjBMhytURL+LnscVpdMgprlGnBm5TdQruYh3psDD/6IoZEJm8AayU31?=
 =?us-ascii?Q?AoXUmT/UqwRPw7TsEYXKaY/UCu1BhxLft3h4PBcAOI4fERFMsvt2Iz/vUfVy?=
 =?us-ascii?Q?U7Uw4WSElwBsUeRXPjXIVGBjwt0Ao7KvY+jaHSP0luzk2MZSGQp7OPMWdekG?=
 =?us-ascii?Q?lckHrCzgMkxMlVAy9aY9H/ZWpUjnw/8AZlbiSdBi+6+n0kjZAz1/d9Vt2WhF?=
 =?us-ascii?Q?adzG/pAsjf2bkoQgfYcGI5XnbZRLtmW2jy8X03ITfwZ+d89olws+HZxJsez2?=
 =?us-ascii?Q?MEfqd/C46zBro4Lj/8vAaA2c9YUyc3mn6hkvWITTgnBwZqIen2XJGifDmcq+?=
 =?us-ascii?Q?e8+Hv5XFEWfhT0blN84GoyXXUhE2KBMkemAH9J+mAIG1zSH1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: M2I2esrU7O7FR2Sp9ploExB88ocBr4XoUorB7v2MJBqomkByLiEVj1JR/Vd0jr+ZYVbmG0fAJPjsFAX4mjyWft6I6NT5+ZcR7UXp1tZQhCVAMyBgRuEaSzajGS/HTMdPclwZDtUaci83CZpqoszI2xGuJ+oPVtX4v4vcnIkbz+1hW1GGR6MJlfIv/fptf58a+LW+yPm8ELK6hoEHxOW74BRndl794Mg7oSrIlE92LQ/Xi0EkcXeZoKa1y9EWQUXwP8+kkMJ+j8/er8DjRwYQoc/fXUiMFJ/dR+8C/HVuKLhB2PzI13JigBCI2s6tAMYKMqoEaf8MqbZk2uCpVXukdQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 931805e6-838c-4111-ab76-08debc0196d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 15:06:54.4448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4E9odjjKNNAGsiQtxLWMPQ9I/ExQViGbQjpnUjwAPQYOqxmUOXtgg/XkmD97Cxo55OoRa91ByRa2RjHmXVNNJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF8ABC16DA2
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779894422; x=1811430422;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=u5E2z+yhbK7hyM2dq1efp5YVpX0WWq1/jQ1XWYMWmzE=;
 b=d5t349rHVywoDMQ/SEzkg1AGpkrgcsmD/w0PWqK6ggWyiEzt0SjpXSwE
 NZ9bHDDhrrY8Dzou5IVU2WvFDvpUM1j8dLNfMj1u2K2WzVk69CKHESg3s
 ZwMFfJ9Doich+kVdRcHcmEjBb8jDJUxZQGmZ7Oq1VNwRS/7TMQVlAADtX
 CuXJXwd7AM7eZIE1x4n1Z5M/F9FtPGSwp1GB1ETRH8bXf7/vn/m489ykv
 Wd3ACdQr57jfmOAPOJpUA0OnZGGOpkA+o1n/77I99snl1+t1uxboj9TQG
 2I28g27kMTUp9HAONFw947ZZub4WkDIFOv20EwZzfJo4Bsgju7to3WzYP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d5t349rH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mailbox capability for
 set device clock time
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:alok.a.tiwari@oracle.com,m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:milena.olech@intel.com,m:willemb@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:horms@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2725B5E68C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alok Tiwari via Intel-wired-lan
> Sent: Friday, May 8, 2026 11:46 AM
> To: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Olech, Milena <milena.olech@intel.com>;
> willemb@google.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; netdev@vger.kernel.org;
> horms@kernel.org; intel-wired-lan@lists.osuosl.org
> Cc: alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net] idpf: fix mailbox capability for s=
et device
> clock time
>=20
> The current code incorrectly uses
> VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME
> for both direct and mailbox capabilities, causing mailbox-only support to=
 be
> ignored and potentially reporting IDPF_PTP_NONE.
>=20
> Fixes: d5dba8f7206da ("idpf: add PTP clock configuration")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
> I did not hit a runtime failure directly, but this logic is inconsistent =
with the
> capability definitions.
> ---
> 2.50.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
