Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MP0qEZsXi2ljPgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 12:33:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4911A451
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 12:33:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56EA383DCD;
	Tue, 10 Feb 2026 11:33:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKXHmxRbcmIy; Tue, 10 Feb 2026 11:33:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 937F083DCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770723222;
	bh=Z16JSBXIJqbTvfgjaqyzVj/58PPxumQKtLWkf3na3LI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wC6q82IP7YSx1N9RyLUD4nm/ATku/XhiN4/ydTfuXeBm6OKjpaQloJ3soonsn9GdU
	 ZhMjzOelLspRbj+9aVUdFVFrawVyiYygWC0DOdu+LzIvGCoJ+ctd1EU4DvcY9UKE4O
	 eB5Zm04+3itrr7gBL4eYR31HB1VHzzaMEKxKugY0D1c8cz1DbkYFIlbRTW90bXsere
	 t3BgxiiW1P0JqExJv1JOKqhpHlAaYGW+EuRl4OR4KX3itlgCJfoBXZEvwHq5xB1heH
	 Rz0MCCiinh4w1qeVyZKM0Xvln8lUYcYPIUBIUzAh+WaMwVc9s0EhYJOUPxrYISMKwI
	 SaBKJrXYWpklA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 937F083DCF;
	Tue, 10 Feb 2026 11:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45CC3F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 11:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33B9060D70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 11:33:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3dE91Q2yN7XL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 11:33:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 45AF460B16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45AF460B16
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45AF460B16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 11:33:38 +0000 (UTC)
X-CSE-ConnectionGUID: qJrALuW3T0ycl8473bZTsg==
X-CSE-MsgGUID: 262pJmafQGOrZPzntkrVCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="59415867"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="59415867"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 03:33:36 -0800
X-CSE-ConnectionGUID: S1CHZQ1VRiu4AIBmx9/hcg==
X-CSE-MsgGUID: eI9skxf9RKaO+smtmKDkqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="210974400"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 03:33:36 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 03:33:36 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 10 Feb 2026 03:33:36 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.44)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 03:33:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tfBmhj7KmqKG1cxbXiDvZbQWw+Cpwcgk1CBCTNCqAMJqTfIjm9DXnPGpIB8n0cYBLIJgkbGqm3IGz1PbtazggqdeSV3KCMu8ra7gAlca+Oln1b3eTsFyHtKFlSQRjV/hIsW5gJ1I+Lq4ecpag+Ubrirs0x/xiAMxlfgwFMrXZ29FSC1nKNFZwV+ws9jeiSFg+XhCROcYRsV9UTVGLMDr9wKxrYJQ+mEC66h27mbo6rX+O4WHhDwS+gYufOcNhxSawVtPlT7GT/O619hFD2X9AyhDU/cLkPHA3RSVdJMFImz1RVPzbwa4umtfiQ1bstLnvSpgfDw3PC3stPXvoNiJlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z16JSBXIJqbTvfgjaqyzVj/58PPxumQKtLWkf3na3LI=;
 b=mP33c9VFqEWqJQwlY0LDgOuCBzYYdUdzpfGeYzkyx2o5B6o99EH0Js++aGb56HMPP4gEsdjWCrDgC1y+O4dYq5MOc0FL6STx3359Iv/kUjhyxjUBhQYpfLLXhFHpGs/bz9CKrDeM6ZJ+yrHNSs2ZrY0CzvlNTmrRy1RRoPbf20673rxSsHtfgSrcnfoAa7Qw8AFhLdYqb74By3g29+5odGPU8FqYjWtrUgVh7GQy16JMDDdyujmj8oCVnITurPujr+d1TBTAaVrhGxlxHXVo7Pqn6hMtxDuTTNyeCTiBTRsW85ldcPVn555PVpWicbC4ydRYJMaxDJQ+UdYDoLKS2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 11:33:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.006; Tue, 10 Feb 2026
 11:33:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, open list
 <linux-kernel@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: dpll: fix rclk pin state
 get and misplaced header macros
Thread-Index: AQHcmnofHNzMvEmWqEyTOrF6mfbg0bV7zR1g
Date: Tue, 10 Feb 2026 11:33:27 +0000
Message-ID: <IA3PR11MB8986ACB5E997DF945710253CE562A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260210104259.121729-1-ivecera@redhat.com>
In-Reply-To: <20260210104259.121729-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB6802:EE_
x-ms-office365-filtering-correlation-id: b1f45d1c-ef75-4748-65c2-08de6898357b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?eAjznVDg827OXjtpGiBxMKWw34vDbqobpG3Llt7kSz7A5flAiSFn/4fVAzPk?=
 =?us-ascii?Q?YFyKxxy+zZm5wQVHcakASI0c2hF+zBZ7rQxft6heDITiHry4DMfSfuhnq4JI?=
 =?us-ascii?Q?GpT4YbbHo1U8BygBY8yiNn4F+/saXMLgDRcnqSvz91wdKYwLmXvokssJbmFp?=
 =?us-ascii?Q?xpcj9WeymBD3sxvWY45cN3QHrutZqrEbNAKcbjhALQ2mOzI3Y1mjsqmwIUEO?=
 =?us-ascii?Q?jfRZN/XFRoSkBJhrvXI7IQeqeMfAhJdf2ZGtcCCTu6MIbiEa0mWNzX5Jlq4R?=
 =?us-ascii?Q?TOiKC7Br82fiCWqgJ3SZWXA3w2B7RjpseVCUl8J5rP6X9FYqQlLbjnOStt/d?=
 =?us-ascii?Q?4eHsOnFcH7kBMsuWtYaFp76wjUkK+9FHBDy1Zg+PWirAgHk+Ss4+VR+Fgxib?=
 =?us-ascii?Q?eUjflkCvFIgPdU8wmekkPgD7+EoO+QzrxBHWIVdHzzurX/gRafED/mSYqxFf?=
 =?us-ascii?Q?yTY2NM8Dwy1KU1saW+vHDpIiCg1el/9dcHtcUDmg5g1l6ozrxtuN+g/fWCGu?=
 =?us-ascii?Q?ffdqOcveCO7W1s+Pqqu5y+/L02/E/erRapXAbw51FtfsQh/DPRaHRMIrw+8k?=
 =?us-ascii?Q?7rh+S/VnIhtbtoZuGPzC5p2kz/Q7wmXv1NIPuA9aFrYwv05QGP2qfvX+y+/J?=
 =?us-ascii?Q?lgUa5aL+bLA/I/du8I1F6k2PDyHxOsJvNpnhLGb3xIpU6B496JKGq8QCaA8g?=
 =?us-ascii?Q?Y6oW+pVRQypK6QiYWAYc21VVizbihWuwQpoJgDHKU5WKIyyOyIBPv2U3MPfA?=
 =?us-ascii?Q?rf8AdssT1Ia5yd0HzRC/HDGf566MM5ghPkHxW+K6tW2UGsy8cwwweGfREqAB?=
 =?us-ascii?Q?iJdXEDmUwkV1Uh/aMerm+4jYTq8kdZJp+zlbDpFKoWXvsN1rtb0PYmQym5MS?=
 =?us-ascii?Q?y5+a2eUnXcFkZLZUeIvpScCW/2smugGW/rIhCd0jx/R44x/Ck69uIXSBqgJo?=
 =?us-ascii?Q?qULNTyTEvcYQO3TnMuYYrCzy/etPi+opR8i/NF1DklJGcBfKfzjqcuKC7c14?=
 =?us-ascii?Q?eESU7tHPfOj/OfrcX7GVLUrYOCAJ1+q/shw7HSlbMO7XwuTkhRqRaTwwGgqS?=
 =?us-ascii?Q?fGhZ9T6j7CpBnUwlmhvjE9ucm33bVY3Y8YFn4rX9UU+NznmCjG1eVGrSwETy?=
 =?us-ascii?Q?XoDjD/njo/2lclGpeshNGck9pQXZ+kK9Tok+PnpwxKLslle6IBy1wAUqOcef?=
 =?us-ascii?Q?XOnZXdUi1Fm2E66UuCSLHAd1eNdWaWQDoxkK3wRdXxcCTclgYaCJsIq7Eayg?=
 =?us-ascii?Q?ezkUwTtRqao3oAuTkauhgjkW5IshE2CWJZ4H2rTU3vsvKGtKxqhbCJgG2ASB?=
 =?us-ascii?Q?ixA6K8NKIquwPY1bOdCXWlYlQfMNi0gMb8Ur1T7EgJnxnG0mRjk0v4POLOox?=
 =?us-ascii?Q?HOYKME9Ex9lHnMTBrRqKvih2Xv97WDn9N//vn5u8/nTQoD/4FPyG/BRESwxS?=
 =?us-ascii?Q?wMgr5W9jqMwcjAFcsX4MzkZPww2BMKPPpubFchblSpcoNpVkk15lb/vEUr2b?=
 =?us-ascii?Q?jeRzEFoPhiiMSlh0ZE3Ud6rSaZrT1teP0WwwE3i05eVTBzcnFWtNQ4eW5qbp?=
 =?us-ascii?Q?Lb0hBiasupj8IPZXiq1WuSU64yodsWUrtmcDFS4rUNy9ETUxJ1P4Zr6WlsHH?=
 =?us-ascii?Q?oVoPpGnOJBkkeqhPlgRLfdQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NE1DLQYgKfitdxPcKADynYhHXpSFxJ0nxgrb0FHvy/1d7eUwtu0IaPJdAzQR?=
 =?us-ascii?Q?V9MzEQaUs2PUCY80hK1edUsViq9Lc2/dv4HHhUBbGQ2BaWST1Vx666sr2j15?=
 =?us-ascii?Q?kZRnssS7X5uPImrMGdnzcgyi73FOXHJw6HcfFM8f7jukHh5K3HclvObTjz8X?=
 =?us-ascii?Q?vCmgsHZrHa71/xBJFmD/5lMKIIGGqiEcYZc7KrsL+dNeH/qtmxcO8rb0Fo8H?=
 =?us-ascii?Q?d8ttIYl9eZh1uoS0pY7e1uENhQbVwtY5aedE1oZlTw7DEMlTs0nTy0Aashwp?=
 =?us-ascii?Q?iAEDbBzUDxWOQ2nMM0htlnkIx2ETSqUHk2YU/qrJT4UDDXkH1vw23SyQysrx?=
 =?us-ascii?Q?4aDlfhCEV1625/n+XwtmVq5gb+k9MC4OU06auHoSUubOHEgc8J+7ixDYkdMV?=
 =?us-ascii?Q?JwJ8Dx6By79Gh5vo7whVR7C3DBe+yYLhsfQrRAOclIwEcxD9nJvQmIN1nP9v?=
 =?us-ascii?Q?v5eKV9sTjgGpxhbnR31L75oMjsW1xjGteAiSnhWYxfII4wDYagBsmn94sMNg?=
 =?us-ascii?Q?zcJ1k0iqMzZX+VIzwpKDEWh/PRq9rpgqD8jP8XKJQBe1I8gWgwpXkuyWvIOq?=
 =?us-ascii?Q?utxr632AfRnwXKRPtEptz48kKEjulK2swy/8nQi6ehBhiD69ovOyMa/RAd2P?=
 =?us-ascii?Q?uvBUVYCuSiILM551lFmazdGletwwSY5T3CgkT9jv78eEaL3/JEtiLG4MZi9R?=
 =?us-ascii?Q?igHh5bWEavHKmXLl9xQT9nzXXWYdnP1vLry/s+j3caXH/LOjjGqtQ8Rl57Vq?=
 =?us-ascii?Q?k4njTxxxH1Kdxqvg19RBYCnMm2a4eud/ChftoAPocPsDB+R8QZQ4mP73mkAy?=
 =?us-ascii?Q?Ksm1solGk3fOYwAKiEDws1O66fHz/3J+JIDUsIcCAelgSgjZibFl61p8fJ+7?=
 =?us-ascii?Q?M5AXUzO3WzzI2zuihYn1voEBdzPSCRmoMGTnXA+M5BMODDF7oY8982oVzuFs?=
 =?us-ascii?Q?TTNpEjY3oF8Cs/26mZ1hLMtuWaYzxOcuZiaPPx3X9HjMB/0hcPJVXXS53bYb?=
 =?us-ascii?Q?6OimQY4vC3jRnHnPeOfDH3vrTuhRfnguBTkgkPXMcZ4EeJ4ul9llks2Mq4Nb?=
 =?us-ascii?Q?pIdAhYluShFs6a0dIw/9TbE67P6ED0AcISuwnOYe4pFtP0qNTPdUV282mWmf?=
 =?us-ascii?Q?jD3ZpWQWXBzHPTNaWwinXd74s5K6sP7g64G1znHUqocRn5/ko07rmrEd3z7H?=
 =?us-ascii?Q?Ogh5cGYmxJwraDx85gwktA9DZueBYXnFK1jdSH/khR6kERin+KfJr+A3KlAu?=
 =?us-ascii?Q?dlwMOqN0pV7lI2iDmmDcSelp7byWy3dVse7XSy1P/pKLIUt/I6qWlxUikfLY?=
 =?us-ascii?Q?BXoeesyMRj5aWB3Xb/1GbY0xZv0VYEq113DYbstfFoVmoIjNbVIY5n9B+WO2?=
 =?us-ascii?Q?y+Rz32epz0Bj2L39MQRVOT6LHuzmJcTKz9nu9WXWM5Q7qgCDoTCgtti1N75/?=
 =?us-ascii?Q?R6fIT3y6lw9J9FGUSlbwNUDUAlIsuQmAwkaiZwYtLKVXYuEc4DJJwTL0+K8E?=
 =?us-ascii?Q?1gKOj/gYhOX4bCi0xqYFXuXPvmrUXOoVuAikMeI1J1YE7xyrbf+mnAkRMDqo?=
 =?us-ascii?Q?KY7n4Hn33cB2zJlD1ltGqUOFAqq5/TO1yTEIS8umWutTa/oNcNRAiE9MIvag?=
 =?us-ascii?Q?S9XHOaVO3w0FQAcFVKT9f1ELVb2QevFzqsO57Hv6lFVRhyKZPH7MQ/vUTjdt?=
 =?us-ascii?Q?3CnNrN2FYiIrtSXNBSlDoP3oRQ9wDKmpUmExs7fH+QPy1f5pgStn+xWkmHgW?=
 =?us-ascii?Q?zy9Yepcm+fcShcLJ/vOW+ePRSvNiArE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f45d1c-ef75-4748-65c2-08de6898357b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2026 11:33:27.4683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: doE9bMUK3lmiIoog5O7xH5EOTMkN0un58u7f2nrEVPvzsQg4O6MHRzQgDIz5ZdFA/RAvgPX4we4ClTSOi3OYC2qvOAMHPu3PoDW6PDm5hAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770723219; x=1802259219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cyj3N5KVV0w9fbIlR+oXXz1htTGoXgiKSZuSfVvQvKw=;
 b=V+efZxj5G/aP/M3yDLfRueXiGupFJcYxlvA3SQmoH1YV9eaSl8Yxdx7p
 W14M7Vj+BLM4MS+At3jPt0c8GRqqZ++X7aSEwspgvaQC3NWoklnB73sBk
 FpuVfVP/EGbMuS42jwhf13jcjcg9x1zIMCctd7Pgd1DmQ4brc/CnMMU8k
 oPBrYp6kILFheiKNblsF61DLap1q4kPzm4euEVCeBtJAw8GfvUgtU8Yn7
 r0k3e6ouwYROB2kfM59M2dvDqy9ikowLISJXpKB/djaxb1C1qr+pPxUSj
 NqZl0lBLnAuv+ZDRdAXatlBjf+WtUISBiZQXxCc4NHUwdNdgwnC6fMeRK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V+efZxj5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: dpll: fix rclk pin
 state get and misplaced header macros
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 42A4911A451
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Ivan Vecera
> Sent: Tuesday, February 10, 2026 11:43 AM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; open list
> <linux-kernel@vger.kernel.org>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; moderated list:INTEL ETHERNET DRIVERS
> <intel-wired-lan@lists.osuosl.org>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: dpll: fix rclk pin
> state get and misplaced header macros
>=20
> Fix two issues introduced in commit ad1df4f2d591 ("ice: dpll: Support
> E825-C SyncE and dynamic pin discovery"):
>=20
> * The refactoring of ice_dpll_rclk_state_on_pin_get() to use
>   ice_dpll_pin_get_parent_idx() omitted the base_rclk_idx adjustment
>   that was correctly added in the ice_dpll_rclk_state_on_pin_set()
> path.
>   This breaks E810 devices where base_rclk_idx is non-zero, causing
>   the wrong hardware index to be used for pin state lookup and
> incorrect
>   recovered clock state to be reported via the DPLL subsystem. E825C
> is
>   unaffected as its base_rclk_idx is 0.
>=20
> * Add bounds check against ICE_DPLL_RCLK_NUM_MAX on hw_idx after the
>   base_rclk_idx subtraction in both
> ice_dpll_rclk_state_on_pin_{get,set}()
>   to prevent out-of-bounds access on the pin state array.
>=20
> * The CGU register definitions (ICE_CGU_R10, ICE_CGU_R11 and related
> field
>   masks) were placed after the #endif of the _ICE_DPLL_H_ include
> guard,
>   leaving them unprotected. Move them inside the guard.
>=20
> Fixes: ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and dynamic pin
> discovery")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c |  5 ++++
> drivers/net/ethernet/intel/ice/ice_dpll.h | 32 +++++++++++------------
>  2 files changed, 21 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index baf02512d041a..73a4e28ed75fc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -2440,6 +2440,8 @@ ice_dpll_rclk_state_on_pin_set(const struct
> dpll_pin *pin, void *pin_priv,
>  	if (hw_idx < 0)
>  		goto unlock;
>  	hw_idx -=3D pf->dplls.base_rclk_idx;
> +	if (hw_idx >=3D ICE_DPLL_RCLK_NUM_MAX)
> +		goto unlock;
>=20
>  	if ((enable && p->state[hw_idx] =3D=3D DPLL_PIN_STATE_CONNECTED) ||
>  	    (!enable && p->state[hw_idx] =3D=3D
> DPLL_PIN_STATE_DISCONNECTED)) { @@ -2503,6 +2505,9 @@
> ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void
> *pin_priv,
>  	hw_idx =3D ice_dpll_pin_get_parent_idx(p, parent_pin);
>  	if (hw_idx < 0)
>  		goto unlock;
> +	hw_idx -=3D pf->dplls.base_rclk_idx;
> +	if (hw_idx >=3D ICE_DPLL_RCLK_NUM_MAX)
> +		goto unlock;
>=20
>  	ret =3D ice_dpll_pin_state_update(pf, p,
> ICE_DPLL_PIN_TYPE_RCLK_INPUT,
>  					extack);
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h
> b/drivers/net/ethernet/intel/ice/ice_dpll.h
> index ae42cdea0ee14..8678575359b92 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.h
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
> @@ -8,6 +8,22 @@
>=20
>  #define ICE_DPLL_RCLK_NUM_MAX	4
>=20
> +#define ICE_CGU_R10			0x28
> +#define ICE_CGU_R10_SYNCE_CLKO_SEL	GENMASK(8, 5)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_M1	GENMASK(13, 9)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_LOAD	BIT(14)
> +#define ICE_CGU_R10_SYNCE_DCK_RST	BIT(15)
> +#define ICE_CGU_R10_SYNCE_ETHCLKO_SEL	GENMASK(18, 16)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_M1	GENMASK(23, 19)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_LOAD	BIT(24)
> +#define ICE_CGU_R10_SYNCE_DCK2_RST	BIT(25)
> +#define ICE_CGU_R10_SYNCE_S_REF_CLK	GENMASK(31, 27)
> +
> +#define ICE_CGU_R11			0x2C
> +#define ICE_CGU_R11_SYNCE_S_BYP_CLK	GENMASK(6, 1)
> +
> +#define ICE_CGU_BYPASS_MUX_OFFSET_E825C	3
> +
>  /**
>   * enum ice_dpll_pin_sw - enumerate ice software pin indices:
>   * @ICE_DPLL_PIN_SW_1_IDX: index of first SW pin @@ -157,19 +173,3 @@
> static inline void ice_dpll_deinit(struct ice_pf *pf) { }  #endif
>=20
>  #endif
> -
> -#define ICE_CGU_R10				0x28
> -#define ICE_CGU_R10_SYNCE_CLKO_SEL		GENMASK(8, 5)
> -#define ICE_CGU_R10_SYNCE_CLKODIV_M1		GENMASK(13, 9)
> -#define ICE_CGU_R10_SYNCE_CLKODIV_LOAD		BIT(14)
> -#define ICE_CGU_R10_SYNCE_DCK_RST		BIT(15)
> -#define ICE_CGU_R10_SYNCE_ETHCLKO_SEL		GENMASK(18, 16)
> -#define ICE_CGU_R10_SYNCE_ETHDIV_M1		GENMASK(23, 19)
> -#define ICE_CGU_R10_SYNCE_ETHDIV_LOAD		BIT(24)
> -#define ICE_CGU_R10_SYNCE_DCK2_RST		BIT(25)
> -#define ICE_CGU_R10_SYNCE_S_REF_CLK		GENMASK(31, 27)
> -
> -#define ICE_CGU_R11				0x2C
> -#define ICE_CGU_R11_SYNCE_S_BYP_CLK		GENMASK(6, 1)
> -
> -#define ICE_CGU_BYPASS_MUX_OFFSET_E825C		3
> --
> 2.52.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
