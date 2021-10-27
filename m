Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F2A43D3A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 23:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8657640594;
	Wed, 27 Oct 2021 21:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Ln__qglMQGU; Wed, 27 Oct 2021 21:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 797D7404FF;
	Wed, 27 Oct 2021 21:14:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0BC1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D54181A46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4r-Uvfzvh_Vi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 21:14:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 984CA8102A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:14:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="253819993"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="253819993"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 13:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="486844136"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 27 Oct 2021 13:52:00 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 13:52:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 13:52:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 13:52:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1VjU2dufpt+HrR3zbIVxgDJpncshPq5FjLylQ4lsPy/mMSfnC4BnieNkYrX6gH6SbfLFAq/CiwCX7Zgmr4wNkSNRjI8SyTGP8wNH68xQ9SNIEd812zZLphu8gBEviB/xsAp2uVSA5ffKmJiiH73KEpqo/rYf5TGq8DLZzGS0Wyaydv0aAWQg3Twrm16Z3UgaLxX437kkr7Od8NrHlSOFWJEV/jY/xy0zCHS134tPqmaI28j4zJ+2XY0OhQZ/C/G+UosyQoWMwaXkz+1SZHNgZkt0YF9Z9RGW+SLzznESeq6jKos8l6nnjvgvbyTjVsL1l9QolZH5XnvWXbzAMzZ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tU/uX0P5uqOlDjC94IXZJh2yJw8rZpVZZoo7R6kt9cA=;
 b=bshyKcE+qc3jDI30nAk0wnrhQcu+z/0oOVsDUZq5y3+N5KZ8yi1QifmvIXhuR6qqVpf3QqHB6igcl9UDOzhB50X2MXm5P509AX2mBH5uT917nCmYb1OsVdELX2cnkh0MnoT1CVsHf6loqs1WtkHKLDkV287hbN+e+StzhF2XUeX4nqY8WKt6j55cnUZp1XWRwEEoNBNLZTVtdJ0VbQpymXj1zbHf+8Ajl12f8GlDvMQQ0RCAh3buHokFAe2SzWlBB1b20VrDgmsy0vIuq72izBxf9QJZWH8x2D4vXc5LoS0Q7GxFvvvdw0DnJpFQBsUVrhHJkLWkWgjyaivvdFF0hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tU/uX0P5uqOlDjC94IXZJh2yJw8rZpVZZoo7R6kt9cA=;
 b=EcM8FOGsH0bObezh2mOJ3dhfuz2WSDTZW2/6FxVHnC6dYO2YYMREXceNkC93CGSwTXD627I4vvq/YKEdDxRSvf50UPHMJ7Io/dE9y96iSZ4ZFhbWpZOsWQwbPJh9TE+WDnZyiMF4IJstu9blPwr416aX4dISjgFpFqaI64oqnsc=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL1PR11MB5317.namprd11.prod.outlook.com (2603:10b6:208:309::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Wed, 27 Oct
 2021 20:51:59 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 20:51:59 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/2] i40e: Fix ping is lost
 after configuring ADq on VF
Thread-Index: AQHXODXb1uRdKKQPO0SpDGehP57ESavoeGxA
Date: Wed, 27 Oct 2021 20:51:59 +0000
Message-ID: <MN2PR11MB4224574EAFC486C9D099D0B782859@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210423114326.22393-1-eryk.roch.rybak@intel.com>
 <20210423114326.22393-3-eryk.roch.rybak@intel.com>
In-Reply-To: <20210423114326.22393-3-eryk.roch.rybak@intel.com>
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
x-ms-office365-filtering-correlation-id: 39244319-8c4b-48b0-b2d7-08d9998b9f0f
x-ms-traffictypediagnostic: BL1PR11MB5317:
x-microsoft-antispam-prvs: <BL1PR11MB53177B2564BD8FE5E4AD2AFC82859@BL1PR11MB5317.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qw6tOnY/kc+l0iVmhzlon+q2hQ3Gtrborvj7++w/EfDplz8PFaiC5PoDhbWeyFkaUd1pXPYwHsXWRAUTzSrunr+oorwESYQ1ZcUnDe3NFj31sZRLFMJzhX9RzjRgczklIh5lvKu4p2ALM5ABx0Ai0i+YWffOJkGnalQLDivYo3GeMkooD2nmQF8kpQfbbgE34Npr4I7uYRVkrld0tm9HCZvI1U2S2fuQDIM2vKPEl2S2iUwa622X70RgVrqd8YRw4XENaVEpozkuZ2rKQDi3I+JkUhF+qoopTyLfbG5guAcU1JBis1+qc1iLYtwI6/0z9JmyI/94XeewPjkSJ9Bt5wyziwOdbUxAjT7ZZHgMTOgeNkbvTih5eGzxv7/mKqxsdT0uhOAT3hb+vYjawYzcq7wceed2A3lCBo6FBTUBRgoKBr58jtWbtYHXMA8NIe4SCe32Cws2RxW1I8XGtPASmNaRjaNdt544J5YYGLTCqGHYqaJDSQsI7FC7QHA+AeZrnRpjUSQFf9sgiFI9eSH8miUhLl3FC/zfIt0aFPfU1uuzzdhA6YWJoXY3Dho7qD/VZf39L6/OhS4HlYx4jEiwcKjoQvZAUI3f+mebq7+v48b2CKiFH2ZeJeV/9J1sZ1mJMUpjDGsMD4pjmK11IiTFOL9Fpu0kWPklteGIT0OgPjwfdIBnHfKhB7layxDc0V4A7D297uFcLh92x7vppYUohQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(52536014)(4326008)(83380400001)(53546011)(8676002)(8936002)(6506007)(55016002)(508600001)(5660300002)(7696005)(2906002)(66476007)(86362001)(82960400001)(26005)(76116006)(316002)(38070700005)(66446008)(107886003)(66946007)(9686003)(110136005)(66556008)(122000001)(38100700002)(71200400001)(186003)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xV5/bwxUyQcjVXmqv6X9fVOQvX+lBQkMd52kQRsd4IbG6yk8ha8THHD9gsxN?=
 =?us-ascii?Q?AJtGc0+k0wEbBe/p7K5BkpLAa0pqnFzCEHDL3s0SjsW2bdXVajlYiX8ahaos?=
 =?us-ascii?Q?Mp/xwMs52gOqgucm3yAt7rEmDm6qTVuRiYgq7Jzx+ChKMMtpiE4Ce6iO15Ui?=
 =?us-ascii?Q?41qmx/JiLF3fP61mBJdlBsy89QzGE+aJbf1Il5TZ331fNIabXb5WEvRj0hyA?=
 =?us-ascii?Q?WqWv2m+lVA14sB5yCHLV2DswOV/0JAQ9o8xgQ5k+fBbyB12fyvf6Gl1Uzmu7?=
 =?us-ascii?Q?SfAAHh5EkymAXLT1DAK4CYNL6kr7qf5DJ+kVWv86crAO/Q5Ylmrv2A3TN1lC?=
 =?us-ascii?Q?OGyFCCzazTCdpQPc2bmgFANNivC6WZs7Xaz1VOB1hTM+FyykVMACgzEAR1v5?=
 =?us-ascii?Q?Okc+clejc/4t8BMhYAkYXGGBsbVH+oBE5zcumRbV/llQNftg/sPyViMd23kA?=
 =?us-ascii?Q?JGwybNyjwBzpzN7ALzeb6Kxutq3e7aLbg4KnVgKgC338/htG+61OWPxuIdSz?=
 =?us-ascii?Q?fpVREVKAtz2GO3OH+7Sc2dZ60i1999PwzDZYrIMVEm5m4x3g/8QGeHrmzgvS?=
 =?us-ascii?Q?1w/k7RXX2jn5Z1/uHvNtBJT/SjJszqM8y6zMrpfTXiDneV88y/+mGwHlGBSV?=
 =?us-ascii?Q?7xyjSJFW5ZoewOUk1sy2xQ6QYq2ZkL2j1A96eGGskSxQf/nRXwuToK/myI7d?=
 =?us-ascii?Q?kj1FGg7deKgFChu/Y6/NRb/iKKEWDk6i6T9YdEyafc6Qo96DDZYCoxVkZxw9?=
 =?us-ascii?Q?rayESXrCUQ6P9pU38vipn023uezCNQs+vugXXvqVwb/S3ukmwe3qxJeI1Dho?=
 =?us-ascii?Q?tA/V/3EqVzeSUctRcBERQ6IkDS2mg2YQkWOw+1B8JkK/L5weHeVZEz16DlZ0?=
 =?us-ascii?Q?Snk7AQ+S5F9QXWHLdcIeF085WLnkxIuLrLEp9AYNaBdQSkPanasYxIGxqaLt?=
 =?us-ascii?Q?vOmZzgnqDNk0naHSJCh3xScR76jWFZ6K/3U/oMilTRmm0D7ErvKnGSSs2k+0?=
 =?us-ascii?Q?AFuL6R5ULrd3acKmkrnnzrClhE3apHsGJfMVAwGACrL4kU0t+VtgtpFnWgG7?=
 =?us-ascii?Q?w9YckCFfFdXhzTvcN0K082Oyo0e9tl8I15Px+s4yg3JTzlXlCKEcAiyPO1p9?=
 =?us-ascii?Q?sLe758xGtfDrK3vlgqELp2+Xym+xdqbYevvesYhLjXRnjNfrevuQ3wha3c9f?=
 =?us-ascii?Q?IFgmL11LkKY0tS5AsVNu9L9b4WaNAc4IEkr3yZMTt1BUFdJb64ikc4Wc1uvl?=
 =?us-ascii?Q?Fw1x9wSvwr9s17dc9hxs/OUFUzoEzHexX8ArSU8vOB1aqaZvyW/S6gga2+Nn?=
 =?us-ascii?Q?LTGTfGt2wKVDHS9PD1KPAW3i1T/DG/brxG+yNgKKCpJ/mhh1GevIvM5ns05J?=
 =?us-ascii?Q?N5/YybEJV5gP0SOxwXQh1mLN89QwHKLKIx7U2wpDYHlcpYwsRHx6GSXiWhUk?=
 =?us-ascii?Q?7BP1ZJPpiiMRa/FNjZk1toruKvwzc6D4SOgSLmJ7jl2GmVGfX2fTb9O2JNZn?=
 =?us-ascii?Q?CSD3yyPdaaxvtIKvAzEeBBZwO0Ywd8YTf1Ion9KP3unmUJHfkqpqVgT5BbMq?=
 =?us-ascii?Q?ZfGUtqZcapVcWiq8eRDrXMZxtI+mfL8Md8yKvY9TkBsDswK4NdA0C1EUuya1?=
 =?us-ascii?Q?knef9a2Nmm7xF6f6Kauh8Gm9BvkKftVBWvLmp2z2XdS4Mk6esRt2uzN20Fsu?=
 =?us-ascii?Q?gDiACg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39244319-8c4b-48b0-b2d7-08d9998b9f0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 20:51:59.6546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D3oCqqhQuLU73OGTLeSBcv39snouzvSJ5C5WuQx6pEWGZ+vOF/0Wek+fIIP8ZLZZ9QN5KZt4+7dRymB3aI5SlsTgaBxut1d9WT3fNPVsCIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5317
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] i40e: Fix ping is
 lost after configuring ADq on VF
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Rybak, Eryk Roch
> Sent: Friday, April 23, 2021 4:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] i40e: Fix ping is lost after
> configuring ADq on VF
> 
> Properly reconfigure VF VSIs after VF request ADq.
> Created new function to update queue mapping and queue pairs per TC with
> AQ update VSI. This sets proper RSS size on NIC.
> VFs num_queue_pairs should not be changed during setup of queue maps.
> Previously, VF main VSI in ADq had configured too many queues and had
> wrong RSS size, which lead to packets not being consumed and drops in
> connectivity.
> 
> Fixes: bc6d33c8d93f ("i40e: Fix the number of queues available to be mapped
> for use")
> Co-developed-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 62 ++++++++++++++++++-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 17 +++--
>  3 files changed, 72 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
