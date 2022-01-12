Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8F748C616
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jan 2022 15:29:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D62E942913;
	Wed, 12 Jan 2022 14:29:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Re4DWljgKYHm; Wed, 12 Jan 2022 14:29:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF27942907;
	Wed, 12 Jan 2022 14:29:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00E0C1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 14:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E27AF60ABA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 14:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AyRZ0mHY4Zlf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jan 2022 14:29:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACEAA60AA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 14:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641997781; x=1673533781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tSq9IXK0XcjtnX5AQflvVc5P13f8gqax3ot30csRxSU=;
 b=mpPTzIdY2m5H7zfgfOLt1AxF0iWedXWh+SM+U5l0m24a/TxaXh8z5+Pb
 kctSbEfmft1tbMNfCLKSenCVTNWN4mSlTtXPtreBXJeW73pefOjFvvU7Z
 7SIRVnoChCuhrCZrY5m0uQzqXJEfU7Mtw/3xlGyDrerck9hZ7mm26hlbf
 Kq+NOVkgMuZxrLFlNn/V7tlLPaUFWyVv4mro9ISlZDgnOFCWKvrqyMSGq
 omorNQJfzM/mClmxufRM6067SZuV+6X2+9tVdETWxQvT7BqJWrigiIGGl
 g4ceejyIRFzbfDN6gsbuJmAqBupej7mQByznEPt/HkSxc0gIKGqFENkZZ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="304483383"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="304483383"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:29:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="490750293"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 12 Jan 2022 06:29:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 06:29:40 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 06:29:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 12 Jan 2022 06:29:40 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 12 Jan 2022 06:29:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RlphVqBOwim3c3jcIGMaHqzcAdopHccXDe5CXzMZ00W5SklIiJksTv9xx+hWrGalA3uqi7ssA79LFNHVCfq+9foXFqHKaglxHXxjBEpUH1KCTEvfGgJlAXpcz+GQ5s5CTx9QYh7AjwZbNX3OHU9vVedx6GPK1ly2FwLVoQC0RsgcHRz0LjdAquKahRyoqUrKY5qjmPy0zGCna1eCMxziYUY0XkAC+JYk8pE8s8j/QPgqZUqFnCBKXOIMk7sBOePorM1p2NS/baDLkIus3yirUO1aE0rEjw75mmAjW0lfCZ2naXf8Yc949otMgiC49nuKLccWfVDhBkoacIsQiGQ4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GhzfohMvRCA0KrWhbdDui4kvYLsNe3RsMCzPTGkK8Rk=;
 b=VcvRnGaIh9DyPSAncJgxAcCGY44t9/83FrxiDFUTFNCAOkM+9tFJS0N6WWPrwGZ9+yvGuzbBWeV9eH5Xf98V/aEk4CCl3xeJ+deVhNP1opsFYqN4ZVyjZjW41B9c67g7AxAuGv9twy7xL2KQ/WVyGf6RxTmODL+oizHXu+tMQ1kmZfOYZci45B5zACM0Fut8Gpsg/+5ackOtf2wHgu4aO1uCPpj0LL5gzCZan55zbJP+XmtHwEIO+Oof8Mcx7XJOsmrEQsKjN4r2R0e2xKVGnu2sG9oi2LD/AGl360BjtUSQUJDNVv6PR+8pJPJ+VdjZsgBLFp1Fqr7rhsQafXlDXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BL0PR11MB3090.namprd11.prod.outlook.com (2603:10b6:208:74::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.9; Wed, 12 Jan 2022 14:29:37 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%5]) with mapi id 15.20.4888.010; Wed, 12 Jan 2022
 14:29:37 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
 queues is exceeded
Thread-Index: AQHX0ja69HvW7cfAq0Gh52yUGcC11qxf3RKQ
Date: Wed, 12 Jan 2022 14:29:37 +0000
Message-ID: <DM8PR11MB5621A8A0E2CFBE711F66B441AB529@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211105111700.204333-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20211105111700.204333-1-jedrzej.jagielski@intel.com>
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
x-ms-office365-filtering-correlation-id: 04d790b4-ef43-4a70-a7c4-08d9d5d7f657
x-ms-traffictypediagnostic: BL0PR11MB3090:EE_
x-microsoft-antispam-prvs: <BL0PR11MB309078BD0262D0AE7FF44C6FAB529@BL0PR11MB3090.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Fhxgbn58tmGwsClrwdZYmEhPZoeFtrqiXhsUv3LS4WGi+iW0si4SqJ8DB6Op4UCkcP4ngrEnHeWQR1vlTzaOA6AcYC9w53hHLtvFHBLl1+ZvuRJ9ggvAYOZI0O2zmCE1iv5KCW/FvVpJVQD19+FQbkDGK54sZ92ry1UhRGR/JwsM9CfHHiTcUgRCWiYHkPbocsce/oQi42aoWrU6v7YfK3pJGfn5lY1+aDpC0Pmb6/5kl685tFhAXy+bK0umjbvuks7bgik/4epgA43CVdw6v5fTZzHYqgiClwCWa/Dyk4nurPUY1W5a29rqSxCSraye3QAXlUC+D3ukgl47uPBE5gCwmr1b0yEbkGIAK/8jI6iSISF9aNqVaUFpsEO0YNBoAEbr5vk62u0KQGrTknMAviyC8iBbJq+FhnzBmKQbNIcpIkn3DWDrss/zzTmq9nww6w6TIpbNWMo93ke2wuqJ/WqGRTt9aTFNw5uosQYA8qm9keptuli/FV59lMBW5pi8bUlNH1YuHzLcrPIUSwiq1c06akZL8LSMIpYau8k6iZTKDuuDgJ/D3EbUHy5yqlmqR8lny1P1AhPQmSW/JKOx2tMDgtHcz/LnCvGa0uPK2pFKq6qeZYFrQBZQd0YspGkk1DKjlfpICkcN7uXesTTtzeYsP1oF9WChptf7bgSOLBP5t0Z7mLDArEEDKFogxFAFH962N7gZTcDrxiWHg0mRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(53546011)(6506007)(4326008)(71200400001)(107886003)(52536014)(7696005)(9686003)(83380400001)(38070700005)(33656002)(82960400001)(86362001)(55016003)(8936002)(38100700002)(5660300002)(508600001)(316002)(122000001)(76116006)(54906003)(26005)(66946007)(66446008)(64756008)(66556008)(66476007)(8676002)(110136005)(186003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?q2W3WpSgK94+HNdCnG6woCTodjthNkVAPYKwFjvM9QF/T6PFFWObVrAwhs?=
 =?iso-8859-2?Q?tpUyepfxBEB+IFO6if+QfctQhzXJ/Thr3EXIopEN9KtU8HHovGmnT7QwO9?=
 =?iso-8859-2?Q?SvGL4uzKqWA/hee0ZUCxYxYWtPDCGwN/qp0c34Nsp+0W2vRCT+o2v2ypI1?=
 =?iso-8859-2?Q?/32pbb2EM1/vslnmM46WjmlZWIw0ckq3m9YJkUnPy/aIWHKKj+TWcBrYUU?=
 =?iso-8859-2?Q?V9GZnIqrVqzGFou53v8QJjm1KIVgAumoYADO0+19cSX178pbogf90f/kIc?=
 =?iso-8859-2?Q?JOgVIIaMCihkbKVkYkEIiP4nJTOykMdDd2AxeIYRa0KTsFP51MeaY3vFAf?=
 =?iso-8859-2?Q?obDkVJ7dJROQHL0RLg9k0nDTYe+WXmyt5jGs+Tdk7x7VhcV8oaXLyVcCMu?=
 =?iso-8859-2?Q?Py40cxwL8pYz/yrgpdJZja+8UTVx0wPPd80ivSDUjgzL+L4j4khwTarM/Q?=
 =?iso-8859-2?Q?g656gVwqYpHc0LugVWkMbah+82AtA7CPByEVJYnXOxXKH5cH5q1Lzo1UzX?=
 =?iso-8859-2?Q?RudAJT0gJCL7SSQ5sFi2+hM7mlTju2dXdPHNd3YNV2x6OLNh2bxCF3DC1U?=
 =?iso-8859-2?Q?7g837LdhdI/QRRabNdiGvoI4ftGy7TpC+07UdQ3TERsi55LTGm3J+eQf34?=
 =?iso-8859-2?Q?cpfvhEe1iiKsLE7OhKOQM8mijXG8tY7zNfpoWieHvpuDCjkxr4IX+oxVeA?=
 =?iso-8859-2?Q?RGwEMc3WMjtTGrOC/5Kgqdsx8udV/i3bOnqdsvsXQByP0+OlV0AsYUYxbg?=
 =?iso-8859-2?Q?9riV6yFfj2ETNQsKmmI9Q1nEFbKR8K72D2m8ZK7JC/3fKFOvNA7wnYp3PF?=
 =?iso-8859-2?Q?DtxlKHAuJdyGcQSKiYMt+HIvFq/U7lX31dnTmRxFHEESaAQygfdnpgXK78?=
 =?iso-8859-2?Q?XC47k4bLRufM+rcWN8kRrsra2PqEXFnv/yvQq6TANZPikRVEnKH3JTLYAP?=
 =?iso-8859-2?Q?1JXhT2w96hLazfwTO4Ca6kB+k5q0wulQ3xtO8DxJdlGN+4TvhaqykuSpyf?=
 =?iso-8859-2?Q?bw7/rGbiRKhQKrb5B09T/5KUAT2X/JM94KCzIiRNosB4aDFbKnQO9nYdhB?=
 =?iso-8859-2?Q?9w4FlwXTWAfVTqM97jDnFQ73oXILcTzZvOJG3IJoyxayKLazspkFI0IGSU?=
 =?iso-8859-2?Q?2pvRRouyb7clJwXvrot3kR48kewZXaUtIos80R6KEZIR2OmaqEXrjDlRLH?=
 =?iso-8859-2?Q?g7SO8uAEAQdSVpaVLaxzBSrAZ0u39t3vKoybN3Pu9xFo1hXYWjgYLfI/UF?=
 =?iso-8859-2?Q?9P7QmM08+91AR4HK84RzkUkTUizZFPGGzDOS/IVN1iwSnokXoLCbcUJzLl?=
 =?iso-8859-2?Q?N2HYohdWy55YOJLfFTlQlI71uHGrFTyDG4NeaANjm5jdX/VS2CfkjaPQlH?=
 =?iso-8859-2?Q?7MREZJsWsIj7wzx1dDReceYTLUtVynbUUcFWJqlKfC8uEBDg0qwQkq6vd/?=
 =?iso-8859-2?Q?SGhDp0ZnhYh/sxQQFYHfPTT8hHDnHtmBJBXNcI8GAm6wH2vg6VAVQrvIXs?=
 =?iso-8859-2?Q?Y6V1Ykc4YEqG7RVcugEh3PhNkBd/taHW7BUZazt0wtAunib/uTi+w6DTAY?=
 =?iso-8859-2?Q?w2ELbXwMvr0i/I+xNNQtoCLikoVP0y4UKEJpVjIEXVnbxFBUWYLoxY6ARn?=
 =?iso-8859-2?Q?KFcHsN1+WE+CzJ3DdY4PlEpIQHm/G2cPekDCchnlqMO6bcqoAYKl/74/qj?=
 =?iso-8859-2?Q?vkKcvyKkQOmIG1sayoPXhJRi1kvnSjkL7qIVaQ4uIj++ouKvR3fDYI9xbv?=
 =?iso-8859-2?Q?hYgw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d790b4-ef43-4a70-a7c4-08d9d5d7f657
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2022 14:29:37.6479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r1d1Dw8RH6auCI75hkOsd9kNe/RCmBZpVeftPl0p+Xb9+E8igisBpYhs+EvdfMBwa+gTuk0290P7uBv/sN4ZlyiygbF3Wl3Ps5mH4JoTza4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
 queues is exceeded
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Laba,
 SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: pi=B1tek, 5 listopada 2021 12:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gawin, JaroslawX <jaroslawx.gawin@intel.com>; Laba, SlawomirX
> <slawomirx.laba@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.c=
om>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
> queues is exceeded
> =

> Before this patch VF interface vanished when maximum queue number was
> exceeded. Driver tried to add next queues even if there was not enough
> space. PF sent incorrect number of queues to the VF when there were not
> enough of them.
> =

> Add an additional condition introduced to check available space in 'qp_pi=
le'
> before proceeding.
> This condition makes it impossible to  add queues if they number is great=
er
> than the number resulting from available space.
> Also add the search for free space in PF queue pair piles.
> =

> Without this patch VF interfaces are not seen when available space for
> queues has been exceeded and following logs appears permanently in
> dmesg:
> "Unable to get VF config (-32)".
> "VF 62 failed opcode 3, retval: -5"
> "Unable to get VF config due to PF error condition, not retrying"
> =

> ---
> V2: little tweaks in commit msg and changes in the code including:
> change from u16 type to unsigned int,
> comments change and line reduction
> ---
> Fixes: 7daa6bf3294e ("i40e: driver core headers")
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 46 +++++++++++----
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 59 +++++++++++++++++++
>  3 files changed, 94 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index d7db443abeaf..88883724c575 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
