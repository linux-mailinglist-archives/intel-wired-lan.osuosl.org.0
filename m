Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D21A354A89A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jun 2022 07:13:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D2A34097B;
	Tue, 14 Jun 2022 05:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jezVRBbkg3z8; Tue, 14 Jun 2022 05:13:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12AC940925;
	Tue, 14 Jun 2022 05:13:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E1CD1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 05:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 496D660BAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 05:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BY1do9sQiCmh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jun 2022 05:13:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3286260AA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 05:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655183624; x=1686719624;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lx+C+Tdtmnkj8QOdqjgLVNKIPEFWCrepSekCs/E+En4=;
 b=FTbvE/d/AFKgJF/3kDO6TJ2GVu4a62hBoaAE3ZVKQ2M2xfC2dxC8YSEG
 pEPkqsGJztCL2tXpe9x1fN40TBUGp3N5uNpDK8OvxMto6j22D9OmJGIVc
 ACfr+9Ly8OYWygt/1I6ieG3q0tIf2sk38lInlI6A5ROFLmHe1St5dcnv9
 m9tw2AmoH0ipFOoioAMz0xeLcV01LrJxdxzWFCNQvvovpTrSxsBG8LYen
 Gld/rZ7XwkH6cdccrh4pceGMhLJmjHxbrQnSDDO1cHpj/iz1ghUBqPSlU
 n3DTZ6Ich12+wnHP+iCC+tK4dEs6b5y8fxMp3ZDE6nlYqtnVfrr4U184/ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279226287"
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="279226287"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 22:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="726627782"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2022 22:13:43 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 22:13:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 22:13:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 22:13:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CersKEAXfxv3Wj55AnXmwuXvFukfGhgLSfVZTpYh47i289JBuiImF/QVi49fLJbODoW4gBIjokXdaaKTcVfmSEwOjv+3EnN3ggkV0sDbS8g4ozEMiDJc1yljHBsTGeu31j+tFx8PRIwnnZc2ZrDks/kB4sv+9RfZHH/0kFzB5QibWSTVzQgv2VsUjdGZefwIiQRSlCngPIaYY+LHhSIKSHzXPnIxjwwRlQrjIU6R9xHK+QLkVOv4Yn5EdbD3mrIfe/RBOtHDgixc1N5VajVQ4+0Aau7+gwUa/p12aZb4BU9VFIM/3Q/wFZmLyENi0rSNk+To9N+WTsD7IQprfMH58A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aNV5QNJRet2MIokt1TcRo+Wa0A8FHq1mlanfb0Q9wxc=;
 b=Q2snPt6kf/2R2yhrD8nHCDYuXCK/szQA3RYJFNcXMhPXnxFrJIWQajmO938xO8HNukrRnFdJjq3xx5+PrJxY92geu58UX4rNiFzyuAyna7p4GJqx97I3kUr18vH1M8asvTFzWrsKdbTcTPLS59/TJ6pncbHXfY/IY6pRXpXtBKdCN6ZQP2REy/bt53xXJuiahbOIsG8fn7y/If1YF/+oVieXRweyE9LBUzZXv14P/1b4kzc7/MACjd7HbAHshZ/QsilE2kJ4b3fkVGKsRME0oDAz9ATEfUfqijlnOi8JLJkM0bKgAtAMtVmgsgFsGHXA7RmcOYw69UqjCI77vrroMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BYAPR11MB2549.namprd11.prod.outlook.com (2603:10b6:a02:c4::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.15; Tue, 14 Jun 2022 05:13:40 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::54be:fe05:7768:949c]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::54be:fe05:7768:949c%7]) with mapi id 15.20.5332.021; Tue, 14 Jun 2022
 05:13:40 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/2] ice: Fix queue config fail
 handling
Thread-Index: AQHYdmjff2Ds/mBnKEWNkjD0JWARvK1Obh/Q
Date: Tue, 14 Jun 2022 05:13:40 +0000
Message-ID: <DM8PR11MB5621F05F3B253F743B350186ABAA9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220602100904.2603-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220602100904.2603-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9241c22-9005-4ff8-4ac4-08da4dc4a533
x-ms-traffictypediagnostic: BYAPR11MB2549:EE_
x-microsoft-antispam-prvs: <BYAPR11MB254997ED656A9B12DBABA041ABAA9@BYAPR11MB2549.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0f8TZbXHxYtG5aFtJY733VwmdG5AaeKWXtsIjfnYnChXpPdra1mEWSuw84OMXIhW/n6N2SrZVPbWxcrkHi7eXidUjxp3P5MpgCasYYPPWxtGI+pVET8id389P+3swQ1+uZwVR0UF0k1419HbWzSzeIHfg5naRPeZzl0yLs86gqCmzVCXF8hlWtOvJACj+sZBN8SfmT39N66LZvcNApiSVaVfUgBFULeQ6k/uzS5qx8NrYk0U0uop3vhA9N1yYw6wl2yODJh8sZ99+vTMrWDdP3mLrO0qTHtUgQoDmk1A8mUnFkcbAArM/InUxH+Q+4rA31Va+Oxu2ybiFEIvuoH+u5Q/tJrY7Y7rl5ahTA+Z5ZQKZz9yynq8aAtolfIDMO8v1K+jQlzNKxcZBN+IPjQHB110uZNu2J91lF1xpMgmpHkqSYjaF0gfhNs+gQ98K923D6VoEyqLYHWWf6DajNGq0qClEVtVTOOzZqZSEKxmVGW/398y1h6SrwyNUCBD6cDR8+kzYxgVsqu6rj4WPOAkaENyyFliqRK+2WJxItF5B7l6rMITgLJYC4xd/r1pEaXMW+o1QBgRFG+l+JInhZfk1lm+tNguGPhE57MStR/R+B9L7Et8fUzR5en49Hu2WgCyZFh0MDuJtZgG2dSLz4qnzx7L5goEkr5inWn4a5azAhUoQW43dAd8719qhyxY4ACF2h1YTsk2wUE9WK2BbRdsUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(38100700002)(7696005)(6506007)(53546011)(316002)(110136005)(54906003)(33656002)(83380400001)(52536014)(5660300002)(86362001)(82960400001)(2906002)(8936002)(8676002)(71200400001)(38070700005)(122000001)(55016003)(107886003)(26005)(9686003)(66946007)(186003)(66556008)(508600001)(66446008)(4326008)(66476007)(64756008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qjj1KFLl/AUXpkV11Skkq4UwDumxdPvmdfJF4GrC5mqElIfMlcKOv3T2FDWy?=
 =?us-ascii?Q?LJYmeuSiZJmzIAAFEAfH1EV26QNgeOrgFuVLg0zEBJ9FhKKqqIhibhCNaldM?=
 =?us-ascii?Q?Q5KfrnoLM9Ez3z//jYBpV8RtRf09jR2frRF8k2q7fzXlcr023aovYwMROyUH?=
 =?us-ascii?Q?I0zaVKmeoMo0xNlPAtktxXjGRVRBVh2SSYz8btbEO2Vdxwcd9c7/WlyssufE?=
 =?us-ascii?Q?b+b3zrFrZB2dC/OUODuJuXrLnRRZrwZeMNPWkiIg0cxF4hyUXdT9n7/0GHQD?=
 =?us-ascii?Q?x/PBoBVdmlqVH5R0doyJR6xKugnTUhIqi9uPkbxFHieynNU7wbnCLhZ/z0cU?=
 =?us-ascii?Q?f4fxXvqG+/wt4/wZ5T2Vd8Um03oOlnk9P5+b+GnJrnk7rIeisgdZD6kT7Tp2?=
 =?us-ascii?Q?S93feGi4IwYzODFbBDvsLoqJue4fOUa6sE46qlvu7vTOt4PYcyOGAiW6zwxU?=
 =?us-ascii?Q?BWU9grTzr7H96YsLPqOhU8qRHpj/2rlr1TboFAg+QKmeCqqVkJsZk3nP1tMw?=
 =?us-ascii?Q?ZYqqaUTijUs4EUkK0gqylvGsZmWa1KFQxw8DX8Tphit2ukTV5FPhxtI/fDDN?=
 =?us-ascii?Q?ylp4zGxqO3gQfN/o496b5B0QQkXGe1thtVdURYir3k40h5vnwre/VSu6s4Z1?=
 =?us-ascii?Q?C6/y+WaJvAWyb1cHfPuqcT5XgNCco+XJJZbRZRSQBgjAvKAY3ksqmVyzBQeI?=
 =?us-ascii?Q?6cHir38I8vdt2UAraM9Ro0lMLtm0yWraR0lgCuYU1q8i6OJ5soxc917CPg21?=
 =?us-ascii?Q?5UPtsoTzqboerAil+Nyv/Pekch6BBrwG6Ctq5RVmSJfEWl4HUpjOJnIxHR2r?=
 =?us-ascii?Q?Eaj0NrYucCax0W/TiY7bz5GAUopK7+/pE3d7rTsEIxikL6wd9UcSUjDgQKAb?=
 =?us-ascii?Q?6HcRa7j4/2f9qFffzBu8Au2kS6ENinjeJJ+Ih2jZ/8I2/K4R5X7jnPniRbby?=
 =?us-ascii?Q?AEH3MjVlVkH/yDCWZD6gg/5jWOaNENBtMPb6pqxKp5F2bNnFHnGgN3yij8bW?=
 =?us-ascii?Q?ydM5gcm2xOpgrAgpgNswTeX9ocxWd5F6Ku+g8yME4vO4mGrS50Wlo2QLEpII?=
 =?us-ascii?Q?339o5bZVeVQ4CqwlGGf7cQcVz661x7y0qk49c9moN3Id/47vpiVV3mdV+rWr?=
 =?us-ascii?Q?H7+ad+25oNcjP33sOC1LltNLQO/1pZrHyPsutEc374Q4rrrwiL+BW3sqmhYJ?=
 =?us-ascii?Q?0wJ44ICr+deyJUjjml2LJqSyLpN00CshPmopCNyfamEWbRjB30z5m4B4P9Ok?=
 =?us-ascii?Q?2hju4B13R5TdIQsqBUgWBAimHv19/rvSlkFZOfsgWwZCRaMgT2I/R17vVmnb?=
 =?us-ascii?Q?PNleHZF/LBvxZNeAxJRQ/qQc31hhWTzYUXH2MVQDNGUc1vR8hCjUDRsHpcqU?=
 =?us-ascii?Q?1la5MVqnIobukUAeUpCW4FU5xFvECWGUff78gcRolSKRcBxJLEU+P5jv7mP8?=
 =?us-ascii?Q?xHXqEmFjbMlx7zZ48rpYBP3S7sKMPFwDcE3N1CgANJ0zGskUFgIuYH7YRTvg?=
 =?us-ascii?Q?zflpET69iNJEFrqtcV6LXqsFvc9mTfdeaIHbraenpQwyUAHCpLqJdiRmxCPz?=
 =?us-ascii?Q?bkcK0kxftIGg8nRY907zNK4u6f0qvKcWhKpMKixm7VYlAgWRlJS59WWElznO?=
 =?us-ascii?Q?7Mk8o7Jka0NtDc8tMx+Tz7GEehF570D2pNWbJZUOaiK1wOGbUssNxWKJC0vE?=
 =?us-ascii?Q?kUKaNTrVryTNyRcdomchXDNLBU5eh2349NHxwnZvbLWdFzynfbrFxv6UHbPe?=
 =?us-ascii?Q?iudI/mXVcbGlUKAVgwgX7h2uNmRGCMI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9241c22-9005-4ff8-4ac4-08da4dc4a533
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 05:13:40.6408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RgBTSzJ2Tuf5ucdoK/06mYQ945ixT55HSWnOo4Zw4oM061Jn7Z0GFCRTUstbtbD4XtwPTjxcjdaTbBogrTIliF3bc2ofenXjrmhMWcHitKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2549
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] ice: Fix queue config fail
 handling
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, June 2, 2022 12:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Patynowski, PrzemyslawX
> <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 1/2] ice: Fix queue config fail handling
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Disable VF's RX/TX queues, when VIRTCHNL_OP_CONFIG_VSI_QUEUES fail.
> Not disabling them might lead to scenario, where PF driver leaves VF queues
> enabled, when VF's VSI failed queue config.
> In this scenario VF should not have RX/TX queues enabled. If PF failed to set
> up VF's queues, VF will reset due to TX timeouts in VF driver.
> Initialize iterator 'i' to -1, so if error happens prior to configuring queues then
> error path code will not disable queue 0. Loop that configures queues will is
> using same iterator, so error path code will only disable queues that were
> configured.
> 
> Fixes: 77ca27c41705 ("ice: add support for
> virtchnl_queue_select.[tx|rx]_queues bitmap")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Suggested-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Edit commit msg to have additional informations, add missing  fixes tag
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
>  1 file changed, 26 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 1d9b84c..4547bc1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1569,35 +1569,27 @@ static int ice_vc_cfg_irq_map_msg(struct
> ice_vf *vf, u8 *msg)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
