Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E4D33AD2A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6581B834F7;
	Mon, 15 Mar 2021 08:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 03lX-X8OvbN4; Mon, 15 Mar 2021 08:18:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47C758344C;
	Mon, 15 Mar 2021 08:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA35D1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8C426F4C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KlMDyg_XKYyu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:18:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5723606FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:13 +0000 (UTC)
IronPort-SDR: 1uHdMlH9uOj+flBCMX3WjpwH/PWy5nK10IKJR/xZQ0sFizjU9592Pv8DvNo+9zC1BJPHuvQH/9
 0lB/wSijgSVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="208950502"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="208950502"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:18:12 -0700
IronPort-SDR: WxQVMz5Ac8pTVQHCbj6TL9JSIOk5RK4oQUe7F4YE9IwmBvDh2iWvUA2B5KD+x/yntFJ2buHK5i
 zLWYXqXtdoNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="371554767"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 15 Mar 2021 01:18:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:11 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:18:11 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3DJlZ3mw+CnJjTQU1wfdGJ8eJNTLi0REQnIkORb7yrEwj7BvozuuLk2f4q+OMn+ZzlS26om1W1H4qGepWoNFy2hL/GwggQ+C9jGnvGuW+4smiJUAiGfwjCytSAZdON+Xafe5bEZicVyMOHco87sh908R76uOWyKSWqITxbnxQ3IycJ4RFqK/WeB10GGzypIhkTyhUXFfZAsFoGHZIWgtQ6zS5MQOWqq8WF1272eAMho6a+V5CIhPFj2yJqABpe4hHG8vB65gqO8EvNh8Nr6Z3ChJE5lqBsXAA2/rX4Ro7aMMM8epfN9TEy5xXLDN1Vlka4hONpmWn4weidjihIo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/XPFX4yNSYfEQRX5mhgVwIneoW8zYKLmMXCXUK4DPU=;
 b=frScXrhpWUl2f8C0Z+pntejC6YqPsgfHPrudK8gzptjO3M9FHiBjl2+H7/34OgGzW0nOWg6xm3r7DnkckCW6EWhpdjpT5vfLN9ua5N3V0cnLyJXxsHJEOuiPqrV5q3XMGK6LLOG4gv8labbQUaDO+g38lOPsQDsAY2R9WBC2503a20UA2rGh+UJjiZjYUKDVHz6dXPjxkf/BzCJNggRCCHFxLSRaqR8kYKpuUEUD+zPTURK1o1fnHKT+JCCnu5BFF2B14mHFNxPNNIotXz8dX2hMzs/WNMFWSm3xEGDgAXCQ0RZOYLLSLCFuP6E+UjQgVG6wDs/3jfPcc+2EEfCOPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/XPFX4yNSYfEQRX5mhgVwIneoW8zYKLmMXCXUK4DPU=;
 b=TzMFuNKKe6H3H8GQk5MVCFiCiRlAdT9XCPNQSQbf/L+ID+xzfngRtus6objGmZBMvlXVbhOsToEvaRfkPO0X0vMzVo7DRzcWBGJttPtloVsXwXlMROxuNbBbF00vsrpfOKu99ELhsUAFXk7mOOuRGKK1idGlRfg9OkOLeCpm5PI=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3260.namprd11.prod.outlook.com (2603:10b6:5:b::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:18:07 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:18:07 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 03/18] ice: Add more advanced
 protocol support in flow filter
Thread-Index: AQHXFJQHYsfob2rPE02wEQjY58myYqqEvbWAgAAAiEA=
Date: Mon, 15 Mar 2021 08:18:07 +0000
Message-ID: <DM6PR11MB3099167C93D61DC92BCD67FAD96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-4-haiyue.wang@intel.com>
 <BN8PR11MB3795B1E52DF1CE8056E7CB37F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795B1E52DF1CE8056E7CB37F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f93bfa9-afe3-421a-7b1a-08d8e78add59
x-ms-traffictypediagnostic: DM6PR11MB3260:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB32605D0D241E65C812182CD8D96C9@DM6PR11MB3260.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kFb3VZ0r6jlrhqMxfvq9skR1dMtqAfQQ1YhlESkTYxyTKX3Nrv25zj7yDeT1jKSIgreTFMsEsO3p5/epo0Rr2dvfEwHB6GGcvDdpwzRTTcCuSktpz6ZieBFmvOL7RWdTTjrr61BhcApeaouSspbeuGdtM847gfgEd+VfLn1z+mJRGVDnYYn98Jd9BM9PNjRh+JV3PuYUJihe0e+X++HthckLhgeyxS0rC+PaYB/NA3ATgjB1bH57qDaJftJ0nHbkfu4GrBmn7S2ML2Krxsc6JFwY+gMsuNH6j4j+02NmXk/1kfkF3nBxHmR+JYl/WMke5zjNJ1Y7FRSlr45+dKe3vUtxvGVLaG28705DejIgGVGqHUpSdVwLjbIOCI9mO3ZYuhik3+L6Sd/1WK60urKC5VmUjU/rnPBLL8gXPoI5vhG2qneVIQH/o7rZSKP8baDYEh4bA+CvYlj0Vih/PkEirvSGnj4G3qUpeQP1NzTYGdfMkMTEEtZKk1MQTIuf0+PvpY83SikzTO4GgHTRTSmqeQhhw7qlEoQqSeZNaufeX4tbO3KaKEynPa6NPI5cZ5f5JVh5EgOK1K9u8K5arDFUR2l47cunXkJ2BPb3xux61wfTVqMjjplIA94XXruHsnh4pQ8tOk6Gur0C9i/VHqPmNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(76116006)(64756008)(66946007)(7696005)(66556008)(66476007)(186003)(966005)(5660300002)(83380400001)(8936002)(66446008)(8676002)(107886003)(52536014)(53546011)(316002)(478600001)(86362001)(55016002)(33656002)(9686003)(2906002)(6506007)(4326008)(26005)(54906003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wKBRYSG+DeMr17DVogn7ZM0k17NEGM1FSSeAmi0TOhZyav8FWtmHPYfLiy3x?=
 =?us-ascii?Q?Jfl/GS92veLgkoSg/ZtyGfiwZ06ZehTjt/T2WuLj6Gfv3riJLQDcrIgp28X+?=
 =?us-ascii?Q?t14sVkT7JnuEJRhENfPYGsPEMcqgCNDWhfcXgLQVMPiwLfp5RV+ZPNac0JxH?=
 =?us-ascii?Q?ksuCTxYuA+6iw8lYWZMHYuOib/4sBmYN6O4ukoxlP5iTDwkunGfNVDp+MmyP?=
 =?us-ascii?Q?4wWelucsG0iQAkvPVrJ0MLSrk9vR/M8lVPpHrLoKRKzN+szS4zmJ2P8d5LUL?=
 =?us-ascii?Q?s0FoJnapBqxO2j9KDT3ydVTwwPT9ZpdmxNnhAGFn6qMQUcR2Ex8QO0p4VgFH?=
 =?us-ascii?Q?6vsWPkRZdYjfmQLGlP2as7e7NxJdzEq0F3iHb4LnY8PwBXcxGtYQ0O6R7B+t?=
 =?us-ascii?Q?iKWSv9KNY07+sYvdHwSSKM29vQniRx8uP9HTtrYuqxwNIyPo6BYK0XBYdt2c?=
 =?us-ascii?Q?96bDWqYfBkcdLb4Kq9x2CbdA9pGgPBGYjFGkRs8FJ2qrklHQ5zt2/c0v94qJ?=
 =?us-ascii?Q?AQSopuUXnQ2s5jRy2NeQ+YrZQoPgAk/OA4L92RBbJjxzr84g5upP7JQifB5M?=
 =?us-ascii?Q?9/nSWl7m8k3AQJeMW+wGusxu9J/tYhvmaMNgsnRwxo6f9vRamaquAr/rlkrn?=
 =?us-ascii?Q?CZSS70c7y3LAoynv7pUomYDhLdRtrFPhyzNlVDQWPZyYiyzhT9lU4NQzp5tW?=
 =?us-ascii?Q?oGeQPYEzTWekPSLiLZ2UIpIurLwLdEPR3uSPRUrjdX63+j7ZW1Y4VV5d8Fuf?=
 =?us-ascii?Q?BauCe7xi0cstV6FYexIuHfhnaM8u0G0TKP/4/0sj4aZzksEYJKwsrDJXXnxl?=
 =?us-ascii?Q?0BcvMd2wNxt9LpQrfqb9WpKvYpT2IM9yPoVIqiTyUAe0uu62N53njO5yw2Zz?=
 =?us-ascii?Q?LHB1XTd/atBsqpNyvZdkHu40aH/kLT2nBe5rVUUJU/jRRi0G5BLLfjXqLpoC?=
 =?us-ascii?Q?b69BNn58ier7CS+XRzX0/73kMjPXZWhAfZlTX4JfR4Fh08Ctg4y2IxvM6yXN?=
 =?us-ascii?Q?L/jQhWpLyfhINd2rTocmYz1NQKCjvTrvuTL1srtKB0A8vTeCYA+Bv+TnU5cC?=
 =?us-ascii?Q?6I/F17d7wdCOuxfw8yvpKVkHYII3n5ybSvr4ZUpAfxvAPcQZGyaZ0BGm/jti?=
 =?us-ascii?Q?mBjVWfVdTX0FKGyi8kdYbCzg/edvWEeebmJj1J8j7Drp/ebXgxg5NpbJqwmB?=
 =?us-ascii?Q?GerEcTT5ioHmnBADiwJJkobcyR1Kdv1oPMnEFSVsTFZ+neyxpF9apNaoq8Vs?=
 =?us-ascii?Q?8QF2pF9uKDm2gJgMSXhVRraH+c2BQOsdsx56jKci3RPsti6UjkFUIEDH1yNB?=
 =?us-ascii?Q?+xLB3NrIhWZK5saGdCQYya3c?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f93bfa9-afe3-421a-7b1a-08d8e78add59
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:18:07.6608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: miSMy3wHxXpivHU2FCQsbBcEvf3e1Dbb6Rb+9CjlySY9PlBjrl62piqNn+cBReMaEG80+v2rLS2BFcoK0it7YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 03/18] ice: Add more advanced
 protocol support in flow filter
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Xu, Ting" <ting.xu@intel.com>,
 "Cao, Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:16
> To: intel-wired-lan@lists.osuosl.org; Chen, BoX C <box.c.chen@intel.com>
> Cc: Liang, Cunming <cunming.liang@intel.com>; Xu, Ting
> <ting.xu@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 03/18] ice: Add more advanced
> protocol support in flow filter
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Xu, Ting
> > <ting.xu@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> > <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 03/18] ice: Add more advanced
> > protocol support in flow filter
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > The patch add more protocol support in flow filter, these include
> > PPPoE, L2TPv3, GTP, PFCP, ESP and AH.
> >
> > Signed-off-by: Ting Xu <ting.xu@intel.com>
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_flow.c     | 270 +++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_flow.h     | 128 ++++++++-
> >  .../ethernet/intel/ice/ice_protocol_type.h    |   4 +
> >  3 files changed, 396 insertions(+), 6 deletions(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

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
