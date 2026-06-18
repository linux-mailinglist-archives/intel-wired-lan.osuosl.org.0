Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XeCUK7oWNGrFOAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 18:03:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C796A16F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 18:03:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=j2nePFD9;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26E9E613D0;
	Thu, 18 Jun 2026 16:03:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UiJ8kUMMRQAI; Thu, 18 Jun 2026 16:03:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 961C7613CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781798580;
	bh=VTyQsOqAXmnK1eOhWxkFrYDOaTddTrc9DQI5dEeSPLI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j2nePFD9rFg6/hzExnsyVwHmlBzQUCuciV4lPq++abriYDSWLl/OQ5ozsVjArJMne
	 j1vVQEn10BroJCbLTe/SBWhL680uPbyfmUBmWjOmbYiYchPKBlnCYc7vRI1ZhR+URM
	 UFq3Hyg3GU4WpE/IgphXKPwPk0d8umDlkab6tyygDK3OnYDfA9FCVfdZG6GFszhTJL
	 +6Flr65uiTlpD0HLGe2NIM9D0C14xV/TANNYjMDtxaYe6qZ7Y8Z+ro6M8GPG8GYTtd
	 USoaYgS8MdrVPePpEreV/6NXuaZXN1TSDd0EwyXylvrenCRXv59Ur8ToYk2tuQpQEw
	 yB0qqJYmiFzhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 961C7613CC;
	Thu, 18 Jun 2026 16:03:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EF092BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 16:02:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74C514185C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 16:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JoUanMgZUZDJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 16:02:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B25E841854
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B25E841854
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B25E841854
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 16:02:57 +0000 (UTC)
X-CSE-ConnectionGUID: h7VemLFxSyymGPWp4aKdzw==
X-CSE-MsgGUID: cMmsmBhiR4iarCAy0svHmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="70154968"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="70154968"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 09:02:57 -0700
X-CSE-ConnectionGUID: sK6m6rSgS/+MUw+YR8MvSA==
X-CSE-MsgGUID: gD8YvRSTStqIXw2gNVJ0Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="272477996"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 09:02:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 09:02:56 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 09:02:56 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.58) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 09:02:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tqQs2/ddmkgwfgXDA0i51bDTVFyd5Q41g7PyG4+BhR4MERpzm5qfhXMe7fU1HB1gwolZWIvgr5H8J690t1T+n2tbQdIRHTUhBBXGRsJK/1Zu1zEOTEi1RMC3cNnmpBjFclghB72Uvbjfxsmkvb+F8aYym8DHCFQTNoskU4eWKlvaLIpdFSl2vGn58RIT5238xJcZlCsFFLewqCdURBLnGyW1oD5riQjHIPHKOCZ1YQvqDhNaQgxXJg2xK9G2jKRdErQbN5f6kILGBYBlx4La9ylhl3br5mm+QGA45/K4p85q1pv27g53IprPHJ+fa8Y8cB4BEibdjonGpagUztgBZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VTyQsOqAXmnK1eOhWxkFrYDOaTddTrc9DQI5dEeSPLI=;
 b=yMXFubvIhKlTeRcqsB4c7E82II+Ba+96Ije4sbPV/ZEApZSake70c45KcXCufpdfE2vwZVZYGtUjncnHDARd43bFaVROuuHtcAcSRXP5vRp6iRp0qRqaZvEnmV4MTPtYnJajfp8UlOJ9yfYQ5TkrC3ysghHH0Nw/ALFjFTK/2wUudr0Dj9n0Mn2LxRUwXIqeok1QWOxuXIY5wwRk6jeubgScljL3O1aUKvnMKHLYJzg8yhcff8eJEaCfi8aK/bCB8h0xSQGzm082HUI7qh0K5NUVb0vh2Dttgtpydpl3gcZ05DX6ttXHrImPeSo2BXBBJtcJJDUAJJYNoZgApdbhbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Thu, 18 Jun
 2026 16:02:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Thu, 18 Jun 2026
 16:02:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Doruk Tan Ozturk <doruk@0sec.ai>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "horms@kernel.org"
 <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: eswitch: fix
 use-after-free of metadata_dst in repr release
Thread-Index: AQHc/zHSZDpWL9qtBECxAr4mx0WoLbZEeWJw
Date: Thu, 18 Jun 2026 16:02:52 +0000
Message-ID: <IA3PR11MB8986C4C227BFA15D0055EF15E5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260618145003.47471-1-doruk@0sec.ai>
In-Reply-To: <20260618145003.47471-1-doruk@0sec.ai>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9273:EE_
x-ms-office365-filtering-correlation-id: f512f562-d6fb-4603-11f9-08decd530d94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|7416014|376014|38070700021|22082099003|18002099003|921020|11063799006|56012099006;
x-microsoft-antispam-message-info: 1sweMjTRWsDznaQUiW0exsZpysIA7qoPxce9zj+UbPhZjvkjqjkwJ0wfODIWqrG7/exw0O8cOFyqT5N7nqxPI7oP446zUBmE1wNhGMZMyPwH/47O0RZOQbheZL2yiBTzAJ9d412jC4E0B7xQTyIiQEWtY79NwsEG9WW4hzcvIvIsSF4YqzjbAi5gZn9pzN75S3PE2Goxj7aEL2QXtJ0GN4dQsWdkPdXFFhBKmNfLtjX6pos9J7DzfDRKIdf3EvXhqIrX9PGpCU54KKIeacSkhyr9e5hxqBH4mH+o/wY07+ca9Tvo1ndIreevQrtQ2XXcKC/loUeo5ktoObYG3HZK+v7I22ne8pHDNj4Hk/nZfGbusr/eU2dFdVugraBWeLb6QMnRGWcosfwzwAAVjRcfv3Idjtyc1nla7iFBnCd7VOpWZTVkGVbP7sekfTjMzCLE0xVd7BW4zlLQBCAPrNvQWiOcFI675fDh/GPoxV4YOMSgInLWA3eMU2prC248R3U6JbKmRPKWK4psS0uwIlD1/+B523IgeXVgsJ3TZ7JBk6eQpYim2sYLTKR660QyIuXMNPEqA5zuyeeMXFOTHfRp5Iyc9o8MsYfTm5y/A/j13oVuEbp9URCC8l5OWul8GegQDThzrbQ+0MxgxsIVLmiBZAktYaKmCjkMfq/cdM5OzxsxRyZrziW63bFaH9SHSrUkwI1BUCzkmpe8QOJcrmGyHgly9RID5jN4Wn/hlNJvErLJ0JmwddIJffHQDzaMDBCYQm/vMSLKvD3ZQ7kBjgqgjg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(7416014)(376014)(38070700021)(22082099003)(18002099003)(921020)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wsx9LrBMhVinhEePriCmnu0vIZeYF4m8YxcL0+SI+SNolkoluWDnpvdxo0E+?=
 =?us-ascii?Q?GZGnu2+ri9B6snHaZYQQtz4bupX7aBmxiZ4zLyA0ht7OX9P43AOkyNuv6ZgE?=
 =?us-ascii?Q?re04868TLHHPyb3tLCyepmeoHPXbwW2A2S+3pZCObwIpvvfTUXYyrk+iOtvS?=
 =?us-ascii?Q?BMX5XpvkgX7psy6ZBdkiGGiLH9XT6HkuBDhNt76uC6y5wu73Vl2gFYG63/Ue?=
 =?us-ascii?Q?xg9AOk+XPHYaRLVlBLdo0Qi7b/2VMsBf+swjS8JrEzjQ4xfeKaTO79GhFpHT?=
 =?us-ascii?Q?gyZtbcjR+RbEhr9rmnIq0pWM8GWEb9D2zaFGlQdRFE7L2C9el3T9TItVogBo?=
 =?us-ascii?Q?yyZw49taP0a4SsiEwOFffZqann8H3UqkeNyJQmXmUIe8ohLRy4UABM9QYsLB?=
 =?us-ascii?Q?586n0UzsD6lOEXy8WBcQyf+fpqtjRLX4lbMQPX6VL1qGRbKo0vUZ/v88vnpd?=
 =?us-ascii?Q?/73Mtf9+QWgZp+V7OIxiPCh6qhn5XIrftDa0Eug6WCx6hevb8nXXSsylMKe/?=
 =?us-ascii?Q?4uSLF+pOIcnQrSGhMT4f0NwQNBTnag3IZhfNNPaYnk5xv1cNcT5nEOdQjXQi?=
 =?us-ascii?Q?goNsDDvN2xbHaSjPUfplFWZeonx7j/hatFelA/bF88aHDtLjXdjuNaIKZy7y?=
 =?us-ascii?Q?eO3WMZye+xMwvz7tKJvEd6k+X+G4iT6g5eVTNrl53lws3DmafPRR9ULbEMmJ?=
 =?us-ascii?Q?83hId+t++GnWPrrPE50lXt8szmL7wt+gd/ZtSHd4olLs3s9guZ84riV16LFq?=
 =?us-ascii?Q?EjEy3EzNp5ot/s8uJuCEQzuUonXU4zncvil/4FVvEBxmEk5lNgUtUQfc2yYi?=
 =?us-ascii?Q?3xJolt/MbBs/eIYKDs1w3U+DGZFTEC07WCRY6wC61ch9bZwpSao7rBWKLyjC?=
 =?us-ascii?Q?lBL1tHEA3Fn4wyzsA7OOJ2d5rLw7N3+qPuhr7oDFSubROnzvPCvCSD6X1R/v?=
 =?us-ascii?Q?gnuGRlFPEHQYPp80o2vCiFtXgSPiwnwhStQ38qqHa4sC9L5kKjsgdIbb1QWR?=
 =?us-ascii?Q?X4cG2ZT54oUEdjgoyC2n8/7FkVw+UmeI6IuEeu98EysJzKNbkqe3EIV7Iv3h?=
 =?us-ascii?Q?VJp8xLCaT8ioNEZyM6WqsK+0aUmNu1ekMjM1mLgTfgrbCMiYl2APfD4QPcjk?=
 =?us-ascii?Q?m0lRPD2MSD1y4nnu7c7FLIT86WXT46jNe1RwqQ3GGgGtxtg1pSCdiDiFkzuN?=
 =?us-ascii?Q?wQHByi1fPoxuStxLVaSIzVzeVD5YkJkcC7zZZb37pV3DuvtoJNuTNMj8y+oO?=
 =?us-ascii?Q?QpIMNJxllHKiumQYRjhBqEondk3eyWiHkuUEp1/ozQNScHVdH3zncjGFxHVa?=
 =?us-ascii?Q?Ef6wU2hnum4GitRMYaTSDOmbjBzi3E/kyTOVCAReanPioKH86jNdDXZMWwin?=
 =?us-ascii?Q?9D5zoxE2TNUcNuOS6AX8dMOisifUXol9Me95cyK54/mI9zUHN5jVfgR7BzGS?=
 =?us-ascii?Q?tZqQmEptJwMA0C7y1PqH5qIBGnxk6qpHxGxzi+5YOIMzyPQaxkss1kmTZJRk?=
 =?us-ascii?Q?bCDmQXReoF7XbZEUbpKHMk4MnM5677l+x/4FPjgU2ZFnMCCeXT65hja4syhn?=
 =?us-ascii?Q?e40hVS7NOSGJqG6PNWLP3dQdIWX7UeZExpP00dg/hlAN6++8VRCYfoSonb9o?=
 =?us-ascii?Q?BpSiy/0FwsZHvKD3JNYQNXzBHvf7/8mLNYxh/tvDeRvHucYOvI5iR0uasu+d?=
 =?us-ascii?Q?2cc/ghhYYnYTt1x09T4KS2m8vrA5kWKFMrF60KUtw9dTIlcn1D5ZUAsjx91l?=
 =?us-ascii?Q?+jQlIXrnQ2OGewQ7tpQcLv0gwXMnPqo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fzLRB1ABIEFVgFY/rAYbA3sujWzG2RLH+/PZJApedJZ23GL283w14XqGi6l+ETUhHljSo4k1b6W3D8oQE4OrNm2kNV6/RlCqJHK0e3jQ5jAFbqY+eqKj1uee4UCWn7fPlT2GUzki76Vla/Pvt16HJWA88zbvj2M49BEejRKDptGl3aE+5HpebPwXVDXiBHruhp8vwQM+7DYaS2GOn914LiJ3kz+QKckOG75BsPQfrap5mmHoA4xa4ty7pE2tsX0Uf0/s/GWQtBoIsuqBQ/yQJCUQ7C+OBbW3a8TG2y3uVpIQZ6RXxRRsAcheFmxXy5KZnOzpeQpthCB/Ke/HTkJayQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f512f562-d6fb-4603-11f9-08decd530d94
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 16:02:52.6923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FTHmn9W9qz0EZCnL4eXeCiT8FAzG6QIKDA1/BjCQzPHtcT2Pt5Cml44YVrYiFgYPwF0Pq6BFH9qpvRaDJbn5DVH5NowlZuF5fU38S36Au/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9273
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781798578; x=1813334578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K9s9DV+cDRYbypQ4/nIGKnLxdU8bY3684hH6li2X9Fw=;
 b=PRAg/bPf1o7hdrKpom07VaM7C3Tdt7tfdiZ2JduQRkkaFLB2wqQ2Pq/u
 cWJpx4nQqijH73gCPpG0OzkQKIz7rhN/uikjNd/aGkvIT9v9uRSrWqT5x
 eVcwoISZ4Volj6k+utE1RIX7XUYYuG7E/759p7JVgMQAxEphdphVFNmik
 SvNOmFu0k9rNlc+4jghDaeiXc9ZPlj+wZFUlkS8YViLJZXuNpAGgSiiaH
 W4sMTiVpr4/fhtKhoafzPA13iOkozg/5kTIC47UjyV0CUKe3TT52VGhgi
 K2hSBZUUNJU0Ui4BZ3YplPWtdUVC4g5P3un3frFx0W3CmvohAIHslrLeb
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PRAg/bPf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: eswitch: fix
 use-after-free of metadata_dst in repr release
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:doruk@0sec.ai,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:michal.swiatkowski@linux.intel.com,m:wojciech.drewek@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:horms@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
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
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,0sec.ai:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 70C796A16F5



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Doruk Tan Ozturk
> Sent: Thursday, June 18, 2026 4:50 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com
> Cc: michal.swiatkowski@linux.intel.com; Drewek, Wojciech
> <wojciech.drewek@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> stable@vger.kernel.org; horms@kernel.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: eswitch: fix use-after-
> free of metadata_dst in repr release
>=20
> ice_eswitch_release_repr() frees the port representor metadata_dst via
> metadata_dst_free(), which directly kfree()s the object and ignores
> the dst_entry refcount. The eswitch slow-path TX routine
> ice_eswitch_port_start_xmit() takes a reference on this dst with
> dst_hold() and attaches it to the skb via skb_dst_set(). If such an
> skb is still in flight (e.g. queued in a qdisc) when the representor
> is torn down, the metadata_dst is freed while the skb still points at
> it. When the skb is later freed, dst_release() operates on already-
> freed memory.
>=20
> Replace metadata_dst_free() with dst_release() so the metadata_dst is
> freed only after the last reference is dropped. The dst subsystem
> frees metadata_dst objects from dst_destroy() once the refcount
> reaches zero (DST_METADATA is set by metadata_dst_alloc()).
>=20
> Same class of bug and fix as commit c32b26aaa2f9 ("netfilter:
> nft_tunnel: fix use-after-free on object destroy").
>=20
> Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
> Cc: stable@vger.kernel.org
> Signed-off-by: Doruk Tan Ozturk <doruk@0sec.ai>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> v2:
>  - Correct the Fixes: tag to 1a1c40df2e80 ("ice: set and release
>    switchdev environment"); the previously cited fff292b47ac1 only
> moved
>    the affected code rather than introducing the unbalanced free, and
> the
>    bug dates back to when switchdev support was added (Simon Horman).
>  - Add Simon Horman's Reviewed-by. No functional change.
>=20
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index 2e4f0969035f..41b30a7ca4a9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -95,7 +95,7 @@ ice_eswitch_release_repr(struct ice_pf *pf, struct
> ice_repr *repr)
>  		return;
>=20
>  	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
> -	metadata_dst_free(repr->dst);
> +	dst_release(&repr->dst->dst);
>  	repr->dst =3D NULL;
>  	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
>  				       ICE_FWD_TO_VSI);
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
