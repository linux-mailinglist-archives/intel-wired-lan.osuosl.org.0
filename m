Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHNaClnQGWoFzQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:43:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6B6606C09
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:43:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBD8E615D2;
	Fri, 29 May 2026 17:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id okbYH9DToijf; Fri, 29 May 2026 17:43:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63C28615D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780076630;
	bh=s7Hv5Se3Is8QdXWGH6EVlCyV5sBouUm0sGzOmiZ+mQ4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dydaq7VJVvRbNxWUEeJ/T0FHpfB58rzs1OMbuqbWRouBzt8XDcJsezZJO/fR2f5zR
	 5HCV8QCNdAnCJYUrZrYySuZn+o8ACgt9TR6yMHVfgVQJ/OB4UtjRz97Mm1RyOj2e31
	 QNJOdsXGU8T4S3fFahF5MzinN1pObNU8Wlrf48cT3lOeT6U/PLsMCOdmfGAqvqAWRX
	 rm/G2p/kM0L/YNq+Jeje9QPBjXF2fkiFAGzxY+E6wS1fLNAy+14WeiUEYlP/1ffWnB
	 az9SIeeDKsA5wv7Mhb4G72FnvjUd0xAKnkpwuk/hqAieZLW/SlngZouZ+/hMwJZipB
	 FSWzcl1Bk0nDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63C28615D0;
	Fri, 29 May 2026 17:43:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A43EDD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A03CF84465
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:43:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P_bant2Keuhm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 17:43:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9DD40832D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DD40832D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DD40832D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:43:47 +0000 (UTC)
X-CSE-ConnectionGUID: i5kE4bAMQv+wnb1Wg8tMIg==
X-CSE-MsgGUID: TnpsOi34Sd6Y3iRgS2QzXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="91506851"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="91506851"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:43:35 -0700
X-CSE-ConnectionGUID: /Kc87vGeRLyRtKQFu+n2wA==
X-CSE-MsgGUID: /SqW1taZROSEaq1P+DS+GQ==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:43:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:43:34 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 10:43:34 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.13)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:43:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uyOyJFqQ/ps5XxrPqGa8bCvmEbw7HTLsrP2HgjSUv1Zb/U5Nvjx6uPMkD/CWmqDrNN/LeFHp1DIQ0Rw5jNNlLJGppihGlsXn3/tX2ayfBLQX1yx1KjnGRNbjwpq+/ZtToiD3X+Bg8PWxjWFwqwg7Is+rFsra7J1V+rrHz8iVcUHBmvV3xKS9wC3IX8oafGYWxQYRoIoQZFIDMZnbNFiClspZ1dpVET7mfOA4ElNs/ul6Vnd8iwvqaur3VEMWj3YFuqjTt/RCZrGlrbVZ5VraRFCVVoHp6GBvi6Pii+c4WzJdrMj2CG81s73jGmZpqgcWNFhpuoSjRxUk6g30ORMtsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s7Hv5Se3Is8QdXWGH6EVlCyV5sBouUm0sGzOmiZ+mQ4=;
 b=jb+8rBeTy+BoCZ1SYH458rneCMctW4x57oXkUsaQaageUL/kNAll2Oop49zyzv6bYxCpAH5xEVp9b7BHnSXESeTHAEnLk0nr2KWJxjUFG3xNDxdArA8XBR2sSP2BTYAQajDaPrSeXmAub/3NE5m4esR3AbhFBRv1nX2WdScrAlorZUjWsOYir5YMLm7IYp5S0QTkCzrdGwIQsUx2IwfsngPdsGVZsUrNZZKKf/7E0fAyRujfvSRZ2yfHgoFyjZLcWX4V4whqGPA9sKRNg7ylwqmtoIxF4sZAwkuQLFwcOjCvUUyqlkNufyzhIqP5Cvim3E2bWGZG+oknB9u5A/XHww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by IA1PR11MB8173.namprd11.prod.outlook.com (2603:10b6:208:44e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 17:43:30 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:43:30 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 05/10] Revert "ice: remove
 unused ice_flow_entry fields"
Thread-Index: AQHc6SB5n5M5CzsLaESjgv2avI7NgrYlUvDA
Date: Fri, 29 May 2026 17:43:30 +0000
Message-ID: <LV1PR11MB8790CA434874C1753D67F53B90162@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
 <20260521115000.4637-6-marcin.szycik@linux.intel.com>
In-Reply-To: <20260521115000.4637-6-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|IA1PR11MB8173:EE_
x-ms-office365-filtering-correlation-id: 62ab05fd-d5ed-4cb0-0913-08debda9cc50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099006|11063799006|4143699003|38070700021;
x-microsoft-antispam-message-info: RJpn9TiLPMbArrMzJpoGmV69/9UAOh6Ip6jgiPY31ivvwGXGvOjaCZ8UBaaC81DmMly/YIN6SCuJt+DG4GlHjt5umHV4prLm2mdK8Y7zE22wqVZb4B3+GIGyzIOykiTDLpnbU50M9MIo165hVC4XzXJXk5y2HnpUAGU+6x/HrcoaaUERaNYSj+C064P2FDd8Pv/EEwjEXpwRmJ/K03CG2xYyDcl/eMvr/YhXI6czQJqAilyCwJmPBtV7EQKtClYg5OxTY/eCdZJSgN50ZrnrhR24IuMxGaUzOrFniRwmXHKMC21D2TwTcdfP4XqtdWi5nuVdzCumUGx4TPmGkgkL8XJvJOXloqKLHtsTVcf80A3lJmGRZYNxOJoGXH/cUdZILMMHpNNZ0vOGe4tXa0xtwwdYdQjnfFY4r7WY3yOP1wcKhH4v/8rm2tQpmopLNxFqgJbsbLBGA3Dxqhb1E1uf7t2dgeqO7/zXriTY3hKd2jjL0GYumgLo1DHyFiEtz/Dv+VTbFIF1Pq7zRvFsLnqaOzgJwtuF7pmvJSTQQ+JnsgFn5MWQFcMgFo/HCQqnymPYNP2f8stxgvh3oDRzjdgLW4AunWUhYA/pqGwDT/CbwtBn7xfwoay2h+GV/mcOMOyVdnmCkFQO1d/fP6EG5AETXfNC9rEmcL8YQsuDAA2w7r+OGJaJbMKNzpzIZNhw5/g8jktugW+CBg6qZWCpd39W/IpL3yAa88EuVXM1QuN8Ors3GmKohy+7ma97MnswSban
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LNr4PzROC4z6DWKhgsKnRRx6pXM5FT9MT0MdSqitV2oSMZJtQBhLypNnl7bs?=
 =?us-ascii?Q?nvcHQLpTtPMAsX9iuA0v0+JtgqWEiXx6KlLpd65YhCoDQM7NshBbiw+l/ujH?=
 =?us-ascii?Q?TY4/I0h7hoTT3dcTPtdI+ASF4nbA2UpcBzWb+jGKqR4i9Ca/zq4LaoO2MwGa?=
 =?us-ascii?Q?ABUNXFKgvQpXkAivd8MPL2UwAuzrYzKay9R/hkuwcfGxYkUhU+ASGqjWaBFU?=
 =?us-ascii?Q?x49GiiYzMXOkIMmRYhhd3fZ8WZqtWWDr2TuvHswO/79rJ6srpSB6bfAbnhbY?=
 =?us-ascii?Q?iIMvFdad5vSD3oUx5AQo8qdU5k+8zKgWCRYF9++f8xCrMZMIsDFprOSnFqDj?=
 =?us-ascii?Q?T+DAfUHQ1NysNKaq785arVCrkzUnWx3FTXHZCPUWV1KCBgLwmpHN/VWqIsoI?=
 =?us-ascii?Q?RusQJUocDelbn2W9dGvOitZoxjQn0ifaZGqUF+9k5dSyT0l66VFJhf6zQxGr?=
 =?us-ascii?Q?EOKvspYicoa4qZ3AFlAl72QK/GPw2FP07Bp+VOf+oS6RU6J8L4XPSf6F7tCF?=
 =?us-ascii?Q?Y6ufqC88GyR9LSe1mP95IbFJ7myRyLjNNt9E8G9rTZAcB2g0rjTyotc9ZOJg?=
 =?us-ascii?Q?4bat2l/+eWPhIo3kWZnsHFddNKTrOMpHrUDd9U6UT3ZdPW4J6D/43CFxx+2g?=
 =?us-ascii?Q?YNlaJf6rLhVy2MOYy+JcRWhX/Ju/D97ZrxI9LiaXVDqgg1NwsCdsN56ARYiE?=
 =?us-ascii?Q?r+EXPpFr5d1Ce7Yr/AwwHPjP/ooqC7Ed2jySFG5hZ1aTG0/bBftEq2jZ/OyQ?=
 =?us-ascii?Q?5/XHMfJpKO6GEjGGwtmE//7cwOT1W9uB08D+Ckb2rcaIfgOXYWG8EjaOaYM5?=
 =?us-ascii?Q?6f4x1237S+9g+lyKxipSsqoQI2hausWJ1Ddvw+9JzRC0iBGVcEdMqJ7PhkrC?=
 =?us-ascii?Q?HTXSmEENbqBdge10ddrH1zk5TXnAcYx5mH1z3QLGXdlVwm4bscbn5Fm3XdhT?=
 =?us-ascii?Q?EwYcmgBwcGeaXGISvfRHfSCaXA51FTZR7Gslk05DBnwcMNebal872FXFmiUh?=
 =?us-ascii?Q?ZDapmcYkVYs4ytXDxo+jl/nAHGt8obGQZct4bc3OIEGkJ9kPysSG29NwRkMt?=
 =?us-ascii?Q?7xZHP/GT9lAzFKi4fa5ULOLmgaZRdpmRM+3XfLPVYEkgwI7jF+UUFz3itcy6?=
 =?us-ascii?Q?Aplyn8h7lNmOgvDnH9KULX/W6l4aNa+BxMb0qRk7yhCdXJDM8mb9xSvf5/Lh?=
 =?us-ascii?Q?FwBSwAR4BnfZgCy75flu0gfySdDVS0/at2QsFF5ftHotndGiZOi32M8QcRZN?=
 =?us-ascii?Q?e6SeaXLHW3I4XLCR7aXHPaK7folZnY7DvJNKxvNS9Xn+c4jXGN4IzlOZhG0r?=
 =?us-ascii?Q?80B8MfxU6J7R5O5ZHJywCayzNeU7UXCgQfbBYBkKsHAX9eMUzD0MF4J6Hn6C?=
 =?us-ascii?Q?ftfei0BEM/p7TNj3YZma1nO9NtjtAiHDRBzSBclejRrF+pe43/GgjEVRGbPY?=
 =?us-ascii?Q?2E7gvnDRlpmYEvMzfZHMrw15oDg+drzZLKe7KF3L85AOnTJIb4krmm3QFnGd?=
 =?us-ascii?Q?IdTQMcavEX6fwvUZJ13TkT0SJp4KFRz/1dq6dtJu7vFFdS2q3z2iODJNolg/?=
 =?us-ascii?Q?pUpVDh7Jx1FynPP1JWdqf5blvCANe8mtW+vNaSDtv4L6aM73e7SyK+lEJBQ7?=
 =?us-ascii?Q?5Qeq3A/R5tOlgV9Yks1l5TwTrwm72olV8RNpBJpAvuuhT0WHnfjlqxFTW9/w?=
 =?us-ascii?Q?ibrgInXCKQzjQiBIemSBv2CXCYSO7xX6lrHmTUlDhoitNauFUhRUbIcSJLje?=
 =?us-ascii?Q?d2a8bWQ9hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DaU3wHUxjxKVHiJywr/82xgE1xCPe8bK3tUnJCMPsUnl7yBu9kzPOOB7vRobmK04G49EzYhbO3NJS35YK99wHVYMjXtNNDH1J3qq9WQwinKB3FK6KFTLFM47mIeWSG8VfWhMiO/lwas0B+MffF87xbe6qb7HzAGR8H8wMuCLQRRn7DV8Hp5Azi2pY+VsDTSzJPNX5X6DjJB8z3OZ02LVyv9IpDbMW8LKngrCU/fr5bvmUsntXTHuGHqYqbKNo3zLMkjjtGNqfw8UqOoJpCxeQkMWozlCvL3kynfkl0MaVY7ssBJNBDIMM7zAJi6q6P5JyD3Az1PqBHXjNTDf3JbbuQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ab05fd-d5ed-4cb0-0913-08debda9cc50
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 17:43:30.7803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ooCjYRyOeLA622c2Mc/C4GJW3GLzh33VXUSFrG1aY/zMtrvGfGhjQYmB0cslZHTack+VMIKKpIJnpfDZoNcxj/twC9rh3xLxnrZH2/v9LdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076628; x=1811612628;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5SWO9Sfn5mKboMyu1MSF03KYa91TeXXim9dbWCW76js=;
 b=TLsgSX6DWYXU2L+xkCcxdZgj640LfampNbPiWYDZjLvrfdvMhcz8MtNw
 RtCRPhatQmLaxtPwXWijvUsiedamp5OvWMuG8EjSDl9JyJ7dSRw1RrHGp
 GTp/zyDSesFPul6ftMPRXdHX7gyBWEFpKJrPlRrWR+MKPc3fQg83koaj3
 6h6IDbm5fWTfWYS9y+0vKzit3TDNMc8+lz0O0mo2+1Oo9BbLr4KD3inAn
 MnowJNxgnrjtCb7d7S8eI63ww9bPGWLipKyM3ZNcgLbuW3OiCx1io54GU
 6m7bZyDT6CDuKeuPQnsp6dQjE9ditx7YorODYkUr7iawy3P6ufEgWVkgG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TLsgSX6D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 05/10] Revert "ice: remove
 unused ice_flow_entry fields"
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,intel.com:email]
X-Rspamd-Queue-Id: 7F6B6606C09
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, May 21, 2026 4:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Loktionov,=20
> Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw <przemysla=
w.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 05/10] Revert "ice: remove =
unused ice_flow_entry fields"
>=20
> This reverts commit 4cd7bc7144ec2c0bb27208c3bb1f153dfd44b1c7.
> These fields will be needed in the following commits.
>=20
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2:
> * Add this patch
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.h | 3 +++  drivers/net/ethernet/=
intel/ice/ice_flow.c | 5 ++++-
>  2 files changed, 7 insertions(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
