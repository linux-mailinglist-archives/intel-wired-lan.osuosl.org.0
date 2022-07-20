Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB18057BB04
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 18:03:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 054C76129F;
	Wed, 20 Jul 2022 16:03:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 054C76129F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658333011;
	bh=ejx+hwBe/tZ2HGIIw8rRgQsQyAieoSqOBPzTITUrEhg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Habt0epplvU6fiWSmXGrzWql86OG4kv30lPpbm4QZFtLeaLm2zC1pP7kWon2P2So3
	 doaMrOyp3mH+pyagH5SJFUwpqc9ByXldhEJIuzplbKM08UGrP0f+NP1V5XrCvuaVBw
	 VFE7A4GJy2Rs9jEhw7KqF6LrV9O/fqSNoGfnIVm2td4h4kNTQvOdMTayN23AJPk0+f
	 X+H1tAfjtnZnALTTzoUPEg2oacq5bLqqgM99U+Mxo0Kkjeg4LoyeWWu8kbSHiFzqL4
	 WKUeUOeACFb06Q5i3mC14tIxMcRjXrLLkq2xRc9gUuDgiDhwwfMaIBo/g7NTl5t3P/
	 GX5OfELxeN3qA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9KP0UuS9OvW3; Wed, 20 Jul 2022 16:03:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6E2960DFA;
	Wed, 20 Jul 2022 16:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6E2960DFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D4A61BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 16:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05A6340895
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 16:03:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05A6340895
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzhpePgsX6rD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 16:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B77740363
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B77740363
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 16:03:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="287564219"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="287564219"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 09:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="656333094"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 20 Jul 2022 09:03:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 09:02:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Jul 2022 09:02:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 20 Jul 2022 09:02:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 09:02:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAN5aGQfcKpJW8xiP1lM8sxvya3YpsuKvqDfxgycOrAeQ1FkhIvZ/z2eEt5vLASPFlAdqw5TZiDbZGiwF7boPhoXzsBtNrEG3AEgChuIT3/IaBAfOQYMaWz8zhQNg5zSu+dxCLFWKY6+bQOpZr0MjiFefpQBJgy0osePphmTBLatcWf132eF4TyyJNHNzXdEodJLVjZL8INzGxMyZtFQWWP3bKsodrUL/qZ217z4M+QfKhI8IhTWsxQSjne3szC8eFppSGwSqd6xzj+fkDsCUH2AmFZBdVv78Yz/egeoD7zg/+bT1f21dgI48wNldBejTggIX+wQU5eEpiCAy0hR/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gq4BF0nfzDUGzM6xBQXQY1Qx60vscwXUOIzA8S7P6Ys=;
 b=ll0EmQW2WZiQs5skvFxKHwUS06EdmKHmNA2tAlVREHij61EotWdT43gjpkVr2XTl6QP4OdkhBtHGVb0mFUsNq3Yq+f0eWZawVLNifeJDkZUGXNMRBIXr0HaLxqDEi3IQ+9Mg6OY74CXnpWhIAPiYKkDLkAXTEV5NQUJXBtbLgny1OrwZ7xBu8tf29vbM8dipn5s9uuAFEJjhc6c+l6/Vc8tRtLe+pq6KiWndSoPt0H29o7Hjbwv/YZVPshK4Y1Se8W8vUvog1SRbwanTqJjjVPf5AL9HdAkxOJo1iEjRszrp/SmTLtK2cGhPa2yuMMNJmHrrlBDckOVX1mu6hiAHVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3157.namprd11.prod.outlook.com (2603:10b6:a03:75::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21; Wed, 20 Jul
 2022 16:02:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 16:02:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-next 1/2] ice: add i2c write
 command
Thread-Index: AQHYh944Dg0McC/Xu06JSsmMJsyLP62Hk9sQ
Date: Wed, 20 Jul 2022 16:02:47 +0000
Message-ID: <BYAPR11MB3367B60828D12BCDF90F90BEFC8E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220624152203.294031-1-karol.kolacinski@intel.com>
In-Reply-To: <20220624152203.294031-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fbd272a6-4233-4aa0-5f1f-08da6a694a2b
x-ms-traffictypediagnostic: BYAPR11MB3157:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KPKZ4o/M+IdayTjA96OcBmxCRAsqADH/1TbFq4DIRKfjZ/w53xTKNDYrC1ATRWIAzQGcbIWWqek+gLC0HKnwVS8Yu9kkyW3hr2AORTdeKHeQa+m86TTKIXlvkXoNOSUYFmWJvDiPu13w/zMYOh2jSTH0Ad30DABCyMWrtLpdL3h0jBBMJWOoFWVCiX2VROqXOXcvcAavByvqd1EzHGSOmbV7YgiHQa/IeRkwTQLPosOoj2ZNgoBVZWijzUpplYTO5R5xSWc5zmiDwCh+RPLknSY1x02MCayswqBb1HceCkT/TwaebohvIkGCUt6i/aSoQbpfO36l+/JxwDnQoYzWsSoAnpLLO4KVxA94O5HPbZAGhcSp4r1wzUFnXKixGcNbrxGyENbn4Hxa8FKdrDT43uIXi5dsn/e/5p7ngr5/jsv/zHxFsgGH5EK/DemZBjrxR91Yw+jvUbgEkpw6Pjsx+Ew1TQqcvWQZM/mFHDSf+ctA08I6M3D3NYtn9J4B9vPOwFNrNDv9U8OnRU8WWDxltoTnZHsUqm4tTia0qC65XIwXVw77HJ1jBQCsrhyxVMhbw7Gp0S4C1EHghJ4owiYLDNsCFTZJ10weVXfZjW2DcbiRczsjm4eUt0+ABUgTPGVSO2TBOGEH1fBXProx/namscsCK3TPntPfEJsD7IuC5MGPDcr1KOzSrTtfi/2u0PonkOdlL+dTVbvpVhJHp+9cRyCMu7UidfpxplPRrkd5rlNtd0hYGxzDrP7RB3yskGe8EruhyqYA6wQ7JzeMZmynA34NLe5tS/WhES/7kSvUTyzTqmayZVM7z9PYP4EltmbF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(396003)(366004)(136003)(376002)(186003)(64756008)(8676002)(4326008)(83380400001)(66476007)(38070700005)(66556008)(38100700002)(66946007)(107886003)(82960400001)(66446008)(33656002)(122000001)(86362001)(8936002)(4744005)(71200400001)(52536014)(7696005)(9686003)(478600001)(110136005)(26005)(41300700001)(53546011)(5660300002)(2906002)(316002)(55016003)(6506007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?80OnBHMKItp4siwl3PImrDooVxFh6es5GbTLMAX82j30mxwZ0HQGWu4tVlSx?=
 =?us-ascii?Q?0ugrFzbFpICTwEXmUFCIePUxIZhmKbgiZE03TxirM3rfgA09PNFROJfKq3+V?=
 =?us-ascii?Q?TyeEfnPahgMw5r2Va04nYR/CAOLbJkjZ7AVoogCbYP5ZmcTSh8fmDwCUDdcQ?=
 =?us-ascii?Q?+ksmTJolE58/bhJD/bouH3J757FZvxElORMWBwSkRVZPJ9KrWnJ0w70Jv9IL?=
 =?us-ascii?Q?7DJOF4Q8zKh3qfaKxsKqqC9q0AEw6abmwC1qkywnLY4TQQPBXigIafpwGZ73?=
 =?us-ascii?Q?Q0jVw96J6W4vcmiKzE9yI1HFkHoVtRmoeEgtfgT6xluj0PhM1HiJ6End6L86?=
 =?us-ascii?Q?Q/dtUS6x55mAjV3opr++v/2QRPnPnXgcLGkTh7oZnugbMuY/T+pEZhJFFezz?=
 =?us-ascii?Q?t2rWNj1nLWCyRnsQ5HpITILyrU7bhtB3Yvc+km6zdcrzLhGQLhUxYBYhtfwT?=
 =?us-ascii?Q?zY7Iv2ut+0tG3QbsbJQzP8JLgz7mCYIjZvdyl3PdrrnPeqAGFsRcsPUxJ6li?=
 =?us-ascii?Q?xZBiHj2B80XpzIcb4IXt8zY1OqKXFvFt9KQ4OmZzp20pZjaYhvJXb40Y+gT8?=
 =?us-ascii?Q?BI0XwmecscoImkOH5saRXpZPENnF5rfqDAdLgBZd5s8mHQQORfqySdjNQa4p?=
 =?us-ascii?Q?CJzGjV30+ys+1xlmoPJGB/g9tznyX9udKUsNaRptjrIQ7LwvnE6eLvT8ANUe?=
 =?us-ascii?Q?K6b7GsO2sFfrRezPsPwjeUtZfJWRXcCKEehc0a0OwUB6F0Df4+Hvxta+F6sM?=
 =?us-ascii?Q?oLVXZZbUczfGNXvrU8ChP99quzAWoV4psXSRnIEoSZDWk+p+ugSl4fYQh7K1?=
 =?us-ascii?Q?YOiJJKkx/hvpfAA8cCnHtMOlhxUWRqSo2d/IKy15snaAkMNcX0jDamFBOfwo?=
 =?us-ascii?Q?yinEMZVQgdama0aWbQBF84eR4lwwkTFA37rmv/hoGZFEd7yh1vXRkP5dUqtt?=
 =?us-ascii?Q?ZoZKmXYf6QjBSYBeLLy3WthkUALneIlg9KT96+m2rgyYAgRZbHZCba+47fFN?=
 =?us-ascii?Q?ao23yq6gpEC6btViqfNa7SyNsMqWxM1TmAoST9D3Rl700pm2gng3b5FQn37B?=
 =?us-ascii?Q?zm3xscnIb4vGLTW7TxaJWvzJ2Y69yt+p1SOVO83c5QlQ2HKDTJwaFUUHd+eA?=
 =?us-ascii?Q?AYHgybELNmYcUwByoca50GGqDf1TLmpNsLoL3ZUWfrpw4KMenG3CoFEB96wD?=
 =?us-ascii?Q?CiAd5uZWQJYC6yAnWqUO6I/mbj4ZSuAp1Ds2cOScg0+YG93ohUtp6iUi6xgO?=
 =?us-ascii?Q?C2QGsfQuG7vkd87pYkw8InJv/OimY5cP6voijDt6oDPltidk22tNNywYzv0W?=
 =?us-ascii?Q?ZLctWvOTE/5x71ikci17nftd6p9aZTxi2opWPlgH1iydUo2lvnWEzT4tFPmy?=
 =?us-ascii?Q?KAojfQ8onaNlNvLsHcH3ipP0NQT9fZtL/YdJKg6dkGP3JqtxTzb6G1Cazlww?=
 =?us-ascii?Q?OMoVIucNwSVfW4LWosXThV2wg5Pg05KiJDqF6vZFHdOxZB/x7LogbS4s7hvD?=
 =?us-ascii?Q?VTLrrJi0T+WzuyiDzuQRvhCFlh6e4qXvvZi+IqIn70YOsKwtFoOumNzqGNr5?=
 =?us-ascii?Q?E6eY/JBQevlGBWKiGEbRMS0oOXro5qDKYp68MzO+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbd272a6-4233-4aa0-5f1f-08da6a694a2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 16:02:47.4656 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2e5UyZ2GUGbBQja61HtjJdDrdak/q2S8QIrD/UHjpSensvlu3HC13epWGxXhAcspa2uJGfPONSKNI4WiQg52fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3157
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658333003; x=1689869003;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VtjtYe/R7nBLLIi6RsT90fVMyAIFzEPlmgSbUMN85po=;
 b=VaJTac1xXdMKG6W9pkFVlURJ9ugc7PUGcL9Pp/0wsdhPeeqAXimuE5wk
 JmvBy5Ej8w6NcuykWPKOHFBl+/JHjT9kaq7C9kg8/Kwic4FS6BWDFy1/b
 HUSnHNFgTgdqID6ezGZqCi1f2fhhQbyrLrTvhNCCgrj3VSFyyINFWuS0h
 oGF8cFl6m+bMO3maSeaqZ0QHkq4ZbQgoMbN0L5bvKhvHft2HYMkW80N4i
 WYmNrB+cWXYleJ3c60fSVu59xLdSTKKfp6TxVuuIf3QHJefZMssIRIpKY
 o/SYuPHPv1/om3OtDJy1rV+0I5x76kdwxgTUwc/HB64lmOUHy4Ig7aDdJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VaJTac1x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 1/2] ice: add i2c write
 command
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Friday, June 24, 2022 8:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-next 1/2] ice: add i2c write
> command
> 
> Add the possibility to write to connected i2c devices using the AQ command.
> FW may reject the write if the device is not on allowlist.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  7 +--
>  drivers/net/ethernet/intel/ice/ice_common.c   | 47 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |  4 ++
>  3 files changed, 54 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
