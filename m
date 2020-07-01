Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9668D211103
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 18:48:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46D5589572;
	Wed,  1 Jul 2020 16:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id km-03o4yKtCM; Wed,  1 Jul 2020 16:48:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE2EA8955D;
	Wed,  1 Jul 2020 16:48:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E6D71BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:48:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 315CA89546
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:48:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjQJMjQXX4lE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 16:48:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 83FBC89415
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:48:05 +0000 (UTC)
IronPort-SDR: mjjmUN3yICwK5jjF6hGSXneDH0LdQeq0jSNhjCJSe7bl75OBGr8ayrm2maOK5eKY/OyIlf3Z40
 LNbMLJbH1wtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="231506382"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="231506382"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:48:05 -0700
IronPort-SDR: vjgitRJz39dC2WS+l2V36i+gorwK2pxiYM7x28nJeOW8xpl5hq/FhcBq6Nyky6BILHCfdveBCK
 GN8Lai6VjuvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="265458168"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jul 2020 09:48:05 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 09:48:04 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 09:48:04 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx117.amr.corp.intel.com (10.18.116.17) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:48:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 09:48:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PsjpFZsfEz/s8geMzDaeZpl9eSvihW1XprHIbLDv2F9YdAC2grvylkH9UW0QqDkZu2pz0HOPoZAw0OqJJ7qsi4rXhlI6qZAwz8jTZ7zFkgaw9HQ6v504CsxLe1H7IyITk7SAkL+hxpf/TCiPgnBXV+4IOE7GYbqnLtbjfKgofG29st4yDfBaBOH4S7x1t5qayzQvgqakkdta2P0on/gL6ORi+LbUNnlsdq2ZWlstP345svxA/X8RbqE+PVauWdzekdKvhaQ88IKQtvSYc0fjN2Lg5unb9kljRY/MqF+EaB7yH5Ayi0I7mcojOB/L+nAUhJSPu9gb+KSd2vTsUA5kIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7nit3dVniTZYf0XFtddhSS27c4wixI8M3C+eTjqcQY=;
 b=Jo+wOGHhnjmsCIGhx/YsvA6/vwOzxsWXPc7bdisO4X08iCnyck4qnVpLowZhz9vz0T3eDtzQKqjt/IKtd6dhhtdMtQ6XY0rff9B+C68cprAzxn2CQeuZ10sql9dnMazpxYil+JI+e+VmQGOAcf57yao2GWixjwcuQlxXswVIuogRHOO/wEfrrYDHwka2OdtYrEkecrlCLhhD3dsnaxnS1LF70SWhXVs/7l6lHGnzoWF1Lgg/8y4DU6VYzz61pmMck+LaxXcCP3oH3qIy23CmScqd5E9SIqngaq65EwG38yNFU2X+MhkvpLDm+nq+xQtB/E44W5mJYKfElznY4hu5Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7nit3dVniTZYf0XFtddhSS27c4wixI8M3C+eTjqcQY=;
 b=DeIhflXhGLVAVHsNLKO/IcZqbzzNU3VTziNHA7s4MAUdr1W9uFW5vD1Skf5uHPZy4UY8AhGAwI+s4RMPJKGE/TGV0GAEK7/D1MPPmuRmhsx4rP1+6JNiUPfmEjgf9UymnyRmtQdvFOyqVKeUkRI1ZA0xzLn9MfBi9JyD/CvJGNg=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1793.namprd11.prod.outlook.com
 (2603:10b6:404:102::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Wed, 1 Jul
 2020 16:48:01 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 16:48:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v7 4/5] ice: enable DDP package
 info querying
Thread-Index: AQHWT0gCVyxPghwLn0mYbJV2aloGJ6jy8B3w
Date: Wed, 1 Jul 2020 16:48:01 +0000
Message-ID: <BN6PR1101MB2145CE07D1FB56FEA2DA67FA8C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200701012557.40234-1-haiyue.wang@intel.com>
 <20200701012557.40234-5-haiyue.wang@intel.com>
In-Reply-To: <20200701012557.40234-5-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: 461c3161-ca0b-4c8e-7f32-08d81dde847d
x-ms-traffictypediagnostic: BN6PR11MB1793:
x-microsoft-antispam-prvs: <BN6PR11MB179395D947F7D45F0A1F599E8C6C0@BN6PR11MB1793.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L/TMiquGApv1/ZEFbqOm8/bSkbKdTDVVmyJ4Q3ZChnvg8pcgKk8Uix80PiPvohAkl0rYW4gTIlpnl6+WHKwLLfOjgrfc0GN2Om7lgfgArVQjrt5kO55HiEEwJsHAqpLGAuouhdIeMVhIozZkuFc2t3SvIYFXRUvTn59GVQu9fraeEi0iwLYj0IHbgZbycfruzMxb9bV6hhVmfHqZIdYfE4htY26CGgDff+1mnBtJ1luHHlJBeZ9njN3h0w3ihRDLS7YiosquisdEgtk2IgzD5ZZtoVaZAMgXbCnTuVr93um5yCiDJ2dCL0+n7y1dUBpN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(55016002)(5660300002)(66946007)(64756008)(76116006)(52536014)(8676002)(8936002)(6916009)(26005)(33656002)(2906002)(66476007)(478600001)(66556008)(66446008)(53546011)(6506007)(7696005)(9686003)(316002)(86362001)(71200400001)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: IPqslZodT6tijDLVuEdWuHKHKjlsbcAAEaPbQHYHNvbfal5hxTNaF8FQbcwogRl3K2QXBKVRxuhcjNidCciXtel3csNAAcoeeai2JDSYnG/HgKCmgvKXQSkHkLTOA8IY/0FGNE7zs6fMgI+hS63KA5cs0x4TE7kEsbJivFajFsSGxc57OZouKcJZlmPjey0CSO1CuHK3zyv2gmXZwRITQc14xGOsu6k0rUuqWCdMNa9WhjIhub73awqAiliHV5PsYBqGgmmKPA+JsQLZLPZMMDsRdFKtK4ifB20sAKoGFbQQnpb5lD59xac7NI3sjAt3ABeYeJDOA7PAPIbYFKqvat+VniMrm3lWz7YAKVIP/z7DOKptLGgTjREBB5H4mBpp4omRjEnXOpbhhYChnYU8ZBT3giCWPnQwUkbEkF2qLclvJVGi3G0Mo5cTntNDEfWCvHhTIpBnRA5fbfN4HcS3bDB8hIFQsetLh0MHRmFdhHM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 461c3161-ca0b-4c8e-7f32-08d81dde847d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 16:48:01.4238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: momw/KUyvcBBpV97rSPzJmbwiTyzV1zzFCTyVuUsjqec0Wmf+hv/HKxWa6OUn+8FCw7Qul64m/59o5f7Om4Asr4v1qEUhs76IPe4qrMzC08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v7 4/5] ice: enable DDP package info querying
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
> Haiyue Wang
> Sent: Tuesday, June 30, 2020 6:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xu, Ting <ting.xu@intel.com>; Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [net-next, v7 4/5] ice: enable DDP package info
> querying
> 
> Since the firmware doesn't support reading the DDP package data that PF is
> using. The DCF has to find the PF's DDP package file directly.
> 
> For searching the right DDP package that the PF uses, the DCF needs the DDP
> package characteristic information such as the PF's device serial number
> which is used to find the package loading path, and the exact DDP track ID,
> package name, version.
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

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
