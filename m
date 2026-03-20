Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPPIEPHvvGme4gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:57:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8833B2D6625
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:57:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FDF641CD4;
	Fri, 20 Mar 2026 06:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8cBqhXnc3ezl; Fri, 20 Mar 2026 06:57:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACB9941CDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773989870;
	bh=wBK6TnaACClbjpedG5uZHT8KZNCtVvLyWzyXVaJRi3Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=niVyXZjNHeoW6BcoAfyHC7Auzd7CSY+VfKtXuORaO9H9U8r+n0XtJu/xvI/fK5Cv0
	 kf9LziofIGIwl8YD5ZmBAbJ5Py27J/K95waAE7SstDZt3tIbHtFKx6Xd1yh4hBGiLw
	 nXWnCSqasftMRr7JJDs4FXznAVyyJY/D4SeO/viJzxrCFR6+2NcUOqndxHlcw1HXoJ
	 e6EHb7Suy5AjFHWSIOSkiSiNeiK26/m8/U7pjf+mA3UESgCLm6dMfmxJd+Eh7U77yd
	 C99LXPLImLbhGoCSZ1FC2KncDoLe1DgjX632NONwfmNwsjnSqlW8CVbJHY7HMvObhK
	 zxwrbWor2q8eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACB9941CDC;
	Fri, 20 Mar 2026 06:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CEF025C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EA96413CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:57:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p0gL3hMTlV6K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 06:57:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C044D40088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C044D40088
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C044D40088
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:57:47 +0000 (UTC)
X-CSE-ConnectionGUID: q24nh1njQZuclClFzeYOJQ==
X-CSE-MsgGUID: jySaT9k0RZ6Y3vXkEZJ7ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="85772977"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="85772977"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:57:47 -0700
X-CSE-ConnectionGUID: D8aybhPvSEm8FVDhz0flkg==
X-CSE-MsgGUID: RCYgjY1qQduNjrKuWiF1xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227330031"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:57:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:57:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 23:57:46 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:57:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T/byoJS/LZUUWbEp5Jsmq0i3qA8hGK8fQRxu6ddJ4GKY3DqZJrXc2yfIMdvtfcXsH6HsCvkgY5GU65uWq/8RfaRN94OAAwObZxYb99iBUg/tnoQ5fBLlYo0275Uk332BvFxxxWCwad6aQNw60fEMX035xskbFeAdmt2aJsoLnuTPYE25V/HNXCU0RRmp/U1l8E36dLWNC8aCTSWClQwthWapQnOjOrJOXX9sz34B9oss/8dGEsPcBppsgGr2B+Fk5fSInPGbhY2bYNAMBfSVfBij74dua9guatbjhuuMeMCWtFWvchYNLlbiJIn41ajyWgPY27lMNxeZq1x0bC2olA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBK6TnaACClbjpedG5uZHT8KZNCtVvLyWzyXVaJRi3Q=;
 b=G826lU4Jz6XzsG/g8AA0Rvw3aHIfJRBBpVqxYkHmlXjg7BmMX0PBMGzYtKhCf8X5YSTM69wk/9CSOaABCrY0a3dJUJXFxi3ImqAyK/i/dTJ8ozg6XXVrPcFx1yX8XtYXcHlOzdy4rZE6SRxpw1ynApr91zkG9YmmJQ39aGa/H2CX1KKNbNuIbRnH8L6k+MIGihSKMfkLlocTVPw9aRyKw60quHTb9EX9hz/PKUi7ValJ2vZy+Ket4p/yz6/+uH1E+V2iNteTqm7yI1jjk0gGz1xgeP6kqb7c1B/pM/s7H3ENI8PgI1sQXbo33Jw8l1Paa4sYcHmgwqvSXfXDLteSxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7409.namprd11.prod.outlook.com (2603:10b6:8:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Fri, 20 Mar
 2026 06:57:42 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 06:57:42 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support for
 bpf_xdp_metadata_rx_vlan_tag()
Thread-Index: AQHct8RSXm0tskQpQkmjPRS90/G1OrW2/hHg
Date: Fri, 20 Mar 2026 06:57:42 +0000
Message-ID: <IA3PR11MB89865073DDFC1987A6445DA7E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260319171650.5815-1-kohei@enjuk.jp>
 <20260319171650.5815-4-kohei@enjuk.jp>
In-Reply-To: <20260319171650.5815-4-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7409:EE_
x-ms-office365-filtering-correlation-id: 1f97714c-ef81-43e1-cdf1-08de864dfb6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: ay0dLXUH/pS0rsak3wcAp3wvyY5n7mOnkcZiPAdrSn7KqzTquyRLNXnvrTulpGzWr4Zs3et7QigmqakgmlPqtseN0qbhMYQKEif6TZuUFn5zvsxB43ZPgRCiLKjnSmlplefJNPX7eybjI5q4hgBmSc0MnhnsgWHFMc8KoM/LEPlKlfEYp6TRUVTsbspYskTooFDpeOt2O2Q59recAEoLAyw9MVZQAQ/We5TDcmzY4bWUHJUfX3DqTCiddq3Ebfe2jt602IPos3rO3BvtipmcbRSrwKC168Tjgorx5ZiKHBFmbfa6G2BCSoAS+zVn6z/k5BTn2BIErK7Sk+bh8XO33/efv5m1/eGNrRIbhH727OZKxFXaMAHgSOReaeBkGO+65C/5ErsS74SR4+owP9vmfyZHXeOhKhSmFnruWC3U5ev9Hq6lXtyeIdrqQBtmoCK8YYqofrwDUJh8as0gId5JPJOQMZwOEXQBlaq0KyqRKKLmrSDKWaZBG9p02au1yK8jn9h3vNdf4qapD+4+EJinIuIq5j1H/fVzEBqaaEuK/trhCbi2tdZI5ILYVASiSktatPneAqie8Ssfb4hhQJVa84Y0WSJUouAFwTO7ccRh/EW5en4yuFE4m+TYtBzvM/yVShTi2/VTsAj89NIyobhA+lS5YcsvK30+sGiALHObtfjJF2ky6j6cTnYhpjSG74YtFLhm+FLWruKs/OIiFePQBaXqwZCAkmgh3qnTMpqjo2lbZv9v8jx4IBlH86WiDTo2zImXwWZBkBIgk8EeN8ieHneDUApsRh5NeDZ1pTWAxPo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pKdYHJ/tR3WopUdvvP3eUHXOvpbMBALdxxZommyU5i4t0vGa1vugdTtjsSYw?=
 =?us-ascii?Q?ESZcEiNU5iZDGyAhsmqpCY6+uR37D/42b+Nh0oI3Y/7rtGDF9jjl+vJw/ozL?=
 =?us-ascii?Q?cL0O+vxTsoSNzAlVc7dla1VAyVA/6YB+IWKlKUhV704eiiHJZZ7xal318D9F?=
 =?us-ascii?Q?eQOnfvSd4ygnMz5mHmM1/jq0Fs91K7jhyX92WqOJv460jdFPamcp/cfUx4gf?=
 =?us-ascii?Q?0u9OWmtmBOfpoG0fP+pVoooad8uuFyrqvINei13uzfksEULT3Z4uQzyqKgB4?=
 =?us-ascii?Q?MNIQ6QiWKw4u8tXPfnWU0Mix/17nzNV056IFare4jOY0V8oDPSRsBxG02iFt?=
 =?us-ascii?Q?rD4/rWc1eGHDhmwj8hKsLWi0af63n3SeoFMO6q2mhYrlJ3ie3YeVZRTzJR7p?=
 =?us-ascii?Q?0Et2lfcvVWXuYGyH/uLXHmdi+Jws4Rky8//O3eyjmCjJrg+7Te9FhkfblhXW?=
 =?us-ascii?Q?kb8w4b1cqj0o2B9NNhz5OaUnJ8wxGcH9V333qGAMqj8bTvwR3ZF3lC5NAL2p?=
 =?us-ascii?Q?ZJuePW9yASP53Scgo52G07h7xRhHsEVrnPkTIE74SsSatCVcwzMpO8fREdQX?=
 =?us-ascii?Q?D8mmCcIvlIpLH6jZ/UUkO23d1S5t7/1XOgO6Lm3/KlvcAEJ5WIiMZeqyTbrY?=
 =?us-ascii?Q?xDOseADaWy4IuShTJd0kEY1iDZE0gwwDrUVeN2weHsB9cW+qam0W4jehOTQN?=
 =?us-ascii?Q?TU88nKVc166Gwdur+8rnIqoJB4tRtbDVSeFGHjD3/9Kun1fzokNrmBlIPE5l?=
 =?us-ascii?Q?3z/QIh4HmARO/llY+ZKhfAGnQDpFFXRE9IhOumbSSl2DS3r7EzshTOiFK/30?=
 =?us-ascii?Q?GfLYSV4SiNZ2p5hS0GC4mdTVZenrnbru9dt4UI5vIP7sHKqtJA1b+mfIoYU7?=
 =?us-ascii?Q?iGTrS1DaXjh03xgQ6Rc1vdLD0jPukIuSzOFCwSqJJ5zeQo3el4mdEQ2twIlH?=
 =?us-ascii?Q?ikWbldw+7Ol/5akBvV0uVV8uAf1z8DkKEsQSw7GM9qI2pYaM17muwCCawJ0i?=
 =?us-ascii?Q?pcnypzCAWfv4Nq8AGXjY3O0+tilfLRA7Pn/uk6oqYW/oUMk1fyiykyPq4LRe?=
 =?us-ascii?Q?ZrcFIdf0nxz2oaxlN4YRueXqwQYE6SBLH59Q1Dg4ZhcXjVvVXRIux4HRhW0G?=
 =?us-ascii?Q?InxFS7GXajpdNYSYFmZIAzlGARHz5N7xcdLmoy541Gee9O7SRnHGJodRv9d/?=
 =?us-ascii?Q?Y82lU0aeknHT/wm9i0D6TrWmagWKXUF1tiPeIbFtsXnZPZkCAXTHYy3QJkGE?=
 =?us-ascii?Q?o8vYkF6lJNiuheORPfsf9NmQkWeeHhRSc5nZF054i6rq0Nj8Gizc8ukytpzc?=
 =?us-ascii?Q?cYG+lgSPgF9pH6XekpxuDNC4+nlk9gJdLxx6G9jiAPInBeAe9jlNEw2ronf8?=
 =?us-ascii?Q?SbUcateY/I28s2AJ5DYjOWrojkDgGgVk/rv7NNB5sg2gcA9Ypl+3va+oTZ4q?=
 =?us-ascii?Q?Bea/CexOl2Nj7N/innhRurnF+eITTPNAdsnaHslShit7WqA2URIcJPOPypNb?=
 =?us-ascii?Q?eb6896TmIAhdWAOyePUPlw7ZVpviEz/h3Y4Nh+bLhXcWwSuJfAlPyaNEKAw9?=
 =?us-ascii?Q?3wkKJ/clSaDCtrbM0RGx6yki8Hhz4KF/RWjGxtSc25tXoUHGDYg/bL8KmQeN?=
 =?us-ascii?Q?0KUre2IM1VeqQ/1Sn6G5tNWy1krG59fNg1GmGMpOfET9ZSbrUWWHaPiq5/Xl?=
 =?us-ascii?Q?sY3UnxAmFVU+iVLscepKz27IZlc9PYpmm7hCukiKZf49kWv6qKEYunlVF5gc?=
 =?us-ascii?Q?8pG8TXguGYI9o8CXg0+ohxcOFYIPl+E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: J/a4v+RfZzKk5JPEn7/CY8trlz8TRoEHo441yRaJRcCXo+BRgnZF36El+UJ+VBzA6TyiB+eWGAxjwVJ+ul/PGIL/wUUA3FXL4UBUqv+QdX1fpcTHos2ZRt+N1nS6CQvvuxnzLp35bVegCJx+0u4kcNVHemRbg+KihlSVVmrHUmhGQcJoQJE0PPnjLp6GzseFjf/vJLFhcaoMGuT7ee302wTSX0NPwgAUqlfNfbjquoyuZLnmyPLmCZzD3El+KCULnjuBKaXVj/BfYqT5Vk4inFFCXkTz0npSp81ouiH4vfNxGFbNsJQ5JAXDVxMQYFilCXN4rmYHUvZC/S6A32jDcQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f97714c-ef81-43e1-cdf1-08de864dfb6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 06:57:42.1470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bZPeeqeLImfiwTdC8xGjEQ6wfEzKT/pcliuCzPymwcoRumhQWpw5MPStDHTIDIxJum9zGSsM275zyScI07FA3auhGZkDJ3IKcCBbMN3OxD0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773989867; x=1805525867;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/ngHH456VoXo2i1HvBilMjmPYQOSOs4Swd1FEdCUfcI=;
 b=b63Ec40TjX6HGj09FLjpZMV9K8WCZXvs0/qp7G6XuSdNyf8XiaIfBB5r
 hjPy+8xkDkSNnFAZDDcU8rXKZMeEN/w2pj572TA9DvZ5lUSDBtQ2+XF8M
 s8Pwx2iR67rHwvMqabdmOfWtVtIjsFRnngWR38gVguJUs4rsuJeeSxIIe
 XNL/2KKI+6E/wG9yyp0CViM+hUPf2G+Dp6EMU142jm+Q9IwSEICVJt0C6
 e/hUQ0xSZ6wtp6yBwxlTu+orXR7/ij+VX7UicqxNAbBCiDuxOYMKx/mzN
 bIZwardnWOQOK5qDfyA3KhG/pJ8Px9KAyxdyIwbPCNitIDM+QUeutt9nl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b63Ec40T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support for
 bpf_xdp_metadata_rx_vlan_tag()
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,davemloft.net:email,enjuk.jp:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,lunn.ch:email]
X-Rspamd-Queue-Id: 8833B2D6625
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Thursday, March 19, 2026 6:17 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support
> for bpf_xdp_metadata_rx_vlan_tag()
>=20
> Introduce i40e_xdp_rx_vlan_tag() which takes the same approach as
> i40e_process_skb_fields() to extract the VLAN tag from the RX
> descriptor.
>=20
> Tested with X710 adapter using xdp_hw_metadata, and confirmed that
> VLAN tags match between bpf_xdp_metadata_rx_vlan_tag() and
> skb->vlan_proto/vlan_tci.
>=20
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6b7e34b16a8d..3749f32ef95a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13610,8 +13610,27 @@ static int i40e_xdp_rx_hash(const struct
> xdp_md *_ctx, u32 *hash,
>  	return 0;
>  }
>=20
> +static int i40e_xdp_rx_vlan_tag(const struct xdp_md *_ctx, __be16
> *vlan_proto,
> +				u16 *vlan_tci)
> +{
> +	const struct i40e_xdp_buff *ctx =3D (const void *)_ctx;
> +	const union i40e_rx_desc *desc =3D ctx->desc;
> +	u64 status;
> +
> +	status =3D le64_to_cpu(desc->wb.qword1.status_error_len);
> +
> +	if (!(status & BIT(I40E_RX_DESC_STATUS_L2TAG1P_SHIFT)))
> +		return -ENODATA;
> +
> +	*vlan_proto =3D cpu_to_be16(ETH_P_8021Q);
> +	*vlan_tci =3D le16_to_cpu(desc->wb.qword0.lo_dword.l2tag1);
> +
> +	return 0;
> +}
> +
>  static const struct xdp_metadata_ops i40e_xdp_metadata_ops =3D {
>  	.xmo_rx_hash		=3D i40e_xdp_rx_hash,
> +	.xmo_rx_vlan_tag	=3D i40e_xdp_rx_vlan_tag,
>  };
>=20
>  static const struct net_device_ops i40e_netdev_ops =3D {
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
