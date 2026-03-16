Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOnAGciyt2nUUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:35:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E26B295B2A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:35:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5588B40C81;
	Mon, 16 Mar 2026 07:35:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMV92-5nXkiw; Mon, 16 Mar 2026 07:35:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA27040C8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773646533;
	bh=E7IPOrGnXcOH0Ro1L2enHIO6lNnNMSijNX6DXBPRUAo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sHltbthnqsb0pbs7GotVM7uWZXfK2bwuNrR/sa5eH2TeWYakqtpxV1rn2Qh67xO2R
	 6iLBII506ayR3prgnJG1KO1V65H5Bw10oS+kREP8y8B2GULh45QKUp09tzOt8IKCxi
	 hE7uBdZyyK4JWMDcM1/B/7bl92E1viFvMYR5uPYXORp19j++nMFG4xGnFk7cifnQTO
	 bOxJkHP8ZpBLTUAB5pV5zBfhqde4Cmve3AAjBZGCHUyjLk3cbglLegxzdiWM7s0dLe
	 Sj7LvZ30iQMTPwydGZC7Cz0Npggver/LdA63xFuOpZgSXI14hIcjlB1GW4Kg/JKBgS
	 KHOqxeP0VqnnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA27040C8A;
	Mon, 16 Mar 2026 07:35:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CFFE9D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1799407F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:35:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6qdogwLToTmJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 07:35:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B1B944064F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1B944064F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1B944064F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:35:31 +0000 (UTC)
X-CSE-ConnectionGUID: 6g0+veMxQU2Z67Uuw4ai+Q==
X-CSE-MsgGUID: lAQA+7h7SkW3JhobXV+OUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="92040134"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="92040134"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:35:31 -0700
X-CSE-ConnectionGUID: a9UM6hpaT2KjPmoM4aRKBw==
X-CSE-MsgGUID: C21CcKtpT46FOMV/AmR37w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="226498944"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:35:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:35:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 00:35:29 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.12) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:35:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bBrlGkHDN5jueE9UgKAtEtYWpSHGeft+B1ynWK4YScAWk/amf9tdSCvNggsdzt17W1rzB7JWwTsR/E5k4sggRbtSGGNP4WLBRLSdl55FzA0EPAptK+Bg7XfI1Gt3UTptbISHtthL9PcfdEZmpNFwCQ0A3qQ+HS/020CMgkLS2bui90YSgp2DVgMxJt8J8zoIeJ6iArGXqszmNb9yRUdwHNAniIiqRavoYCoXIzaq3pVW66kvpFkb3e8N3qmGHt3UaOmr/fGp7WuYwhwLQ/4OVAKMC1s/maYNXMf7bzQCrVB0w8lyUtTefY13G3xloHdVoEbpGI1WWd8psMu9UXYwCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E7IPOrGnXcOH0Ro1L2enHIO6lNnNMSijNX6DXBPRUAo=;
 b=nwRc31rNs1Wi9h9oW/Pe/EF5xhTvbwfwWPju3MwGzESXDpiH8zhK4EjyW3bsdtMDje033V2kJkQ71aAVhXkjYWspUs6z8xBGHGByB27m62ol1sAQdrLgrSGOw0kBB1DGSO8x7RMp8LzOmtInAw1NpeC2G7g0u4Sy+OuBZHS7ACwEksnawskzC/2uERbtcJUlPG/GEN5nENxkq0Tt49NkhMx/AjSc/eQsrbeGLpY4mnxH/P6WPNIDhrOLZ0mQW+lJ9nPNCNCfwkx+XhNgvtVPQV0zmoJ0pFsZlpKenkm4Ig6lMRpul7Pv8AQrRewE8ApH/9A9qPz6fCR4QSE1uljrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF263E38237.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 07:35:26 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Mon, 16 Mar 2026
 07:35:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: I Viswanath <viswanathiyyappan@gmail.com>, "stfomichev@gmail.com"
 <stfomichev@gmail.com>, "horms@kernel.org" <horms@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "kuba@kernel.org" <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>, "eperezma@redhat.com" <eperezma@redhat.com>,
 "xuanzhuo@linux.alibaba.com" <xuanzhuo@linux.alibaba.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "mst@redhat.com"
 <mst@redhat.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "ronak.doshi@broadcom.com"
 <ronak.doshi@broadcom.com>, "pcnet32@frontier.com" <pcnet32@frontier.com>
CC: "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "virtualization@lists.linux.dev"
 <virtualization@lists.linux.dev>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 7/7] pcnet32: Implement
 ndo_set_rx_mode_async callback
Thread-Index: AQHcs+CUdyGGjCf9KEWpGI3KA7aNNbWwxxZA
Date: Mon, 16 Mar 2026 07:35:26 +0000
Message-ID: <IA3PR11MB898646CE49657F125B5A0349E540A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
 <20260314182809.362808-8-viswanathiyyappan@gmail.com>
In-Reply-To: <20260314182809.362808-8-viswanathiyyappan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF263E38237:EE_
x-ms-office365-filtering-correlation-id: a4ebf12f-7429-4fa7-98d5-08de832e9734
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|56012099003|22082099003|18002099003|38070700021|921020;
x-microsoft-antispam-message-info: f/SDTvp3h5C+8RY9p5JWkiBnPYHmcpbo5AuFfviJcX4e0Z4frre3r3KZd8QjRWiRo8DfWvK64wm2aTYX8/578qrzxHvm+CPdDZoydNZ0VPzeYbVBn2xriamskfv28U/avJh5OBVviVO/JECVgiTtx4wYsKbzqqZ6Ivx6cb0iw6w/sFmCQt3UnADVdQZCHrGf9rGc5KXZZSbOPMZn6l6r4uc2xDyCZ3ME+MxGEwgwiBxRkf210VN1HEVNE2tEitoEyCkbJIcayFT5VkDWoW8Q4FMGqhiqPTE2khI3Kji7kV9YfGe79UWHHNc0sTxRzu/EwhPNZb+oBe7MCbcvc3HyXYXi59ekMrTI6/i08fybZPHOoYJwfEe+S97hq2AezrJl6MpptuLKBqUKHXI0AFiJoJYpENTpBK/hMTMK59EGt4ka5OWhXjGebKLkc/5AQpAFu9T8l/mmnyWD3Mz9bF1Dlbg9SgqFxxeS7i6jb4b8bcTpidXm5CnBaYNB42BDGZLcZcpdwg3//Vuw0iLJqbHU/4XYenIy6io673qkukYLRcSKS2mC0BGnLCKKI3wkZz9nwgjyn9xgMV3O/X7+3BxdLeJPYFz52enbWdNnlswiQNidk/lJwv4jEzxU6I0e2b4+93Q+u158VPkq0tNOEzqwvGjEJ8D5/CtpvxQUnWWAgr3RHBlC38g4/dcNI7LoDB0r+fvOxMM0iPug/6zQvyUtXZcIUzgPmJIubRSx/2TuQWu1ju7kzTfTM9dfDnrxhEiMOtNcO5Z570EGb7uCxOLgmb0OLKj82FLlxmYoED8g5w1xMPo7Lom4/WsWMoo/7BvM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m+pm+tuv/HRz9qkCxj0Tr+m791JBIxhN8lQRTdnvjo6BwbMRV/MuczEiANXg?=
 =?us-ascii?Q?J014cnfQeJ7k7HEIqvNy/XqChWO0XUutWqXZBl3Vj7DDjeuMyy3L3GSCWjF0?=
 =?us-ascii?Q?AiYt5zSe2dwffUI2W5Rz3PwjfsvDqQNWSfcPr57lOS9RppZFdhqYAItBdrc5?=
 =?us-ascii?Q?Z0fAwd4WKnpUa/BT6lV3ToNGNQhEKqgNED0oOnSuHTiuyMjDx/885gnjqnew?=
 =?us-ascii?Q?yutUgZAffm21Snm0pHF/CCDzlIRYZHYyjyvRl4mShyaUsysP65aeWvjCmIlj?=
 =?us-ascii?Q?8y49FOHtoRS3dJfj8fCOTBDI8xzVATbdq22Mvyz5FlRWyQfgNJ8tp1Vidtk7?=
 =?us-ascii?Q?O37rMURGnFk31AwsEyc8udpP/MAHagSxEd7plavcJb0L267bvOsOOpWehH3a?=
 =?us-ascii?Q?KWN7zBIp19G31Prg3Aq7XCW/EM9ZJKXMOWiZROP9ANjCo7obDmsqt8/ouiNo?=
 =?us-ascii?Q?ZnIRhL4SB60T83E1cWzTF1OCCEJZqfTPq/50OsKYoMnPYWj/LPYHZkK5LgYC?=
 =?us-ascii?Q?RiAG6xbar4oiTocby74GhmkfIIPuLdm9b1dKk2AzxjGDa67p71IgAX6WFeoW?=
 =?us-ascii?Q?18/Fm1A7IOqAWYOx7lnYnU8ktXIXI2feJvmkF7dVWf9eq9PrDaX4e4LKSZD+?=
 =?us-ascii?Q?lmGoPxpD2FslA2oaR6NPzZuoTIbpwcD5JTIGelrDgIp5b8n1CpPrgBaLMZig?=
 =?us-ascii?Q?x4Wh0hbTh4GKRxCoZJrLPpJXnAgLJPvZJpA3x0XaGpO0sk1Q08MxKXwEsWJP?=
 =?us-ascii?Q?Ha6UVqMCs+FYoYnSORGTG+PGcEkqKpAs6yIwTaF/MUVuT/F+BBNxIU6WNE5k?=
 =?us-ascii?Q?CfKQzguMMLPWwFI+D6tpNEG9PIIsbElgusse1pddbReGFd4VXe7IyFgNBJWt?=
 =?us-ascii?Q?85TzCg/AHFjZb0qBdPj0WDFFYDVX5viUCm/eubmtb+kLni4DPdM5aTO0aoXF?=
 =?us-ascii?Q?9z9/2dzLhXH2JQ1WhGT4+Bkoa8IJFEe+u4+9GKnhKoh8ED47/LXxPeYpjqaO?=
 =?us-ascii?Q?yYsrJxCPlgMfMAWy+pO0TB2Vod9qJEPdP4L5ClJg0B+XXkJ2hmNgkUKIpmvj?=
 =?us-ascii?Q?AJgCswxhw0gJWvObZC+bBuY4qKlej5cwWfdhgiqbcjVyrwzYXqTO7qpuz/XL?=
 =?us-ascii?Q?CNl638FukXDhQYMgSA2t4Wp5VXsmFsYF3bKE/XGMzFCqltUE8GtxGEvQ6RcZ?=
 =?us-ascii?Q?ZcPkGOUqXDak071rzs14P+O6SOssPYYl9W0WBUVvK3LuIARV4K1vmJnd/jWI?=
 =?us-ascii?Q?UHuyi/t2SxI555A0R4FeEBclZaJ5RqA7T1NvOG4y2wo/iSYFSUwsMJhMeLpy?=
 =?us-ascii?Q?VW9aI8JuD6PzgmyidKO2xAY0maKgT9B7greM+Wk3J5mdyKr3BGfFKdo33EJO?=
 =?us-ascii?Q?vb7dRGr4g51pGLJNRhufjkpJGJLv2XETNbUfFYpdWqmL3n8+R8wFjknHf5bx?=
 =?us-ascii?Q?USQ3kcBHQMU+H/wirP+Ow8BHD2iIYZkzKTIDe4Y38qr8D039cZ7UheA8nmJF?=
 =?us-ascii?Q?fJqZva1hKiK4Xb6abiwnZ9svdycy7PbBmIA22BlTGN7nrX/T6b9UZFOGkj13?=
 =?us-ascii?Q?VQ+eAMWpEDPX7evfoKcLUv4hw07Jkodtrglvki+cxC3/HXfZ/YWfhRU+dyyu?=
 =?us-ascii?Q?en+HPZTVxf6tW2qvcmlkUbnaHGMFVOQ+dEskg4zsYLBAAdSAZFnzwQE47fj+?=
 =?us-ascii?Q?f2zfyyF9VAcCJyPUbsu6yr8qOmT5DAigCa8uU5x7odntZE2q81csqgWII68E?=
 =?us-ascii?Q?Rz6/BolgA5rQjFjeZIOGXenlRTCxQG4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rTZZ98dMWXr9GbBP1yzeusqFTykHAPOkHry0UJIWn0VtHIGzQ024+xEMtbcA7tPnpYx70gI3Q/FJkKr/M02wtMrggNaXzp1kowWa/swkviEQywVrBNh0MbgrEBS3fGIhgSyJW2QtVuCo7gbczAtGxfWKkUAI5Aw3jLnBP3PFksUBXgX8eKwpaIpuHRVtRu5SgCjhiyWfVIKawNjGPvI2dwO6Ee7F8l26hjB0G5PZicCeZbWH0amzq8W/hZk1Fb5ECEfzDGCD6D864y+eCERqYug8KwKdFqfcBBhwxgZxFJWsz9HgB91KcExgaMtc5dA8rSGupFp/fkC1g0C9GiQaXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ebf12f-7429-4fa7-98d5-08de832e9734
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 07:35:26.1350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kUEwouE9UZCF+AytWnJraafuCfidpy9ZuVxUuU51xuEPz819moysmq62gTWgQkCpn5Dn7WX+NBoyTiKqhwLECG3nkp/iInGXEnB+KafL+qI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773646532; x=1805182532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DqHb8tjZ+fVtOvN6PrQBQRl9MIjiOxz8xYZQcF4M5Fg=;
 b=eKs2MSVJx5oWMV1YlfT0z84Y+SRtgPo5OIGe1eHdQUPQ52EOIiA+RaAc
 KfwXTo4Ip11tikgM7odidCN3p0kWt4C5DfCpHZx8VfdqDjk4E1lU6nczx
 TmrqE/HMm142XFyH0Wiyl/IxQRDfYyI08b2yCkk0uoWT5/uikEhQH37an
 1Bwln8LMOl5z5Dp2jII3UML00E85ufVX19ySAHwjK4JkxDT6DwW1IRLN4
 3mtI4kBBxK78OROrclljSSZuYurWs47IydPEP5oig0uakhjwXbfQN+Too
 RC+M0dm1ArHNFQ6VMnh8WxEQlL5agpz7VywZr7UIoEvhrdn/LR8coEjLa
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eKs2MSVJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/7] pcnet32: Implement
 ndo_set_rx_mode_async callback
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:viswanathiyyappan@gmail.com,m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
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
X-Rspamd-Queue-Id: 9E26B295B2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of I Viswanath
> Sent: Saturday, March 14, 2026 7:28 PM
> To: stfomichev@gmail.com; horms@kernel.org; edumazet@google.com;
> pabeni@redhat.com; andrew+netdev@lunn.ch; kuba@kernel.org;
> davem@davemloft.net; eperezma@redhat.com; xuanzhuo@linux.alibaba.com;
> jasowang@redhat.com; mst@redhat.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; ronak.doshi@broadcom.com;
> pcnet32@frontier.com
> Cc: bcm-kernel-feedback-list@broadcom.com; netdev@vger.kernel.org;
> virtualization@lists.linux.dev; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org; I Viswanath
> <viswanathiyyappan@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net-next v9 7/7] pcnet32: Implement
> ndo_set_rx_mode_async callback
>=20
> Implement the ndo_set_rx_mode_async callback and update the driver to
> use the snapshot/commit model for RX mode update.
>=20
> Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
> ---
>=20
> There are no calls to netif_set_rx_mode in pcnet32
>=20
>  drivers/net/ethernet/amd/pcnet32.c | 65 ++++++++++++++++++++++++-----
> -
>  1 file changed, 53 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/amd/pcnet32.c
> b/drivers/net/ethernet/amd/pcnet32.c
> index 911808ab13a7..d5ad96985d68 100644
> --- a/drivers/net/ethernet/amd/pcnet32.c
> +++ b/drivers/net/ethernet/amd/pcnet32.c
> @@ -314,8 +314,9 @@ static void pcnet32_tx_timeout(struct net_device
> *dev, unsigned int txqueue);  static irqreturn_t
> pcnet32_interrupt(int, void *);  static int pcnet32_close(struct
> net_device *);  static struct net_device_stats
> *pcnet32_get_stats(struct net_device *); -static void
> pcnet32_load_multicast(struct net_device *dev);

...

> --
> 2.47.3


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
