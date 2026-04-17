Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIlWJJuO4mkc7QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 21:48:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA68B41E60A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 21:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C84281EA4;
	Fri, 17 Apr 2026 19:48:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4lD12_Azh9cF; Fri, 17 Apr 2026 19:48:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E6FC81E9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776455320;
	bh=PYAXDmhnuMMPh9MLGezbtM/m4IDzOUyswtux6dIevOA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YZ4M7a1nnf225JD9BUpKUDeg0M90BFDkVcG+/gmg4AaN1TlKMk7S8vME8Y0zC68rb
	 iv25QZ7m0tveefjLNWeTRgt972aEQg2lhJw4G4hqI8OLpRuKmye1jC824F79VOtcjj
	 tBxvHeZ0k+oDj2+nFtbGwGPWP0pGahprovcVT5pNrVcFPVAHenLEiyFUIvCcZahyg9
	 K21O+zdBBIFIGFNU66jFEfCQPWIH3O49RT6YY3wsSTJQ2Sn0XmySquNrN95TVU0j0R
	 aOwQk/M5fW1Jk75m7EZNeNeBwCrbw7n6C2LhqspfHTAOdP4uCU+aoykmFE2B8Cf/qn
	 pyO+jMVJzODhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E6FC81E9D;
	Fri, 17 Apr 2026 19:48:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D5AF396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 19:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EEF940F36
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 19:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id stEJGGw4j6iq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 19:48:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7D89340D0A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D89340D0A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D89340D0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 19:48:37 +0000 (UTC)
X-CSE-ConnectionGUID: eCn/vcIBQjyDpNO9d0LRRQ==
X-CSE-MsgGUID: m8P87cdiQuylzTPLK0TL6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="88174355"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="88174355"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 12:48:36 -0700
X-CSE-ConnectionGUID: i+C6+uOmTSeTTXnoCwL6ng==
X-CSE-MsgGUID: ctTscXdkSweKaRK9oF8vug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="226438417"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 12:48:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 12:48:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 12:48:35 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 12:48:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H101lcd+nuQTEY/P9FC456j8K5S1ew5U3cr0cCXEwq5rwIfNPF6UzLWJHbbPlKVltkVbdgpKjjAWrm3WE63vFbg/I7r9++8th0X9hZWYuq1Q1Jd1a1rT15d1TIf1500vom/1RoX9mu6w2jl/sNzNmas5m9ilJcT8rtjxZRnSHX7Xr4QSNPOw+Tm8Fc8E9Vg7grTlrxx0OZtNplMaLngdoDGinCU6ZrkXShKKP0Kc24/zxn1UL4OgAZMvktYjxGjiOOIVOitS15ZkzAXdbm5wF68P9aklXKmyG/Hkz5KLJHkwyhdJHIxA2y6Xygs4D89mk3C6VkSj0ckLt772PD/ZKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYAXDmhnuMMPh9MLGezbtM/m4IDzOUyswtux6dIevOA=;
 b=Y045VZDuIF7V+f3yu2yDa6YWDOfYmAbKjcvVnNKVatMeVtfThlFskNtcNO0XAPOy7gsJDSGjY+T0O3wA8ZpUdZDbsjSXh9kDLl46B/OMnYY/yuzA8ay7ILijxQSTyjtpwyECprFljhoWKFIOniI2UKOP88qKWyhw25RoH8dBv46B7hg5+WiSH5t65oYfruxH0p47NUNK2aWNCdZnqLlNbgdDWbKrhy7nYHKDJKzw3D/CoMCTg6ZgHyq/gIuTCj3E6ymFqXMJLvBBqTzeA708a968gJBIDESzgHSsvafDqz+KXOL3QD8CHKY6u0dTAA+LqTpvfQFJ8yVBPZFGDUXB8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV1PR11MB8844.namprd11.prod.outlook.com (2603:10b6:408:2b4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 19:48:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9818.017; Fri, 17 Apr 2026
 19:48:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Choong Yong
 Liang" <yong.liang.choong@linux.intel.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "Choong, Chwee Lin" <chwee.lin.choong@intel.com>, Simon Horman
 <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igc: set tx buffer type for
 SMD frames
Thread-Index: AQHczqEFVWMQsWO+1Uu8kNLKYNnfP7XjqPlg
Date: Fri, 17 Apr 2026 19:48:28 +0000
Message-ID: <IA3PR11MB89864EE070DA58EC88E76730E5202@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260417193223.291093-1-kohei@enjuk.jp>
In-Reply-To: <20260417193223.291093-1-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV1PR11MB8844:EE_
x-ms-office365-filtering-correlation-id: cf38febf-0832-4d60-8f44-08de9cba4c40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: Z19TXH7gsZH+ZZYAdIxrIgfFN1Lo+E2ntS63V2fLgGLflj9sewMl1Q95yI1LkcAXHxQK1lFOcDyVpEKMHWoYELVyX3/yybYjVmGOui1fL6C/ISbEE/7qyxn9oRtOkJDufDCrVdhLxYgJwq+pMB2ZXyucKGGaYLQ9fontOSRvN1Fy0Yo/uhG1u6w0tft9YQ+b1l4InCCzU0XsRw4DrP16O5x4/fCMKX5cPEuAPBDhbtfJPpzweoQ+SVzq/WChx3xqYtFVAQHgn5TnVMG1iIQvjnqzXumnE58xg5vgCbu1mFkLD9N1w69DIQ+X2rmLQ0GeYdyfKz1USzNHCUF5ptT/uN0ofZFCRIX5loGpQAcO9uWUSPrDqsoKO00876trSQKabq5mUsajiorWWVhXpH+JsB5oMINWkZ+52pEyQPy+MctikaPxv/Jm6cmtQOU2gK6BSmBLaUbJSWi3tFNeOkTLlasGd5z43T3BTcHVUB+vaTX8iFq+TZzs3X9yfgHHK3/ZYX8bdd/Fmtbd/t+rG5o9CJD9M6X9CIx/ocTnciy1GIiwniT7msN7RCT3c/Sk5TEPx9G3lJJp3iGnglERyTtHCvBJe8qCdxIBxBJ+3m1XyXIvMI1zM3MGu5j78WqVJdvbdDglpTqsSW2VnDiRgeNY3zr1On76UYilPA+e/d4+Ak34kua/V7IvlAa4XOQmMImbDROuEYDg4VOtQzKQl871yrRt/xNzOkushfEShcnPYdo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Euh9UlfC0a3lCHEvfR9pWRWdTy60+0mbbld/rYXLVxwF3zBuSCRtnbbA5ka2?=
 =?us-ascii?Q?P7K7TAhJsWwvh+Y2I2vdQF2xTVXVhGfmUErsHI2+vH2tU3qzz3t/LtCyOgD2?=
 =?us-ascii?Q?kkn3EFrplWBXNzyHSoYPX8Un8lh0suLbHy7fyEjiwBaz7JFsh0XamS9syIO/?=
 =?us-ascii?Q?8EV2vcWZoWF+XtjC9HGNBgLnEPYo+Dx5RgPoqQzVqp2WHnfw0cHdRkAn2WXV?=
 =?us-ascii?Q?7aT0GLykvglHR99gzt2Y109elR5rsGx+lxMIsuemvZSkQgtQlcdam4vVrGfa?=
 =?us-ascii?Q?6O93S9+y9XQORypx3muPWskvvpaivYG59JLCqKTNDhi5ait3S8gSTmb3l65B?=
 =?us-ascii?Q?J4Ox893OsSQXPFen2jabrLlZ1mZY5r083CWeIjhbytYvDN8jbbbxt0NM7H4y?=
 =?us-ascii?Q?MFGFj6SDjkCRVn1JxP0VXw9PJt6lk8v46q2tEgJV/S5bDCTpLeRW2cyCAGEX?=
 =?us-ascii?Q?y1X4UMmskimfWIPh+NBarBY37temvze++XsXzKrv1Iq3RrkJ6u9l67ogQNXw?=
 =?us-ascii?Q?WIR4Bmp2xgantLxD/Sc2TYjoZ4L4DCeCAv9pKfKYlNF8Wfjon3VBLNaNQavx?=
 =?us-ascii?Q?HheWgKtSThN6w/IVcTpcQoGPmZkrkCfvWgQOvGaTj91oV3Vko9KsTJzjRQFa?=
 =?us-ascii?Q?ctf96gtzwK5zXWQzSEktqYGG2Ho+YWodadd5n/wJpgm+VmCEMRy15/xBiqZD?=
 =?us-ascii?Q?MQfPyKeUcHOYpUuiCeBjuHu1khM6wNSBAA1dbEhMHsdYPQIfDuJvUFhpch7o?=
 =?us-ascii?Q?xYBqlriC3hLiafMv6bpIlYCz3iZkM+4XbBgW/H09/JXxxyAqjijK5MBrL/Yo?=
 =?us-ascii?Q?Rubz/FwyuDjV4bTsmb6q0XJ3L0mvat/9fBLBjFWOWWsCtqculzuFBmDX/Wrw?=
 =?us-ascii?Q?lXw4cfwsFTiHZ9FFcq0KZZqdIP1nGgNb5/0rsJ7vDW6kSGqQK7Tj+UtubaFt?=
 =?us-ascii?Q?Vo/MHmsuNDZ0HCngLAthkPh2beUskO8oldJn+fVJyjAXDj5ZFN+11LF6V0WU?=
 =?us-ascii?Q?njHYJVrLsvtNbtC91Lg+inkou7gXIbfnau09S9wXf83BcV8VBROxBNh9Sa09?=
 =?us-ascii?Q?53tq5z5O26JSrFpvdWwoEpZnS3kjVALJRbB9DEusr5KBvij25xhptbubLYZx?=
 =?us-ascii?Q?a5m8TPWnrgcah1XuKDoXtcX6iUwgfF0dUVkPuQbX9TQLmnqOnIe77RqczE5B?=
 =?us-ascii?Q?ehtNFYbnzRtoWpSZmCiXiuCoCuj3rqRN4tyn84s1kT6/d4xH4Fdm/c+j5BoU?=
 =?us-ascii?Q?QFvdTBsT7nejuqYq7jMTXbUktmqdKJEzsnBxg1TWBSN+Y1CCtOmHD2l+SHI1?=
 =?us-ascii?Q?vMJx/HjGr3El7NGEj5XtdqPdp1vODk6ZQR9BaPXi4XwnBbJ7WsxzmS2LuOJM?=
 =?us-ascii?Q?CaKgzPUwT69ul/jZgCCI2jJuJRatI/2WVJK7lg11e6HcC3xvESJKs+dRgbmE?=
 =?us-ascii?Q?ntSYbtwrnHntLQCZ3vtivASycWuzzzHVqjH75MeF2zdCovxkYFrEGzOnUp5/?=
 =?us-ascii?Q?N/Fbsn8v/Y464Y6HOjspuJINgK0cDzWuwYVrexYTQvx4xHenQmU5zpFrTUl1?=
 =?us-ascii?Q?Z+yKP8u3TOaA5GTlrMqfLH3z7FzxvsX1MIjkXzQHdsz+gfDqrQaW9j4q9M7u?=
 =?us-ascii?Q?3fz3J2rqOMlvBZWGPiU7CIONlXqNKhGyuEIwgh+BJu65T6T0F1bYhpOKHdFp?=
 =?us-ascii?Q?hMpT0QERvwFunRL94mTwsYMvzBJ1qHuPqxA+uEgL99vjpfnZmA+MT4PDyoyK?=
 =?us-ascii?Q?5fXGl2O0wPNvctmU0V3BWr0AMFvGIbU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: W1bteuxKqzBHf0RY1kCjJ+50C8tE2LUXK7DwIrJgoFQN0nGrfOwuQK5LP4iMf1s9WpADoSL/3rjFuxRqbb5M2EacE5rdMh0tZay8ilmoikOBntP8jmbR4fKf/VYd70mKs0eO2p9+cwjOZeLwnI/pw5/1gnnXA6XWrByaGIhogZXcq+4RHCO6/pl9s16su4fPdMNZ16cmWl0wQiMaoggpky1JcLoExS0TXGJj6FM0VK2rQ50KXRrxH7Au8Uv261f5wx/VAPRrl/nCBG/9SmBZ3gMBcn4VXY7G+/F1mFbV5vSNM6D6HYmBoqLvbgtxESqnL1O8kYrQuVXPGM4UXx7SyQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf38febf-0832-4d60-8f44-08de9cba4c40
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 19:48:28.9278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MTYdGqe2NfTAURPZdSeRabtIjNQVB8MA+3iaa66tBx0FSXqa0EaJDz0oCIxejGkNNlDXi0GDCN8jvPSqRKe570uLfbisdvGr2BCQgtoQ5qs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8844
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776455317; x=1807991317;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FvJ9QMgcnZ9nendVEIt1x8KrpQ0sL+wvarn2BvB3Fz4=;
 b=CzpzBbAP0gf2WWXMZml//6XBQ+WKW3nPpghVWZnmvs8EWzL+H/VbX+Bm
 LB8TMl9OJBnHZvHK1R2fnupvfio4bt/3xkRs1rj8ZHSSJ3ynwjVc8xKTi
 ThcMwf0Vtk1VLhOXCNZO0tgwl4/s/DM2RBffs0tCpnEtvDqj6z9Pqps/j
 7YcoyQymssLrLeV3StZ6jIie4EmPkUFhH+bVLyR03diAI9flHCeVkD6YT
 BMRuBEX2ipw0pLGPRBy99DY37hMmC+Ub3J6+TGxDqhNPdDjzH4FNjrmfu
 3kCR1JYkk+QP2p6tfBnyYeoyO4MAp7w1DNasNN59cqKoEu1G5FVLbJJ6j
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CzpzBbAP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: set tx buffer type
 for SMD frames
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:yong.liang.choong@linux.intel.com,m:vladimir.oltean@nxp.com,m:vinicius.gomes@intel.com,m:chwee.lin.choong@intel.com,m:horms@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,sashiko.dev:url,enjuk.jp:email,davemloft.net:email]
X-Rspamd-Queue-Id: DA68B41E60A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Friday, April 17, 2026 9:32 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Choong Yong Liang
> <yong.liang.choong@linux.intel.com>; Vladimir Oltean
> <vladimir.oltean@nxp.com>; Gomes, Vinicius <vinicius.gomes@intel.com>;
> Choong, Chwee Lin <chwee.lin.choong@intel.com>; Simon Horman
> <horms@kernel.org>; Kohei Enju <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: set tx buffer type
> for SMD frames
>=20
> Sashiko pointed out that igc_fpe_init_smd_frame() initializes
> igc_tx_buffer fields for an SMD skb, but does not set the buffer type:
> https://sashiko.dev/#/patchset/20260415025226.114115-1-
> kohei%40enjuk.jp
>=20
> Since igc_tx_buffer entries are reused, a stale XDP or XSK type can
> remain and make TX completion use the wrong cleanup path.
>=20
> Set the buffer type to IGC_TX_BUFFER_TYPE_SKB.
>=20
> Fixes: 5422570c0010 ("igc: add support for frame preemption
> verification")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/igc/igc_tsn.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 02dd9f0290a3..52de2bcbadbe 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -34,6 +34,7 @@ static int igc_fpe_init_smd_frame(struct igc_ring
> *ring,
>  		return -ENOMEM;
>  	}
>=20
> +	buffer->type =3D IGC_TX_BUFFER_TYPE_SKB;
>  	buffer->skb =3D skb;
>  	buffer->protocol =3D 0;
>  	buffer->bytecount =3D skb->len;
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
