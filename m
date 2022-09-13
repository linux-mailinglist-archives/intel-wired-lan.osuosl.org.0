Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0E15B6A9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 11:22:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B73F409E9;
	Tue, 13 Sep 2022 09:22:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B73F409E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663060933;
	bh=nwloPkifCQGbNtGlJM8jo3uqSK9ew8xsZExcxtkUPDc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JpE+LL5kc2amFfBThb+BXiIar8ZKoGCgKpKCr1gRtmar5z3a3eyRChg9NjOtJYTKj
	 6jIkxoGT34JxQzKPstz0EWBGCCbHZseGCVNAmxgPvPwDd6FqZh9k4XVcoog6JN+4dL
	 mWyZDCcyAVTH7hmuOgapHNfvpbVZJh7KnGuWHYv39n639+Awm1GpqTlHighqmFy/Ih
	 X+EiG+dKil78ISPpK/dYADjNONhuY150uDUp5D9eD5NCTBY6ygfvANUr+asm8Pmorn
	 UlMRwENdfi3PMrtrmY/6nky+izLaw+Tq9OYDnpRsFkr3eJ2J2bAjQnRWfgwJcAtd7e
	 p/F/vq1SSVpLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c49wvcMhPcrY; Tue, 13 Sep 2022 09:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04078409BB;
	Tue, 13 Sep 2022 09:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04078409BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C871BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 09:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFA2882B1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 09:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFA2882B1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AE9KdA9d9sb8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 09:22:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1086B82AC8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1086B82AC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 09:22:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="384387114"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="384387114"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 02:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="705482815"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Sep 2022 02:21:58 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 02:21:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 02:21:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 02:21:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bNA/5GtwlaNApk7tZpA5CKj8r1Mn3wJUVYGV9pp//o0SDbYsJRI2rQZmcX4qBVtcyKRH5fSzqX2sZnIDaZB/PkUdWnc4phGZcWcVSGW2EFSRs23gCB/LUdlpcnDzyKRoX33vMG4riUVJLnWRFQzbdCzxqYoYDUEtNW5a2Mfbg042NBP9/ybSL9NPV+m7dAy4bIw3uRpKdUlVIwPYF4B6TQ/iEb2Z+MQdbpHSVeT4L/e/d34sAGDmUMpLlny5tjz7Znqja0wPoMlA3JVbyzrUj4U5DlQgDC8FJ3T+o7JooBNc6Sgf22Y/f8ast5tWTWKY0QUP+ZmBhii9zUA2P40jYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlElX+qCZ6QErfb7Uoplru0yYZc4Ne+N7L/V1rxFaMw=;
 b=DB8gVAoBNsaGs34XJtX/AN10pDC9FBXLAto4Fn4fdj8+bPtuxoCFUWALg6vpAygNPm72o6mRmhaCogSpxEy45qx2krw/698DUF/bRLDeLdT77NBqnntGL/+2mIdaVuXhxqwqGW5pHxaSqyv10PkGnYVqkU8A48IWV/KzCFvtzqvzd/Fdnmvzlh8qQ2gePVrX+mKmrsgbUlE/xuCPIIC+9+IUalZQgeLIeEe5HE34Z3neab7mWDpap2FoiI2PQCDc6g7z0JBQEFPI+GpEzDDm9SRfpHgWOQS8nZ9zyvMSfv6ZWhXPSSIgpcO7XkXk49vOVdR3WnmLKHKSbkP//6u0fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB4584.namprd11.prod.outlook.com (2603:10b6:208:264::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.16; Tue, 13 Sep
 2022 09:21:56 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 09:21:55 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add appropriate
 error message logged for incorrect duplex setting
Thread-Index: AQHYw1oX9MINKcdtzUGjAqL8G2NsUK3dHbBQ
Date: Tue, 13 Sep 2022 09:21:55 +0000
Message-ID: <BYAPR11MB3367B82264677FA081786637FC479@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220908080710.716153-1-kamil.maziarz@intel.com>
In-Reply-To: <20220908080710.716153-1-kamil.maziarz@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MN2PR11MB4584:EE_
x-ms-office365-filtering-correlation-id: 929d6a99-26e6-4dc9-914d-08da9569670c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: COfy76V9TEYjrCuXATWbq9unHYY3SwTKKKCXBmea2/+t+McknhAjNvXOath/BjwFRCWnzrEPWfcvR2W72M8fH98ebTVtoq99rwp7lRcnyGS/klMtCpVrQ6kI1PrdQEOn9heOXheGaGHSPc9c1paZmTc0Hu2CH/mjjE8n3ZyFvk4laPKs90BzKRTFsJdGiexPI+hG68lmYcvXjEZUue2MmsDl6lNSv/tFFqN0kr4wfbtpWFITJ8b7OJktLohz0flYCcQG6FplItmq+7/vcFbfN4E4Z+Dv021hdT4IWRYp95de+Kx4A0+W1y3n71jDyRTmlMq4bJUCs2bFWfSthC8i0GaqlSXXE1G5gQJdeY0/58//TNpgYV1T6hzbftabfI7mq+12tkHVrliafqhineRMXlET4VbSqA7mhYp7XCuqhajnipfaNFdzVoCw64mr7F2QyNI6l3tebKGPvewu/ZFN9MGeDDtHaRnb1JDf2dGVw1tLtNL8RM7aGQPfyylG+ConkzpghOSJDZv54T2KRisg1Nyc8C5Zrf6cI3XUbWsyL9n+CQkLdlVvZ2eBqwlK5XeREZbAZ1GHvUBhdRQuD3ifGR+9YBqI74w/tfWsBSmRzZ7lLyYrBvvA4XuIVqTzVBFPfBO7u16C+qslo8+LuHGTb04ackVP9H7fihn9ONgmLQdTemWimWquwzhlS3GJphnsM26cxD88O/GNE6n7H5i6Tbq2QRXMRbyfWux5IXJCUMPaCq24A2OfnlIXls5+UYhUzCVoTvFXfMe/IobRdlyEqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199015)(38070700005)(66476007)(478600001)(86362001)(33656002)(4744005)(2906002)(4326008)(76116006)(41300700001)(52536014)(66946007)(8936002)(26005)(110136005)(316002)(7696005)(107886003)(55016003)(71200400001)(54906003)(9686003)(5660300002)(186003)(6506007)(82960400001)(122000001)(38100700002)(66556008)(15650500001)(83380400001)(53546011)(66446008)(64756008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1Ti1QkI51crdIrN2rh6fK1LMHyqakk5/x1hW+2n2plGfBGqK81/OqHK1NsPg?=
 =?us-ascii?Q?QGySycDj0rfy8epBq4dqHitNOhuqkE0Wz25Vb4lbSUMaJ3PC4LjN2KjyVzio?=
 =?us-ascii?Q?EuN7CNg33PtTdDnFboxMZ1eX97XGC6IuxXW2KvesgxHSSRrcC6vc4yArNpOX?=
 =?us-ascii?Q?3YrFNiKLGVDiFFhU7UYM77tfEDnU1OQ3bAYlIxK2byma7c85ggap41yrVIs6?=
 =?us-ascii?Q?bBbVG92ccN53810+Fi9v7BlsYtgFsEHd0WUdI3pLxwe6tWDqP9XB1vU0Fb1m?=
 =?us-ascii?Q?W88VUXeWjOZTyLPoxmiO4sCZquu+GJvW00Q48fPk5VTA9YUopA68uO1CjQAt?=
 =?us-ascii?Q?73gFDVcmSYXu4QB3KgSDk4DT2BcnmPf3ZD5j3wCsSssHQAmJvBj3Qq0nRpLp?=
 =?us-ascii?Q?s3YwnvwJLNOiiJTbEqn3vFWBIj0CrP8x3bzqsVljWz9fXYfbOWaQQnq3JkMj?=
 =?us-ascii?Q?8GNLN/RqxWPuGeqxKY1UeSJtN5ZbD2ZZWaaO85e1PxGGiFrF/fpJsJRdy16q?=
 =?us-ascii?Q?Uqb7k7Bho4Ma1Kgyu41VdpyoPQGIBHcQ2uZraAPIlp8iDq1t5i6BQ+EbiP1F?=
 =?us-ascii?Q?C9QjMIADodpcLmSBwaqLBx/+pUJsiE5v84+gCHXmGc9xWv8FWyEKOIWsx8gA?=
 =?us-ascii?Q?PHMN3FxNhlfUweOLJE8ODNywOE/HdvuruSwdHnfU2bY0QiHK1x2niY+OBXpc?=
 =?us-ascii?Q?/O+YlT3VhaVxJPhq51LuvUgg01ZmLhFgzKRR8JJILviRnrqQyYthhBdwlEjt?=
 =?us-ascii?Q?ZmeEaqYy9ARznJskUZxK0pJcvLAcbRXGUDsrRY47rfEtzHW8UjhdIStGbTSG?=
 =?us-ascii?Q?Dh0fD2LzoEmEj/wJMRnOGn7RPAKA8qfTNoFMIvxmbUSOXuzXxj4yxEzHFPJL?=
 =?us-ascii?Q?g/sp+2sv+tMxmbijkMFTAdOCSA1Y9Fi/386985cB0R9M2qp6TzyLn900eEfo?=
 =?us-ascii?Q?oyunIINCO9E3WxJXMhat69Iclah3R4DLoi1MytedNzwYRKwSegcTW5PWksUO?=
 =?us-ascii?Q?wUuXfJNBKHaCaK/4BM3UeJIPDGY0X+F01ipWXNkJHGmwRtkfR2fms1eID8A0?=
 =?us-ascii?Q?nH41ETQlUV1vr2RbtOFvWHTBq4LfeB+btQxWusj3shF6THYw5pmNSJGsvrIO?=
 =?us-ascii?Q?/czWX4C4HsR4UEqL70Qaroo4h8buND8PqIQHStu/+85CKuwfuPB5kcpeweRO?=
 =?us-ascii?Q?hhxUSeH+5ed1s1YauvNsrZzznN41BYy15Quf6v8p+n2bGcF/ThLjjM6tzN7P?=
 =?us-ascii?Q?Vsh+l2yp7fmGvDwtxfdr7iw8n+8Fgz01LsQcQWrfpyJYqaIp0n9XR9tduKno?=
 =?us-ascii?Q?Bu6BwGF0FBquQKzLJ/sIgQTYVgA0XwjgWgODiaGKos7WR3Mw9sbHNRCrolkv?=
 =?us-ascii?Q?Rn4pgX7hqTK7LbcYY+rUxjtArH5TS/rgPPUalwP44uOU+86Tb1Pbq3cYLpnZ?=
 =?us-ascii?Q?wiw4rN5AkLAkF849PAETTdSpTItDpFVGTqkTVK0VegNFSi4V4llCFSBiROlH?=
 =?us-ascii?Q?k1X27tvRWlOMpHtklIC7NxihpMWamWlipSp8LLoW7gtP7LzDX/lASsmYRO4O?=
 =?us-ascii?Q?pGmMLN2rxPYbXmB5sUXxJubDmXwvltm4zhEaWQLO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 929d6a99-26e6-4dc9-914d-08da9569670c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 09:21:55.9015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h/O9/aEbpo9dgBZLzOtelIHwr7W2/L49FvsW9GTTG9kMYDctrkx1AfEMVS/33iAA8a++MwYcBpqoEYlIq8LpuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4584
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663060926; x=1694596926;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=64O7KNqF9mOk6Mzc7MZ5JUhpW4hlW1yrBMn4XY77QzY=;
 b=Dotk7Yx4bkbZR/+/+AXxGa/zJevchwkITfOQ0v39DOabsiaMqqTnKl8y
 nr8WpYT0KCRhTXBbFobl60UPjLKnD+M38nDUh9aKCYTn24Sdybj4Q1q0u
 W8JMani36wJ8U43BHZQ8Bwc3uSLQQp+hQXnJByr7BsqCRn+anay0DPfb7
 WPvh+RERAHzvFGbdIaP2GxHwOsXte5IxIICB4m+6LbZIrJQbI6zsffhZQ
 ABMyBr6i5k/Jq/eCRVK0s9zR+wol34udwRvDfCdBDNFntPrqNhux4+CCr
 Y/jH96wf9U955SKoVkQqYbJYH//n4YAxFsGBWdoyKr0azcoXoXFmN8OLW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dotk7Yx4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add appropriate
 error message logged for incorrect duplex setting
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
Cc: "Kowalska, AlicjaX" <alicjax.kowalska@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: Thursday, September 8, 2022 1:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kowalska, AlicjaX <alicjax.kowalska@intel.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add appropriate error
> message logged for incorrect duplex setting
> 
> From: Alicja Kowalska <alicjax.kowalska@intel.com>
> 
> Nothing logged in dmesg for attempting to set incorrect duplex.
> Add appropriate error message logged for incorrect duplex setting.
> 
> Signed-off-by: Alicja Kowalska <alicjax.kowalska@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
