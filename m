Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KnPFbnTomn35wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Feb 2026 12:38:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 272401C2966
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Feb 2026 12:38:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBD4840BC2;
	Sat, 28 Feb 2026 11:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pr3RdrgP1_6J; Sat, 28 Feb 2026 11:38:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EB4A40BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772278708;
	bh=lZ8Q6yIsycbLWoeJhVcdSAWtSF3JTjrLvz1Rvt5p2As=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MuYmJKuvqoEKIGqHC3+z4v2OwiKF4vfddbgGzKMzSWVPGpeJf+IGjz7YkwK6jkqaf
	 s8BaL5n0NaTWIPaut+U/yorRZicV7K05wRfm/6yDRL9MgKEw7HotYAvsbkq1Stn5U+
	 HzzRuLWvzM6wH+CQvDfRXHnwUIsSKBs+c9IuXS2QsYtzmH2fzzJMCcEyjEPNuEm5av
	 ZmNB3sOyEgjW/xoOiLN1121ByhK1UZK0tgI34CtP4ZOesaRIgbWw36HZt4GMT+sRjV
	 py+Pmi49w0XBXHSikLYxDIuCK6wFZUKcsuXkG11PD/805RT45R0pCizOAx1AsL+aa2
	 WmOx+qYQ+m+hA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EB4A40BD6;
	Sat, 28 Feb 2026 11:38:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AE6C18D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Feb 2026 11:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 583DF40BB3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Feb 2026 11:38:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gnrmbI_DfvEX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Feb 2026 11:38:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 723CD40BAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 723CD40BAA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 723CD40BAA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Feb 2026 11:38:24 +0000 (UTC)
X-CSE-ConnectionGUID: WQJQN1TaRoKGFi4wc4rtkw==
X-CSE-MsgGUID: HPxSTpoNRr6ilHkSa5mOpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="90927804"
X-IronPort-AV: E=Sophos;i="6.21,316,1763452800"; d="scan'208";a="90927804"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2026 03:38:24 -0800
X-CSE-ConnectionGUID: /SXkSGr0SEaveYubTMm2jg==
X-CSE-MsgGUID: 3EHsuYNPQDKZj0Z1zotziA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,316,1763452800"; d="scan'208";a="244405357"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2026 03:38:24 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 28 Feb 2026 03:38:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 28 Feb 2026 03:38:23 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 28 Feb 2026 03:38:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XB9mE0v5zypZoQbVwHGyv7IIqvHqC5evJuiURemDTdRS259dtpVC/GPl5XtkwwSjVx5hfXPa7M5meZqbwSU7JXpMaLwaMQoeX4F3J1As0w1mfP9VHZ3mS0IgRpSQ9fs9l1V4rf7ceZdBiSRJ2Umxpv59yywX+zj+nqdSfgkIvm/x5QzinkAWs/na7uo+KTAEFowgVocZZJpN1DYjiIwn6hDjqNU0fMkP4sTbYd6BDOm5Q1jAoiQ/u8pYxU4PyJo3H6c3DeJVQMM3oZEmjQHeuntGH0jo2i3fHZQmZqpzlpk+uaqs4H7BwnQUsdPd+biuj7wnJEA970ZA3XYNx4fPRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZ8Q6yIsycbLWoeJhVcdSAWtSF3JTjrLvz1Rvt5p2As=;
 b=M3eFx7DsVk/MJjlh7Jr4Ya6rlR03fqnDLlBTx7J9NXt6FP1sa6rFiVaXYJIWtvJ5yPKOTUr5KXCf5HCMvuQUEzv6OefzRxAu2432DVekyjPGi89YQDj4kEaEdlNQ85RDuIhXQFfx2fD3vWYmAZg86HaXfBXyIr2SZ+ntQPyedwsUilea05GGPJjZeer7LL+2nQa34oSb4YmTXVuAZgnH1rrQwO7WvdId0sGutIdon00G5PYUV0RC0eTnb2p60PWWi+bJqCsJJeDLZqHsVEjNzdFe/CEw07IkXS8KMijn0K1jxhNcwBaNZP+BPT6YW1B86fzKozhdtieaAmzbOTJc3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.16; Sat, 28 Feb
 2026 11:38:20 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9654.014; Sat, 28 Feb 2026
 11:38:20 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Zilin Guan <zilin@seu.edu.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "jianhao.xu@seu.edu.cn"
 <jianhao.xu@seu.edu.cn>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix memory leak in
 ice_set_ringparam()
Thread-Index: AQHci0+8OzENVPon4k21P+oh1qh+1LWXwn5g
Date: Sat, 28 Feb 2026 11:38:20 +0000
Message-ID: <IA1PR11MB624105E17B9AE5468CC256CF8B70A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260122032644.183754-1-zilin@seu.edu.cn>
In-Reply-To: <20260122032644.183754-1-zilin@seu.edu.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: f4f693c1-fb39-4c2b-21c7-08de76bddfb6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: 4NmzJC/0zqmt2j6axyxV+yeR15eoE5hECm6h2bwFUm7FVPNGE3KNY57GyT1mCMv5UkpRai3/E94u7g3SMKA92Rzk9A9xxchRGgVf/2PR5hU5c2Q1uSARRQ6r17/P3gLQnlpnBt6awjTgDEsw5BRqqe+kpv+w2foElbznhyo63TLZnoxcsJZCn4qZh0PBIb0dpg8gKbRRzf9UtRC/DvubbqWS6zbKkzY/upxR/9EmUiYwYpbk2mWcgI4y9QwQSewrbvltYDr/Bg/EsV57QxRxqaC3w8mQth/0AKxmAKiiMszWFDburC6PkVncSmM4tqWjjARGxql8BTHyrxvxQ0n+s13gU33Hj5MHXaBZFhC3dDBi0cemG9lLAZo64vIRC0Re/i3XOIV4W4QPhe3IsR/uueHLWa51M2i997rGJBCIg7yO6DvNGeq91S4Wb5QNMR0hcG7s2qc0iNVF71WWgonDWbIrGMYERZgFnu07oOBo++rHNVPwcp0ub2IWlaAR8iK3Xqemke+dAwo740kd1u16LvDuVc9wGU3xVhS6FM4gmctaXy830skGUvWBVG96Cjag4bMemBMBru7CfiXeT160wAXnQKTiEKHAICne13GL5K67J2ckYg9y5SU/dERduGY4AlO/JaRHPM/IhHmqikAq/iH5eI4prK1E47Y7qeii/tFhpsyA48yCSNWMDhCcvi4NRzRHv7m3EE2N6D+osLOryFM2VIK+Ftk5uL3fwbpkHbu/qmg+tQXdh+g8Afg2pE6jB8pyDf2inThrkxHEJBwL+zi9SKGHTuiUBH0Vy0itBAk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1/cnj+u1ESJxObU7Ph0coRsYK1JSUqFWOdWn7i9hRtL7cLfliLyCYCNNjokx?=
 =?us-ascii?Q?XzQjhiyhAC71qmRs15IAfZlPyN2gfXWxn2bl0SvkgSL4Air3RcaDQZsSsZy4?=
 =?us-ascii?Q?2TC3y3rBkC7ajW8BeAQqoAPuR9ganLByFiWoHhxc1TtVLBLWUerWeT+PbBaV?=
 =?us-ascii?Q?XU8slZzjvWAX+TsoGcmBfAXasv4n8edsy1qauKCIpzaA2q/GKVjaJHEnf2Lm?=
 =?us-ascii?Q?sZDNFXQztaAEK/3nM7IaER8E4R/B4G9tW9u9KjO7iKDwB9v6W7kSveEto8RI?=
 =?us-ascii?Q?loIvKvCNgT2Drn2diOYMyEX20NONKOtAPVvapS5XdaDadk2I62OQXZgi6pyN?=
 =?us-ascii?Q?QfoGLlcvNzmuBpmvjzdAIsAA8MTKs4ZpUQJhBU0DVQUYIF5pev7lMirI1hYy?=
 =?us-ascii?Q?7vP2MhA9mLoenWLq9dgP8Q16ULdUFIP178w1pd5TPzvcwV+opKbeC0lzZ4OA?=
 =?us-ascii?Q?K0IWZmRR5OLLiLZMXGZiKAFs4l+1gn24dT3sbQiGnQAL4fpVlEdEqp5QvZFY?=
 =?us-ascii?Q?nUcrLXc0/E0TRFKZs+dypqIYA5RkscK22t25iAM7LwnjFqjACwOldAojyKwy?=
 =?us-ascii?Q?9KuaiJjLmpnyDcj0qO4wtjHY8bXPXjb94OkKDYHIfl7serSBVOTRcUbAGWt+?=
 =?us-ascii?Q?pAy3fqTrO6soyRjH3uG+tE9Wfs4+qtOf7imrE+nHRwkGDD4vkzGXikbtD87I?=
 =?us-ascii?Q?3Vlf0It2/2zmeWAafz4/fNr5VU+R+Urz5OvXW3a87zDBcxyydpyQvQD4yXcE?=
 =?us-ascii?Q?sWFx1XwQS/5ymh+EWxz4On0we/MmPlDdnbbS3dHFUqTQZET3HI2MvED+3yeb?=
 =?us-ascii?Q?5thyYsOIappIozu3BXL3wP3j9El0x0ve9X5wnIJgdx2vDMdTZ4Qa5cDyIUAW?=
 =?us-ascii?Q?F4vWJJQa1AuvmXBUFamif2HRNqjz0TC+2Ff58oIXEYOCop3pQRp6aD4IG10P?=
 =?us-ascii?Q?Nn+NIB2SYhcdhNZj43BoNGeK6H8+D0JGBn465Gs81B0yNu3vgmB5ssfx2PEi?=
 =?us-ascii?Q?NxgH4FqXYIkfJdLoTZqNKv0HZrF803NvxP/jSBrKTCH+i10aKrKPwKbRCs/D?=
 =?us-ascii?Q?+ncb/Haxvb0XDt+motCGTsv6Z86E3BUW92FgvLqKq07ZBGVo9T/owffONSsf?=
 =?us-ascii?Q?zZAQHTEvvetGjlax25DU4TH05jg/Ro8BP0jkh8tRgEk91VsJWq6abGaP/YKp?=
 =?us-ascii?Q?R4Vt99cDuAmUHoDfuQrbLbiGSRCo+I+PzYrnZKFmHNJrbNyvw4dzSErDQb7y?=
 =?us-ascii?Q?qmkFWUAhSc80mNZx8U1znBEgz/XsLgw9QT8p48QNzimbVc0vIbpnV/uqGLrp?=
 =?us-ascii?Q?YqVsqCslNQPCrCdBgpUfcOjx2fmRTOk2P3Tzd2d+lH24qlq8LxIOeR9pC3kc?=
 =?us-ascii?Q?xBKYXSjxyzo8dEWV02JPDGRcPTGTMMITmyjNBia+5BUvr50vXP8CEkSzJGgc?=
 =?us-ascii?Q?4Wrhvm/dN0UJSsHZApyvpRyiLgiUqV0BwbMZlPDfXp20HyujMof8Gi9fQGY6?=
 =?us-ascii?Q?CzZlE91BG65/vt+2DFb5IICAqy6sZG1kK2uEMB9oZLiwV/BYRUrAqNJGRtqm?=
 =?us-ascii?Q?G4RQa/Yw5/6jocIWmGqRS2C4Hmvai+9DJlNnr7ICM/c8eflnza6dziaY88p/?=
 =?us-ascii?Q?BYIj1Rfge1wGohL1ik+Hp89+D7QHj1JYg+vbIQ3c9FTkfx/3WSpQM/E8U3uI?=
 =?us-ascii?Q?iCotd8gUetKgfxJ5txWvbuk1htG3XghlfwbkyUMXqBZhaZao?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f693c1-fb39-4c2b-21c7-08de76bddfb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2026 11:38:20.7302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rUstWAhSQ3C2NbGrI56qz5QX8vPLX5DRZ3k7DA8bNzpO9KX/oh8pt9eyGOuWeB2g6pHOUa2kwxGYsIcNorVXgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772278706; x=1803814706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lZ8Q6yIsycbLWoeJhVcdSAWtSF3JTjrLvz1Rvt5p2As=;
 b=UmLXYAU8GNS644gapN/OJTTTAwDYFWFbkczp+e/CpLc18wO5ySHzZIwC
 0XQHRBKXoqADCyau62clTf5f/d0JQ3UgPoRxmxNTnt9+x9x5o8nu9KDCK
 EoYEym5ESSfYaUEWXA4AcI25d+QmqjAYPP7nkVSJKbhB8zftJv235IS5U
 0jYrA6jz9uiDwZjvdZoDZmGIZY5ms5eb6/iQtwxrCGi6f2YfinesbVDEj
 OgZdfx4NXIWxGezY1PoUPJ1TcD4CkrrPI8dhYzjRKGHvHPGrfREeosf3T
 yLKrSyNMj5oJ9V56LASG7zyGhsqe7J++H5gW8AcMum5R3Ipc4b3oE0H6C
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UmLXYAU8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix memory leak in
 ice_set_ringparam()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:zilin@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 272401C2966
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Z=
ilin Guan
> Sent: 22 January 2026 08:57
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lun=
n.ch; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@red=
hat.com; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; ne=
tdev@vger.kernel.org; jianhao.xu@seu.edu.cn; Zilin Guan <zilin@seu.edu.cn>
> Subject: [Intel-wired-lan] [PATCH net] ice: Fix memory leak in ice_set_ri=
ngparam()
>
> In ice_set_ringparam, tx_rings and xdp_rings are allocated before rx_ring=
s. If the allocation of rx_rings fails, the code jumps to the done label le=
aking both tx_rings and xdp_rings. Furthermore, if the setup of an individu=
al Rx ring fails during the loop, the code jumps to the free_tx label which=
 releases tx_rings but leaks xdp_rings.
>
> Fix this by introducing a free_xdp label and updating the error paths to =
ensure both xdp_rings and tx_rings are properly freed if rx_rings allocatio=
n or setup fails.
>
> Compile tested only. Issue found using a prototype static analysis tool a=
nd code review.
>
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> ---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++++++++--
> 1 file changed, 9 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
