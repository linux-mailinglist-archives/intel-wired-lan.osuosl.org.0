Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANo/J2gYhmktJwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:35:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F13E01005CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:35:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D98E41A84;
	Fri,  6 Feb 2026 16:35:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rl6rWBjWqm4k; Fri,  6 Feb 2026 16:35:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8347141A3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770395749;
	bh=J356bu1ofzPam6CZSY9nZ4ik9QazZpEhVoDpOsfvl+c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x3dIJ+dGsPQRVKxZYkXS/sRtXqkwx2aoaAK7P9+QERlxnQTAKLlx3CgVxX6fDoYYD
	 iMkycg0awPzBRF5DhDKKtMiCxSsXRrqa4Zhk0iMrOEzu2iXhdPxAYy/GIBjhpLWiHz
	 8Z9LM4+D9zCKylRlXtYfrX3xVtGtGMzOKeevEo4IutTSQuO6YuvnEhqu97+Pw8Abvq
	 mazfHVSFWwaXndtjL4LRWxWCqoRdILP3/HZn5YZJJyd+qnYnYD0Fwzwz5gwHpJASw9
	 qOOht87nUyPmFc0wiBlRFtUB251rpEwZszRhcXa+xpojniYUitwBcn2VCXR6z60wAY
	 GXvHKW6QMeqbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8347141A3E;
	Fri,  6 Feb 2026 16:35:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EFD7D2EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D213A8403E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:35:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DlnIthd8gYwI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 16:35:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0EDA483B96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EDA483B96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EDA483B96
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:35:45 +0000 (UTC)
X-CSE-ConnectionGUID: 3O4eTpH9QKm4XaLi2eQ3WA==
X-CSE-MsgGUID: l8aiD5SPRjCmP0JMuoRG5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71327705"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71327705"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:35:45 -0800
X-CSE-ConnectionGUID: AayJcpCzSaSp4ILksc+fug==
X-CSE-MsgGUID: T7vO7fJtS/e4fSIpGny8UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="215481923"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:35:45 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:35:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 08:35:44 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:35:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yhB9xzMEaK/MTcd51zea0YP04tvEMGAR7lmWJS2FRCfR1Tf9bUNSG+EzKaDUImTTpYDTs1QoNoBoT5gZBqRSwINHJcFQtzY7B0P726UGWPFi6z1nYxwzPzgKWxYW1uUSHUGScDG0EPGMBhUPkTp8UBaRLwb3NwS7qGpDvSfsP0yCo3tbEkytbq9f2JEUWwNdWG/FQ4poYq3TT2fc/OdG3X5Ayk/QFJVtjFjjZhD3bLbG8Hhaq2TqMDg01IMhH/2rY5AC+bKR26P/PTZcSuoZNBE9kb8/bHBXtzQCSHGKlxQbBuN2TL2ddE4M8T1UhksZBWf428PUPyMXHa+Gq2vwkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J356bu1ofzPam6CZSY9nZ4ik9QazZpEhVoDpOsfvl+c=;
 b=CUpnruXaodF+ztm6GE3Vn3VRmUajcUE4r3OmY6WcdB63CkZsQur//6YnnwDcOfIONmhiY+4pZTDeFi+0HSW5YqIY0DKk5YMNisGSJZvQLkaspxhra6t9ZRPpYbAZyeMRWXbjbI8UdSvxrAOlUBKQTTyUaOB0ZKUOrCg3i9dtLXgCngxbSdhhYqpVGlkFpLgW5QuKLZNOQwm0B+3PKcZ9WeWWS9AS+Imm3K6nOduEoWlkHoOmq5M5RUAvWb3jPt71wZXJJMyLAzYd9BFi/JT7Nw5bcky+yKRblgV8PfOHD6ZIpqsuf0cHTSpLj1QrTfMX/ZN/U2bZjK6P6saatnRGcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CY8PR11MB7315.namprd11.prod.outlook.com (2603:10b6:930:9e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Fri, 6 Feb
 2026 16:35:41 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 16:35:41 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: migrate to netdev
 ops lock
Thread-Index: AQHcZTYpe5qq0zIl1EenZpico4h917V2QrPg
Date: Fri, 6 Feb 2026 16:35:41 +0000
Message-ID: <LV1PR11MB8790072B9AFDBF5AD632D67E9066A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-4-aleksander.lobakin@intel.com>
In-Reply-To: <20251204155133.2437621-4-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CY8PR11MB7315:EE_
x-ms-office365-filtering-correlation-id: a72ffe9b-f92d-4edf-77f9-08de659dc44f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?H0OoVvtp3yhVkeYllbopRZHmEAwqHWZTVnnWKLYtpMgm+BQaEkSveXadkZvf?=
 =?us-ascii?Q?6D3P9C3+NV+E4BZk/jrWKO4hWm8Pfd4lM3jsdV+M98pG5s2X5JVMblNjCdLx?=
 =?us-ascii?Q?N9fB3eHXMzSdG7cjpAJfRwJymIPetXunDFYV34f30hRbvVa8OH3SYawp14eJ?=
 =?us-ascii?Q?VVgg6B4uYkUya0pBxBTLjqQOFq9bwtlX/ZId2HcZdCD0gzrTDKvUq52iCgqm?=
 =?us-ascii?Q?zy21sNYnLDeZawrZC0RFGc0iY4MBfu+rgkBEve9yfD40YB5lrmj8Y2w9v9m6?=
 =?us-ascii?Q?flsgkotaURe6fc3LXtMInaEtmCHKvX6xVh7yv+Ai34C5THJJvG1DjfRAHvU3?=
 =?us-ascii?Q?vdbIXMugubLLQpKUL1+sHfDH9M/h5D3BwwA+L/lIYrlj9GwLGZHHWU9hAsS1?=
 =?us-ascii?Q?yUrXo6oUrVJTMzIy3BpIibuTVUFFEEpqhH9x1iLnqNoR5YuhT8Uj7c7tFfU9?=
 =?us-ascii?Q?5Nb1YjouXkHZ7L89KK4OaOUPSqHc/adNwQkm05/T4CtpITaJvPRf5M8l2M4c?=
 =?us-ascii?Q?BrUTIt4qbQFK6MITPiQfqaGZnTsZcOTyjNFfcRJlxJ+CwNrg7V6RnClA9qNF?=
 =?us-ascii?Q?9uCeY8IDMz3+ZnuaCDu19xgtYvzhDVSMNOfyUCnRJ/e+i5OSxqmesQf7jL+c?=
 =?us-ascii?Q?EPCc7PX2mhBqwx1isKAjgw/OcBXUOydt9Gp9PuobmNO+2SH+MZVSfV8XOKv4?=
 =?us-ascii?Q?X6bqdYMmh1n8fcYsJmnhWXP+4uNgsOsfJzMkxjCmpHB58O+4rGP20wEKNoth?=
 =?us-ascii?Q?n3kCUoHNUIf660Ho42y0EF5WVa+O4bxBh6/szs0P9FDOIYjFxFmQN3D1S9/d?=
 =?us-ascii?Q?VUDh5cVMHnRX0743QZiA4DRhdXjsvr+C73URGYUeCVhoZWnn3dLgTMvk/+QB?=
 =?us-ascii?Q?rkMQjquf6LBbu+vB/GQsp4HI3pGGBVM56S7PA6gVCkOO4vTvw7a4nKwj3hLT?=
 =?us-ascii?Q?RUw4d//YTQPoqlVM3O1p+YzBpSpzcFK1lMu6DrTH5PiOo5pOjdLNuUOPLduB?=
 =?us-ascii?Q?B+lgJTpVXaqFQceqGlJqwe/T0cWfYMWaNPXxmfPD3SIlitXGvoaqxEkIrtnc?=
 =?us-ascii?Q?RUNuS9egMqVqd33MEglCku5mNMW+AW/AoDtMAOOdbKEfBJ5YFtKpTACG3DP7?=
 =?us-ascii?Q?ktOdawcT6Q3jCCdVvVbkEKe6LLs51oH1JzgG6ITQi0EYGQjERHt4iXJhrosa?=
 =?us-ascii?Q?D5R5nHS0cNxCbEc1Mzu83MRznnMkGH64UK3c9w5dFyFqtuiEus32ci6Ph4zb?=
 =?us-ascii?Q?OUQkOVdvA1qlvYf0/dlXYrds57U3V/iq0pPYYzhp7vnjHYdENTHv6xM4kadA?=
 =?us-ascii?Q?1/P1is4sSuKy1g3KrLf2Yf6pX2qydx3oZRO4EDSHnVr7faq5Ggq2wzqqiIM3?=
 =?us-ascii?Q?MfjXb683jnXNMAB6sZJHvkwEDujB0Fspno1SpOV90IkzBdz7Y5/vMpdwdGRA?=
 =?us-ascii?Q?8AEuCRytz+HJosLE7lXxcU3tEJLX2ieq6oWX62KLtAs9/5wgoYDRkRx8d1eL?=
 =?us-ascii?Q?2smID7GRd+zkxoXT2m2G48uT58Ant+l9UVN6PZw9+olCb/cWfGjeM2yFykS2?=
 =?us-ascii?Q?hKGowG3/EdkAKhvS12nxVNfjewVNDoZoj0fwKA+j8PIpmTSmXEbjhCRDlbtd?=
 =?us-ascii?Q?JsqCx2HxLQKWkVNtO/+mE8c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8hLle6gpoUjwxGm9e5SunxqGaze9rncL+PtN2H9yiYsrWh3wpLe8gruoOOSG?=
 =?us-ascii?Q?lJtNNPkPpiB69y/sjokMSbS0sbZMaFkI5CUdP3aJs9tt8MfvoUx1mrykTXpY?=
 =?us-ascii?Q?HvX1eafIrPYPp//R+tE7maUJsPBSqjshYIqKVmd3RPo0Etxq1WcLSv28Fuwd?=
 =?us-ascii?Q?bxUDl/iPQZFEr/oU9F5xNUCuFUVWmpIfZWVIWl9jZN6eSG+dIdQsF5hhXJ3+?=
 =?us-ascii?Q?iJYtKhAesfUkpzIs97w3D3jffmYVEjz/7TjXRYkakeLoAzBFOYK9bShZOs4U?=
 =?us-ascii?Q?VGKzUm1wHfRQf6d4FomeFZBxGbn139BqQ2dgtMP88O21j9uI5QX/XqWGdi+M?=
 =?us-ascii?Q?4oyJ4nj1K/71pwGSK8jIFK97wUS25PGfRCfifYrprkIJcZi3Wm/XyN/SoNj2?=
 =?us-ascii?Q?OayGReZbmghul3/FtDaM04WxTc+Q5Ui2RvNUxgzp6TsR1TIxrda4vyMDtr9+?=
 =?us-ascii?Q?Nzj3KUdDAYsTIvGg6Ax0PyrUeDgB8RTcQ2HgA2Dg+4HT/yLoPQQdZQPtUoxQ?=
 =?us-ascii?Q?7D+aCSZMD/Za6zqOZihKiVPI9AL0q/nV23Sqnpv65An9AAIqW2lxRYWhVy8V?=
 =?us-ascii?Q?Uc/EX9wzOLqOVo+zANHC36/RYATo8xqjESgvwkYmKbSq6eMj4EinFOSpWn4o?=
 =?us-ascii?Q?kOqJXFYUiAT/LTQ056s9FFyeVKEM+03zi0EopnT1taK2kIdLb6u8FzsegBXf?=
 =?us-ascii?Q?afak9ttXs+j7nW+QSllQnN2HVFAbuA6JCY94YwBGzymA2vhnDlTzovAQJVdD?=
 =?us-ascii?Q?up4i4xVGLIgKqYi1QEGVaPb6JVGH/oxiUu3/vHXKQZ/KzpoiyyCib7iEpAoH?=
 =?us-ascii?Q?jIv9ZxpA3q+qD9AfXOx2VhRO3I0+tgL9tgm+t1gIYKW+g4ZmBHH9ySrDc2XW?=
 =?us-ascii?Q?sK4EPBX4WoO2ICL1MkWzdo3bbb2wukjul4e4+Mslexg76dHilJh2nVh6AGg9?=
 =?us-ascii?Q?yyb66mp07ItOjJOcmsMVHwF8IQmxa3FdY97FSa2SeeUE1vTZH+6fc2uf1YGA?=
 =?us-ascii?Q?xYBGFbEomAg2vUql9lpBLRyf3sprVAbFVNuxHLv5I+7Z+Bso4C3rjhYteo8W?=
 =?us-ascii?Q?TO4gGfh6QQJt2W2kMI4QCZ+rrB7GEEOj/KzpoxTuge1yqVnC1Nzt1jhsU5vw?=
 =?us-ascii?Q?Z0aJ4RfmDSiWXUEoO2jsdNYJF8yZVYfDinNQExXh5cferPwPrIqLlUxB+IHI?=
 =?us-ascii?Q?A6vlU1JbTACRKYdJ/RsljoJtDZ9E+txB25tuDqCfWJkdro8T1OKC62DqU/+w?=
 =?us-ascii?Q?sX8J7/iNkT2KJtPcqsEU7zXTy8b6sSoM4F1nrJIDNFhQVjep7l2cjd5EAE6v?=
 =?us-ascii?Q?DSQZcZGNVm8DIfCjomxGB8VywGHDn7ZRnFxFsO74K9OUv0XVkWK9dTdD6g16?=
 =?us-ascii?Q?3taKIpUBRiqVuNh4KJxdS3y66aSnJ+uSi1rvIJ0925eAwBkK+PWm3rERoNoe?=
 =?us-ascii?Q?KK7DXl3NzJZGGOlfdxkePYX+Y5trJiRVzKyW7kbsJ3Acmx+8Ht8SKuFWwIVx?=
 =?us-ascii?Q?0GujHm2bfDYK/RNOSPBzQebprkkcLYNdInv6cgOLXdvC2yMoCXR/SsAC1ZQi?=
 =?us-ascii?Q?9ZwM+xJorBheTqYoSuhCR+aAaTyUB6NU962WdB6gixSpluI1CHzlEGgnMh4h?=
 =?us-ascii?Q?oJN1KgKdUpT6JmTCCVy2VgPISAdqNQ+Ad5HVf90npK8JddCdpHCq2efdMy/0?=
 =?us-ascii?Q?HexUPzejfHx1ri1R0QJWT0OHJ5rwRyAzL/bOy7gJqQHg9sshWASqdkgmvOly?=
 =?us-ascii?Q?HGqihxQEqQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a72ffe9b-f92d-4edf-77f9-08de659dc44f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 16:35:41.0980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cgdQlGgv5qrd6EiQ+VjW2a3sYRJ50WoObqHw9BzI3dPuG6lCSdieQH8wFg9EMAdvNRpL8YFoJgnHS9goAD+oZXl+mW8JTnmvjdNzGOISE2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7315
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770395746; x=1801931746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2mBE7pVm8scme3NhZI9uljZ5jPzSrU5V27LWd6wHl0A=;
 b=alGOQXJmJnE4HOpm48UJtncr9hR9prR3MEVm2SZeK2BUvU3w4GqxubjW
 Y8MbO7hF3BqhLywm+uHrQ8Wtm1FA3T61sDuXU4c+rcGmmwvBUNtkNpdGx
 rLxFkghQeevneVxsVMKzMPHU+iBZbjG9grr28AXxIg3kk4u1OM7wPw2xN
 yg35QjDYIKxUttEiKOFHU4ow8AFAP2igUSLfN5YOTrdkE7tM1RR4OlA0H
 pgsgTSa/il1hrW3eT5v5QS5O2/oXOuorA8lI1ngp1PFT2BGbssx9nAmfw
 S9KvWFEh6Av0Pm2vwdrrGG4fQU/f4x07qmMOeygc+zpYh/nP1cjgSUOBr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=alGOQXJm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: migrate to
 netdev ops lock
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.768];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,osuosl.org:email,osuosl.org:dkim,intel.com:email,davemloft.net:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: F13E01005CD
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
lexander Lobakin
> Sent: Thursday, December 4, 2025 7:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L=
 <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@inte=
l.com>; Andrew Lunn <andrew+netdev@lunn.ch>;=20
> David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>=
; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Simon =
Horman <horms@kernel.org>; Keller, Jacob E=20
> <jacob.e.keller@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@int=
el.com>; NXNE CNSE OSDT ITP Upstreaming <nxne.cnse.osdt.itp.upstreaming@int=
el.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: migrate to netdev=
 ops lock
>=20
> Queue management ops unconditionally enable netdev locking. The same lock=
 is taken by default by several NAPI configuration functions, such as napi_=
enable() and netif_napi_set_irq().
> Request ops locking in advance and make sure we use the _locked counterpa=
rts of those functions to avoid deadlocks, taking the lock manually where n=
eeded (suspend/resume, queue rebuild and resets).
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.h    |  6 ++-
>  drivers/net/ethernet/intel/ice/ice_lib.c    | 56 +++++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_main.c   | 49 ++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c |  1 +
>  drivers/net/ethernet/intel/ice/ice_xsk.c    |  4 +-
>  5 files changed, 82 insertions(+), 34 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>

