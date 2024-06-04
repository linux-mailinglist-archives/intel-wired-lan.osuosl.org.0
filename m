Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679B58FAB62
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 08:52:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18557409F3;
	Tue,  4 Jun 2024 06:52:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_1XIYZJY3Ym; Tue,  4 Jun 2024 06:52:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5367E40912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717483934;
	bh=gLY4CdPqgVOVdC8g7YNxRkx475ZTiSWG52r5IzLNeQA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uiGNDEVPVFfwAxRk12L9VoTEYs/JjSJFdgjriAn6r03+wqhl6Q9VTWzRH7PQst3Hb
	 GN5R+Gc1aOZhzTkJRPvBBVEHkc3yti7LZZ1MvNsWqE3mgRognjPiz586N8KTu9iu/O
	 Z1eHV1bXhL/n54dMMuDhI/q3/wkoGx6l9QPx8igRHPVvc4lVzIVB8+Qjmfhg+JwrkS
	 4gFlpxsjhUolJ4h4Nz/3fSmpfUj1CSFvM8OwHyoNOumtUWPfqvHQ8ySDNgZ5LjXdqK
	 JfhsrE4Xq6DBDsJqAzXV323vzjct+NyyL8A1jB8RSDSgZVUPMm3KD6m4pPSOq620AF
	 SKLXpVNSX18jA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5367E40912;
	Tue,  4 Jun 2024 06:52:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 059E81BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0833409E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:52:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tC04c25xtazk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 06:52:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 047AD409D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 047AD409D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 047AD409D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:52:10 +0000 (UTC)
X-CSE-ConnectionGUID: ztCPiGhFSeClDRVpvUwQQQ==
X-CSE-MsgGUID: m56SfmxlQHqy++/8bPqnow==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13813969"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="13813969"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 23:52:09 -0700
X-CSE-ConnectionGUID: +kT+qLW3Q1mWCirNWsyyXQ==
X-CSE-MsgGUID: 2wp/TaciQ1W76L3ITyag6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37726854"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 23:52:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:52:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:52:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 23:52:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 23:52:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nFetpYKe4GSwmmyNvEzfLbfHze9kAgOUu2Knn5LVjIrtFkbendHAOy1zQd0mhNdL6FXXC/2mW3iEZJujaSmFzzhyOK8Mvp7ZaaF1Hafk5/VfpraZDg/eWsH8rYsnDEzkE0m7JMPzYciiyrJ5k6q+NggsxIc3GA4ePXwlCSjll2mj6vKzofAnv5F51HLSvK0oKtnFKmajRsVnbuxFSgBgWsbMH/ReJRctcuCBI5Xt//btbADN3LFRohqjrnnCmm7lhCmD/3HJ4BCYD3cZCJ0YTq4sIXUea/MvvxzU6fJbr8g0YlP9+kD6GGL6N3Ax+9xGrWznScMwm02sZNRdya3xnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gLY4CdPqgVOVdC8g7YNxRkx475ZTiSWG52r5IzLNeQA=;
 b=O3udosH5Vb1c6LHycbLseWrAxbeVIDc0b91enwaAq00L7NebIDUFsEw7vNMBA7RDO00ffTnT6yuphsozW5t7rhwndWNGXO7yBDyAB3gNwF5nr5+uw/Ef/IOc854/1CHNw6Jq3CF4h0mZ24dYyQXfG9mw0tzoLmipJ7J0H+eIGgp5CewC/8/piObFz6zDTwQtluB9kq4Th3DTiVtHzWEcJeLUQF4OWtXZ5b4g+yYyo6g9xbJ1OLGHrV5bEMx4IgbeRaFPY8EPg8aR8Ubhq8ljo2tWhVBGnL5zdXKzwu+B3dSXX+r+EnFr6D7lOqF8y2yok4tIL+OexpevwU50jEFFiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 06:52:05 +0000
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22]) by SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 06:52:05 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 7/8] ice: add missing
 WRITE_ONCE when clearing ice_rx_ring::xdp_prog
Thread-Index: AQHasbrWUqOu1KQZHUOVgJDVhabTQrG3M7ug
Date: Tue, 4 Jun 2024 06:52:05 +0000
Message-ID: <SJ2PR11MB8297069EE9B36479F2ADB69EEAF82@SJ2PR11MB8297.namprd11.prod.outlook.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-8-maciej.fijalkowski@intel.com>
In-Reply-To: <20240529112337.3639084-8-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8297:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: 7f3d8f76-1691-463e-52ac-08dc8462d874
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?TgVqN5wqNM9y6rgDI5BgPm7dfEHhLf8NUcEYoX6bFOfi4wdNdOcQvKNPUtgP?=
 =?us-ascii?Q?ZYfgsXAIr+1j+4swY4Z/9OSOo1kHcX95B4WmSJN4iyHnnOpq3BOn94sq4Sav?=
 =?us-ascii?Q?v/cp0CdRtX/DXFWHuBSt1h073AK9NbaTuDQfanFdjHhIOiWFRyo4+Q3k7rxV?=
 =?us-ascii?Q?arJozzmnMaQj1wCbbdSQ7oDPp/x6KeIvFMwavKWnIaYD5q1rkcDMwmDE3rqM?=
 =?us-ascii?Q?XOoUeIqjukDGIzzxcc6zd1k0SoVCO0H+BrMAzYONwzFZcx5Ir/vIDi+v/IO8?=
 =?us-ascii?Q?u4zJECxzFTOdkXRS9Gwl6igt9y91vaB15wVr0ki0qqm/IPemPPvFTx2WD+oS?=
 =?us-ascii?Q?SrK6RrGtbSvfIlo/VOxdsSz/I+BudOzkFc/6SdGuK8z4i0adkt54xOV42N4V?=
 =?us-ascii?Q?fo/nBzMdHiXQKZCrD56hsfAmPlU4qYksDM41zigL4W9FtZNZtAuBfjhsYPu7?=
 =?us-ascii?Q?mMa2+k73aT3U2BX41cEg5Na+FHlblgSJ1rbqmTPFQVuNdH7tBuz+ScISm++e?=
 =?us-ascii?Q?ctQqOZVFOdgiunLQLwKR79PcjArPybj47C2iZX2Tip7GwGjwrOo6lyEYByIM?=
 =?us-ascii?Q?+pQ5YEYOI4MGMgTjKNrAywT7bFA2Xi497Jez1KElBYDfLHIGJU1Drt9OUiuW?=
 =?us-ascii?Q?kJonaFUGcIBPdOde8fpKMMmmJfIkjFo81i5HYTBoH0WXCyoxZ059n0oKIXzd?=
 =?us-ascii?Q?Ma37Uz6avNZkmUeyBKNwKdYZAeDSy6yTaONxGB62WR0KNLbDHJGX1j7mMeKc?=
 =?us-ascii?Q?bIB96amJ0d6foEYQGzEGYRvxe/2UqpMdYFIkcrgQHs6kpry38IiyFkwHDX4z?=
 =?us-ascii?Q?6UrenBJNzz6myfWGWhx2rG75fhYuagi6OfAxEkvOfaIpU49tUQh3jqZ5sFJb?=
 =?us-ascii?Q?zr/1YDRB/zYHeLeFoMChoVXv1xmHwCaC6EFJJPiH7/6Th6mH6eeg3L/HJDvO?=
 =?us-ascii?Q?dntVjcaIKdNmzMlw4Q5EuyHAptBpmVuLsGZLk4Gs3Xq4RElN/fAcwgBbSlEL?=
 =?us-ascii?Q?kNT7SIofB0UzRL/KGsckM+tny8oEBuQMsb6OMo/kHieyQ1jwUnoJtA2PptxB?=
 =?us-ascii?Q?Y/hOtyv0pcnY+pbNGlittlq6qgIWjHzmPdJG8g2cJ09Pdt0csGdJhfl84zmq?=
 =?us-ascii?Q?UVAT+CFQEtPrDSVTwQWnaIsA9goqX7Eq+FUu8HuiYvIcuUeHXAYQGaVsDR/5?=
 =?us-ascii?Q?jzRwqR/oDbIkLVUqCpQS2oqo8feiQBvqvpAk+VUzbQ5slwjIrgk4ts2MDbW1?=
 =?us-ascii?Q?p1hylfPL9HL7gp0ypUrAieJUli1FcQPl1u+WSR00OwQs0JJOaqy8zKv5xVMF?=
 =?us-ascii?Q?uO1aP9GgBNRYLMR/mp0cIw/ZVPrGSGIMgZxI07Gt9Ip8tQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bzt6h43YeXqSGIeXEPp2/n/CJOB4g8WZ++sgJg+Umc2kHNR/Fuv0pWXwUeU+?=
 =?us-ascii?Q?3GxauaQ4cAWdKvkATYXm44IG0RNDSpINzKJjhPa0m8/8qfUckxX/yRt+0u6B?=
 =?us-ascii?Q?WLcRKi2WoV/e3MB+6m0YuTBWRUj5qglm+y7LISIl7Pf1FuMHmCxQ5H3pAckT?=
 =?us-ascii?Q?MiIhyCQ5MieOQSV7RuxCATczhWDjTUs9NAN6vJ9FKrw7+ylJXTDodKm/TNRH?=
 =?us-ascii?Q?VE7cvwKgriZZJPXf791VPJl2K/20S8EfsQduhQKJaQI+ZB0jjPn1OWPnkRyH?=
 =?us-ascii?Q?lnGBXNAjXFqLPZ+gjOmkF9c4e8/p+Ep7Go58g8OIU6UH1FI6gmsF26fg9M8M?=
 =?us-ascii?Q?Ff2+/TNdN1uhtSvksS+0g6PuuNiISsGAw+FUB1FNmXXteW/eGphjNO8k4ywF?=
 =?us-ascii?Q?C+gS/xtrJy/ZlIl0KmnhvmNB0pgEROK66VKafni1wkESZkigdlt0ioQs/2dB?=
 =?us-ascii?Q?NrDODKUhwqZpstIgJ4KaiMOwABb/I+k8U1ew6d+OdNU1abv03fQLZwpTiibR?=
 =?us-ascii?Q?eHwzWu0TUI8l5rKHc/eIRtOFKYqQV0jbdMXqAzaQSBZJ0R2Tb7Bot/61tHZ9?=
 =?us-ascii?Q?tk/z9jp+H6bIuKzDXpSmo1EPz5Q4OQcz4GTDqIZCmUXSMqZy1dDdSpEhza1O?=
 =?us-ascii?Q?8CAFhPWK71DIiAie1U/LtD/jj7gg+LW/P9OoTIh6WH/JAk4MA0ZndZUcx54e?=
 =?us-ascii?Q?J8XB6VJbbLrE3ZgY6KY5oivXpBwKyl6ea7igtRoQq5a6jhdTvbazBydYSmjL?=
 =?us-ascii?Q?YGnsxREWHOFefMCGyU4h3G178bgEY8pp7Tp99m0Y7siJaDb5gpj/VszHHyfd?=
 =?us-ascii?Q?8k45ei4R/xG2Jc0bbmMdM/TTeRDX7gMiPtJbMWAe/QCT6KhZ6N50pwEKkE2E?=
 =?us-ascii?Q?5/rmTF2J28hhVhDIPApZ1Myy5deC3AUba3g8lWDacx2SzNLcFYoGV/op/pFn?=
 =?us-ascii?Q?tpV/aBJhsgpVA/m275QB9BHbkpS7TXVleCvbVGcQXDis+yyX265xtM9UGM18?=
 =?us-ascii?Q?2rfcbn/ayayFW3PyOj3i1hqb8ME4S3Nn6+o3E10VroIEUog4tUkoq9/SB7og?=
 =?us-ascii?Q?Hs/4cq9nGxUc/EjRK5/LqZNRKd6MkuxYcuC1eu46OWYZnGIcca+FirkN3NLA?=
 =?us-ascii?Q?EKAFlB2+kIK2c7NZBRwdvhGweL7kYxST1a+gh4VWjGt3pC5ON5FOg0m6ZbLz?=
 =?us-ascii?Q?fiCscBZdPOi3SiZekcOUc2uqB0QjrHSAWWdrRc5oYn96MmAimkuwvBkIxG3r?=
 =?us-ascii?Q?9cN2aoSlXgmWM1FU2KuVTADO9A5uiYv0HOOR+YSUdY1Aj6B7c5PTdGVw8wi/?=
 =?us-ascii?Q?Y36TwGQJOdAvZM3h20yGhL1KW0Ii/yB5ucy+9z1VhTv26nQUfCwhfUdnB9rk?=
 =?us-ascii?Q?hDWFHSaumuaMn2VpNjaHtELTd4Kldfi953nvE/qDvhgW0PnNNUo2rCak0W3P?=
 =?us-ascii?Q?taN4TExv1/jKNi/JkFURxniHih38LtjPilqJ0azdAKtkQ2st8UlP5nhXNxur?=
 =?us-ascii?Q?a7XgjdrQon8r1LlzSC+nHA2EzlOYsBlm7JKBMg2JPpo5WljarCWEsrbysErX?=
 =?us-ascii?Q?v3fOwj64N+Zc+VwFkYE+0V4MxmIiyjDZcbfia4zA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f3d8f76-1691-463e-52ac-08dc8462d874
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 06:52:05.2503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Omsx5rSRHbVqnZMsxP5eG5omMxJ4hZ5HL+D1YwXqvyPQrv+ozdid5T8GEsFTT+z+f/GZ5zWY3yO8BUQro20sKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717483931; x=1749019931;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gLY4CdPqgVOVdC8g7YNxRkx475ZTiSWG52r5IzLNeQA=;
 b=V+2q5LGEwFZs6oU3k1IK6QrD4KTsivy/i/VRC0l90l8Gu263XbNxy4YT
 BUb0G/KMLT9QbJJ5S7hb20RvxHZSPbI4k5uYpaB7QqGtOdVNJSKmHfEnl
 nYeqBYBwL+szbBmwkvom+8Mh0Lp29He3+ogwnTl1HS0N6p7182wo9eIvZ
 QMZS+vFAx4J13/e607lwGCjcuXN5ONL8n12cuRPt6WJ6AYbtMDkMgarEe
 RBI21jhCwdeVqJauSvPe2hJtEem7c9f2ediC0qdCbhF7o/rBl7715jTGK
 7nxHg5aa5U5fJ878V5X8bDnFDRQKvRhdCsBMoT/S3/kCC1niJBX/nwPIB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V+2q5LGE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 7/8] ice: add missing
 WRITE_ONCE when clearing ice_rx_ring::xdp_prog
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, May 29, 2024 4:54 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 7/8] ice: add missing WRITE_O=
NCE
>when clearing ice_rx_ring::xdp_prog
>
>It is read by data path and modified from process context on remote cpu so=
 it is
>needed to use WRITE_ONCE to clear the pointer.
>
>Fixes: efc2214b6047 ("ice: Add support for XDP")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

