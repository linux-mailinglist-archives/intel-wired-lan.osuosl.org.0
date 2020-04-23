Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F05D1B646E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 21:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA79F88648;
	Thu, 23 Apr 2020 19:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHXTAK-H7Eue; Thu, 23 Apr 2020 19:28:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40F5088642;
	Thu, 23 Apr 2020 19:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF2ED1BF27F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C7F4586DD4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KpEE8ypMz2Wh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 19:28:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0333086DD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:28:23 +0000 (UTC)
IronPort-SDR: F8IUSnEBh9+G4a6CCT4rFIFMlFWXkvFkUU5HycTKVjduwfIijWBRgkd+Fe/G5VrM0HPhIZq4e5
 H1N22+6x4Cuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:28:22 -0700
IronPort-SDR: dHBQMXpIbAbjTKr+bQKaDBRRxXSjiP+oKwQi2T5bq1sLhLyGecg4+hdet75M+LHB3Oi8ijwJxU
 bbDTeK7pk14A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="246353289"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 23 Apr 2020 12:28:22 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:28:22 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:28:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 23 Apr 2020 12:28:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h0sZ73qmvX5lJLAyTWdEwACO3gO1gNFr31QjPgNolD2mBvBf5Q8C6IUPhpOIaoGZn2GLThCeQXkdd0A23L2ZgDsMZOrN0zwEuR9jlxTRBd1KmpwixvMiBCc9s6sR48pOpi83waflFt7EMD0MxPKIYOztrsqfL9vKJKm2pJ12PRQ1Eo3teIVp7xnoBhaEgGP5XR3QUc2tdL+GLlWnKa/RLo5+PqP1MlYemx7gyNu5xPGt82o+IHKzMOb1NvKrLFyGLHkXioCoLRy/c1Nv0oi/C+4SJHQErDyph73QZycUDRA+gaLNjD85JckGaSXUPWS9FYyg7FE9dNNMj9x6zv6Pzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aG7scNZtoabKprTY2KCBFFS3wwKljGzQlAHH4Ekn+54=;
 b=htoBSgf4RVM/Jwnytjoe0pGBu361Pp8CI0Dz5aP7M+EOofu4NUPu2VSP2Y4EGsmIVUzUo4KSQFEck1S9jBJt2C/Q699XRuKwZOVhug1EWRShTJjo9HKBpN2+62WXu4mMRScbWLYzBMmIIlhiSsE9OhoTYvViTUJ0/iA6Llup3WuKE2EGzioNrFA/bPrG2AXQ/W7Xj/rVk+XJLb31FWX36RJExwylrtHkT9j7/xI+QUa0/s9n1NhgnRWVg59BuYGJ2EP1alw4CO63WsLbvT4LDGpjprl6mxo52r2zqFPaUWHKCbiSVpqhy9+ZCo0WAZLLkB3KQoEpBM8t9/POEQoKwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aG7scNZtoabKprTY2KCBFFS3wwKljGzQlAHH4Ekn+54=;
 b=p5lwIOwJ3WIt1/1kXAPlt5VlGGPP4o5AavsRYIbxL6DBKDbyXVIiJXT226KEcKEq6DidgGZOsnG+QC1TLsE3J0RsM0oCwASN+eWKCOCDPJvW6PdtVqGX8FRsceu2KabzGx7X5SsKTdP8ZkPuE/5R2pIKx31KOt+ULujR/0o+Chc=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2713.namprd11.prod.outlook.com (2603:10b6:5:c4::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 23 Apr 2020 19:28:19 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 19:28:19 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/5] igc: Refactor ethertype filtering
 code
Thread-Index: AQHWDSCTmhQyZELrL0uHfzO9ZwktnaiHMDlg
Date: Thu, 23 Apr 2020 19:28:19 +0000
Message-ID: <DM6PR11MB28904BC9DC287BB8BD964038BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
 <20200407210711.24371-5-andre.guedes@intel.com>
In-Reply-To: <20200407210711.24371-5-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 9c301370-c530-4d08-6c6c-08d7e7bc7a8c
x-ms-traffictypediagnostic: DM6PR11MB2713:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB27139A5B7B13FA9A240E0715BCD30@DM6PR11MB2713.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39860400002)(376002)(366004)(136003)(396003)(478600001)(186003)(9686003)(110136005)(55016002)(8676002)(6506007)(81156014)(53546011)(2906002)(7696005)(316002)(26005)(33656002)(66476007)(52536014)(76116006)(66556008)(71200400001)(66446008)(64756008)(8936002)(86362001)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FxnN7yLQwb+W1jLpVo6OPUBtabSzTSYR4EmstUJ83DgMa3QzgW083IWP2uYLNF1d+NnpXCnxz57bZ5xW0qrwwnjCMW9nDZIcwkJ2GTm/SmPJe6Gg4ufEi61U8kDV+s8oFAaCgMemTZtqU1AndAe9lknyWPyfNvBm3GaCqEUdBphfUuNsKHy8i2jCzgaQOyivhcmIiwzzs717zICy3HMFNZeM2J3zr9rLMtKxrG5qwN8J083FBobbvr8k6NU4QajYx8jDE1IH+XCuj3uIldn+w4SzEOkVTTQNlHERcT+OElxssq6FyDLEDZG+rA492/eAPiRSzzzqVVsth2Kx0X6QcRZ7F2egz4jVf4EQnYEXZszH9xvxglDcpptcfoJCLWkpDMDS1v9JkBLCcsrKEKfcbcfVk7GC9GiIGQg2HxqCktuhuMr+ic3WI3VI/GgZYnfd
x-ms-exchange-antispam-messagedata: 6f3V9+OFk6aDI1Lc2VGmL67GatGOfj20uOp6tITQucy1fXbWXINWXMpHjRWTBmLlUY/tNx+WcY1QAFDSc/RbJsMK1xWsclVYQuMYHYBCrPefy40GLARvmYVZRm1KHICIvtemNcY+vzn93E4DwWO3iQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c301370-c530-4d08-6c6c-08d7e7bc7a8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 19:28:19.0606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CYjX+a4Fug3SKx+lyb4GpFt0xCq+MlN1BpggZ/2AW9IZPsDUDxqJYNYHSDnXlby9lBEvjpTvRmNd1CEW2/qHOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2713
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/5] igc: Refactor ethertype filtering
 code
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
> Sent: Tuesday, April 7, 2020 2:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 4/5] igc: Refactor ethertype filtering code
> 
> The whole ethertype filtering code is implemented in igc_ethtool.c and
> mixes logic from ethtool and core parts. This patch refactors it so core
> logic is moved to igc_main.c, aligning the ethertype filtering code
> organization with the rest of the filtering code from the driver (MAC
> address and VLAN priority).
> 
> Besides moving code to igc_main.c, this patch also does some minor
> improvements to the code. Below are some highlights.
> 
> In case all filters are already in use and the user tries to add another
> filter, we return -ENOSPC instead of -EINVAL so a more meaningful error
> code is provided. This also aligns with the behavior implemented in MAC
> address filtering code.
> 
> With this code refactoring, 'etype_bitmap' array in struct igc_adapter
> and 'etype_reg_index' in struct igc_nfc_filter are not needed anymore
> and are removed.
> 
> Log messages are added to help debugging the ethertype filtering code.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  4 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 67 ++------------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 93 ++++++++++++++++++++
>  3 files changed, 103 insertions(+), 61 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
