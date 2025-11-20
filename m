Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3BCC72F25
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 09:47:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E26684213;
	Thu, 20 Nov 2025 08:47:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nXNcgnKSvWLm; Thu, 20 Nov 2025 08:47:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 435D384205
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763628468;
	bh=RFuoqeu9WbUn4d1Lnewf33UJmtB9U/LG8jL2nADPWHY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uAOXAeQkOMb8TQOOlBJR4oUCEFhKNpWoVlhoDiK59J2NiPWLM2n2bY4Dj+dylOXOb
	 cSpuoNX1dUY/216/ggzNokSULdQa0aPvWzWLSqzMWdNICjx3T6YXc1tzffXzb78Vuo
	 3KkAlrBJUOxoePQq6We6rJOsIJG5YnSBtjeVu4qlR4Q+2bOFiHtxIiZh1zRab6DukY
	 1qp6T58AgIVrCGg/DCNjwFdigUjEuS5SUQxNJd7gpbWrTSYZ+xAC5Q4gVMhfPe3lxK
	 Sar88a3YsO/ii8sspYucG4baXQx9YjxSXlEdwvnokigvbaLKEk1CCRL2RCjqSGD8he
	 IviWWcp7wnuqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 435D384205;
	Thu, 20 Nov 2025 08:47:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1FBB72A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 08:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02CA341027
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 08:47:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1cF1eM_j9ssQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 08:47:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0EAFF40FDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EAFF40FDB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0EAFF40FDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 08:47:45 +0000 (UTC)
X-CSE-ConnectionGUID: 4SoSIo/RSBmVa7PHxIafgQ==
X-CSE-MsgGUID: S8CdEKSpQpm5lzB6hJOaFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65391875"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65391875"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:47:45 -0800
X-CSE-ConnectionGUID: U41shSF5TM6+T4/2CAUBhA==
X-CSE-MsgGUID: zNloGAp4SiqtZD5K6ahCIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191097950"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:47:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 00:47:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 00:47:44 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 00:47:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VVCTf6AAkuT8ymkEa6iwBpSJl0tjirHbbnO7N/VW6qn870QG2sRvqvQTakIK14p5UAXUd6zVQh0XH/sKxEKm8Uc/5d3Mkldtm2/dCHI1WQZjr93wGPO0tFfZLpzQYn0nAJIjQ9+9dSXDNezPBppJJaNXrEvveFKsvRm148z3gmYnsltGlzuBYZerwjzu+3M4tOlYGgM+tULz5crsijaK6rah3G3qRxQniF3KSj6sr/iCDbWn7JFyzLkOOLvyN1Qzw0P/0KB1aA/5sE4bvSDayqlVigGnTOVsRGCeyaeGO+r9XCn+y4mApdUtsW1keNN+mrX7t5bo4ZihEHOBQB7NXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RFuoqeu9WbUn4d1Lnewf33UJmtB9U/LG8jL2nADPWHY=;
 b=JxXKZm2rjKqNvBMeXn7ZU7f6hgXxkZameozaHhy5b9wCNvh/USL0qwqHPrUpBmRutp9/vGQr5hTI7UjH8Pkh65OC3ZCzmaxLwN0zPZdDDdOvL9OqTmCy9mbExXj802ej5vQOh5IQGxyzSfQRdlwKyk8vhVH8MwoOX5VpgpiYt6R4rZPBb/za14V/GIlSBUF3IsTWNIcI2+tSelT5+BKNOvoIohhMhq9W8NWZjj+N56cj6l96vbv7eFHjazp/CsmRbdQ+eB8BpdQqk3l13XEui4PNnhI75nno2jQdVFK2vI9Dhy30eede/QtxOOuH6/+ryEVjgTfjPYN4j9UD64oOlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 08:47:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 08:47:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] igc: Restore default Qbv
 schedule when changing channels
Thread-Index: AQHcWfZYA7NOsou85kqSb4+MUc6C/rT7P3aw
Date: Thu, 20 Nov 2025 08:47:41 +0000
Message-ID: <IA3PR11MB89868F4A6EFAEA100AE0DA20E5D4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251120-igc_mqprio_channels-v3-1-ce7d6f00720d@linutronix.de>
In-Reply-To: <20251120-igc_mqprio_channels-v3-1-ce7d6f00720d@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL1PR11MB6051:EE_
x-ms-office365-filtering-correlation-id: 4433c674-3428-4e91-b6d2-08de2811775e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VkFnOXo3ZzgxQ2M2UkpBMVhkajFIOWV5am9hV01TNE1MeG00OFFpdzJCTzhj?=
 =?utf-8?B?NDRFUk01dndWZHVyVjBJMTdNeENPcmFXWHpsUXliYmYzcnMyQUlKUEQ4UHBp?=
 =?utf-8?B?b2FsbFdXRzdqOEZYbnl2Vm5nbkFvQ1QyZ2NoaVg3dStkZGZGNWNUU2RGeDls?=
 =?utf-8?B?MEF0cmdQdDNLeWRaWmVXei8rZ2FTUm55TE8xTzFPeHdyRE50N1hLVDEzSzgy?=
 =?utf-8?B?ZTFYZGhLLzRkK1RGbmh6WitWSW14bkQ1eWkwZzlwM2hoVWVqeXZ6OUxLTUNy?=
 =?utf-8?B?djNVbkUxYUxoYURRYUd5NHJMTFl1WitycWFFNmdyRnZNNHBsRDlidXlMdFZ2?=
 =?utf-8?B?dGxjbDVVSFkvZkpxUFhqYWhveG1rSXNpa0JhTUhiSFBxbU91TVJUVnBxOE1D?=
 =?utf-8?B?MHpPVWJOZ2RyakFOY0FlSjZ6YmhURUdHM24zejFRWVo3ZVB0a1BrWjhBVjFW?=
 =?utf-8?B?TXFRNjh3MjBXaFhWR0tPNlZCdjE2dDZrL1o3dTVUdW53VUphMGQxQ2lHdEox?=
 =?utf-8?B?K0d0L1dQQVdIWll1SFhqcUFML2FtVXB2MDVmUzRJTUtaaUx5S3ZQdW5QcnV4?=
 =?utf-8?B?cmcrTkdjY3NvSVhVT0dRamk2bnJUN1JUVS9ZOVhLMHB5WCtIS0ZZWmFNNVhq?=
 =?utf-8?B?TjF6Qk11Sm5rWTR3OG8vYUkxNCtlcm1QZXQyZVNtajRZQ1hib1MwRkdkZm5B?=
 =?utf-8?B?RWJqS3lzSjdOYTVwUlp5ZVpWM01uUTlWNWdXNWJaWEpRa3gxcDBqa1c5L2lh?=
 =?utf-8?B?bklVeVRJUGFUSlZCaVlSeUMyc3ptTzRUSjVSZDZCOFpOUzZwTm9TRW5wdTQ2?=
 =?utf-8?B?SDVKYncxSVRuWWRZRlRJcUswUmNBZ3F1WnFkTUUzMFU2YjVtUzBlM2VDcjNF?=
 =?utf-8?B?TUpIaW5qTG5MUFVuUzVFeXpTQzl2MXZISDNHUGQwL08rM0E4aktQd2hLOXRi?=
 =?utf-8?B?NDNIMFMrTExQVHJ0OWt5UDJKeUw1WXZuVU03dXQ5OGxpcmFVengrQU1TL25i?=
 =?utf-8?B?blJya01za3dxUVhGZFg3UWtqN1R0M3dSa1g5Ty9HZXc2RFV5YnlMWDlObW82?=
 =?utf-8?B?VXYvR0F2a1NUczlSYU1RK3dReHhPWTZsUVhhUC9lL0JadXNsUHp5NzJabVY1?=
 =?utf-8?B?Qk5tRkQwQTllTFk0RCtoNWFaRHNldWFkdmZha3E0TzNBLzh0NUlDc21LOEZ4?=
 =?utf-8?B?QXF4Mi9kNGUvc2xKWTRrajZZZGRiK0hsbkdnSFFpOTU4V0hOR2tOejF5YUdI?=
 =?utf-8?B?OEVuODBYb3ZpOXhIa2o3ZG5BbEg3aloyMGJ6eEkzL0N3aEtqQXpzZGwxUjdK?=
 =?utf-8?B?RlZiZUlhd2VZTnA5VXp1Yi9Rc2RSTjl4bWZNSy9PU0VHTTRMbzFNZm1tQ3Qr?=
 =?utf-8?B?blhBWXZSeTZXRGw2aEFQNUt3Z3c1K2JKU1d0TjlJZ2JXUEhwRGhnQWpxUXlz?=
 =?utf-8?B?dHZZWUhFZmxEakJqS3didEV4K3FmSGs5STl0RFpYbnZSY1JlUlBLM1hpRjFj?=
 =?utf-8?B?eTdwQ2RtTnA3eVZWN1Y4SFQrbHlnVEY3R2ozcmR2dlIreUZ5cDY0enFadWxJ?=
 =?utf-8?B?SHRYK2pMN3FhREZJbWd3dGdLd3hpalZTM2VBam9FS1M2Y1Qrc2JlYXJhaE9F?=
 =?utf-8?B?ZjBlNE9kOWhTR0YrT3JOQXgzdlZTRDFQMGRvZEk5Q05hTHgzNHY4UklhWmRE?=
 =?utf-8?B?bW9NaFI5UXd3M0NmdkM1SGI4QjByeElIbXVkQnQyQ3Y3bnRpdjZTL0Q4MzVS?=
 =?utf-8?B?VGh5aFdSK3diL0U0NFpWUXFRcjNUWS9mSkQvVThlWHhyTmJ1SlA2TTU3NmxF?=
 =?utf-8?B?N1hHL3Npbm5JNlJjWllqUkJWQVowbHdBQm01aGxuZkFyUzVQdXUzc2J1eTRT?=
 =?utf-8?B?U3dOUGF2R2syZmRUWm1nendwai9Vc29xN0Zmc2pSLzd6RmdBcFoyZU8yamJT?=
 =?utf-8?B?V2laSDIrWm9IYjExVWlQRUc5S3VBNFpPdEZtSzIzK1dpQmNiWmNpNnpnTEVS?=
 =?utf-8?B?MFAwNkowVFA1Q0lzenA2aVRDZm5LSEtXRXNMVUlhWkhoVGkyd0srNkh6WU5M?=
 =?utf-8?B?SUVIb2lDaDVKMWFjZ3hRaUxXZlhia1ZsOUtBUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmJPdHo1cW1wZ2Q3YVE3TE9UdW5TL2QxNThmbWFCbGE3ZklYanBvcHlyekpJ?=
 =?utf-8?B?QTNPU0VEN3RPRnlvdzFBRXV4UDhGTVB3SWxTdURqRWROeWQ4TGlDR0JnQ0RW?=
 =?utf-8?B?SHpoUVNUNDMwbFpFbjY1M0p4QmZObGF1MnFCd1d0ZS82Z0U5Z05YWCs4OWhD?=
 =?utf-8?B?VEFqMXRmVEVyL0VxV0NDbGl2SDJZb2YxTzQ2aVVQQnZXa1huMFlESTRUYXhZ?=
 =?utf-8?B?VXRGY3gvNzAzU3lBTUVpQ05pYzlIZHhUQTMzT0cxTVVZcG14ZjZwNVRJMUo4?=
 =?utf-8?B?L3JqZkhxTTdCaVFzOTNnaHJYaTQwbjdDSmVndE9iV0h6dDFKSUFzMi9UR0JN?=
 =?utf-8?B?WkNORDdYQVlzSmNRN2U5RldaNFEyNnhpRFVIejJQQUh2bEg0dTZML3FQbjZJ?=
 =?utf-8?B?bHhSeFVxUDJVeWdFNnlhRGxjMG81WUQ4bHJScEpkay9HMXNuZTJwTno4RmRw?=
 =?utf-8?B?Qk9VaDNUQTJpL0FkZWVHQUo0Umk1M09jMGU1QmxqMm9oYVhTbm9hUUF0RDZ1?=
 =?utf-8?B?M0VRZHFXT0o1dU1WM1IrOVJXMWgyNFBHMlNaaDFBNnZTQnBSK1N0R2IrVnhT?=
 =?utf-8?B?VGFTMlpmZkRnVmQrUmdvWTJ0bVRzbGZBSGVSUVJkanh4M0VKeVRoS2J0YmNM?=
 =?utf-8?B?QmYxcTVvZWo5b2JJeTdKQ2EybW5zU0x0RVJwZUtVOC9ZbWVsUVo3VGlkOVg0?=
 =?utf-8?B?aHl5THZNNmRueWVzdUNFZ05TZVRIU2doVjk4dlQ2RWxyTE82OW5rRkt4b1Bq?=
 =?utf-8?B?a3ZQTW14ZW1LL1lkbU9OeEdSWWVxWFk5K3EvTW1wUVFFSjdVTStTTUZVWkJO?=
 =?utf-8?B?dTFTTTk2aXNCVmtSMW03UFZhYXd1OUk5M1NPQ01sQVJQUkZMS01QTVpnWmVJ?=
 =?utf-8?B?eVk2cDNpUWpBclNnaU16eVBPOXBlWVpKeEFhcSswRkFGMzJ4Z3pibkkranoy?=
 =?utf-8?B?ZWc0Z21IYnJ3SnVXOHliMzJ3Qk1raklDTzVWcGJ6dGpPYkluS0FjUGsvVmNx?=
 =?utf-8?B?UDl1TS9pdVRWenBCYlR6dHZ3NU01STJjaVVHc3RDOFZTdkhWczM2SE1QdEVD?=
 =?utf-8?B?OWhDdTk5RWw5Y3VFTUF0c0JkSVdDL25yQmtsQklrUy9Kc3g4THBEb2YxMzhL?=
 =?utf-8?B?cWtweElDeW9BT3ZhSkd5Tm1Vd2FRbzExeWtlS0FEaHZUM3Q1cnBEMmRvRHpS?=
 =?utf-8?B?WXdDblF0eEZsVTBIcTk4dVFjeGR5dnZHNWlFV2oxTDBqaVdwZVNqWFd1NkdN?=
 =?utf-8?B?SGZZeUlIMzBwSFU4aFg4OGp5SlJrYjdGTWlQZm43bFRQai9CYzBTVzZGdzU2?=
 =?utf-8?B?QWovYmdaSzBRYW1mY0tnSVVWMGdpUWZOaUVBR21ZbmVpNW1NZnZQQ0RMVGZB?=
 =?utf-8?B?NFBxT3htOW1wbklkYWx4RVc4ZjFKTjdwb0YydXFGQVJyUDluTFBZNVh6a1lr?=
 =?utf-8?B?L3NCa0tzeFE4NURmdnVXdnNkRWxPeG0rZm9YNzYybi8wTlZ5YjFma1luUlhm?=
 =?utf-8?B?N2Z1bnZPNU0zMkNEY1h1d0RyMW1KOGMrdlM4U1dvRnZDZXZLVEROMytXdC9n?=
 =?utf-8?B?ZXd4ZXdVc0ZpV1NibXc1eTJlOW5XWVV0cS80NW1IRzc1NDJjMFRhalJYWFM4?=
 =?utf-8?B?OHNEV1kwblZBZ3RWTkhCM2c2UUF1YTN1V1ZVUjRCbytRdlJIVDVZUXIxbGJ3?=
 =?utf-8?B?WHBLSHVrVklCYXBiVVVHcjN0OW9qMXkyTzJYU285RnhyZHA0amh6Z3E3RFl2?=
 =?utf-8?B?andUMXpzZyswTGg4RDdtM3k3L2FwWVNuQ1I1bHJTdjV5MjdRRUhxazBjNkRZ?=
 =?utf-8?B?dEpyekowQjNTdER4U3lRSElJRlBubGRONFBKMlVGckFPN0I4SG5QOGhmMTl4?=
 =?utf-8?B?WFl4MzRzcE4vMGR1UTVlMlRDMnoveDZweGFETE9NcEN3OEE2YlRXRXVnQzNq?=
 =?utf-8?B?bkRwS2UwMnBrN3BlVDF0ZXlyTEJGQ1dzNFZjUC93dXVRU2NWakx2eTA1aVF0?=
 =?utf-8?B?NGV4QmMybnVub3kxdWtncmErMXBQOXBGRkRMMXlnN0lnWkhueFc1eVgzOVcy?=
 =?utf-8?B?NzBvV0luZkc4ZTlwUit0L1F5UzZ5emRKYkFjSExBVEhPeWdMQnVldWxEeFcz?=
 =?utf-8?B?ZTBvay9JQmtnNG5mYWRtOTg2TWlmK0UrVTZscytjTHBSajhvWVE5K0VkT3pi?=
 =?utf-8?B?WWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4433c674-3428-4e91-b6d2-08de2811775e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 08:47:41.4841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LmXb8jbLEnuQyotsBvNxoFXKhhrUJEYIdzCplaPwgz+VbdAESCJsD4chUvqZyHrnNiIvD2mEoy5cQovirUWcX24etHPRasNkEXA6j2bOGHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6051
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763628466; x=1795164466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RFuoqeu9WbUn4d1Lnewf33UJmtB9U/LG8jL2nADPWHY=;
 b=gwV+nwLSbaYdG3Eg4u2LP7LhjitbEYDBgxBphYzj4WBXtztrKCRmYa85
 Zk6PuXMgYMa6FoOhLB9Z4o+VnNeayNXz2HuVOw4D8vmmcGak/EvlHPAEc
 81l7TkJpYfFengArgH7RZVreUUsgPGFKaHpfVuE1gO8Wc+fvbRn5EBVNj
 pGTeM2GYRji1mbJOZlOq1Ea55HkSoEq2xdXpf4FIwi3Cecby8JUO0mmCl
 oXSimID1UQLAlps/QooCGENw5IZjZsrchoZ+EDUgCWkb67V5hDPjJJoOu
 7pZh06dehBz8SzferZmIrYjdWjERabkoxjsoYCNn/Q0UMcKjsgxzhEJ4I
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gwV+nwLS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Restore default Qbv
 schedule when changing channels
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgS3Vy
dCBLYW56ZW5iYWNoDQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAyMCwgMjAyNSA5OjE4IEFN
DQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBL
aXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBD
YzogQW5kcmV3IEx1bm4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlcg0K
PiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNv
bT47IEpha3ViDQo+IEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFi
ZW5pQHJlZGhhdC5jb20+OyBTZWJhc3RpYW4NCj4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxp
bnV0cm9uaXguZGU+OyBHb21lcywgVmluaWNpdXMNCj4gPHZpbmljaXVzLmdvbWVzQGludGVsLmNv
bT47IExva3Rpb25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOw0KPiBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnOyBLdXJ0IEthbnplbmJhY2ggPGt1cnRAbGludXRyb25peC5kZT4NCj4gU3ViamVjdDog
W0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjNdIGlnYzogUmVzdG9yZSBkZWZhdWx0
IFFidg0KPiBzY2hlZHVsZSB3aGVuIGNoYW5naW5nIGNoYW5uZWxzDQo+IA0KPiBUaGUgTXVsdGkt
cXVldWUgUHJpb3JpdHkgKE1RUFJJTykgYW5kIEVhcmxpZXN0IFR4VGltZSBGaXJzdCAoRVRGKQ0K
PiBvZmZsb2FkcyB1dGlsaXplIHRoZSBUaW1lIFNlbnNpdGl2ZSBOZXR3b3JraW5nIChUU04pIFR4
IG1vZGUuIFRoaXMNCj4gbW9kZSBpcyBhbHdheXMgY291cGxlZCB0byBJRUVFIDgwMi4xUWJ2IHRp
bWUgYXdhcmUgc2hhcGVyIChRYnYpLg0KPiBUaGVyZWZvcmUsIHRoZSBkcml2ZXIgc2V0cyBhIGRl
ZmF1bHQgUWJ2IHNjaGVkdWxlIG9mIGFsbCBnYXRlcyBvcGVuZWQNCj4gYW5kIGEgY3ljbGUgdGlt
ZSBvZiAxcy4gVGhpcyBzY2hlZHVsZSBpcyBzZXQgZHVyaW5nIHByb2JlLg0KPiANCj4gSG93ZXZl
ciwgdGhlIGZvbGxvd2luZyBzZXF1ZW5jZSBvZiBldmVudHMgbGVhZCB0byBUeCBpc3N1ZXM6DQo+
IA0KPiAgLSBCb290IGEgZHVhbCBjb3JlIHN5c3RlbQ0KPiAgICBpZ2NfcHJvYmUoKToNCj4gICAg
ICBpZ2NfdHNuX2NsZWFyX3NjaGVkdWxlKCk6DQo+ICAgICAgICAtPiBEZWZhdWx0IFNjaGVkdWxl
IGlzIHNldA0KPiAgICAgICAgTm90ZTogQXQgdGhpcyBwb2ludCB0aGUgZHJpdmVyIGhhcyBhbGxv
Y2F0ZWQgdHdvIFR4L1J4IHF1ZXVlcywNCj4gYmVjYXVzZQ0KPiAgICAgICAgdGhlcmUgYXJlIG9u
bHkgdHdvIENQVXMuDQo+IA0KPiAgLSBldGh0b29sIC1MIGVucDNzMCBjb21iaW5lZCA0DQo+ICAg
IGlnY19ldGh0b29sX3NldF9jaGFubmVscygpOg0KPiAgICAgIGlnY19yZWluaXRfcXVldWVzKCkN
Cj4gICAgICAgIC0+IERlZmF1bHQgc2NoZWR1bGUgaXMgZ29uZSwgcGVyIFR4IHJpbmcgc3RhcnQg
YW5kIGVuZCB0aW1lIGFyZQ0KPiB6ZXJvDQo+IA0KPiAgIC0gdGMgcWRpc2MgcmVwbGFjZSBkZXYg
ZW5wM3MwIGhhbmRsZSAxMDAgcGFyZW50IHJvb3QgbXFwcmlvIFwNCj4gICAgICAgbnVtX3RjIDQg
bWFwIDMgMyAyIDIgMCAxIDEgMSAzIDMgMyAzIDMgMyAzIDMgXA0KPiAgICAgICBxdWV1ZXMgMUAw
IDFAMSAxQDIgMUAzIGh3IDENCj4gICAgIGlnY190c25fb2ZmbG9hZF9hcHBseSgpOg0KPiAgICAg
ICBpZ2NfdHNuX2VuYWJsZV9vZmZsb2FkKCk6DQo+ICAgICAgICAgLT4gV3JpdGVzIHplcm9zIHRv
IElHQ19TVFFUKGkpIGFuZCBJR0NfRU5EUVQoaSksIGNhdXNpbmcgVHggdG8NCj4gc3RhbGwvZmFp
bA0KPiANCj4gVGhlcmVmb3JlLCByZXN0b3JlIHRoZSBkZWZhdWx0IFFidiBzY2hlZHVsZSBhZnRl
ciBjaGFuZ2luZyB0aGUgbnVtYmVyDQo+IG9mIGNoYW5uZWxzLg0KPiANCj4gRnVydGhlcm1vcmUs
IGFkZCBhIHJlc3RyaWN0aW9uIHRvIG5vdCBhbGxvdyBxdWV1ZSByZWNvbmZpZ3VyYXRpb24gd2hl
bg0KPiBUU04vUWJ2IGlzIGVuYWJsZWQsIGJlY2F1c2UgaXQgbWF5IGxlYWQgdG8gaW5jb25zaXN0
ZW50IHN0YXRlcy4NCj4gDQo+IEZpeGVzOiBjODE0YTJkMmQ0OGYgKCJpZ2M6IFVzZSBkZWZhdWx0
IGN5Y2xlICdzdGFydCcgYW5kICdlbmQnIHZhbHVlcw0KPiBmb3IgcXVldWVzIikNCj4gU2lnbmVk
LW9mZi1ieTogS3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+DQo+IC0tLQ0KPiBD
aGFuZ2VzIGluIHYzOg0KPiAtIEFkanVzdCBjb21taXQgbWVzc2FnZSBhbmQgY29tbWVudHMgKEFs
ZWtzYW5kcikNCj4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUx
MTE4LWlnY19tcXByaW9fY2hhbm5lbHMtDQo+IHYyLTEtYzMyNTYzZGVkZTJmQGxpbnV0cm9uaXgu
ZGUNCj4gDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gRXhwbGFpbiBhYmJyZXZpYXRpb25zIChBbGVr
c2FuZHIpDQo+IC0gT25seSBjbGVhciBzY2hlZHVsZSBpZiBubyBlcnJvciBoYXBwZW5lZCAoQWxl
a3NhbmRyKQ0KPiAtIEFkZCByZXN0cmljdGlvbiB0byBhdm9pZCBpbmNvbnNpc3RlbnQgc3RhdGVz
IChWaW5pY2l1cykNCj4gLSBUYXJnZXQgbmV0IHRyZWUgKFZpbmljaXVzKQ0KPiAtIExpbmsgdG8g
djE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTExMDctaWdjX21xcHJpb19jaGFubmVs
cy0NCj4gdjEtMS00MjQxNTU2MmQwZjhAbGludXRyb25peC5kZQ0KPiAtLS0NCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jIHwgNCArKy0tDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyAgICB8IDUgKysrKysNCj4gIDIgZmls
ZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jDQo+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19ldGh0b29sLmMNCj4gaW5kZXgNCj4g
YmI3ODMwNDJkMWFmOWM4NmYxOGZjMDMzZmE0YzNlNzVhYmIwZWZlOC4uNGIzOTMyOWU5ZTMyYmYz
NGNlZjY2ZTY5YjU5ZA0KPiAwNWI1NGNmZWFiZmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jDQo+IEBAIC0xNTYxLDggKzE1NjEsOCBAQCBz
dGF0aWMgaW50IGlnY19ldGh0b29sX3NldF9jaGFubmVscyhzdHJ1Y3QNCj4gbmV0X2RldmljZSAq
bmV0ZGV2LA0KPiAgCWlmIChjaC0+b3RoZXJfY291bnQgIT0gTk9OX1FfVkVDVE9SUykNCg0KLi4u
DQoNCj4gLS0tDQo+IGJhc2UtY29tbWl0OiBiYzQxZmJiZjZmYWE5ZmZlYWYwMTQ4MDE5ZWQ2MzEw
NzdmN2YxNTBmDQo+IGNoYW5nZS1pZDogMjAyNTExMDctaWdjX21xcHJpb19jaGFubmVscy0yMzI5
MTY2ZTg5OGINCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gS3VydCBLYW56ZW5iYWNoIDxr
dXJ0QGxpbnV0cm9uaXguZGU+DQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
