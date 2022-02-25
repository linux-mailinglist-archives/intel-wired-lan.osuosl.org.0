Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 808524C4A67
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:19:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC5A183E26;
	Fri, 25 Feb 2022 16:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2D8-EO4g2rnQ; Fri, 25 Feb 2022 16:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A583483E45;
	Fri, 25 Feb 2022 16:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8B21BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:19:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C97383DF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cz_1VjeUr7v8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:19:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CADA883487
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805964; x=1677341964;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sa3BwFbT/6U3E6h/p1XJnA+moDqjGjS7SCf1RLFQj5E=;
 b=cN+SPzqZY7FiHPz1NXhMbjDRqFfybDTZXOx3Q52EKGWyiG+nAiXBSmyl
 pTFYbQ92V9b7M44xINAh75IaYXeozRBo6Z/wWLxnnSSKjV/VTaeCXcHin
 sZ3f/7T66CcjLy5q3ivev5GGo/x0Hr2mXEU6UnDjJYAv0R8gYtJZcw1Tt
 jULHJusSIOTsbMkSBMKs4IGXY2HoYHX8OxFnpYxWeZJQMCHSiqws94ex6
 93ZcRfduyykKhV0/FUveK26Jdncdyd/1fD8HRusrkrzbIWkEN1ZLi+NDq
 gz5svnAzOnapvheg33RmWDgMZ9gmgji15Hb1uxJiKnlJo04aVaIe0Psqc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252255151"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252255151"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="684691339"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2022 08:19:23 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:19:22 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:19:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:19:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:19:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XE3bV+jVpRp0gGAE3oqX9e6I06jO/xtbXG0cFyn+Yzlr8IsaUxDzNm0/cHXpPlMRsvsrDZXlOIzdFQreGe503JKawr42oFok44Rrf2nE70hrWPPjv8MYfQ7TNXJuOD0YDYEAh1/0f6819yLCGF5sydAtsny7TJWruk9u2nWVHRRFrNBs+8NKN6fNPGl3PwlQAvIjQDZy7NLkpxSI//6Ts3bh60ZCMzy+uLAr9am6cCt+s+cNsZ4woHoiZ1SPdomUH2Bwul4zRdZSrwNL3+6zr2+ku82UYhDj55C1NAa+P7IASRkn1TVcel7NKX0RZHjt5AemJzqu308AhBieIb8RWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OHdPh6RKYB22enhxIkRT0Nly74W+BWsfJ7IhqomGd34=;
 b=SOGvN7PloLf6/842qGzvQ/gp9ODWACtNEOeEQ5BPLPKG8kcejR7/fgH8gB3mA/MjYvzrj3Qugc6hTezFp+WY6ltVmSgSWAq3Hp6yXVCaWrKHo/CpDuLy/GI6HPIC5UbSX36Oe9QHUZT/orMcf9Zr6SD0CnzuwYMfz4Lka3VsfJrDFyTVZmmL0NP1oQYToiwq9lAmPFAHeybVU0brbkY37RhBw2WoyxXyrctTJrkhP20q75Y3QqXAiWju8ikTH0zuDDRfF1rgbbwy4MBOfxOjFvL3bLvp+XvrCagCi8bOIjlcrWkl9YUw6JiCwWH5oAFzCrPkszg70b0sJaHPtL68dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN7PR11MB2818.namprd11.prod.outlook.com (2603:10b6:406:ad::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Fri, 25 Feb
 2022 16:19:20 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:19:19 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/8] iavf: Rework mutexes for
 better synchronisation
Thread-Index: AQHYKLJXohSDJN7sBE2weNFyDi7hxaykdVlA
Date: Fri, 25 Feb 2022 16:19:19 +0000
Message-ID: <SJ0PR11MB56291FF8D8F7782F07179E54AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123549.29391-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123549.29391-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ef4ffe4-3130-4af9-8794-08d9f87a93d8
x-ms-traffictypediagnostic: BN7PR11MB2818:EE_
x-microsoft-antispam-prvs: <BN7PR11MB2818E0C7025E46082011798CAB3E9@BN7PR11MB2818.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h1pxUnCiK7MOGGo5+9ZH9lahevrCEgjyZbcie8WmPaJQMTi4mcyGJ8fICViHtzEZ4joqlP0P/ZbVoKWPRFc08jZMHWMOQRZ1Q+ZQGUUPbiEB652ywbEJ+6Vem770a7NZ5SY0eBokFTcXRPh8JCN65FqylXh+Q1Gi0EVI7cq4ofcT8wlyPR8/SVeWxk7Uv4jF/z3V2BrkSwBbCJ2BUpBkpK+kaYcZwt466dKkrvPKyw8zrZiG25t8ZmjO9nE1vU693QeI+vTT6PASWGBsEP00Z6k5O8tvfxlxz+R5WzTYe26byWnhwcIARSVTlDzRKz5I1Pgr5X3oWbsXafdhnSDcA1ehttMJZZ4odin8BmdXZ3XNbk6rzQzjiey0sHHgbmTqV8URrzgXHpQXqvNQ9ZtACZmlj6F/kwCtHS2R/JXn3tcBs1HXdNdM/1sAt/68KbvzowU4v4IHcwt4pdFvBPaxDYSA3jdvbau4JDDUGJg9F/pPkKfN0Z1dtxUui3kwDBfAbjCmuSFRA/6WhMWOAmc+u9TpqwRigA9jr+6RhVsw20FaI+IL4mO6GmskEE9TI3QI9kcSSX4D6OOhumm0nmY6/Y8mvlw2dUzhVKC4D4lp2pe12egOzKRKJy5a4kk6RbyKCAetku3kEVs/ONYUUfxzDATRDtBE7zkb6Ja0jMEJ/I9gbTMmHvXqGU2/FMyxzW+9grE6CvkPr66M8zBdseOWNw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(6506007)(4326008)(82960400001)(122000001)(38100700002)(52536014)(2906002)(107886003)(8676002)(316002)(38070700005)(53546011)(66556008)(66446008)(66476007)(508600001)(64756008)(8936002)(26005)(33656002)(76116006)(186003)(66946007)(71200400001)(5660300002)(55016003)(9686003)(86362001)(83380400001)(54906003)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gzFmp/GxOHCTz35aqvzW5V4LdkQgh2h4CLgMnAarUTHhHM892zAun5gkR3dc?=
 =?us-ascii?Q?g5VwFShL1TiiePjBhXX1mz/MO0a1lfYtNQdzPGFir4ZSvabMZ6WY8mBcYU3Y?=
 =?us-ascii?Q?55cN7CBSN0xO/0wUTP1ic+7NDFQKnudZ4aQJSkSR9i2cB3MLhXehH83Fn4Sg?=
 =?us-ascii?Q?cFrnXrDgxbXYhHXqmVJJEbXpA/upO43G/prCv/3LLnj1hTwzWWM6txJ9siKd?=
 =?us-ascii?Q?lMffErabDRxFuN6O31XSiOlLR9/kJyHhwpiTvXJ15BkbdtJDpi0G34Fq5QVW?=
 =?us-ascii?Q?ttdSg+sVzmzQbKpOad8taXRHAlSPP/RJBwVZgnIZb6Iwf4oIxYjMywi53421?=
 =?us-ascii?Q?QueihiHxKHjFgHB5xmcfPFlZ9SKK1siUdC+xq8jy4PJSDM61wGL3OvXolJYy?=
 =?us-ascii?Q?djnK4gsfV6pOu19w43hy9lyQEu58VmEw3GQOD+EjuTfk4PEOZ6RWr3V7VT3r?=
 =?us-ascii?Q?LSlQTcNs0A2lWFm7/cfCZa7OCG9gSe9RdaGCKkl19DAg/Jev/L6LKK+cadQv?=
 =?us-ascii?Q?g4hIbnLaORupy3sIDd+9SZhYXVPBJ+Awv1A6K262MhFh00b2p8U1WUuZDSJX?=
 =?us-ascii?Q?waF/48W+/bljZoA4MSX/Uhp6yDqxfMiuU1NCgHVXqny8PeDrAk1FoM19gVjT?=
 =?us-ascii?Q?41uCn+ytN8sLyLjLV5o4E91V5nE4E7PF5IEIBxWonQo21w7h07PuCZMZEiky?=
 =?us-ascii?Q?M+q5eYF+QfrjtPXKcDT4wZJWMtId7xowgoDzOD3YnD9DQUX9vnm02W5fwCWe?=
 =?us-ascii?Q?jeJ7v5wcB556svXnZAEGevyOkitT1UuilfBEW8OdFgt6VQciQB22QwdnpPZ7?=
 =?us-ascii?Q?V19myVCCejn6g+SQIxuwQI5zC/SM0jfeKloCJhoAq8sINFMiWlkGjzRqKGAH?=
 =?us-ascii?Q?IA8u0jxEo+C7Cd7JP3eYIx61dzafMIOQT4uwwS2QDJHj/utYDGux1apnXv0+?=
 =?us-ascii?Q?4n03FIC06K6Wqm35EznQ9gEvVcHGAbVIyyYr4f2bwyRhME3lRLJm7IHdMIJb?=
 =?us-ascii?Q?PjpHAL3ypQHlCjdLDZeTHtQQwJ7p+ULLyGugKhhRJBq2XumGhtWbm4lNEx2a?=
 =?us-ascii?Q?ukhaXz3cjnmXfK97/ZrU6naEA9NQk5ILVKDJSf1RcNjZczUVU9FvSGpdHRT6?=
 =?us-ascii?Q?TuCS7u3r3w/+HUTWx0gU6npqrRKGnEbf/E3A9cQWjVHEyLrTsAjCD0RwkeZ4?=
 =?us-ascii?Q?OiPNhRz3niqZnUEJjXd4huEIJMqqzAXirCTrbYqFumb2cOABkQn5ZP4ITw58?=
 =?us-ascii?Q?qd+iEel4g01y78dqV5RhoWXGWD6GyAO8LElfVicNZAOEnNYAPZV3uhUCzmwE?=
 =?us-ascii?Q?bUMcBh6fp7YMcU8C94zWE0H5wzJSSB4xMgc4gP1LIlnrDahQpUkDJWv846t4?=
 =?us-ascii?Q?fZ3dHKQaJvsrh7CbQVuX057jIYTDIfE5pNozArbs4eGuAoDyhKwlpORg9lct?=
 =?us-ascii?Q?reyrwz5AA0yFDVq8XBaRkCW6UQZ23FDZZtVahpnllICS7fifbWa+pLB5YExl?=
 =?us-ascii?Q?IB2jmbdoUI5ofvrfvOwkoMwgVe3mHjQk4O0FQAftzsZDUH4z1Ko5tERnjbJa?=
 =?us-ascii?Q?7Xyxa96xQuNrXorDCOmGODBIpY55eyfWXLNo9bIkD9sdu8f3EuLbQ6z0LSno?=
 =?us-ascii?Q?lg9YoMw9BUCF+8p3S4MC7diYsPbdNXEdMnYjZx9g08iDPY4Qa94Km2jk3lQ2?=
 =?us-ascii?Q?eU09lw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ef4ffe4-3130-4af9-8794-08d9f87a93d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:19:19.8682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5pHg9LexsyJgTE+W1lHYuS47XpzUj1+504J4aYe6ATI/6TTvnaxlGrVWU871L2+BV2WROezhczHXVi7VSNsoLa+3lVnyaA3Z7QqV38F4IUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2818
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/8] iavf: Rework mutexes for
 better synchronisation
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, February 23, 2022 1:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 1/8] iavf: Rework mutexes for
> better synchronisation
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> The driver used to crash in multiple spots when put to stress testing of the
> init, reset and remove paths.
> 
> The user would experience call traces or hangs when creating, resetting,
> removing VFs. Depending on the machines, the call traces are happening in
> random spots, like reset restoring resources racing with driver remove.
> 
> Make adapter->crit_lock mutex a mandatory lock for guarding the operations
> performed on all workqueues and functions dealing with resource allocation
> and disposal.
> 
> Make __IAVF_REMOVE a final state of the driver respected by workqueues
> that shall not requeue, when they fail to obtain the crit_lock.
> 
> Make the IRQ handler not to queue the new work for adminq_task when the
> __IAVF_REMOVE state is set.
> 
> Fixes: 5ac49f3c2702 ("iavf: use mutexes for locking of critical sections")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  1 -
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 66 +++++++++++----------
>  2 files changed, 36 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 59806d1..44f83e0 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -246,7 +246,6 @@ struct iavf_adapter {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
