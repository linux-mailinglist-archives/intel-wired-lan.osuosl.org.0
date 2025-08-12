Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AF9B22D7E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FACD8464B;
	Tue, 12 Aug 2025 16:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ONQAaUaYijD2; Tue, 12 Aug 2025 16:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D07184649
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755016114;
	bh=fjGEo7moiGnz5gpTX9CpGAvJdikwAHx1e7OShicaldM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=prdrYgy+J2UOrO/e9DpIJtaKu3CNui8cFXSLTsJZ1H1s6zwDiu73ECkFeeRmaWr9L
	 onSSEVCKqF75BeSYb3nIeIemm+WAs8xObpp4TvHORbZIONXVJH7w630ddDvhcoIsKJ
	 XAVVNkkI6XS4hgeoLQIW3An523Y6PCP/JhI2g6sDHW9Z6oNw8XFe/xkcyS2vazC0eI
	 uCKwp9g5+TyvGFq0v9BDq2sXkEUxlbjSATob6yC/vtTiQQUWEH8Ehl/4GKik8aKx1E
	 p/UZu6wlmIdeEjxWPT2RQpH1TRCCtsKnp9QoVNqAeDRkREoKG0lmjz1Hw8DtcbCl/y
	 Rs/bTxtPY080g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D07184649;
	Tue, 12 Aug 2025 16:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A9E71C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BD7484227
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1YfcKRBgnmku for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:28:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80835845A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80835845A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80835845A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:28:31 +0000 (UTC)
X-CSE-ConnectionGUID: tmmBLiShREaUoToKAzeQAg==
X-CSE-MsgGUID: 5kJI+SYpQfiei4WadzSejA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57444430"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57444430"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:28:31 -0700
X-CSE-ConnectionGUID: WF7rMrzPRUKY1iBRksh04g==
X-CSE-MsgGUID: YQ/pP7KzQHG8r3HgABGLlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="167025461"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:28:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:28:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:28:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.45)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:28:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jrq+eXDDluducBydfL9KdqcHwy2qGLQIFrNyA+xNuDkI19bm9d8xctsheNFvFPzyqklgD/3NHJI4E8JQztrSj5UTCFRCl30FN0aYjogJ1aXb97EiBl9n2ASGMfUTVw2YX5IGtyYOjazQ9du1hgSTj9wXjYgkT+ZsMIwCse0UZZN0HOh+TOWlv7g3dn9qt1OYVsIgQJDyJ3OSlShnHSnanCFJEmQ5+Fp4IGf8iUFcFiKFRxMoTXb6dxMB/NRSM08A7ElrZLEiOvf7tcVBsgk3h0opV4GTo0xp8ma7u+vK+RQl4+wyyq5tMHE5d+p3QkAY3wZGFRyi9LN/35bCVnLE/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fjGEo7moiGnz5gpTX9CpGAvJdikwAHx1e7OShicaldM=;
 b=K8tn+TuzpihzqEfi9DbT0xJYPKaxd8OdLr7kshWnmUg3YHSCgHn6sfFy8S7ieFCOKe/6hnCyUo/witcGBgCe0XZlY7a7O2b7FjJMQwdY9yomtMXR5hfFZgLS+Q0qwSg2KYbCX2ui/uur22dMSIA4vYYxdGJ2a3TjFs84QAyf1GL++6fi8qb0iLTxjP255l4/kzSemPdgM4Kj5zRzmSmqJ4Z5c9Mt5Xy0QCJX9S701aBglSN22VEFZsFjbzUAhCoZYSmyu6hB5tu4S+i0O9t/RKr/rjoN6RbDvHwL4MEcsRQdaRcdQv8THsdg48wWR9fFY5oAd7jEDWcJqsDxnKcvbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Tue, 12 Aug
 2025 16:28:26 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::29e3:35cb:6d5a:4d7b]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::29e3:35cb:6d5a:4d7b%3]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 16:28:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Qianfeng Rong <rongqianfeng@vivo.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING DRIVERS"
 <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open
 list:XDP (eXpress Data Path):Keyword:(?:\\b|_)xdp(?:\\b|_)"
 <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
Thread-Index: AQHcC59N8k2iQ6H2gUCkBy+4kCzMKLRfNPNA
Date: Tue, 12 Aug 2025 16:28:26 +0000
Message-ID: <DS4PPF7551E65521923CAFA5013F05C81BAE52BA@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
 <20250812133226.258318-2-rongqianfeng@vivo.com>
In-Reply-To: <20250812133226.258318-2-rongqianfeng@vivo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|DM4PR11MB6117:EE_
x-ms-office365-filtering-correlation-id: f1feddc7-ac4c-45d2-be9a-08ddd9bd43b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?k3zdw/4u974zsk+ovVM/tYTmSbzJUWwZIVzmpMYbwSZTpl3XVmXlELL4D5wV?=
 =?us-ascii?Q?SYWkiQT86/ZZSz/ujZD+EMlCx8jGN4QDl6LaDEYGiSLFVDzXVZLIJCAHuSOt?=
 =?us-ascii?Q?Tu1UP8Vm+2WFWhgDQK4FASK9z4qpdW/U9FWjTq68e03Y7HGsizrEBthzVW6T?=
 =?us-ascii?Q?ViOqMH/nW7S8BmO3XIFSZF6JOU7a5FG/22vE+CrSjbjuR5+jUybUesRDlYaR?=
 =?us-ascii?Q?9OOB4lzqCcHRt6DCH0FI2B8dRiK8tVb6tq3BuuLENuz8hyVIfwwu5EjFWAke?=
 =?us-ascii?Q?efucxa7YvJHVgPOqh0vsh/kvYdZuwYeBsKKnt4R0TqI/iNnTK/Y4zxU87Qne?=
 =?us-ascii?Q?reygPlFfI1G8wOwJrUvrNeKQl84qTzBnQdURaVYtCcpEUwr/q9TZI6Tmou6D?=
 =?us-ascii?Q?hsYXA48veKAari2IeYQBQ0+X8jnh2l1NN3AKKKxtwx3TjEOliecEkY3+7S4C?=
 =?us-ascii?Q?DJR+Xe1kzc0WliSyDn/wry+G0FCYbYnt4XFmYT9+bz6kz9lKnxYiFdA6Mx+L?=
 =?us-ascii?Q?jax2OIv+Ho7SGO8zi3HnWzEm4Ci3eWR1RFR1EoeqoxItYY/NwAU/fBy61f5t?=
 =?us-ascii?Q?TF2LzPdWFsrmN9w9FHILOwGr2uZPKWR1qQSqyo0KEnUPpCuuhxnG4geAPVCo?=
 =?us-ascii?Q?REoYQ+f9r5tqcAI871B5cO5XTo+6+9xeqBh3YHuvYtNy+0CsrAX2n/uDAL2d?=
 =?us-ascii?Q?vKDWjQHReNQM65z0Pu7e9wHKwLpM0JsF0PR4shQEwYYPAnKyMwMdBFSrBg63?=
 =?us-ascii?Q?X/tl62WbWiaunCKg+kiOGhajTFiytOjyu30MFjreok9KMKf0XuNsR5CfsMzx?=
 =?us-ascii?Q?IFyHyionvRxs1LUfKkOvLQimeU2KZxNoKxW1/1WECl6HdEoa4PHC/DBif9rx?=
 =?us-ascii?Q?LcvLMShq//W50QkBcY43AX67LIoQGSW87JmMolA5Xfkyy0ayVin/DZQnxB10?=
 =?us-ascii?Q?PRDrn948vUx7r+ZTHVINXU78oSYl0xvtWQjfxekPgd8PIvgfJpYc2eO+Wn0n?=
 =?us-ascii?Q?MHhoqlh7LWf7mx5tcVw891fdLT5xxXE/5wjOwck+TrPv40FyXbHryRonjll2?=
 =?us-ascii?Q?BMq9ApBjoWw8rpWrPLrUe2aKkMCoThNwKFCneh2hw80k2lLEYlWWuIgb70R4?=
 =?us-ascii?Q?fdqiMnbzSa11FDA3gma526xDZItcFIy/slCgESLTDcbivrNoZkiYLD2F7Bsn?=
 =?us-ascii?Q?lmG6WEM0cv6yn7OnOjdAiegTPuZi9Q1pZJSS84zFuqO0Jm0u7J2Ec/khUinl?=
 =?us-ascii?Q?4ap4Jq4K2/bhocan7e0yUURZ/OcG0wMK1LVymnKVauPOHjExWFzgPaHBlUiN?=
 =?us-ascii?Q?bPSDvVkSfb73HsSWB8hS39ErE6V+dYeG+ynHZJnoqYl3yyHnw9+HHruEi/vY?=
 =?us-ascii?Q?Q193YZH2gMz+HPT+HRGVL8yiVYOnw+aIbGkWRndNVkGBRb4FI48H/2qtjsgq?=
 =?us-ascii?Q?lb4bAvf7lRX748eWCii18f9MDYcI+ELzU0AvBAghHfJrMbx1D+jKDKnvMBxo?=
 =?us-ascii?Q?R7EGlheyC/w3xMA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8FddlOLtl+Vy/SxsKYa4fpqVeCzxbZCo0srIs8D5DEpcR6YLg6kHsdMJB/wU?=
 =?us-ascii?Q?IQLb8StuPeRvCGdvC8XNfQxFxTMC8u8YmNEYusSIYegWV2UERgvNTa+viTt0?=
 =?us-ascii?Q?xGUxY8pxH5Z6hD5LgvTQy1X8bTDdvFc6nkKlq1R68340TKg9kBrl8yfjWapu?=
 =?us-ascii?Q?QFS7/+bjXGXXBrO2GB7rPP0+hZO3jx9rB6V7ttCKPx99WetdNp7hoJspEkBg?=
 =?us-ascii?Q?M73o6kKYUaNWeVNtltlbSvSYZlgh9X38JirDg3PsOe5Q3F6QMaR1SsIg/X1S?=
 =?us-ascii?Q?xmZMThbkihNRHN12FoeKNoWQgbUawRBjhHNHNcKDb0V6ZlI5M3k5Sub9JAyb?=
 =?us-ascii?Q?YwDlXjzBqz9ekKHXWSA6e7n7CzCQuhMMAJVbOlr0EzfIEkd+/dmA/h4VzSPg?=
 =?us-ascii?Q?LiB8UeNQEVlC2BqGv8sf+AfQUOqfKeahRUX15mSki+IKnSmBLasJLzeF3xyA?=
 =?us-ascii?Q?f40e8FdPncbq7hvhWkv2NZZEWNG3G0uEeQFQYDUZ2sKuBc9VTkZBCdEJQ3m8?=
 =?us-ascii?Q?vAE6DZ1eIfHO1bXtQyTG800nsfsOQV4CVRJklkoRmzNxawXvZv3VizzFIk7Y?=
 =?us-ascii?Q?6GhNRV8MUbOH0V8be8AIfvJatFDcmvFDQ0eof/LjdbjFi2gc55B22wfh3su5?=
 =?us-ascii?Q?yaTF2xIUEKRorSzUPdOeyDFbmdI4UMLChXx/nD9Llo9LT9acOE/ZHWeem8TK?=
 =?us-ascii?Q?RlMVxSx7P0PE86adeg4hj0axVkRnIO7KlMnpG8OqQomZTXlhNqXu2cQ1WyW0?=
 =?us-ascii?Q?YAfk8xWN4xOmwVwT2+NDa35zKmVjcScNeOI/tlTHlvPoiz7t2Lxqn8ukFNXd?=
 =?us-ascii?Q?+0fQz3itA0m2MT7WvbuaeWLccQs4F8863919KLbiMg5U35p3iXkwoGEWIIYD?=
 =?us-ascii?Q?daU1c/0VRTG+S0qhcjQPgZX1lUQa734AECy/Cam9cJAt/9PI17uj9mMu53US?=
 =?us-ascii?Q?cf91apdc8xJfjmWzb9/VJUot/h9I5ESnL9Mmevlj6oB/sY/OMBwcnFvqi41T?=
 =?us-ascii?Q?sJBgtaRDw71cNF6iVt8RvK3MgZ9p+qYNtHUwcmbmzrPRPhuf5IJDyPqLVn1y?=
 =?us-ascii?Q?vohEi+zaB3MpepgYafJ4sT/xL34bDf9nAXF/yYHaw2Q7Gav1AD+bHwv9hYxH?=
 =?us-ascii?Q?rLhUd9zvyi5MigpKHkScPtXl3t8I4ezlXhKYqnRHQPZnhBUUQHp2MiHkyEGt?=
 =?us-ascii?Q?5Kz6BWTVcq5nb9kxpXuqKzQoDfG9BWn1bUSalEXomcYN7Ydt4MM1taNB83Bk?=
 =?us-ascii?Q?q9V4vHCl1Uq17ByoFuPh6TxNTWqYDWZgjdtVR5cXEZJFXEYfKA2XTag0KwO9?=
 =?us-ascii?Q?2keqCn5VsUa4lpb2FYGOdxzJPAJghXDNzl53a/Fyz6TBAyESDFo4uypMkcEO?=
 =?us-ascii?Q?ZEFfv90+X/5TaVbszs8cmkDLW0vYUHhab8IdU+lIpkyUAt0UjBcUYR+m2eSx?=
 =?us-ascii?Q?1AxY0vVLrU3CvbxLUE9hBajMlLEtplu2cCdu5hFuGOYRmKMFYYV3lNwPoVp9?=
 =?us-ascii?Q?1lA2wOrF37v00I1Xp2H1ZHtS5WOVHFOGDWqAV92zv6m/ohFrv8TIsEa9q5+2?=
 =?us-ascii?Q?UXiAGXTAR+l6T/GQ1cEk4kKctqBJROj7/sunNsw/dY7ZXWFnD+PHJy56Zun7?=
 =?us-ascii?Q?ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1feddc7-ac4c-45d2-be9a-08ddd9bd43b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:28:26.4262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4eILFOAkHZS4vjbRecvvsuv4IQPkbGzj+RAQ7WAp8m5xe/rrJEBYYMNMhfqlwAI5TDCp07exEEtUCqeOvi02PpIkSldQZREmT/ge63cFplY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755016112; x=1786552112;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1CVY2+k91ZJ2h/c+lzC2bNrlmGJmVWpVqWCA06yO2/E=;
 b=h5Teg5jIxsJQ+fz0Ky4phgwHble98s5MR7YKNDDrxY8KByEItA3idAf9
 nzE7mvoAK3i4mwIG4dBTaWhEEp5kZeb5ndh/wyrSIut/O+0on3mJUcw4/
 duE7NEOJWzQjO2ylyOab7MIzBXZm7oaB6hpOmRHb2lOi5ik+zplCbU/zr
 F+UWc7WK5rGXxOTNiGSMF9XWbknMewIaJhqztQy+/veaxKaVGKZvea7ul
 5WQXjUTEbrKjarSRQKu+0JL3u0g/p/RU1nXMFOf93fthLDYvJQyVXbBT5
 qtUEp6W+vLmd0a4pAK+5R7l3cfBajrv0VLeGgxHlhG+ajrPK6/rAJJVWS
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h5Teg5jI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
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
> Of Qianfeng Rong
> Sent: Tuesday, August 12, 2025 3:32 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>;
> Stanislav Fomichev <sdf@fomichev.me>; moderated list:INTEL ETHERNET
> DRIVERS <intel-wired-lan@lists.osuosl.org>; open list:NETWORKING
> DRIVERS <netdev@vger.kernel.org>; open list <linux-
> kernel@vger.kernel.org>; open list:XDP (eXpress Data
> Path):Keyword:(?:\b|_)xdp(?:\b|_) <bpf@vger.kernel.org>
> Cc: Qianfeng Rong <rongqianfeng@vivo.com>
> Subject: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
> simplify code
>=20
> Remove array_size() calls and replace vmalloc() with vmalloc_array()
> to simplify the code and maintain consistency with existing
> kmalloc_array() usage.
>=20
> Signed-off-by: Qianfeng Rong <rongqianfeng@vivo.com>

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 2 +-
>  drivers/net/ethernet/intel/igb/igb_ethtool.c     | 8 ++++----
>  drivers/net/ethernet/intel/igc/igc_ethtool.c     | 8 ++++----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 2 +-
>  drivers/net/ethernet/intel/ixgbevf/ethtool.c     | 6 +++---
>  5 files changed, 13 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> index 1954a04460d1..bf2029144c1d 100644
> --- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> +++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
> @@ -560,7 +560,7 @@ static int fm10k_set_ringparam(struct net_device
> *netdev,
>=20
>  	/* allocate temporary buffer to store rings in */
>  	i =3D max_t(int, interface->num_tx_queues, interface-
> >num_rx_queues);
> -	temp_ring =3D vmalloc(array_size(i, sizeof(struct fm10k_ring)));
> +	temp_ring =3D vmalloc_array(i, sizeof(struct fm10k_ring));
>=20
>  	if (!temp_ring) {
>  		err =3D -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 92ef33459aec..51d5cb6599ed 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -920,11 +920,11 @@ static int igb_set_ringparam(struct net_device
> *netdev,
>  	}
>=20
>  	if (adapter->num_tx_queues > adapter->num_rx_queues)
> -		temp_ring =3D vmalloc(array_size(sizeof(struct igb_ring),
> -					       adapter->num_tx_queues));
> +		temp_ring =3D vmalloc_array(adapter->num_tx_queues,
> +					  sizeof(struct igb_ring));
>  	else
> -		temp_ring =3D vmalloc(array_size(sizeof(struct igb_ring),
> -					       adapter->num_rx_queues));
> +		temp_ring =3D vmalloc_array(adapter->num_rx_queues,
> +					  sizeof(struct igb_ring));
>=20
>  	if (!temp_ring) {
>  		err =3D -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index ecb35b693ce5..f3e7218ba6f3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -627,11 +627,11 @@ igc_ethtool_set_ringparam(struct net_device
> *netdev,
>  	}
>=20
>  	if (adapter->num_tx_queues > adapter->num_rx_queues)
> -		temp_ring =3D vmalloc(array_size(sizeof(struct igc_ring),
> -					       adapter->num_tx_queues));
> +		temp_ring =3D vmalloc_array(adapter->num_tx_queues,
> +					  sizeof(struct igc_ring));
>  	else
> -		temp_ring =3D vmalloc(array_size(sizeof(struct igc_ring),
> -					       adapter->num_rx_queues));
> +		temp_ring =3D vmalloc_array(adapter->num_rx_queues,
> +					  sizeof(struct igc_ring));
>=20
>  	if (!temp_ring) {
>  		err =3D -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 25c3a09ad7f1..2c5d774f1ec1 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -1278,7 +1278,7 @@ static int ixgbe_set_ringparam(struct net_device
> *netdev,
>  	/* allocate temporary buffer to store rings in */
>  	i =3D max_t(int, adapter->num_tx_queues + adapter-
> >num_xdp_queues,
>  		  adapter->num_rx_queues);
> -	temp_ring =3D vmalloc(array_size(i, sizeof(struct ixgbe_ring)));
> +	temp_ring =3D vmalloc_array(i, sizeof(struct ixgbe_ring));
>=20
>  	if (!temp_ring) {
>  		err =3D -ENOMEM;
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
> b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
> index 7ac53171b041..bebad564188e 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
> @@ -276,9 +276,9 @@ static int ixgbevf_set_ringparam(struct net_device
> *netdev,
>  	}
>=20
>  	if (new_tx_count !=3D adapter->tx_ring_count) {
> -		tx_ring =3D vmalloc(array_size(sizeof(*tx_ring),
> -					     adapter->num_tx_queues +
> -						adapter->num_xdp_queues));
> +		tx_ring =3D vmalloc_array(adapter->num_tx_queues +
> +					adapter->num_xdp_queues,
> +					sizeof(*tx_ring));
>  		if (!tx_ring) {
>  			err =3D -ENOMEM;
>  			goto clear_reset;
> --
> 2.34.1

