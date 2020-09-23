Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E12274FB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:57:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECF8922BCC;
	Wed, 23 Sep 2020 03:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9NqY-2wnP5PA; Wed, 23 Sep 2020 03:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2BD1622D33;
	Wed, 23 Sep 2020 03:57:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C90C01BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C49458676A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3fLCFxZ6-RC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:57:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D0378609C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:57:37 +0000 (UTC)
IronPort-SDR: 3KGXiQmtbUdcjqSGWj8KctD2fKOeuAbXxzWfiPbsLe7wZguS2yOqxrnelHfPfMLcScHM026bOJ
 uz4UoQ6VGTNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="245608697"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="245608697"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:57:36 -0700
IronPort-SDR: 5mar2FBQ5gaF19yvr5xCWeFANk5U2fI741unk4tPL+2mY3e0rN4UwzqFMQuT293SX2ZUbW/y3H
 GHMdrLEko4/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="342289437"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 22 Sep 2020 20:57:36 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:57:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:57:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:57:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gD0d3aG3oM/mWDFXhKqA0mQrCgcakgtYB1NobP2ZMwd8bSvP71MuhUNkzeYllXeskWJfKgmJsWmww2JxibAMaxthPgzpyHOLdLmy1mF6311Z4XBTHx1oKOqzF6tvMTMbue6yX6iju3Vek2txzVkRFP5dYmzK+WThm22AmgOKfx2j493V1cS+AaV+2ewsSIOdexNBTfEDRhDt65MEGhJmDZ8bXoV3Udwr5t3BQJnZW+OM7zqr3AN2o0d4eMeCtxCSW1GDW2vqDeTTPJHvrrYzKM9tn4NpCs5AdpJzdvI6+uzwylaPCh8qSm5D/PIMIUQCX5tRfNkW3DzQjZJgpx5fMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvLvoA/984z1nrMBOsCrP6eoBrRdRkcJFjFBZ2vEQsA=;
 b=TDcVHWIEyPI0mBMvThXVe6FRpqAYHo07R82dRjLn2AOtTSEMCz7BEMORuVjpJx7f1G60eLmCq+21DUl0c2f3hGo00uS+yb0lm6bjfaIt6hQeTcZKw+tAWO9uNa4fJhRjySNBGK3aDOi+pf2wxWEPOKPwmwQ/zwztx7U1c4J2QtQslM+qyKPc6qTaw8ScCeipiWv2A3LdTdrl/uGz72SNvWzzL7Aq71dkEoCHUMBl6a4kYSDTMGPFFt80HL6dyZEjseChWoXi9mLEna3ce85Tc4KlskJwQEYDoY5CRnGn5xcXC5o3OSABhQGNFottPDCUx30Cb/PQWVmeLQ5yYjc/oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvLvoA/984z1nrMBOsCrP6eoBrRdRkcJFjFBZ2vEQsA=;
 b=f1KP/dII0Qf8o+oeVOq5mPyQ2l1BVX3r7XyfsPgwWM41tx/TbIBIBsKrG4xJa8suIltwhPeleBhv8gfvdyxYU+OYnjOvbuAbeikyCCgn5VTgPdvMZLq1C2d834vwUEukB4ARtqj3eF99NyzYzBBlY2dKfEf8mYiym0ARnMdjlWs=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1419.namprd11.prod.outlook.com (2603:10b6:3:c::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.11; Wed, 23 Sep 2020 03:57:27 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:57:27 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH net-next v1 04/11] ixgbe: clean up
 W=1 warnings in ixgbe
Thread-Index: AQHWh9pLHqc/MaHRhkGeEOdW3oSnE6l1q3fA
Date: Wed, 23 Sep 2020 03:57:27 +0000
Message-ID: <DM6PR11MB28905F8BA26C5348C3B96E07BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-5-jesse.brandeburg@intel.com>
In-Reply-To: <20200911012337.14015-5-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17878739-a955-489c-4082-08d85f74c986
x-ms-traffictypediagnostic: DM5PR11MB1419:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1419BA6960E17EB57E784239BC380@DM5PR11MB1419.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i440pwyOuVOonazoaZKOL4TqdkYUK3mB1+3iwoGL1usCs98DPmYuW2lwxFM87zkFXlIaVfQ41Ae47Ry1CWgYnYtK5IusyEZiVlJVukK00w/2sCG/4XXXvFcMpK1EMziZFbbKbdmellTqmPMxpLzWMys2opFZkYDqqGPTsVTsLSmGtYwBAts7FgrtTknNXyfQ5YF53EFfv+DEFfxbCcWa9ebF71M0Pk9ojvcHcastKzKzsPSA5h/w3ixnOXSp7qSj0kYkVxP6sHAz/DtE3bO+MaVgEKYEqL1QDllDWHS5gw/Meb0bJ/xnA6EN5Kqvy69y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(136003)(366004)(396003)(26005)(71200400001)(66476007)(478600001)(110136005)(66946007)(53546011)(64756008)(6506007)(66446008)(66556008)(4326008)(76116006)(83380400001)(186003)(8936002)(8676002)(4744005)(86362001)(5660300002)(7696005)(33656002)(316002)(55016002)(52536014)(2906002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nh1FtImHq6SS+8CuBOh0NBvJ4+va5Cg25NFNPTOpc4CWkIM+u/5GTL7cZPV65r/Phejl0Uep4TF/wQBj5FBlIjbxUQBtG9LSR03/GLjxp04B6eaPSELMXRfyPrxMaqPmMXjCG329bsRzrNsUwBDch/kjKmBUofHioSR9IglbABSLnFxeCVIzYv8I8RvEYFE2uPcq1ibTd4AOFAv8s3iJdPKYuczYOpuLH5V/0X60COhmQ/ojFmY8OEKg/3/3rRLi9SOWyFZI4MzTmrIaiomMp8DKwWvr0c8k2Igl22IYfLqFE9TDsp8Bgp9CrDVpZo/xqBdY1XEVQAEamxyeuvbbNMlas3pmePyoonhuSeZFSz2JZbptY87zT7Z6TIqBDxIkTX+4mzrsFDZpTS1M96Isv2XaXk9O90kK8T58pCGNl+Bd5yOol7lXIZvhTwMJdnQ4bgahh2uboapeHo4urPG3sWTbZ1AZXVeV3fRbwES47FP4BXplsd4vWbK796gCm0ts/g4HO3qp2hEEMTVN21I4dwJ5uN/I6F3eyp5BMLCyUkzGAQAR7KNBl8TczzbJi4DaKzbSn5ZIORbGVFyHd4Qo3cGaHw0CavolaJk4GtAhXj9aikeylzNzTxrl6t6xKot0iKiPp2bXAj3/qegcaYFRig==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17878739-a955-489c-4082-08d85f74c986
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:57:27.3629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 00X6TVISM5MVaasQppQGzRG6efX2mGNiq+fmLAvrAVPhZ/AiWjWJ9Ep4LofgOzSkmPp0jX0Wby8/PZB2mdereQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1419
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 04/11] ixgbe: clean up
 W=1 warnings in ixgbe
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Thursday, September 10, 2020 6:24 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [RFC PATCH net-next v1 04/11] ixgbe: clean up W=1
> warnings in ixgbe
> 
> Inspired by Lee Jones, this eliminates the remaining W=1 warnings in
> ixgbe.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 8 ++++----
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
