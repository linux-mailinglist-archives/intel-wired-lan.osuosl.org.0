Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OjuDapghGng2gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:19:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64806F0852
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1118B80ED0;
	Thu,  5 Feb 2026 09:19:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RYI9OOlHbi8u; Thu,  5 Feb 2026 09:19:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FE4F80DDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770283174;
	bh=qZmTlfr7HUjvQTgg48PSyQtF0VHJucEaI9zJPa1ZP/U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mjDhDc6KsTCwCjz9ayn2z5mpnm996uEoQZf0kTos53n8QbHvKYrb+oh5gpenFtYCs
	 1WPWa5w10Ls1efxB3XzGerSaYo1swV/7V/itGFs1CR+9XCR/NOC92DYRTyf7goJ01k
	 xPHqizdvGvP8y/7RUMdMy5IF+R/Lju5PEpOsCjqC1U/hUTuH4o89wYMpctkyDvr8Vu
	 iEqUE2/vMnPC4eyqJmD1bv4yCl58LSRFpe/FqVMv2z/w86TYybe9vXDLR3h6IUp53O
	 pBof3EeHnrOA6K5c2bQDWwfguHXY3UyKlGFBgj9/66xEAMU/B3BjugxFg3dPUbRbfG
	 Fr6jm8wWrlwHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FE4F80DDE;
	Thu,  5 Feb 2026 09:19:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A7B4717A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98C8A40088
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:19:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1NWigH2kJlqf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 09:19:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DA4B64074E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA4B64074E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA4B64074E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:19:31 +0000 (UTC)
X-CSE-ConnectionGUID: 3hHwzhcdQnC5WardDwxz2Q==
X-CSE-MsgGUID: g+6OHWgmShyAv6531GHLgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71653717"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71653717"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:19:31 -0800
X-CSE-ConnectionGUID: g4914OmFSBiylNIcFuUQjQ==
X-CSE-MsgGUID: 74Ej0fWRR6eserRepemKIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="241124327"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:19:31 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:19:30 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 01:19:30 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.23) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:19:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fw4alaSQfIw3REkTTnk3+l3btuz6Hqeackotm/vDKRwTHDVmLveDqY8MXa2HizdS1CS28fUXk7iAOKKOOZPDnzBVhNKFjwCoZSiLio1SaJx6agSFhx93V8ZjMG4rLxaCyJQEF4oMTiPxpnSoqIH5kQb1CF0YQqG+wZkUHD3F9jHmYp7x0BYXuLgWusXf8nE6/GtExahXGnUeMBIdkDVx4447Z+zGzef/SIp60Sd2rnW4kMMLF2sTY3l9fNqH44MQ7UdQXOLG4UwRb/hjJV9Jk2dKGQF+0yY/3EmK3dv2JlZqwElsqJcspySvg0EtYViG3tSxJ4HBc4VjLfy2wL6SsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZmTlfr7HUjvQTgg48PSyQtF0VHJucEaI9zJPa1ZP/U=;
 b=Yb+pIeJCULFI5KRcAefzCH96jh4paDLI62kbRzKBg2HClm7rDDid2qK/6lKrKh5rKNWUoHxErOzDXUN2dCuJbjE4JwepY5l5xGMguo0jhxK2EHafOqqX//5eF0NbzLbv58Z3HveuaWypS7o9H/TI1yRO3876O+VjG3Tn6cFFw2wGPYnvDlizWowq26gslvrhk+dIneyXJICikz6A9tv1r9g2z3QiGO/C6+Ohmkd/8zZ+qpZjhzeLN9sfFKvYEOniq8UdgAHCREPTBoLSpLAbLiSOyjFM/Ds4k0SE2/Ek7aQdNDiYmtuAmC+tyDVSkgm0M8wtLBG7iyESaymOf48uPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14)
 by CH3PR11MB7866.namprd11.prod.outlook.com (2603:10b6:610:124::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Thu, 5 Feb
 2026 09:19:27 +0000
Received: from LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed]) by LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed%3]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 09:19:27 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Jiri Pirko
 <jiri@resnulli.us>, Jonathan Lemon <jonathan.lemon@gmail.com>, "Leon
 Romanovsky" <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>, Paolo Abeni
 <pabeni@redhat.com>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Richard Cochran
 <richardcochran@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan
 <tariqt@nvidia.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Vadim
 Fedorenko" <vadim.fedorenko@linux.dev>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 2/9] dpll: zl3073x:
 Associate pin with fwnode handle
Thread-Index: AQHclTRDvFh0jcwHJEKpUXWDZ5CO4bVz0fKg
Date: Thu, 5 Feb 2026 09:19:27 +0000
Message-ID: <LV4PR11MB94913C3EABBD02E6DFFD0B679B99A@LV4PR11MB9491.namprd11.prod.outlook.com>
References: <20260203174002.705176-1-ivecera@redhat.com>
 <20260203174002.705176-3-ivecera@redhat.com>
In-Reply-To: <20260203174002.705176-3-ivecera@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV4PR11MB9491:EE_|CH3PR11MB7866:EE_
x-ms-office365-filtering-correlation-id: 0a6506e8-7ee0-4f09-6970-08de6497a92f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uKHLM+VDOWWAGQjwbFC+oSMcyIWItXcEnsWro4vfud9wl/lstUJoNLWi+Flg?=
 =?us-ascii?Q?Zxi02xTMTK19ADmCtV3hinCgONn+zQ1BizjsGs1/70pwn8Ci7fN76OGglVBH?=
 =?us-ascii?Q?H4g75qeymthnmgG8qZsxlvfsuh8PZapqrVk48OzYCccMLFZs58y0GHlMjNwc?=
 =?us-ascii?Q?0FU39O/JdGluMxj7PfIcZx7QjquLRjmM2q62G929C7UM/GvFnBxZgnHmb7re?=
 =?us-ascii?Q?QYiepa9h98DXB959UclUVGdtZv/7mlxzj84NjPKvSCtjAWvXcinP4BOxQwTa?=
 =?us-ascii?Q?khZLmBmj1XbfE7Q0rmT2yy5xWIIvvb7fWyKpiid+iuYHJxoffoPWUPDaLWIr?=
 =?us-ascii?Q?/ItxmEpy06o1YsSIjQ8z5QNwVaTZlTH+Kdpf4G6k4m1AzgiTtf+2/b4eKbMj?=
 =?us-ascii?Q?8mqj7V9a4BgbYdTZV3mxnmj42ZuTIAtoGwh4uaUg2nbKLLmut8IO27iDyrlU?=
 =?us-ascii?Q?DYW497MRJg7smejVhJguQDB5oFjo4Xitcea+cTNFf5YDlk+7CFIWlUkleACf?=
 =?us-ascii?Q?kVgqZalDKAq1gRb7xVw7u9je414m2Uqc81K/Gwzy1vCWD7u9/ddIc1onNlp6?=
 =?us-ascii?Q?1Ao8gSAey4BpnrIAXcj5trh1mhvcVQ6rtV9GX5PlOJvXb+BtS9TPz+meGICg?=
 =?us-ascii?Q?/Fl8ct4DS5bH+y2ulTeqQUKF/esPR9rKw9EvfAHJB2ddlwUm0h32mzhwwqHy?=
 =?us-ascii?Q?3cuOJ5zil7gLnlbcx+5OwjMpNFkWnBQnbXCMYQ2oNjavb71rPCBB48eWZ5yG?=
 =?us-ascii?Q?5U0p4iB9H/Bzn4N6uMl66Ul16TuZKCbvYNz7B21g9gWVSm3eqZZwtqbbk52/?=
 =?us-ascii?Q?or/pxOlMgpB4eemehlEFZcJftJd331VEnrI3M75pkY8tO5Q0L9t3vERieU6J?=
 =?us-ascii?Q?n6fPVKuNeQWzpQyAYQ/xPXRhe3Zz09b0lmnM2Rp9y9QjqZLKeVjmTA8i0Max?=
 =?us-ascii?Q?CtjmPGsj8tRJY77A0BCOJf0VgeP9QjDDmEjRajaLFLvuf5R+e50LRP3I8CjW?=
 =?us-ascii?Q?6EbmmF6u+dDFBp3MukB25G/KP/8R9+Kx75JumphJuk2K/A0mF2rxvWmnOlCr?=
 =?us-ascii?Q?t9O1+866wBVj8PCAuIMfKrMrLFjRJgnBrGQSf0d2HS728fsdEXZZ/WYG2Ck4?=
 =?us-ascii?Q?C9vATeExz4MQoYEURTcFzo2+YAJZ85HD+6Fs4UN5fpORQeyFzvqT7l6rkByQ?=
 =?us-ascii?Q?RbDXrURfe5liUi82oCgX4DrhTQDebMLGTe4pVVuy05d5lwth4rmSi6+g8tHU?=
 =?us-ascii?Q?D186wXrrCe81jAtewquVaaUmTlRfCBsNxl82P+VPDoFA72TRGCgb7hFte5nY?=
 =?us-ascii?Q?yUGHF7d4Loztu0XB/T8hwU7uwIDG16JetigE1rWfHIW/h59Az9Kt9tLngrdo?=
 =?us-ascii?Q?sc1NgsS/unYx0EbUAsMYHF3+xeUI2f2mR9Dshwi0ZIX/KmDQh+y92hrAc/uV?=
 =?us-ascii?Q?1b8ARYbm+GmS3rEhubz78OtPkBPqn+nn749jv0aiKsMKFFrXlf36ScP4eOnF?=
 =?us-ascii?Q?4GCG3s+zaQpO+AHKr16Z/MUBE38CTM6FSXcCIzP/PmcMTe8bflLeDtDjAniP?=
 =?us-ascii?Q?pa5plUKG04cac7FrjYupZePcWMWZwo9BXi7ogQxhkvPsETXJsGwcApufBctG?=
 =?us-ascii?Q?8As3YBMxCUKJO9qIpHXPqWg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7xun//B7ymySc/xCg508GHIaP8KGPN5QALTVYEQ8D+EJY7RlKriUZfuMYL7p?=
 =?us-ascii?Q?Lz8DacssRfjSjiAir5MP6qgb8ZfKCJ80YugLbNKtYPd5RZSKdbYzFnCd47NA?=
 =?us-ascii?Q?pzc4wuioIw5rn2s8a7y20OnwlP6mUhWwGMXtfJa+WTgPcp1rekCGe0RW35P2?=
 =?us-ascii?Q?3bKYWEwcEu5dh8I46BMhlaICvMsryTrABbaRv89KgvhI8OqH5Rfgjom+gFNW?=
 =?us-ascii?Q?jXENq21Rmve9phE1qPvj5R50I8gGWJQlKjxPGZR9SPydRTxgTM4vVesZSbuK?=
 =?us-ascii?Q?rHd1wiikGRNNx33/scwAUbz1p+Vvn6TaPgSlvt/JGxFb4byK9Y1N5lrN5Wqa?=
 =?us-ascii?Q?rdmQ22UEA+uO9ExqSEk5lAoZCn2Y+cQChV0vterOalN0HUCurRqtLoBb0JyT?=
 =?us-ascii?Q?YBD78CHjGFUj9UII6agA/97ek3WoYJ6sQkjZn+KSb6pt4OrLqwCOV1pOfXPG?=
 =?us-ascii?Q?zGCqSqYxg/r4p56XUypzQ0BEqsPGXEXNvd2fohwz4Sfj6FMOlN/ftPX0RTz3?=
 =?us-ascii?Q?HoQDf4j9TlgAbnrclQIiJKrgvXOzgXCoOghs1nqR0jtkmnJKTb6ALonzP85d?=
 =?us-ascii?Q?qkUILo11loe7vpD1Pmzm2S+4+FAycBC9pMEaCPuC/GIThxCTAkzWNZBJU/8m?=
 =?us-ascii?Q?VrqRYT3mG6uTvrT47+1UWfVndHpDJc6fT6uGUD8c+8wWArZC9wtsGK9J5fTH?=
 =?us-ascii?Q?7UIi1iNSkTPLkjDgya5uWTFHG9kSmuCTLRYy0IhUtn+FtgWIjPtZrHJDpaHM?=
 =?us-ascii?Q?sNnhZE4HBKSv00EFYpWb9okRhwIL4uA43/qdMoAXbukgW0TME3v/9o+cs4Rn?=
 =?us-ascii?Q?pmh5rxvCqeVC+D1Qr8pcCUiKJK+ao3jryDD4SmVFhbH0lyvfS916ThBnNHsa?=
 =?us-ascii?Q?hX7kcf7TSIsiLDambWwAzSxpEhQSrxvX9wkXKALLSo+FeE20oy9Ig/LMgsO3?=
 =?us-ascii?Q?ulmA2xsMuRbK2Co/NHDq0Nh/RCXKDyZjLviXUAO40Xnc6vKWJ2bnh89uuLll?=
 =?us-ascii?Q?ynjERoGbrKkNIWlBMKFEtDaHSm1xllSORGVaXgmb88w/9dDi6JMx9Gtp6Sn+?=
 =?us-ascii?Q?2dMRJ8K20IePPKSj+u3eCWkXm9Eoph1o/ZkDHyV+2dGRr7mcsH0hBkuqlUco?=
 =?us-ascii?Q?FH89HDjNvqKI4Yn736clQFVHlRRZo1jvsPH4Yf0GvVVzPzi/dABk58wPeWON?=
 =?us-ascii?Q?MEOCF+pe6PeBZ0kq0w/m9yA8AQPJZAa/UMm4+TZCTKMN88EC1XDux/rfXz13?=
 =?us-ascii?Q?eRm1Ktru8g53yYvuoyUZUzmiUyJvsnRt+GxEoNdlZJXOIzvzeAyupOWx7QLE?=
 =?us-ascii?Q?gij42bFAwyohcIox5z4chyHE58X1qOBjFbziDWH+0571QZAxKGq6NQ1v9d1H?=
 =?us-ascii?Q?IDfLJUGtwglK9iFwjb9JJexs/aHmnvff8+OhRK4cUrwgI4g7H8KPc078tl//?=
 =?us-ascii?Q?EVoSiu3pN/myOlQLRgywBN80P8kXV6nK1hLg/NFEG3XACUd49iMSw9+cDuEp?=
 =?us-ascii?Q?+lT9EW00nRSsgdBP+jNd0CvsZujyxBez/vQenLH4L5WFzzckaVwCwlzc1XEq?=
 =?us-ascii?Q?47PDgC9luJSh9Vm4n+XVA6hSs+P690sWErtXei+aSZ3W3Xpc420D05o6o6RQ?=
 =?us-ascii?Q?E0ks4mdwW0+2ky7wUeoC6c4yePQfZTsWecVvkQZzR+vSenfyAP5jARtg+F43?=
 =?us-ascii?Q?uuY5LQcvbUl4+2lrffXJIQqaVyM2oUJqNiCJwwKquOpiWpODhP4SptuWDIMa?=
 =?us-ascii?Q?jCssPi08CKu73YOqe6aoEzgOqXvkUhc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a6506e8-7ee0-4f09-6970-08de6497a92f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 09:19:27.4177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i5f6QKuAE01LoZYGIaISiD0l1RO+pQY/Hg0dwBB7vy4q06ZSCeIZrudq4KrfQNn8zr8k7MLmsPAc1oXc8uEO3RoXUBcbVrbzfFiIBgau5ik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283172; x=1801819172;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t9/aIMCmu+ocy0GzOifrHfk7mgSUxYYjY4dWzwrrTiw=;
 b=V1IZbMB44sCaQ5L9fQFZcTYQom4+0Px1eIh9EgVY4MociU7k3oIYylvd
 8nDyoVS1dl2T9Tc4t+7aGu3dbWcQu/OewmjT5akx6iJSujeJ8MAg5ZNqx
 lVQPtv3ShPr9VQQkbLmSpiVvYqjI2zLXGAZumvzViRrCJKlPUQQu65UvP
 3DsfFQQtPp6RneKhS/MszddLg4gsb83fHarEqxOnQddh1+xO5s1GrsTcO
 WFr5tWhXbSSjGTgrBr9gJTr4SsODBvLFArarbdvlM64jR+NN9gaBpgjzH
 7k7y/MqGsTWUC7RTa/+iQjQiTkjGbcpueQja9ZfO2cxi9D/PuTFNGEO5t
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V1IZbMB4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/9] dpll: zl3073x:
 Associate pin with fwnode handle
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:jonathan.lemon@gmail.com,m:leon@kernel.org,m:mbloch@nvidia.com,m:pabeni@redhat.com,m:Prathosh.Satish@microchip.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:anthony.l.nguyen@intel.com,m:vadim.fedorenko@linux.dev,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,resnulli.us,gmail.com,nvidia.com,redhat.com,microchip.com,linux.dev,lists.osuosl.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 64806F0852
X-Rspamd-Action: no action

>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Ivan Vecera
>Sent: Tuesday, February 3, 2026 6:40 PM
>
>Associate the registered DPLL pin with its firmware node by calling
>dpll_pin_fwnode_set().
>
>This links the created pin object to its corresponding DT/ACPI node
>in the DPLL core. Consequently, this enables consumer drivers (such as
>network drivers) to locate and request this specific pin using the
>fwnode_dpll_pin_find() helper.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

LGTM,
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>---
> drivers/dpll/zl3073x/dpll.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/dpll/zl3073x/dpll.c b/drivers/dpll/zl3073x/dpll.c
>index 7d8ed948b9706..9eed21088adac 100644
>--- a/drivers/dpll/zl3073x/dpll.c
>+++ b/drivers/dpll/zl3073x/dpll.c
>@@ -1485,6 +1485,7 @@ zl3073x_dpll_pin_register(struct zl3073x_dpll_pin
>*pin, u32 index)
> 		rc =3D PTR_ERR(pin->dpll_pin);
> 		goto err_pin_get;
> 	}
>+	dpll_pin_fwnode_set(pin->dpll_pin, props->fwnode);
>
> 	if (zl3073x_dpll_is_input_pin(pin))
> 		ops =3D &zl3073x_dpll_input_pin_ops;
>--
>2.52.0

