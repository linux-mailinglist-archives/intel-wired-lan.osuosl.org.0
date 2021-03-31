Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66983509C3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 824F74048B;
	Wed, 31 Mar 2021 21:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZUXrU4MnpLK; Wed, 31 Mar 2021 21:50:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6ADC240479;
	Wed, 31 Mar 2021 21:50:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BE821BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A51460638
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8eitAi298yG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:50:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEE28605F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:50:14 +0000 (UTC)
IronPort-SDR: J10ObrfOdV2RVjCkI2+fV4B0rLGBdBUrx92SLklwN7RgEkWvUFWXu8vnWZhmiYnJ1XgcmiLZ68
 oIigqR2inkdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="188839320"
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="188839320"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:50:14 -0700
IronPort-SDR: 87i+jXq2zO6mrt2KoLQHHwC3tlzQTblJjCXPmGUS+yKIIT5LCbQSOw3ROhykq9sVlx+xwqRhN1
 6qcy981XjfCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="379058277"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 31 Mar 2021 14:50:14 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:50:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:50:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:50:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E/WeW1YG0bLscufzJVqLLXA+GiwJrJJABtOkn49+5Mf2WfTNQ3sE+eX8gJkRXgJW8DW1ZrEw7gtTPTL8m5x7BWGjuPZKnQk7gvIl50uw34bQazMpUZjjJri47dSdbfA/2oQqr1g4U9Qj+/iC+6z6x34jc/hA3iJGLN75PoGuqqHgta9E12NdfJeaMQs9KF9wydBdfaZBJAECQU+ozepfst/UGCKtrFHHwh2SYFRKtk7B4vD+7+ih0hrYRd9wFT7LWsasmF1yN8aV2SoHXdFvufisRoMtqzbSF+OPsRQYy68uHRKQBBzl1Ek1FdETBMVZ/ft6f5URW6jMdwhn49PprA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60P1XQB1IZ0dJCO43JvOPmRH4qXNwiFM41zVAZJWxts=;
 b=PCfl/NyrXjl+rrBwKALBT3UtRZzNeiUD+Y69wbsNxo7GTVElmY7hxu/hehOk7O7Cu1xBohJtf2wimCk3BFIRH9m1T+2ChTcdthWS6aTH5u1mrnqSJ3XM5pNgdW6V++FihYj8y1DqGiK/KBBZvKesTUquHGozE4oOAjpykqIrW0hsuxPCcMRXciEe0WlggwehfYsWBr3ZY+Om2Lac7Fp+VJM1UXs7lvAiIBnty6/stp/wPBHKs6qCfRfJBrC72Xd/dCb/g/X45vZArg3bxDdnBZCMxCrrMT5aZbbaLPqWXgIYkrPUqiFevmlkJ+mTjYPTeM9rvWw6CUmgWMTX0JjbeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60P1XQB1IZ0dJCO43JvOPmRH4qXNwiFM41zVAZJWxts=;
 b=G7AOfUwXi95Y+0THp/hMlvzNBo2snsNBXBPShe14HkVEgdNCT361TlLV/VWJ+JM/qvwFD7qAGdwBEYZ1BsR2Qi2sIBrsSoMylMV+ivb2wkGYcK8N1GSFNcgmNXHVRii8Ir5whmPcYgrIK/btqH42EIz3Na4yVSXQyY7i1pWpdU0=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4819.namprd11.prod.outlook.com (2603:10b6:303:91::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Wed, 31 Mar
 2021 21:50:11 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 21:50:11 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 12/14] ice: Use local variable
 instead of pointer derefs
Thread-Index: AQHXIcid7VCbjYIohU2xxWBlOxZ/n6qeq/tQ
Date: Wed, 31 Mar 2021 21:50:11 +0000
Message-ID: <CO1PR11MB510562C296CF5ECD61618B7FFA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-12-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 07ec53fb-d0ed-4c93-1860-08d8f48ef556
x-ms-traffictypediagnostic: CO1PR11MB4819:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB4819051073C76A9398F35765FA7C9@CO1PR11MB4819.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:374;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zc4kks4z3Zl65wA3m+FUcLBL1Rui77Xo5k3jQnrGSIXyTlutHR1eKhOObyw/mvnkbi7PbUFKW3nYOJlcc7lfTO4pzytn6p+DPsW299SjWZ/WwWG5TctV9i0AJyvOjqJq+caw1D8hRg9VkOxH2j/Q/bOKSC/2lqFCWqEKySdS9klxw19jGT8IbUGVGrl0h4bKRd7nkzDMXfadxMq7oapy4+6b4m13XZA+s8Sm1UwhsTh2ndPL6ksofhT3SF0tNryGEO+Nfk087XyFz9vZmY/4QB1UUoCnTMKjKU08w2tdha7ZMQpe/WwRje+1QqpQmLqfKAkgpL4S0/5bfnmYOnd/Mw3b5lPkKJ5m5AQTfoN+nDRb7siqkK53/R1SWMQk7+wJFX7m3rQo1UgS+7SdC9T0CLh1VD14iGIzpOXw0TBsPlEOoPLvOT+elEiLGVqmAJ6yJpupLCQ8o2LaQm83gsX1OlbFI5JSSL7B61vNUL/JAZ02YUq1zZ9ExtuLFDZHKIcWfOwhz0Tjx6k9NrRrJWO8joEiKl7/DdBals3Th+A2mXAaZBQSwWAHxpQtkftvpBUmMci75NZVgEqOGpJlXi3U5u4RnLXzYZB9raYL7Ibgr9thXhb2UzorWKOOYCEcHLlhdKRud3K92+fKKnEwyeoT24kYQKCVBtiz82gpTq+tdQc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(396003)(39860400002)(346002)(366004)(66476007)(64756008)(66446008)(66556008)(33656002)(52536014)(186003)(71200400001)(316002)(83380400001)(76116006)(38100700001)(478600001)(110136005)(66946007)(9686003)(55016002)(8676002)(53546011)(6506007)(7696005)(5660300002)(4744005)(2906002)(26005)(86362001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wrW5DyNq1vqsOiMDddUzfAhjG4Q2+0l02DfJSdKYrWoc+4Pa8CMjiqVQKSSc?=
 =?us-ascii?Q?6XwEjFfBEGQjiCAwkBauGahoplq1m4pZcfL59o+aAVBAbwnBMKPoB5fsQJ+C?=
 =?us-ascii?Q?vAAQAq1VhAKdrm1rj1jtd1n2G+uHGfbX5R7gNILgvdZ/LSxSZrSliIcl4Bee?=
 =?us-ascii?Q?Y5bN4eMO0ZkeWNKhxhKh+54HXSHxdJkatp2t4swHni5vARd4tDkOg13uehZo?=
 =?us-ascii?Q?Z2DBuNvwwjxgs8RPY8zhT05FpwOw9i/R6CMtDSQAx7eBnnmr3CgLUf2EHpEE?=
 =?us-ascii?Q?h7xKQMQfUmVo0bAAv68qVTi/AFdjdjFlOELONeBZUiA513x8HcBY7rzBgM9f?=
 =?us-ascii?Q?O2tTsOfMOWdJu2oGRFWZryZ1ogoIwPga8f/8Ip88AY+GG8zkQeiEpu1bZwhg?=
 =?us-ascii?Q?X3pKCiraJmL3EyA6shbxSXc+keW7pj1PQITUAZgWCs6JhexMsJxKjdo1WFMT?=
 =?us-ascii?Q?dGJmOG09LHuRgdJm2YBFWx2FHl1evk4NitaXjZzWQxLrZt5+HT8hOC2+jPPf?=
 =?us-ascii?Q?54y6h/oOc2mMEfq7bjxrdxYfiY/39aXOwBQHfdcZMIkcgEqHPkjplECI8+7B?=
 =?us-ascii?Q?2Emo7GGZfihS+DKJFy4BdM9rIMyFBmeYEgeRoKAQU1Yf05Y2UoInFnZi9mlX?=
 =?us-ascii?Q?s0LgK+3V1DZ+1hh0UnzO7FDZ24RrvYC2O2ebeBuw5Nxz+6IW14YBGIJ63TPB?=
 =?us-ascii?Q?U/qboOUOoBJridmSWEociCcjmZeoXlPhOa/al3GxMhsHTbN4iWmxf7TegM/t?=
 =?us-ascii?Q?Jk5SbersoF5r5uSdhBclqLaGByv8zidEvF4IqJhP8Uph2omfVZBK8XKKbnP+?=
 =?us-ascii?Q?GBq4cWVFor0V8bandEf3rGxjyEbaQYkgeMpofKPVNsMtpTOnwjcKo0R/5vrL?=
 =?us-ascii?Q?NqO+ZCzK6R/tuEgESi8FSEvta2DYLNk3XGy4O4XOSQ4khF8cGV2dGatuPvRT?=
 =?us-ascii?Q?ZKbh/MFfyOpIHK9pHzO6kMuZ9KMYmciQ+A4cnQPo0SUYEIn4ZN+bT5Le8rDN?=
 =?us-ascii?Q?GftTQVpJ4zJyz1JfcZmieN4cQ+WEvYW+K7mP8O9wKmxR/opULU1cnCzS30Ca?=
 =?us-ascii?Q?Wh0YxQHnjpQTpC7KCSNJZKowil415TTMh8ISuX92INR31yoM7mSIrahLuODE?=
 =?us-ascii?Q?mfI4zfNOrXdfqCZV4HdU0o45vDwwVRGTdffl97x7DyC3MK2TWesbnzvmX8Qb?=
 =?us-ascii?Q?1VYNDuA4+6mli4PpIi0TUyYVEfeZ8nOHS7+eqBI+dCkUvGSJI7+vniC+u1Z4?=
 =?us-ascii?Q?8iou9YMr+nIwJqS1qGdlIQRKc7yD75RBrMduJJxeinJHPpZezqFGX32RoR7s?=
 =?us-ascii?Q?8yfdD1Cg3Lc8D8/N/oOOSr9y?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07ec53fb-d0ed-4c93-1860-08d8f48ef556
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 21:50:11.0821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UgoAFwH6XFyIM7Rw5c1WAa4w+56C/J8HXFj2wuYMytjdDhWBu/lGXB+D4Wd10SbUGg9NNBKLBLFyiEdnmuVlcfuB4zNFHsIXsxTGxKxsbmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4819
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 12/14] ice: Use local variable
 instead of pointer derefs
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
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 12/14] ice: Use local variable instead of
> pointer derefs
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Replace multiple instances of vsi->back and pi->phy with equivalent local
> variables
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 32 ++++++++++-------------
>  1 file changed, 14 insertions(+), 18 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
