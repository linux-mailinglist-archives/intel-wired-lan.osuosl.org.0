Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE733B3B5DE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 10:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA6CF416C3;
	Fri, 29 Aug 2025 08:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3EH_pzTkn9cS; Fri, 29 Aug 2025 08:21:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B5DD40A24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756455669;
	bh=gG1zIp89ObT8Zhr8SzRNwDr7p+0yFQrrMpA/M4Gd9lI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CfMpe1Jif6vi6Z1jp/4GXvSzcc0Uf3Tq4ndS3EfwuxDI9nHiD2Gtf1g3/Ni6TCG4O
	 6NJCgmk0+QgZlV0SiEK6ebcrrGAXy6c8WKiDohdf2NIr8QE4+jzptY4wo3nqt3Hjo6
	 uufkwdtCQPf9eVA/9yyC9Q7BqpVsCDws68A1UEoLoNaIMeOgaRBf5mXIA9Per11L3k
	 dEnSf0A/ReGlPrfYZHMEDFnEvk67CgAoXxXY9uznseUcoUaC5GgfOmWd5qy04eOnea
	 iTmG++6V4JZkjNZaKtz5YnUYMOaeTsX6Vt6i5CvWSws+++qyG1Z1h+Uuuap6EJZzUs
	 JkXZLPMSE4U2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B5DD40A24;
	Fri, 29 Aug 2025 08:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 93B316C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 08:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A22B614A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 08:21:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xPh5GY87oiMp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 08:21:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F04161424
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F04161424
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F04161424
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 08:21:06 +0000 (UTC)
X-CSE-ConnectionGUID: iHAlvAsMTnq5ccNg40+yNw==
X-CSE-MsgGUID: XohL1smcSuGjMTxHG6B0cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58661904"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58661904"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 01:21:06 -0700
X-CSE-ConnectionGUID: 6f6/QBDHS8GQaa+zp0yNfw==
X-CSE-MsgGUID: mqUhMc7WRGafJi7Kp5IztQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="170232528"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 01:21:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 01:21:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 01:21:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 01:21:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xGK0B3LCuOCNk5XY+nkSh27qvwJqvDQwc9fvX8hwKa4sZ7URuF72HM4jLq/C63l5pp4b3M5vehvcQ2FASy77bNoiOEk/ArPF3zjEcjLA9TY7n1kRw30fcuT0ouXfJKHqpR9hrXX7cknI/BbknUry7XgBxvjjQ/5uWFqLjbfMuEaY/ruQzLZw3AO1K0qtIg8U9eYtoVxscV6nw3brRwTF7k6IBqa6Su/uPSVyUxpHmS4SzlGdV6lMqxkDhamqdccTgpdfipqAaGKSfqCVRr6RyhmlrSSw5GIE+0ysTYtgABdMxRJgCO7lb4BSraCcZYvBwk1nWXmikVgHFBra5baTSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gG1zIp89ObT8Zhr8SzRNwDr7p+0yFQrrMpA/M4Gd9lI=;
 b=vOnDI3IgxCJ5Ti8c8GPDNPawsAdaCyk/AEmajg3AsyTb9pO+kVxV18tg8SKBakPjXQ8S0pa0Oc/XWL7vCgmuALDiRP+w09F4yIwykCKc9vsl1tCBr3GOyIxvZYA2gZAWoqWq33q4ccskD7ykyFaRZ4zb/tbIbrk2dwyEqGybmp/smCzCC88wXSYSqw7OaaZMgv12wZ9ksnLFhekxpVCxIM6WGPmaxVBhlodIFAuk4GZ2G5uXbyuFikSYUPZsx82qeMAGqOt92QYw0UR0rZUJcUDeku9jxAeVUB0rHYIH/urgA0YnzTzt3J11dKNXkIy2epL88NO6RAGKsF+GWUkKgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA1PR11MB5898.namprd11.prod.outlook.com (2603:10b6:806:229::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Fri, 29 Aug
 2025 08:20:56 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 08:20:56 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ixgbe: fix incorrect map used in
 eee linkmode
Thread-Index: AQHcCjTvt77YAnmmX0mALY9/lxDU27R5TGMw
Date: Fri, 29 Aug 2025 08:20:55 +0000
Message-ID: <IA1PR11MB6241E04285C0E51C5455CFA78B3AA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250810170118.1967090-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250810170118.1967090-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA1PR11MB5898:EE_
x-ms-office365-filtering-correlation-id: e1acfb64-c32f-4710-37fe-08dde6d4fa17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WL3hgg+BOQ4QNLsbILdHls6wL3DfmH6pKkpsRIfH42qeNURPoEj+LyCfNpYa?=
 =?us-ascii?Q?ApfZR4sRzYQ6+PF2lGJZUtYB3RQsKNujUbCU1BUi6lqU2MV1nju0v1gR1/u4?=
 =?us-ascii?Q?Baxfmfk+z/Gi3dE90AGEoIFpbkfI5qirMAIPfoZUVrfNjOHlWQvtaeoNLIsZ?=
 =?us-ascii?Q?ogl8/rfzGQjnoQOodcms95fRfQERAzaZ/uTpQ0h5rrCppFTTP9KQABZYmgGd?=
 =?us-ascii?Q?BcjYHcsa/eiPCHgT0c336enTtXVEPiZ5rzAN2rwdpfbusvlqfb7IjRI0jz9w?=
 =?us-ascii?Q?xtXTxt+8oFDCZ4cXQTFmYyLKVPA30QobXfcyhMwOQz0Bm0LdyrR/DcDhM6sy?=
 =?us-ascii?Q?0Z4VWFZpqQQzfEgC3w5u9IBTJ5PWFTtxVp6OgixgIBj/+GhcIUvBRw6cp3Gx?=
 =?us-ascii?Q?gm58eOalqBB4y0g7lRsKl+LdeSW5LB21Q5IvlmFHCSzoCoVzKZHjT9jBfMHZ?=
 =?us-ascii?Q?8ZJz53P+MhpLybfkYMpeelu9/CVR1RNiaTtMF7d7MMevOd2GXUmWfjDU7i0D?=
 =?us-ascii?Q?fBfAz/DCyrebk4qNEEJQOrF2nLiPoAuXwy+0jGSNMivxwNo2Pr2ekBhh6rsf?=
 =?us-ascii?Q?m1qdMF6YZtu3MifnRfLauuV6fmXvcnl5CRFPF5L31hAcUppDAKDp9xU0v+jR?=
 =?us-ascii?Q?Y0ex3DM+mmYfTk5STWY1w2Jhc8+N91SztmRuBv8fQ87538qZ2t65IgO714GM?=
 =?us-ascii?Q?cvX0ixJo3c1IMwlMdnYQhZVqCCoYP3stfZvDKZqsCav6COfwUzw5Xp1HZ+j3?=
 =?us-ascii?Q?PtaOD3bFnZqqEyK+1wDf5m+lwD9Z4OADHZOFDAOy3vkiZm2+J5aUiRPFyiNz?=
 =?us-ascii?Q?XzoP0c5upMVOAkhyXodGkp/nf8nRZaF56FVlSLwIIAJcVcwp+SuXJ9Xnh9L2?=
 =?us-ascii?Q?662A95orsHhD4cHZg60AOMdgwUSqqQ30xdlQ1eAPaTEPDU4DEKMv8vksH0aq?=
 =?us-ascii?Q?EvFNAvBTdftQD+Judet2PexJ72XVJT8YL9KLvvIug4ynIVO21S1uQ+B3elJj?=
 =?us-ascii?Q?abxO/MKTGnH2dv1t31esVXwVBq0ffIVFJa7+BuCTz0XQ8tYlV/Kgc8lvT64j?=
 =?us-ascii?Q?wFIaR4XYicl5pt8LpYWdDBhdW52lGAVDKpWfgGoJevEmOdGegMtUbupm5q41?=
 =?us-ascii?Q?uy82Rw2OMBc/wuFebrPR4/XyaAeBhbDyElDfxM+3RPJXYIw2OsceZldYSQoY?=
 =?us-ascii?Q?skXfMUNCNocE+1YlRkhF6PyI0eyzID0ElPJnx6F27fKY7oAxqy55H7bUvaW9?=
 =?us-ascii?Q?/gjufONZsi28k9YuNiljZyRckWId19slVbKuoUc6w/pgfrec/rEWZxHX+fQK?=
 =?us-ascii?Q?knF1Auoz1vcwucOFc1m/iwbP+YiYi3MWA4k/gjxyyWLi2coKeZDELLu2xwYi?=
 =?us-ascii?Q?Y8rZoGIc0BTr7jAMYGcGWspk0kOVvbWIRLmBwh50ufLN3TNQsHHNHD9BYxSR?=
 =?us-ascii?Q?bbZBZJyIuv6KtIIriuK1e1a/W4QPShv+VEuCmbOSFAC/+Mu07PsDn7vWlfC/?=
 =?us-ascii?Q?nKFkYCb+xzIo7qw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GoTCMog3hYkOX00kTuZ6H0k1I7pHakUfYgy9VydomPMhcdIHuv2ZlyuDlfKG?=
 =?us-ascii?Q?FDFXalNV+/7rrj0rF6W+Rsfs9ppIZxk5k6aPB+ojWLWeI/IHnVsjwFBOB5ML?=
 =?us-ascii?Q?GT3osJSqIkwAuRyHS6NRb9VV3NBUGCi4x2E6B5g48hAqjkgIvYkRbMPegIm7?=
 =?us-ascii?Q?t4uRvFoWDD5oXYly8kwJA4S+1ICdQ6o4it6EJECF+g5TKo56PFlB/z4QFleQ?=
 =?us-ascii?Q?dnxfOPOIs3kyej3uh9QDHGHjS5ZjAROgqnXVCcl42HAk50qa7c5wwgJzjWxv?=
 =?us-ascii?Q?oTloZ3r937ive2FlzP8nQK1DW4wbmJJdG6O1HScA91itTPMlQWIRQol1dbIs?=
 =?us-ascii?Q?vwbAwFgFMaHTeV5OGWJ+HMxejFfHroZzu4aNAPamCu64HYXu8BjZDQkEyCCz?=
 =?us-ascii?Q?Qt3LbpQ9Dlv/1CP7RVggokLzIxC9CDNNXMm37gWnMIE+EXvYXnUDjPCPgEeA?=
 =?us-ascii?Q?aBxk3hdr4g2H6+fOe3xnulfT7PuduS8+4HE2tlvodJujmMvugwDF1spczS1X?=
 =?us-ascii?Q?Pb7TblVhO8dym5jqGa/mNZ/zl23nvBiUcg1V18ePtCvHRq9LaSdSmMIIdlRh?=
 =?us-ascii?Q?aMzyE/ekHyL6PrF7E+ahSd4PJNRDBbmltZwdZUyJZqY6HMmn7/FkRnw7CfPj?=
 =?us-ascii?Q?GEIRtkpZBzYyAkb71ZIfkBFEHr/HAdSPhvOYqsqwPyp/Q4IkEjcwJ3NqhKof?=
 =?us-ascii?Q?efh5+yIbEe3UHA3K1V3Kir5QL8IkF7t+c8x7UxCILx399Lghu03r6iGk80Uf?=
 =?us-ascii?Q?StoSglGlOP9LjmBqsL0f2Fxo6dFQNoTPS7mCTzpdDMzy8uxpwoI+M6DycBmS?=
 =?us-ascii?Q?K6Bv3SSJzjuj8mK6z6g85brap98ch1HDmJylvamzgfUun/FcCgsH1KTGaUCI?=
 =?us-ascii?Q?wbYFoXVSU84VHQvzp95cC/5dVK3xDct1NUnMbPxymA5JjF8m78wTAARQ6wIT?=
 =?us-ascii?Q?bFFjgi+K/HuV/4PLmwoKEuDIcpWSn1nLcoogsDPQkUtD2ZAw7TGar3Yeejry?=
 =?us-ascii?Q?ZcXeKIsJ5aN9+IoNA1pqjZk84nmwL3+z0R2zzRl+H86/YExiuynpcrExI10x?=
 =?us-ascii?Q?HrbIHmccwX+NfnBcFwGsT+QK/Llnn/NGFFu+Pet9HoFuWYq9DbF2rlCKisx0?=
 =?us-ascii?Q?Uj0YBCRXL3RZ6ocvIue/hPXq7VG45WVLthroTvUbWTQrMw4XXrXnqWw5CHD3?=
 =?us-ascii?Q?F7w7pfO0h7nUwXfUcWMc81NpeB/VMtge/Ps5xDgzUnIloEVzrZLCLsshgCIy?=
 =?us-ascii?Q?OUkOBdKoJ61suNBW19g3o6S74GZov5tK7vj24hxuwfl0EuGuMJ2h+CXCO9Iu?=
 =?us-ascii?Q?IRvdYX9z9z4rg5DudYZmiJEpcebVZlszbefREHGQsBt8ZW8wqhFYkqYR2pHx?=
 =?us-ascii?Q?i5bHamoOo9j86rpAm8dU8AQt7wT0+Q4JQDZ4vnqsu0NYiffEvPwBLvKi0kSd?=
 =?us-ascii?Q?GGLR4nwyp0nT/qZYRfykLICR17BXV6Iy81BzAxwV8vK0p86wCIpVHNLLq3Kd?=
 =?us-ascii?Q?5yY/qA2Q2mdJDKPjuNI3bs/4gOgs/sCQd8MwtvGeiwKfmH14+o87mR1xs9Z+?=
 =?us-ascii?Q?gyWF9GmbMhFBUXImd98P5ZAUuqcG3Mo8l3eusXD3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1acfb64-c32f-4710-37fe-08dde6d4fa17
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 08:20:55.9274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2DeHVs/xuPCPVjmgMDGExNAvDs50xgluOOBSEEiZrw5PYYyz/L9Tymvi/YLLSAWM9dsnc1MzN7B1kyvuVgKnrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5898
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756455667; x=1787991667;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gG1zIp89ObT8Zhr8SzRNwDr7p+0yFQrrMpA/M4Gd9lI=;
 b=Yb+v3BIXsZ7pgjXApo0umHyXFko3BUa7WlwZONlSpb2I+YxkP5c85p/I
 GaIwzaTKu/mZmM197olXRaWh+ekcTsFQXV3axwAa9CkGkUwAPJ2NduIlj
 qQUFeHyYO5+cAKO1jJUNyxrfRO2MIp5fHxF/6IIpW2vVd+z/9brkooFmN
 4gT06N1oiw4JFPxuxHyhbSb6xHkMbva/hUF8CcLpTwQ7Ivw7hFHAj0gip
 TfTUTVyMhwC+bgmiPdSgap/H+cbhD0rHfEohT1RndTAJ9x2p5OtCRwRq8
 CzUsP/R1ikyyfyCXuy1ronU7NdDjZUumqvbHcBv4tqByd0oTLB3/8e8Q4
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yb+v3BIX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix incorrect map used in
 eee linkmode
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
lok Tiwari
> Sent: 10 August 2025 22:31
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; horms@kernel.org; =
netdev@vger.kernel.org
> Cc: alok.a.tiwari@oracle.com; intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix incorrect map used in e=
ee linkmode
>
> incorrectly used ixgbe_lp_map in loops intended to populate the supported=
 and advertised EEE linkmode bitmaps based on ixgbe_ls_map.
> This results in incorrect bit setting and potential out-of-bounds access,=
 since ixgbe_lp_map and ixgbe_ls_map have different sizes and purposes.
>
> ixgbe_lp_map[i] -> ixgbe_ls_map[i]
>
> Use ixgbe_ls_map for supported and advertised linkmodes, and keep ixgbe_l=
p_map usage only for link partner (lp_advertised) mapping.
>
> Fixes: 9356b6db9d05 ("net: ethernet: ixgbe: Convert EEE to use linkmodes"=
)
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
