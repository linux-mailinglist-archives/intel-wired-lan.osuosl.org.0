Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3107C83899
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:49:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8168860ABE;
	Tue, 25 Nov 2025 06:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l8_RGe3GJKk0; Tue, 25 Nov 2025 06:49:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB8386089D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764053343;
	bh=soBoB+XzsNsO9tSW0HE93bu3cjz6NyDErs33ARGN+iQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fzsv6AfEFHjJVdVD/BQ40gFWJut4ZCuLS4dpco88j6TF4Vv2g9R3YkAXvI5rG1CQQ
	 viZgydgS7o8vVWwMB7Hj5hEZJlhZ6ElFDi7OSdwGGghSr1ytJB9gU6AcBFkwohXNTp
	 qwkjWlKeaucohbNS4jG+9oJc85yEfbKx8s7Izt/HZEVMQ2r3R1khvDrYCLEve3n/Z+
	 rbA3TprAGif8zBe7hL/d4SrW7JujYj8e1Ll5QG7+4/Tkf78Wn3ZGI2JwysgRc8p7PH
	 DC68xwI0M3ex8kNQFLCO1cBcFkpYWo4OxvxEoei9OjVwDiEHuShcczkGS5ZCRBJEgZ
	 TSr+SRrOgHLyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB8386089D;
	Tue, 25 Nov 2025 06:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DD88AE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF5678246D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkU94BkVoJdY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:49:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EBE3982468
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBE3982468
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBE3982468
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:48:59 +0000 (UTC)
X-CSE-ConnectionGUID: imxgq0tvR1qSyi0L6CbzKw==
X-CSE-MsgGUID: HQnkwM64QN2IYSZCXBxtXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="69687273"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="69687273"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:49:00 -0800
X-CSE-ConnectionGUID: E5VgKQu5T7qst2sMCbdl4A==
X-CSE-MsgGUID: qDt8IqoXR9G5SLp5m/HlSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="191691099"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:48:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:48:58 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:48:58 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:48:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vGhEmT4vv8VN2X8Pd1HN3gu8+naXwQw6vl8R+fpIJv21HlcKEp+PlQh6FX0Evb+kkjHKiUFl6Wvm9KQ41SnldcaTDj2IjqrEQH81m3/169n5X8OBqmUsq8KZv1rU9f+bQ/UWM1A6Ahw8f5dRctZ4maix2d0e4SDpKW1gL52bDZroz8SDcpDBzByoG72HV0zHLVJbxiy5KrXBjKDCNZWprcI4ajHcMu0mzJU+qB6NbbSXy+dyvO5990REVw1ZHLsj6tglzkJaZRbrbWBLt0NmKMMPWdkopuzXvg9oNsS7Tq/xTive46BQG7tY+h361eCHIvQVz6uhft9XLtE17+UKcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=soBoB+XzsNsO9tSW0HE93bu3cjz6NyDErs33ARGN+iQ=;
 b=HDBOr8mVn7/uosJnHet7EQbF23IMUNj2PDc7fMz8fCsPrCeZrGAG3kXpoM/K89mWbLffxZya/FQLu4LiViCp+/eiCSe5FbOtyQK+f4t56XEiwiXJkBCN2wtnxbWJvLdqZFy87lR8yQEHAPmKtSDV6KaAqWz9DuSXU3pO8c4o2Xo0401j6oQ/+H8PYqVRqIPaP+iK9s0gH4D2J57kR3/vJGeqcY2RS1GcMp2vK85BVGVPonFV3u2hjuQ1QpZwiLFuysHo3ytFQKaLXBOVYdwp1PjxRZJ33nJJp3fQrs6lOuWWMi9/2PKFVVUa8a6JAJ5SCLNF3R6OQahbsIWDIanj7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 06:48:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:48:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 7/8] ixgbevf: extract GRXRINGS
 from .get_rxnfc
Thread-Index: AQHcXW75E8apL5f5BEOC0cwyqpFATbUC9Ctw
Date: Tue, 25 Nov 2025 06:48:55 +0000
Message-ID: <IA3PR11MB8986482A0850CF0F03970F63E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-7-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-7-89be18d2a744@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8073:EE_
x-ms-office365-filtering-correlation-id: 4d113e7e-c30a-45ba-fb0c-08de2beeb430
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?V3dhaTZwMWJjVE9PQkw3VG1YTy81MFE1ZkZya2JRVXBQR2liVk1RSGFQVzlu?=
 =?utf-8?B?UnFaRXU4ZHluNnNqMFQzWmw2S2ZEbmo5NFZncHEyVENodDhqTDl4eUNkUHNw?=
 =?utf-8?B?UC9WVkZ1NnA4ZnE5MENuL2RYTUllR3JxaVNKblBWbXViTFBsVXZiVTNkRXhP?=
 =?utf-8?B?OHdZNzZvR1dPVHlYaTZOTUwxT3cvc2h1bTJrZnFYVE5tdDZ3L3lDTEVkOW1w?=
 =?utf-8?B?YUptSktuQTZnSUZSb0ZWSGFldGc1ajVZcElBbHlUNnV6NFFDR1Y3c0Z6djJz?=
 =?utf-8?B?R0NmeHhuV2RmTDY0Y3pVS2pxdGk2OFIrWDhCVVFOOEo4RkUwNGN6NVdzemd4?=
 =?utf-8?B?cWUwZS8zd1pHS1ZtQytMWmVEOHg4VGZiaWJ6TEs4eW9qQm0rWXVEaDBzRkJX?=
 =?utf-8?B?SEZTbVFXZExFOFk3RGZDbHpGSEVjSFJINC9Ia3hhU1M5cm9PUzRRTWRXekp2?=
 =?utf-8?B?dTJSWG1jOGIzYlQ5TENPamo2Rjd6M09Ub1Ryd2NXZlgybTdMa3BSVUhSajNL?=
 =?utf-8?B?cjlrRFBjUmc3YU5GUCtsSlNkNWxuTFpibE9EZ1U1dXNqYlNjRFhxSDIzNDRy?=
 =?utf-8?B?WUszNVYwMU5qUEkyNmFSRFk3c1UyRlZxSVJuYitMejFpWkRWVFhpQ0ZPWjdF?=
 =?utf-8?B?OVdHUFMrWUh4QWw1SG1jOUhlREh4YXJhWFora3o4eHgwemc4aFZRNkxRTGpU?=
 =?utf-8?B?YnY2T1QvNzVHaEZXMHlSc0Nxc0JDckNwNzhJSjk1QmxKUERPZE9TZzY1MW1W?=
 =?utf-8?B?ejA4QWRqUmdqSmZUSTI4NGxnVVhJMDk0bmtmZ0p3MUdYb2NxTlFvUFJFeVpk?=
 =?utf-8?B?Z3o2VStZZkxEOU55MlE2bHQ3UzRxMXVvY3dSaGtKSEp2Q2RiS21zb2diaHk0?=
 =?utf-8?B?UEJqYVFWTnMvK1dxb2lpc1NsUDVkVXROSmUzNE4yNFpYaEIwUHBjVWw3YXZM?=
 =?utf-8?B?aFJPejRNRU1ObUxGY3ZVRy8vNTVERU1Sc2RuQmc4T2lETWg3eXV3cXB0YVhx?=
 =?utf-8?B?WnFsY0g4UVZGdVpRRUg1bFRaUksxNmIydUNvRFlEd01PSmFwQ0sxMXhKS09p?=
 =?utf-8?B?VlVQQ2luNTNYMUQvRVdoSU5mMmZhUlNIeTAzdTh1OFpRdXFzMzJkUUlUOWtZ?=
 =?utf-8?B?VXNKQTc4eUttSmJJMS8yMExzSnNXRGxUbGVEcStjaGV3MzRuaE9VeFdPYmtR?=
 =?utf-8?B?cUsrVTRwd3QrWnRKMTFKQlQ2R2liTDFPbE5yWGYwUldpZmtUeTY4S0lNVW5W?=
 =?utf-8?B?SjRYZGQrT2x6N1R4UkdQV2RJQWlLa2N4Sjh1a252R3YyejRncFhtTWxrSm1w?=
 =?utf-8?B?VVZ2K0doNzZRbGdUL0VtWW5ndWZHL1hyaWRpZVl1Tk5SV2M3OG9jR0ZFU3ls?=
 =?utf-8?B?L2R5UU9BdzFRZHZlL2c5NkxYZzBsZkxkVU5MR2RTVEdudDBPbHZpS2Q0VWs5?=
 =?utf-8?B?OXRldHFjaHdJcGlLcjVVekY3UWtwSU9yQnhuUHpYak9mcDRKMzNJWnNmRVBJ?=
 =?utf-8?B?Y0dXcDFSZDBFUGlpRFp4MytUUVV2bWJac0lGRlhnZ3gzU0kvUGJtYmxXc09V?=
 =?utf-8?B?bzdUNG1hRk00OTdqK2tNZE5SN05qU1lEdE5TeHZ6aFJ2bGlKcDdHVmR6dGd5?=
 =?utf-8?B?bHBETE5VenEweGM4SVNMRVl3Y0pBM3dsOGpJN3VKME0wSCtvVTdYR2xRaXJF?=
 =?utf-8?B?SWdObFo5cWxhYXByYVdoM1VwdGgrU3cwQ09zUHdwMUNWeDl0cGw2UVJadzli?=
 =?utf-8?B?blJqcE9kS1BtN0FnSDVDSEJ4bHc4R3Y5TXd2YWt5N0dyN1pqTWRTb2NHWUhR?=
 =?utf-8?B?UzNWTy9VMkdkV1E5WTZzbWdlTDRNMmI0d1pmUm5lZzN6QVRlbUFDQ2YvcVJp?=
 =?utf-8?B?WnFjVzg0RTlaak1DSkhtUTBLckR5NnBlYjlscStWaHJTcUJNcDJUbytZelYx?=
 =?utf-8?B?SHNkUHg1QzNOelB1RW9wNEMrR0RpanhtNUdiK05DSWpvRkt2Z285VVBOdlFG?=
 =?utf-8?B?ZFd4OTlyMnB6OFZHYmNXS0FvaHVsdk1icVFKbTdlbjZIYWFxL2NRYlhZa0Zh?=
 =?utf-8?B?S0pwR2Z1QUo4Z1hUbzhUem9tVzhhM2Y4NzNUZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3AzNUFtT0doZ1k3NnNDd2hrc2xGanQ1cVIvbFNONWM3bloxVStkUFlINmds?=
 =?utf-8?B?Q1JOR3RrajB6aGdQRnUwdU9qMDRXTVJ6Mzg3YkVtQlJLRlhzai9XdHpTS080?=
 =?utf-8?B?MkRPcHFEa0ptdWFjUUdZS3RzSDMxTDFnVThKZ3EvNHVnVEZPMTkwa3lMUXdy?=
 =?utf-8?B?THlUTnhnZGU1YWN1NU0yRjZ0ajhzbWd5dktNbTZhSi93b0xkZVBDRGhFRlRs?=
 =?utf-8?B?UTQ5V2dIYzRCc0R1anh6b1hoZ0NHb2VXSVBMeEFlK1g4SDMzSnE0d1hFTEdX?=
 =?utf-8?B?ZHVNdUNmNWd1Vk96YVl5WDQwcDQwaDdVVFprRUt5TXJ2NE1PWVRseThadEl3?=
 =?utf-8?B?UUpKQkZEZ29SdGVSRHA4NzlheHNSWmswdFFRNk9IbWdDRDd1Nmc4Z2QyeFA3?=
 =?utf-8?B?U05UTlNmU2JsczFkTksrcC96VkRrK3M5cnU5ZVhvellsN1pQV3pkeXF5ZXBw?=
 =?utf-8?B?Y3pES2dTSHhSYkFvSUN4L004eE9GOWNpQ2Rlb0pwUEJ3M0ZiQXJzaW45enJL?=
 =?utf-8?B?Q1JhQXlRc1ZBb0J2YUQvMno2Zzl4Zy81Uk5ROGhFVTM3dTRORjdWSit5M3By?=
 =?utf-8?B?dmMwa2YrdEtqZ1cxNEtKRjRZYkpzUjdHYnRTVS9sKzdRMEdiZy9JSSs3dVEw?=
 =?utf-8?B?bEduMWFtTGR0OHRtZFpnUE5zU3VqL29lZzcrRDh4N0xuTU5SZ2FZclVRVkcy?=
 =?utf-8?B?aWtBYmVKL1pxUnZyVlc5cWp0dXNUODI4VTRKR3hlM2FjY2xxZ216NWt3NEZS?=
 =?utf-8?B?V2czNElCOHJoRkNjekFYcG50MXNrUEwzNExuTGtDVDNTME95TnBzcktBamht?=
 =?utf-8?B?MlV5UGJHcHZhQ1FvUnBIM24ralorNm5FQi9ON3Z6aTI1aUhrRkc3VG1tRDAx?=
 =?utf-8?B?ekg5a2pPNFpZaE85ODZFbFhZT1h4N0gvN05DaVNXeEh1Zkk0RnlqV2hObEpy?=
 =?utf-8?B?b1pvZjFFcVNLVzd3c0g3cE9oNldoOFJQd3JnWkRKQlBUcThzUm8yZnFleTdL?=
 =?utf-8?B?S3EyWSs5Vm9UQXF5QitaaXlwMEw4dVFVdGg3dzlaTU1RZ29ZbzdkWnBtYW01?=
 =?utf-8?B?Z1VBZjVQRXg4d3djUlhIOUR0ejhCMHpWZnNsREFnbTV1M0svM2xOVTV3d2Y4?=
 =?utf-8?B?R1RQOWEyLzRWMmJCYjVGek9FemRkTGhVaWVaM3drZVlqR294MmRERkdjV1My?=
 =?utf-8?B?SjdnSjBqbnFxY0tJREdlV0RLM0xEbDE4TXhmNEduZ2JVN2FwODBUR0Y2bUhP?=
 =?utf-8?B?TDl5OTJoT3FNM0tlVFEvblptT1FKVXhVTDRJNVJJcGsvL2htNDhYbzk2UTUz?=
 =?utf-8?B?NWxmV0hyd2FFVGp1VW5xNlhiTXovM0tFZjRneWlxdHIwSm4zNGZNTjQ4Zlgr?=
 =?utf-8?B?ZDl1NExsWmdIbm9OYStUTkRTeGxhd2hLMDJiZDYxbGd4VlNXMGdTN1M2dy8r?=
 =?utf-8?B?WFQrSzFtc1R3bkRIYkdkeFJac25NS2lBYjYrUnh6VHNyQnRNVGF2dGhiUTRK?=
 =?utf-8?B?S21mOUdIUHk3WjAzQ04rWExXVlNVMC9PeUNtTWQ4VlZZVnhiL0pqYWpNYjJE?=
 =?utf-8?B?UWtLV3U2Mkl4K1ByVFVUMjBrZlU1S0xYYmpXQmViRDJ0d1JxSGFFbFRsOHJM?=
 =?utf-8?B?akhQTHVNRmorNW8zbTMxd0RuYXZJSE8ydXdIODA4bll5MGJWZk1Na3JLSCtt?=
 =?utf-8?B?TzJ0S1VjbGQ5VlNTa3JlZ1VLWnU3U2VtUjdscmNlRlM5V1ZCL3JqeXFKblBr?=
 =?utf-8?B?akZoc1cyYXExWVdzY1FRcThwWU1FY21OYnpCVkJGbmU3VDR5a0gwSmlnRGVt?=
 =?utf-8?B?TzNBVk4zRnBIMThyMEFkM25vTWRjMFlIVkRFZ0Y5OVBod3JXT0t6bndRZE5v?=
 =?utf-8?B?QklQdURSRTF4V0w4WVFRRzVqVHlrbCtjU2JlOVVhUzNucllUNjc4d2o5WkVE?=
 =?utf-8?B?ZnBqbnNmMjI0dlBhc3kxTlhYdXZtMHZ0dkFMZHNBbEtWWVdJcTVHanlOaFBz?=
 =?utf-8?B?cTBpYVBkb0ZLMFZHV3EzcERYSVoxOEtPYzVvS0JkMlltRTFwL3pBYU1pMEtm?=
 =?utf-8?B?emkvR1pwYm1sMEdVc1BqcUVWSzI1RjlyVDZSRW9qSXpNTW9mTzl5a0NXV1VH?=
 =?utf-8?B?RW9UQUFTN2VicVRxcisySVhzSk15TU0yaDRVS1BMczl2ZEUvcnBHRWx6SXVY?=
 =?utf-8?B?TFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d113e7e-c30a-45ba-fb0c-08de2beeb430
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:48:55.8067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e+AtOMLb/n2flsz7oo43tlB/Kd1Ta5o4Vji3XG3fEbPIjivpcAEEEymlNKZ3yCB/ufgXHsLncvqNzAHnWVkL6XkzDxzG9GpxonD3DvDhk90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764053341; x=1795589341;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=soBoB+XzsNsO9tSW0HE93bu3cjz6NyDErs33ARGN+iQ=;
 b=WUuWEGZVYc6krRbV9LAxGox6sQxEgZR1kw+PitsCFnO0hJV9QbkFnDQR
 nFUTiSDCvQ74PcxNeUvW0uHeD/ZqNo0VORe4J2Gu3XJxiaRjIZXDq+bYV
 2YFntZDHCyGGD6XYkuy17iDt1HEw+JUOtk9uWt9dhjllFhVioRsqHLWkL
 LRpolKjwmSfiHCcnXbu022AtZwuaaEnWTUDWVOCkWIHD+9WqS6RWsOgA2
 fJMC4py/e+bI6ERG6J4ie+bS83bYsjPS1vMnJ9VoxZphmPztJD0Jg9eUK
 NApDaKFXNlkCdoqjnHr5/zHiUPw7c2WF5GZ5l2BuhzuMjTzK0BLLrc1NT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WUuWEGZV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/8] ixgbevf: extract
 GRXRINGS from .get_rxnfc
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgNzoxOSBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5n
dXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVu
biA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0
LmNvbT4NCj4gQ2M6IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1pY2hhbC5r
dWJpYWtAaW50ZWwuY29tOw0KPiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dz
a2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsga2Vy
bmVsLXRlYW1AbWV0YS5jb207IEJyZW5vIExlaXRhbw0KPiA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dCA3LzhdIGl4Z2JldmY6
IGV4dHJhY3QNCj4gR1JYUklOR1MgZnJvbSAuZ2V0X3J4bmZjDQo+IA0KPiBDb21taXQgODRlYWY0
MzU5YzM2ICgibmV0OiBldGh0b29sOiBhZGQgZ2V0X3J4X3JpbmdfY291bnQgY2FsbGJhY2sgdG8N
Cj4gb3B0aW1pemUgUlggcmluZyBxdWVyaWVzIikgYWRkZWQgc3BlY2lmaWMgc3VwcG9ydCBmb3Ig
R1JYUklOR1MNCj4gY2FsbGJhY2ssIHNpbXBsaWZ5aW5nIC5nZXRfcnhuZmMuDQo+IA0KPiBSZW1v
dmUgdGhlIGhhbmRsaW5nIG9mIEdSWFJJTkdTIGluIC5nZXRfcnhuZmMoKSBieSBtb3ZpbmcgaXQg
dG8gdGhlDQo+IG5ldyAuZ2V0X3J4X3JpbmdfY291bnQoKS4NCj4gDQo+IFRoaXMgc2ltcGxpZmll
cyB0aGUgUlggcmluZyBjb3VudCByZXRyaWV2YWwgYW5kIGFsaWducyBpeGdiZXZmIHdpdGgNCj4g
dGhlIG5ldyBldGh0b29sIEFQSSBmb3IgcXVlcnlpbmcgUlggcmluZyBwYXJhbWV0ZXJzLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogQnJlbm8gTGVpdGFvIDxsZWl0YW9AZGViaWFuLm9yZz4NCj4gLS0t
DQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZXZmL2V0aHRvb2wuYyB8IDE0ICsr
Ky0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxMSBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZXZmL2V0aHRvb2wuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYv
ZXRodG9vbC5jDQo+IGluZGV4IGJlYmFkNTY0MTg4ZS4uNTM3YTYwZDUyNzZmIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZXZmL2V0aHRvb2wuYw0KPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZXZmL2V0aHRvb2wuYw0KPiBAQCAtODY3
LDE5ICs4NjcsMTEgQEAgc3RhdGljIGludCBpeGdiZXZmX3NldF9jb2FsZXNjZShzdHJ1Y3QNCj4g
bmV0X2RldmljZSAqbmV0ZGV2LA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBp
bnQgaXhnYmV2Zl9nZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgc3RydWN0DQo+IGV0
aHRvb2xfcnhuZmMgKmluZm8sDQo+IC0JCQkgICAgIHUzMiAqcnVsZXMgX19hbHdheXNfdW51c2Vk
KQ0KPiArc3RhdGljIHUzMiBpeGdiZXZmX2dldF9yeF9yaW5nX2NvdW50KHN0cnVjdCBuZXRfZGV2
aWNlICpkZXYpDQo+ICB7DQo+ICAJc3RydWN0IGl4Z2JldmZfYWRhcHRlciAqYWRhcHRlciA9IG5l
dGRldl9wcml2KGRldik7DQo+IA0KPiAtCXN3aXRjaCAoaW5mby0+Y21kKSB7DQo+IC0JY2FzZSBF
VEhUT09MX0dSWFJJTkdTOg0KPiAtCQlpbmZvLT5kYXRhID0gYWRhcHRlci0+bnVtX3J4X3F1ZXVl
czsNCj4gLQkJcmV0dXJuIDA7DQo+IC0JZGVmYXVsdDoNCj4gLQkJaHdfZGJnKCZhZGFwdGVyLT5o
dywgIkNvbW1hbmQgcGFyYW1ldGVycyBub3QNCj4gc3VwcG9ydGVkXG4iKTsNCj4gLQkJcmV0dXJu
IC1FT1BOT1RTVVBQOw0KPiAtCX0NCj4gKwlyZXR1cm4gYWRhcHRlci0+bnVtX3J4X3F1ZXVlczsN
Cj4gIH0NCj4gDQo+ICBzdGF0aWMgdTMyIGl4Z2JldmZfZ2V0X3J4ZmhfaW5kaXJfc2l6ZShzdHJ1
Y3QgbmV0X2RldmljZSAqbmV0ZGV2KSBAQA0KPiAtOTg3LDcgKzk3OSw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZXRodG9vbF9vcHMgaXhnYmV2Zl9ldGh0b29sX29wcyA9DQo+IHsNCj4gIAkuZ2V0
X2V0aHRvb2xfc3RhdHMJPSBpeGdiZXZmX2dldF9ldGh0b29sX3N0YXRzLA0KPiAgCS5nZXRfY29h
bGVzY2UJCT0gaXhnYmV2Zl9nZXRfY29hbGVzY2UsDQo+ICAJLnNldF9jb2FsZXNjZQkJPSBpeGdi
ZXZmX3NldF9jb2FsZXNjZSwNCj4gLQkuZ2V0X3J4bmZjCQk9IGl4Z2JldmZfZ2V0X3J4bmZjLA0K
PiArCS5nZXRfcnhfcmluZ19jb3VudAk9IGl4Z2JldmZfZ2V0X3J4X3JpbmdfY291bnQsDQo+ICAJ
LmdldF9yeGZoX2luZGlyX3NpemUJPSBpeGdiZXZmX2dldF9yeGZoX2luZGlyX3NpemUsDQo+ICAJ
LmdldF9yeGZoX2tleV9zaXplCT0gaXhnYmV2Zl9nZXRfcnhmaF9rZXlfc2l6ZSwNCj4gIAkuZ2V0
X3J4ZmgJCT0gaXhnYmV2Zl9nZXRfcnhmaCwNCj4gDQo+IC0tDQo+IDIuNDcuMw0KDQpTaWduZWQt
b2ZmLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT4NCg==
