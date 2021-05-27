Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2545C3934C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:27:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFC1383E04;
	Thu, 27 May 2021 17:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l3OhaTyWve6g; Thu, 27 May 2021 17:27:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A388A83DF9;
	Thu, 27 May 2021 17:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B52B41BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:27:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3A226064A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6AO8qOiLf4iP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:27:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D607D60644
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:27:40 +0000 (UTC)
IronPort-SDR: OebumrbB5N05jR1HeLhM7k234e4c8Q5/qlUMykSj1Y/Tpx1SiI4neBra4r78vg2w/cHHNDLytg
 JKQnisIdNaOw==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="199752031"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="199752031"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:27:33 -0700
IronPort-SDR: jXCwBNoTSuiaU8OlN6Sl5ptSBshLRoEYwrMas8HPXFUqHuHqjslUpnEJiDxb9JukqpSqMw8CZm
 OCl0dIA/k0aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="472677153"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 27 May 2021 10:27:33 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:27:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:27:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:27:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EYyvqMk3iXgBhwLw4jOvJyq7qh1u3dklQTqg8/GQgLml2Ub2W9d7fFOyhU5VY57cRGfj/JhvxaxISUcnGIvPlLwALlaK9EumXD3jH4U+1KeRGzvkaCrMIPbGif7HdVcs2cgcwzCdL6MJJpFKdIqWvl2bVj7tKEi1JA3/e5RuzI71Ann1CPjOnISGq1p5YDceui05aD7id5WQ3ssOviWN1haVOsl4AasSPNjx2kaU02Hmte4DcdIPTnsr8q4NCpcKfpOVkXAJABYBhdUbFJBQQPSQuLTyvjsYxpQZN9GliARt0Qa8uXObjpWgQyj3+8duMW1sgiTgAguiXcQ1Tvk+wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMYK8vbFlYy9HeOr2recWAe+FW7BnVnNU/glMSTUflM=;
 b=BhJbBDprhF4PT9o5e/nhjrIOxmTT9K0fw5kJTCLSk7qDXvDudRkgrH5jpSWYRB1pgYqfTKMDFq+SHnqW6ZR72N6QlxsCgIvqgWIsSKk4Hs+Z6jQIWkAD+Efpn5rIAuJyen5DC5JiH/jkz52tVwRbCeBjrHlyq9QyZkRW+eXQUk4R3K6MeQyJeSWXMTfrOshlmJVoHrb8mOJOScfU2KadXBO/Qak5D6kD001v6YaZIa3avb5xW5Lei4ZIIJMCt261HdINWSny2V6bltZK8iQbHzIxWZPWhbSTgRmhIhbfXDVexsB2dmYJdoBUYR/jNWrL2Y8FyTmr/mud8IxKmQOHyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMYK8vbFlYy9HeOr2recWAe+FW7BnVnNU/glMSTUflM=;
 b=ReoxD5jFUJJIM2dqS2hteWuzb0/Xi14gzZR3gWb3oON4wxdtKYt86jVKIhnxGN4y6zyu11GzFba3L2kIHA3UHgJHc0oy+/hrXqq0NA6du7jFDWcHKaPynKwmP3X71Ikm2LwVI4Rhon2Vwgd+lKzizcp1u5kdk15XcYh1Un9GQ8Q=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2285.namprd11.prod.outlook.com (2603:10b6:301:57::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.25; Thu, 27 May
 2021 17:27:27 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:27:27 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 8/8] ice: enable transmit timestamps
 for E810 devices
Thread-Index: AQHXTZhJhl9wC9a0F06p5H+ouWPPy6r3n9hA
Date: Thu, 27 May 2021 17:27:27 +0000
Message-ID: <CO1PR11MB51056922FF0048F6B268D481FA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-9-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-9-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 128749e5-57f9-4633-2e86-08d92134b2d9
x-ms-traffictypediagnostic: MWHPR1101MB2285:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2285CC480C4A7D6936F7A8A1FA239@MWHPR1101MB2285.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /7biKUDbZQ59LGP4N1FvSHA7DtmN0MU7eTede+Z7w1DnjX4xRtTu/ismgCzUf/L4ylSvPEK6FWXYs8rzYb0leFDDTEGtKvK3jkf+R8xQYRm2SBzzLPcd+AuKnp0P0NSuRaOHtYvmuK8q/YKHW5LExx40lR3yGpPs7pBp1Vo3uy96U3DpC0oxmVZjYNSNbvxMdbJJA/CMxU+0pFzcnyjTnIWWo8FkRc2eG/lmomyRsya/VMS/CjQZr08FyjXVv+UHe61WooTjQKgIrjHEuL7pPmiM3ZvUivofVEGnCEq9wnFjPmuNs0/XSCTT7Ty7UhEJJCQz/beQjyPvkVEsyvA3ynETA5VTetItLs8jvAKp84bNWHf6tI1Sh4fCP0zhcW0rcVMFa+/SP6ovm2k8R/dvGo6/hCl/uwscAcoc/H9UOu6vl9aNxaAMcw0/MidczpHPwB7YYECNyNgEzeEsqzAGklt0tRHz7mAzI7SNwqeMflFRsMZLWlwQs7Sc9lbtqtIGScIszYtlCHon3ekljf3Mp1klEE2wtnEVMm8t0Zgs4hsjBkEckhHKyInaYR9uaY/aQUfyeGYYrmZOjNjA3QYcYhFE18t3asqg9hifm7mxp1w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(376002)(136003)(346002)(366004)(5660300002)(8676002)(9686003)(2906002)(316002)(52536014)(66476007)(86362001)(71200400001)(110136005)(7696005)(66556008)(64756008)(66446008)(66946007)(478600001)(33656002)(107886003)(186003)(26005)(76116006)(8936002)(122000001)(6506007)(53546011)(55016002)(83380400001)(38100700002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?dFUT6UZqOODb+71ozA6+yD9VYs7pni5Ho62907mNynjJZBWHoqPnpuXr6VSz?=
 =?us-ascii?Q?NNcEfK/Z3ZQLzaBVC8kyP4Je0E+2eRHWmNXQ42JhhwxV92ucf79mhsjQsQie?=
 =?us-ascii?Q?zlhcJAa79dRpvYqeBTWcLzyiJP4Onkkc17VVQz2NrX0OoWAYA73i2gIDhfBM?=
 =?us-ascii?Q?dNQxL8Gppz47gXIT6ItldrT8I/yCl6V7b/ZwdW9JOA4As+QB71Bda8XfzXro?=
 =?us-ascii?Q?vDZdx2n89FCCkDzJY1IKBPT7qHxHiOAzR4X3MgCUgYJAMUPzjkPi+UUos1bQ?=
 =?us-ascii?Q?5liXsaTf1vkmHpBUMwkOvRnj4HpcgH9KaC+0UzcTlIX23OtRqbxBGz/C17Nn?=
 =?us-ascii?Q?8UAOa+Pbyy7afXCOWNut1FHfpvU8td2pmd+NndXlNo0kjzuOMOfJCV6OVZG7?=
 =?us-ascii?Q?hmO9PQP1H8VwSoI2PezbHkD7Ux7w1F/KH78eqi7H5dB4SxWpM3ZuoGN/NsN9?=
 =?us-ascii?Q?+8rOooOtlnIH0TF9i8VgbdIDni8q/TIOvf0J2rlAXdAifkcT/iCuh9Hd26dQ?=
 =?us-ascii?Q?5iUbrLg7MssLdPNH96wylfheW1B3EKFDY8Vd1pl5bKlhqR9uw6xvIoAdPWZu?=
 =?us-ascii?Q?kTbS82wFkM/4TH1oPpcQU/yqH17bbW2j5DJZOh4cD5dva5TKTSocIY7guHBO?=
 =?us-ascii?Q?enChJJY4vfcqptmmlsrTu+VGF4kFiuffs7Mx2UESeu/+Y8h5IE5V7ZILA3Cc?=
 =?us-ascii?Q?scoORUFmdVBk+H5Oham1hD+laIfi7VjEvSz4JWquvROI5IO6wdK+150P+QX6?=
 =?us-ascii?Q?uBpR0hbJ38/CBF2idP/NqUXhewKR2f7UzyC+1wAaRAMPLU59rmnNC1+1G5Em?=
 =?us-ascii?Q?/IuagF/OhCkGGFWLgNpESR4dVH6t1fAUoYGv1SIFkhSDzyO/Ux5pwksc7EYW?=
 =?us-ascii?Q?BQ2GYG6T3ArcIjVYy7sm3ImOVJgbDpNdonGldpC9y9KLNNvGpvzU/pO/m6+3?=
 =?us-ascii?Q?TbZMMfyqj6AXqZBs/UZyG7lig93qTfSWwDpTI4Ko9Z3wM1AmAVGxlPKPjXCi?=
 =?us-ascii?Q?hCvxEbw3QvgIVofsZUbtFc8x/NbSZ1vAJsiAEKL6hvYSNV+Dt8mksBuaaUaJ?=
 =?us-ascii?Q?9epGPlkjMDWlnyZYYWeK6BmFkJsu7GNS2jPzG/Hc5CUE55PS4J886KB+WvsE?=
 =?us-ascii?Q?lDr+2RBCifg1R9V4zttxAp/0xj4oTe9DGTyppp9frOLzUdCPt5ISmvS6Msze?=
 =?us-ascii?Q?8J4DbSgumLXwZ+3nJ2kK9DKcPav8hkh+KK5W3+0eDm/VV4TQQyPJ35WJpcjm?=
 =?us-ascii?Q?VCozA97yivqA1/uGLRqytUEZQtc8HA/U5oenSp8kEj89bvnxl8We6QSxKnIV?=
 =?us-ascii?Q?xIS+v2qPGCbf8yUT5R9zXXmE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 128749e5-57f9-4633-2e86-08d92134b2d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:27:27.1124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XUCf/91vWaIug0/L5Kwxrv90eW+1RB1vCUPB2+u3MK8NKE6RFAn7s08pYdHl0QxrzKNoBMOarmGBpajdELoKuPu8tbZT8ZKMddOvTmsY3o8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2285
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 8/8] ice: enable transmit timestamps
 for E810 devices
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
Cc: "Lion, Sean" <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, May 20, 2021 9:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Lion, Sean <sean.lion@intel.com>
> Subject: [Intel-wired-lan] [PATCH 8/8] ice: enable transmit timestamps for
> E810 devices
> 
> Add support for enabling Tx timestamp requests for outgoing packets on
> E810 devices.
> 
> The ice hardware can support multiple outstanding Tx timestamp requests.
> When sending a descriptor to hardware, a Tx timestamp request is made by
> setting a request bit, and assigning an index that represents which Tx
> timestamp index to store the timestamp in.
> 
> Hardware makes no effort to synchronize the index use, so it is up to
> software to ensure that Tx timestamp indexes are not re-used before the
> timestamp is reported back.
> 
> To do this, introduce a Tx timestamp tracker which will keep track of currently
> in-use indexes.
> 
> In the hot path, if a packet has a timestamp request, an index will be
> requested from the tracker. Unfortunately, this does require a lock as the
> indexes are shared across all queues on a PHY. There are not enough indexes
> to reliably assign only 1 to each queue.
> 
> For the E810 devices, the timestamp indexes are not shared across PHYs, so
> each port can have its own tracking.
> 
> Once hardware captures a timestamp, an interrupt is fired. In this interrupt,
> trigger a new work item that will figure out which timestamp was completed,
> and report the timestamp back to the stack.
> 
> This function loops through the Tx timestamp indexes and checks whether
> there is now a valid timestamp. If so, it clears the PHY timestamp indication in
> the PHY memory, locks and removes the SKB and bit in the tracker, then
> reports the timestamp to the stack.
> 
> It is possible in some cases that a timestamp request will be initiated but
> never completed. This might occur if the packet is dropped by software or
> hardware before it reaches the PHY.
> 
> Add a task to the periodic work function that will check whether a timestamp
> request is more than a few seconds old. If so, the timestamp index is cleared
> in the PHY, and the SKB is released.
> 
> Just as with Rx timestamps, the Tx timestamps are only 40 bits wide, and use
> the same overall logic for extending to 64 bits of nanoseconds.
> 
> With this change, E810 devices should be able to perform basic PTP
> functionality.
> 
> Future changes will extend the support to cover the E822-based devices.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |   9 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   6 +-
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 369 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |  91 +++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  37 ++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   3 +
>  9 files changed, 518 insertions(+), 4 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
