Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EE9NWe+AWpqjQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:32:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9818750CCA8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:32:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43732415F6;
	Mon, 11 May 2026 11:32:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mdyGyY_3fl_J; Mon, 11 May 2026 11:32:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FF3A4169C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778499170;
	bh=8R/qDV0odrI16LgOEXX4d8OuACrpktTG4rzO6OUjvmc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vyCfDy0D2X7gRCDTeZBcRBvjFX0TbhAzwE2dPd5TLnR7kKKnEiB0zBC+oRonyuGRk
	 Izlu4lIzZICPmEyDAc6i4du8wSHX0LMq/YyskIrT0XPWsrd14DiHNI5VJXO/LRvTBq
	 AHRBTi+aKQXg544/5vahtIfIYz9nUF3U+vtqIJYwcACs28nKSt5CV4/IKnDmiub10S
	 qkdxLQoqPXVjRNWY61UnStwMjRY/7F3s96c4GCrY1EdWxikCRmEfaeGA/lW3y8PZPX
	 zC0UQWJjHJ35Fr9nQgb2jq9OXY/+RNViaLU/yv22CHkMGEVQVfaQjhpTmYmYAAIvuX
	 jfHsTthQTZ4zA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FF3A4169C;
	Mon, 11 May 2026 11:32:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA05E223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A82A740336
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:32:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YKtZQ6L5ctNC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 11:32:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 98EF24032B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98EF24032B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98EF24032B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:32:47 +0000 (UTC)
X-CSE-ConnectionGUID: pGlVzYIbTKuxES9ib9Kx5Q==
X-CSE-MsgGUID: 3uJuH2VQR5isJc2MAeTK9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="79104003"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="79104003"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 04:32:47 -0700
X-CSE-ConnectionGUID: Ze+iZebxTF+Pyatj/G22Jw==
X-CSE-MsgGUID: WkUfzS5ESZi043ABFWTpqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="237385928"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 04:32:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 04:32:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 04:32:46 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.42) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 04:32:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iECqPNWT29IuizVZr0S1G9ycfzbN28J2xtoZYXgRYLfv68TLLmjtC069Mk9NJZlfSZB0k5s+ULhmfPulmq/ggvtPOj7e+ZLWi1SXjok+6s56LPKsaW6IecqfjeZCekITyuLRVGJ2PYpGW7sk3QXuPKfclgc3r2CXb3EvWQGMXEh9WpBPaAyeLmYE768/mH5FwDtfDylsEdGO1mprgbFYW44ILcqUAgE0dXte3H8cyuD+/u7zW2HOd1eg2Dw+L1nt17M0lgkfAt0BQbcF2mmCVDX1cyiqxFyAGCWoSiYwwkvAMXM9ExGjusIDQULvwWpmAqELZmMX9EFOoooUGdPyLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8R/qDV0odrI16LgOEXX4d8OuACrpktTG4rzO6OUjvmc=;
 b=Qj4dFfG07pCLFeUrDLAYe9Fl2tOSuY47eNwE3fgtpXCBKswLZNhfNznTwjZQvrELpz1DSckHJXcSuw38Oe1D1cwcu8s8QMl+h/CBeAt3whmGJ/CpFnM0Sv8vsneiGk/nK/Y5dvW2XRPa2d0TSA2Uja9T/RzcxTDaQ2jI+pqNpcsA2STcMU8MkdgXj+IsEIUtDyvqR+YlJEd7XmgB7dicHaW/GkP7gcLr4RBQbLgLGhsl3yz3cb4CV4D13lpLeqR66A12cFRVNRvLcJ2bcPSHbkRpy+C5muuFVfyC6qNikFLYZIxnA6nmsi+H7wiPSjc54q0o8PZRXZgtOYOZiQJq7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 11:32:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 11:32:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Avinash Dayanand <avinash.dayanand@intel.com>
Thread-Topic: [PATCH iwl-net 4/5] iavf: fix TC boundary check in
 iavf_handle_tclass
Thread-Index: AQHcyxdqccrCQQhT30evAxjdAuJvZrXgJmYAgCi2nqA=
Date: Mon, 11 May 2026 11:32:40 +0000
Message-ID: <IA3PR11MB898618EF7E25A4ED3F160723E5382@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
 <20260413073035.4082204-5-aleksandr.loktionov@intel.com>
 <20260415134642.GJ772670@horms.kernel.org>
In-Reply-To: <20260415134642.GJ772670@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6492:EE_
x-ms-office365-filtering-correlation-id: 02fb1863-3287-4945-9ba1-08deaf5102f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|11063799002|18002099003|22082099003;
x-microsoft-antispam-message-info: OYKl9Ga8S2NmCcym8MHK/95CuFdCT+nunTZKi6iLdO73nZXczhNRUnPh7xRAyrYCLN4im648Sau5DJrut8gnH9KHaL73ZM1erSYp6hf6siJz6FEbUDxI0DgngE2oeqh4tZARI0L0tDYJjTlW+AC5n8dfA2pZJr5caRkctTz7Iut1aVwyxcLal9w4BxaQ6T0AwXQ3cIdnkuMOsqibVwGgIMMbqwMCNjTuLuVmyJMJKv/m1nTB3rVwm2pARzMX49HnrOCYZ0COFvRPWfF5Kvwq3ttR+Yxq63tmmN8JPQ+RoIKRPInGRsKXz1r9Z5gc+znDdQMRvvd/gFmu7MtceXpMDqjx5UWeJAfKkuKSennHgrwTiVhXJOJt9CfmeDEK20cqbmRhTPGUKQ3yH6icHwL85GidVGn7qCm1Qur859ZTV43DvMWMWjzNs/7Jdrr5gK2YdpuWkGrS+RFDNQd8qPiSW0G5HoTFYIU8S09uCfmFTAwpf/Ypb043yon0aphpfaLoVjd94B28/Nv0PIykjLTYiuusrH2NYU1Q0bsC4crZMwm839moXFR6J7FTpwCmpUf/GBNUmt0ks3SJR26pO4iO1uXHBYaBpHbMzXD11eRDbL8KAPR4aKzB7ynvtqxNmnsIQ2P+CINONuB4xtZ9s1RCn+dn03qIDUW287v/vffaIFiiRE13+zm9UK6NJNGcgXWVPCgrFsB6Sw6t/weGBksCIFM119Xqxb55ucrxLJS8t/H5RZ16M66PT+Uk6bAUEdPl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(11063799002)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i8edUGgVcpNmzv3ourWFsE4QZu2wfrc+GYdzWBKOTl6h1xdz4SZVKzrvmLae?=
 =?us-ascii?Q?BjfHnnJTI1TlMaIfLeBm5+uxcVwuVI6322QeLRrakY1duf11cREPccBf6+FT?=
 =?us-ascii?Q?2RrNEdsCIFBF+5nim3C0wKNM9o1/3s9UsTwzjMS5F0dUFXyc+TQBswdRnkcG?=
 =?us-ascii?Q?d//ZupRj8n/gHNmZjliTj8r93yJGB434VosMxHY4YtRe3Y11XooraE6TbBc+?=
 =?us-ascii?Q?+Cq3LE0UHRsnKry52RRN+1MP01AC1ZetJWP3sgEtqKvwEX/UxNe2k4EOo4lD?=
 =?us-ascii?Q?UMn6Q2F4HpDkStHI7g1B8InUSsSlWCf84QEy5LEXUjVN7J064lTWM9pfp9+S?=
 =?us-ascii?Q?7cleo7NWp/fggvdeu6p2X0uBxah49dlQHyI3Mt8fJ24vRkJDUe0fJXnQuLaN?=
 =?us-ascii?Q?3TqdmaGfVHO2UO21K+bkYoCOrNw/HI8lXcBRxKCxkjoYWZffAgU/0i76wXSm?=
 =?us-ascii?Q?XLI8pDwJHITkKiCI8Bs7p2FFtvlFZATUd/LO9Cms9Rowhf3Oe2S2wGvHs8hP?=
 =?us-ascii?Q?THmgt5y0j9PduqsZLeDdNVha4kW0IdD/6LaGK/TX5AbiU2u5uDGJNiPzXcyv?=
 =?us-ascii?Q?Pv6wInF7224nXksLPm5Mi/RopCqt6tDCAUhGk8Ceeg2w2xnjam9+jkjiGk5D?=
 =?us-ascii?Q?o18TFtE/NFI3wbB6lK2gvMtazmqYyt+cYvudckEyxy7c4eRNthrhP3lNs5rL?=
 =?us-ascii?Q?q7P1MSFvyq9Pw1IYehcXtPAYuNVzZ79kz+R2IIDPG04Ba4pJ+yBSUTaUJqmH?=
 =?us-ascii?Q?9l/zIhQrLpYHQ/7R1bqwgi5Ni1j3KKT8rhVcqoCiP7+MPx+Wcr9awSpPVYla?=
 =?us-ascii?Q?Tx28MAjwGYD1HNyxFVmGzPJCaPY3xRKaSCv8WPo5899ONL2i0NUWa9L46Z7b?=
 =?us-ascii?Q?EehIkdfXauaMuiaXVADCk4gQw774SmUnKndMTS3DlABq4z0OyZbLg/zv4Ddb?=
 =?us-ascii?Q?f2MdS9Bj07C1eSN7JT3ffl/FibGC15fsj1w4TTY0TrMpMnJ/0ZdgwXC4zrOW?=
 =?us-ascii?Q?Sjfsuux3xTuaS6jSwdoVPIaL9DNjdErNUM8uR7YeKV1zYCB/kE0B7oL7hjLl?=
 =?us-ascii?Q?hGMPquSxDeDMYr6Tci80yusV19Ki7V38fJ8g0y5eOPkPQFdC1MGhXlHS82Sd?=
 =?us-ascii?Q?fjDbp90HhGF/02IdT1a1cCOeIMwlTFasT02ca79HpyjZDm4n7d6AsjbIuDuZ?=
 =?us-ascii?Q?mQKOUxYXrlWLjpYuTwMysdKJyKW10ePV1loo8/a+Xm8ukycZrkb9cjR3CAeq?=
 =?us-ascii?Q?N1Y+3P2KGAtypT/2gcVetZI2/jCW6rYKFUb50adX4ck7Sn0aTNG3JlTezKeo?=
 =?us-ascii?Q?7YNeGG0QNa7ReQ4D8jDfUXE6q82VA3ss/pYYxRrcnG/jzDezX9hLcbovI/iZ?=
 =?us-ascii?Q?b9Vb3oKgUV5gm+ZU9CV/EZI/hLOoAuHg9tfgV2H8X0jmJuocmC8osub/nZWn?=
 =?us-ascii?Q?GlUFaUz7wkmJ8x68uMblitIiewn6bqR689u7G39zgdnSALgTR/wtxLmUnDxo?=
 =?us-ascii?Q?nJKlX8A6EeZQwkbrH4XAs1DrG909crFkslSyygbXvcUmArvBXHFsvkE+PPIv?=
 =?us-ascii?Q?ad+h/WEi15HrTLnIOBmMBcQAxV4WYVixEfCVbKHNuxzzsXH3TYDTZO12zd+V?=
 =?us-ascii?Q?bDLVxHIirR4tlqMIfuIMoi4oxun/qKkkFFPo6bFVNYhQVfZ3XL+rv0Z5XjWd?=
 =?us-ascii?Q?34I0uSsaWa6kBM/48K6670EI3IGe1mVMj9ItwK1GObVNQ3IBfk/VXQy6Oe29?=
 =?us-ascii?Q?bFoL5XcMLqlj/zcOElh5NwRj4GWPIRw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LGRacnJWUl1LabcWykH4HhskGeoLvxO/sZ3NP4XIvDAxitZFpRaUW/7hgQO1MwM68us5+nPWuTRazG1IgSjIGbiImPFL0D7YgB4A81P2d+HHifF3y0ekB1nLliBZYGxkRcHragIR3UuSDSbQB9NHmB6W9MPEYunfTY+qY/QVAoaM6ekO3ZlpbHgdik46yQeLONXaW5cC2O0LIxnYxG6bCKyzasFXksgO2/dgPJiBEmq7TxCydyjTKQaGyaoBhlb5jouhKhH2LKWkq1kaC35n1os/G7V0J3ecvrwhrLiSnSWlRQnHNVBe1gNoPJrdyygh+cAyAmcRdh0vrGTA6K+qJQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02fb1863-3287-4945-9ba1-08deaf5102f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 11:32:40.9814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l9kSI6QvIe7BOzOau2PjBx57RyV5YIIIHJWStOzPM/jk2jJmwawe2v6feTqLfOvqfiurdk0EbeSbDki0kx6LISM2P5hcApR6sNiCTPEqWYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778499168; x=1810035168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m/bWhgukR6Vw/OZdqkEgPKHHHzEGt0H/EgtoTTOoKZA=;
 b=PhBxDilocjy241GhxjCkALf55Ns4QuMJAEVwofSnuIOIT+5n59O/Uo1n
 SF2MkW/jKKyAICvOYhylXqZK8+atC+itVADC3IsdfujSNW3I6UksyyYaR
 2qEdTygAGqOajmxZhkWMjCALqGz7ziN1QQoU/LMhRYhZF2ivmH1PWpdrc
 UAYjiGYxgfCQd6/XDa+C/SB/vMVX7AzW9mHNCRfpLveLeMSDiTVG1+s5Y
 5wAmzEGHArdAMvVjxMMyaT4OzyqiQxL4vqjncYgd3QRiSC0PmIUPO8elG
 /xQb9yzryOU58UGAsj/PvdWdjB45vLwF7EH7qB/iRkKLYzKiFD80wcOXv
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PhBxDilo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/5] iavf: fix TC boundary
 check in iavf_handle_tclass
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
X-Rspamd-Queue-Id: 9818750CCA8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:avinash.dayanand@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Wednesday, April 15, 2026 3:47 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Avinash Dayanand
> <avinash.dayanand@intel.com>
> Subject: Re: [PATCH iwl-net 4/5] iavf: fix TC boundary check in
> iavf_handle_tclass
>=20
> On Mon, Apr 13, 2026 at 09:30:34AM +0200, Aleksandr Loktionov wrote:
> > From: Avinash Dayanand <avinash.dayanand@intel.com>
> >
> > The condition `tc < adapter->num_tc` admits any tc value equal to or
> > greater than num_tc, bypassing the destination-port validation and
> > allowing traffic to be steered to a non-existent traffic class.
> Change
> > the comparison to `tc > adapter->num_tc` to correctly reject
> > out-of-range TC values.
> >
> > Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> > Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> I am a bit confused by this logic.
>=20
> With this patch applied:
>=20
> 1) For tc <=3D adapter->num_tc, which I assume is valid TCs (other than
> 0,
>    in which case the function returns earlier), the filter destination
> port
>    is skipped.
>=20
>    But the failure path for that checks logs:
>    "Specify destination port to redirect to traffic class other than
> TC0\n"
>=20
>    This does not seem consistent.
>=20
> 2) For tc > adapter->num_tc, which I assume is invalid TCs,
>    the function will eventually assign fields of filter->f and succeed
>    if filter has a valid destination port.
>=20
>    This doesn't seem to be in keeping with the patch description.
>=20
> 3) The above two points aside, is there an out by 1 condition in
>    the condition tc > adapter->num_tc. It seems to imply
>    that tc =3D=3D adapter->num_tc is a valid tc. But I suspect that
>    is not hte case.
>=20
> In short, I'm wondering if the function should look something like
> this (completely untested):
>=20
> /**
>  * iavf_handle_tclass - Forward to a traffic class on the device
>  * @adapter: board private structure
>  * @tc: traffic class index on the device
>  * @filter: pointer to cloud filter structure  */ static int
> iavf_handle_tclass(struct iavf_adapter *adapter, u32 tc,
> 			      struct iavf_cloud_filter *filter) {
> 		if (tc =3D=3D 0)
> 			return 0;
>=20
> 		if (tc >=3D adapter->num_tc) {
Yes, it looks for me now '>=3D' fits better here.

Thank you

> 			// dev_err(...);
> 			return -EINVAL;
> 		}
>=20
> 		if (!filter->f.data.tcp_spec.dst_port) {
> 			dev_err(&adapter->pdev->dev,
> 				"Specify destination port to redirect to
> traffic class other than TC0\n");
> 			return -EINVAL;
> 		}
>=20
> 		/* redirect to a traffic class on the same device */
> 		filter->f.action =3D VIRTCHNL_ACTION_TC_REDIRECT;
> 		filter->f.action_meta =3D tc;
>=20
> 		return 0;
> }
>=20
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index ab5f5adc..5e4035b 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -4062,7 +4062,7 @@ static int iavf_handle_tclass(struct
> > iavf_adapter *adapter, u32 tc,  {
> >  	if (tc =3D=3D 0)
> >  		return 0;
> > -	if (tc < adapter->num_tc) {
> > +	if (tc > adapter->num_tc) {
> >  		if (!filter->f.data.tcp_spec.dst_port) {
> >  			dev_err(&adapter->pdev->dev,
> >  				"Specify destination port to redirect to
> traffic class other than
> > TC0\n");
> > --
> > 2.52.0
> >
