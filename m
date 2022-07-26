Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F949580BF2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 08:52:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 180DF40554;
	Tue, 26 Jul 2022 06:52:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 180DF40554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658818376;
	bh=P5EoeZQBjnlfV08VvdQuqfcTkZ3tgTvycN/Wbm6+WSE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SuZSnUx/1bb+uYynNw1yCFRb7vrc6VANBAkZYXOjjlI6m1aie97RriEM4E42tdCO+
	 1YGBwiulJ09E/TE0Kauuq75koucwBbpoor3P4jaFNB1AYBgJoN4nN74FeZa6itkh6f
	 1X7xrdI7v6EEbAQGlXa+tRqwft0Q3/yGWcvR316NnSyJW0fSdGH1boPZpUB7FGGkjQ
	 nr1CQVdt/GUIGzwmtEcbLSKw/Ksmw+rtC/JWQbhATXUMofa13I3NzxWaH9ltm0m4S0
	 h2n0fBLqmwj2kk5M2Pn7vKc5iYIeUJNvUg13b+FFIc7WPdAWVfJPm+7p6LPHdVh+uS
	 GVRIiodKlMVCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nRNpr6jVr0cU; Tue, 26 Jul 2022 06:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD3E14087B;
	Tue, 26 Jul 2022 06:52:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD3E14087B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1AF651BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 06:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F270360D79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 06:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F270360D79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1RPj1JHFc4Wq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 06:52:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3B8B60BB0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3B8B60BB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 06:52:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="267646252"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="267646252"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 23:52:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="726432721"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 25 Jul 2022 23:52:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 23:52:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 25 Jul 2022 23:52:45 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 25 Jul 2022 23:52:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oaizlo4jZbtyxTn4aeqib7O8i9Js8c5qKBwjMBv44PFXJ9Nu2reU2OyN2biYG44bTbRqbOBqkji0ElVy6meoTjxuXzkbSqe2DZAYdAq5zIzkvUNqtgV1BHOB0GrM7TzYibIuv3bBZmDwwQRLOlY2kRSjfNs1z3+3elpSmWbAoEP8fY+VLuXbN5jM2bPoRbugX5Etacanu5f2Ee70ircbqezuC7WyXB0JrF0zCgGjckxSFEie2bMy1i8LPVLgOtLixDiNmslwWJB3IflnO+yyWo+N0YJEe4j5XgywcAjhg2DFd1VKz1J30986StPPitL4VbGDs8AJL0Z2MtMR8g7Pug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0g7bzjwBxVzzJADwR/ctA855Wy2Y9/kahWRNMey0N4=;
 b=Sn3T47cGR0XS5OVNnNB0CXvGgzUL6eA+wgq8g3jSs3j0AKB2Sf8AJUkqblhTxyWQrNlkhjwYNTF+bpnXU3rOyBkD8RKAjFpj77iVqlNZ3RVKsr+MOLl4YuL+6tLU/H+5oaLo0gAheLRYhDHCK4eRdl4XGms4IUPdul+YZaV0E4nmPJJl2zESy1tGgVEhhr5qfaI+4zQc3yIuHVQeTznttStTzrJFWqoEVtysdJI97k+DsKURX3Np2KLb9Rdpczz0EYRpAGnZ12Hdcd+2bcBxhZLQadak1XoDiwC2pa51fySTPl3HxKWB4hP5v2qAjiXNKEB86DGe3BnlFoGpMAkxFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH2PR11MB4327.namprd11.prod.outlook.com (2603:10b6:610:43::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Tue, 26 Jul
 2022 06:52:36 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.024; Tue, 26 Jul 2022
 06:52:35 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 4/5] ice: Add txbalancing
 devlink param
Thread-Index: AQHYndUXaWYocWMYyUqg16+c/5FgvK2QPMDQ
Date: Tue, 26 Jul 2022 06:52:35 +0000
Message-ID: <BYAPR11MB336780BA81F328257CB65331FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220722141129.229436-1-michal.wilczynski@intel.com>
 <20220722141129.229436-5-michal.wilczynski@intel.com>
In-Reply-To: <20220722141129.229436-5-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a532161e-d472-4d58-bcaa-08da6ed36c2e
x-ms-traffictypediagnostic: CH2PR11MB4327:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mHM/P/ddUBdKkoccxLtxHCGeiS+i+9VD+AzDFknU9LZ2LFYC+uz8TzzVEPbJw9ulvGo8VJJaXMY3Zq0DHrY9AmbjSkDTz7YGf+Nz08Wdawe2CVitpjCIeszwCOJpgUrklO+nXH2kemBxfCHTPvTaW1WGQRz/r90k0cTjP1wT1+RPeuELXDHVTEvZLbV0GEkorhrNu0S+LaEs8XvXXlVR7KOV/s/GRTdgJ01t0b+okP4QSpkeVnjz9jj7xlI8qcJ/ocsRog/4WR99WCqFxQENhOWgzRFdWinAdkT8MXC8d5XFB+eIpH/PqZ5LNQDtoKErq77nFz1K+ET3a6kJell6DBQ7eHhHc9lX0lyEvPJQIz4rVDqgFVZu+c8zfO6E1ZdiC2AgKoOpKHuTfxh6F5de28Lin9sBfG/fnumCh5tI6kGRLO061bZlqWhVw+mE622FhEjlGBilgPv0Ubzdx2attQd3vXj03pkFt1gUO0t8r0hpgLQoENx1OuMwH1uGzEE+FCfG8SDYh1yishZUCQuqmD632es/+P5TD+2UJBK1ZEDHt08xObtaohf6KhVjV/8To/ti0NL3ECMfCqN8HnMfDGKpugApyf7jPgugIuLgKQfxYF1s1XaSX+dlQmyYIjE3W5H+6mJA7oFXj1Zh9ZSb+a5XCiF8xrPnzDxZhzuU6PI+liu2i+CZMR3Er+C1bRjx+x1GYUK9rWbBI/JunWfDSbgtvwUJuyyKeyTsGs0iOz+LvaW70axIJTCLGGksl0gYJp11nV0vC0Xg+5obXlho+1jy0dH7FgCr+qsdnJA+yRVOwBU1H88xixYakAkDaNuY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(136003)(376002)(366004)(396003)(478600001)(71200400001)(82960400001)(38070700005)(41300700001)(7696005)(6506007)(26005)(110136005)(53546011)(316002)(186003)(107886003)(9686003)(66446008)(8936002)(55016003)(2906002)(5660300002)(52536014)(66556008)(66946007)(76116006)(8676002)(4326008)(64756008)(66476007)(83380400001)(38100700002)(33656002)(122000001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w6tdBcdEcYfR3171flNkEeP0QWT/CWLfohWK45SNuvsmrLXlTKP40WqwcdnH?=
 =?us-ascii?Q?IsWMK3fvWAfKtdVAa5kVAp5G/mUNN07mg3eJNEFQhWHd+yQPVbD0xlz4DyRs?=
 =?us-ascii?Q?HrmMpwk6csfnH3J5YeLzgbfUjfRys//Cj70I1/RJQIys/0oBofOcw8zFji5L?=
 =?us-ascii?Q?D/Mk8soJ07I0JF1J44NdKc0f64+G4qdBuyYnnhmUMB/ceiPEO8oMibWc2iOw?=
 =?us-ascii?Q?xpkCEphenBfFce11gfBf+A0isDU9AMcIvhkHLAhUaI6R6Kx3JtWjUekEQs7g?=
 =?us-ascii?Q?d5kOUvDJOxUIm1zQK59lyeYqm5gHFn2znyDigIqrCcD5ZxCT9xffj0g2Q82O?=
 =?us-ascii?Q?JH4JNwtUzWE+MMneIzbJoIW9FptkpZgFweubFGbd02zmPUq/UR+Rl6bfEF7q?=
 =?us-ascii?Q?uclew4MsUPqRhAtPAwFcu8kStmKrZt1/MFqXzS0LYXKktfEEDqxenqMnMfo0?=
 =?us-ascii?Q?hDadGdGUrEg9ZjJ2IDIvmSLQAUQgMHpOUwEkVMTnLuujGI4KmFXaOpLaF+t+?=
 =?us-ascii?Q?1r6YmdvtYwFM6cnZiVeYOpjcvgpWqLFNUCctnwuEaUMMo9TOorm/gN0FZcvC?=
 =?us-ascii?Q?4PcDM0hBIThgkuAKA6pDLX5OaRsH9aG4qHE+AVVHKEa7r5uGxPM6zD2B4dbD?=
 =?us-ascii?Q?rlPxS/xzaTPgxO+69y7Zstdro0xyWcpCyF/GPSv55xby1g2YzHZfcTl1WKUF?=
 =?us-ascii?Q?Je6STmbgEvD0o3c72cFrHWALLGVz3sPrsO0MA7ctU7/KSDomUghowqvVpPcP?=
 =?us-ascii?Q?wtvyDKXBM6rEzra7HTj108mjb6cVuNDEBOiqjR+n0LKxxyVfF15sU4Vzj7G0?=
 =?us-ascii?Q?Wmukc7a5TKg99riS65zIYjQ0QPE1UGRBg+N74eV2VfNCLwZpmgfqSpS0TLT2?=
 =?us-ascii?Q?6pEsNOirKpz4vU/Euaa6HD6Ll6l+tAdu0RXtaQXHiG3cbUZE9oCiflwJC070?=
 =?us-ascii?Q?FseMa1jxFawct8aZSoL9J3BiHVvL2rmsdCD93fjq8tjHSIk61/GHaJ25V/V0?=
 =?us-ascii?Q?7c825yWnlqsPbRiQo7kO93/GMNvvQann3QIDvI5UFLYPeL/eS/rVnPNBF0RV?=
 =?us-ascii?Q?BTRyHd6TH0EEjcoyj2RjSwShSQEd1BKx3aBRzuEs7CjzPm6eFM9EcLR+AiMU?=
 =?us-ascii?Q?51yzDyPubGaCsYqj5ToqFpj8uF9tg3uU3SxEhtzPcaywFmNVKAS1ZFqZ0ntI?=
 =?us-ascii?Q?YTAglcLrY0yR7/F8FY5lhI70MNEjxi8Yrje68UDbU9b9JxtxgGXlTGHOVvOG?=
 =?us-ascii?Q?cjkSq4azIEJWEjPw0juBzilXhgAXj5p1LuwstJiJWH0yb2wU3D0tW3oATFd5?=
 =?us-ascii?Q?sYB8pS353hBzgSsZ7A61Urx8WWoDpzwWboHNAjhNSoJMzxP+ewES5Y0fejKe?=
 =?us-ascii?Q?OukTZrTPsraeMqx6TYyLcjeYTFHeZyo/hY3l65NTa0JaNgpevJTsPZMI6WBM?=
 =?us-ascii?Q?WdjnhcRyDA0qa9lSKpLMJaSSjWMPEKjZlnzakPcPEDchsWOZQIuTaxox7GiA?=
 =?us-ascii?Q?MDugC9fR2gm1Vq2HOfLttbc2YuNHDSxluGpFQS9lc9M1eucSUmLxFRgUUwiu?=
 =?us-ascii?Q?APvvvsqcE+mbQvy9kP37HnX4EBTas6YzVZNMuQFu?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a532161e-d472-4d58-bcaa-08da6ed36c2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 06:52:35.7878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oub3BnndJcw+b4lQvR6YJ+tzLVd4XY4fSmEP5QLl6N2ysichy7S1myEzm1hVn8S54WzaLIH7jDksW2RKshvcOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4327
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658818367; x=1690354367;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/dkoMz9I1yZd4+R1p1h8Voz9MR4fq9nPr87iDuoy2+E=;
 b=SHWp/QrIQB6hAiYe2ANbJATBah+CdFwGNIvvA9P4mnyGGBFqKRoluInl
 icMMBEVrq1zrkRgeVyoAmluzOzxK4aoj62nuk+EpF9NwKSIDSxJfcyT7V
 CyyaJCrnSQTMkjmBaBdIOR6zJu2+1/9x390NvDIZPcZph2CF7xnm49s8B
 bhnB/34ssUc+asI5iKLldiG3H1ECSTG1rK/L0v7bxXpl1ftFHGtrfWFrr
 QWSRAWJXxeNeaRU+wyXe63Klgzd0epCPQgu+nGnd16zSUBLKSvceholvd
 0i/kVCw6bZoXPGoneNhnjfj7HGXsvOs4pHBf7fq9hm5dQhELOg6lStWDf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SHWp/QrI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 4/5] ice: Add txbalancing
 devlink param
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Friday, July 22, 2022 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v8 4/5] ice: Add txbalancing
> devlink param
> 
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> It was observed that Tx performance was inconsistent across all queues
> and/or VSIs and that it was directly connected to existing 9-layer topology of
> the Tx scheduler.
> 
> Introduce new private devlink param - txbalance. This parameter gives user
> flexibility to choose the 5-layer transmit scheduler topology which helps to
> smooth out the transmit performance.
> 
> Allowed parameter values are true for enabled and false for disabled.
> 
> Example usage:
> 
> Show:
> devlink dev param show pci/0000:4b:00.0 name txbalancing
> pci/0000:4b:00.0:
>   name txbalancing type driver-specific
>     values:
>       cmode permanent value true
> 
> Set:
> devlink dev param set pci/0000:4b:00.0 name txbalancing value true cmode
> permanent
> 
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 161 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
>  .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.h      |   4 +
>  6 files changed, 181 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
