Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 121E741D286
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 06:53:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ABF76076A;
	Thu, 30 Sep 2021 04:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QHLq9HMLJHwG; Thu, 30 Sep 2021 04:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C29A60736;
	Thu, 30 Sep 2021 04:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 187D51BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 044C040215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jscsElI9_pyC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 04:53:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 049C54020D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:53:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="247635898"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="247635898"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 21:53:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="520154707"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 29 Sep 2021 21:53:22 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 21:53:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 21:53:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 21:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fuOGy2bzV4Dc0vDQOhkpcU9Lx9AgeU3ozUM+j1Q4LxefylkpmhLqkBZr/gpsRHC1/5VzJQEcf2VER7QYX9DQrCAMVK7hVKrpAgUUhI5J30c6uz6yRnbOiI5GGyj4p+4BoMr4Kn3qZxMqEAAOV9SwuEpi92ra8EGazsBMxlIS+rzWB3R5RY9zoD5nZ7hWYI3ao9jBNFAw2OuBoO4CqiK9zxmd2lvv54xBXsL1+5FeRmsfTOQoaveHcvwDzkD9SqCM9uVfIICZB1EVLxmF5pCuJzB9TcIRcteZlTe6iti/Okq7xfeIVJYVkyecZTy1CKHa9/bRzfbT9E/cllfjhqj6yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=momDOym0Yzg1Qq1YeypNFMt8YMUMyCEu44XHnPc6lQo=;
 b=cqK89T7e2sBrZR5jp/MNRZSudplripPbkQYH6MxIkpxuuWMVWt8a+DrGGx79cLz90e8OqpIcB8jiVX4qz0sZ6SexEJ+3PHbpZEfjnbcW+ri7lTbvTAEzdiAddNfghRauOMYlHA3utg2yAfsjgwsKILMbhzTqtYIWKLHRor0CoG9+DsExMIgrgwawSt6d8fGaIcdKilsUz0+ieS2+8NpSXZ/Um+x36guHJdwgG1stMIRfMoVl2Os34L+T5WtxVRV+mtxsoYu8CbSfOwIJ2D7kTm0yxLItUbUBFKT2pm0zeNZmzxmVG8q0lBGpLSLBmSX9q9Ic0D7XuCbMWINQQqi0yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=momDOym0Yzg1Qq1YeypNFMt8YMUMyCEu44XHnPc6lQo=;
 b=iwFWIDWCaxHYYRgrj8pDUo+yfheMQ2EEkoS+LRa208lnp0+811BsNcco/onL6buvdYh/Gt2VEiKXcH5MpR4UHtqGdlouZHX9Q72PI3re1Q1bCsCrhPyDDty+PHA/kvWTroyzHXuzIkrR0tbP49L7r+UuhahItGXQ2nhOWSDEzh8=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4916.namprd11.prod.outlook.com (2603:10b6:303:9c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Thu, 30 Sep
 2021 04:53:21 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 04:53:21 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 8/9] ice: ndo_setup_tc
 implementation for PF
Thread-Index: AQHXiqAPLLSHXRxsv0y+OHnK4bJd2au8WJ8A
Date: Thu, 30 Sep 2021 04:53:20 +0000
Message-ID: <MW3PR11MB455490F3AAE421C28582A3F29CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-9-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-9-git-send-email-wojciech.drewek@intel.com>
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
x-ms-office365-filtering-correlation-id: e9576de3-98cb-456c-d87b-08d983ce3a0f
x-ms-traffictypediagnostic: CO1PR11MB4916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB491668762C88D07965B5CFD29CAA9@CO1PR11MB4916.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G8zmPo7r2Yj1FrbzP5mWVrn72JS2uJMwTcFN+0HsaeyiDob6ww3SsrH8RsX9ZzuEIe6VaDV+Ehw3+pYBdr0yojCKkyZ++upUZSjA/ftyN7Z4LRFEScxOrKWJWUJRw8/zrRDvkyGchfE5ZN+TlO/SJV0mUQw+qYOfUHOBxTTYHlw4P1Vn7GHQF9o2jYFZ/LC8wDnCSk4Y1tWY3qZT91ppxlcYzd4RkCsSPRlFy09KVDad+aXeW/7On9Dt3NmLR3gJgX6jMzUyA2Hx7KXO0/zkkqizYHbWpaxyXDmqNQeEFXFXNWBLkTOCumvqvq8tPH8ZmzsE3hsqlE+rVaHdvOHTcZMxhSdNZSPwgRcUscDepurkI32ja6tMf2w0batNspqWm0HMS56vyaZ/MjDwUWkLkQRnDMf5+R7vjDU4EyNEHwC6PPT5KVT7Gal97/yKqT+MEbpbU5uaGugyXjVvzuSetdLKQerawzc/bzGueLaivGuNxMSvU+0HVGYwoh2ZLuqeYZIBFnx29ywZFOFeRKezAFT3/tmKwbuFhMFOA9csq10ku7rnGnOOb/aYDXQDsuALfRH7z5f1kfO8tSA5SFJnqYkFL+k9R95I4WiBINKJ0CpTUI5W0l0FZbx6Vomfcqht0ljHYJIARZvFSJ71r01RHhBNX2ByM37VdJVbus8c84gkmontlXeBmd0ilBI+LUQUXMEtRU8YtwLCUtXHzr36ww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(55016002)(7696005)(71200400001)(86362001)(52536014)(110136005)(5660300002)(38070700005)(122000001)(9686003)(38100700002)(6506007)(2906002)(83380400001)(316002)(66446008)(64756008)(66556008)(8936002)(76116006)(33656002)(66476007)(26005)(66946007)(508600001)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B+9szVO2QUxPvsFOtxXu2UbP/mzjEgHaKIOw0YZBybld22U8tyLVZXDOT09Q?=
 =?us-ascii?Q?Y1yJwqUsEBogr4E6F3Mzv+Iq+YY2++XSrcyc90s/qexmpe605cC8oNIDgMzf?=
 =?us-ascii?Q?if72Nw/swpGEr2D6D/JGXkiBTd2IGlSMxHzxW1j9NNanWLHEl/yPjcDOIIeg?=
 =?us-ascii?Q?HYHEgRbIZTvysP0t9BCjE5+SeLhQhBRfdshnolFo7WNGJIew35DFyHZ64QQX?=
 =?us-ascii?Q?xB1oZqm0GKRhG8fRKLmbX3JPJmQlm1VFPyv7MlrSo5VtlKjCRc839JyM5MXY?=
 =?us-ascii?Q?uSOqeDVECWERPxiDGCNxH8YfUGiJ+KPEhYd5alvCXzQqyv2xmHtsJmBgDbyE?=
 =?us-ascii?Q?LLx1Ei24ZSYidYB/snQH3TTW3K69nhdRFiVOxdJ1oUoELP06tWGop0zpFihy?=
 =?us-ascii?Q?/frmpsY5WS51vwxjiRsyp0u79C6Et9Y4pRAHNHBBdhicR8TzeqmyHWaoHKBf?=
 =?us-ascii?Q?2+mD/7G1H9tcWsiQXqdOYv48XpwnGvGVqtkeaXFA/PWinB35Jpj8Lo+nbJyK?=
 =?us-ascii?Q?eIHczbVSqw18anNZlWk5S4JttKPpaFHZaw0f7M8ue/1BgGxYsHajBjCE81I8?=
 =?us-ascii?Q?TiChwHT8Rhxyfe0hlS+CHHqys1Foi6sho/gx1FCNkeNoahwxIEFd9mX0YJU1?=
 =?us-ascii?Q?wBljuT7DJJ/Aahe25cHcSnf/qEN91oOQzkm5A8L83QnsDNl3LSMwoEIrEz+F?=
 =?us-ascii?Q?nYlyIHuNoEsBY7Kpp8nFBt/2Vrpd/k0BiHkG9hekSmrSjacxvFwNEN670o6j?=
 =?us-ascii?Q?Y5ERjw1T6oLk+FMxgG6Cjdy2MrxriMgOHXXdRH4yudMtRFM/+2HqbCz01/hh?=
 =?us-ascii?Q?dzKOpz3W+/nIYDcT2T4HyFPE2GuQeGM0SlmEmAhVWwAFmbeEfteWpl2Gym38?=
 =?us-ascii?Q?CxFsSC7DlAtY3UAWy3L7i+BnOI1Il3xtrA4YZop4t87pt3bUTpMcG4Nn8ePx?=
 =?us-ascii?Q?wKk6OzmHmuZJXVxZYTtkqoWBsxSaJbFxg2EfGtwfTvKjdOAS9vYjdBtKg/2Q?=
 =?us-ascii?Q?mkmSDGZg/cp4s/lFSeivw2HXP/vneDQbWf5T5rjMORlZFwKdXgtnE88sCEaZ?=
 =?us-ascii?Q?XwOU7/vg6dPygkjTWlD/rjHdkPydW4h8qm+lCWq1BTmPwrDoTTUU7lk+3oVe?=
 =?us-ascii?Q?Y8O4KtNzFgIM9xtpufNGmiQ45juhgR10AlVxtcahzN34gC4IJKgdFZ1tiXgh?=
 =?us-ascii?Q?PAKdqu2zkZDkutLeHj1C4t//2vVivlgQNPQ2JnhgpdoWSPlnxgMHpuO/RMAK?=
 =?us-ascii?Q?YgOYOts3XtyOS2znlPL/qcPnzQrkrUQCgfi4vLKlpD1+bvHqBs8Y/Jqe0Rbu?=
 =?us-ascii?Q?R14qlRShCcoHpaQalpR2ukjN?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9576de3-98cb-456c-d87b-08d983ce3a0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 04:53:20.8850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qHjWnqU9gmNNmISCkp0IBaveEU2wlw9ybXhIiiSg4yuto3Orzu03bawo6mv3yIFzy2mAHS4msoi+CeGizsYSJtFSghrlLw5WSjBZBMOWbOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4916
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 8/9] ice: ndo_setup_tc
 implementation for PF
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
>Subject: [Intel-wired-lan] [PATCH net-next v6 8/9] ice: ndo_setup_tc
>implementation for PF
>
>From: Kiran Patil <kiran.patil@intel.com>
>
>Implement ndo_setup_tc net device callback for TC HW offload on PF device.
>
>ndo_setup_tc provides support for HW offloading various TC filters.
>Add support for configuring the following filter with tc-flower:
>- default L2 filters (src/dst mac addresses, ethertype, VLAN)
>- variations of L3, L3+L4, L2+L3+L4 filters using advanced filters (including ipv4
>and ipv6 addresses).
>
>Allow for adding/removing TC flows when PF device is configured in eswitch
>switchdev mode. Two types of actions are supported at the
>moment: FLOW_ACTION_DROP and FLOW_ACTION_REDIRECT.
>
>Co-developed-by: Priyalee Kushwaha <priyalee.kushwaha@intel.com>
>Signed-off-by: Priyalee Kushwaha <priyalee.kushwaha@intel.com>
>Signed-off-by: Kiran Patil <kiran.patil@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/Makefile     |   3 +-
> drivers/net/ethernet/intel/ice/ice.h        |   4 +
> drivers/net/ethernet/intel/ice/ice_main.c   |  68 +++
> drivers/net/ethernet/intel/ice/ice_tc_lib.c | 838
>++++++++++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_tc_lib.h
>| 129 +++++
> 5 files changed, 1041 insertions(+), 1 deletion(-)  create mode 100644
>drivers/net/ethernet/intel/ice/ice_tc_lib.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_tc_lib.h
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
