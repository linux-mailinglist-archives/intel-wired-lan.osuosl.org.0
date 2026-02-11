Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKVuGvRbjGnelgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 11:37:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD741237B2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 11:37:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EC1640C84;
	Wed, 11 Feb 2026 10:37:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A0pyiA-lWN_D; Wed, 11 Feb 2026 10:37:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B480040C80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770806254;
	bh=fUx04PP90BWfx9dqqp+vvdfbDp9rjI9jQH7l/XXirq4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JM0OdI4VXNQgr6vVIqyzMKYg5KIUuyWX/eyiyZEJj9DDvEdNr65c8vwAvNqyY3RaS
	 AEoxtgXeG7VxXrDo8oZMG3AofzCzh6oBBnhytnHVLt7khtGqa5gphgGY5uslA9IEcY
	 3EfK3cY+M6IoUvqgUoRNo4u7EYmqs3eOmslRnHcAzIt+/1EJKFW8u1r3f5Ro+uRyV8
	 KA26WBX1Q4naYxEpWWN5N0mC5MxNkOzSs9msnYHiGc71Wt7oS7f7E5nTX99DYYWgNz
	 WvBKB2WxPqmsD20j589vP6ce9huaq1eyIqV+LrBvsixyOerzFQvvMODijJHBACv7fZ
	 Z+0rRO4Qpx4pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B480040C80;
	Wed, 11 Feb 2026 10:37:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E356223F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 10:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4B9660B86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 10:37:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yHcBepI4EkQu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 10:37:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8619760B1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8619760B1B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8619760B1B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 10:37:31 +0000 (UTC)
X-CSE-ConnectionGUID: SVfKgbpRRPybk5+1+MJpTg==
X-CSE-MsgGUID: jBqCB13ASeiFzXPZrCbxeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71849585"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71849585"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 02:37:30 -0800
X-CSE-ConnectionGUID: fzyMExOkTZmhG24jopq9Xg==
X-CSE-MsgGUID: sBi693zRQTG0gfH7Gh/XZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216500527"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 02:37:30 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 02:37:30 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 02:37:30 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 02:37:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DglvYUebN49/+H6MUncrsalPFxI8uBsTOYf8LKuCCJ7xEPfhzaTGg+8PJUrkM9S8yHkYG4g3MQ9gt7M0Hi9WrLMkikQb5n2TvhteFx9woH7ylYSNekSW0qUVDtKVCmltMdp+3/VxHhwN6Zw9xIgcH5PFmwxJrsYLMZx5OKBJkmeWI6niNtobzt6ZjpAZfQbzY1ZCsRrG80SKKSyH/5+FEeej40yCz0W028J8zyDwu0v2k4aEMNkUGh7iGDKNM5zSPKIdkDNVJF2Yatz0vrmncQuSPusvS3Kh+p5zSpvnwe1NCzEPEB9WThvPRASbdeXatZUxEXKNqE9gWZAZFObc8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fUx04PP90BWfx9dqqp+vvdfbDp9rjI9jQH7l/XXirq4=;
 b=XymwugREOsbKWUjTS3TreL7ZEq6hQ5Vngp+EdN5pFyunvVcGdS3L6lzhEVAvN4Wvya5sTQiJtys/mpzeHXUQ8xqmENPgSl6OorkXO7QDFyCEhJl28wAXOlh0VJ3xaqg1tMl+EM6/vDXhaVNZZoLKyH9m5Br+a2wCOjW5UVqbyF2PR5P3GzESIoOFiIUnSMtyslundo5DOlEj533PgAmCjSUS1XFzWvNsFCC2r9H6l/hcpq3GMPKyUfFTrxPVBoMLVJnCDsGFs3YD6738FUB4A25/RjvpGXOEIUFW/QJAJcukZ25ixuk4hWqCiBoplkUzan9ibzRuPTfi6O1J9BxZqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.10; Wed, 11 Feb 2026 10:37:22 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 10:37:21 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Michal Kubiak <michal.kubiak@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix crash in ethtool offline
 loopback test
Thread-Index: AQHclC1PyhUpydsbnkSi/TtFl+MZxbV9Wwqw
Date: Wed, 11 Feb 2026 10:37:21 +0000
Message-ID: <IA1PR11MB624148EFF0B92932BD4AD4058B63A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260202101755.315528-1-mschmidt@redhat.com>
In-Reply-To: <20260202101755.315528-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: fec6a17d-7c72-4b31-bf47-08de695989c8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pj5Rn+vX4tTOSc6s0yDwan6a8lVBphtJ7ei7z2BK6uMk0cCfiAQOLn5dAO8T?=
 =?us-ascii?Q?USuZu8Idy4L9dS81Jqe2OahNZ2PqtWor9F+2OsYRFaVRRQals5YW/LLQL92D?=
 =?us-ascii?Q?AHd67fKAjiT9YXHPbaQITkcX6jQyzAjuIis9kIbNZ6ZkZwdC9iVAGZz707nP?=
 =?us-ascii?Q?tUxfIxvB+RwrT9zqKLwDWeBjzXtgdE6ITMei/Rt96qZFYC/yBFAqnkHUXVra?=
 =?us-ascii?Q?TdlsJdVbYeaQ0Um0VtPNjqyM3Q8hOfDuSjwY8cE2+sUIq8Fl3E0Baswp2M0k?=
 =?us-ascii?Q?lgjbPDqfBHeDf9hBkWlsNrHwHCOMik9Jau6Qkya6IjN/Asnw7gmzWAM1Ff2S?=
 =?us-ascii?Q?KNi1Eq7X4+IStuOFPOgGDD5W1VrOftAPqbGWbS/nttIO23Lzt7ofzYNT+zyR?=
 =?us-ascii?Q?/UucVyiJc9KWEsPRa0k+jt5ytD5cczhsw9ov/v6pC/8WBBNe7pdwsPx0Mu0I?=
 =?us-ascii?Q?ppEmh/5h+EmQDhsWoSDaKtow6amD97fBkYn931/MitktDHoxNdUs/KMOA8tA?=
 =?us-ascii?Q?DnFBmLHODLhX4vsOQclWyzaXJ3yKQ+ojbjumOYU2Z3LeWTWkOyXjrlQhE4VF?=
 =?us-ascii?Q?VqbRkoQ2vxihmPq98hKSD9Cw4V6A/9jrFxWmKHnOworNw2P0SdWqmT0RKxIw?=
 =?us-ascii?Q?b0LfBRdbXFUn1xC9OA5H0oaf99EAIFTdepPAYAdKRoxQhUUBLbWK0IcqzFRU?=
 =?us-ascii?Q?bSjHFwgvePqdmrvQ+bX0zc9Dge3lPo7SRSU5UQVZ6zHzEtI0mJXUy7+aG+2F?=
 =?us-ascii?Q?mAhVyRFrujk+n1irdMg3ySJxWkyVkHqVbINAwv8VyWIH6CxPGU9oIg4Crddk?=
 =?us-ascii?Q?CGpkG5M6dGl2bJQJ7p+FJ7+PTFay3OVRIQGSNfD1PsSfkKm6GgrJb5EzAQ4R?=
 =?us-ascii?Q?ChChT13TcHSkXNOdo9810GVRqd7mNB9pekXosAwdSrLgjQn/AP+iK+zSxDPC?=
 =?us-ascii?Q?XqiEsbnqljo861tgZHLkfEdIF5HK9Rrq/Lk77c2vjyIkGMnsvDfQcFMTfZ6u?=
 =?us-ascii?Q?Uvf0Q425AQbeGErrK1spFuUBGjL1/Ah/86rkPDRM4S6hIjsBW0CapifoN5uN?=
 =?us-ascii?Q?m0mcdx7gpwfYYTusKqiSJHbqulUqWTYu9a3O0monWP0sThzM07rgYAXGG65d?=
 =?us-ascii?Q?KQb9QkNBeTNCRjHw4qqS+GVOriUPDkwCUTA+IbiZ7B5ygxkWXm0wj4cGSt+Z?=
 =?us-ascii?Q?Icdih0ivecRamYMIURIEpDP9gh86ObhieI8lmC/ec9NOWwxXB2i0RyJ/DXhI?=
 =?us-ascii?Q?CeiaNlPlxLL4RY5OQFHzmQ8wvKogIluwMyWBmo9/osX72H4hzjDBGTocJxUa?=
 =?us-ascii?Q?WyBkun+Ijloef8953mDigMZCSj9/ZXrD206owwS7JntDdSiqhC8ox94wlQQl?=
 =?us-ascii?Q?0IYBr5c3R6AR1SLfW+V3lPXFhTgZFcfS2rhxsfRZ9oR9FWTL5lXq2SfIt+gA?=
 =?us-ascii?Q?zaaGEyRBv1sgQNLwL3075M8OfIrtBzfvtazgB7rUKNFc8oQerfHNedwZsD0Y?=
 =?us-ascii?Q?4Z/6WNbxtF8U0VD57zfMMg42iYgP6yI+CuLWrLsooi1TTbfHk4Qem91qlX5/?=
 =?us-ascii?Q?vuTtGaQhHT/35swfoXaZ9jUEaRAKUUIDFS3DaGKt6/98aeNKoM62JunJbs9h?=
 =?us-ascii?Q?I2zJ3VvH6FxK8ANrYBF6Cja5DzPb9d8XKOo9ptJZ4TRa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A0c/8vq/eIUO4EcqIKEO6Y4lmxSwUc1cN6d2Gp/z3MEXhAwFOWAvZX6DvMXf?=
 =?us-ascii?Q?QgA1wg3raHIaOq6TueQwl5G9Zz1+GKhAXwpwrz5n7WIAigngzQCU4SxqX6dn?=
 =?us-ascii?Q?kBIT82Wgh0N8lmWV8C/2PAEMNQ6p8RQuHERU1Fu1uXHgegWnc4l+HQF64151?=
 =?us-ascii?Q?iMs/8gxGeEwjQrxaEjJ6Zcvj8ZPOVg0YWn6ygFIzSaricXW/UELUhFZdYo3U?=
 =?us-ascii?Q?+OCu7tNlvDD8z8rUBW6/i9Hh9yr2f7YuED4cD27z1pkPlKW5JJHGBAax6He9?=
 =?us-ascii?Q?cHkN0L/3x6Ar0MU2/42+KcESJO0bUo9ojE5rIVEpFrOquIwN7vxJNRIlfypV?=
 =?us-ascii?Q?b72DVht9oWkaTagyVrvayPviTUgb7Gvjb3t5alGHJj2px25+i7xAF2FiFm0R?=
 =?us-ascii?Q?cjG1mWJgq6gikpS9paJSqFpO9jsbw6wvj6I7sde97pZhbiQXNRBZbPvR8whF?=
 =?us-ascii?Q?+ts5tX7EFjlvd0tAjrAUhy64smsnKFtI60PzV9oj/qB2WU+coPW/4SIol1Wk?=
 =?us-ascii?Q?EvxhHQ/loAzqBzBxienD4y3RbaVmImHKEUJT/BweRX7ZCm1E7ia8nkNrNBYB?=
 =?us-ascii?Q?eNJT6s8XJiwqtq3ZgTLSdZooJj187KZWHQR3BMDa13aSulMLE4r2/VzsYNXZ?=
 =?us-ascii?Q?CA0Krbg9zIiVKjrRRKgJVXKx5+p6ivTS3BCTzPEsnr038qFVgl0Zg3qTYdx/?=
 =?us-ascii?Q?s95Amz5ZK+TI1ZDFSD2DjHgB1VcKK0cOELFZh6dXz7r5KI8WT08JOF2NQ2we?=
 =?us-ascii?Q?knuT6VGR70enVCXGujxaE7nBrkemvT2pW1HhZvhEx8GHoI0eq9dUN9ScaLbc?=
 =?us-ascii?Q?+1ry9TRAU+L+TIFgCGyojqS/tpwbAGfxYnaUiut000gWx4svgoTpAmbQVmuO?=
 =?us-ascii?Q?BMwrnPevpdSYqyqn8irJduZSEU52kBFAf9frGXXu680bflx1ZAPQmvrr5zDT?=
 =?us-ascii?Q?jy42U/GyjpJfpVe0I4NDjvMcdfYYzJ+prJreAX4CfkZtRXaehgZs94wCIK3S?=
 =?us-ascii?Q?SZ+vY2IgMRCRJYQ6Rh8OJ13lwG/0xCdUxOQ4rEYQQOvcG2m9JNbW0ndrbBN0?=
 =?us-ascii?Q?4K6ZKgu5svyRW4nEhU+xcobWX6ETN3UZtXjX7RoBXYF94dXzCABeSFoFxmST?=
 =?us-ascii?Q?FoFRT91esDiDNZOKVkdCy+LT6imU4pQTwv4u8f+QECL5b80pJB5Y85Lu98Lx?=
 =?us-ascii?Q?6KngNPWNN73/WNl3Cy1PidaIHnt2WcDrLAIFyoNKQypHJSVpftaBp1aCKAwN?=
 =?us-ascii?Q?poCR06VoNGMHGHc2bMHcWPnhXEEXggRc66JTEeMP7gG9Gq4vZ00hVeqfvRqW?=
 =?us-ascii?Q?O1rBv0WPthw3eipjgLexTRxnrqP5BexgcR2ze6VbKM5c7GywMtYpPt1xmARd?=
 =?us-ascii?Q?WJqUScOUudJTLul/X0EOs4RaNAJu38GfkZ71kgxdA7NpWjlO0Bx10ZOzqHhM?=
 =?us-ascii?Q?g2qKbTn1gkmA6oMNFS9j8W00Vak3DVzYRytcB1SUtBDbY0qAcewSsme4QXst?=
 =?us-ascii?Q?U10GE9eqMzK1eFahpHQwniJPRL4j/TXYbh4xcNPInyXDyNhTEC5EGzET6GBO?=
 =?us-ascii?Q?/K4+EnQwrNIdxW9rCHChIKgITfxmsZx3CpaSather7dYf/wn0zp3IeKCYbC0?=
 =?us-ascii?Q?yN8VHeLPA9oLObwUFfznfNfrXcmMwWJEe66ObDXglUxX3B3I7nUXjaR99VzD?=
 =?us-ascii?Q?i32lP3ylAW5zqBIUUC1WJ/+Xd8FuJD/FoEzzm62ib+cW9Ov3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fec6a17d-7c72-4b31-bf47-08de695989c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2026 10:37:21.7464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y4tHmg6fbgIXFCm8AEMGHkF/9kfOkhJxVF+kNA2RKIR8+gxryA922JFwdZzQ0wTTCz1PLmPzi9bFlk/EfjO+XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770806251; x=1802342251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TtHJYWUhFuPnXluP0iNeuMW8HbYbhleDySddzoMg7+U=;
 b=YN+KlvoYH5Z19pJpveSES3WMtbz6sA0M6J8XO/4HIi1A98KqsxpBhog4
 2MgpVZSaIAjP1fpp+F2hguEnfNB/HXxe8txYe344vWlZQZbk4ddcIfpH+
 gaW5y5/KXskl2NzGtc6h99rf9TY1eAvMgPoYJSROliS36La380N0ruJ9p
 GuHKaGhFv6xBjb1vFg4kue0iUyuMfqsS0W7MWRGCa6N5GecRepkuxjOIE
 SUhQI+//TErgfzZXLtt8/JIZyGL90yr8nDRoJpM6WuBFGlCNYq7FnYBtZ
 XJPZhk7xHzIb1L/WqaYsUJqlzV9OgCRP1WxNZMhc25vyTI24Sc9qBvaHU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YN+KlvoY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix crash in ethtool offline
 loopback test
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:michal.kubiak@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8FD741237B2
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Schmidt
> Sent: 02 February 2026 15:48
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Lobakin, Aleksa=
nder <aleksander.lobakin@intel.com>; Keller, Jacob E <jacob.e.keller@intel.=
com>; Michal Kubiak <michal.kubiak@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kerne=
l@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] ice: fix crash in ethtool offline =
loopback test
>
> Since the conversion of ice to page pool, the ethtool loopback test
> crashes:
>
> BUG: kernel NULL pointer dereference, address: 000000000000000c
> #PF: supervisor write access in kernel mode
> #PF: error_code(0x0002) - not-present page  PGD 1100f1067 P4D 0
> Oops: Oops: 0002 [#1] SMP NOPTI
> CPU: 23 UID: 0 PID: 5904 Comm: ethtool Kdump: loaded Not tainted 6.19.0-0=
.rc7.260128g1f97d9dcf5364.49.eln154.x86_64 #1 PREEMPT(lazy)  Hardware name:=
 [...]
> RIP: 0010:ice_alloc_rx_bufs+0x1cd/0x310 [ice]
> Code: 83 6c 24 30 01 66 41 89 47 08 0f 84 c0 00 00 00 41 0f b7 dc 48 8b 4=
4 24 18 48 c1 e3 04 41 bb 00 10 00 00 48 8d 2c 18 8b 04 24 <89> 45 0c 41 8b=
 4d 00 49 d3 e3 44 3b 5c 24 24 0f 83 ac fe ff ff 44
> RSP: 0018:ff7894738aa1f768 EFLAGS: 00010246
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> RDX: 0000000000000000 RSI: 0000000000000700 RDI: 0000000000000000
> RBP: 0000000000000000 R08: ff16dcae79880200 R09: 0000000000000019
> R10: 0000000000000001 R11: 0000000000001000 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000000 R15: ff16dcae6c670000
> FS:  00007fcf428850c0(0000) GS:ff16dcb149710000(0000) knlGS:0000000000000=
000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000000000c CR3: 0000000121227005 CR4: 0000000000773ef0
> PKRU: 55555554
> Call Trace:
>  <TASK>
>  ice_vsi_cfg_rxq+0xca/0x460 [ice]
>  ice_vsi_cfg_rxqs+0x54/0x70 [ice]
>  ice_loopback_test+0xa9/0x520 [ice]
>  ice_self_test+0x1b9/0x280 [ice]
>  ethtool_self_test+0xe5/0x200
>  __dev_ethtool+0x1106/0x1a90
>  dev_ethtool+0xbe/0x1a0
>  dev_ioctl+0x258/0x4c0
>  sock_do_ioctl+0xe3/0x130
>  __x64_sys_ioctl+0xb9/0x100
>  do_syscall_64+0x7c/0x700
>  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>  [...]
>
> It crashes because we have not initialized libeth for the rx ring.
>
> Fix it by treating ICE_VSI_LB VSIs slightly more like normal PF VSIs and =
letting them have a q_vector. It's just a dummy, because the loopback test =
does not use interrupts, but it contains a napi struct that can be passed t=
o libeth_rx_fq_create() called from ice_vsi_cfg_rxq() -> ice_rxq_pp_create(=
).
>
> Fixes: 93f53db9f9dc ("ice: switch to Page Pool")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
> drivers/net/ethernet/intel/ice/ice_base.c    |  5 ++++-
> drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 ++++
> drivers/net/ethernet/intel/ice/ice_lib.c     | 15 ++++++++++-----
> 3 files changed, 18 insertions(+), 6 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
