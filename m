Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJXLCfu9u2n1ngIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 10:12:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 704642C86AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 10:12:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EABFC60FBF;
	Thu, 19 Mar 2026 09:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMnFe9EYZH6b; Thu, 19 Mar 2026 09:12:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46A4E60FCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773911544;
	bh=9UQRENHbeA2bh1mRFT4K3BG42JvRaLC6qlVKBf+EjHQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KNAnSDWjhdPcKv5S16csHNrQY0RulZKKoUNH+59MojDD8Q6ZHl3K774whgTGA1Kik
	 C0NHnGhPCaEBlPmGpMtOM3ava7X1qxQK5JjPsyvQxb0ZDf7PaMqC+A+J54zRTh2c4s
	 oA+mwlVYEgTQjeZxv/olTv9nhTF0og4nLa3O3SzSyuEsg5UCJjoxcP8zP1OdXeb1T2
	 XFEg2cQghZdhn1ewQ/S8aAOvaEvLDSDtBXhtj7/lKWif3+V4mQcfXKawcfK9QYaKkM
	 28VUw31IYCnTF9iRKr5JrYjhzchvUkf+oeT8Kn6PAzrhsmfZ/Rxc12w54djFgaNwmm
	 wnA4Zf/NvTMrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46A4E60FCC;
	Thu, 19 Mar 2026 09:12:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A2501AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B81540D2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:12:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BdFqH6CzNyUD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 09:12:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF2B1406DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF2B1406DE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF2B1406DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:12:20 +0000 (UTC)
X-CSE-ConnectionGUID: QOHooyK4SwiWkXNw8hQRVw==
X-CSE-MsgGUID: YbfIDjKATRGaXmoeQZLJAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75011110"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="75011110"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:12:20 -0700
X-CSE-ConnectionGUID: JR5RSp67RgWbNIcLmCzLcg==
X-CSE-MsgGUID: gV90/kSlS9WCWLnwg42wCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227388683"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:12:20 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 02:12:19 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 02:12:19 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 02:12:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fXLTW4wpMhZCzhCBPJQNwX1Z2xBaF23bWS2rl83CpoJLzjN7OeZnw/iR9elfnYT6XJn+CEoAQEfk/J3gwp5WGI6qPFAP1kHKzXqottiwlAK0y+WOXhHoyBcsrHyuS2pag511QwALeRm6sZjnBBn/mbXgFK3zPqMiUMpXkUCS8Rr2y4a5FqHHyHkwHA2yVDCVS/+MeXHYNNbGhLX9OZv/HtKOGCCSWvmZ5YPu08OfE8W7yjaFaAWje8rtL0rcbjkRpEL8YhnBrOCyCqK2N95Gp9ROwjZ2vtUDmUum8SMhjGl0bc6uw8ae8AYD2jjbX75WP0JtacPFskZkgkA0RyjuLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YxW0fu5acS3zCHeosN8ldginiaekx2K8Fmp14kr2cMg=;
 b=n8VF0KzsEf1Gy4NBzXmFYhHWd7h3gYEW2qLovtuUjwW3BI4MZlTpuc4tFqZ1LqZOVQ3E8igShGmro6u0KmDBPoQTsO6f5qbKjyGCtOy/QRQMuYXAyNN9Bj4HWJkewRC4rqBJfHJnyWuxZWI15RVo9CVjK6eHZtql6jNnNZDiM6pX/YZv6dUCF6/EqLVuz+8fU4i6yujwKtthCcHzMYvCZsZIoSpO4LOcj5IW73IdCSg5I93rhsybJphyVP5+qAx0rZIxk3d1O3yDg/im5b6U0wO8JP6ke8m3OqfPyFvEbWcG8iZMYx9FH4V6akg/loU0Vt9OGOT+fW896tzX9Ms+qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by DS7PR11MB9475.namprd11.prod.outlook.com (2603:10b6:8:26b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 09:12:10 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9700.010; Thu, 19 Mar 2026
 09:12:10 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: use
 ice_update_eth_stats() for representor stats
Thread-Index: AQHcm/TA94F6OT9T00SDoZU2J8y3pbW1yMRq
Date: Thu, 19 Mar 2026 09:12:10 +0000
Message-ID: <IA3PR11MB9301C34C919A52CF3D0056E78A4FA@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <cover.1770882260.git.poros@redhat.com>
 <27c3027a6cc22b565e2a741bbf5ee7d3382e80d7.1770882260.git.poros@redhat.com>
In-Reply-To: <27c3027a6cc22b565e2a741bbf5ee7d3382e80d7.1770882260.git.poros@redhat.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|DS7PR11MB9475:EE_
x-ms-office365-filtering-correlation-id: 611d452b-6810-46b7-ebf0-08de85979a41
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: X5IaZ4AnUoen/Nq0KAIZirIdKScLpadpwbSa5waEfboXSQQtH+WNvDJHFN3xhmGuqN8W0O6i+6j6NvpVb6sZdbJUJUzvY//XoQf8LVLUbRB/GLLb/89GngXu1vwRE/f+cSfZSbZDokUwRvZZxDYt1rH6+H7cYaa7i9yMfXL0GRczvMd8Pz6PysADwM2z+S/QUvD7jYrIg4mbqVtpHO7BgDapn14GS/U9Fl8syaO9xhGejUXFY498jgKVdORMM9PkI6kpYUOm7WZpb2e15vGnTVnnjsRqLvJCHcbePhpCQFu1W2ip0HnIwjbwNGPKflgYajFn/F59bnikvEiml/VKQ5H+vQsKReXzrWDdIqVMcpzAXMUhoCSijEuv//JZE7lSvSn/KvbuwgS2FyMXwwZcuIA516xgWIWJl4gfY40DPgq7RzM540cdJsr0l6HxhibhKohT+ssWFuKODQD5f3n1U21Rnehv4nSqeoJ90v21wUu8gjLSe3Kf3kvBbXDUZi/bkfFEzoKpOnMKHD/trj7M0CDcJZacq18bQ9Mxe6097knAoOHPXM5nWmo9QFCl5wvblgl10Gp5wWPMKJ7YEBu0qHrh3zT50f4Bireehi6tQocVRqapM3TXdrNyQ6TcFaik95n0pFo57kXSGD8+XH97FP25ndkg1fWkAPcETIk0fC4akgv/u0e+8T0kVAqGzYc8cFQzAJdf/sTsmXZlQf+BN4Pj1ihWEGvDNJCF1YyAvcmDPXsekldAMvPmGUltg+fjDMcxBqIvGgBieqQUR9IuhXO6Mi3MNm39nUW47t17Xwo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?CsC6QAgjJsDHRVmaZ4ck20qzBLSwnGhGpCspgBxG1R0jQMJURXk6jjqq?=
 =?Windows-1252?Q?pe304anF66g3qU5HMNh0jXwwEnkqqO/0GEcUKO9Gvp4ssIHWfqbjpNnH?=
 =?Windows-1252?Q?F/e3HSFRU64MpBax5AI7nnFG2eucCRYnQliEHz19CuAWWYRu6keJ0bVz?=
 =?Windows-1252?Q?IVaeh7bXpx5ojkaN0A+L5nR4pCohqKqfWH9yMHpINOTg0oOYyMVyDYje?=
 =?Windows-1252?Q?6zlu/Cwmy4BtdzHArNOAKWt+Ni0CgvNRSxx4xzfaf55T/c2Ac+TbPMNr?=
 =?Windows-1252?Q?J/OEJoZ+iYhOwJa0dHX1WXEaimc8GL3isLnXRtPv58m3HzZDevkSn2YH?=
 =?Windows-1252?Q?LzElSUn1NNO38NzpAgVtbeSwn7n/cX79OjAWA3qhbysd4w0f3S4CELts?=
 =?Windows-1252?Q?qqV2jirkailEgqYKt7zLlUq754K6E+qvQkrKpxWeF6PpL+AwZEntwqw4?=
 =?Windows-1252?Q?A/unId2LocBuy+egEjpfq/CynQNHIMMNlIo0aeXtCmZql+FE9cKHGttZ?=
 =?Windows-1252?Q?HpuJW2BgSD7OZZrjNEygae/ETN0X9ThAo4IkxactVRywVtZXen8P8W9H?=
 =?Windows-1252?Q?oTdF3e/E7/tsILoysA/q/1LTveScZlK0W0CASLu9by7aWvvvx2a1gH7s?=
 =?Windows-1252?Q?f8E4HHVP9OCZ2suYEq/Db4rGCe0IetbQ2f3c/3n24waPbXczwFvbNA0B?=
 =?Windows-1252?Q?NdhosSAFncEIA7oKC0BGCvQ8DY/UWxanDi6fDtjvhsaywZ6+D0/Fk9Pt?=
 =?Windows-1252?Q?lpNxGuk6EphZD7RUSfVkQ0ymfDhQ0dib0v9Z6ekQUlekWQf1QhQaojw0?=
 =?Windows-1252?Q?CBJCYTjbF22FgaYl3saGfGgcN5MQ5ZXwgTkrEtUUjB6DcsVuYN3A8wWY?=
 =?Windows-1252?Q?CSjxpo7EmuHho5D4mJwYOqBpt9mhcbYo0/lEjoYeX1Aq75otcMFwjYpb?=
 =?Windows-1252?Q?Rw+IMpPtNdHxRWKxlGWdWvEEBEjhJJKPQgNOwQRS0JSY9n4p/+cQsjbW?=
 =?Windows-1252?Q?myQIDxme8lPnTpm8tVTCY3dKuByPXYDHJCSesY7H9jiXzgIFhOk/bbe9?=
 =?Windows-1252?Q?OA8vezUWyNmINfp/WW7zsXRbIVaDViodE6lunCzu1rSFMxDISxVGF6ji?=
 =?Windows-1252?Q?LnPzx6i60EA1k0zHW9TvqO/K3VskZ4nCSA/kZaYZGjKxFAaeuiP2FH7J?=
 =?Windows-1252?Q?H6dC0yxmnNrEDlLS51KDFlOTvYWE/0aBZwCDDwlowx4dagkGppTKMTej?=
 =?Windows-1252?Q?AbSHxy2441dSCtcEpcP7eNcRw+NI54Hm6r1i4ewBhR0CyXRNeXzZ3aY4?=
 =?Windows-1252?Q?XXXy8MZm8mjrTFrCy4+7j0KE0yg9aV3Ed/HiOYP5znMQvuDZPkF4hmlF?=
 =?Windows-1252?Q?44gI8gltp1laDrpKNUGftvB2mnLvJddsJNSwxrf7eWOF+j7GBrZt2+dp?=
 =?Windows-1252?Q?A6aVnUAu7eOFbeHdJUSlC7sSWMor7H7vYVY4dWciI3iQwAZOQ7YTXWLP?=
 =?Windows-1252?Q?u/iVrTz74jSL688Q8xKFVd20Bz+i0oTPju8du1l7XMlZZjQYHgpbgDvi?=
 =?Windows-1252?Q?mEf8kOuBvDPMbIUcyGJjdbHzgPpK9KIa8zskAUwaMI9Ykq7Iyr1OFg3c?=
 =?Windows-1252?Q?8eG4NLPeGjl5pZ1+0/IpHYY/+jB2QkFTIYp/56ISsiHYi0WVKX26IJ1p?=
 =?Windows-1252?Q?gWLnsxyttpfr+shi47e0l1StBJiX6y0H8svkuCn6a3K9QZ0wt8gkDdQ4?=
 =?Windows-1252?Q?AuqmeeXgorI8dk4srsES35Zut580bDz0ehg08+FOb/PHMAUvoZPqN/P+?=
 =?Windows-1252?Q?Yf034j1aSyQYcaLo4BPAnuwIfJP0nNfHqvXJIYO6yCm40oxk?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: O7+yBDOWVZnHFG3u+GGHn+u49C6bilrAuEQG6Xh9vT03md+ZC8cQMYBWprR+DsOx0VYEdkMTLbyZasjEzxHR0VjGaklTSDpsD91KMOLjphOKwvcdlO9xVeSoaLAa9rs0VnFNxdIjZ0I3OMfZLOLhlbsVKh6Akr+SgbUkLLF+F4FkRLFt2wd21Jk85X6h4XQHpjGzgDCXsY/wEbhkOV7U/hBueCh1h6hvSjHxGJdvkUyAFMBT3QOE8qhnUFmELSaQOwTWARGQoQqY2Pvm3Ym/9ZnRsJ2fU18dW0f51il4Y8G4U+srCi1tKH0eZB8ZeIbJKg0vokUKZnmU+wShiH/x9A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 611d452b-6810-46b7-ebf0-08de85979a41
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 09:12:10.7167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F7fr/V6ciDe/pyzCFiKU59CEQ98vC8/dlML3TLpG7jtebD3bRBFpzcCowYA1EXqXDQLQ64ldtqwBW5Smw3Ig9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9475
X-OriginatorOrg: intel.com
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773911541; x=1805447541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=9UQRENHbeA2bh1mRFT4K3BG42JvRaLC6qlVKBf+EjHQ=;
 b=DjKe1jYdkyGCtI9RVeGikV5ZquseI3X9dnrvhuGk0bxk+HAgfsIh839i
 dQJsbgxUCrMk1BsgJn1HMNGBdvVt2xq61wPp2eKUYBjPZ/sHmqIBdxYpM
 955FsAyoBoKpaX+4S8zWOaNef4y6MnXrQkG5FjGnoZ9A0Zd7DpbUJeDVy
 nNM6JiY7HaiCqPSae5YZbqn3qtaaXFzwesljVmb8xnP8JXKbhkYyP+EaK
 TOWDEhhKHrdEfcAOjCQ6Z4s2nMHpENI6i6HM6Y8MG9tmjJu0SJHFeh/K7
 XAFTuMKp850cxMZOA+V9LTJ2lpGLsQLZKfo2XBWlcLSrRaF5h/6gR6+oD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DjKe1jYd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: use
 ice_update_eth_stats() for representor stats
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:wojciech.drewek@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA3PR11MB9301.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,lunn.ch:email,davemloft.net:email,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: 704642C86AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

________________________________________
From:=A0Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of P=
etr Oros <poros@redhat.com>
Sent:=A0Thursday, February 12, 2026 08:53
To:=A0netdev@vger.kernel.org <netdev@vger.kernel.org>
Cc:=A0Drewek, Wojciech <wojciech.drewek@intel.com>; Kitszel, Przemyslaw <pr=
zemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>; linux-kern=
el@vger.kernel.org <linux-kernel@vger.kernel.org>; Andrew Lunn <andrew+netd=
ev@lunn.ch>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <=
horms@kernel.org>; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>;=
 Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S=
. Miller <davem@davemloft.net>; intel-wired-lan@lists.osuosl.org <intel-wir=
ed-lan@lists.osuosl.org>
Subject:=A0[Intel-wired-lan] [PATCH iwl-net 2/2] ice: use ice_update_eth_st=
ats() for representor stats


ice_repr_get_stats64() and __ice_get_ethtool_stats() call

ice_update_vsi_stats() on the VF's src_vsi. This always returns early

because ICE_VSI_DOWN is permanently set for VF VSIs =97 ice_up() is never

called on them since queues are managed by iavf through virtchnl.



In __ice_get_ethtool_stats() the original code called

ice_update_vsi_stats() for all VSIs including representors, iterated

over ice_gstrings_vsi_stats[] to populate the data, and then bailed out

with an early return before the per-queue ring stats section. That early

return was necessary because representor VSIs have no rings on the PF

side =97 the rings belong to the VF driver (iavf), so accessing per-queue

stats would be invalid.



Move the representor handling to the top of __ice_get_ethtool_stats()

and call ice_update_eth_stats() directly to read the hardware GLV_*

counters. This matches ice_get_vf_stats() which already uses

ice_update_eth_stats() for the same VF VSI in legacy mode. Apply the

same fix to ice_repr_get_stats64().



Note that ice_gstrings_vsi_stats[] contains five software ring counters

(rx_buf_failed, rx_page_failed, tx_linearize, tx_busy, tx_restart) that

are always zero for representors since the PF never processes packets on

VF rings. This is pre-existing behavior unchanged by this patch.



Fixes: 7aae80cef7ba ("ice: add port representor ethtool ops and stats")

Signed-off-by: Petr Oros <poros@redhat.com>

---

=A0drivers/net/ethernet/intel/ice/ice_ethtool.c | 14 +++++++++++---

=A0drivers/net/ethernet/intel/ice/ice_repr.c=A0=A0=A0 |=A0 3 ++-

=A02 files changed, 13 insertions(+), 4 deletions(-)



diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/eth=
ernet/intel/ice/ice_ethtool.c

index 3565a5d96c6d18..0b8775621f1567 100644

--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c

+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c

@@ -1926,6 +1926,17 @@ __ice_get_ethtool_stats(struct net_device *netdev,

=A0=A0=A0=A0=A0=A0=A0=A0 int i =3D 0;

=A0=A0=A0=A0=A0=A0=A0=A0 char *p;

=A0

+=A0=A0=A0=A0=A0=A0 if (ice_is_port_repr_netdev(netdev)) {

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ice_update_eth_stats(vsi);

+

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 for (j =3D 0; j < ICE_VSI_STATS=
_LEN; j++) {

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 p =3D (=
char *)vsi + ice_gstrings_vsi_stats[j].stat_offset;

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 data[i+=
+] =3D (ice_gstrings_vsi_stats[j].sizeof_stat =3D=3D

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sizeof(u64)) ? *(u64 *)p : *(u32 *)p;

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;

+=A0=A0=A0=A0=A0=A0 }

+

=A0=A0=A0=A0=A0=A0=A0=A0 ice_update_pf_stats(pf);

=A0=A0=A0=A0=A0=A0=A0=A0 ice_update_vsi_stats(vsi);

=A0

@@ -1935,9 +1946,6 @@ __ice_get_ethtool_stats(struct net_device *netdev,

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 sizeof(u64)) ? *(u64 *)p : *(u32 *)p;

=A0=A0=A0=A0=A0=A0=A0=A0 }

=A0

-=A0=A0=A0=A0=A0=A0 if (ice_is_port_repr_netdev(netdev))

-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;

-

=A0=A0=A0=A0=A0=A0=A0=A0 /* populate per queue stats */

=A0=A0=A0=A0=A0=A0=A0=A0 rcu_read_lock();

=A0

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethern=
et/intel/ice/ice_repr.c

index 2a84f656405828..f1e82ba155cff2 100644

--- a/drivers/net/ethernet/intel/ice/ice_repr.c

+++ b/drivers/net/ethernet/intel/ice/ice_repr.c

@@ -2,6 +2,7 @@

=A0/* Copyright (C) 2019-2021, Intel Corporation. */

=A0

=A0#include "ice.h"

+#include "ice_lib.h"

=A0#include "ice_eswitch.h"

=A0#include "devlink/devlink.h"

=A0#include "devlink/port.h"

@@ -67,7 +68,7 @@ ice_repr_get_stats64(struct net_device *netdev, struct rt=
nl_link_stats64 *stats)

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;

=A0=A0=A0=A0=A0=A0=A0=A0 vsi =3D repr->src_vsi;

=A0

-=A0=A0=A0=A0=A0=A0 ice_update_vsi_stats(vsi);

+=A0=A0=A0=A0=A0=A0 ice_update_eth_stats(vsi);

=A0=A0=A0=A0=A0=A0=A0=A0 eth_stats =3D &vsi->eth_stats;

=A0

=A0=A0=A0=A0=A0=A0=A0=A0 stats->tx_packets =3D eth_stats->tx_unicast + eth_=
stats->tx_broadcast +

--

2.52.0



Tested-by: Patryk Holda <patryk.holda@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu usta=
wy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w trans=
akcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.

