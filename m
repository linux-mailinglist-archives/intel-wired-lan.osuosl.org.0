Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F43365C030
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 13:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53A9540966;
	Tue,  3 Jan 2023 12:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53A9540966
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672750158;
	bh=mqcC3hMw9nxVn8Br8ersE1v3vLdUSi+UY6CxjHKKzjM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Kc3X1LDgEMleOP75DFNoXcJw+TV//xSs12ONmFMu7w1lGpH0K+UqhGx8flkeGtemA
	 tUUXSBMcnX7/odRPLT43A1bF5vU0V0Aw+N+ITRwotvppiLRCYk4EJl453G+S8j8zYs
	 5U9v5iIGGzCNjU9+hgdIsUP6EG4JSJj/KbjeouwBBT0MqdMB0bL2vrPBxKLH1hdCXI
	 k0R7yc/CXO91WyQvYFHkFuU6MxGW3FGT1uftWCU+urHRMz6sGeDNdglKVFc9nPwXkS
	 hritMAasSAg9l8BWGUb4cCQqHEBt1zHOewBcYCR/x66MbvY0psyJQe1SqW5qZEQEW+
	 JeM0l1Dw50rXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oWzCmxom_OnS; Tue,  3 Jan 2023 12:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3110040578;
	Tue,  3 Jan 2023 12:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3110040578
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F3CD1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC39B41712
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC39B41712
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xqSc0NNT-lKT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 12:49:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9475F40342
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9475F40342
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:49:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="309421590"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="309421590"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 04:48:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="723253245"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="723253245"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jan 2023 04:48:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 04:48:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 04:48:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 04:48:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 04:48:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLt3XN1AEgXfy6FJxmW6taDuYAwgu9X7UtmaUPNBGbVQrN6H9OZbM9SljlxEx/MVDeh8YeGsfd0Jxui7lAp53eNiiMLYvhqkpvinLRpZVb+fLDb46kM/dstBLrJrHT4IAjtIYNmdO/93jGWbIGtE+0mH+HL26lDZDSWii1nBhZtsLdmw1Xr/lKxxzhvVroGluNUpB720VbLjbcnNiTJVC+RkXyJVQNOqSlNh9NnhrQkmg4N928jXzi02j+g+wHlI/J5M05fVjeHVkh/t/zzaiw7tEdr6TLwY9mzX9E3u2UKjZY0RNXV48QVM7cRQ3PCbIqKlXMl5Xhf0OK494HFMrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+YwQs5dPFH/sQ7h8rww6NjkaE42YOH+1SgpoqTf65M=;
 b=RZz5ThYd5FW5kLER7niERx+EW8BRu225D8tOsw13gdzS3uAZN7Y00jcZgrEMj3lqb7eoBUQ6IAJONbcDQ4PLaG+GXT/fDA5rqnVv336BYvQwZNwnOb8StezWQ/rN/SyOD67Oa5Wifwx/U20Vt3FZlyl6tkTG9UyMFtl7DXBAVAgCe1SPU0DJta0S1gEgY4c2Iy05VpXjScwIweGd3lpq2yYlwOCN6C9IEMsXgTOX2iZQcihiycIzkDLd1dZJFAj9fcnpkua1tfBywHCdpHwxpocmbu1qMqRkK9MHg10BS1rxPVC5Mt3Rhf02vKRcBwTih4TNxU9pkNeRobWOq2YT2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 12:48:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 12:48:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 3/5] ice: add ability to
 query/set FW log level and resolution
Thread-Index: AQHZEdWGl5a9FHjmd0KNHK6O9AKgGq6Mv6Pw
Date: Tue, 3 Jan 2023 12:48:52 +0000
Message-ID: <BYAPR11MB33676DE70D0B92CB9696C958FCF49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
 <20221217050714.314-4-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20221217050714.314-4-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6204:EE_
x-ms-office365-filtering-correlation-id: f085c5a8-38ea-42f1-23e1-08daed88ddef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iYdDiARC/qcezurjt3R5f+XU+Y5105H/9aU5sTmhGZkQsZR0H+xw9nAM/C0bMy4Bj9JoqB6PjS419VV9VlUw9e+EQaxfID8YR5Yg8+yTPH4tqzeT9sGE9tMKG0FJVR5CJxsfnkHQUE7lLmkgkFVHHEyTz7mY2Ee8ktCynEIoizGwhxJp0qEqeAjAOqvLCRlRjabIbgwLIkfwg4oTZZ40Y41KBnH/PVkO9Z8EClGqTh//nvg7pDoM65ttXJaCXSYvHqgf9sVGZ1PJmg6DX7pA//c3h1tTJtf7l7w0q0qhiTtjSio65HM/TBZ60FZTSJIeWifJQO+sTo+i+qOSu/e4vpTWBFSPyVrv44InyiCqGGSsikzy/MqPKezgJtS5BuxrlRi6egkNTtWSC3/7on0QeVffDp3QZPdzkwHrmU+cbzdEVi1tc7YrXH7ouj+ilq+H5SVpuXzQpFavZp2FZzFOEpj7VhKpqsXaU2LEeseMFmDzIFIDpVPPGByUa3p/BcRXZ/Pr26r56/BXK/c00PCkjLT4+Bb6n4lufgcm7aDQM76fjJJ2w/zYJAjxaNdLBgPVk/gsv+M4AhaEQgOyIPkZE4wenZlplXBIWTgw6uwtBiQs4LmsHiF7hjLySgzGOJq14P575GLuYFWT+saKLPGpu3vE6P1gp71NFQLlig7bviZqGy2PIWthFMh5U9MAoYBTvqJrgPBO0y+lrjncmL4WMz1LrHPuhsad5Fb7KwULUvA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(346002)(136003)(39860400002)(451199015)(38070700005)(53546011)(76116006)(64756008)(66556008)(66446008)(66476007)(66946007)(7696005)(6506007)(41300700001)(8676002)(316002)(2906002)(86362001)(26005)(186003)(83380400001)(9686003)(478600001)(82960400001)(110136005)(122000001)(52536014)(38100700002)(33656002)(8936002)(5660300002)(55016003)(71200400001)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b4lRg/1iY6Kaimhh4ukrqOnyCcDWUC2NFtreHF3KE/vtHCPRN7dMB8Rr5CqJ?=
 =?us-ascii?Q?4D0uDaeGjmDiH7jWoVlcGTJtccd5IvRflb747k+M6K9OjvFGxOJ72Z7kmPWg?=
 =?us-ascii?Q?lUYKZHNOnyoGW4q/z2ZogAwPDT0I/zuUxHDTBKziSSc/AYBPJlXlcak9BFJf?=
 =?us-ascii?Q?cuQ56i9R2Q73m7t33uc75kn2wv0KiUtfH2HAqZj3Qz6TB3yrCsBSKL61GCjA?=
 =?us-ascii?Q?ENlHMIr4j3kG+RrRdkuAgQ/DBvWIs7Q0MJ5nVx800s6HK1CxedocZ3FqHj59?=
 =?us-ascii?Q?YFNXTSioTw5l4KPAI5m3qtkuE7/UM9WhNCv2hvcm5qmBSC0wMCbFQ0PmM2c/?=
 =?us-ascii?Q?nUUU7dSfxBBAklvc41x2nBmGtUNb0xzezAg1jyiKpt7ifZS6bbLcgI0Imjeu?=
 =?us-ascii?Q?nbuJIrGEsrhY+nMvGl6g/uZO4UgiHgdcjb6oRO+RFeR5U5qGhK/t8Wuz49VH?=
 =?us-ascii?Q?2HpINdVyZ/sWbBKm+Zso2FDqwq/VPVq00M0+AOkP+c40CQQl02b0peUtuTyw?=
 =?us-ascii?Q?d5xSGTx79h7ABF7jeEGeElC5wewZa3cNBjlI4iUPEObWErCAoartHZmv8KT/?=
 =?us-ascii?Q?JsTVZm4fodP7TOm/c44/Ebp901aosY27dvO6surm2tJK8IDeYpBGElU3GQ4R?=
 =?us-ascii?Q?L0qHdIHy2s9+9/VpIjfSl9W8ZxPfi2lPDsjlhyKu6rdmEMJM0ptBVnXezV4a?=
 =?us-ascii?Q?FqlKonVFGC+rPUVJIDflvSJ7+AfLgDyhMT6XlV7owAdjaj73WBBkleFNlgau?=
 =?us-ascii?Q?hnKo/IS3VGN3K7sGTzL+Bba55tnHXGzgh9VDaaJZRvnhJk7jI1xtYNBRGzdM?=
 =?us-ascii?Q?9MciTMhhguMbnDdN1Sw48bKxg2mMBmd0cwx0dUE4/kWRgWbCSJiJJ8dJmRGX?=
 =?us-ascii?Q?C5VJUfEs+0pZT1Nz+K5s9TEfvZJzwBp6qqiRSZW+pGz9c4ZTleIecn6SosoZ?=
 =?us-ascii?Q?PBWUontPe3jZeegXC25Aycb9iqACbNhL15o/Hn/LrOsJ4egQA2wF07PG4PV/?=
 =?us-ascii?Q?QjjooaZNXXW9fHVpGdjpBtsuqIRH4orvysvB0PQczZk4F4zBGqd8ENIutifx?=
 =?us-ascii?Q?8D+Hi0ezF8xRsh8QVJKnDDyNS4jDOfGofWxlMeVn3JHH/F0QNa9hkJ0QRyA9?=
 =?us-ascii?Q?q+W7DoV6HnTET+NNytwiLT1bD6D+BFak52dZakCjXvViC78l6RglTcx2DZ7F?=
 =?us-ascii?Q?hbo0JPdRsxuN2DNY7z4nARiVr7IgkmV6vwKSI/y4Py+lcfTHuNdZQVBI6j5v?=
 =?us-ascii?Q?iPKCYOs2QOvCxT9Eajo5rZZVBzJoS3oH7tBdlslrEAOLT1huz3drOWZksGuW?=
 =?us-ascii?Q?EJmSAbALbZLpnrLMssU+IS2ljiOAQPFOGhciJDBZIg5NjYrgtM09DSmSD9d7?=
 =?us-ascii?Q?s/NOxX36Y3A9Rjz5C5g5Se7vPbQ6XNzK8dlUhgm1thIOwgeII18eJBAQZhs4?=
 =?us-ascii?Q?429FVdduU/uVDiKKaGJRExS9WSdLOIzStK+VLBV6EUFRcSQpPCJWKbXnQd6B?=
 =?us-ascii?Q?pIpkjr+Og2/cdYbEKAds03kIertetiJdw++JdbNRR83oPvryLeodcvziYLbk?=
 =?us-ascii?Q?kBmR688plGnqCrvnk5mkqu1BUB1SOtUiAALPyi55?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f085c5a8-38ea-42f1-23e1-08daed88ddef
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 12:48:52.0493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qW+i9AZry73ulzR3mV7Kf/eaErksTFDC9x60ru4vG1OHA3MYL8y5pSw8Rda1s9onmBE4Ydv/P58PDVMrPE1/Fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672750151; x=1704286151;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yWGQzroEHDW30ltVRaL5HNRYzAFdRTjU2jyjuaRnJYg=;
 b=LofCVqZAeaQ/HRdEdNUYT5rVcPpJb2umTr2LDmNraWPvFw6PK1mj7JMt
 23Ag4nn47TYxQmflMaEF89ymhDwuFcx73uT/wUQyI65bkbvBCC97QIcAz
 PZUa89jW2iZJMJ7y3Oi55W4WvRKcDJSg7WanPKzIL8mcxu7I1rfjYMgI5
 JXdlCX2iD5w960ftbmjzuYOcsECRUnEbYJUbvYrzUgn9rmV7GSeIQgMTl
 tQ75OgaQu6/58F4/HtTQ76BgGG8xycCvqfTlkrmjtxXYsd73gjcX2NM6E
 q6ewE4vwrWQ/YVsXG8oNUeME3OMMQVJk0IoYafO4eN1SN6c3p1k0ElXVS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LofCVqZA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/5] ice: add ability to
 query/set FW log level and resolution
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Paul M Stillwell Jr
> Sent: Saturday, December 17, 2022 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 3/5] ice: add ability to
> query/set FW log level and resolution
> 
> The E8xx has the ability to change the FW log level and the granularity at
> which the logs get output. Enable the ability to see what the current values
> are and to change them.
> 
> The following devlink commands are now supported:
> 
> devlink dev param set <pci dev> name fwlog_enabled value <true/false>
> cmode runtime devlink dev param set <pci dev> name fwlog_level value <0-
> 4> cmode runtime devlink dev param set <pci dev> name fwlog_resolution
> value <1-128> cmode runtime
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 131 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 278 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 416 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
