Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5N3MA5VrJWpSIAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 15:01:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF5650952
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 15:01:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=1JYTuNYw;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 882AF60A8F;
	Sun,  7 Jun 2026 13:01:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TyEZ7CAZuSSp; Sun,  7 Jun 2026 13:01:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFCDD6088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780837264;
	bh=/EwpdJaItBMhBNwSFYiC2gXMGkC8ranZRfniyZ0tn48=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1JYTuNYwPrPpdunTXjRZKSePuKpWjuEPcq8TWf50AF4tNvigpVASO9fZCm8kczieo
	 2zUNzpeTEH08XaC2rwzDgIqRl97U3goui+pqV7HI42aH8OKIcKZ5tuqM6MYt++zDFw
	 X4h0esyOCmM2C7MplCjCU8VmewA6fNSWJuudEOFwj1tLTZ7W+pYG/LeS6LwQLr04vE
	 aSvkRejdZRJTMUo/fnr0M/jJm/6fV7FTfidP10QZ7JTsebaz5kJ6eCsYooU3e5MAP9
	 swPKBSBkHHplG4pv8ssdIU0MLYtQ9DcQ8sSYG4yLi4QdWkynySNVwmR2SvLoIhw2SC
	 mFteFxxah7xSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFCDD6088D;
	Sun,  7 Jun 2026 13:01:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F9CE2C1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 13:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 511BB40527
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 13:01:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PbCRdT4advlK for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jun 2026 13:01:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=moriyax.kadosh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8C4F4051C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8C4F4051C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8C4F4051C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 13:01:01 +0000 (UTC)
X-CSE-ConnectionGUID: 1yVJnM7HTEeq+eIdHsLTtg==
X-CSE-MsgGUID: hyZHxcCBTZOTFZ4wJ6+WeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11809"; a="85218933"
X-IronPort-AV: E=Sophos;i="6.24,192,1774335600"; d="scan'208";a="85218933"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 06:01:01 -0700
X-CSE-ConnectionGUID: a2BKbg6PSjSlU3V0b4Iw9g==
X-CSE-MsgGUID: nXxnmdKxRqi84ro+7lK5fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,192,1774335600"; d="scan'208";a="244184470"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 06:01:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 7 Jun 2026 06:01:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 7 Jun 2026 06:01:00 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 7 Jun 2026 06:00:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lxNNJS3ZXK3VzCy16jxGj2sdgHN3UaDXP1Mfg67ItBSnNyBcBLwJ/JF0gsoOvsoYR8k+ke8DlBXHx4LQbQFPvzlCmz2D4qbbLacxtbeRk04fLsETIqdfuLstlc1XZNH1n7NWyg1piyPhFB7fXN7mo0SAWmS1om4xFKzAfPOYxePcu2My8KoWN4KgTJreyqTOvweIADKzfOHF7INdT9t7SsN5o/uFewSHuPL7vs/U23pKxYa99+Zt/rA7e9OTqn6lM5WrRZtrAHnePw0xOa3fIuyN4JpnoFkkteLV/yWjxu0OAclcsLE+GvZkoVBGFEdot4ZtstW5/EpRpoUVHf18oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/EwpdJaItBMhBNwSFYiC2gXMGkC8ranZRfniyZ0tn48=;
 b=fY0vfzn4MlIo9ONRxlGKKzRWzImijLtzOlkVO6OFypHgfpY9hN+0X+rpAF3EhN846fO9SoGGl1+N9Qk4fJbUNB6cltIZITkvTUM/GbdeF1yCIugGaVu+Th5ErkKq2Jf5Hi9Yok9Mei+TN7miExNSr0qvOjdF/0Z7Lia8qwgHFOWzK2VShd3exCGPKCbWh9H4BvyDE2TiAW9RyG3dWJ6IM82TLYlAi1EGqTixAv5Y93q8F01aQe/3DXepAUn5PTXgg+ly0lsMu9HQ6ngT95feGmLLWLbwnFRHDwpGghkvkliXFrZvd1L26i5QsIWJrzHTrEkDVAWyeHfcZVl8SFC09g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB8448.namprd11.prod.outlook.com (2603:10b6:806:3a3::17)
 by DM4PR11MB6503.namprd11.prod.outlook.com (2603:10b6:8:8c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.12; Sun, 7 Jun 2026 13:00:57 +0000
Received: from SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8]) by SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8%5]) with mapi id 15.21.0092.006; Sun, 7 Jun 2026
 13:00:57 +0000
Message-ID: <7a7bc9f0-7504-4cd5-a59d-55710f514c7a@intel.com>
Date: Sun, 7 Jun 2026 16:00:50 +0300
User-Agent: Mozilla Thunderbird
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
References: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
Content-Language: en-US
From: "Kadosh, MoriyaX" <moriyax.kadosh@intel.com>
Organization: Intel Israel (74) Limited
In-Reply-To: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0009.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::10) To SA1PR11MB8448.namprd11.prod.outlook.com
 (2603:10b6:806:3a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8448:EE_|DM4PR11MB6503:EE_
X-MS-Office365-Filtering-Correlation-Id: 9004ab88-bc35-4c32-6546-08dec494d0f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: eydeIjEHs6GI18HU6KrP5PFmKipL9Xp8addvZveh+TOg89i5767dfirbleiUYvKeSOBWRZDFAEvtVuA/QTcw8BaMxI1dXjevkUskB4nJNjh27mcwFAWGUFCIOip3a1UNUF/X47q0Cn2iwOmT0SUHejFBZE+6EN2J1/LaPoBP45xZYKIspeezdkevCNwmTbdCLt1NkfpXdjDPM/z++/2CF8chUvVdPus2R3mpZngbRRK3qGdZTjDnUES//fHtCd+ERmQahSn5Xuv5gfPP1NZTDunuMCClkFMXiWRx05brJn6NDSe4REmeP8rv0CE6odtqEAq2tC3xL0db43vH2HOkBkx9LciOdBpPs2yJoFg6bg/G6QFh3/oo3xgqxX0ytxWqkvqCmKF/NoA62/l3KjoHsxhn0SPIV5esqI1IyFeH7F98372ZID6l5yJGjCDICEpvS/mzspL02iEwgEkiUI0CQg5Q2K/Qrc5SmGWcS8aSzWhIv4G9F4yfOQSA+APFq78Y6+afeOTG/5lLbgVXuxIceZu/RYnZ+GVBz95Vc6sm33moBzmMy19RfC7UUJcCK9k6DuD4yMkztjigUbcTWtkIvN+HU6Exj9zHJRsqJJQyp24WnCs8g6wO+n5QVpsLpZDhNg3Usitqp/3m8QECp+XJtB6xhtXsIun4HHJ1uRmJUUS+rNUksFpfBQOFGcrj3i8xcTd4jk8lhrMJ0ULdnXfjdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8448.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHVNQjhnVXZ6d2E3Slkwc3ZUbkd0SDZGcFlMRU43QzBrK0IxUkpkTVBGclg3?=
 =?utf-8?B?UUNMNVlwd1dpeUIyUXludEZYYS9HZHZVYnhJdE0veW5zZ0Y3VUhzeXBpMUJk?=
 =?utf-8?B?TEpxeGRMekZKRjE4eTY0VU1iOE95WmI2Z1dOaU1OZExTUUZiVWhKd0ZkUFoz?=
 =?utf-8?B?MFpBTTFQTVVxM0phekZuc1hYUHNHTGZ6MDFERTk3OGtKV1R6WXQ5SEp5b25D?=
 =?utf-8?B?anFqbXh3b0tQYVVDTTNUc1hNWW1vMXh2Y2llblhPYW1aN2lwUFNCYnAzeURO?=
 =?utf-8?B?MHBQbm82dDhoS1ZGSGJZTlhteTVjS3hOaElwbms2Y2RqaTdvUUVKSHgzYS8z?=
 =?utf-8?B?QzFBNnZVMzJ3SHpXZjFXdzNWalYyMXB2VkFpYU8zUHpOT3VaK0hScjNIdmtO?=
 =?utf-8?B?aFJ6bDJOMmdISTllNUNnTi9tM3dkOTc0RU5SdU1WaFh5K3hUZ0pEOTNYdjEx?=
 =?utf-8?B?WCtBbXlPY0o0V0tjbDIwWEFSR2Zub3pnbzZIUUk2b2VpOHVFdTJHTmhlZFlW?=
 =?utf-8?B?UGlJM09LZnVuL01VZmdzQ0tVdXYweC9NenRzbU1pMUIvOHc0UVAreWJzVFdO?=
 =?utf-8?B?U3ZFS1poTmU3U2R3NnNhN3FibUp6YWxNMUxJeDdXUVdwelNoMzNINENhc2Jy?=
 =?utf-8?B?U3hRTmxmRlozY0Vhc0MyUFk2SlVNTmZHYTdKTmhxWng2bnN1T0NzUFNGL1Z2?=
 =?utf-8?B?eTlTNVJ6NEoyVDM1VExqQ090ZWZscnJ0czYvNHhXR0dmbjZtNmlzSHg0RS8w?=
 =?utf-8?B?YnJaRUU0Q1RWV1V2NFFtQWhoQm16T0VvdUpjdjJnSlhkWE94enRNYnVDK1dw?=
 =?utf-8?B?cGZNdk45MWNka2h5YmRBTEdBc1RiVWdwbWsycjFxTUdQb0ZRdHhFQ2NUTWxv?=
 =?utf-8?B?b0F6TUpPMkJScGRVbFM3MHZ1QVM4YkVXZm5ZalRRQm44ZDhvRjRieDIxZThQ?=
 =?utf-8?B?VXpTSHhGdDdwb2xqTi9QTEYrY3VNdDk1WWhXOG1SN2NRTGNpeUZGSkh4VXh5?=
 =?utf-8?B?VkF2MGFSUU9jU2MwODFHOEl4UkI5bHlyVExyL0RXTXdIOVB5N25Jd2NUZWZW?=
 =?utf-8?B?UjgzWTRIc1pYbGoyenQ5WU5XejR3WDZPL0Nma0xtMDZubFlvVVBEcmRSU04z?=
 =?utf-8?B?THVkSEhrRHFNR0ZZbnZuYU96Uk0zTjBGaTA4R1pKQkNBTGd0aVh4Y2MzNlZE?=
 =?utf-8?B?Um51emxYNVdiQXlDOUtMT2VjaDVicUxFVTNqZHV5Z2tDbWM4Wi8zeHlEaTdm?=
 =?utf-8?B?V04rYVhKemxQT3FPMXZKeWxvZ0tacXFFOTFXeWN4VHhKbUxyMGFFUE9nUk8y?=
 =?utf-8?B?QVRIdG91OEpicnMwckk2R1lKaGRObTYzWG5YRjFNaERlS0NGdFhrWlVDZWVk?=
 =?utf-8?B?NHVQTCtLY3Z0Z2hEUGJwcGtITE9FQUZKRnRyZmVwMytLSjQzS2MzSGdISER3?=
 =?utf-8?B?M1VHNEFPakZRVi84ZzBzbWtMRlhScUFTM1hSL3RGWGFHVVlpYTA3aG81TW9j?=
 =?utf-8?B?SXpJdjc4NFBBOU9ySDdzdEp3UjlpdGRTNU44NTN0QU1zZmJBWTQrS0Q1aXhM?=
 =?utf-8?B?N2cxeVpUUWxFREgxUzdmT1VTMTI3S25MWUNsZGxVRmtKMlZrQzlKOVZsQ2Zx?=
 =?utf-8?B?M0l0bFZTMmlXWXhlZThCNlNLQmxxS0Z0aC9BblJOU2xqRjRva2wxbmRlZ2FG?=
 =?utf-8?B?WlVvcmFxcDhua3dPMldvMUd5TUhOUmFwK3AySFBuU09SWTI1eE5sczVrUUdC?=
 =?utf-8?B?c2MzUldCTEdFRkhWRmFDNENvMno1bmVtNTY1andMTVZlUmtuc3V2TjlkUFNh?=
 =?utf-8?B?RWRId3E4VlBON3k5d3Z5N3k2bEpaWHViUG5LYmx0YkNzN1YyZ1JZV01UczhI?=
 =?utf-8?B?Qkh0ME1XU2N6WGFRem81UXZhS3NuMXBDN0hydGp1YTdyYkRqQ1o1OWlrWVJS?=
 =?utf-8?B?U3BVUzBVdUhKSTlSOUxjQVArNUNkREVFUDZEOW5qTWJOMElaUTlZQldrajFP?=
 =?utf-8?B?ekRxZUcvUkNBajJmTC81azZIZzNLKzhBUHV3OHgrSC9SRWFFd2Fyb2plaFR1?=
 =?utf-8?B?MTFkemdKa29NWjJaV1QwTTNpSFJxRmFFWG9STEpjSzFRTy9IZVRvMzYveGJR?=
 =?utf-8?B?TktYNzNrdXJVcmFoMzlUc3FuamUyYVR1aUFZa001VHE0eUZETTcrd00rZXdo?=
 =?utf-8?B?c0FkWUorbktDZ3BUQXNERkI0N1phVjJhQVFOK0dUNFR2SVZkTFR1Z1plYkNQ?=
 =?utf-8?B?bGZheXk2UVhsU1psZEw3UU0rVDd1alBGS3BUaEV5V0tmcysxZFVKa1Uwc01O?=
 =?utf-8?B?NW53a1VId1pSQkdLZFYrYkNvWDUxeGJmejFtQklIN2lnZ29Lb0dFSGFEdE5r?=
 =?utf-8?Q?IoPiNDfJqAgRVYX4=3D?=
X-Exchange-RoutingPolicyChecked: mRedLom2OYUKTcLaE88vMOG70aKmAF6EGvZ2w0YTO8h4H+hEXEda3WISMLFfmMaaZ4EwagdUAuCuw64hJ/r5MaeBw8juZQltY+/avZG3rXl8MpQKRaWMGjbv8Kj1ihLT7Ueop6kAtDAyWTLVIVa22cid11dAcfu/9tDqHIRu8j7ZahO9feIWxNK/c2oHJoc6yQRIO5GZgZivI/aoARyB+8TVrtmulOU6Ks/ggDxzWtjDr6pg7xic0n2oUbkw/h3ZiR3FDRsztjynHyCtP1T/Y1j7FWvB0MV9E9ApZLAVAjvHbBIQb9DpCXAzdrellRpKJeuPTcYe7Mg9z3wRSJ5c4g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9004ab88-bc35-4c32-6546-08dec494d0f0
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8448.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2026 13:00:57.6463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jzl5/BqO4xfTarvR3UX36by8Mv4/RF39bCX9X6hGRkPADZIHyekWv2XEWb1RINmFMSMkcxRzHzed3upH9t9LHH1WpQ6lQaL8B0BGwtGSRqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6503
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780837262; x=1812373262;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mx8jT114EJ++yRn9Fnzy00gpBslnSjLKEfdpOTuIy2c=;
 b=b7tOeAm2DxxVi5rgVoeobiZC9x++bJzgOUa1B0wSjNmsWs2gqqMgZl0f
 4POoAvKLV4A6vlFZ+lA/U8uNWdVHt6Nmkf2zXiQQELRHcbhgElxiErfaB
 4KO7dfK6/65zgoaXYe4XzqSEcdIB3FNAyTlz6Pc/373tUOKpuCku1shDd
 G2MoSt5CCpQbaLsr3Z2XEww0dJ1F6DbebAMB/6Qynwz86X0iABBT8T4B+
 BoKkOF1YnKbGIRQtPv81szrZSJ/xsz99MWBcmZMUH3nsMsxrVwAakwWSf
 dOquqx8DNbbeGH2yq+khL8/smj7qxNNTKNdmnCayhfUTvZqhu1n9iM4PO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b7tOeAm2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 41FF5650952



On 17/04/2026 13:43, Ruinskiy, Dima wrote:
> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> disabled K1 by default on Meteor Lake and newer systems due to packet
> loss observed on various platforms. However, disabling K1 caused an
> increase in power consumption.
> 
> To mitigate this, reconfigure the PLL clock gate value so that K1 can
> remain enabled without incurring the additional power consumption.
> Re-enable K1 by default, but keep the private flag to support disabling
> it via ethtool. Additionally, introduce a DMI quirk table, so that K1 may
> be disabled by default on known problematic systems. Currently, this
> includes the Dell Pro 16 Plus, where the issue has been reported to persist
> despite the changes to the PLL lock timeout.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260330/054059.html
> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Co-developed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> ---
> v3: add DMI quirk
> v2: add comment for the PLL timeout value and revisit the commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c |  3 +++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 15 ++++++++++++++-
>   2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index dea208db1be5..aa90e0ce8aca 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1594,6 +1594,9 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
>                          phy_reg &= ~I217_PLL_CLOCK_GATE_MASK;
>                          if (speed == SPEED_100 || speed == SPEED_10)
>                                  phy_reg |= 0x3E8;
> +                       else if (hw->mac.type == e1000_pch_mtp ||
> +                                hw->mac.type == e1000_pch_ptp)
> +                               phy_reg |= 0x1D5;
>                          else
>                                  phy_reg |= 0xFA;
>                          e1e_wphy_locked(hw, I217_PLL_CLOCK_GATE_REG, phy_reg);
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 4d553c6edd98..a7605e453382 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -25,6 +25,7 @@
>   #include <linux/pm_runtime.h>
>   #include <linux/prefetch.h>
>   #include <linux/suspend.h>
> +#include <linux/dmi.h>
> 
>   #include "e1000.h"
>   #define CREATE_TRACE_POINTS
> @@ -58,6 +59,17 @@ static const struct e1000_info *e1000_info_tbl[] = {
>          [board_pch_ptp]         = &e1000_pch_ptp_info,
>   };
> 
> +static const struct dmi_system_id disable_k1_list[] = {
> +       {
> +               .ident = "Dell Pro 16 Plus PB16250",
> +               .matches = {
> +                       DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +                       DMI_MATCH(DMI_PRODUCT_NAME, "Dell Pro 16 Plus PB16250"),
> +               },
> +       },
> +       {}
> +};
> +
>   struct e1000_reg_info {
>          u32 ofs;
>          char *name;
> @@ -7748,7 +7760,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>          /* init PTP hardware clock */
>          e1000e_ptp_init(adapter);
> 
> -       if (hw->mac.type >= e1000_pch_mtp)
> +       /* disable K1 by default on known problematic systems */
> +       if (hw->mac.type >= e1000_pch_mtp && dmi_check_system(disable_k1_list))
>                  adapter->flags2 |= FLAG2_DISABLE_K1;
> 
>          /* reset the hardware with the new settings */
> --
> 2.34.1
> 
Tested-by: Moriya Kadosh <moriyax.kadosh@intel.com>

