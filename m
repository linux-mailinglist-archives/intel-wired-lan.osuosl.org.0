Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E55A68CD3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 13:29:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0AA060690;
	Wed, 19 Mar 2025 12:29:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Zhpwcy7FBj5; Wed, 19 Mar 2025 12:29:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D060060717
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742387343;
	bh=7vyYTTVjnA72g0z0w+CHEOAwLUupl2oD+70q0O7zb3k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Lt4luUEqPv9p1+Tkx62NnVsZjXm1cgttzbcsjCb05bRS8b/wy1+dA8Swuag30s0y
	 XBLF929brvEqOfUJxsiA9NXYrG34ioiE+9cNY5q2Z1he1LpmDXiY5Ms0A5qS4EOoRe
	 lfvbJ5DD7GEa5g7YUMNZxTSfl/J4D8orctCACSJDWMaAoNZrS78ucSqOzSKnmjx7eJ
	 Q88oza6Z/PTUSzx9lu7EZEEXp/ifT9tOioT28qx7d8iz5MA5d9dJRBLNDJ19CcKx0m
	 TK1eBfm4BySgoHfl3Vs1l8VG/GPv6yxwLFSS9RCeihlWhMuHsvu2FD5U3NCDzNHcmn
	 iFyIAhsDFZk/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D060060717;
	Wed, 19 Mar 2025 12:29:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 40D9FCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 12:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FFE1404D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 12:29:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cSzHMjpFUw_X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 12:29:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B460A404A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B460A404A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B460A404A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 12:28:59 +0000 (UTC)
X-CSE-ConnectionGUID: S33zHu1hRt+arRLYuCmI3A==
X-CSE-MsgGUID: 69K1rPf0RWKpI2ked0Xe0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="54956885"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="54956885"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 05:28:59 -0700
X-CSE-ConnectionGUID: 7EC5qQpTTp28j4ZPE1K+ug==
X-CSE-MsgGUID: urV88X0kSPGHbM8lzVcyfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="145791024"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2025 05:28:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Mar 2025 05:28:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 05:28:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 05:28:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=paXwYjISdhcPbp2LNb3dhkyDKN1ou7nYwrTdVVXX6JtCGaNf8dF+4mSfQMZ6zt9i7L/Ci6MTc30Nm2ZW7lE+DJe3vKXpKB499ZPFYpRONNJaBiVciyAOJaIHPqEf+rwBwxGtOEovW7Jq0F4FaApKUhhsM0GZFLwrG5vcSgMI4A6eZVHawurpiSL87AdM0gdtN6fl4QKXr/QNhq6sgZMjNtHlFoZL85lljl1f9LGbgGNsmT50nCLONkyapoN272BJNN4NH5lFdhriTyScu7XRlxWPUtdqZf/4kcLHmCXzNoLqQsWUjgI3Yd18e2GWz+/CdTHbiwXqnIXFbDA17NLvLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vyYTTVjnA72g0z0w+CHEOAwLUupl2oD+70q0O7zb3k=;
 b=uRo7ZFjtYDMpJRKKHw0AFvSlj6EFncSWKjY8ifBYMGAXmoBqc9mRCpeH68uvzmjXIgyoIl8Df6R1dWPsaI7kU7PnXcDdwfY8tHj52IEIlRYkfMOpbXKYcskKyy7ZBs74lPxBot1EUpJzPwVXefKG35RhsUFNjuidVmYJpiJ3v64ZZVnPbrlR4iAScQSfBg0YptjFPzotckLKS7IXC4P+t4Ih2Ei+TNHuMSYu6XiGLEGbzkPefG8sVM49VYninhnR5ZTY3k94BGMaQ+wBGorYiT5+SmB8Y+fLJWbHkqytd1wRORcu1qZmU8CUvB8FJ5zLDqnpv+MVJiBAC39SLHBA5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by MW4PR11MB6788.namprd11.prod.outlook.com (2603:10b6:303:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Wed, 19 Mar
 2025 12:28:54 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 12:28:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
Thread-Index: AQHbmEdIOgQVBWSqf0qpA5Os+HZUVbN6ZEOg
Date: Wed, 19 Mar 2025 12:28:52 +0000
Message-ID: <SJ0PR11MB5866E59BC5D02BC3757234C6E5D92@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
In-Reply-To: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|MW4PR11MB6788:EE_
x-ms-office365-filtering-correlation-id: 6a4bb661-1515-4fc6-7e1a-08dd66e19c17
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?WG8xMFhGd1BBMC9ZZFdKMFBWR0JnWEYyamh2VUdmZE9xWkJ0YWpvR0R4N2VB?=
 =?utf-8?B?dE1YZ0p5VkY5YlZkNm9CdWFMSFN1KzdzRGhQdTlFN2lrcUF2VDdtQ2E2ZlhB?=
 =?utf-8?B?aGFLa3Nld0p3c1pudVpyM2JFb2pIM3lKUDVOZGNRRnpJMUFYMXcveUhnV2Y3?=
 =?utf-8?B?NmZIbnBLa2Rlb3lqSkxxSFZtVVlUc0YrODRvQ1pOSXhGdi8vSmlwS2pyVDRs?=
 =?utf-8?B?cGdtZ0JiM3RJbjcxNU1CNWhsV01ra21La2tYTzJDNW9EWnY2TFJEQmM0VTZF?=
 =?utf-8?B?U2QvMGhIaStjSW05VHpRalJUbHNOVmRuOEUvMFdOWjd6VVBBSnVLVldKU3Jm?=
 =?utf-8?B?SXp3UE5OSG54VFZ5UTZpWit1dDhSdHFxMUdBOXl1MVErL3pqemwxVmN4MjJJ?=
 =?utf-8?B?bTRieFI3K05JS01zQlpvamZmeUJCV0F0cTRFOVhHaXRCSGNRaHJVWDFnc1RM?=
 =?utf-8?B?bmdzWDFCanNOZVg5enNUSnJreHdVTGRNQ0JGV0VvVGgwV3B6VDlRZGJxZm9n?=
 =?utf-8?B?dmIwUWhITkhyNFhTVkh6blc0NGRySjBIUzVLYUxFWUdpOENJVW4vOEFuazdT?=
 =?utf-8?B?Z0h0ME5LRFdWL1NxM3FMYmE2WlhBWi9FMnRSWkM2Um5ERWNtQlIrL3U3TEpG?=
 =?utf-8?B?dEJCTytqNjk0TUZORVYxSHRBR242eFRraU9pOFhQZ3hia01IMmJKRXVHVUtm?=
 =?utf-8?B?d1c4M2Y0MWZNbWNiRkFGaC9qbFRpUU9tS1p3d0d3M3ZCOTB3d1BVZHhIM1c5?=
 =?utf-8?B?T2pOYUQ1Mzk2WFdnczh2MVFtWm16b0gxYlFoTU5RaFJKdUtlS1hVaWVweFpO?=
 =?utf-8?B?NEhjNnR5ZWN6S1o2ZUk4L0dqZVJhQnVaNGE4S09TUXF5alVwRFluSEJwVHJr?=
 =?utf-8?B?WllhUUsxQmFVYVlvUjlWSFh5UHFpV2tMeG5UcHlJTC9tU2VUanM0MWxnSHBS?=
 =?utf-8?B?NXNndmthZTlBSjBuS2h1aEpmaVliVGVnYUN5cXlxbEZ0QnE4R3QrbThvaEd1?=
 =?utf-8?B?ZFBlcGpDWDNZbDZIU1A0ZW1PWXJONytFYWZWRkFaQWppZjE1ZmtBT1NtMVVu?=
 =?utf-8?B?MU0vanhyZkFjMko5Yzk3a2VCZWxHd0E4ZWY2dUJKalMyeFRHRkRIZnpNaW85?=
 =?utf-8?B?VDE2aWVVdDdUQkFuNEpwTjY4d3pZSnFEcklqUDRaQ3l3ZmxzRVFrV3dTejNT?=
 =?utf-8?B?aDg0aGJLK2JuMUo2cjRlZ0NRNmxsR2NXMkxBT3ZWNHZKektjYnNMa2dnSXQr?=
 =?utf-8?B?TlZMTlowcVRCR1BCczkvY0VmM3MrZkl2U1M0bUkvU0lKbU1kQ0kvSU9heXlN?=
 =?utf-8?B?Q2F3SG5IQlJNRXhDTUg1ZTJlL2h4bGhuMjRUN3M0QWUwN3AvY1FnZzhDNmFv?=
 =?utf-8?B?cFN3NHhuclpsU1gzTVMxNzA1QUZ3eExkdEZPUzJDbFpCOFJBSkhwR0U0SU1M?=
 =?utf-8?B?b2c3UjZBOElKdWZtTC9qSGNHWFExNFVTMlB5ZlgxYUwvQ1FPRXFkZStKb2ow?=
 =?utf-8?B?aVd1WTBQNm9NTS93eUloaHEvZkF2T3hEYk1STmVHQWxHZWJGYXAxSmFDbG5w?=
 =?utf-8?B?a084VitGNnhSeUgrdFJvVXBlaDk3RXV2ekk4SHlicWZFWnZXejczRy9UQ2lT?=
 =?utf-8?B?RHN3dEVmWTFHdG5oc0RheGhCUXh5bHN2OVNzK01DazlTdGRuVUVLVnNyRTJN?=
 =?utf-8?B?SkFKcEhGR2U5b2Q0eWVEakYvK28xY3hxbnhOYUF1TXhFbExtRDJ4QjBxQnBu?=
 =?utf-8?B?R2djb0lvb2F2Y3RLUEVZWVFvL0NjVkE4d3dVbUtxQ2QxN2JSMjZmbmJSa3kw?=
 =?utf-8?B?dVdIZ0FWZkRiVnY4S2VZTGZOUFZLYXF5dXZodGZPUkZGdTRQaUl3WGloY1I1?=
 =?utf-8?B?WjRELzJKU0wyYVg1dERTekJLcUthVmc1dnFCWjdNNThZVGFteDhycWljM2or?=
 =?utf-8?B?U09ORGlkVi93UWMyay9kKzZXWHY1T0EyTmE2WFR6OE1FallmdzFhMGY4MHBm?=
 =?utf-8?B?a1pKMkNPVmRBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVFHWmYrQ1dGNEJTNi9vekE0QkpPeGFjV1JneGxYSGhDL2w5MXhhTGI2a2Ft?=
 =?utf-8?B?N0wxQmNDRHNtNkJEQ2ZjVzNtTjJ6aG1xTGhyQThvdXFUdGg2MFFXWVRSVjNi?=
 =?utf-8?B?K0gzanVHMUJjd1E5eUpvREQ2SHpOR3E4OE41YjBKOXpTaFF1YTMvbGphb2pX?=
 =?utf-8?B?RmUrQkZTcHZOdS80ZHJldzJ6ZUw4QmphbkFYYlgrQnlyaXlOUjBpOGVoaUdT?=
 =?utf-8?B?YmF4eVZrU2JwdVlZQ011UkMvMUxnMWhJa2Q3VVJTYTVZRmVuaFY4L3FPY0k1?=
 =?utf-8?B?dU1HRERVeWNtUEswbklPRHMrQjRtU2lWRGVKSFV0ZkNFd2IyVGxsa1pmY1Vp?=
 =?utf-8?B?TzFkV1Zrak9sOUhBdXNpMWJJa0hhRjhjdm5qalRmdzhiN2MzR3owWnRkbXk5?=
 =?utf-8?B?L1RwRC9vUGU4S2hhZVYvN3BtQTlrbTRpSTdPMmEyQWs1bzdCajBrVDRUYW9D?=
 =?utf-8?B?WEhQS2V5cUwrY0dvMTloUGNlckJxWTBscVYxY3RIbWFlY0dicDVEZlFISkFq?=
 =?utf-8?B?aUNFTmZ4R3Z6ZlYzaFdSMWVUUXJ0cTQxaFBkWDFqSVErMDZ3UEtNM3NtQTZF?=
 =?utf-8?B?NndMQW9TYWJDUC9oUE1WaUR6cVR4SCtIUmpmOWxHR0pmWTdFRVpWQ3Ircjln?=
 =?utf-8?B?eC9xL3JnTlcySzNvdHhOeUc1Tk9XNjU4N3VXU2F6Vml3MVFzdkxnSU9WR29K?=
 =?utf-8?B?aGVvNklaMnJTWEpHR25RL2x0TUhQbnhiZHJXa09ZRFFTM05yZlFqRFlsTjZD?=
 =?utf-8?B?R0NCamtFZWdBYzJUVHNub3E1ZG51REhTOFdqOWtyZzcvSGxwR284RkIrM2M1?=
 =?utf-8?B?UmdhUUlFUXZzSGdQTWQ5YkMvR0ZHRE41TDVsVVBlVHlrRWVaZ1BCWFc5ajhi?=
 =?utf-8?B?ZmJucDFCTmc1Z3JGck13S2R6YjgrRGpDa3dncm1PVW1HZDVOTXlPZ081cVdT?=
 =?utf-8?B?R1VtZTZQZk1TU2dTTHk4MUJZeTI0dU5yeWtTMGIxVDhBdXg5RGlJcDZjNHJD?=
 =?utf-8?B?UVRGVHFqdW44R3BPbTJNbWZvcVR6N1VBbU1WaFFPaDZ2dm1tODYrRmhxT1FX?=
 =?utf-8?B?cnBRczh0cmw2U2o4emtrMmhFSDMzaE5HeDlaN0pTZE9LaTFnazRVMFpDUDBF?=
 =?utf-8?B?eHRrQkIycjZ0ZnZYMXpnWmY2Q3ZMclV1Mk8vN3BCRDdSTEFaMnhMOE5PVmI5?=
 =?utf-8?B?elVlUGtDdXNNQU1DUk9kMGJ1a3R6VnBuaWx4dDUyNWFqSXkvYjVQM2MrV0Rn?=
 =?utf-8?B?Nk9GSXVUZ3BTOCtzQ21BMGxlOCtzQWtGU0lsRC8vMWhSR015TmczOVBMTDI0?=
 =?utf-8?B?QWp4OFBLenIyc0xDYlVEaXF4T1hlSHBHc1l3aDh1QnlaTnZpK1ozRXBuUFFz?=
 =?utf-8?B?WlJNcDFDOTVaa1Ayc3QvRVVjYm1ERmZOUXA3QTBIbUJkaG1mcjdicktoWFNG?=
 =?utf-8?B?RWJ5U0hTYk44SWxsZUhsUVV4aEF5MkNpUzVXYUY5Nk50UmhXc3JZMWtlUm9k?=
 =?utf-8?B?UFZ2UU8yZHdMdmRjT2phaEw0WFljMEFiZGNHNTgyY1YxNTJaRURqOVNKNEZL?=
 =?utf-8?B?cGx3YVVRVThJQzFieloramd6elhqbW04bThieGFoVGQ4YTAwTkJXLytVckk2?=
 =?utf-8?B?R1BNc0lUWnZFKzZVZnl5dzYrUzJyZkYwemMzdXVKdmtzVXMya1NTNzJGYXVC?=
 =?utf-8?B?aHpIMS9YUnZuSDdLNjlFWHdIWHBQcEs4bUZ4d2doOXFVZmtDNDl4eVJqbU1p?=
 =?utf-8?B?S3VMV1Z5NGZHWUx5Uk5iNkdWNEVnQWk0YUNlaG45aFNXa002TjRWUGhwdDE0?=
 =?utf-8?B?RWpxL1dpY0lJUlBaK0VHdm1zZmhKSTRnTXZpdjdYcjdmRGhSa2pGS3pTYUJm?=
 =?utf-8?B?YjNKb3RCcUNiNC9FcXhUUjVtZnA0ME04WGUvRThYakE1TmhhSE56cjZ4MUZH?=
 =?utf-8?B?eWdlQlMyVFh3LzF4T3ZJanNoV1VyeXMrK3ZBU2ZPdU9XYXF3RTZYQU5rN1dw?=
 =?utf-8?B?OG54Q3lXanRDelZKVmVORlozdGtXVWc2cmt3RWdSWnZFejRTenNydUxKdWVN?=
 =?utf-8?B?Qm1XZ0hKZmQyTXBXZWlPZUhZRTY4dVRFOHkwcVVjU2FkZmRFbzFTRmJCMnpG?=
 =?utf-8?B?WlEwVFV1NkdvK0RZV0Q4b09YWk9reGptOVAyUEJteC9xZFExRDJKM1lrZ3Vr?=
 =?utf-8?B?Q2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a4bb661-1515-4fc6-7e1a-08dd66e19c17
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2025 12:28:52.8697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7FCy+4qOyg8/L+PPlUSb898EQdnK13JD4yt76NCFVXiE01G111vaB82htLO08iMlpjpNLjQCd4idq9UwSQ7tnWoXk+8DCsrqaIrAi3XEcNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742387340; x=1773923340;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7vyYTTVjnA72g0z0w+CHEOAwLUupl2oD+70q0O7zb3k=;
 b=dGe0UjJo4ynSjYizLBEPPhSLGgbrnBa1WuNepuYUA9NxvWIzhFeZFXl5
 WAn09zsNOcXUfe/0diuz7Oxfg647WLmgziZU1GlENLoiRdHOMY+ami8yd
 1zo24JJO6VZbDTdOQN2S+ToHIxL2mAVAMI/HdEnQnH39IsCtPVZ+XvI+S
 VyXFEnP3bmtBB6XMkpCEkkguZK6zpC0HS2JJg39q5rftsBeVYmEZWzWi8
 vJWNKSxImPMXEcMhYHEbze3YdvFe7GvQwEauFLCWsAhBIDcN2rHCehpJL
 vLW6DCIag+fAvNzOG5vvSVMJV7KHrN37Z0X8As4Jlrw163Bnp+Y3tiNu9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dGe0UjJo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gSmFj
ZWsgS293YWxza2kNCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTgsIDIwMjUgOTo0NyBQTQ0KPiBU
bzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3pl
bCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBM
dW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+Ow0KPiBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRh
dmVtbG9mdC5uZXQ+OyBEdW1hemV0LCBFcmljDQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFr
dWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVk
aGF0LmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJq
ZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0hdIGUxMDAwZTogYWRkIG9wdGlvbiBub3QgdG8g
dmVyaWZ5IE5WTQ0KPiBjaGVja3N1bQ0KPiANCj4gTWFueSBsYXB0b3BzIGFuZCBtb3RoZXJib2Fy
ZHMgaW5jbHVkaW5nIEkyMTktViBuZXR3b3JrIGNhcmQgaGF2ZSBpbnZhbGlkDQo+IE5WTSBjaGVj
a3N1bS4gV2hpbGUgaW4gbW9zdCBpbnN0YW5jZXMgY2hlY2tzdW0gaXMgZml4ZWQgYnkgZTEwMDBl
IG1vZHVsZQ0KPiBvciBieSB1c2luZyBib290dXRpbCwgc29tZSBzZXR1cHMgYXJlIHJlc2lzdGFu
dCB0byBOVk0gbW9kaWZpY2F0aW9ucy4gVGhpcw0KPiByZXN1bHQgaW4gdGhlIG5ldHdvcmsgY2Fy
ZCBiZWluZyBjb21wbGV0ZWx5IHVudXNhYmxlLg0KPiANCj4gSXQgc2VlbXMgdG8gYmUgdGhlIGNh
c2Ugb24gRGVsbCBMYXRpdHVkZSA1NDIwIHdoZXJlIFVFRkkgZmlybXdhcmUgY29ycnVwdHMgKGlu
DQo+IHRoaXMgbW9kdWxlJ3Mgc2Vuc2UpIGNoZWNrc3VtcyBvbiBlYWNoIGJvb3QuIE5vIHNldCBv
ZiBCSU9TIG9wdGlvbnMgc2VlbXMNCj4gdG8gaGVscC4NCj4gDQo+IFRoaXMgY29tbWl0IGFkZHMg
ZTEwMDBlIG1vZHVsZSBvcHRpb24gY2FsbGVkIFZlcmlmeU5WTUNoZWNrc3VtDQo+IChkZWZhdWx0
cyB0byAxKSB0aGF0IGFsbG93cyBhZHZhbmNlZCB1c2VycyB0byBza2lwIGNoZWNrdW0gdmVyaWZp
Y2F0aW9uIGJ5DQo+IHNldHRpbmcgaXQgdG8gMC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphY2Vr
IEtvd2Fsc2tpIDxKYWNla0BqYWNla2suaW5mbz4NCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmcNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92
QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9lMTAwMC5oICB8ICAxICsNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25l
dGRldi5jIHwgMjIgKysrKysrKystLS0tLS0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvcGFyYW0uYyAgfCAzMA0KPiArKysrKysrKysrKysrKysrKysrKysrDQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9lMTAwMC5oDQo+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2UxMDAwLmgNCj4gaW5kZXggYmE5YzE5
ZTY5OTRjLi42MWRjYzg4ZGQyZmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwZS9lMTAwMC5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9lMTAwMC5oDQo+IEBAIC00NjEsNiArNDYxLDcgQEAgczMyIGUxMDAwZV9nZXRfYmFz
ZV90aW1pbmNhKHN0cnVjdCBlMTAwMF9hZGFwdGVyDQo+ICphZGFwdGVyLCB1MzIgKnRpbWluY2Ep
Ow0KPiAgI2RlZmluZSBGTEFHMl9DSEVDS19SWF9IV1RTVEFNUCAgICAgICAgICAgQklUKDEzKQ0K
PiAgI2RlZmluZSBGTEFHMl9DSEVDS19TWVNUSU1fT1ZFUkZMT1cgICAgICAgQklUKDE0KQ0KPiAg
I2RlZmluZSBGTEFHMl9FTkFCTEVfUzBJWF9GTE9XUyAgICAgICAgICAgQklUKDE1KQ0KPiArI2Rl
ZmluZSBGTEFHMl9WRVJJRllfTlZNX0NIRUNLU1VNICAgICAgICAgQklUKDE2KQ0KPiANCj4gICNk
ZWZpbmUgRTEwMDBfUlhfREVTQ19QUyhSLCBpKQkgICAgXA0KPiAgCSgmKCgodW5pb24gZTEwMDBf
cnhfZGVzY19wYWNrZXRfc3BsaXQgKikoKFIpLmRlc2MpKVtpXSkpIGRpZmYgLS1naXQNCj4gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMNCj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMNCj4gaW5kZXggMjg2MTU1ZWZjZWRmLi5i
OTliMjJkY2FiYTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bmV0ZGV2LmMNCj4gQEAgLTc1NjcsMTYgKzc1NjcsMTggQEAgc3RhdGljIGludCBlMTAwMF9wcm9i
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwNCj4gY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVu
dCkNCj4gIAkgKi8NCj4gIAlhZGFwdGVyLT5ody5tYWMub3BzLnJlc2V0X2h3KCZhZGFwdGVyLT5o
dyk7DQo+IA0KPiAtCS8qIHN5c3RlbXMgd2l0aCBBU1BNIGFuZCBvdGhlcnMgbWF5IHNlZSB0aGUg
Y2hlY2tzdW0gZmFpbCBvbiB0aGUNCj4gZmlyc3QNCj4gLQkgKiBhdHRlbXB0LiBMZXQncyBnaXZl
IGl0IGEgZmV3IHRyaWVzDQo+IC0JICovDQo+IC0JZm9yIChpID0gMDs7IGkrKykgew0KPiAtCQlp
ZiAoZTEwMDBfdmFsaWRhdGVfbnZtX2NoZWNrc3VtKCZhZGFwdGVyLT5odykgPj0gMCkNCj4gLQkJ
CWJyZWFrOw0KPiAtCQlpZiAoaSA9PSAyKSB7DQo+IC0JCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJU
aGUgTlZNIENoZWNrc3VtIElzIE5vdA0KPiBWYWxpZFxuIik7DQo+IC0JCQllcnIgPSAtRUlPOw0K
PiAtCQkJZ290byBlcnJfZWVwcm9tOw0KPiArCWlmIChhZGFwdGVyLT5mbGFnczIgJiBGTEFHMl9W
RVJJRllfTlZNX0NIRUNLU1VNKSB7DQo+ICsJCS8qIHN5c3RlbXMgd2l0aCBBU1BNIGFuZCBvdGhl
cnMgbWF5IHNlZSB0aGUgY2hlY2tzdW0gZmFpbA0KPiBvbiB0aGUgZmlyc3QNCj4gKwkJKiBhdHRl
bXB0LiBMZXQncyBnaXZlIGl0IGEgZmV3IHRyaWVzDQo+ICsJCSovDQo+ICsJCWZvciAoaSA9IDA7
OyBpKyspIHsNCj4gKwkJCWlmIChlMTAwMF92YWxpZGF0ZV9udm1fY2hlY2tzdW0oJmFkYXB0ZXIt
Pmh3KSA+PQ0KPiAwKQ0KPiArCQkJCWJyZWFrOw0KPiArCQkJaWYgKGkgPT0gMikgew0KPiArCQkJ
CWRldl9lcnIoJnBkZXYtPmRldiwgIlRoZSBOVk0gQ2hlY2tzdW0gSXMNCj4gTm90IFZhbGlkXG4i
KTsNCj4gKwkJCQllcnIgPSAtRUlPOw0KPiArCQkJCWdvdG8gZXJyX2VlcHJvbTsNCj4gKwkJCX0N
Cj4gIAkJfQ0KPiAgCX0NCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvcGFyYW0uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9wYXJhbS5jDQo+IGluZGV4IDMxMzJkOGYyZjIwNy4uODcxMWViMTBkZDExIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvcGFyYW0uYw0KPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvcGFyYW0uYw0KPiBAQCAtMTI3LDYgKzEy
NywxNSBAQCBFMTAwMF9QQVJBTShLdW1lcmFuTG9ja0xvc3MsICJFbmFibGUNCj4gS3VtZXJhbiBs
b2NrIGxvc3Mgd29ya2Fyb3VuZCIpOyAgRTEwMDBfUEFSQU0oV3JpdGVQcm90ZWN0TlZNLA0KPiAg
CSAgICAiV3JpdGUtcHJvdGVjdCBOVk0gW1dBUk5JTkc6IGRpc2FibGluZyB0aGlzIGNhbiBsZWFk
IHRvIGNvcnJ1cHRlZA0KPiBOVk1dIik7DQo+IA0KPiArLyogVmVyaWZ5IE5WTSBDaGVja3N1bQ0K
PiArICoNCj4gKyAqIFZhbGlkIFJhbmdlOiAwLCAxDQo+ICsgKg0KPiArICogRGVmYXVsdCBWYWx1
ZTogMSAoZW5hYmxlZCkNCj4gKyAqLw0KPiArRTEwMDBfUEFSQU0oVmVyaWZ5TlZNQ2hlY2tzdW0s
DQo+ICsJICAgICJWZXJpZnkgTlZNIGNoZWNrc3VtIFtXQVJOSU5HOiBkaXNhYmxpbmcgY2FuIGNh
dXNlIGludmFsaWQNCj4gK2JlaGF2aW9yXSIpOw0KPiArDQo+ICAvKiBFbmFibGUgQ1JDIFN0cmlw
cGluZw0KPiAgICoNCj4gICAqIFZhbGlkIFJhbmdlOiAwLCAxDQo+IEBAIC01MjQsNCArNTMzLDI1
IEBAIHZvaWQgZTEwMDBlX2NoZWNrX29wdGlvbnMoc3RydWN0IGUxMDAwX2FkYXB0ZXINCj4gKmFk
YXB0ZXIpDQo+ICAJCQl9DQo+ICAJCX0NCj4gIAl9DQo+ICsJLyogVmVyaWZ5IE5WTSBjaGVja3N1
bSAqLw0KPiArCXsNCj4gKwkJc3RhdGljIGNvbnN0IHN0cnVjdCBlMTAwMF9vcHRpb24gb3B0ID0g
ew0KPiArCQkJLnR5cGUgPSBlbmFibGVfb3B0aW9uLA0KPiArCQkJLm5hbWUgPSAiVmVyaWZ5IE5W
TSBjaGVja3N1bSIsDQo+ICsJCQkuZXJyICA9ICJkZWZhdWx0aW5nIHRvIEVuYWJsZWQiLA0KPiAr
CQkJLmRlZiAgPSBPUFRJT05fRU5BQkxFRA0KPiArCQl9Ow0KPiArDQo+ICsJCWlmIChudW1fVmVy
aWZ5TlZNQ2hlY2tzdW0gPiBiZCkgew0KPiArCQkJdW5zaWduZWQgaW50IHZlcmlmeV9udm1fY2hl
Y2tzdW0gPQ0KPiArCQkJCVZlcmlmeU5WTUNoZWNrc3VtW2JkXTsNCj4gKwkJCWUxMDAwX3ZhbGlk
YXRlX29wdGlvbigmdmVyaWZ5X252bV9jaGVja3N1bSwNCj4gJm9wdCwNCj4gKwkJCQkJCWFkYXB0
ZXIpOw0KPiArCQkJaWYgKHZlcmlmeV9udm1fY2hlY2tzdW0pDQo+ICsJCQkJYWRhcHRlci0+Zmxh
Z3MyIHw9DQo+IEZMQUcyX1ZFUklGWV9OVk1fQ0hFQ0tTVU07DQo+ICsJCX0gZWxzZSB7DQo+ICsJ
CQlpZiAob3B0LmRlZikNCj4gKwkJCQlhZGFwdGVyLT5mbGFnczIgfD0NCj4gRkxBRzJfVkVSSUZZ
X05WTV9DSEVDS1NVTTsNCj4gKwkJfQ0KPiArCX0NCj4gIH0NCj4gLS0NCj4gMi4zOS41DQoNCg==
