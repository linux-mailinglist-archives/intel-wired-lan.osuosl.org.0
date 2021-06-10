Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B043A35C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 23:20:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46E7040681;
	Thu, 10 Jun 2021 21:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DF1yC863nQKY; Thu, 10 Jun 2021 21:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C18440569;
	Thu, 10 Jun 2021 21:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40C991BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A3DF4057B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SaIa7nquI1Dh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 21:20:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2299840562
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:20:33 +0000 (UTC)
IronPort-SDR: Va5u6Iw/Ux0SFl4A8nmIJQNAZwbeepNTQiPu5bi3Kx8i3hEe3YzipADfSQT79E+vbMHPUwvHTr
 luPYdgsKqcww==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205222572"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205222572"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:20:33 -0700
IronPort-SDR: p5mGxZrnBHYbax1l7s36k4JegPU+jnebrHf7SWhUbN9xVgtHdHO/r7N6aLRYDLGxA1EmBnzW3i
 seAj+2CKVoww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="470406265"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jun 2021 14:20:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:20:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 14:20:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 14:20:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n4wmjeCrGmS8J7lYHqUERt5BuZ7P2gOMTDRspiInRbjwiaLJDRHSIUhx78ptsebY1FuF8My2uU4tuEwJ6ERzjUaltrN4xQfFI5kItfLiFDFI4beFxWGPO105ON0+kqvohqVP1mEC9iFxxYAU5rggW/ONmVe0Mc5wUR8oCksclbnrC/8PIHnRo3O+baw/rNIq4LvXmKDelbDp+iP3AxaEP4/FJulyEH5eDosIUlBoDsmHH/mGo3a5jbQMF+1AdyeEjmQquWflDzLJbr/E12d31ieGH/VFFJuALRjmU5QktvIVr0+fVUg1liHzTJ2BinKzZe7w/fM9c46rX+hMLyQ8+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zu/BJDsfASNIMw8n/2DRX8WbcAFSZlWiGpi9UNvMrQY=;
 b=ALbMhcQGj4Q29LjEUpDPbxN9EN1u3f5Pu1R1zuiepdMZN7kiogCusw2b75oUfDWVZMEsddmUzXNfRkFiNpJz/YUju0zOamSI0ITk4yYfJJjPRciJsbI9Vnkftb3aXg+eJz5cEi24bw6h7jkKfwRIZfQL6zWH8vXm1tzorwkSYfKlw1v+74rjxu+3d8Cy8NZ4NNqB6DVDn3VScAKYB9nCTb5mRoBkJhYK42J0PUgqE6nwzUigoHpo7dRA6LigVgjbSTkSTj7xvzuU0uW3ddHSsVqbMKp8ZwCuyhGjcMPMtYhN2Axyl28n5KpQVZisH/9GUnBfT03j0NP8blqHeveyYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zu/BJDsfASNIMw8n/2DRX8WbcAFSZlWiGpi9UNvMrQY=;
 b=vy4jGtD1oEbJBOlJ04cTBJ2GvnioihuZhoOYv19WWUX4Os2zgI9qL+U6n7NoCwpAGlSBtFO2CFT9TMiHI2yDCAKjuaSD53w8D1HXo11ls8OqThUgqalmsW+F2dTv3Tymi6RnUndY9n6pQtvaVAE139OgolBqohAJBWjR2QrUMos=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1727.namprd11.prod.outlook.com (2603:10b6:300:1f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Thu, 10 Jun
 2021 21:20:31 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 21:20:31 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 6/8] ice: report the PTP clock index
 in ethtool .get_ts_info
Thread-Index: AQHXXU/6BqFyFZMbPEOCTkGb4FphoKsNwiyg
Date: Thu, 10 Jun 2021 21:20:31 +0000
Message-ID: <CO1PR11MB51050F7A582B08C6A5F84328FA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 408b2b10-74fe-466e-82e7-08d92c559427
x-ms-traffictypediagnostic: MWHPR11MB1727:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB172739CC1DC3999AC72D2E45FA359@MWHPR11MB1727.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KaOg1swCBo7dkcJHv0LKZauiJr5dANGi6COjj8oMSEaLS2yaChPuShTTmzUFZ9fekqfe55Y81J2HXw2pTIyk2z/3NjtewtyHswgoLWjOsNNc9csI0inHxHYjP7Jry4PJ43yB4wJrCmTxrt/JbnhetiaqmkxXySAT6yUTcs3PrEubKji/CXnMn+B+XZcAEs3uxqUC7YwH2+rme04VoeQuM5/EFUYmKYjmi2JYOuITWsJMZffeor93ApMvNTgbtrMVqx+LAqjh8wC6emnAmuAZ0p8RBKqws/vVLInbUR5dGBy4/mN4yNpE/mRXpPzyOAPKQYBR1953gmdRKOU4PMbLXxaz/HKobXiZuSe/YlnoM/krd3+Jj60LZIZV3/rGj3gH23X4l/j18xEuLXtwPUKpnliLSTz4JQwfZuaJM/GVYn1+YQADlq0Sqwu9AooJnHgs/waJpZmJ33Btse8OMql+Nm9JcF4ZUArLcycTsCwvY8e3c2dSFkSlXxCvGoKe3JnVn6p/IUE6cNb+SdMLkOhL7/tZ39VE8OW84ByMckQBgrL9S1tCQo/wAootT+Qerqaj6BSMdMFw6TuU175LTQ+XjfB/zTqz0wgkcdEQuMBASG64UWIdWhtbKD88YmF7bK+zf9L7rOZr9FW2KcaNdvpTGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39860400002)(376002)(136003)(396003)(52536014)(7696005)(53546011)(38100700002)(5660300002)(6506007)(33656002)(86362001)(2906002)(316002)(26005)(186003)(110136005)(71200400001)(9686003)(55016002)(64756008)(8676002)(66556008)(83380400001)(66476007)(66946007)(66446008)(8936002)(122000001)(478600001)(76116006)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MjFkCRJSxdSoe4q9lvZaphR7Kn4mFZFZWbZ8mdiX3kUt6d0H7ElZH242PY7S?=
 =?us-ascii?Q?LS5lS6GgF2UayHQ/DYrUtRIixL5vKLddXpfwVfUuGbdhvgPp0WhetL/veop4?=
 =?us-ascii?Q?l8LY+NZ1oFBmqK8Te/yma187l8gPhB+ggfjAnF8hkQYBWkbtFNNRApvzelcq?=
 =?us-ascii?Q?8A77o0AKGVv0QpZ7IntvVrHgOI+6RlmElFDZ3WoRCZ2xPd0m03zq/sDJcaS7?=
 =?us-ascii?Q?+J61uMuJq2sbbAmxdft+Xb1j3GAGxaa691x+3omsXs4UnJVM5g7ojGj0NbAM?=
 =?us-ascii?Q?ANKRyub+Pyd1KiDR5WAY95eIthhij010QD6Wng1qm5IsAu5qUeB5o0fUfCHw?=
 =?us-ascii?Q?Abk2jogyo1ZjG2BuvyKtcq+b72ZJWtaD+mmSrIt0C/6ReXd4BqVkzdIG0KkJ?=
 =?us-ascii?Q?daN5FUgyi5y1LMRMbMNumxxk9396LaQi9BF5Dm8igkquDvATEZGi0DJ8B24l?=
 =?us-ascii?Q?q76d3WFGZ5X354v2t2jL7TzEbbn2bcntpYbXRKm4CoK2p/yL5ck2ELDBrtSD?=
 =?us-ascii?Q?W+l7oyiMUaiwFkq/Uljv6hTdmM4kBXVqQ0JuB8Xk+N1lnRZu+HXivfxXukV+?=
 =?us-ascii?Q?s/54wdTb64hXAcXd+KGCqIHesah81xyRu+c3LOhSBd9j3AqRiLYunkCLS5dJ?=
 =?us-ascii?Q?ofu8OJtfkis4ZO0G1IaajYTs5p8a0OBVcrwtJjQTRFYlUyNWlAOIrnWiwKqB?=
 =?us-ascii?Q?7gzazXH6WQm7r5qDRaq5Zdu5J1TrpkYjSRjcaWx/0EqnqrIdGWVO40xJa1q3?=
 =?us-ascii?Q?z3WPgtvWQT8wvx3No3AsH0vVYReu1whC7GKoQQpaL4V6Np9yVsOxgjtqjebv?=
 =?us-ascii?Q?1XIkk/H/1IGpdvcJ+i5m5JoqR25YxXZCKv5S+a9EYJw3qgFJbtl3Co6xh55a?=
 =?us-ascii?Q?7wsmJwgphi8r4YTKu2LSC00/qyE/b4GNnZb1gdqbcZ3lmhsTrDx3rTLDF3Lg?=
 =?us-ascii?Q?n9XJBZ7wDpyXkn6o/H6CyzDF5Bb64F5LNDlpPMkFdvCaYAgsvQyq1sifqD3C?=
 =?us-ascii?Q?go4xj2u+xWdJOzetf7+4hVh2Pfs963F33NylPJ18V+oc7R9DqcdLkLkAc7NB?=
 =?us-ascii?Q?Atck76CgwOGUeNUzCf0HDpFuRkQDuL7M5x0Tu+nJstVenKB8a+d4VuZMoGJN?=
 =?us-ascii?Q?kPUEQzIijobsNEg50AJatBToIo7Wl2TLnM1vgdV6xfcPRWIvzZ/LL7v0VRFp?=
 =?us-ascii?Q?9HWmWwwbtaxzfQCWB2nyLQ6e6lFsHzTgHJZi7pjRK0hdUOvLePiXXeAV3F5p?=
 =?us-ascii?Q?QSvgPsXkm371/vO9lDF2DYiaMZUTmp18LyojJNzAc2bDr9fVA4l+W9WG+4xH?=
 =?us-ascii?Q?dTfeHJRqOvbX4883lhzbCLTC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 408b2b10-74fe-466e-82e7-08d92c559427
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 21:20:31.8050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SL53iG2aCQnuUmMa1uFEsnMhixX6wLQM2jtof8nXvuCtmaIEkok/Etu/GbohKwjz4jpEBvzt6RRQG7vgbjLr6FO1U+P+GdVEOCmQe1GjMMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1727
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 6/8] ice: report the PTP clock
 index in ethtool .get_ts_info
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
> Sent: Wednesday, June 9, 2021 9:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 6/8] ice: report the PTP clock index in
> ethtool .get_ts_info
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Now that the driver registers a PTP clock device that represents the clock
> hardware, it is important that the clock index is reported via the ethtool
> .get_ts_info callback.
> 
> The underlying hardware resource is shared between multiple PF functions.
> Only one function owns the hardware resources associated with a timer, but
> multiple functions may be associated with it for the purposes of
> timestamping.
> 
> To support this, the owning PF will store the clock index into the driver
> shared parameters buffer in firmware. Other PFs will look up the clock index
> by reading the driver shared parameter on demand when requested via the
> .get_ts_info ethtool function.
> 
> In this way, all functions which are tied to the same timer are able to report
> the clock index. Userspace software such as ptp4l performs a look up on the
> netdev to determine the associated clock, and all commands to control or
> configure the clock will be handled through the controlling PF.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  22 +++-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 129 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |   5 +
>  3 files changed, 155 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
