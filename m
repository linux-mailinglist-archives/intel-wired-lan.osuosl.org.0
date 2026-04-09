Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFCDJl1712mXOggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:11:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D64D33C901E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8FBA6071C;
	Thu,  9 Apr 2026 10:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fh7U1I26eTYv; Thu,  9 Apr 2026 10:11:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E1A760739
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775729498;
	bh=RJ+vbofgnNUper1jmrI4uOQ53HrX3P1x3WEtH8w7OlY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jfuou4wxZl+56O9iy+PTew0Okqf8btHovNx3J3NcA/aohoTHeltVdha86/CZcHVai
	 HIzETmZXPEcDVJL+/On25n5Nx7Gr+7Mma9nR/zks2B3zYek996E0TW+93/Ltbbk0Db
	 gp7aBWpA7I9I8HsUyecbcWXAdxQPuDHgwv0KZq0cJW7EXVw70v3LXAS4B8Ya/9u5qV
	 As/Vv7NrkO0zU48x4dy6erS07eq0L4qBSsySdlSprVaMtic47qV3U7NUdNVlWFOTJa
	 W++h/mCw9hCWQXrWtXpi6BT/Edm0L7mbmgA73d+tab3pzgFdyJekaNQXCyqAMcxNYq
	 1z8vJEGzYpoug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E1A760739;
	Thu,  9 Apr 2026 10:11:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22E78237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 082AE6071B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:11:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hUhWAXdRJuB7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 10:11:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 72667606E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72667606E3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72667606E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:11:34 +0000 (UTC)
X-CSE-ConnectionGUID: S0otM6YSQMu62TB8gkP0Gg==
X-CSE-MsgGUID: 1lWeYicdTLGchgeR+mtfYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="80591036"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="80591036"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:11:33 -0700
X-CSE-ConnectionGUID: sR87eMPLTh2RG27gRfdfrw==
X-CSE-MsgGUID: f6yilnzrTnu2ip7QhQu7Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="223979954"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:11:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:11:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:11:32 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:11:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TQNSK+vzfRluqSuz7cmYQIsERN9yqkLkgb2vYYJvmzXGkKPCk94Amx5kzulhG9+9AI5199dEcYGjJj28aZ7To8v7cNuXQWJU0wkf5Xv7P90cP8mWqeYI9u2kBVmyZKpQux915xrlz3nydKGXgaLk6/ogflHB85Dya1Lk27S+hyZKHUnPlvENeknDYdAZkMuZQuKPwKEBB6TzVeJvQk8cw09ld0CELKaYUVvcgCPG4gHj7DItK+1wFUFiW+SJPFgOxOSdluDBRYBwnzjxOC5wWQV/61TUW1i9NT0JTMXYj3DjN8MIeucD1xl5kR9TnqH/Eou1Y/64qhXfEXEpXllXlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJ+vbofgnNUper1jmrI4uOQ53HrX3P1x3WEtH8w7OlY=;
 b=J7mGXfUDYE8U4v/TxfJPmIwt/EcEFD1bY05FVoKLhXQnLgOi42kBlUXleZYG2ovIxEsTl4Q95A2vcrGdFE3nAYbSzOrHTeTwXTa9sikmVMt8pMXXQHAci1ROWNgonwOYfb+X9Nkq7gZ7pZ8jWe5NBveVa3d1SriuCBGyMLLRUX6Yf4AQg2PaWwB0/1P9p0SihTY9cCyeYs7OIfHX0SHbqQr6KCyExZTNhgKvsrbD3nVmk87XXVAeVAVz+R+L3C8ZFi6tPF9z6l9ICQdjJNeyf5ydsthI+NMVFk0K/kOrK7tRTU5VqNJLHk7MeWS7RzZb+fAwYRsgXpeTMuxx6H9gKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DM4PR11MB7184.namprd11.prod.outlook.com (2603:10b6:8:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Thu, 9 Apr
 2026 10:11:25 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 10:11:24 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: wait for PF
 confirmation before removing VLAN filters
Thread-Index: AQHctTGqizjli7geXECy7j1oWU5U67XWp/tg
Date: Thu, 9 Apr 2026 10:11:24 +0000
Message-ID: <IA3PR11MB8985350D9E991B05E6F70D818F582@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260316104209.1285962-1-poros@redhat.com>
 <20260316104209.1285962-4-poros@redhat.com>
In-Reply-To: <20260316104209.1285962-4-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DM4PR11MB7184:EE_
x-ms-office365-filtering-correlation-id: 3d500081-284e-4df5-611e-08de96205b18
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: MMN32PTQGT58EST6u0KrcVcrJ2g0HlhsvXZ8KAPdpD+ftboQhbwhiPACwFSBPDv/HNnwLSIrKYPIg73+HnUzMz97ZpNXQrs43bZgClY5HWYsIXGLw9Pm9/2vQNgDty83BYrW2Qf0IWBfa8tghV1E/ZWDP4tl9hRJ1z0En7llQKZoT2yfnMEI6x7GP8zqdwaDhTU/1Y4S8F10FsFaRnqO9RReBIdwu2jDIz/iJKgr+zl312XeyHprLCk9R+Ayf4PjbV3f4dLTdjt7qUc0WWKG9MeEtXm9zYd0iq2AODKEsgwbyafyA0V64Gnpk0mxDS9cJHYOowOcKRY4GK/4ptbTi/h6NyoBfPAepm1Cp8+ovLZxghnZ6gxiNZZJ2JkB8i7TZAyI86E1ZuAGo/TGUxbs+ccyUzoGDPoxfVnzdd0yG2SqcAa/r76Q3fY98eAr6RUpVLlf+twZSk2SIkuFLMq/oSt1IbflwEp9iRWdRUXUW74XFMeSZNur9j+XxE/fVdzbh+nzBNc6pzZU5j23+ekxArH1qFqn3rX4VdYYaLRqjBJB1GX2qkzIlPXM2p2I8Xg27I7xhz3eQrbEGLpW/s6FQWIdsJOUgEXKTJV8C+b+lncxIDGxx9VVLeQOheDt7IXKSpds4q+PCioFhPoXH58SNKF+j5v8wligYtmaFojUZ/aNVoRjY4uwQiRhnnvTqX0ZdYy7Mvea1GVlRYPz/RogDxTi695leyc7jjdKXiXJ3TIwJY0KkIKhFtkQp2TDIb13BLwZTvIzb/L3nPp4XImgFW54czqO1qFGRuVrNMsierE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IB1amR7aDM4lHA/Ko57c5uFhjt48exnOFtSk6kGy9krKR2IsS85BcI4yFBqW?=
 =?us-ascii?Q?HEkS8FtUWdjHmzTx+vS3FSoC0ZtQZcT7ebIqKvmpY0UFXN0zelC6Xtrmb0sw?=
 =?us-ascii?Q?7OE1P++iYRDClHdwv9T7Il3UoS+3AycQJYHE+d8PufKviuvPZHYAQP5nDION?=
 =?us-ascii?Q?F37VPvIBNGQZItYT21NhZNpMB+GaB/1K7Ql6huYoVFF2j4m4H2XyjbK+UE6G?=
 =?us-ascii?Q?Q96E9olk0IVG4ZPNsbwo32E+jAgHaXtdMetdTBLRnJCRZoYLpBKzv0Dpvp15?=
 =?us-ascii?Q?Z2spcvUStI73rs9qk9iFd4K1XFU1qWrlOcw1OkuC0D50V9b0F6XNURZWO+51?=
 =?us-ascii?Q?PXjZxTUyo4ykTjEm8jTcOjdoxKLbvlQfYLOXUkO/ehPT8ivWkL9d5z39Gb5a?=
 =?us-ascii?Q?3SfsodrmNlrkAhFdzKBfu6RRNLwz/o0TcnEfYfrKovDXRCRpLnX4eJgIprwb?=
 =?us-ascii?Q?Eur7+xy465xOfmtwAJwALX+3fweOxt4Uxh+7JFrqCyTCoRGRSaxupz+C5q88?=
 =?us-ascii?Q?LDwnKEi2yv2nz0kipKUnCZG3d42CToSnK5HD40Wjxkxijs+3zp7eAvSDI5QT?=
 =?us-ascii?Q?+++K6UWzLN3cW3D9kz7zP/oznRV0wdGBVmEJMdoJAgl43NfLBETRCaO7gnRJ?=
 =?us-ascii?Q?vMCIJvoDQhT9SWEa3hNxdp4Pxumq8fR+En7O7vIFmQcePlS6BXzGc1dMjPbP?=
 =?us-ascii?Q?l1wX5aISgLpCiHr5WKYbwRvwhE4eUf+2eisujEUsBCVb/7KZJnEXTAMC3qcT?=
 =?us-ascii?Q?PCHgAvpsr/Ff/sp41W+L9atP5+zbkZioNJQEoqly4JWvavmovrPwtVN/IKL2?=
 =?us-ascii?Q?S3qewmAw+9VVW2nzM2cm6vizl5kk1kPhfvCTUY91hNRtqwPtmAAKYm9qBx2M?=
 =?us-ascii?Q?J9/l0m43QbPuxHATDElHAr6Tr4QNPKQB1+7RLyuT0lLqnf2/aFjrveMELr42?=
 =?us-ascii?Q?vBMzFBVoVpfNORiG9O3xfhaYDhotehq+QQb+SA6JOKpHvtimrxAFP5MBI/2k?=
 =?us-ascii?Q?vHT1oC5hgoz5SuW59XWt+TMmBrxE1AbsfmDOXAyXFU1Q6I+93m2OVYj98ak9?=
 =?us-ascii?Q?fRR3fTALyD4UzztAqT3e0kUjUryiu55b4kfwZj78cgsqo03rOrBWodUy+zm9?=
 =?us-ascii?Q?WP3FtJ75GPJyp+G4aW0zNnjU1p+REvZdrnKmu+pH1/IXdVqTL8zkjJAxDyWK?=
 =?us-ascii?Q?lZEvSW8k5JbJo36dqCyZ9vBWoy5tbfYWjxgZHLEqdHGdRZoB4RZU574+Vv4u?=
 =?us-ascii?Q?Bv2NJwMGio1qfSRRGr3pgNGy0GkrXjVXh/MqeUrYkIOfmzWjtiLwn2JN0ee0?=
 =?us-ascii?Q?6K6hsiQj4suLfQxa8x0pHhSp9jAZ4cNssF9aH8ngDw5rnw3BT8NG7xBIAgii?=
 =?us-ascii?Q?xNJdB6oCHls1iRjdNgc+/JEdcE0IG3D2jCnwvxEi3j356IEJHn7MUcv5kjvI?=
 =?us-ascii?Q?mFf/6+WHNX61uvbeDbACZNCcu+29OK1jE0EVINqzRrQ+BS9sHM9bATJpVsHl?=
 =?us-ascii?Q?UQ4BoAbEsMfFWPkn0NwIC/MvQWXOZdi6Bpo1Qtoc0fz9D/xXo2rLqEDUsx21?=
 =?us-ascii?Q?aAsvyL5zTtzTcMTtxQTDopWkR7KUnnYIK4nkSbgixx5M4Lsd86uTiOrl/V19?=
 =?us-ascii?Q?HvF4sbxukydXRJSx/nC8y8m36X6m6V/rNfAnKBZkZwo7w+tZTOxGnK0BJbgK?=
 =?us-ascii?Q?1SEmIb86vfdmo+hRirr8GeAJcX+tnyGcaZjibhUEqYCNLw1xWg7x1yrQT4tf?=
 =?us-ascii?Q?E6X3wvTzPQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PIb13FBvk8N9HPNdOA8sLwT6LbIXFKFre9bLRR3H3IGJvxOXstR1GdL5eGug28C0d5dYh2OCxa8ppmzbtK/TKuBNa8tr6ckFfohuar6MyUyI69rxCtaWTiqZZqr7HCqbJO+RGoGaUvBEjJjzm5ugbo7pHtaOnlBSxg/RG1s2W+BKHV954vx1mdAgMwoY08inew7c4zVbG1Rxeyc7768nilMQQLj59YaXMwh5v+jI1TpgloLRXu0HI12Q21fJOAmVcSXaV9wIdeipQ15Foi4MEZjZEHnU5Ks6PggprvkvAOQLNLk9++FNTX2ZXUxUlQT6DsAuExyBceCFz45YdOQh4w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d500081-284e-4df5-611e-08de96205b18
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 10:11:24.4266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R0tAUGyRNckoHmP+uQXn7cMHb+YdEOn16wNl2VenZkQd7JELuTOl6lHc2vfcVma+TTFBuVKwYZ1ZQNahIg4Le32NlTtl4r9e6h3IYrASehs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729495; x=1807265495;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7BaHMBNNbiqmb8b6t0zzGIssphnBgMazWmQLYOx63EM=;
 b=CF97TCyf7HubNE70RZLx4uYx0QnAm6i7Wo28NCXgC3kXjsvtSVcH79Cs
 eT+6w581Cl9GRieY61NWlR5H/KVzXdkL0VFXRBASsuB+hFLRNjw4R+kCr
 sm5CwiyKsUl5ycEUApEW5XWErEnxYTxs2fd5TqW9EYLN/AJ/k4v59xy1r
 qfHI+igbz1oNcvRbthBB4M1KNqnTBLsZ5iMV+yLGDiNQatfGCT7lrXJbg
 WMYF7gaTs7doZ5Kk2C3wp38DXmcX1lCgFIWcYdXMrPtudE9VZUOLmTHYA
 Q/MRk3d4pnFsO/TJZquiikyrivaOwVI4PQ3Zb0LPVnSQ7Zp0YXc4yWCya
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CF97TCyf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: wait for PF
 confirmation before removing VLAN filters
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,IA3PR11MB8985.namprd11.prod.outlook.com:mid,intel.com:email,lunn.ch:email,davemloft.net:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: D64D33C901E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr
> Oros
> Sent: Monday, March 16, 2026 11:42 AM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> intel-wired-lan@lists.osuosl.org; Keller, Jacob E <jacob.e.keller@intel.c=
om>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David =
S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: wait for PF confirm=
ation
> before removing VLAN filters
>=20
> The VLAN filter DELETE path was asymmetric with the ADD path: ADD waits f=
or
> PF confirmation (ADD -> ADDING -> ACTIVE), but DELETE immediately frees t=
he
> filter struct after sending the DEL message without waiting for the PF re=
sponse.
>=20
> This is problematic because:
>  - If the PF rejects the DEL, the filter remains in HW but the driver
>    has already freed the tracking structure, losing sync.
>  - Race conditions between DEL pending and other operations
>    (add, reset) cannot be properly resolved if the filter struct
>    is already gone.
>=20
> Add IAVF_VLAN_REMOVING state to make the DELETE path symmetric:
>=20
>   REMOVE -> REMOVING (send DEL) -> PF confirms -> kfree
>                                 -> PF rejects  -> ACTIVE
>=20
> In iavf_del_vlans(), transition filters from REMOVE to REMOVING instead o=
f
> immediately freeing them. The new DEL completion handler in
> iavf_virtchnl_completion() frees filters on success or reverts them to AC=
TIVE on
> error.
>=20
> Update iavf_add_vlan() to handle the REMOVING state: if a DEL is pending =
and
> the user re-adds the same VLAN, queue it for ADD so it gets re-programmed=
 after
> the PF processes the DEL.
>=20
> The !VLAN_FILTERING_ALLOWED early-exit path still frees filters directly =
since no
> PF message is sent in that case.
>=20
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  9 +++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 37 +++++++++++++------
>  3 files changed, 32 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 1ad00690622c8e..f9ad814d18b1da 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -161,6 +161,7 @@ enum iavf_vlan_state_t {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

