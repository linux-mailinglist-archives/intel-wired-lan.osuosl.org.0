Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B56339A43
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:05:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F2854ED54;
	Sat, 13 Mar 2021 00:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0NZVnyLqYgtc; Sat, 13 Mar 2021 00:05:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 327384ED29;
	Sat, 13 Mar 2021 00:05:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF69C1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC74F41566
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Gq7f1D2pV9R for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:05:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF55F43083
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:05:28 +0000 (UTC)
IronPort-SDR: ZnwD/Q1jl0hnub+MlKxB1+Lq6JaxRJ7aOa3oC7XM+uBemoj9M6RjxHYVXYADupR1uuEJzQa4NZ
 jXSGMYoXY8BQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="250273404"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="250273404"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:05:26 -0800
IronPort-SDR: Ul2kVncStawYY4EHkt6rijOtiY2I/zr4du8rEITFkrsWzeYdEUKo0Z6tFDnc9uvOc+j7QR7g+o
 HsirmlckKXRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="411181484"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2021 16:05:26 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:05:25 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:05:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:05:25 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:05:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+aqeNjhGc2BKhfghqvhIn0FGCdivRZU8AzX6bRIKGDgyvYHUy9IOAdnfoYGo41XOHg/v5bjklC02ed3JJmB3OWAmGdCAr/n/1yt/nmxWNS207UZFG87jPOpXHKTXGOZSAsvAohHgkpj+UDy5whKh2wxsoEjBfdyknKKXsXBkpNUUvoYOawackFKfGZRhDePCB6ggSnXvIYcoNQrlkqINPDWlGClc2AnKmcgTnLqvtI/aYDxDjc4ffSUXVYIxhzDwm51erjxDiPZSV12zoFLeCealkmfv5mdBZE6oBW9Ed4nrPplB3J4GctCnGkU9EygLrAbqDowEXHRMhD9VqNTHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L8Pqs1FR94NkKeoxgfkd6Gb6mo0YUICJPkt5WDiReLQ=;
 b=MMj5JZ0wIOaxaubYWfZMkU7+iJTRHJ4C3HaW4HJkIPqz1X8DV9eeEG1njJHsAXNMrE9jGHpZhtkD8rGpJKsTIP/JhxmgBwpQfoxhYhdaMX9TOgYlT5cAqSvKrcpd4clYBnf29Qnfjnix4hdUjoJbHc1hYhPYMB8ZRLas6OXU6vtZwec3KNZW/ovRLS3VvwApH9glc7BstaRdNS9xS5rKgjEXK/eewu4cXW0PP2RjrtmXrvZob2blJe+W+9MFw6fNHPGMlXWINjbU0ktfLKo9hONl6T4nrv4Dw05EQmNGezIhgRWZhhtgNDXoAKucFfNg760guAotV4urGsXK3g8ycg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L8Pqs1FR94NkKeoxgfkd6Gb6mo0YUICJPkt5WDiReLQ=;
 b=ntHf4ikc8LcrJO/iJooTGgTY6cjY3hQfg5cyMulqR+CP2RWXvzw4E+D2QTZkmISF3GPINxYOcMWuDFl8bClc38HTFQ30ZOrPOpndwxji4B2k111fw9krqMGcfvxbf6yUh9SMl72ddIPBTe0niCy6O5TsLHezpYJANWVsrCFoIto=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1568.namprd11.prod.outlook.com (2603:10b6:301:f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Sat, 13 Mar
 2021 00:05:23 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Sat, 13 Mar 2021
 00:05:23 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 03/13] ice: Refactor get/set RSS
 LUT to use struct parameter
Thread-Index: AQHXD5GVPoGSd1KhzESfR2l/2CmyKqqBGd7A
Date: Sat, 13 Mar 2021 00:05:23 +0000
Message-ID: <CO1PR11MB5105348E76BA589247FCA29BFA6E9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 561727e9-01d7-4be5-15f6-08d8e5b3b30e
x-ms-traffictypediagnostic: MWHPR11MB1568:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB156896E00FA659F34F9D5B8DFA6E9@MWHPR11MB1568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G8tW0UOYc08KnXNUrXRE8LJR7aRbBlXFODAIoLt35X4/IEsY0FyySC8mEIkcGivgJwD4iRlfbhLN93sug7c4r8aW3vuEHqb6n+w6yay3V1qdzqtTZkUK1/RxriKefdW1OyLCvhUnqFDaFg+ltW1tnquUPbaWG49iPkyx9/2nbHYPb4+VEUOU05Ga4325bhkHOBR2oNNEJBqhgZByEpIIxwukKyUQ+28WENVLM5EclhYvrveEVKGj5BY2z8eayUM3g+NOTPjoGgoMlHVSlJalmgBkaMPWNntQ5In6R/BYnHsdy3Q4xpJzZNb8FTS27bnzpK7hoPLwmc8OOCe4/MrkjalqqRvdZaU6CqXvM+OdIZf4KMmfH0d46e/OoUSmWGrKKLt6NjunPEdQ1+/7qZIZ25UGyaC6Zr6qOLLbc8zOOvkFDCDq+onOE0ZbYmQDhlEFvkd3R2oLCoO25vArzEuAkCG05iIsaSOYuZJR3eBBuAOONbahfsEjX0EzngUVSx+rF0jvcj9AvC4L5QoYCGyn6u8Gp1eAa5gaA1U6eOvrstI7A2SOX9igshaTQ8RksLEA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(346002)(396003)(136003)(366004)(53546011)(186003)(71200400001)(86362001)(83380400001)(2906002)(6506007)(478600001)(316002)(33656002)(9686003)(110136005)(5660300002)(7696005)(66446008)(8676002)(66556008)(66476007)(64756008)(8936002)(66946007)(26005)(52536014)(76116006)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?2aw6j1aa9DZa8Xm34gYLmpGpl4278rPkIAfuB8uJFydEi/bS2DkxpaFfwa15?=
 =?us-ascii?Q?TimSWcUiEOVNXXyryqgv5M8ETIjf4yMF/RIKkrt/alqCVn/l7WhVjsyKfqBu?=
 =?us-ascii?Q?pEhCR/tZBpBF0+AhKwCmpqQ6Pp00w+LXxFojc5tGmZmu59uK4/RozBYcybkw?=
 =?us-ascii?Q?1pk3s0Co++FblXF3jp0rWdl95WdtrMJ4/85lwHjefbpWrq2qbMaL2pQLo2+B?=
 =?us-ascii?Q?iEXXAKD3EddS6rkrX0YEiiPHAo+5AzNgZunPT+bAymt6m85uRsUYdCslP0dY?=
 =?us-ascii?Q?eP/IvHw3SXdy9qbdGdjgh7CMzQO2LTNbVmliLJ5Xfgbite09dC6sCTpUFYUY?=
 =?us-ascii?Q?ybeWaZIySRswrQa8dPAB8ZLdD64x6+YjCNuh+NpCG1BzRg+1Xc0qeQdRF4D2?=
 =?us-ascii?Q?aummzZAt+ds5oOzxxlv1X/NfxDAJ3OLSQ+7lsJENlmbjmsDdNfy0VD+fQNLJ?=
 =?us-ascii?Q?Xl4LI3M6O9exaPAzWd9X9BPKmeHTJ2bAeJR82rTkchclyoOWYaDxzxqc49J3?=
 =?us-ascii?Q?SyeULF0JaQSNLQ8/peqQBn92XBxNPpyEYYk6wU0NbeDU7uO6SAeOVc6gbyb2?=
 =?us-ascii?Q?HudmM0gdXaZ6l2K4L0ruKX61MO0pwEXV+5UDp5BaEchZxIozziSfwKjPkAjK?=
 =?us-ascii?Q?OhiFeU/tBM+lEwhNnnRqhbABBv0EU85L8NsS3ZUjGBUSG8E7XWTZY8+48KDO?=
 =?us-ascii?Q?qgg3A9LtD4HtVXaeKVI+qBgKE4ii17mY8Zqf5tz7bLUUaQay5sk20bAQgQXZ?=
 =?us-ascii?Q?I1GM2uspxFirgGBKkbKPtSVMNMOACxXismzicWT9etRtFDaEgcU2FWo49Ho0?=
 =?us-ascii?Q?Kxlt5PN7fUUxsIE/gs2xtad/b0sdEKNzVJcudPKgIZ/ruoMsssbNDLdgm8hi?=
 =?us-ascii?Q?IzdcxNpU4H7zwqDY6+HYRhOc50t1xjPFcYIZix/dVKBmX8v8ktche2xurb0D?=
 =?us-ascii?Q?vMlIfnsO1R+rFZ+68nIYQAi6Fxt+T7QcGl7/ngUxEBbgpufbpfb2iyXQ9B05?=
 =?us-ascii?Q?8tGBXrwcskYxL0ttHeUE0lpnh7X+1VFOSpS19Dp9SCwKizIN/avZHUuepBuR?=
 =?us-ascii?Q?LX6f3ZrFP+td16bGM2XBfW7opKwCZgQ/szxoo396bwdWWwkc6jG54IEHbTL9?=
 =?us-ascii?Q?EBjTuERx54pKDG8LcbznLazSfXzLI44t+n0GVzfSupCaH6hocaM5VYpaFOlp?=
 =?us-ascii?Q?GhOiWrzYcbpzaqW9RnfQbjIMdBhTyOf+calp0+bIlMHl2TnJcnSa61PEoxL4?=
 =?us-ascii?Q?STXrYJocBIE/V1xhAa0A1ZmF0GtMTWToICnMca4VOPuEkE335yqvDuUE2lxJ?=
 =?us-ascii?Q?8+sMBQ75PEdQufnwI1iINUPK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 561727e9-01d7-4be5-15f6-08d8e5b3b30e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:05:23.8070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T8AJjFx7Xsj6nW9hI//Gc98KTwVdzI/clXeERIAL2VVvwP7cWdX7DvJwgEQ7XntByIwkTaCwdglrdGu21NLxG5GAfTdhAFH1Tp/hUvFsbK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 03/13] ice: Refactor get/set RSS
 LUT to use struct parameter
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
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 03/13] ice: Refactor get/set RSS LUT to
> use struct parameter
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Update ice_aq_get_rss_lut() and ice_aq_set_rss_lut() to take a new
> structure ice_aq_get_set_rss_params instead of passing individual
> parameters. This is done for 2 reasons:
> 
> 1. Reduce the number of parameters passed to the functions.
> 2. Reduce the amount of change required if the arguments ever need to be
>    updated in the future.
> 
> Also, reduce duplicate code that was checking for an invalid vsi_handle and
> lut parameter by moving the checks to the lower level
> __ice_aq_get_set_rss_lut().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c  | 54 +++++++++-----------
> drivers/net/ethernet/intel/ice/ice_common.h  |  6 +--
> drivers/net/ethernet/intel/ice/ice_ethtool.c |  9 +++-
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  9 +++-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++--
>  drivers/net/ethernet/intel/ice/ice_type.h    |  8 +++
>  6 files changed, 62 insertions(+), 42 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
