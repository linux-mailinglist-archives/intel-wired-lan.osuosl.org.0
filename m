Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80169875E88
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 08:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 327D16089F;
	Fri,  8 Mar 2024 07:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6vK70nozVFoa; Fri,  8 Mar 2024 07:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 784F66080A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709883032;
	bh=uG8x+cbNnIeN705qoxQr0/eS9m7HIo8Ze+PmDC+Ag0k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FKTt9/Nuk8rBJsUUdr4dyRz+jvvyUBpgDAgqYxon5qbDfNCnSPobtli64ido4XChu
	 h9jQWg2jpcyqed0VUpuSU3sUuxHMtA9VWgcDfiIFcK6UyTpunVMXtwQ2uhPwKbxMKE
	 9hJhSUAga89fGxMN6jjAmTl6kZIQiVBECF2Ns/xj8/mAtkUDmiC97zaCGgBwkwrm3g
	 W9xdt3HSy4SrUKQLQHPOnELmlB6hUg9E0rCOEV/HzD9kCW6U0eS9NMg8WcDsgwgBRd
	 xRauPLzZc32Anwf3SqP/boQ/GIzCkuPFSmmviJffhNYe6ZEQ1+e4KgpuHdXgpoRhur
	 b7KqDWYO+m4hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 784F66080A;
	Fri,  8 Mar 2024 07:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BEC01BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8642140543
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BQ8Mfm-betEX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 07:30:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AC34B4016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC34B4016B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC34B4016B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:30:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="16000141"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="16000141"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 23:30:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="41362250"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 23:30:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:30:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 23:30:28 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 23:30:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CgemoB+TAfM7xVXfABcJR8VK/RYJc/B+pm1Iua59b4kAkvz8wngIjnTkDi1fwqcfbb//hri6fY093jJfUqJ6GYfQ36x+eZXB8Q9unXIY9nE0qjwXL/tw8vdAtVYvhfqSIEclEVorqHHIJwDBgbs9Sf4JYiqs6Q676yGLrbVLl2nNJy38Jxi/L9BJ5r0Ex1J4SKLA2iLj/MUvFYdejlkscY/C52B6rj3qKcB58vbDg195PuPNSTm396C/06PRtGuCDD2fzQaHBp+uzHzKS8WHKcBLK3HP7uYl+Nrx1w1+lVhDuZ2WcHvZYoN8QXOTq7V1rkZhPxTWFruEYxw3ARfXFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uG8x+cbNnIeN705qoxQr0/eS9m7HIo8Ze+PmDC+Ag0k=;
 b=ihd9pgmBswa1ed8kh6V+IX9O74uhXq6LKGxODRBuDg7vgF8TZkZobcldN5ClhG//uBV5DoBfBY+GYo8q8l9tUGiBvKipJydr5rIAnRvkE22Z4+0nuL5CK7kyZUycIgt37QwvhgoFbm7sPqmJT+5gJFwPaMVhnzGJMd9PN7Au056a4Krme0tJ3MVxMJoX7DDyNpjFh3FXHucyv38SbxjWGF7exZArBeszGx4Ig68TFA/WXN87TVG57IVStYP8gf1lAJ399thEOe6AOvpbSAoRVNlYoU/iblOuyvL5XSoOPWqUbZiCAHVVcOCCu/5JjpLgmCU96QYRhm60PFRFaTaiiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.8; Fri, 8 Mar
 2024 07:30:26 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7386.005; Fri, 8 Mar 2024
 07:30:26 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [iwl-next v3 8/8] ice: count representor stats
Thread-Index: AQHaa86m54lj5ptbkE+zJ9DVTvqNF7EtfU8Q
Date: Fri, 8 Mar 2024 07:30:26 +0000
Message-ID: <PH0PR11MB5013FD8A98FF37FCDE6B358796272@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
 <20240301115414.502097-9-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240301115414.502097-9-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: ce3fc8ae-1fee-4a07-f6f2-08dc3f419fa1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fM1Xa/euHks0aTcchUaUA63D8EHXDmpIooVrzXFqrtEI+lAag0fA9abN7oFfGzjJw7VkiLxULoRQfi65egaPZfAMtHP5RZvLnl58OCBhZz2XXShwBD+O32dXKOqBZeDIGb9qirYCYK2V7xeBvUGFbKOtbB35xtq684814Tchja07a8Zs6EeSBrNT1H0Fwg325G1+/ZAjt23xEmG8QC+Ov9E47z0aGL5T5+GTzXg+lnBuVqViHCKPolzTAgO9Fri4yr45Janh/uiTxKYZy+ZGjsxUkHwn0UckhT3y0J0tWNYT6Mzsdv4awYu8Dzw7qkG+YYGQJIZlNKvS8BkKbj1HCmSUTu9UfY5kjrrAkBcrwfi/+/Ch9cD0evHM6DrmCXF6O9cQBs84MB2Tz16YPmhLwn3K3Q0Yxs8mi1kzqW0qyg2zoyEe3KTN5GhjblOEm4zGHN77sXtvK1rfFeQxDoicJOfLNrJms8qBwE0+Y0zUo6zHRApfoawutCl8xQ+FmaD18c1kxFY9F9Mvd1PsqWS0pnk6yFKmVOsg6D4kdQ8s7Bx/dHmKWgQFsDffMo84+5hr71lfLZlVmu/XNOJhVK/0/wpxc4/MIf6FXUl4VWQzkhMqL9zuaBq2XwrGwFwyvyccZGD4mhaZb6ut3SY1t1Lt1MyO/o6yw1tIsldW3CvXm65DpiIXhyXJchaT6yfXIyqJ/uGVs+xkccn9TOOVDl9iaKtzsDU/ej6QsLR0xJ/7sqU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9K7LfhtqTdf9mAA/sfj1iBqqrCg/+FzEIJdIIYeFt9ZS3eCasSeCHAFbqeFn?=
 =?us-ascii?Q?1b2EzODM3hfwBeShLAOaDn+w8JWJ8dqRazEYIPe6jhOE1N/XZ0/gTsUukyAN?=
 =?us-ascii?Q?D1i8GNRP0mYlOzDReH7eF0fGvt/GzJkhttqbPIrgJ4/JsDDlSGSSAKLaQwmD?=
 =?us-ascii?Q?+yjiG8JyvbdvR5VhAeoBL7Y65psPm1/jldl94xLRv2yM0J7HqlGcN4Ll4FAD?=
 =?us-ascii?Q?hNuL2FshX8XZNIjUu/zM4W7AxcbgSwhOEe37489ZYgcp/ib8XFOfrdHUMHpk?=
 =?us-ascii?Q?UClGhiz7TWXbcYp+JTp0X9KScm8u89XPyjS0DMJCwb06U25c4b/srkelimUN?=
 =?us-ascii?Q?/CahLjIJ+cGODAUsOihTh42Z+kXl0xJen/1gf0qld3xJ/yqHOmsnKxqd1W9h?=
 =?us-ascii?Q?u7FGyrx62PeULVHdblO8L8Ni2+axtf07q1EvUZqeZ6M37IDQNQflhp53fbgr?=
 =?us-ascii?Q?jUXrr+fzwbslslu/TwcUmA07KFpmTPnWHODsQUAUYIki1ZMI+9gV/bhlZU43?=
 =?us-ascii?Q?sg4kGTcj7EwiR6/vZONg0DdkEmOyhkGZZ/snr9dMxdQ8KUg5A0psfI9GLfAp?=
 =?us-ascii?Q?BcKzlgqX7qz9qzKbk5WLzhnSvvpkDmt7DLj9Vb723lklo5Ihxbq0G5T0d4Tn?=
 =?us-ascii?Q?KjtipR1uM/+ecuHls+byYN6H9EF8i1D13PFekIARli5QdpERGktq8WJIwhaZ?=
 =?us-ascii?Q?1uAWgTF4YJZ6dDsfuqZFT7VOdRIlrYd8J8LQ75FcxZP3FGkA5BIUzrJi/LBO?=
 =?us-ascii?Q?yw6rDWWNDZmo2f9Jqvx0gJhnMiXVAKHbhuIgFTllVXRt3i2qJlGhpNl++Ozp?=
 =?us-ascii?Q?KfHM83JNA4ibjrCaYdml07pDBo50gvJzxjU89dn+/L+QIEhOnSorpw5IuM6t?=
 =?us-ascii?Q?6e/MM7zNzJWB8w/ni1DyuBSzR/xQAjw93TMaQxx9lQtUFa04okrPnzLKz1/c?=
 =?us-ascii?Q?auElF1u1Zk2T2UUpkOdIwx90Uyv2A5cCdYGTyydEgU+zuxe8WS6MMW8FKSbD?=
 =?us-ascii?Q?AM2IlVjT98nj3SOPIezec/Rt+NuAdsKxYxBUAVstqdhxC7g/VSjPtiHlvObB?=
 =?us-ascii?Q?lzNPGTPuFrVYGUpRny6mwVVttuSRcFBxg/SRfI75G7KBkjtRvlwgLA/Ys9Zv?=
 =?us-ascii?Q?ZZ7gNUpGCelVxGJz36ZdsxW+knIct9UT8q9o9UkIm2ZcemvnYJb26spALTpb?=
 =?us-ascii?Q?rakfljKjuhtJY4C3aOEVHs7AEIokw0/dypsqOycOQRDywPxhUABhMxMhOwZM?=
 =?us-ascii?Q?prjAguOkVXcHGmZnGFWEsKiqjPaH6N6C+SlykgIjlzSXpRITnyO6KNK3t80u?=
 =?us-ascii?Q?Q5canVZ2rz0neOWy99wPaHBLlbyyKdH5qz0NeyDHU77VvzLVBuknm3K47xh0?=
 =?us-ascii?Q?/m2oiG9GcVPXe2cJJYg1wPk2loUXVYxgOMRfitpPl8IqfmnCyHD+d9n5zKSz?=
 =?us-ascii?Q?pCTxw4XScKS4qjcxBGz0HdVIKhKgO4iOES3mqB0YkVQSoxHkipJpAEFNlMp0?=
 =?us-ascii?Q?MeXiyXJLzQXroiYiQscLCNfEdDdjslLJcs8it0kLMGOEs6v1OkRfg4Dl3dRX?=
 =?us-ascii?Q?JFiY91CMe6dW0Demlt+zoaAZECFihbFaPypF/Wtso/zWNQoqc3RF8c2EFgRV?=
 =?us-ascii?Q?zw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce3fc8ae-1fee-4a07-f6f2-08dc3f419fa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 07:30:26.2901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: veAf8yAUkZRJ56hcm6iVzjJ41RfWluxLbRJMbWQG3/H6zf1d9fpdjLsc+On5LvHmo6xPwHYJw2DA6R/Se1KEMuEV7rObk0bAYOpHNiraCgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709883029; x=1741419029;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FWcvsslovz5qKfrYe355o1n2PrmAjt2aEpm6xB2rA80=;
 b=jJHoDzSQ2FDfzvQFxAML9+PiCWxLDWvGCYaQq72Qli3Ih6xpuGuna/fg
 taDlqrhHjKvAeW9uQtHnedw0jMKllndL/tdDlNIG/ws0p8+IDcAlXJAKw
 DDHQ2swjE5WiYPtdRKM+iGMwtM+vYx5E6Zu1WFuh/1twx4qvDQY8zWoZO
 31G++YtkwEtRKgTJ1bY1oQaeWY+i5ZGnySDgsyJ8QipfkkJfV+EexZmIk
 K6WNRQx2JQVim4Duc46oZKVfqEI+T8g7SHMPFsa/MlD9H5nagUxD4I9NS
 qUNnx8b1AmGrqsKRPvkGkqzN94DQhLA76D9Ues1SZLZh2FLbPXQBjUkNO
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jJHoDzSQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 8/8] ice: count representor stats
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Friday, March 1, 2024 5:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Drewek, Wojciech <wojciech.drewek@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; horms@kernel.org; Buvaneswaran, Sujai
> <sujai.buvaneswaran@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [iwl-next v3 8/8] ice: count representor stats
>=20
> Removing control plane VSI result in no information about slow-path
> statistic. In current solution statistics need to be counted in driver.
>=20
> Patch is based on similar implementation done by Simon Horman in nfp:
> commit eadfa4c3be99 ("nfp: add stats and xmit helpers for representors")
>=20
> Add const modifier to netdev parameter in ice_netdev_to_repr(). It isn't =
(and
> shouldn't be) modified in the function.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c     | 103 +++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_repr.h     |  16 ++-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 +
>  4 files changed, 99 insertions(+), 30 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
