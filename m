Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39458B3A6AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 18:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6C3F83D58;
	Thu, 28 Aug 2025 16:42:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cD-T0IRjQYK4; Thu, 28 Aug 2025 16:42:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D51283D59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756399362;
	bh=R4QgGYme9FzrLXaf3ErQHVt/hVf+UVPhMzOVvPQ0Yrw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PSmMxIfuPu3FeDKoTYGjMQNSqaM/f1trCMc0OlbZ9NmDvj8RYCKYNw2OflnUZ5hnz
	 FxL3Vqcv14y3360hYQqRD5iL4saU3bvfdIOrIYqDtJHD33MkfjNBIj7LkMbgGMVdC9
	 HpzTNYbZlu0hw4aixStv5dS/17Ymken8cI3iDtYfCDdrPq4kOifbe2nIH+rDnJ0gAd
	 u4jVnvcudsEDS2iHJi1r0NVcALtxDeKaeUQkf9XlBKA++TyE8uRGQlKgqDPFqYzWqg
	 W01N5RYUdtCIMZeoLLRwy1rQxG/SttahE7YLl1Rkl/HFUNNnYVGd4EnLpRwDN2c7Q6
	 DgvsY1XeDDbOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D51283D59;
	Thu, 28 Aug 2025 16:42:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FBAF1B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 599B660E9D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:42:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QtWuA8uRcTgW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 16:42:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B26B60EAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B26B60EAF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B26B60EAF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:42:39 +0000 (UTC)
X-CSE-ConnectionGUID: SYc8lZnkTpy0s1pjm4ZEZA==
X-CSE-MsgGUID: w9sNv5kNSQGQ4JoqvNEdEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="69772246"
X-IronPort-AV: E=Sophos;i="6.18,220,1751266800"; d="scan'208";a="69772246"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 09:42:39 -0700
X-CSE-ConnectionGUID: g3qwlNlpSvGPFs7qT86+9g==
X-CSE-MsgGUID: XbJ91uPARb+yCw6nImyP/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,220,1751266800"; d="scan'208";a="169404128"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 09:42:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 09:42:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 09:42:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.85)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 09:42:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VPp7vUq+ZyUsvfJkybbsEDMBRiGhyo/LnUk9X737qfVtyiJ6/QnW6IklIidmiiVVgiGTFnATuUI681QORByiqD46nUWkg+Os35d+79n9tGfNUV+RBgsTyaliszusuDShXKit0/DKiCP7iSFjAgJGZyO/P4xGzBqmv8yYehsOIe50HWKyXoZ40XF5f7sseoQEIcZxBBBH66ZAkHycGcMdwbhI1MQHlID82cg4c72tDl2FAbC/YejiCOenv7ly9FVyYCiJ8fjnjx6pAw4FzDUsdeUGIif7qW+laTrk6V4dsRUOoVSojmfZrKVWclvEeWlc9iuvchB/TWbk9bB+NLJBqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R4QgGYme9FzrLXaf3ErQHVt/hVf+UVPhMzOVvPQ0Yrw=;
 b=mYyNg8ATsc4BzCrwZHlAeggNb7wP9pJbDJVx10iXDEmkB55JxtyEdoviFjCU6IDAyYDnM8wKZU+lZ3swZoRTEne55uQrLhDAs0ctu1kNZ8JAvLcvDVhaHTjHyTJRC75xHDR8Yby2+MNO6aTFUerBkF2aWW0HX5e+RZk06+i3GYLIuCWOhbHeUFUpRps/ln6a8Lvrx8sfeI0U+HnuZPbGWV14V0KT/9zyC7G6IvPIadVWo0b3YINVJugBn22H2B1VeScFw+jPgeRJ5oSbLpnUa0KjtzeUsVaL26LznpMn1qX2+I73cRGat1ma98wN+uwtKQumEKAkYLQfv9hncsog3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 16:42:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 16:42:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
 indirection table across admin down/up
Thread-Index: AQHcGDUhWrvEhMLqP0iDW+Fkb2NtCLR4Qv6A
Date: Thu, 28 Aug 2025 16:42:31 +0000
Message-ID: <IA3PR11MB8986E8200AD587B4292B3F22E53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250828160134.81286-1-enjuk@amazon.com>
In-Reply-To: <20250828160134.81286-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6965:EE_
x-ms-office365-filtering-correlation-id: 9a8cbb03-b835-495a-4a78-08dde651e212
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?odaMPbEz5q/TKVHMEEjx+Ianzrt7Fh1jveeswJNZjRvfHlDuKM3TL6spQ5ui?=
 =?us-ascii?Q?l5W3NExZjfduxMXOF7LWkJA0kSG6VdKCfavkQ2oj6+QxdmZIwoelx3HAcENe?=
 =?us-ascii?Q?5llVnoI2HiF0mXJagdOd/FBr/Cjv0XGczvoYDI3W5lnibs6TqtKCmxr6Z0MY?=
 =?us-ascii?Q?0NaHka/5o/7w5TqppJK2y1Q1ClEB5UD1pUNTVwKMKeMJlLxe5k6c/aQHf6C5?=
 =?us-ascii?Q?hjPyzSJRE1e7jRNumtx0tPr7eV8wBP9HI7aKctwyoS7qlAb99SytUTRbrHgh?=
 =?us-ascii?Q?01p6+nremVB2dvKSa83fF3Lx8L/KJ+rqnJM7mfvhCNAEQP8mukePhi0tpO2y?=
 =?us-ascii?Q?c9XeuuZ/sOuR7hdhDcF+8Nl6r/LBIlDfwChX0eudyvMB9GIQgUUDDlb4TCDq?=
 =?us-ascii?Q?YazIJx0+i18mtHguwbaVkYglKVxTdXoplA11OOglY/zcf2SPtEan3nXV5w4O?=
 =?us-ascii?Q?thGW105C6dbbHezLESeSP7TvLRuKr2yfiHOu/2SYzOU/G7SUz6GviZnZBI0O?=
 =?us-ascii?Q?VX0hOigSCvBDU9qe5iqdjnCvQ5Ba7An2HQWGhlthDj0luvHodouqC3gr6FCk?=
 =?us-ascii?Q?zujL9QS6hPxdTlMPRo4wDcm0Ybd4Rsn+tCcAmKTNrH66eBiNz+9wg5cuDJfg?=
 =?us-ascii?Q?drOaz0c6ahMIxXF272TizLNKMbeTgPl4JfaDyGLOEYwzCf/X4NEHnUQghPWm?=
 =?us-ascii?Q?BjhV3xXyPFy2yjp5QBCBTFAQ/jjh7I/ipnnr0XMXn2Xr0MU2HAItimoIIqAl?=
 =?us-ascii?Q?ZlqPSSVG4VNjjlgBVXXizl1K8e7Sg9Io48gDLQv7oFQ+WXey9ef3MU+NWnZz?=
 =?us-ascii?Q?kAJVCg5NpObu2+Ko+Lrh9u0sMo2tLXjFOFhyALCw6IIuVWhxY6q9XWdvVq1r?=
 =?us-ascii?Q?XxWUrHavUuKpUyAOHrni+1thuMFdfkem9NMVXfYhqdkQrzg0CcSdQJKFlO+y?=
 =?us-ascii?Q?k8RynhkQIGcpC0nSeN+wNUG1NI/DGnyWOcsN5CaXnFBn5t59HmPw8tccc+bH?=
 =?us-ascii?Q?H294D/HKlKzEXU/78mXJ1nCfHCti9aid7hNe4MprU4T0nAfK7JjbLHL7r/vs?=
 =?us-ascii?Q?B31DlGZxRJWRCsat+ku+UqrYab1mceLc5yjxo0G8hARPvDgltZ93gFirzUt/?=
 =?us-ascii?Q?pS6uSWRIdYrRGtFOC7ETI0ZfLgmR/5ZofBW7yUmP1pKdb2Tm6pKsFC2lzXJq?=
 =?us-ascii?Q?JWwM0AGM2mFee1F4eyJGqMRbHJlDMhdALGSOtAe+X4+rmNvPT12nbrac5T37?=
 =?us-ascii?Q?ZsgfPKMzHpKCtbUxdCuHUgwY0b+E8TcqCgui3ZjUfxfrnwBJDt8ueOfmcma8?=
 =?us-ascii?Q?0BZZ8i39sr7X0NGCsLdA4gy8S4s94Hglc26jOaYw9fR33liSepAOL5Zwrolj?=
 =?us-ascii?Q?d1k50sG7jBR/ejprSs6dGmYootmfha+8MuFo1yDs8iNd5HGNNsj2aL2JAZkw?=
 =?us-ascii?Q?4s/seI55FPadK/Izm6vE9YoxcdHro9sub0+MRghWXZuNF18A+SHA7/Ar15tQ?=
 =?us-ascii?Q?N3lSyzo7SRJKz94=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A924dxRw673lhe3ZboZqVwwBRJvnSHW/13RlmaT1r/XIUiyNpcnZ0dJBpi0q?=
 =?us-ascii?Q?FHRyxpsSDB8O8k2q1UBArsZ67BZ2kxUrgeScqGtc4YjXL3WW50MOLqoK3eK+?=
 =?us-ascii?Q?O5CDwhyk9XBeumfEA9oXvUxCjd/owleEBdutSYWp735DtEEHpEyyXNPwA4Qv?=
 =?us-ascii?Q?G/WcxFyDM0zSBWhCgRwIue4V6BbkbvqIs0piVO0zqPbeqVXLrPsJHMAWhfuy?=
 =?us-ascii?Q?MTahjMs4sYJHFNK43xSaRgzDzSRvm32anWsSH9sztjVBa+wcPd5jHOXikUjj?=
 =?us-ascii?Q?ou+9LCUjEDzKolkUPiiXWNytM55nK6v9vsJ8k7s8yMKdrlpBSHa7SYHW/2+t?=
 =?us-ascii?Q?gV4HOBEK8h/s36tewIkHzS6hxdxbdsY+wA9g54NOhvAmCY9LKME1NzyVtYwg?=
 =?us-ascii?Q?AfQwd0Xgc3MDvPMbCeVheuLwNxW78dUXWjujmAzuzrGj9W/IZmH7v6aClV3d?=
 =?us-ascii?Q?ipzz8cFm6D7TEqPvBS9dackvE07N8OuOsH5bme4I7giKh4wW+Y+OJp2nrVbt?=
 =?us-ascii?Q?s4rnugOAUz5hg3F3iloqTQbi4TUNgra5ngFb9Qs7TNmXxx/9qMgaat5yyycB?=
 =?us-ascii?Q?xLbIFJnNi9Ry1F0ZZ7q5peFYNAKPkggV7t1UXO5KOYpjE4LHDrg6WwOz4qfV?=
 =?us-ascii?Q?c+usXnHwLrl5gzWW2A+se0HY1N87FGEhUZDUbnbd/HDbh8IJUJL9uC8cmyXw?=
 =?us-ascii?Q?lNOoR9E3XTPVVcJ0nL6/I2J16zcVLjYa9hqdYZxLEHYK2CF/EYcfXll7ROob?=
 =?us-ascii?Q?GeL01XiwLEqlSDiwiWFahWFv2x3dHKewpkH77b4BJjtjY4qH+lfggJtievAp?=
 =?us-ascii?Q?xLLgMQ+JcbUz9UAztT/jznyv51zKJJX5rNAkwuNGC06OU/jFvpfOpvqcrF3b?=
 =?us-ascii?Q?VV//ACFwhf1PCSfJ1xdn5I6UtjVDeTU2beo/VXOdiUUi1JCbUzQ6AmeswaAE?=
 =?us-ascii?Q?n74stiY0qVeTya9jtnJZGtG7u/gylXMH5cQZD5VsEhJ7NamAG9aN+YYHRFhD?=
 =?us-ascii?Q?/cZTQ8jZteXxwg36Ly9qkFe6TYkT+Q69OgvdDEn4ppQFeblLtK0dmFrTgN/i?=
 =?us-ascii?Q?HHSWD5gWo8AFuEQ3X5UwEgr3Ps0hMu//Y6nAJuCS1SuUGmLLYbrbo27a30FX?=
 =?us-ascii?Q?PQoGk3Uw72bsF5QPEhT0ZpeU6hhtOjabMzsdelhy5fNjuwoCzkKbLY8B1Nr8?=
 =?us-ascii?Q?fEoxxZABwF69SxC2w21tb8Ny6nVeFnYzJisQl2/d0Y8QOEltRVOZXFqsTcEY?=
 =?us-ascii?Q?BqOUjiT0gmrpH6hEVTVCI9EHo/bvIrKf4OjFjd/PpK0qEPFR46HVvINyuEAY?=
 =?us-ascii?Q?+hQrfv25NlShCoMXuTWaWO9hkjxVgTpc2OxTE5tOXRE9IxlJAMAfKCvvpDLv?=
 =?us-ascii?Q?hg6quTcwFgBxfx98TQnWsA6id1pSac8S2WC1rLNMuCVslWXvYt04rImdt5kZ?=
 =?us-ascii?Q?JN/FMp6PpxAeAzIFpKKwMy8jrpI8QyhsJT3FG658tZx53fEa0QzQzCD+r4n3?=
 =?us-ascii?Q?XIrZ9+UKGctQBRDILDvxnqnCpLeb/uzux6L7r2Xld8wJMjZ8x18BQN+TKkp2?=
 =?us-ascii?Q?ziZi+WZ56axonAUG1e8aJje6fjwn2rSsMHiYfCvyFOY/E0vEpeSzs8RfrIva?=
 =?us-ascii?Q?Vg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a8cbb03-b835-495a-4a78-08dde651e212
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 16:42:31.5653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DqNfC03DTsV6X9N9VFkkMOUs5O5xkxv+bzmNx7GqHF0TVOInpFqfY/2cHN9h6M/695YNb4B6XwHvVErB5hYYvTqcls7QPlCsHxSqAuBozlk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756399360; x=1787935360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H5YeTg5JCAzqw7reRvizB1HMHTE+bVa18cezyCYG7nI=;
 b=MvqIgKRXqt//znmsl6qC8OsSI+VQtv9rgeF7hZ7HOcdjj+K6XNFKSN/J
 74HQ/OobpGajH8tBi5IU3cFPYx3uHlkmIn4leWcw9RHgoUuhA9my5wu5n
 C553qbSmITGh9YbCqN0YXJ97XY2a5/DSl1hUbJvruVmSP/Xa51PrkRPwK
 9t00Ty+vexpNv5R86TUXLyFB5wApCehEOUXrSIHIuQ6G5RBinFZ/vOSCB
 p0eaBrX8Q1O/azdxseYJEVS2/wxxh+xfvQTIK63Gc00kGcGUDusLNVE2o
 sxyLw1aYacd+pINAsz/3He/FPaTEjU/wB1h8PCYAQ/40xEQtyA4mGAs5t
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MvqIgKRX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
 indirection table across admin down/up
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
> Sent: Thursday, August 28, 2025 6:01 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
> indirection table across admin down/up
>=20
> Currently, the RSS indirection table configured by user via ethtool
> is
> reinitialized to default values during interface resets (e.g., admin
> down/up, MTU change). As for RSS hash key, commit 3dfbfc7ebb95
> ("ixgbe:
> Check for RSS key before setting value") made it persistent across
> interface resets.
>=20
> Adopt the same approach used in igc and igb drivers which
> reinitializes
> the RSS indirection table only when the queue count changes. Since
> the
> number of RETA entries can also change in ixgbe, let's make user
> configuration persistent as long as both queue count and the number
> of
> RETA entries remain unchanged.
>=20
> Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network
> Connection.
>=20
> Test:
> Set custom indirection table and check the value after interface
> down/up
>=20
>   # ethtool --set-rxfh-indir ens5 equal 2
>   # ethtool --show-rxfh-indir ens5 | head -5
>=20
>   RX flow hash indirection table for ens5 with 12 RX ring(s):
>       0:      0     1     0     1     0     1     0     1
>       8:      0     1     0     1     0     1     0     1
>      16:      0     1     0     1     0     1     0     1
>   # ip link set dev ens5 down && ip link set dev ens5 up
>=20
> Without patch:
>   # ethtool --show-rxfh-indir ens5 | head -5
>=20
>   RX flow hash indirection table for ens5 with 12 RX ring(s):
>       0:      0     1     2     3     4     5     6     7
>       8:      8     9    10    11     0     1     2     3
>      16:      4     5     6     7     8     9    10    11
>=20
> With patch:
>   # ethtool --show-rxfh-indir ens5 | head -5
>=20
>   RX flow hash indirection table for ens5 with 12 RX ring(s):
>       0:      0     1     0     1     0     1     0     1
>       8:      0     1     0     1     0     1     0     1
>      16:      0     1     0     1     0     1     0     1
>=20
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Changes:
>   v1->v2:
>     - add check for reta_entries in addition to rss_i
>     - update the commit message to reflect the additional check
>   v1: https://lore.kernel.org/intel-wired-lan/20250824112037.32692-
> 1-enjuk@amazon.com/
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 41 +++++++++++++---
> ---
>  2 files changed, 31 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 14d275270123..da3b23bdcce1 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -838,6 +838,8 @@ struct ixgbe_adapter {
>   */
>  #define IXGBE_MAX_RETA_ENTRIES 512
>  	u8 rss_indir_tbl[IXGBE_MAX_RETA_ENTRIES];
> +	u32 last_reta_entries;
> +	u16 last_rss_i;
last_rss_i is cryptic; please, consider last_rss_indices (or similar)

>=20
>  #define IXGBE_RSS_KEY_SIZE     40  /* size of RSS Hash Key in bytes
> */
>  	u32 *rss_key;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 27040076f068..05dfb06173d4 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -4323,14 +4323,21 @@ static void ixgbe_setup_reta(struct
> ixgbe_adapter *adapter)
>  	/* Fill out hash function seeds */
>  	ixgbe_store_key(adapter);
>=20
> -	/* Fill out redirection table */
> -	memset(adapter->rss_indir_tbl, 0, sizeof(adapter-
> >rss_indir_tbl));
> +	/* Update redirection table in memory on first init, queue
> count change,
> +	 * or reta entries change, otherwise preserve user
> configurations. Then
> +	 * always write to hardware.
> +	 */
> +	if (adapter->last_rss_i !=3D rss_i ||
> +	    adapter->last_reta_entries !=3D reta_entries) {
> +		for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
You can avoid the top-of-loop equality test by using modulo, which reads ea=
sier, like:
for (i =3D 0, j =3D 0; i < reta_entries; i++, j++)
    adapter->rss_indir_tbl[i] =3D j % rss_i;

> +			if (j =3D=3D rss_i)
> +				j =3D 0;
>=20
> -	for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
> -		if (j =3D=3D rss_i)
> -			j =3D 0;
> +			adapter->rss_indir_tbl[i] =3D j;
> +		}
>=20
> -		adapter->rss_indir_tbl[i] =3D j;
> +		adapter->last_rss_i =3D rss_i;
> +		adapter->last_reta_entries =3D reta_entries;
>  	}
>=20
>  	ixgbe_store_reta(adapter);
> @@ -4338,8 +4345,9 @@ static void ixgbe_setup_reta(struct
> ixgbe_adapter *adapter)
>=20
>  static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
>  {
> -	struct ixgbe_hw *hw =3D &adapter->hw;
>  	u16 rss_i =3D adapter->ring_feature[RING_F_RSS].indices;
> +	struct ixgbe_hw *hw =3D &adapter->hw;
> +	u32 reta_entries =3D 64;
Magic number. Can you #define IXGBE_VFRETA_ENTRIES 64 ?

>  	int i, j;
>=20
>  	/* Fill out hash function seeds */
> @@ -4352,12 +4360,21 @@ static void ixgbe_setup_vfreta(struct
> ixgbe_adapter *adapter)
>  					*(adapter->rss_key + i));
>  	}
>=20
> -	/* Fill out the redirection table */
> -	for (i =3D 0, j =3D 0; i < 64; i++, j++) {
> -		if (j =3D=3D rss_i)
> -			j =3D 0;
> +	/* Update redirection table in memory on first init, queue
> count change,
> +	 * or reta entries change, otherwise preserve user
> configurations. Then
> +	 * always write to hardware.
> +	 */
> +	if (adapter->last_rss_i !=3D rss_i ||
> +	    adapter->last_reta_entries !=3D reta_entries) {
> +		for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
> +			if (j =3D=3D rss_i)
> +				j =3D 0;
> +
> +			adapter->rss_indir_tbl[i] =3D j;
> +		}
>=20
> -		adapter->rss_indir_tbl[i] =3D j;
> +		adapter->last_rss_i =3D rss_i;
> +		adapter->last_reta_entries =3D reta_entries;
>  	}
>=20
>  	ixgbe_store_vfreta(adapter);
> --
> 2.51.0

