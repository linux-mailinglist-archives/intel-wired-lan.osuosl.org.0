Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E27DE45B85B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 11:27:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 603F54040D;
	Wed, 24 Nov 2021 10:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7KVFo-TZHbvP; Wed, 24 Nov 2021 10:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F243403EB;
	Wed, 24 Nov 2021 10:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5B281BF344
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 10:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE9C4403D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 10:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8lKJVmqP7uSs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 10:27:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A254403DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 10:27:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235198731"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235198731"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:26:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="456993830"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 24 Nov 2021 02:26:54 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 02:26:54 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 02:26:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 02:26:53 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 02:26:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ja3SNM53ZbQzysi9XZi9tpdaerfrPoR8D7dQKcLyza5jwFwR0y9IbveOlRAKV3tOw4Minnevjb1Zo/P3etzfDEIor7kTERMNBk7EhOClshxy8webbcsLCaI+DKMYzQ8lPzJ7ilDPFOWkKEH6W6CuUgbt0T/U4P27Ap1/2QOCIPT+vE7xOO2EVLNyHlilEzm/3X0u8bCzBdZFhokVVvpeEfPfUcJE+R9DczgicCFoAYDRcfdVQwT5jktrgAxsWHF8/RRejlasrYJ2VU47k4InBnEuJ0zfK8pIL8I1ujpESKJWHIYdy4Kd58HIC5SI6pkJksgMvMlfJlGbMxOc1h8Ulg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T8nDbtMQ7WIaRf0p03azWtqH7/0AAF0T+DDtP0ZblB4=;
 b=eLBhA5UHytWbSIJ3e2NgMn0ZC7YLdN8k0QUpH85oCOdXfH0cQ1It4vqZFKCIJ8cs/aL/THB0yRMfxh1NefGh7Hs/3NPeT6tTYBKgZdokgfj+CQ6wk0MqFA83va8ZhuuJNxmVHUqvsIL6+mzXdUSt5lMFaSxZT5Fv/ijyGHFYK5o3OOs19USCQMgH6WluybgT8jNDYdemc20OEvLXd94GqhPdPpwD3BTDxL8JqhBm/eAivC4BoLZlA56jFzHDHh2wD6l7mBAMMBklDt1RdiyniDDAnOupbl1QGnIxHMp72qEIOGZ2ru3L6VVLe2S5Ww3GWhBOvzhw48YUHl8kN24dnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T8nDbtMQ7WIaRf0p03azWtqH7/0AAF0T+DDtP0ZblB4=;
 b=Sk8SqkVImQwQ7eVc8K6mcdhlTDG0vtbiBNx+4HJhZpt9svHtomwpyF4C92BafZ1JJhsMbl64w69DYsQC4q4J/Id28b1zn/g5bmvu2n0Dumt+7F6i/Ej+btC2WS3+v+IgCPyplzhFhyj575Jrz8ZroXwzo4o7gxyWKaqO9Xpp9oQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2616.namprd11.prod.outlook.com (2603:10b6:a02:c6::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.24; Wed, 24 Nov
 2021 10:26:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4690.027; Wed, 24 Nov 2021
 10:26:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix for displaying
 message regarding NVM version
Thread-Index: AQHX35azL6UIfdUN4E6NoxVeNIwp2KwSfD7w
Date: Wed, 24 Nov 2021 10:26:51 +0000
Message-ID: <BYAPR11MB33673ACDD7686961FCBA948EFC619@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211122114622.4804-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211122114622.4804-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 228ed208-e12a-4b9f-c752-08d9af34ee57
x-ms-traffictypediagnostic: BYAPR11MB2616:
x-microsoft-antispam-prvs: <BYAPR11MB2616A796ADA78BFBE8594AF3FC619@BYAPR11MB2616.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xgaxb0clXSY7IwJMhdCdRRYs6dy3yP7fFtKl6xtNAlsaMT+syvjdazmV8p2/zg6qZXKdtt5WvVJ6hrJxbPIgMOGDRp6pbuHsTpN/ZuuckWDuD+yLVJdooVgZh0IdIiJi2hb7yQjLAj4IJ8ZPuYK00A7IJzK8ExVwC2fMIDUCu7xKMlH/2CXZzYqexZpupZdSOoomqi/e7yfDz6a0kV2X2yftlMvXskDMZAdneqvQOxGTWmf7Kv9YM/lIIPaxgy8K3FDcDhuxjBhECUzGbS+zDU8yjgY7/hm28PFMOr97zKZEnZhmAyeD/wFJb6EmRYDSptURVvvEFreEEYk/KcwyCWukpPo2Wd7LCaHLQzq3jewDe/O3NEffkHqiiR+9zcuQgxPGaMAxdA/rhXMYVe1Lbh1ebUs7oBqkprTPoWbqA31CkV12eb3XkPWv0kaQ20QG2MGOqgcdjb02nYdtWTTeBYBKc80r/gx95a9ZDNKV8wCUlU+GFFij5YZ/mw0RzxjW7sjuU7B/3W8Sx+2ZP1sZ/WmiTdfA19+EMVLJkFsPoWra77cbEZXxwmlpdgcptc0FeVJPj0o/SsZKiGwTxWY1p1mVCeO1c14ChLFxFdv1dS6Xj81pWo4YP6xMGOG0wJTsm7H9YqoLks3/I5f2G9E2iolMfns7Kl5E9H+JPxzlQGd3dAE5Br2nFRGz4mkmdurxKL6lPhubzbhIqKrdA4PooQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(107886003)(8936002)(6506007)(122000001)(4326008)(110136005)(8676002)(508600001)(71200400001)(76116006)(26005)(2906002)(66556008)(64756008)(66446008)(15650500001)(316002)(66476007)(66946007)(53546011)(52536014)(9686003)(38070700005)(86362001)(7696005)(82960400001)(5660300002)(33656002)(186003)(55016003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VGQSjb+rnWqZaXrnWfLZm2ej0mGjZv/gtyvKU+dit39qBJsW7XsOFZCi9xdS?=
 =?us-ascii?Q?VjLcZpV4zBBCz0UR3j3pYrI591gKAgUMBap41oD42AF1oW9Dydyidlq/1jY4?=
 =?us-ascii?Q?p00IDISgXBiJ7hkFFd+yBaELmHFaxISSke9XMA/eef7Q+fIb0WcBPyu8Ysm1?=
 =?us-ascii?Q?GBRbGPK/AYw+j5w2FdaKfbXfhlD1rFDkxAqzxxLceexfpTtXKfKqid7yzRgh?=
 =?us-ascii?Q?AdcMHkbsCKIE2SwksHhcJJ4bcNM+lEEU9+uIaRc4M++w5B+O2bYf4iExMJxR?=
 =?us-ascii?Q?97xEntb3AbeVCcTvYTjYPmYkmHZkLR5fuBGRbBMuuUDAWlefmtr87GvPEoi5?=
 =?us-ascii?Q?GT/A61Znza7Aqo0MPVEvpxZkIYOdEs3bqvvTqe7MaxIJHAKf+9H0Zywt7vkz?=
 =?us-ascii?Q?tL/QEAdHFrGmEKZMZosXdT0Wl13GyvvAU8EAKdR2hLLl6al7zsDwXdmfyw5Y?=
 =?us-ascii?Q?QN4N7LSn1Oo0O3cl5qOIrrqWTFVCoMMh8XL5iVgFxowFUA0A2vrCByeDfWui?=
 =?us-ascii?Q?4gJesjkFcHlvdP22ESiIcHMoOcHk6j1ctdX6TvV2tNIiyqBWFh6D2imMvKZx?=
 =?us-ascii?Q?y5UDZ6d4oZL40DDhZjvhnHPkwzdETL9CmokZ/zodcOP3kNObG0CvSzm3+cQH?=
 =?us-ascii?Q?lN7Xg4EEg0Z3V4O27OQRNwkFLoAB94bCCAg3CoK8fx2aNjIvuf86173lOIED?=
 =?us-ascii?Q?jEQ9BrYnBVDBe/c+K/QVqswvz64rQY1sZUV+cjHHJhKRNz8oME3J8l9xFMyI?=
 =?us-ascii?Q?shCwSlWn11w8511N3PYfqUXyCiU5MM6PlnA+rWrXoj6OFwrvNuoeN4jyxUe+?=
 =?us-ascii?Q?S4H/FuEfxOdLyiwIwInktaNE7F+b7h5HZEoCCGQK3tY7XkFIY3fQJy3+CxXO?=
 =?us-ascii?Q?vLsd6Ygnj9EKsLHqefgKIFh2UHuhFOgHYebqDUHjO8yDmoi31qLcT0P/na/c?=
 =?us-ascii?Q?kNFKHviL6lBiSwlvmMXkfsDmB0Qo9FLxG5uGYjgWc5UNAuRhiHqmAdZBY6qr?=
 =?us-ascii?Q?aL8yZCJBap6qHTeYfoL92Ltl9desNnQId6BBmkO2+R9pQck7mhXKuS9ixS29?=
 =?us-ascii?Q?OAe81to2xwxI7+J9FO0PJeXeI3dMItBRO4d57bygTaWUAUMaGe/g9pZAk73j?=
 =?us-ascii?Q?iY1EC1z7WgHuA4j06i0IGCWxgpjLP6h1Il1NEJsM17co67WiG+tMdbAxWCLU?=
 =?us-ascii?Q?hITnEGYGOyrBsQQXXFYfx3q3RcroPpWG+6mOJVOC4D9zlOsWOoJWU7qp9q63?=
 =?us-ascii?Q?PLuD0Ng9PendSc5bA3N+f0rC/LT/v2+K2njAiJG3t7PA3VgRIAKMliaYNLXO?=
 =?us-ascii?Q?BHulnFt2NoIBDGK2FzT185kqLH+J+uJ6w7RBxTHeon7dyZ+y32uhMIgq5pKY?=
 =?us-ascii?Q?LCnqlADylHJvtHW5AMTDXI2WYBpT7v8yx1rtgRftLjjiNh7WbUY7SK7pect8?=
 =?us-ascii?Q?YzEWrvfFVK5j0McimT9vaTmFx5XrWaYHxf7Nvw4unFb1XWNzZrQ9uW21IdF+?=
 =?us-ascii?Q?keMtGcADo+WsPV1gBrl5Um9STCMsqb0QzO+iPUZ2HykQsKT/uMV6wDtsAKl5?=
 =?us-ascii?Q?66eOzpH+FBFmllc9676LR58FOaLbhmXcdx/oWdBOANsqcQorIGHHZVHkeWeM?=
 =?us-ascii?Q?/pWE23UAm11rA7uq2LqnS0E=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 228ed208-e12a-4b9f-c752-08d9af34ee57
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 10:26:52.0346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hJhSXgDIaLmZ5ugm19DVRUm8WfhD2X/KVyBgh4tV1FNA7jAdMQwl67Mp4Maim8VUZZ4l0HsUepQUreBURW9L5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2616
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix for displaying
 message regarding NVM version
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Monday, November 22, 2021 5:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix for displaying message
> regarding NVM version
> 
> When loading the i40e driver, it prints a message like:
> 'The driver for the device detected a newer version of the NVM image v1.x
> than expected v1.y. Please install the most recent version of the network
> driver.'
> This is misleading as the driver is working as expected.
> 
> Fix that by removing the second part of message and changing it from dev_info
> to dev_dgb.
> 
> Fixes: 4fb29bddb57f ("i40e: The driver now prints the API version in error
> message")
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed the fixes tag to be 12 digits long
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
