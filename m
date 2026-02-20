Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AI1QDh0pmGlqBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:27:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A98A216636B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:27:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A9AE83DD0;
	Fri, 20 Feb 2026 09:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L_KlbTTC6JRw; Fri, 20 Feb 2026 09:27:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFD4B83E34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771579674;
	bh=iMqC+FJ81QrdhA2OhSbyELktK5di760B6QdTxDAV4ao=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m689pDeCjztp49DaQv5bWsWWNqDnHQX4bklmqtAESuKUnUCgOEtG+5q077cWFmOKb
	 Vni50QFPcF0yT/HjEG11MHyjbhIrXkZTdv2YWScTT/eGElURUNfhP4ZTZblMbfWn9P
	 ILofdmmvIuSysQeJiKiXD0Z8/gTRKJ+8iy1AmY58jbyW204dRfPMRgdyEUAhfXQUBc
	 0X4aPh3VbbroGpfquDkaPgZeWyazGyNxtSIT6w7C3ZphD4zSMW+PoQQb2dVVTDIAC7
	 n3veFOAodiRz8gSrvUvatfKf2KeE6LNo8KsxSoOT7ylaHIdUjerQ97dM/XehJG2J8r
	 y27TNge9mmgBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFD4B83E34;
	Fri, 20 Feb 2026 09:27:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 70C2D1CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 625EF60FCA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qd5jnVTmUi23 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 09:27:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8BDDB60FC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BDDB60FC9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8BDDB60FC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:27:52 +0000 (UTC)
X-CSE-ConnectionGUID: GcouZWnZSxKbFNxT8HsnMg==
X-CSE-MsgGUID: HLT6kHOGRe6rHu9THBtGyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="83298029"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="83298029"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:27:52 -0800
X-CSE-ConnectionGUID: V+39maxgR0Or5GpXoMxTEg==
X-CSE-MsgGUID: FgoyqXHARPCuEjVV9hi/1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="214654434"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:27:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:27:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 01:27:51 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:27:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=og9usy0j8oQLm5jGzBN9m2epKRzW7fFRJztwsluLQ1okwtkT1Xgd9OZq5OgUfheJK4KtmhUXYdZzpt1tT2og/mG/qRfPfgvhciLVwB7+6w7C1nLHoylNxO0xcbvdVb6jxuWGxYfKmf645vJf6cjgbj469DFwiJVMkoTWI2APckmW06AdiyME/KINq71b4XD1/WirM3mJLy6Xo46FvLKENBfQAEJB2gvYvi+Co0faPsTExHKOvWnFaHRY7JtRyxG6nHmOp+PBXEyDqmStarozaSv28/2Z631LdFy7LoLK6uJqivBlEUanhX8OxFjvvYhTsLAq6jRhorSza1W3i6P0iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iMqC+FJ81QrdhA2OhSbyELktK5di760B6QdTxDAV4ao=;
 b=CYfPfexKk8O2906SWrTogQEQgYHhwM7KtNIpvq74NRwUD05PxQ4m32ONIj68oXRSYbaVQ0k3Wx/F3Z1GqLdwJm4y/TRzVRnkFlt527xyPS3YQQeNroGeftmkKr6boAyuSQRQu1tTz9+inGwRf60sAnCQxphcFhIAVckTt0r+19jUNujHmHTNpwslaf2TBzGWOcDLCrImpQhb6ePOC8O6Adiv94PGy9VjuWzdXQrcIkxODQ+5iCOIYFxB2fGDKkQMdwErpFowEs92JmReW095hhSo4nPFLX+zi/4cOCrJXYvQHHYs+EdJwdJDoVmvECYxvANy0FNTdXTPVEVXMc+Jog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB7086.namprd11.prod.outlook.com (2603:10b6:806:2b3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Fri, 20 Feb
 2026 09:27:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Fri, 20 Feb 2026
 09:27:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Nowlin, Dan" <dan.nowlin@intel.com>, "Zhang, Qi Z"
 <qi.z.zhang@intel.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v3 2/5] ice: add virtchnl and VF context support
 for GTP RSS
Thread-Index: AQHcokqyp2QS40V/tUmzeZx46kMdELWLUamQ
Date: Fri, 20 Feb 2026 09:27:43 +0000
Message-ID: <IA3PR11MB8986F0CABE445F082B82C62FE568A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260220092409.718632-1-aleksandr.loktionov@intel.com>
 <20260220092409.718632-3-aleksandr.loktionov@intel.com>
In-Reply-To: <20260220092409.718632-3-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB7086:EE_
x-ms-office365-filtering-correlation-id: 5f8ff064-e72d-482d-771a-08de70624d0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MScQVMdkoWMYXHr/PB32l70w6Wd3479R/BesOJOELr1r67+/sHBG/AeCus68?=
 =?us-ascii?Q?8ihDUY83bmtn2gaaKrkUqvop3NNnl/V5wVQEmIJPprcqbmaI0ObbpaeOyxex?=
 =?us-ascii?Q?vZ/J+rJ6FebzYakN95XhA1fGnRyN0OBY7sirBkWHZ+Avp2gZXq4cV8eqFQIx?=
 =?us-ascii?Q?ewXLTdvgP8vaaMWl959sQLecbhCJGI5xMvph/ZCijt7N1E4TWSEjgMQhCOrS?=
 =?us-ascii?Q?htK5hJQvPdfJRfiZqHK9nZHvHEz+gitjLWSmpVK90VYnGTgcOI8/z6vRZtfk?=
 =?us-ascii?Q?kdJgu5VS+SRDG7nxoNHLjXfi/2eWB+sl+9ybBllkdBR//D6QdWQqnD4CF4yy?=
 =?us-ascii?Q?DVr/+QzH/pzBHmvQvD8Q3czqEutetdD3lIoNftfGHKa4fNmA+xOYqF3i3FxF?=
 =?us-ascii?Q?gzuqsirT5TfRYLsoBDHGItxONOPso++UAz7ZAdcTVrHjBuRcA1hBfwSsj4wg?=
 =?us-ascii?Q?qOOLbxLwPJ+nfiVEzHN4QQ052N/fZy8LNInyoMqS9542I1wsslv6AXaaLshk?=
 =?us-ascii?Q?wM/4mKYMfXeknoEOqMhI6IGITeGjOkdtNKl6Wbxh6jV7bfxGzZpYE7/hl4dy?=
 =?us-ascii?Q?+tsQkYNmboUbibK1Ktf3o3cpkTELIY3kh6+MwOY58kIMeBDzd48/RTPYVktc?=
 =?us-ascii?Q?/wYRqc/7iSRMo5gtgKMH/ZeHoyB6tgsecNHl/aEsKGiaR21w8eERB1TmL8Wk?=
 =?us-ascii?Q?uA7drtOs95bmhrxXcB03g9783aM2oQXhKWU76qWzaQTMYKmVyvKgduwyTYvJ?=
 =?us-ascii?Q?iZHzAuL8085sEmqq9EJiv8P88DJ1nDL/2JEUfrXNnMV51DfCqy34ppoulcam?=
 =?us-ascii?Q?d5rgAutJly6GiAlmgdE/vqmvgOnAfg7yIQOFMCt6212GAJSjf0wyWNeDTpo1?=
 =?us-ascii?Q?UJtEXOOkzLxbYEg6ax+9y1pVQ5S9lbE8eRYRdVTqdsbFZCuphkx3CcPZcxwr?=
 =?us-ascii?Q?Fts9ZhPvSkuJe8Bjwzz4otnGIvq3YLo+PNyrNP/8hNPfv8kuiEflCC44kOHQ?=
 =?us-ascii?Q?kqn6KrxKfcnSf6/ht6Khe+IuBq1OlbvYqmiYjj3lPTN/CfE7/lPx+PXFuMBK?=
 =?us-ascii?Q?WuFkReI7J4EhsegrDtN7j0Uo4d7lZbZW9cdTit19oEB4q3rCcZILXUl3dnqp?=
 =?us-ascii?Q?7W0SUnVN7a2qEd7DsM/UY191LoeLyHh+i2KZSSrJwWAzZKYOMe9et+7wsoOb?=
 =?us-ascii?Q?b/3m58KSmTai0xjxZsD8KyX4CAmyvrC1hG6WrjKdbPjwJ6ixbGiQ8tCCOe98?=
 =?us-ascii?Q?c8+8xdDMk6hvmFa6tjl+dtZIVwcsPqrzXCKliK2ZMAtjEMc840z9fI410VuB?=
 =?us-ascii?Q?VOwfi74eg2KJAyoZ8b+y92r03XF6bicw/GW79ykgrYMIkDpQVLiMSh8+Kgoe?=
 =?us-ascii?Q?t0pNbnEaT6o9e2hsRMpJHXzZINTyx2ntE/oQvh8Sj/dF34lIYb/LIp4C9J3L?=
 =?us-ascii?Q?bHKgk3GYQwXCczRs6SkqVwp6ZveV2rXVOBbkN0kYr82G1E8S5y1qCM/cB7Df?=
 =?us-ascii?Q?ksMpYiE7sTndgHXqKhjyw9MTplqOYzBy/XDOaVGTYhRQ35aCMJOqY9SwZbeG?=
 =?us-ascii?Q?7h7FVUBhcjfEqyl/AGoYh0fq33FIdqR+/NUp66XSaer4iM1i09h9Ck89AnsW?=
 =?us-ascii?Q?h3dc/NyU0sYULnsXr1OMGtA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?btKAvVANVPNVanKB1I0vCK1hjet4jme507X6XpdDea9G/NZaR9wGzACZc7Vi?=
 =?us-ascii?Q?+eGVETdxDdXJWS4TtTn1GMRvNZNWzMXiEu68Jkb5iYoXw00RYG+L6Kmygbsc?=
 =?us-ascii?Q?HdyXmb6j+UYgkeCKe7qU2izdGn+KwVthdx1ieCUAieE4LPkX+S7WWAlpQkxB?=
 =?us-ascii?Q?Z20cZreWNiMEIpqMX8XEn1WRirsRz0u14X707j6F66mILAy8HaxO2HRUG3LX?=
 =?us-ascii?Q?Tw38XWErJdIoH1eoSF2uhJ3uWd2nz5FE7n17khSTDKig9T+gyP7u3u6gO9X9?=
 =?us-ascii?Q?MdAsg6hkCpAcXTVtzQoFXprlDbSfU4K6XZBTtNg6eT7I+BUYuThLYncUJR3J?=
 =?us-ascii?Q?55NL/hbLCqng6/BGYe2JFE++Z4twKQY8H23+B1td1bcdA7g/tjtivuRyjh4F?=
 =?us-ascii?Q?V7wUl3rEqOvkaa+1tc1+Dp+AmEYQC2QVmbAHUzwWDAmzIl/WFxlYSYxcLXr9?=
 =?us-ascii?Q?iK/KJNXmt45CdlKCGzggFfYosH1E38b+B1CcvI9tVhulP3gbFhxXYpC1d6j5?=
 =?us-ascii?Q?asaumnLuJSEzHZYpDyHM1tcmd+Er3Bf8Bg8AhX2Ah32axsrps+hhB5HUWRHX?=
 =?us-ascii?Q?95OMzjKuytYCMVi73RKBU5CiZDfovbTHgLteSgsOSeY5qrpAQ15pxSYt/5RJ?=
 =?us-ascii?Q?CBAcZFF7KTk2kWxgjSROZm92pusNC6GIKDrDmxnoUzElsG5EUjpQrkkBeRar?=
 =?us-ascii?Q?TOHRCdRM1k1tNxdsFHlgoHAj/VtAzirGbinNmu/OM8Ag/E8Ace+x1zTBQoF7?=
 =?us-ascii?Q?koXHfNL1JrUE7c6OeYyzK4Ehw1xAeFUZDXPbzoJAz9u0oATJYPoXe5z7WRJq?=
 =?us-ascii?Q?VFr7Xi05auYQ+v5C7ZFZQAawozrAUm7fi4fzYPRlok3ipxF39tfro8mIKrJi?=
 =?us-ascii?Q?LjK1DQuvV/SJZCSPj4cZvInZKs0VSUluQzpaqIPmjxqEkC5XFXRrCOqf6xlp?=
 =?us-ascii?Q?R0dxmOp0QvWuoliVy0WqJYW1LH00K8ogzvDqcIo6L1RShlyuMkpenoZ1tK76?=
 =?us-ascii?Q?QvfYQ9j/dw7oTsPWfk+c9F1bwsTfQC0UWc/jGKzaPVpTBexA8nE3Oljl9SHg?=
 =?us-ascii?Q?5xUQ5NTvhpIB2m1XgB/ADvvsOpTeQgWADuaujaTwUUcRrSSgIIIhKdcgU041?=
 =?us-ascii?Q?0VmxM57BFYklrI3etloeh+w08u3hL9OFmU1c+1vLBYrO0VEekFVa2W+c4Nk9?=
 =?us-ascii?Q?sGg4t7DkQzF9HJcaXKlX4shQ1A3cdNBJ82EPIM4jAYyYL/ZYD2AQNP81ZDGM?=
 =?us-ascii?Q?ZUTM4r+SbTi3HoKOqZp94VxVyC/+Myq6QuK5d2jyBNamp7Frtq5GBvnptgLf?=
 =?us-ascii?Q?H2UFb3siSII2BvzcJWLSTpEebpYIvfFsbzjBEjAJMLjf63mfCX6hhRfChGp+?=
 =?us-ascii?Q?N+uiges6TfiTLCEPe6gyim6zvWPfKRQ+UbHXnCWSueAYGK45/b7/w5rNyj28?=
 =?us-ascii?Q?smSRw+b3FsBJhvuNenJyARPLfx70BKwtsPlpHwa3qYbaQCfiVsdcYZ3FBhxA?=
 =?us-ascii?Q?zonRnLOtkx6/4YLhfu8LWEt4damzdUr6lANhVWKqmkkZgPoVm8vIXeqRN5eZ?=
 =?us-ascii?Q?lN6SmnH5Gcmn8NijV0IGs7QzKIUVeKnL4OqdkkidAtz7A8zCRSvTitSohdht?=
 =?us-ascii?Q?eIGAni1WLAxGZc/juLo3ygERQx1Y9oiCAhtksI+hYN3DZtO6U8pI5JH+z3x7?=
 =?us-ascii?Q?a7ka0UdQPCVb4S7Y+unyXnpt+zBPh7E4RRLPbNVt1iKTtYyDiZ1IUTGoE4mZ?=
 =?us-ascii?Q?BBK9frl8tw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f8ff064-e72d-482d-771a-08de70624d0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 09:27:43.4617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VlvjsGNY1bg4Cy6icPNVj4ysfA9ouAdCEVOvYqEQ63wL8RQtcUsiVJ8b3wBxGq8k38aG5RKG4wSzg3qXAjkS6rbJS2pelI8yNESBrw16/EU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7086
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771579673; x=1803115673;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iMqC+FJ81QrdhA2OhSbyELktK5di760B6QdTxDAV4ao=;
 b=ijcAaYzLZXGtqAzA9K7ohHQQnRsDrEpB7XUrL+HD2rLDr0pNq0WyCtK2
 Iz8n1D/EEewqLFVSoagx3ihn92nOLD/ZTSlOeDElgNhOM81p59Iti8zCw
 MadsyyiOq/P2priY0hLLP+AvAeBQUVUSwt8SqM17EmhHb7VSLVBC/T4oS
 CqzI04Pi2BGWAYOPqVphe+vv8ToUCt21No8N51nGgoNfeCUB39+85uiAY
 5pMz5tDD4foxual/SeGVzeL90fNGwNGgRG/AiKhm85muZVT1y2rUTAf/r
 lMNMPvbE0rzlgIs/zNNtlm3L9G5Azo3B+4Pvtl/2+y3Q/wnmNdI4Mpzgm
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ijcAaYzL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/5] ice: add virtchnl and
 VF context support for GTP RSS
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.980];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: A98A216636B
X-Rspamd-Action: no action

Please ignore this email.
I had personal e-mail issue.

> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, February 20, 2026 10:24 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [PATCH iwl-next v3 2/5] ice: add virtchnl and VF context
> support for GTP RSS
>=20

...
