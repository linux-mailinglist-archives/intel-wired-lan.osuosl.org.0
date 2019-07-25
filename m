Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7655A74B34
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 12:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 24FCC2042B;
	Thu, 25 Jul 2019 10:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FrDxFJws2yT0; Thu, 25 Jul 2019 10:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18EBA220B2;
	Thu, 25 Jul 2019 10:08:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C92C71BF337
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8F8086274
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPOGYCTrYR9V for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 10:08:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60061.outbound.protection.outlook.com [40.107.6.61])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 373908626E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 10:08:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VtXVItcQHfbVhL5Wi7hdtnHzA4zkn6PLVx5GKgix+YvWloCo1vAKsWvCOOMFGNqV6UjtjQ/yWq0DaM9dhMNSNJwixsxdS4iWyeJLP4wZZER8WuAgDP6OKyrK38hYtEYQbEelzfyIXzS3cjjKR4dtIZ5G9s3cxH7ehYTG5Bd6kf6ow615qSfD9Jm2H6GMlzcoHJFPxW/ucop+/74MbzbZc08ijszsvwrCUqWLH5IXs5gNfWWobeFMO/fxyLKORZBZ//Y7gpKr+r26XUEnLxJVb6oOvyvmjGTpZc9LA69erGyYXDTX7rJjodhLAnqUIB/NmxLldgAEXZx3iyUHE1J+2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTNhFr9dJLIlK/cGncRUaE7IGVacxqUNqPuR8QQUIAs=;
 b=CADPglpcSYBjlL6hmjj+wXXlv1p/bujtlNu3eub9maYBHQ+B93EzfFDaMvsUo8ZvPRNS254gesFxNHYos0gCp9GKfnGPLJlEL/TlusJJJPAzefJOjJIWlTdIWglnIcyx4Et3XaN1/zWE+2a+jTnBVaGvGqdsuxNUmnz9V2EAY1Vijhao1VfS6S2uqa4aI6RGzgjCspXYeIvR12A5U3pVsDpYDLdurVPt0GgI2Wcp7dF0YPAVQ5S+NR0UXShdMPVTcsd2JqtDt4ucs3Y/qwdBkCmFoN+p5AgR/a6XHlATFrRgko5UFYZivXoRu5DlmGQ0RqXrpnRAq9TxqYCgq/EYIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTNhFr9dJLIlK/cGncRUaE7IGVacxqUNqPuR8QQUIAs=;
 b=j5FgmVVxBhKEXT/6aSdcrMh+gA3zs42vPBe+HWjSWS4rUzriXt2AMQt0zcLdVdvS6tFngq4oT/hulw1aGeF03fuzA0HKG+KQVkfEVI2jdGFA316nAN360O1Ra5agu0wyIESb+nuuM/m+EGrOVTACbZILvfK0Hkp4WxViHR40RJU=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB6006.eurprd05.prod.outlook.com (20.179.1.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 10:08:25 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7%5]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 10:08:25 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Thread-Topic: [PATCH bpf-next v3 03/11] xsk: add support to allow unaligned
 chunk placement
Thread-Index: AQHVQiNkTVSHyKuk+0Kz8FHigNGopqbbHX4A
Date: Thu, 25 Jul 2019 10:08:25 +0000
Message-ID: <c3159739-2483-b2d8-541f-6f6611a782e1@mellanox.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-4-kevin.laatz@intel.com>
In-Reply-To: <20190724051043.14348-4-kevin.laatz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0902CA0005.eurprd09.prod.outlook.com
 (2603:10a6:3:e5::15) To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [159.224.90.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cd98e16-b59d-475e-0ed9-08d710e8083f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB6006; 
x-ms-traffictypediagnostic: AM6PR05MB6006:
x-microsoft-antispam-prvs: <AM6PR05MB6006477F5FE4D67595A3AF61D1C10@AM6PR05MB6006.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(36756003)(7736002)(11346002)(81166006)(31686004)(6116002)(446003)(2616005)(71190400001)(476003)(53936002)(71200400001)(3846002)(25786009)(26005)(6436002)(478600001)(81156014)(8676002)(186003)(6916009)(305945005)(6512007)(66556008)(7416002)(102836004)(55236004)(53546011)(8936002)(76176011)(52116002)(386003)(66066001)(99286004)(6486002)(486006)(256004)(14444005)(2906002)(31696002)(14454004)(4326008)(66446008)(66476007)(64756008)(229853002)(6246003)(66946007)(5660300002)(68736007)(316002)(6506007)(54906003)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6006;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Uxv2PolQVAnSC1eU03jCxlJoT+bggboP6Gvpkz2JRhqmqpw6xaRgPrDB6EdEOrs7OSRjMwmzmmTI0ILc5Bb8O7NBjAwuR7Y5eVLlpQRLrI55qz7Zxt7opoLAGhE8AaljxLP4Bsb8RivX4K55xwD+cWNvLOfGEXKoOwRMa6SDwlV/QcUiQaCJGBuXG5vRMYl028DxkmRYaTlNGCCED66yOC4g6rvMAnPO+oZv94mBomu0RjlFPy+Dd2Ty8kGY4OPMAzDW93gbj0HezXaNG4fOZ2Ni9WWH1Pr3gYJ+3OG7GYhSyyKOGxIjvMbRbbfsOwP373PgLOOsOnC3vogx86GFuXnGuwoUIjfO4TQ0g19kyZGRL4Svhf1UlVvbwJyIcOJQOV9pJlIV4SRB03YDxLNPisVCOY3icLnX8gcYciQIWMo=
Content-ID: <91C4EAA889185746BE1F5CC56DC7F481@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd98e16-b59d-475e-0ed9-08d710e8083f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 10:08:25.3901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maximmi@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6006
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 03/11] xsk: add support to
 allow unaligned chunk placement
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
Cc: "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 "magnus.karlsson@intel.com" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-07-24 08:10, Kevin Laatz wrote:
> Currently, addresses are chunk size aligned. This means, we are very
> restricted in terms of where we can place chunk within the umem. For
> example, if we have a chunk size of 2k, then our chunks can only be placed
> at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).
> 
> This patch introduces the ability to use unaligned chunks. With these
> changes, we are no longer bound to having to place chunks at a 2k (or
> whatever your chunk size is) interval. Since we are no longer dealing with
> aligned chunks, they can now cross page boundaries. Checks for page
> contiguity have been added in order to keep track of which pages are
> followed by a physically contiguous page.
> 
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
> 
> ---
> v2:
>    - Add checks for the flags coming from userspace
>    - Fix how we get chunk_size in xsk_diag.c
>    - Add defines for masking the new descriptor format
>    - Modified the rx functions to use new descriptor format
>    - Modified the tx functions to use new descriptor format
> 
> v3:
>    - Add helper function to do address/offset masking/addition
> ---
>   include/net/xdp_sock.h      | 17 ++++++++
>   include/uapi/linux/if_xdp.h |  9 ++++
>   net/xdp/xdp_umem.c          | 18 +++++---
>   net/xdp/xsk.c               | 86 ++++++++++++++++++++++++++++++-------
>   net/xdp/xsk_diag.c          |  2 +-
>   net/xdp/xsk_queue.h         | 68 +++++++++++++++++++++++++----
>   6 files changed, 170 insertions(+), 30 deletions(-)

<...>

> +
> +static inline u64 xsk_umem_handle_offset(struct xdp_umem *umem, u64 handle,
> +					 u64 offset)
> +{
> +	if (umem->flags & XDP_UMEM_UNALIGNED_CHUNKS)
> +		return handle |= (offset << XSK_UNALIGNED_BUF_OFFSET_SHIFT);
> +	else
> +		return handle += offset;
> +}

|= and += are not necessary here, | and + are enough.

In the unaligned mode, it's not supported to run xsk_umem_handle_offset 
multiple times, and it's assumed that offset is zero. I'll explain the 
need in my following comment to patch 6.

<...>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
