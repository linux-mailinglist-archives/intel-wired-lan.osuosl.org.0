Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A974841D287
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 06:54:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 056EA42540;
	Thu, 30 Sep 2021 04:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ljeWe4FgQAa4; Thu, 30 Sep 2021 04:54:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 017C242508;
	Thu, 30 Sep 2021 04:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DEF401BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB47342508
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoE1SfbsJ-kM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 04:54:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41EC4424FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:54:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225172390"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="225172390"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 21:54:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="563840036"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 29 Sep 2021 21:54:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 21:54:01 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 21:54:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 21:54:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 21:54:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VI+Lpvb1xRd6mSEqBMfneQa7fLyCp/p4HcXeNs1kV3hHIUxqqgJrhKo1chKVJxWRccvZjUyMWCXeurgQ8APXOcfxhf2IXmHp+vqzMofNgLDDoT+aXEewUx4Zj/hyQaHUiSWw0GbQg4+Y3FQI01P7FeBLmKJxf+7gYIS61rNCNGrH8qJMLPb2ARNhx/JoOVkDVg7KVEjgJoAs/K4OhRYQKRPnbmmELnpQu3hyk800T0+MqiWzSQOpVc2VjglYGbwbKH4yIE2XiVjVJx0GpE5Pkz1elMGdyyWviQIBVnQuqUuc9sW8lLqIopLVE+S9AsYlj5cbTpQ44qzAOio3bAWMkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=kIoA9twETeEXj8/3CiWJGOuYROnEHENaAsNQKwZ+Fks=;
 b=LXwbNSFr+ClI8U+AUsjwSif8GSPXMue1B3Z5YWdOIIIPmMlRjapvHidCvRRofdfB9gf4BuLgFhG23N0d2IxbAaXF0xXbBkh3Ck064kUzyUHqXo8UU16GgMEgV4AboCMVgHB/Qm/hF7T/H5MTNj20uJlnsq9zOoMg8wfUVmTvhTBv5Ne4rz5aR1/HYvMfVVtWkynhSwYdxnNz5JD8W5bZqIpnL6nkRT7yVb5kXXsK9flCvydXv9umIdoKz1ksR5GPs1XVXkOzo6z0lGlxo7ro8Pn2PODhV99N/abxCKaN9k/W2mCR+nUlVwiVAmQ1la8G5B7adp1gbiOt6VW86pLxKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kIoA9twETeEXj8/3CiWJGOuYROnEHENaAsNQKwZ+Fks=;
 b=j/L3wXcKazjO5FkACqnPDh9qOZMFfXKtchn0uQsic1Dir6iLkLpGmOjZPDO4b4HHTfu9D3WWwGtWPuoWJzgc1Vvp+0ixvI8Mijjf3RUZkcj4Ym93X9Ohnkjrif9W7Lyx8S2e1QyO6s3xyw3I8tHLEwrArpSbdHqLzJkYtGEaPhg=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4916.namprd11.prod.outlook.com (2603:10b6:303:9c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Thu, 30 Sep
 2021 04:54:00 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 04:54:00 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 9/9] ice: ndo_setup_tc
 implementation for PR
Thread-Index: AQHXiqAYrUo5V7OatkayPzc5b/CIo6u8WQQw
Date: Thu, 30 Sep 2021 04:54:00 +0000
Message-ID: <MW3PR11MB45547D182875AECAED3952099CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-10-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-10-git-send-email-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb1c89fd-9237-4c8c-635a-08d983ce5184
x-ms-traffictypediagnostic: CO1PR11MB4916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB49168C0856197717154F51689CAA9@CO1PR11MB4916.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jBBxk9qPV3TfwjOnqwRYti6rXiP+GYLBLwThDano0Y263bmNK7r6TcmquyZfYhHO4dI/z0rRPnGXxqgRQkTDibZIS5R0fJsmOlqw+wHuwhO3W0UisO7ZSJzLOYnYY3/EEelP5lflMOcLMgJzb+QpJGUL3GgVcmYP3s97xeZD6ZElcYyaRLnJm6H/At7LR/SETKX4HYuUaCfdjKbBcCb7PC58lvJEbAfWJBo7tCuWyH1PiciC9rwudUIyO3Bp4GDINQo52ukmpYnNCYK77M52MlfYVlxxrufzdk4u9zizQ13dXUzDBmmBjRTzPiIWLVS/wn5BoePySTdC9MzXHDQU43W33jry3FQwZch7PlKbC8xPk8uqfeWXuju+Vs1u4JNioxg0QhMDYwXMxaEOqevoQBN9OZEolP8qCAn9kraqJdsdzq+NSJCCzl0aZRAxnSpjap6HZI8H6mWtL84ueAMYqJAvXRjs9Reznaq5ui/NLSpv4nuTxlKDNnDmc4Q4BDltiaFr1B6MRK3YtOLN7t4S65jWPuRGVZNj0NTjnDv7ZRwm1Ngp6Vu/wsl2OR337hu1IGviOD9ONADgLKoARlinJrbwmtsFLA/Xh88A5I5B2s0kJHjSBBB0VbOxxQ5xbLrGahbhyZJIcZua9aHJdhwQ3oo6PmpqaAcTayV7zuXOZNYji4hnF/nzvjaR9ZfUbd+agP4V4lzruRD/Anj5jyz0VA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(55016002)(7696005)(71200400001)(86362001)(52536014)(110136005)(5660300002)(38070700005)(122000001)(9686003)(38100700002)(6506007)(2906002)(83380400001)(316002)(66446008)(64756008)(66556008)(8936002)(76116006)(33656002)(66476007)(26005)(66946007)(508600001)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H0iKfgeuc0yfXwPg8mFiayUfFrSEsMMaUswbQpBVtgBiC3uiZUW/lr7qk4OE?=
 =?us-ascii?Q?m9vf9Gxf0lCQ+9BpnwdzaKpyae6FSt9BwcKQpUPYhxZl7iYBfebs+Fc8ZpNJ?=
 =?us-ascii?Q?WDHgj0AveyLtBwZcfnJH5RQGUHGMqwKSe925Ij+QwUGvuoXGoWJ1ImorFuMO?=
 =?us-ascii?Q?YNCJlrlWdjidhaHN1Y2347DIRk2INGdJ327Yl2Z8wp2DJJjBsnbxEPQQ08xz?=
 =?us-ascii?Q?ZrPay9+fUUk2P8irXmYlhfp7sOIICHF5TWvQX3V/Ueijvrk8jeVha2Ao1sE9?=
 =?us-ascii?Q?isbS/W3h10KTY4kLNs5/F1S9A2oAMQE3B1RPv1AZmBKgnMQr3GrYYSseWq2T?=
 =?us-ascii?Q?bUCkLZlGfHvxnCblSFwQBNC/l/Y2700VEeEboTkgUN6ADcXlEhhLbRUIZnLj?=
 =?us-ascii?Q?UItnQTx0wyygYyphiRjqS8JoLSuT5dggmODCgVjJ23GTv3U4dZ02GK1FHN/w?=
 =?us-ascii?Q?lj7K/GznShWkcZ1nhHFAqbRBDu5gEx3truDgSM9fTXwgnZAJ6MYwVAyHit3K?=
 =?us-ascii?Q?rnjymyqOKiuRXr93wOfbDLBgDp+cBfy5QJssg9E3Jwmnig5+gOIWMtgFMB4x?=
 =?us-ascii?Q?ihF37gLr7BsubfV88zZVRqilsjhn3Mgo85SBnCjyONEpI52+Znoxk2D0g5jp?=
 =?us-ascii?Q?Pg4voeIA/HDCTuPZ5Ut3BL33zlcEZJlGSIwjovXW7T7JvxZvd6Fyk6exYciY?=
 =?us-ascii?Q?UEXCV13j5eyzzJLdYkS5Lu/LhnTkDGmOIaKLaB+MHF+dN2tz+8lCb5+0U4pd?=
 =?us-ascii?Q?G628bh6fHEZoAzALPRFRDPlTqw/DHXOit5OtVBU9M/3bRtYII2pmAMWxX0bH?=
 =?us-ascii?Q?8FQ4wZP4obG+anZPruvYu0g6SfnEx9YxdW06mKWK85F5CCqgB1hGGFf0hjnt?=
 =?us-ascii?Q?dVXnrxXACrx2xvP1mKf5gYuVN5HyICgJwgj4mii9OG98C45EfbY/O9FOmFa+?=
 =?us-ascii?Q?XdnFDAfpkK4fCKBw5cRd7ImtkK3NrJcmkewnwNuHfdVJZCod4/rZqLBmCkxS?=
 =?us-ascii?Q?ZUaIaBOJdvjf7BRE16ZQbRfd3dIWSnRULSCqHrc/LAOyrrqEkQyJJbieh2F9?=
 =?us-ascii?Q?hhEiDnzAuZ/QNXZvtjHFaY3MECbxApbJvykq8L6SlwaxsSmbs5vF+uok+8WZ?=
 =?us-ascii?Q?NAZnONehtasrqRRr1yiGaAENxVWx4bJxfwHXdrxZ3J26wIQMJraPx2c2Qt+/?=
 =?us-ascii?Q?1UcsoIp+QRTHhxrtRLFras85eLv4FV/jME9C3eYjyluMS89mCIYKixEIVmwG?=
 =?us-ascii?Q?ff2QKoM50jxhuqdDc0TJThvylecAslz19guYatFHKyvyea5AyExQTaZgwo95?=
 =?us-ascii?Q?AdUby2w096IFgaG5nIIMK58v?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb1c89fd-9237-4c8c-635a-08d983ce5184
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 04:54:00.2633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ifs9JJtVkq4MjuWXeupAFUvay+hvRFgef0VAFA9gdrH4vZ8jgaRyvRyasOrdy1e9EJt/wbANNWumVlDFWsR3SW4slivHDR2lm6RzD/jdJOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4916
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 9/9] ice: ndo_setup_tc
 implementation for PR
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Friday, August 6, 2021 2:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v6 9/9] ice: ndo_setup_tc
>implementation for PR
>
>From: Michal Swiatkowski <michal.swiatkowski@intel.com>
>
>Add tc-flower support for VF port representor devices.
>
>Implement ndo_setup_tc callback for TC HW offload on VF port representors
>devices. Implemented both methods: add and delete tc-flower flows.
>
>Mark NETIF_F_HW_TC bit in net device's feature set to enable offload TC
>infrastructure for port representor.
>
>Implement TC filters replay function required to restore filters settings while
>switchdev configuration is rebuilt.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c |  3 ++
> drivers/net/ethernet/intel/ice/ice_repr.c    | 53
>++++++++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_tc_lib.c  | 17 +++++++++
>drivers/net/ethernet/intel/ice/ice_tc_lib.h  |  1 +
> 4 files changed, 74 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
