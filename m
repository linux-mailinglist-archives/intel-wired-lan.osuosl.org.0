Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66895170E5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 15:49:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C2B040612;
	Mon,  2 May 2022 13:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y1BrgxhA0F4D; Mon,  2 May 2022 13:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D92A400D0;
	Mon,  2 May 2022 13:49:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1E561BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 13:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB9B5405BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 13:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2o2GO56wA-WW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 May 2022 13:49:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2124E400D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 13:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651499375; x=1683035375;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4OtMApQRKCklDaSqzva2vhjoMfL3LfU5n8DJw6Mujis=;
 b=XGbAhCJNt3BTHoEdReybOpAwjuCRxj+nSqZsHYpnHlgGEe+66+YQcEdT
 anNYLmx24IWJGyP6JYRmdUqqPT57z4ADj4IWIxVWLDwArLaCHhic5uNEe
 3g3yjM0rTZpe0BAYQB964IymNeJuFTjGePD6VsMaejfnw85qOUTdWuSxs
 /1uBgdQplBX65Ku4w9ofyq40otNq+F3EipMoUZY5LJtQyJvY806WgiHZo
 YbAmbc9Umq4Y0IFX2PCv7zRJBX1uzm/muuymqGrR+rfpnMMbpIB+RgkQI
 IssT7duUGAMCofVoyXCiEnSvL9W0dHnm1YxfGOKzEjdRCdbL14avjMgTR A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10334"; a="249195211"
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="249195211"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 06:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="583707105"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 02 May 2022 06:49:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 06:49:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 06:49:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 2 May 2022 06:49:30 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 2 May 2022 06:49:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YuxAGBj60lTKrADe5ANvAGBvrlx/rYVXR9kmKgznNfxiPCPB6mWo9tQ5Tf1YmbwLJBg/56JNbH1dH5hCT7eVtAZA9b10tsHJlzePmdpP9GZIW+63Wm4zgcodwhL3LnYQ7cDA+E30lNmMmzjJi6QawhbS/XrmV9ZsVJlw4ODPmH6jSRlQP/txCsOu6V4UHqOv0kz8Sjz0sjayTwlDLZH/yZ6oAHvnAOp8s02YCXDy4GufOJj6CGbeOPHrD++gDktxunkCCSZHz+1BH34nZ1xftSkXbDIaDxpCa0t1Q8qPa8wsRzNFDQDUHa5jFLixcdw1yZo0Itvmw+Ihu1JLp1OPJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmShwPy1zh40dN/wjbP9ImtcB5oko7nDz4joiVChdkA=;
 b=m00lS31a4gu9HZYSyDhcAw9vtB3K4NdHlM2BD0lSzwUMez6dItubOcXmSdqG0WXZjmXUo43ET/xA9m41aOgFLPnBnxTL5JnJlw2QSN4q2hsoG2rxapv6g8ltJzW4tHZ9h8JjfABVHr+14PPccFcK+i3p7rz+RFIUbbffcR2mk9/sOtAqPSzLsL9bHi4uDa+pXStdz/YxbwB+NnOy6qKdHl/XJhWCQCduwyeRhHRGnidc69Y1o8qFJezQvkQvr9R8rbubrsDE7n8QT07j2MyY3KGTXd1Q9qLnLeo0mu6Zcv4BtLuZFJkfznxpLwS7izChDlO5xQTEVrJK4xI09KARvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Mon, 2 May
 2022 13:49:27 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5206.024; Mon, 2 May 2022
 13:49:27 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Daly, Jeff" <jeffd@silicom-usa.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Fix module_param
 allow_unsupported_sfp type
Thread-Index: AQHYUD1B2zK5GHhWxU2btMyIx1tE/K0Ltjiw
Date: Mon, 2 May 2022 13:49:27 +0000
Message-ID: <BYAPR11MB336747967A2B4F98B0B3BC73FCC19@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220414202104.900-1-jeffd@silicom-usa.com>
In-Reply-To: <20220414202104.900-1-jeffd@silicom-usa.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df5b0b5b-dbd8-46c0-c25b-08da2c429339
x-ms-traffictypediagnostic: MWHPR11MB1632:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB1632639CC8F6E45B08E75C59FCC19@MWHPR11MB1632.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gVBRk/7Zl9txoIkxF1NGkHZLb7qulIlJw6LQNWA5mSsKbt7clF2Ef+WVAqzv6dgJhAU9L29XBDuYvYa+FYMZs1k7n5fZ+Q6Os55ClZ0XR/LLLQYNsUuPpsnAmIwu0ER5YxW+UJ+r55UljG5KoGUTY67zcUihC6u5hz+G5ejdEWCc4znrmc9MjNIFGsU+EVRqZnmdGGbEJiwxmfhsIgKVYvvMQg5UovRqHjTy7TYoWfwTxv48R3cGbWvmNPwkdLxVDnyWq3C2D+/5K+MkvWmEaYCVF2NX1kJp1ohL17Jl40Zzt4iFhRmvh8kj/SW/St/x/LTB9J/PQUppbh79PKdM9tlo/kmypLRd1BMhfQPAVNyvJ7b6BHKFRo3DrqK54r2bpqooAKNulNmR6s8Lu4lqx8tpHAgA+6pJSl+nmoAXqcuvSIPV7w+EDKNYvoKkEwFfqtbKFuUIa8y6uJO2IkBMCBBReIfWhTctVaSriFrbWE0mz8GJiDAC2MNOTqUBlQ11kkPcDQOPcqljFCPo4bHs28w6LP4DzzicNbA7GWYv1XRKqNMuR66B7OaOGLzbcfJlPMlETC2J3VTpuzOrFU3cImD59d0pAWB49LZOjdhOVucmgpazRaVWPyb6rqbtjSk3lq2Xe6wLEQJ5vvMUwZPh+edByiO6l3ziZJTHSJWPV2pNwZAWJk4BWvNBOrys28qHVW/k60m9fZhCZvSs11c+ZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(26005)(6506007)(2906002)(9686003)(7696005)(53546011)(122000001)(82960400001)(38070700005)(38100700002)(86362001)(55016003)(33656002)(508600001)(83380400001)(52536014)(5660300002)(8936002)(4744005)(316002)(71200400001)(4326008)(8676002)(66946007)(54906003)(110136005)(64756008)(66446008)(66476007)(66556008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xJsFfu16WjDMpaqSRrrPpS+2tyTemMmstEfVDDVxtvjXEnQg8E83J+z22jZU?=
 =?us-ascii?Q?LHBK4u4y/Zjso/K6pxgsjuKgX2HgevQWpJAXkE/TySIvfIZo9qAfQdC89+Vo?=
 =?us-ascii?Q?Fw/F1JS5wQhXjU0KN8c5EFZGuHRtKpJfKnkyD4XqxmU77UxHPWiXZK+JKOM2?=
 =?us-ascii?Q?aYX3SEJqyb8eOpuEi73YwvDWwmEfb9vyBx6wz+7ha+ma5nHx5IkBeaLOUvZf?=
 =?us-ascii?Q?qQCrexe3Jky4tbRpbXz4D386FVvzBVJDqsiCbZ4tZopcW0s2DmORTYdAQ94a?=
 =?us-ascii?Q?by98swgq8Luz0d0D7K1kpqkd4v72V0E/qTgUK4MGanhummymDo3PplzWSefM?=
 =?us-ascii?Q?gMhJZ1AADSihO0pBQ8Gn7nCdppYhSCfb+0ox/3qFlPaIvbO/Dm4Qj9w15BuE?=
 =?us-ascii?Q?0C/zCtOl8rGMF9W6sG1YA/+SJUO6zxJTq+FZ/ht42k6fcwxJP9XVAlU9qeh0?=
 =?us-ascii?Q?543obeVlLF2Rxau/qAwCSFyw5BV/2bLPC9e1KrYlRZwjsCJgx4vqLiKRqEGh?=
 =?us-ascii?Q?GqHZpo9Lw5mrznOTJO4Q/wcNkVuLH8OzK/psHB5WpqcaAGUs7nV9Uiq6lgzP?=
 =?us-ascii?Q?4r6cqnrVLd6hM8PXwFk4VWeYNps8l3jEbAfmA/LPV73doSne/hv/3A5+ZOmT?=
 =?us-ascii?Q?XE8Ywttdtc4ijm/79q09ThbAChT0pl4CBCtItAd/aNNhPNTRMzwMiYhVCdmu?=
 =?us-ascii?Q?y5WMYAEsDp8XkO2nq2uMtXV/aHBCfHx/M9qQiai4b+JlTdPYm5PpKZsXyReC?=
 =?us-ascii?Q?JPqtGypTloDnnOvZdYF5PHF+ywOVjE1tiG1zR0DGbvQ1L/1ybznwHj4dm5Ew?=
 =?us-ascii?Q?Sv5JoZdvsaBh0wQeiEXYWQmY5Mei1tH+namO4VZ3OuRaGZezwswrY+JCHByA?=
 =?us-ascii?Q?0RQF5hNFxcJI2NXpeJJQVeS5rifzCQFHiK90ox/meTr67zQiuZRWdZXX5pmU?=
 =?us-ascii?Q?3bjadXjX3kx+6B4dYsu0a2/4Edl2IvnkPF51zhHcqyXlG45RGhc3X9ZGQ2kU?=
 =?us-ascii?Q?UdZqQB+DWr/nAeqXavVpYzPxvYs1bNDg2y2rwhnV1ualOt9T4mf2TwZKQ3XO?=
 =?us-ascii?Q?xnC4lPWCzYNFv3Hozy+D60CUKCiXm2rEg8T4bfEhMWb2TytnTMqi3eHEF2kq?=
 =?us-ascii?Q?+tl4ngKZG09NCO2bPr+YIlnVn6dEyY0GI0AUc6THBPwVl+dKV1WXgQAD3Li5?=
 =?us-ascii?Q?A9l4arMUqzUwzyf+i8Rm1xOcOwZhlEu9XNz0KsryU8myzUzZfA2fMuPTQKZD?=
 =?us-ascii?Q?FC/rqOKTcDzkM5OiQ0M9IKknQLNiOLxiUSNOhIG73/6P9EP2MHFtFWCw+6R2?=
 =?us-ascii?Q?+ooykwkTHX8/d8vAL3iU9xsjI0A5ZX0i6eoR6ZNMuNR/HUuzLtL+nEXco/Nz?=
 =?us-ascii?Q?GEzYHSQDgqrXje5TdPRFQMSnFO2X7Xcbo6Ra3ZGRXcYfa4jB3dwXK8VTmBgi?=
 =?us-ascii?Q?Dw16kQ6PS9VKlBcLx34dsSnNvbo+dw3oEBJU+AKfKQImvylcf8VIomq779aJ?=
 =?us-ascii?Q?XOLqvPnnQMvLszkbLS87ZpBlaIBGPrvqN9jqzLcAAd4OzMoB//FM2p2u3OMk?=
 =?us-ascii?Q?BMOyGgjMRi76AKABqTFW1luE6KIUxWlrtnVbnEUBqm6guQ126fkNHFTKFOAC?=
 =?us-ascii?Q?TdqtRSvx592zvedV7UofnZMpi9JTH2+ndwOgHncz3vllUvfdQ9VNVpuZctVx?=
 =?us-ascii?Q?B7vojS2PGm+QuqAi+M3dBtYwfZS1llXEglVni3KQFlXsPtnDvhedXsbHUS86?=
 =?us-ascii?Q?tqXg9raOjA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df5b0b5b-dbd8-46c0-c25b-08da2c429339
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 13:49:27.5690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 11w1TH5b11rqf6sc4BBZw3EOM4Ik6fo1+3EgQl4aCb1Y+IGmAxmErP2Hc4M2aeQrZIUct6Ix/ur1O/cuLB6lSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1632
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix module_param
 allow_unsupported_sfp type
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jeff Daly
> Sent: Friday, April 15, 2022 1:51 AM
> To: intel-wired-lan@osuosl.org
> Cc: open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; open list
> <linux-kernel@vger.kernel.org>; moderated list:INTEL ETHERNET DRIVERS
> <intel-wired-lan@lists.osuosl.org>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix module_param
> allow_unsupported_sfp type
> 
> The module_param allow_unsupported_sfp should be a boolean to match
> the type in the ixgbe_hw struct.
> 
> Signed-off-by: Jeff Daly <jeffd@silicom-usa.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
