Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D090A46B9F7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 12:19:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A613404AC;
	Tue,  7 Dec 2021 11:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2EkUb4t9d4Y; Tue,  7 Dec 2021 11:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BA964044A;
	Tue,  7 Dec 2021 11:19:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04A441BF489
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E192D401CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oLm-zEJ2oDZT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 11:19:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4EAF40104
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:19:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="224424047"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="224424047"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 03:19:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="461226997"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2021 03:19:27 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 03:19:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 03:19:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 03:19:26 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 03:19:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lv3XZx1n6ujxk0uF0XStqfecvjpiAM168RDorytQGNx1Y3KvvbZCDg/3d+qh45H4sgkdYgGLFfn3KElT5XaVr/5ytlmAckJjbuU/WK8TMaF33eIUkzV7vQ4yczyF5n1xBxJn96b6Y8/+KZ5KuN7In/ngP3zHAe4HHmDE9GylcEBDBDR1PSzLqKdRyCeckM0r7And+v9v8/UHyU7Dl3P5YJecqIQEGSTyha/HvTgbudQ3N8wMJfOCl0Jb8T+jobvElt2w98QfeklpW7fA2M0rrNoDXIxv0K38xHL4vxkE1/b/ZlO1brag7JBcFeTHy5LqceLk4pT9E2HTP9XpRoGstg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4HYtEKoQuqTDkpOmfJkTwYwnqtBuMs3wrXlSDafYY6c=;
 b=VOgUrgsBm/saOdmu9bFUcGR3GxjXxWDd0+Jp/7gXAlEJKy7kE9+5H7NUbzJYOT/MHnnGZwnCdOgx+0pk1v4TMaJBe3bcS1Ya7bcLoLpRtEuCHDgMbmNybxbXICptKcwna9rfNErMKaPE3ZUXdnjma0r3ZO14TYt2jWtrzyCygKy0c0/1ZcSBs7tFrE/xnCrwcYsVNl8Lc2s0g9kkEkrS+EGWCgPP63v0vSMnNIHZ4z0AwMIcpgj+J2tk4kiyrL3zf206xIhjnFrIcyrSr4dwIAIQSa86Ul0mJ3V086ftbVQZf6K2Lmp20br/UpCrMKblZZAjP1KU6x8JoQA881eP1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4HYtEKoQuqTDkpOmfJkTwYwnqtBuMs3wrXlSDafYY6c=;
 b=iJmI3kySHbdZG8Y38Zqke3uiLbj90Y6yFp4gdCsZOPigmFd6djHBxB31o0ozgTFjUpgbdsVQPTnUt8CrokvmNi7ApOlrRaTjnpMKqqLZv3kiXF1gl2fAbVtHw74GGJPNlRfx7AXhWSoVU+5zS1EJZx8reVgB94NKWk27efJIj8w=
Received: from SN6PR11MB3374.namprd11.prod.outlook.com (2603:10b6:805:c5::21)
 by SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 7 Dec
 2021 11:19:16 +0000
Received: from SN6PR11MB3374.namprd11.prod.outlook.com
 ([fe80::80f9:777e:bb24:8db4]) by SN6PR11MB3374.namprd11.prod.outlook.com
 ([fe80::80f9:777e:bb24:8db4%6]) with mapi id 15.20.4755.021; Tue, 7 Dec 2021
 11:19:16 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ice: safer stats processing
Thread-Index: AQHX2Cq2kxuNn+5lUkOAtMhgykUCKawnCBAw
Date: Tue, 7 Dec 2021 11:19:16 +0000
Message-ID: <SN6PR11MB33743254E447455AA2E9331FFC6E9@SN6PR11MB3374.namprd11.prod.outlook.com>
References: <20211113010602.795866-1-jesse.brandeburg@intel.com>
In-Reply-To: <20211113010602.795866-1-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df0eccf5-6b00-4ea3-94ee-08d9b97367b4
x-ms-traffictypediagnostic: SN6PR11MB2703:EE_
x-microsoft-antispam-prvs: <SN6PR11MB2703683FEFA7499E0684325AFC6E9@SN6PR11MB2703.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zb6wLyi2LDRVp68b+3BVLpQk9K5Zc+yj/nIyJh12FAboC4pM3dwBgffHS9drzfsEAV/UQOcnWKqDgwo1Vqt3x4WOu9WPGG5UDNX2n2hQVI5WMiR/6V97ssRwpNQINocbbUhmV7DPlJDjI+/rPh4SwxW8I2GQFSC59r2WLSqkRmGgdVB/p1XS1AWeaJWPc8GMU4PjjkEeKBsVARZbGxm+QlaVJuu2xumhrCq33ep9QPteTXZXfz1+VClw333Ww9UpEWRZJSOA59xe0/mNFPMBNq5k41mDJEg0RnZz8Y77LQLGGE0FvgJlaRzNx0FByT8NiF+rFG58edhk2mGsTywFeLdUt/VLQbFRu2sTKGNxhT1UiJGPPskggXc/AxrUDgCscVQcQuR6hvW9b0xzhklqKDfHPKu2kpvx30QR3FzzPKNaE2LxzlMA9EJ+uKcZDrQ+hb3IImQoe7lBtSyoGUGLiTKPym1MfTY8ZdBjKdiyhlKt/lxA1HVjfHZxSRtkEupX1/mF+hVRQ92lzN8yg9vyqm/ZHbcZjbxlwqdSQKqkdPl34S6E1OvUhpYKbaKhcPd9UtPMZO3IL3gOrGIOfC/ONAC0RvNSOOYvqv7FSnPuzAutig9fqz+sPcy8DX1Fm/A/FZ1r8htU9IblrTS88ORiPhorHo9vXdUD6MrKaWcp3wRK4Az7haltJFsw3SqvBoyAXWpCNlsOlVNY0lEkxC3GSw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3374.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(55016003)(33656002)(26005)(83380400001)(52536014)(53546011)(82960400001)(5660300002)(9686003)(2906002)(6506007)(86362001)(7696005)(66946007)(8936002)(66476007)(8676002)(66446008)(66556008)(64756008)(508600001)(110136005)(76116006)(38070700005)(316002)(71200400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jf+g4JFrU65DOPe1mhSD2anttRvZMKaLRLZF14plJfNagxa1HZ+WmLY+P0CM?=
 =?us-ascii?Q?dRH1YKBlDlKKXRgQcB/4GxyQBBHax2IlIgJ/U6uPAp9/DWVoIR4PcOWD6y15?=
 =?us-ascii?Q?1pDupKT4e+F6fSg5O9G7mvulVdlmFoPgLAgt1o1Q2snxROH83ld8D2IeI/M2?=
 =?us-ascii?Q?1rBzFMLzNRc8ElhPoDG+whigHatUaksQfnE8yedmagBOT/1BCgUgCuj2B2MB?=
 =?us-ascii?Q?JfvFKNMAORR+g5aURjPlUISSu0vGb5KywtVnTtqaL0n4HTmsg85YoYLi+3qB?=
 =?us-ascii?Q?2IOa/RAxDbKh8gOPBnZfhmupuCtXf0IGSrBjkK5mdpL7ot7WOjwaK60EqvsE?=
 =?us-ascii?Q?Eik9HTzog8zit4RhupE285RxpB/nWPZLamwzxl+rptTMTmQ+6tZ2trvZgDbC?=
 =?us-ascii?Q?FJoJIVy26SWX0p/FKAzMHaVx9SX8C8O81+5M82ZW4jGW2XRfbDnA/44hP5zY?=
 =?us-ascii?Q?BjRuWJEbHO7R1uurwISItmU5UMh+mMxwTg7t4/XqH7Qc4oDSFa6Bq/CMS+dV?=
 =?us-ascii?Q?a4DXzs5kOOc+lCCmoC4RrrNzLuGMC89obT0nIe0zTUIylNygpOsXuAxumXrq?=
 =?us-ascii?Q?05ctYKwDctskZAIU6yqbIhLIuuODDqkkrD1ZFyTYeNFJaG0cBtvSzhc2WeN3?=
 =?us-ascii?Q?NzKWKE6pyJpnqPx8PpyJugb2fcbrvQ+37V5wY6ndDjTn5vrbKvopQaNfzDl5?=
 =?us-ascii?Q?1NfX1rQrOl9O2XUKcbj0if3AvCATNIYO2AtmVVFd8tdZu+XVo47FHdx4I3Ht?=
 =?us-ascii?Q?QKwoBK9UyiYLrfwr+kz/zcguIAse9mskLwQbtaRGGMFWQeuPYdwC9/PBRUCX?=
 =?us-ascii?Q?YuRR3xpt/ZTkA1R3Tf3jF+57ynHPgHQwZpbv/H+u4kCAj+d0tU8c436vZc4O?=
 =?us-ascii?Q?qgDSZ7Mt4AlUZ7bLpdvXAUZ1dNl47X5CQVrWtm9cVKxTtTatjmvImEs9SweX?=
 =?us-ascii?Q?EecsiM6vYmqhgXThfosFmvvz0CmxF4BL2Bp71M/JIJl5PnY6Nqq6Hlz4vCn9?=
 =?us-ascii?Q?LVdx6AElYejiRQ/lFttbXAqZcGjiBJbobEUssWq8Ul9DI1qrkWjDCLn/XVBw?=
 =?us-ascii?Q?mAEBjkqsZytjs8bYYFKWzggBlWaOOyPxU19gnxzecAI45nrgWaQOVUSjklIl?=
 =?us-ascii?Q?A0cAWH/BmMdjXaKSfggZfWQLmberq8Z2XGSxa7wqdx5fDu70FDpwZmGpE2Ob?=
 =?us-ascii?Q?qGzlunMWxWeouQ4u57KgMJMWDE0vm4ku6q+AYil8PZRk3ylCTAAS/v1Do01l?=
 =?us-ascii?Q?1JV5bIXbLbTn9ZXdIReO5FIcXTmXIx8woqLlEOW6NAa35WCa4ealrxewdg4b?=
 =?us-ascii?Q?H+qTiP0etzvc0R1+JH078GtPWQq0DzvRDduRzJjkWtebV54+kncPi5mFEpOe?=
 =?us-ascii?Q?oRX1tcnuEAG+TPL2i7I9PF8cv7NbJaT9NyZNDNT8fZ2LmK2M4tSuCD/LJwG0?=
 =?us-ascii?Q?C5kXEzpfwEEURyCUw9VM7BJbMR7jwFZiPBi1qsBPxsVG0OoBPHnrj9hH12yU?=
 =?us-ascii?Q?uugzB52/2Ww0bRu/aUxIsIXMhFE7JtjSfMAsO2jg9T4z98V0SDs/1qZhyKRd?=
 =?us-ascii?Q?0FJPmNjsH94y6s0TZOJRMm6nIunJkh6EryGwjYbXHkNAN8Gc4tvzWLPD4PvN?=
 =?us-ascii?Q?fQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3374.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df0eccf5-6b00-4ea3-94ee-08d9b97367b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 11:19:16.1371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fov9ywidjnLORm9HEJX285l3Q1uD6o94D5OkIiev9rqKJoxOxBzehPmNdjvjcxo4LRzaVxIPfP6yvQF/yx+pSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2703
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: safer stats processing
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Saturday, November 13, 2021 6:36 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v3] ice: safer stats processing
> 
> The driver was zeroing live stats that could be fetched by
> ndo_get_stats64 at any time. This could result in inconsistent statistics, and the
> telltale sign was when reading stats frequently from /proc/net/dev, the stats
> would go backwards.
> 
> Fix by collecting stats into a local, and delaying when we write to the structure
> so it's not incremental.
> 
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v3: change to use GFP_ATOMIC to prevent BUG due to sleeping alloc
> v2: changed to use kzalloc instead of stack variable
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 31 +++++++++++++++--------
>  1 file changed, 20 insertions(+), 11 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
