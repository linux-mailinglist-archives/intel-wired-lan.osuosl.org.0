Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FA6BBE435
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 16:00:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 983FB612C6;
	Mon,  6 Oct 2025 14:00:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvA6EU8Fi7Td; Mon,  6 Oct 2025 14:00:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2DD7612ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759759239;
	bh=NYCzOI+7wanVYx8BZQ1IoNSAa+F1In2saAx/iZsrpXQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gqCC/QFbDJbzOTDdDdfor6kFNUla/F/kGwe29K95Eahq8zaTGG4Q3pschF8TWqjXi
	 ocMjqeXH21jxldhOTBArNK1lvtCmnLlcbE0uOGVzpmr3vpR/pplTO9tTLfpCzh80rc
	 lUMgGyQ/wWpKnckjuyKe9UEyjCNMkBwK4VxlJE4DemNcfIkTZhHqj1MXNiC+GA13gW
	 3zWjg8EqyfdI04Apyjr7gkAX25+ETPA/Xdry7NyFVi//+h4v2pZGIv1gJzbNsPQdL+
	 Obr2jmhQACS9s+x9EOQlbRHNps471rDoWtbc34BgJxtskpST2b2DETeEO7+Jo6vLd5
	 AVed98YG6kfpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2DD7612ED;
	Mon,  6 Oct 2025 14:00:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DCFAD226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE755412BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:00:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EeKfMirhOoEn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 14:00:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C5BAE40DD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5BAE40DD6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5BAE40DD6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:00:35 +0000 (UTC)
X-CSE-ConnectionGUID: NzTKiX/wSmalgxSBoL+KlQ==
X-CSE-MsgGUID: R+mW/kJFSraD2m8fktZtgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61641685"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61641685"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:00:35 -0700
X-CSE-ConnectionGUID: hZjXJC2zTYmCz1B53/jcLA==
X-CSE-MsgGUID: 4sh/dBMLQXeWf22RhtEAXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="180298115"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:00:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 07:00:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 07:00:33 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 07:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x8Bx63YCjDnW91pNVyeL9eQzFnf8SO0b34DYIlunvRIkkWbNmY1XgfXR9QzBJRYPZEBoHQJVgYEPONDXG0RV80m5E6K415OtPFleXiCl5EpD72/u8xl32+Ou6gF2tmaIumc5l6sGZblVFRNotu+uGnbRNrOEtCXKkKpiK6B3ZYfCmBlgzYHb0VEkmW3fjf5QbRTliWP/M0G8NMZICaBHrPhJmh2nAHVGgMlJ6TMrkrkBWgo6iYTFfiFlkYXDJIRqact0qCu8KL7ticbAQCwdzkPgn3Zdpx5o6tnA4OjidHfKQTyCG+EGMRqtQ0YZ/Posp3IzYqS9emzGSnYSEsJzpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NYCzOI+7wanVYx8BZQ1IoNSAa+F1In2saAx/iZsrpXQ=;
 b=X3P6hwe2h2CSnYD9AoyaFefJPoX0x7VnliAJxXxYq3N0JvMeOqrVBqpdURvCJOEC6rz6ZHGL16T5e/yvl7Lr8TPKXUUgSBypuPZCmA8LIDB9G6H+fdgmRcGuzaJBtJvb/y0PvdLDhwJIGq9b6mWIi0txBntvJqrq8EgUVMY/5hjtMSbGcpbY2YpFHDOL4zXwOkMJ1yAh6Q+SH6ffGPXjidemt78oBdRgqBXvKGgXMgr43InSPyoDClZDY4Bq1ynGB/RfCdIX9Umufldnk54nvZIBg7fOGjCG+E2/9acdYP97GGhvw5h+ht+8TsiuUW06CtlX+DLcpnNqRTZIoAIMXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5125.namprd11.prod.outlook.com (2603:10b6:510:3e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.17; Mon, 6 Oct
 2025 14:00:26 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Mon, 6 Oct 2025
 14:00:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, Sasha Neftin
 <sasha.neftin@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 3/3] ixgbe: use EOPNOTSUPP
 instead of ENOTSUPP in ixgbe_ptp_feature_enable()
Thread-Index: AQHcNr5ABk2BmHmkFE+Th28Pg+j3n7S1JTmw
Date: Mon, 6 Oct 2025 14:00:26 +0000
Message-ID: <IA3PR11MB8986B636081D4C506C6B98D4E5E3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251006123741.43462-1-enjuk@amazon.com>
 <20251006123741.43462-4-enjuk@amazon.com>
In-Reply-To: <20251006123741.43462-4-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5125:EE_
x-ms-office365-filtering-correlation-id: 829dcb2c-ad34-41b7-3ec1-08de04e0b362
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OqS5Y+k7hBusGxjBjKI5rdxzw5JwJMsvmuJCXOWGdkyg78r007EFIUr1453Y?=
 =?us-ascii?Q?hVq0JlNl6KqY3jNAAxj8SpN4SReVjSEd6WQ2LYhuSRvut2mmekUUJqNIiCeW?=
 =?us-ascii?Q?s+6Wbk7+SoLb5O+dIul/Ks5QBNC0Wyh7JocEuQj/Ky2jPHn7xpOkRT+Qk4o6?=
 =?us-ascii?Q?DkwQksGu8g1PO+HPuZIW1bZdvLuRGxKArCn7SHvkkmSGrdnr8Z62ZFbF/PX9?=
 =?us-ascii?Q?VRNu1RkKEe/QjcTFYaW3jYEJao4j5stsSuCtCQQ96cfxH+Z9dYLviJfjKVzy?=
 =?us-ascii?Q?pLsKkUaUbizcj9sllTCBAm+Y3IBUIHAbFrx9vI/cFAJqTy5URlKVGW3NOCak?=
 =?us-ascii?Q?QQ8FgUJXzwYvUvgD3vNz3E55anPntGWlEu6qIyhFSCUyeH8vRGV8xyeZfTiQ?=
 =?us-ascii?Q?E9ArCirEdM5yfJEg/knCzfh+MMlkZ/fpkV/r8LmqfkmnkNcY6HVwKTiTvKuW?=
 =?us-ascii?Q?dotFo/rbD8vPUKOrJm1jHgZNft3DJA1Ic0xM16w1/v37p3FPs6WfHPm6j/bW?=
 =?us-ascii?Q?XUiC1u2jL+x6RVpmyWx+TX0HxrAKYlj0gjuAsDxm8wTrZ+dRfLlB6bXIL/QB?=
 =?us-ascii?Q?Dy3PT9uLIVTqeKMNKggKVrUo1E0DsadHvf1d6Ll9uRhQ4CgSwBVN/TMtzhEv?=
 =?us-ascii?Q?b4QWur5mlWt1oSAIowsfaa2FmFByBtUDa+cDGzP7QwuJBql8+pzgQL9ODlcj?=
 =?us-ascii?Q?iDyfRGYv+Pw/XisPYCvk/8Pq0Dq6B4a7NtyGpAgCORIY0PTjaAwjQN0veGwn?=
 =?us-ascii?Q?WDew2auSkKkM4vjS+Rp4vbIjTvMUb12doDZCl2qBvXrVrd0hcnjs/3vVCAxC?=
 =?us-ascii?Q?ixzVKnRCTLYF0yVZwBEDzHNlFAPOYix4vsbkFqqeyGS0twxcggAN6FOKE8jX?=
 =?us-ascii?Q?P4ocozDG6b3Vn3JOT5aWX65c/Rh5kT3PaIf8haUs2mWMZjiW0xxVtSP/da/E?=
 =?us-ascii?Q?Dh6i9I4MaVi2DnyfkAk9bCRFCcepRYErAzODjvhB03p7I+7bd7omYM2JOM6I?=
 =?us-ascii?Q?IQsUfTchjqfZ5y3Sb+kk7xhAWLSEJ9EkTn0yolerDS0V2+8A5Vl6xjACTIKM?=
 =?us-ascii?Q?5FwtNtjQ0478zaKn6dlTu/qM8lurpUgJb0ibTc2I0r3IMoDRi7rZ4Ozgz7Sy?=
 =?us-ascii?Q?poYOp415FAdDIU0e6EEMDx3RwoKWyXUsLfRDovXfn1scRar3fw4QO8sJhWGz?=
 =?us-ascii?Q?VrRGfplueelSzIt+bqELr/WOAD4/90YLywZLTh0JrTpQB2w0LcTZGzqCSB/G?=
 =?us-ascii?Q?GHgpH9CrDAGYspHu39zghK6wjmxLtWL78CfM9rPhC0ahpS04qHFtzvN0kTof?=
 =?us-ascii?Q?TMPNGyJNQjCKRvZpnOj21YJkZfJ0ItK5JHf/ugQjqGLU7VDSAM9iFNRDwgVd?=
 =?us-ascii?Q?UhBygG20ObEWTGHs9rjGlzWfzF/YW4gilkni0zzA1NWNXtsKkKduXNUc4BPe?=
 =?us-ascii?Q?iAqYHWiLfXCycKGZJSjdmo4j99gXbub7jz6Xb8uv0x1C4llWlb2Jdcx/5sD0?=
 =?us-ascii?Q?xVbiJmrBdOrHQFRXPLJGpEGyJ5Lzww6VhoVZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eGU6fYVCPzxdb3HPKv3rOWKxiG9S/2JxUszWSLOFlx8t5P/x+ad8B2hFLRQD?=
 =?us-ascii?Q?H9IC6CzsXpptJrS5xjfOq5Wd//GDc+pje0Mb1PNldhWpYtwJfguLhZzl+DMT?=
 =?us-ascii?Q?fhGgqz17JwB8GI3UyZAKRFHVBP9bmK7gy9POJGpEA/IINQiW6YF83931DZAG?=
 =?us-ascii?Q?JZh7xuZIT1cs0u+ZloIPkB7BPjKybauvOv1Rj/LOO0dicWWaoPmE8f4Qfd2z?=
 =?us-ascii?Q?mIsoaw+hnYq430qYcXjMJLq6xHLpnvAzbBzS/UhvKq9zSNAaAbxK/B7vZ1/M?=
 =?us-ascii?Q?tbHHk9BErMVOK0qYDEzMqM8Ekk9lj8PDfNynEShmU4hJPNGoIJB8Xl/z42Ke?=
 =?us-ascii?Q?Y7mGQgtohtjjLYCRAIp8WHlGJ1lBMT3zzsGr/PWvdGb1fjEy2XNWVmATpn4z?=
 =?us-ascii?Q?Ahx7XiuEWLX60wssxYwE7rR78v7/Y13a+WiaSGEs/t/8g472ArmYCIxT/ln+?=
 =?us-ascii?Q?TNADJoqrNBwTtX8xiYa1iNh8GE/1YxNl3y+OPnW/9WV8GNWCQxvg3Hf3+aHx?=
 =?us-ascii?Q?XOjFq5jfaHOTbrWmQKBIqDy8K+FJlXdzF36q8P1DWeEYuC6LqrQSTpgpDdmT?=
 =?us-ascii?Q?v3m7t6yeLkflJA8OiUzl4rNx1bb41hS0b9AwF1r3Ice3CrA1thlyDLdlSGMa?=
 =?us-ascii?Q?MkZyGLo1RgfsgsQdAy5JmjXvKAQmGtAVvm+H7VltjIWqpr3osBzq6xw/cE+N?=
 =?us-ascii?Q?lJopbU7nFU3RO5qyPd1IvIFd2l77ntlrJN3bWSL6/T16vS8dLdzwqh1dYthx?=
 =?us-ascii?Q?D2OClQE/ykz/sbIuujpIaxprIUuqW8aqa6IqQVkgJXiOvXK8+BJy+glmf/yB?=
 =?us-ascii?Q?tbQAZqBKEr4OTqi2o0DZQd+YNfXWS88+R1jNzeqnLhjTzF90ZyCbO710DXMI?=
 =?us-ascii?Q?4DRZFbjC7tzCs+ZO8JVJiLOFwPV/8kfuRi9pAIRYWH0Eh81dGJK8qK395shd?=
 =?us-ascii?Q?yrSqu0HPDHUwexw32++quKJywBMkWX/wCTOFNab3G+urfxi5SwKqoWQKPXV8?=
 =?us-ascii?Q?GTj0+4CHPgKraQmFRqbqLAfNMaH8MmEgke+mqN3lCohTD3i3rOguxqcFiITD?=
 =?us-ascii?Q?6EAX2+d4osLf+hQAnoIZRz/448QupNfJh3KRAwjD4n6/yqQybuxE5SGG/BYV?=
 =?us-ascii?Q?lCfTpiVeH2zsEoPiQEAN5kFjnJwZ1Cfb7wAUkcFGOTZ8Gss5pGUJInNjFJk8?=
 =?us-ascii?Q?oUOZdCvRjZzOSpEfElNEXXVg1UA9EvIMNzKhSIZvjlT5m8O3XoV+qD3Cuz0L?=
 =?us-ascii?Q?uxS367ett4iNseF/5nASebLdSV4W7UfRnQmRi46gBe01VdGgBXwsnFepkVw0?=
 =?us-ascii?Q?gHXQIy6mdW22umvdk6XVZRT9JUW6QDYj8U3Dx3+uoLe2OiqNNrdbjPn/XZlA?=
 =?us-ascii?Q?HiTRiM8zMab7hFOhwTi0MuVs9prg1I0mnSYTGviMWSHIF/Jluk8BlY6R3+bc?=
 =?us-ascii?Q?NEewJvPEjEEAlBX4bHZXWx9cWB5TFIMG/8nxLN5FaSVnX20U6fGxWADPnkr+?=
 =?us-ascii?Q?p2Lz4KZrIbNy/R7MkjYA5qcUlkCnOiyYySjza8aoq8esdyC+PdAfacugmPWh?=
 =?us-ascii?Q?kOLYnzygwmpIzTBwhTIWU7oQ/+kjYK48o+6wQY7Kia4FNAgo238F6ul3UG1t?=
 =?us-ascii?Q?dA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 829dcb2c-ad34-41b7-3ec1-08de04e0b362
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2025 14:00:26.1452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: scTP6dxcMATMSpZH4VSXUaBMR76uCwQCQOcqYAetqClQClzHESQRM+3x0KiYq/RE+Jn098TRoW1yTCSMd9V991bQVVTMJ4cjW121AWtvOEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5125
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759759236; x=1791295236;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bH5gaWbwl+oo+pdAxiM9TzMq3a79epPzhO6LjSYgu9M=;
 b=HRre5ZO0gPJxV51yQSDlDtvW9Fc80gjzMAOq1ypji8B6aITJSZH7VBDc
 mhcQzVpQv9jT8PMQbkqrAbNeRKWGBppQ0uVkZsaO5bwLhvWMKw6aaYuu9
 Mhiig7kKXJqMl984G212y/9wGiISg3uvVx+x0Qb3iT+AuwwJxWbAnxDxx
 JpxSkUiGx8hKbDyevO57p98PFzQ9jEvC0EtiLFGod7IDYnFEHTEAUTzbQ
 4NlarmZQUTLQcz6gVy0slWJlthNm8QjD6A77T/UFqkhHn9F0tTP1AeIHk
 g550FqZJovdiH1YxbScIqBoiuwJsDnaPdAIhhAHhfaERT+RTHuRp9XNJO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HRre5ZO0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 3/3] ixgbe: use EOPNOTSUPP
 instead of ENOTSUPP in ixgbe_ptp_feature_enable()
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Monday, October 6, 2025 2:35 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; Jeff
> Garzik <jgarzik@redhat.com>; Sasha Neftin <sasha.neftin@intel.com>;
> Richard Cochran <richardcochran@gmail.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 3/3] ixgbe: use
> EOPNOTSUPP instead of ENOTSUPP in ixgbe_ptp_feature_enable()
>=20
> When the requested PTP feature is not supported,
> ixgbe_ptp_feature_enable() returns -ENOTSUPP, causing userland
> programs to get "Unknown error 524".
>=20
> Since EOPNOTSUPP should be used when error is propagated to userland,
> return -EOPNOTSUPP instead of -ENOTSUPP.
>=20
> Fixes: 3a6a4edaa592 ("ixgbe: Hardware Timestamping + PTP Hardware
> Clock (PHC)")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> index 114dd88fc71c..6885d2343c48 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
> @@ -641,7 +641,7 @@ static int ixgbe_ptp_feature_enable(struct
> ptp_clock_info *ptp,
>  	 * disabled
>  	 */
>  	if (rq->type !=3D PTP_CLK_REQ_PPS || !adapter->ptp_setup_sdp)
> -		return -ENOTSUPP;
> +		return -EOPNOTSUPP;
>=20
>  	if (on)
>  		adapter->flags2 |=3D IXGBE_FLAG2_PTP_PPS_ENABLED;
> --
> 2.48.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
