Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3344688ECD4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 18:43:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA2D960BAA;
	Wed, 27 Mar 2024 17:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vZB4qYvIQ5pl; Wed, 27 Mar 2024 17:43:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E73560BB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711561423;
	bh=VEsg0MelXvjdc+ZF+qZoVnwAnbteVbi1q8ALrGCu+CE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0QRBz9ZEkOcWGwJy9KdLLVVBZXCghAfWG1pvvZ7U+QgJwMob0128G2nbdPMBJHF4F
	 Wb/2xWLVnPluSOGBU3l58PLuesgSB9HezTqb3mCACrgd1aULlECVC9Pa4fFSoEklv8
	 UrQ6BlGFaFh7MHgs/U8VmfUOTLpGrvydTSyNbXaAyGp/j2B51hIdBqdrxZTbtzCOOg
	 NnOp46jsP0myJyEJoy71N7uJcGdOKHANOoOAbaKrR1VrHoWpFPL03qKoGQ6p1moKg3
	 cWniFe+3GXxZF7xJszkEUh+cG+6ntSzdB2CO3rtkwucJ5XjH33iWcGOhswsGNDywo0
	 N5bZr19T0ecig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E73560BB7;
	Wed, 27 Mar 2024 17:43:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2FC81BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 17:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CBB61405D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 17:43:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id URCJ1rUroff7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 17:43:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com; envelope-from=saikrishnag@marvell.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6896B405CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6896B405CE
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6896B405CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 17:43:38 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id
 42RAM0ut002581; Wed, 27 Mar 2024 10:43:38 -0700
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam04lp2040.outbound.protection.outlook.com [104.47.73.40])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3x4hmp9xhd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Mar 2024 10:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ETzYGfFmvnwCtivjqqEODSf8tWWGfIcVzSu4Wqcod4scMhvzgrvqVGIxRcCypDyoyQjf8NsR1f8CuZNjzRRlhq8hShYBOeu2ixNuk2jDbIwGZzUCptiIVpB9XGXUf+wHtKyZkA1TpwV6zV/9CykuakJGDdxVHu26FC5jZCX1/Pbu7laJPuGjPzQ+0vUPvcUInYTax/GHi97wQWM5r6A75pBH+fyQdCtFJVnwVlficogpuADYJ5tKOtU94KWX5AnKcGfPRE/gZ2SptXYYvYQsPtT/rUPJx8D36NyjrL6EpYGsxJGs6XnLl9LHCf2kPdwDIU4udc4t2eJ/J4Q5JlGPFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VEsg0MelXvjdc+ZF+qZoVnwAnbteVbi1q8ALrGCu+CE=;
 b=aC7YBMYX9bmXfDvMHd95uuEsf2TKGjDFvzWcJagKFNNzIQnKbO2bT9v7wGbiuMXOSYfCLsbdhkqS6h/4nRVPET3H07gjFfeHd5LoXBzpiA0s7ha108+09xRtICd6AXxjOB5Wmavi7ykL2TQyLqJPICG3EQObIP057CLP38eAp5Ekq6iQe1EuZaq3F0sby7PLGKPxOoZUG/Tybi/BiC2WxtZvj4leLtquxEdO0GJugdnN4zgT9Lsb/c83kjv0f6oc114uoPNB/2fq/YE10gG00gGNMIoRvK9nRBjOIHiCp9C6JL2kcBF34yHX/Pvzc8z4X36GHk3k8WOGQPLFHwijZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from BY3PR18MB4707.namprd18.prod.outlook.com (2603:10b6:a03:3ca::23)
 by SJ0PR18MB5817.namprd18.prod.outlook.com (2603:10b6:a03:43b::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 17:43:34 +0000
Received: from BY3PR18MB4707.namprd18.prod.outlook.com
 ([fe80::1f55:2359:3c4d:2c81]) by BY3PR18MB4707.namprd18.prod.outlook.com
 ([fe80::1f55:2359:3c4d:2c81%5]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 17:43:33 +0000
From: Sai Krishna Gajula <saikrishnag@marvell.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 06/12] iavf: add initial
 framework for registering PTP clock
Thread-Index: AQHagG5KBjlhU44Oik2GrH4qxhL8KA==
Date: Wed, 27 Mar 2024 17:43:33 +0000
Message-ID: <BY3PR18MB470739CD723B6712C1D72B20A0342@BY3PR18MB4707.namprd18.prod.outlook.com>
References: <20240326115116.10040-1-mateusz.polchlopek@intel.com>
 <20240326115116.10040-7-mateusz.polchlopek@intel.com>
In-Reply-To: <20240326115116.10040-7-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR18MB4707:EE_|SJ0PR18MB5817:EE_
x-ms-office365-filtering-correlation-id: 603e2477-44b4-4eef-3440-08dc4e856c98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b9i7sGN8EVMGmp4xS7U148XHi7wQ3Ft8QKIbQ+bWog+K6ftpsEjWQda0a7C/DmryKo2oOZ68qWh43BTZiAZ1pTTy54k2XMynu92fgalKVnwn+r7E8cmZp7fYad0xdheuk+hPD9lLOdcMXttJaE6cg6dbnlEw+Wn4qWdgv0qhzc21k4jvnpNc2SfcsgFy7s98nbFcT9f2F7OrLTiINnCbEk5ln8nWIO1kccNXvkGkUrKttZCviyhiFxDAmvzEbBGzPkMyvZdLTgBo3uDUxSUw/2aEd6VB1XJjf1JoPhPNHJc1rKamkAdMCkyUSgBtYQp+fcgfSTixL1x1OHNFmY8ANIchvLUmL/zcyrJPbNzHPKMWtkL34w2nlaKW8+mCos0ULbSZU7ls7S4mYg9j7TWWzXjTv357c+I2+dWQ5vQNNYpqcWaPaL8+ERu5KqFAySp5L8rByHBoC5GwPzT65CVHsAX5E9/WKX7WzeEpa0laQmmUFsSK7JPZ4v5YGJAQ9bq1mjE5HoxGFvJtmlglFRv7Lnn3TROMVmKsQBEXEJKKbtpYlcCrjkQWkgEHgt0125Phc3oNQg88yaNTtEXt2IHlew4yE0g1iLzlORVH5sru+9tolnjeWmq3xNhx5RhAHDvALnPM/N86KQdzjjRFd9Sn1DruoUYdXwy7U2RDA+A55Uq1sn755+RVOQ7p4JtWWjnMmgf4ZSum4EPcnseUL7I7T40jFRTQQWK3ho367fKM+Uo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR18MB4707.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sEpiBmdIVDfatAx0S75BXVpgNtruXFpWQfSOZc+h0pO9hq+clGaC5vtcwlBU?=
 =?us-ascii?Q?mpJZY2aANwvfnSSC8vtYWQOHgDnnURy9TdOsX5KuudTJr2Ic/fZ2BM3MTM8r?=
 =?us-ascii?Q?0uUGF+xdxXV0irxGm/n0j/Eqn63gYSdvbzukUVeKBcfLC7XlGI174/LN7f8C?=
 =?us-ascii?Q?hrC3oEiyxeg07pVTu8Zb/JGqvaoU4So3kk6OVW8WuwQbxd6CtXoXuj7MvSOi?=
 =?us-ascii?Q?6OTYJ9uCHcs6xOBVfKvnBAsgO55mSOklj7CKKLX8sdyApqfBBskCf+YPoFDN?=
 =?us-ascii?Q?A3RvSE0Bo2JwZf7pemdmaoJ3gihW8Nw66aS4uBkmpxELXqK/S8BKjPVMFGOv?=
 =?us-ascii?Q?4EH78Bf3rrDngwybPaowYGZNE2es7WjUYWBjwW2FZTD6FxXTlIVH5wcOTqnT?=
 =?us-ascii?Q?B289Vhk8IRpp3SKHNPX/A0/c6m1xBdI6CQa+eJDEJ1LVesPB4dt27htwSbo8?=
 =?us-ascii?Q?oZ/RJeCtsYwg4EdcHrpLMbC6BnQzYUGPywKpGQuA2rECGvTAg6KFfjSCmbdS?=
 =?us-ascii?Q?NYJ4hD1drWM8iUvh2e/w1Bf1r4cCochNv7Jz/TNrx0PDaBLF+1NMfdGKZVug?=
 =?us-ascii?Q?f7B+6qb/y9r82BGHQGL8Q0w/uadJmZ6rtQ+k71dWd1iP9gQz2QYAcScXKnP7?=
 =?us-ascii?Q?82ugjGTNRqUurHpyJJ3cIEEEL6Miq5fEkLEjuEdo3lPQBiCQKc65TgVTbFIp?=
 =?us-ascii?Q?A+0ev57I7T0MUHHjD5d+afbBEneZon1Ue2iTa3GmdUh+RduQQphb9J0swGMn?=
 =?us-ascii?Q?X+EXFSB7Ec/2eNL4f+csQ+Hg+SzwIdURE4SfHlnb4GdsP5ZyZV+EoCag2h0P?=
 =?us-ascii?Q?LU0ku77ad9D7mHU53HlTqxIQJ7GNJf9jDIK6QaPB+ZXsZ25MhbzzWpu4H5qu?=
 =?us-ascii?Q?2jItS/aSVW9e1ggkuq+2NM9rw7yNzvIG/jhVHGicKtX668BTdObkcc/h3ORK?=
 =?us-ascii?Q?nhLgUGOLCMROSUWUhv8eqthQ4o7I7z5HlYHhkRPW+rc0kmZnhCuKanmKU0Ln?=
 =?us-ascii?Q?atSTYMBNMNR9aFyon74CrrvbLBabs0PYZhWguBpAzg2JrZTJHQ3lUMhHGsm+?=
 =?us-ascii?Q?mNljKSM9hRF86+AaKTn+vjQv1hPFkCy5umpDtqE8xXRZz/qT97KzFNj8Wm/e?=
 =?us-ascii?Q?SuAq0VVd8G6zyO5kaYdLWrCrK4EJ/8hwBAGInlHEYLWxXlbnR6pXPXJSHuJc?=
 =?us-ascii?Q?D0wOm/Kgbogyt7m01xGgF9tJxtXLhhSv/lZGpoGcRIWcmCt8w+fjvZHc+2zz?=
 =?us-ascii?Q?H+Bs4txny5j1iNbLdzqBHHcLE+rnbeOLLzjPM7W2M5qVitMn03DOLyNlYh/m?=
 =?us-ascii?Q?RqoOelQUXmIKwskXMt7nYOGRcDiCkc6XGgkGcvUkWANMu9+DfUM7loH62xWj?=
 =?us-ascii?Q?TzwUk7IBP50XG8qOcq5hYzbkj4bFh7iT7u3m4uswlATIQ/t4O1QoXtiYm1a7?=
 =?us-ascii?Q?jOsPmQDTSmgkbiV+95sFw2G4rIt1r+Bc8FGMwvqrD3UwrJrY0SMjqo3XMmQb?=
 =?us-ascii?Q?c6KkGR5SYj6S3IVd+vYJGibLTp3xkaB/CGUogmGyD+zojlbqyNeh5VIn24c/?=
 =?us-ascii?Q?1z+O5FukCWxmWw/+OJ/DwBccX3GY0DE0RZap6+P0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR18MB4707.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 603e2477-44b4-4eef-3440-08dc4e856c98
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 17:43:33.8882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BVl0Kgf84mOOEntjaluzVsiGGJsxFT/ykvGKI3VOKKIArdJkfJCPhjbknU360Rm7fzYZzxY2N4Kc62cYVSgnVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR18MB5817
X-Proofpoint-ORIG-GUID: qIoDk31H0VfwUCy_w7Z4tru4jwV_p1jg
X-Proofpoint-GUID: qIoDk31H0VfwUCy_w7Z4tru4jwV_p1jg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_14,2024-03-27_01,2023-05-22_02
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VEsg0MelXvjdc+ZF+qZoVnwAnbteVbi1q8ALrGCu+CE=;
 b=oDUV0niRA+gMJyva3ycM1Y2Wdjbfg3A3j09oSMP/3LMMXTNqpX+1TOstAGf8fhCje120vyn0w1/hbabJiEVz5a0nXEPPSOAUiUYdTd2BAB1zrQczpMIxxzM91zrEdFdE2QZjDC7EoN3oqrnkc9kYWxlc+3IMwI4IM3ylKTySiB0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=oDUV0niR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 06/12] iavf: add initial
 framework for registering PTP clock
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Sent: Tuesday, March 26, 2024 5:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Jacob Keller <jacob.e.keller@intel.com>;
> Wojciech Drewek <wojciech.drewek@intel.com>; Ahmed Zaki
> <ahmed.zaki@intel.com>; Mateusz Polchlopek
> <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 06/12] iavf: add
> initial framework for registering PTP clock
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Add the iavf_ptp.c file and fill it in with a skeleton framework to allow
> registering the PTP clock device.
> Add implementation of helper functions to check if a PTP capability is
> supported and handle change in PTP capabilities.
> Enabling virtual clock would be possible, though it would probably perfor=
m
> poorly due to the lack of direct time access.
>=20
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/Makefile      |   3 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |   6 +
>  drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 123 ++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  10 ++
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +
>  5 files changed, 143 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/iavf/iavf_ptp.c
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/Makefile
> b/drivers/net/ethernet/intel/iavf/Makefile
> index 2d154a4e2fd7..06a5d2752246 100644
> --- a/drivers/net/ethernet/intel/iavf/Makefile
> +++ b/drivers/net/ethernet/intel/iavf/Makefile
> @@ -13,4 +13,5 @@ obj-$(CONFIG_IAVF) +=3D iavf.o
>=20
>  iavf-objs :=3D iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
>  	     iavf_adv_rss.o \
> -	     iavf_txrx.o iavf_common.o iavf_adminq.o
> +	     iavf_txrx.o iavf_common.o iavf_adminq.o \
> +	     iavf_ptp.o
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index ea2034d7914a..6feabb1c62d1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2875,6 +2875,9 @@ static void iavf_init_config_adapter(struct
> iavf_adapter *adapter)
>  		/* request initial VLAN offload settings */
>  		iavf_set_vlan_offload_features(adapter, 0, netdev->features);
>=20
> +	/* Setup initial PTP configuration */
> +	iavf_ptp_init(adapter);
> +
>  	iavf_schedule_finish_config(adapter);
>  	return;
>=20
> @@ -5331,6 +5334,9 @@ static void iavf_remove(struct pci_dev *pdev)
>  	}
>=20
>  	iavf_misc_irq_disable(adapter);
> +
> +	iavf_ptp_release(adapter);
> +
>  	/* Shut down all the garbage mashers on the detention level */
>  	cancel_work_sync(&adapter->reset_task);
>  	cancel_delayed_work_sync(&adapter->watchdog_task);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> new file mode 100644
> index 000000000000..0f09d918d269
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright(c) 2024 Intel Corporation. */
> +
> +#include "iavf.h"
> +
> +/**
> + * iavf_ptp_cap_supported - Check if a PTP capability is supported
> + * @adapter: private adapter structure
> + * @cap: the capability bitmask to check
> + *
> + * Return true if every capability set in cap is also set in the
> +enabled
> + * capabilities reported by the PF.
> + */
> +bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap) {
> +	if (!PTP_ALLOWED(adapter))
> +		return false;
> +
> +	/* Only return true if every bit in cap is set in hw_caps.caps */
> +	return (adapter->ptp.hw_caps.caps & cap) =3D=3D cap; }
> +
> +/**
> + * iavf_ptp_register_clock - Register a new PTP for userspace
> + * @adapter: private adapter structure
> + *
> + * Allocate and register a new PTP clock device if necessary.
> + */
> +static int iavf_ptp_register_clock(struct iavf_adapter *adapter) {
> +	struct ptp_clock_info *ptp_info =3D &adapter->ptp.info;
> +	struct device *dev =3D &adapter->pdev->dev;
> +
> +	memset(ptp_info, 0, sizeof(*ptp_info));
> +
> +	snprintf(ptp_info->name, sizeof(ptp_info->name) - 1, "%s-%s-clk",
> +		 dev_driver_string(dev),
> +		 dev_name(dev));
> +	ptp_info->owner =3D THIS_MODULE;
> +
> +	adapter->ptp.clock =3D ptp_clock_register(ptp_info, dev);
> +	if (IS_ERR(adapter->ptp.clock))
> +		return PTR_ERR(adapter->ptp.clock);
> +
> +	dev_info(&adapter->pdev->dev, "PTP clock %s registered\n",
> +		 adapter->ptp.info.name);
> +	return 0;
> +}
> +
> +/**
> + * iavf_ptp_init - Initialize PTP support if capability was negotiated
> + * @adapter: private adapter structure
> + *
> + * Initialize PTP functionality, based on the capabilities that the PF
> +has
> + * enabled for this VF.
> + */
> +void iavf_ptp_init(struct iavf_adapter *adapter) {
> +	struct device *dev =3D &adapter->pdev->dev;
> +	int err;
> +
> +	if (WARN_ON(adapter->ptp.initialized)) {
> +		dev_err(dev, "PTP functionality was already initialized!\n");
> +		return;
> +	}
> +
> +	if (!iavf_ptp_cap_supported(adapter,
> VIRTCHNL_1588_PTP_CAP_READ_PHC)) {
> +		dev_dbg(dev, "Device does not have PTP clock support\n");
> +		return;
> +	}
> +
> +	err =3D iavf_ptp_register_clock(adapter);
> +	if (err) {
> +		dev_warn(dev, "Failed to register PTP clock device (%d)\n",
> +			 err);
> +		return;
> +	}
> +
> +	adapter->ptp.initialized =3D true;
> +}
> +
> +/**
> + * iavf_ptp_release - Disable PTP support
> + * @adapter: private adapter structure
> + *
> + * Release all PTP resources that were previously initialized.
> + */
> +void iavf_ptp_release(struct iavf_adapter *adapter) {
> +	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {
> +		dev_info(&adapter->pdev->dev, "removing PTP clock %s\n",
> +			 adapter->ptp.info.name);
> +		ptp_clock_unregister(adapter->ptp.clock);
> +		adapter->ptp.clock =3D NULL;
> +	}
> +
> +	adapter->ptp.initialized =3D false;
> +}
> +
> +/**
> + * iavf_ptp_process_caps - Handle change in PTP capabilities
> + * @adapter: private adapter structure
> + *
> + * Handle any state changes necessary due to change in PTP
> +capabilities, such
> + * as after a device reset or change in configuration from the PF.
> + */
> +void iavf_ptp_process_caps(struct iavf_adapter *adapter) {
> +	struct device *dev =3D &adapter->pdev->dev;
> +
> +	dev_dbg(dev, "PTP capabilities changed at runtime\n");
> +
> +	/* Check if the device gained or lost necessary access to support the
> +	 * PTP hardware clock. If so, driver must respond appropriately by
> +	 * creating or destroying the PTP clock device.
> +	 */
> +	if (adapter->ptp.initialized &&
> +	    !iavf_ptp_cap_supported(adapter,
> VIRTCHNL_1588_PTP_CAP_READ_PHC))
> +		iavf_ptp_release(adapter);
> +	else if (!adapter->ptp.initialized &&
> +		 iavf_ptp_cap_supported(adapter,
> VIRTCHNL_1588_PTP_CAP_READ_PHC))
> +		iavf_ptp_init(adapter);
> +}
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> index aee4e2da0b9a..4939c219bd18 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> @@ -4,9 +4,19 @@
>  #ifndef _IAVF_PTP_H_
>  #define _IAVF_PTP_H_
>=20
> +#include <linux/ptp_clock_kernel.h>
> +
>  /* fields used for PTP support */
>  struct iavf_ptp {
>  	struct virtchnl_ptp_caps hw_caps;
> +	bool initialized;
> +	struct ptp_clock_info info;
> +	struct ptp_clock *clock;
>  };
>=20
> +void iavf_ptp_init(struct iavf_adapter *adapter); void
> +iavf_ptp_release(struct iavf_adapter *adapter); void
> +iavf_ptp_process_caps(struct iavf_adapter *adapter); bool
> +iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap);
> +
>  #endif /* _IAVF_PTP_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index f922e177146d..12ce169699cf 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -2511,6 +2511,8 @@ void iavf_virtchnl_completion(struct iavf_adapter
> *adapter,
>  	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
>  		memcpy(&adapter->ptp.hw_caps, msg,
>  		       min_t(u16, msglen, sizeof(adapter->ptp.hw_caps)));
> +		/* process any state change needed due to new capabilities */
> +		iavf_ptp_process_caps(adapter);
>  	break;
>  	case VIRTCHNL_OP_ENABLE_QUEUES:
>  		/* enable transmits */
> --
> 2.38.1
>=20
Reviewed-by: Sai Krishna <saikrishnag@marvell.com
