Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B81C51FFA08
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 19:19:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63DC2265BB;
	Thu, 18 Jun 2020 17:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 21enCTG+BLbV; Thu, 18 Jun 2020 17:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 301BF26450;
	Thu, 18 Jun 2020 17:19:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59C2A1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5430289511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DtMgk-6Hj7Ij for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 17:19:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C4169894C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:14 +0000 (UTC)
IronPort-SDR: nnurXMA2GgeZV/XImC7MfqpaczAitrJQyRoPUIom6btzTdh9VVR0HGn/usUteqIWKV1ccLnAH5
 1DpxjUBXnAIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="204152418"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="204152418"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 10:19:13 -0700
IronPort-SDR: c8gDaiSE93+NcVetT558FM+oo3Q3YCdHDvx5oTjU91QlM6s1DblE91iabTItu2tCkn/1Y9foyL
 9ZsVMOT2JluQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="262080565"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jun 2020 10:19:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:19:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 18 Jun 2020 10:19:13 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 18 Jun 2020 10:19:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 18 Jun 2020 10:19:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NOFdZO7Z2M5Fm+rKSbcUIxgoWPokM0o86MDwyZWFdNLp0Tp2OMlnC8zZzJamLiRz2qDhV+nVgZPANeK4hhAwNSgxBlBVdqL06JOEsB38AA35aVX8+Zh7hrT9EuFJSxGlBHDVgK22E+z4ijwYnAHFU0uNRq+p7jn2MFXqvbFqEa2eS1dTwvwrfAS+3ToU/6gJ6F0kQOln9uzvejpP4kHyR0/q4t3//mC2bnw83j+L4dNBAStDYbsNvCpkvUxLKUrfnSPtKW9tHaOT6z/pmyq/ND+FyLyuByAoncCom9vQlsV9sds+ri0hy6RN7TH/iy8AdXCalBEfhKMoDdz9ANVKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PVtwHKGrAEAJMfXFsxG8OY2t1uZG7ZHFBwgLdAHiSUY=;
 b=gwiTWE6asQUhwMkTtaedui/Ei7Fu0U2LVhu7HhzVytyHn0XuMZPNn6EX/A01OpNIDV5AbWrWaeX8v24EFtpL6fBfLht7NxNBil6WjMOGAeqvJg6Xmp9LweAYY5HFMEFKtnDboZp2ehwv0R4ulMfKOgySjQ4fRE+aKj9uqq8IWTx9MvSwIacsOtEFLexvvHs1kFj+46/t5P8Jmf80rQCy2brFIY4VSfWrjibDQWe7cx29F8aP8wympPtqW+O6flmb/A1G2slQTcWIFFA6FXD3Tu40PFAz3GB5XkLqUYd8L9exFbIG9/Hcb2kOIM2mCllY4/lv8Rf5Bf1bCll6JKnU7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PVtwHKGrAEAJMfXFsxG8OY2t1uZG7ZHFBwgLdAHiSUY=;
 b=MSzfBS3FhYmykd3cP07PpEU4T21w777myI9cijE/e68TzT1nC4KbbuR9sa0RBgSehJRbuFmpVqgWLYDhChRTO9PeHJPdGXErIi7tA1NikMHher+/gk2kygsFU3AftKHF/FehYQwcfGT9e9nR0DwrAxBjJqv3NxcwwQ2NpUD2OKA=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Thu, 18 Jun 2020 17:19:11 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 17:19:11 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/6] igc: Remove UDP filter setup in
 PTP code
Thread-Index: AQHWOgNlSq759+4xIUWg4yXK9WlJVajetRHA
Date: Thu, 18 Jun 2020 17:19:11 +0000
Message-ID: <DM6PR11MB289069C73BC25525C4410B18BC9B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
 <20200604000105.15059-5-andre.guedes@intel.com>
In-Reply-To: <20200604000105.15059-5-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8a51bde-e66a-4c97-907d-08d813abb7d7
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB12599178428A34A9BE79B9F6BC9B0@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MglS0pHYZ3U8MitRknh/O4XPTAt+lOBkM7HaN9q9yhkhPfrTRwP8c5AhFCuKCXmLqZeGWPkyCHbaSAr2y6tlgyv57LWBfXi0UzLxhm3jw6uIWjZ9QD3pcYemrg36pt7r6g0x+cLQKOV/9iGy1oeteb+3iWPjA/9+BjFrTd1ZL+qMZdeeN8Wguso1u+sV2W9Mf5JgyFqhGGsKN4C/CYguEIgBvXZCMooukPc95/dpIuwg9KOfVDahKl3XFmMGVULHgIuRsvo7/9/rVAOEPTh1ZOHldHi5m/PSDeOvJxjILJ0bFbmG+SFjrLMF9HnxRuUYooTmHW9WRs94Q/3Dx/Hg1w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(8936002)(478600001)(55016002)(2906002)(86362001)(4744005)(9686003)(8676002)(33656002)(64756008)(76116006)(66946007)(66476007)(66556008)(66446008)(71200400001)(26005)(7696005)(53546011)(6506007)(5660300002)(186003)(83380400001)(110136005)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ILxL28g2pkoLp5NMLrN0lLTH+ze17YkHJD0oU4ncblWm/WerNvPlBh6Qi5GLWvxh/IHJsYG2d02HRfGICFwyHfncoJpyDSUvjogSyz3Kf7VE2B1Wmt9dMQhjNkU/nJjCvQTLTBaAKw2TX7jbtl6tglt4YQnC8e432fD6kuCGWC5xCdsqS0HWXrGi+JWAYgN3ad9D3W9FSB0qWyOzVlOycPW24YdhxTIyQEu33EdKylAparN5McClbqJdwMRic+rBs75M4iwvupzRcBe4vy+PxjvlpTWhXYNhWJNO4s0AjQ9QoS377viBbiNyhVoPZpW5HS907h7CJtQj9RFBbr3kNF1YUCuzU/9FV5H9dxh1alAbgs5WG3KUbMeuAWtByhyHjvhJGWX0XcBkkvlV8aFZnazfGzifkDFH0+G2++Tc2+3REDHsmobuLVvEGkAjPMjMRlHBWgqcm10OVACfr5a5sR5g1+Qgpp4ZpDP3TaLBCYzSbLoztRdktrfJuB3D8H7i
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e8a51bde-e66a-4c97-907d-08d813abb7d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:19:11.6069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X2FPF3xnWYp/x0deMzt1ioVmdY1EQyFze9jNaHXrSYSnZQdx04I4JYCQwK91yOPAh5VWW6SPUv+mGpSYvq/3GA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/6] igc: Remove UDP filter setup in
 PTP code
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
> Sent: Wednesday, June 3, 2020 5:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 4/6] igc: Remove UDP filter setup in PTP
> code
> 
> As implemented in igc_ethtool_get_ts_info(), igc only supports
> HWTSTAMP_
> FILTER_ALL so any HWTSTAMP_FILTER_* option the user may set falls back
> to
> HWTSTAMP_FILTER_ALL.
> 
> HWTSTAMP_FILTER_ALL is implemented via Rx Time Sync Control
> (TSYNCRXCTL)
> configuration which timestamps all incoming packets. Configuring an
> UDP filter, in addition to TSYNCRXCTL, doesn't add much so this patch
> removes that code. It also takes this opportunity to remove some
> non-applicable comments.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 51 +-----------------------
>  1 file changed, 1 insertion(+), 50 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
