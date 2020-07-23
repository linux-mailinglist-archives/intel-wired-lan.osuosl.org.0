Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA27322A488
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:26:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5640D8848A;
	Thu, 23 Jul 2020 01:26:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mx795yOZWjXz; Thu, 23 Jul 2020 01:26:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5EE3588466;
	Thu, 23 Jul 2020 01:26:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 814F11BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 796E924B99
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JN5gemy7IFm8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:26:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 609142408D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:04 +0000 (UTC)
IronPort-SDR: rlRiqNOQ6noVAr8AE5VHQCFLwWcr7ofbsH47xk/k6LoaVolX2L+tuepAMou9MFOyXgy7mY1FDI
 ION5vBo4KYYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="150434779"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="150434779"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:26:03 -0700
IronPort-SDR: 9FLr6K8eU7ybNbvzLxAPfmlzRV/ROMjQPRnY9TvqR8Ga5cXGtxoIsAq3JcWCI8eplQ/dUs/oZo
 OJGtzGvfswMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="310840695"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 22 Jul 2020 18:26:03 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:26:02 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:26:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:26:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EE3lLHJmKH0J5LL03vGBGzMnAR89cco6gMRGqG00dFKUPcCXz4nYcNqSuoz3piOkQ9nOqZW/VqZNCxABxWfIuG0uBRqVGKu2fzVtH8yCyki3bDSMbE3YECpBTHwW3dBrqWVJe8gGzVvkgrb9MXw1um8qZylZNarBIpEm4NMwNl/1s+4ocMN5PRNX5Zjz16E1uagDZde1D1B3f5BQsTXCXCpHpjrNXyLp2iSS1MtkNoWKKzc+yzb4BP4vIn2cIyDmIJAm+QRkcNFlQS3jrcbMIx2Kk+DXeXBakffvDPsr5y+4yhCLjkGX8aekHNh1fZdgmtzXGScr4Ze+TFwwMT3HIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NSpOfMQGgR6wOzR2Eps7KkGWbjujivECZuhtKOt/C38=;
 b=Ao/9aL4tPMAmGF5a1ABiZfdFmxYqgfl4RRD3Tp9xSkHnpg6ZbSddA+sWc2sGDgV7BCL/PDPc7jUDsuYjMXkS5HE9dG/hiWrCHGAWC7HvbSkj8WQdfS7/f0JcVT5TaYJ0JQDoFKIEsmxGFg2eiyQ58MrZcchAMOiFPrazehPavVOIQQpjo2nVT8/S3V8HdNPHlyaXfdAltlHwBQy/7m7rvo8AjcWTj8oh/EOb7O4XWt72FpDZUyc5Xpd6cx2kTPwODRpeQo5m0U3xz0DsqZaN4Rzp1Ucws8We8WhHCgdVyWuvaA+M2Agd5PEwsxPMlgp+aHHx36bN0AkTnVl0NTHpew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NSpOfMQGgR6wOzR2Eps7KkGWbjujivECZuhtKOt/C38=;
 b=T064JBF7dtVx00hST8AnH2m1BdKlnDXqNiCDFL9o2kRrK/nN2dfjX/q3mo5OozD37R5mUvR5amq8LGge5sdbShRSsdRDv/QPTUNTsTwFMo/SQrlB8Nu79ajWwB58XjvnAWnFhwa9AEhma1SJU6cLSSjwz5qXu2NOGDbgpXYcV5w=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:26:02 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:26:02 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 07/15] ice: restore PHY settings on
 media insertion
Thread-Index: AQHWVgzzt6sfRLKFKUqCB0E8NUbt/qkUdEkw
Date: Thu, 23 Jul 2020 01:26:01 +0000
Message-ID: <BN6PR1101MB2145DF114FEB7B0B1B30A9138C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78765752-e75f-41e4-466b-08d82ea75c8d
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB15372AEB4529C68E6E5700258C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qrT687+kHGV72fwmWolwrrRNg5QKoolthmCkginn7LiqdEfYHWjqka/EcgAtgEd1W7+nHCGmOymGs0VvNQMMURC8UEQ2sqV1oCjQ9myhrrkvKGTIDCXEMxQTRv0trOEws2O2cMsezkDG2KeZKQql22N9H9Mmh+RLdS6okHPeWq/nzVgXTgb6xCLkiQcv83FGnx2NibE1nwJVD4k70YgzHb9ps5ew8obHFCz/5uFtaJ9DTrebdp0ieAsy0ZK1S7k4x27lbQ514RpgiItkRMLPlOrjgGVWJ+qFDl5cAWhQ3XOzJRE7FqADnDSxT/RH5KGZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LhOmgDo/uDiayFrLUeyPK5oaC708Pu0DWqx3M51EkCvoib5CgsRsqus5Fs2rQOS4tD640ioFgLddSkiKrGvLpeOOaSAM1Ge9OmUmkxIb6ONhjcjNX0vN5WtCaNoLLAHfzyByg0bucF/g4/8w2FvevBaEdlmC2xaXxeH47hCC5II3juYANn/CTvlNjKf7jtYM15LlPCP306hhzj5u6iCub6zKrYuGGKZFkmTA6mdCTo32Ol6R+3iATG96IinHCSmECl4IrIXeXyB+iOSDLuoXlS6wT83LOsbAXTnqbJkxLA+p78l8DYiMc9Tu/z58G9Y3sJn/mDzsTlEvPaIh02fK1fVtvC4MYqD9j1YuDKfFkBOt/9A6HcNTQFb95Twno8Znw4cEwn/3JLgDaAcBg3lL7M+EFr2xcegGRUiQM/7KhjdL34l3EHzzhOH6zwgOLB74B8voJXmYXs8aomIxjmzqjLacEkgbkE37ojP8SXf7xpmDdF6mAuhpdG+sfVXWd4po
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78765752-e75f-41e4-466b-08d82ea75c8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:26:01.8634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D85rKy8s7X42dDqbQJOxIaS04cagtlvTdceA8I84p7HkSDTd5/VDwumRMapBoM+p/uwxs/EASlKZo92TOsI6/vkD+8lIMmxzvaESMYUPzBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 07/15] ice: restore PHY settings
 on media insertion
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 07/15] ice: restore PHY settings on
> media insertion
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> After the transition from no media to media FW will clear the set-phy-cfg
> data set by the user. Save initial PHY settings and any settings later requested
> by the user and use that data to restore PHY settings on media insertion.
> Since PHY configuration is now being stored, replace calls that were calling
> FW to get the configuration with the saved copy.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   | 145 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |  14 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 120 +++----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 308 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_type.h     |  21 ++
>  7 files changed, 517 insertions(+), 95 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
