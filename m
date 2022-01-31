Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6364A5094
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 21:53:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F04940924;
	Mon, 31 Jan 2022 20:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5pC92qeab6KX; Mon, 31 Jan 2022 20:53:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D09D04014E;
	Mon, 31 Jan 2022 20:53:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD4111BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B48D060F0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:50:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRckjKVHGW6R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 20:50:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7316960AAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 20:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643662226; x=1675198226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9fwef2nwFBJ7Kqyegt4D3mBEihGyaq92ktfPDsYENBk=;
 b=KjS+ho4JB6Z+uC03o4pQLWGLoTWNYihXPU2MtBXWTmDzU1dPNYNC6LwY
 BlUxcH8qFD5dfOjka2NAjr6OfnFnNbKXJAliZ/4Oo7NLBgOgLvU6JFh39
 VH/ZafcPIOm9f4TYKbXU4CSXnZzhUgXiRb5cRXc5DIWwgorPwGIZjlT0j
 BrXC/BTJ+Lbkhr2++peMRhvkDrPlWCbhRAgUY9KnsH9q+JVmZ0dGaBKQ4
 LNHm21CwqlvsAjrhLk7cwR91hjK2Wwikap0STrPja42Tf3ObE5kSpd/DN
 ItE4h4jB/2m+ZFglTdQUJ5Bsy4nB0UybiTos7EJd8qJOSFIbaT7w6mFO9 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="310856272"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="310856272"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 12:50:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="768711875"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jan 2022 12:50:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 12:50:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 12:50:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 31 Jan 2022 12:50:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 31 Jan 2022 12:50:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JVH5qYP1oBFMZAv7+b05QdTJn5AY1EVbVaQ8+n/mDPxP2Ix4aMBEQJYw8shZQleP5jaNqAC9/cpPUM/qF9UacpsiQ4j62IwHcyO9HyK9kKf0keQ+MHOUT8If3fB1wHOW4ME6fqlhHzrUBfQpKyGhTRhWVZ/PK9FUEbzORt8Vfu9nSGJsbl2A9tum3Gpd76EU/mpVT/rzC+AyK4dmsan+mCyvG/uSt6/1AAbyfkaqUyLFvaWZL6yK/gr6I3MvH/wCpet0u+pofsyp+HdzK9BSExiok3lQm1OWuuNA0UT9jCjykhk/2llPcYVF/55TteKnRkNPnO8Xl72dYfbPbUrd2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uBB7uETpF5Cpr5LL9GmhKKn5tOwvdwk9hzaWWcy8jrI=;
 b=VvazaZxdnpJPLA1NTYqWsB4hs5b8Oz8GtoQhLS7NILUXqS8YRjYo839AAPIv84oVQIekve4NRSEZibKJk3U/fyk5j54hXfoiMnlJL42aNcyGgWYWkWJ5QJ8GUEGEsGxmQ4ofvV4IfatKdmp9YpKRJbf2IdMh9cQKvsuxQYow2cDHcGBzk9ABJLa57u4sw5OZx9wxLh9uCXrhPFz9jrQw2LwG881/Bo+jxCGa0p0i2bBsl0a4nROSSjJ2j8+OUh/jUisFh822mipqNSkfGcWA0X2C2jusaMlxRQjBt7TwOW7OkWeQ451e7bGL7Wc6rgJW+H173zj+3NVepGijCMAdtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BN9PR11MB5449.namprd11.prod.outlook.com (2603:10b6:408:11e::12)
 by BN7PR11MB2609.namprd11.prod.outlook.com (2603:10b6:406:b1::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Mon, 31 Jan
 2022 20:50:09 +0000
Received: from BN9PR11MB5449.namprd11.prod.outlook.com
 ([fe80::4cbd:48b8:6876:75b]) by BN9PR11MB5449.namprd11.prod.outlook.com
 ([fe80::4cbd:48b8:6876:75b%5]) with mapi id 15.20.4930.022; Mon, 31 Jan 2022
 20:50:09 +0000
From: "Bednarz, Christopher N" <christopher.n.bednarz@intel.com>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>, epg nat hpm dev
 <epg.nat.hpm.dev@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH for-next 3/3] RDMA/irdma: Add support for DSCP
Thread-Index: AQHYFsQi813CGC6ylE64IOhm+Grq3ax9mXJA
Date: Mon, 31 Jan 2022 20:50:09 +0000
Message-ID: <BN9PR11MB544912283EF19BB461F57796B2259@BN9PR11MB5449.namprd11.prod.outlook.com>
References: <20220131165921.1392-1-shiraz.saleem@intel.com>
 <20220131165921.1392-4-shiraz.saleem@intel.com>
In-Reply-To: <20220131165921.1392-4-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4a693d0-6cde-42f5-e6c8-08d9e4fb4511
x-ms-traffictypediagnostic: BN7PR11MB2609:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN7PR11MB26092A83B94A48FB5AEAFC84B2259@BN7PR11MB2609.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rjIAUzjtREpflUaU3T8vFrcOvbQ6GNn7TV7oO8wiMMR4MYebl82Q+pAlzRxbeJRBaOG8Ak1vwlbFnAFykjislOaLPg8X5LbpH+Pmn20VkUmyh4/9+TmqtSoomW6V7PVoGdvJy2RQb1HWG6NHSwjXp7Rgr5jsiCl5VANwWwP/gUXHJN2ICj/v5V2weU0KJd3OxxnyzGKxPsNSRNII+BMsnr2yqJQls7Nqss9VbI1Zi8oh6zYUFgUVh4JWjDYX1nxDXNPYbXSmQnJUH7ctTcngZFAMzL21mrVzbM0tPtuHXVJbvZdueBiDLMUmTynGyrt/dpI9+8MrrY/JsVLr59JR5VY36vvZ1TNxxg+VqsHVWZSL/XMEoXpapMnJ3Oa+ONbhom/rfW6G30u6R8utlmv8uwGNGaTZGfLJPrkHljPEXXnQcAVx0sVJ1WCF1PF2xVXjx6Dy4LNUMW8i7kNtm6Y79gv1un8usGSI/c83YUKA+Z8RiOMZd797ASkaTVFvtwSGpf32NFBBnZjXAiXtNPL1ddHnvSO4GnH+ki2h/O4/Yua2ug/2k5DlRJhWrfOulvNCfc4lkcy+dNAFptu3FaYbeStoxaDOHnbTN9YWfbppNX8UyRxXLrjUcSMYwQ5e2MkzHRlIMydrHIsxM7GUfqCu/4djcFuM4Xpwuo1CLo1Q0EQbeGspxHKPLIwExVkjQhFmPeXXc46U7fpDahlLCwsHIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(7696005)(9686003)(6506007)(76116006)(26005)(508600001)(316002)(5660300002)(71200400001)(186003)(110136005)(53546011)(33656002)(8936002)(107886003)(86362001)(4326008)(8676002)(66556008)(2906002)(66446008)(38100700002)(38070700005)(122000001)(66476007)(64756008)(83380400001)(55016003)(82960400001)(66946007)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XuzqWnU96UT7aS2bHx9bqr/g8cgO0tAJ4aFrmXB6pS5GLmUIl1ibRU9lxWhg?=
 =?us-ascii?Q?Pr/FhhTxyveHhWjngWGgdiDWh4kldAN2X+ki8VN97P9GBtv2+IRqAqAVTQNm?=
 =?us-ascii?Q?1m5uio6Je8P7T/PRA0iC72eewm8bxy/1CXH8mBRB19RGeYx5afoWJ6G/R1Mc?=
 =?us-ascii?Q?colBXycWFznIBUl68tOwX1NEY5OSOvG+NkYMMFSKlMQazvpYfcdtYc0zEyTy?=
 =?us-ascii?Q?wTE3jZRUrGbTZzP0cdz+xAOPInqKNZ6kk7jJT1rFAeUS5/FQ0ruCqEyo+3xd?=
 =?us-ascii?Q?hIt8LGwj3J3gzMqxcQ7OTqiqqLZ+NnLPOjDJuNTjIZIiBpuQeOckkp17GQ+R?=
 =?us-ascii?Q?i+oisDhZkxwnpF1IrPNYmncOnhYxFKhL5d5vkgUf1s/afEWhsrQSQGXEZ39m?=
 =?us-ascii?Q?cngxiGGV7PHXJ36ljIud93LYBVGdn9cbk9+3tAyfbqlqy5fbFtOxCvdRz/8I?=
 =?us-ascii?Q?aj8FqyIvO4SWsheWh9c1DH24ioneePCYhoPb9MEIPhX/ZHNWMFKJX6DudY+b?=
 =?us-ascii?Q?7vBYWTog5V1U0yMDjoa7nb61MjwbjFUeKTrR4LmEcVBWmGwLr6d/lDBHAixq?=
 =?us-ascii?Q?Nt5WrxESpUxui+nZXErfqGbWdIbTuCIdgSyRuiyE5enjYiWtyhjYmdtN9fSg?=
 =?us-ascii?Q?QQen1Ij/nMGTPkQqcrWNLa8fcAYKlBrTt/eOgG/cbKiy1GAULdUDZcfrIfyW?=
 =?us-ascii?Q?wIytjhLFjQrYqCqZp1L8raOkLzDn+wWAbJNPeCVv7rhJV9n5vQPjFZdj551i?=
 =?us-ascii?Q?Ynbd78yagCUuJCIjmhWrKGVc1QK2kw9d21rSC5pt3uZAgaZ7SlBV3UEyHtlA?=
 =?us-ascii?Q?UpHFTjLLAwjCgQBx8h3O8ADATlrijvDk6ahCEcSVBx3lzTeYzBj52q6ikM8Q?=
 =?us-ascii?Q?VYGn8OYJH9YkRBm72xhkMWOtViH8r/ZR4BylFUPOkmxDq8AKyYqoWlsjF6mA?=
 =?us-ascii?Q?qRqZxuZ5FWEYAXsPuCwT6Fg6QQmzXKtLNcy4iwF7b1uLUGHCKcR8S3qzb8WZ?=
 =?us-ascii?Q?0yqwe6xvAj0zmm8MOhKknxwn7x35fQTr7gCR8RQkMs1IvziVMVa3sDuSFzPo?=
 =?us-ascii?Q?IIr2mlOGzdxiCdeMmo54TSsVyUMrprd3BLaV1ToL0VP3gz2KZqmjHdQmwIXg?=
 =?us-ascii?Q?AuovPYHqTPSIqCkRTJykwR4Z4cKfqfl/ISiDHh2Tjvu2FMjVIsx04wkfmruH?=
 =?us-ascii?Q?zjEMlZPlyZA32dQSFFHM/7J6Mdhphhfqfdzo14VuH7M8XUjTP3rH1LTjMmjw?=
 =?us-ascii?Q?pBNzjxi6DbwggTTmtrUwJo+bONoWF96iaKbTnSvoyWuRcxUKFQDUl4Led+L9?=
 =?us-ascii?Q?DOa2zE3oacepfZc18SLyk5t4YV3nIL+4NQ45RH5tnw57OqTF17X0kKS34heV?=
 =?us-ascii?Q?CaHTOv1owzbBN/k1xGX1Rk5LnEC2O1uJ08CJPjrV5IW+RFvvvxuVSoqN+MGv?=
 =?us-ascii?Q?SU+4DvkS1738yxsa4PZykH+YSTUckMXE3sj35LzZhFU/6hqvdRjV/3Vmd157?=
 =?us-ascii?Q?BoYgV6xzJsPWb9x6hXXZ8TxhCQWOeK/7e3n0HUrbgPSjL3iNDG+I43fwR/U0?=
 =?us-ascii?Q?X5gCpKY9HDoRWW5nmY9BPRHRSozZYcoj/Za6gVIgwTySIPzCtLrjNXK9qe9T?=
 =?us-ascii?Q?dEhDThT87fxa7vhxPQ0Vo/ylVt7jUoSG3V2S2oIfhL+38+f/Zts6Jutnlrh/?=
 =?us-ascii?Q?NDY1Uw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4a693d0-6cde-42f5-e6c8-08d9e4fb4511
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 20:50:09.5267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9/8QnGR84ovYd0acdCe3H5iA8E6OH+sKoHjiPbs9QGhf5IiUum7LThxWayI/8xe9I9fRt5/Lq9X5fFCjL4iRg2QQBeXN2B124rtII+3fQQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2609
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 31 Jan 2022 20:53:26 +0000
Subject: Re: [Intel-wired-lan] [PATCH for-next 3/3] RDMA/irdma: Add support
 for DSCP
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patch is fine.

Promoting the TOS based on the inbound cm request doesn't seem right:
cm_node->tos = max(listener->tos, cm_info->tos);

This code was already there...So not blocking.  Mustafa and I chatted about experimenting with it removed (just take the listener->tos)...we believe there was some reason behind this but we've had numerous qos bugs that could have been getting in our way.

-Chris


-----Original Message-----
From: Saleem, Shiraz <shiraz.saleem@intel.com> 
Sent: Monday, January 31, 2022 10:59 AM
To: epg nat hpm dev <epg.nat.hpm.dev@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
Subject: [PATCH for-next 3/3] RDMA/irdma: Add support for DSCP

From: Mustafa Ismail <mustafa.ismail@intel.com>

Add DSCP support for the Intel Ethernet 800 Series devices.
Setup VSI DSCP info when PCI driver indicates DSCP mode during
driver probe or as notification event.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/hw/irdma/cm.c    | 20 ++++++++++++++++----
 drivers/infiniband/hw/irdma/cm.h    |  7 +++++++
 drivers/infiniband/hw/irdma/ctrl.c  |  6 ++++++
 drivers/infiniband/hw/irdma/main.c  |  8 ++++++--
 drivers/infiniband/hw/irdma/osdep.h |  1 +
 drivers/infiniband/hw/irdma/type.h  |  4 ++++
 6 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/cm.c b/drivers/infiniband/hw/irdma/cm.c
index 6ff1800..abc101b 100644
--- a/drivers/infiniband/hw/irdma/cm.c
+++ b/drivers/infiniband/hw/irdma/cm.c
@@ -2209,8 +2209,12 @@ static void irdma_cm_free_ah(struct irdma_cm_node *cm_node)
 			ibdev_warn(&iwdev->ibdev,
 				   "application TOS[%d] and remote client TOS[%d] mismatch\n",
 				   listener->tos, cm_info->tos);
-		cm_node->tos = max(listener->tos, cm_info->tos);
-		cm_node->user_pri = rt_tos2priority(cm_node->tos);
+		if (iwdev->vsi.dscp_mode) {
+			cm_node->user_pri = listener->user_pri;
+		} else {
+			cm_node->tos = max(listener->tos, cm_info->tos);
+			cm_node->user_pri = rt_tos2priority(cm_node->tos);
+		}
 		ibdev_dbg(&iwdev->ibdev,
 			  "DCB: listener: TOS:[%d] UP:[%d]\n", cm_node->tos,
 			  cm_node->user_pri);
@@ -3835,7 +3839,11 @@ int irdma_connect(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn_param)
 	cm_info.cm_id = cm_id;
 	cm_info.qh_qpid = iwdev->vsi.ilq->qp_id;
 	cm_info.tos = cm_id->tos;
-	cm_info.user_pri = rt_tos2priority(cm_id->tos);
+	if (iwdev->vsi.dscp_mode)
+		cm_info.user_pri =
+			iwqp->sc_qp.vsi->dscp_map[irdma_tos2dscp(cm_info.tos)];
+	else
+		cm_info.user_pri = rt_tos2priority(cm_id->tos);
 
 	if (iwqp->sc_qp.dev->ws_add(iwqp->sc_qp.vsi, cm_info.user_pri))
 		return -ENOMEM;
@@ -3977,7 +3985,11 @@ int irdma_create_listen(struct iw_cm_id *cm_id, int backlog)
 	cm_id->provider_data = cm_listen_node;
 
 	cm_listen_node->tos = cm_id->tos;
-	cm_listen_node->user_pri = rt_tos2priority(cm_id->tos);
+	if (iwdev->vsi.dscp_mode)
+		cm_listen_node->user_pri =
+			iwdev->vsi.dscp_map[irdma_tos2dscp(cm_id->tos)];
+	else
+		cm_listen_node->user_pri = rt_tos2priority(cm_id->tos);
 	cm_info.user_pri = cm_listen_node->user_pri;
 	if (!cm_listen_node->reused_node) {
 		if (wildcard) {
diff --git a/drivers/infiniband/hw/irdma/cm.h b/drivers/infiniband/hw/irdma/cm.h
index 3bf4272..19c2849 100644
--- a/drivers/infiniband/hw/irdma/cm.h
+++ b/drivers/infiniband/hw/irdma/cm.h
@@ -384,6 +384,13 @@ int irdma_schedule_cm_timer(struct irdma_cm_node *cm_node,
 			    struct irdma_puda_buf *sqbuf,
 			    enum irdma_timer_type type, int send_retrans,
 			    int close_when_complete);
+
+static inline u8 irdma_tos2dscp(u8 tos)
+{
+#define IRDMA_DSCP_VAL GENMASK(7, 2)
+	return (u8)FIELD_GET(IRDMA_DSCP_VAL, tos);
+}
+
 int irdma_accept(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn_param);
 int irdma_reject(struct iw_cm_id *cm_id, const void *pdata, u8 pdata_len);
 int irdma_connect(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn_param);
diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index ef1d6ad..94a9c26 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -77,6 +77,12 @@ static void irdma_set_qos_info(struct irdma_sc_vsi  *vsi,
 
 	vsi->qos_rel_bw = l2p->vsi_rel_bw;
 	vsi->qos_prio_type = l2p->vsi_prio_type;
+	vsi->dscp_mode = l2p->dscp_mode;
+	if (l2p->dscp_mode) {
+		memcpy(vsi->dscp_map, l2p->dscp_map, sizeof(vsi->dscp_map));
+		for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++)
+			l2p->up2tc[i] = i;
+	}
 	for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++) {
 		if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
 			vsi->qos[i].qs_handle = l2p->qs_handle_list[i];
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 179667b..9762526 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -79,6 +79,10 @@ static void irdma_fill_qos_info(struct irdma_l2params *l2params,
 	}
 	for (i = 0; i < IIDC_MAX_USER_PRIORITY; i++)
 		l2params->up2tc[i] = qos_info->up2tc[i];
+	if (qos_info->pfc_mode == IIDC_DSCP_PFC_MODE) {
+		l2params->dscp_mode = true;
+		memcpy(l2params->dscp_map, qos_info->dscp_map, sizeof(l2params->dscp_map));
+	}
 }
 
 static void irdma_iidc_event_handler(struct ice_pf *pf, struct iidc_event *event)
@@ -110,7 +114,7 @@ static void irdma_iidc_event_handler(struct ice_pf *pf, struct iidc_event *event
 		ice_get_qos_params(pf, &qos_info);
 		irdma_fill_qos_info(&l2params, &qos_info);
 		if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
-			iwdev->dcb_vlan_mode = qos_info.num_tc > 1;
+			iwdev->dcb_vlan_mode = qos_info.num_tc > 1 && !l2params.dscp_mode;
 		irdma_change_l2params(&iwdev->vsi, &l2params);
 	} else if (*event->type & BIT(IIDC_EVENT_CRIT_ERR)) {
 		ibdev_warn(&iwdev->ibdev, "ICE OICR event notification: oicr = 0x%08x\n",
@@ -285,7 +289,7 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
 	ice_get_qos_params(pf, &qos_info);
 	irdma_fill_qos_info(&l2params, &qos_info);
 	if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
-		iwdev->dcb_vlan_mode = l2params.num_tc > 1;
+		iwdev->dcb_vlan_mode = l2params.num_tc > 1 && !l2params.dscp_mode;
 
 	if (irdma_rt_init_hw(iwdev, &l2params)) {
 		err = -EIO;
diff --git a/drivers/infiniband/hw/irdma/osdep.h b/drivers/infiniband/hw/irdma/osdep.h
index 63d8bb3..6e28e43 100644
--- a/drivers/infiniband/hw/irdma/osdep.h
+++ b/drivers/infiniband/hw/irdma/osdep.h
@@ -5,6 +5,7 @@
 
 #include <linux/pci.h>
 #include <linux/bitfield.h>
+#include <linux/net/intel/iidc.h>
 #include <crypto/hash.h>
 #include <rdma/ib_verbs.h>
 
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index 9483bb3..4290a2c 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -611,6 +611,8 @@ struct irdma_sc_vsi {
 				struct irdma_ws_node *tc_node);
 	u8 qos_rel_bw;
 	u8 qos_prio_type;
+	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
+	bool dscp_mode:1;
 };
 
 struct irdma_sc_dev {
@@ -735,11 +737,13 @@ struct irdma_l2params {
 	u16 qs_handle_list[IRDMA_MAX_USER_PRIORITY];
 	u16 mtu;
 	u8 up2tc[IRDMA_MAX_USER_PRIORITY];
+	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
 	u8 num_tc;
 	u8 vsi_rel_bw;
 	u8 vsi_prio_type;
 	bool mtu_changed:1;
 	bool tc_changed:1;
+	bool dscp_mode:1;
 };
 
 struct irdma_vsi_init_info {
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
