Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCB0BA9352
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EE8A81151;
	Mon, 29 Sep 2025 12:31:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SKRI1Dr28wB8; Mon, 29 Sep 2025 12:31:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B349881141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759149075;
	bh=cNTgWAY3j6qp4Tf+3Hb1BEsoAUgUrJFU+Sh/JwccMsY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YLD7vngbw4yn69EM5pcuHSaOTjNPgAuOCbV07+1hBRsmSUWUDVoeL3Ppzse/P8oc2
	 dZOdJEeWWCtJ5mLa6oyBGCbYlmGaO+8leWMcJOmYKrJDUpw8Aj0Y1+d8FGqVhD3ds+
	 ib1zkxKtDVk3bi6PnODtoXrkVcFmqn48gNDgF9YFKrJS7X3D1o+BA0uWKJlyn8nuf8
	 qtCc5XQ2olC6VBzAC1I7VDczsdb/RTenyIyjZz8QuLkp5vur5hTqH5f2sLrfqlvsdy
	 npSGid6qxVIn1EoFJ9oRPW12TqxNA0thUYW7wlqMkeDHdE6//r/6cA6YE21o8dOQFQ
	 rv4hYnGI/XokA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B349881141;
	Mon, 29 Sep 2025 12:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FC98194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27799402A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:31:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kO3CH3ZBIpqL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:31:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F2CE402FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F2CE402FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F2CE402FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:31:13 +0000 (UTC)
X-CSE-ConnectionGUID: u7xXhGuPT6exc+6uPu2GHg==
X-CSE-MsgGUID: YyWPwcmpRpaIYcE3l0/hFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="60600091"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="60600091"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:31:12 -0700
X-CSE-ConnectionGUID: hdKnqwKNRHm2eWZr0kQzZQ==
X-CSE-MsgGUID: tdFHKdyMTJ6WAalQIU8jrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="182641255"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:31:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:31:11 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 05:31:11 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.36) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:31:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AGlQ+5b5y/6FVuOYDLaK2LQFzKlfMGJ2eXxiT0F9Lu2HjtQN5PLXQs0gQVUKI6B4A8YgzSzw7A5O2yfBbV80tEVN4kzRC8LZeDXLIu5WLmWU6ldwB0JEIffBAFpq5u1WkpYpW37OkKEGPrUTlIJE2vj4AfiC4YiBt3uaBlCcyUCEdo6ZX3hWU3OyxXsyOVKZb81gTmEzHM54+zB0+phMd/+l1nYc+KezjL3PkJXml/GWPKd4QJd+yNVqKOd+iO7VuPOL36+Bif6fvKwjLwSfflnVvAqnx41vtfm/+LmNXcDtNytR6LtNzVbWP2sqywUA5V9gx17R/ykKWEqrN0UpwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cNTgWAY3j6qp4Tf+3Hb1BEsoAUgUrJFU+Sh/JwccMsY=;
 b=yOtzFG6Y0h80sXLomIeDVuORkSRQZ9tZ0DzlLgp7h0zaCCIrbZgZX+C6lFC7ggZsb2RhxGKdGbvgQ1cfbRdB0gmx4ydDDi8yIv2CyW4WK9qak1ai1QmrAb8ywgFMhSUQHIcPqRna5ZbiqHHr9hPT9iY+hu/Ngs7kfOG8aC/FGD7PlsVyfjymS33hWYui4WgNkcQ6OHpCj1a6hiMKFwY0GqreqRx/7zdnf6a8Ca8Vot3kGopo8T6a5q9mfVzDF2NKWhw2vL3flaLTqjUWEEvwe5dRswUL2BypWpx+rw4Ho6THyqNb3/3uLDxo3hQ53aw0xm2AstvuA6Roat2FbkrRuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CYXPR11MB8729.namprd11.prod.outlook.com (2603:10b6:930:dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 12:31:04 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:31:04 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: move ice_init_pf()
 out of ice_init_dev()
Thread-Index: AQHcI+ehDS4G7SYLlEC8YqLfaZskKLSqI+kQ
Date: Mon, 29 Sep 2025 12:31:03 +0000
Message-ID: <IA1PR11MB624171406F5096FD162908B68B1BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-7-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-7-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CYXPR11MB8729:EE_
x-ms-office365-filtering-correlation-id: adc1e349-9a88-4d9b-09ad-08ddff540e58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ngyNj9ZXC0DVkwI8CaFRLAxFwf0aElEoRAlJ/DvcoL5qFvL1EFweeT1TbMzO?=
 =?us-ascii?Q?HrHeP5LB6dD2lOXXnzC7kBDIplieKnIuxW6N5NT7ASR2VdBRXn7b0lu6Yc/b?=
 =?us-ascii?Q?yjNR8Qcfw4DmUNlEb3DlgSCe9+tqkNiX6Igo5rNzuXrYer2UAcmDNnCjHRs2?=
 =?us-ascii?Q?VVzL6k5CrVznNgy6wgWBZ1nxkHRJTuMWE/feZS47oehe8xIcIY5wBR6cwcot?=
 =?us-ascii?Q?uAocM3sflKHbbypPHYbv+QuBsCU5+Bg43ug19MMiwyfz8mYoggOwGkOh8z++?=
 =?us-ascii?Q?GJ2hvJR48MRGdI2u1ptmEn0Pd9aohizzkRcjRZPVZAcF41d87AhU/uCW9eyK?=
 =?us-ascii?Q?QVOZGBQb1O3yGk25ZwWZy1jmFZeqmWyQVPyiqnpAxk43e51iqQfI53yN6Jcf?=
 =?us-ascii?Q?j+nBl1gGfptHRZYFRK7pBG+IRtCaYaLFXRJoCHE7aXDZlqF2w6PMrjG4lNU/?=
 =?us-ascii?Q?DBsSZ07A8rhfEP2MWiHekmkolt/NYOhekH5Vqi6Z+EhxGZjmNnh7aOhHo24w?=
 =?us-ascii?Q?kRKYJrzei11yVCAgAnF6jqST0FJ+3YGcR+kpHEw8jrNWf3tyGCYsEPGHxvFH?=
 =?us-ascii?Q?6aIZnqJaho22jGuU5pAd1qktCGBxmqYi5ii0zV4qPFPljTBw2qV6m3FUbGjK?=
 =?us-ascii?Q?3YHn3iOw1xrdujJwTmjC9fBNN0z9sJgpaP33LpQ71xa9vapAeNlJI8Pa32wR?=
 =?us-ascii?Q?laJ+uv5iHanYUmehlxSQLwSQieVRd3AYDVutXFjYW/YnPAZ9YZX3bgTRtDfN?=
 =?us-ascii?Q?4L+k0YUZmbmOjpptuo+7a5xvgpH48WuzT8H8f/H90LvRclTQ7zWIzJNmz/ew?=
 =?us-ascii?Q?UKcNCBoM724KqzVDCeJDQsZf5jW5MRxpgB5eLpjIxSt4BGAdxuoY7mjI653a?=
 =?us-ascii?Q?lmd45b4b9Vvu6G+uouPGzPLSWgKZJvlvY6dBEtR0gJqQJKwsUAil3pmJ3woS?=
 =?us-ascii?Q?DOeFaZ39dAWKnmld3mbEUaYjr8b2P/RU0eStdrFnDLk339LGKxeOwvduJg0X?=
 =?us-ascii?Q?nQB1IFa1ljwmW47wB4Vpj8tTs4IWcRnnvtf3/cXcHC/o+frKkU1TLWcb4XQ5?=
 =?us-ascii?Q?gVRsA22KVy1Be9M89MHNzYpJKcTSYYBFTiJKj8KrTjPmKEks/XJ+A7+VGroU?=
 =?us-ascii?Q?U/3NpdXarHv5BjisFQ1uO7Ix8koQq5bM6fOlgqbhdIvHJAeCiJDU7D49YiO5?=
 =?us-ascii?Q?xvfzel6lTx/8/khjGganYDDrX8BM3UetzqR1CM30MroOXOT8zKeejYMQ2QkO?=
 =?us-ascii?Q?LfQ1U7Fkv1fTwUnnNtyckugL/7/ZT5/fnudow8cUDmiwOkhdko2Ci88aVDJU?=
 =?us-ascii?Q?ALwH+qo1sUqqZ/hIqoCyH2fYvbdv7OKjZgYUh2snIhp5xRXyu3Sxh+W3my4X?=
 =?us-ascii?Q?96xz6Q0sFlnFbAis1JwGNIImm5npecjhczCz3fBNxtQOPjHcZhdODAsbzXfU?=
 =?us-ascii?Q?mLVMofWuywchXO3iK92kb5QkY1duQU9y/hAPfTtNzIBWCEnBVRtEmA1Yyk+E?=
 =?us-ascii?Q?odzpVWW2ILlPg28b+DSf8ETuj5SOM/FWY8qu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fbeTIJYwzg1WWsPG/Dwna1lclHJjKiWva3ZzI32ndvCP/+JjOjPNtDqAoDlt?=
 =?us-ascii?Q?mdcKm4BZKpIQV1SeWYyW0S3IDRwHe2Pw9UFJOfTslAIlXaSKAXVA2L8r2T8W?=
 =?us-ascii?Q?Vsoi4sBMZz1sPf/gWFtwS8ixMh32xCRoF6hngkqxqj+Nz4PpcTUceGY5SU9p?=
 =?us-ascii?Q?+yArhsiuGt8AxmStwd5BdcLEMM6QNsHK9DUDezrrPYN1OFqwPk1gu7uukgkb?=
 =?us-ascii?Q?mYZ3c2gxGiJ7jFjmR3dunng5BfV+kev/1XCSEYPv8tFGVKq46AcQHy1Vn8aC?=
 =?us-ascii?Q?IbfB6y57WD76c4G9ZP+5Tmi3/KE07VY2tO+2EfdEX7QI0P+riq26UQPB69vs?=
 =?us-ascii?Q?WShibs/2SwaJ9+sNgVDoHrl6mVBNshCYnR8fdeWsLQP5e/gWqHBLbt82lDwg?=
 =?us-ascii?Q?WQcl8gbBt7PowyGd6CifdCcDLUEE9S0WzSDDM1KUZy1aiH51CN4iMCMCBwWO?=
 =?us-ascii?Q?PqmDVCpRcTFxFyiuTyYyI7We1JTm6AYWJwlcoBEE3pL0oxn/sUu2bsiYnspp?=
 =?us-ascii?Q?ghi+JiHFrkMtNz/ORBxvg1Q37Yz0x0ZlYtSqXqMI6L2+n9rk4eu7i2xA/6E5?=
 =?us-ascii?Q?cRcteij1LdTg5ufl6SxfNok2IUe1eJPEHk21LFg6PrXVsTUTg8/Mx1gIWD1G?=
 =?us-ascii?Q?FmseewO6cniWno/2SWcWpDgKzYantuvTDKpWCEWZSqTwsWtyXEQO6pjlb4tA?=
 =?us-ascii?Q?tzYlLpR7t+PzD+cBbwf4VNs1Lel+SVLJfaCSO0rDJKssro33E8d+cu0KliSW?=
 =?us-ascii?Q?RKAklTKOsKCsTBJgIowANLezBTfq1+9NiiWfrwys+jetat8St2w2+87Cjb7b?=
 =?us-ascii?Q?EevKtyG3SORqFpALv4a79VbirWYnF1pQgUb2OgFD3Q/9sTU2KjR7/xUe1pqv?=
 =?us-ascii?Q?N1XWNW+83Bz0BUFuxmyJcadsqO8hgzzXggnrmt84i7hQBfVDAIMwsGLoo9z9?=
 =?us-ascii?Q?gYDdII6sMtRBGK+5UwVYGajF7vxkZiuDu3ZXGYuZKzGM0JBFX5OukGiy3up1?=
 =?us-ascii?Q?CC+4ETT2/3XYA887NpA9ms0y3MSYEz682oth3oowdVdGXKgPtD93u0YcB2bR?=
 =?us-ascii?Q?9o/osQvKhP2iMtuQoZBahtTj7FXV7fPX738V6D24I4JG8yhohR9F46Dypum/?=
 =?us-ascii?Q?ve5dIlLOK+ic/p9PipzyuU4J+kRCXqjr5+M68OtbhLDkgVL3k89F4p9RURJ5?=
 =?us-ascii?Q?2nicId23Kb5UiNe+nwUXqEbCG7LT+uwQg6SSslEkPWqoXnGnB1VCc/nlwBD8?=
 =?us-ascii?Q?eDCsj9MouLAgWtOkpkRnBS5xbZBvr/8Eqt8jkshNqYE80bPOJC9YpcBv7ToZ?=
 =?us-ascii?Q?yJ7dl269EJ1o2PmZnWiXzw6pbOn7hNYzHjFqKqkjqa7RyjTePDjCCnQpF6Tt?=
 =?us-ascii?Q?bWNAIVUs1TGJldrwpAWajknzMjThl3l144cuXSO1Rkzg3p5d2qwIl8jFfkET?=
 =?us-ascii?Q?xghhEgLEab7CSfAZGrTDkh2rWrcX99iqpEo8pIOYe0mC35dwtKK+D00xgJeJ?=
 =?us-ascii?Q?6kpgiNO/MNZZ4gqlTqrJf3Fd+yHUCsEDwZfQHShRmGlK5hli3HLJy6JEVPMZ?=
 =?us-ascii?Q?TNV6000iQY8GJQILVruvLr2hTSAk9WjadZ+OFtXL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adc1e349-9a88-4d9b-09ad-08ddff540e58
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 12:31:03.9059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bbZSiP4aWdE2xNIDgIwnSCQvoY9dTeTnXeU84MWer850+kHWTYIOLwDBWmfzgq4T+5OXNtO5Falzv/j72McsNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759149073; x=1790685073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W2J4WpsQsY/RRXDeTUP6aw6Js77/heFaxlshYzAO/hw=;
 b=JCpyM42uVH6cjZ08gMvvvoNkYPcfjPU4k6Oyx/1yxgcbzsqOTonOXtic
 y/pETkWKYFn1SOyIpGwnkW7Ky1aETcCiSUGAMqiC4xEH1AZSr4WFO9Mzi
 +576nH+2WxHJ1B5JRahv6WcJWgT4CDA/R18Fe5WVcdI/bUgb4ILaXi0OZ
 4HI6bUAeN4XQKFDhmzWLD3ZfBrhAgP+HeKRYDJKjZFSXSyifrbAHoyV5B
 Yi6q0NpzalfG2CjjX57WHAeFv/JmZKOIezVVIg33KuMPUlsIN9rejVLFc
 rBRIUrwSNLNMXXlc2t+ZgVR4/l+/JXNId59Xcq7tSvTBFk0tC5H3Wqjjz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JCpyM42u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: move ice_init_pf()
 out of ice_init_dev()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 12 September 2025 18:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel, Prz=
emyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: move ice_init_pf() o=
ut of ice_init_dev()
>
> Move ice_init_pf() out of ice_init_dev().
> Do the same for deinit counterpart.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h          |  2 ++
> .../net/ethernet/intel/ice/devlink/devlink.c  | 16 ++++++++--
> drivers/net/ethernet/intel/ice/ice_main.c     | 32 +++++++++----------
> 3 files changed, 31 insertions(+), 19 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
