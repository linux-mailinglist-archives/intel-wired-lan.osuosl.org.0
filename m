Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11361B0FDE5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 02:04:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A27541691;
	Thu, 24 Jul 2025 00:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jnx1WNTsmdwE; Thu, 24 Jul 2025 00:04:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BD084169A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753315472;
	bh=ietzqtun4nkTGw3C9RLZfo1hg8+y7/0ic0lVFn1vDs8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iBi8yrAPi/TOst33QaD7W72uW8HuE++riBZM01WHQ48z09nakANTnonZWlOxV2lsM
	 zvVeaZH0+tw0secDK3+2a6a2JJN7PShcAoLoQElo9XWKy36foELVU2KAdNeK9xPuSL
	 nVdSN3ydfTQ0KhxP+hh1rpFBfCMzN8gTffO0nDdyhW0oUsLrFPMLgV1XLiRMD274Iv
	 MlU3mUkRSj5ayhPC0B2LhNA+6F0Y7guVlcuf1KdAWN0+D4ZmRkaPFm0qIiVlTtM38K
	 gCXI677kaHEMhgOxjplBhCQDy/33fbKiyn6oiZzple2KExRKYfjFqr0KikfVN/q+SX
	 ehrqG/nbZnwmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BD084169A;
	Thu, 24 Jul 2025 00:04:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ADEE8E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 00:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90D7640F82
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 00:04:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H_9PpCvEFVK9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 00:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E0430400BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0430400BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0430400BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 00:04:28 +0000 (UTC)
X-CSE-ConnectionGUID: 22bek+PxQcCaycVloDWWVg==
X-CSE-MsgGUID: KmbJOTNESyuQoM4MVjFveQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="65874996"
X-IronPort-AV: E=Sophos;i="6.16,335,1744095600"; d="scan'208";a="65874996"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 17:04:28 -0700
X-CSE-ConnectionGUID: kPAOPhnSQ62i/R3tWsV+yA==
X-CSE-MsgGUID: tZI8nj/TStixOV1NEX82Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,335,1744095600"; d="scan'208";a="164123837"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 17:04:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 17:04:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 17:04:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 17:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cIGBeQoXOiiK9ONSlCswEofxk2OXGQFyXqPREZZci8clW72UiQU5+58itjiGkKXoN2DNOBU/usSZEO/EwWx4IwMQ3wkPgMqZKfkyRMaiqk/pUPU385TrejXTNEul+B7hF5uZkzsGpzoWf46hno53PsYirsLbLsAhj4NJgr2+B/fRI/SvAdf7l7GCXmxUp0ZluoGmwBVd6HUYWUCXuScVtyyWjQMvYUjS4q3u4FDocE/kYiiy7q/HJki1tSDKFbcRbfoqtHLXDrc7Dt0qqlMeQcRWc1ATm5zIoOKjfqDqCAOq+dIuJbvt+ZlBO3SH6h7JM8tYE7sZGUYIoYveRiZH3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ietzqtun4nkTGw3C9RLZfo1hg8+y7/0ic0lVFn1vDs8=;
 b=NoTFqPQyIgvBEKSyFffm4CNeZztq2d93KrIGekHZA3XwvZou+wZy/lx1YuXlxr0Vir/stndw/Nj2v6Ise8C5YVPTVyFMDl9ScR0EYiEPAghHZb99w7ZSM6FZWWs8NRO+Pg5By3YEPpErMg5K5pbUeG9BNlA1kACcFY3f9pAPRshxUP8XJRkEqgWtnBuDyOiiIhJBeRsfraK6A10NXwxfvqc6gWxZT/tOdkxFMg0ex66CXCzbXzYr+tOgXdOmcWGpV34dGteTyxSU/vXm3djRaDEhtv4NA+dxp8V5CRG3AcTXP4gw8CkA+S3polPmeLgHM+LolHAnCJj7EmY2pfuh3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 BY1PR11MB8125.namprd11.prod.outlook.com (2603:10b6:a03:528::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 24 Jul
 2025 00:03:55 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%5]) with mapi id 15.20.8943.029; Thu, 24 Jul 2025
 00:03:55 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 0/6] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
Thread-Index: AQHb93jurVZWZP1ySEOT0w2KgSGdULQ/2GCAgACMU9A=
Date: Thu, 24 Jul 2025 00:03:33 +0000
Deferred-Delivery: Thu, 24 Jul 2025 00:02:37 +0000
Message-ID: <DM4PR11MB6502F4622507B81F56DFFC65D45EA@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20250718002150.2724409-1-joshua.a.hay@intel.com>
 <20250723150835.GF1036606@horms.kernel.org>
In-Reply-To: <20250723150835.GF1036606@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|BY1PR11MB8125:EE_
x-ms-office365-filtering-correlation-id: 1ad57ae5-62ef-4d8e-b1ff-08ddca459490
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BRnmnYeumbpzpIwlyQg6YE8ylLzZJBHXTktPBiVU1fCYieF4/Xdu5CCUNjSp?=
 =?us-ascii?Q?GF3LO86RJ6cc/2Mj3p/taT+hRLEkUGvRyb3R2i3JVgwhn4YKf/qk7fT2Jv09?=
 =?us-ascii?Q?BGJ6ITYA+wTwf8LosXk8QBuh1Es/b+3EPNe961KIXsOvxOYxseLRhkGH3B2c?=
 =?us-ascii?Q?r1M5PX+t2GaxJDuMTlopaq0Es7pjmDvUKn7eiKiWrknhH8oHrKdrF8hqGHcR?=
 =?us-ascii?Q?ln5A5ee+hfmjjiLznCaooDNzlUNMCZbPXqQ+0YBnuLo+PP2nF+13RgxJIiG1?=
 =?us-ascii?Q?mFH1OY6zHdrmvUWIQZIHFa3No+8VfgPWNTZPuPbH4BdJT4+7w4qfP8JfRkJ0?=
 =?us-ascii?Q?dcLYczmpW98yqfXr6rzHNJeFcqm48/A1B54YAIf6x8wrzO9UIJcg7/Ovgx0j?=
 =?us-ascii?Q?B6wDsP2WS0LKeN7Hx8zDYvloveHbsHLsBVkAg7X82xKggGYSMg1ztjEJtcYO?=
 =?us-ascii?Q?5DEJH+fAL2wIU+S45FQlkdfA4BfeVjII4e2hrX1Qv9TCDlvX1+a/af28u2vX?=
 =?us-ascii?Q?gpZNksKc1fdvdYlan+zDqtYAIfD/cJVZm3Pf6w1qwdTfpOqM3qQiQUFy5XQk?=
 =?us-ascii?Q?u8vBDa2VdA70X0mBraS3Pw1mwvX4Q1SVO9wNVgKSM6/7Qe7hK+PP2Ab0K7Ow?=
 =?us-ascii?Q?YwlA7Uu4E3YqyFrVJAQkw/Mgm/lkUAQZfEFJU1hYkr4/9DI8pwZAJgLNGOjf?=
 =?us-ascii?Q?WcbhhEuSnBLxoqgiDoig4gOF536CguKIbD7YVVib0Vnxnf2EPi0k3N+9ZwfU?=
 =?us-ascii?Q?P1ra6HTbctAt6g5n5cVQL3r7lWjkrVnGg4xhhI3By49BH9Noo2Ty8cfJiaQV?=
 =?us-ascii?Q?U6Cp/zyNNTzHeI9EzWcNRedbuy3zJiuVgdzv/CtOTw7jb0P/KOdRqE0khVqG?=
 =?us-ascii?Q?GyoQ8Eiv0ohLyy/iH1xMvTkoJhcW/MEPB8pf9uYEw7OWkS3LhhEqZ0tipVd2?=
 =?us-ascii?Q?C6sImoHPPgdiOdULHWPa++bBDw4jrvcDAJ/OaveiRp5kj+EkezrUJu0dHsb5?=
 =?us-ascii?Q?iLFHDAYrj7WEv4dGe+P5fEtP/j+chnWCdgXOTTokPorMK39CfTTT71rbGU15?=
 =?us-ascii?Q?yQwQfuYtUYXMIL9j8KdCo9YXBgBcTKmYKbofXcG/okJObvyAI+iopiDhmDDA?=
 =?us-ascii?Q?eWRfxjNLHmWq/AX2M2FT0Pt7Y7Z0W6U47ZI4DszH52IBAcHSmQOOq1VbcM1D?=
 =?us-ascii?Q?zguiZeHKQ3fhbIRsdB6HnYd/F8LE98rp5oEVTQJzYbSV5rXuhrdOxuwoj5lj?=
 =?us-ascii?Q?iaR5Zn379qsDlwn08x5Wc0PF5RUFb6a68KIvspd6PD/nFexk8bIMIIyT9pKH?=
 =?us-ascii?Q?2Ni2ONfuOT30SQsLYdfK1R5fr9Dh3WuBSPid77gbf7Rx2bnrUG+O3sc4c38T?=
 =?us-ascii?Q?SZnsNTvCG45NUXB7XjvoByWcu3IWxomHqWHyYoitYjFZz+gtRwN48/6nvb/j?=
 =?us-ascii?Q?RDfV8f9ocz3Kp6v0wHER+36npUJRlRBA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZUlGxkhz0bXhUR1ec/BbDfaXuApfxqyEk8XdSStCFEV8kS7SjIbx0E8du4GS?=
 =?us-ascii?Q?TfVb3AuK7JnMQRIkLfpGHrbWfROo6DkawA0KnAdxkb/Dyt+gDEUX/UQ1XSwE?=
 =?us-ascii?Q?UTAI022QsASVJKG8IyhsHs2J/eYVaDA+5oTABTdN/D0VOueNVsNdup9X1GqS?=
 =?us-ascii?Q?Bf776bbKF7DllIeywzvAqlN6D3BiaZuLF8ZEP+x3dxpJYnXkUB7+N2V44z2U?=
 =?us-ascii?Q?IRp42OLymrm5nxoGH4TpDxwC+SejuEAZSxAt9I78Y+HkxEdXezYFQy56CAEr?=
 =?us-ascii?Q?w2GOsoCb0k8xavgU28aazRrcftWWBCZH5uK/0YtvJVP94kHH8BoP9HK2E9vA?=
 =?us-ascii?Q?GkHQepLUkcmsQgd8t61yANS9TlkBcAoU+qQGwIzwA3sAzfWdqRy7G73zabGK?=
 =?us-ascii?Q?Lvfs8uzX6NHd3wKq23HvGUpdpG37eDvjaianYETmywTP8HQ2t1Nn0d5Ofp6d?=
 =?us-ascii?Q?lo3Q9EFzAec++ATw84yoQF4hgSst7Ilvfa0xRjUqWxf5IS8j+X5p1utvzYwG?=
 =?us-ascii?Q?rHwqzA5jdffo3RhrOowXyhBghEVbAGJp2nstKsT0hBG8qOdGeT1eh6oFDfqq?=
 =?us-ascii?Q?hUKp0SMFHEELm8g7A+HBBpS5ZNuSF4qxIrfqW2+S6h6Y5UxSNbfJ9G+odSjd?=
 =?us-ascii?Q?3X6DyuLPShFR0j1FtjQWGBm6kM0Uhvzb75mgrNWoF48C1CU42RtZXcUv617e?=
 =?us-ascii?Q?FxbXTMk4Fyxs6aBwXsOH9Dm4m4qw/T3MLUkr9oZPdSbyuccOP43Escef+wNn?=
 =?us-ascii?Q?mb9Xk2yv5K3VzLOqjllHsPqtDibFTwACzGti6yX2jeXey+HdaabtowE6dU8w?=
 =?us-ascii?Q?JBlV+wpps5PWPs9xbvj4HAX2PjCITrccSe3DZCudoCzfHL9c5bhyTxCAE3f3?=
 =?us-ascii?Q?fRKnJLtSdJRgXdwh/J+I6VRgvFPkvkmu1MstFFkDbp34DTbuU1XdUHnx4omr?=
 =?us-ascii?Q?XZCELrrTgtjX1FcABDlXk1CB3ExVuaCx9a1g2+yuQB3fyJgqhm3E9r06S9D9?=
 =?us-ascii?Q?eC0XqXZcDV6JDSnviNcKlGdx9WLUGHOw+HzFUIw8qWwJ1Gta4PPQl9QPmcop?=
 =?us-ascii?Q?sstu5pjX3/x1n+nABUA4UOzHU//A6Yi1HRmiqKIZZL3/4Ff8ZjsFFDDNUQ41?=
 =?us-ascii?Q?kuQjyvvW0qvRQg/Qo5hK5mlEJLtlAARJQxCQOvSaS1mr+wEKAh9p2kYtsoMc?=
 =?us-ascii?Q?KtDB/bOf34MJthiVHpLoUd2Xug4GesLAsp8SNffM1ovRXnRCbVjQhA9DyfC7?=
 =?us-ascii?Q?DNY0s8kTNxfh1eNK8kZ7XKWo1QF43z0FxJ6rNoA5qd92Ok4qHOANfTckOKc0?=
 =?us-ascii?Q?uhL5jRSLWQ2waKomYhFuQCTMPzDBEVw2ADdVbKju1a50Y0LCm1lfWRQaGYjb?=
 =?us-ascii?Q?OcuwV5RcXGaU1IutQzVEeaVaHZywfa7n7nc/pKytAXFrxVokW4X819wWpLQY?=
 =?us-ascii?Q?N9CvhTpc+xmOcXaAqQ334zEnt5apy/uK2IY5nq7xVOK1jcg4tBB9LdOu0rDO?=
 =?us-ascii?Q?88RgzYKhmsM6Jgk/JTymPG5hxkM4Xkg7jF+Sx25tz/3GlPpCS2Ey0xh1iTdv?=
 =?us-ascii?Q?O8wP+8p6x6oNGbUX2maXnXKPoYjI/0ibPc1ZootT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ad57ae5-62ef-4d8e-b1ff-08ddca459490
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2025 00:03:55.0221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QP84eOskGREYigUjp88cpvoFTRPBA+/VGtDS58BDu/zTAaH2Iluf4pteqfHXBp08fPFo8T5XvK38Foqv9onYNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8125
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753315470; x=1784851470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HVi1+fsAhjH/e2/WoEwOlh7L7rYUgqs1hM04KD0yVM4=;
 b=OdLXe3eRsNa/ETLj2a6OVkblLn7GYY/rZEpZ6VZenc+VLXAQPyA84IJv
 C+x3RcMrvJBdNdIRymlQ3nrI8FSOhrzosifjInUa4/F+NiBAYt44g4oYd
 ID4Ie3v6piJYx5c6nqdOGKroohF7gbUbDvf3kjSpzKoZob/5tBatNtqKf
 sZKQ5SyuuJpkPrxuT1NwI60uVknsMd72/rXCNG74rqXjDP4JhR2xnZaRl
 KqlHAB/s51rX5POMzxtPDb2qvJGB2BzJ2UpRiE+/DU3CSp8g5cFoFGZ8p
 MFtMcd0JNxabb2deXKvk+gzqgdnsddDdEpSKgFUKP6sbny3C69lm9G75p
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OdLXe3eR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/6] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Thu, Jul 17, 2025 at 05:21:44PM -0700, Joshua Hay wrote:
> > This series fixes a stability issue in the flow scheduling Tx send/clea=
n
> > path that results in a Tx timeout.
> >
> > The existing guardrails in the Tx path were not sufficient to prevent
> > the driver from reusing completion tags that were still in flight (held
> > by the HW).  This collision would cause the driver to erroneously clean
> > the wrong packet thus leaving the descriptor ring in a bad state.
> >
> > The main point of this refactor is to replace the flow scheduling buffe=
r
> > ring with a large pool/array of buffers.  The completion tag then simpl=
y
> > is the index into this array.  The driver tracks the free tags and pull=
s
> > the next free one from a refillq.  The cleaning routines simply use the
> > completion tag from the completion descriptor to index into the array t=
o
> > quickly find the buffers to clean.
> >
> > All of the code to support the refactor is added first to ensure traffi=
c
> > still passes with each patch.  The final patch then removes all of the
> > obsolete stashing code.
> >
> > ---
> > v2:
> > - Add a new patch "idpf: simplify and fix splitq Tx packet rollback
> >   error path" that fixes a bug in the error path. It also sets up
> >   changes in patch 4 that are necessary to prevent a crash when a packe=
t
> >   rollback occurs using the buffer pool.
> >
> > v1:
> > https://lore.kernel.org/intel-wired-lan/c6444d15-bc20-41a8-9230-
> 9bb266cb2ac6@molgen.mpg.de/T/#maf9f464c598951ee860e5dd24ef8a45
> 1a488c5a0
> >
> > Joshua Hay (6):
> >   idpf: add support for Tx refillqs in flow scheduling mode
> >   idpf: improve when to set RE bit logic
> >   idpf: simplify and fix splitq Tx packet rollback error path
> >   idpf: replace flow scheduling buffer ring with buffer pool
> >   idpf: stop Tx if there are insufficient buffer resources
> >   idpf: remove obsolete stashing code
> >
> >  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  61 +-
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 723 +++++++-----------
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  87 +--
> >  3 files changed, 356 insertions(+), 515 deletions(-)
>=20
> Hi Joshua, all,
>=20
> Perhaps it is not followed much anymore, but at least according to [1]
> patches for stable should not be more than 100 lines, with context.
>=20
> This patch-set is an order of magnitude larger.
> Can something be done to create a more minimal fix?
>=20
> [1] https://docs.kernel.org/process/stable-kernel-rules.html#stable-kerne=
l-
> rules

Hi Simon,

It will be quite difficult to make this series smaller without any negative=
 side effects. Here's a summary of why certain patches are necessary or whe=
re deferrals are possible (and the side effects):

"idpf: add support for Tx refillqs in flow scheduling mode" is required to =
keep the Tx path lockless. Otherwise, we would have to use locking in hot p=
ath to pass the tags freed in the cleaning thread back to whatever data str=
uct the sending thread pulls the tags from.

Without "idpf: improve when to set RE bit logic", the driver will be much m=
ore susceptible to Tx timeouts when sending large packets.

"idpf: simplify and fix splitq Tx packet rollback error path" is a must to =
setup for the new buffer chaining. The previous implementation rolled back =
based on ring indexing, which will crash the system if a dma_mapping_error =
occurs or we run out of tags (more on that below). The buffer tags (indexes=
) pulled for a packet are not guaranteed to be contiguous, especially as ou=
t-of-order completions are processed.=20

"idpf: stop Tx if there are insufficient buffer resources" could possibly b=
e deferred, but that makes the rollback change above even more critical as =
we lose an extra layer of protection from running out of tags. It's also on=
e of the smaller patches and won't make a significant difference in terms o=
f size.

"idpf: remove obsolete stashing code" could also potentially be deferred bu=
t is 95% removing obsolete code, which leaves a lot of dead code.

Thanks!
Josh

