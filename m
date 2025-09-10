Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DEFB51208
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 11:03:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63AE260D9C;
	Wed, 10 Sep 2025 09:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aEIINnBOacwB; Wed, 10 Sep 2025 09:03:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D42D6066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757494984;
	bh=oQh3/A2iK0o8gGh4fWCS/FwrS1ydoaO3kvT7537TOq0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2PBhKCdYbkuRYgGENW3HSH+QpRXFRy0wZdk4U3PZiLsHxvxqbu4tLUhESteDzTu7v
	 oCT6D4vhzUKh0aG2fUQdasj/zPOpTpOisH8V6g/q1fHasZGOqfLnLGClRuLcl6X8gN
	 w2ZRHevi40zxo5htINylJOcn2Cvzp2eXNYDLbvG/hU32iwb3TP+WY4wxg0TvphxeGM
	 2knQCFbZtcolWYjFqhe1Arek/FRZ2/o9BvgCUDI2hukeAYQqT+ZKxwVqgNv9kbSxIS
	 k4NJguBWKXU2CDTjQMioqqRRa/u7BPceznR+6Uc+Eibx4AOcmXVt/9EoMMP93LKpAw
	 8pEhFOPu43SJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D42D6066D;
	Wed, 10 Sep 2025 09:03:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A0FA10E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B37341307
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:03:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LvZrZs2L9AaK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 09:03:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E7C00412FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7C00412FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7C00412FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 09:03:00 +0000 (UTC)
X-CSE-ConnectionGUID: DI+qeKL2TtKtVmS6rdxJtA==
X-CSE-MsgGUID: SlHJmHjKQISFzNlHDM+MMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="59020708"
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="59020708"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 02:02:58 -0700
X-CSE-ConnectionGUID: tCydaC9dTT+YiGp200FNZA==
X-CSE-MsgGUID: GLVKs0/aRp+xAg3UrAwl8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="173422374"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 02:02:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 02:02:56 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 02:02:56 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.75)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 02:02:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bj4S1mwT0pUnTNjpyrOBLMUmd/yINm6lgaD0x2jtPCYSpRjW7em+vZnLIEv2l7Y66xmJgghpdGdOdPBzykvfYJimnl0WsCfiTIxmAgscSMxMdNa3dWcckL17N8phjW6Wu2JMHcPnD96epUZgWOhddCjIb1U5uPjS06GJYcJT46dJRhzDLj8LRNB8cyAo8z2++Dzh6IrnXOLDl3HzvfExpJCQpe5P8KKYn5quGwrMzahDX6y2oMcwZHvBl7W/KpXhtEFPSbgKWQ73NZe57p5WRZKy5nGjJvaW6X/B7zSL9pBx5RhAblJuegwHsnHrJawbhEaiCkXQy/82QrrRKAYSDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQh3/A2iK0o8gGh4fWCS/FwrS1ydoaO3kvT7537TOq0=;
 b=DKXzwxwIIuYnIUEQKHpC77ZviGUFqlIf4nwyCc8EiYp04R8dvU7fJHyGFu+6QcUwlcvs8r0JR2/PKa5FlhV4qEZJCsiEk8/GwpX9A8jKvnTA7+yv0dJqGHYjr5LvG3Z/tZQ0rqViF8Fug/s+lk85lG8SzXTmyyBcsxiyfR2tddmlHIYhuAfhoElf3n/B12rFUSx6VEW0Zgrrhee2fYhjzCQOp05YvHVF5L57QSuuTm1fMxqcBkQMO34XWBA3lQ9MKt9p6RkddkGxDH4cX3WvGITMN4QnppPrMO59tfP3l32ovUwrqk34aCDYDDvug7lJHFLZdHmsK3TrjCCIDb7XjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB7616.namprd11.prod.outlook.com (2603:10b6:510:26d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 09:02:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 09:02:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "kurt@linutronix.de" <kurt@linutronix.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev when
 igc_led_setup() fails in igc_probe()
Thread-Index: AQHcHvKI78xYAQ7GEU+pmfOF4lxp6bSI1QkAgAM2BYCAAAa8gIAAEa/A
Date: Wed, 10 Sep 2025 09:02:51 +0000
Message-ID: <IA3PR11MB8986C779F51731B60D07BEB7E50EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <15453ddf-0854-4be6-9eed-017ef79d3c77@intel.com>
 <20250910075231.99838-1-enjuk@amazon.com>
In-Reply-To: <20250910075231.99838-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB7616:EE_
x-ms-office365-filtering-correlation-id: 6ce620a6-58d8-40c4-9497-08ddf048d27e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bDFjSHVVY3V0RG5IbHlFSk1ZRk9XZTV1RXVOc0tMb0xxYzVkRllBa3U1KzBs?=
 =?utf-8?B?bTF0ZkhaZVMxSUhPZ21GV2krVEFWcEN3UmhUSnhwMFhmZTBSYktmbDRrLzlr?=
 =?utf-8?B?aHFTZmdXeVpyQkRvLzFlbWJnVDlieTBMaVhaOElBcTR4MnoxeFhnUFU2VzI1?=
 =?utf-8?B?SzIzbWxnQkdUcG1SQVFTb28rVFFSL2Fub1prM0tRMDZKbnVHcHVackFYVTJu?=
 =?utf-8?B?ZmhWVUlxOW5uSnR5MUtVNEpUUFRwQ1hLTXNJblhCelRFVngzdkJ0S3ZoNkVv?=
 =?utf-8?B?UHhIVWZ5VU02WVlXUE5CWlhLbmhkb0dHRFZRS2Q1TXhsTmtOQTcvWDc3NWFX?=
 =?utf-8?B?U3kvWEhmM25BNXZFVzhJSVgvdUQrTzV6Y3NXWEFWUEhjbngzc3VWOHVBV1lv?=
 =?utf-8?B?ZUZ4amMyMml0T2JCUkFJblBGR3FBRkdYNDhmQ0dkTnFuMFBvejhKazFrVG5i?=
 =?utf-8?B?d2NDODFwOUlHOHFSRHBydkNxTnk3aUFnZU9HRy9EUTZ1d1BRLzN3WnRtQTh5?=
 =?utf-8?B?WXB0QVZxSW5CdXVyNTQxRy9tM0hoQ3Y2c014NW9VcnFqakVBcGgrSmJiTGdE?=
 =?utf-8?B?Nzc0YTFQYUxPajcwcmxjVlltaXEzemxiVXd2aWorVTFMWmwzNUl0QTFoWjJz?=
 =?utf-8?B?Y0dIeVZCSGpqL0VXZlJZck42enZ5T0M1eU93V0NuWGtkTlF1MHVHT21hY1ln?=
 =?utf-8?B?Nk9PVXp5cCtPVlA0UUgwQjEvTGpNL1Z4SEZ3bWNwalBHRUlZTkwydVdFNktF?=
 =?utf-8?B?THdDM2VWVzVST3dIL25RbFZjZ0FuVnpzTVl4V3Z1aXRKazVXM081T0JYSCtK?=
 =?utf-8?B?UjduR1NxMHVxN2VBNDlRNWJiWkMzekUweE9vazRoQ0E1L09Nd3BjL2FXOXBZ?=
 =?utf-8?B?aHI0Sk51Y0ZhWTdVY3hmUXZaNjZtNk9JQzFrOWxWSGVNY2MyU2EzQ2FnSkQv?=
 =?utf-8?B?VjZFOGpVZGZXSUVNYTFSdW9MNFFOWFB2NE1MREZkaTkvellBd25wZmJMUThy?=
 =?utf-8?B?ZDY2clo0b29pSEZyaWk4QU1mU0ZmbFNNZmRaanc1c0Y1Ymxxa3dKZ2JiRTFr?=
 =?utf-8?B?VDlkcXBaMmdXQjlnZ0VIK3Z1RWJUaW1CdmFoTVJ3R3lrSXVDZnM2RnZlc21B?=
 =?utf-8?B?TzJ5Ny9lU3YrblFpS0VTazVTT0tsQjZjcnpPd21yZHB2K0xMSFQyZlA1Smds?=
 =?utf-8?B?c2RpZnJpS0JlcjNqWWtNeUhsS1pvNnVVSXVLZWNMTjB4a1lDU1luUDlBck9y?=
 =?utf-8?B?QTVnZ3hLOFVOUmovR2V6VkYxdDc1SHdEcXVqeW9EUWhkYzRiRGdxS29yUlJG?=
 =?utf-8?B?amZOKzRvL0hwWjdpS3VOUG9nRFVWR0w4ZWMydERLR0RTczg2eTRweENDaGFh?=
 =?utf-8?B?OWhENFZ5RDRXMnJRTnpIc0Z2Um5lckgwc21XQnh2Y28wWmVaT2crLzBaaTVP?=
 =?utf-8?B?cERBUEo1cHhpc2h1MDcrL0E1NllRc1ozcDNqQ1l2aFFMbU94ZUc3TWlpZlJl?=
 =?utf-8?B?eU4vMHl3blF3T3FYNHV0THlLNDRML2thelQvYlpHaktqZCt4cmptQy9FS3Vp?=
 =?utf-8?B?NUFIMVp3SitCMTBwaHBZVi9NdmVUQ1V5VzdESXhTT00wK0d2K01NUWM2TTFo?=
 =?utf-8?B?bVptbDFyK3RaQy9aRERJU1FySk15WEZjcWJsa2M3VmxiVHFQSytkMU9SdTRY?=
 =?utf-8?B?cml4QVBEQU1ScmduSmVtek50dmIvN0tuZ1ROTTBHeVBXU1djS2NWRFRPNldN?=
 =?utf-8?B?ZHdtYlFmaW5QaGxDL2hoQjhwbXJqNUFSYVdIRzhiZFJ6MWw1cnltRFdWa3J0?=
 =?utf-8?B?OFJnQnRIQzZuemhSSjR4OWJEeWU2YmV2cmFsUUZ4c2JyVTNVaEtMR2NJVld6?=
 =?utf-8?B?Z0xYRXl4Q0w3bXZSdEJoVVBHcDAvblBBQkV4SzYyOVBuS0tLQlQ2VDM2b0Q2?=
 =?utf-8?B?NEh0ZkRTMDBYQ3REWGxxK04zeFJEZlpZN0dRMDAvaHJjYndMNFJ4SjI0RTlk?=
 =?utf-8?Q?W4OBzUgA9YejD+2i2SAAmWOJqJnMQY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXJJN3YvU0ZRajBvT3hFUmhybDlxRFIybCtVSWEzVllTYzd3N2pqSjZDNjNa?=
 =?utf-8?B?bW1EUys4V3RITlpTVkpqRWIwYXY3bk9wdmo0amZFUTROM29WR09rVkZweVY0?=
 =?utf-8?B?dnZjdG5TQ1kyTTZDZ3FNOSs2a0loOUVsWkRseHI2aUZabHY3OHNRUGo2UEw3?=
 =?utf-8?B?N2R3ZkdXcy9yanl1bis1ZUU0cUY1UnZ6eE5XUTRFdkhHVVFpdVVZRHhiNXhu?=
 =?utf-8?B?bGE5RjR1OXhGYXE3SzJ5Ykg0YVV5ZWRoVXRVMkJnZktVS0FkRGxLTnd1bGZi?=
 =?utf-8?B?cStrR2RkM1pTZDZEaWI0TGU1VXNYakFKdjBhOWJEanUyWk9MVnQ0RXVHVjEw?=
 =?utf-8?B?ZmFodE1OakUrbXVrM2lZdkVTcFBoR2tRa3MyU3FiY1llSU1ZdDdrTUltU1Vj?=
 =?utf-8?B?UnVZc2picUdhbERzbTBOWnJIcDNWVStPOFdWTDVEc2J3c2tSYjd5YUMrckpt?=
 =?utf-8?B?RTUra1Q3T25XcGhVYmZBUnMvY09NQjE4d0RPUStjZzlGalkrRnVZa0xreUFT?=
 =?utf-8?B?QmVHQUpUS0VReFRSYnNPWEVFd3dvZ1NzSjhzc3pJWGVMdXhpbGZ2NzMyNXpH?=
 =?utf-8?B?SWo1dUVqQ3V3cmFPQmJkajI1ZkhTcnJZejBhalhNcW5Vbk90K2YwZERWRldO?=
 =?utf-8?B?TmdiVVZoZE5YYmpwMkl4cEl0MTZFZUtmM2U1RVZBUFRiWTBkTjJDdFpDc1Y4?=
 =?utf-8?B?MmhPNUw2U0FVY1Y5d0cvOXYxSGdpWkpURXRuUkd5bTJUWVlYalBNaXJBR2VY?=
 =?utf-8?B?OFZDeDF0VWh6Ykp4cVRJUXJTWTltaXNvcnhnTkJ6TjJtOG9MaUhBWmV6bW83?=
 =?utf-8?B?WU8yeThkSlkzdW1lajlSRUpPQit2VWV2eVhraExLb3BZU3JIMnJZVk5WRHdj?=
 =?utf-8?B?V1Z3R3RhVDhJTGpvQ0xQSTEzclFBUUtVR1htN3o2bzFQZm5uZ04rZXAvSmRy?=
 =?utf-8?B?eURCZzZhWDR4Ti9kYXhCSU5ucGlEY21qcUliNGdNNWJzQVUyWjEwY2l1MzQ5?=
 =?utf-8?B?YTVwTHlIS0dqK3oxLzY0Vk1sNjhGRXNYbkRYYW9iU0xJVVVucW16NVY3akFM?=
 =?utf-8?B?Q0lTRzNkTHFpRlI2OWxyZjhTbnR4WkRvSmlDQmlYaW5DcDNTSHZKdEZYYlAv?=
 =?utf-8?B?c0phdy9PeElKL2ZUazI4amRQVmNFUHFPWHRmbGdvVkV2S0N3Wkl6SExmT1Ev?=
 =?utf-8?B?NjBocXA5OGNxajlnaDM4Zzh1SVNyeVBKVzFkcm5tdEZaV3dIWVA2ZTRhc1pj?=
 =?utf-8?B?dUdoTDZzMXlDdWFneVNrOVB0TXNpSlZUMG1IK3ZlRmEvMmFldC8wRUVVSUJn?=
 =?utf-8?B?bUQzQzNoVzZyUW04anBWLzkvRVp0RS93UU1Oai9SemRuYUZqS3phR21IeC9R?=
 =?utf-8?B?Z05OdjJzRElzQ2llb2k0V1pwTll4Ukh1MWovdm5VRVlESEcrWUdkZHZnN0tt?=
 =?utf-8?B?Z1UwSloyM0I1NUJBUXZkb0p5eDZqeXVSNXZ2Z2k4eVNSMFV6RWswamxwL25a?=
 =?utf-8?B?M1BaYVVRV2hmR0FiMklhNDgyZ1ZtN1phUGszYnZPdUk5VkhkcHk0OVczVFRl?=
 =?utf-8?B?K2JWWlpMMGZldy9iR1pBSjQ5NUxSeWhqM0tIa2hYNkNXR05ZRGorQldFZFNT?=
 =?utf-8?B?MjVoS3ZmVmxHOEE1YTNMdHBRbWhxclV6UlhFZFk0SDNqWWdUbmVXZ3dKYTYx?=
 =?utf-8?B?UTFMUkRmT1IwWFlkZFZ5L3BlZUMvWlpCcWJBWm9oYWlma3ZxYlphZDh3TklM?=
 =?utf-8?B?Wjd6Y1VmZWhJRjBlVEhmcVdSRm1iQVJ0Y1NkOW1SbExlSVZJbDlyMXVEVXZ4?=
 =?utf-8?B?RkFkY0x4RDYrZDliQUxFTFdoNUc0eDRCcmpLcWRjbXRZZGNHanJia0NlMnBq?=
 =?utf-8?B?cnZlVXo4emJpemtYbXBVVWZGWS9TN2JHbDMwcXRsYjZNUEREVThsem45ckl4?=
 =?utf-8?B?eHRHUTZsRjZzelBHVjZiZ2t0TUJrSDh3WWhMcXdQQmlMV0RnQUxXRUY0cExO?=
 =?utf-8?B?djRZQVJMU24ybFdCS2VVWVVaUThQSGEzREZSL1o3K1NrZHQ5cy8vVnhRQkpQ?=
 =?utf-8?B?NWVvbmVjM3VvamdVTmE1VmtCV3lIc0I0QnM4SGVpZ1JJSlZnd0dWcGp5bnA2?=
 =?utf-8?B?YWFDQjhWQ3NpN285a2F3cGhjTVkvZUNLVmxkR1ZhWkRUQ3hrMGFXZS9kdmNR?=
 =?utf-8?B?ZkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce620a6-58d8-40c4-9497-08ddf048d27e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2025 09:02:51.5981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8yakzuOvW5sIIIA+3mQE1XN2StnT9KPYH70xbSNxhgkc24YIC7rj7OmQRc4/QVv8E6EMfUA7KEyQiwXNQCom+0/h8A6W9jI919TPAqebrTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7616
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757494981; x=1789030981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oQh3/A2iK0o8gGh4fWCS/FwrS1ydoaO3kvT7537TOq0=;
 b=BJ8tps+Np0gksunCqkqXbmQmWvR02XCG5p8haRfirBsH8RgmpA87+4a5
 GyDLnrvDvynQ/nsg7tdpuXH4LjxxH838IHfMK6u2wjF4BTv5lDmtkS8dA
 Ic5T8yWrqVticNHldGrZG4xzEmibWGWi1j2Y5yB3WY4x72EoL8hbJsdBF
 m22sqKCGXg+yjI4AgEBUQisNFL42J2nmWWrU9gJ1qn6X1HsxC/57qLerQ
 n/ZwxsNhDGbEKSCFrNJyI5R+jt2Dz8GND6abRykiR8nPttS43I2EpWqvN
 R9gkD1FI20z9THSd5rIGIXqrSQRnF2Cp9oV5Z6MDWa58Gxa3bEXDgFt/d
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BJ8tps+N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev
 when igc_led_setup() fails in igc_probe()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS29oZWkgRW5qdSA8ZW5q
dWtAYW1hem9uLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIgMTAsIDIwMjUgOTo1
MiBBTQ0KPiBUbzogTGlmc2hpdHMsIFZpdGFseSA8dml0YWx5LmxpZnNoaXRzQGludGVsLmNvbT4N
Cj4gQ2M6IGFuZHJldytuZXRkZXZAbHVubi5jaDsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhv
bnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsNCj4gZWR1bWF6ZXRA
Z29vZ2xlLmNvbTsgZW5qdWtAYW1hem9uLmNvbTsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5v
c3Vvc2wub3JnOyBrb2hlaS5lbmp1QGdtYWlsLmNvbTsga3ViYUBrZXJuZWwub3JnOw0KPiBrdXJ0
QGxpbnV0cm9uaXguZGU7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IHBhYmVuaUByZWRoYXQuY29t
Ow0KPiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
TG9rdGlvbm92LA0KPiBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYxIGl3bC1uZXRdIGlnYzog
dW5yZWdpc3Rlcg0KPiBuZXRkZXYgd2hlbiBpZ2NfbGVkX3NldHVwKCkgZmFpbHMgaW4gaWdjX3By
b2JlKCkNCj4gDQo+ICsgQWxla3NhbmRyDQo+IA0KPiBPbiBXZWQsIDEwIFNlcCAyMDI1IDEwOjI4
OjE3ICswMzAwLCBMaWZzaGl0cywgVml0YWx5IHdyb3RlOg0KPiANCj4gPk9uIDkvOC8yMDI1IDk6
MjYgQU0sIEt1cnQgS2FuemVuYmFjaCB3cm90ZToNCj4gPj4gT24gU2F0IFNlcCAwNiAyMDI1LCBL
b2hlaSBFbmp1IHdyb3RlOg0KPiA+Pj4gQ3VycmVudGx5IGlnY19wcm9iZSgpIGRvZXNuJ3QgdW5y
ZWdpc3RlciBuZXRkZXYgd2hlbg0KPiBpZ2NfbGVkX3NldHVwKCkNCj4gPj4+IGZhaWxzLCBjYXVz
aW5nIEJVR19PTigpIGluIGZyZWVfbmV0ZGV2KCkgYW5kIHRoZW4ga2VybmVsIHBhbmljcy4NCj4g
WzFdDQo+ID4+Pg0KPiA+Pj4gVGhpcyBiZWhhdmlvciBjYW4gYmUgdGVzdGVkIHVzaW5nIGZhdWx0
LWluamVjdGlvbiBmcmFtZXdvcmsuIEkNCj4gdXNlZCB0aGUNCj4gPj4+IGZhaWxzbGFiIGZlYXR1
cmUgdG8gdGVzdCB0aGUgaXNzdWUuIFsyXQ0KPiA+Pj4NCj4gPj4+IENhbGwgdW5yZWdpc3Rlcl9u
ZXRkZXYoKSB3aGVuIGlnY19sZWRfc2V0dXAoKSBmYWlscyB0byBhdm9pZCB0aGUNCj4ga2VybmVs
DQo+ID4+PiBwYW5pYy4NCj4gPj4+DQo+ID4+PiBbMV0NCj4gPj4+ICAga2VybmVsIEJVRyBhdCBu
ZXQvY29yZS9kZXYuYzoxMjA0NyENCj4gPj4+ICAgT29wczogaW52YWxpZCBvcGNvZGU6IDAwMDAg
WyMxXSBTTVAgTk9QVEkNCj4gPj4+ICAgQ1BVOiAwIFVJRDogMCBQSUQ6IDkzNyBDb21tOiByZXBy
by1pZ2MtbGVkLWUgTm90IHRhaW50ZWQgNi4xNy4wLQ0KPiByYzQtZW5qdWstdG5ndXktMDA4NjUt
Z2M0OTQwMTk2YWIwMiAjNjQgUFJFRU1QVCh2b2x1bnRhcnkpDQo+ID4+PiAgIEhhcmR3YXJlIG5h
bWU6IFFFTVUgU3RhbmRhcmQgUEMgKFEzNSArIElDSDksIDIwMDkpLCBCSU9TIDEuMTYuMy0NCj4g
ZGViaWFuLTEuMTYuMy0yIDA0LzAxLzIwMTQNCj4gPj4+ICAgUklQOiAwMDEwOmZyZWVfbmV0ZGV2
KzB4Mjc4LzB4MmIwDQo+ID4+PiAgIFsuLi5dDQo+ID4+PiAgIENhbGwgVHJhY2U6DQo+ID4+PiAg
ICA8VEFTSz4NCj4gPj4+ICAgIGlnY19wcm9iZSsweDM3MC8weDkxMA0KPiA+Pj4gICAgbG9jYWxf
cGNpX3Byb2JlKzB4M2EvMHg4MA0KPiA+Pj4gICAgcGNpX2RldmljZV9wcm9iZSsweGQxLzB4MjAw
DQo+ID4+PiAgIFsuLi5dDQo+ID4+Pg0KPiA+Pj4gWzJdDQo+ID4+PiAgICMhL2Jpbi9iYXNoIC1l
eA0KPiA+Pj4NCj4gPj4+ICAgRkFJTFNMQUJfUEFUSD0vc3lzL2tlcm5lbC9kZWJ1Zy9mYWlsc2xh
Yi8NCj4gPj4+ICAgREVWSUNFPTAwMDA6MDA6MDUuMA0KPiA+Pj4gICBTVEFSVF9BRERSPSQoZ3Jl
cCAiIGlnY19sZWRfc2V0dXAiIC9wcm9jL2thbGxzeW1zIFwNCj4gPj4+ICAgICAgICAgICB8IGF3
ayAne3ByaW50ZigiMHglcyIsICQxKX0nKQ0KPiA+Pj4gICBFTkRfQUREUj0kKHByaW50ZiAiMHgl
eCIgJCgoU1RBUlRfQUREUiArIDB4MTAwKSkpDQo+ID4+Pg0KPiA+Pj4gICBlY2hvICRTVEFSVF9B
RERSID4gJEZBSUxTTEFCX1BBVEgvcmVxdWlyZS1zdGFydA0KPiA+Pj4gICBlY2hvICRFTkRfQURE
UiA+ICRGQUlMU0xBQl9QQVRIL3JlcXVpcmUtZW5kDQo+ID4+PiAgIGVjaG8gMSA+ICRGQUlMU0xB
Ql9QQVRIL3RpbWVzDQo+ID4+PiAgIGVjaG8gMTAwID4gJEZBSUxTTEFCX1BBVEgvcHJvYmFiaWxp
dHkNCj4gPj4+ICAgZWNobyBOID4gJEZBSUxTTEFCX1BBVEgvaWdub3JlLWdmcC13YWl0DQo+ID4+
Pg0KPiA+Pj4gICBlY2hvICRERVZJQ0UgPiAvc3lzL2J1cy9wY2kvZHJpdmVycy9pZ2MvYmluZA0K
PiA+Pj4NCj4gPj4+IEZpeGVzOiBlYTU3ODcwM2IwM2QgKCJpZ2M6IEFkZCBzdXBwb3J0IGZvciBM
RURzIG9uIGkyMjUvaTIyNiIpDQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBLb2hlaSBFbmp1IDxlbmp1
a0BhbWF6b24uY29tPg0KPiA+Pg0KPiA+PiBSZXZpZXdlZC1ieTogS3VydCBLYW56ZW5iYWNoIDxr
dXJ0QGxpbnV0cm9uaXguZGU+DQo+ID4NCj4gPlRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoIGFuZCBm
b3IgaWRlbnRpZnlpbmcgdGhpcyBpc3N1ZSENCj4gPg0KPiA+SSB3YXMgd29uZGVyaW5nIHdoZXRo
ZXIgd2UgY291bGQgYXZvaWQgZmFpbGluZyB0aGUgcHJvYmUgaW4gY2FzZXMNCj4gd2hlcmUNCj4g
PmlnY19sZWRfc2V0dXAgZmFpbHMuIEl0IHNlZW1zIHRvIG1lIHRoYXQgYSBmYWlsdXJlIGluIHRo
ZSBMRUQgY2xhc3MNCj4gPmZ1bmN0aW9uYWxpdHkgc2hvdWxkbid0IHByZXZlbnQgdGhlIGRldmlj
ZSdzIGNvcmUgZnVuY3Rpb25hbGl0eSBmcm9tDQo+ID53b3JraW5nIHByb3Blcmx5Lg0KPiANCj4g
SW5kZWVkLCB0aGF0IGFsc28gbWFrZXMgc2Vuc2UuDQo+IA0KPiBUaGUgYmVoYXZpb3IgdGhhdCBp
Z2NfcHJvYmUoKSBzdWNjZWVkcyBldmVuIGlmIGlnY19sZWRfc2V0dXAoKSBmYWlscw0KPiBhbHNv
IHNlZW1zIGdvb2QgdG8gbWUsIGFzIGxvbmcgYXMgbm90aWZ5aW5nIHVzZXJzIHRoYXQgaWdjJ3Mg
bGVkDQo+IGZ1bmN0aW9uYWxpdHkgaXMgbm90IGF2YWlsYWJsZS4NCj4gDQo+ID4NCj4gPiBGcm9t
IHdoYXQgSSB1bmRlcnN0YW5kLCBlcnJvcnMgaW4gdGhpcyBmdW5jdGlvbiBhcmUgbm90IGR1ZSB0
bw0KPiBoYXJkd2FyZQ0KPiA+bWFsZnVuY3Rpb25zLiBUaGVyZWZvcmUsIEkgc3VnZ2VzdCB3ZSBy
ZW1vdmUgdGhlIGVycm9yIHByb3BhZ2F0aW9uLg0KPiA+DQo+ID5BbHRlcm5hdGl2ZWx5LCBpZiBm
ZWFzaWJsZSwgd2UgY291bGQgY29uc2lkZXIgcmVvcmRlcmluZyB0aGUgZnVuY3Rpb24NCj4gPmNh
bGxzIHNvIHRoYXQgdGhlIExFRCBjbGFzcyBzZXR1cCBvY2N1cnMgYmVmb3JlIHRoZSBuZXRkZXYN
Cj4gcmVnaXN0cmF0aW9uLg0KPiA+DQo+IA0KPiBJIGRvbid0IGRpc2FncmVlIHdpdGggeW91LCBi
dXQgSSB3b3VsZCBsaWtlIHRvIGhlYXIgS3VydCBhbmQNCj4gQWxla3NhbmRyJ3MNCj4gb3Bpbmlv
bi4gRG8geW91IGhhdmUgYW55IHByZWZlcmVuY2Ugb3Igc3VnZ2VzdGlvbnM/DQo+IA0KPiBJJ2xs
IHJldmlzZSBhbmQgd29yayBvbiB2MiBpZiBuZWVkZWQuDQo+IFRoYW5rcyENCg0KSnVzdCBpbiBj
YXNlIC8qSSdtIEFsZXgqLyBoZXJlIGFyZSBteSAyY2VudHM6DQogIEnigJlkIHRyZWF0IExFRCBz
ZXR1cCBhcyBiZXN04oCRZWZmb3J0IGFuZCBub3QgZmFpbCBwcm9iZSBpZiBpdCBlcnJvcnMuDQpX
YXJuIG9uY2UsIG1hcmsgTEVEcyB1bmF2YWlsYWJsZSwgYW5kIGNvbnRpbnVlLiBUaGF0IGtlZXBz
IGRhdGFwYXRoDQp1cCBhbmQgYXZvaWRzIHRyaWNreSBwcm9iZSB1bndpbmQuIElmIHdlIHN0aWxs
IHdhbnQgdG8gZmFpbCBvbiBMRUQgZXJyb3JzLA0KdGhlbiBlaXRoZXIgKGEpIGZpeCB0aGUgdW53
aW5kICh1bnJlZ2lzdGVyX25ldGRldiBldCBhbC4pIG9yIChiKSBtb3ZlIExFRCBzZXR1cCBiZWZv
cmUgcmVnaXN0ZXJfbmV0ZGV2KCkuDQoNCiAgSWYgTEVEIGxhYmVscyBkZXBlbmQgb24gdGhlIG5l
dGRldiBuYW1lLCBpdOKAmXMgZmluZSB0byBydW4gTEVEIHNldHVwIGFmdGVyIHJlZ2lzdGVyX25l
dGRldigpLg0KU2luY2UgZXJyb3JzIGFyZSBub27igJFmYXRhbCwgdGhlcmXigJlzIG5vIHVud2lu
ZCBjb21wbGV4aXR5Lg0KDQpLZWVwIGlnY19sZWRfc2V0dXAoKSByZXR1cm5pbmcgYW4gZXJyb3Ig
Zm9yIGludGVybmFsIHZpc2liaWxpdHksIGJ1dCBkb27igJl0IHByb3BhZ2F0ZSBpdCBhcyBwcm9i
ZSBmYWlsdXJlOg0KZXJyID0gaWdjX2xlZF9zZXR1cChhZGFwdGVyKTsNCmlmIChlcnIpIHsNCiAg
ICBuZXRkZXZfd2Fybl9vbmNlKG5ldGRldiwNCiAgICAgICAgICAgICAgICAgICAgICJMRUQgaW5p
dCBmYWlsZWQgKCVkKTsgY29udGludWluZyB3aXRob3V0IExFRCBzdXBwb3J0XG4iLA0KICAgICAg
ICAgICAgICAgICAgICAgZXJyKTsNCiAgICBhZGFwdGVyLT5sZWRzX2F2YWlsYWJsZSA9IGZhbHNl
Ow0KfSBlbHNlIHsNCiAgICBhZGFwdGVyLT5sZWRzX2F2YWlsYWJsZSA9IHRydWU7DQp9DQoNCklu
IHJlbW92ZSgpL2Vycm9yIHBhdGhzLCBndWFyZCB0ZWFyZG93bjoNCmlmIChhZGFwdGVyLT5sZWRz
X2F2YWlsYWJsZSkNCiAgICBpZ2NfbGVkX3RlYXJkb3duKGFkYXB0ZXIpOw0KDQpLZWVwIGN1cnJl
bnQgb3JkZXIgYnV0IGZ1bGx5IHVud2luZCBvbiBlcnJvcjoNCmVyciA9IGlnY19sZWRfc2V0dXAo
YWRhcHRlcik7DQppZiAoZXJyKSB7DQogICAgdW5yZWdpc3Rlcl9uZXRkZXYobmV0ZGV2KTsNCiAg
ICAvKiBkZWwgTkFQSSwgZnJlZSBxdWV1ZXMsIGV0Yy4gaW4gcmV2ZXJzZSBvcmRlciAqLw0KICAg
IGVyciA9IC1FLi4uOw0KICAgIGdvdG8gZXJyX2ZyZWU7DQp9DQoNCldpdGggdGhlIGJlc3QgcmVn
YXJkcw0KQWxleA0K
