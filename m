Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC14253B68
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 03:34:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9EFB72266C;
	Thu, 27 Aug 2020 01:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EyHWJIXskD4U; Thu, 27 Aug 2020 01:33:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 978CA230FE;
	Thu, 27 Aug 2020 01:33:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A2B21BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 01:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BD902309D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 01:33:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrR-xsD10ynh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 01:33:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 963EC2266C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 01:33:53 +0000 (UTC)
IronPort-SDR: M9IhWzGi/X8qnfUNvTKGoqp4c5RpFw22aGz/irngkXgVe5na6D/edkplJyAafKRe9lVHSQO1OF
 I3xOr94HZ9DQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="155665849"
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="155665849"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 18:33:53 -0700
IronPort-SDR: sf+VkiE/429IOxzAf9MiN7ZJBqbV86IUkuWoyC280rqyRDAgq61I8iWSnXtLZ07JhOsYohZN7h
 2UbeF7gSKQmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="281962924"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by fmsmga008.fm.intel.com with ESMTP; 26 Aug 2020 18:33:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 18:33:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 18:33:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 26 Aug 2020 18:33:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MqtGYeuWazrDJVh3XAiDPHKbsbJR58MZWEZcjhZKLLh/6aQVKbcA+WQ67ugA3CjRpxOcVKDbIfQt/m0oTPNs0xFax9ygSXYvylNLLkI78wxKeryzuAaBn8CH0ECEzw30ZSzti28BFf1JGKHKiRzzYAmyGP8ajZM9GSuTsmjkEu+75jfxb1rjOdntEyzyaOUBExXLAE23xX91ovvhltvOx23iFYdHkNuaIq71L5nNT+M6VCW3C6hvk5juXXEqtI2QAhDFWpeC9c2mHOsLyUaWKHjToxgtfYb0JE+k0E26PDiuWVcI1c79ruWDmOAl0IaOHYp2GjDiQGFOBbhOINyvVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UJ9SGT2bJ+jYnCvDY1nGtlHb6jIFDL02HZHr8jQZr+g=;
 b=hGBL0cXBhODLi6k1o35TAora8wKz8R1qBeAoziG5j/iTbDFgU5t810K/4pjZCMKNxfs/Crdx1AGdpoRrEsUPrih71lIH2i0NXKl+6b3lbL9ILpY4yDyxs7OCMtPfQvxwxOSaqOSD9GuKn7Eue1sTNP/gvSPupnpV9IoSkYOjCUS/oWum3KFGlzkm2ztb/7WpfZq+x/aH/tc85dL1ZIkucghPiv9SNR1V2ah6j1gIQpOWJQMrtXKL6LUnYU3dO8pKV8J2LDdyG+NgPgSUMUlGH9BSasR7VtS5pKrPfvMONcTl4fCADcoyhMAeZH8kdHbegaFcW7+I4m05KCZrVlBdNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UJ9SGT2bJ+jYnCvDY1nGtlHb6jIFDL02HZHr8jQZr+g=;
 b=XN0WqaopkMPgnzW/nYMMhAwK783vqX7ZSOXkO61e3h7uAUWID3KY+sEvBRG4AzB2hC8qIHaSbn7pvNAtA9JRnVOBLmxKlAdXjpcczzglWyy/19KT0FNm5mNaA9cWyTLIqamHZibS/5YovAiiS7d0ExyRMxK2SmWWbmVSz+iZJPc=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3242.namprd11.prod.outlook.com (2603:10b6:5:5b::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24; Thu, 27 Aug 2020 01:33:45 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Thu, 27 Aug 2020
 01:33:45 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 3/3] ice: refactor devlink_port to be
 per-VSI
Thread-Index: AQHWdnP9nv/moeMbqkaB7Z8dRnQuB6lLNygw
Date: Thu, 27 Aug 2020 01:33:45 +0000
Message-ID: <DM6PR11MB2890EAE695CEEEAB786F2986BC550@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200819215838.3834786-1-jacob.e.keller@intel.com>
 <20200819215838.3834786-4-jacob.e.keller@intel.com>
In-Reply-To: <20200819215838.3834786-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d39d843-efa4-4e55-2f4e-08d84a293d89
x-ms-traffictypediagnostic: DM6PR11MB3242:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB324281624084BD225ABDE473BC550@DM6PR11MB3242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9zw3xTjyGY15e4WOQ483HmxAYNMTE45CpFa7qNrcpW8e0OMcQfb/MyeTVw8Uazwu2tWh8IJZl/A/r1aR/yGye6w8r9Ptxla0CiD8+/mg/7Fbu5WQ8Qaqjcc2Wy5Yc13FjjVtD1JT5P7nntxHSyjdwF1HUoaPJoHVif6GL8GEi1GKCXuYV4uBNSAh6uocNDK9mq++qAXKgCzizQJM00ujCN09QepcuCk5Q/QGw5U9U35NG7Zn726zOnfWYoqSHdSZ7hu67QWzeDmZKwAWT1koNu6+XkWhQUbZiyGCued/p29tZEjQq0SjBCZeWU494V+q3SgIUq0/46BLTiQ7z9XRig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(39860400002)(396003)(8676002)(6636002)(86362001)(8936002)(71200400001)(55016002)(110136005)(52536014)(33656002)(2906002)(83380400001)(5660300002)(66446008)(26005)(478600001)(316002)(64756008)(6506007)(66476007)(53546011)(76116006)(9686003)(7696005)(186003)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: P/4vXP74kbPAykQOJBXzi2wAvl8slfWUVrcj67z8S7L6F12ZsmSvTbMFFE0rCaryBoGlbn5At7oJB3L6x+NsItuStd4Lh5z9GFNfX6biVIgqqcveK0sSmAat3Ptu//FKs873OBMqVMXOw502cVvelRIOUfafPUqZxKfTXoaiZk9nTbNKtz8muHGj4wDE3Tk8Hww7WBhr/EsffBcUY5NoNI67R/0W4TLdWFAFl3AqOpgUFseuh/H2xA/iX/xvXvBUow4MGphlupNjni896nEXUmdSTe5yjT4/W3aeLyLfbP2/I6BCgwnQDBdE/zdXVG7C96cqhbp/BhjT90Vsab/Tza1q2lmFBnoQBCh4p83jYbL8pG7aOKGFII7C5QIiCbEVrjXJppU+vCaSprxt4EOWUtJEawZ08CyB0Y1vVSwT7NFsBxoQAYVY/jjVJiZtkVlpEE8uj9rGp+WvCE1uA1EAoTkTgTlvzpPDy7fUWjFsEjFvWk/ORAJeFDI1TgN+7a901XLjUvTFD8KWa3keF0+jgwaowmO5xhI/J42Zedo75TvNUDFJhxHyKWQGIIhVQRNpWTGWIrPaZloGkBmQ7PCMuXfRQykJtProlrF2L3Rp5mUscO74NO04xZISV6D5hl7TtqciSyPfZSE8DuO6bebxdg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d39d843-efa4-4e55-2f4e-08d84a293d89
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2020 01:33:45.8211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cr65oSNnKAI2JYNUka/kICVYQHa0EOvHleB9ciTPAkjgifwUtESdhBqRwCp1Fk7iH+4/bfD8MjGgNOSRNl/9gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/3] ice: refactor devlink_port to be
 per-VSI
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob
> Keller
> Sent: Wednesday, August 19, 2020 2:59 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH 3/3] ice: refactor devlink_port to be per-VSI
> 
> Currently, the devlink_port structure is stored within the ice_pf. This
> made sense because we create a single devlink_port for each PF. This
> setup does not mesh with the abstractions in the driver very well, and
> led to a flow where we accidentally call devlink_port_unregister twice
> during error cleanup.
> 
> In particular, if devlink_port_register or devlink_port_unregister are
> called twice, this leads to a kernel panic. This appears to occur during
> some possible flows while cleaning up from a failure during driver
> probe.
> 
> If register_netdev fails, then we will call devlink_port_unregister in
> ice_cfg_netdev as it cleans up. Later, we again call
> devlink_port_unregister since we assume that we must cleanup the port
> that is associated with the PF structure.
> 
> This occurs because we cleanup the devlink_port for the main PF even
> though it was not allocated. We allocated the port within a per-VSI
> function for managing the main netdev, but did not release the port when
> cleaning up that VSI, the allocation and destruction are not aligned.
> 
> Instead of attempting to manage the devlink_port as part of the PF
> structure, manage it as part of the PF VSI. Doing this has advantages,
> as we can match the de-allocation of the devlink_port with the
> unregister_netdev associated with the main PF VSI.
> 
> Moving the port to the VSI is preferable as it paves the way for
> handling devlink ports allocated for other purposes such as SR-IOV VFs.
> 
> Since we're changing up how we allocate the devlink_port, also change
> the indexing. Originally, we indexed the port using the PF id number.
> This came from an old goal of sharing a devlink for each physical
> function. Managing devlink instances across multiple function drivers is
> not workable. Instead, lets set the port number to the logical port
> number returned by firmware and set the index using the VSI index
> (sometimes referred to as VSI handle).
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  7 +--
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 54 ++++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_devlink.h |  4 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  5 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++-
>  5 files changed, 45 insertions(+), 33 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
