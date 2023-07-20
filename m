Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44BB75A700
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 08:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F51D405F4;
	Thu, 20 Jul 2023 06:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F51D405F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689836192;
	bh=juBTUYQBOp2NUs41VvVtH3zrlXS3ejRi9p+NpNvje3Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XVUSJhXBZ8huLxzlTueFb0VkA6GYBtN+K4qaXtTqGxCkc9hY3VFOBBN8i7JhUSgQh
	 9ZdVt5+I1LhiE5fxtx/1jBqq3AACaxNUK+tcONXMEGQS7RfV37uO9wG02paBQG1NdD
	 xxoHG+QUfAdvlRB2/OGRat6+2/lv0Y7vrviHdG8pSY8+1+WOdPAXUWObowZJRVU3Oj
	 rNq6NeMbL347rmSDQ4VSCqonjYKh91kGLTloc5WOIRfrbnRCx9EtjfbeVbaA3W6zuV
	 +rKBc5vzVodOwxuJZwE5uYzCTeF8sc5L5RZehZEELUzco2INOEmoLAAZYdbLXGoUFD
	 O68qLrj1JxCEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9TYhIXXr8pcT; Thu, 20 Jul 2023 06:56:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB53340198;
	Thu, 20 Jul 2023 06:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB53340198
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54A491BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 06:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3528D60ADC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 06:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3528D60ADC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNDPB0nW5gtQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 06:56:25 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Jul 2023 06:56:24 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C86360AD5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C86360AD5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 06:56:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="432848188"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="432848188"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 23:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="789678623"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="789678623"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jul 2023 23:49:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 23:49:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 23:49:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 23:49:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H5FqSU9fZrkI3xfI2jv4S9Yehfpn+53JGkdVkJh2TuoawjTOM5LNAvIScLK+0/4t0Rg4/CDw293LyTSzpzlIkTTqdPunWoRfWwp/UbiSoQHhLrnAwYnEO4lDg5KWfXXHp8hANMQ+B7TZyCcZpFPEL6C/2manWQjkorera2XEaARXm0C+G5eRDgd9VdUZJM46gAWy93HHvCM1ogVlmAlaE4hIj4JwE01p05IFq6zuzks2M6FOu8B5IVXj7GjNs3M0+M0lGjpntX9GMbBkc9RmCBYq2gCXFf0A/Yw3B9JQHKETcAlJCiF41Fmy390aO+H7A7tvxU2dQHSpjdaRLQWKMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LEieWQ4C43QovCoovTalLz2fjuATfK/EgkrOS+v8tjc=;
 b=f4VPJiJkb9tLqcnnI0TtCNWXIXMWaQnPWNp+3RROmusIcYR/ECQ/LyDt6tr57LRFHNvQcNEM3Jp1s6DhMYIkbUow0rxH1V9+Fy7I+sVDKUBNXBs/JSTRuwDnbFHhsOnp12jJMHUL8/E0u0aZ6CLs5il2IjEuu4Evk0btI6+nx/uwNKjEkgYpRzyhIU4p3lI9XQnSWfdYOTpRcoTLGkePkZtzPpraFvnwDVBlF++9YHDifX0TvpKTlMIseMq1iuajcCVFQTtEqrQRmHpLTFyANp8lcUqOlBdq0jW0mA86iQWPBdsiKaVOHL/VLOWXlTWMLPlPFrzUJh1HsUmma4rUhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SN7PR11MB7042.namprd11.prod.outlook.com (2603:10b6:806:299::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Thu, 20 Jul
 2023 06:49:12 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6609.025; Thu, 20 Jul 2023
 06:49:10 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs in
 bridge offloads
Thread-Index: AQHZuI/xUHw2F57eGE6UncxRtoorDK/COyww
Date: Thu, 20 Jul 2023 06:49:10 +0000
Message-ID: <PH0PR11MB5013F088F2517C5B8ED87241963EA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230717091843.108015-1-wojciech.drewek@intel.com>
In-Reply-To: <20230717091843.108015-1-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SN7PR11MB7042:EE_
x-ms-office365-filtering-correlation-id: bbc25b57-8ab0-48b7-e509-08db88ed6c16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vhLkc/y6WGnhw0j2xI4Yod75lvdSfPEBh7oH7NIZ5LXC91UtOehDewTLBAnBY+sv8jWXNX+guCsEEwPLWlwRkPv3aaAnyV8GnwQinJTyKDzONuvtiCAm0PLxJNVtlA58T15yPTo7hP9/8kjqEdK94CubC6ELGJB6K1H15ZeAf/VXl8y6mJZRtLBhb03lHU32aGZQFnNrozWr/ZWdi6OoJ3NlJI9xZFNMR/YCXVxn0JmO+Mo2JFmfN3leZIDZ5ceedOUzup9po1e9bGpmGdOkDJJmNnfd0pkOWqiPdLVGTXNPIc2RSXh8l4z0WLIcbhKMgRTIQmX1jo9OO0KlKwUXq6LgLbUBqFYJmUt5NmCtgPoRomZlA6bxTCpZUOiWi4epMSEvRbSGTgR6X1Alr/fecmTQ56qb0FVNSUq8qQVQ52qhf7Fllbs5nSqQAmD3s4pA4Sn9Qy4owx5BaKGkCNwZboTm8/XxKBb/KUdrVHQNJrKfz2z4KMbRbhLLGAKYOyBZqkc10h5cNGMs7PkjPUsWDzIRX1GnDqInDc53QMLAWBW2qs6gDcz/WeSXgBk0DB/CYO7Mxwg7+hWAd8Ro8ezXHVcjtHuf3KREKUteVNShelY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(966005)(55016003)(9686003)(7696005)(38100700002)(64756008)(76116006)(478600001)(66446008)(66556008)(110136005)(54906003)(82960400001)(4326008)(122000001)(66946007)(66476007)(186003)(26005)(53546011)(83380400001)(6506007)(86362001)(71200400001)(33656002)(2906002)(52536014)(8936002)(5660300002)(8676002)(41300700001)(38070700005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a4CA02NBGscT+4Lodxq68bAHQxM6fp0eTtCUTjdf+9PhLQQkmxJv8c3Ckq/9?=
 =?us-ascii?Q?coWRL4tAIVDGTn95VgsEcO4cTV2Kbyd0oZlXa6nRwBjwSPKmAwmNdLJQth63?=
 =?us-ascii?Q?VQpKpRGGe2BdOvDpKzPYaEM9RHB/lcDjuEL/vajP7XHOvB6wXctrsa8IjklD?=
 =?us-ascii?Q?EZ7iAnRFoj6Hivsgd683N8rrjH/DF6O6o2JPla1ZlN5GK/yZkQl71msMGBvI?=
 =?us-ascii?Q?HR77g6yYoT5d232Lk6Toq3T08NduKs1jhzUmN0pYemduUtsvWxsNGxsE799C?=
 =?us-ascii?Q?caUaBFSom8B67o/Z8lqz3l/5Rl9hhfouKARfT2KDNfIHNGBxSVHvaHoipF8K?=
 =?us-ascii?Q?5seZUVEKWzpdGrZWZG+Jly3HyEPd2Qz2y34D7oa+TGk3fqByqxyspvbFeTJQ?=
 =?us-ascii?Q?Em89R9lD9c2VyDNXBsdUVCAkAa9zxjKXEAdYlCawqgGn87bKibx2Ev7cF2iq?=
 =?us-ascii?Q?9jxH14zmGYcrOYyCGzK1FlFaO3RLe8KQRMP81QcHnTzpfNYSzLFnByLiF94r?=
 =?us-ascii?Q?G3a6HL/q+lWXECU+hqtSXB5YG6rS2QjtNdanlHuU8U42KZuziTWe5uMvnnGu?=
 =?us-ascii?Q?nmRRjBPk8NGK3xvZBuYUTud5Nz3j5qKLdYx+qPmDsqBSxhgp19bDhi2lHrhG?=
 =?us-ascii?Q?3RRYkmyGvBTNT3Q4ePBvMm3A65Wsr0xD4lHXbTTIxQFeNzLSoVWcjTlLdMuV?=
 =?us-ascii?Q?cW5iU+6SL72TUJXXPllP7tAhXgoZJtTScqCC9nsGzLD0tUvDysjdfOw2R4ni?=
 =?us-ascii?Q?yH9padsKMZUxcdwRwe+OaGq0aT+wQA42Ic1UXnWjUMuye8BvdnAR5Ha/xi0o?=
 =?us-ascii?Q?lLHUNkMQzmypZk/UR0GrxnfR2jZpCeP/XoxZM4Pgj/uNTM1bEtcyM4SyWaTj?=
 =?us-ascii?Q?l48pGOSm280fGWLauZBqv3zyxwwLfdcNux+lfWpxuD5OTYB1ZMiU+ZWiAXth?=
 =?us-ascii?Q?S0e6ebHVa56tEVddiunl8XoCYpmdBv7/xcnhUsxamyjy9FoGx6BE15wRhPvR?=
 =?us-ascii?Q?8qHIu4QPE1LMl+FRTC8F71Q/b2ia0RvnZ3t8M6NfEqIAqF+Hi4ALlQwLbvDn?=
 =?us-ascii?Q?EzonIzTZBu7ueQ4SV/vpnrOaiZT1oEn+ZGYDeVUziFlGqaQV3iwNk8u5bwDC?=
 =?us-ascii?Q?uZjrpA9WwEeYf7mchyG4r2mLase7Jx9v17/31TIFhsY9qyzP0mQJhpdntQWC?=
 =?us-ascii?Q?vSbyvDl9v12wnSeTda8FF3Zb4zQEFgJXX2mLNevd+QKIQ2/HgfxGvzPOmbXw?=
 =?us-ascii?Q?cERwR18+Thkgm+uNP/Lb9vzMybsjQAspwMGnNOTDNlIF2VEy2WaQaljWCC8v?=
 =?us-ascii?Q?nz8wkBNeENc3sHlzDdG5CbbFBfB3QGq07OkZNFb1eswBglD1KlS3EPiCy3HN?=
 =?us-ascii?Q?RlWzM6sKEyNj+E4bQaSEEV250YqW1BNgy1x/kta1n9DWQ/zJQgLRdgjwu+iP?=
 =?us-ascii?Q?E00ApzGrfyJCnsRF6DnH8/qvwc4zOLDga5Y6XInQTvjx6AsDEl7qL/RweaO4?=
 =?us-ascii?Q?UdwJf+t9n1UluHBzsLCMppgODbDOO9vCEBAL50MyOuhVpkAsFBMDxsMoIytb?=
 =?us-ascii?Q?HjEN/pgEpnTOdmHiwf3IuQyl5m1ifIwAHDZveqQ3W6eYaGr0fAQYg/bqWG0C?=
 =?us-ascii?Q?Yw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbc25b57-8ab0-48b7-e509-08db88ed6c16
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 06:49:10.4809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GPuTAFbJDIPeqxtNwAq5k3NEKH+KtTQXPmoYOUOm5/f9USXLCZJ49Z+QkfdCkBfV3m1CpmxVDHqei56d1iUdlWRCp4Ac5ce4zuZWr94uZlo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7042
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689836185; x=1721372185;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gI2GxKDicLxs13B4G5nF5JAmST6qKHLMK3CtwKS7mJo=;
 b=IFXD8p0kOere+zOVIcwpT3kKhUYXMFYkQXGEC3USdJHC23tDkntSdqW6
 ZwLvGFgRnhWuoq1MdM7Y4XzUGB654uZgmtXRQJ7DSTbr1Lh2PBqfH9Qu+
 chdNEEOihahQ8eNk+Pinn4wZJDvNaHwr48x0yYlVM1NbqbEbYpXSodULd
 qYshw3qFHyNWxwIBrovcostWiFXQ0kBzG/mpQCKCslv9I3Mx/SsXIBWpH
 UCBqh7GeXIP1/fGdb/jiUlziwrq1YPP6O3whb06Yk+CIueEfsPd1A8ve4
 Rc3EkZfTvXze6aX6NU+a4sJwibc2OvkD9OmWGlTc7iPMO5VpzZmt0mOLT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IFXD8p0k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs
 in bridge offloads
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Monday, July 17, 2023 2:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: jiri@resnulli.us; simon.horman@corigine.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs in
> bridge offloads
> 
> Allow LAG interfaces to be used in bridge offload using netif_is_lag_master.
> In this case, search for ice netdev in the list of LAG's lower devices.
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> Note for Tony: This patch needs to go with Dave's LAG
> patchset:
> http://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=360621
> 
> v2: fix spelling of uplink in ice_eswitch_br_get_uplink_from_lag
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 47 +++++++++++++++++--
>  1 file changed, 42 insertions(+), 5 deletions(-)
> 
Observing traffic failure between VFs and VF to uplink when bond is configured as the uplink interface.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
