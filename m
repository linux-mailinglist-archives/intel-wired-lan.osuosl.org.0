Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2594CB4644A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 22:06:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BCB641151;
	Fri,  5 Sep 2025 20:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id spzG-46Z6lMS; Fri,  5 Sep 2025 20:05:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 392EE41148
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757102758;
	bh=jxLXJnb7FffyJR76lWi3PSnG5OLfu8vFqsJQIrsKeIE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TfD2vlccPKEESSvMkeKt7jUBM0vp9Xj+VFfnUBYYVwokOklzfrdFALC8GgQO3IOKE
	 GLrp4jM890cX3aKpcdQE4TTTBPu4hLVdw6QzrtX2F+nuwnu7D3I+LZPCAQSygQOhaZ
	 p45aCQQ3+9Wud7p5PL8W59LK4JKcDeb3DAl9S6tuqIJG3odyjZEacHKJx8zMi+wasN
	 N1qPVhtnHTIZDvYi8TC7K+3wGqUn4SwrmQ51qVN+zkkl0aTUJ+2aBWtzuDfpKzTZFs
	 C/ynBBnj9K21BaVpW3P4QZvl+h2YQk6v1hfFX/ECnaI88vfkfebNHpwzC7Qrhd2gOL
	 hAD5/hOylb48Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 392EE41148;
	Fri,  5 Sep 2025 20:05:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 94D78CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 20:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 866F7611D8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 20:05:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sj0gdhXRmXGF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 20:05:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 99CF6611D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99CF6611D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99CF6611D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 20:05:55 +0000 (UTC)
X-CSE-ConnectionGUID: pBsFijYUSTuDLXhyaE14Yg==
X-CSE-MsgGUID: 58+CkMogQV2+RavqMAqM5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="70555588"
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; d="scan'208";a="70555588"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 13:05:55 -0700
X-CSE-ConnectionGUID: 58K9rQVhTZWIz0e1Xsq7eQ==
X-CSE-MsgGUID: bdDMMJKbTQ+JhMi8ak+a2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; d="scan'208";a="173046967"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 13:05:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 13:05:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 13:05:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.47)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 13:05:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w2NxCW20aoRStMyU0CND7u+FPR2S21csML51k5HS8GEvtc45vfRv3OfhosA52TGomg+t5AfbYsOyFF4Jkjrj7u2wnF5tTYIVuNzFlGY/4tSS1lKOvnNF/Sh2RmVTjGavOt8c/jO1ueqwOTAYfau5pLeFNdCjN4Oiy5T6eEWYD8Apjir24qQZfT2N3vfrlCZ45VqImFpHNo7jIZEYAwmBz9pRKg9u2ug+hWTrXYkogIwSHtA0dMoPX8Vmb5pRcoIg3X9vNmh8/QIsaTvZZ4B4a0nrlcbYEKJ284lkzYhAAi//PH0xDwYFMDKIrbOrYQx69gQ6t5xK3rPzIHoHjHCsUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jxLXJnb7FffyJR76lWi3PSnG5OLfu8vFqsJQIrsKeIE=;
 b=j/lt8OsRQCJ155n0VcvCqkBDAezPZj9KMhouiudhCpz47Bwce3Tk+VdGX/qfmw3o9shUu99Q6xbZJHbS1+tGXvh7AVt0hOssAV3MUybJCJ0NUfrJ/H0BidnqsGBGXM0glwXw7CJCSz9X6ZiuKbsbxJHV+sUpE6AhgJ6DG6EaX+IVxD73c2kINZBgKgDc/gLfYdTlmQYILwAIJT06j6K96LtuxZST/XtvEmdv2tsHHXWFUv2dLYtEoKCzIHxqKdth+c5Lphm+s6xhvIQAMhPrgO26EDqOElP2BuL+9SkNnS9gRdUY68NbOa4Qmk8kdjrdIyVAL2rZTOTqMhYrBCN12Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Fri, 5 Sep
 2025 20:05:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.015; Fri, 5 Sep 2025
 20:05:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "liuqiangneo@163.com" <liuqiangneo@163.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Qiang Liu
 <liuqiang@kylinos.cn>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Remove self-assignment code
Thread-Index: AQHcHhCBVcnkyoAAUU2BGyGqwgj/d7SFA9Dg
Date: Fri, 5 Sep 2025 20:05:51 +0000
Message-ID: <IA3PR11MB8986F184BB79B7DA439DC057E503A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250905025519.58196-1-liuqiangneo@163.com>
In-Reply-To: <20250905025519.58196-1-liuqiangneo@163.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB8108:EE_
x-ms-office365-filtering-correlation-id: f67f3a28-e673-47ef-5ea9-08ddecb79d3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?TNlWyZ2wEIpZnjxqqL7PWjMxfN7meK9nn4P9tMfO92wBI93xmAz6iuXoUYpZ?=
 =?us-ascii?Q?Lc7thC1tSSgqvS0A6N3060RnAbz/AkCNNrUOmwODWiYg8qqrmhJJTFBdDgSs?=
 =?us-ascii?Q?xwBNSvhFG82vEqFF+d5c3+5XkKyUEGTxfHQaSRO/mWYi/5yuSA3k2RuGqT43?=
 =?us-ascii?Q?+NgP224X2POX6y/7jWCjgFSlBVpWuoDwkPcnRLdXl4jETpc9nTt3ZQDwJ1qK?=
 =?us-ascii?Q?l5OLAQNU4bNXGebHJzNALwtXgYO08dHDkvNl6RIZa8A/NlfDixFzbeScmaeS?=
 =?us-ascii?Q?JcafraipYLcce5lgCh5Or/KdL1hZz1cDSW0HcHBHGuLxXnfM4f4A2+X7ZzZO?=
 =?us-ascii?Q?ienCRfd9lv8RUPNbbmyUK/No6v1ccTDLyONLOJh5p453s/s9N7YgRs63dNUY?=
 =?us-ascii?Q?5LcxoPtmycBSunxlLlo6sqaQVt7IQslWR1SsRs6joJ+8so3IWz90VogJpyE/?=
 =?us-ascii?Q?Kz4jbJUvuuevLQS8FsFbD1JbkaZBlGyTzvH7NjYxkR3JS3KCuVZ1d5MAO8W0?=
 =?us-ascii?Q?h24hd6p6mucTddihZalaeFCUjCWPxXoQcvHCiFg2S8grHdKTdRpx4dTzqQgK?=
 =?us-ascii?Q?8YCapQiYISNZUy1uYYqH02ttip0OUPtVo0MLRhW/Vdbmaudm3B5dpHe9rwhM?=
 =?us-ascii?Q?9qFXi6wwGY6mazEqOCkAd6C/K6B+9vbDdKrOI520twSoPn5fCZU8KaLOiMPP?=
 =?us-ascii?Q?rg61wDP9YCSGPid1/GIQodGP8S8PWgKO/Lwe+uY4kCwkVPSeJAQD8vKscdv8?=
 =?us-ascii?Q?IEFIOEg/xf/fw8MHe87Ici/dqF7jqJ8P8hHlH7wpkJmjx6mC5jcx6ISz0fJZ?=
 =?us-ascii?Q?i90X0JeU/1qwo9PBcJk0vIYANo/XVbJg+X7wUlJmYIyJbm6O9W/VXwOxYXaM?=
 =?us-ascii?Q?iQS6L487SrGgIBcpd6sLZ6mdRaHkXYEe9bRQJFguNBKfaIjXEa49gVaRXbq9?=
 =?us-ascii?Q?+b/iUOy1e3nXyqkNyjAbA9W37iHP6BnF6S5duFxvc1P0ZCDpKKQYd+mSyuNR?=
 =?us-ascii?Q?cjWfkKVyK+nd2LUm/I4n6NWRVSVBeGa4MpsAcMmQRYt2kzDU86cyEKvwO9t1?=
 =?us-ascii?Q?UR0ay4db6+iTqZpvME0RrVJOCMlN54j8U/rwOQm7gx1GnHvB/ISqR4tY347/?=
 =?us-ascii?Q?iJhyFesYnr7SNnw/AJ5u6Vy5vGWJuAirC8xV7WeiOqfFkpHt7y0vd+3ndqQ8?=
 =?us-ascii?Q?0oqN7xlccuv98ajWUIJwGQ1OAfGRx5OhfJd/88Bo18glXgUoRfmhTi4pNPrR?=
 =?us-ascii?Q?mddP5Ti81gyZOKUAlTvTklVdQWGnc7yJcqdFK3n9NmR/340QqI0b1DQdD0Ag?=
 =?us-ascii?Q?YkLSxCBEAC+0jbJry3Wso1wM/6djttxFhnwae33vZgFmLdaIv2ECN+3WMCkv?=
 =?us-ascii?Q?99YSh8v79FWnAD9gwBNck32AaHG5kI1YPd+N7uO/u/sUZ9JX4kTcgtZayUme?=
 =?us-ascii?Q?8TMBRDH1O3ehkT1owYz/K7x7x1m16ZZjupo5vQlHNkJzVVNwUe2oBA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TJ4vxInkAZovzqlfOVVzM2XdCHcDPnSvYRVYniB0ktvJSxlCXHVqD2ET/MPO?=
 =?us-ascii?Q?gGOG+vmDfim6gNmtO6OTyB5LYN/vVBKEITPbSW3X93Q1wf0deELFfBiRDRIm?=
 =?us-ascii?Q?I7MJ5cBF7DOc5XSyDNwAz/O425rt+F5U/tjUkxfJvmM3qhlfdnLs5MhtiWop?=
 =?us-ascii?Q?AWE/ChrsMFFBaxJLcdX8M//tZkm+mKkVfqjmZdxzFlAeMzsdBgmEMCwlzOBJ?=
 =?us-ascii?Q?uSOjImVGpHjI1mnNWYmUE5cC2QeuelJYBwCeRD8xWV/3xniRidFYCephJ0me?=
 =?us-ascii?Q?NKM1Y569EEM8QSJyWkeZg2USGDnWjsMitwdOTFQYmok9wy+Zfd9E1GohryKG?=
 =?us-ascii?Q?5oAQFUL9klqu/pYqVTzTC1IHLHEy+NPIw2B3Onl5Lf3K2hxFeTseu2iiomCU?=
 =?us-ascii?Q?e1JkhTL5FUsMDfzLzFvuwxq3GsrZdJePQ7CmfjN9GOe+NxdsNLw7Pt+ES5UI?=
 =?us-ascii?Q?UgTpVn8ur16bgTJjLnp/O4V+Y3169QQe2I7uwt5PL7h9mmUe8THSjGSfZ3Hc?=
 =?us-ascii?Q?jH5dffNm846+GBexd2TjJmzQEAMiOOdanoe4G5Mh6E8u22E4sUHxwaOdSDnl?=
 =?us-ascii?Q?f+VpfLKtgs9aRfVV/xQ3UTnjE86AGGjBua1uyEznepkIfwDpwusx5G5MiHnA?=
 =?us-ascii?Q?/UZZh6wl1BmrGtnXlV1FmSG5qFDVnaE8gcm8qxpSW4zUHjfscif/pJhDuLDw?=
 =?us-ascii?Q?tfD5/FCrRvqCW4rVU6EZYAjnW+1qk3b8HE3Y0kUwrph421x88+vOtn7WVmen?=
 =?us-ascii?Q?8H7oeRfQ09w3JxMmMkpYQsEvC0NsLR/XTbfEjmrUpSwX6pOFGOqTCftm5GkU?=
 =?us-ascii?Q?UA7PwQxA/JUiYHXKcuJWuwSsYrak1qsVwfjeaJaOAdowDp/RnZeYyHCP0F6s?=
 =?us-ascii?Q?Cp7Zpse157LQPUnCfSmOIN26Jl0qTu27+EOiW83vfbhn2FosVdwinmKOeUvj?=
 =?us-ascii?Q?h9PBje2v/iFOshAXDm0uPtK2u6Il+niqmF+KHzBRCm0PY6qB6YvAUUyMzlNb?=
 =?us-ascii?Q?TDSUJnxKfHiE12wal1zANjZNCsvw7COdR7br2TwPhsTQ8GlASU7AwTMHnUKS?=
 =?us-ascii?Q?PtiTgUH/IRewvHJaP4IibNtvzzjp4NzOkxcKN7bYWWbGkC5LAFglfGM8mjW1?=
 =?us-ascii?Q?UsG7Hd7f2daXjOKhdT3mCxlANCL/1LObUMfjE00SOhW6/aAy2T/3xgx1IA/K?=
 =?us-ascii?Q?82TFQpQbA0f1Vg3bBlQhQe6KMhqGuo2/arC4pWHgGJM9gRXIzHEbMCWAnM2g?=
 =?us-ascii?Q?Tburzz5lZ2wbtwTgLhqtzdMs5X6+xvvES2kL5LGAkIImHmZTxmI2NX6nS1Ii?=
 =?us-ascii?Q?sPF6TpdtRK/lqRf0qpB2DGOxjUCW+pZ0/j3sVZxTZLPADy1sT2toSM2AYCWS?=
 =?us-ascii?Q?UlET9fJUXQ5x9echK6myrbQgwN1/vb+xi6UOnoD9VfXJLwok4rEF+di2p23Z?=
 =?us-ascii?Q?1mEjCzFOxUPzqPezJwdkdAIEcVyGu+6sZ4eVgvM2eDV8IvDY+bQSaFp8GZ+8?=
 =?us-ascii?Q?XlvcVfery2tCcFCUWM61Cx3WIvRD5N9TMqEmItXyOVs1cpE2nW6Af5bSjXiU?=
 =?us-ascii?Q?eZXIMUpdaO1nrVNZ8d1sdQSMJKG1OQGskM6A2fuNDxoksL5oQcBMtUt1AP2k?=
 =?us-ascii?Q?rQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f67f3a28-e673-47ef-5ea9-08ddecb79d3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 20:05:51.7243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QyZgXAGT4vWwavHMep/0kmNljLNo3YG/EZ9Sy4ZotLrx7OKlNJNa9Mos2lFg6KOakR/uCmd5OL0E5AnWvuoKi2WH2IlSB+VCPo+Lv6phY+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757102756; x=1788638756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UqEvGqWlhCRwL+PG4ZKIomPIgWf9nrPp3QFwllnTagc=;
 b=lsn9fdCZpmieVWtBpEUjILZJCqb4zol1FSsOevZHdhYAmmZuPod5UtKu
 yxLmnTSMvaeRJIppuLtiwUC+jG4B1LmtDMhCzI3FWyeP/N75nEisxJ771
 YU4gG+jZ+rrDLfxZ4OJOAy5etkxmGjiB//ciMkjbu4fD5PTBik/cRW9Tv
 x6DE2bzZw/dHrIIoo8fQMh3hG/Fm1XKVP9LxL11SvJMNQVvu3frnDIphe
 kQXM65t2Ot892/V36xwHLiWfIT4J7JGul/Syc4cEvJY08vINIYBcbmxhM
 n8ziL1ka9NjvtlTEz1kd1GxW5JhUVN7BM9J4RnN2PH/VTDbvzT2v2CT9J
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lsn9fdCZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Remove self-assignment code
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
> Of liuqiangneo@163.com
> Sent: Friday, September 5, 2025 4:55 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Qiang Liu <liuqiang@kylinos.cn>
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Remove self-assignment
> code
>=20
> From: Qiang Liu <liuqiang@kylinos.cn>
>=20
> After obtaining the register value via raw_desc,
> redundant self-assignment operations can be removed.
>=20
> Signed-off-by: Qiang Liu <liuqiang@kylinos.cn>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index bfeef5b0b99d..6efedf04a963 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -143,18 +143,14 @@ static int ixgbe_aci_send_cmd_execute(struct
> ixgbe_hw *hw,
>=20
>  	/* Read sync Admin Command response */
>  	if ((hicr & IXGBE_PF_HICR_SV)) {
> -		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>  			raw_desc[i] =3D IXGBE_READ_REG(hw,
> IXGBE_PF_HIDA(i));
> -			raw_desc[i] =3D raw_desc[i];
> -		}
>  	}
>=20
>  	/* Read async Admin Command response */
>  	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> -		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>  			raw_desc[i] =3D IXGBE_READ_REG(hw,
> IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] =3D raw_desc[i];
> -		}
Can you refactor it to use IXGBE_READ_REG_ARRAY(hw, REG, i)?
this can greatly improve readability!


>  	}
>=20
>  	/* Handle timeout and invalid state of HICR register */
> --
> 2.43.0

