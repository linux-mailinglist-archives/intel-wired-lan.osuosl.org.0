Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C099AB7736
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 22:41:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D21341561;
	Wed, 14 May 2025 20:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 16p3Kkb_fJht; Wed, 14 May 2025 20:41:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EC2841557
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747255301;
	bh=QXKUSkRVyYhudK5pSqXqB6PGx2ULF+CEhx4Okps0z9k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kf6dggZWLwzFJoykItczSptmYy5gSjU2XFm/M1Hax8/WbMSwtGDnVioXoceRdneDj
	 0uiT6SHRMOI4n7niH0ds7V778pItC/D96NK6mGJcTZXDJ2ZwzePS1Bm+GRmTTmtrUy
	 kSSVcaR8qQNlIkgwNO5gf9cd54A2z0ArjxFkq4P22kxhk4zvQ2RMjS6Yg9DMKY5ni7
	 /G+6OHtjNBShvbR8YAsyJJA2JWsY7ciGbpKaF2ygtAF/eWTZOwCOP+zPFIRq/hKK38
	 p7xlaRqNGF3zIxbk9/rPcmjBbs2RtAp+PoxYWrkbL9JuJf4rvYHWzHymZZJV0Ajf1d
	 HcL6EK5Dg7QtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EC2841557;
	Wed, 14 May 2025 20:41:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 029F7150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E77EE407B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:18:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BnLi5TsxJKTV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 12:18:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 28A6740703
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28A6740703
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28A6740703
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:18:08 +0000 (UTC)
X-CSE-ConnectionGUID: EnAquUy1R4KYEiPaSU/idA==
X-CSE-MsgGUID: R3p/QApSQNq+l3ACxzH8GA==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="49282327"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="49282327"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:18:08 -0700
X-CSE-ConnectionGUID: vu9uHvcXQfyGnROTXP0a6Q==
X-CSE-MsgGUID: rBMEd+8GTlCGa0XaYwhABw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="175149376"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:18:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 05:18:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 05:18:07 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 05:18:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xjYVs96bR5smoPsZVjKwKS5c15KOr3Q2ofK/8VapM+2W6bHj+tMJ4eOjWqH7zdtaB0RMYJX3Glq6NWIjbhxWuwxBb6hijQRjl+uEtRGYvd18L2mBBJaxNBrxBao9D8tf8h9+q0pBQD89qxGb3dFDQbWvg2fZrN5N7dN20n4H5mXSrN78xay7Aj8Cjsf4aqki18mqe1ICGVP2ym3eFXY2+uEeXKOEofhhjN4dCdwOEYP5aodxdz+opr1OqKGM2912nm26bn2w33B0RBUev3U/alNv6HdGjFc1kfZj1sOGRAq4En/bKJh/VJ7UaSapcmV7JgW1Tb6wuLZMVU7+eJcrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QXKUSkRVyYhudK5pSqXqB6PGx2ULF+CEhx4Okps0z9k=;
 b=PJvhpmN4eYKE3+ClOpPatciLPgz571hPQwoM36shjROLYgpM5GTHBt6HsG7ZVHyy/gd5ex1pp0JQ2cPOLPIFMRLXBWMpFHFpWUF9ao546TdIDZ6w3o6/gBWKjRGc6MALD29gkTd7ILpkeLSq+cr/94vuk6Sil55QXJcZeiWuu0XPNRnbCkEPvbmtl9ybCjrz0tvoilxAs9okJGObxxmQi5Dx7AqcpfCmOosE9Nd7t+rBeM9LG8qFn+6FQQabiEuCWqc4oqgppEoBOth7lOlxi0XP3g5KjrCmXc6ztJdtR6/Z92SFJn9sLVG5JRJy8oV4OxYrQ9nA7EhQAXOcWURoLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by CY8PR11MB7035.namprd11.prod.outlook.com (2603:10b6:930:51::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Wed, 14 May
 2025 12:17:48 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%7]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 12:17:48 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH iwl-next 0/5] Intel driver conversion to new hardware
 timestamping API
Thread-Index: AQHbw/IpT9/GU9fJY0CIODJ9kBczrLPSCMYg
Date: Wed, 14 May 2025 12:17:48 +0000
Message-ID: <MW4PR11MB5889487118C80C66A81139C48E91A@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
In-Reply-To: <20250513101132.328235-1-vladimir.oltean@nxp.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|CY8PR11MB7035:EE_
x-ms-office365-filtering-correlation-id: ee60cdea-0199-4728-ee20-08dd92e15714
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?LVQcKYJ1JzbdZcR+bwd/nEW4bMFa6SBqf0FeBbZM3uTmqQenHJ/JNjL6KSxV?=
 =?us-ascii?Q?hvUmbEf8PHSg8+rMPVWRWHoWkHFQhVGyq77wPC+i7BSCcMZYw2JTtxJWsDCQ?=
 =?us-ascii?Q?/DgMUJ3XBnvBHBwEmk6j2UjPrLhVsxgvowATg7Vszb5wiwvcLK09rq/2ExKo?=
 =?us-ascii?Q?IuvD0jsEGL1Xmdm72RZG1eFYtqcJY9H/Xi5P57TTl6oUDEG11QnwK3U0TnQ+?=
 =?us-ascii?Q?rOlgoRCBGgoAyUHV8RCXkjY3q+Rko8cheWszMAFlxoAinQaPciw9bJ6HistQ?=
 =?us-ascii?Q?NYjPRkJUHMrLIp1B8q3SCIgltPrvEmy7Ef3o4K3DSSfF/QWDRAzW4T/6t6kk?=
 =?us-ascii?Q?nJjl7Xh53WvtbunvXQJpbJ1iQe46oO/rNsY4nuzCbmYEjqOsz4LdfhpwIkzo?=
 =?us-ascii?Q?hmIw7OWke2UHysIRCTd462JAArnH05PEEhhT5cVyjztetg+lbdR+hy7tJuQP?=
 =?us-ascii?Q?GvFX7ttF2nqbjcHJD8iEJBJMsUjioqbl3CVJSDidn+e9r9vNmN84lcQXJ+XN?=
 =?us-ascii?Q?hp6GNPyt94BxzVI65aoJ1lXehh81X1d8iqBGRuhYR6DAbuSiPBlSVTkP00Sw?=
 =?us-ascii?Q?er6++Rrpyht7YfZSXaOoyTgFGVojDqjMR+YwHz0FtMnWjhvnzOk5yVxqoymm?=
 =?us-ascii?Q?0Y7bqi1UeTWAEsx1gciqGJ1nqnw1/1UxBQHtqIkldkaleaA5A+49quvWq6RD?=
 =?us-ascii?Q?kQczQuAwRK18e/YWjfWlExe/uOaVBLikvwhy44QByR9SAJcug2mFucQjeMfv?=
 =?us-ascii?Q?edPtx7lADgySqAlsGjvSLKqOKRu62ohnqO44XJQNGNQxNZEVRhN8Dxa5zFWl?=
 =?us-ascii?Q?1M01xBCqawDiBs8e7TCCzH+wbqC+tnleOB/GqcK4eK+RpbCIsnZBT9JefMWI?=
 =?us-ascii?Q?M2kPl64DdEOVmZ1aSxbUzLe0DPHqVRiiWBAXvRxcTFO0qzWn2v947Jv4sA2k?=
 =?us-ascii?Q?WD4u99pdC7gonrMGL+UOQ1HkPcYN+Yv/eTigku2U2yAlbNt5RjvHmaa/K5BM?=
 =?us-ascii?Q?S3GzYNJj/gdfIbhi2hxDoiMxVPJicZfQNqyGtp+BsdhEkaOVN2L+TTh2Iecz?=
 =?us-ascii?Q?0toVke7R5L+MajsizW26g8LSN2BmNECF3wZZ0/eJpriDVwz/qs6qsauqVYZu?=
 =?us-ascii?Q?YWA7cu4J0Dw6CVu0k4Tau1yNhq24o5oiNy4raumo1eKOvLZTrhVpD+YH86i5?=
 =?us-ascii?Q?1/EbKFaT1SVW/MRyLZKES8ZJpqVRLUHVmNgCHMzLimF1ekEEJWqvvb3kB3TF?=
 =?us-ascii?Q?KVsdqlj9NUtE9atlna4zGZtaTUNvFJU9qGl5ThBATyyCk7W7UiqLrthWL5az?=
 =?us-ascii?Q?zsbluyHZHzd9XY3lj2xmxBuSCKFv9ndbMTw9KHombdBjtirTYTlUv2YlDEE8?=
 =?us-ascii?Q?2IzusdVLjh2zQO7v2FoKzFJ5B2G22yEjEMH5WeZOd7BEu3+zOzA/aH+qH1o3?=
 =?us-ascii?Q?B1ZwFlR/gV8UcdJc4n/FbsHdRmPZJtDZ5nohVU8udBeYAdCXbZ0qUOfJKewZ?=
 =?us-ascii?Q?v4JQJPhIxbscH5g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3FgkqAa1FXBTq5kPX/3tlj8W5U6itT9Zg1/V40iGHmMT4NF1rpyASKE9kzYc?=
 =?us-ascii?Q?SeaZtEzUehzMiqIWIiDAmJnlBFSqR5Z7TlKAfhwgcwYH3qXSDx6bw3l2YWKQ?=
 =?us-ascii?Q?09tdiIQ6OWGn1pVWSI+lv5/OSERGIS1eWIrSq5kzD44Jk403Nzdgq3GF+JJN?=
 =?us-ascii?Q?5BjwI4sJF9JJYDtNjM96S+q4I34BMSlxVBHgQ9Z17cndbr5gTMAZXbtJLvfQ?=
 =?us-ascii?Q?wfglXzRBOcltNxD1ylKalGo3Hj19/eHfbVvBQDMt71fn/G1I5UWfTOQhhQJa?=
 =?us-ascii?Q?iH3RC9cTGGy6jd0y+3rUJNlOenYRw07n71heXZwIPrUfzHWNCfGih69e13NP?=
 =?us-ascii?Q?rWbTt1YGtm3UOnMRUoYIVXMR65ZxP9dta2FAHxaIcrkfwkCLttHQk/NGAqtH?=
 =?us-ascii?Q?Ksqb4UKfdhjmuACkb1xeZGU1a8/xGnEAcHLqOfWKa1jDub5/oUroDqs4wb0/?=
 =?us-ascii?Q?QYDbfjwkR/+e1YfENR2nHbdArzL2EjSGK/r/7DH04RcDGGvgEgb80ze8H9xZ?=
 =?us-ascii?Q?xsYEtf/EjclUny4d7pLY4aImBo1Ctz6rn3HSVYCMw+KzHWmD0QuT23kxiDQb?=
 =?us-ascii?Q?tgf5nMKYQo5vh0yMPPSZ75/ym4zlo4DdZykmXt14XAy/em0Qk4oFL2fAQx/P?=
 =?us-ascii?Q?wvU2pEvI9b5SFIyvLwMARIJ2UQOO460EjsDFK0v9dlZzg98d1gOa+qPAJXtE?=
 =?us-ascii?Q?JJ1VVjsiHZps1uXGcs96sRVZ8A60Tc+XWm2ETg1L1nPXfQ5lS3X2fVji5yyE?=
 =?us-ascii?Q?4S0nDMTvJNqJVLmHlag03MdT8x6BrgSY4QR5ut4tzj4xYWzZFHNT8mZUGIHN?=
 =?us-ascii?Q?t0cu/NNUQqURM6m3Vx95V0kV7I36NfxZ0rpmPJbTEQQjfcRnZJOPsymnsSK5?=
 =?us-ascii?Q?yxotQQXbWCJCP0FhzAcTksAjphm0GgiEnsmZ6t7B1pkiLwP8SnVtBIrpzeHb?=
 =?us-ascii?Q?Bg7Hm3FvvIuW1/99ycGsanOYjs2i0GgFltdA+CWScf/VYfHiDIBd++QvzaiB?=
 =?us-ascii?Q?KaCoP06gKm7/jiPXz1FkH4dnW0s0JDqS7F3lt11Ua0TYRbdO6l21/aTkXKD/?=
 =?us-ascii?Q?u58zufTW+XbBnT9SvS7d5IxTAa+yAKZ7hdwFwZuZ4grsxBSb6v9YUVu2Gft/?=
 =?us-ascii?Q?RzQACWtxoYg0tbXvpXUTekGwe4zmSchfxJcLo6QWnw0vS3LiwcMYVY+7Lp7s?=
 =?us-ascii?Q?h0tjX034KHHRA3NdfjN+bFPCcFKVlHwnP1XF/U2g1/kxJ1ybiweCCSKXsjNG?=
 =?us-ascii?Q?rSW5/UEkF/KZJOlxQMRz7TSIWY6VBN7wRLU21Ah+VqUE6W+lOINsgpMHp/Cx?=
 =?us-ascii?Q?o6MtyCwAbj0Hs0deAoUddMCnYUQXVjbKz1n33GNmA4v6oh1bXpugJ6ZVZH+R?=
 =?us-ascii?Q?gLb2YisbWGsna5hTesaJDAfSU9YVMMsvbzvhdBAqCXelaVJd2CCYItYIo3lv?=
 =?us-ascii?Q?C9gqbRokp2ENaJtNafuv0+W3NN5ZTlXnvbVEYQpNQ+TQsgjpERswDuBYirHu?=
 =?us-ascii?Q?HC2JuWbEwAYSc7xDpU3c7rPu5+DTGIXs5rIJIYL+AtO4El3rOE/QGLNWo6rK?=
 =?us-ascii?Q?0o1e/Xi6oAUg9degnNNKS0KxBTu91gbPAazSBQ4N?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee60cdea-0199-4728-ee20-08dd92e15714
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 12:17:48.2260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ocDy94+0ImhgOCEVtAWXMw555DXAfhKHQFTx9TBSXxJLH+iAg+hsSBsAGDwzjrFzRgNQKhr8jANVfCE0ZfbMgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7035
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 14 May 2025 20:41:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747225089; x=1778761089;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qGbNiXJUTJOcm8lptdJy6YCRqnzlGdXz+j2f/1u+9jg=;
 b=JyS5mvJakZMc+yIal36UrPm7ajq6OugoMci9ljNZGPtyAkis7mvhwElG
 ds6jWomas3Ixj9uw1CDWdKk9t3Qkp84vDqhoVf2KW+9G+oSHTX0iBiB8L
 3RKXrqeM1lXM+eeB/wASQ9OiOXlCT5HT44b+y+sGEKaCv7Rp4DWNP2v/w
 KBu+2vFLu195TqrS3gN51TUqP3lOFBuXOm0Rm2b7LwfZztekh96xP5AKR
 vkBuzuLAw3BuJN2h/Uo6CcrLgEHhYOwFJy19SU0vAYOU0pdAU75aP2RNq
 Th9DDGkXyuPXdpzKzF9IFtCM4Twm3m8DZw5rSIxcAscu2tFsMEJU4BaaX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JyS5mvJa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/5] Intel driver conversion
 to new hardware timestamping API
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

On 05/13/2025 12:11 PM, Vladimir Oltean wrote:

>Since the introduction of the new ndo_hwtstamp_get() and
>ndo_hwtstamp_set() operations in v6.6, only e1000e and iavf have
>been converted.
>
>There is a push to get rid of the old code path for configuring hardware
>timestamping, so the reset of the drivers are converted in this patch
>set.
>

Thanks for introducing these changes!
Reviewed-by: Milena Olech <milena.olech@intel.com>

+ I'm not a part of val team, but I've made some engineering basic
tests on ICE and it seems to work.

>Vladimir Oltean (5):
>  ice: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>  igc: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>  igb: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>  ixgbe: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>  i40e: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>
> drivers/net/ethernet/intel/i40e/i40e.h        |  9 ++--
> drivers/net/ethernet/intel/i40e/i40e_main.c   | 24 +---------
> drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 43 +++++++++---------
> drivers/net/ethernet/intel/ice/ice_main.c     | 24 +---------
> drivers/net/ethernet/intel/ice/ice_ptp.c      | 45 ++++++++++---------
> drivers/net/ethernet/intel/ice/ice_ptp.h      | 17 ++++---
> drivers/net/ethernet/intel/igb/igb.h          |  9 ++--
> drivers/net/ethernet/intel/igb/igb_main.c     |  6 +--
> drivers/net/ethernet/intel/igb/igb_ptp.c      | 37 +++++++--------
> drivers/net/ethernet/intel/igc/igc.h          |  9 ++--
> drivers/net/ethernet/intel/igc/igc_main.c     | 21 +--------
> drivers/net/ethernet/intel/igc/igc_ptp.c      | 36 +++++++--------
> drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--
> drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  | 42 ++++++++---------
> 15 files changed, 147 insertions(+), 190 deletions(-)
>
>--=20
>2.43.0
