Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D53545EF9A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 15:10:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4AB540004;
	Fri, 26 Nov 2021 14:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lbPdVtHJCdLQ; Fri, 26 Nov 2021 14:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70D6E40160;
	Fri, 26 Nov 2021 14:10:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDB161BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CC15C606CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zb7J51yTc45q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 14:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C5546069E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:10:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="234401022"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="234401022"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:10:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="555330528"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 26 Nov 2021 06:10:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 26 Nov 2021 06:10:19 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 26 Nov 2021 06:10:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 26 Nov 2021 06:10:18 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 26 Nov 2021 06:10:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bN7EfntCf2N7plzxifRNc+9IULwnQ2G5zmwYuDpymtq8i7Eqtjja15lcAnuxp1CkVABpT/JsCWjskpjwPX+1QizOTVFGbliAKymimQUmM7KNhfiFzPOQasmFPlm4jekAx9s3JEJM+H33pBxpU8lJMmubKYNTWqhXuwC3xzG5lANXw24RaoqEwkJObXvvkGUXO98Kbar6dVRQ/l8yWZOiUxWgxiJ5oUa0j6O7WU3M0UKSWpLDyu8LxRPIrlYBSCxxKbt+ZV3byfJkRotk1Pr3JbcZcdNRMC0Lxc7Ynb9wk2MfmA7iwdhIGAyjvqwaqffHvS+MAA2QZCjBEgDv8YIPEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zl9XYOCvMPFl5Use2jRtDI90GZ60wldP5NDKwKKxCeY=;
 b=Fjz3VB1k4HgmbJkKm8cHeEijW64VzeZmXIzAV76H32BEkMwHDjdUgaERQC4q0vQIjMwBC4iWto5F/SZfD7vxJqR5VPrlxO5p79jatALvodbMf0KrI6/FzyDqcRO0tazPAqlg0wwseFGl+JOeNvsE/srHII6SQlL0g6vn+oT+Yfe6fDB9sf8y5DbQc0jK5jh6mfsw7K26lZ23aT5VyoueTA+JxlnqdQJZIu2Z92cAhOu9QYZUF9y1zyYRpwQJI/7ReOA0333v/a47lzVHTzanw5NoSYPWiwb7LV2rEdxYYjCcjH1wrJhrb61aDkPwMw9ZenMrmWyHpkBfotVcq7yikg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zl9XYOCvMPFl5Use2jRtDI90GZ60wldP5NDKwKKxCeY=;
 b=DI5G9d4nPIqaJ9Eg6Mk1pP0kz+GWD1gP4SPm7wX0Cmxt5FaRAQEcO6i33UEW6OUPkRQxzmJ1n6hXPkP1X0Csn9CecYi+4GJ9jvLnKaiqYpeNuV49BCu5/AFdkH3AzvC1Bn65LxVv/W3Tl8WEh9ZscPDS9Ku+KaZCTwpzvGzjSk8=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5606.namprd11.prod.outlook.com (2603:10b6:8:3c::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.26; Fri, 26 Nov 2021 14:10:17 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4713.025; Fri, 26 Nov 2021
 14:10:17 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF failed to init
 adminq: -53
Thread-Index: AQHXyyrvOB/0bKPMskO2gzLl5E8Yz6wWCD7w
Date: Fri, 26 Nov 2021 14:10:17 +0000
Message-ID: <DM8PR11MB5621BDE495A583BFCEB00363AB639@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211027120447.28075-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211027120447.28075-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 5b585feb-6031-4d44-bb4d-08d9b0e67958
x-ms-traffictypediagnostic: DM8PR11MB5606:
x-microsoft-antispam-prvs: <DM8PR11MB5606B55EE2C4969F36DA3441AB639@DM8PR11MB5606.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nf7YstgD0F4SNhrmGLcPeKCUfa4pAuA+QSV+yqHRFOx8mhnuKmrtfWftnxbCTNIYHd4meGnHjf516P+CM1kOzJyeJv4toTdFWX9MNaQ+cEFQO6P3iwedBOsaQScSgumZ4iZIGAKrlUv03vt+1Z38FvcZ9ifvRLJmVexwAMGdFhSPjoCeuCoGMdQjtvZmcQ3/AWWH5eBtw4WckFSpM1ChLLZ+7qTHnGmTRhr0TyFwcRS2p6Fc1AOI2WfQwNfnYV0L9xH4ZFOpN4gjOtzZTuWI0Z+iWY9oRLHKh1hElXcQWndNZbDAfTpvQ6MxW/iINMlABDt1p9MlCVX5Gpfhj3CNbTG4Ocpk5Z9gwvHX0beLNcP6i4pnHASlI/NIop+VDL5IS9WbKG7H76eSR1dwxcAPb8/Tf7qE+CP+zJe+kYLWlwJpzyuQxvHaLNZbFvTuJHcM50uS9GX50A/8sKFV88+XcHu2diSVJ8GRcQ/AIkgdRzpzXT+ytktNHJAY2860TR6PdTcFSh59frjdwXyl4m1KOw2su2eXaLMiWCiJIF0467eWTkifcJvHHxBqLAh3ZNUNHeWPSqm7RGl2fsx12H1G4JcLVe7CSJtEgIlQ8ljuTb4ZsXpKNv3YcuHnBBVFeOU2bvNvG+GcXmbSv1WlIwg0ECY2wv36FGsh9ZDiKQVSWDY8w8XK7FR7TFfQqVYHSOq8yUgml/FFZV/8p3epaz6Qqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(2906002)(53546011)(6506007)(82960400001)(54906003)(7696005)(4326008)(508600001)(86362001)(66574015)(55016003)(26005)(83380400001)(71200400001)(66446008)(107886003)(64756008)(66556008)(9686003)(38070700005)(316002)(8676002)(8936002)(186003)(66476007)(5660300002)(76116006)(66946007)(122000001)(52536014)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?RntR1YG/NOLqEi5mVQE1/6bLXhfxlrPwHn/S/9nbQbhuOmZquLQMijLS8Z?=
 =?iso-8859-2?Q?G6HYeK0zZB/DTxtidm05kz7FBd6Hpw5hWZK9piRFI10a2hTdAw5IpD0Nx7?=
 =?iso-8859-2?Q?cIKybVVF5vNhMWRQm3fGHZP015G755hMQ2ZKR0z0h9vR7qRC8fhthTTwxK?=
 =?iso-8859-2?Q?LUFWMttQEURirkMF4Md/TqUFCAo/KxQ4RRSA3XJdat1lB2y3kbVlk9JRnL?=
 =?iso-8859-2?Q?vXAwWcBnIGsENpt2jTvDGr9i3KeOgpYk2l7kI/MkhDnW3vpX+/zC7nUMPu?=
 =?iso-8859-2?Q?eobFyWzdsS9INAoEOclGiqdCbLIz4CPTFsW9LdgJ3fXwtQWwnVRse+4Jea?=
 =?iso-8859-2?Q?rIDYuEzToOUtBvymEQkm8DjIiAHqaz8JzMldGCF4CgNsT+ryIXa3QHsy4i?=
 =?iso-8859-2?Q?NBX39SncicI+pFLl2DsIcH+cGwvfiC4nhfYhVkXPXKmcpeVQOFsP6Nj2B0?=
 =?iso-8859-2?Q?/v6++0cMF/ZB69aX03Vzb/AWk7PJ4RBzuYrFhtx1UDw6a+u0Ly6aPKxxGa?=
 =?iso-8859-2?Q?BPTSLJX8spTa2bFRSWS8LI0Qz8VR8CBXavwrSF+2dQnHJFJ0y+WoXNSpLw?=
 =?iso-8859-2?Q?9mpMadAviVFHN3u3tFGGbB1h5bf//ymjcZ2ohqpabdxznoDD78dluSdbQr?=
 =?iso-8859-2?Q?QorO1Sj1L33LB3LyKNzBdkY8fxo7A82uhGFabGs8mjPh+gR1XcrmrxGbKh?=
 =?iso-8859-2?Q?6deN5VDHhaJjdDRUgsrdc0ND/fOkLTsISEidhOiPyDoH4iL1JBrrKHq2/R?=
 =?iso-8859-2?Q?nZU0uoASxZ45BUWcgv5bDHnxWhOmWGN5wUbjjHO0452md1ybf3AeuD8lnx?=
 =?iso-8859-2?Q?eBPaHyYuJ+omuGtgMXAuseeE9l29MSuIEdCicyclMecyI1UDKxUh5ycnbw?=
 =?iso-8859-2?Q?XmG4VMJ6a/gg3M+EL/zQlJ3m7ddKJScX27ydkYthl+D/WsM5ehCQLNiRaM?=
 =?iso-8859-2?Q?HJWoV2WXpK0mQmgt7thjCezba2QCaz4MirOTA6ldFwNGAeGFkNB5Z1w35U?=
 =?iso-8859-2?Q?DiUkdg4BO9yNn3Ve3321yvCNIWlvbtHhuaABO2HS2u4uRUbMq7UV3Lmlxj?=
 =?iso-8859-2?Q?7km9/CC2/K9wo8po2u7YHHRYorPfukh29Obi+jtmOxf+klsgJrfhEcg52z?=
 =?iso-8859-2?Q?mg07j9KAlZI4+9lwXCYHHYRMwb6on9K6Ptpu9RwGFqv9IrVUvCTMIfRYw7?=
 =?iso-8859-2?Q?+RD9zW4Rf34EcJZ5Jq4Gocsoldvv41KkhT188/f+hKg1hNPfiK7oUReqdS?=
 =?iso-8859-2?Q?x+m++pwM7oCpHKmivgDWIDylHmE8AXMuJz4IUGySHzFpLM5WFaqNXlfseM?=
 =?iso-8859-2?Q?ZhKWJwPlg2gu979oFPDisGJ17lXgeRch/6XHY1+mfz8pQDrs0zJ/B/xHPH?=
 =?iso-8859-2?Q?aOQ9A6OX20nxshP1ssj9LgC5at6Dbm7v4g3Peva4WObVa09Gu6SDoKcin0?=
 =?iso-8859-2?Q?9p7xWMzr/x/okVr0ZQZAQahpOEGyilrqlskHnFTgxue3ZThwg577qV+fsl?=
 =?iso-8859-2?Q?Cv3FJySZN6HAdR7RbyPG57+DCjMm7f7eDhzyakDIgxwi+5Zc0erFBw2oRj?=
 =?iso-8859-2?Q?DNFLtrhBvoLGVERlEhvUMldLxE7Q3l6BLhCKQ+ufsnPBBgYH+ODEP43rzb?=
 =?iso-8859-2?Q?60T7/Os53OGiaFyf3mXiG3WB0ba+PEQTJsB+KcrVJcULD7ouP29+TJtpuG?=
 =?iso-8859-2?Q?3UuMjaBAVxSwgfnLDtdQ3+SRgcvGVYBPpz8t6OiUs8booe5u827xPh54Os?=
 =?iso-8859-2?Q?SGzQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b585feb-6031-4d44-bb4d-08d9b0e67958
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2021 14:10:17.3923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pP2bkfSU3Z6QyrXVu5/wyjN2bwc8DqmBAQoz0sN78ilf8tKQQoLa8Bd/yOfpZqgFFdQv+g00qK1J/CMGXc4gJvl2NMX+VMRH6PWEk4XqvCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF failed to init
 adminq: -53
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: =B6roda, 27 pa=BCdziernika 2021 14:05
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Zulinski,
> NorbertX <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF failed to init adm=
inq: -53
> =

> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> =

> Fix the problem with init adminq in VF reset handler.
> When the PF finished reinitialize VF resource set VFR_VFACTIVE bit in VF
> Reset Status register. It is sign for VF driver among others to shut down=
 and
> reinitialize the admin queue. VF handle reset procedure is sampling this
> register to check every 10ms. PF driver give up to 20ms to VF reset
> procedure. For a single VF reset it is enoungh time to do it but in case =
request
> VF reset twice, the first VF reset can be not completely finished when PF
> requests it one more time.
> Fixed by adding additional time for VF to finish reset procedure before
> sending next VF reset request by PF.
> =

> Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++++
> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h | 2 ++
>  2 files changed, 6 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 5a488ce..ec0e52c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
