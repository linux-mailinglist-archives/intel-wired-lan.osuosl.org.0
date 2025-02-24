Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD6AA41A87
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 11:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4641160B27;
	Mon, 24 Feb 2025 10:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KmtYYjWbq_5; Mon, 24 Feb 2025 10:16:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C79660BDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740392175;
	bh=/pOJz1SvPSMOXrHV1KQ7zupj1S5GEzG8vEB80OhcarI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lqJJoQpJ4fSKuxm1mUQObgPYVEfu/uh1VQVpTddxjJVDwRWvaP7QY7V9aiYJUR8mr
	 1El/C3W2EAIT09aXdIsVQpL6fNom+xawLJaOVlxotSoy9/RR0iJoUlK6/QUE4wq+Ij
	 gWTFY6+Y8PZVgU4CvpQEM/AbFy0VXNpaYiUa+CEXefIzIvVQDv1VSlPOUv1w/Z6huk
	 JWs6GlVLwCP1YZUHiDTJLzzMih2y6L94em4R3UM7m4iWwMF+hmRGwW5FHTbUK4Cx94
	 LzviW0OKe6iR+rCek6CT8PKgwP5orIJTSwV2hDH9fhSUHtU3gCk1BNSizMOmc3zzVJ
	 q/I7KGu9NJchg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C79660BDB;
	Mon, 24 Feb 2025 10:16:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D3B7D920
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CECB160860
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:16:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dysDAZlKMloI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 10:16:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C70E360784
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C70E360784
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C70E360784
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 10:16:12 +0000 (UTC)
X-CSE-ConnectionGUID: FQG3+A5KRzy0JUlsFWt4kw==
X-CSE-MsgGUID: ke2Rm+k9S7WbB9xHqkrm8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="43969635"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="43969635"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:16:12 -0800
X-CSE-ConnectionGUID: Cs9WO3XcToSQ8LN/J3LF6Q==
X-CSE-MsgGUID: sJuXH1nORP21orkOJb8hgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116036509"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Feb 2025 02:16:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Feb 2025 02:15:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 02:15:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 02:15:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N9DF6EqZZUHyIfNUuuG2q8VumtkH06fxLoCwqhqlsxbtarSnx7d2ghV5mmnsFjFUdUhKABP0b9XsobD0eHPCfcQuE6x5RMmyZCW7Uo/gDZX+9OO+fa70tDNp8INC6LZaWeIZqk/l6VUkemxMJWc5T8LDtQEhfqyjAgqAifvnr55WArHQijy4L21YWNn7ktU9eWndaKpwpgjrRaUDaQ+D88QtvJbAWYe8ysZLICNr/TBKjVpmLHhLJYIoSEu6tG2EFFO3VgmyovyMS98Kj/b/DVyyKgMCtwoIXLONNdDw49oBWYT6KuC2w9QMYequwj4lHAFcPx8BXjoi92p2xXqYnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/pOJz1SvPSMOXrHV1KQ7zupj1S5GEzG8vEB80OhcarI=;
 b=hBWypcc+ynLcA31nv0XhtTOLHYASdTwtX/mWe6YxzZHvryVgHU26WE3/ta9KrhhX1XoxpgTvY/heJEX2b/G94uO4mKIodSUc5h0BK72dHiBKphyfYAhYS7FCXAxbe6KoMkoMaQz8C/3KLqDaBNg93b3ezFs3HVc7GNLSYFZNfAxAlzvgXxQqpDVb0LkoCEHA8cvWd88O8gHj0ueyZB22VR+6xjzbkYgb/JVcvQMEDLVuyF3b8KhIaO4JAd7D17A17p082wt+JXfbcST5laM9bLj0afXjJslYpP/RePWtRgr1iVbH/M0Jsj4t40e5jS8jLYocDTZgleDXYPRlYIsmvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BY1PR11MB8077.namprd11.prod.outlook.com (2603:10b6:a03:527::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.21; Mon, 24 Feb
 2025 10:15:40 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 10:15:40 +0000
Message-ID: <0f3cd937-8a10-47c3-8016-4ff7f31e506b@intel.com>
Date: Mon, 24 Feb 2025 11:15:33 +0100
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, 
 Jiri Pirko <jiri@resnulli.us>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan
 <tariqt@nvidia.com>, <netdev@vger.kernel.org>, Konrad Knitter
 <konrad.knitter@intel.com>, <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn
 <andrew@lunn.ch>, <linux-kernel@vger.kernel.org>, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <20250220174512.578eebe8@kernel.org>
 <2a8a5ef5-af9f-4c16-887b-514b614b8c80@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <2a8a5ef5-af9f-4c16-887b-514b614b8c80@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0003.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BY1PR11MB8077:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fbd0196-0f8d-4c1e-1f32-08dd54bc305a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkdsZlRQUk4wWnVlamE1RmsvRnYrb0d6dVB0aGZJNXgxdFk1ME5tOTNvc0t3?=
 =?utf-8?B?b1N3VEJERTBaSTh1MXN1My9BNm9QMndSRG92UmpTWk1MRG0yeVZ6d3JkRlYx?=
 =?utf-8?B?d2xsaVBCSnlLc1I3blpMb2tQUDVFUmxwTHQ2cTZTTWUyUjJ0TzhjanNwazM3?=
 =?utf-8?B?TTBkS1dmNzY2WTJZMGVQTnBuOGJqT0F1OFRvY2QwNVhJekpCdDBpWXlEZGhZ?=
 =?utf-8?B?T0hoaUZhSE1welFEWWdhTndjVUNRSUZMUmdyNXNOOVptektiTGEweFRLb3dz?=
 =?utf-8?B?b3RxZnVUdzJ2RlNSYWVqMUlsN0RHU3E4NkVzZmRJekdjNFpieWl4MTVUSGcy?=
 =?utf-8?B?STNLdVJ1VERqcy9qS2t1bklZSFFMTTk5eW00RnYrbldaQkc4Z2pXaXNFM1VF?=
 =?utf-8?B?cXYzaG0veEFzTWVFMWFQWXNGLzR2VldoVmlsZ1dNWXhPMnh1UUMyb3ZDUkhv?=
 =?utf-8?B?WXQ2NXB4bS9zanA1Ky9zL01jRTk3K2dzQ2V1ckNObkZqdExBbFFiNTkvS0lp?=
 =?utf-8?B?MlpnYlh4ZFQ2SzM3VWpXZTRNNUE5KzJWbStIb3JnbUQxOXJiSFE3Tk8vbjZ2?=
 =?utf-8?B?TlU5ME5yZGkwSzRYRlgwN0JyUXRSZkpCbUlnWjlGaTA4cGU5VnhzbE9mYVgy?=
 =?utf-8?B?dXRWODFXNU42SEdmbXF3c3J4TWk0Y0ZKb0JQNWtMR2VXajBERVNRc2hPb3Zi?=
 =?utf-8?B?ZU5MTXJWbVljWUh1eURWeEpmVk8xWEVmYnhJb2k3NW9NUFVZUjUwb3NxMDBh?=
 =?utf-8?B?M0FTN3l5Mi9GQzJLK2t0TFRISDVEeDhIeUZoVG5VeUpyOXY3SXhoVk1JS2R5?=
 =?utf-8?B?MXdrMXFhTWpwQWY1UlZ3QUFKRG1Jb1htMDgrV0dKalYzTURzNkdVYnd1SFhI?=
 =?utf-8?B?SFovMitYRG9VVktyY3Ruak1wZ0FUUGhBSEU0TDhBUzFuQWFra0VjSlpiRU1P?=
 =?utf-8?B?UmtPenVDUXNHd2RCVFo4L1FRTDJvNlltaFNQZmQrZkZYMkJXMHVnV1QwY3lh?=
 =?utf-8?B?Qy9NSEVubXY2NHY2QW5YYjVsVTRDcm5Na2VacXU1K1VPR2VmLzh3NERJOVU2?=
 =?utf-8?B?aTBmK1NHWHdWdndOL28zRmhQZjlYeGRRYk51bGFtUTR5OXRJUUpmSlF6WHEx?=
 =?utf-8?B?UUNBODlzMVNGd3FZdElWWEwweExQV20yNHVETDB6Z1Vibk1TUnB3bDhSSWdY?=
 =?utf-8?B?aEd6SmJCYmx3WXc2T3VEcGgyWkdIanBqaDdLcDVCZU1Lc3JjWFowM2t2alFV?=
 =?utf-8?B?TjFKSURFR2tNZ2pkUnlsdWp0clE3Q2k4SGt3WmlocVREQWZmRGlMZ1M1RlVX?=
 =?utf-8?B?K0lrcmk2MTFDYjdJbHdqb1V1clBMNGlvS3BkMitndDEybDlUcXp2V1E2Y3Nn?=
 =?utf-8?B?LzVnQXpSYWxWWmd3WVkxSHd1VVRpQ0N6eDVrOVVSQkJnblc5Z25oV3NuOEYy?=
 =?utf-8?B?QTdMTUNmTUY4MDhqWktWdGtIdXMwaWRHWk96eS9sdUdWalR3OSthcTV3TWtD?=
 =?utf-8?B?VU1jcnpXTjlsZmxFU1dycENDN2pKbC91cTRBOWtORlZtTlZqMnVKTm5jbUl5?=
 =?utf-8?B?K3hGUmJLZm9WVkZXYlFYU1FBNGN6dXhoMU1PRHFwRXlYbEhUK2RmWjBnazBn?=
 =?utf-8?B?UGZiQkRhUDZlUEYxRSt4R1p2Ryt6YklmVHd3aXNEVkt2NDB2T1JDMEVaamhU?=
 =?utf-8?B?MytJQW45SFdSeDN0dEYwdjdpY2RzZFg0VC85Kzk1TmNiNkxRNmpoNDBTVVFy?=
 =?utf-8?B?OTBWdk9XaWdsMWJLYXc1a3JWRFd2Q1dETEp5Tnc4RzkraStlM0k4L1MzTEx3?=
 =?utf-8?B?NEtYek84Ti9UWk9IUUkvbGNLRWtFZHVWaWhqTWdhTEN6NUJFZlZPSVpLaDk1?=
 =?utf-8?Q?opc8jNYzXejkm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDdMckRnTjduZ3crYm9HNUJiRnVLaGE3dzBpNld6NThrNmt1UGhLTWhtc2tV?=
 =?utf-8?B?ZWdPQWRSMHpHVEdmeWJMWnlKUXUzQjhjT2M1UmRSZU8zSThYRmdMOUlxUkhF?=
 =?utf-8?B?eExOeE5LWVB1MWVPZ0ZiZlllcExKME5UaU5MS1krYzU4RXE2eU8wbk5aa2J4?=
 =?utf-8?B?Vjh1M0R5M3pNdXlVV1RaQnkxL3pTeUFFYmpnTi95UDN2dkpheS83dmZpRlJx?=
 =?utf-8?B?TU91VVJmWkxWWjNoK3VjekYvbG1MNmRQbXAyQ0xIeW5wRXB1bFFncVhodTA5?=
 =?utf-8?B?aWtTSTlnUlBaUG5odERxOEVBMytrNHUra0xhVE1BR3ppU2o1RGppRkl2OU1q?=
 =?utf-8?B?VzJHbzNNaEhsR3E3TEhtbmk4aHNvcUk2TVFBQjlobGZXWlc3ZVNzQ1dEcGVH?=
 =?utf-8?B?anRkYXNpbXNOMFl0anNkUmc5UDVrVHFNWWRoQXlxY3VQcHJhdUhBWkZ6Tk4x?=
 =?utf-8?B?U2JnZjJ3aENzRlNsbCtnczVnVmhLNTZxeWxtT2NaZlBpejlmNE84MzVwV0M0?=
 =?utf-8?B?clRhUUxqZDM0bjNrc0Rud3FjQnRQWVNWdFJNY1hoRm8vb0MxYVVOMDVyaWF0?=
 =?utf-8?B?TGM3TmpJNkFTVE5kc1JzY3Mrb1VvZ0g1TTZ3M3VKTk0wTUIwem5aeU9iVEtF?=
 =?utf-8?B?NER3ZlpXWEI1YlZHZkxaV1pycnRXM21jZEcybEgzK1Jmb1lBWW5KdXBvcXda?=
 =?utf-8?B?bnBKQzVBSlV6MnRZZmRKbWZDUzdiTExESmRSbTRnQ2M4UFY2M2EvY1lqNERv?=
 =?utf-8?B?eEszdlkvd3BPYll5Z0pvT1F5NFUxTVN2Z0s3M3JDMG1hTkNyYkEraTQvelNr?=
 =?utf-8?B?Z1pQZTdER3p3cUlwVDkrUkxXM2JvajF3bkZrMURVOHNLdk5JdHdPajdkNkpn?=
 =?utf-8?B?MXZIeFZHdG9kVXVKVHZxdGY5ODVjT01OVFdGWldUdWN6ckh3TW5DMy8xakp1?=
 =?utf-8?B?R2R1L1Z1RFlsUDJhZ0UxSllvc0VocWdHQXZhUzhOaHhHTHJaV3NOSmZCYW1x?=
 =?utf-8?B?WnZKZnc2dWJHVFcwMWt5NWVlTmdYNko1MWd2WXlWZDZCYjN0TmluVW1QVjZp?=
 =?utf-8?B?bUsvQ2QyZHlITmhiUkc2Vkd5M3BrSC9la0ttQjE5QkdXLzZyTTZCakxubGlI?=
 =?utf-8?B?cmpWWVpjR2NpZE93UHJzc21oc0ZxZkdOYlYwZ1p6UDdzMDh4YThXanNpUjQx?=
 =?utf-8?B?NWVIcU5FT2x3KzVUMzF2WU5WSndBbFQ3OFQrUEc2bDZRWEZuN3p4eXpvUTVC?=
 =?utf-8?B?Y1g4ejIyWGdTK0FUZnJJeGxpOGpyb24wM0FVTVpPMGVGblpxU0lEZHczOGpZ?=
 =?utf-8?B?N1Zkclc0WkhkZmxmR29lMTd5d0MxL1QweURKdzdzNzMyY3dqYXlybFpoc1Y2?=
 =?utf-8?B?aE05T0VpZGpQUHJHbVpvK2dDb1JyQnVUUXIvNHp3b1JQL3RBT1JXRmx1aDVp?=
 =?utf-8?B?U3BpQ1lUNURNckZhMER4UHA0bkZHNU1vRmYxWS9UKzFqbk5QaHQ5KzF6UUNB?=
 =?utf-8?B?VTBJbExXTFJGekVmVEhuNk9yTzFQbUZ1RkJnenNnL3JyaWhOZVFhUjFTUzUy?=
 =?utf-8?B?RjI2TjhQb3huUjZlRGtUWm9ieTRJY2EwQ2dXNVozN1A1QnFya2theHd4ZzYx?=
 =?utf-8?B?VGNTWktDYWVrcXYxMzBkSTNjRHhua3B5dy9vWUFka3VTOEFNcXRmalZXc1NG?=
 =?utf-8?B?UjNtczRSSldjdlExVmtZR1RGWWRuVmtDcHcwWUNEOFlBbWE4ajNOQ29Temc0?=
 =?utf-8?B?QWZQYlFjRStSZGJnY3VreXV0RStHWkw2RDQzOGJPdXA3OWtMTndHUTc0TUcw?=
 =?utf-8?B?TTNITlN2ckM3TFVnd2FHNFFBRmNvYm5vOFBlY0czQ2RkZU5TOERjNEZFVUdy?=
 =?utf-8?B?ZndsNkpKZERLdW80ejVoRnVMbklObFhqdFFNWmZoMEVBNDZ6dDRKclhmaUFC?=
 =?utf-8?B?UlpZa2ZRRzlkb3I5YzZ3eVUxWE9zWlZJTXRuYzR4OVlOTkNkN0Z6ZTVUN1dI?=
 =?utf-8?B?SXhlSDIwRkJMRmRNRmtGRW9EWmZieDVtaitvVUVzbnVYeTdjcFpjdDBrMU44?=
 =?utf-8?B?V3ovQlpQUjVkeVJSUFV3S0pNTURGVEFMeEttUHlRekpSQitjQnBmRVcvMlAw?=
 =?utf-8?B?cXZGc3NsbThyaDdXdDdyN0NzVFJkcnZXNG5IRSswdzgrNjNvSEszN1h0N0gx?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fbd0196-0f8d-4c1e-1f32-08dd54bc305a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 10:15:40.0019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fDayY6AMs6ndq8rnsgF3yNjdweZPBqdwP7UWtJymTRUhJUOQtBCbmRsza2v5ND+QeYhFs9rfY3z4OT/wF+iLvOP+vVZV9K3Yf3gDMeCMubM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8077
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740392173; x=1771928173;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QpviWaTc92ljMKYlE7SAni0hfsU4XCK3nF0Zu3FePnk=;
 b=ah1lQ5x3q0egAI67dKIm9n+r/PMXIPEMqSAOgyf533JfJfJSJ/atUEkk
 MvRjXIZY2LEoaq4rlhXtP1yLjVyWJ0YHnMMdwTwhIqe043zKBOBknG+Ci
 IiFRa0zVrAkJ8uOQGSRnvgIRp7UMDkzLWVVET9wLcX2ELuoJSsEMSXlnU
 f3RUYlYUIXXcvqPXniFnKA4t4LFz3SlhycvDS9PLHtUSUgtY1Lx0noRJ5
 9+fv2L8gxOfevgwtGGQoIAOOM4QybK+LVAqfWtBC3bFjz/+caOIIndtTI
 4bAdxVLkc3BgBH3ia2PrYIZ5sk1B+zRBZf2RjtavQ0p3XMId8pSLCdCkD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ah1lQ5x3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

On 2/21/25 23:50, Jacob Keller wrote:
> 
> 
> On 2/20/2025 5:45 PM, Jakub Kicinski wrote:
>> On Wed, 19 Feb 2025 17:32:54 +0100 Przemek Kitszel wrote:
>>> Add a support for whole device devlink instance. Intented as a entity
>>> over all PF devices on given physical device.
>>>
>>> In case of ice driver we have multiple PF devices (with their devlink
>>> dev representation), that have separate drivers loaded. However those
>>> still do share lots of resources due to being the on same HW. Examples
>>> include PTP clock and RSS LUT. Historically such stuff was assigned to
>>> PF0, but that was both not clear and not working well. Now such stuff
>>> is moved to be covered into struct ice_adapter, there is just one instance
>>> of such per HW.
>>>
>>> This patch adds a devlink instance that corresponds to that ice_adapter,
>>> to allow arbitrage over resources (as RSS LUT) via it (further in the
>>> series (RFC NOTE: stripped out so far)).
>>>
>>> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>>> PF0:		pci/0000:00:18.0
>>> whole-dev:	pci/0000:00:18
>>> But I made this a param for now (driver is free to pass just "whole-dev").
>>
>> Which only works nicely if you're talking about functions not full
>> separate links :) When I was thinking about it a while back my

that's why I have make the name as a param, instead letting devlink
infer it

I admit that with ice/e800 we could have done better with splitting
into devlink and devlink port parts at beginning, but with growing
complexities of devices, we are going to hit the "we need something
above" issue anyway.

>> intuition was that we should have a single instance, just accessible
>> under multiple names. But I'm not married to that direction if there
>> are problems with it.
>>
> 
> I would also prefer to see a single devlink instance + one port for each
> function. I think thats the most natural fit to how devlink works, and
> it gives us a natural entry point for "whole device" configuration. It
> also limits the amount of duplicate data, for example "devlink dev info"
> reports once for each function.
> 
> 
> The main things I think this causes problems for are:
> 
> 1) PCIe direct assignment with IOV
> 
> This could be an issue in cases where someone assigns only one function
> to a VM. The VM would only see one function and the functions outside
> the VM would not interact with it. IMHO this is not a big deal as I
> think simply assigning the entire device into the VM is more preferable.
> 
> We also already have this issue with ice_adapter, and we've seen that we
> need to do this in order to make the device and software function
> properly. Assigning single functions does not make much sense to me. In
> addition, there is SR-IOV if you want to assign a portion of the device
> to a VM.
> 
> 2) locking may get complicated
> 

if any driver would go the "plain devlink" + "port devlink" route,
the devl_lock(devlink) and devl_lock(devlink_port) should be enough

> If we have entry point which needs to interact with ice_pf data the
> locking could get a little complicated, but I think this is also an
> issue we can solve with ice_adapter, as a natural place to put
> whole-device functionality.
> 
> I have also investigated in the past if it was possible to make the PCI
> bus subsystem wrap the functions together somehow to represent them to
> the host as a sort of pseudo "single-function" even tho the hardware is
> multi-function. This seemed like a natural way to prevent direct
> assignment of the whole device.. but I was never able to figure out how
> to even start on such a path.

I get that the general sentiment is to "leave the complexities to the
driver/other layers", but it was based on reading only limited amount
of internal (non networking) mailing lists.

It will be great when devlink will be finally used by non networking
drivers :)

> 
>>> $ devlink dev # (Interesting part of output only)
>>> pci/0000:af:00:
>>>    nested_devlink:
>>>      pci/0000:af:00.0
>>>      pci/0000:af:00.1

BTW, I have local version that adds SR-IOV VF's devlink instances
as nested ones to PF ones:
pci/0000:af:00.1:
   nested_devlink:
     pci/0000:af:05.0

>>>      pci/0000:af:00.2
>>>      pci/0000:af:00.3
>>>      pci/0000:af:00.4
>>>      pci/0000:af:00.5
>>>      pci/0000:af:00.6
>>>      pci/0000:af:00.7
>>
>> Could you go into more details on what stays on the "nested" instances
>> and what moves to the "whole-dev"? Jiri recently pointed out to y'all
>> cases where stuff that should be a port attribute was an instance
>> attribute.

My initial assumption was that everything stays as-is

> 
> I suspect this is a case of "we have separate devlink instances per
> function, so we just put it in the devlink".

That's true that our 1:1 mapping of PF:devlink made this naively obvious

moving almost all the stuff we now have under "PF" devlink into devlink
port instances is likely too much of uAPI change, but let's make the
question vocal: should we?
