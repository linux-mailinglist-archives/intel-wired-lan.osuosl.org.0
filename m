Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKW8CZJBGWp8uAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 09:34:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 339585FE943
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 09:34:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2DF461155;
	Fri, 29 May 2026 07:34:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FPODRnpCTqX3; Fri, 29 May 2026 07:34:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AD2B6115A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780040074;
	bh=SR5nhlRZZJOwvVF34DZ2wx0n/5vEqnT+73u+EDyb6dk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xpa/tycQKHAsWbPtQoXiuhi5KoKdBImfcFfhgNysow251zYgY+PbEiErPi0npGTvM
	 dlikjmF3RvdMVK+fHXBWAnIjn09c1kG1ApEwgcWwGZMmpRDlADyySy01OTClRb1UEY
	 6tMwen8BY0xFpVf1SDNmwMyg6pPEC06QqvYvfnSfWGwTUEb9ZNy3kJQAqS6ugEq/it
	 IyQ4VL84H9agQzS/gL8Tv35qicff6PM5skIlGJQms5d+b3xS03lmtZaWjVeDeg6FNj
	 s8wLJ4SszpfGmYjiLkI7sueH9tnu7/wiPQCNWWYaAoZa0tpiRytfUS3HO75zXu7J/H
	 U0hZJuu4AiYSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AD2B6115A;
	Fri, 29 May 2026 07:34:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F671D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 07:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E455406D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 07:34:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xPBZXrT3yv7F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 07:34:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 400734034F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 400734034F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 400734034F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 07:34:31 +0000 (UTC)
X-CSE-ConnectionGUID: HzFs42F5TUOQlXXDPjEjxg==
X-CSE-MsgGUID: PfAdRdX+SF+fia+/2BZtuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="84748084"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84748084"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 00:34:31 -0700
X-CSE-ConnectionGUID: ZgE2yc0CR3KURXoX2MVcjw==
X-CSE-MsgGUID: qjyD1HsZRlmxvXDh1/+WxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="244599898"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 00:34:31 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 00:34:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 00:34:30 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 00:34:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h23JXRJFBFBqunhIAxD3gh6QQIAT0uNTL8lfeYMcFPeTT5tdsvTt0YoBuU6ZtO7xbfUHB0gMCBFn1yLbXASXi70qYTmIJXrNH/bSRgpipxH6gxY3kjA281sYobwdHAdAmV84J2xzFNywzrfH+r0jZdTOGqraNkw81GeOBpxtZ4kFCLkuy22YC81zqr0yzLWvkVP3gxSUCjzCg/R4Pyk8UQsMVKVLdxXQmdAIzfc1fpa7iCN5LAnd2HcHzsrkcH8xz2ohlLVpNUuWCYi1df49QHevasZPX175tqlzYQYLaTMFsAmqgpgWwVO+voGU4pN2PW1nJBQt2L1jbr/9DJ/wGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SR5nhlRZZJOwvVF34DZ2wx0n/5vEqnT+73u+EDyb6dk=;
 b=OCJHwXkLUSYMrD7nNTZd7LSSVwz5Mkrr9whGNW00OK+FyRw/7hDSoEqaCbYGuNDG+k9c39SSk+8ZeD584GGVy4Nkm+xFRnkghv9V1xtC/TZgx/chAweF7oufI53o9vfynboug0IdJFirPx4cSvlbiINe57TtDhkR0uMjnxx0Epq7gmfRzjArX2KX0KuML7jfeG7Oc34v+fE5FtI4rWn2DuZSqBQH2KEFA1cQcCXKSQdkg/ntbOGUP0hhLLrX14v+tilkcdGaTObJSny+s6Z6RT+uZ1oEfUUSAeruDmFwc6Cce2FJpKYaWswk8uY4g8ib5D1nfY9UJ3KJkF3mPqoRsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::831) by SA2PR11MB4779.namprd11.prod.outlook.com
 (2603:10b6:806:11a::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 07:34:28 +0000
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::3dc7:50e6:ac39:32bd]) by SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::3dc7:50e6:ac39:32bd%7]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 07:34:27 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/4] iavf: pass the return
 value of skb_checksum_help()
Thread-Index: AQHc4fIqw81F8oymm0G71u48IksRXrYktzMg
Date: Fri, 29 May 2026 07:34:27 +0000
Message-ID: <SJ5PPF6806D69E448DD40305F9718D7B5AE8F162@SJ5PPF6806D69E4.namprd11.prod.outlook.com>
References: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
 <20260512084729.1338557-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260512084729.1338557-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF6806D69E4:EE_|SA2PR11MB4779:EE_
x-ms-office365-filtering-correlation-id: f9ae71c8-dad9-4aa5-1b96-08debd54b713
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: /P2GijSTY0ep/ULqYKnGajeCJk+jOSZPeZvk0yZ4l6fAgBEvpDDYkm0ulic6iu88IlS57gb9Uk4hJbmh8XI7XNoyoBzl7TAmsZJcxT3VDtk155BwPjL9rq2muYBdtYB/bMsVio1rC9AdXZi/6OhgZqf+YCyjIhH2q/1KCyyvkebuStx9ZsjSamadvuDu7x6kEbeQXhkGJUboWO1Qol2vPVTYpIqUCOgMxGc2TBP8C6LjAlvWynL5PeiEiD85v507tVQ0cb2YsFKspZ7jhAI8xgA2J3FrDgOC6Pzi6L/VBcN8gMgUQSSiup+QqQY6LNjwrc4Y0MEAJcMz83ZzllyzGXtjQMl48TsL7/ZUzE9OSz20E8vv50XSZxDteBsuPW1NiVtpeIbEURwhBEMfk9cVKxJAqO/y47ueWG/Zxhf/8uTagVlUeOudcnycFhAWEr0fEL6m0Q0PGV6113tEnncbfLmSqhnmARfv6dLOBrCu/8t7dVrdvz3EOS7RjVoDRnaNnQbWbCKDya3Wka3iXS7HP5AxdkE6+sCZg6yTwacwUgmn7FNQUQGjX9BoL1wqa+hSGKovo4+3FpvU5XHudPc1cSwq1ntyARRxlaSC7fZAGJ/brZj0kdyhvjSk3omO1T8gLUomNH+ksj47DXv0NGqOp93mSaMHyBe0vaiHc1xVM8KcySosVGFsGJT6v/lpzKaj6l0Az5L3a2nmeq6xDBFSOIkOAZtX9Bqz08VYczjZ7sKQKjHORcqyjkMxcGiuaZCA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF6806D69E4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5dg/VI94hj6vHHwyh3CYCt9wBo4vwA98FoIgLjZa+MKPxF6MgC+8rdrl/v1o?=
 =?us-ascii?Q?0Nsh0OVTb6pDUiSzpWaVwnLukjXGO4w0ykRmxBXFWm24f/pJ2PFg8nrtNiuu?=
 =?us-ascii?Q?Uu1ilbDfuEmTptdqTu1jVNXIhvGKsAhfG2DtbrsYx6q1rujEPE3yylSxsA4W?=
 =?us-ascii?Q?RzQOxXV+Z/ZETPWyWr02sPIvmZ38/tbA7/NELKEJiQUHJpNEgQFpy0tf9l4U?=
 =?us-ascii?Q?eMyxFkpANX0W3QVNt2EtB0lx36DJM3R1sh3w5alqUuXxcHyXbCQHqaIK3nQm?=
 =?us-ascii?Q?UajN59iFU8EUGsNPqi3pezX7VXEoh7jB8VMbbuFusiYABJ9gd+Bv0rnBmwSU?=
 =?us-ascii?Q?vt4+aINukDDq02LBKB+hE5zzTAI5D6jfPSxXIrjk5xl+o/vNsdoxa+xoLMx2?=
 =?us-ascii?Q?8P+eJef1AJZwlh8GGDw5n9W0SnqkqJejb8PG4RjFiBxLW2uBvDqb5fA3SnhK?=
 =?us-ascii?Q?guOpgtcZcW1ia8XvmMiOm0Duwwn9LHydF6VpacgLmlqg9G6Z/CrATGKpQ4cA?=
 =?us-ascii?Q?BhdiuK6H4reusWV61NCsaVqPyO6PVv8px45MbptZACiefGPVKCsFSkCL1CI7?=
 =?us-ascii?Q?QlkoCUyPil+tdCV85t593EmJxH/rcie7TvujWGq08/5MR72XAM4g9VtURQOO?=
 =?us-ascii?Q?GMa2F8AP9NQ+N/W6y0naXzz1ZsHMfWg4BYtnbxi46vQk08OcjY0UFrOcKWxi?=
 =?us-ascii?Q?ihv0OZMARqLBWLEFfc6aSoP/efYHwgVebWknpEGFIQqMkJ8stcJt5nc274U6?=
 =?us-ascii?Q?i26kE/VrMkEyJ//56x0NHKgCq4NwydOryIIJYsx+4Bgmg+nynb257oEA2yNT?=
 =?us-ascii?Q?XlWreo1OP7wcmTK4aCTMusePNCvR6BUFVCh9pFlqdWDYde9ZsCL/fwb48MPi?=
 =?us-ascii?Q?PdR6h+U+bUXENHsm1zIL6P+CovbdL0iGwW692V2kk/T9iqaD+3xIjZG0+Uha?=
 =?us-ascii?Q?7KnB+oFQ5xbHBkPGPAP2dtg2pRdd/nGtruXsqT+aIOJ4mesucYTcc/KOzbvu?=
 =?us-ascii?Q?DI5+2X0MhvxS3qzMuqNK0S2M6mqRRxZQ51gdTziQGRBAetdZtWI8wLyWywC7?=
 =?us-ascii?Q?W/U/2Y8ZDe79uMglB9Gw66rMVpqEvJzGT+Dw+1I6yT8HaSBecIiBwZjln3Xw?=
 =?us-ascii?Q?cT3j7Vvcn9Fa1pwZh16owDX/vX3xAw7QsGfLhZCKZ0LBLkXnjGFaap4hIJ9J?=
 =?us-ascii?Q?lSIQchebs1Oxm+en1aGH1DmMWo0+8GZPt3rVl2lKHwBJ5x2CNxdowIzL+kTa?=
 =?us-ascii?Q?7GoClr+eeM4lparx5RKbd9wC1hghxQbGzVZYuItVjBXNDoeg5Uvc9FAUzs7B?=
 =?us-ascii?Q?DA5IUhw9hQgZ9nd652KEM5c+djI5kX9NStA1D//Uw7239NeY9ARKMl0ljwor?=
 =?us-ascii?Q?A9bcwoLED1SWA96P0H/hiJSo4fKHvSyNWU1mrg8DE7LoQsxrVjTH5ZFM3zjU?=
 =?us-ascii?Q?X4G2+v08pK65Y16omHgiY7eKW/NtK0pxpLm4+/O5TA10b452JiMMwViO+HuV?=
 =?us-ascii?Q?dI4/HmnGkwMGZFWcYX89OAqrPu55bC57DWBqg6ko4oIkjItBpm0b+gn4JOSj?=
 =?us-ascii?Q?qEQYAtraKleSyfaQA74tDniq0KJYguoVjxLEoHdswVunvSjr2vrz8a6dENsP?=
 =?us-ascii?Q?ihf7Ml8F5Ufo1NKUypDkIiiFDlh6Ud2uc1Dx3UC0N+KBHoK8b5iZLXSFzU8l?=
 =?us-ascii?Q?kFVaLI45x1o4q+r6FAkhbUi/eGxcmrDbOKfdPdbaBAwpgo9vHcUAyLTF5hFB?=
 =?us-ascii?Q?kAuPXCjBXQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XwzyO2Tp+QnEdVon6e8jcx3sv8u7gSm6TmOHaS9MM64VX2YNry4HRprrgfeKsmvJ4XAm0g5o8fNcdy5R+TABmVuxXZExPCe5MVfoDzUkVvnZ8FY/BL1LqwDMyYiBeitcgZixHVzAgapO5EVxRHtsaOApR7b37ywOYF7DTAajbC20EZ2ouv037ZipFvTik+tVDossI9J7c2eBmgMTelMhC7OgC1jMgwordZ9Dk3w53Z+IAHxaEBseNEWK93eoDnNgaZNfnxc/fm5wr7QCzp322PMOlUO1CZtMk2KMJnNpjgDuVe87tMAaXZAbNrVsxZ5Hm+WRDeorHgh78ERxOmqfaA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF6806D69E4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9ae71c8-dad9-4aa5-1b96-08debd54b713
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 07:34:27.9192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BnEAZfXhvnRXEd8BcWGZf0gdYgxFSpNeo50FuhW32g1MlV3kJJMt/j8ToRyrV2d4YJ8QtUKQk/Sccrxxte0i4chtMtt3OiEOqIH1a1wYhh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4779
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780040071; x=1811576071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pSGKsn3qpuH1qP8U3t6bgm37gNJwaPRI4qUTh3ZMbfA=;
 b=j/YdSRACfQtc1JL1cPF0w9t+yqN2BaRGOhBl8jO3YxKz3rrluQ9ueJve
 LHy5t6t53ud46knoV2EkY1PQcSPNaL7AyWlnIlS3xH9f2xtVD9RAXr0NS
 51Uvk81bT0K9V+CuXdQZkpSW7ZrmCicKKXjRlYCM5zmy6BgyqSlRrmXoC
 6ZSWuQ9LwuRFGc4u8DDO+0/EZLbQ7UW7d2uklliPRRtgUWyn1J4+87Eig
 asTC71UxJgxl+w2SKBmWMmBDa8g8yaN4WsxKoOQ9xZAdrkUn4ZeM9I2nG
 oREZIQdxQ/hIQrLcUlPluv1bfMaO6GLYuyWnXEY3aR7PxJ/EqLAYZGb7H
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j/YdSRAC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] iavf: pass the return
 value of skb_checksum_help()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,SJ5PPF6806D69E4.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 339585FE943
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Tuesday, May 12, 2026 10:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/4] iavf: pass the return =
value of
> skb_checksum_help()
>=20
> skb_checksum_help() can fail. Pass its return value back to the caller.
>=20
> Commonize this software path in goto.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index ab46a49bb5e0..c5d4486c0396 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -1909,11 +1909,7 @@ static int iavf_tx_enable_csum(struct sk_buff *skb=
,

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

