Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F36F28C3EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 23:21:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 244118685B;
	Mon, 12 Oct 2020 21:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uYZ_4Xek_tsa; Mon, 12 Oct 2020 21:21:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F45E8671E;
	Mon, 12 Oct 2020 21:21:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5231BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 373C886702
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cSZ6IfEKssox for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 21:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88E0886582
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:21:11 +0000 (UTC)
IronPort-SDR: nTwtriSc8Z3fCt519car9uMsCe0MWHCmOFtLj4a25Bp3d83HGdqPwDG8UaMyUtr+ISgFdoA31X
 THq1amep5DUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="183272961"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="183272961"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:21:11 -0700
IronPort-SDR: TAIcjLYi/imTXQxPpEouUpI0xjv1Y2f0FWhSg552NRVLLnSZIDaP9ADS6SYzHpyYZvhUJyDMVE
 9Vr1GqoVSs8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="345031413"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2020 14:21:11 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:21:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 14:21:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 14:21:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WV09V8BBR5i+oYTuv01qJPHrhcODepzNp76WLzqFckbdz9tinZkqDiXsOKfZ0pFxYFsvRVaH0DIvKvlY60jHqMJBi0YLdE9OkFsgWCXBOAqPSfR1itwZuSAj20ef0YPVmc0aloMWNyQOJDinm/ez3+4phg94r8i5IsgATZpnNxohwEUA73jT9jLHidVr9sM57jRJ+AKJ8/ZBS7jaVwxun3dlGy6HoWfO8IXtdHwrlfgnBuRd4v4gAR9koh3nLC9ivf5uTqA7MwaQM7gWVlltG9M1jt/meQrKM5S61FRrFSpC5oryD8Tj9G9AKMl9stMBKguNjHeojT/G/ugvEfTGKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0YaSG5lSY7gIW/AOrAVTaAJ0kzFiYTjhzcSseCBZUlo=;
 b=PDn2wQTQwJ8tEFEDXvJXTd4/EPKFpZM6JI9jarazkJow/RZOGSVlcnISrykngEu1YAbWi2f1OMkYMxydE1+zm5w5iIqzfxGl8iZ0cUCM0si9ukoau+mqeFrNG8Y95EMADEzRcB6DSY8fdsIVNP0576cGGjncZJMX/o3eIHBa77J3nc8y5bi4lrG0k0oVFTGxmlklCwNh2lEBxiGRLwVTaf5x9hqCT2fhVEgQ2PulI//3DPZy9Pai2m9uEXAv7UPy2Nduza1rGDoSiE4fo4sBBFitUoWGOU1DW20UwqmCUZAy3fqx6LtJiq+06YszZK8m5lBj4lB/WBGl3saRsR9K2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0YaSG5lSY7gIW/AOrAVTaAJ0kzFiYTjhzcSseCBZUlo=;
 b=t6z4dgOuoNQVTjaFx9kxDLud97ITJh5Dt1xpSoZRkKUEaQZm9LdoMwiU/KvFDjRjSJr+0l8Xolc2xLQ3vqfeetOQhnaGGi65vA6UAIyHFYxYdufMfhyp0cftgNvp0835mSoB+CQHfAWDZ9Diy8UeuUsSihTaNShdKe078Qzx+Og=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4673.namprd11.prod.outlook.com (2603:10b6:5:2a4::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.23; Mon, 12 Oct 2020 21:21:10 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 21:21:10 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 10/15] ice: Remove gate to OROM init
Thread-Index: AQHWjTAEuPGV6ETkxEuq+iiV6BxKL6mUoDzQ
Date: Mon, 12 Oct 2020 21:21:09 +0000
Message-ID: <DM6PR11MB28905A921F104FDEF946B3A6BC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.179.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fcda1698-8165-4532-0825-08d86ef4bd4f
x-ms-traffictypediagnostic: DM6PR11MB4673:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB46731E961C7F3A2F0D803442BC070@DM6PR11MB4673.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8fXsbz6r8xgGzcHLnYL1GZ//FOmwTMiY7re4lLXDHzU5glwVoAmxH9cSLFJtGFWq7Micg2fpBFgv6RNk1ewwTBgW5y+OA2W06wSjnr4xjBQHMwI2nIyWKYM8n0bp7PRmgygGhWD6dRaMdPeRDLpogjZn1x/Ni63IU170Da87KiO2aYv7oGOP+QrwOCtDAuYo2S5eL26Sgq+Rh+BmYG2IMlz9MJNFpceQ7YXSSSY2MazhK7rZENiOdW0EDnafsStmozzoNs7tnGjTKfRxxLqejU87wkGcZv6YYoVWcuEvmBEYKxBQ4rS9yyPfB2W13VJa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(346002)(136003)(52536014)(8936002)(83380400001)(5660300002)(86362001)(33656002)(7696005)(478600001)(71200400001)(4744005)(26005)(9686003)(2906002)(53546011)(110136005)(316002)(6506007)(8676002)(186003)(66946007)(76116006)(66446008)(66556008)(66476007)(55016002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: lrRGDF/lNvW9YqfHQ8SKBAu8vhrQaLHWUO2UKg2oERmOMicEIEfI3iYhFoIJXWZOLPttuW0Fw0F5hjYkLpAVLAyO+X5lhv9+35WacXW2h05Z5y5Mij/d+Q8gkUgv1GBMYxu990k43EHJSc3AlRiuf3GxGc+U/FMox2T6ZcNY+XDWhLj/a13d4F5Mr4IxJznUXcbspcYeKKP7wp8xKUFePP1m2QxXb1u1fEgFtDbM5m8fCCviY5Jp8u/qLLAOvgqpkGgpZzYSSrOlNDXB54qibJpnIvnVxbfTzQhcRiex/efW/8jrGeH1SwWy5PnGTcQlr36MuuVu1J1nnV9uDGHzkbLOdgcx+5cxoOCbty3ZNRrdfcFzgosFiWXNVUjDBj/jNFareuGmrCS47lWWiXLujDOQZiklXfoaNxtNHAgC/T/QFvnZmxO4VwbtGG82C4zIkBUjlmZ7d4NCsUTQd1xC9LkgaPMoAuS+yyXjxj6rp7T9ZWsILxD+RZRd2WrYlTNbtibXhwR3SkrMu5bvO3guZaGdYTOtGQaGULxdkGOkqYl0CJhrXMp1KUCgviEb58LQ042OgfDhZkkqPV5kQ1LnTFgrI4uZBuUDJmiQ+CzmbeoGxdsNxk5HcdXufKHU1qLkpD0/aO4kOde0WSkiRgh52Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcda1698-8165-4532-0825-08d86ef4bd4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 21:21:09.8964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LXFMtWyAWaQRBDPaxKqM4KNCOah13RTvgpnH99Q8AYTUzRMPYgW+7kJwa1HbxguVIXbEGb7w4lF6MUgTryuFEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4673
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 10/15] ice: Remove gate to OROM
 init
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, September 17, 2020 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 10/15] ice: Remove gate to OROM init
> 
> From: Jeb Cramer <jeb.j.cramer@intel.com>
> 
> Remove the gate that prevents the OROM and netlist info from being
> populated.  The NVM now has the appropriate section for software to
> reference the versioning info.
> 
> Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_nvm.c | 26 ------------------------
>  1 file changed, 26 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
