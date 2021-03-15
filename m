Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C9D33AD3C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:21:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2270430C0;
	Mon, 15 Mar 2021 08:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lLb1yiIp_kRO; Mon, 15 Mar 2021 08:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 917864016C;
	Mon, 15 Mar 2021 08:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD8931BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C4296F52B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQwCNcpUQcNV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAB606F4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:23 +0000 (UTC)
IronPort-SDR: uTzSgkDVpPKz4Srqh6mZgCyerk+DuLpo5Ej8mckgrPs7NW/OLc6Tq9mR2bXcHNKBBYy6KPtUki
 BY/IoH67HjYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176183262"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176183262"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:21:23 -0700
IronPort-SDR: xyApw+EMKIOsf4ch4cj84VXf4RrS1BwNH0WLu+HL/lE2mFfY+nmtHqPPlL4NLLyJwl0wQYylQT
 f0d04/x/9wIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="388027542"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 15 Mar 2021 01:21:23 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:21:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:21:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZs/b275HvGuOmHFmVggeDNblRoUKpRd/YVKT0eZJD+Lt5Y94PozI8AFNNLyqAuVqMQ4LNm8GNzWRr5AmylKy8gjU5rWqcbYQGl5rnLYYqe7YZkNYmQiu8WFtQ66GBUm9B3wVmBecqtZ4UeZqPgjGwSlTozbbTwX/vho95N7Oqaqk74tVKUijGDpM9CeEBvwipDUgdHcp7cqFiy4RQ7r8C00Hp2mYZB78km5OwjvYX8m1URVKpxCU2GWpaXuRN2qxLIo3vLent5yxIAo0mdLyTzJvo8gE4q27DzC2MU5/pIXIFsGwfWBcV9nzu03wHJLtQjAVpkwg6XylTnzt2Z5/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKwrLRMLxT+LxaCtuqUhVvFAAwltTMaaYHnJe++J/I0=;
 b=GXMcanqN5EC9aRgl3GlVELEZg26FUfgntpZtGAYQgMc29LMfD7BOMgMndpWuQuhCs8taMaWLSqzxLCDEKP3NmKLVOa9LJ3dOcf/Y2L+qqXydzEaj46ozM6MOFEm4rnROGTQ9y9+hYt2JklMlXvOZQFn0/EwZUo5KDJ+E2gIg00xJE9Oz/7sBlYtNktxKwFjPt27dxJw120jrdY0WGBGQtyutSfxyBJVGrn/qNkaHX5gUS53p3m4KOklQkstPRYPQfYAs4ti6jl95L+7lvh33xLvAE6tQGxwSuH/Y7e/QWvQmxQPHBue/2m+Ok8dyFl0mDJrc2k1qKJxwxB73z0/hFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKwrLRMLxT+LxaCtuqUhVvFAAwltTMaaYHnJe++J/I0=;
 b=YFXRDLcIsJ5869/qv1JQyCvWhstEc5Om7Xd30057GZDGeKy5UhrDEYTOm/GSfeffrPf2/qNu9xo58jOqKY53LHqgdz2cM7X/Nyr2jRWuHD/zsYEdysOxSLx+JbEisqyCAMHOPoAfU7UOQPKhNIIAmxm+9ch1vj0EooyyC/Cr9sU=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB4506.namprd11.prod.outlook.com (2603:10b6:5:205::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:21:19 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:21:19 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter for
 AVF
Thread-Index: AQHXFJQtj/5q248XaU6Kdk+VjJ5LrKqEvu+wgAAANSA=
Date: Mon, 15 Mar 2021 08:21:19 +0000
Message-ID: <DM6PR11MB3099D33816D38541530E9E22D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-12-haiyue.wang@intel.com>
 <BN8PR11MB37952BED7D4C25BBC4D09A42F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB37952BED7D4C25BBC4D09A42F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a62c457-72cd-412f-65e5-08d8e78b4f7c
x-ms-traffictypediagnostic: DM6PR11MB4506:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4506A843DA9D7120543DC75ED96C9@DM6PR11MB4506.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NSqMTugw7k32FN/9pXtXzpzlsh4BKnL4VB1WDtIaKd1wQcRlL/sEYUyzLMs7QRKLuBrT8H5sGlj/OuH8gqbtrwMFBmPWRLzUWTpazgEM0DV+YFUOfOVdml6Bxwn3tsFTAEY8lTU6t68jVhRZZYQFKrCuDfEIm76v0m+2z4UZTHXIQbzTs4tfFlDQ7FJfuEj2DVOBLRM/vZBNe4Uw02z3dfIPBqRB36k7d7nYj12iR4j5VgC0EGlVDyP3SLjlUXdyTg6GEFCm808txiWRfwj/wLejymWSp1vg4r6yoeJyTA1faEYpOw6MLPaXJjZP7ZeDMB2laHGJEQhlSItrpuaXgw/AHBhCGC3/TqXZ3x2apzmVjhIHfBA2spJ+x83dVE2BZHkvn6mrIA2hjoo7TVJxf2p6EwhMGJ09dKhL1J/+F4WT6XlxZ5WziJpzur/P6sR84g22UZ10v7uTnh5dJGOlO/MUo3fCkp8Rt8iGyvbUEWs5/Zc6/oDqGrfcYfxApNNg1+2Yb/sIgQuwIL2VxuGoOmkFCFRnQSZXUV2jIBGzrjCGdvou1Epfd75Ft2kxiTPzeobxaYbI+CGhZW0R5TfHwBKSLe2hucWi18zxkMJJw2K4j4WedHTp5qRXBPDAYmJq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(376002)(366004)(136003)(8936002)(5660300002)(55016002)(86362001)(966005)(66556008)(64756008)(52536014)(66446008)(110136005)(7696005)(478600001)(66946007)(53546011)(6506007)(316002)(9686003)(66476007)(4326008)(76116006)(2906002)(26005)(71200400001)(33656002)(83380400001)(107886003)(8676002)(186003)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?UEp0QRVg3AMJbhkRFBIm32s3O1HiP3DP3bkvARRCKITsTP2A1rMwkzoHKZB+?=
 =?us-ascii?Q?cPb1nKIn95L7kjlk3uOeYYKtICDdrKOIOntm6uSDVEHA2t354BAmkfZZ/FCg?=
 =?us-ascii?Q?/EMbKXt1sw7kBuvDWUFISUD4jYbmN9M+kGYjJ03r1GGA0kCJKMlwh5qhDa51?=
 =?us-ascii?Q?YVCenfVSO1DyBvGS4R5W4xNa1FDQ/uVwfSJvN2VUExEO046h7twtEfJxocAk?=
 =?us-ascii?Q?lK5gxrj1KirBJnUqEHXk89AdLU9ZGRqLxRQonpzGQ9iXYjzjw0joUrUepJqw?=
 =?us-ascii?Q?MgU8Eo2ebe+EwxDcI+9zalnCmvHGOzl+ctDnBXS9VYkHYDuoIkSeIWR3z7Dy?=
 =?us-ascii?Q?4HH8iEwOfrcKSF2i+Ax2s9vITmnRp7gLRax8mWCT+44EKmU+PSRuto5OCjy5?=
 =?us-ascii?Q?J64zfp+YXDS0jT5nAg0o/64XB1rotrC7Gfhlv+JM72BcLGtZoXTQiiM+iNi6?=
 =?us-ascii?Q?Be3GiV6G2x6yc/aN9DY19X+OsyNLJu46XIGDehmCSbnKYz+RKvlM28hWDD+3?=
 =?us-ascii?Q?rWMc+vOKy7895+HysLfAARWxSmWUsh5qVjA1/UI852OwISSU/2cOnjijOaAH?=
 =?us-ascii?Q?1LIbp3ua20QDuqTkXQDeRVZYTY6g+1zHDZ6HQILOz3ZOw4QSOEn3USctYXaf?=
 =?us-ascii?Q?1rRTajZ2djzcXfQjNGIy2xROw9R6onFVUGTf5stwoF4+As1kPGH9S/FdDDgq?=
 =?us-ascii?Q?H477sDRE/+4LFzIsyjr5nxsjl7qz4IzRh7PPiVzSlICLj8mPMfSTXe8CLGJ2?=
 =?us-ascii?Q?mjN/WC9pWNTFqVaEXeDeDyw5CxUDUD5SzknxizQiQQlu4E5PYkxbUpZ6MQhR?=
 =?us-ascii?Q?1YzHVM9061zCOEDQoM/ib6esFNJ8udRydXZ9pqDye3Pd+jW4KvlrztE1LZnT?=
 =?us-ascii?Q?E1xfXdF2uKmFyvW+rdCYxy/ZfpjpDkqhSbImX7KWPsyhOVz/trkpPpif/GAa?=
 =?us-ascii?Q?AJhV5rHJj2f7eRpKDFyqNSKnUx79lqDGEEJS1ujLXvij0nvlIK6iD05ELOYP?=
 =?us-ascii?Q?Sr1qGNnjZhE0GkcbZH07LMnofUL9sssUrEN11mYRyhlbz83eUhZcyjAwUWLz?=
 =?us-ascii?Q?nVMMpBfXu57k/bQ8a3GK0zYalQEuEI2/SG2JSQEux15KqVJDxnr/8qggKA8L?=
 =?us-ascii?Q?38Oi6ui7L7Sw8iFaoYGEOF1c61v1N/fxu2C0nIRRIw2KTULvMHdT3fzllSoB?=
 =?us-ascii?Q?HZqmEqBT/3rJYGVx9OfOejbg7WOq8jDfi+p4/De3NCTUfoS9LTn4FsK/+hMv?=
 =?us-ascii?Q?cmbU+USWHeUkwtaD+cDjACVl6OBFjQEjHVeOe1z3Xh8yMDiW9fJ6kSDPKMAE?=
 =?us-ascii?Q?Gmay2LJqkqMnSUS18RjdBxZJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a62c457-72cd-412f-65e5-08d8e78b4f7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:21:19.1509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +NZgFtUbwNMAcs8D2yLBBzPhRvbJ5AgJ+v9zN4JBUNEGKSc1V/zQVG02Fwewk1MSX70O2pv0euynxGphHBAe2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4506
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter
 for AVF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:21
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter for
> AVF
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> > <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter
> > for AVF
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Add new FDIR filter type to forward GTPU packets by matching TEID or QFI.
> > The filter is only enabled when COMMS DDP package is downloaded.
> >
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c     | 117 ++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_fdir.h     |  25 +++-
> >  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  74 +++++++++++
> >  4 files changed, 219 insertions(+), 1 deletion(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
