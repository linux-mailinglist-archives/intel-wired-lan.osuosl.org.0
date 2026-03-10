Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ITQB6zLr2nWcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:43:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1362468A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:43:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE15341EE8;
	Tue, 10 Mar 2026 07:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TlG3k7Mc2LyY; Tue, 10 Mar 2026 07:43:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C28341EF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773128616;
	bh=MH63S799Y5I1oghzV1Wus9oOftmqB+uubIiyVB8YdiE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aLDdBP06JUdY9Vm4VqvH71+vPTpQZGc73OY95+0ILrgqMhIBnN087ch0S+0MVGKzr
	 Uyg8nz3mTTjQg87jhtT5UMuTiJs+VvP4Pj1OXt+U7rL9ZvNXEBSXDbMsd2EPXXiQBi
	 QQcwPbRWiCLWR9cVDGgw1ZBeXv5G5PWcbLlMU3JE8ObL1HXGbbx5abbp4K49khDMDh
	 s7qpW6YGAEO5dbuDQfepl63Xhslef5WZ8zOSis3ZmhRWou6BkmAp/LQfaGEEREfCKg
	 GEzFBSEgIdI8nNibKm8tV9WqOY8IgQuFQ+Bctert7Niu/vXk72o11SuVW9xcfSlYt1
	 X3E7zcbAiy6xA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C28341EF3;
	Tue, 10 Mar 2026 07:43:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B603201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40FD440133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dibhuD85nkL1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 07:43:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BCC6040093
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCC6040093
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCC6040093
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:43:29 +0000 (UTC)
X-CSE-ConnectionGUID: Et+Iff1OQdCnQdZoivL0Fg==
X-CSE-MsgGUID: F4A2PVpjTDKDrCwO0CwwAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="76772978"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="76772978"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:43:29 -0700
X-CSE-ConnectionGUID: iPZb62FXR9m1efbemk+lUg==
X-CSE-MsgGUID: LYHW7gvMRSOEfi3b30RL9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="219151061"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:43:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:43:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 00:43:27 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:43:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EHaTNlHH4y49ouiNxnXHTbXKvd74RE5L/qasowY+lc17p9NvwGYzJXrcqcWdqNq9W8Ce/uFh/WrTjG0ohNxkmfVFJn18TigKs88HQVG5sFKkygEx6Z/ExjslC8hllaFjcBejGxEJr7FJdXJs4kYNBS9ju/mbGhi9j49rQWsJSS12A7usrArOZd3UXU0FTT4m2Y7emeQ2Uvqm9OCyOCnQwtzja9ZPt/CZzoR3JKYct53rh+IMRnpYfqf98zmORv9hgTTEtrUdDV86kdejocMvSGrwfXSDkTMpm47NruLUAgqSFAPU0CxpRyW0nRwOnF4s/3N4CEJnfeZLpvoIoS+cyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MH63S799Y5I1oghzV1Wus9oOftmqB+uubIiyVB8YdiE=;
 b=R3r2qefZ+Qq8v9e7P5/xG4sowKO1oMceENAf2M5x5FpYayEp/eqvvf4c+x0MN1Y2azx+no0l2s4BfMZ9eGeudFVXC2Ot4XWtz/3SOQ4sKFjFkedzwNBr0bmEFTgqrDgH4vKoTG6Vk5HtXz0HXZA+TKEn5jUV1mY9hLpaaw0mVRSZdRAYCXDv4LNEO1GKNqYe3GLzaw582aUu1LjCqhxDbNrWNQdA6JilBpC4ura2c9/JkAL/w0IMFIPClw8sZV/FterjsGaWzXZqH8/XPOusItM68bhKMhFdT2b2b+Pa8uokMatIfu/ooWDHKnjvdAFhAd+thBysmQ9Q3tNBABsePw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB6938.namprd11.prod.outlook.com (2603:10b6:930:5a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 07:43:19 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 07:43:19 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igc: set RX hardware
 timestamps in igc_build_skb()
Thread-Index: AQHcrmBLsgTU2s0kwka3C9hijCWhCbWnZktQ
Date: Tue, 10 Mar 2026 07:43:19 +0000
Message-ID: <IA3PR11MB89862987ED725ABA6AFC2199E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260307182808.155027-1-kohei@enjuk.jp>
 <20260307182808.155027-2-kohei@enjuk.jp>
In-Reply-To: <20260307182808.155027-2-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB6938:EE_
x-ms-office365-filtering-correlation-id: f155c2d4-f8ec-4d83-150c-08de7e78b2d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: Rs80uTGuhjbSnwx82bXDGwvLJV2+Bd5L35YrX5ScnFXeRx3NB3eHM1WYfckQTUEQh9kjXC8x71ILqSDiviSIBNk3hxshhaeNsTjQ9NOJvJqBbXkqRpJL8WAWSWxsloCGscPSsRhqM0INopHpX8/omiOAuijdcCwcuiVnYmsglLJ74pfuUkoGPOmEwVbYfzHbjF943s4ttdF/VAPGNMK4A/HQHaQgDWZnZImVoI8C/vjS7cKpDHPIkwKWwBER1JIGFR6jAvr8+Nkd7J4HFMePiW0BXhCVYIyZSbNpFpL3+E5AHyqTx6/kyBrTf3MJIBY3tQd7bb4teDoUEItj8N0PMyaRslA54tiEezDGM29HM6eiafiCdEy051nJmAaoHaRJbh/vgPVMumUFT8BLYQPV8tn6PWPQWBQuzn0I48Ma1YrUKiVc7tfOsIPXALgI0wIkjvKIrO+DhRdXQfVyWMHOgllXH/QbHg1HjCa5vtyyl4rWx1Ad8rzPJ9le9PtRrz4InLLzKD0Iwmqz/JhA/xMzH+5rpPRHnV78XRGpIo4sAWjCP3UeaONp7ibZjMgJg2zvLgGYkH2PX/GBRytGVpB7v1tcOgBYHMi/1fW8yNmN9h47Fx6961z21VVWsWpu20Vg7XF9GC9ESKQITnVEaloSg+xfjsWW1VUxneX/8Q8doPjJAeHGQWaC3Qsbc90edcP2IdvIQEaQllPcxqTtFwiLIFkhfVac+oMIpX8y8xRhsCJ90KVbEcgcfOlDkCymN7LYrRLWENE2C1FI3iw66Cdd3hNhYJcxL7L/7S85YZoCBuk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nl9kDwPXPbuMh0FvnYSMVhZHBZ1FIWEvpqVccXziHz+tSw9okYUZ2ztOV6Fe?=
 =?us-ascii?Q?aqVoG42roxDOZwjp2cdb5Ln76ht1/6TJmqxKmtE4r5EPamw+4up3t8oe4Oua?=
 =?us-ascii?Q?/VQUPqaEGBJ1lOGCIvJHPnZZSf5/wZ+fxgcCpEaqQhC6j+bribdXGsqqloO8?=
 =?us-ascii?Q?BgQbuPAVuUkFGu/pnhkMCQKSZXx1mwezbGMyL8VvO0cQ+TfJ/3M8jv/FmYh0?=
 =?us-ascii?Q?FA7+WtR3BtcfjkePaIltrLtP9vapRQs8ZZqCX0BOWuNirAsaIcx+sC8m3/DM?=
 =?us-ascii?Q?8FXCVPWAmPRsQzPs6UwXyU/bmHRG5ihdLcFD3A/cPXCMo61Xme5JqHlHyUYI?=
 =?us-ascii?Q?lNQ06nAnbYgHcAA4F2nmvz+Dvxe+JI728C9Pewh/fALa9ZhdlzJkUW+KF2JC?=
 =?us-ascii?Q?zi0J5whohgOGeFQlNsM6fZzouzT0ZELCCgfFgAsH48Tg8BlBHBta4qtJSF8j?=
 =?us-ascii?Q?wmVbHXSnn0n5Y/X1KTCutvU54OxxBrAUG7qIsP6wkaJpXTdt2mzN+1jtlLe5?=
 =?us-ascii?Q?t6Hdudm5SjNFg/oAzhD4FIMlt3bW0+4P2OEppHbtGpyRWLFAIg4RIcQpOYy2?=
 =?us-ascii?Q?VWjrRNtYmhp3zPpv1TWS8IgR/YZltK80qoXvJpGDlDXg00he0C4UZRO1BZkB?=
 =?us-ascii?Q?JtgCKne3vUUGuV56+8Iz83FBjWJk6lyDM9ZOC7HmQR1/HaswQZqEgnBzCuJ2?=
 =?us-ascii?Q?K7IzjyiSt89hED6uQ/xnqd+vr480FGxADLuHF0RY8yeYDv0/FjvesWiPNnCC?=
 =?us-ascii?Q?YtlGGGChV3g+1yqHER9EbNRQpSPfheN5ecDGauTihIf3pw6wf10AK2VwLJl4?=
 =?us-ascii?Q?hsQSqX78G3vpA2lnhfY+BYY8HAM5ZlvwAvtAUQGn6+SWsK6OZ7AHZp5TVvHA?=
 =?us-ascii?Q?dnpDJKEKJCg/IMkf+gdI3etGVArm8gSyvULNXqOQ0TvmbdFlwzsGbAEItXHR?=
 =?us-ascii?Q?HBnJB3z7gQMVhKMGWNPsValoaRYQhZXA7Tgw8zp6GmzUjrXbxHg1z74IL5th?=
 =?us-ascii?Q?qmryCet4C+HZyiE4iZHG03oOyMqcQ+a/URUbu6uSKPYKpBwDiuPy4UAyMe0p?=
 =?us-ascii?Q?1cVfKeAVIdKhtByDJKcRbGOdcZZwFB9LlWdfekSH/u+ZFw9WKkRW8ymm+Z9A?=
 =?us-ascii?Q?KB4xWcbosFuFppR6JfDLo0G3ER/DH6vb6zl5fY6CIWP18xkErGrU9V+eapNK?=
 =?us-ascii?Q?jVorjl0SAamh/Nbc8iuZU780C7NkV4PeHAWS+9ADLkAihK4b5YOF12K51Ovz?=
 =?us-ascii?Q?MsZx0kGO6E5OAmTyTIkBwFQFlWE70HIUaujgHBtSCyzuSEg4JD5gJhKZGk2r?=
 =?us-ascii?Q?10SyEQCzwfEFwB4VGBbm34BC7Xxbxjhk0/hFmpvPODeUONkUg0MlkY18jWw6?=
 =?us-ascii?Q?3s07Zp0sQnF81hQM7XADKdNBnMIXU/kbtEHv0kV64TSbpj2BNwQoLW++6LZw?=
 =?us-ascii?Q?CU2e+D2p8L2WbDAzWJf9dT/m/fu7ASWHMs63ErDXX07fbzbLUjbPTZb7KqSC?=
 =?us-ascii?Q?O2zkXBLE4f0l/0G4NVsOlBQ6rM/OhnJ5o3k0aoDEzI51CWAx7ghnEzag3kyN?=
 =?us-ascii?Q?apOkXFqKtr3QDf9pVYoeNP929gre2+eHMq2fpJRwTV1Afzi55jmxsTTnohzz?=
 =?us-ascii?Q?cAQamuVe1II/6CE3FqgcEmGYvQt0I7yhoaNguzQyPsrVvfJYtJEMUflqscCs?=
 =?us-ascii?Q?lQz0+cyg8zo/tZKRPwugcZGFMrg84kj+cYkF6WKnB1oeHe6pQBWi63HUyn5d?=
 =?us-ascii?Q?WLK8E7LlOqWYBr/HCWxHJ9gHvGRKMFg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wlXiHCOk6Btcf3CfGBHZneQeoICWcwdwVaUDLZIycaegiwJHBUvSN/Vmk8dZRKbnU27KryQt61uLnb8sR3Qi0PLFMuIkckYwDZK+T5lw77VQYCaqVOEvK7fiPX8adkPXH1aTrYko7yH/yOV8UGfbb27nIKaYoX7V+66h3ozZ87NBcGc8uzHODRCPAwTkncOf1g627x+CPQVkDCbTmP2kC0oi5FXqzJxMwgKubT2dgyk+FcKPGhaKzeUvYxI1tYEHG3kXs9uwt6inamftx5vD9gWESAeMfVcgYtRr6sVman+EWKhf1ORRSPLyaTyVwbyPys/tSdKQMSayA8753T1htw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f155c2d4-f8ec-4d83-150c-08de7e78b2d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 07:43:19.4316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ySUs4vcJo5OI/0SmIX1FXvK0VbqQsk9Tom6OVMWx9DQZ4DPB6YDoJaVsY1xKIih3HWBAkIIH/9elb3Gfo9p9mbHCOhoJsfKN5DzxDa3HiEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6938
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773128611; x=1804664611;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L7qz4OJXSTCouUUsV/ict6/02So3ybydez7Gx5xYxaU=;
 b=oAv5+Zik2d+Qglbc2HtoLX1Ce4YEHY6zIO/Ubi+pWEN6Xz/I8aZ/1WQu
 bg1H8BmqqZzErzRpZvk4EMGVt8KV6elSkNM7fSQ93pWAXY0Idb06qLxrG
 f7lOlDiI48NhqxZOGZV9dZzOUrMl9DfU6nTWVT3FKfFijSHqXhKByedLq
 a0dHS5umdo99pYep3C9LC/xTy95nSwNYPMZHV+lRjrDUoX64HOwKDizN9
 JLtbxRxm5PEwdKDc288t+INMibodaNgDok5wd1O2bs3fK7Qa1yV02AW6c
 4P2HzzffhmI+GUK9c8SBU2AB4igEfUfydbTdtZgHY1QkSaXFPHeAZKAZe
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oAv5+Zik
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igc: set RX hardware
 timestamps in igc_build_skb()
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
X-Rspamd-Queue-Id: 2A1362468A0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Saturday, March 7, 2026 7:28 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igc: set RX
> hardware timestamps in igc_build_skb()
>=20
> igc_construct_skb() sets RX hardware timestamps, but igc_build_skb()
> does not. This has not been observable so far since igc currently does
> not enable the build_skb RX path.
>=20
> Set RX hardware timestamps in igc_build_skb() as well so that both skb
> construction paths provide the same behavior.
>=20
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index ebd831a4ff53..3a4c1ebe4faa 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1964,13 +1964,16 @@ static void igc_add_rx_frag(struct igc_ring
> *rx_ring,
>=20
>  static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>  				     struct igc_rx_buffer *rx_buffer,
> -				     struct xdp_buff *xdp)
> +				     struct igc_xdp_buff *ctx)
>  {
> -	unsigned int size =3D xdp->data_end - xdp->data;
> -	unsigned int truesize =3D igc_get_rx_frame_truesize(rx_ring,
> size);
> -	unsigned int metasize =3D xdp->data - xdp->data_meta;
> +	unsigned int size, truesize, metasize;
> +	struct xdp_buff *xdp =3D &ctx->xdp;
>  	struct sk_buff *skb;
>=20
> +	size =3D xdp->data_end - xdp->data;
> +	truesize =3D igc_get_rx_frame_truesize(rx_ring, size);
> +	metasize =3D xdp->data - xdp->data_meta;
> +
>  	/* prefetch first cache line of first page */
>  	net_prefetch(xdp->data_meta);
>=20
> @@ -1979,6 +1982,11 @@ static struct sk_buff *igc_build_skb(struct
> igc_ring *rx_ring,
>  	if (unlikely(!skb))
>  		return NULL;
>=20
> +	if (ctx->rx_ts) {
> +		skb_shinfo(skb)->tx_flags |=3D SKBTX_HW_TSTAMP_NETDEV;
> +		skb_hwtstamps(skb)->netdev_data =3D ctx->rx_ts;
> +	}
> +
>  	/* update pointers within the skb to store the data */
>  	skb_reserve(skb, xdp->data - xdp->data_hard_start);
>  	__skb_put(skb, size);
> @@ -2681,7 +2689,7 @@ static int igc_clean_rx_irq(struct igc_q_vector
> *q_vector, const int budget)
>  		} else if (skb)
>  			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
>  		else if (ring_uses_build_skb(rx_ring))
> -			skb =3D igc_build_skb(rx_ring, rx_buffer,
> &ctx.xdp);
> +			skb =3D igc_build_skb(rx_ring, rx_buffer, &ctx);
>  		else
>  			skb =3D igc_construct_skb(rx_ring, rx_buffer,
> &ctx);
>=20
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
