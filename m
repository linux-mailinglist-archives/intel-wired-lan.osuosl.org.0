Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8727493733
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jan 2022 10:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2361410E1;
	Wed, 19 Jan 2022 09:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pa-O1jsjTmXI; Wed, 19 Jan 2022 09:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0D2A408FB;
	Wed, 19 Jan 2022 09:25:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08B771BF956
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 09:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03960828B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 09:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXDhS6rpR5N1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jan 2022 09:25:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22812828A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jan 2022 09:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642584347; x=1674120347;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ek9KYb0w0gw8l/JSvoZm5C0PieuhUeAVHQB4mTINNlE=;
 b=XXj5dowro5tfsT1YmEAo9rq30r6VGxhq6A/TyfchrF3uJ1rExiJrJUeG
 QcRWquNZU9gUPwotSumzDnkVxwhJ3PgBF1FsJX3rn9Q+iG9Tmu3hqHFzE
 hQQ5Wu0Gusufi9oB12UyUJ2pGRqjpyLbT32W3e5/nCQNey7bD/yDY2hPO
 5VgMCKLfyL2uwWIdLl9+6aaQWC6IoD67wVGgcDDwsnI8dduJfn2DPltst
 Rl9iQDAmCLxaVs5lh7/yVty8cVTxFht5nAa9hNAvQ23EsZVcxy9265LzA
 u4ZTcOjCSG496+kFfxpDaJ54KZ8Oz2oBv2OrNXRVJ9Kp9tRiG5kAPEPrx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="308366730"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="308366730"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 01:25:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="477308436"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 19 Jan 2022 01:25:46 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 19 Jan 2022 01:25:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 19 Jan 2022 01:25:45 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 19 Jan 2022 01:25:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3CsKZLGP8NQtLqgW1R2Jwn5m8jiGTv9mljoKKs0ihbTCfft4V6hXBaeZ++pUWgC6ubYJgFYXLP3Xu5e/TxaRQYb+xiRQL/35bx9VyZOyOrT0OXPQ6PtymjGTPS4I+ALh/7+hD/bnWrzFlCaVbK+IcmS4mnP4QHwcS+GlCBaze75WihykyVDbIWsDCBbOU/68fGUsacyQZ3q9YzcQzXKAHt94nj/a2xDlXx78zx5obkeS+piwKW7wwXc7pfw6h7Ai/F48zdO7tGPgkm1kOqFN5Ra7g4mG5hdGsCj9Sx+aIk/YrLbJiAJQB0wTfbT3RB7Dv5c9P+PTE4DNvDo935bKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z40cqXav5kxiGquwX2aHtqDwp4h6DpO3OdnXzZCvBkQ=;
 b=YSkpY5LfhVUhukeKWjUvnDG+vEZp+eFj2rilV7FDfJHTr8NAQ0USGTiBPRwQJwGNS6s34ApvBB03rGMwVa3vQL9TrcUibSakFu/f9i13xDMwhNZEg4WfUPoXSkjeL0rEX0LvzzQpjFX/d/8BzdJ+2HzbP8BjTHUogabPFIocechKxFb5XqwRbRq0HLg2ej8aroLikp7oCJGrVklI4ct6Y24z55b4sO8lAxgW29hkZV+aAsWvZxbroOFXrbY3O7zyRyTLlMxEi/kfkE4LKG2bHyCRJfDoFIjNAWkKzzOYBxxR5u1VMRi3D3zTLBCJ4qTLm0Za1A3hzoDeBvcrfpptKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN9PR11MB5308.namprd11.prod.outlook.com (2603:10b6:408:119::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Wed, 19 Jan
 2022 09:25:43 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%5]) with mapi id 15.20.4888.014; Wed, 19 Jan 2022
 09:25:43 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: Fix promiscuous mode
 configuration flow messages
Thread-Index: AQHX7BX5AyBzqxrQGESmwWTY2el7L6xqVL8A
Date: Wed, 19 Jan 2022 09:25:43 +0000
Message-ID: <DM8PR11MB5621A3D5D03126F3BD7EC10AAB599@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211208092859.1876593-1-karen.sornek@intel.com>
In-Reply-To: <20211208092859.1876593-1-karen.sornek@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26c40e02-55fe-4a9d-7c60-08d9db2daaf3
x-ms-traffictypediagnostic: BN9PR11MB5308:EE_
x-microsoft-antispam-prvs: <BN9PR11MB5308F675AB30A5465E5779DDAB599@BN9PR11MB5308.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q4435YkQHWdLocmNwu81wmXkIH8191uk42SVzB8tDRjwq3HY2dWkbw7Z2M+CHvSJ3/5PCnoYTaXqQeXiqi2f33dJyKd75j2BlAJhFBkIoaEeUjkXcwIlAyivXgxyfHO/hVMW77KRLvcfnBK4i6IqPilDWpvZ5K09rQgxKHXPD9DwHBY2klSOM61m2Xm3BtwT3MhyqBK8/yJQGm8hPjrxF+D1xkDJNojw9UVkl9ldrjfDWBgZbEG+7jxc9NBMN9J3yNHuEpmIs5ZZy0YX/L0UOOWQq20b6ZBdNth8yRwfHs3O3jlorubya/vAzdxtHLAtw/o9kqzv1IB5rp5/0v/uDIai6ikUAnjASNalJBTxyNwRwWL3AbIZ9TJfUGUKz7PdtH3urEBAq1RCslHGnNtnX5BamaFsogPU+HAPuUZzEWig0SbFNyWKOI/Gs7oiSoMsaNyGs6LVRP5ukc48DSM1gDKpdalVqt+YTr7L24IkTaRXOymhsRjqaJ3pwhhE8XcRgucRWiHneTFiunEg8mKfEQW/SiBY3HN2eRDDH2FwA/uNaWHRgSGjXFe3GQVTT0v2240V4FWZzisN8kPToAcrBp7xHlflpeXxn8XHvnPkZ8Kg1qRjum4Nd0WunHK5TpOKiacZJ0SHOFnrMsxjX2Fdm8m41LXgkOYVeKy7ZdrLYer6X9c1iKfJMdxWY2dSOgyjokhW+wExsQjS+AwVutNWGw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(55016003)(38100700002)(71200400001)(52536014)(33656002)(66556008)(2906002)(122000001)(316002)(7696005)(508600001)(5660300002)(8936002)(76116006)(82960400001)(66946007)(83380400001)(38070700005)(9686003)(26005)(64756008)(53546011)(66446008)(107886003)(110136005)(4326008)(6506007)(15650500001)(186003)(66476007)(8676002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?c3a7tR3V2QD1zxY0sVHQzvNqB6dvVCIzlvyRkkzXJKwJXTEOkwohzRW8xL?=
 =?iso-8859-2?Q?470+QgJ7e17WKPSwhxz7sKHPgbt9tF7wDkawj/nndzJ1W4FrB9uy6uBKrI?=
 =?iso-8859-2?Q?NGha1nk4JzdNVPHgnfLc6KX20hnTcsUJxudelhOYy2G626N0K4RyDiiWQa?=
 =?iso-8859-2?Q?sItCSK28LtYqpC/UpMXa9yx/sfVDZsGqnfokxLdLae7eA+3mh4rJl91x1k?=
 =?iso-8859-2?Q?znyERHzaKu/ZxSNFosMAt6Zzsw//iDr4fCv8aERz5dbt3Utk00VVQLCn1F?=
 =?iso-8859-2?Q?7hE5GzqUfZureyT2Zz3Is2NHBd8gjGhVTyIDZ0SEqxwmbk/JdXvLsZUbzJ?=
 =?iso-8859-2?Q?BaRFFBO9xmDVOFWdpARJhyNEroyoOTOkFUAliQ4KZdYrtsMNBfiztOdODQ?=
 =?iso-8859-2?Q?fo1vE+yFOMl15Md7anRud7Pl2XozCvgaFpuUELM2gG46KQfuyNFVc2o2ag?=
 =?iso-8859-2?Q?6Ycoy8OJPc6VYg66hgZpfjzCBkSWZ1aF/+2ANltOKz2damy+daYH0n2toX?=
 =?iso-8859-2?Q?p/MpBXC+3oxwT1Xm8IqEN8QWv+CbbFEGg+2/Tt2MAj0Re7sy+YSM2Ol7a9?=
 =?iso-8859-2?Q?I457fDCzESIxiCShpaSOq1tca5sx4d3VQjEu/ch7IV32ErkWWtS0piAANL?=
 =?iso-8859-2?Q?FISfj49wVlAa7vlz6gJff9704xK6tkHWN0efR4Sy6RMiVqAdULEgRdRBkl?=
 =?iso-8859-2?Q?xKM6RrESSIiYir7ab7X/6Lv+zpo7is6+CNi1zLqLPew2+H3/iun5j1BJWl?=
 =?iso-8859-2?Q?bss2h6wA/ZHWmG8i5bjBYmZdNeJ+BoDE3i2GLBms26FrdqPZ72MG/Z8ZM4?=
 =?iso-8859-2?Q?1JwlkKo1kimRS5kipKkaQeyrLQDY8afTPgxkk47Fjaxe5UtuWMFXyTPc2i?=
 =?iso-8859-2?Q?LpMkQWgSaQ5osYt3g7c5Z0XEb6e49b0v6W20C3af0JE/bARUBsLdSOsLJF?=
 =?iso-8859-2?Q?YzDQpH0v8FgjFbqZ7oTs00H51vD54u2ODfbm4YtILBL2U7RjQMJHP16PnO?=
 =?iso-8859-2?Q?VrQeLJN/p3RD/LcGuBJ2bwlVSK8V2w0Jrt/xAJsdhlUp3NEnVIuYWAVn92?=
 =?iso-8859-2?Q?xjQG1YMIpc1w+HNjnF8D3t/pERswEyLyEcUd3Xjxm/cZYbEkV1x6LuQMy0?=
 =?iso-8859-2?Q?IPKNIziEsoCDPlt1tOKppwAIjxdqJcJ0Lp2+SmH6lEqTOwWzY+fLcJCxnT?=
 =?iso-8859-2?Q?NT0GFW7E/o/+jrcnQgbSeBz40BuPEmCSZRTbPQOY9CIzvRguzDdhQNXleM?=
 =?iso-8859-2?Q?NUelGSoDZ9DNo86yhYZJ2l7htR3AQX30ezjv4ZuRtGYJftmlXPIj5ZVu/v?=
 =?iso-8859-2?Q?iT8hP+0mNDDSfRDbvrCyQ7+gqRBqrLERf6i1LlPl/vXUbF3ZgBDZNEjNIt?=
 =?iso-8859-2?Q?yYQcmppmRj/PAjlTXOFjMdF/uBhoyTWFbwuFi0vogK5lmfaAOFkDDPYXfc?=
 =?iso-8859-2?Q?tLSbVV8XTWNlPe+tow6qr6V2/UFGQKmcCkZArYAQMGh9V9vOywai6fi4xK?=
 =?iso-8859-2?Q?eJn/V40Snq2QDVZAVlYCagRPxhJreZoBjP9BmJXIU+xdPG1iIJlruABLMk?=
 =?iso-8859-2?Q?raNZRezHaAc1WKtjbT4cSUkzNr3/4qVAPHV/ksbCdRMHNeWFdL6G2OcvUu?=
 =?iso-8859-2?Q?UFCtOz3dJWq4VjPmMyPfZqBLvnxA2akvQrPLfw2g8tP07OTZBJ4lxMtoAC?=
 =?iso-8859-2?Q?D/k01WzzcssrhzF6/gbsBSk9kgKAuG6vg8/qx5UZjznY63TNetZDJ+Resu?=
 =?iso-8859-2?Q?feOg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26c40e02-55fe-4a9d-7c60-08d9db2daaf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2022 09:25:43.7105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SNnafFHMlrmlt47rR/mmGr+AOI9GFv4O8iv99FcSfFEajIw34ibavn40j2qTilEUOLu3XkVIh61pulM8NCsS/PSgGRZBPnoMB2nX5P7i36A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5308
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix promiscuous mode
 configuration flow messages
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sornek, Karen
> Sent: =B6roda, 8 grudnia 2021 10:29
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix promiscuous mode
> configuration flow messages
> =

> From: Karen Sornek <karen.sornek@intel.com>
> =

> Currently when configuring promiscuous mode on the AVF we detect a
> change in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to
> determine whether or not we need to request/release promiscuous mode
> and/or multicast promiscuous mode. The problem is that the AQ calls for
> setting/clearing promiscuous/multicast mode are treated separately. This
> leads to a case where we can trigger two promiscuous mode AQ calls in a r=
ow
> with the incorrect state. To fix this make a few changes.
> =

> Use IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE instead of the previous
> IAVF_FLAG_AQ_[REQUEST|RELEASE]_[PROMISC|ALLMULTI] flags.
> =

> In iavf_set_rx_mode() detect if there is a change in the
> netdev->flags in comparison with adapter->flags and set the
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE aq_required bit. Then in
> iavf_process_aq_command() only check for
> IAVF_FLAG_CONFIGURE_PROMISC_MODE and call iavf_set_promiscuous()
> if it's set.
> =

> In iavf_set_promiscuous() check again to see which (if any) promiscuous
> mode bits have changed when comparing the netdev->flags with the
> adapter->flags. Use this to set the flags which get sent to the PF driver.
> =

> Add a spinlock that is used for updating current_netdev_promisc_flags and
> only allows one promiscuous mode AQ at a time.
> =

> [1] Fixes the fact that we will only have one AQ call in the aq_required =
queue
> at any one time.
> =

> [2] Streamlines the change in promiscuous mode to only set one AQ required
> bit.
> =

> [3] This allows us to keep track of the current state of the flags and al=
so
> makes it so we can take the most recent netdev->flags promiscuous mode
> state.
> =

> [4] This fixes the problem where a change in the netdev->flags can cause
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE to be set in
> iavf_set_rx_mode(), but cleared in iavf_set_promiscuous() before the
> change is ever made via AQ call.
> =

> Fixes: 47d3483988f6 ("i40evf: Add driver support for promiscuous mode")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
> v3: Previous version had applying issue
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 16 +++--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 45 +++++--------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 66 ++++++++++++++-----
>  3 files changed, 75 insertions(+), 52 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 4d62231ec6b5..14e120a82b1c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -267,8 +267,6 @@ struct iavf_adapter {


I am not able to force the promiscuous message correctly
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
