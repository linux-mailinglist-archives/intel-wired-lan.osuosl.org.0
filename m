Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB36558ECE6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 15:17:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9621826B4;
	Wed, 10 Aug 2022 13:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9621826B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660137440;
	bh=HVB3IHRkNTf+eXYen+W+TGc51lnoNRPAPxzpyYQCNxo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7bXRAhCJ3/MYo9/dIotgyiZIAPq+9/4h8PT/9dO6wRVvA8xz7kVvqTiRYJaksgOlU
	 F/61mwUaLAvyBCF3mEDriG+UBeLgAjw28EIxSCDtAwkpbT462QHt5Kt+IfLqy2isJC
	 E8uK2Ulu0uxKhInRTVDVsGchnN2+hkdZIEqofZQRAYtoT+G6Tp8uYVeShrUNAivckQ
	 6to/lwjgGQnQSuIUAC4bejvzZGR9D+LHFfh/VlHe1Lp6es+ZgSy6EMABytvnj8N64M
	 EiFa+aZF3p6HR4T9Mpx/RlT/R1luLCy0oMAaKmVFUcn+73qdOA9mhUfpvGl6qViX19
	 btJeQd7FdBeaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dqc33f0uznBF; Wed, 10 Aug 2022 13:17:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD35382660;
	Wed, 10 Aug 2022 13:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD35382660
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38B081BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 13:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1CB5241604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 13:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CB5241604
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B15WZAvkfW9K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 13:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 026B541601
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 026B541601
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 13:17:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="377369112"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="377369112"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:17:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="708217752"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2022 06:17:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 06:17:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 06:17:11 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 06:16:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FmBhWytI2BQ55C58yt3uknNshgnkbxi4J3e0H0I6ZcgT8T5/z6zlvlLMW42sXxmTVTdLPidIC8SfYU9GB4dCFkMaG7lBFCxzxFOsF6HjdwRykvOZFzfP04AQPz9vDScsP3/daPpEJLwwM70SW7U0V/w2ASavnp5HGc+mC1cgLMuXq78wgBPRstDQgGkkZ9hPKY2i+ydzvVKO54HSGECQJqUR2Oiehbt5xmnFwPLSzsZcpAgFji9uWWTlMXbUmOW24IBP6EPtSyQ+r9WPUNAYjG+tWHLkcaGViSiTs7JujuYtIoVV8ckSEhuwiiaUDZeaIvNiwojOoTORGiktE5P7bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ptDpYE9b0LRMU9pFSSP/tZVT1Nc0i4v+my4dJzb4RJk=;
 b=J0KFHJEhLeyZCush6Nm3ooLUpKRpVBYbbiHFTh5tPtIKOXWYAijntDL0O43QAY8iMzCItNH5gKNL4GRIf2iH+ejrKMTozN21Z2EzG5N/GLp5sgbmNWfNgb9VdsQARD8LI92zAJvO1oVQEnOd84SBy8fRGwanuigovcaz3Vd1ePB9LTYI+dE/nbRwJrJiP8QW1Ox1oNL6N1LFrTWluOkdARAj4Umq5N4Kk33lfY7CHpehPBsijEJ7PDglewwCGTvDRMsF1a6xuvfHZOhm6s7cRHzyme/7URQwyVYsRqXfs8hEqENgmJl63Zvj4tQ7CLyQsLja88YFmp0ey1r5WSJWZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB3339.namprd11.prod.outlook.com (2603:10b6:5:57::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 10 Aug
 2022 13:16:56 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 13:16:55 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ixgbe: stop resetting SYSTIME in
 ixgbe_ptp_start_cyclecounter
Thread-Index: AQHYpgZQvS4UA0ybCkSyz9wIi5GHH62oKr0w
Date: Wed, 10 Aug 2022 13:16:55 +0000
Message-ID: <BYAPR11MB3367B46AABB0FFF589C18D25FC659@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220802002419.401813-1-jacob.e.keller@intel.com>
In-Reply-To: <20220802002419.401813-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9abc0b0-9a56-4766-7371-08da7ad29929
x-ms-traffictypediagnostic: DM6PR11MB3339:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 58A9OopVxTOrdWubbTxg3Yp/5wQdvpnxmqZflG2RcdGuzc5DNQx8Dlh41vNMip3X0b+ax3ftIt6yYKOa0UsdHZrRuHCPoHkGYJCJa+kAq6cuj2GDl51ilrcOz/QPEyZBzrgaXuosiUTKaQsjoXyZuOE1GDgAaOV3AwB7KB+Rvm1XSnlLzBTUyvcnSpQXLJ5t60efFS/bOddy/2Ifci5ZicXhvDkNyPtmwXKQxFfpFJQpzloTvXZa+m0C2Demx0ipzP3b03kgNkl0wEtz/z4XlEDBRBTB5ZtuIGB92Ib0w6Gjl/W1t56H4UpQ/9ypqfpmXy7jlDrWYgOHH0Hsc0lhorHhdkOAaG17s9iFOJgdUBdnkg5kKL9vP/MYazre2SGDq7f7ajBT2gEq+xj15lGtmnLjd9vNtSQqEX/G6wRYU18kWBgEiYRu2+MZLHWNl0+ko3iKF7B6F3fEgrffTqIZ1pJ+Vx2I6iwEXhVJwAAKE3jKLn1IJHtyGALX+S1EwMDy7VXkObdqzF5+Xd3Rqc5U9RcNH4keMfEvs6Q+sWWyMvcC1qicoMTrZ/4iOM+4u6wZ2Y7TvDtIGxYZT7szjkXOe0n2N+zILvlMd+FkQrpJGTXynmTJB3w58v7WiSvnEcKyvBE3y1cCRbb8CP63d0YjfpT5mtGqjfcNIc5DksU2dP+k9MPZq4T3gvkRzWdo9Uk0W0fNVZ/hGkfpZNPBii1QKukBNwd9vX9RT9Tl8nRGNQTbPMKyz75mYo3vKqq9SLN5+syZKL7jFKyqdz/VVSeXVu6pmuIri4zWXX+x27V5etMmrq/KQnZ3dYOqPPqN5+wZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(136003)(396003)(376002)(39860400002)(71200400001)(52536014)(76116006)(66556008)(66946007)(110136005)(66476007)(8676002)(66446008)(54906003)(4326008)(316002)(86362001)(55016003)(83380400001)(122000001)(186003)(64756008)(38070700005)(7696005)(6506007)(53546011)(478600001)(9686003)(82960400001)(41300700001)(38100700002)(26005)(2906002)(5660300002)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CbW4K1k4tnOPBvyQQvBuBThhHg9rH8KMhPE7iF+VDPw+tu9znFjfZP7hoDkT?=
 =?us-ascii?Q?rLR0IDRUhIBkTJUAF3YezdYLpgKLTdwMZpskNgzbZRwZ6zmA7c5ZHChxBNOb?=
 =?us-ascii?Q?y3RKY2s3LUoqIpYolqqkxMLn5S3KEHhA3f9lErRoLaUYARnLe4OjRLFU7Ia2?=
 =?us-ascii?Q?6BeGOS3JcDH0IXnUk4gVb20whhax+Bjtbg8R5IR7v4PCbBQY5N8/DZhKbWvt?=
 =?us-ascii?Q?WbQ29RBFEF+kizu79KJld1HGWE6gfFbP0pPaQb4LPbBlU7fjT7a8tBGPtmM7?=
 =?us-ascii?Q?bizlNkoUzEzaw71XnhgZf44j06oYhMXnPAmOnzjeS5MUulbVdrwBSbjlNqOy?=
 =?us-ascii?Q?AC1po53gotkGgVpKRhuZwybUUtfsI+9h73UK+eSnCHXEfxYqGDqNzRzVbtRr?=
 =?us-ascii?Q?tHhHwC0cEZMYE9WIa/u2EOAHRcdG7QVINv1VzVi1pFdJH6MggO9f3xsLIlGW?=
 =?us-ascii?Q?uBgUQXkIYbcJNtnKoQeAu94HdUU0w+octDyIB3P0h3EwAa0LmL7Yisugm3xq?=
 =?us-ascii?Q?s/vAz7F8ZxBHvZrJngtnusKXtHCL/WxrH+JlO/kyf8fZQgyZby0wt8nQ1G+F?=
 =?us-ascii?Q?wyMJOo5IpPFQ7qSIb9lXl5cViddrIrTDc6C6qNVQrNos0Jwtjage3uMFSXjI?=
 =?us-ascii?Q?LQQD/QrNCrDk7d/dk/QwuExnmNF8YRnnWYw5K+VDE/mkb2nlOprP5ftYSOYS?=
 =?us-ascii?Q?a0XM+WWwc+8/i4ZTf0AV4FVcoDdb9Rad0+NyjTm8hexTBsv2wGUl8SyRHet2?=
 =?us-ascii?Q?XqIhNaWuS+IaZIj+NpVtrjCTASZQG9qxdXanb8svZCuvrXZei7XlrU//9QEJ?=
 =?us-ascii?Q?8Js3lUbIUfoxk6e4Wf5zwFRDbcl4NZEd/2enJSUOkCwXTbEE6IuXkHnprH6C?=
 =?us-ascii?Q?500w3N+UUKGMweaRKa+fLc/VtgaRUaT+n5INhr/SzjBOPyh4HnsQIC9rWuN0?=
 =?us-ascii?Q?3M5Ehg4VeR151NTHYjbE2zU/wwkza9fTkqDDvle59JsCSL+N9A/fDwfRFH0w?=
 =?us-ascii?Q?SIBDAgy6+bgKk2Yaeo8XsJOVCbJ0VO3Yztw3tAgvrbECq+BFVtamWnBFMXAU?=
 =?us-ascii?Q?54QHTJ52Dyb4Vx9mPsYqF0F7OGUsK4HT99IkoR48oWkTMQcfBQ9QpJPi82Aj?=
 =?us-ascii?Q?iwRS6ow9XTDMk0VIZ2AobLjdGQWO0dVcoeY0q60++HUQfJkCcMr6G2invIp6?=
 =?us-ascii?Q?0VBeHqqPhU/o1YIl3GsbI/+LFAGN8D3gnfha7T2q0h9uhMycrUwKC6ilw1BR?=
 =?us-ascii?Q?w6WSuL4LZu3EMQNach28X6zIYKWH+H509T8LoYqOuJTgLa+rifPifR7K06EL?=
 =?us-ascii?Q?G6FcEcViatF076orVV7fNopQtWS6bHumxFvbAYPyTP20vNZWyP/G2t2+ALAo?=
 =?us-ascii?Q?ZVzxRD63/wMusXs5ySgChm6UbqFMba9+fBeLdtPeoy/+ZaqMbfKcO9hVvJlT?=
 =?us-ascii?Q?3KieGuRSN/PBvZL0BdS5JZrwMVLtQBP1puDAlgOUJ9ES3Ezr+11o25g5WDJp?=
 =?us-ascii?Q?JjyXFfhLYhv7Zpl7ZG14/WY50i7FV0t+ZDiuHPV0kO2feC7pCWmBK+GftU5b?=
 =?us-ascii?Q?pVdgcCc/WohnTbQlmIp53bV0sI8+2MNjRTft/hjc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9abc0b0-9a56-4766-7371-08da7ad29929
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 13:16:55.7541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xrBkUB+yRSvkVz11LaB0YhCt8oQXb05fmodUru7A4/OmanwgEibNpu1AILIyk4TTf5GbsndFy9E+bqREHkkwrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3339
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137433; x=1691673433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gqUdbxusFbU1nabbyS753/nnyCCkKday2yUqz4TNqvg=;
 b=Neo1anpC6J/96h5VZEExqI3fZl7Ym8MJhz39S5AFG3c5uhruN8+1Pjgf
 Tb9dVCCZKBpqaUfI1cwy6In5U5mukhBjDchCIGYF3iAHs5KfCmhNFriHy
 Z/PTfR0+cu3M4dpe0xynzDreYNrMdN37jsIu0LrXUh9nQT2h+F0St58Zq
 vcPAlAi/zH++ItlROwP4HE/WT+JWoHhadKGEbhX8MpllGiNp6RE5ulRnt
 41LgGzonLSbG9dmn3Z3TZaUpzQqYg+wadZav0If3oWYIzdWnmVR6u3SoE
 U+JAGTNC/wbkzXXSXdkcAC35LVfziyiZip9Ow7JQ7sWkcu/u/kcSC1ubC
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Neo1anpC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: stop resetting SYSTIME in
 ixgbe_ptp_start_cyclecounter
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
Cc: Steve Payne <spayne@aurora.tech>, Ilya Evenbach <ievenbach@aurora.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Tuesday, August 2, 2022 5:54 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Steve Payne <spayne@aurora.tech>; Ilya Evenbach
> <ievenbach@aurora.tech>
> Subject: [Intel-wired-lan] [PATCH net] ixgbe: stop resetting SYSTIME in
> ixgbe_ptp_start_cyclecounter
> 
> The ixgbe_ptp_start_cyclecounter is intended to be called whenever the
> cyclecounter parameters need to be changed.
> 
> Since commit a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x
> devices"), this function has cleared the SYSTIME registers and reset the
> TSAUXC DISABLE_SYSTIME bit.
> 
> While these need to be cleared during ixgbe_ptp_reset, it is wrong to clear
> them during ixtbe_ptp_start_cyclecounter. This function may be called
> during both reset and link status change. When link changes, the SYSTIME
> counter is still operating normally, but the cyclecounter should be updated to
> account for the possibly changed parameters.
> 
> Clearing SYSTIME when link changes causes the timecounter to jump
> because the cycle counter now reads zero.
> 
> Extract the SYSTIME initialization out to a new function and call this during
> ixgbe_ptp_reset. This prevents the timecounter adjustment and avoids an
> unnecessary reset of the current time.
> 
> This also restores the original SYSTIME clearing that occurred during
> ixgbe_ptp_reset before the commit above.
> 
> Reported-by: Steve Payne <spayne@aurora.tech>
> Reported-by: Ilya Evenbach <ievenbach@aurora.tech>
> Fixes: a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x devices")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 59 +++++++++++++++-----
>  1 file changed, 46 insertions(+), 13 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
