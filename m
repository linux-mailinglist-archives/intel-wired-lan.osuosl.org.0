Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE20AF5F77
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 19:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E05F680C71;
	Wed,  2 Jul 2025 17:07:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x0mkjJhSEUYI; Wed,  2 Jul 2025 17:07:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B979F80C76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751476068;
	bh=Nl/dDEzvKmfdW1phRqdJv3F2jlE4H+EuiXxfmWg6aHg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rvvqa/OENiWN9ph2ehLvQugUpsSPiDe9+gRm1SJq7CAZwcyhLdlTTKauKJ3ISW840
	 Nk2qmBoENPfDnOSZBOJFQ/nfbqdeOutn0YKwQvZes7lwmFxdxezKlSSK91X1G2gNuQ
	 BfKhsWl7ZOrFeNPH3D6AvRuKNZpmC7mCtlxLSt0XN3rVew27Pxd8pYi3tOaLqpIJF9
	 pwXsVf89lIsrPMJbhWRRh+Fy/6uIQ8EtsMALbOGud1zuAHrH1zB07vyFmIUjgKSVEB
	 3sdcWjYgo0zwyAVolxWqeoPi78yfobKkRuQjqnrTmvVkp8p6ZvXZU8noUZtHu2wLHa
	 68/u1YbcX6Z4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B979F80C76;
	Wed,  2 Jul 2025 17:07:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95811128
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 17:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9324C40427
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 17:07:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5MeY7u-t2pol for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jul 2025 17:07:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0C1E400C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0C1E400C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0C1E400C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 17:07:46 +0000 (UTC)
X-CSE-ConnectionGUID: oPySW+PNS3erdPIrSlaqqw==
X-CSE-MsgGUID: xZX+1l2LTVu/yv1yVrNOiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="64383822"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="64383822"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 10:07:46 -0700
X-CSE-ConnectionGUID: dltjO+kRR5m/t6Sq2Zj22A==
X-CSE-MsgGUID: VdfP3eUBS7mPvKnRPpV9+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="153904215"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 10:07:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 10:07:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 10:07:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.46) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 10:07:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d5V0pYhwd1jj+xNEnc5Uey8grpFE68itqKhvucNrrCPqj2TPHPWPbMD28xnHwXIxWSiT9Ln7/w54SZ5N0WoMFyOyq117ZFGpvvaqy1t4LuTa5w0yf8DU/pEHx1gYKBb3Yn43e6A0/pBeVSgHbtcUW77990C/p/aNngadHZ6ttqvV5jSpC8DoOBLtOLEeLBwjIvj9GaHeQ0gdBMfyqQYjERFgzqzGOSrtqlYUx2fd/MyhqdfxcMWaOaLQHBd9zVwAD1r1XDH7efQ/FNiO2VAPlPII6HXHFbqNFeGCj8Op0mBGRNayZS7UH7aI+jPCAFYTBksJGOuSVy9V/afVApMKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nl/dDEzvKmfdW1phRqdJv3F2jlE4H+EuiXxfmWg6aHg=;
 b=DbcLDtktzxakTOF+OQSY3yX/l5fffqBc18wezsTLq59w3rSSjowe1qFIg8+2SDVTaQXxzeF7ixLp6HCyQkYUZ7d2hZEblAwXZKHs6K9EU+IwjsuPCR1sJl1+6zgmcj06B+jpiE43lD9Pq2i/EJhsM6ApYCBVqsibYJ3Vdgb6f4CMDJ4yVFXluj7AVXKciEZjZJfE+TRxMmoJjIuOf/sML2VtFFzPmM38KrnJV8rvNPGBjvL3ii0PZOTgHA9+fGyTspukbhALbmIeEMqQTPH2XGe1e4rlAJ1hKh+U20G5ymYO9OawhHs+D0zzp2/RZ1UsukRzssCoeAjnxua78MTBvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 by CY5PR11MB6461.namprd11.prod.outlook.com (2603:10b6:930:33::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Wed, 2 Jul
 2025 17:07:40 +0000
Received: from IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7]) by IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7%5]) with mapi id 15.20.8857.016; Wed, 2 Jul 2025
 17:07:40 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stanislav Fomichev <sdf@fomichev.me>, "Bouska, Zdenek"
 <zdenek.bouska@siemens.com>, "Bezdeka, Florian" <florian.bezdeka@siemens.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v1 1/1] igc: Fix data_meta pointer adjustment for
 XDP zero-copy
Thread-Index: AQHb6l+pd7Rag6D2PUe8jLa9jltfBLQfEU7A
Date: Wed, 2 Jul 2025 17:07:40 +0000
Message-ID: <IA3PR11MB9254F2273FF0D0280AF049FED840A@IA3PR11MB9254.namprd11.prod.outlook.com>
References: <20250701080955.3273137-1-yoong.siang.song@intel.com>
In-Reply-To: <20250701080955.3273137-1-yoong.siang.song@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9254:EE_|CY5PR11MB6461:EE_
x-ms-office365-filtering-correlation-id: 7499ffcc-55c3-4bb7-5c0f-08ddb98af40d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5eFmsgkGOVr7ZXmqazBDZAvlckkrYL7rWgnZh0cwtAsqO9AlBVTlusvPDyEe?=
 =?us-ascii?Q?Kn5qVM2vQUla1vKswF5LmkTcW/2FVNMtfWNsOmejShlo1MT7SHIQRKkotQ3b?=
 =?us-ascii?Q?hXUuAocEWJLhmzP1jJf5ALFT9+9Ll5EYHQHjxOXpV8nZOl5CeL3GiF8cvHws?=
 =?us-ascii?Q?ykKtfjrbUWfoHmk9liNV3sZu4DsK3SJb+/9lObStcuQzYvyuLedvpRfmFPpm?=
 =?us-ascii?Q?b3kQD95C9nQKGfQZSMYEBdmZmmfgQCSRyyZN+9Z6xN5of815H5plmEoRrOvO?=
 =?us-ascii?Q?DOqv1pBY5pj5fgiJPkRAZembogLmy7WbFzRKH65h3jUGqg0yLWmelXmzE0Hz?=
 =?us-ascii?Q?TIGXnb1lpv8frK1rxxqoL7QSZskzGY0KuxD6z9s8MHmqTr8QlE50CaWD1FNL?=
 =?us-ascii?Q?ZdnGipZOInTn2VLsg6w+JipN0Rj5hUsJs3gYegQZ/cUzjGI8OhNQa9jJttv9?=
 =?us-ascii?Q?wue5sKgk7BKzEX0X8YotSvUSWM2jPh2KE4CRjzfim/Gbz/EUQ5FaD1kkBv6V?=
 =?us-ascii?Q?k3kRitshpkTsp5d42x4pDy10T7HEomSglZQvAcm3Awk1T3fRbxJ9XLnogvVH?=
 =?us-ascii?Q?UjYU/f2QbwuNLfw1p2R/xI0GnPM/JDtpMkXm3MIVv+QKu/xRQpsq6EyWBCHv?=
 =?us-ascii?Q?Dxmp0al84OJq9aEGtOCegwHmvaWm/1Zv4mow42UFusTeYbBB5aJQZ4jMFzYj?=
 =?us-ascii?Q?yvKMHCkAkZUCddIwZzB0YcZ5aUkWttVLVWYlHhd5cGnAuvDS208DDZARO4Eb?=
 =?us-ascii?Q?VkF5SPQaI1MutWdeGKpbKcA1JZ//vI9YncIo8pw5MxBaFx5tUIs+sLvzgEQQ?=
 =?us-ascii?Q?ERz24tKgbIijyIDULENQReYRDzXMf+ZzL7rxTxS26Xv5dFOkX9Pmjb/tYewZ?=
 =?us-ascii?Q?zqPRTJZc4QGxHXb9RA1Ub9Jv1WNZ02lNnNynul1leoWboopekUw/4y1uHqeq?=
 =?us-ascii?Q?43rHZAvi/JFTTpcclwZo3pR78D0wrAD6ojKk58kl+C9MzZPcAS+lc7X2xKWN?=
 =?us-ascii?Q?K/oglRnPcmZV5/WleY1U0zhK8mAanqc9qYwUC4okvqKYu2k1FMxovfbwnGpE?=
 =?us-ascii?Q?pGEx5YA+Jb8KYRsxmbo+DOk2h+JViucNghhASj1wIaq/4Uvm7dAU0yjI90+U?=
 =?us-ascii?Q?z7vDPlvREMlidbHOYOQK7LoU44V49ejVn53vOGBrYSdDzpejZPoRzqyJAUeL?=
 =?us-ascii?Q?JzUTcp67UsHTzS0vVQQ60LRSBRd4Hmustmq6UayJ+Q9YOo6cg4Hx7XuCYhR5?=
 =?us-ascii?Q?7/A2OB2SGhkjxX1NtZF37K+iuFO+5K4hOgOL/GrJNm1sTsBHONQWW/pO+QiM?=
 =?us-ascii?Q?zuWyOmUTfSVNzA17NPNnbKkSf1fvFUAffPEK9FSi+t5zYumcTL/Z+uIaDaaz?=
 =?us-ascii?Q?T98fW77+ggzApczrZydA7j2MoHhBHQkFb3vyb3h1OeAWDPoyD1PTBB3ibyJl?=
 =?us-ascii?Q?/K+ySsu37NRJE0Q+NNGczsBlxzMLBRHVr55ULrVz0FHBbGF4lu4W4Kv0BMaS?=
 =?us-ascii?Q?BFPIJLg9DIIXkAKjuHSS7OMKbyy453Z2MCHK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q4fAPPIaw5DkgRUwlb39uqleUyw7J3HmWZOeGgjsz0Gk3d8otvMEaYFtoKVV?=
 =?us-ascii?Q?9qszmIU4yqmJeiNhKC2afbtxrtkXNn0p3Gsk070Dn4bkrHWslwyZ8QN3TqQ3?=
 =?us-ascii?Q?6xRDKESwfby+MYtlKBDfwCsRjw23TYV2lE6VJ4G2uWDah77KowN7P5Ujckth?=
 =?us-ascii?Q?02k55k0QmX4+K4AClly94sBsmEsE6Heu166VP0EKysfyOgQtXRZRKmegvt+a?=
 =?us-ascii?Q?Ea+Zvx8MLR4SvClSVZfCjaD8DvPMaPpas/AEFs0NaxNU1jwbjyy9+hmqs+0Q?=
 =?us-ascii?Q?f+tsnM0fXP5QXYU+rSpNANwvou2+mpdNCU8GgI9Pc2fFxw1TR96teyIHJJwG?=
 =?us-ascii?Q?CUpj3tB4yVPmEJ3jYLeQqTkhx3XqKkNA6SwRU7QuXHotoUHrq9R48/F1YhqH?=
 =?us-ascii?Q?5aNJusQT2WtIfiWYpHXBeMrbg36TqPulUkHC0Hbp2KNDjKic84e4AX6zBtx7?=
 =?us-ascii?Q?9ZUJ1iaan6r4FEvCfpWyZTXtvN2LEL1aR4TeE4kfOHRunFbbzq2DT64rcmGH?=
 =?us-ascii?Q?cMo+SAhpV6AZxOkLsXM9WpVT7//QaKPNvUhpD9gz5tvV21u1mF74OHLviihf?=
 =?us-ascii?Q?RbkntwJrU7OsYGPvoFuvopPLRi/NhHM67rn+SZR//l5OyR5JfzwfFtP5OvBf?=
 =?us-ascii?Q?m2NWkmOg2xjmDXY2p07tCaGOtftwnHeYe7OeKVoqFDnF3Afth55TW/3j3I3Z?=
 =?us-ascii?Q?rSKjsKanvNquuH098jRMaagNROVZPU6zTEbtLKRI2Viecy6nOcpNkJQWF1nT?=
 =?us-ascii?Q?uRxLWcMj9KvDYMtX2BzrQpfb5R2GJVEA22/AwlXcMK4V7mi0rTOW4leLEr26?=
 =?us-ascii?Q?JejLfyXXZI+dA6KqHOxdVxVjoHXkNSev5uzoFmFyOkT+Ei7aOhess/+QMFmu?=
 =?us-ascii?Q?k15AhpJwk2hPM+J5xq0psjereXond4xnWeF+IhrgGN/Lv0u0a0w79BJS0VSw?=
 =?us-ascii?Q?19xdCljlrMn8/36N2YYK57m5sECSBJNqm3w1S3PKjs9kXQzI8PtIishhNFH7?=
 =?us-ascii?Q?FfHE8REpPeVNOACI1vkCVweYFxRw80xZKEe/pmOvEuj3aFHXk79jkvXqDf+N?=
 =?us-ascii?Q?DxbgtF4TFV91LylShloccmP6W4o7kjL1suBKsE+oXl8DYCPqob3snEejzpa0?=
 =?us-ascii?Q?cqNVe4djRMeEabpOk3J7be5SzqSZpCOqRQQPOl9s6z1fMGpU8vWABK6CK3vj?=
 =?us-ascii?Q?/qMuXlTGEkcFJ5IVEAHKPvGS9+okIv8ZUwBwezv2epsOhtQyFdOcVK7aUygR?=
 =?us-ascii?Q?1MJs33HNV2gnZkEU+qTAT2ByR2BlPHr90CuHMxfIPXDAFYnhLvR0OQOb+XqJ?=
 =?us-ascii?Q?sKQ6BxEsx1/4HVvPLZTXK+45mvkTwtdIhQmO7UmTeFMn+mDe7UvWTpWSvZrD?=
 =?us-ascii?Q?eEuiTxSIFNeyxASLAmBDYJ5a3pV/hVWkRp3YjxBD4s1QLT1xXvuKhvXYjkxu?=
 =?us-ascii?Q?VW5F2fSc6Erm/8m5TMfPyjaeMKYEW1J45PlexSHfTUl7+v3W3F9Fvweimpf7?=
 =?us-ascii?Q?tiijlUZa2JiiObgQnfbVAX3XgO34hkeTqfNSCuOI0RWGNsy39dCTddb9F2p4?=
 =?us-ascii?Q?VpzPaVZC7oQ3KJvsDXZpUNwPfVZcnEQanurAsA8JWyeTDTnltT/TQAfnOIgV?=
 =?us-ascii?Q?Vg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7499ffcc-55c3-4bb7-5c0f-08ddb98af40d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 17:07:40.7114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TU8s79obz/FQf75nqNG+8EuZHNhWWT2o+64ygZlIv83s1JBcwbpsXezJAKYhZ5d4Qauq8fqr5mPS8kxkujL2T2f+x6Sb+PBr2kTiXawmfB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751476067; x=1783012067;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0CFdTsEGLLT6R3OjlQLfQthXr1VuRhbH2KHOUj5Pi+4=;
 b=gbKsIBt+1EmkrPVWNtySkv/eegF3OwkoCzysxLZxMrcRqqcVRGCm3vEp
 b/EH2LlTYNNAmWZSMcqp2FpY79Q3XAxI6HUtw5XL777YnnLycNgOwmWG1
 lCH+KI1ECvESry8Av+GUDecCoIClfTwaCUU+MjU66a1TmDMwgQAZIqBPS
 6hFPbrVb+R3mb4MWiu9uG9mUpl9/7dfdpDUpq5Nz8gmgSXErexm6TU4S4
 CZhH9XtkEIr+mOfzUj4sEmOJ+10ayE0HBHBHK539d0rniKDgZD3zn1WOw
 a36CBAbqQfyW1gNNppJyfbgzXOr1yp+u+JHN6zc7a+9QFb8nL9g1B16Uq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gbKsIBt+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix data_meta
 pointer adjustment for XDP zero-copy
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

On Tuesday, July 1, 2025 4:10 PM, Song Yoong Siang <yoong.siang.song@intel.=
com> wrote:
>Remove the unnecessary increment of the data_meta pointer to ensure the
>metadata area is correctly presented to XDP program and to avoid accidenta=
l
>overwriting of device-reserved metadata by XDP programs.
>
>Previously, the data_meta pointer was incorrectly advanced when handling
>hardware timestamps for XDP zero-copy frames. Since the HW timestamp is no
>longer copied into a local variable, there is no need to adjust data_meta.
>
>Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
>Reported-by: Zdenek Bouska <zdenek.bouska@siemens.com>
>Closes: https://lore.kernel.org/netdev/AS1PR10MB5675499EE0ED3A579151D3D3EB=
E02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
>Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
>---
> drivers/net/ethernet/intel/igc/igc_main.c | 5 -----
> 1 file changed, 5 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>b/drivers/net/ethernet/intel/igc/igc_main.c
>index 686793c539f2..8362e789777e 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -2829,11 +2829,6 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector
>*q_vector, const int budget)
> 			ctx->rx_ts =3D bi->xdp->data;
>
> 			bi->xdp->data +=3D IGC_TS_HDR_LEN;
>-
>-			/* HW timestamp has been copied into local variable. Metadata
>-			 * length when XDP program is called should be 0.
>-			 */
>-			bi->xdp->data_meta +=3D IGC_TS_HDR_LEN;
> 			size -=3D IGC_TS_HDR_LEN;
> 		} else {
> 			ctx->rx_ts =3D NULL;
>--
>2.34.1
>

Following the discussion in [1], since there is no strong justification for=
 making
the metadata length user-visible at this time, we have opted to retain the
current implementation of the data_meta pointer.

[1] https://lore.kernel.org/netdev/IA3PR11MB92541178AAF28F03639A9435D840A@I=
A3PR11MB9254.namprd11.prod.outlook.com/
