Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2B9234D05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 23:31:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B71C21544;
	Fri, 31 Jul 2020 21:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S2eC+5vOy1M0; Fri, 31 Jul 2020 21:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0201121519;
	Fri, 31 Jul 2020 21:31:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7E11BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 21:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7DC3787899
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 21:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CIAw1hAl8fWy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 21:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3FCC687A18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 21:31:28 +0000 (UTC)
IronPort-SDR: WAGTIIIEYZGozvx6O8KBcPLknOhPGagR2izzAAhgTjXnY+2WElczcMHDc2GXqzsCUY9glMwCWP
 5Df4dOxWDvaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9699"; a="236735982"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="236735982"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 14:31:27 -0700
IronPort-SDR: y9ixAbjYAl3xJVKI9jRJ8DoHoFbrfO0x4rIfTQGofypEGL3REkLYCkyX8xKUiYtjk4pdKqBQWt
 MjbdgG5yYlnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="329357031"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Jul 2020 14:31:27 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 14:31:27 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 14:31:27 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 14:31:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 14:31:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DuOmB8Vw2tweo/lZ4Rb7bIkPaL5opiEXoOZrim0w/iB4upuZI3Clg0ed3lpmgW3e2ZG3pR+qU8b+t+LSh3U+Oo86kX9zyUXXAYUGHJ571yj5OCI8A9RvCzhwm0QZGylvU8ZZJ0Cm3oyJjB7Y2VDLozHTtaU8+UFR75Ux2NldXwXXuWeS/BqfNe2im8jXl6XVslaYCPTI6BZ/pTFES5XitWs13UOjNJkhtbvbYUDcdswdptJE776DFnfuruCOYdvzaVL0GrCnpGLvTlF2pZ3ReFcaHUkiBYs7q9FGyvuR7rzsdHRmRNsNUMo2sd2nfeNPZReC5yIm1HUgwzGktrdarQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hltfGkw29/GnOdOsia7z+SFNppMU5Djzi5LIO3wzHY8=;
 b=oQMYYW3rPaL6c/k7/Yhpk49JGeUv9/lV98xRALFy6iRsCT/5cEfL7EDsGc6ZilW0b+tOi7HBewUjBZprWWpNtTHSGLTpzJMTWZKcdFp2iantVgGaOxbBNRsZoByMAwnwCcu2V3iXaMYOv9D7k50k8LbfR63EDMtrq4YxTN/NcmNBLRD7XnQ8VqjqG2ARfc5hyQtWb7vmjdchulO60hhDeakKnptJfmNeqvQGioZk2HObUw2BRwgxO/83IhJNLEbZGt8HweUCm1fosQXSFcfVdUQoSbHkyZ+TaHUcyPDJJucNoolPA5TTtXLPekyUuZiPcJanrTAHbwbOmpZVzw+Mkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hltfGkw29/GnOdOsia7z+SFNppMU5Djzi5LIO3wzHY8=;
 b=ab5rigWQUckiD2Gunn6lxslk2P9+a8nEekdgpJxzExjU4BRsDvTXRpRrv7mZUSz/kuJpqHTy1vrZR/AwW8UKwYtQB0yPvACLkqMkWlHclUtmzWQTiumY2V1+eHI6ptjXaU95xoETB2dbEWmUtoItrps5WPilC3VWQs++79j6xNU=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3601.namprd11.prod.outlook.com
 (2603:10b6:408:84::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.17; Fri, 31 Jul
 2020 21:31:19 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 21:31:19 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] i40e: add support for PTP external
 synchronization clock
Thread-Index: AQHWZOXL0J+r5CgtTkaN5JDlpIgquqkiHuXQ
Date: Fri, 31 Jul 2020 21:31:19 +0000
Message-ID: <BN6PR1101MB2145F88FBECBE0EDBBE065878C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200728134748.26703-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20200728134748.26703-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb55b90c-61fc-41d9-2bba-08d83599108d
x-ms-traffictypediagnostic: BN8PR11MB3601:
x-microsoft-antispam-prvs: <BN8PR11MB3601396F03AEE3890DE6C1DC8C4E0@BN8PR11MB3601.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iT4oaEoCFdYij5CAiGC9m9Gd114DTPXAYxRl068halCEg1ELaS5RavhJUImDsbJolEAXyWkRFPjMs02p+/PXhVJ2NRQkpVT5p11a9L0cM5ahRqI2doHMjOqBTaVPsViatUrJoM/YyEMDUOaDNQNXfntu1x3unYuSjp7A0lrxJwpMZMcmImKX0GhVftjH0D3ZjRR5qfWrBsvmSDILBAqFNYbsfqpQjT6Rt9UINsDvLkT+eLSZIenGJgD1J3T+aO1uTxRSoxF0yvW9OFHRiHtfYK1S2Ho9gRdQuNKtvgxyBZHPpQNnIX8drPiVlFlXohws8wpwtwlnlhdFLOv3IHNiSw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(4744005)(83380400001)(5660300002)(8936002)(478600001)(52536014)(86362001)(8676002)(33656002)(66446008)(66946007)(66476007)(64756008)(66556008)(186003)(26005)(316002)(7696005)(6916009)(6506007)(55016002)(9686003)(2906002)(53546011)(76116006)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3AHIUF/V6ObVa6wrAGTKIUrLgtEDgmubFQITZyI0Pth/+EdxsmgAVuJDv7rXQPdgBv7LsxyKEJAvhe6LfPj6Fqe/mX/J2jq+zlpCHiL98Aab6/N09iMXju9kWTjFyt3+Iqm8B1ffghAZC8xlI+IRyQU/Kwgnczz43vkm1+y8gAtnpK35eeK9gVuMLtrRm5+Gipn7u6argoGjqHi08h2VjAsbdpOCoimfb29Nn3k5grwOOvblkG3O2Y96Mc6jqGnlOASKUaJqJeHhAkiCYX/Qq0Wrw0o8491nyAFzFjrl39RK5mB3NCHZVaiv+YuiQy4GFQo6hj8CQQJG8AQtAgDHf/42kR+B6vb5OPhU68PIvXnkcJW79hxJpKAMJB7e8xe0zxC1y8Ov3MgEYjyjzge2CNLIaJdLsuy3Uk9ozOhmwz19TVw91NkwRaD7Q5OCENSc6ReIul2CBdFa0q7S5ISn20yjDTPddBSK20E0HO8Bc2h4pLVfn7oQcgJzEsIuqmAjTPUff59w2tiA+mWcjik9pMjgUCi+Dqkwzrnb+7KrphdUSlN5r+R55tvKXA15plDY6xCTT42pCyrYKbPxxzFON/mKMLf7aIvvYyAnIidtAQ/Fm0xfHwXUWEROOafs/G3bl7voIxPWGr5PVUJGpnL7xA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb55b90c-61fc-41d9-2bba-08d83599108d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 21:31:19.6431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ll9gANNWqkahMIJMshfbB0M85LDwGBgWyA5JoP3tNbtGICEzb64KwPTiJ6HIVWhVy52+Dio12K+yvjdiy/v80fzMwHNw/40SA+0wzcRnrlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3] i40e: add support for PTP external
 synchronization clock
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
> Piotr Kwapulinski
> Sent: Tuesday, July 28, 2020 6:48 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3] i40e: add support for PTP external
> synchronization clock
> 
> Add support for external synchronization clock via GPIOs.
> 1PPS signals are handled via the dedicated 3 GPIOs: SDP3_2,
> SDP3_3 and GPIO_4.
> Previously it was not possible to use the external PTP synchronization clock.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  76 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  18 +-
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 747 +++++++++++++++++-
>  .../net/ethernet/intel/i40e/i40e_register.h   |  31 +-
>  4 files changed, 845 insertions(+), 27 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
