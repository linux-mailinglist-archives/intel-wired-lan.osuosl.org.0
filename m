Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C85C21AD6A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 05:18:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF7CB898AF;
	Fri, 10 Jul 2020 03:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VghKx6LB8Ofo; Fri, 10 Jul 2020 03:18:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B46B898A5;
	Fri, 10 Jul 2020 03:18:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BE9E1BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 360AD897F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YuOapBXP7J+F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 03:18:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F424897C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:18:20 +0000 (UTC)
IronPort-SDR: ysnFoajf8uOMVBIGCBB5EIxDMBapbcqv+khv9/beOIHKLhI2+OizTIvyBQafWW0yYiGgbCD0fm
 qBYon0ua+bYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="213033726"
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="213033726"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 20:18:19 -0700
IronPort-SDR: 8yE+8L/XnXNLISw+eVdsMZF76erBG1di0X+oB4LD9MHZgJ/bEZNmsk/ylVntetlKvIq2FmeeWV
 DgpOO9y1RPjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="280510948"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 20:18:19 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jul 2020 20:18:19 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jul 2020 20:18:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jul 2020 20:18:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KAjAOe0rKD3UTNR+B4HCapkkzY2dIN3MCtDlFdTE0ZWzrHWgiBBHUomkTSSp0zCs9r7/HlIa6jEDn4ag0Ul9TEftcMBYw9JDr9WWzdreE0GqB8R0PsHJcFZUVc9VT44z4fGHMoNC8X++6eRwvg/vYU/sTsecX7QiL2CQA1TiCoYl+iFw5xLvJRvchxPeG3PuazJSVe5GNc/5htUBYQU14yEiOgFmJh3iV178hi3XujEh3OaikPFP55hlT5AugS+6sp8caEsaGuIBAPXH5XTrySOO0wEO9w/MPYcBE3qkcwt6E+rAeMFyLk4UUvG2z2WRZdcuV4YjbfXJEXZRyCrsOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFYs965Wo7hm6CNOIIqWQXoo3Bu+Vw3V+r4cE25Z12I=;
 b=doH9FppJdjtYgypJaRGdgqiO4/UOxKRkosgh3bMeWvWXvUzo0/3hBSCbGl7KaEEahF9xfDYztQlsUI/cBel9GrT+5DL369VYczbxZp4EQyiiBqa/nAS4g0XftRI4G2yP6z9x2DIYydY1QBHAHSyiTd8Wz4PBUTK73eC6ocbuHr6jjVCW5phBXyJvEGN9ino4JCuIsTzlN3i5Y04KV2J2PR3xJcRUgijzwPB4werX4QolDV51jxU7T+Sy1cMrna0nrZTahplOjtWQrzLJyRYirelpZyI72qzhnz4b8QatRrebYw6tTFY+zN8UygJuG5yTKOxS9S1xAugHewSjaHIiTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFYs965Wo7hm6CNOIIqWQXoo3Bu+Vw3V+r4cE25Z12I=;
 b=mT4g1U1tI6y3Kz1Hc0fYQxRbow94DLMU2w337OL/ZWB/6dzjKnCRGfszBCRasLv43ZfLPtEIYR2oy1RvW824qwEoPxCOZvvnr/KtzuzcqjiGMLl5W3raWZMrmeU0JBjM3iUlUN66uZ9B58ol39HHdAwriWAPt0BTrJOpdmt+nuQ=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM6PR11MB2921.namprd11.prod.outlook.com (2603:10b6:5:70::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 03:18:13 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 03:18:13 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 4/5] ice: enable DDP package
 info querying
Thread-Index: AQHWVl55tKfTju4inU+LiRMcfxXPkakAJJ0w
Date: Fri, 10 Jul 2020 03:18:13 +0000
Message-ID: <DM6PR11MB39008A8F6F2B972D4EF05A6DF8650@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-5-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-5-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c036f470-9b04-4e4f-827f-08d8247fe1b1
x-ms-traffictypediagnostic: DM6PR11MB2921:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2921BE94E1B8BB120210C43BF8650@DM6PR11MB2921.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aay9uHJ9lxepG0esgBv3VCCbI42T11hrQM5BfZHM9B/lZrcdD17VFy0yvxOQkFMP/oVaHRWK6Hod+7xtdplBB2t9lLeKUdYahHzaG3l3aAU2nFvi6PkKWwn0Lwo6DLneWamP9NqI7yJ59bA+9oNKyEpLFrBwkRwnGwYOlour2wFZ0GXEDclyj32JdTLw1iYXS5wcKPi9HvkcCHxM0gHvUD/bpIJVm20FOkO3yVmrHILUjv1dB7c9Xhce0vhiMYPHcpq8iiEfbak5qzNk7jfIyXZ4v0tn3zKUCDUHA/cOj+JXtEjhQi0CJkZ9Ttd+AaK6xrwEz359adNjLtgbwjgjEJTUDHPgTUfinrxP8luZ1m/zLjm//Qyd1Zb9kJPugHa4+bDvrvznErdxwSrN5iWkTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(33656002)(66556008)(71200400001)(54906003)(86362001)(4326008)(83380400001)(7696005)(6506007)(53546011)(966005)(107886003)(55016002)(2906002)(478600001)(316002)(110136005)(9686003)(5660300002)(66476007)(26005)(52536014)(186003)(66446008)(64756008)(8676002)(66946007)(76116006)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: l2hUnGHCiGuiYY6lzSVckfTpF8kcSj3uy4x8rAvzNQ9wkT9hSFhgfb3gpmaOBbCJl+hccRsvzfPt+Xb1ij1nNIFZiHb8Qj/NYlP/3FTbZVlcHJCtsK3FN6JoUJPfELNSTH2bF+wYeLV0U3rYfQKjf1QHpFzysTxUTYwQf/DAHCem7BKFO/DvpbarachsBBw3jYkiVts9i3YghpfIU0zjBbY8tdNpFsA2CXc5+2TJA/Kh0YP3G2MhwzWDLMiaS0xjd1O9ROm/foxtGO5W0JbtZOS3p5D6cpwKfpaZ2ex+kd5sWjX6nJ1NnHO7FAGFMtIzKnG0EPxHLVf74uv7zYW59iJ8C35HWSVqlncGmHIxDIpwijWMGcKNmMagXBCbI4yt8+Iau+PtGuQ5vbNWJsgGNbJVLDf8Yn+PInf/9Cta9k+/Kd7KxHRFVTBXdzHDnarg3uA7gJYyHx/gaFwXQyqfTtSFki1BcMQCmonbjJBw1RMK8d768/HbfEX+hpFQ+Yh+
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3900.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c036f470-9b04-4e4f-827f-08d8247fe1b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 03:18:13.8208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z0dm5JpIRHjfYM0+QmrIe8x+g1Hf61iMH+gBB00sTYpJ3vSS2EHwJS5FU70mWsHbuhk9yPzRUg9e7RiicDp8Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 4/5] ice: enable DDP package info querying
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
> Sent: Friday, July 10, 2020 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xu, Ting <ting.xu@intel.com>; Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 4/5] ice: enable DDP package info
> querying
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
