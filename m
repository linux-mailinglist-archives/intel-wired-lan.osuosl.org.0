Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55072AB43C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 20:41:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DAA0818D0;
	Mon, 12 May 2025 18:41:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uCf0MQG_UrnH; Mon, 12 May 2025 18:41:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A621818D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747075278;
	bh=STR70zhSuQQGuNMm4B7IISzbb4oAMMGPr4iYsvGLGAM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WaLrOQUtoIY1qd69uB0j0MeN4AU1Ou1htq6YrkyBY5m2tAhiB0Fi1t1KdSm4Lynn4
	 nctcJAm1/IZbEbcZ5CpwYUbfLaSmpK9gR+TyXe8QtKD0LNKzP3cHKRFaAT1+Xu3KjY
	 KCCrWjSlYSbXRRz6SR0LM9sjRlTAhRA1jMrJH7/m6GPsEwzfQAZsk4D5iWiBTFGRjz
	 JOdntod/avz6fMY9icPRdNtH8SeBjbDx4/igZSzFyxf4662G3fchgi5U73R0P1XNOg
	 KRS8QI3WXIZo4ogtcBJG6h0Gi4VN4EIFuVEVGsOoJZVjB5wtgQTZ3dElt15iGZdYUa
	 RhVf7S8/HyRAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A621818D7;
	Mon, 12 May 2025 18:41:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F490154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 18:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C10760AC0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 18:41:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hxBIEHaP4Rfu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 18:41:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9407B60B07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9407B60B07
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9407B60B07
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 18:41:16 +0000 (UTC)
X-CSE-ConnectionGUID: JO1h/GEHQmOb1JbMaT4Mxg==
X-CSE-MsgGUID: u8GI2w5/TGKFaGindCTOjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59893959"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59893959"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 11:41:16 -0700
X-CSE-ConnectionGUID: ZOdsFOc0TSaEAOzOCgzwUQ==
X-CSE-MsgGUID: n+RcF9D3QA2KFkYmu4gi1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142337717"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 11:41:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 11:41:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 11:41:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 11:41:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hL3PuFIJrxpmJ/OJT5uP0S9nvSl5wbVw6Ph0sYkHGKyoHwLqFGwIJMsVXBhkanyoffzMr/N2W9GB72FSV7QBokMOn4lKNjJGzr/GOO9ovkbTTTaNVQc7jAsSCsDYnN6SmYyH787upe0qcJya318keY0dsXbQIpz/lENH4YFP8j/PS1xJyx2cn6uLGbooc/cm0V3tClS1LgzNH0iGD8FOcQV7+byi7CfXvrxdlo/ZGjVDYGyzIyLa3iJ+HlsDqRJquL+DUkTFk6LX1Lp9pfPIrDMvz3NSgKsMLj3CtaAjbox5ks3Z/OL64hHNUArWhxAtXxWnnhFaafEEw081afdgrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STR70zhSuQQGuNMm4B7IISzbb4oAMMGPr4iYsvGLGAM=;
 b=oOP8hO04LnkQlRUWObV/D1MqKnsMSRzxgIwJxUNUDw9mnqlaTLKuyF05n2F5BRWXbu4GQon8a0+KFmx4B30c77H69+1AsH0VKPjQxMCE6Ctd9GwsmGyy6WzN+UqnuIROc96nwsKSCjEDuHfllUqIFYcq+6mFW76rqXTk8te/HE/v8PMZEwOn9EfSlmasIFR4lRFYj2x5M+3VaQD4E68yoPFlBEi/gp6UTgy8bt99V42Rf7aCImtKVihuD642WOvyyp3rh1FZqD8pZajo4IW5k0MMZGU1Wm4zejRSOb4Xha8oBBYdMIyaK/aO8f9GL3YEf96sECbrNnFWw8kjOGWQtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB8064.namprd11.prod.outlook.com (2603:10b6:510:253::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 18:41:12 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 18:41:12 +0000
Message-ID: <1f3062f9-5e97-4669-848c-918726f118da@intel.com>
Date: Mon, 12 May 2025 11:41:09 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>, Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Lee Trager" <lee@trager.us>, Madhavan
 Srinivasan <maddy@linux.ibm.com>, "Sridhar Samudrala"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>
References: <20250509134319.66631-1-larysa.zaremba@intel.com>
 <20250512124906.GA1417107@horms.kernel.org>
 <aCH19kCiDI0GUs8s@soc-5CG4396X81.clients.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <aCH19kCiDI0GUs8s@soc-5CG4396X81.clients.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0164.namprd04.prod.outlook.com
 (2603:10b6:303:85::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB8064:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e2aeb18-804c-4dfe-817d-08dd91849195
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTNKbnQzNjYxeFp2N2pUUEtaQU9QSHEvajBOdThHM1JyNmIzSXlaK0poUG01?=
 =?utf-8?B?LzNDa2JVMHZ6Uk1ZY1lBbDE1UU4ydFFvaFhTeWFDcmxLVXJpanpSUUFpRkxN?=
 =?utf-8?B?VE5IK04vamM5Nk5NZWRxZG1qY3o5NzkwbnVpKzVkbmtGWUpwcUhnUUpmNWM1?=
 =?utf-8?B?Y0Y4RW5CQTVhRnRGUVdKNGxPZG9FZ2xINXBVUVBsSzAxVHFUY2FFR3piUjNS?=
 =?utf-8?B?SUg1b3QxY3dCMUg3M3QxUWNQME5jbmdSSEdZeDZkOUlqOHZ0U3JLalZWU3NJ?=
 =?utf-8?B?TDZyYzRQTnNwQzU5U01rTURwT3dDaHNSazhmWnhNVkZoZXJhMy9VRFpsbVNB?=
 =?utf-8?B?R0wzRDNhNXFscXZ0NnRhSVFCWHVIYmJSNWhuaHB0UEZUSW9CSHBCN2plM0NZ?=
 =?utf-8?B?ejJFY3dncU1NK3RqQnVwNnNPUCtSdzR1Mm1yd090d0pDOUZxa0dHZk9hR0Ix?=
 =?utf-8?B?Yy84L2p6Rk1rTDZncEJjSWNOcC9WS1lPZG1JeEQremxqcWFmRWZWMU1sVjFh?=
 =?utf-8?B?WHpEdkZ2ZkxpWmlsblBnL3pJbSsyRXdneWF4OUlDVW51V05LYnVvd21yNm1L?=
 =?utf-8?B?RitWdHZNWlMvem9XV0RETFdnK0tQdTdoZDNNdm16MFdTWjVaUVpjZVltd3hQ?=
 =?utf-8?B?eGdZRmdpU2RqaXdRdTBLTUxHSEJnekpmV1RuVDUyYXdzb1p0SEZaU2xtbTF0?=
 =?utf-8?B?eks5bExVeEhBWklQZ3dPM1RDcWJHTVhPM1JyTFFGRU02RDMrUXcrL2E3M0NG?=
 =?utf-8?B?eDJoZVN6TGI2ZktoOGdNN0l6T1pCakUwYittbkloU0xGQXVyODM2a0QxTnVV?=
 =?utf-8?B?Y1lHam5DcU8zM3I5R01VMVRQVDlOSy9YOGI1V3Myc2FYdWIrckhQSEFxZ210?=
 =?utf-8?B?c2piQTM3SHhabTBUaVRjQys4RE5HblFHMm4zdUl1L09BQ2tNSDlkazBEbHA1?=
 =?utf-8?B?azFVUHcvVlhSUGNXTEZYTnhKT0Y1YWN0TmRBSFNBQThvajAxQ3EyeWJuZ1c3?=
 =?utf-8?B?c216NDJKYStyWTByTkljVk93c3Q4YmNQVW9BdWptR1RpcmRRNXQyWmxKNFJp?=
 =?utf-8?B?aGNNOUl5VTRqSFJqcUN1OTNTRTVFTDdWYVB0c1A3Sno5TGp4dWd6bTlwVGFs?=
 =?utf-8?B?MWt4aU9SMlc2cjVqcExXcmZqc0RBMldSMmQ1NkxlUXpRblhEZ2JVelU1aG5o?=
 =?utf-8?B?U1RXNm5kVnlpRkZXQ1FBYk85bWVaWlVYS3JYMlgvRzFQeTlXKzlDSUZnSlg5?=
 =?utf-8?B?SUZJZzVzMVZ1bDU4ZkxPN1lEMGFpekh3a2l3TGRnaml0YzN3S1AyWnI1cEw5?=
 =?utf-8?B?Q08xelN3RTgxUFNNOUxrcW41aHNDRHp2TGl1MTBuRlNmYS8rSVJRcERnTDM1?=
 =?utf-8?B?R0xVVXp2UC9NUFdreXdDRkVucFZrR09yY0VVNUI0V0FJcGloZGcwVm5lNHdI?=
 =?utf-8?B?M3VOK1ZtSU9rTnk3Q1F0OTZVVEdLOXNxc3VsUGVCT3A2UFVmU0NURm5yN25H?=
 =?utf-8?B?bWZUUTVUbTFPYUNQZlZ0SjNlemFqNnV2S0xCbm96YVFwKzlIdm84NmlFbDly?=
 =?utf-8?B?QXhqcXYrUUlTWDFoY2JWS0RrZTRtYXYxMzZPSHUzb3pCelV2cUlVTWZrSkp0?=
 =?utf-8?B?U1lsaU1Xc0RoajVsYW82L1NJb3kvK25IdlIycDRoMURFL1lySXFYcSs0OGNR?=
 =?utf-8?B?T2twS0lpb1c1Q2NnWEh0MTlDYm9RcjhWRk16aUhzUkVXZHdVeGRuSVBUWkJu?=
 =?utf-8?B?R2JjM0xqSDNmbjFQemZjMG9MUE5HN3ZrTUhpYkEvUW1KMlpSbXFDZkZLVWVy?=
 =?utf-8?Q?9tOHzm9TmglR065gyP3Grj6y3BDdBDKOGwF6U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGNQRThPdjNFa1RGVCs0YzYrNWh0Uk9rclQ4THMwQjdLNUlxSTl0RVVpNFZ1?=
 =?utf-8?B?QU10RU12bFVJcFRsRTU0NGpOZlprUnVWMzU1R1lRT3gvOXRYbmNTVG1wek1V?=
 =?utf-8?B?K2dMUm1xZm5TTHlMYXZwckl2UEluNUx2RDZZbkE3bXArSlR1NmJ3aTBwZzhT?=
 =?utf-8?B?cEJEbDVuU21MK2xHVkZyK3U1VlpIUXpKQlRUNm5OcnhsaGNIQVlnTkpoODRK?=
 =?utf-8?B?WDU2L1JURDJhVDJGME9pQ3I3YkErQ3lha29sdVcrTlkzYTBzdk9BcmoyNmFj?=
 =?utf-8?B?a3AyMTJlN0oyNHFlM0F2WEExNG4wZmVobjJGQWdtckphSi9Bd0p6REFMR0Fs?=
 =?utf-8?B?RFJSOW5iWWFqYWZuaXJFU0V5TWhDc3Z5ZnNuVHJ5TUx0SlpjaVdtU0wvZmZn?=
 =?utf-8?B?MFBBd3VBYzhvazBuNlk0UlBiNkRvMkUwTFMyTTB3OFBlNGtZbXBRd3FqaENm?=
 =?utf-8?B?emc5QTBjSEJDNC9NWUg2L284Z3NhQzJCd25id3lDMU9EYjllQjhSZXFnd1g5?=
 =?utf-8?B?ZXVSUUliYXVQTU1GZm40R083SWZhOHl0SWc3bjcrSmd2SmN2dkM0QnJWVUpH?=
 =?utf-8?B?bGd5T3dnYVVkWXVqWWVPN0VCcm9QRDJQT2t5ZUNpVmozbjk5Vk4yQlprcVJZ?=
 =?utf-8?B?Wis1N1k1VWRIZ2h0d2lXOEpBcTh0elBTcGpvNWd3WXV0SkJDYWJabWdwME5Q?=
 =?utf-8?B?WmMwOU95alAzUnhONSt4c1V0TnNtU0IrZWhjeDFjVFBGaG1nM2JWc1dpR2R0?=
 =?utf-8?B?azdxdjlhREdINlZoMW56VnZiSFE1a1JKRU5Ib2E4YXB5NnFnbEcyOVJoRUpt?=
 =?utf-8?B?Y3MwaGpCWlZXL3hPRXJHM1JwVlJHNS9NTWtVSGF4OHM1ajVZZ3NETDVJeDlG?=
 =?utf-8?B?OTlsZEkwSzE2c0tBb3MzVzJjWjV2QjhUVnBBTGtvdjZyMTVaemh3ODFDQzhX?=
 =?utf-8?B?c3d2dTBQVnRtN3VGSCtyVnRVSy9yUFc5eEZhYnVUNDJLbzVydUxpdDJIQkhC?=
 =?utf-8?B?amNFRVdTRkw1M01mOTNnL0RXU2JzdFpFbVhQNmpZK1M4T2ZCTUk4ZXFGRWhl?=
 =?utf-8?B?MS9Cd1NQTytWS1lMUm9Nck0wTnk0eEpId3Fib0RyRWVTNDhwVnJIdFEzNE5M?=
 =?utf-8?B?dHB4V3JINHhrZnFlUkhPZmtkUlg0OTNmdnJKQTB3VXlBQzF6TlhrV20rQWo3?=
 =?utf-8?B?b2J5QzhhdnZoVDBHWXlDUjhadGZDQ0g0NjNUdlNKb2hhTzV0TjJNbmxiVlF1?=
 =?utf-8?B?ODE3TGR5VHJpR0pibk9McjR2dDVpdnR1NGpraGR2ZEZiRjQ3bkx0Mk9DbGll?=
 =?utf-8?B?dDVuK3k2OW1hWkt4dWFjYjhVb3J5SzJ3dzdvY25lR0E4TTVoUW5vTjZ5eVND?=
 =?utf-8?B?b0VGWXExcTF4Z3lNN0hZZEw1cWR3U0RGdUkydFhhMU1DNVNuZk5qT1huaWx4?=
 =?utf-8?B?Z1luNnhMMHFTdEg2QjUyUWtaMUdLZUFZRDFKblY3TUlRSXZTcnVQS092dk5F?=
 =?utf-8?B?REM1SG92MXQvVzR2WWZRVlQ0dkIyRmh3d1BLRDlhSnlkQXcyQXZDWWN4anRP?=
 =?utf-8?B?cWg0RGRhMWJEcXhQcW1GTkIxT3NwUWMrRDYrczUzZG5hWEZNZXIvVmpqdVcy?=
 =?utf-8?B?L0NWMFMwK3JPaVQxVmg1RDVDVjBOa1ByYUcvMTI1ZG9zZ2pXZFZIRi9ueTFp?=
 =?utf-8?B?MU5mU2xWRnhqVG10Ri9MVVZkTkF6cWNyS1VZUUtWaG1Cek1lT0hPQVoxYjNr?=
 =?utf-8?B?SGZnekdrZ2lXeG4vdkJzTm1udWtpbzdvTm1PMFhaejV0WWFhU2FsbUFhZkR3?=
 =?utf-8?B?ditEa240eTRnZ2ZkWVJhNk1vZ2UzZDAyTUhDRFh5MmdWUUFUQ0pZTzJHY0Vm?=
 =?utf-8?B?VCtOUnRhNmNsaVpOc2lFQlM4VlVpQjhKQSt5aTlJM1YyMWM4Uk5Yai8xc2gw?=
 =?utf-8?B?NzdkSlhmbW5qUm5rMEhCUWZERmRaN08xbGF0S0xRc09wZlcxWjdDMWRTN092?=
 =?utf-8?B?TlpWQVpjUU9XOTJQaFpKT016b05hU21YMWd4OEZIZlZqZ1FwRXFrZWJSbms5?=
 =?utf-8?B?U0hkSTl5dkJsRFlCZGRCbmRUenRHRU5JWEgyaEdmRWJ3Q0p2djh2emNBclFJ?=
 =?utf-8?B?SzBQTmxiTkZ4cnJieHhQUGdybTJpcnBRTjJRY290MFp1L2RvVHVsd1hWZENW?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e2aeb18-804c-4dfe-817d-08dd91849195
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 18:41:12.2150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y/ICzHd6NHLqTNtIxu4ARQd8u4sTJ4kuyaOZj2nQfmSBjLQmayx+D6Zp1avEg377rKJZyXpz38Unl4JhdNavzA3qF0qmA8nQEJA8viMmVYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8064
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747075277; x=1778611277;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YIz68mMMUC3AZdZ4bL7HGrF1+ERq8Z861jDqhpdss44=;
 b=KULKWt27wU3ceBm8gsCfxhqoEOeoll8k99AZ9kQzMRa7h+jH6GkLIMbq
 mdiv8yYP2JxrMI9OzJxywE+EJJDylj2Qqj+/otk3G4EAf2ZaTueRWNd/T
 Mz4OvwuQiM7RDT0/KFzCtgwsHf+n1TsXEtM55ZV0+54LK0+PMu7sJHydE
 OkwwPq+ltmr0hG8HchFT80nm6xxLKrjA9qrhaZn5f5T3CQ2DHY3g5RZ7v
 NR09MyE+X1ZCA5wCWOZfa61ii1lYWoRrAXqu659BilKMWNcytsfDq5NNH
 +wfbmuzF4B2EVb5N8pboIyM4x5CHDQBXTthu+wVksLRa9spGRJuCnEEBX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KULKWt27
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 00/15] Introduce iXD driver
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



On 5/12/2025 6:21 AM, Larysa Zaremba wrote:
> On Mon, May 12, 2025 at 01:49:06PM +0100, Simon Horman wrote:
>> On Fri, May 09, 2025 at 03:42:57PM +0200, Larysa Zaremba wrote:
>>> This patch series adds the iXD driver, which supports the Intel(R)
>>> Control Plane PCI Function on Intel E2100 and later IPUs and FNICs.
>>> It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
>>> exposed by the same card. The reason for the separation is to be able
>>> to offload the control plane to the host different from where the data
>>> plane is running.
>>>
>>> This is the first phase in the release of this driver where we implement the
>>> initialization of the core PCI driver. Subsequent phases will implement
>>> advanced features like usage of idpf ethernet aux device, link management,
>>> NVM update via devlink, switchdev port representors, data and exception path,
>>> flow rule programming, etc.
>>
>> Hi Larysa,
>>
>> I am having a bit of trouble figuring out where to cleanly apply this
>> series to. Could you help me out?
> 
> Tree did change quite a bit in a short span of time between me fetching and 
> sending, sorry for the trouble.
> 
> The base commit is 10f540c09cf9 "ice: default to TIME_REF instead of TXCO on 
> E825-C". In case you cannot access it, I have pushed the tree to my github.
> 
> https://github.com/walking-machine/linux/commits/ixd_phase1_iwl_v3
> 
> This version is probably much closer to what would be in dev-queue eventually, 
> compared to a properly rebased one. Some patches were pulled out of dev-queue 
> because of validation problems, but should be back pretty soon, as far as I 
> know. Those patches are the reason why I have an additional fix in the github 
> tree.

Thanks for sharing the info!

I think we also have been holding off on putting stuff onto dev-queue
because of the conflicts, and wanting to finish up some of the existing
series. That's resulted in a lot of back and forth as some of the larger
refactors have a lot of places to conflict.
