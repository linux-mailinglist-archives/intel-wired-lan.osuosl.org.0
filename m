Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A27339A61
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:17:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87EB04ED2E;
	Sat, 13 Mar 2021 00:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fj7wONWloKs; Sat, 13 Mar 2021 00:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37F954ED1D;
	Sat, 13 Mar 2021 00:17:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B35941BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:17:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C88941566
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqukw0xM5sfy for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:17:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 132AA43093
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:17:06 +0000 (UTC)
IronPort-SDR: 0bWFB1SR9efE6wJbdXGiCkuF7minbPoBp52sIkHAOHm9lKolkXoAGDGkb4W77nZZMtG8tP2Prd
 ieNxNk8/FEKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="188950041"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="188950041"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:17:06 -0800
IronPort-SDR: Tj+tSo4LQ6bDOA6FqSPp6YaD+zlpiRhB6IaRnIgT+GDLxpmGVQfdb8N0UKrxQtcsUOJB5TjEFu
 6ivXtcezhsSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="371046631"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 12 Mar 2021 16:17:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:17:06 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:17:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:17:05 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:17:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UeGTK/dw1LsewzeD8HKlGXR+sBiQQu17/iELxIDKONx6g3oUB5EYs/XHY++geZIh2KGgCEFGAcjwtI2H3Ik1CU0OfwU5maq00HaGJ9biBZQmvT2Wk+V7v7XMsWeokAbbwin91p2Nladr3ozVw4lug8hxGLIriR3waBYTZkzaRjnP2rhx3HhajnYyQZKQPb5NAy/MKdLVgQoxe0gnKYuTXSTjM1/yrTkDhehhw5TUXx8wGNaR/vUbfAYDITXWnrh9aSaUwUYiwoolk648SDIGFwyaePJfhk+2uweJtUMoAKvC71Om10UVcvwyo4KRZOBJZuomdYwRfeuivY+x+UxWOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yYdHwSOFIwsXw0petAegv6W/xn742NErt0Qw+yb9tTc=;
 b=TFMbj5sJqWwdwVRMhW7+dii8gHrXkPKKcERgZt+U9oTCB9qV70RYmqKpj903HCevbUlqkjrlKr5qWWObpgmm+a65lG6o+HNQRSwt0xTjILK9YbYJAIz8YIIFrTjQUM3AWvLujFCJUtQzG4VLcxj3/gsQ7HZxye922+x0jcn01pg/Rs6DsOq8s7eHhKq46eQa8V2oCP8H1dSHIapBbrVE3FHIiwmWpKyr4MBKDD/139w1DpEkT2Y+ZSQB0jF+ApSZXunMhZpeZRL3YxmjppXtgHo1NV/LiQAIIMvxQUmzo1C5Egst5YXPLSrdkxqa7Ev77qwvQkjohfM1uXH8+UWGUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yYdHwSOFIwsXw0petAegv6W/xn742NErt0Qw+yb9tTc=;
 b=TLSpKEeoS6npHfq2OUX6nxJuTBNks3Dnn6xhdPwg1gmby1kIdzj4JIFfpwT5MRut2wLrVHITWignA5nhK+cD9oVvvR9SOTigxqu+sTKNeQqFWkMz4DjyxY0W8zv6UPyT0bCtXvyT1fq3fK6jyeF7hBuRfJmcLPp6KrHxv89bOwo=
Received: from SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Sat, 13 Mar
 2021 00:17:04 +0000
Received: from SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e]) by SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e%5]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 00:17:04 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 12/13] ice: Remove unnecessary
 blank line
Thread-Index: AQHXD5F7nOVFaHikFUak4I9y/wkaMKqBHSeA
Date: Sat, 13 Mar 2021 00:17:04 +0000
Message-ID: <SA2PR11MB51149A136A47E7D275964E13FA6E9@SA2PR11MB5114.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-12-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: fafba023-f739-407d-d531-08d8e5b554b4
x-ms-traffictypediagnostic: SA0PR11MB4733:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB47334C3A9B0751DA00625176FA6E9@SA0PR11MB4733.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:393;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7+OkkkzenxVEW71b9MuAxMgbxrrAppQ8HHXl5pDZ2iuDVZWeKfsUZ9+PcCzxw8UaJC4dg5xHrAUBDcOIyrjI3zBC9yIU2WOeoTYzaMpo8eD+KtzNxauuRBVw37etm6+g5T7UA3IaEIVwR2IXpBGeN7Olk9FramRh3nX824tWb9JwazvzTqOSZDGL/qk1njmE45KpBX5TxmUg5anr/WRoHipDS65J3ovKimPOOB15Q386CuXxi3h49u2o0cB05VOR4Wucq2jbbBaMvDCJGxhCGVyXXbvYlZzrcWOB9zdoC1ZMD1Wtrg+vf2tAgiiWqx7dsvQMv22TbTcmcgFBWOE7eOMXene19meSu4KN+r19Z2QZobJIxKVlhI/fJcInfe/5ymbnSS+aGhnBhEJe/rR48B61aY0hZ1nkq4DLSsexFO1MxCL4mPVqnZ4yEvU5bu2rTEq/XbY+XJ6PXb5ka0ZQnVnlb3FYs3EFp+YWyy9FBGrI4p7G3bK8AN+979pXoUbwlJj0CSzYUjQlBQTT9jrW6v0X7XgIFKzrifBxmRDXACRhsQv+l7Ebbbf7T67oqh8/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(396003)(39860400002)(136003)(346002)(66556008)(66446008)(316002)(26005)(186003)(8936002)(6506007)(76116006)(478600001)(5660300002)(110136005)(8676002)(64756008)(4744005)(66946007)(53546011)(55016002)(9686003)(71200400001)(66476007)(2906002)(52536014)(7696005)(33656002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?PBUQJ0jYBiuQo4y6l+jtXWvuZKFteoRfKUpjYTYhyCPzOS3aep+jOUx53aHX?=
 =?us-ascii?Q?a2lsyM7u29WW/sRpH9rORC+rD/TgCfGUkhhElEcRFxOFpKq4lhcnXqkyT0PL?=
 =?us-ascii?Q?x4zlTGUozFUxy/dyN8FnOJ1wgyVgxtG2TMlmtCfgDXHKBFj69+0doQYvQi0k?=
 =?us-ascii?Q?1BZLgkBLAZOFisJcKEZFE/FFfsupET5qAPBHqNk58PvXO77OESyueIoSGMFh?=
 =?us-ascii?Q?5yNWVvWU+MD2XY9OzCZ1C79YBDxIz+NxiPxk2kC2Um5K6VrNcMd1sAMnT5Se?=
 =?us-ascii?Q?SskSq4pioV/HBZhog3kSXstcc5KIm3xlx2U3xBpSTzRD78o51K47tlII2vZ5?=
 =?us-ascii?Q?6z4uV/AZ54A2ErijY/7Qth7VkxPEieVO+VTqibCtIquolxiZ+IFw/srPvgJi?=
 =?us-ascii?Q?x0SLCY71KXcADG4TQwI5f/thaO8mAK3uIIcet2eYAF/T6l6xfHmRIRGfyyKS?=
 =?us-ascii?Q?CzetVqMqXeHw0S3aPTw8ol8EzB9wWJ4OhYNPMX+R7MwyukbfZ+DIu1SGDSJg?=
 =?us-ascii?Q?aivWn0ODNGRWyjkbYjkwW3HEKr7BAcfIJe9QzlZ/a06sTqFQnKzIKnn/t4HD?=
 =?us-ascii?Q?Q3KCy6zy1b2pHGNxYdhfXKpkcq1af4/0qS/ZFOtPsioywtCOZZBIGseXd7XN?=
 =?us-ascii?Q?eizIcXz9ubXkeS2bOT2AocGyC4Smu6uBBixEFo2dLNPh+BWOzyZ4/2n7Sq2r?=
 =?us-ascii?Q?sZ7X6YvVQeDWnqmMgzBRMIpszOgixZ/LJZed07jLohhjui2fVAhvZHOPzvsO?=
 =?us-ascii?Q?OOWwI+wp7nmW3IP58oI86mCA1A9sfRheMrVgABxlpn5RxmSuYUw74/OSug63?=
 =?us-ascii?Q?P03d/FjwMZYruubyiDty/KT0nR7opwf0VjMWPbnbIjY7IVrw6dSmsuKoXytS?=
 =?us-ascii?Q?WxpWdZ6XIw034PT8vwebNuCYBHAup4deTmKPUa1Cr+0fOC80Ebq+Hvu46vtu?=
 =?us-ascii?Q?SfOvvZJVpfsuzJShTutDC1SpT8CGFR+67ICJJT8Mxb/zMUZa4z9JB8tLKjyk?=
 =?us-ascii?Q?GqRQVN3wsmupiZ9GwkuK9CL1Qt4DQfu8j66udY/bjPgeLOi17zTbNMaPsvcb?=
 =?us-ascii?Q?4z8CrTJzQRc2vb40RpVKF3KMGxxSEsUsX4kXcLSNAy3AXF/UJwfd/0s/G1MK?=
 =?us-ascii?Q?FEJOcZFvEncE0kMJiufitI5BvaMGuH5dgkaolPkTtUhEM3zmVmeKByIOpTaU?=
 =?us-ascii?Q?bivfnhVUNxhLWxiBltO8E9Adi0agUNZghT+DISgeUzRQgnHYU7QoiUlR2pCo?=
 =?us-ascii?Q?jldWaV2x5XKygmoPI410f/+ROLlzwevxZf9QmxGAKZgl3/Rj05wzosJWUGv1?=
 =?us-ascii?Q?NrBSglDCQnZb/moCsz2qog61?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fafba023-f739-407d-d531-08d8e5b554b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:17:04.5216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L8ruJdPMDrZBrcOWyffjhYAksCgHl9QvgiAgaMh/l1Vb6H9P6XRvTubz3CMaui21HauOavh8egxmCVIjgqauGP1HM46OHdmcegRGv3LIrbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 12/13] ice: Remove unnecessary
 blank line
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
> Subject: [Intel-wired-lan] [PATCH S56 12/13] ice: Remove unnecessary blank
> line
> 
> Checkpatch reports the following, fix it.
> 
> -----------------------------------------
> drivers/net/ethernet/intel/ice/ice_main.c
> -----------------------------------------
> CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
> FILE: drivers/net/ethernet/intel/ice/ice_main.c:455:
> +
> +}
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 1 -
>  1 file changed, 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
