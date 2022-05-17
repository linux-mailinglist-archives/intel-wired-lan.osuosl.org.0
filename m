Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6C752996C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 May 2022 08:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A50883E2D;
	Tue, 17 May 2022 06:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B1GjW61UTaCH; Tue, 17 May 2022 06:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 027F983E18;
	Tue, 17 May 2022 06:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6321BF309
 for <intel-wired-lan@osuosl.org>; Tue, 17 May 2022 06:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F68140C3C
 for <intel-wired-lan@osuosl.org>; Tue, 17 May 2022 06:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RWosQn1zfFj4 for <intel-wired-lan@osuosl.org>;
 Tue, 17 May 2022 06:20:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D949B400F1
 for <intel-wired-lan@osuosl.org>; Tue, 17 May 2022 06:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652768459; x=1684304459;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=epD1qV1032rFCkinyloPQb7aWQA8jJlLTCTes6q0v1Y=;
 b=GJD5B1/t9RYZFqQjleTjhmosBuRUSDBlQRPnirc5rAwoECzVW/19cLb0
 u0kjvPPiSyRIvgCBmqSDYNS1XvEEt3JxOW9vbsK4TP8I6Zn9UVQ9B+QUE
 dzw0Xlu2Q+qS1gHdS+mSE/dcWKSA1ARzgetKWHO+Q3+zcOsuZIUUA0ORZ
 lnv0pHN0o640WhyTFuObkmhhvEZdz6NnvbrZmf3mXMtsbLbFzIjSTmJtZ
 pv5G2rc+PAO/K4AYnyD/EdDFr9NIjLuDUHXxcYKpwSpbrp0Qz6xOeexx2
 8X1/tb5bXUEfHHfuh8NCXIKj5W1P7uVmPYCISqWvmEpRvBhXCTqd+WLIy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10349"; a="269900393"
X-IronPort-AV: E=Sophos;i="5.91,232,1647327600"; d="scan'208";a="269900393"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 23:20:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,232,1647327600"; d="scan'208";a="713712960"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2022 23:20:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 23:20:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 23:20:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 16 May 2022 23:20:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 16 May 2022 23:20:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CQd3mEqziVmC3aiIhNg3NZOdSq0sFHHutkZCEjt29Iv41lPFOVeQkNDaqqDJ7FcgOe2P9XGleqWmkSONp/dSAxZpZfaPFfgCCbEsvz9w+GK9qvB4V3/qpT0uNqmxmnIX/6L6FYlFAEXJ3s0uTHaS2joJgfchuF6hRPD4Z8XXOR2C2qwxW4M7uixKqifQowpJKDN496Li+1vb8bT2qFJg/7AEJPv6C6MEhCgdQatzYAUujgplsaddqhLTqfCC/nayILHS21PV7o27yyMQ+9OqRchQWqlPYAaUvenGubLIh+Mgs45kjSBA7UAiNCfIdeB5AJbO41peRlHJSCXElVweMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8yI1yTw/igZ9N/KKUS2KxuKJoS/kXKGBW3qOhohEBmU=;
 b=cq88/cGIVZ9ivlCwpwSKUJuxLEq6kdAYoJ6LCxLLIqjjJ1CYailh1/3KYUO4P3mJvnMHk1qYAavr0ZhsmK34S2wBPcBKRKugHZnQqO/U8TMqw9sdtH0rFSO1qIzSJgZaGuOSi8kRj4XNfQEqiX6zBietIrJxE0jTKGlOGxTQubay1RDFL9sWM6lyOA3lD0OKh/kPWkFcx/GqgEb18fV92XIO9r22njgIv5CDWyqqQwpwsoe1p6HOV7ruBhK16gQcGg1Fr7FSpkF+wA5h7L9vE+8ku9iryCoMxwvRsyBiBKXyyK5EDbV4hQoeLJpcwGxSA3ZXyvjrQ/CdBPWgAXq3NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB3580.namprd11.prod.outlook.com (2603:10b6:5:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Tue, 17 May
 2022 06:20:57 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5250.018; Tue, 17 May 2022
 06:20:56 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix interrupt moderation
 settings getting cleared
Thread-Index: AQHYY3b+MLqvNcsn0kO7HRhaLk38T60ipXuw
Date: Tue, 17 May 2022 06:20:56 +0000
Message-ID: <BYAPR11MB33674CF99256F2335C9952DCFCCE9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220508233348.546388-1-michal.wilczynski@intel.com>
In-Reply-To: <20220508233348.546388-1-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 906c0dcb-9119-4c0e-bbc8-08da37cd6764
x-ms-traffictypediagnostic: DM6PR11MB3580:EE_
x-microsoft-antispam-prvs: <DM6PR11MB3580DFCCD0070F27C4C9C6F7FCCE9@DM6PR11MB3580.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RXQBmDz2t/VmkJhwYJx+Ma1tdKRaTI366DJ1uKTEdn1sAUgUPnzCguR3t3QcDWa4r7L1P0W8BNTVUsGdOvg083bo7S0oDFzrb556XPkXVgoTNG1gv4MyvLEpfNfaqD36I4FRv5JW3bCC8U7NK5xpHJeBHWxL+D186JK4EzYpsPbMiE4Av/B5jKnJ8wBSZbB4jP7yRPQRHPOM6E3GHyvAKnc8pt8z2/wHLNvGcqu8yfLF5aVpSx/jtRlWPvBhgr8mN+MLIXloDiEU7Rw0MAy+jvzjBmuISbhq/GgN10kQI/vWtqAg5exAHw1X99WHqNiOnOgX4onPlHxT/4SSVugE+Wayj68Et10KgQQRWUQ5gPUaF0V8hEWIYURd8COdRC6XbqV+4lfEI8srtzfnhverQaGTqQZgmLo+A4aWm4Jnby9xzwwuXC91eOJfhOqGbbsg0ZHZRNs4H4gpa99/MSqA+eWWMHO5DK44PScQZIh9pK0lKXdPopeJl5NvyD/AiBM92EFRZGNusCI8vazDuHRN0WkrSVwuxncYrbxkWWmKjcmetvUcb50bLZVOlz7WXtexCbZG4wuf1muH9VF0SQKL9BT2rtLL7zP3JeIj7EoP+D3CBKxbzuWYmCgZ8aJcciRwkl5bRd8Tq1bSQENrxzekwil0ChUHKmR5yyJdsmy+iujjx6J0ykLw+TiwJdmR6qcHyn9l9AF/PgKuzOMdmlnSRA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(38100700002)(38070700005)(2906002)(7696005)(82960400001)(55236004)(316002)(110136005)(9686003)(83380400001)(86362001)(71200400001)(508600001)(76116006)(5660300002)(52536014)(4326008)(66446008)(8676002)(64756008)(66476007)(66556008)(8936002)(66946007)(53546011)(6506007)(26005)(55016003)(107886003)(33656002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+OL12A11hlJ2wATvNCms6bq6rUX6je3QrD1fxbEiwqfo92DuyH1uJeFfFkoA?=
 =?us-ascii?Q?Fj5AAWeWgJ1uoyLlBK4czRmuWBUlVjjArH4YY0p9QSoy5PjsProfA/fUrI3U?=
 =?us-ascii?Q?08+Atv73izySvrrfqcKjYGt+zebBGz5pbpBHOWGjCOig0hkqo9y9J1B7lPPW?=
 =?us-ascii?Q?VmOw3FGN4Otv7pZ2ZmnNYzS7ypeFxddFWK7xuOkk1IzKUZKMjhA4st/af4Kd?=
 =?us-ascii?Q?MC6mGCUnKklB5/5sX0cO22+Fx/aPlIrzbLZx4sqOKamC9O1sA/qO4AgIdhO2?=
 =?us-ascii?Q?XWUJIjmQAGOYhJA1OPdBSg1o0x7CoDNN5NnZUgQhae0lMQp2DNfyUiogA75Q?=
 =?us-ascii?Q?YleYE1ALMMpavtCpp40wZcxFAz4cS0srCvczE83CKHJ9ADmfcq1ohRnnNLEs?=
 =?us-ascii?Q?FNiz386QZPFbqaxmKxw8X+23pcEnmPi4anL2BYrVJ80aoZ8GJN1xDEZROkX2?=
 =?us-ascii?Q?UP8aNMGm8CGSQ3RFkhM1oYp9YL2DWQHIG4MP4S36UHBhVltFxiyf4mWIaXEx?=
 =?us-ascii?Q?Bfo1OHJSLVkQqmPZtErAaWRFqm88vFCB53zypKNqZ2NeMqljPGAAvXdnFrwD?=
 =?us-ascii?Q?sF+MGiz0Gm/yRZMUyOgx1HCTKmZy1Z6V2y9KXYlKoMQb0jr0Xv8naIf2TDRg?=
 =?us-ascii?Q?+Oc0F5rV+fw0W6BsE8qx8oMffgzWsqOL4RriVS7aOS5lik3y6mILYk5rd/X7?=
 =?us-ascii?Q?nmPuAHs5ds6bWh/o/xV0q2wW+RNJ9nuVnR+68mdqrJouIsVyD6NSuogTxsMV?=
 =?us-ascii?Q?MZhA5Y3gqbwvdjZPADsko9neHPYQBK+/2qlUfLXOkuE7yOAWySZoYq+6BedN?=
 =?us-ascii?Q?Nisu1lr0E5mM/xLqPaaeLNaeMkbZoRciFV2pV9JXrqTgqztRiugWM6ALL9nJ?=
 =?us-ascii?Q?P1kmcIBnI3PZrH4ShtD1LTpFA3efy7AsXgyXKayTjdOpFAHlfrOL4FsEh5Ug?=
 =?us-ascii?Q?XU69d2wellreZkLm5sfFX8W+JawBEvSr+K7o6YYyHqj/7qiBx+Jzy42QI0d1?=
 =?us-ascii?Q?3ITSLHehsjgWnvSutdan92QtKxi32MPWNVqSijPwm6DiP0wZKCoP7Pz6geE2?=
 =?us-ascii?Q?ewlC3MW0exOb3Di61SpDI6fr4Gp4jbuMrraQXSBdSs1cVYSMOBJZhqznF57u?=
 =?us-ascii?Q?mCvA/mgOVzFmKmzy+jzGuW5hYKnfUkHIltaHIjewukwCBlEmbE7qQn0aY4sg?=
 =?us-ascii?Q?I5M5IQLlPywTgK8SCOwzdy8QQhCO7lvwy50USbQLX5rzjStJUCZd6vZCzInc?=
 =?us-ascii?Q?+/+jMU3P6V5KentsZ5n7qph1WkI3grcuOqvVUpaoAEGmRJ8wOolhCMnmRYVZ?=
 =?us-ascii?Q?DP4WP3lfGpUNEqE95AJXu7kGXe3UooMdD1nZ/8rB4qMNxUuLA961TgkxP/G8?=
 =?us-ascii?Q?zCEBuWh5c4+OyzOiPBDIvLHwEWetWqrEBcgIIx6mPryjdUWvX/L2CFpw+S0f?=
 =?us-ascii?Q?+QLLYgIJt0D40KZuFyUNybDmWk+HyNAX15ts2DGHgAOwyKHMvt3gLVC4oouI?=
 =?us-ascii?Q?Ak6UnJ8G64C44QAzXehArMembLiOBG1nxEXBBFSu7b4bVO9omXxAAY4VI3Lo?=
 =?us-ascii?Q?eomJ9IriDTuAsmmguBCkxneQJrDdft73OHt33pDqX6MizbZnoePT9M7ncEWV?=
 =?us-ascii?Q?gpTxYbvEHzxWDtzZnmyfGH+v80G9IFd9rTK70omd9k2d6QEqfjLHk6W4yNiq?=
 =?us-ascii?Q?ALeDfRuMxma9usiYu4ZFy0fv0ns+f3FNg4qgO/sPJaFxhefTsXUfNNL5N8Vs?=
 =?us-ascii?Q?WZA35xos0Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 906c0dcb-9119-4c0e-bbc8-08da37cd6764
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2022 06:20:56.8512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4wT03EA0egEkQYy/9O1eJr1qnQ+VQ7Qu4BwS8JL0+Pe/jkBtufWjEWTBw/dwmxnGjxU/+pZaZiuxKx+fK9gIvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3580
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix interrupt moderation
 settings getting cleared
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Monday, May 9, 2022 5:04 AM
> To: intel-wired-lan@osuosl.org
> Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix interrupt moderation
> settings getting cleared
> 
> Adaptive-rx and Adaptive-tx are interrupt moderation settings that can be
> enabled/disabled using ethtool:
> ethtool -C ethX adaptive-rx on/off adaptive-tx on/off
> 
> Unfortunately those settings are getting cleared after changing number of
> queues, or in ethtool world 'channels':
> ethtool -L ethX rx 1 tx 1
> 
> Clearing was happening due to introduction of bit fields in ice_ring_container
> struct. This way only itr_setting bits were rebuilt during
> ice_vsi_rebuild_set_coalesce().
> 
> Introduce an anonymous struct of bitfields and create a union to refer to
> them as a single variable.
> This way variable can be easily saved and restored.
> 
> Fixes: 61dc79ced7aa ("ice: Restore interrupt throttle settings after VSI
> rebuild")
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
> Internal-review:
> 
> v4:
> -Moved Singed-off-by tag to the end of the commit
> 
> v3:
> -Added proper Fixes tag
> 
> v2:
> -Changed argument to ice_write_itr to rc->itr_setting,  instead of settings in
> order not to pass unnecessary bits
> 
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 16 ++++++++--------
> drivers/net/ethernet/intel/ice/ice_txrx.h | 11 ++++++++---
>  2 files changed, 16 insertions(+), 11 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
