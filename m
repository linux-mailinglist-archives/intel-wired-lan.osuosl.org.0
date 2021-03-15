Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054EB33AD27
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:17:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80A2A430BE;
	Mon, 15 Mar 2021 08:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X-dX-6i_0wcR; Mon, 15 Mar 2021 08:17:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FB2240146;
	Mon, 15 Mar 2021 08:17:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CD3E1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A62F4AD93
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8jnErnZ4Mu0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E7C04A332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:17 +0000 (UTC)
IronPort-SDR: np+cuchFhSLc92WbZJFlUllwb4Wef0agWREf5MR8VW6onO+hnYcoVRzmOeTNk+AsNQ7uk+aitj
 pFxjv95E1AEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176182804"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176182804"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:17:16 -0700
IronPort-SDR: dQZKv7TkZ+AAtUznMwYIDaJ/WGI3v/hVyoKJ8dL2G1ZHyVW/Nt1KvV1hxiwzwSd6BKUlX1XOu4
 lQ0PPCsAEaxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="601350164"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 15 Mar 2021 01:17:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:17:13 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:17:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:17:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:17:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ipKf5F/PmFTI/DKZbwjk7EO8K+C9Co/V6GZeS72khPi+aakvsBNZVCUS50489bdVb3AovKBYgMP/OhSOxOlHMUbFZRBkVjtg2ycXMXlsjFAS11IeU0imn9ubAy0uSM1VIlZ+lQJWsLXqfMgR/VMWTO+tgZnff6Pls+wLOh3vCbEEYlvOFSouxlW/2Vk3T2BbzsKmJpFQ5wKBBg1BDC8JvO7nebGLZcceNM68bkyuI9D/1eLY3/1QLy+eHXey5Bn9EVziwe+P9Rv+/iBxBzkie/9Ls0WhKSqVvsrBV61ZbPOtYc3Dh8Ubdz/FpSy0xT74u7fZx/gegNWKOxoUNY7XZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TyQCPPG0FzSQVdiZXJmAfdXbPG6qV8Ioksl08mIVtGg=;
 b=Q17tVcT6HSARMh6/S92mSMxwEQLbU55vCa34l5V/1DmuuuXmGrYUYaTx6t6lduLZ5g77plPa85PDKuOdiP97obOwn06ltRVj2qmmHpmuNJjmSAa+2ASEEZlfVwkJjpak6pgPFvL73qUXpGCJrD9nyrEWUYVi9Se/0mkk3CHFNHAAUF6wpRivCUDIsWACgrNlFpR4FkBABfkbCLPs7B5vb3pQ4TYZkbbZ2TQF954TyoKZJlz50AGXrxvPh35ShCFHQbpCa6ysAZRkgQUZRpbRchf5g7wDdqlyW9/HNPqoutDgHBtwKYRAPwydqav1djgugjBtuNOBa4vAJ43mB/PsoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TyQCPPG0FzSQVdiZXJmAfdXbPG6qV8Ioksl08mIVtGg=;
 b=CrSFuVdv/y8PqDKwAUbnHS6OBDz2XhIlQsyFZnAhbDAoGN7hRedtHpyZp7NC0GAB2JJkdKk8rfrjcZ6nGhxKqdeOfMPA4l7O1NTxXa/AjKjzuT8PB+XeYftbN57yGi7vXoUmNCOi2TjxvHa87A90Y/07kJzE3iFVXixGS4PZFkw=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1297.namprd11.prod.outlook.com (2603:10b6:404:4a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 08:17:08 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:17:08 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate
 GTP-U uplink and downlink
Thread-Index: AQHXFJQLaFTBYwbHxkisdGheAtNOFKqEvd6Q
Date: Mon, 15 Mar 2021 08:17:08 +0000
Message-ID: <BN8PR11MB379543076ACA37D78FF48E18F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-5-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-5-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: c954a94e-aaba-4ec9-8fe0-08d8e78ab9ff
x-ms-traffictypediagnostic: BN6PR11MB1297:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1297DB1D133B9D3A4BCCB7B5F76C9@BN6PR11MB1297.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wz0F9Yg7y4iDCxGty42IcJs6pvDY3h3OUgB3JcjvN7Jani/5floNJaNJ+r6slTuKGZnYB3Bkq2T9+BBZ5VPv7gs/8CSWZVXfQ7wey+uwQf1mQxv/YnTKEDUnF2TtG34zYkTc5PLI3fPb73OgFIjomjsWLUH6biw8yk6pY3N4v63Zkp+tHGtd9r9u51G6eA6sPNDbwv2YukzyN0kMc1Xz6BoVfa3ri/GLJ53xF9qp3PC4Cd7iQSWQjQzCkx8MZ9zFge3+DbmE9+D7ah4NzGFQqQ1eXTXk9Ux+2j/P9pmroHwubQ72fjhU8WKup04p7M0DLid9wG91RAe9t/NRIkAOhyWf99bYGHsItjlykZvznyLBUGQ+BsHwsg/C2Kn8szEcTDGBxwXqMfA0/o8yORp+gwsIQMsWhJHtaiPUbwOfVprzgbG+HatOcxqsVST86uzwfC4TjE3d1CNWB7wpWz9jgAvfhkOSTP5uU3oexY+MwuWfC5UbS8htzpEd1kzDeTqiXIfw4js4uU118BjPlVE5lIqEdZXWcx59w7HhW5HtX1eaLrDX7RdbQZeh4EtKmt41C870QS88S2W5FuSr0H+u7fQ//iT9i52Kd9HKUFntcnY6QJ55+JPtYOYmFdy4cbFnuw9Pu4AMNBLbJtSV/FypAQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(346002)(366004)(136003)(86362001)(33656002)(83380400001)(52536014)(64756008)(66946007)(66556008)(76116006)(6916009)(71200400001)(8936002)(66446008)(7696005)(9686003)(316002)(54906003)(5660300002)(107886003)(53546011)(4326008)(478600001)(186003)(2906002)(8676002)(55016002)(6506007)(26005)(966005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?OD9NC+ujsKjQWyHnHRQJoH/UA87jJvU3MfIyXM5An2XfIAb6mKNNrC3RzbzI?=
 =?us-ascii?Q?CIAxuYpo/qZ3aTZNE7txvAUYCOqewtIJ25TMi+EaBX+mTVFI3cvzxJIMe83j?=
 =?us-ascii?Q?xs8gzWQjwqUiJvmUwKsE/GMTdrt5jc9tz+j5D6qA8qoia14EnyYqnbqQPyBQ?=
 =?us-ascii?Q?DcjYrU+KYUIitijDMawjX0MgVzj7VwONFXfPAOr/UEGLTjlA91HcFk90N4BV?=
 =?us-ascii?Q?LPi9QVYnTHjmyMUrcZYccnnwZ5mPihN4qi5YGT+SDnX/WM+pgjfrLKbB+sDh?=
 =?us-ascii?Q?CrF96dBD4oST6rocunEZs3iJlXfKqhq8t3T+r2X9tqmzNl0ZMo5iWjNoDgCs?=
 =?us-ascii?Q?1jCQGOOBKBYVxEyLTEmReeCjTbtLBx4N4qepeIgEW2ohdPvViiBED6mmwBr6?=
 =?us-ascii?Q?sr6UCDFhKSeQuu2YqNk0IvUcnCfIeoO6y6/yhRJV3DfL/a39dI2EZmRWxGWG?=
 =?us-ascii?Q?U4bGj7NGsrNKOEHRd2VkemZhedm4dAzMLmG02Sz0pOlHz6TNh+2Q3KnbwIb7?=
 =?us-ascii?Q?J0iVy+YkaNIzFmJhKOlDwmx1dnJbae6kHgnugWHajFwnlVEbGppCM2QH7Z53?=
 =?us-ascii?Q?FRdQcdW0ZM/QyHlRE/VGb4tcH6vpf3f1b0i1hzaU9XfB2vzfEONMkLr3uMfj?=
 =?us-ascii?Q?4JXio0KfYzyHUXOrGyDN2CEvB16qG1gpUbTWKDVcsxeNlgsCDakRdIYdBDnz?=
 =?us-ascii?Q?prko7bc+iN8Ozz9L1Qjs5K520fNAYirLgxLqBkgO+THwyX8WGSrZ/+/8QXma?=
 =?us-ascii?Q?biDudalJquNbJ3FrErvDt6eMBeVBYGNfAMzegBpUKfIiq9SpIZFhUVvTpZss?=
 =?us-ascii?Q?265UzJYyCTw7JZvHNuLzbBJRp2kCS35Aon+6m3hGtwRgeA5aDms9dAsUJL7R?=
 =?us-ascii?Q?yFuODFWsYj74ReedJ1V8CwR5ID/cgvQ3sGWpqlBNaP6GRThe921q+7guaQJH?=
 =?us-ascii?Q?U8vahxkDqMzzQzq4IYq/7w/EUeQNH5QprjHv5283xMUJc1wEMwKlWot8pkaU?=
 =?us-ascii?Q?02Py3rfCbC2pK6HUA1J7DUIQhTn6mS2Ell2Vwocibp8/EERy0xyLZ/yZHBj5?=
 =?us-ascii?Q?JKwrWpBZStBAfkUw6QPXdjiLZ05MrwhPB7rk5DurDRsZkqb/ZWZGrqWjnD8O?=
 =?us-ascii?Q?A7uANIiORFz3d+rV+e2N+kr9JOnQ4AyjY7KkfMKIw6BK+EexsXdQGxEl2kNt?=
 =?us-ascii?Q?DMotAtTGeW8WvC9GLCyX92i5X8SxqM0k2cwzlib92smdir6XmIFpJ9s6aSnU?=
 =?us-ascii?Q?50Zw2atE0gQvUOGCQBetfzMhx5XtWNiWbl6+2qN7k2YO7wLTWNKqh+oGTfuF?=
 =?us-ascii?Q?LM8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c954a94e-aaba-4ec9-8fe0-08d8e78ab9ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:17:08.3052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jUu/5+8wIPpAc3knhEUpETmcBzx78xJq0NiJVPNhC15MvlJyATHr2mEJ1AGTzfc+1LoQE2PtEGLHNeVLv+SRxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate
 GTP-U uplink and downlink
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
> Subject: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate GTP-U uplink and downlink
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> To apply different input set for GTP-U packet with or without extend
> header as well as GTP-U uplink and downlink, we need to add TCAM mask
> matching capability. This allows comprehending different PTYPE
> attributes by examining flags from the parser. Using this method,
> different profiles can be used by examining flag values from the parser.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 106 +++++++++++++++---
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   1 +
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  61 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  88 ++++++++++++++-
>  4 files changed, 241 insertions(+), 15 deletions(-)
> 

Re-send to Bo, as a new member.

> --
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
