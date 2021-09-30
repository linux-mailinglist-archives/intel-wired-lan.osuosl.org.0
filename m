Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB25041D5F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 11:05:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6945684067;
	Thu, 30 Sep 2021 09:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqWWes_PqNCH; Thu, 30 Sep 2021 09:05:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 604A283F26;
	Thu, 30 Sep 2021 09:05:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F9FC1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 09:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 543CB613C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 09:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YWV6GUX6rY8P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 09:05:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93A2260778
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 09:05:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="205291322"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="205291322"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="437968320"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 30 Sep 2021 02:04:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 02:04:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 02:04:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 02:04:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 02:04:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QFumoqV1u8NhIMgfTLZqBQzl2ADk6r9QeDx6hGV7veBEaJU87Kq30rKVCtqVaVNva8lWHrosU+kB28xtqED4FFaGAnPzcMp3W7YWv1YNpQnsJ4XUNfy4tPFJmsyuWC18B7DX6Zav9tYLSkItt7KxM33KecViSaHZvUibCfPri3isRQkCvp/fpxv5QE56j9WjRe+Wd7aazhqsks6wgdPovt7IW7Ll0o5NLXUybkiwqgdiSeg2cyW/cezIRYYJ8J9HcAEsSS2sQwWcXY6rmkKPlNe9lIP8yAolVjszYnj8cjgFi8KtezO+Ge9Y1T/BwyzlY8owN2E6IScFOua2/M4iGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=tIm4JfiFP6l//Zk9yXycS4xjNopN39Cx1xb6QtaykLo=;
 b=jJL/Hlu2CI2W4/IL/GGeGtHq2kgAaJEthdSTXkubTBDmuBowGexv1ynpAw0ppgLBMZ5a2+sjLtm7F/8fRuov6eeaXFRzusOprRd0KIRC9qtuEMib2cuCMBM8kD4dl/Lvxx9HD2GzZCxpEdRza+vXR7c7OxtJxdyRDSsKoSlJO7Uo0/YB0PYkHguQaOxyyLk1aj/xFPoAWBTUaHRi5y1L/lPT1Agw/I4669wrYFmEfeDXRB1wFfnrSZE/kReHOlm140kfUH513tOQvki+ELWq1Sv0mckxhfFICkm3wiziGLTEwBH5aASRpgeU9Km52XdXoHBUvVZ9pvbkgh6sJ8UtKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tIm4JfiFP6l//Zk9yXycS4xjNopN39Cx1xb6QtaykLo=;
 b=YMtrfYKQUmAzmWPEaHf7X0htNfNd9IFUZYbo5zMpTBqsYZYHqEk3KhPZelXQlO1MyGGJ01JFI9NjvCqJr9H8UjpG77sMoGqXCjsSfsrhqoPPfhGtVfxJ6JzcatgznJEvEbpZHhoBK3/ByHNRJt+aKk/TZNgPN14LF64bmbH2bvo=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1581.namprd11.prod.outlook.com (2603:10b6:301:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.16; Thu, 30 Sep
 2021 09:04:27 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 09:04:27 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 2/9] ice: manage profiles
 and field vectors
Thread-Index: AQHXip/8uJiob7lUNUa7Eb5kfVRCi6u8nvWg
Date: Thu, 30 Sep 2021 09:04:27 +0000
Message-ID: <MW3PR11MB4554D15C5FE3BF668C826DFE9CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-3-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-3-git-send-email-wojciech.drewek@intel.com>
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
x-ms-office365-filtering-correlation-id: fcb9d46d-52d8-4f8a-fc29-08d983f14e6b
x-ms-traffictypediagnostic: MWHPR11MB1581:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB15818550A6AA566C6CC7E4479CAA9@MWHPR11MB1581.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hw3myilpmwbQO0Fs/+NuSJxcLcoqqEuKj6XLowt6siHIyxoc2N1Sd71yE+wb7Qg+qM77qZPb9BbnYFp3uR7pxnwReav0U4J6dE6VgaFC105VxjxdtOr08iIvVlcdweNkC+oX2TBRX+SIG0v7swMkchudT+3mf2ecjZnWJAL7wFFy/04fU/g4NSrJf8sg+LQYAYXXypafUupZw+KEnZHwlLrTQRmisaVmrYHGj6+BrRU0qPpV9aqcaDGakOJYSV30wwxJJnDC7SbDeP4QS35iz4WYsOdS/6VLpoziWly7QMAMwR8vT93s/22t7whEuj7H8/Gheqi+Y+G+aJN8PvFzEsjaBNyerlWy8EhhInTA3woDA1PWXRb3O+8eZSbBt6g56wtJi+8eVgQ2NaadVvkZngYYNDZ+irt2HVRrGjmSSAD4MKcOGmv8JJBswq78gkUqk+Q+uL/cpNb9k5nRpviGX9xlKtKZReloT5OPSiAIMdEeBZ8H/ijcd+xAny0ANowhuh+Jo0NXfsssyf7BsD6eqATqEruQhf2s3kh3fO3GG0gKfnhKcNW/4us9FKOLiskpYV1VjGqAYvsXfLRq9T6A5OSWvB4D0mCnocNaEUdvuNuL+fMdz4GTJdh5B1W+4OkTv4u9UDcvvyED952Q4s+bPINZdF8Ui6lGk8rTQb4aMzNBrnWJP9ObP4SCZE9mdQrs+cxaW52ugXQImDskrkCK9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(122000001)(7696005)(110136005)(6506007)(66446008)(76116006)(66946007)(38070700005)(66556008)(66476007)(316002)(64756008)(38100700002)(186003)(26005)(55016002)(9686003)(8936002)(33656002)(86362001)(71200400001)(5660300002)(2906002)(83380400001)(508600001)(8676002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iCayrqTd0KxjnDRAc3xBRczv9hzz3aIQ7jARJEbKFECZmnUX9J1xs1frPfnQ?=
 =?us-ascii?Q?scGEbw4+hR5bRQ0oKt5ThyL53AGdLmPPvWWfsoaJ223ug+S3HJk8/dDTPTxR?=
 =?us-ascii?Q?QEzgCrkEz+QwgMDEd0n4sGF1b0GJGtmdujqLm4YPy0H965LGYDmwfNyywuev?=
 =?us-ascii?Q?b3LuWXcXo6KUglSF9igpFcFVWGjm9wSy3d2etB66a13yrty/SBSIKL03OuXA?=
 =?us-ascii?Q?om99oquDTf9cFAO+dVvGHd3TLlieeWMJIM9WKVG9rg0HXDxUpwOhPI1uDPf9?=
 =?us-ascii?Q?xTRJ+nqrLyvibNTkg0uTSNEKExw44mj3dx3KmMwwg3g3j/p8erE82YDn//z7?=
 =?us-ascii?Q?544nZVfFdmXM0ZcCzk1/fAuzKATSsS8cJpZNgL17Uub6RZe6PGIt736BJKq5?=
 =?us-ascii?Q?ob04pBfYqFRGGvKQupoGWbx0bO1N1yxyKsOrqzplxXE08i4NoDr3atDd+Cdf?=
 =?us-ascii?Q?4CPMgKCZzFk7P394bIaMSGzMxg9ncqdzD5B0d9LGt+HfZkrn8lpnjg2qtqdz?=
 =?us-ascii?Q?GKcOSSP37U4iO+cb8mojYNPbjsSjKUN9s2l7jyoxMBNB8TCXbayDFNA9EkjH?=
 =?us-ascii?Q?oa9utstmJBnfAnzIDofWg416otUiftqeHu4yqUBgbnB6vnwyZlntiSzI+zTY?=
 =?us-ascii?Q?5jshnWrmEpOK/Yau6XNDTwvJ92xJE2E+uj5E7lP5WWfat+JEYLzL6EoafB7n?=
 =?us-ascii?Q?3wV/aDhd310HQ1f9obKyRH7Qq3OUnDf41g/CGsMXGibXYI9thoytkOvT+/nZ?=
 =?us-ascii?Q?OwnMuk/uiPsBRFKEIpanwQoehoWbPM4zHMK/aQ8ZlEXx+jQ6RbuToRdkv5Zq?=
 =?us-ascii?Q?646XMQN7AU4gsFazn01NH3qa8hiY+cm5hudnm6RZStIDvdafrC/30yuiRe2z?=
 =?us-ascii?Q?Uuvpuw5mkZZmHH9UFgN+Vs1UUrJHc435WflI368nA2fA4EbIUSXba/cRvM1c?=
 =?us-ascii?Q?gmwDZ7WDhz92+jvgFYFEk9FooU1K1lYU+ayu7cxGF2eoMz9LB8MzbxydYQzU?=
 =?us-ascii?Q?+C9U0Mu8olZ9EC1dTkOuwEz0ObGd3gI/d3aSfxj+5lZa94IY0eb6x6uZ3XPw?=
 =?us-ascii?Q?V0ET3wsWVFXBv04qJgMnsGn3VNfpFOA7iYXJRBTUbNyHeHMFoEMBTl3H4JRZ?=
 =?us-ascii?Q?V9shDPK5YTfeJo5XXwDEgdoUhYfEV2/T26rhuxwBCItkpmF2cikBbi5Rw++G?=
 =?us-ascii?Q?Swn+XM8vXABKncCI2fpZ5sKT4+Up0T4wWXDPuUJkpL2UVc80j9LoWUCRd2/W?=
 =?us-ascii?Q?GaReL22QPkb8lb+6F3sYUXIRNgiQtvfzBLYS4RBWIdv1LBWw+NyAr75gIwkl?=
 =?us-ascii?Q?mLisk1sYXvaIqaCT7u5HKsDY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb9d46d-52d8-4f8a-fc29-08d983f14e6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 09:04:27.4955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oe+nyA4O+mF1g2bV/SdDWggv3CcM3ViKRTXa2x0wHgkIlZGQoz3EKtnRbaJD7bKhYBdoK3SuIJ59bAnHdYLaYOJELEWSTSvN4CwjznRWynE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1581
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/9] ice: manage profiles
 and field vectors
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
>Subject: [Intel-wired-lan] [PATCH net-next v6 2/9] ice: manage profiles and
>field vectors
>
>From: Dan Nowlin <dan.nowlin@intel.com>
>
>Implement functions to manage profiles and field vectors in hardware.
>
>In hardware, there are up to 256 profiles and each of these profiles can have
>48 field vector words. Each field vector word is described by protocol id and
>offset in the packet. To add a new recipe all used profiles need to be
>searched. If the profile contains all required protocol ids and offsets from the
>recipe it can be used. The driver has to add this profile to recipe association to
>tell hardware that newly added recipe is going to be associated with this
>profile.
>
>The amount of used profiles depend on the package. To avoid searching
>across not used profile, max profile id value is calculated at init flow.
>The profile is considered as unused when all field vector words in the profile
>are invalid (protocol id 0xff and offset 0x1ff).
>
>Profiles are read from the package section ICE_SID_FLD_VEC_SW. Empty field
>vector words can be used for recipe results. Store all unused field vector
>words in prof_res_bm. It is a 256 elements array (max number of
>profiles) each element is a 48 bit bitmap (max number of field vector words).
>
>For now, support only non-tunnel profiles type.
>
>Co-developed-by: Grishma Kotecha <grishma.kotecha@intel.com>
>Signed-off-by: Grishma Kotecha <grishma.kotecha@intel.com>
>Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 245
>+++++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_flex_pipe.h |   8 +
> drivers/net/ethernet/intel/ice/ice_flex_type.h |  13 ++
> drivers/net/ethernet/intel/ice/ice_switch.c    |   3 +-
> drivers/net/ethernet/intel/ice/ice_type.h      |   3 +
> 5 files changed, 271 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
