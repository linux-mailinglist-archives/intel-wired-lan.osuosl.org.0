Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD7B1B64B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 21:44:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8339D2280C;
	Thu, 23 Apr 2020 19:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Py5MjMovn1zU; Thu, 23 Apr 2020 19:44:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5A052352E;
	Thu, 23 Apr 2020 19:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 013251BF27F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE4B02280C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZ4T+IHySMvZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 19:44:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 0DDCD20467
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:44:25 +0000 (UTC)
IronPort-SDR: rw/OiPxCmw0LRgl4suHWkNkF8JhDfv7Og1G9aDYefOZ6WaTjRAkgAMBEeN83rj3T3Ld1jdDW3+
 IXZQrAqqad+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:44:22 -0700
IronPort-SDR: MOEyYq01DuA2qtAHTV19DCJVF5RoxehA2QyqB0Kmi/zvBoew3cM2LPYPYGQUxo9F2qavuFXN04
 /RItWZcbEEqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="246356678"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga007.fm.intel.com with ESMTP; 23 Apr 2020 12:44:22 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:44:22 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.54) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 23 Apr 2020 12:44:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ng4WhDQd44JK/JKGA4DBbFPMTYOdhxPyEy2qFwt+y4cesHsSQjx0Lx+Ofrdow3lHWduc+GW8/m1hObQh6n2+opfAD6mcbkFMLxLJo1vez57jk+dGz3vkPyZF+pgRMFuGdANqEM6D3xr/hRKeojawptDyczop+zKD3caBQx3TZj+tvzz6ZDZSEHiitGRoPEGRw5blEHnuFOVA7hQOGpknvvcJkQiGdjgw+4w4Pl4mAInDET/1zJVlYzG13ZpUdnly9y0ZE0HW4WekFijZ6+ZHeycEJ3daLTNHvCIAlRbOGGxPXMjbnxsNMJdGyLSr8vsaPt7XVt/9QfRkhsTE+kqziw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wbl9iGwTYcmvQZ+Qu0JAZjSO+lvcXZ6Moi2AFUSMVs4=;
 b=dGwhHxtJeRvdO/z4JnTNplX+ZUcFWKnA/JzUGJoFaFi0ewzfTrP1UT9uvHoiNXBD1XJ54jxil6+lq0MitODxPYtgKHrWShuWI3Coa7t1ywvQ7qVJzX920vPf6mkU65Uge0oZBzfWNgf+3sEsX+xjEmSBmd9C3N/EwrSxx4g6qvupyXpepiaZIEsbrpo90Kdak1eIFeevnVSDL1PNj+tlady1oZLsiY/VseGoN1hAxW1HOx+84EUlm/YetcsW0emJPttQc/mxNW8ud8DhSwk7WoC9rM+Oj385tg0YI2v1MQLyNr3EWrnv1StXh0sqVrQsNDOpha8bDOE2cU9FU8Xwbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wbl9iGwTYcmvQZ+Qu0JAZjSO+lvcXZ6Moi2AFUSMVs4=;
 b=DYvUwUooz3A2jn46x8V+EIIFFqAk5/BREDE8Ti++nzaFfBPCra7W+2rJaW/GXpVaEzAYax+Wu/vOuK6lmjIRiHX78Wvg5moHB3R977c596/ExbTiQVWs4Pp9+U8lHewv8ivO1Crp3E2lOqSwENLW3Z8g766VwfSxw9k2x57jM9Y=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3899.namprd11.prod.outlook.com (2603:10b6:5:19c::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Thu, 23 Apr 2020 19:44:19 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 19:44:19 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete circuit
 breaker registers
Thread-Index: AQHWFwhZLJa0kNo4I0iFZyACDOIhg6iHIPYg
Date: Thu, 23 Apr 2020 19:44:18 +0000
Message-ID: <DM6PR11MB2890295402EDBD5FE06C98DBBCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200420113853.35732-1-sasha.neftin@intel.com>
In-Reply-To: <20200420113853.35732-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd8ab8bb-1abc-4a64-92f4-08d7e7beb6a3
x-ms-traffictypediagnostic: DM6PR11MB3899:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB389962145A15823EA5E33D9BBCD30@DM6PR11MB3899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(376002)(136003)(39860400002)(396003)(366004)(346002)(5660300002)(76116006)(8676002)(478600001)(53546011)(6506007)(66946007)(33656002)(7696005)(66446008)(64756008)(66556008)(66476007)(8936002)(52536014)(26005)(316002)(81156014)(86362001)(186003)(9686003)(55016002)(71200400001)(2906002)(110136005)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d4UnD0qvJIHqnr9jMHwqPPCMsDqy8n2CPKNxsywv82xqwuLUmkivalmVAbhnpFy1s1rVqUIuhQKInJIJtE3CcyIOajsx29dki0UBPjJfuwx03KtZTTaq8lqS9Dv3Qewo8tyMZgKb3kfotL7EMxe4LZXDNhsN5sx+YJDHFaK+NAp2nqXSIZ0zOmYJdGHdGBrGiStsBn7dHu19sY8bj4nGRB1o1UyhqKonQ08d0Ny4gfgbQl9F2CxY3fxPAcqSEKXn2TsyTRKvch5FygInRB9A3PM3GdaCQsAN0J7dcdByRN4hWiFkxRkg+2JSJHbGjoSJ6i8pBvOR9nrNYNhIJsW4pDvq66OdV68jdBt+fE5BjPZ5tLu0q9xphabZlflKD2OtWLjtrkcoIU4gBNWuNQheGi+Ojwh5cGAKPtWeF2tL1dch1Oz9UMQ24ehF/kZGBUxn
x-ms-exchange-antispam-messagedata: 1jOHxNNXLJhb9TCjiofg4uS+wL4UpB1BMEuahf3zeHaowfDeSjiVISLBeuOfrYaBvFGeM1FUq+B3d2Z4vsjGWnMgOPaIQPMGT3MFqAzrNOKPsT5y1N09erZ6PAgI+XwXDCSxLFAEt0WCwVQjC5QGow==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fd8ab8bb-1abc-4a64-92f4-08d7e7beb6a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 19:44:18.9060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPgVUi4DBO6sMYjZSsbe7lqoTvLRjOEpr54H/FdPZSTOoDWjRpft1Vqm40xpRPHxeKmblJJpFx7CryV+Akqc5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete circuit
 breaker registers
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
> Sasha Neftin
> Sent: Monday, April 20, 2020 4:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete circuit
> breaker registers
> 
> Part of circuit breaker registers is obsolete
> and not applicable for i225 device.
> This patch comes to clean up these registers.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c  | 4 ----
>  drivers/net/ethernet/intel/igc/igc_regs.h | 7 -------
>  2 files changed, 11 deletions(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
