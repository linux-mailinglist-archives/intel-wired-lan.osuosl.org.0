Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB358A26E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 08:45:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1C2D612D0;
	Fri, 12 Apr 2024 06:45:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dieV7Q86hY40; Fri, 12 Apr 2024 06:45:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BCC7612ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712904340;
	bh=pOj9dg8P8H/INmJEEFFwXbHqSZ1wMhOGa9qL5lEQ5CM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T0futerH864gKaqdw64GTkQGGQqGBayZc07+npNwrt4JJxQAAl7yvNPLpMQJ5OvN4
	 Lz/R2fwWDtK8ok8GxkuFU/57ia5vCmu3SRsLWKM2XAwIpLsID/R56Gn7ujSZos3oVH
	 2bIuV40b+FDoeBLGS24FlyjWSmbxf+0nWfo2zdlELjtbCO1WQxYMPANPkVE8LdJoYu
	 aSGatrKiyw979G0GqzGkD5Auwsq8yDs9rXtxnv/7eMmLObAd+3Papiyux23Dzarx8m
	 QAGL81Mv1F5JwgYmuZV8ijuXBQr2uITctviHs75mOTVl1JviJX1PfFes+DBEmAI/x4
	 e430vG22POHbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BCC7612ED;
	Fri, 12 Apr 2024 06:45:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C16321BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B93A041F30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:45:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gjzPqbrR9aok for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 06:45:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ACDA041F07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACDA041F07
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACDA041F07
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:45:36 +0000 (UTC)
X-CSE-ConnectionGUID: 2KEdBakURlGbdewy7C2KcA==
X-CSE-MsgGUID: wuvdu2j2Tm+D2nMzZq1zTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8525112"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; 
   d="scan'208";a="8525112"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 23:45:35 -0700
X-CSE-ConnectionGUID: fYFsiOnKTyK0EOrWCa0exw==
X-CSE-MsgGUID: q/J9SIeNS8yu49J2vF0MxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="21232729"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 23:45:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 23:45:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 23:45:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 23:45:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 23:45:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPFAq1VTi6fhfWM2TvAk9EcF9oXsXw+pbDDeYemXZlmtRJFc2gZtwo8kmlCksxM1w9/HboyihC2TjaJ+a1Gge7l/jVM8tZjvO81yeOM2ovwZnSSUmiOca0YI0z/hBlBsFauXzfeAXxkkzZGnHRdaI+uXLZlff2J4+jD3R331VtWTd/NM4XqEKgXxpGepueWuEw+hqP8iZsbc9f+eiwkPbmBqUPtJRwm3J0Em7wsXA0SWiMu/ek6xmLYJIWcWzkeLnHKe9hGbGmJSEf8cNOypt9lgEUggJuP63GpOX74LkN/ayglQOwu8bwTlflIzPSlyDxNrF9g1O7gTFhN4vO0bxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pOj9dg8P8H/INmJEEFFwXbHqSZ1wMhOGa9qL5lEQ5CM=;
 b=jR4KEMxN8ldpiWD0zRU/0Muvva5o62gBPnoeJmr30CsdoniiuTY/gIxf2WTedUJIbmkadBPO5cLq/NfJqkIMdUqg2aDEiEeSywLt9DVi6oLuqRLYQcoEifspTbfRJGR6/7PdTtn50fZwptHf6qgGnn7hKebgrL2kGro2yoGRwromp47uwNF32K3mvqXGWe03TtrnL2gZiDKDhgS2LXXqmUhIr0S9pwcZfK5/xInD7hyyJx1H5GRbnS6YYEmUjL+kl+PyrlLXOUaPGmWGW/3yLvgbarkqAmRzxrPMOhdQM1qLw0V2U98tbtmwJDmzvVPYA7FUUpEOue9RtXBp0daq9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7800.namprd11.prod.outlook.com (2603:10b6:930:72::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Fri, 12 Apr
 2024 06:45:27 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 06:45:27 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix checking for
 unsupported keys on non-tunnel device
Thread-Index: AQHaipT9ijM/gj0no0mZzVGfOKwDVbFkNKNA
Date: Fri, 12 Apr 2024 06:45:27 +0000
Message-ID: <PH0PR11MB5013DEDB3DA7637B39C9E0B796042@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240409154543.8181-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20240409154543.8181-2-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7800:EE_
x-ms-office365-filtering-correlation-id: 2a103e09-7045-4c33-c9bc-08dc5abc2392
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p4TbFKQZF4OINg06sY20pM0OhsOD+N6Iq7lQSQhDMBoLzr0ejES1w+CzZfoygshPKtiPxvswEN/3P+syuVWLS4xH5f6u6s189eUwqdO/Q2G47hYxpmiSOJ8bKFr5QCtQxRW/H+SlAURkXkh0iSL+B01ujHbPAvdCPFurmCGm1zkUfY/G428sZuPdwBWaA1c6MeqLuTgKM8H3n/uTfJfRS7t1b14t8qe1AxNxaMQbnla/wr16RQk9nhL5y6x65f8/s/KgEZjdvMO0Q+MHKVxymcXvIf1vRo6Y122VO0buSaIG8odoKMiVRlR3Iq1xcfqAev0iHfH2Tyj3OUc87VfU8kokJy2IUDiaXdot2Z0+C7N8TV+RRLjTU/qqoawG6Z1yMVoc3bF869sFBVmIeUhdZ1LNGYXyEjGylFbRXuAyseYpux5ta9vIO8pF4gRraOAZCEy7uanO18I0npy9PNUVwIu+fbr1eIvdpRQdS53pVHY/nXBIgE8tuKx4YFcYPFmpj266NgQnavpLIQpGfA6jm5RlhRakqwWz8PNtD/ckD1gakeGawLNJ1+yFHi4FIJnnjQn46bp8R+5ZK7x2Rz2dW/mnkflo0PZF9noP+hUw7A07huzH6zLRkbRThpww0iSscixdL6ri7aNVq3ZnoI0ASjc303Vu0mIFLO8q2Xoci3QOJTjBXjixmBEUuQUz91RTRYVX103mq3SpKeDnwuvbAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PerTQhgiGXcaVImGWZhy5VLB9dOue7YTuU0C6CpU+oYPzHf+WM3IPArnDS/J?=
 =?us-ascii?Q?kvYAiX1Vn/+sBWd1JPjkaKE4MwD68q8pJ9Gn+0IWeXruUWfbC6V8w/3TOdYU?=
 =?us-ascii?Q?BbC2X6ri2ga1b4SAFlXL/FySd+a0OmjQXKv8QSHMusUNrtENKOG9hJdDtWUT?=
 =?us-ascii?Q?MAGBg4BDCps8xOCfF+YuvQhrzqx954nogbJbpfXILoFuZdTgdOaqXKxeyWL1?=
 =?us-ascii?Q?QVAofQvCwGD/IzTr3m+S8b6KaHF1PqMvyJQXSxfDEKg725IdsbjrclpZmeN6?=
 =?us-ascii?Q?4N9NVCzm4ZilK/Kczks+c+SCx7MLsDMWWzPTINqjHNK49SfdehojhqA1P5tW?=
 =?us-ascii?Q?meBi7PM33pVrcITic7JngUgSVzBoE0XvRB5xFBkMNlpNJO4qy2I/ceafyg+f?=
 =?us-ascii?Q?3e/Q3drnehGCLt5urJ9kCScjkfP/YO5qWbp71eVIbVgagkjsot085fkaINJS?=
 =?us-ascii?Q?ZT7SIJud0Gz2T8kKSnY8BS+sv7lFVDSYpv7SfuBZ4fTo38MxkLGRMrc6yWCH?=
 =?us-ascii?Q?RFI6QXYDsimmXhb0FDxD2Sio/DBhBcM4DuEiIvGnxAuHeUWKcBXUZqN+wjLb?=
 =?us-ascii?Q?KE+LI/oMQsCf+l9F6KtuxZJPiQL901+VqiQVooCD3PEZQ/ulELu8i9MLQg7F?=
 =?us-ascii?Q?qHZlpvqTYqIEVWV2TeI/gz5MJ0hYRMvBtF8NIPYA0bf7xVKGmMKt9xVBZEFs?=
 =?us-ascii?Q?yTbEd5f8129O/WgmBWtB96sEQV0FD31NrrsslMmXoxk6wkOzC8yS11vJHlLx?=
 =?us-ascii?Q?XoDwWMU8ejHPX8x3NQTLh2TZ+SNK1VTZuSDkBOoBnNkAQFoR2GMwJf9+VHXw?=
 =?us-ascii?Q?0ES9S/2ED0lKLJhBrs9r+ODqaVCMbdPwUIfEBBGs9AH5FHvLp4sC3n7dG69B?=
 =?us-ascii?Q?vKs/Z0gxwM3lujCV6BlntAM5dO6seaP8jh1f/XMnzbfZFWKrIdr9rDq1Z6YM?=
 =?us-ascii?Q?3fprwOA43rv1g8P1/kvg0l++2zN+7Zoht5BnifjiwEFNO303JStTnjUY7mry?=
 =?us-ascii?Q?bhwyCQtiZOENYiPRX7WPl6GYvNw+5ZeAgloNrLfIzgvk3qp9SSmspYzIZz3C?=
 =?us-ascii?Q?mV+yhnNfUWFFWM9BqSrFatLE778vZJMHNsgqUXf4xHHyYhPZEJcwxo3QZXdN?=
 =?us-ascii?Q?no0bPyi4Wti0XLWKIEY52TNeeWN2KP7dxedmulpNbEzKoMEJClraz8clXu9R?=
 =?us-ascii?Q?aVfkwqx403iQGZLomyyNjJMTYQEindAsOd9b94d/zJz+cSWevKRWP4u+GJg9?=
 =?us-ascii?Q?H2WZa5LArthbUjFeFUZSNQEFuULRj0JT8VY+VACIOYO6k9l6nR24zGKkK2z3?=
 =?us-ascii?Q?c5PnFxVFEhwv0xX8YsJ/oP/BJxRbvMAYdXTg/Ihs+I+OOf+PCccbaRxl99zG?=
 =?us-ascii?Q?6ZNmn32bhYygbzWWDJZxTMB5bmS3HmFCaXr0cw4U5vzHGjjgg1xBeckhlvw+?=
 =?us-ascii?Q?DBg0VTekoEwap4v1QxtwVZ83NakdnhYtUuuuLE+MZyInQTwXUpcDQw7dYqg5?=
 =?us-ascii?Q?/Ahg5CBnZMNscQ4VAZHPa2gLO8GpvtbTNpl64UcrRM1/FvGHP0v9iRhL0Uuj?=
 =?us-ascii?Q?2CNxJ9WC4h/2CCIxUfPF0Yc2pbbJKobUuw+0jssKWMO5dEOOL5mfVPGyuK2Z?=
 =?us-ascii?Q?VA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a103e09-7045-4c33-c9bc-08dc5abc2392
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 06:45:27.6600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SqQN08nVz1Br9neGd76fLAXgvbxHfjOVEhCKvNQUQMwkkKDxo04RLyC/hbxzmYVpGSOUiyrZCxTPo67nuWuoUjOcNgLpHKvcUgC20Iomshw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712904337; x=1744440337;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ED9gRoHi7CB4ND81elYPacj2SxS5jx+YvUqN6h5RfTQ=;
 b=GN8DncS98OUfoulKb5R+Ypi8eEkwm4JrYTYp+kOs0APFDSkQGYAQxRmP
 4k1v5R6zmcUzF+1RUXYR3XE5AJ5TnW4dKSTtK9sAWaLAf3r7R8U6HoaBp
 KBIo1eTnoEXrDCg5RIcS+4Ixnybg/7Ed4zJ3IeDr7UeR7phLLRzDV0pEp
 RpnbjheMFejef5w+QG4+qIln+ZgPiRl9001ntA5QnHN/nI8qeiuhiGyxQ
 BPH21Gc22a5nFbStT/2QuZj5ZVcQt/al9O+lv6Ai+JQUmrVgGb8w+9pTY
 YNJg6t5IgA72UWhQDJA8Qyqttm7avMbTSkfSCx41RyJWJ9nL4jKG2UMEk
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GN8DncS9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix checking for
 unsupported keys on non-tunnel device
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
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Tuesday, April 9, 2024 9:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix checking for unsuppor=
ted
> keys on non-tunnel device
>=20
> Add missing FLOW_DISSECTOR_KEY_ENC_* checks to TC flower filter parsing.
> Without these checks, it would be possible to add filters with tunnel opt=
ions
> on non-tunnel devices. enc_* options are only valid for tunnel devices.
>=20
> Example:
>   devlink dev eswitch set $PF1_PCI mode switchdev
>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
>   tc qdisc add dev $VF1_PR ingress
>   ethtool -K $PF1 hw-tc-offload on
>   tc filter add dev $VF1_PR ingress flower enc_ttl 12 skip_sw action drop
>=20
> Fixes: 9e300987d4a8 ("ice: VXLAN and Geneve TC support")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
