Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD2933AD2D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:19:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C08D83026;
	Mon, 15 Mar 2021 08:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3985Fe7fyLs; Mon, 15 Mar 2021 08:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5393F82E3B;
	Mon, 15 Mar 2021 08:19:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84AE01BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 807338344C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UZbIovs9op8X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9288D83104
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:55 +0000 (UTC)
IronPort-SDR: E096YW8uV5fgFvglrdxh4zoFmFt0ETheMg57UjIO25kHj1limFzqFiCEKoT23Ro2eUPKPas5Xd
 K+zxhPGcFDSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="185693389"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="185693389"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:18:52 -0700
IronPort-SDR: Mf3MJzh6wagh/AIhvoLJXierrvfT573oTw7ndZls9dx352RVTLSTsQE69+m+AXXuJKKMtXo9X+
 vbT/YSOLYpsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="371554954"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 15 Mar 2021 01:18:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:18:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fSrxxSNCP/qveblWLFhrYNswvDmM4SMSS+MYKOo90DfW0rjTJsv3059R7NqBgYaGj02KoySzFrVaHm1Ks9Orhn24u5dQg62MnleNHpcoKk4ums7MFFWMTq8HZu4uSLoUeboqAOPWLVswYqiRAE0Av2jEfsAdeMqyZfYE+L4/HOFcvNgtwu2BWZ5Fyh2mKxLdmggt0IojdYhwCHXXEr9hlX1EoAweURCm6zpEfxbWz9PPdKbCuf/aIL7vgn5gQjw8x7AtdrdSR4uBraU/OyREtZtqjonz2jqWUqqQ0xeXKbP8w282BmMJG8Lbd3nUsshqJNmSNwVM1ZXpzcBWbUKiJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P58jAcqb/3ccvZkPOAUBF6tDNcj86ceA+M/kDpiv/6o=;
 b=SsmcYP44YQXRiUzgPiVLTrPp0e1XADvwPAZvPsntuPjXsb8LOqwg0mzcJ/3kL03mLg/tP4jOEg8yfspxwlSqW1mG2cIMumkboPWB2Onwpp7/H3/8hJvlq9oMcI5Wjd2dNYxLQyPPqW4RRlzWTUMYAKFuQTq4esweOQJRIAWo2QFYiIllidtaSbRExGI9eSeZNOFj+KMfkMObP/bjwr/sh8DoQdwehGVa6PhFFUgUDpz0/ehPAxL6pWy2lMrxAcBrI86EM8umRxJf2gPtZBzXq2rBIWX3u7OUMd+s93QDqUZrKsLgGC+I7N3Jjq8Nl3TIxYReeQStM2b4vR+2KvI2ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P58jAcqb/3ccvZkPOAUBF6tDNcj86ceA+M/kDpiv/6o=;
 b=UuwOsn00RVa6gKKYVORkixVGIptX3DKy6JMrMgfYmWt33ysA8YJlklbwHu/0EJr9za4Kxj44Xvdx69TaUQhESRgPAvWYbkqRnmtBkpd7BJ9yzMhJ7Z9QC3PSkBRNKjmQw0j0Q+nwbZYM/OQQASuwLr0N1FcSzWgZLni3G9DOBZM=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3260.namprd11.prod.outlook.com (2603:10b6:5:b::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:18:45 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:18:45 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 05/18] ice: Enhanced IPv4 and IPv6
 flow filter
Thread-Index: AQHXFJQViNtE+WejkEGpTi1w0mty2aqEvg3QgAAAVeA=
Date: Mon, 15 Mar 2021 08:18:45 +0000
Message-ID: <DM6PR11MB3099158750BD3C715254E854D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-6-haiyue.wang@intel.com>
 <BN8PR11MB37950F0CA25E18DFD462BBE5F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB37950F0CA25E18DFD462BBE5F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1ebcb91-e598-4e75-782c-08d8e78af39f
x-ms-traffictypediagnostic: DM6PR11MB3260:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3260BDB8F3E4E2094C6F7947D96C9@DM6PR11MB3260.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oaGc1PoV4Enu/UN9HENtRWb5WMag7gO1dT6CbyLa49VYhBOeU5zr3MBDdr/gnPCELCQVtAux1oGXUX8mU36hIicOzKpntxZsjLm04nDARnPFcfCa7OFF4T3uq+o9MJGcmR4vwOk+u9Bm51MAFywFSXOJAbuz4f1BKT6L535znLg+s3WU/DGje/5B1/FsMftQnbyyKRigNOK4w2tM1tpr2YcmgYeaLlbEUq0MfxWkYjdoJuKBtwgGzG6rbLd5O+FojB2QfFesxkVyVagbRnXhZ405D3+EuxWt3vPSwyBemvxVAMdH0guctWKJCXgYk29tM8QuS9MTXArpwgh5Z4aRgy5ZGLJmB32TVuZCARxOBZXH7bVsBgTWMMeMLp38SrYbHl/CN7MNipsFJWvBod3ZEtDoxrV51z4w3e6zZmB6MoSyElCYwynpzvnMcWHqnjzuL5c7Mb3gRGNvB+41UsqnF39eeMkkL5OTj9iymiVi3jBifsthni5Rpx8XxOORC+WPrWVYXHNt5Cm0KuQjr56Ls+BZTh14+rSJr7Ot+ZkNpOiE6ymv/k8iRT5pGyfFq6ohay00JmPA+j9fVknc4/DmdShTDnqxD7mFlhoT0xU4O/iOCcM5mItZKBvaZJWXXxkuM6dJx3SXYcp77owkaDyprw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(76116006)(64756008)(66946007)(7696005)(66556008)(66476007)(186003)(966005)(5660300002)(83380400001)(8936002)(66446008)(8676002)(107886003)(52536014)(53546011)(316002)(478600001)(86362001)(55016002)(33656002)(9686003)(2906002)(6506007)(4326008)(26005)(54906003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?yU9ITbONq0d6NSkowAwfGjt3pA8d/sGv1g1msYbAVVxaRXlNqzwlmARrsHuB?=
 =?us-ascii?Q?svh/Mzhhm1GKaGR0MClzitm/2NrHS9OTNLgunzi9Qs8ctJbozJnTjLkcUg2Z?=
 =?us-ascii?Q?FX58y5Bkk+bVS4rPYjgN8m30oN+LJljLURYXKlrOJNJ3yjQBrere+9foEeUm?=
 =?us-ascii?Q?tNrJDkT9zCI8egE/1Wu+006J6QRCeW8ZppXKHiX6uaLVoRkutmZaLrIKF69C?=
 =?us-ascii?Q?9FCzyODvSc0+UsQUrok9rJSh/ZlBKyRCdaCWjTtmDIHMHJbeHjr5KkTiqI8g?=
 =?us-ascii?Q?uLE8EBeRfNjYGqwLSdnO4ZnHSwD4vTXvQkhOReyXxXp7LVHQ2nzKZPxoHbKW?=
 =?us-ascii?Q?IYdi8Lg+kM4RuolCnBZjmQy60YZ/ibN68A7JZ7sXptnTgjU/7jy9l3PkvY88?=
 =?us-ascii?Q?NZ8BsnuARW0RIObp4iY7J/W0do1kVX85EGps1nisIEaUQJk9N7q1HSeZXGC1?=
 =?us-ascii?Q?OULkpa60DC3Jct1U8ntUvv9qmNybJCvUn1TdLPQ+COTtvzOaaKaB2vcQe/o1?=
 =?us-ascii?Q?mKY8ka+QsYTahcLzlrVvDkN3VH5M3kV7gogxy8Q+B9PTApHYMiNSh4UY+Qhm?=
 =?us-ascii?Q?TOKCwCdVdbHXB8Kr6nMFZWKf4VxUVF/Wvcql2V4SHVAlUbvxHe0GEyR7hpxr?=
 =?us-ascii?Q?gQNYZwXBp82dsKYWcJK0T7GmlUhC7etYRr6XRWyBhebt//0hkTuND9VZpa0t?=
 =?us-ascii?Q?yXFLrq7BOZ6KR9cndRDZbDyMOVtSaNuRRgLpGm15uRnPgsQC0GOlVIYfnKnn?=
 =?us-ascii?Q?/ALF104eHeB94YzsQBVUHnPcdVVSQg6pF+Qex1IUYsBMMb6uRktMffA5BAXL?=
 =?us-ascii?Q?2oP+8HT2/ZZJ1wKqcUQiUdpXEF1RsNsir1JCKx+aLkVjofRbVYhxIaQCRJKQ?=
 =?us-ascii?Q?cynXvRQ7eFHXyKMkxrH3hyTwNw8+wXXoMcD+Xg1kaC4pkATN2NKh6PT1H2sl?=
 =?us-ascii?Q?WTJ3lNI52FvpN994c+dam6CVJSF4cstQNvJ3RBf7LnSFouJfK2qnetYJGmTi?=
 =?us-ascii?Q?JRHmIRSfKi2LGG7erhGzseOGWOouGqq5rvEmBoyrRo/YI1QJHnFeW8d4ijLS?=
 =?us-ascii?Q?ef0HiYhemKyKA04VM+2iGjfIdXJTSYwvHDKw33+MBZVDcxTtANQxbi8Ub3qD?=
 =?us-ascii?Q?rEnYeeNDEaOeLBAjun7NDTaHVUT6VQsnhERSswJ8G1M2zAzzQVyzQCLD/qZ1?=
 =?us-ascii?Q?Y7aUg9aY80oMuX8GLPD7KjtSAJncnr42yIcODp2RMkbB9npaWA3+HKfOTdOc?=
 =?us-ascii?Q?bQ2ADCUaii79TaiN+922lj/QruOA2BTf3QbCPPkMv7owqmXuLOtiHcZpmV3w?=
 =?us-ascii?Q?2zoaFqTL+jTJ1qqXKFT8tQlU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ebcb91-e598-4e75-782c-08d8e78af39f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:18:45.0423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wvzKm4Ci0pQFPi58r4CbyOwzFxx7akgkfKqACKZB4XI59zs+78ekbs5kGSE3AVbVD675Rmx4e484OT8aUgSZpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 05/18] ice: Enhanced IPv4 and IPv6
 flow filter
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
Cc: "Nowlin, Dan" <dan.nowlin@intel.com>, "Liang,
 Cunming" <cunming.liang@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:18
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX
> C <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 05/18] ice: Enhanced IPv4 and IPv6
> flow filter
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 05/18] ice: Enhanced IPv4 and
> > IPv6 flow filter
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Separate IPv4 and IPv6 ptype bit mask table into 2 tables:
> > With or without L4 protocols.
> >
> > When a flow filter without any l4 type is specified, the
> > ICE_FLOW_SEG_HDR_IPV_OTHER flag can be used to describe if user want
> > to create a IP rule target for all IP packet or just IP packet without
> > l4 header.
> >
> > Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_flow.c | 54
> > ++++++++++++++++++++---  drivers/net/ethernet/intel/ice/ice_flow.h |
> > 4 ++
> >  2 files changed, 53 insertions(+), 5 deletions(-)
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
