Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6DD43D5C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 23:30:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6645860821;
	Wed, 27 Oct 2021 21:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NdDfmCOHex80; Wed, 27 Oct 2021 21:30:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BC4960813;
	Wed, 27 Oct 2021 21:30:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BE741BF34A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 142D96071D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pYBXWxSUvZAd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 21:30:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59C5560813
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:30:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="210342053"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="210342053"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 13:54:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="665144101"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 27 Oct 2021 13:54:04 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 13:54:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 13:54:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 13:54:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=edUQLgGS9TD138XxqKxo8ZV8MVv+EPAo2SNETcFumBJLL04alHl1l/YrO8ntl3NwU15yZL8MBjzFF2vpaEjHpuY7kGEloVuxR2OSB2Y0NNRgKV6CO2/X8wBIzT/CNOIa0mSF5+uePH5zFYNckvntB3MLMAHWi7qLjsxgBc0FOeUSCo+G2ajh4PnivTJRYX8VmyhmHAE7kbrQKcuP2Cg9dlHn7eFVu+uL/h31nQCgEPeZtUQQA/cjLIzy5DwkvwMjPKYngodWns/oDI+8EfX6hDJeSh+DcJk/Wy+mq2qtEEZJMvuctNV3P2lOuv7kJIgLXZzw5VG0S6WYGwtwJKZw4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=coIV+kqt9YzFkjTqgYDUjXyiE/ddP0TRwYW4XoMNacM=;
 b=Yq8duuIa+zSheEeoGCtjDj/V7Dm22nuyJKLNJNLeseVg6QcCT507Bo6TZbODJ1EzCGq/KF5Zxx4SMhMujmZW8k9rqIybqfJmF49vQe/G84vJ5tMY4SKD7OBnXXUrx1LaWZqVRJFW07v8pnXwt7ZsDDiuvhU5ZnHZRP99zeiyTvq/r5E4oye4RJemMRwgBmmZg6TPnA2w/WkbxaEjzcljigP/LgxAV8mxNYp8DGQi74GyQjQuOWxDrLxEJNR9rhQJgBfp//i4DA6CXzNQcw/zEGQculyZJlwwIQHHpPlydMGaPG8Im1ws2FdKntDZPpflSDErz70hZc/knG6lvR5uoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=coIV+kqt9YzFkjTqgYDUjXyiE/ddP0TRwYW4XoMNacM=;
 b=IqvZfVEGvqvD1QRacW2FM5c5K//PuB/S/e3mVmGyTbAorZxEArpAFlqPzcaUuvbiEHDJxsFItCpRMo7rM1LuxQJTpkZ+RR1bkV4Yk+gRaz/1Ou2WiPEUniYELRl5H7+iVeYvZZI620VVTXs3OmfL1Ze+kT22UDiWNryjdfLHFAs=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL1PR11MB5317.namprd11.prod.outlook.com (2603:10b6:208:309::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Wed, 27 Oct
 2021 20:54:02 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 20:54:02 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix creation of first
 queue by omitting it if is not power of two
Thread-Index: AQHXZni/RR/zI9LmiU+V/U9D6J6q5KvoHHmg
Date: Wed, 27 Oct 2021 20:54:02 +0000
Message-ID: <MN2PR11MB4224F75E84E4AA5BD4EE84AE82859@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <1624264651-10706-1-git-send-email-jedrzej.jagielski@intel.com>
In-Reply-To: <1624264651-10706-1-git-send-email-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c096654-e37f-4e73-1e32-08d9998be858
x-ms-traffictypediagnostic: BL1PR11MB5317:
x-microsoft-antispam-prvs: <BL1PR11MB5317FE295D8F97028CB7D61082859@BL1PR11MB5317.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r8bo2LDcXnIpn35AqD1x56ja1XIsmivcxBIzC/3Z8H8SwWA55oj6ydNBzyC0EL8h5w6JEr7wIvM9Ti2ky714m2yJX4rpP+5iWpL5ahT0D0xQ1QarxIPtXAPDav3URneln2/6XQhs0jsomJWK6iPUFXAeXYE98+zIpvYH//ikfbEyzG2TJnYcft6EHkyyyTvapKwH9xiJ9b6fZDSF8N0+XBwbL5t6qG/DmzYR1yfkm3m4E1mQUZwCV9b5DLexWexu1k8e91tNiVsR+0xW3RREGS/jA/n3RVqUxsGPvyKHd33nfY2XLpHyVU19vZxK1gfSiEmyNpYz2D1g6OVBvg55LFzpNjFEj1mDkM8L5sIdQJaHGdfSHMV9E9Yf44VyKx0Fk+Shu3x+teLFAWF6QKg/puTvjEdPOewxs6SFmTHUE5S10sQXdQgU0Gezzdc/7IAy4JlJm06n0nfoVIIXQOao6Sj+iDnuzI+xOBaGfCfH5R0pk0PGMMI2QpwRw+cxeVeQrM4e6sVShwMKR1os+BWVEmu1UI86E58K1aSwcXZ4PojXndo5lnOhv//5MojMEPph08dLngKGW6CIXsCc3J5oGeb8Nlcj6Zzi7e+UDnl/pfjqawft8liMgNFrSLi2NkPRRiEQ+a1zRWe+KlbXTxmZtl54fC60u13l8x7eQVg64WTliwm+1bF7PZdu4O2RJlST20fPAsLTKYq0+pUH0P8kcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(52536014)(83380400001)(53546011)(8676002)(8936002)(6506007)(55016002)(508600001)(5660300002)(7696005)(2906002)(66476007)(86362001)(82960400001)(26005)(76116006)(316002)(38070700005)(66446008)(66946007)(9686003)(110136005)(66556008)(122000001)(38100700002)(4744005)(71200400001)(186003)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f3MUPCYx+OPSyfu1ZP8aGdEmqEc95pmfvrLgiVM3jxtGJ4hEn29VMzUu4suD?=
 =?us-ascii?Q?U8+EellIrZmA9nMAa7abS6g0fHvB5n6HyWV4j09CtDYSJyj+2snsMwRKI/Ja?=
 =?us-ascii?Q?CafYSy+XqrjkrTiJ8Dju+LzADNe0r1lpMxW8Xcs9RaSw8skrb+TqPcr2KAaG?=
 =?us-ascii?Q?YTK2UL/HYye0/lVUkCoxyAQFx52oh45Aj/eStNRPWfYYWwM5gDClLZPm5fYb?=
 =?us-ascii?Q?ZKlz6uRrIxjvvTpv+bawOA0HU4HfOoxQZxZFeVomNlk43rbAEvPx6maJLoMM?=
 =?us-ascii?Q?G8VtiG0GQHFMPWyWTDwEsua2e7Z3wtmQeJEeYnu6DqEOvFAGnVLZxCcdMeNb?=
 =?us-ascii?Q?Iz5tIpysFhnAsiz+KZ/NVRTnE7TuzUk+N1rxSodamkvzXMfrR0vpMIN/OCNP?=
 =?us-ascii?Q?mcfUJSi3wOcQgmC5HAq0EhEOeKhHh40cfFH90lnmAGrMJVlegHr1FPi+m4TP?=
 =?us-ascii?Q?Z8YFHRcT0B8JHgaV7Hi67oSJTXdXLSkxUZf8F7TfJaL6HePzEeKMDaNA//Qt?=
 =?us-ascii?Q?Pkk2xu3Nl7cdIeT8K6vHSSVrB9avGse/nOb8UGjjSv5gDXj0HCj0L1KxwbTR?=
 =?us-ascii?Q?kAcxlqgpzwR2ZSi1DYFYbRRdOS6IMqEr4jtCGf9VDwWMCHW9LhMVyLUnGUa0?=
 =?us-ascii?Q?M78LcNsOTck06An77Sj/lBvTUwSpUN9LaCUEyQpOzeTdlPaf+IF0P8lLUrVY?=
 =?us-ascii?Q?NyhmWCY6zvmkJlTJBeIp1mYfuh4Uw3Niy8LHB50u5Vi6uPkcZPYvfc3Vvovx?=
 =?us-ascii?Q?R3WAUIe2sTHLiV1zku1fE3eEnr5dZfZ0G5uLtyFxGAS7B4g1pzSuomwBj8Ii?=
 =?us-ascii?Q?9Cjc9ajzuSzVOjcnixNTiTkoJ1ANfcojB41FaF5GUHKeFYCcyy/XTXiPEJ1G?=
 =?us-ascii?Q?hvNnru8PSiGhPa9FoZzq79gdos7A3bXSas53PB3pzAIGzGLRMdlLnqH4py1v?=
 =?us-ascii?Q?2K+20m6uUyvKnpj+9oIsdhWc2eavYhdCFOQBCrqz56LO8mKBx6rx9PbRC/jS?=
 =?us-ascii?Q?YcjXJHG7v33L1zRrOOVZ7uhWkvH3XTqP3AcfqnJLPw92LRL8xFi7kroJcX1X?=
 =?us-ascii?Q?tqGbi9a3Kx2gTSj42VoanWXkZtDNQL8AGIUqbyB6sR5JMI2Dgwwukx/hJmCc?=
 =?us-ascii?Q?F5ZQ4pE1vXmNFGffCxH7lQa5JxFB3UiqXo+Znzrm727OBcpEC974Z2q3Sc2v?=
 =?us-ascii?Q?F7b2+eXbeXzmjLt/XtHmsJnsVCEp9TJwgUV2oxY7wM45e5U0dU7IxrYvPrgO?=
 =?us-ascii?Q?yiFiRe4N6NsJu2uH2Z8jpWukcgiXjvS2Sv5h0nz7kcYngGOgM6DIEBdnbnlD?=
 =?us-ascii?Q?BY8kAPKwQ1S96rhlJ++xPAL8WBeZC7y1fxVm7XW1HPrAQHK16i7on+tGiyNj?=
 =?us-ascii?Q?hKZMyEWeX/zvkKwxmgiHJNM9gNkrnr1gQ9M37uTw2EteesPjry0ZzmP0RroC?=
 =?us-ascii?Q?O+R7W3YLHeEzxsPxI8a+LUOLu3QoKkJJHfc3KOIAk50G/ieqHucrbPA0i7WP?=
 =?us-ascii?Q?PVgD3YKAIIPCaybn5LxmGDqo2oTSRvL6y5yTDGoWF+K4nfDw81VfXNA7hAeo?=
 =?us-ascii?Q?VtcnRu/VHFAA05pUE3SMRsksf38Fqfqr5NGckTsUrNarMmKBvi4FxaPSS3zH?=
 =?us-ascii?Q?4Ej1+hjNe+RMlvWd4qgQhVSi5up7ZcQ8lqGePj0OjFpOdUHvj1U2Lx+euAJq?=
 =?us-ascii?Q?BbqpxA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c096654-e37f-4e73-1e32-08d9998be858
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 20:54:02.5859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6PC019pkn6DddMs8wQTLrWaT+wMum1e8OZ9K5PLE8VclKnCrYaPSpSJxS/hLvQiuxbPHGNMMM3Xd5hQMP5nytB8rlgD0uysdcA7H0THa5zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5317
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix creation of first
 queue by omitting it if is not power of two
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
> Jagielski, Jedrzej
> Sent: Monday, June 21, 2021 1:38 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix creation of first queue by
> omitting it if is not power of two
> 
> Reject TCs creation with proper message if the first queue assignment is not
> equal to the power of two.
> The first queue number was checked too late in the second queue iteration,
> if second queue was configured at all. Now if first queue value is not a power
> of two, then trying to create qdisc will be rejected.
> 
> Fixes: 8f88b3034db3 ("i40e: Add infrastructure for queue channel support")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 59 ++++++++++----------------
> ---
>  1 file changed, 19 insertions(+), 40 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
