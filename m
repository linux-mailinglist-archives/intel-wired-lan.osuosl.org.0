Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1049633AD2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:19:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 946006F4E7;
	Mon, 15 Mar 2021 08:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5IW-hfytUki; Mon, 15 Mar 2021 08:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C6146F52B;
	Mon, 15 Mar 2021 08:19:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45E471BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FE21447DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRUOu7nS8oZ2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:19:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E19CB42DDB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:09 +0000 (UTC)
IronPort-SDR: 3/n19OiqaOq270MSFFJZeuwE8PQNTRVykXXwiNeqKmcqF/VGaL9U9dUXLZGb7uAkMRfPXbHuYm
 iIFOsSlPCOyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="253068718"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="253068718"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:19:02 -0700
IronPort-SDR: zqvqY5QAddW2zZ/VOSlV6TsFP4QZPAdbYuve31EXSlwUVlW1k71UhED0/ICyJh1DLlFEU+xFJl
 eIuMjWm6+zzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="601350595"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 15 Mar 2021 01:19:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:19:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JdqSWoc6CjsLIi+cT0dk6q05velwseAfxS1eiMGs5LbZUGeIgAuj2qdqXn9KZ9AM1geDGIBJhlUDSYnw3QBL4B8+3HrZwFqEVQWn3VI1KhgiDNIyGNSfjKG0V//KeBv+ZZBM8x19YC3lYzS7ixvkWKDsRRC9aU/GhMrYHmkFW3hSoChu2OuCemBK340/Uv4j6RCCL5F4exyYXsbVF0Vcrn+BjfwqAveyvKfoPETbsfNdv9vTrQTO4lDsD40IKCMoKm1HjRffIJW9+xzrrmW2ngMkfgjW8gvV2qOxdRfZhoW0zuqFg0hm8JFpn0mq4q6rZavtC8T77eyTqGlGdyPbRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQfHRKelDG1EO2voG6YhT8QTxs0cI+3WcmnNHwDpmvQ=;
 b=KC3NQaAK1MSa9NOWvOl8Og7zz0cVCTsUV4oG5OL9NHvv1XIO7RG1ZrAyNI21vAoy47uJ8JkB5LOz+bCB7NIwvsTiFp2BLRoTugYrLRKKE+VCGey3k83rlz9S0FGBn84qNvaiVSRM4SELH/myJ7L3tmh2gq+ozQaP6R+pBBPhvA+bcuBbJfKKJxQ8JqY4oL6xPW/6y91Vbq63mUK5M8fcv+wLlwPyq70gnhaYMVPytzXAheFRSZpP0VmGqE4l+X13w8RAaKO8KN+ya/+7YteGciahhmKE6sWXjk3/ZPBHW1MAs7wwWPL4Pgl+nbflBhGdYxLfbdC6e3twU27oLT1sTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQfHRKelDG1EO2voG6YhT8QTxs0cI+3WcmnNHwDpmvQ=;
 b=yN/hBeQoJT7TmMKAGcuO+yTj7ighh0sV3XYlc2CM+BNWAk360S90T0eeIc5/ciNvF5yXtvAwjrdFD4EWAIWXsFa1uqDxtabDbgJB3hPTavNT37lEX0bVLk6Suewhhp+dY0eCr+Vg2eFtoUQmIuUWR6PFMBI2Oo3cSy0ULyaZfV0=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3260.namprd11.prod.outlook.com (2603:10b6:5:b::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:18:58 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:18:58 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 06/18] ice: Add support for per VF
 ctrl VSI enabling
Thread-Index: AQHXFJQJvDF5VjtDOkqn/eOBwrgM4qqEvjHwgAAASDA=
Date: Mon, 15 Mar 2021 08:18:58 +0000
Message-ID: <DM6PR11MB309959CFC416D7B72AC95A82D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-7-haiyue.wang@intel.com>
 <BN8PR11MB379511C9ACA9E6FDA41D0597F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB379511C9ACA9E6FDA41D0597F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa85df35-6fa8-4ddb-4115-08d8e78afb7b
x-ms-traffictypediagnostic: DM6PR11MB3260:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3260B6534A54F7E28F5F6896D96C9@DM6PR11MB3260.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Gqj2I5YyCgx2Z1Wy1/J+snkfLPZNju0l7kKr8doyaSxhOTxgSf8Ei0TugNezwfkYhvgn3+DnITqDYq+kOAdJ9+jo51JvDEj4UlVklfuQu1umlw1nZxsUOrOqAvVVfzm1hANP+qrqlXwRdf8Gcf41BMy5cwzqs8i4BHSX1c5MAXI3eSRET/Jk+OZZXIViJoPgmXo7U0tNYZ6CdOMhqtU8pIQA63dlKyR7xalmJ2Ir73H1ti8VlbxB4H1xc752hb2jSTPlnxUZv+2Z7B9m7F01bm7qptEpUrrgImS/xBypXq8VMIbjFz+pQVseJiEwHp0hU9S6aerIFRdT9WRkrZAN6c7OhZa+uarL00TPA711B5aNAohdCsS6qmn40aPO881sd+tVqAALbJZJlQH6QURtLeUfJDL0VmqyxJKLpgS++SeJ+h0Hf+orU85TUQ3ZTx/b5XUMDxQmtrgCm3nJSusJD6J1g+qqVQmx9EDgMu7R3Wfs2rexEEEm8wHD6WYAJtDitt/BQYWkXJ/TFDev6UGah0WjNsfkzyl07miv1sstEZqdH+1E99Lq4FTPoLEUPhgu7cQSFG26eO8PpW2jugTf3lr63CVSiDCX2a4SU5Lj1xsXT6oHp9qsPbDY0ecRDAeuLCnvkLwxIbebQOc79eU5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(76116006)(64756008)(66946007)(7696005)(66556008)(66476007)(186003)(966005)(5660300002)(83380400001)(8936002)(66446008)(8676002)(107886003)(52536014)(53546011)(316002)(478600001)(86362001)(55016002)(33656002)(9686003)(2906002)(6506007)(4326008)(26005)(54906003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wzVkkuZyyJyI5/XKHO8cuLN54KnCjJ+3jdem5ORAEuHbge/DXTwbz6KRR0xe?=
 =?us-ascii?Q?5/x0lN/O6VL3Cn0SnqiycAFobaSE2+KXK7eNmjZRjQA23S0B1UOQn0C97bDp?=
 =?us-ascii?Q?cK5KqeUBdhG8+xwlKkPAy/n/Rt8ErGAFLOUzFtex5Xrm/vBOfJuVb6ImNa29?=
 =?us-ascii?Q?J63C/pjNwcf1k9FqayIZDWBldoRuos30ccKxdoFC9jMmpNTW9u7cnc5RDom2?=
 =?us-ascii?Q?QWzhFP7HszesM0bQq5iApOH02mO/wMTKv3Rxb5tvldfh4xxpCWEHTgpSKL9Q?=
 =?us-ascii?Q?w1yxmCX5Dd4csELDj1B/+oZTMNdRnpwvrWe9Rr+JDBxP1+lMw79qibwtlqbY?=
 =?us-ascii?Q?I0YjznoGDZDpeS6xF8Nq4ZT8iSgA475RFuzo+2QGLJVNG81PJoEvxkj0pRvF?=
 =?us-ascii?Q?gSFvMAvpIunp6soUNPd5lb21WjhmJOMq8JG2H01v7Jt6u2orM15FQ30yBha7?=
 =?us-ascii?Q?p6AhQGy00C9tEA6Q3ZLAraYuT2lqF+e1wk9qn/hRbWSCdaudA2zJGzSca3KE?=
 =?us-ascii?Q?75bcapOx6FzVMaHoG7jv+id68pePSJ1DQpxVS2qYB5Ncnksv78E3fmCR1/bX?=
 =?us-ascii?Q?VQSFu8DasFP7K47yKOcn2dvfG8D+9mD/ITc5wtBlKAda/gthAvQVB5gg4jD/?=
 =?us-ascii?Q?IVmVfgVTvnHna8ugzXpoTXdd82oDQjkWn12HwFxLuT9co76Lfr9waVu/H8a2?=
 =?us-ascii?Q?VsqxD+57E1+QE/HPNq/s9f4YPq0qu2CvCURxd3cvFDki8jWWwpvriyPhc+np?=
 =?us-ascii?Q?7KT2LcTvirsDzj5XOYCrWetQvkal3/9VtQI15bk4ZtyLot9HxAGkBfni0Mfr?=
 =?us-ascii?Q?7xIRv4fYdylDN+2QqihpLYL/PTARc2zuxATcEuD28IHgEX5N3VB0YWW0pOSV?=
 =?us-ascii?Q?ckHiC4uYyAHgIjEy9hlOxYn6CUT3D4Y0R6x4X0JU+qNKo4p85YjJHFbrOFez?=
 =?us-ascii?Q?/icE6+geMNvq0uLBh4dRP5lZ8sM4FDRoojJC3MMbjAInSXVwh/pft1aQPc7p?=
 =?us-ascii?Q?5Y/+BE4RWVpov1OcBXUxSVCpRCGTHNq6IbRdO2+d0tDyh1MrfaHjYzjZHctT?=
 =?us-ascii?Q?fnzN8uG+/N9rj1xk4X+/AIi4AtjASKTXOQgH7TTnnKN0lg7mj7sP3wR1MYIm?=
 =?us-ascii?Q?RHOZa7mXFrDhe0E6XdnIlneYcFrqn3/nNsYt4Y2bNb5e7NyZmM2d6/3gxQHn?=
 =?us-ascii?Q?XAherxikqzmlwpIXz0xWnZN4XY2CJ1MbC2/rGqh8jl1sIhHFbFsCqdKWq6QP?=
 =?us-ascii?Q?a8MyPxxQLGHc/8QpU3PLgCO6dCq9CBhEKHcJIoPP7M1rhuSEn0IbQ+cM4g/H?=
 =?us-ascii?Q?zh7YIyp4owBTMbGhAObp5F2X?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa85df35-6fa8-4ddb-4115-08d8e78afb7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:18:58.2177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VQOdB4g07Z1sorRHkZ46UgHl33FSxt6sHhTGvSZ4cRey8Nw/GtRVKFtN/wqW2lY2XIBJB3tMVcMveawLvpDXew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 06/18] ice: Add support for per VF
 ctrl VSI enabling
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Li,
 Xiaoyun" <xiaoyun.li@intel.com>, "Cao, Yahui" <yahui.cao@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:18
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Li, Xiaoyun
> <xiaoyun.li@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>; Chen, BoX C <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 06/18] ice: Add support for per VF ctrl
> VSI enabling
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Li, Xiaoyun
> > <xiaoyun.li@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> > <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 06/18] ice: Add support for per
> > VF ctrl VSI enabling
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > We are going to enable FDIR configure for AVF through virtual channel.
> > The first step is to add helper functions to support control VSI setup.
> > A control VSI will be allocated for a VF when AVF creates its first
> > FDIR rule through ice_vf_ctrl_vsi_setup().
> > The patch will also allocate FDIR rule space for VF's control VSI.
> > If a VF asks for flow director rules, then those should come entirely
> > from the best effort pool and not from the guaranteed pool. The patch
> > allow a VF VSI to have only space in the best effort rules.
> >
> > Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice.h          |  4 +-
> >  drivers/net/ethernet/intel/ice/ice_lib.c      | 64 ++++++++++++++++---
> >  drivers/net/ethernet/intel/ice/ice_main.c     |  9 ++-
> >  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 62 ++++++++++++++++++
> > .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 +
> >  5 files changed, 130 insertions(+), 11 deletions(-)
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
