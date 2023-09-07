Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E479704D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 08:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D8F5821F7;
	Thu,  7 Sep 2023 06:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D8F5821F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694068809;
	bh=bzdRKERo+VFN+E0HuxEa1YmAo7b34fCNNN/XW5jZGMM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XesCSSwqJnK1f6yX+6ZJLU/HERCNb1azMk+wLDeQJ8z2lSuMeYHe0lkOk9ziEsN3U
	 zY7a3Z8RCrJJB1mXg3AtnVGaJWcXnNGWzdhlUk+06TP4FzVOabPkBzFUx889/EkcbT
	 AZbfOdG2kS3DXZ38c9h/QGG1pNktVETReSWOAsPfk4sOWxlsRio5a47G6F1VBSXLtB
	 4AnkuqZnESbgBk83Dg0UEZlHl3P9btR0tCQXBaKlJAW2fc2pcZomeW76DR77xQyjon
	 j0brCBzu/4GG6is5MDZGtWR5o72XSjOaPgM61MgSpM4KB/6zCOFio6pZHkdunjW/Ij
	 7slSZdGsiglTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rGkAPVt69vd6; Thu,  7 Sep 2023 06:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6612821D6;
	Thu,  7 Sep 2023 06:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6612821D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 633911BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 06:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35D638140C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 06:40:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35D638140C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vM275mmWuIeb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 06:40:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76789813FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 06:40:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76789813FB
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="367495138"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="367495138"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 23:39:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="691650407"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="691650407"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 23:39:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 23:39:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 23:39:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 23:39:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSHk0j8+PdePp6YvvGI+icVp1GnlUG9LI9+26WnD0yqrew9a8uXXdgd4JoD76QRA6TcKNz9Do8t4Q30X/VlWnAzq11avT9SQxKmKQCzJPNg7FCcCRojwq3064LtzgI/FWAPOtb13dFo0Ow012SnLCs4/a89JTpso04RtblukuICeTEObjTOrxkWbWhEFN+AE8JVpliBFPLHsmVxFj85PZnhBE1DPyM5V6hEHFFn7y16epsuy5hEsNVPBqc7PBky1i5jQ0brVt/KtVQinZxKnQkcnk0iKeGu8van6xVl6fIbtm3wna9r48NmUDAB2eddhj8fYSDqmVNoP8uo/GQN0BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xv7tUwRikuMep0CAfHKFymfJW1chCQicvZXVOMYIS3k=;
 b=ij3DuT3dbYbOEEBKn9Xu2BzIP5LXrxba4UQBAFqFiGeSRHt3nXf41onDCVCZET9AecPEhiEsxtWXQN5bsUiwFPC0fCW8BUN633YtWKQIM2Tsixz14NWepLVGzQr4GejPt1B814B8xboyfgU+fBWD5WNnQZFO9aklWP5HolXIveFm08RztEpyWO68PX3wVRIpbDq/v+uIdWlFaqWp/tNnOJHkZpSKmaWNvFqvjbN/p2j3K+ZDi+MiZqOfx3PCRLnklUIUt0G/aOwm/2NrOTJy9HLgZEKoUIs/HEiP74A6QSnABZisa4mVu4ZWZ4/PKGAPqf54kY2gVi8tQHpJ5uJ5TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MN6PR11MB8244.namprd11.prod.outlook.com (2603:10b6:208:470::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 06:39:47 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::4960:928f:8f06:7479]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::4960:928f:8f06:7479%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 06:39:47 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, "Alexander
 Duyck" <alexander.duyck@gmail.com>, "Rustad, Mark D"
 <mark.d.rustad@intel.com>, Darin Miller <darin.j.miller@intel.com>, "Jeff
 Kirsher" <jeffrey.t.kirsher@intel.com>, Richard Cochran
 <richardcochran@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp configuration
 code
Thread-Index: AQHZ1g+ASmiBu+CN/kawX/lH5NF/RrAO/8mw
Date: Thu, 7 Sep 2023 06:39:46 +0000
Message-ID: <BL0PR11MB312234CFC9973CC38C2C1A7FBDEEA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230823221537.816541-1-vadim.fedorenko@linux.dev>
In-Reply-To: <20230823221537.816541-1-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MN6PR11MB8244:EE_
x-ms-office365-filtering-correlation-id: c28fe49f-7a8d-44d5-08d2-08dbaf6d3a1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M81pA2YE5Ki/vlH0REzgVi6VC9SdGxtQti5d0AbMuyC17yZU52YRmJLakwdcPvolMKyAs0BSY7axxxAiKuvgxFbc7xKU+2n+JKsWMYJjBaIbOr/EBxHgRPTafnw8l6r7bnwiozO3wBKqC9H0mFrXTNoH9dTPMjEvVteqMDxU9/D345JuK0S7FnQ/jFa5i60p5jX3TOhqN+wJu0PfEYrhf43cRqC47rghJGuDf2blhGhbxCMn1zkGToBmaFs/UiV0oAIguFkwhqwdkt1Kj2wQDVu8tTCy+CjMxO2sKu7sHDLmoNo1QuY9dRiROz3bFNWEd80+sdfqOSWDP65L233ULMxQh3xhMV/dyP9JonvvJpXqj3ooZS3JziL/dvy8vCPCeBxOiD3IIyAfdFqzIe37f9hB/0Nhr8jIALLKrzmuB1JD4RlWDPBtwgcK+G98jh9ZvMMpgtUdg7kgDRKnMhSFj6wbcCoJ5Uk67qjuFNBgqxoGipiOcskZLrxE2GI9VonWQkzWRxgLLwGudAzhygZWInmyUfj9pvDejcJhOK1RXWmpP+Qw/a2hIIAIxLtTwfRFglcNz/b5br7yjZchTSgI5Bq6dYSzp/dOJZOlgJ4mmeFPxJjx3K4emvDqdcGainJ2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(366004)(346002)(136003)(1800799009)(451199024)(186009)(122000001)(921005)(53546011)(6506007)(7696005)(71200400001)(9686003)(38070700005)(86362001)(55016003)(38100700002)(82960400001)(33656002)(2906002)(26005)(55236004)(83380400001)(110136005)(478600001)(66946007)(8676002)(76116006)(52536014)(8936002)(4326008)(66556008)(5660300002)(316002)(66476007)(64756008)(54906003)(41300700001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S9wOlQEjUNId/LxvrE3iwqDfQbMg0tIyFAdh4KLHQyG+C992QU79QwSFMSp4?=
 =?us-ascii?Q?JDphgJ418b1hvyAwqzKu2sUP0THw1yrplUkg3QrXGNyV3vDmTDoXbNhTwsMe?=
 =?us-ascii?Q?oqDunUwYo4vnp7IMbh0N50F8dBXuZRs+Y7bdPlRAVxsaAQgdD7DcnHlt76jl?=
 =?us-ascii?Q?/UpaV6xn4Xd4S2WRvMpCMRCLLZaveYr1gxrv7wugfmJXbAOcK2m1bM0pVoIb?=
 =?us-ascii?Q?GY2a3lNFa8V9j+jhAO8tn2ENDiqeyWdBoSaH4Hhoc/GZ7y1Ee0vUaug7GSx/?=
 =?us-ascii?Q?+DS4Hp7ZTNfiGrSqYHBv6vfEFqXfeMJz3JL0nncFT5RtZIasjFVkOJJHtkdY?=
 =?us-ascii?Q?0gN/evo+VOdAfBXTLDiIyI64DRbYMdO5DrkptMwHTOKmcPtsli8bE56d0kwL?=
 =?us-ascii?Q?ETv6JWNmnQ1Y84N2xEqYf+GKjge95MV+s55+P5qExmjdP+TIkLIudQagGTUE?=
 =?us-ascii?Q?93/K5I4iaD2TxE5JIAEUud7o3LFR7Jq+gsIlBEbNdyFCpgMn2YW4271HTQ6Q?=
 =?us-ascii?Q?2F2+q8lpYKQpJy5hLDlOYJFmyqd970WIwSvx3iHVmpZyYrDwtZvdygFWVzKV?=
 =?us-ascii?Q?p+SB6xmvp5WpNcKiJ2+JZAy/77X11rI8G4DX2mpyMN2sOlOBWMlLD8SFfs5j?=
 =?us-ascii?Q?ZNneT/XKLN1O8t8mezKWgDiEVwTiV7ZmHtdDToxyZF5XikxBjSlxQ6bKbp9a?=
 =?us-ascii?Q?OIJbvBJ8kMmCE598Zhp//UFcvUet0to/9bTpK468fAyNRod4eSjjUiiw3f4s?=
 =?us-ascii?Q?4cWMonZCvSUngvFhjdxEhZqNHDi+jUu6iy6KzDd1GtbdLQwzD115I323UibO?=
 =?us-ascii?Q?Jbd6rxqsKFqVqKz7K4TCloCu0pTJOhkAw4TS7BoXqZxkDqe8i0qSKUJQ8NY4?=
 =?us-ascii?Q?c6TMy7ePS4zvef/HpY0mb0MRv7dK31Y9ZdWAYogTwTs03hMUhS7SPU1MP33X?=
 =?us-ascii?Q?lAoNL3EC1ehZL7aHQNPC06bbJtBjZbNIKZKyRCzd9TPr1XL3iLeyhYh/lDqp?=
 =?us-ascii?Q?960ztay00HEK6sNU4nQL9pOLlSfLwf9KDsdOXWXRsH1nPiHP/wgziRHCmdG2?=
 =?us-ascii?Q?8os6HV/ebTA4ef5b4tymFs6n1Ec8jkFeDhNqgbs9txqp6LLPuEXNv4iJByJ9?=
 =?us-ascii?Q?IgbdfGndAVl/4NITmDjJvt+K2/iwHDuK65SxYyYIfP/O65owoTNZSEsATlky?=
 =?us-ascii?Q?7DQP2JutJ89Ijn5MplKrWSXuX/S0t5LHdVP3e0VQIVYw/fR6xKGyn8n7OW94?=
 =?us-ascii?Q?EDXUfjF/IgoWBVz6VFoyvYo8EWy0teAMbT3r21DFxfHiv997sXKOKekiAL14?=
 =?us-ascii?Q?nPCG11kHor1gfni4RK+7AuOyRKzB/HcSDYJI8OiYxHgVidRunEtgkuZIoUOY?=
 =?us-ascii?Q?Zu6l5drQH4Z+aqb7RLGKxQGh7mbUOjqWdnaJxArzApQXz4vxBeTCF3NobJi9?=
 =?us-ascii?Q?2f8hq44wtpwDaQSIpXKVJWhn+K+Uq2ElnsTOw7/GlMl23BlTTDDLiEbca9mH?=
 =?us-ascii?Q?NLUV/LevPdiNQuMOe2Y9edWy7yL2L199GgocSkEVyIom0sXqbd2afgkLSOqI?=
 =?us-ascii?Q?tz1BU4qd3UKd1q5xWzVJnIJd41ouOJ8sY1z8V6QX+E4mv6sRLo4eelkz8FTl?=
 =?us-ascii?Q?9w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c28fe49f-7a8d-44d5-08d2-08dbaf6d3a1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 06:39:46.3748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vZRsQ18UhLnB6IqoQCQaQxsXoJ3fI2YOxKOzFqZzb/0Ay3O8PUZZG8fFXBu1MdJxXVNdRBBrsETwJWtADu7JfB70LzrxTaW558KxwRFES06LByHl/OJcWVKE4bOgW3nA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694068801; x=1725604801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xj80fusXQQDszIF1IMR3KPbsEouV2mwMTty6+zmRLG8=;
 b=JVKCv9aZ4qEa6P3zRjwt+UM7kREiNYDIdL9wsKMLqU+nd4hGieocfeE+
 n0LY/Pupq2rPIiXFLPetcgeYKLvUAh/vZPjTjwUhQ+AqnVKZJSGdUkzyG
 mYmHW5XMv4SQahJTmeIHei8CQuVzCuF/FN+8rFGzd+khFUS52cWqshx5X
 GSSKLp4rJkkNrgNt+4Zr7hJyCcFUsv72lUGYHeS+/TSFEPIQOxvevYZg/
 GZ5mAeqwZSGZKyKYSL/3x9wzSfLEyMRHF14kw5vTDPXZiqnH5z29gqb4/
 m78L8FX2Sn70atxy8fzVpSnkdduqUkHpUCj/kfd/Y4Ey+6nmsVoJdwHYp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JVKCv9aZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp
 configuration code
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vadim Fedorenko
> Sent: Thursday, August 24, 2023 3:46 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Jakub Kicinski <kuba@kernel.org>; Alexander Duyck <alexander.duyck@gmail.com>; Rustad, Mark D <mark.d.rustad@intel.com>; Darin Miller <darin.j.miller@intel.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Richard Cochran <richardcochran@gmail.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp configuration code
>
> The commit in fixes introduced flags to control the status of hardware
> configuration while processing packets. At the same time another structure
> is used to provide configuration of timestamper to user-space applications.
> The way it was coded makes this structures go out of sync easily. The
> repro is easy for 82599 chips:
>
> [root@hostname ~]# hwstamp_ctl -i eth0 -r 12 -t 1
> current settings:
> tx_type 0
> rx_filter 0
> new settings:
> tx_type 1
> rx_filter 12
>
> The eth0 device is properly configured to timestamp any PTPv2 events.
> 
> [root@hostname ~]# hwstamp_ctl -i eth0 -r 1 -t 1
> current settings:
> tx_type 1
> rx_filter 12
> SIOCSHWTSTAMP failed: Numerical result out of range
> The requested time stamping mode is not supported by the hardware.
>
> The error is properly returned because HW doesn't support all packets
> timestamping. But the adapter->flags is cleared of timestamp flags
> even though no HW configuration was done. From that point no RX timestamps
> are received by user-space application. But configuration shows good
> values:
>
> [root@hostname ~]# hwstamp_ctl -i eth0
> current settings:
> tx_type 1
> rx_filter 12
>
> Fix the issue by applying new flags only when the HW was actually
> configured.
>
> Fixes: a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x devices")
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 28 +++++++++++---------
>  1 file changed, 15 insertions(+), 13 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
