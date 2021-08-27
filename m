Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 344993FA135
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Aug 2021 23:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B00DE4278B;
	Fri, 27 Aug 2021 21:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLHeLYFycNYc; Fri, 27 Aug 2021 21:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5457C427E4;
	Fri, 27 Aug 2021 21:36:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3F3E1BF479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 21:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF2C942708
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 21:36:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQB0VLgpyGWQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Aug 2021 21:36:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4448842687
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 21:36:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="217750589"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="217750589"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 14:36:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="508941266"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 27 Aug 2021 14:36:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 27 Aug 2021 14:36:26 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 27 Aug 2021 14:36:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 27 Aug 2021 14:36:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 27 Aug 2021 14:36:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLgmPFX2p357Bf+X891XuEojLt7vxArHsUioz+qs4ku30b60l8czFEM314wY+gvwAcE8uA5C3wv+6so4LamX66Y1L0YYEwm+IVP5vBARR390AeGRndJWcwQw/mMhRiNeeQXsuSSVOQKL1rU0Ha1qzdCj+H86ZP1Wj3gVu3DoS4wPeARok+I3/8xJBPt6VKoU4MM12J36qzWv5sI/qXWZwbyeORizi1CYwKKkWoTel1khRhlEXMrfwc8IMIivwMTsTpNNBjED4WerbUjBDu7y2BazVWJA1IfcmTMnNmC/AbwzjXYTrRUJD2LX16jtlMAWrx1FL8+ka3cReDuORdppXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T9a7z8qticlTAQYKs/fXv/CDREND9Mvy3bpQj1/DIFo=;
 b=kmLhdrkffCDC4S0w/cUlSAK/w4+8Zd0o2A0eyjXmaEF8DuQ1tQIKXHrQ7IIZJWM0InQ2GmTN6yjsdGNuHM8yulO/Pa+E4PzpDX8095rLrUrqcacavx/dVallZ9/cT+X3JjM1JiCCSjwUufAnmxCiwb4E5YaJLzcuJHX98HV/7e1GSke6nwvO0eQ1ahd4/4IaZVb6cnZFfpUdDxxV3L9jgUh+E1i0WysX7+KMS6vvAyeeFqdILpFmEdynOtTPV9nZPkMTNCmpgIWBcPUEaXaKCLnio1gTN11H+au6uFlhYfu/w2ioP0f7KK76HdmBPOGMBGshI9c9pCxlX6YSBd/JVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T9a7z8qticlTAQYKs/fXv/CDREND9Mvy3bpQj1/DIFo=;
 b=uTRyFwL0x+5MODpvSz+9U0v8TVFACoNkup1JuVDc0LsadBCDRj5E1oCDWpZAs4zhyO8C6y4uYm4Rmjg95A1AoYc7BC1eDqBdnX1YuWjBH6pWPAZREv8UOxXDC3ZHp8WNbuGf6OyWe6yxedMnGOc+dtc6M7zK7DRJc2EuxJjlTT4=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by CO1PR11MB5025.namprd11.prod.outlook.com (2603:10b6:303:9e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Fri, 27 Aug
 2021 21:36:25 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003%3]) with mapi id 15.20.4436.027; Fri, 27 Aug 2021
 21:36:25 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic
 outputs around time changes
Thread-Index: AQHXmHrn8Ndl4ivRn06FxA0GL6VGCquHyS2AgAAcybA=
Date: Fri, 27 Aug 2021 21:36:24 +0000
Message-ID: <CO1PR11MB5028978799CA7F7A39F05C0DA0C89@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-5-anthony.l.nguyen@intel.com>
 <CO1PR11MB502800310CC895CCE4B5A272A0C89@CO1PR11MB5028.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB502800310CC895CCE4B5A272A0C89@CO1PR11MB5028.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29bc51da-3dee-47c2-9018-08d969a2b888
x-ms-traffictypediagnostic: CO1PR11MB5025:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB50256EE64253DED4F183873EA0C89@CO1PR11MB5025.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n3cNJvNwlJ97m1Ij4kbxo6DGkIRa0EjWVJMcQ0rzhlRMhxqRQefVzPv9gja7IvzzJunV7eKCW6e9EtA9o6FYycXuUdiLcdA69/ybOzbhqI3HbSzzUDmh+FWqSwYWUvxJnhihzEj0yCJ588AVhOaDLS2xz900FrPAkJyIdVTY6vrXSnToz6pqdu2V2/6wKc3wy62mxTsu4Ok1Kem/tntHhnxU3TRFbJPp4l+TIJRt3/Wx5XRWff882F8cPTRJGYqgUiMoRnAF+u91obTc+f9fVQTBfQ1J41TMN4v93YsHdBRckk1VG1VaEucpoamWU6to4ZY34g7Cpb+WeWUKtKcmd/2ZD9TXCOazYfA85FXXfcVxduk4HZOXtJKFJIp7uggJpX4GS+/UmvD9HTY/JDxuv6bEunZVWPZAByrBqy4aNDodzH1x8oEjZ507C0AtCYpw+jhtros/U64M+5cyIymYK4bHPrq9xfEjyr+vuNbR8Uks470t7kB0Onj9QAmflcKz+gXWi8ziIks6deSjEgiqM/kv3O2qKVaKiJ15O0V0Fp5iPk8IoyAKmI5RcbnYLGx2DilguLCNDOwMSjL7HGWmFz5vaPcsaOubSfkgMZZF98Zj7b6Np22yImpOMXb6p6S+wuXOHTUx/OKOo96N7DKkROF8uGCvThf28V6hN+WWcNEVB09v92Eurf0CWkmFMfPK9nx/YYhGtA/TfHJtRDu9kw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(76116006)(9686003)(316002)(6506007)(83380400001)(8936002)(53546011)(26005)(52536014)(5660300002)(55016002)(122000001)(8676002)(86362001)(110136005)(66476007)(38070700005)(66556008)(478600001)(7696005)(38100700002)(33656002)(66446008)(2906002)(66946007)(71200400001)(186003)(64756008)(2940100002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6QlmeJFQwStJq+bnn67ceA8VqQ5HPjegAVks0+SDz1MVVtuw00HVovDuo4Wq?=
 =?us-ascii?Q?GSOnGtklhVNtbCjoBsmyuD/RJKpKy2Ob74+TJ10IFnru4UUUF5uS14t44ERr?=
 =?us-ascii?Q?2IoNY1fmr4SrlCcZOZrrVLJGrZNF5skVz7lxVOkOgjvqwqjwYnUB0YyLxSKo?=
 =?us-ascii?Q?Hq8bcpXJG/jZG7BXiDc0SGrX3bE9+UUbXwagdiaDr6G9CY0v7MLSQ1M2Vgkn?=
 =?us-ascii?Q?heLQk93jp6Os3I2CiuehoZQFCLq7dvgqbSqUXwyHuxgnPxPeyNkEi6d8Qh6P?=
 =?us-ascii?Q?qhozjcOw/XwBQaVitAkvMSBfUEQWdlm7WEEY7LQCV+aj8ZwbA7WSieHBtsp0?=
 =?us-ascii?Q?9Cgzslt9F0vRLE0K6UKXnIlVCHquAsUeWbse4Hv98VWzpwLskNAa0a2LWUTp?=
 =?us-ascii?Q?xhSWZT/BvwngDfH2jKbQKCxm0S40in5oGQgpUJ26yDAOnDcJj5McBcQxFvuy?=
 =?us-ascii?Q?lB/bYSo3JZQuldkYJ78fu/NfaEwu7tTWfiLq4FEUzA5HdD+T05goJ0KPl7mf?=
 =?us-ascii?Q?EONzOztfOE8v0habWw+d34p+L7zpKvMm0alUfyGZ6PPEvG+kFK3uxOFgbzpb?=
 =?us-ascii?Q?Zt2gytyzb5o/1vPYW8zWC3ziCEu2IPQFKXl2Vga33+e7oL0joD0aYfxrn3J5?=
 =?us-ascii?Q?Vrezhn6GsyDoiuv3nRWoGGJB7lbpxjzvqBDHRomdoTbvuKna4zrv38rD/Jq9?=
 =?us-ascii?Q?PCq/dlj2D3+j2uWgyWn/U52wqyLNb68RkwOnzh4MIVXVkdDr6LYHe4Cq9i36?=
 =?us-ascii?Q?Cy/ISMvhNeDlQkXmznzyEmlfesi6AwZhaph7afpbjQMgsR/AV5Y7LpL7vsqj?=
 =?us-ascii?Q?LGforSiKyIkly2s/HCPpTjeHqcDTp89ztGgrweY9G2Dd/S4YRXxp7Ej6gUyr?=
 =?us-ascii?Q?OYhCUqZe34fPpI8pDspjA3deuZQK56icmXOORxsnh0dJ2ogAG43tcW5frz0I?=
 =?us-ascii?Q?bKUHlJ+mNoDNH4WKKWE8/VZ1iagozQROXgAQYj/1B7MEkvJGzSTtl2sUG9hg?=
 =?us-ascii?Q?xcD4NXAVQhtOh6RgWPymMJJGtCBoNXFqHuBH8RMFV8/LP/iaZk9QeZRaufdK?=
 =?us-ascii?Q?kZTcRVBsIpbULP7PVC8QHsJjWU/+gvM2gduMJsDUzXine7Ce8hw701dl5dmK?=
 =?us-ascii?Q?EhPSWxB0e0SpCZSbYiZehY4m6G6cdg/SpkYaYjaIP7m/NxluIx7JUilnXNGH?=
 =?us-ascii?Q?mjLNbg49vZqAFkIaqHNNvjMkpRC3BvO7GsA6YfWLnjB9T9qZZyKHQQOMwy2i?=
 =?us-ascii?Q?gCrck3ER3X7J4Ok7fWoMG2QFUvJCO0XsVfmAGoO0OMO0PF55i7/UydEj611Q?=
 =?us-ascii?Q?5M9d5PYetrZpXBoT9UP5Vi9V?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29bc51da-3dee-47c2-9018-08d969a2b888
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2021 21:36:25.0524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PL/Y6N8IPMqWqV/sCCbWqikMvcCUsFaRRlYjzEsiO3fpsSzc3twkkbcEZkv1fs3GL7Bg6qBn5XawMf39uoaOIq7oZ0StA4kFlkxEhHYmmpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5025
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic
 outputs around time changes
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> Of Tony Nguyen
> Sent: Monday, August 23, 2021 5:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue v4 04/13] ice: restart periodic 
> outputs around time changes
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Wen we enabled auxiliary input/output support for the E810 device, we forgot to add logic to restart the output when we change time. This is important as the periodic output will be incorrect after a time change otherwise.
>
> This unfortunately includes the adjust time function, even though it uses an atomic hardware interface. The atomic adjustment can still cause the pin output to stall permanently, so we need to stop and restart it.
>
> Introduce wrapper functions to temporarily disable and then re-enable the clock outputs.
>
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output 
> pins")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
 > drivers/net/ethernet/intel/ice/ice_ptp.c | 49 ++++++++++++++++++++++++  > 1 file changed, 49 insertions(+)
> Tested in CVL
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
