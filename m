Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D72A333AD23
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:16:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB3C56F532;
	Mon, 15 Mar 2021 08:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7kh1InFPP7Wu; Mon, 15 Mar 2021 08:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E700E6F4C8;
	Mon, 15 Mar 2021 08:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7CD01BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C29246F4C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNCpEHqCjSQH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:16:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CC19606FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:16:01 +0000 (UTC)
IronPort-SDR: zRJpEco2hIOApBi7ISspLjNdJn+Wlx4RkCH206KmlQC0eKmDibjEax4jSWqJ8dIZ3FZDa9N0C4
 Q0CZ4ZUr0Lkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="274094451"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="274094451"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:16:00 -0700
IronPort-SDR: Z2oQV+kKmoqqbgHMU9ZTQW1+LwCKO+3APsN8cPIndgJlDEYOw6jliWh43l2lonYLX8rCxn2+Xj
 gArk1Wd4xZDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="601349783"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 15 Mar 2021 01:16:00 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:15:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:15:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:15:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRNfzy7hNxtR/XmXvT276v/iD7X2VIMlChGfCXah3GmI4Eaqs+QmjUg4XbQzCOtKk20sXDSfmkZkMitX4qHzb3mHySZMsagUbC3AXi+aseXQ+Nn3CCHE6+SAyt62GpJjWM6ZoVRaH/tNyx8szg6IvsNW3q1D6/kcJUGifnKuqZ1BXYhHhV3m7c2pQGjkHo9CN6SYadE0XolvjnF5HfC6o8qeyJ6f18qy3yKaKiWpmSBgrcCbEMckzotihYi7Gpy/vwB3APG4QVpTvvrxK/8wnBuSnSDDbBly1ulEAL+6U0tsb6BBttxWtiZwleOrwm170+9oIKzh9R9KahY05UUTsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMJbYS7oFyPbL5CND42eyc8sW2sAgyMK9BXRyIj8O5A=;
 b=AwiDwCpCanj6jrdOLutvwXtQAJJw6/KbRp0NivGpjn6/7n5X59uV0MIiwz2DQze33r6YjAf1cAZnxNpff0U+kmGeF8X2JIx/Wq7Vfr3M2G3w4bLybELKBcPvC/RQHcIIXxSZsqIWKmUie1T3LWi4WVu4+ZRH9TbQLYN9wUu2DA3bQNqAcUhCpxzKl581mKLwnoMAw1/IGcbWZu2WRPUMMpV2Gok5rSAS8t5Pm+8ngO4yw9HkAom5vRBI5plU3LeFJlpM9kDpAc++T8ET0uU4kvrmRriIhn3y7T/TRztqDpkI7EHDLNA+FfkY9p3RwgGgspieji8S3H/JrQI5aDzvrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMJbYS7oFyPbL5CND42eyc8sW2sAgyMK9BXRyIj8O5A=;
 b=ct2GYvDs8RKFzMrEuTftXwj5ZmTgneL4vacIDjmg5PDqIlHO17rRhkomMibt0gjIIRON27EOhJ4wzDOFVkO0V7H8Zl/JfrKaX4x2lU/4CaUWNlClr3E9daVr8T/iKYzdXx01zQUobxzn7OFCTege/nW3mLdfq7o9C/kzqDatzEM=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1297.namprd11.prod.outlook.com (2603:10b6:404:4a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 08:15:55 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:15:55 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 02/18] ice: Support non word aligned
 input set field
Thread-Index: AQHXFJQB5to73g7i102EQSLpsgGWoaqEvWiA
Date: Mon, 15 Mar 2021 08:15:55 +0000
Message-ID: <BN8PR11MB379515C5645DF10AF04363BCF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-3-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-3-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea494af6-6fdf-41f7-616b-08d8e78a8e76
x-ms-traffictypediagnostic: BN6PR11MB1297:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB129737603A4D49FE8B55430AF76C9@BN6PR11MB1297.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C/EXgJ/+XedyS5N7C5CMoaQNJwCc/QR6J0e0kJKD5yLi5D8BLzSZ3XAVceHa9luFVhqyC+L2dkdPHzb5Su0ig+PUhhPhXnDzGjB/7fRf69jt8LOvBlvO033+ibLyZKRwYp8YXljrea5iEXdUrK7piaKeYxD8z/sCaHs99fAvmkbKp2Zhz3pv9E8ysMWfaO6s+CnGUuOMBvlkE5HtOwl7ROC51A0wS8NbxMle2w67O5WwxzTY4s0P65AV06/VhvibYJ67dObnhU/sLNeIJh3rX8tIjbRVorjjmZglIjhkM929lI1JbnqkSFJzc7B9u5YkPz28tTEZ+FhRrSFa2T3NXeaE8W+c1wRvk1hDgjWokwB+GdBTzz17A5xCMsAkrh7YvGKmNJZi4WE0t2zMknwpmreO3uafrcyLNEH7Em1R7P9IZytn0Btk5kvz4JevghW0U3iztt5g2DJBTJJrDfL4MGMorOFr+vPxJAIh/wREZpZ1Ndpf7e4HLIxGvj+OMrqJfmgyAKBPgcQLbGmQchEubsqL8o5ZtgIj2TMm8P/lz68IdS0EKkTODEuEdTrn1qnCbd8MHFgI9U6D1Ty15Yr3fFOs+522X0Jq5iMsGHDtqdtaD7d5VumUSFGC2fy1X8MEW+Br6pbKnexT5+7fiqJrmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(346002)(366004)(136003)(86362001)(33656002)(83380400001)(52536014)(64756008)(66946007)(66556008)(76116006)(6916009)(71200400001)(8936002)(66446008)(7696005)(9686003)(316002)(54906003)(5660300002)(107886003)(53546011)(4326008)(478600001)(186003)(2906002)(8676002)(55016002)(6506007)(26005)(966005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wFuZt2kfLUL1+Tu73YwJbf6ybFVmxfFpa77e1WuqpxHiiHirUDS27QgcIJVQ?=
 =?us-ascii?Q?Yb/OPKNEizRh4icHGsOH4vr25vBeL82btfE7X8BMyKu+14hdLdR0Rn6B+ToI?=
 =?us-ascii?Q?O8xtGBY7cvlTIYdfJzxV9/YL7SeJ8GWOb6Bjy6TpSpQ66LMz1KRWXGGZ5HAC?=
 =?us-ascii?Q?U83hdzEpp+j9auj9H1K3t4xisOr5W1nlj2dF2uomU3o9mzfVS+PNUKIlkOBo?=
 =?us-ascii?Q?R+yDJoqjWoe2/3psnNwwUfk04kFuO57nWc31FgG0M0LQzQXttwHblSSp9WAE?=
 =?us-ascii?Q?JEY5Elq5INL5rk9THW4Ugd5KmdJujFtFcyBR1DVWnOQkZ+bnB9YX8bU8LPnM?=
 =?us-ascii?Q?imQ4+wsuHszQyiTn+72qnY/Q2IQxMN4mkaX0NoiD3Nqg+lUsH07rkD2igwGV?=
 =?us-ascii?Q?9Cnqz6EZOu4WmtJRJDOApzg9xfljhyEks3z8SKj1itGhN6mXDTRr04FZkkBu?=
 =?us-ascii?Q?0A6dgURsBh8+acjrtsQI4gSKmtkfWtppOPTqojQ8bPx4jGIxQ0kPj6f1ZvJV?=
 =?us-ascii?Q?O/1LkYOy05VlNAYw3AIml3mOqiFsK6ZqSErU2lGUciXQ0fRN+tC6+0BJwmWV?=
 =?us-ascii?Q?DndWUkFaPrTRBIbh8ivf1Op9imvWeqy8IL1AFHyA48VJM5JMSjqJ3Sry+ijq?=
 =?us-ascii?Q?Rmii0Su7gdNljHUHGjPpUX6s1wp2hgzYS+dwDGHYke7zw3ZsACMfIWWdP86K?=
 =?us-ascii?Q?GROV0KH1HHbzN5+z3rrE/J/BaHG95UBwsxe6N8hipPszMMDe+S8Y9Fz3pAme?=
 =?us-ascii?Q?YpcoD5oSQljv9yVgHuWwXUmmxKCNNv1l+nDm6ZNfhB5oSRSRDLN7MomAQ3/S?=
 =?us-ascii?Q?qJbd/unHZ0b0giMvG302n4kG3g072sN/BNJjlCOMAKTpPWqjRrVV+iCVt8Kx?=
 =?us-ascii?Q?wvZvonPRDDOCJLsfmJjFZDjs/mNqHBLccXRzWEN2kS60Ju5rkagvwCCo7Bbt?=
 =?us-ascii?Q?49rjIeGMaXHjr3KXOxAVIPZiwhsb0T+8zmRkxAqVBP1SQaqkCiCtla188zJC?=
 =?us-ascii?Q?B6p4JXbQz71FcwRjkDuFzojUsUYJP9MLDT3L7EIrjqKUTqTU8s6sreRSHuB9?=
 =?us-ascii?Q?6KymJmeaUpdo6lVKyuNMaiaRdjZokOes5F5D84HIkoYXQm9OMdScVyJTlplA?=
 =?us-ascii?Q?TOO1zCJLaQQ7e62/B5VORLeu9oRzZmY1d5+XJy7xQ8Tt+LcdG9mIYnKHL4K+?=
 =?us-ascii?Q?e6/xP6baN4bExaCU4jsPkMrnhNAi/zMLtpdj020IkX2dUE6Xcw2nIeUKZqha?=
 =?us-ascii?Q?e7c7002rfBxOhONvg/3x2YWPpa2CiKwRwSQZREvS+3VuqcDzu4epbJ1OGjfq?=
 =?us-ascii?Q?FhA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea494af6-6fdf-41f7-616b-08d8e78a8e76
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:15:55.1482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k1JpJr5HZ6skc/7hk8QS66x1KvnkBrnaFR3AqjpcLrPgZNy/drT2xpcUj4keYqqvowsI5Ao4h3pkJjwKKry6kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1297
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 02/18] ice: Support non word aligned input set field
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> To support FDIR / RSS input set with protocol field like DSCP,
> TTL, PROT, etc. which is not word aligned, we need to enable field
> vector masking.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |  62 ++-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |   8 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 422 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +-
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 126 +++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   7 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  16 +
>  8 files changed, 624 insertions(+), 36 deletions(-)
> 

Re-send to Bo, as a new member.

> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
