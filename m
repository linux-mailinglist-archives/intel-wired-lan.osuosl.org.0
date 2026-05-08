Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2A0AEI8C/mkTlwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:34:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 842914F8C18
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:34:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B662084431;
	Fri,  8 May 2026 15:34:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34Tf5NqH0tX0; Fri,  8 May 2026 15:34:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6C7E84434
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254475;
	bh=i4iZY659FM+gj3qVYJyI2OwyU5QnhL3s8CmdG+zlqz4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G+OphoZLACpc770KNxLM9bDpzZFYNU0qTSq28znefRpbQdwq9pbCnE4lH4sgJ/Hx4
	 MW5uWgkDZSaPWIa/l6tlqbzt3Rd9m3YIhH3kyTNfXlwwQm4IqR3EvFKBrPn6shz4PM
	 7R6ejo5eGhNuQlHsuvWMv42afTFOS5fgKvJnuec37fAvhdjc5DLqws4og2IpeTFKk9
	 /Bfvl9y2XjZYYztN18dG02n0tIOcFHxfLpDDTTkren32AIso/KlHQQlDZ0lhDSp39I
	 fx2cV2+0EVid6RnMNmwZr9EIYQNBLo/02jrcMjgBGDQHSgfqoEfN6QR6jKAisEmIDy
	 fJNBPs0G7RfIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6C7E84434;
	Fri,  8 May 2026 15:34:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 12620358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A40D8440A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:34:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l4GZfTkP9tNj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:34:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 673508440C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 673508440C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 673508440C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:34:30 +0000 (UTC)
X-CSE-ConnectionGUID: FrSSKyYUTRqrfrkg7gwTCg==
X-CSE-MsgGUID: 5VqOs9pfRFqmYK+VGEDvBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="81791028"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81791028"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:34:29 -0700
X-CSE-ConnectionGUID: d0O5mD/2TRu1kV/kqh3jJg==
X-CSE-MsgGUID: YTM0Y0q1SGiPKx0DINyhMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260527782"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:34:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:34:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:34:22 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cynx+ezh98ZotUOyS1FL4sEzgVfvSLgjANOu96PsaOdEhD/ZpjCpcRxLoBM+a6D+6EDM5W2Lcj6/MLQ9JY/k3wxx6Uua/qREHvWAu4C8dZVDGWYS4iTc2YfaQnDYyI4NvaL6bAdm3AwPlb9/quRqkB1y6b7KmFeXP8nHfYsg6ERuAmQI6dp2H7y3j0wP7DSwFnJpts7AJKDiNn+jCnFsSuphPHhl/jSZPhSR9ueqhrBsBsS5a75uIqBm1+umMtuk7NKQt/wd1fyU7+Bb5KvPvJIi/Fwg3TpOjye6eHtHO2S2bgM0GM3+gLgKxUDxfxQ6P0qnlI7vXsOa5RbY3hThRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i4iZY659FM+gj3qVYJyI2OwyU5QnhL3s8CmdG+zlqz4=;
 b=mXvu7Be+Mksu8b7hSmckFtg0kY6U1zhvn05DQadghcUBax6jtOrb80Peu1EVgBa5oHphzUOEnXkLlPmR3evxnTYmmx77akVjO195yR2HwDJEvU9d81bgNiLP4T3sKy1Lji7HVdDNevdLcMXuZytnlLe0UOgxSOICMjlMMWQl3+oFjjafZdRdpw/E/mMaLBxoHXuP83s+oxZhRgceBKvRJK5LVG6MSQ3BQMWmfCjDyLUeYSKSP+Mnogi3nSPMtK4x5SH7lP+2GYABdcrWLVfXB9/Ri7jBsCpR33OVl8nRZqMaoed2zmmD70w1wSTc3Z+rJQ4SbtRrx0UAWYWWRmnAzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.19; Fri, 8 May 2026 15:34:19 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:34:19 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/10] ice: reorder
 ice_flash_info fields to eliminate padding
Thread-Index: AQHcyL6jviEi/r3v5kiBP+El3HvxXLYEbqbw
Date: Fri, 8 May 2026 15:34:19 +0000
Message-ID: <LV1PR11MB8790CB0B7B17AFF85C0F1206903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-5-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-5-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS0PR11MB6544:EE_
x-ms-office365-filtering-correlation-id: a6602b59-9733-4cb7-ff4a-08dead174544
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|38070700021|56012099003|22082099003;
x-microsoft-antispam-message-info: bO2ciUOtcORkjY3Bnz8gTigrkn5zH6yhF6RZHIWwAxZQEExN6lF7HhQpDV3yAfCqQj0wEb9LDlTFQgVBaKFTKoITWtweb3p+PBe3sNufvGgxyEcB4XHKB4wnLTpnQ8Zg/LpE1WdDPGJsSZB/AuRrfkcmWGwHof0w3n8uQVDZ3UPkR7lGngjpMs/+3wrvtmqgzFDr+Dn4rrx3mc/NWVxL0sdJzTkGqmqM7ZIGEXu+IjK0O3bEcHkVk0NXqlrRJaWTy3p/i1zBf5Jqgzs5RLUHHJc87D+DpMkpr9qOY2U2yXiotfvRYlMw4LVqT92OzF6wpMnX7h4ct2DVSWF+WQgpBlh+h+xVdH/E+3EojHVoiNyGoBysOl2qZKwc8rZ6sBjIMfSJhOSD/zYi3pziWP2/tGOpEYnUOzPQiwwDx9UA0gYmaycYyxHW5S70zpQ//ZYwPIXC9niiznrnLJdDN7ZIUi4tPVXlz2DP3jVBvOg4UCOW8OoF8wKaT/b8GjoulvqqbzhwUPqB40px2vFLAxt8mBmVlm2kFquuNt5RVUHTdPcFjaBIqRMUPFIkf245Wq1EzlGnJ5FYrCCn/aFOX399fgJHsAIZFcFdfd+27n+hT6xZ18j09rxGcsR4/rWMWMpiCcUr2ANeZYQymZo316c9lCcivNkfzcaChuXz7uLEAtR8DuNS18mf+mQiyFUIRj8sLx/njoxsIwMVmLoxwA3B1fTYuHX1N1qfXN1zkt+VKaJjxaGO1yA57oq3PzduOvcz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(38070700021)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cGQrxywGGUa8sm82TtoPC67F+7SjOm24FO/+Ln876pNW/PoDVtZluiLFAAC2?=
 =?us-ascii?Q?ZQQ0dQujHJNuw97TN4yJmcq+JF+fLk0kbix3ElyC4BUfMxet3xRJLyFryLMa?=
 =?us-ascii?Q?I9Yfx8kdYtPNc1bin/PCXaRDfYEJxzDRSGpBregsSQHqevIifwVRdKDH4jis?=
 =?us-ascii?Q?yWL6rkzQK/BwlDk/BlEDpPCZbCdpoemlm03mIY4VuwEkY/g7L+0A9It/dbTF?=
 =?us-ascii?Q?ALfDQuhyP4JezfN3WnCv2BuWbrx8aYJ8K7mMfZh6SLfOinKtvhIiQrOAs9xc?=
 =?us-ascii?Q?EZWJp+vH5ZTkqyKRmDIr94zKB3h+aRI6McrYsp3cx63mw0OEu575MP+BA7jt?=
 =?us-ascii?Q?SBVgYmxk6T87tS7Te/wTKAFhY6d7A1SFLzK8PmLJRCmS/BcHZsYl1oCVzR57?=
 =?us-ascii?Q?ERnR5by2DhnOMwrjMi4XHpmV2voMac2TEjDuKOte8MJtM8rL31ru1MJtLpmz?=
 =?us-ascii?Q?w7RHN07L3TCN8fAmFsoq+WY2fR+IjhjkgkBFtSAVQ588woiZZrWmKPXQAGbW?=
 =?us-ascii?Q?2M9QcQyg5rbIfYEkby/VY59emnPspa8bQCvXIL5+eP2fwW7/kPRAGtzD3OpU?=
 =?us-ascii?Q?7L7sFHd+GOvw9WpeOuFqIuAuRV7HyL59e0ALHUAbhOPKqVH7xwDkPd59ZA0x?=
 =?us-ascii?Q?D0aKUSkvjD5OIFRe/WOX5uc1ItrQ9q8IbFIp5TEFX18lWe6c1x4sbZjPv0rr?=
 =?us-ascii?Q?CiaCTXBhYlUiMgWogy6M+STGXA8sWXD+oxl+MrjuLX/vVAQSC9ggPoiFhN+/?=
 =?us-ascii?Q?3an4vW7Vu6tl/LowwVNUXl+ZfZQ0YDrnulpooaVmJ9UlrCcclJMTh5oFzuY7?=
 =?us-ascii?Q?mhlUarm4MTtMOY28TUbfL/FC5PVb9gB7z05hhoYT5s7vPEySKyoOFOVuUNXN?=
 =?us-ascii?Q?LZTYKFFwcHMvcF1wL0syJXGoxVXcUxF9z5SD6aXy9Z7AAzA0Mi4UOCOZh19p?=
 =?us-ascii?Q?o4ckaLDv9qpJlGMvBLV3poL7PFhUgG0/ihc+O9tHv5pr8xkgNx0MiwLpqxQ4?=
 =?us-ascii?Q?P161RqTmTNI66Ruadp9auo+WRzAQjVUW9z8/YR437pLiQDWytJeSRTVkgd8Z?=
 =?us-ascii?Q?B8ZBGP1ThdaDePw9rUOJgkmUfcrw3g21nn9gpeMBJZZyWMTOEssnyChq+kJC?=
 =?us-ascii?Q?j+Fkdp1nHpv9/txUCek4eHpdyCVnf1xC/atZvJnE8WoqJR4r8naVbMpiKUAF?=
 =?us-ascii?Q?VWpHzO1SjEDUqCKWynHw/KUDdeJHsKdCYWyMdhj2WjhbYePVuy9GjshmGSBb?=
 =?us-ascii?Q?Kg01YYXOz0WY7+vEFPjIW53WC9ylLpNLMLmgOfpH2yJy85XC3sxAoGczXHvc?=
 =?us-ascii?Q?t5qUs9QXbOhD+Alyjj4IR8dg9uTOGkWtBZSwy2545JJo8UoShPQxN+ModKg8?=
 =?us-ascii?Q?0qT3+MTOOSHmus4mjwrXPQu6euDoGOclOJD5JyNScFR9SoNFKAIzxjJIo7y9?=
 =?us-ascii?Q?X+2poF5cNCshL0TNoAbeM/a6BXuQoB2zc4mhUUDbQ7ixxM50JlRIpYQMXYMf?=
 =?us-ascii?Q?tygm3LsGaQBDe57B6u7GTrwgp4ddpWAOYpvcKufRQQ9AU4Daq/GOyJyNcsQw?=
 =?us-ascii?Q?kvQNKJKCJmkbKFP0UD/q2HymsdU9ryR+5VsKuzZqbG19xuI7HF4i7fZYyjUe?=
 =?us-ascii?Q?YIJdbHtQ8g7JUdJjeSmO5G2lgquqtQX0Bh/4+9Q7YSB7pBBzvkpF5at9XU/o?=
 =?us-ascii?Q?s8Lp7nChMS5p5tTvM3FycjxTEoFeb8N4T6bGBcyVqOixcrv6xKkCi9TGfbsB?=
 =?us-ascii?Q?ZXKNyIDdyg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ArKenbIU3y/mdUjyLwM63oYcxHKH68QRAiNfKlwcRkZFh195248tycRnJVbbm8z/AM8AhM2/8zowCYW0IoBB4r5ubSp76ozHaHXfPE568O5BN3Mbx/EiqGtDaaDrlLn3MqcPoEZCrmVskgY0q226bEG5/gTPo07txDfH3BgLDelrmWWqi38G3LmiNsXqSt/UrcGQ4lwAC0IHgKksB08Dd7LJgqqE/6pCGEh/UUAuB6LV3lZQ8IUpYyhf+kMrOGAyhmMaDg9hAs8C3leKNqlv5zlCxSTifJXW0qYsUOkSJJTsMV7CEXnhaxMb6GbWTpHdAZH8aP/M2W94LgeMzFFvIQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6602b59-9733-4cb7-ff4a-08dead174544
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:34:19.1043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D+Ic4G8UUZQrs4vqcL2NYvEFhDstidT9oTO13CR02Mc3aqAIZ92h6do3mhmD43D75rEnTEYXNPEVONbx6IoqWvtG9ppd5dkq1x6zvrfbk3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254470; x=1809790470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z6Rn5wXm2UTIGS6cUCnnBsDIiFWMIC8lfTU+1jIz9yk=;
 b=LVMP1qx5aYKurtfzXUVPnSToe3Lcklh+EEkYpabzEeX86KN6dQ6CXx/e
 7jG529ojkgaDPkLrpfp6xLICuvuknz0bSqSwW6QunmOBFnSdy4ZY+2dAE
 xfGyeWJCuAn1QMP1oMfnGbvLRRIJA0JsM7pAr4Uzdm4KEZK0DP5bKLOy3
 Pwr7+0Aureqmen8ozAHOvUB/a76wkZcRuWU1rWs4nMgXVTN56mb28XHWL
 o9DBlpOSid2tX5Ftl3soXsQ7b5LF/MjiYeV/HD3b8ziSMdc7wIbyFmPdd
 o/x4W6SgaKUo5PXCEp8GgsrMWYlAmfhfKGG+puOQQ9vhBiAHWpF1BN2Ld
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LVMP1qx5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/10] ice: reorder
 ice_flash_info fields to eliminate padding
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
X-Rspamd-Queue-Id: 842914F8C18
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/10] ice: reorder ice_flash_i=
nfo fields to eliminate padding
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> The ice_flash_info structure has a u16 sr_words field before a u32 flash_=
size value. This creates a 2-byte hole as well as 3 bytes of padding at the=
 end of the structure due to the blank_nvm_mode bitfield.
>=20
> Re-order the structure to place flash_size first, which gives a better la=
yout and reduces padding.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_type.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
