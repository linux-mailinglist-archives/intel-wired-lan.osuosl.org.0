Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1993206DC0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AC8A88495;
	Wed, 24 Jun 2020 07:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gl2HM8R8+R3P; Wed, 24 Jun 2020 07:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B038D88559;
	Wed, 24 Jun 2020 07:31:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB6561BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A6C7E88091
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pnwe1U-lDHXw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:31:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 586BE87B4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:31:14 +0000 (UTC)
IronPort-SDR: CK+/oWmJ7GARuKorgSrwVB3mqoaFh5mWwSBM7QYILg3gaToqO4DSPJlKZ6cBSfy6o0FwxBqDXi
 Dctf3Usjmx4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="124028601"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="124028601"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:31:01 -0700
IronPort-SDR: XFgC5Vx5W86AxD49P8xfpyVRo7E7PQqeEJd0tAQBKu+XJMEFc+HdSh5ehRHcVWSUbD7/ZPm1HZ
 mkmy/4d+DV4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="423282905"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 24 Jun 2020 00:31:01 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:30:42 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX151.amr.corp.intel.com (10.18.125.4) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:30:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 24 Jun 2020 00:30:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GF3up4Ou+Pwh2NdcyYcsYG9rqoQ8MVBS3/KzCQnH0nb/X+1vy+ALFibb8wE+9TjnZWye6HFV+1hZrLCaWlO51S8W3MafSleSh3Nu7SNk8VNpuvGql8DI0/FlLgBZ9bZ4lghu5O14V7B3Z5QLo4thnN4O3hmRDGQY+AO04AIuJ8yvvGd4+r4Vqm42pSFLTYPgRH1rKah8c8j812cPio1RG+0Tjluhx6f/lQ3/v8EQhPlmbZI0amquhjS7I7+Is2ktG8TEZbqKhOF1hDOsYwpErxBqztCN5XTPadqtp6sbP4nfki7zbSiGME8+sHS2wLY8nI0kCs9pMUiP1GBPsZ/IOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ommKNZz73PALOUZhMsJ4ftEcwcx2PKNB//YcJrkHVI=;
 b=e2s1iDVHoRfLW1YXTG+Kvw8rNh2W126F0t0WOEIe/BwcE5JNeDbzl2vjWZs0pE9dKwz60X5B/qQX3zuTEBDbg3U/w2+kxTyqQRnM4KtTKe1l8mbxU1yJuRhBkCUoHFWsdtvRRa3FNkUcWleKl3SdoHfOn3tgVkwEWXVry4Q6LFwqsIZULuosYWYi4JVi8EuTeS3iehOOdZGP9xnViBn7c+wT2jVRnbLqQmufWw8cjcKwRdpCFmgqs1lhOUVjabQHT+Q6Jni1uHy4aIMIwTEZjr8px3THqkzEQxuR3eidGZmBhVkboa4l7nJZ8sMQHxXYT4DaT5p4Nr2MByVnbRPtdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ommKNZz73PALOUZhMsJ4ftEcwcx2PKNB//YcJrkHVI=;
 b=n+VO7oKdZf4zUxM9A9ydjB+c6D29Skl48kmYNLr8R1eKR9GPkwI2vdUq/9+Wz+WL3xt4NZ0bSj2qbitZ18l6b6XJvWObS9wAdrZoBRhSlLeQ4BnxldYo6utkZR4AC2pl9le5HwZC0quyr/g0qogOMrM5b2vVKbGdiBgSvoLh/aI=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Wed, 24 Jun 2020 07:30:39 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:30:39 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 4/5] ice: enable DDP package info
 querying
Thread-Index: AQHWSc4yQP+whMAuGU+8w3W/xztJvKjnXuqw
Date: Wed, 24 Jun 2020 07:30:39 +0000
Message-ID: <DM6PR11MB3900D1118953EE8B313D80F0F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624020801.104003-1-haiyue.wang@intel.com>
 <20200624020801.104003-5-haiyue.wang@intel.com>
In-Reply-To: <20200624020801.104003-5-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3999fb49-cb50-44e2-2760-08d818107ed6
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2043EF9111CE54EC58287CABF8950@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LLkTaEj6K7vEyesR84fnqh6ZzGGgrzgJab5eOycd6qr9DSgoZMx0WtoIPfi+QNo+u+rpVtRWM+GmFR614EO3GnZFL1VkKOqPYJH/KLpmUb/lAgb2Vw/O+adAJDcictV5K8B/rWkR8q8DOh3dYVD/z4j+g9/En898ZBzeGqk4gP41DYUIbOKVZDapd2F250mdNuQe82qatuseI461f/oHII4zZz/2dKDENV2ByjjSL1cro2dxCcsRChEVblOjiRjyaHILrI+wvzZMd/MZGo5XkZKPdN458UGwRGqzOCqCxLwJP98GRKbB0da91Jn37K9ngk2kmmraqhVjzOewHWEDWDi3AhsAl7sAwNFrXZITlrLPEUx4Nl/wwjsE1MKveiLe2Qe1Y0dFjGCLAMydGgs0ww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(52536014)(83380400001)(71200400001)(8676002)(107886003)(26005)(55016002)(9686003)(2906002)(316002)(33656002)(54906003)(186003)(86362001)(8936002)(478600001)(66476007)(110136005)(64756008)(66946007)(5660300002)(66446008)(76116006)(6506007)(66556008)(7696005)(966005)(4326008)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2BcwQG3hNsr/aVpMr79lhzm4Z+3HY8+ArAOuLXSvn/m/9KMs4aLqPMjv1Cz6QQBbm8j/ezrkWFZg7BVtsBOvsQkBcuyU+RpdNbSOobHJY0NxjRnRBbW4QsU3QvPgnA9klRNQzxPz6Z0aPMCR1MwvkwucD4GrVy8l02AfQlq8Hbwt6t5td/ihrv0cZMCFdgabs5YqqUlexgLMbDqKhJGvLuPIkTk+BFzS92pWbWiAhAzFqnwbH6tENgHBj+S64iyW/cDPEaIChJQ4pSdm5SAZM6iHNzEVz5RScyU/zTbntZNmDljw49BmdqQAROfmCbC/9rbwXL5H4sZlVv+UVARzWMA0DyA6y+7rnwlmVDqx/UScIcUSQbR17wSepex6q1zOuRq+EjsWDNo2W4TqRBSvKMJZhvC/1oD8/+YKasP1nPhM3Kq9Imkp3yEUg4x5Gg1wmFLYhYSTSWqctVTYJcBdzCGNAWh0NeLBOtXCBgDtIqRM4KVJihFqAJIRAYzS6xCz
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3999fb49-cb50-44e2-2760-08d818107ed6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:30:39.8543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CCY40UP9zk8ucPYBOm53scuztjxw2N6q9YWt7OBk5VMnIXAl3hSO+F9jZUCqGQpB3vFaNqZPTIANflywjeRGFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 4/5] ice: enable DDP package info
 querying
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
Cc: "Xu, Ting" <ting.xu@intel.com>, "Rong, Leyi" <leyi.rong@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 10:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xu, Ting <ting.xu@intel.com>; Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3 4/5] ice: enable DDP package info querying
> 
> Since the firmware doesn't support reading the DDP package data that PF is
> using. The DCF has to find the PF's DDP package file directly.
> 
> For searching the right DDP package that the PF uses, the DCF needs the DDP
> package characteristic information such as the PF's device serial number which is
> used to find the package loading path, and the exact DDP track ID, package
> name, version.
> 
> Only with the matched DDP package, the DCF can get the right metadata to
> create switch rules etc.
> 
> Signed-off-by: Leyi Rong <leyi.rong@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  6 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 52 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 23 ++++++++
>  4 files changed, 83 insertions(+)
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
