Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFodBkk93mn6pgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:12:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B23C3FA5AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BCB061CF4;
	Tue, 14 Apr 2026 13:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rb_KfUdTa5nJ; Tue, 14 Apr 2026 13:12:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2C5961CEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776172352;
	bh=X5umgWoOML4XFiNIzapzkPUTf2dtBwYvNGuXuR0iyBg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=orpEclZgDk89ADL8Qa+V8MY1GmcjLfFBL1yJHB3uzLgyb7DMelJr6otXs2DUsJtWu
	 G1QQwC9rIaBARaggGUiscy089bpPhOgc0RWfRCAD8ub93yGzPbtRNmvkVjEYvy9Ysq
	 N+vSvy1/oIzgUPSt1cUmlxojV5YhTEab1VoMUN4gxxf5GNykDFe5ZliDYiwGr/Gw+z
	 Z/M0f9NZZdggSzAK0/xkNbPfT8TqHAJmuN01R33VA0j4WKHCMpQGtx3TGjzVrF6+BR
	 Bj5NgyTgmZENpGOfSFmRrUMkCJGQtq+bnVmtqsg1Wm554TShnA4QebntaVn01xeAoW
	 355n54MHVSG9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2C5961CEC;
	Tue, 14 Apr 2026 13:12:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 47595283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 397F342A1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zj-06ybQUg54 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 13:12:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7787542A1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7787542A1A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7787542A1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:12:30 +0000 (UTC)
X-CSE-ConnectionGUID: KCGeQrhdTf2UECO1dl1Mww==
X-CSE-MsgGUID: 63h7WWhyS3qfRPRgfSc1+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="99773380"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="99773380"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 06:12:29 -0700
X-CSE-ConnectionGUID: BBz7Xc1SSEqUYoCd/uP7qQ==
X-CSE-MsgGUID: j6FnT+4ISrmDtkHBTAHMCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="229066048"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 06:12:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 06:12:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 06:12:28 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.4) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 06:12:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=agjO8F3+96YB+y6M9wuOeZ+ygxhXck4PSOKxWpncAIT8aUoZFd6SaqxYiPKgIFgbZJQm0XiIJnU6dzNVp+JcgL5UM/EwtxHn7wePIC235RWSRARExSrebapOKA3mpyyPRsQhk3vKfapN6rhwaBi3BFPsnXhhyxj0vGXY1ZU9vLCj1uae9+RAqCwCzKvQdXgYZq1Em996ygpmuQy0XCa1a3y+DJb3D+Gy58h/csI2wlOFWoljU5zrkjQVnBTzk0ZZEmuTmxIJcjww+IAqgmbs7glwpZJ6eDjEvcWM4bQJdSY7VUCkASTiWm5WDv72qB+nur/hHCnwKX5AbhykZgEuSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X5umgWoOML4XFiNIzapzkPUTf2dtBwYvNGuXuR0iyBg=;
 b=bFgGMFQDUfx5aXjESp8sGwIYVD7WGMuAByLyx9xB0jo38DqWTdAL7ssc04RO573e2OU33Z4D2glX/u0lxwH04TU6cnFrrn+7BWxMe0aRIg2vLPpSad3cAstJpesFDakQ/FjxjOQ8+GBOX9gqK4wHhYCgdX42xWSSFuuOOhS9NQ0YdeRcCTRwsTxJJbMqtbAMzgIz6eHihQb0FyX7Zx/oc3qiXlaeaDps0BrusZ80JgydFyVQpYWhJOXUwI9Ts5fCdRCN4d6A5PU3hkmXelN/wCIOOKQc8kTElcGQBJDb39eJswOPEsCxz6cAQR3mXrdWMwjww3vkfuFHJz7RBnkbEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by DSWPR11MB9737.namprd11.prod.outlook.com (2603:10b6:8:354::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 13:12:26 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9745.019; Tue, 14 Apr 2026
 13:12:26 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for XDP
 metadata ops support
Thread-Index: AQHct8RIyXFRWT34uk24RFnimOuZX7W2/dMAgCezO3A=
Date: Tue, 14 Apr 2026 13:12:26 +0000
Message-ID: <IA3PR11MB93016387966DB0E96A03AEC08A252@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260319171650.5815-1-kohei@enjuk.jp>
 <20260319171650.5815-2-kohei@enjuk.jp>
 <IA3PR11MB89861AD556C1C4D863DD4F3EE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89861AD556C1C4D863DD4F3EE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|DSWPR11MB9737:EE_
x-ms-office365-filtering-correlation-id: 74aa947c-0590-467b-18f4-08de9a27795d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|38070700021|56012099003|18002099003;
x-microsoft-antispam-message-info: PrM1uQTNXN4EULejEoIJKPtJ5Q3rW4G2OdpJMWfNAHYFerjV3zu94DY11XC10BJSYUdZHLettcVJRg+suK8bGigsfp2b5eh3Ce1Sm7YWx/REjNfPgQ9omZJdSw5FsmvX97NRkFPmThHSpYmQSSM3Bd3c1GnkQ3Ku8bSvtPCwIe7jP6t7U2NqmGX0+w8zsSKWaw5HLjZXkTquQuYnqvBz8yM7gMCdSoAsrYI7JqGESM3WV+jxoa5FmKRPZjbumAApQydqnTuLykPGMpfQbvhhnB4Ck31MpRj4wsZHi1JADgAoY7Q+nONFJlDnJqfyO5HC3DhdXAs6zr8kIiMN4eGFgPdFfRJI6yaqvsZ6OWruHXCJAzJrkdoPSWIxdsRy7y6s2CvZyOt4D3qbFCNsKGvVOEIqEEbcF1rK63M0de2c8FqOnbK9hnQiIzQxIuPQtcxEKRoTrDFlm4If89bnj26ung6D5GVZmuddKozN9amxVf1OfLfCd07OVx1CjN4pPVfxsnt7DF3pz9bVvZelYK993BQ9oguYQOniyWdV2dNv1EpD1FFo84/SIICm7IxYUSVQ0xdyggAHRMaoHB1TQ4IASEqg1VaostgFJjxlLKU6lmNWXVHlwI1FmljsyjDpsEXn+y0uHknwgxp9zlRtzTEa7jyBAFzlFcY0FXaM3HDR6fsIYtk78ahlCG0wXZ9idL+UAEYuKCxW6rKApMjnr5BpnwdLmwAVAtwjdKlVmg1lwoFb9rea4Gc3UNmSQzI1nrBIy/0Opw8a8wExKePWM0nVOSn8FX1RUC7ygSB4UE33lRY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(38070700021)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?TYbCI2mNoJrj4azymFtmn/EyQwk5Yo+P1/6kR1W2J58IKiVLVtJF1lnXAZ?=
 =?iso-8859-1?Q?m1ueSHM+CdjGmNsIMSlLrVLd/euB6McG4nIaru+5yFzfaOlg3H1KHrzQID?=
 =?iso-8859-1?Q?FOpSt2k2tzN+fb28YikEHwwABLlVks9hWls0VEbMsO8bTlE9QY2qwWrweI?=
 =?iso-8859-1?Q?01T43UjLpT+62U3gvW98tDmB9xjluAejHMQCf1omVPKclWztJkz7RybMYw?=
 =?iso-8859-1?Q?VwU3m3irhXFWfFzrYJMlAiMk7/4ROy+QkfqtE+HO8ZeY7XRsBpePQTaGvs?=
 =?iso-8859-1?Q?1WD3rLrohJx/1RJ9elTaIE45q0f3zpPuZ+kHVUe56Ehw5FZLw8OUgOnVgv?=
 =?iso-8859-1?Q?g32xb/ZJAXWKoU9fu0b2WAW43J5tA2bIQb8BNX36rEkEhCNmeLsrpcVdti?=
 =?iso-8859-1?Q?xFJevncGLS74HCbrXFxRjR9CP/2VNGUowLozk79y5219/Sv50LxF+4WNRe?=
 =?iso-8859-1?Q?Ta4SC2qSmJmw7P9V6Yh4id4otFL5lYx8j6CFuN8GaB8CRsnMnyRmChztMc?=
 =?iso-8859-1?Q?NE22oEaaf++oYavxxvNAB+5eF+l0CUgDWcgCiT3dV9Mg0XfI0IXmlttGZC?=
 =?iso-8859-1?Q?JV90LUrTi2zJhFIKPjUcH7NoSD61Ee6ZIGPpYEIwelb/T8MSX40YPsJFlN?=
 =?iso-8859-1?Q?LQfZgV0idKFobzX/JQNGDcLfbSHoWYuOOMwPITcD/+iQhGjUUHlOkvYVeM?=
 =?iso-8859-1?Q?efu6q7viU20FjuXjbtbKAwZY4qgSTt2s+nJXE+h3IqR/tfergs8Du7itJI?=
 =?iso-8859-1?Q?56aExhgSrZZbOu2N9faHXuoDo3KsYbTMavwmptsW7YvOQqlIQHBxTbJBL7?=
 =?iso-8859-1?Q?j/ygwEtH3IVpZMDb2ePzeqqtcByi4KPWDRlqyinU2aNErCKFNwWcvvEIpP?=
 =?iso-8859-1?Q?Kj/3W8X9MKtk9mY5jetV898Wkc3SDxjGCxH7PFygFtQZYYo3ZLo5I4pR+N?=
 =?iso-8859-1?Q?UM7lw2lQKa0MKSFU7p+RnIK58yilreCfrbk8/uxngWQ+lSteYh2yOi6QSb?=
 =?iso-8859-1?Q?9QYeIHNoEVJmO3hYfwmzQQi2u8DihyL1lx9s0lOOtFUXMSA6qtGp3VBg44?=
 =?iso-8859-1?Q?1C8EJlKQVu6K5G0Hd4Za06FFaJzRoQuQFg6F1//Xu7jfPngLLIhiKLZBQh?=
 =?iso-8859-1?Q?0Gg2AmMZNM2ZlYcZAtdHJQg91OUC/XEPKOTd09wryUl0IMRYQujPgYzuQ3?=
 =?iso-8859-1?Q?HZUE7i2oatPSD4mDcOkN/tgZ5AuDVZXSIi733nShClDERe53Aw8Pl6qVs4?=
 =?iso-8859-1?Q?A6kVC8IvQ0OpFmUsEbLHXhCDKSMhl8Jl/sLbCnKSZ1jiBTviOBl0OZnyhs?=
 =?iso-8859-1?Q?ankRGGm4qgnbEfPAs1pjldG86HgjwvIWmc8JpxcVNpOVMKD6+Sp/leQkWg?=
 =?iso-8859-1?Q?Gw1KKba6voKGA8b9XqidBkPj7Yw/xxOmUSS8oxUD1iV9lhbFWGScKGW+WS?=
 =?iso-8859-1?Q?GuD+39zzW2JGdzvWXQGxthdPcsdK9ZK9AllXevJx/OdG+fU3cbr4PNhpc4?=
 =?iso-8859-1?Q?2YjmlQX579fEYMMCtow+hTRfQQK7Z7BgzOqCDJadGOmQiQRxnMkpNj5Q5O?=
 =?iso-8859-1?Q?n/I238d41YhUEeIdzozudX60IhIlUSgoLo4KmHNbkb0oHCa7HveuQQcF/H?=
 =?iso-8859-1?Q?YYLo+zrFTQcMJjEyVZMZLPraSXp0krBDtH01ILKcWZ+TzTmfACDj89srT5?=
 =?iso-8859-1?Q?vbB/Tf5NakBmnWLH0W3z6lEql2zmPiwEdUz5mslbTWLzN9t69jbFOyUsNM?=
 =?iso-8859-1?Q?DV3UtY4pWfcooWz1YqG2E4NHH2kwvmqvC6wtWpGq+KxxSQoTrBRV75c36V?=
 =?iso-8859-1?Q?uPeiaxrApA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dpiW42fJsz8FWMaEUisBJ9F0X2oZ0ds7s4Ufj1/xBAw5lqiXoDIZHYsErqfsFHZJBM0Uf57wwK0dTSwZ3qt31zjQqQJKpE0GYGHORwYZs1xjCRDQNU06tbTykbtjyDxeoMamLmhjLjuYltkdd58KDfWIsmP0moaXiQvZxZEmZYns7vkh7VrusDeByIaqaDB6Fe4/2TJbdzT9EkZlLsLfxvXF42FD5eO0UNYH3Cij/l7y6uPh1rNFjqFkt30n3D2prF1rNAx7RCovUysb6orXmz+gQZqKLeKcOflfQxmpFirtpsqljEbKj5/ojuUIe/XtZs15DR2WR1XnLjDfqjnikw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74aa947c-0590-467b-18f4-08de9a27795d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 13:12:26.2500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ikv6o9T2vozOkVloryVw3/ay41K2Xj+aCWuRr7NTyE7r581zFwsK/ZfJ9K7Hupx6h2h93yP6TkAzvLXbP5f71w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9737
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776172350; x=1807708350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2ZNu894Ygz4EPo9pzJ7zIjLoF2a6Z7tLDszc86f1tn8=;
 b=R7UvbyJaAHTs/LSaPOa52z2uOSRLIPnOR5FOYc22QG2dA5apQ+jrL460
 GkjN0HHDh2OnGSE65XDpc6NgrbSwyuegeS2CjxKhARv+Onm9qXa5lmaT0
 8v8SWzCODidQE62ET3e9cigstl9R7NPcciJRT8HCmfUiVACRzLa/Da0Fc
 ZsXzOZnH8XKwwZzrzOGOWBixaDpOxtj4P6qXA3e9IJoOVYiLUMWvJ/uN6
 KWzVG0YNnUqRiG60bN0tF7Py6t7z8EYjHtN+pteFT7ffaqU1HQrNp6ftL
 odgY7lmiWeg6LG1D9OHBwHxS3uqlh+ZbDPxgtZxQKqa8YXxYGGe5oGerk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R7UvbyJa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for XDP
 metadata ops support
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 2B23C3FA5AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Friday, March 20, 2026 7:57 AM
> To: Kohei Enju <kohei@enjuk.jp>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; kohei.enju@gmail.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for =
XDP
> metadata ops support
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Kohei Enju
> > Sent: Thursday, March 19, 2026 6:17 PM
> > To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo
> > Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> > <kohei@enjuk.jp>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] i40e: prepare for
> > XDP metadata ops support
> >
> > Prepare 'struct i40e_xdp_buff' that contains an xdp_buff and a pointer
> > to i40e_rx_desc in order to pass the RX descriptor to the XDP kfuncs.
> > Also in ZC path, use XSK_CHECK_PRIV_TYPE() to ensure i40e_xdp_buff
> > doesn't exceed the offset of cb in xdp_buff_xsk.
> >
> > No functional changes.
> >
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c |  2 +-
> > drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 ++++-
> > drivers/net/ethernet/intel/i40e/i40e_txrx.h |  7 ++++++-
> > drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 12 ++++++++++++
> >  4 files changed, 23 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 31a42ee18aa0..7966d9cb8009 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -3619,7 +3619,7 @@ static int i40e_configure_rx_ring(struct
> > i40e_ring *ring)
> >  	}
> >
> >  skip:
> > -	xdp_init_buff(&ring->xdp, xdp_frame_sz, &ring->xdp_rxq);
> > +	xdp_init_buff(&ring->xdp_ctx.xdp, xdp_frame_sz, &ring-
> > >xdp_rxq);
> >
> >  	rx_ctx.dbuff =3D DIV_ROUND_UP(ring->rx_buf_len,
> >  				    BIT_ULL(I40E_RXQ_CTX_DBUFF_SHIFT));
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index 4ffdb007c41a..cfaf724ee7ff 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -2438,10 +2438,11 @@ static int i40e_clean_rx_irq(struct i40e_ring
> > *rx_ring, int budget,
> >  			     unsigned int *rx_cleaned)
> >  {
> >  	unsigned int total_rx_bytes =3D 0, total_rx_packets =3D 0;
>=20
> ...
>=20
> >  		xdp_res =3D i40e_run_xdp_zc(rx_ring, first, xdp_prog);
> >  		i40e_handle_xdp_result_zc(rx_ring, first, rx_desc,
> &rx_packets,
> >  					  &rx_bytes, xdp_res, &failure);
> > --
> > 2.51.0
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


Tested-by: Patryk Holda <patryk.holda@intel.com>=A0


