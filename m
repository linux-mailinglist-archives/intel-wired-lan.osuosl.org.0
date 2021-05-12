Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B36437C762
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 May 2021 18:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B801384572;
	Wed, 12 May 2021 16:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uuo0ybuByrxP; Wed, 12 May 2021 16:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87E2D8456C;
	Wed, 12 May 2021 16:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A4861BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 16:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18E6984568
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 16:12:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJQtci51Qf-b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 16:12:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E474984566
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 16:12:01 +0000 (UTC)
IronPort-SDR: hxz5SCaNKXWwrLnoQ6tNU+Vhvnxrliu1gjfDfptVXkbrqzQ24ifMhY1jNfWzP+ZqaoGNfbxY4O
 6ec07ETaY2sQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="180009115"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="180009115"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 09:09:42 -0700
IronPort-SDR: dvz698hTrWZfHGpRLThJZglnr0S63B2wlJTKJZBU2gnYguUVa0FU7PtM12Sj6OneCxrilk8aNN
 OsvQe/xMoOyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="437263013"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 12 May 2021 09:09:41 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 09:09:41 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 09:09:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 09:09:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 09:09:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hG48jdbt5rPRje+eElnF6u97pPZgMFtR8Y9lmf5S0hqATy8t2A0mPCxw8ki/xnZ0sOXSIJsCINWNNrPJotlEfGCgxX2xQkicLlp1fZ8qLAZqfRgfkpkHTccmt/eV4+6ZwPEHfDSbYdThjp3AJGfA+wL1+n2QzK6TUalU9PCtCCOXlHZBX4DbXs1IFoAlxVv22yha8oovpsP25PavXYPXouNrYKHTelK5NpkgQdChRuwRCTOEl7qMCNspg+855LpLF2LVA5IEB7+U1muJNXv4THiQPJdPJPyD3xVMLtL9X9o6bAG5K3VYiX+GzH3d7VKUmIysEyiIE81vzs562de9Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gXPAwX9XW10ZY+eNudVofad9jkGuYNJIT/tiviaj1tM=;
 b=n+E+P3mLJs0XpsVpAL9kcPC3O7mirKKwp41Y035mrlXXuIlk+uVFCvsUXWBzCKqzYDHJyeZmJarYb1ugrr8wDvBK+Iji3jLVx6MqEqSIh4dHytYwv3xIZgFHX/iq2BFQ01KoXvU6H8WYrnW/Em0mgXBZM1crW8PKWTyuIBHoyBgnwVwlLWTSGsvgkhQbPLZEBHWdpgpcwHaignvJ3pOfpfh+fz0dYX5yb4LbrVzE9JBWoprvixKeKQ1FY30FWmXjd1T8XUyNpBP6WOXBcok3kn//dxEbf2OtCUSH9Q+DqVosbZzcZKtE3LBaHrL40eSGWMVI4Er7WYLosAvAqaEYFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gXPAwX9XW10ZY+eNudVofad9jkGuYNJIT/tiviaj1tM=;
 b=OFR9u9bgnQszLBgJ/tXqLUQjLCsZZqdJ9pZM9mxZZ46Ka1M+Awp3ryED7Q4/SzemI0r0E1qUA7TFg65Me21sSGVeHlR+8nCLVFwo8shq1wMuMy66wxsf7lG+hdIdMtWaXzJ/beF2BW2/CA6D+CTsxmNjTdWDdJkJA4WBSB9Pj/k=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1806.namprd11.prod.outlook.com (2603:10b6:300:10e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.29; Wed, 12 May
 2021 16:09:39 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 16:09:39 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 04/13] ice: wait for reset before
 reporting devlink info
Thread-Index: AQHXQo+6+lXT4qKMm0uq4xt1x01jTqrgDS1w
Date: Wed, 12 May 2021 16:09:39 +0000
Message-ID: <CO1PR11MB51056B3366F7514947B3A78BFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-4-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 8015a159-2826-4fd3-a0dc-08d915605899
x-ms-traffictypediagnostic: MWHPR11MB1806:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB18067943AD5FE395B6A89C67FA529@MWHPR11MB1806.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DMJtqJhKwS4dwNLmdcB4AO30n43JCZvWROGxFWQXIwaKJkgepEGN21lV4F89zUvJD/Ax0OLHudphyKwCf4qczkiuG73Q5xXBmAk1TAt2Ce5EjZ96kofWo4hy8E+QhDiaSC9phowNXndkOAQDxJmIMa3B+gpxrAImIMVBAOPDZQOuVYTt2Z7AWdeRwHktt/qytjMCiiy4UDXZfoyGkDDIksztrYwrbWvM3AMVsPnybUCu8AL3NB/LBbj5/zOGpF/DhoeVoZ8P6fh9cZtAW3CZvgZjYU+jzNkCORpmDK5jU+0uV/oKxO/Ga/gNJgYHhWdEwdc6sS1QnuweqYkCVoi65VOromGByWN177DXse4IhqkE2B9NfdZboF7NM+sy6eQ/fnDL6JgeAS9qInpknrx7Uz0N0T16fxxoirPjKUly68/Y8i7359LbMFu0zteFq6jxgm2X9z7pAd3XM6+qE4i6R2/M8iYLi0TAMC9tLULxGxoZGPI411cCNwqto0lkalh/gbBx/81RsN3yx2vstSfpLfowFEk7VZl9M7V4gYr/7U3WFPBiywh/JPTEnOOs8uOjncFPVq+daGdjA/6i7GdK26vgBC1G7iF8lf7finIS9ZI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39860400002)(366004)(136003)(346002)(83380400001)(38100700002)(66946007)(8936002)(76116006)(122000001)(478600001)(71200400001)(5660300002)(66446008)(186003)(33656002)(2906002)(53546011)(52536014)(6506007)(26005)(110136005)(9686003)(55016002)(7696005)(316002)(86362001)(8676002)(64756008)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?xmM7RgaSUcQ5bO8ndMFqaFgpIroSA/B0+DiZd7uu2AVKmDCEPlZN2IirWHL5?=
 =?us-ascii?Q?swJx9OpV4wNAqlE5Ny6+KUrtEFXsCSFLlLhAWhNCrUqfDS0A7iChBiwsrWU5?=
 =?us-ascii?Q?nTebA7RGOwPrzDwQSaVy5OfJHpQKVxEMGVLhjosp13ntE/xSa5wKVBZQqufS?=
 =?us-ascii?Q?EYpfnWBLqsuV6dwWZgmdRXsl5dEsMuAfZ4TP/3FWQVCCkDVgJ6qMlFB2AgxB?=
 =?us-ascii?Q?Cp55wW6bp1G32noxLlUtnJw+dXRNpYxCWmynyFA5KF4rS46iGx47lFWJO3MO?=
 =?us-ascii?Q?epmB/qu+U2lwkealkYFbzMYpMBEsk+yP25J1mMDI0mtF+hI3CVc1NU7UApyj?=
 =?us-ascii?Q?17t/iaZXHkKnOpvlXLx4iRCRl6nrSyB+u0/NZOnM72coPQ8VwDz/2e3+NreG?=
 =?us-ascii?Q?wnfDCMYQ5AOXstGi6opHtCkWFv/pn9Blv3XQ7uN4S9MNy9PYRl4Jqi83eP2u?=
 =?us-ascii?Q?O1UGpvDiFBeCiQXI4dlYlN0/dLmI9nZGWEPJCTUFUxZ2rWL2cKo11pQmwDIJ?=
 =?us-ascii?Q?0xitPjk/9fSByQLxrUuSOJd5rsjWjNffD94TME7i1wpAavLMESBL7+/Q+i0v?=
 =?us-ascii?Q?Ngvbb6/8ub9ALGKb2YdN2r3qCLu/mtDqZlBb5maD2a7arzSzi5NeSBrV5BXu?=
 =?us-ascii?Q?Npat6itRIyePTNpvU10/7bGz3ii2exH/3qtkel9v03e5ULLPnsbLWzBkaclZ?=
 =?us-ascii?Q?YIUHEklCsaZ6xHeOv6kOuBIsseJTwXGHJxfYUB8c0QQ+v8DXqfXBKt6F9Uzq?=
 =?us-ascii?Q?/BsDDu2rM6vKE+ybbSczYwdhlUdMNr7mF+XvM43wG3AE6hDJHqmznubS+CHu?=
 =?us-ascii?Q?XvYvvUcCpsKgxQzQUurK20aRsPlgNiUC1vU8vjeLqWibNGzx6Fn3rykndp4E?=
 =?us-ascii?Q?VFpVdELFSOc8ucbp+g1p1g/ryt5AE1esZK39gUYsQlhsDTT5CvmJkWg/+uav?=
 =?us-ascii?Q?3m3Z+hID7bQwckWRdphI7q+WKTfJcEHlc7SxbQm9kG+XNL6AVd2SQ8sQ3aFl?=
 =?us-ascii?Q?ApbID3WLWuYqxkLq9zac1dXtX64Xwipo/RsR30k946/l8yPWbw3Hpp/g8GIv?=
 =?us-ascii?Q?850bOsn5o1N6LbQU/LBAm0icdJ45o5n3TDavXlFB0AGrJhlMpr1xIhEsnyNL?=
 =?us-ascii?Q?QmWsY7krDzWQlBQj3YeU3a62a8715K0N6TaFIgwWbpLzWMxnNMuuqC+Ku8x1?=
 =?us-ascii?Q?WfPK0TKHh2HoGkL7wQAhKw3VDupBoIzp0SGLcjCRGCLGi7uCKHpmh7aiXxVp?=
 =?us-ascii?Q?qgb5INQvujuWjSx6D+Dc7++3hzFzyY2g3c/y267hAxzrBD7uAAJcyoiLc3MO?=
 =?us-ascii?Q?QpZ8IE9MhsXAeTAqqKQO/Q5e?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8015a159-2826-4fd3-a0dc-08d915605899
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 16:09:39.6396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VLw70GKmhKye1RWxO+9LIXIxE1901SSU3q6WvcblvKXAbBN8E0xUCMtLZ10p0JvBZyqwncoYFShseETU2JjBZWHaw4GlPyld7yCQl9aFe9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1806
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 04/13] ice: wait for reset before
 reporting devlink info
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 04/13] ice: wait for reset before
> reporting devlink info
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Requesting device firmware information while the device is busy cleaning up
> after a reset can result in an unexpected failure:
> 
> This occurs because the command is attempting to access the device AdminQ
> while it is down. Resolve this by having the command wait for a while until
> the reset is complete. To do this, introduce a reset_wait_queue and
> associated helper function "ice_wait_for_reset".
> 
> This helper will use the wait queue to sleep until the driver is done
> rebuilding. Use of a wait queue is preferred because the potential sleep
> duration can be several seconds.
> 
> To ensure that the thread wakes up properly, a new wake_up call is added
> during all code paths which clear the reset state bits associated with the
> driver rebuild flow.
> 
> Using this ensures that tools can request device information without
> worrying about whether the driver is cleaning up from a reset.
> Specifically, it is expected that a flash update could result in a device reset,
> and it is better to delay the response for information until the reset is
> complete rather than exit with an immediate failure.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  2 ++
>  drivers/net/ethernet/intel/ice/ice_devlink.c |  6 +++++
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 28 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c    |  5 ++++
>  5 files changed, 42 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
