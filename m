Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A45372986
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 May 2021 13:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D31740133;
	Tue,  4 May 2021 11:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TqJvP-ggpG9s; Tue,  4 May 2021 11:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BB364010A;
	Tue,  4 May 2021 11:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AAF7A1BF865
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 11:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94AD140ED7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 11:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8pLSwUVb45I for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 May 2021 11:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A24BF40EC3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 11:24:27 +0000 (UTC)
IronPort-SDR: GCfZ4DvGAt40X+zUq+EEDwJnzdzTadUWxyBovDhPw3/fsZMZLSMjtxwDQsleUg9XkqYUdD7idR
 F/ns8HTdUIoA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="185090241"
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="185090241"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 04:24:25 -0700
IronPort-SDR: IwxxHNzEITN0VlXHUzI2VyFn+TiOUCTzbuAmyFmTUWsFnTnisXvGv1p2WsiUfZULBctRJIPQ46
 BwUQMtP/oWtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="406074051"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 04 May 2021 04:24:25 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 4 May 2021 04:24:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 4 May 2021 04:24:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 4 May 2021 04:24:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V3WlyB02WV1tCSAknpw/ojg8+85DXpd+xqECuN+YphsOPN141ETQv+hf/SPrYgYNz8PTfxCW77A5VcjvcPMV8RniMN1Q/skLCtx/Jz4hjSRTMDDoQpvCbExmtnVhCxH0Qjwrk4ZyulGOxG6yWfjabh6LTSG2n3J5ZsSvdeyYxIgXibt21GxYkoslKqeJVbZMOvF1/wpjNvlaOd6YIqHgf1YAQaGygAn1cvDoS4Huome0+JKInawP3R+i/knKO914QZYmfXkJ5QbrPzVAEVW7Zg5jdkHCcnfw4WxtM+4eumOOUnmvPzoinIe7XsHgwJ5kQqwOh7ZpIizjOMX4CsvVgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTC7XwL+4YGtKi5/WWrQHCiC8U0lP8eG1TzxoCWUkZw=;
 b=OqWxrQdlxt21G8aLMcM9b8jfqCkfrOfPNX6dNtQ6Oocmt9mP4wubjqaU6OX617TFiT1mxLs9j0vXCdKrbPY+V3+6B1CfszEzbUrYRW06c9YS8564k7go79U1o0Ssos5aOSR8kcE8+16toGESY83QUeCpes0cXnXOXD0V2ty4PCHVtHqnVfMouL7m9Wsc2zA1vF9HAsvhBowGQt8A5DuEq+EJ0tEE3i0k1cn0uD7t1HqGJkoRA8XC8dGVIo1Yc1vugvzYAc33xk7bm4Ld9yYm0moGfGOczROW58nDieO4V1RhmKg6ERp0z9zD1ZrFalsf4fmReKiyTSJif/tenHv+bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTC7XwL+4YGtKi5/WWrQHCiC8U0lP8eG1TzxoCWUkZw=;
 b=Y/+8k1PmQ53VQe84mMtGSG0Wn/ILeoSL/FvJjg/xpfK6Woi3E4FFFeGTJPbJTyPBjD2rU8zL2lslvKTqsfLI0hhA5sEZZvOKZ2wO3ZTiZWAEiOYSA5K/mkU/U9LyT1L0GFt5MLxTQwaIOUMzY+rqx9CUWxOHxbA3vn+N0JmPhaw=
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM6PR11MB3868.namprd11.prod.outlook.com (2603:10b6:5:19f::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4087.41; Tue, 4 May 2021 11:24:23 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::ac71:f532:33f7:a9d7]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::ac71:f532:33f7:a9d7%3]) with mapi id 15.20.4087.044; Tue, 4 May 2021
 11:24:23 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH S54 08/14] ice: Refactor
 ice_setup_rx_ctx
Thread-Index: AQHWv5/SuUr76tmWwkKk4HdQWNZ0fqrT1WRAgABa9FA=
Date: Tue, 4 May 2021 11:24:23 +0000
Message-ID: <DM6PR11MB3292BE1D88E8FFB63243C1C4F15A9@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
 <20201121003938.48514-8-anthony.l.nguyen@intel.com>
 <SN6PR11MB30081A2B88B7B247BEA481DBE25A9@SN6PR11MB3008.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB30081A2B88B7B247BEA481DBE25A9@SN6PR11MB3008.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.79.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1443090-3bae-4acc-827c-08d90eef2b56
x-ms-traffictypediagnostic: DM6PR11MB3868:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3868667F666F6F6507120384F15A9@DM6PR11MB3868.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:660;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HTB6MhFrnCAVwFPkA5RX8GZf5SZjtYWr7zqzoWzkrouxqrRddk6h2kl8bjwykwOo/W3G+pcuH17DObqFTP+tn1x8DT4OTVfLxhKduUWfLszpEl/z4rj5JHu9zpAS6MHkeeoYHt5qtYAywOoqb4XqJ+BUSSd2U4H8k09qmrRqY3X3V+54NZPP9mQdUfZRNjRqn6IFJdaRybhNbzasAFhfRAuqiJEVdYw0ghCOWiqQ3dell7fa4wcXh50GrVH9MF9yn0XByxS775JHOWZKCVJDPWBkgFk97zRCPuV/U3bvYhIaXHqxoMMjFSG0cd2b3udaoEWvxiBMmkvt9kqmHnZcT6aX3U4wY958A3/fd2Ll0101pgYMM38y/bx2+uQ3NwQU8o0ossVGoiSInBD6Wxa5tsZC7OL1kYkLDgM0TMt4gyE2rrGiKfPgmaGecHJwv289cJuvOeEvxdKngR1hlZLs84OrFPqlaj9Ws8enAhUdANklYRbXUAzoT0Qg2n5LAdNFoqrgSd/Z0+LbZh2j+gx7iHcjJaMAnY5ipVIqzvqsMSl0oXdyehS3Pqvg6zE3ejCpGS91tKxZNwAJ7hCDgQmpdPwn4K3XPOpYg1ERghtVmJM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(39860400002)(346002)(136003)(376002)(2906002)(186003)(52536014)(83380400001)(8676002)(64756008)(71200400001)(66446008)(5660300002)(86362001)(66476007)(110136005)(66556008)(76116006)(316002)(9686003)(7696005)(8936002)(66946007)(55016002)(6636002)(478600001)(4744005)(33656002)(38100700002)(53546011)(6506007)(122000001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?FhWodRt1Sg6QG/+dGVXia4BP7K+Wy7ytB4aVyTWVVAFOJgXWZQGBDr42TKg7?=
 =?us-ascii?Q?aZha0Jjm85gjbidejXOtppHDcEjj2pcjp11Hf7N1WTf+X6uYiZKggC68ev4p?=
 =?us-ascii?Q?ajQiXnU/YpiWoJDdu57fOm1hyKlEsWmAg8tFnLNElsmJB+QSO6dGqzCh+vKJ?=
 =?us-ascii?Q?uNShQ1vozew6Mm0HSeSfTVsrVcLDW0U7FwilQXtxrMEjqmKV28vp8FFQJs2e?=
 =?us-ascii?Q?V4iIOnLv6Me8a7ZtH35TQitfNbrSgY9E0jM7ebq91bv/n0A6ai/3R5RgrxLW?=
 =?us-ascii?Q?bMyfiHsdLjTknJHCcP66qr4+BP5qDgeOAXS/7DIA2ptcKi7E3bQz1Rp6u+60?=
 =?us-ascii?Q?lwUf5H9vyNSWRyUSql3KMorjzn54Ouq623O/CekP2tInR8XVbEsNcKnxYMXc?=
 =?us-ascii?Q?iz2fPwJHcR541k8qdEejmX6E2smipJS3DJQlbFE0ai07J4I0cKBfcvmyYdjo?=
 =?us-ascii?Q?FgYzPS4CRcABoQFZmARHv4Db+fBaR5rUl1BzicQvuWulpOz1lIifwPDjfocf?=
 =?us-ascii?Q?6KCOHqxqPMDm2wxo9rOhdyAUHMjVU8jSiEkLcNN8BhDBU5S13DtKcttxFhUT?=
 =?us-ascii?Q?foo4fbwK24TjqHLFoO2GS3cgAi/L8g5ma45aNewcLcOTR64yuI751Ol+zkHT?=
 =?us-ascii?Q?QUqLoWgnKUQQGyILvgwcMwNw7Jz3gcOJBxRYx+wErT3vLJQ1/9bVn0G7eVqK?=
 =?us-ascii?Q?qdC3RZvdA2BDhuIpVcd3/A2UMwNva/Y13Mv9SkdcYOnxAqJiX70y1/g88Vi0?=
 =?us-ascii?Q?Najlz7G+qZk4ZF56eACNewHT7MIe6Y+i20Em2/en9qwizGouOKc6Z1ZIdDia?=
 =?us-ascii?Q?eVBlvROdRP/j49NGq8HOsVW6Vc2iMqXNd/locdvCengXqcNak7sIbAbzdBgS?=
 =?us-ascii?Q?V7+NeyPLVHHf1UcubKsho5YebOkK3uvXTH4ftKSkDuLLsXHaI7I2GUpjWJTC?=
 =?us-ascii?Q?yqrLRPwfW3JyiG36uX6rcdPIazHjW+UKo3V+Ff+5kldTx2L6gAt3D8Fvh5xV?=
 =?us-ascii?Q?y2iumLs+FDupRlkYoBo60no2YgRBu5HdtZ+kRWFx3mIG2mOANbvdnCwy9mKl?=
 =?us-ascii?Q?9juMSPUF7dtEItxBDNwHKiBlUpk2k8H0YtpQWdfpikJnwUWTjduXPRSjbYk0?=
 =?us-ascii?Q?1UjkVqTkTPxojBkbGFDzxM9Dc/SNBc+727nryv2yIF79hR/cUCh9ufoN4kDr?=
 =?us-ascii?Q?nE2iaa8+W5QBJEXb852MhTnBQKd67VS/pWSVeOxHQodICCt0slSWaaypvBeV?=
 =?us-ascii?Q?uNblyzm3UAY6z4B1PBAG/30aUxlCYeth3z4cCnMVvL514jhbpqIludCKWGJg?=
 =?us-ascii?Q?gcfB37Ue1OU7bLZGBBDtHQlK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1443090-3bae-4acc-827c-08d90eef2b56
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2021 11:24:23.6168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pXw1K+m25AFSKkcP+KTzHKqLNd3TTsOdopoIoVfEHoT46TBOoJbnZF5L8JOKbB9PxPHKKzwtZX72nbB1uzmsk3y6R2TvrLcyCJ+Kef+FjTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S54 08/14] ice: Refactor
 ice_setup_rx_ctx
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
> Sent: Saturday, November 21, 2020 6:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S54 08/14] ice: Refactor ice_setup_rx_ctx
> 
> From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> 
> Move AF_XDP logic and buffer allocation out of ice_setup_rx_ctx() to a new
> function ice_vsi_cfg_rxq(), so the function actually sets up the Rx context.
> 
> Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 120 +++++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_base.h |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  10 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c  |   2 +-
>  4 files changed, 78 insertions(+), 56 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
