Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C0386FC3F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Mar 2024 09:49:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5068040B6F;
	Mon,  4 Mar 2024 08:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pfr_hCM3LTVU; Mon,  4 Mar 2024 08:49:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3725340B73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709542160;
	bh=+n8PRXea2o1AULILVj4ckS7gHzlFA0ThdfDNQ/FPtyY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UF7jizQyOKye03umIQ6FkWTOITk6EEJAh7fwJdbCNs0A8WmmE9Qw4B3UKh9J8OrgG
	 +9fB9tu6ndhvTg4mTYdgI99B5gfdOjnBK3tCPn7390eGNTLTjSCanqM1OVvdDy0obd
	 +bVFCaOXHlKV3eq3CG4XLQPgzMWNXK0g0TYlw76rakpOLIAh99yNV17Z8fAtldlM9C
	 sJCvardXsWQNSos8Dc/Fy1l9U0dTdWlLYDZ1PRJZjyrs3kpHAHKkH45G6aO+UVt2Sc
	 EA+fiJIZfBteRVcK19UDdrDQGq9SKw6mIBGZzCEFYSskfAQDbhxXEjDPI5Tmb/HdZc
	 kGqEILMIgz4RQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3725340B73;
	Mon,  4 Mar 2024 08:49:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81A931BF580
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 08:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C06F81E40
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 08:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XBp4z1bhPlJx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Mar 2024 08:49:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EF58A81E3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF58A81E3D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF58A81E3D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 08:49:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="15170290"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="15170290"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 00:49:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13583364"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 00:49:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 00:49:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 00:49:08 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 00:49:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DtOMRMK1YywPxKwsSwJkhu7wIJ+EchACg0902S4HcjDKI3i1VYIxf8x4KB31RCicRSfaCh5qTlYWe0WyCOoNaS7lTPkcekW9tdoiv9WqwyslAJWYWB76m4QV8DlgxAxGaI1l+iggL/2WFSsnh8KEGmonTemkauruM4mpVb5le59Xo83cOGsQ5qD6YzSoW4aTnUy9yPJR00pluVkgdZnUkZuo6ol0vNIlxYcvuB6DGMnlQr9SWTBEHZTsHwch2MMoKI1bIM2XXguy94gImslacWgDmvZyrLjrJfGS7Q8rTs2DTXqNN790AZsv7KOzLir+2Nbp/haC4xxmRPGQb0jElg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+n8PRXea2o1AULILVj4ckS7gHzlFA0ThdfDNQ/FPtyY=;
 b=VsqL2ro3UoB/We+9t/9LRd1oAYmbZ6xltRTilf4e/s69963/Hap3CRZv9VBjg58OHnAd9PUNqWREjC/L17STe1U1D8CyDvJnxdGSUKfb8dymCenrDU+qPbcNzmn9t+dMbkzSKfzTRmz0Ro3kjgBAkXALVqpldmYm85EQxtT6wQfMt/AR7sEunnC5Eo9kltDFTPv4ACA6+yHuwXY4dYnatCnF0CrS6DzJuvVfl+th5eGl8+RMZFQAvjLlPYtGiaEpYXJX1wvs6uztl0HsVl2814PNhAAb3wy7kwjmg72J04XNuIUxKZSsxfptUOdkDLRo11zrdaTu1iQ06UvOKvODwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by BL1PR11MB5954.namprd11.prod.outlook.com (2603:10b6:208:385::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 08:49:03 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 08:49:03 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: use GENMASK instead
 of BIT(n) - 1 in pack functions
Thread-Index: AQHaaRIb4Hx0ivLyZEqMCsHbZqPUa7EnTybw
Date: Mon, 4 Mar 2024 08:49:03 +0000
Message-ID: <CYYPR11MB8429E1C91A7C5A18F3148326BD232@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240227001456.3858886-1-jacob.e.keller@intel.com>
 <20240227001456.3858886-3-jacob.e.keller@intel.com>
In-Reply-To: <20240227001456.3858886-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|BL1PR11MB5954:EE_
x-ms-office365-filtering-correlation-id: a920c967-34c7-4e17-f1a9-08dc3c27f193
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gISybh8k/uWrF29//qitD2KPvBz/T3AwS483GFO3JnC5NV2fdc1ojYIqOzDCl4KmqBtZHT3AFEcj9Br4XNX+0C2WnamyJI9zlS6vV6ICCGEdq6cF+lc8dgY8ZEVWcVFUksJqsw6UqMJOxvcE9BDGxXTcN+4+9ygJ5w7GLMpjms0H5YdDZdzo69MKOFBDMKsvqWwtvlKQJZZDifbia7RG83sUApJ/YV4Re7VId5LZG2/mf/+GRD+NDavhkfFydvPP6zHgmPNL2PRNGzW7rskA+d4L9jbHTAZ+UT1hIU+JJ9TL39V7XcohUYDBeu+rmVMUGZiXVmqwTexzk9caiimYiWjC8kYQoDx3Q8gPjL98nCAPO7HQFD4hi4g/qsgWx+JcLQtD2bw85leV49irK3Q2bQPuspZy9MTSZRCT/PO8crHLePe0sEPYnK/q8sZiZwFyw3+qLiF99gTgozqkYqd9OWHePCSEqUfOGMv+rWubfQM8VDUAWvrbpgo+MgKXq4t9q2cRCFSUpAOqOsk/GwZ8y0+CeUkyE9TvHA+D9xkQ0hftU1ijzYK3fr7RNTSTRzmt27CvT01acMH8KgeLtOGcrmd56o607WUmK+cnqqUodPct7/pKUblfWiFuVgv9RYGY2QdpWD7z1bgJmzcNOZIJNOgv4I9aNbqOETbDUckaubSLt9od6wyRGCVp0Ymmc0eIx3JQQLt0PnAnm8WWHEnbB4b41dZwK0fNP2WhS0PCZbs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?duzPAQEeB0u8xw06MyR3NFgRNM5tSnAjSQNtOgR0jeyZS+8UOuxYfkAn32nE?=
 =?us-ascii?Q?LR09ksyP6BPS2Ao/4VQKxUdjxnl4Z7T9oU0+BezAxCrHNgKpiPuKNKNhkXjL?=
 =?us-ascii?Q?Nb0AbCz0tvK41uqCEm+CgzB+TBlnWAtc6c7TCuV78yYBPfdE2QRuLq0wlQ2l?=
 =?us-ascii?Q?4RdiyoCRs1nSPB5HoQiUQuKvwkpMl/4/77Ofi/wHlVxxVfRrfm0WvVsqikun?=
 =?us-ascii?Q?BCqH+10s+RBuSfmPtqS05gpVCFn/cwOUzGKnT4S4spd6xtKsIsOxWxnjnOaT?=
 =?us-ascii?Q?0JCH7a+kbM5az0p7s+rLqqo0FfHbJPPadv80utVzTbuZ3l1PBzHQxAZ/Yhi3?=
 =?us-ascii?Q?liJj6qJoOhUa25geUPiPi4/xhKWmnbz713RIppRAj6dU2/cMERFlCBCRIRuS?=
 =?us-ascii?Q?MPbFfRmZ350mn5LvfNWLyhMBZ4vkWWP8RKo7BeHocgsMlegTu+M0XSApRPzn?=
 =?us-ascii?Q?YjzlyZs/M5XoLhoBPAA9F7zL/lovjnrERaQ0RSK90+2dPA8rBVveLupjCwhT?=
 =?us-ascii?Q?V5Ae4LImGnCBojY6vpigJZQptWg8ZKJxxT0QDxFjH7XJtPQagXAry1hqsqxW?=
 =?us-ascii?Q?QzOyZgV6aTN5a9IPoBdeUQzPl3W9VNON64QExN2uHYnDqWnmIRw6y4FoGyFT?=
 =?us-ascii?Q?5Xi8zGyrflx0w/FybTiVfBLQuO/aFUxuTdeoOq19ATKH68bq8tVmxS/Gx70e?=
 =?us-ascii?Q?rTgF7QKLLIP9Fd0dYJgt6HyPOveY4P56hJiidgCCNCrBx8GBdyiaoNO8fhrw?=
 =?us-ascii?Q?xIBKbwf9TwycGtVGsSvgSmNCujIhnm2ZcfzoK6+Sr46HLhnfY4QqzlN47EO7?=
 =?us-ascii?Q?1A4jtyq7gV2LAJZRh7KfWUGmMdBS7QyYfdlboWjqwi6i2a8b4qvpVA1T6vCe?=
 =?us-ascii?Q?fe6UtDSIwGWkUiG6TZyWVfsXraZSHiTVDIk8sdtJXD0kvWddt2Dgzh3QQKXw?=
 =?us-ascii?Q?wEHlmAXMafL3WJXJfBF1nAeERYuvsczY+NTjV+KlMRvJdMlTtGpbHeyyLujo?=
 =?us-ascii?Q?WDQokyOpPMHTi5JnwhLM36qMda3ZcY805/UA+QvXNgl+4kpjBFYPhvGolAAY?=
 =?us-ascii?Q?WFN6jACrR9hNXnN+wd+nFW+QD15Bp2awd32oamy+kYIQpf3SLedgv23zaadU?=
 =?us-ascii?Q?2mN8ThNsqmOMU1ivyZT1X9oB/FdhyInWJshfVeI/s/iQYCS7lMuG+xM9N2Qx?=
 =?us-ascii?Q?OZrByC4cravlxaxJSBU6niWgBfCtdbYSGiYVoBJfw8MAeElmBo+bQPOjsIpk?=
 =?us-ascii?Q?dTv7JMWmNJxLZfYzOUXJS3JLKJ8k9Srn+jtWlwJoDevv51FO1F28BvYBKabW?=
 =?us-ascii?Q?rb4R+ZaohbkPzvfzFD/9fTkkldiTzOORVNRBk8+UbN2lHEokKGjt2Y1ZZonZ?=
 =?us-ascii?Q?cwPEoCnxz5ZMcg8ztON9zQOigok8Oaksta93QjTWw7F2Jf+kBMD+H3VyYJd2?=
 =?us-ascii?Q?S6+Z8f0Y+LUDKvMef94bEJJg2WXZ9/zmXSbApfXij2FlrCluBO56SeNi1ADI?=
 =?us-ascii?Q?KCc/d+GHxpKdLlOCkQ7G7o23Ltk5bjVOIVN2Ozg40/k5AP6FeIGNLdfTCOvH?=
 =?us-ascii?Q?a4gv/Bb2FkHEylh5h4eApxqVpyXIG+0pkXlgmRLk0nHEph7QOj5izQujiEuu?=
 =?us-ascii?Q?8w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a920c967-34c7-4e17-f1a9-08dc3c27f193
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 08:49:03.3542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eD/r+GkZipHtalL/fmAML09V9p28nzzxD5ckhYslcxe3FOMonsDk4txPZUXUXLxUB5hNCAKw/hmvFczaqJwxQby27ngs6kCXGFO+SOKVsn0GcaVVGoLP6OUD2HoOs6Cg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709542156; x=1741078156;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=211gkp/4oJPyYROYXvxZagNIebTUyoAuo/S1riE8kj0=;
 b=X7Cdnh0tTa2CFoY7A0CJw2sSAru8upaL+dFlI0f9tNlz9RbXMx9EBqad
 OSSPmBtxTjTnfie0g1C1o/ApuUvn6OSTja38R/c5wrv+f9s1vi+PLFNJB
 hRRl5KFjaKlgOQAb6FWBOTseq6S+D+t+D4K6+Fywtoivp9zfP8TPcV5a6
 2y3ZtrJz6wWPNjbGQWU/nGoObVNaCAxLGvNbSjLngWP4Kf5Kk4Jo6TmCy
 UVrUbsRjwYGEne0ElvdhIa6GDd+4fpxs113qR0b6KslwBfzP58OsE30he
 yoqQB/F2PPXxR9nsxZk/Mr03HjId7lOPvaPCmuijHupj7FbcR+h2IUyNy
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X7Cdnh0t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: use GENMASK instead
 of BIT(n) - 1 in pack functions
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
acob Keller
> Sent: Tuesday, February 27, 2024 5:45 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw <prze=
myslaw.kitszel@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: use GENMASK instead =
of BIT(n) - 1 in pack functions
>
> The functions used to pack the Tx and Rx context into the hardware format
> rely on using BIT() and then subtracting 1 to get a bitmask. These
> functions even have a comment about how x86 machines can't use this metho=
d
> for certain widths because the SHL instructions will not work properly.
>
> The Linux kernel already provides the GENMASK macro for generating a
> suitable bitmask. Further, GENMASK is capable of generating the mask
> including the shift_width. Since width is the total field width, take car=
e
> to subtract one to get the final bit position.
>
> Since we now include the shifted bits as part of the mask, shift the sour=
ce
> value first before applying the mask.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 44 ++++-----------------
>  1 file changed, 8 insertions(+), 36 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

