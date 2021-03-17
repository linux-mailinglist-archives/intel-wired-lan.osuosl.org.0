Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1785D33E5FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 02:28:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88398606F2;
	Wed, 17 Mar 2021 01:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9o47JoW3lXJx; Wed, 17 Mar 2021 01:28:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BEB360684;
	Wed, 17 Mar 2021 01:28:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 899731BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7133C834E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07Au3m81OpxZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 01:27:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 905728344C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:27:58 +0000 (UTC)
IronPort-SDR: yGh+VsTSRlpA1cAc3gpeqX5tkAiFN2QGjepdaL30sG+tEkcCMg2oXK7dJlUMY/4Xj2/AljRxKH
 pgadAM+3p9Qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="189413601"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="189413601"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 18:27:57 -0700
IronPort-SDR: oIDr+z9ho2bXJzs5UxbLksqGlwHMPE2vasVPuKp4HIT0Oe1ZCZfdFNjq/vRT0kjHM13gRg0+nO
 AI2+W6/Z7aUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="412447603"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 16 Mar 2021 18:27:57 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 18:27:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 18:27:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 18:27:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 18:27:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kjgAHSt6hEfBeL2Tu2pYshmwH/pFLfn/rA2UHiUr+OTUYNQ/OY2ZkpQ9qdna9tybHTkuLA7ICapA98FdTPZTtgoPlZiM2ud3Rn8tGQ9xnJtfJ0A44XXk34EDjgBh6sq5bn9d7Q40HZlTlqZOyxoNMRyQVzFPzXqtmJrVvspBJPZWvkKI1+qEYEMzD7ZU6WmCJLqp8/dommAqHDr7zQWpYBCT8IdWzGCr1zjf2yaOnYkJtiuh1lKz01bhgEyH9OWuD22OIGEirlA9NA8AJIAujWrdsg/d5inRxzcv/HLF8kX+exVoBvOCKhoYXjI2E4xwiE7ZqMxHfs70fyNL8RJS6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gpKDvwk1tqzmrNEq+RvIrpv9azXdSKDyxGPvV31iurI=;
 b=QXIvc2psn4Q7A5dBVV3mSPR26Q6Gk5Kz7TPZFGroHnWuL/gsFq+xUaemGb3BhDMDyRiDzK/BGKKv6sxJr+k/f7N2fhhfNK+Jv9IiJmkFr4BYUnYxOF2kgpqsSnMowhDMbcJ6osIT4fPiAYnTOnnphq1cNRCdZdMbIOF1ACfzTQ2QFYuLPbCChqeQD6/m4ArhFyzbg1WTj8zbEoaDBs1p34h3gzDC/RvZx4S7vbHtmevoZiv1FMqUrrrinUeSFzcglgiAMpiGM0Bo2Dc+TT6B2xWzwaehkkXfTwDIsTbAG0aWI/LTv0qPtgwaVi2DjlaYr1T/Q7DIjzHER5/8S9M3Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gpKDvwk1tqzmrNEq+RvIrpv9azXdSKDyxGPvV31iurI=;
 b=Tyl9yJHMsOTM/8if3y/k4MtAQLKQqXYL7WWKeK4amFOoLVrxW7W4hN6nHFieZAR1rGn9QzTTxGFJScB0O/uMjA1b1FkgAeLuI8RQEFCeZdlBhewTLGmvZy6h58l2OTMnmRgtjLOtcf69oAtsuluE2/yAkB4uVCynSQ6Pdg9DYVg=
Received: from SN6PR11MB3101.namprd11.prod.outlook.com (2603:10b6:805:d8::23)
 by SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.30; Wed, 17 Mar
 2021 01:27:48 +0000
Received: from SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656]) by SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656%4]) with mapi id 15.20.3933.032; Wed, 17 Mar 2021
 01:27:48 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 14/18] iavf: Add framework to enable ethtool ntuple
 filters
Thread-Index: AQHXFJQBE15n3DVgkE++rDtqF/AV3KqG2hFAgACWMTA=
Date: Wed, 17 Mar 2021 01:27:48 +0000
Message-ID: <SN6PR11MB3101FEEFAEAEA81F3DCC6439D96A9@SN6PR11MB3101.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-15-haiyue.wang@intel.com>
 <BN8PR11MB3795316912F7B9B28CA10566F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795316912F7B9B28CA10566F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: addf3cd2-4906-4361-588a-08d8e8e3e002
x-ms-traffictypediagnostic: SN6PR11MB2640:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2640A2CDDDD75FBE51DC2A4AD96A9@SN6PR11MB2640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HmLQVM3vT8f18+YRTOcBeOFLtfsIOObs7wdXJyhzoO0rxEeNqCYLWJWHV46GqxkQws1V5/RPHltKiBq/iLvGwfxRthJI8dnR1SbrkcqonE1O6yjw6nbyQ5M2lVR+HsjhSod7hp28WIoA6Nt/boC4JTYnTzFapyw5+V1PDplC6+4TXVWjfoA91lADDHdaMnJSnSvJTmVVRiz/9s79A4xtYwFCVoZUpNIb+QIPt2kfjPYqQkE8J7vSnj1yHk2SjZfVJLtLOm08xguNcQ12t9R+PLnnfMQu40PPn8ucSJr+e9tNS6Wrk9UgMg23XCaFlmJShZssJ3vPHdeCtM2CMHGt5Ds/kgo1buFyiUb1d7ZeD2Rf4NBXUiaMmWHKLvCrXCeYpyf799v/GKMR4DCJzg3+3Xv/bF2DStI3w1tS01UObdkEb55c/Ih5rW0GIz3tnFrn59gEq3IB3/3DjLg5zS3Zil7esGMnx3mzPtvsNsQRTR/lzZV4tvHp9WJWEmO459ofOHrFFoQEUUAL7KsU8jLxhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3101.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(39860400002)(376002)(346002)(5660300002)(6506007)(66556008)(83380400001)(76116006)(316002)(26005)(86362001)(9686003)(4326008)(107886003)(53546011)(55016002)(71200400001)(64756008)(66446008)(8936002)(33656002)(66946007)(54906003)(478600001)(7696005)(110136005)(186003)(2906002)(8676002)(66476007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?goFK50WD/1BYCwRj8wdhRVG8oBAm6KIOBG7y4v+uUHtMe2aCTXphHXQV4dfX?=
 =?us-ascii?Q?rFPUcjgtEtXCBYTkA+DLLTRjLObYoaRBWEA2d18yxzO9VVyZUS54XtS1/gTf?=
 =?us-ascii?Q?tue634AAvLTn07n71oag/gUuZxitdnw6Zt74n9R6pmXHHytVoZ9JvvMFJ4fL?=
 =?us-ascii?Q?jfmym9C11QdEnlor/e9qFnsVCwTZbJucN3BaRN5Tmilyt47zOFI1eBfdaUdp?=
 =?us-ascii?Q?da0FAaH7+g0J5OmRcsb86UZxZFteMeC4jwchnisWDIdB7wXd1/Yf/n2eRsG2?=
 =?us-ascii?Q?MGcszOQPjHVymYKU1z/tJI7pDnRQTA3Ic8atIQppW0NOnVVRovxhHloO2qpR?=
 =?us-ascii?Q?DjuRVHT4sN8H6ntNo/yvJW3+2mIm7/A21oSTwrOWZqDawkMElswqbdAxJFTt?=
 =?us-ascii?Q?RWZeKGuQvVQNyZBZ+F1soWZCbjfEBtoImwBQkIcLEphmPjdAqzMW30P+Epfj?=
 =?us-ascii?Q?G0fO1g0LzM9Xis8xYO9C0hb4mmidm6ZUGnHjNW2GEcDZtuPW0WdV4Vozubds?=
 =?us-ascii?Q?yIV6IPg3T0v+n9wcsbZe3sqkA29WLtIckOgpCdUwtHt/JJLHbcmKd9BwFkbJ?=
 =?us-ascii?Q?AZOUTRv5glxHmqEqRrPKUrPBbHSRv6EUTbvs0WSJAF8NFJ5v0ev9eX8s4P7W?=
 =?us-ascii?Q?XzRaq9xEit2ys4WdVQbL9jMvwJN52r4MitGbdnxmwZZ3N6lwgJVOn/6is6b3?=
 =?us-ascii?Q?5fkUzXJ29H4FIAC76w8Ayw+GxOsFJn2M+/eXnZKBLswp2QkVuQ5WbvW51smN?=
 =?us-ascii?Q?ev3RAy2CEF6KnAurGfd1C0ylMrAcfvk22nTZdp/FmVQK602PpGWXy1tpkHhF?=
 =?us-ascii?Q?kYIMuU86GTG9GnQGS+zu9wHt75jKeY0dFXVNcIK/9pE6WqOwTwqn+qm8HUmR?=
 =?us-ascii?Q?Mv5+KeFhYHQnG2zH6raSFgxD6GtE4rV6twLy0RrMLKClL24pUQkxGA4eEgR9?=
 =?us-ascii?Q?rUp22MRbaR8lmjLaKz27aymeJqnn5ueq5+SqZu5zhP45Ip63T5dhohR/nreI?=
 =?us-ascii?Q?7bHsmzziQlOmmbkYHXxIbjg9uFj9rZxIHSrDNQiWLx07qLkE64dP2jidYLMg?=
 =?us-ascii?Q?E8FvUUGSxdYKjl4Nd1PEFGRvWsGTDYR4u7SDGcR6zQtAGet5CqqwKNf64z1h?=
 =?us-ascii?Q?vWhyMquG+qgv1gPU8uIyKM6R9Npt0AZLiFBeDejfz09rLXxULnnFY8B4696E?=
 =?us-ascii?Q?4BddJfWAsYvBpY4xjUXndKfLDMQEFTpKB2cuxbmC3qJrYBAMNrsS/v579Pa9?=
 =?us-ascii?Q?d08tyMs5JBKFBwC7qKXv0mAPWGzlcXaIqewjyo84z5B+4H56C9AuqIz/h0iI?=
 =?us-ascii?Q?UCE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3101.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: addf3cd2-4906-4361-588a-08d8e8e3e002
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 01:27:48.5256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nPQmwshaK90AzG71q19xcHIhEhCWxpg5jukJ3jGTd6vQRheZcy4uSNxU0l6AejYD+GfpiJZUTL9mr++xe8k5ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 14/18] iavf: Add framework to
 enable ethtool ntuple filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 17, 2021 0:30
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Chen, BoX C <box.c.chen@intel.com>
> Subject: RE: [Patch v5 14/18] iavf: Add framework to enable ethtool ntuple
> filters
> 
> > -----Original Message-----
> > From: Wang, Haiyue <haiyue.wang@intel.com>
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> > Subject: [Patch v5 14/18] iavf: Add framework to enable ethtool ntuple
> > filters
> >
> > Enable ethtool ntuple filter support on the VF driver using the
> > virtchnl interface to the PF driver and the Flow director
> > functionality in the hardware.
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf.h        |  12 ++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  33 ++++
> >  drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 +++
> >  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 187 ++++++++++++++++++
> >  4 files changed, 259 insertions(+)
> >  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.h
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
