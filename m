Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E121E6DFB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D4EA86CF6;
	Thu, 28 May 2020 21:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vMyTMJDlJxO7; Thu, 28 May 2020 21:44:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D17786D6A;
	Thu, 28 May 2020 21:44:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEB311BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C7E8D204E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EugIUnQmooyY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id BBC4720414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:44:23 +0000 (UTC)
IronPort-SDR: O38h/u4HWOltHlFi+rGSepNtf9Kmu6XMxvPYupbQoe5/X8YzWQRol4NvqMUt8P7JrUmGV9PA8I
 Kf0PGaou/hCw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:44:22 -0700
IronPort-SDR: j5S0CghtdWyo3R/fAwVAlaYTNGwlTjzz8ZreLTL5/YUOxT+FokCFrxiaoLzEcinhYmOWl6Xx/i
 oNRj15Z68kOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="292148891"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 14:44:22 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:44:22 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:44:21 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.56) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:44:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Smup/ic6Sk1mRfkVda3mOKzkKAoC/55QV1FE+JQxKB0u4vDxXTcbg4hIQy22eLpS09KtLeHSCLz/9LbFnoIpj23yoK/O8LbMOHm927EYk2OyTDmUVt0sIYSCD+QY6dyNOJ9nStjy1xjjXVH0dCwcyv5t3OctSn4sC/3Vl2haSA1W+ufcI/D3NB9GCwn3YcEBpCUmNeorm9Emucypaocav5a4bpUCDpRMOsD63LAVDYmTcoJ+FwfUBuE5p3wxvMGQ7+tkLcPObUPfb1japcrbakmSN4OiYPYp1GCeOce4jp1VOxPYQ8GdXqbkVNvZv/S62w8RhkCvZGEoovPL2MFjSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Lt/357PdAlqFrLswfSLtFYDO5hJmvP2oe9ocuY4ISU=;
 b=MtrE2sKpuQWM62WxGsam3hQyMByHCLESjTUvpImfp+GQdKkZlHevaQSk/b964gUIgHtatrT1yG6w0JWApz8gbM4n6yoZRRSCe4fm+dURusV4oDJWdSu9N1EgPj7009oSwcIN/4EPJ7XYcmY2N+lM5DRiIhLor4YpY3TVrREK68Weuif7W7VqrIkUCFATYLC5MCorLZjHXGKnIRD3vFw6TXHRaKpZvn5fShkg/OHchBLUxo5RBaFmU9VXgB+CMWGx/dgENcSXTnReiNKhbVxocBce/NZKGtXR9xFyi8S6qQ86/2CPOlFTldPsdSoN02Jyav9lIGKs6bA4cqObj+1TAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Lt/357PdAlqFrLswfSLtFYDO5hJmvP2oe9ocuY4ISU=;
 b=Ro8c2DgrNNw5rLGYrGb8A0+7W3YzlpKBN1S863SzF0Ppe4L6EVUzcVcNzrEzObkFrYZvHkWztKHyY4Y2W/onCWFpUiZBHF2K/OCFbqp5K7HRKFlg/hJGMGthCE2jMMcwHKsk9d8+KlFtiy1H0+1z3wRhKksGsFfLkLDkCzse3jM=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:44:20 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:44:20 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 13/15] ice: Fix transmit for all
 software offloaded VLANs
Thread-Index: AQHWKxyS4D00hXtZkkO5bqWaFzoEH6i+G/yg
Date: Thu, 28 May 2020 21:44:20 +0000
Message-ID: <DM5PR11MB1659C755CC20AF8D106083188C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-13-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 63a477c3-988c-4743-7b65-08d8035047b6
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB2043BA9246C821A9A635C8B38C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9HDyWNaWfibnmVls8fpdAeTSbIfzb/1jzu+klvKEsH9wFyOKlzRPOr+mV+5IMyNZZ+PyYoKRftA/7p+21ARLlK40jZqLyHitZ9PK5zjBJEiRlSwdFRVO9X+H31+mWW5RPQerNvlOus1Fm2LWAulbShNy+SLI9c5VN45AnMxgCwtNfdsCoshE7t7l0YfUFIB09q4Y3ZJojPt1cjkKEMe5dd94WEIfaX5KiFKfZ9UtfxpMSAXWqF+zpWyyRdoILjjpxD+siJmUridBbyK8LhzFfwMC1Texc2Z7wbYgvMjNl5uhDnIqt97avPFhXq8Nk+ZcQwfB4f+2EXCdVzr8ByslIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: h8jRru8joSniHkX0b7PgUO1ViKgh+DwYxIQpfuMWcbUoXirIZDr54PAneSqBfh0xEdL0tUVC6uXERgmn2odJHbqSXRjHs60GW11nWvymSopg/2T/6iCYsR7q+ZaAVLbV09GzjG9P27y7E9mwUc0/fvPWW9QvX3HwPUM8d/GdX0Gcm2NVbrOE5yFfHF9WVqHYNjMaDV+Ve4SMTu2RYmpd1cKR0owTCBpLncQXXnUlLNRZMuxsGp0Skrmm/vqtdh8NwYanIwhMA063GWSAiM0oZZb1oP2yDp/qH7hhtCNV1KgCa1oC9ECzdcZjHUeDQaq3llWLOaqTLes4YA5vdORxg2WBzLSAnOI48mkldT5J+HeUSjnweNBci/pHy/whtG6dkcFtlNEox6J/qfWpkRMoDZTW5Eeoj2/ybycXQgzAD7IeHNLNpl+wr1DuOo3Tm2oAA19hHmJjNnbMku+BA0WUouv6JDQqkGkWylHgoEeN8fZy0pUbwbJPcTsBUecG9JNv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 63a477c3-988c-4743-7b65-08d8035047b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:44:20.7364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gX+byGONNWlxgzV40Js/trUd2Ma3OOyazWNmKkrDnSpUFoWe0R0EPKcMwzpOt7Bi3A68eGMdwcNDWTe57DBRJOyeyz8p0WFHd8OkuXNPSAA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 13/15] ice: Fix transmit for all
 software offloaded VLANs
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 13/15] ice: Fix transmit for all software
> offloaded VLANs
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the driver does not recognize when there is an 802.1AD VLAN tag
> right after the dmac/smac (outermost VLAN tag). If any DCB map is applied
> and/or DCB is enabled this is causing the hardware to insert a VLAN 0 tag
> after the 802.1AD VLAN tag that is already in the packet.
> Fix this by preventing VLAN tag 0 from being added when any VLAN is
> already present after dmac/smac (software offloaded) or skb (hardware
> offloaded).
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 28 +++++-------
> drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c    | 45 +++++---------------
>  3 files changed, 21 insertions(+), 54 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
