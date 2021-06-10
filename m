Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB0E3A35C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 23:20:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F9E2405D2;
	Thu, 10 Jun 2021 21:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cspEGeZH55Y5; Thu, 10 Jun 2021 21:20:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FABD40569;
	Thu, 10 Jun 2021 21:20:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E25E91BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D05A040569
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gv5l6gJ-vjMm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 21:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88B9340562
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:19:56 +0000 (UTC)
IronPort-SDR: SOow6Z+c1uOjDkzJIaya31xokSYWWlM4nZ0gOT+NzuqLlv1x3croTrAz6Saw/TFbzB+vWpcWL6
 YeToe2PDWovA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205367216"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205367216"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:19:55 -0700
IronPort-SDR: ogEoW8F8MH76spUD1NKSmDgb5AUbR2Hls9n0CunZ5UgS7pAl7FohoG7td0m/2MvJ95o6F7W/iV
 jTXBALRA8HuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="483011933"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 10 Jun 2021 14:19:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:19:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 14:19:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 14:19:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+JCMl2kO5xSIjX/4RmGMUMixZB7U83Sxlu6xWHKLMzamsyZGsgilx10Afl+edZXSosqKnRjRZDuWOfgpA+M/7lVqvd+Q8NWzJvVWZgYWCoQDO/vqA8Ovtqxxzebiq0ckKXP4Z9NUDtvXcURbhdW1Qmcl3ydH60Xy1CxKVPJho4otqME+ujkH1YZo52xED9r4UXbCtfF0/fgclf38Bhvkk+azROq2SR2dl1ZfsKLQxWg3P+p4OA/8t3mngnew7Ut9XuIt/C1eJ1xnuBF3ZriN6eYmg/RLQBJt4nKNWeVCtnUcRJ7zc42F1YWcPalZM/JR1EK2o5R3vsOU8AK8XtIZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+y0waufW4k58kk2NSLnkRX6JnHJL2eboY8MnVq1z398=;
 b=YfZJcFHAIlHNhShkntNB3pP0XKBLuO93XdGHvb5km58DTV6ceTflJ+gs1d1DG2xJClCH1DgmrkwRM7E7DMIs/QL2GEokW1YSg/FgY1wsJylrH5rJLZmuEsmNwdOzvPcDQkPM3QNRvHdVsPyb6Nvl6bjHzxBpzrvZwIq3B9H7+4NgiBqlucTyamLiZB93e/CiDGBSy+UqSDFWBwGL81ds0dgs93cwRJw0PBBeFdfp3qFiBpLMYh/MTN/VlS1xIAQq6+63k4WV3V5pW5eaO+OxyXWGAHYU2uo909m8LLKOntOLVBv9p9t5v28WFksyBK0Iqtaq5Apg8M9pIAveiCjlNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+y0waufW4k58kk2NSLnkRX6JnHJL2eboY8MnVq1z398=;
 b=c+YM6yXnIMCZOuo9BRR8UFbj0gVPTQX/xbtHWzfucmzE2DubHWXWg42nqb74BzkJAJ5RsKfwtdn154E/s4HKxHX/IEIQWqV/FOWWad2NOJ1l2fGhgUetSQLDua4p2T9RSZKQ4OfxnmLrEyCmWnuDerjW+G0tz+LELf2KSTO3rm4=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1727.namprd11.prod.outlook.com (2603:10b6:300:1f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Thu, 10 Jun
 2021 21:19:54 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 21:19:54 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 5/8] ice: register 1588 PTP clock
 device object for E810 devices
Thread-Index: AQHXXU/Y1A5/8b4baEuWp8LKyNY0RasNwf+A
Date: Thu, 10 Jun 2021 21:19:54 +0000
Message-ID: <CO1PR11MB510540E50D6A21C9119C8217FA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-6-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: f8fae0c1-86aa-49f6-ff38-08d92c557dc9
x-ms-traffictypediagnostic: MWHPR11MB1727:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB17278DFB7F3CB4C22ACAD756FA359@MWHPR11MB1727.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 84JLB02jDKbArrD2uEoL8UgAzRCDxdnn4OWnD/5Y5No/MVkIupRld8TaeAeOivKh2g7NNJyPfL+4b8+72pJwRpHI5ntAArCJLRagGPSuU9FYUFTyNq4PmfP1Jj/0bFVXuXjjtfQvmyssTaM5vUUbsl2HMz2An4FG/Ui/s1AAF8IjCEY7l6qypYHGjCgpBW0tOjSIGrEULjAZWxL8oPNj5HhgYRN+QQ6wKnfCYpDtcgz0FOAgHW0PeYnw+88xlYREB/h7gW8FeOi3KbcvW7PCCvL/c2j2N+KyJCMcRGfhhXcaYT78DdqJM5PqgWVlTe6nU/8s4gpp59J/olHGRH7xXNVJkscxI2eeVftagocp3nES6rY24AkIJUdJjQbyCB4WCMViieSVdd28tNVaDTSNj3P/ScLQvVhwDuvQHOVwvY6NUHQ1hZH5/Yob/186YQQDHWkbzauaCiplarWxs7m12AUlKzB0jxnyl2DIY5CkSMddiVDfQjxKKKhA3JORfZeVSRMaB559u2c+aJ3sPQr3AM3yQ5hH/xYS0VIsaQ+hKR+uY5tPwrWx2v2g+2Gq1pJksDf4Oi7KkMvera6UYq/lxqmG+xL+E1/LvJOWM5l60Yc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39860400002)(376002)(136003)(396003)(52536014)(7696005)(53546011)(38100700002)(5660300002)(6506007)(33656002)(86362001)(2906002)(316002)(26005)(186003)(110136005)(71200400001)(9686003)(55016002)(64756008)(8676002)(66556008)(83380400001)(66476007)(66946007)(66446008)(8936002)(122000001)(478600001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?azTwcDCsR1F3BhXm49kb/p2ngfAoIWpz26U7PKY2vaH8OHeP7Ft919WjxiO1?=
 =?us-ascii?Q?om5S9k8jUMjqkMb/ZHrrvoA3cbdNDPzyMQvu4m44qRX+cevF4p1y/5wL9z92?=
 =?us-ascii?Q?pRFEW+n7X5WhyQrrQOlibk9tMPYxQBebsqXBQMmjoB5W3D/MJUZlfdiSe57Z?=
 =?us-ascii?Q?/0N6Jy75pTjY/usGZlMtBaCC9c44VAt+uiqTqGYFtmbFznly54TufuJ9yqE7?=
 =?us-ascii?Q?LlDRlaHEUTauh80ARaoVwrOuzEbPEmeErvaYJ9pN6Dy+jnK2fJKkD/4dxrFv?=
 =?us-ascii?Q?egqfU/aYa5oqWNJCHms8VJUg58TARwQJ0vqVXWJm35dqURTxCyEtVRZLmRkE?=
 =?us-ascii?Q?HIRtpFq8CAX6wkAwUmRnOR48Qx3WsGbwOFBp3uFKJTnv2DEDDsIdXpDEP0s5?=
 =?us-ascii?Q?VYwyfV96HalEiJrpcpLw40MVHMGdDkzTq61vpSNZG3S+sCDEtIt1yD38wO2d?=
 =?us-ascii?Q?xj4dXaB8jn3mO2pmFPS677PYMXnAdeFVYLxLYpmHJrrqnVt140K6Z3RKNQ9U?=
 =?us-ascii?Q?NRw30+jZsD7Salxz+TnqxFX095eJyKdDYZkpejEJ/eBsj6g0FflNRASZB8bS?=
 =?us-ascii?Q?KbqoB6nZR2w3qSDowaN5AZ7FrA6P72BYBk+XlVC379eP+lXZKbkNC/5Gf5ZZ?=
 =?us-ascii?Q?CpTaBQl8zjX68F7vCa3K54C3DRtCu/JzIKcFpvmgmCAHnKIHf9uM4zFauY11?=
 =?us-ascii?Q?s3BYlTDs3Wa1r0l8V7GZbMwES8VqcW/46VtVyw+UMGjRIcX8SJOWaNKAGma4?=
 =?us-ascii?Q?OvxJ6jpy/JdVfdKbwQxEPraRXW96aXh6QgDoIrnidAKgkUsOdXa9cpLdGdjY?=
 =?us-ascii?Q?Dyr4TTqC/alAFhb9wz7d35NkPZ2vlMLvPkZ8zS41OvBgXxpm0k+Gk1y7OsQI?=
 =?us-ascii?Q?KSspQjnZDc3sMEa/jJMW3YUgZBpRMdsAnyQYkxenH4v36gMnEGMByE8oJrhV?=
 =?us-ascii?Q?3xJZuRSG+FCgtu06nN3Jzn4vpbrZBmdp3IEq9aSXZOHRHb5PtS2Hu5f37Yv3?=
 =?us-ascii?Q?/hth5Kk72LHSfHgJFfWdWkHnpXQrCNCOEtNZmiHIpEd4GMoxIhJFJp7qWGQw?=
 =?us-ascii?Q?HIviitiNuL4Bd09+Cvo7w5ULnbEZRNr+wLcr5VoGRgwxQs63ei4H1s5Dmim1?=
 =?us-ascii?Q?cYiUcTG5LpAq1QxPyofNGLC9W/Ov/oHQQJ8fcBVxJRLcc8AlLdf0JQecZjfJ?=
 =?us-ascii?Q?HtQdWcYg+cc5K669JQaPDeMUznrgJaNRifFs+3OKYBnT0i/8qW1bcz08/fcF?=
 =?us-ascii?Q?bs+WIHLFlJSito30mM62bf6PKlwvj6Vv57A5eBHP24XupIN5Ro9taYRc8K1l?=
 =?us-ascii?Q?fU2HIqsnnIbQ0EBgSyj1LmZ/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8fae0c1-86aa-49f6-ff38-08d92c557dc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 21:19:54.3300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ienn1f0q5bvLBStJZPQBhorpZl9vrkVfk3RNLn4zfDEMuYruJ1rmnsizH/Qjm0eo1jjMIFrrWONwaGyMNeHUU9fzIqAO+kRt+cnim/7eark=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1727
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 5/8] ice: register 1588 PTP clock
 device object for E810 devices
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
> Subject: [Intel-wired-lan] [PATCH v2 5/8] ice: register 1588 PTP clock device
> object for E810 devices
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add a new ice_ptp.c file for holding the basic PTP clock interface functions. If
> the device supports PTP, call the new ice_ptp_init and ice_ptp_release
> functions where appropriate.
> 
> If the function owns the hardware resource associated with the PTP
> hardware clock, register with the PTP_1588_CLOCK infrastructure to allocate
> a new clock object that represents the device hardware clock.
> 
> Implement basic functionality for reading and setting the clock time,
> performing clock adjustments, and adjusting the clock frequency.
> 
> Future changes will introduce functionality for handling related features
> including Tx and Rx timestamps.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig          |   1 +
>  drivers/net/ethernet/intel/ice/Makefile     |   1 +
>  drivers/net/ethernet/intel/ice/ice.h        |   4 +
>  drivers/net/ethernet/intel/ice/ice_common.c |  11 +
>  drivers/net/ethernet/intel/ice/ice_common.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c   |  21 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 439 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |  36 ++
>  8 files changed, 514 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
