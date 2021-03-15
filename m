Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11FC33AD43
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:22:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B48A430CD;
	Mon, 15 Mar 2021 08:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wGmA6O3ofUys; Mon, 15 Mar 2021 08:22:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 690BB430BB;
	Mon, 15 Mar 2021 08:22:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B3CD1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18FCF4B527
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dmZmsM9KHvPr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:22:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF1E94B158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:22:27 +0000 (UTC)
IronPort-SDR: xdqt/NXnu3fgo+TULpEhZookNGbe6Uj6Q+/iUKpoh9zSMw24Tw6xkEwANEy04f7fxAD7+A3/EE
 deHRwA594JOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176183369"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176183369"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:22:27 -0700
IronPort-SDR: aa95MlK+eI/13U4cQB0pYIEuMFxQUjS0q+6cobQOb6wIdqLdHiEt3umQVmXIECVQ8S6dDio0xS
 o5KZ3yqTdbpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="371556355"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 15 Mar 2021 01:22:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:22:26 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:22:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:22:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:22:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqA3eKEJ9rlfSF23Do7Duvt4WAAkOMpuXoQRku/G+rRQEwrM+LnDyx2Q/gexI6fC5LW9VpF8bMdvxpsde9uqJx3ZP6Y4d1j6BOCx59/rkO4PMndkhV92wKHnOTYygeV1nnTTq57D/z1sxc3fDh8GKzs1xQM53n1IRe2m0HN32HXIWelsmG1Fwh9lrbq01S25TgrJ9WaQsjUp+CpXqREw1QbleAh5R+kII2AJ+HlGMXtm65/ZN6S4Z9uNsvtT9F3Ytxq6L3aRoSiURp2o1zcF7e/2yXPJuaIoEoCV6QIIQNHBxlZCPd2n/bqzTQfh8hOU42z7VeLwCWBthUqOULxyQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R20JDedIAngA58J75WxSFyLLWWea0Lphf/QXErbw4yk=;
 b=Jrht1x91uucS7IXpe84b9TMiabcvAv92Nd2qHG5URwBc0yJFekUCOWlJWd5O6RpYNDSZujPjApNS7bQRuVYNPU1JTsHWOEbF3b12vPcAsrLYrDpVqwRoXpAytNqpdgr78M24WQQriUVRCFL0uaTlCKrQO9zJ/Dp+BicBYxavKuJyA+ZN8DvSBcf/0vcTDtu7fJzDOaiBOrO/dKxoqKZz/aOJ0tryBin/TWpe66jmP+l2s8F6iyHV9qVtYwO04FHUksxMOz0+ZdIK94eMITMjwFVu5enOjbDSOBT3wnqGFjiRVoB7d6z7HaIhWoNRie//X6IWxSu79DJJomVzvt+3LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R20JDedIAngA58J75WxSFyLLWWea0Lphf/QXErbw4yk=;
 b=CXpO8XEoAiQ1DdjwMLPJ3FMtP0qdFIO5dYYfpTgYyk+QxWeC/7C7fTF3yjNFmERJVHWDkgsZlWMmKGS96UwK7je7fR9utCveiUqm7nAeIaMql6UpBgj95DMDy3jeAbxn3WdgKnWYoLbTxdwRVCsMvxTBmgmFcLWaXkFuc6eHvtc=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB4506.namprd11.prod.outlook.com (2603:10b6:5:205::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:22:22 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:22:22 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 13/18] ice: Check FDIR program
 status for AVF
Thread-Index: AQHXFJQ1vqtZ+jCyIEqPzcY+TLLXwqqEvzdwgAAAOBA=
Date: Mon, 15 Mar 2021 08:22:21 +0000
Message-ID: <DM6PR11MB3099285E6E1CB03F7999B82DD96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-14-haiyue.wang@intel.com>
 <BN8PR11MB3795861D59A4116898AAA8ABF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795861D59A4116898AAA8ABF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f44dfce-2da2-4084-26db-08d8e78b74e1
x-ms-traffictypediagnostic: DM6PR11MB4506:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB450613DC1FEE7A96FC885F99D96C9@DM6PR11MB4506.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wfPINK9bLds67zqJ7P3Fn9iTS4FWgrme8sQidTq1bFKmkTzfR4KJgh9NBzvk9dsw3iEjdpRTuubRgWeb5xOzjAYarYOH7lQd4gl6C6Tl5TGSOjgsI7CVP34ZkyEFfI3TJ/ImrEsLsdGV4dk7NjOUSP8mWnHZlMN5mHmk32lZ/YjVS5vB+t3EpaMctVVJjMDOaeNeoOwLDr4f1eZYOTOR+2/xHKM+xPQalgCD+4syT4+iQCMJRB78as4ykFJvGFgG2uPKxGVbeloE6a9OENBgDwrdXqL6pdeinkcQYfirVzcNkBSrc1dkdAS1UQjotshW0os0pDI/tKc67Z5M9v2Dv54tYG7h7wyLuG8qmho1onysaOan1j5KTci70xopN8QajxqyldZ6gGLSzwIMTIapkIxpvUS4gvNeVKM5dA6FV0WUVVmK94KowwNdnMT9145fsOL6xb7TnhGmauhQ94ofcITjltCe2W/PP6Qw/DfyZ0kMY8mgqz2HzvQ1gN3SyZLxqFud0DJFhv6m9ceYCqRU3OMOQ0WKFlnrGwGgafrdhY3t5QQ99WMEp0TI0nK6IbNNXBRJJTChJbn/+1q/F0tRsQiLTz4GlxBPTSY8XplBdQIjgp8L5k6eQBmsxgegVYXaoIBlSKv+0xqM8ugIlXPNcA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(376002)(366004)(136003)(8936002)(5660300002)(55016002)(86362001)(966005)(66556008)(64756008)(52536014)(66446008)(110136005)(7696005)(478600001)(66946007)(53546011)(6506007)(316002)(9686003)(66476007)(4326008)(76116006)(2906002)(26005)(71200400001)(33656002)(83380400001)(107886003)(8676002)(186003)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?tpen6326pEbTbFxyudnFCp8f5zGzSlrpEjJP8OxxIQdizRA+zgxYIjubWalc?=
 =?us-ascii?Q?ZgGHCEUI5aYp7vXeBAMiFv5NpmGwPuPmJoMmR8piY1zl4zvd/40/1zIey7gJ?=
 =?us-ascii?Q?c+m2orIerszXq1+EJgoNZhqd8OYG1cf3ooQVQ+UjboF2rEVYvwQILZG3JdaU?=
 =?us-ascii?Q?sKKvnInlbksc54pBNFdqAN2ReKtH3LdgDqHn93apNYMgz5rQQCgTXe+CRoOe?=
 =?us-ascii?Q?mkEcRq7e7xcwDaVxdMnRBXfVhX+7PF/TFK3yT05mw5zyh7Lq8S/gHCs9Echx?=
 =?us-ascii?Q?covBuvjUF8zmO3EKx+Ifmk04B4A4REiRwvZ8lIs3Wo8nViqYJJfbPFxg87kJ?=
 =?us-ascii?Q?4XD5Gh0HLjqzIaQQqAUcGgBdJtWuXU/KsAQARZwLo6K81tvDU6maHNNwyVfp?=
 =?us-ascii?Q?arsvMwgNkxSpJgl+B14O1NodXE1Bg9+BSwFJ6QJC+Zc0P4ZyjYtqjEauIMem?=
 =?us-ascii?Q?/1taD8s1T7NN9d4edDGygjq0zfwTpr3x2ycgaYLanjZbAY/R/IYaYWmtGd5l?=
 =?us-ascii?Q?1MC8LCE97eoD96rAxqwsyClw1oD9NHDc5cGoqICzvunekPd0XAEGJsN/lRI8?=
 =?us-ascii?Q?npapgh+M61dX95BtQGGLgFEMLXgfbNYK2yjAMCC1d+mlUqnjoPc2jTn7FS6q?=
 =?us-ascii?Q?t0wWkzwWcFaF72R4danrD6jKo0XOpTIhOiZ9gvIPKbZuHc23fgwkF50yCH28?=
 =?us-ascii?Q?EjyYnCCtZN5uEZNVoH5Q1sAYaGRSe2uPl5+iclZFluxutEokVo+PvXsmyMYT?=
 =?us-ascii?Q?CXc+3Ao7CXwIEK9zEyd1MphA5UJpYR1XP7MmmWbeut0E06amlJ6SxuF0DOKe?=
 =?us-ascii?Q?BBHL/9J1nIiscBhVst1VsSYyBKR2ccOVawxsVxzOQ9zDJ/++LJqTLWlGALup?=
 =?us-ascii?Q?ckxh95Tt+Z1TnU0UwLr2rx/bRxken/57ODk1KEFMjutXMGLGJJcydJeDzMMe?=
 =?us-ascii?Q?oLew1xeV9FvMfZdD9LhyHpTLIKJ6b1bDq0ri6HS2Uesg/YqAPBCURW1Rh8QQ?=
 =?us-ascii?Q?UKc0aLaldW4nR2Arnhy0YtVdBboGEoa8Y4XeTYFY0UqACbC7ARXoEoz96m4w?=
 =?us-ascii?Q?4QQsYSC2bBLd5OKdGpBaRGI1RG5A29Rkrpkt0oAdRY8Q5OihBiATGViHKris?=
 =?us-ascii?Q?L0B+PToZ6EpBCEkDbNxWG05zrweO/K/qKxMLPrJ4V3NzdFSjGXuNuQFuNlq2?=
 =?us-ascii?Q?1yBBzPgTb9juFid5TWtAkc14ePYM/S8VRdQPaxziRcIo+ORIat1I2SDG9BC6?=
 =?us-ascii?Q?yCljlBrntTkuv5t/fDbMGsFdMT5AAxyW+NvoButKEjaWj6JauzM0RzqqKXNX?=
 =?us-ascii?Q?/QXbwypbNuym/Nl3NXdFwkao?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f44dfce-2da2-4084-26db-08d8e78b74e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:22:21.8449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: noa6eEyEcU1LQTjeaRGZerxjJqxrhCXuGWQ//h95HhxKTU9EnLrpNL2Ej4C+Q9W+NIiHYKw+aAB3RYvPFGf+tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4506
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 13/18] ice: Check FDIR program
 status for AVF
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
> Sent: March 15, 2021 16:22
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 13/18] ice: Check FDIR program status
> for AVF
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> > <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 13/18] ice: Check FDIR program
> > status for AVF
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Enables returning FDIR completion status by checking the ctrl_vsi Rx
> > queue descriptor value.
> >
> > To enable returning FDIR completion status from ctrl_vsi Rx queue,
> > COMP_Queue and COMP_Report of FDIR filter programming descriptor
> needs
> > to be properly configured. After program request sent to ctrl_vsi Tx
> > queue, ctrl_vsi Rx queue interrupt will be triggered and completion
> > status will be returned.
> >
> > Driver will first issue request in ice_vc_fdir_add_fltr(), then pass
> > FDIR context to the background task in interrupt service routine
> > ice_vc_fdir_irq_handler() and finally deal with them in
> > ice_flush_fdir_ctx(). ice_flush_fdir_ctx() will check the descriptor's
> > value, fdir context, and then send back virtual channel message to VF
> > by calling ice_vc_add_fdir_fltr_post(). An additional timer will be
> > setup in case of hardware interrupt timeout.
> >
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
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
