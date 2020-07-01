Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4D0211160
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 18:56:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68B288ABA6;
	Wed,  1 Jul 2020 16:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wDRN9m2hHmS; Wed,  1 Jul 2020 16:56:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73E788ABBC;
	Wed,  1 Jul 2020 16:56:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 477091BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:56:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4323C8AD36
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7vRAXP-iaVk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 16:56:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9F0608ABDB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:56:02 +0000 (UTC)
IronPort-SDR: 96NIBIgwWLz+Wop4K6T8+gnE5vVH3zho+EiI0plkpiAcoBcXdylbuXY48nv2hS4PHYCBMQjTLE
 yntkNxm2gplQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164672845"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="164672845"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:56:01 -0700
IronPort-SDR: lwF0YEfci33nkpiKL84WOO+jZOqGZXvC5Alo89UyttmZdyt+wVlmQxsqb5SC5Azi8HNFX310NN
 IYwfDavm9Osw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="481664095"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jul 2020 09:56:01 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:56:01 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 09:56:01 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 09:56:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 09:55:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BaqioqsIdB2ds6Qun4Smxr1DbMPaoO1UhWvzC2YvJeJgvRvjyNrktgfy0nhAwXh4ReDd/wamSOQyC+Gc83dS10vV/jAsGfESXwaqO+IAe29q2Q+inKkVC9OkaVHtq9lvu52mLKUfGPNqcmPqm6qRut5hf/E4zm+0oRRL0tlspFPZB4atFsi8Fu4oIJ806twoVDYTA5ZGMHbh5OzbyxsdReO1w3kCSWH5+zCgcRwbtjo/6jG6gm/n1Ex9Lsros+w/ZrdWv3QOUmIJj2tuU1JXwXo4m04BcBYnofXzd7c/m7IThNqiVVBRGJFtKXcdsJXqJHod/JpDkMFH5cwSLMVNeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ah/gquyULoeCEPQlcc7gUQgrHPbxnA5RsMiScq1vQNc=;
 b=do6eJzaGlwp2CK6X0j07TCnhSKebYFbHtAUQowDPD82jiEsfak4c+pufZ+3Q2PjE9SffgRc3YHIFYTSkJ+0kPyepn0Lq7in4c4eDcxKWVVarJAyYk9Kkh9MOpYIMJ+lIVQov9w6eHzIuyFKJl0ngVrk7SMfR5WSe6o8R4g5zTqvf1HJIaaVp9Qelie/+ZIxyF6pU5OI6WS2rbSQKQrtj4exS/N3nZ4n2KRU+c0x8G5HWOP+b2fMgINJaTawGHtWXrq2OFdPzzMSMVi21PDnbFvaCs9TsJ1EtADcZDqMPAZxd8PJkoVf2hteBrptNPgZIijAI3VTkTt/M+r0lc0RCgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ah/gquyULoeCEPQlcc7gUQgrHPbxnA5RsMiScq1vQNc=;
 b=AZEU8Lz8NLh57fKKkz6g8s/UHmXvG7lDgYCDd5inHR+iT3kB0jT+9tspE8rSdLmj62v6HYNCIvzEYe1N+R//VaWoOLJpz5VuLM+gwm9IqRWhvqOO5UT4OrMUGsJIeR8qqMO7Prh3eO577fwgagw626GJEAJEJqQ5APLWdIdVnt0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN7PR11MB2563.namprd11.prod.outlook.com
 (2603:10b6:406:b0::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Wed, 1 Jul
 2020 16:55:56 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 16:55:56 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] ice: avoid unnecessary
 single-member variable-length structs
Thread-Index: AQHWTnXuYO7C61FC1kCOwbB0QLZxPajy8/Jg
Date: Wed, 1 Jul 2020 16:55:56 +0000
Message-ID: <BN6PR1101MB214500D41C86C0815DB21D038C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200630002746.64140-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200630002746.64140-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ac5a41c-050c-4111-1bf3-08d81ddf9fc0
x-ms-traffictypediagnostic: BN7PR11MB2563:
x-microsoft-antispam-prvs: <BN7PR11MB25637E84A878A9BEDF737E698C6C0@BN7PR11MB2563.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /K6bvh+sG4Qd8Vf2XocmHC/AdhUPyMYBwzm2BuMEnEo8IsUL/WXiihkg+3sJ1Rg5OQHYq2mC8vpgm7ql8fQzQuA+gAR1CdZA64I28/YtCVu8oAK/Ku6oSxeIr0x341013pnJuwq6rTCvrPj9d6wBBPlHVGNezzij7qp4gtG4pSWhqHyJnr+uS6c6PkwGrusHtkvEoudy/JL0r+O6avC6pSTEOCz6CJvEL/DZ9nLOXswSZUgR7OKCYX3buF/XS7N7fNbt0HaRs1lVxJ5Jlytd0d15VQyWv/WKFBhxmsxDZ13xPJkw3okoFU3iSQw/mXOm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(366004)(136003)(39860400002)(86362001)(478600001)(7696005)(316002)(8676002)(71200400001)(8936002)(2906002)(64756008)(6506007)(53546011)(66556008)(66476007)(66446008)(66946007)(76116006)(6916009)(5660300002)(52536014)(55016002)(26005)(186003)(83380400001)(9686003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: FrA+TdGFFmVUgI7HiDeUELrsbenK9DYwogWKx2BnWyVv0TBshSr7Oy5aRRZe23K+eFIlw3lesNItqNxTcuZIJtRg4LgW7ZC80JS3kB+vJ4rScu+9g9JJPNvSothGIkmfKe12ozBo6tcIvDRXGOm31kQ4gmNK0Z66qz2q3XmDVJvcdPeVgrhfsZMmOf/xgS6fRZ6JN6otdVBelIruzEsHVmERYQoV0o7cxBaL20Nym3fb16UrFOgUqc6cqGWbObd3w0B/BCWaR3+dt1RSTX2ZaGWQFSZHrZch/voXGtH9ADUU8SIwRjJQVzRRIsSPw4tMxSVtPlVfUACVLsJRxgJLMe58/8dNb7Xas6j6K6GDJJo+3R8SE1OtVlaaxk77FO4/FiHACEn1TRrvt1x1bQbAP95l39LNiZjfz6/e2meS82yXuc9jikpyXhp86ZJG+tBRTHOKrQ/Tmta7r0cs/FoPfFM2wlhli17cgADaOrbQkJ8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ac5a41c-050c-4111-1bf3-08d81ddf9fc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 16:55:56.6565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ocqNTmRDJqMZxcPdJ1SPKV8VZ2QcM3WSuZDwA8mnAkQxAPBZk9KXSl1RH+JdBODcXm+S6V+v3ksdRE85TEKYrZSa6rjq0FmqtRTCI+Npn14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ice: avoid unnecessary
 single-member variable-length structs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Monday, June 29, 2020 5:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/2] ice: avoid unnecessary single-member
> variable-length structs
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> There are a number of structures that consist of a one-element array as the
> only struct member.  Some of those are unused so remove them. Others are
> used to index into a buffer/array consisting of a variable number of a
> different data or structure type.  Those are unnecessary since we can use
> simple pointer arithmetic or index directly into the buffer to access individual
> elements of the buffer/array.
> 
> Additional code cleanups were done near areas affected by this change.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 39 +-----------
>  drivers/net/ethernet/intel/ice/ice_common.c   | 29 ++++-----
>  drivers/net/ethernet/intel/ice/ice_common.h   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_dcb.c      |  4 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 61 ++++++++-----------
>  drivers/net/ethernet/intel/ice/ice_sched.h    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 14 ++---
>  7 files changed, 51 insertions(+), 100 deletions(-)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
