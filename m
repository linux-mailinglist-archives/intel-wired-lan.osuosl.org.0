Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC8E1B3378
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 01:40:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5F078832A;
	Tue, 21 Apr 2020 23:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B+RkGGzAeJy2; Tue, 21 Apr 2020 23:40:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 047548831F;
	Tue, 21 Apr 2020 23:40:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59D5D1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5427B86DC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ApvhVG3NozJ9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 23:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57BA5811E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:40:53 +0000 (UTC)
IronPort-SDR: +vjo7t8mUIuwMOfjptAI43miBwmLVQl4hLuySsQYS/EoWohoLy/nlTgLQx6hmiODSdmB9CIo0d
 oybnpgoizRUA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 16:40:52 -0700
IronPort-SDR: fwSpsOEJuB7ueP7/SWan2Eqz+xeMTYYOFXuglb8nE+Tcn34CoBexuwyINrS0deWsZsPRGFakk0
 F0WUT7sFBupQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="456945427"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2020 16:40:52 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 16:40:40 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 16:40:40 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 21 Apr 2020 16:40:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 21 Apr 2020 16:40:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VehNljLRtaNyv+E5nPvNU+xfIkX4vAZoIizckyObG6zIHDbErq9/A4JXNaIJylYRcMFi35phAxTIbYzdQrFUXp7X/BNyA19nCGGyKfcuFjBCjyLDRFgogiKEXw54vUt5MTTQcZMfa+sg6vWPfQ7zNF6beYisWgRlmTTfyvixb65o7qX4AKtBk6koQKO7WxyeN5PsR1yhv4ev3KGqBoyrfscBm7CVu/+2i6NS/YMzwlOrd+N2cP0zKDuv9cHvlNiUqFZr03IXfDShzzDgo7aKgfDSG23shJr1tOruLwGUiNqfZLQCo7hITizU4lqpwLbyIpXJKFe6zBcPwBcrh1xANQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cHI1szFE00WSJGtayU2Ity1dVXurNLgq4t6U3JSzZjg=;
 b=envJoBwrzgjXy4Wsu5rXjNVEbxn6EW2V/cYjK9/fUkeyFi9ldzA1bnbcYJ4V/pfzGt/H7Wt3GwZA0XOKwnDry0RrfkRwXcvrzo/FeJ1i0nxkPryzcoPOujlEptmeLz5j4q81A4/uSbwQA5Djq0wGaTWYpVYIKCMkIHM4Wu6T2IN4gjo69QmjtmBIjSZX6JIUSHoFM/mOn+U+4aCIZBfvXBMDcdru4EJJ4TDaMLShJSwrebJw/m9akatdLs+2twD7zrPMppcqfkDiC//OgbtgUsU08bYvVZUQbybGFdAQf5w5l266jaMU+TZAAmQ6G1MEoAwt24JqyXXJgc3zOaVQSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cHI1szFE00WSJGtayU2Ity1dVXurNLgq4t6U3JSzZjg=;
 b=yXfl1aNfBIkuS8aFLbeYXv+HgHrLBLq80f9sjj2mgIHmDvqt9PH/i3vhX+Cz2OGouKwcZa1TCgIKFl3TGoDuUkEBQgU4Qu2FRC/z8vRhhXxUlxYdG1S/4J6IF82toMnXUQ2t5uXM9iJAaGbYMQhkWJgDHUnBfiiyd8BevB5nMeU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3225.namprd11.prod.outlook.com (2603:10b6:5:5b::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Tue, 21 Apr 2020 23:40:38 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 23:40:38 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/4] igc: Dump VLANPQF register
Thread-Index: AQHWCeRRHW0pXQy8gkCG2qgE/jxfT6iEWKqA
Date: Tue, 21 Apr 2020 23:40:38 +0000
Message-ID: <DM6PR11MB28902A376D933D11743A8B07BCD50@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200403181743.23447-1-andre.guedes@intel.com>
 <20200403181743.23447-3-andre.guedes@intel.com>
In-Reply-To: <20200403181743.23447-3-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e22401a-0e12-425d-3816-08d7e64d656e
x-ms-traffictypediagnostic: DM6PR11MB3225:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3225C2CD29F39A3C60C2D3F4BCD50@DM6PR11MB3225.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:480;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(66476007)(4744005)(2906002)(66446008)(76116006)(186003)(8936002)(7696005)(33656002)(64756008)(66556008)(86362001)(498600001)(81156014)(110136005)(8676002)(9686003)(52536014)(6506007)(5660300002)(55016002)(53546011)(66946007)(26005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C98hJ+CgQxBacqXVeyA3iv7nutuZa94Hle0H546cVsOPEOIkFVqjQXuqL9cw0YdF7FHer39Ls0KVv7G61eeJd4cUzoMD49asaguxC73xXEmsQ/GVlX5gjGxsc+p+n64K6/KVBz8mey0xb2rR2raU8OMn0re6hOEA3tX4gpv/UX6Vdveqyakz1Z7f0GhFLxRJjQNOk4JRk1LHq19hH5c2YoVkBo4EyUQmmzMNfUIvQ/wpfnZR/v1kugyNxKMNRgqjRq+xyI86likW6mXDH37GhAwVY+LcUBq4Ygl2i+eAi3bk3fmDFOLCldK6KfQTvfyKCjP8CfxVG+99jrTjGG77LmNMIJqjdGF01u+ozPMWXVhQeDXAGxle7hpnqRwBCgBH0fu2igcLmIFTq/EstDYBxiep21lqverproqEPDcnPIL4xGyeIfzDoMYezaqIH6Du
x-ms-exchange-antispam-messagedata: MEO6xUC/FwK4o5FtTdkISkIXXRbbRlm3G6rbdD3mr/UhshrUEpxJpLJmUpjmfbsArnwCkdM48wHhAxIOx415B9KlUeACl8BDrU59844osjddAEeDOyNH8HEA2/wzcZ/U21BHQPX2NDLKMWFHyjN0tA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e22401a-0e12-425d-3816-08d7e64d656e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 23:40:38.3357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoZN183L/vbRBpTy4towNTCvg0bVkEsSjhqUEQnamMHRFZktf98fkxvXyWtbaXY2vX9g3FD3yXiQ5hOzmxuNVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3225
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/4] igc: Dump VLANPQF register
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Friday, April 3, 2020 11:18 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/4] igc: Dump VLANPQF register
> 
> This patch adds the VLAN Priority Queue Filter Register (VLANPQF) to the
> list of registers dumped by igc_get_regs().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
