Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C268442DBE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 13:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C503B60838;
	Tue,  2 Nov 2021 12:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4--nh4PKfu9J; Tue,  2 Nov 2021 12:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3D2607D2;
	Tue,  2 Nov 2021 12:23:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E9B51BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 12:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64EE580D70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 12:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8OxMHxFr_3HX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 12:23:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2487A80D58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 12:23:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="229966728"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="229966728"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 05:23:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="489089287"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 02 Nov 2021 05:23:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 05:23:07 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 05:23:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 05:23:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 05:23:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftWezfdQZFO+0II+biieuQjfnfjZSNJXJLLnP0ul8R3/xbaNok/6nyprcytqXo88rgcHL8QVUe3YdP06D3+K6XBLaqPE6aQZ7CVaJcejKqcQ5mE2ciM+AtNVPA/daJZwKXgt9+5O3IKwSs5wET9YjTYnzZbHPoxj5S/bd7C9QaO63L9aug0JpTaBWrWHFLn7Au/KAGcro+OipEncuxxLIfcUIGDa5p2gcFoA9+XaGFywqu4zU78pMkUa2AEwAcsKDT4nnw6RY3DRmNNtK9+GgRoGNKAFyLkylGBxMm4j6OejgQR20ThePFMqcnZ1XoXRjMjvDcfebf0kcrXbiGxjxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83U4mUFIQLHZnxXWLBWTe508nImbg6oZJRt14WBAmkI=;
 b=VW3JbPjx8qN5c+LhId/dOB/H5a+nK3JuFE0RfBHl5AcrNtGll42kZl7zXcWbQIPVMsjTn3sAFqwEiO4QJGe0Cpgi5N2r7kVqaMS3KNPiV7ci4RdYG8TCyrH8FlSJNds00hF1hM7tMSq+xWNqRu6OPVDkUKzl04BaSd7VXs6lRTM0C77MyUcz7SfLxEv3AuXOPY2/T4/P9oxUZm3npM9dCT08swIJQfjNJGumtrBnUXE0bOvssbtjl41el9Cj5dp9plRVakHKJirSjRhdpHy9GwVs5Bl9SuOcH3d2qOM0DC5Zeh6HLDdFHpaNiEDnlVgJsFN9m7YDpNFTsAWXVQC2NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=83U4mUFIQLHZnxXWLBWTe508nImbg6oZJRt14WBAmkI=;
 b=GlEdATCtv63YjJPdtETwWp/DJOJf6mn/fxCdV9TTXJF/cuy3IKpT3Y7kP0VxUahwoeS9dpiZaoXt1vZCzrvnBG2xM1kDi2sMV5NA1WYS+6i7UTNNWQN7j+sd82Q6cjlMwwPBlut7onkh9S32SeUqIXCi5Q5WULX+2VoHDZ50eZE=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5566.namprd11.prod.outlook.com (2603:10b6:5:39c::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Tue, 2 Nov 2021 12:23:06 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%6]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 12:23:06 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix static code analysis
 warning
Thread-Index: AQHXnWmIVew96sHylUubLe06vktS8KvwjZbw
Date: Tue, 2 Nov 2021 12:23:06 +0000
Message-ID: <DM8PR11MB56217718664F35822EA6FA07AB8B9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210830083801.269798-1-karen.sornek@intel.com>
In-Reply-To: <20210830083801.269798-1-karen.sornek@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd5c0c19-384f-48dc-a2b8-08d99dfb8658
x-ms-traffictypediagnostic: DM4PR11MB5566:
x-microsoft-antispam-prvs: <DM4PR11MB5566D902DEE4CDC67310F63DAB8B9@DM4PR11MB5566.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UW3xXGd3BHwqLF0G8FLDkOs+QnlJ7K4Edqlw8t5iPwYFtQIwLb+WCVjOJZqoafTk6Z9qPZV833KSgWgkjoYtVjXBOhZwqwO/5xRdYSUDtctiRHlw684oXsDGRV/CIgkK3C+ecrdZ4P/EtofZgLrM07iMLB/gQSCV3JJGgxEDF4NT7lZIOBFCh3IwU+CWrvE30C5GdK6Avxk58i3PTCOYPWhOolEy2mjViIEuLiMX/smwVhi77+/9VvIXTfOjXHlNpIVquXCvF+9n7dmRWWhS8ObN6SVb3sibRNBpzsw95mMQjt9B+1ZtcnBtW0oee+tBWBeKes0CXF1WukWlQqPsTqGOHNFkp8ZmGqQoxLY1DBvlwIYU0UC0jU1L+uiShdUanEhyn6+vh1nEnTbx+gqjSTf8oQ85/HDjJPtty/HhKQMNVrw4rt2TyTUyBrnYwnD5ZfLXWuxZpeFMbWnq4KbZWD6j0sibQr9BJDKDLyy8NM4j2aL5XlnFNaHANZrbKwWEREssWJxzwMaaJU0QNOue962dT1uMYuKF0b1lKJMLkyWWdN6K6MUtkC3a4Jo71K10i4FqZmKk3Btpd4/n885rnsj4QE2jOtlix3g6DsCrUKptCEsYNifo2g7xqLXg8ka2a4ygpwmO1qmIhhkTxukE9y3GyvMEtU6x3671I6+/DhRfNAz40znFces6a1qTFdve7C010p1jenVLh9cTJRr68Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66574015)(508600001)(110136005)(5660300002)(71200400001)(9686003)(38100700002)(55016002)(2906002)(316002)(8936002)(122000001)(107886003)(8676002)(33656002)(53546011)(4744005)(76116006)(186003)(66476007)(64756008)(4326008)(26005)(66946007)(52536014)(86362001)(82960400001)(38070700005)(7696005)(66446008)(66556008)(83380400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Ulr1KB+Ik8bxvg0igUbyr/yO4ib7qd0T0/TetecLbQuNM6A2jIitlWf9gS?=
 =?iso-8859-2?Q?3rEdOW1AbKxYmOV1/UnsJ6lwlCuUs1Qu3gW3qpVXUUwdw+GUwZYa2jqZmJ?=
 =?iso-8859-2?Q?0Gd2yOfv5RZ74rFIbeCVHVSwAJLklNKfpSVx2jvh2g3zfXM3E2ytpyvSCo?=
 =?iso-8859-2?Q?ZA4P3jZowFo8uwDuTjVVeAV0EIDYN/fJtrTM/e52to0PJPakAWUx8jPYU0?=
 =?iso-8859-2?Q?Gg5f7v/h5ejEi7UIp5c25VMjm2NSwbrxusk4OrBLgl8EU7PvjXObbffaHX?=
 =?iso-8859-2?Q?f5Ak71h2Dw7XIHV/4Wo/mc7OmUd9Q5IQlZSBvaOrfhLP4x6jMxfVK/YBXq?=
 =?iso-8859-2?Q?15WuxEEMtLSkg/de0ONN0d+3WycptXE+Lwb7KTkAFUJf6BjTl7XFm56M1h?=
 =?iso-8859-2?Q?zwxuRHTpvQnwd/6e458i3dQxr8bGdgOZjgxayGxcw5AJlZF9+lhEgysxmJ?=
 =?iso-8859-2?Q?mIu8XAzrQl/XVw2Z6SkvGPVd1D0hTrAT1WAdqWlGR3kdl/vUXlcFIp6CIf?=
 =?iso-8859-2?Q?SROuA3q17hENcgsHdfvZjEc5NBQQDGDLLouQ+pEtrY2/D2RJyXTeK8WBXv?=
 =?iso-8859-2?Q?e2RBLL4OEyA93PlGQqcf5q9paDFafFL2BZiEj+POXPsza9+rUQtLl2sMLN?=
 =?iso-8859-2?Q?F0nEZMr1/daDHHIPRm3Ll5KLQCK8in1A+jGKWpb4j7FK15yWcZygYmShpu?=
 =?iso-8859-2?Q?BwsVLjIp84F9DEYDSPoYkgW1pwu5xJAc+930gxMB10rYil0sMBXAt8QpLc?=
 =?iso-8859-2?Q?9vPg82tYyJgmyXhvykp/dpJg0+z57Bs4DB6lSI5Eso2ppCWq0EWFqvOcUl?=
 =?iso-8859-2?Q?vYmYTCJxYeMhI8t/Zr1LyK3IPTK0Qd8tImQ8sDUQF9wpdaA4tG6NYHhgs9?=
 =?iso-8859-2?Q?CXPCsAUGj/fIJdlfCTKbToJ6p6hfEHGeUKZknjgXJTY8qBSLqlNIqrTKM3?=
 =?iso-8859-2?Q?TnDjNVRIFLSMK0W3gegBtwd5qWiJAgl16sRHOmOBrJdUrWv60w9WihPyB+?=
 =?iso-8859-2?Q?hYSEIcvSuAFuZGCcnJu2DMLzoiH0rtLvwsAcNGIu04QpbxU9Oj5pASy2T7?=
 =?iso-8859-2?Q?asW7wa0eZXOybQAkDZJqnMy1XwAxvVPfHZgw4FkkE44zSez5WUWqZHchUy?=
 =?iso-8859-2?Q?X8k6VfeTG/PB+kmv4hQesYy8038uTjFnatrtVikH9ItQ3BxlB05ebKfHzJ?=
 =?iso-8859-2?Q?0CtsGUgOPSJ1N2EpZUfcEdSLWP4kyCtiA3E5rzOuo8WwU/EQGsaoE/32dC?=
 =?iso-8859-2?Q?M5NwOJ2B0fs7CWqOnedgvp8i7tmaM1+P4PpTtMeGRhVDKl7kOqr1CoqVGE?=
 =?iso-8859-2?Q?L6H0uRAxChs8NOZqO/VDc8aMRezBgIZXKb9M6nWx6Sm+rSGoG9Um5RiCJ8?=
 =?iso-8859-2?Q?fFPrf6JB0jB+RDVRWnhOEw6RQM6WqMjC+IEnovYoC6MaSPTckUJS4VmJza?=
 =?iso-8859-2?Q?lrXuLbeKsafN/42N+3zuqE0xtrh+LQ40s54RmDnPkOqs5oi1UIumxgN6LD?=
 =?iso-8859-2?Q?HPF3045xqJWgrpKXeaMCrbB7ZFXjUONPH7WmWltN51RTXfo58pLWB2kDrX?=
 =?iso-8859-2?Q?VxlR2D3tWtJoaIjz4NA1ACb9J3FopkAzdRv5Z5gCoqP22XpKZ/JFbz4zF7?=
 =?iso-8859-2?Q?5ONMD4W1MgynWLF7YwnymoF7Cqkj/H/VafD4H978DWCpju6+3QbfGEErUp?=
 =?iso-8859-2?Q?aTgGF5yiaYnXZ4SsNZ+5NNoa7XRdW+zIn3ld9xcGI2CjSxNpPhOIt4yfIr?=
 =?iso-8859-2?Q?sM2Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd5c0c19-384f-48dc-a2b8-08d99dfb8658
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 12:23:06.4749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PcbhvU9yLd/6vMDcbgMFOzR/GJ+Et4Hk0Oxcm0MzmWQ/heXcyMx2Ut8OtjzVygvnhsWfeWhygN7GmDgIqrKCS5OoIqZEq1J0GWgwKF4ZoyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix static code analysis
 warning
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: poniedzia=B3ek, 30 sierpnia 2021 10:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix static code analysis =
warning
> =

> Change min() to min_t() to fix static code analysis warning of possible
> overflow.
> =

> Fixes: 6beb84a73ec5 ("i40e/i40evf: napi_poll must return the work done")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 3525eab8e..42c9f9dc2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
