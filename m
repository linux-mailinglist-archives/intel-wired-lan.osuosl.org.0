Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMSXCEcD/mlYmAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:37:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5874F8D3E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:37:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DDB441C50;
	Fri,  8 May 2026 15:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tbHNT4GmR8_y; Fri,  8 May 2026 15:37:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EF8C41C4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254660;
	bh=hEt2K3N3LoFHCAMExkcDcCrGf0h+Y+kXWlUQrd1vsKM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fn2/tlYq6qigbgm9X78AMzflXwDzNHjvElyQqXcd/BRAf70iQJU5pilDYxP2Fo8Mu
	 URRH/N4zopLLR4YQi9qUHm2E6TMyDCVNNFq1rW6dCO4udhsHPEuHVq0Za5soVc6CRI
	 XnAsMqZO9MPEiQlpBkiW7LLCUJAmYOpGApKbF/FTQVZfE5PlRbGUVxdWUXEpmIdm+u
	 +Qyb+SldPiq3EMRmrkiI+i+s/g9TXfNdSHp1DT88xhTeEmMVAeCmIsTGqZrDfqjACJ
	 xparOu+69YsLemoPXFaXd/O/U5xubzTR7FKYB6al+fNxuACVHEATSsG3+kML+w7yfG
	 MonfThSl+x/cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EF8C41C4E;
	Fri,  8 May 2026 15:37:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 65FC0358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63C2761675
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:37:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5MMr4UhtzVLa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:37:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B20806126F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B20806126F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B20806126F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:37:37 +0000 (UTC)
X-CSE-ConnectionGUID: i4pHsY1tS9yEXNTx18Engg==
X-CSE-MsgGUID: pC5NYh33QP2TkCtFACTc2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="83096171"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="83096171"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:37:37 -0700
X-CSE-ConnectionGUID: qzUy/ZfCS626YbWJT2yR/A==
X-CSE-MsgGUID: Y/N6I90wRkG7WpBnrlmJQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="267172076"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:37:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:37:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:37:36 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.19)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:37:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bUw4HmpdZSP8aYnzCJ5zYilCBaqoRIZ30A7x4fKokjBqJtRfZUWPwm7NOa1pJtqMzE/uSk/lQBy69BKlO12l0ahFq1dPy3cfJ7mmII1ZLpzHwrFEeQF/iya8j34ghxuorZFx8MlBT9ysVtY0jWwv9gt6jCUI2eTKamlsiWdkck1YEOi9aROn9likF+C0H8WAXHgtUhl/oAd/42+G8cYUfo9hnIMj3RHhQMVfbFCTT72dWB0ggB51W9uUK2JWZoV2gA66M9xSJYnRSLwo3e4xAvAqvAutQ9J1mVlY/4q98AEv2EtqFo4T2CGUpmCcaec0jsZjX2zjzGYiZWvKg9kMYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hEt2K3N3LoFHCAMExkcDcCrGf0h+Y+kXWlUQrd1vsKM=;
 b=Y7RkOReDiZJqL17LPudGsP4GlQpwmjySccr8lJzMEpu/03FGF0GgLqwYnKqahRkqDnLyMQuNBHctKy7f39srefaD4fMxu4WOwm9He1tbiR3PCje3kOdY3yLlypmh/M0fLfsTFqLdQ54BYKf4Gljsyayu+1zd0/mhBRq3h194e/YPFQMCIaBrR7I7xzZdsN6s0Oahyb4eyuZkL60sg8Mr75Xplrtt3vPz3TiMW5MKl/CCcHvGVpyAlZ8oa3YRpl/HSdKOZCbmGASkNAlfSCr+5nakJQ4vY8PjYg6Wbdy+bTwNEuiVk/nsDlrLb5QUoqY0t6xOHFvRtN/AXkieg6SEYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SJ0PR11MB5101.namprd11.prod.outlook.com (2603:10b6:a03:2dc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Fri, 8 May
 2026 15:37:33 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:37:32 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 8/10] ice: move
 ice_phy_get_speed_eth56g() from ice_ptp_hw.c to ice_common.c
Thread-Index: AQHcyL6yxyohUbzGZkKe3Y5jzaHSGrYEb4EQ
Date: Fri, 8 May 2026 15:37:32 +0000
Message-ID: <LV1PR11MB8790000674616CD588BDCD9A903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-9-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-9-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SJ0PR11MB5101:EE_
x-ms-office365-filtering-correlation-id: 22fe2b14-ac9f-42f8-ff37-08dead17b87d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: oIMWoHCQF79m9Xy7to+gviOTPh1kqpKCL5/aQh5eYyxuzvLo7DhxCjBA7csSqJT3sLI0Tba+f37uOUj+atol7RnKzgmhglgKL7qLjG+UvUPmqmjUEYIi1ks33SywZOjTcZFVNPTvJIAlYf6JiHPllsvZOIUj9qedZfinhrsn1sxTi12i2psvdHQqSyTENI8xU10c0Oq4VyxiJJGbJqVLEi9kAozODd/MXCCPHUrcnDuZ6oNQnkX1OvXwJ8GJM5gpuqptgz2Q6W3JW1JlMdSFRKl7V/uX3DnbLHBJtW1QWnzL29lrM/62GKTzUsS8MxFIsdxxl+tQgKsRba/DOIS5ojCi99rOxNcLFWX1De8nw7qE4xCkU60qgvYFsm+N+1ZBQXTEvewHGNB+hBSh6tAu5t4CaXoGu/vyeguJjHKW1US18eKpyMCsoXicbPVnAglkg7jOeqfqx1mUEDELciGeZq87LCW8rt2GdR7W+qpJP8RWkykveyah2+GVhj9GqZkNy8tIN37Z7CChBibIA38viq7Nt1IqdkcfqVPthWE7LNcOlxg+GipxtfFPtf+1KsC5JXrsxdDxUmSOJm2fpxIjTcoimOU866KwraCj7tAXCJ2E5N1HllIzZCgcV3+CYBO87SkXBO/kuFdbdysSPcVznyFREJa2mEDQZpSb7mMAU2xpDJ+2wG8vXKcOuDxgOUvsBG0KldVt5kN4L32vcSPcdrTSeH7KGxYBeBLFPRV01anN7jqVpRlfC2uJ/Lfn2Nk5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kV0kHjDc1VPp77IfjA3ADcUxzebbpfIzjOqLISAoO1sF5f0QdT3gRlGvX33W?=
 =?us-ascii?Q?1aUq+bfQ00Ut0l1tEjy/sLtKaTM2buBAdPz5/xD7cc71WUDhThh2XtYhbuNT?=
 =?us-ascii?Q?mxnCTdin9YfOaT/1Na9QvttXISPQWT3txJNuKbgGfGGlidnEIVCHYrXwJYt+?=
 =?us-ascii?Q?ufwEZWG6NffvlUgINr0DM77qeE+bZcSx4ThTPncqv5l9AEGKET4TSQXsCriJ?=
 =?us-ascii?Q?faSXC8URL1f/BwFYvsoNcEafUdnLezf4ZNm6Eo+PQ7WXIuCerUlKj0XUQpAD?=
 =?us-ascii?Q?mdz8SdZl38Z+vyItrEzFFGghfAa2ULX0HowyQJClxlqnDuFHnjd6QtMMWCu/?=
 =?us-ascii?Q?LRhm3FST2Aib8iYO9WgkdX0mWWQ3AXYg8AWqxUca8fVH0IU5gmmkEeNkrY2M?=
 =?us-ascii?Q?c0CbdILsWSmMAXT09g/Rg0AnMwbEaoKSZstBhxpyfKoIAjNfrBxntmcYYp19?=
 =?us-ascii?Q?OJo519D+uyAKe3tnyzZZBaiYxgIGoh3ZTHqjIQhI66rVp4jDxfxGiyBAryUQ?=
 =?us-ascii?Q?bEjdp8z8nsZtsVHfs0yQPR3jPgepzlF8YlgGv5rrEUh/8FXJ8uy/Od01YbTv?=
 =?us-ascii?Q?8CaySoXopgAYzz2nH97hFBRVOVSz/mpuF635IqpGUbDE3T5aKDLhMJfZbY3Q?=
 =?us-ascii?Q?kAZKxdkIw0YzImebPQxMirv5vistoWTw56Mn3Gq9x+U+FrOPGdld8JwCNktE?=
 =?us-ascii?Q?JeUFC0MMVhngtxWuQi5DiWNKHrAa3d8xk58wECnOPPlLt8oCVDHeFWGcy6xt?=
 =?us-ascii?Q?wESymQjoKYSkb7cuHwhJrUhAylvew9InpQX0YLxYQxDZyqkkPZOcv0JQsfHG?=
 =?us-ascii?Q?LIj4D0D8dJd4+LT4RFWXc1jfUFTzRuvMXRMWpOYEioyc40HvQ+/JiQBk6UKU?=
 =?us-ascii?Q?O3irxxCCr6b0Bo9mbAImzOTKRfFQO295D9oTZ5wuzxFfiUZ4XcR7PRh6UpLf?=
 =?us-ascii?Q?EXHxTwEEdh+zHuZ4DAs776LtOLimCz3cSDQt3yic0GV/hwNkjIpAW/PLPrVg?=
 =?us-ascii?Q?U3KBxKzkNfL33MrR+KNieap+W86spX/TJ2LS2f+EvgLelpNjpuLryDq8IZ4a?=
 =?us-ascii?Q?6qw6Cpqakhgn/5UnG5AvqLLAsSGhS66Yj9R3VuG05K26MDJiWrbAZCMugZER?=
 =?us-ascii?Q?sVwDziI48aydqo0DBzKBeNItx3wR1oHoO5eE2bYHI2GCOJJ4j9ERgV5Iu9/t?=
 =?us-ascii?Q?H3P2uWYpbiFH0jbx048rF2wQq8/XBWDk4FiT1XfWLyyqjcDnPiaZGOJ5d7mC?=
 =?us-ascii?Q?zQOP8Od0ubIGkifp0LlOihXoUtKSunhbyiuMEp2L0crSxZ3KHSv+QzZ1gTBs?=
 =?us-ascii?Q?2gSOJ+2RzEJTh4Xqu/voKrY8GYdAGARN/G6uW9eBtS33sSCVMuSLbcucvKX2?=
 =?us-ascii?Q?B0XRLEXpsaasslmj55CMvUib5Dq9GVNaawAVCEDJfYgg1jrgL2dY7anEXHRq?=
 =?us-ascii?Q?yIjCELAh4GiW+HMdOBDvniQd+0ZJW1XNqcYM+wDLNTmcTM/AvMnn/ujfFzHa?=
 =?us-ascii?Q?iohwtZ3RcAQZir6KXYqBh4ouN5DNy4t47weE/Vqa6zI9HlAgOh/rVnnR+zY0?=
 =?us-ascii?Q?Tyg50FGl927kxFXISKI9vBGOwPURwt0AkLKTbhavbOuVEkVRhkT+RT82dzgn?=
 =?us-ascii?Q?XAVmskY4aLLuUS6i5/2lereDB2z7+iiN2XKIQFDeuVJfIqhTE/Zzg576lo23?=
 =?us-ascii?Q?57E/juCkbHCVpTifytuILIxkQ3WVm8aQCZ1BgK/vWdKW0RwwVPWsDAoTVAne?=
 =?us-ascii?Q?LSUS3RAiIg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lQF589qGBW1JAqabSsQfpPhFsevem8vVgWcGFcJ4gdCBpTCJtWbEhSJG5Ko7ItF3FGJNe56lCSvaTFdEIV4GxNZBqEr9G7tBwfoPd12gLYkAM1swhcp1q1vyJLBgiWg5e1+YHUMvmIFvptBdC08m3AcZ/e4FfrRQ1b5JG1jhks8FyVWsOeiAK5E0xhk2y/ay6eW49580GxFndUf49TsRvnJYkXav0Z0qkntJG8atFgz1j2Wbk9PCzhjlO0xPXLgioNX3bFqIHR1Exv/5rhuygrTyHkDVqpCuKMYmwsEgYd/SuDPEj4iaWH8yuRTvaniFLaanWlpYC3TEi8yhjdPlsQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22fe2b14-ac9f-42f8-ff37-08dead17b87d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:37:32.3716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 51aOtYYcr3zBcaH6meJW0Y/PdjQ6ZArBAMtuc4MzYAI78ylO3TwMrY7bl5PlCykbVBXrWgITlYlNtGQ3yEfQ45zKlD0+io6TxYpNpzDNpi0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5101
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254658; x=1809790658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JFM5ipUpaGr/jpsZ2NeMLftEgB84VfaZmIuH8h1JczA=;
 b=lkvDN1cUe4Aky/7V8Nj9GBaHW7NqbrxRjerOAsaVvXe4d2DB/CzSUumu
 PuQCcA8DGme+MPVq2Xear72BSCsuBtZma+FGoBX3ke1NrKVOCR8ayTgB9
 fQFdKlPbt2oAoNFqpVJ5+bcFEWbrUTWM3Bnj1U6j7qcP+IUnkr8YioN91
 tenx1bN4gOc0T938HxdVdiu3j01nCFldqfM8mVSffSmGi7xUCZRUgTy6s
 Qtit6QiHI82FYfmQqtU0niKbovYDAXQTCY3/9Q9VB3bC4ynCgnWlejj6e
 mDZvUi+j3azS1kgeidsQD8uSaPSIG693bDIbiEEIfr1mUQ8OAiQUqHyHt
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lkvDN1cU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/10] ice: move
 ice_phy_get_speed_eth56g() from ice_ptp_hw.c to ice_common.c
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
X-Rspamd-Queue-Id: 6C5874F8D3E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[5];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 8/10] ice: move ice_phy_get_sp=
eed_eth56g() from ice_ptp_hw.c to ice_common.c
>=20
> ice_phy_get_speed_eth56g() is currently a file-local (static) helper in i=
ce_ptp_hw.c. Future users outside that compilation unit require access to i=
t.
>=20
> Move the function to ice_common.c, add a declaration in ice_common.h, and=
 relocate the enum ice_eth56g_link_spd from ice_ptp_hw.h to ice_type.h so i=
t is visible to callers of the new exported function.
>=20
> Suggested-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 45 +++++++++++++++++++++  =
drivers/net/ethernet/intel/ice/ice_common.h |  1 +  drivers/net/ethernet/in=
tel/ice/ice_ptp_hw.c | 45 --------------------- =20
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 13 ------
>  drivers/net/ethernet/intel/ice/ice_type.h   | 13 ++++++
>  5 files changed, 59 insertions(+), 58 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
