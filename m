Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3654933AD29
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:18:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D30B24B527;
	Mon, 15 Mar 2021 08:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0PnnPrAbQuzh; Mon, 15 Mar 2021 08:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D90F4AD93;
	Mon, 15 Mar 2021 08:18:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68EF41BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57969834F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bWCvXtgrlQmN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:17:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A72083495
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:57 +0000 (UTC)
IronPort-SDR: iAKcCO5EGnndZuBPy671zVzVGIIePO2GehRdyDy1rWiSG5nANE0CczY0dbx5SqDTYNXc6V6dwc
 VhWW1ErZhfFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176647704"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176647704"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:17:53 -0700
IronPort-SDR: bGMxvuI9t8UwM5Tsc/iapNrw7KHHgNc3GmnRFRS/74y45z8tkVIYV88XRCZc03aLddU0UGPBKW
 8mHCxI8sKajQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="604767264"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2021 01:17:52 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:17:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:17:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:17:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MbtioQcT4N8iLiaEJFGQNW6lg18D9tObQ8VYeqMcQJUfsHryYNXxDKms0MBAnBl2j4360XPQBVQs3sJcXhgAsk4P2hzXGmE50AgLlUHn6u9fXcQCgYacR2sXrPxMJnWdb8voyIgMUiszMzuFHcrud0F3KkXonJHA7IsySLMLqaU9NDYBIrVI0TSpDB5n3HrPPeuPgVZUk/yuiHV2ONHpyROVcYRWF/zAXChgf226HK8C/4o9TMa9wtQUQROIlHhX/jb4tNy0rhK6n5EfZ4kaIkFXmZBXV6SFBrwfepraL8MWBpChHsmBhENk6osX/KtWSnNU5aMcP1WPT7xVLHZ/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVyz3lPIvqmzj+jRoJWfZ1YcbeeW2qZofF2uEEDuwAI=;
 b=CPDSeqXGVHPUghWscjoxUHoalRlofj56zvf/eCo2OUbQ/8bHKiYDMH9ponH4WYazPDN/r8JZMU4eRXqBOc6xjpYKdMSFvBasWp2dR0JUxMz43kEIf9f+aXUtCDi+zyYeLJh5XWpAMSKkaidMNG75Lzair8EbrYD6gzL8QLqCoXpvpp/cUYNU8EmThp0PlWePBUD6mJHEcistmOngBLR8HRSsmbb63/0befarzgj0uDUAFAenilFde4EdHZh0rizbfaLkgmpYTIi8ED1/ZqbMnCb5W/rCVLukXVS4smoRskQgY1qOfQQ7vPD9vKomNm6V6Cp3r5rECS+4BXP1M1m1bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVyz3lPIvqmzj+jRoJWfZ1YcbeeW2qZofF2uEEDuwAI=;
 b=w3X06sHTCkRVXztrBzCDRr5i5L7Z3viIQrnFkFrTy5rafOJdx4GrZhSy+UemPRP741SGV61kk1nPCRyGx++LDHpS35id49H0NSMveN0WP5+ZUmXhZvVHYs5wAfbEr087BKmrmk4i/oTyKyZ+ZDFyUKXpTEDlw79eFhLFxAWPDNE=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3260.namprd11.prod.outlook.com (2603:10b6:5:b::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:17:47 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:17:47 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 02/18] ice: Support non word aligned
 input set field
Thread-Index: AQHXFJQB5to73g7i102EQSLpsgGWoaqEvWiAgAAAoVA=
Date: Mon, 15 Mar 2021 08:17:47 +0000
Message-ID: <DM6PR11MB3099CD4E2B36D1D9F067F65FD96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-3-haiyue.wang@intel.com>
 <BN8PR11MB379515C5645DF10AF04363BCF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB379515C5645DF10AF04363BCF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d765778-1001-4f8a-a608-08d8e78ad15b
x-ms-traffictypediagnostic: DM6PR11MB3260:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3260E863F97767C8B033ACC2D96C9@DM6PR11MB3260.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hdc0cYIQIku/JPGyjhVwVaNooOycP5UKJ/NgHetQNC8UA82BvsFdq1cfXwm4K4QZj5ykd1Uenoy9ZI8vR/Pw8DajTh3AEolU1CkYUI9EkqInnsCfvAJzZV6c8+2Gk7oRJ4h5T4HwcR2BsPwIY3ThMBI0Vijie9x9kLNUfJ3ljafOiwIAaUQZhPI4BbTFNnv3OzP01aHqmdvExC9jQ105G/sVg291pwUZX1bOqb2yYkws/NeFyQQ5ghKLXXqY1juam0Rm80Iru3mqmwT993pC/8ADhKAje7YHp5M6pzMWPYuQhV8ebjM3a1KvriIIFjlBI7js2GGtme0Xw3c1KnZQ/OtMxywlQN3XkNMyJ/YakZdJPqPsNtehXGM8AIcPJInc8J7OiYJmIJB1vl3G801LiqQksHKLt2ulSs7xI0blFt7T9qr7m4RwqEPwQI4zVznzmjkxkVwgoQvv8m+oW5MDJg58PKjEBOr4v1dSg3t5fFWs5toZC7uxxJ+ysYDXqnDuIRDIh24QOOOp5zyAzEuK+x9QVev3FbBL1YlSAUHFXvqyXoKJzSpxVm1b2LoKcpIm4uLzWPMwVYMjZ1CmWVfVvAw1gj98qZeiAdHLmpPYvKhZdeASjNGcTMYokY7NEK2WLh42GL3DiBVRFAaUcmP0nA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(76116006)(64756008)(66946007)(7696005)(66556008)(66476007)(186003)(966005)(5660300002)(83380400001)(8936002)(66446008)(8676002)(107886003)(52536014)(53546011)(316002)(478600001)(86362001)(55016002)(33656002)(9686003)(2906002)(6506007)(4326008)(26005)(54906003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YHQ1o7U+ily8tb8jXQE8YR0wcupfwZJsJIhUMcUHXRm9XQ360vJE7qxOoCPB?=
 =?us-ascii?Q?642tB1PofiuKvklPUUO8Monj8K3Ly15hB5Ef0LQlp+FCDGn8mUDPKGcL7yeB?=
 =?us-ascii?Q?n3au+lXS7X1ve9wfnrH8nZJux0hyzyogS+kX9nKf3Lo8Hu64QsU0kuCDbLJe?=
 =?us-ascii?Q?oNrBigOnThhKaXdvrdHzSYWlJKFywHU0DgMU/haWeT5O+EgroQUlzDiyYFK0?=
 =?us-ascii?Q?Wch8BzT1ful66ZY34zkAayqCGkq9SwQsSVyEPjR3Gq9mVCRVjUqLZSuDbkJg?=
 =?us-ascii?Q?4rOoUwkZJMeqPBKWPsP7JOmzFuuuLO+3t5xOwi61CQTIVQKpYNZjx0vjImAW?=
 =?us-ascii?Q?NeASWVPTZWOqkdjmb96FZzpRG9oXGdBpm6ndEe8tSsZRGo+PK41ilJpjJFIy?=
 =?us-ascii?Q?VhqS5NeMYw+BqbKqi/NBQZZ1BLYHnzfQYYeIQiqwBNsKALoepE9D4NOjUl8y?=
 =?us-ascii?Q?R8afV7IVYYrst2vvVAlA+koFgblFc3jLUjQdTFbJO5q8MCs2kTySQxAFbE62?=
 =?us-ascii?Q?PiDSGG1CKJ1X3fgGAwJbX8BE6t9rxUnsZ3k9ozYoDW9vTrzSD2GtGYI8Nss+?=
 =?us-ascii?Q?Wxz2U1RH2WeCLHBbqOAlDEYsQ+mA9pMZA+aEpd6JXQlKyJdMcp1ehh3fU93Q?=
 =?us-ascii?Q?+gMYPctIdsgrJPvOnnumtozBthGgCq+slEkjRUw36kE9/3IqMgS8w5FOmdE9?=
 =?us-ascii?Q?C7fjwu2SdvBC/nvIZMEajENObeFXNhKgEujf4NMTPBScnnlCytlcO3WK+yQC?=
 =?us-ascii?Q?PfHEg+092MCc8hjnLIwnmH3HJGGD8OEhjd5LggEyqL5RyEySnaYyhlt9BghE?=
 =?us-ascii?Q?JBUrjVBQyZjlSXQ/ZU5xdhN1DGpbWfgom4oTrtTc2d+iTDK6u6b5a4Cqw+8J?=
 =?us-ascii?Q?LdS1lnmkY4w9ovXpyIdOQrVylCMbHk2NGMC+3FXO8byw0DxEGuNPmjLZvslS?=
 =?us-ascii?Q?7/NfAkxJOQDF3JVlXkHYp3AAipj2taH6iPBbonnoAk3UkeHwIbahahvkj/JI?=
 =?us-ascii?Q?/7VlMxL+xArN9njf00qcE0rRE4FmiwdKyoDO06CsHc2tReTlkMkutuU0ChZC?=
 =?us-ascii?Q?XQutWx+cJvo/18DIC8Qxp1v8GX6r4KZZ2WNs6IFap4oJbLIlHt64Tr5dJLg+?=
 =?us-ascii?Q?rpzOLJoMlfH84h2d2YPTByWFNv5ANreFmuQ05cUvX8qjGDKYk+D5cYXjnaEo?=
 =?us-ascii?Q?/olj87x2bINZxGEo5Qml+OVPrKexJz8/7IUm7sOGnoQpf6jgLC1hb+Yn3yKZ?=
 =?us-ascii?Q?ZofSeDa6rtHeQnP0LRgORFVu0l4DLQ8xxNah66QDR8SMG85Rh3xdGEFklWjQ?=
 =?us-ascii?Q?+G1m01HPx08XXlI3hiogxiiX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d765778-1001-4f8a-a608-08d8e78ad15b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:17:47.5783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2l2XmZ0HgtyGuPYm9ikZV7xUfZ3pl9ayJXbzETocyUsF9eC2c0eyD6o5IdlDsM6Zh0lcJpyFDIGHP/Lr+M0rwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 02/18] ice: Support non word
 aligned input set field
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
> Sent: March 15, 2021 16:16
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX
> C <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 02/18] ice: Support non word aligned
> input set field
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 02/18] ice: Support non word
> > aligned input set field
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > To support FDIR / RSS input set with protocol field like DSCP, TTL,
> > PROT, etc. which is not word aligned, we need to enable field vector
> > masking.
> >
> > Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c     |  62 ++-
> >  drivers/net/ethernet/intel/ice/ice_fdir.h     |   8 +
> >  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 422 +++++++++++++++++-
> >  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +-
> >  .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +
> >  drivers/net/ethernet/intel/ice/ice_flow.c     | 126 +++++-
> >  drivers/net/ethernet/intel/ice/ice_flow.h     |   7 +
> >  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  16 +
> >  8 files changed, 624 insertions(+), 36 deletions(-)
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
