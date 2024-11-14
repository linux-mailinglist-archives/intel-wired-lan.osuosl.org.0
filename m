Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BC69C8C67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 15:05:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 109B680BB7;
	Thu, 14 Nov 2024 14:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ra7Pjq6yV1Cp; Thu, 14 Nov 2024 14:04:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FA7F80C1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731593099;
	bh=8MTP4zj3RCahas2UbTDq5/6oNEyS6svcZpXSXLYTyHI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c8w70goUQZdpZ7BghJM/rqh4xc8nuFW8GFgemc9wdKrbtU7PePhAhRR2Q4p7BdJlR
	 JRq2hm5Q8YZMClxZIjYZrPnI9XqgzPVFNlyZlWEB2MmejBHTRPy9MvOEZGSmD7jwMi
	 lfRrKc/Gkp/c8CTyVpMFBIXGwLJHaOmP30Kt/vIz52JbZuDwMzACKJv2thkCXsf2Id
	 hzRRnswGs1xzltLJ1vaUT60TVWQyXKuB8kqB+5eLgzbY+OUlYpwb89jv/SvfhKLmVE
	 dWYzY9gq1N8a5MM+Kr+SH1ZARm8uBNKAJDTYeAwKqEniHism22eP2Xq547u7flwy9K
	 a8Kj5i7nO3amw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FA7F80C1B;
	Thu, 14 Nov 2024 14:04:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2BFEE6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CFA660733
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:04:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DVDGvDSb8T1W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 14:04:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D31E60A6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D31E60A6C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D31E60A6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:04:56 +0000 (UTC)
X-CSE-ConnectionGUID: JsW2gcFWRKmvuYy2iNJqlg==
X-CSE-MsgGUID: GgMcnJvOQueYe3O5f3Q7aQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="56930655"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="56930655"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 06:04:56 -0800
X-CSE-ConnectionGUID: 2El6QfD0TymGWhTKQOsOLQ==
X-CSE-MsgGUID: dV06Zv2GRSuRv0vk0vvXxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="93027758"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 06:04:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 06:04:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 06:04:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 06:04:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wCSgdPRx+zDbXe5yNvVYQKhEJd+CdKgssqrtixKLdCM29iQ0wzHiHO3lWxgkkwPxyWJZ9PTu1+A84b3+WrUX8yHb3pSHRtBXXL2cpH+SciqkZYnrPsA6V+P0EFihTqOqXvu67SeDbbiMPIbJU+0jzFJWKkz4IRt1QNwSpTD1vGpdJ17DOND5V1lwhzEF6m4fEkwsTUUmtqpEN58aGc5y1VA3N9iOUfy8+nu4bRrMWhhckHQON1DCvwJIM9azlsGAqjUetjuptygiViwyaZbmrftSDI7bHNj+HuRy2j6wSqcQ4HdFFkGAAjPxG/RmWu2km0gtigQ6qOjasC3UldThIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8MTP4zj3RCahas2UbTDq5/6oNEyS6svcZpXSXLYTyHI=;
 b=qLnhFfBbsnqViO+D4exsfdfcoBWVqycRQQcYfRaA/rUlQKD4RK5ruYkZbDEhoyzx8TJerediL2aJP7vf1uOVqKvNE94uJEuOgWtbYFFbxMMid/4OJ3eQbez4gmUc0PPeQzIPmyFXlmzWjL9yP0h3bist9RMDMxFI8pSPeIYNLA2aDMBDT0nxMqMfMB1tYfLNWDJkTdgUcd2W9TAudCYRup8vnaRKtSModB11ZhHvSHo03ouvteFH0MCA8lu74TUdFkyJpocT7GFuoWVoA641NnfrtSBqzA9LLQk7f0/52TIl9ymuPXxj+h0WLpmR5X78GQv3QFoGn26FT9lkMxY/Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB4993.namprd11.prod.outlook.com (2603:10b6:303:6c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 14:04:51 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 14:04:51 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, "Szycik, Marcin" <marcin.szycik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, "Chmielewski, Pawel"
 <pawel.chmielewski@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "David.Laight@ACULAB.COM" <David.Laight@ACULAB.COM>, NEX SW NCIS NAT HPM DEV
 <nex.sw.ncis.nat.hpm.dev@intel.com>, "pio.raczynski@gmail.com"
 <pio.raczynski@gmail.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v7 2/9] ice: devlink PF MSI-X max
 and min parameter
Thread-Index: AQHbLrMVlJ92cSADK0GRsjc41mXl2bK23qtA
Date: Thu, 14 Nov 2024 14:04:51 +0000
Message-ID: <CYYPR11MB84290BB432A6147FD206B9E4BD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
 <20241104121337.129287-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241104121337.129287-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB4993:EE_
x-ms-office365-filtering-correlation-id: 91d23136-e2fd-414d-2662-08dd04b54e9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZUIio+mgT4mOjVx7OP+LpwVzGdbBF0ELuGr5g0AWNE5f4ZgaVQNfK25FQ3Vk?=
 =?us-ascii?Q?bSECkE0AH5gjXqX2LRRRS9YMzYTXNzjs0Qq7FLXs8F+U0DzgecvxPGusVsjK?=
 =?us-ascii?Q?tjZIZZMsXDhcaG5OPwzMKwyTGzdm9S7k+ZwaeYgcLcf85ZzgIh8raDnoFSIw?=
 =?us-ascii?Q?x8tv1JhDOpXJT/BbrvARl71nAAeLTCHNFeH/waj6jThkGtz2NCyGeDVGi3LH?=
 =?us-ascii?Q?LqdbTbRWm03mnCQR6+zXPYVbMQdyV2WfTRbHtt36f63WsR9bpJ13UhrHl+Qs?=
 =?us-ascii?Q?jNHshYnJ2/WB7rNYi64SoyTODkQ4T/ono3FhEjiOL43lxeY2Uwp0uCOdYcoP?=
 =?us-ascii?Q?w1h++P0jO7MNeRqPRnmXIME5LHK5JtSM785nLZdEogFwSYT3Yl2jcJyDlpde?=
 =?us-ascii?Q?T/Iu8pnXZ8xvDERFx6KUM/lqt2rdNXql50dWBVeFXFIqLi6jWXvEE3tOYUzW?=
 =?us-ascii?Q?AkDeKdm5rDQHklofDS05rkZZN3vjANm88KsctyBMlaDxqkq8vqMkQ8e+9WMI?=
 =?us-ascii?Q?QDTtB/8vHTUqivXedSFN0cCepbqXJYMdOnPayBJEA8veWvvAPQIIFC2VZC0t?=
 =?us-ascii?Q?/GywevFPPuW90NQpoeWZautr7rsYDgMdv2qRN71X5Gytya+MfCs9WSKZIaJe?=
 =?us-ascii?Q?r8agncM1v0Gdt6tiLWUzvSr5u9DUwshGDMgAXeZJ+4tVAGxgRG388A0Xv+W7?=
 =?us-ascii?Q?NNTgiI596XREJU8E41roj44l2Tgg58EyRU6FdA1Ksp+DTUOaKPneyViddpMs?=
 =?us-ascii?Q?c6Oyh2qhc5n7X0YtKB7vrzcE3b/YoEPCMJzTl/VRFTMMcPv3LZlZSp/caZno?=
 =?us-ascii?Q?Gh2Z2mUFseRdaeo5Ow8CulO1n20kVegGUe2GQ6tMCduMhwCcR4PVSwTEs8e1?=
 =?us-ascii?Q?HKr9hoVBwlecusSWnep7Mw9xCGChiq1BqH0zCzRKj1P1IGtBFhvET5mBxfAM?=
 =?us-ascii?Q?obot72utwY4GSEgJUyqwioqpbi+LUafCSpeeBoEuuLei61GTO/9i6OPH6ilr?=
 =?us-ascii?Q?PRO/K6bjfK4s6pLtlaKIzkeoHOpDHZM+o3YvoqI+Frpo63+MD4WgmVbgKFsX?=
 =?us-ascii?Q?xxV0wyW3cDg5VhSrXb2zspvSng3skxTMalHxdq392/42R2fcftgQZohm50yK?=
 =?us-ascii?Q?t7d0rMkVxNhKp2mvltAR5iwu2SXh8G1RcGEdXBKDvPxE6FHjgE6hOZES7/iL?=
 =?us-ascii?Q?8xy0TaAhiKncZJyKE2j7imdW5rrjFxB6FDRqDswhxsiBZD/nI3whCOQMUK7g?=
 =?us-ascii?Q?pcJVJwpk80kP+HCDAZwmuwAXiNPws2Y0ZirdPy7JigrqGHrqmrEhPLI+7Ssn?=
 =?us-ascii?Q?I6ZQnb+zhiMu0qJKbFIcDvAkeMK7RJV4l7sVCEUsd5KJz5fP14dLS9UTzBwm?=
 =?us-ascii?Q?6PrXgdo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8aA4GkWIuBVmXQwKTHwvkJVW8ADiGRgZfxTA3fkE0OwKEbI9a4p205Arw5JX?=
 =?us-ascii?Q?g5oylJlmwkl/wTzRBTrwpbs0RkmcIASaVFzZ58xn5K4NffdpvZKBffoFoftj?=
 =?us-ascii?Q?wSqKzwoYOnXctPGq+xOnRoEZ4F9kslujjJGEB9ID674AEi1h/1Vvly07e/+A?=
 =?us-ascii?Q?xeWziFlh7rTZjOcWknJ7jX+7N3uUl1k3RYx2OA0pVEL2HWXZPB3bRIifcF6v?=
 =?us-ascii?Q?bZwwruwUbqUed3cPnDew2F27+hYJA16Y15zcbE7CEgh15i4skNjZTPQYAMBx?=
 =?us-ascii?Q?r1yxEzWYZ7pU9PtqzozJYFYHD9ejqMwIozLumdXwVDXTAS8vnqJJJD/mjRFB?=
 =?us-ascii?Q?0dGzQxpX9D7O03SK/troR6x/tFs7hpxj+HJV6C7x5Q/na8GILzrrkOXEhCOG?=
 =?us-ascii?Q?1mYkZaUniC4Sc9ELaRApLCkKPyGlXX/yvayNgsQ4jijFfIqenyMsZ0tLwMCd?=
 =?us-ascii?Q?tG5ddCQx4O0mUQpGORrgPAeeVTMullNWSybQvZltXCgiioRv4qoWG/hKSAlF?=
 =?us-ascii?Q?xCdzxLG3WglJIhIvu5BnnfZEPXpJS/+b8n0seS02RoDbDepOcSGrZSJc+SPE?=
 =?us-ascii?Q?XSD6CeOvE6bOhbZxiIiF+UNdO0e2wAxOPX6nFWQVyXGqM6/yRTlNjIkYbjcK?=
 =?us-ascii?Q?nW8J7md1mZ7dkhlzmNT6bCW1iZnnrGXyDVQeQlbhKYM32qpQW+dcjP/tv32S?=
 =?us-ascii?Q?ibxAeCteqEuSwySsKOMwudOOm3g1XdnPzNCdHZD+t9hvuppGq+aNtksiBU70?=
 =?us-ascii?Q?mjqgEPcin3emYh8xtpbidoWxwHAf3Wtx1gwnnbXaDV9+slGzHmNTLvh8coxP?=
 =?us-ascii?Q?9t2Q1MpTDw7AxqvsrmpP30hWgEBVrIFZLEKwYaxWcQjwMAe2aMfDLwovtzlw?=
 =?us-ascii?Q?IEDIVkrOgSBppYP2EJmlHUcHyR1N+lBDCpapkNOGBX7l88qqRFKFzW+2AGg3?=
 =?us-ascii?Q?w4V7RNAdVGsCW90TB/heMWBC0yP4nLvUNoQKk3yaHa+4ImrXsOxzMhjMqn2S?=
 =?us-ascii?Q?4Up6cieCvBUz6lY9L4zyAUSKQxLBV71sbJOZ6jOArbFjrsBUv+c0EbkpPgut?=
 =?us-ascii?Q?Xomq3mN1vUbFGeEf0p3G/i3f6DpWuGSknxu3HFFvKCMAfG/a073vsh4XXpM/?=
 =?us-ascii?Q?4vWZ55urVRYKy8/NCosTzSgdGLQBAXC6F3HxA2/SEQoLvxIzSf2ZDpbvs9T+?=
 =?us-ascii?Q?I4D/wWkQRd9XQi8wZsMYswjZykhF8nrdSaYrM9aJC0BPQ6tJcGu0ga2JDzxw?=
 =?us-ascii?Q?uvfMzFhD2l2b7XlA6QIGs4N2Uxxh855AIWOFZ3SpDGotR9BeYIRNIIzQ4EOz?=
 =?us-ascii?Q?HIXCbidG4ME7+xWh9kVySLXfZQJ9OGZHlY9ARCEg6v8zq0dRRIjqjHnZOeM7?=
 =?us-ascii?Q?LNEt8kiRPNhBl5v6zJcxb+RXXQZywgsn0zwbhnKMCOv9wUUqCuNa0ojkJ3Xr?=
 =?us-ascii?Q?J29cLi5XbA9tN07vstmoX9d44mShO12ztb5BqunxwHR5gpLsFG4Py9lvBwqB?=
 =?us-ascii?Q?01mvJfC8NfQBUexLDqH7gFoG7Y51zL6WR9ogs+rXRhwKGhd9VFuVQh+NLd0p?=
 =?us-ascii?Q?XeAuBH0MFC3shaZ+uoRBiI8zKjz2gNGCQgyxBszAFkStyItbgvuurt7TNYdr?=
 =?us-ascii?Q?ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91d23136-e2fd-414d-2662-08dd04b54e9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 14:04:51.0447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s8J4qZONRJahTP2k+NBQ76ExIxQW7vHV7sw3PeMPn8IHnuyWNIbQxlyZk+0nr7vPWcQJyZYdrQ32oRJxn3rVOtKTSXMtxXZWTcENuX9b39xtZ98mIpDZw9kGFHxfoihk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4993
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731593096; x=1763129096;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=35+Hf7KI60d7V06bcIHwp+zQ9o381EqYAyOtZi6g0Oo=;
 b=KJbIefnp4BWX56m0oUoSwUze4LOIUdGfn3qlvx8n3d/GpAyWWnJTqC9J
 6x2XmNqNgvy43czdbGOoPfYUWl4tNRR5ebiHK0V+hw+8D64dNw0qvCWsf
 wlDHmjU9kwVJYLMvO/IeDFAlM4MTRcY50UEJ7f5rIGLNaiK0MX2jlAwGp
 z5jwdhoJ5y4gADriIr4OjtqtTSb2YJ4r4kEXIphGps74Fh5JwP0JsZ21A
 /IICos0WaH1k1Od6bAJFPY/cUE+BKl/PG37HY2BgS919ayuMiIhPWnXVl
 LeBU+q+0Ad1t9B4pIpWEgMEC7Z/bRUTR3CwRs5/AamSj1xpCaPvdO5K1c
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KJbIefnp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v7 2/9] ice: devlink PF MSI-X max
 and min parameter
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 04 November 2024 17:44
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; Drewek, Wojciech <wojciech.drewek@intel.com>; =
Szycik, Marcin <marcin.szycik@intel.com>; netdev@vger.kernel.org; Knitter, =
Konrad <konrad.knitter@intel.com>; Chmielewski, Pawel <pawel.chmielewski@in=
tel.com>; horms@kernel.org; David.Laight@ACULAB.COM; NEX SW NCIS NAT HPM DE=
V <nex.sw.ncis.nat.hpm.dev@intel.com>; pio.raczynski@gmail.com; Samudrala, =
Sridhar <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@inte=
l.com>; jiri@resnulli.us; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>
> Subject: [Intel-wired-lan] [iwl-next v7 2/9] ice: devlink PF MSI-X max an=
d min parameter
>
> Use generic devlink PF MSI-X parameter to allow user to change MSI-X rang=
e.
>
> Add notes about this parameters into ice devlink documentation.
>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      | 11 +++
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 83 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice.h          |  7 ++
>  drivers/net/ethernet/intel/ice/ice_irq.c      |  7 ++
>  4 files changed, 107 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

