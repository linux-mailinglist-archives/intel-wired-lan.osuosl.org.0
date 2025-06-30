Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3B3AEE4F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 18:50:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8933883C5E;
	Mon, 30 Jun 2025 16:50:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KBTSJdUwJCkb; Mon, 30 Jun 2025 16:50:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D933D83C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751302233;
	bh=9oAPUA3SPDQoit2L5dWJmbywkjmkRXua60MioQJTT7g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kBbuj+EZ0natiYKvKJqsSyTRqUEydM0hMMc25GNZnOJ8pRv2H00+apX8UYIeZ2SHf
	 225YhVSOCD0Fbk1DdLDWnCGGgNbIxu/uCVkYoDoqvuKfE1zdRLkNigJMMI767F/6wW
	 DsyQfFBWC38/tU07pOVlcHn834QWNNDNLyZ0dui2MDjfg1RPOIdvRz978f5whJ2VMK
	 DuhLE5n0HFiabQGK8+sJIttJGOCVwzTq/46GuyHc0kTi3vYGjl84H6jVC1p9qP6fkp
	 3cjzR5gDzxWwVqyRFMo5OMTEtUA5oNntL3KR7OxTD8Jrq8kUlELIQJ+P+is51OM/F2
	 jXAyLY6sr8dfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D933D83C67;
	Mon, 30 Jun 2025 16:50:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D3D08DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA276400AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xg1g2v-mHLta for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 16:50:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D94F240098
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D94F240098
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D94F240098
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:50:31 +0000 (UTC)
X-CSE-ConnectionGUID: jas39p2SQpSfKsAY09DgCw==
X-CSE-MsgGUID: /zxEQL1rS1e5Ma1rK9uHKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="53683456"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="53683456"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:50:31 -0700
X-CSE-ConnectionGUID: dpJVfGamRUGUIQXS2imBGQ==
X-CSE-MsgGUID: tbOL7gR+RsOUXC0em5YRFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="152988917"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:50:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 09:50:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 09:50:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.85) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 09:50:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQCCZCuz6s+8Wd8zFpCOutXFOuvT8ZPcgzPvdAp02peSexMo0kz4EbLS3kIQlBHS0QJ9L3/qz1rKx1HEwQyDFJ0PU10T/HHdYcL0yR1po8BffUdyeRrHSLxj3ez4JG3VOLJtpCkledQ9DH+F+scNHbF6W17Bh/o+un2qPWISOaNRRAIubd30pwnzhATCtODJMDFz0onlUwNGVv9qu2BLBSzZo1v7+gfI22FdlCcSsB1MOw6cw+23q5kNtNwZNlNZxL9M7o3S5pUUzppzBTMblOaSm04KniEbBmtnCRCo3VI7frn5+X0hPEWRwIXQQTS4b4yLBCNr6YraQLWaUr3yqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9oAPUA3SPDQoit2L5dWJmbywkjmkRXua60MioQJTT7g=;
 b=kW+pVqU6w57GybL80UUGXmgk7oHNTJu0dA3uOAddjm3pl9bh/mjrFcy7YnTGT+38/mGxLo4tNca9rOKaCyQ7x8EfzXSv+XOqlk++GeC9KlTboeU7C96UJ75kAgtfhv/OS1rM90WcgVTPCeW1cj3uUI0UB/5XR7gHIPKlMkCuTR16mWuYH6C+R7kq9J0sZxcLjcNBT1nv/B+5EO7Ij8hr3E7Pu9rQnpIkJYbqFDOcP/yjXbz/eGcVBL07qVU/wBmZn8x0R9TW3jbR/I6ZUu6e7FISg9K1Ffk+aJy+44qbBxHWsEmBl+LszJxoBcC6f8ZwizXgjsnHhbHQZrAy1HO0SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA3PR11MB7535.namprd11.prod.outlook.com (2603:10b6:806:307::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.29; Mon, 30 Jun
 2025 16:50:10 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8880.027; Mon, 30 Jun 2025
 16:50:10 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] idpf: return 0 size for RSS
 key if not supported
Thread-Index: AQHbyvbiSjt6O205WE2Lw6HnNT6RqrQcJ+9g
Date: Mon, 30 Jun 2025 16:50:10 +0000
Message-ID: <SJ1PR11MB6297FBC0966B081496B10BEE9B46A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250522085206.1119209-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250522085206.1119209-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA3PR11MB7535:EE_
x-ms-office365-filtering-correlation-id: cf34fa8c-1454-4c18-d6ee-08ddb7f62d0c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KxlbGVtpRzCuDGVIPVAhlxso4n7zM7VMtFxSA6BCmuEMokeof48psJsZaYzR?=
 =?us-ascii?Q?WlNM7hAw30ilhh7CZtHqd+L5CoFugnTsdp+RtFq9qasycSPETSNirui+vX+z?=
 =?us-ascii?Q?1CHMgQGArH1ZDlb5vwSaRu6G+QP03pGQ+5NV/k4ZpfisDui4CAIvCKVq/bJc?=
 =?us-ascii?Q?LF1zPNEQlYAaCQi6U6jf/d1pKMv2d9+vR31RxJYDMjTRNfdZZZLCkChJYs6I?=
 =?us-ascii?Q?FGg14l8Rd0FdbqWvWWDHaehBPAsP6nXsiuYj8EkwfbIwTYQ5dZeHtPDvSnlm?=
 =?us-ascii?Q?wggOHiBv8eal0j8TzugBsSMMAxReFliD38nDP1XFOYYTDpAR1+iJdCaGgqc4?=
 =?us-ascii?Q?zUxGaM+EREq3s4VTEFz7CeWNWz6OvlZjbCrsteqYDMcfCBCb/hPTPsCG7aeo?=
 =?us-ascii?Q?OcS5WAVJubpGduVwnt/AOnhE6vi+18DeY1d+nYlml4q1N5+mSKUZBfZegYZx?=
 =?us-ascii?Q?85fKlDzoHBZkP9jg3PydaRKfESVr0YnRWHsvSbp6+zKibtwgChNvClwT88Nn?=
 =?us-ascii?Q?zxUfY2y0emNzPtxd/YlnbjvrQMUwJDogN9SUGIxNCVCJ8uP1OwHZp5kkdjPm?=
 =?us-ascii?Q?2a8AlUkbEoMZrbUFMqa5UaLYNaZ2fJI8Ujyojsyj9M03t1AvFGMTVYB2ZmKi?=
 =?us-ascii?Q?fJ/X5bu0eWLp9+4qyMsUeV1oO1/61MTlnFb2mBrp/wnWpPfQ90rP3KxVdxNW?=
 =?us-ascii?Q?WhxbLhw9Eh1yirovQ4bJERhJBnTgBH5buL19AayVZ0KbR8AB2Jar6iIpMq4V?=
 =?us-ascii?Q?pMTCqHh49EJ4tqxXk1YSKJiUIpOL3XV6V0UsWkHqBd77L85Jpm49utPIZdYQ?=
 =?us-ascii?Q?hyUl1jbOwGHRYhQ3liiE9l3+wai2USchX64PkIKcm2opbsFPe/ICv6KHO5P5?=
 =?us-ascii?Q?alCa8f+pgbN7zP6QZ/YwpWkm5NKSG2LaNLQjKIGx5FhmnVHOa/o+jMwghjK0?=
 =?us-ascii?Q?W2j8Y72YsFsTssUV1Nuw29fnnwsYmwheZl89/QjlshxwSPmMOkdIdtLieQ8Y?=
 =?us-ascii?Q?jTtjoDjYAUaX/MozqgNzFBoxHRr+AF3Y17oksJpNz59UfxKtvWlaWzUozwgc?=
 =?us-ascii?Q?GVEV2n/h4Y8zM82LaARCXa7E0wW1K69D52qnv+fHrSLysY+9nn74sKbktqvx?=
 =?us-ascii?Q?M7Gl9zD7D41QXPPH12eUsVb0ABHVIxoHgxdABg38zeKgZw8e4cuAm6mp1i1F?=
 =?us-ascii?Q?XSjlF09MmCpuzMjstWxgCRLT083h9zFQ4wT3PrOWl8opdsDGxFe3PK4OzV/n?=
 =?us-ascii?Q?WXYgJiSaKMjNYwlW9mIOo+vn/0bzdHz3qkedxVvaUa6tXyH8jgH3NOzOrC7U?=
 =?us-ascii?Q?C0quO8VFfvy1jm3hEOHDjkwGBazBM93sQ+tvSewYFLOqQ++GmgiSvdXvhDV5?=
 =?us-ascii?Q?6C6Xxx0W8s0PTOMJmuBz/eB99w9iEAmGUKXCYcEGh4zwCyUALA/BU9/mucwF?=
 =?us-ascii?Q?+c5WmGnRuAI5ThLkcD93ZIMMi+YFWw8fQl2GBqQzCRFazkW6p/HUAQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6dEQ8FkLimLjw6i2E2W+qIqGmdC+LOwu/kkSf/P6uq4LpLuvL6A1kWO4h9Gp?=
 =?us-ascii?Q?cGSWb28lfY4+7X2mP7sJNWtkKUF14r9PspmpG9j5urUEQVubV2HNPVaylsap?=
 =?us-ascii?Q?5Dcml//la22GwuICba/G/8vbH415j8dXfyvR5NsCRefJXAqRsH322C4OjCMi?=
 =?us-ascii?Q?P9t6g6T36DBVhaV3ciiQYh+EbLxOLhH0gF/yydjIoGYOWK741s+A6lor7FcL?=
 =?us-ascii?Q?bbeBokMTCYLJ/AFUqwLOLCnofzXDkuhYJreLWS7bCk1emIDMXEeESiORv9sQ?=
 =?us-ascii?Q?GSlG1AkzToSH//1k+gz11rr/uDXdwJ9MWV2R8InirQQIUNul1FBCRdsfHqb3?=
 =?us-ascii?Q?syDwTRJA9oP0CzTvjQhNjT2leCMEUa2feo9oMYqBEx7DnfdqQH2AihnxCFwl?=
 =?us-ascii?Q?azsXYd6SyT0dvZ7VLjFagKRQE/BItfpJLu6pcL1KKJywAnFY44cEr2zjVW4E?=
 =?us-ascii?Q?8IUNAezFRhWXPVjTs5AOrB7qlHgSiweac1kthUqgGfM+fM8y7SqE1rLb925Q?=
 =?us-ascii?Q?EegK8IFfPxnXDNJeNXvVHCWxLPorPJPFVhwTay2eY+fwrCyVTkUuycmypi3E?=
 =?us-ascii?Q?ozfU3Age6YD143ExwqGShu+ht9SQlc0WbOQnXjsooVskK3T/bsqPOz51J8I4?=
 =?us-ascii?Q?KNMis4K4mIuBqkozXJjosA7Gs/TL7oyWIOjfiE5ar5Mqsp0iB1nP3ilqcFWI?=
 =?us-ascii?Q?APOxk29MrRXeRlI47nkvBQZpHP3TWdGsdaWpvp8kboH/h2lZVbFS9pnY1ouT?=
 =?us-ascii?Q?FMUnW+5ZowLnrzvBIJhANkbPCpsMhG/F7U3RtCyWR7LUivhgFRSpBUmaosae?=
 =?us-ascii?Q?jpiPvIK/Mi+nqA/VApG4sUMa7lA24K06Auq/ckgb9DNZ8ykM+isIuAKrysZA?=
 =?us-ascii?Q?tFh11v1YNU+btDDnExydM6nfD+GonsOmKT/261K53Mdwm2aCIb2ApeAz8p0S?=
 =?us-ascii?Q?V6lr8SAlPie8j9ftvybzkZyO+y7Rhkgu1xCwCqT2DBcgUyZHQp3DG8OX/F/M?=
 =?us-ascii?Q?q97Pk9adAA62Ngr4t/mVoolcI4J4RqKfHCvBUYXXpvq0If3bQfpvKUlyLw6d?=
 =?us-ascii?Q?67jvuBtJoxVlwGH+su8OhmQU3iunPWA0atM7sK2z44TPYQLe2kAOy7odCCiR?=
 =?us-ascii?Q?P8aIiu5Ti9hfh4rArjsbyFnhHWPDL/A4eEcYAC1ww0DSsuVT0tKaogTbDB8v?=
 =?us-ascii?Q?IRSAB33eryHQe4LQXZY976a1rF3aYhhmVb+uIdvGYdKy4yZWDJ8JhIVGH/20?=
 =?us-ascii?Q?xx2hgHcxSl+uyOzscQ+kFpsk27niHV6ZOeBTiyONsahbxDrlTtKU3w5R0BWL?=
 =?us-ascii?Q?8zLd4Al5ZIpRDCjc8gDLPQh/OsT4nbhUK7EGwnj7CGKe2qmgWRszkLHEJcfo?=
 =?us-ascii?Q?CO3D1sL6Ydej0Xn+OkU4tWmrwOHDItds7l+Nv6pvtbOicdRsNpogdAXKaHK5?=
 =?us-ascii?Q?NHi4OUHJm/lsdVwYfPHeAc5ht/6tfBn38IQyHjdVvE5m6SovNA+TADgeGpvg?=
 =?us-ascii?Q?1JK5W2vV7dluSn7tPd7ugdP4FCwyTej3o28iO5S+kFSDhC0pRhGiWoWNW9n+?=
 =?us-ascii?Q?7EEIkx+8wBJxdg6aZyyMXwg+GaEQONWURZYXsOwa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf34fa8c-1454-4c18-d6ee-08ddb7f62d0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2025 16:50:10.1715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7gLegtkf/qu4GtwLK5naOWNA6MxnNA/wFs1XEp/aqH/znronuwYvMIDmn6datoXIEGPvC9TJAeCMXcUZS1oG4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7535
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751302232; x=1782838232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IkcoNdnp39jcfa+b83TJ9S6Y9yIASMv8mDzl5A0KDOw=;
 b=a3R5BdE1ZnSiMZSoY9TVI1KeRg6BqddxJ1bLskkV3J58JNbNcWiT0pdw
 awDYuZ+Kl0bwyXTEgTjuZj/NIHw11IGV6BZAU5j2rXzx5CB/zPBPVgjcq
 IVjCecV4WTQgX0QOlx8QheIlZ7Ftj+CgK/XMhO7Kq/U4AhHipH3KQRFKY
 e/gxvXmAfnttLPVvs8BHV6lgJ2L3pZDLUgijgPys+3BvXv1f7G2tXMLa+
 uE5YtleI4hyKTOp0gzIvjLoMVdQXTYw0vLgWWA9hd6GlFLNZSCQX4sO8i
 GTYq4XkfWlN1vVrx6lkD8DEaOmtUaR8J3aptmKqT1wEsUmNIvHx7FqwF6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a3R5BdE1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: return 0 size for
 RSS key if not supported
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Thursday, May 22, 2025 1:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaki, Ahmed <ahmed.zaki@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] idpf: return 0 size for RSS=
 key if
> not supported
>=20
> Returning -EOPNOTSUPP from function returning u32 is leading to cast and
> invalid size value as a result.
>=20
> -EOPNOTSUPP as a size probably will lead to allocation fail.
>=20
> Command: ethtool -x eth0
> It is visible on all devices that don't have RSS caps set.
>=20
> [  136.615917] Call Trace:
> [  136.615921]  <TASK>
> [  136.615927]  ? __warn+0x89/0x130
> [  136.615942]  ? __alloc_frozen_pages_noprof+0x322/0x330
> [  136.615953]  ? report_bug+0x164/0x190 [  136.615968]  ?
> handle_bug+0x58/0x90 [  136.615979]  ? exc_invalid_op+0x17/0x70 [
> 136.615987]  ? asm_exc_invalid_op+0x1a/0x20 [  136.616001]  ?
> rss_prepare_get.constprop.0+0xb9/0x170
> [  136.616016]  ? __alloc_frozen_pages_noprof+0x322/0x330
> [  136.616028]  __alloc_pages_noprof+0xe/0x20 [  136.616038]
> ___kmalloc_large_node+0x80/0x110 [  136.616072]
> __kmalloc_large_node_noprof+0x1d/0xa0
> [  136.616081]  __kmalloc_noprof+0x32c/0x4c0 [  136.616098]  ?
> rss_prepare_get.constprop.0+0xb9/0x170
> [  136.616105]  rss_prepare_get.constprop.0+0xb9/0x170
> [  136.616114]  ethnl_default_doit+0x107/0x3d0 [  136.616131]
> genl_family_rcv_msg_doit+0x100/0x160
> [  136.616147]  genl_rcv_msg+0x1b8/0x2c0 [  136.616156]  ?
> __pfx_ethnl_default_doit+0x10/0x10
> [  136.616168]  ? __pfx_genl_rcv_msg+0x10/0x10 [  136.616176]
> netlink_rcv_skb+0x58/0x110 [  136.616186]  genl_rcv+0x28/0x40 [
> 136.616195]  netlink_unicast+0x19b/0x290 [  136.616206]
> netlink_sendmsg+0x222/0x490 [  136.616215]  __sys_sendto+0x1fd/0x210 [
> 136.616233]  __x64_sys_sendto+0x24/0x30 [  136.616242]
> do_syscall_64+0x82/0x160 [  136.616252]  ? __sys_recvmsg+0x83/0xe0 [
> 136.616265]  ? syscall_exit_to_user_mode+0x10/0x210
> [  136.616275]  ? do_syscall_64+0x8e/0x160 [  136.616282]  ?
> __count_memcg_events+0xa1/0x130 [  136.616295]  ?
> count_memcg_events.constprop.0+0x1a/0x30
> [  136.616306]  ? handle_mm_fault+0xae/0x2d0 [  136.616319]  ?
> do_user_addr_fault+0x379/0x670 [  136.616328]  ?
> clear_bhb_loop+0x45/0xa0 [  136.616340]  ? clear_bhb_loop+0x45/0xa0 [
> 136.616349]  ? clear_bhb_loop+0x45/0xa0 [  136.616359]
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [  136.616369] RIP: 0033:0x7fd30ba7b047
> [  136.616376] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b8 0f 1=
f 00 f3
> 0f 1e fa 80 3d bd d5 0c 00 00 41 89 ca 74 10 b8 2c 00 00 00 0f 05 <48> 3d=
 00
> f0 ff ff 77 71 c3 55 48 83 ec 30 44 89 4c 24 2c 4c 89 44 [  136.616381] R=
SP:
> 002b:00007ffde1796d68 EFLAGS: 00000202 ORIG_RAX:
> 000000000000002c [  136.616388] RAX: ffffffffffffffda RBX:
> 000055d7bd89f2a0 RCX: 00007fd30ba7b047 [  136.616392] RDX:
> 0000000000000028 RSI: 000055d7bd89f3b0 RDI: 0000000000000003 [
> 136.616396] RBP: 00007ffde1796e10 R08: 00007fd30bb4e200 R09:
> 000000000000000c [  136.616399] R10: 0000000000000000 R11:
> 0000000000000202 R12: 000055d7bd89f340 [  136.616403] R13:
> 000055d7bd89f3b0 R14: 000055d78943f200 R15: 0000000000000000
>=20
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> 2.42.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>

