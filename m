Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCAC9B19E6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2024 18:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEEE8410AB;
	Sat, 26 Oct 2024 16:55:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VuVp5cvcbhyN; Sat, 26 Oct 2024 16:55:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88C68410AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729961723;
	bh=eukRaWV57v0GJjNUCD3b5cc7A61ravR4xj4UWbXtIlw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VrMX2rL78rgVpgWltf31ThjS8D7gZy4S7mQuFr5u3DBOMI2qckwV0k6rPjbZgwRxW
	 zU6q2L8WNu/cWmfOFkNSov+T9UxrMHBaJ8IO0slvPoqHsXFP0DRrxQEMO9pg/zYmix
	 pPOzr7xeGMS8ZKXU0T2sQzDPqo9o+gRDLP1Qanasb2pHc3wb33EktFE+JcY7TaSYiz
	 +l8nrl8cMTcR6QNumisWFSG1cSebGIRa/Jav1ubA7H5EIRfux9K9KuJrnsxTkSzOJ7
	 LH3MkQsZCVs8bR7DeQ+gqbxeK4Rw16HONqvPzvnCbVNKvFt97nc5jXeiZGZobdbq/U
	 ItLYT+s+/Qjnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88C68410AC;
	Sat, 26 Oct 2024 16:55:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E9925C1E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 16:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3807605DC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 16:55:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id odfx5rGHUE5n for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Oct 2024 16:55:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=george.kuruvinakunnel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3A614605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A614605D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A614605D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 16:55:21 +0000 (UTC)
X-CSE-ConnectionGUID: k1tzws0RT+y+bkO5QRyw5w==
X-CSE-MsgGUID: QxQHVKEuTTW5w+Ev3lBisA==
X-IronPort-AV: E=McAfee;i="6700,10204,11237"; a="40988742"
X-IronPort-AV: E=Sophos;i="6.11,235,1725346800"; d="scan'208";a="40988742"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2024 09:55:21 -0700
X-CSE-ConnectionGUID: GnK+7HhYSO2IPkHhuBGu6w==
X-CSE-MsgGUID: i80dHGv/RYmwGPUQB7ww4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,235,1725346800"; d="scan'208";a="85976253"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2024 09:55:20 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 26 Oct 2024 09:55:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 26 Oct 2024 09:55:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 26 Oct 2024 09:55:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x+pxFMTtuGxSmGpNhL0XMMtTod1Q+cs6G6403/eKArNFNLFqJ8IKaMIg0lFZkAiTI5VEaM9zFCRSFNF7kpsGXSiE1q0MMp/hN/v+1SzkqQ5/AGCWfreNdYRBPzcjdKzm2NuJ8e1TGIbwWyi6ce/8RlT+49dT0I/Cybp9gif5PuhVWX10tRDUSVOlR6b69UI+DsFWZKthNOYszh4g95iHPupa3wEe/wHz9eXU66Hca1gsE2NgGaKNcqwBXfyqJP6d7+7yTrz4yB1YMYxqDG2Wivpxmfzx/ZSqcXlWdcvM+exBip+cS9+ESnWopST/HAo28BMMkEFooBBmq2yP0a3N2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eukRaWV57v0GJjNUCD3b5cc7A61ravR4xj4UWbXtIlw=;
 b=F2idjMdWdzHS5O1l6oSox8LpzeYciEsMOms7npLuFz5bgo5DTuO1208OfHgM9WLpH/UuoURNB9ArWQal64qSM7XWdfJpQFa9J9UzGTrpzw5h1YYdtfAR0x18xl2xs1Z6McZ4iFtKuTyYk8jtZjRqFjwlBbyFDXrAS2Og35kK/SmLcIxu57V+rEQsSi2BBxFsEp/K+CnFZ9jPlMM4A7ZxvZ1cJsiBbTnfxWCGwd+N4VWuVURisWGmx7raK43lrarSDKXWJFFlBRGudGujXjYTSpwKIkJg6IyKuYz7RmQUhLo2Y0lLB2ZzfgFSI1UxnWE1MWWLuSg/hKMdDgl3LPB7dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by CH3PR11MB8589.namprd11.prod.outlook.com (2603:10b6:610:1ad::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Sat, 26 Oct
 2024 16:55:17 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::5889:7208:6024:bbcf]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::5889:7208:6024:bbcf%4]) with mapi id 15.20.8093.023; Sat, 26 Oct 2024
 16:55:17 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Richard Cochran
 <richardcochran@gmail.com>, Sriram Yagnaraman
 <sriram.yagnaraman@ericsson.com>, Benjamin Steinke
 <benjamin.steinke@woks-audio.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Sriram
 Yagnaraman <sriram.yagnaraman@est.tech>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 2/6] igb: Introduce
 igb_xdp_is_enabled()
Thread-Index: AQHbITlst7Q8noluI06ryn/a7TqMyrKZTRQg
Date: Sat, 26 Oct 2024 16:55:17 +0000
Message-ID: <PH0PR11MB51441594410679432C4A9D90E2482@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
 <20241018-b4-igb_zero_copy-v9-2-da139d78d796@linutronix.de>
In-Reply-To: <20241018-b4-igb_zero_copy-v9-2-da139d78d796@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5144:EE_|CH3PR11MB8589:EE_
x-ms-office365-filtering-correlation-id: a3f9709d-097b-476c-61c2-08dcf5def837
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Z3ZXSkxpTUtWajRlYlJzdi9MRndKRXBxYm80WUFUbHZDcXU5cVlnVTgxY1lY?=
 =?utf-8?B?eC9TQmNva3JxZTFCbzVJaklxZXRnY29pK2ZoQ0pnMmxWbFoyODhaWFhOMjZS?=
 =?utf-8?B?Q1Y4aUZxc1VScDNtL3Q0V3NYeFl6ME9IZjlyRFZ0blJxRG5yTHVoOGlCT2lK?=
 =?utf-8?B?NHNGVlVaVGNtd3g1TnlXaFFNWUVFei9OOCtvUHRRbVFZOGZYa2ROU04rdE8v?=
 =?utf-8?B?WUc3UGJsbHc1b0JabVVwblZHVHRDdmVscldVZys5eUFEVlhRWTYyeU1iQU1S?=
 =?utf-8?B?eXlDdWFuZlNFd216bkd1S3cydXBVUGF1QVhoZ1V0WmZ5ZTd4L0FUVzdhd2h4?=
 =?utf-8?B?UkFDMVF1dVhEZnN1ODJMYTlqeUM3Z0ttalJxMjhETUJSZ0N1U1Y3cEFBOSt5?=
 =?utf-8?B?TTdVQ0k0eVB4Qm5SVG1GWkl4NHBGWElKZTJQYjRTZ3RXTUh3ejZsNjBpU1Jj?=
 =?utf-8?B?SElpYURYZFBmWXozZ2ZEUVM5bTVYaUZvNEtQK0FES2JNNTIyWnhPbmx0OS9u?=
 =?utf-8?B?Y09zYVYzOWpEejBybWk0SlZ1emZnS2ZKSGJEN1JTV2EzQXRnVERaeG5pR2Ra?=
 =?utf-8?B?cDNQM1BXUmJOZXVTVzVVZkNZaTJjWjMvUHo5ODZHWGxFWXFYQU9jRDVkbnA2?=
 =?utf-8?B?YVdkVUtsUEt4L3dicnd6RU1iekpCeGpvNkhzNStuTCtPRzVFYWIwWGIxc0ZH?=
 =?utf-8?B?Q0pzSHc3MTM2M3BTMmViUmJYZEU3dGtCU2ZCRlN3Tk5LOW5nT1hOZm0xd0Ir?=
 =?utf-8?B?SVo0MmR6MllGQUthM0pMT3JLeG9IQlhTbHVGczN5N0JrSTM5amx4T2J0Sm9a?=
 =?utf-8?B?ZGFhR3FJa3ZNY3NZWmgvRDBwVmpMNmtpakRnWGJzNzl4VENqUjN1WDhtN3Vn?=
 =?utf-8?B?ZFZsTnJ5dG5lRmp2QjZrMUFmU0NQRG1HUkNIQitQdWdRU3RveWRxd3lWZjlP?=
 =?utf-8?B?bnp6T21EdzF4TUJyV0lmbkRGdkhZMnB5YjIyUVE0bkRmOEdPTHljeUhaM25C?=
 =?utf-8?B?VmJLcDNKbHRYck5qMUFhYlVQZFhBeFRoM2FUNk9iTHhwOEJ6SERnYnlkNVJo?=
 =?utf-8?B?MC83QngwdGRQUEJTditWOTRuRkxSK1ByMzJ5Z1MyVHRGcmxKc1JRWVFHWEhK?=
 =?utf-8?B?b01KMkdaekJvbWRTRGFLUWJoRlNUTzJNU0FaZUZGWmtBd1hIL1FXdU5kenZq?=
 =?utf-8?B?Ym5TWkN5NU9lNTdSY1RORERmamFyclNISVVqaFdGTHdJYm9xdEw4L0tKdGdu?=
 =?utf-8?B?MTRsR3p6UXBKV3Vsb3dvNU1QRk1HWUJob2Z1dmQ4NCt0STU3TFBkdS9zRVh5?=
 =?utf-8?B?T1dnY09DTzNialVQZ1d2MURQNnNDUWpzK3hmSjdNOGxOMWR6VS80TUM4YUN1?=
 =?utf-8?B?aklDZ2dHamVZeW52YWRZVU0wVXIyUHJ0SkNPUmpxYlpLemdwZUgvSHdlRVZ4?=
 =?utf-8?B?eHFyTkNXN2ZOTDhLanhFaStFdTkrUHhXak9XbTROVDYyV291dnJPRG05amli?=
 =?utf-8?B?OUlMcTkvcDlVNStZRGZaSVYxQS82a3lzZjlVaWgrNkV4Mk53WktLajFHTEJT?=
 =?utf-8?B?NWtDZ1RyK3hWdmFDU25HdzUrWVBlbkNMUkZsRWwwNVUrVEt6ZjByRUVCZHFF?=
 =?utf-8?B?R1VJbkt3Z3BiUGVPZC8zdVc1Znc4WndsK0xyWEZYUWdQUW5sUDlsR2h2L0xX?=
 =?utf-8?B?ZHdNcnhIaXg2Z0xtVjYyTW9HWG9OWXI4V0oxQ3FYWU1pekVLQWtWNS9KNVcz?=
 =?utf-8?B?Y3llc0Z0T3Q3ZENXVXRiSyt2ZHBHaUhNZ1llcnl1Nng5ZHpyWDRCZ3RuWjNz?=
 =?utf-8?Q?Hyc4k10DdUeivQrbMrZc4p3IKIeTHne64NgwU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGVRaWRISUNUV2hxd25oTDFXbC9HeW9jdTVzdjVKVmhsVzJSQ0pqTjBFdU1z?=
 =?utf-8?B?R29zWEVKM3VrQVEzM1pBanFydHVPZENqMFdRZmpZZmdhRWFhS1FLVGo3NFlu?=
 =?utf-8?B?VTJQY0VJVHdJMGhZR1huNkRwL0FFTHZwZ25yT3pVSGZTMENZZDFWSVEwUElH?=
 =?utf-8?B?MW5rdTI0dGl6U0l6QXBnTC9PanY0ZytTenZFTGdYS0NJS0RkRHNCcG9RTnZH?=
 =?utf-8?B?UlJ3YkhYa285NjZDM2lqYldaSWUyUVZsQ1lENS9EaEx5KzVOYkdlWXMvTlpm?=
 =?utf-8?B?Z0lhZjFoMjVJclZuVTl6a3g5UytUZjdGL0JGWk5wNU9NNUR6YW1reU5lNkM1?=
 =?utf-8?B?ZW85ZUgzbmt4R3RqL0poTlE4RDdkTHAxeXZ4SURkSkdMYnpDdWtCMnl4SzJB?=
 =?utf-8?B?U1hEdmdzMG4wYWdGZW53REc0TEJWNkRZYkxwV2tZS1I2S3AwMFRaQmkyMWxM?=
 =?utf-8?B?QUNDRmR0MzMySW9YRWNvRVN6Mm56YUM0REdjZXdMZytZU0FEakJLMnhPR1pU?=
 =?utf-8?B?TllDY2d2LzhMdDRHZHgrZnhheU9YV0c2UTByemlTMWp3bDBaMUUwMmFaNTZm?=
 =?utf-8?B?aU53L2lQTlAva0VsQytjNjZQQXkvVmYweVptUWhsNDd2dGRZR1h4d1ozWVkz?=
 =?utf-8?B?ejdnNXY2LzRRcGVzTWh3MUg1a21XbStkZFA4eGMxT3JmWDV0bElXQ2xsVVh1?=
 =?utf-8?B?YXZJWGJKVzhNcWEwSStRMFhpRnRKVUh6aFlab1c5ZGdQNTJrQVdGcjVKc3I0?=
 =?utf-8?B?RVVveGV0anVsTXFEcDRqQmovUkxuYklKTWNpRkhiUE1HQjNYaDVRQVlJcC81?=
 =?utf-8?B?SlYxQzBsNkEwS0NNVXRGUW95VkdoUitxVnY4K1dWcnZhRERYZUdNdndxVTE0?=
 =?utf-8?B?c29mTkM3NzZqZStwRFRISnJZNU5zeG9IbjJ5WjRvcERsbC9weXFsQjlqUndm?=
 =?utf-8?B?T1pnazM0QWlqaWFWckFIOGRXcWFpemZ4VFp4MjdIUTJTSHRFaG5mcGlNNVd3?=
 =?utf-8?B?UXNzTFhWemZYM0dyRURtWEI5TmpuaVdEU1JPL2tMUllIbFFKSEo2MkpHTURN?=
 =?utf-8?B?Y2ZnYTNkeEtSU2sxWGJCc0NRdE1EOWk2Ni9MN1RGU0ZkVFZoM2tpSnpYNFRw?=
 =?utf-8?B?eGZsMnMwUnFwZEp1U2U2czkyajZ6MGJESkpGVVJqYnVweXdDWHVKbno5eE91?=
 =?utf-8?B?NTZGcndXVyt1bGZmNi9tMTZkTFB4VWlqRXhVUmo5T2tVYm9oWU51Z2g2Wm9N?=
 =?utf-8?B?VGsxY0JEZFRidEFKOWsxRG5mV0xpWVFaRWZwYXk5Wit4R0hMY0wrUytNRjBK?=
 =?utf-8?B?ZUZaNGRQcktoSXNMeHBJbCtpeGJ1ai8xNithZjFLVlN2Rkg0Y3JRYmtSdTRy?=
 =?utf-8?B?UXg0WEF5bm82R3lTU0Jia0xtNlNMdWNocWxZdEVadXVnSGxDYldSanJvVnJm?=
 =?utf-8?B?Y0FCUTZ5UmZlRGhVeGxvTWJIekhsdkdaT1k5YURPNUU2THM4MUttME51ZjFB?=
 =?utf-8?B?UldleG1kYjdZSEJGOGJEUDdPWUtpUGYrZllRSlpVbTQ0L096bFgyL1FPRkha?=
 =?utf-8?B?OG1OM3JpRGJuRldtRDhYaUpJT3lVbjB4aEdUelM2RmNOUVVFRWxtSTZZdzBW?=
 =?utf-8?B?cFcrUTVxckVUQkVROTh3djFNMTh6Wmw0WHA3dXNpaUpjZHlxc1lOUXdtK1Jr?=
 =?utf-8?B?YlBlU2RRR0RKem5KWGZUVjllWDNBTkRka3dvQkhvbXVMSnp4MUU1aDUvdnRs?=
 =?utf-8?B?SWpBemZ6WHNnSlc4ZHoyZW94bHdDYnRUZDNxOW0rR2drVUh2dC9TSG1qWkZS?=
 =?utf-8?B?WjhVQmkvaWgyNk9LZUY2cWxMcjdCQVpmK0l3SHI0Mmt5U1h4cVdXOFBJUVpj?=
 =?utf-8?B?UW44eGVSSW95QUt4NW9DS2dMU2I5Yk5EZEFoR09ySHJTb0RmN21TMWRmMkFo?=
 =?utf-8?B?TGZ5WjBVSU42OVBRZUJqL2s4RnQ4Z0V4Tko1SzQrMEFJNDR1V0ppSzlWN3FK?=
 =?utf-8?B?MlR1QVMwM1o3VXVKUkdONlNFNkV2WmJSc0VSSkNTV1VadS9ic2pzMU4xOURQ?=
 =?utf-8?B?eTFKYUJTbHdBaXlIYlBDMG5lS1BoeENwdDVWWUU2dW1nRDN3bEUyZ1NBTmVy?=
 =?utf-8?B?MVh3R3RST3RIelBsRVdQWFg0Q1hiNklIM0lGT3Jma0FnR00yY3I3T3YxWkpL?=
 =?utf-8?B?eWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f9709d-097b-476c-61c2-08dcf5def837
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2024 16:55:17.5390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U54ihaHMe5mBXSOPRs7/q/aFFMJ5jxvvrwvpfjUscii3f8HkqQD648lJ3KuY0Lag6hQkSQjX7yxzjOu98zAzfF07bqUVHh15hgJUlQQDguo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729961721; x=1761497721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eukRaWV57v0GJjNUCD3b5cc7A61ravR4xj4UWbXtIlw=;
 b=aBCcF5PHjeScPCmH/W6u/phkwJAzjjfMd/Od+YlQZ+NUZhdbkl+NuCI2
 S8gKC99E9HWKimbKo5teZI5rA5F1CymX2QASrD0BXmLAg4lwrhwwC4Bsj
 Lk1veIlsHZgIlpFjrgcr91EF4kWM0+K2x+OleXHqBahowjPJVdDnRgajs
 Sr5o9fKePyCqgqV/3nXcJI6JrNnvKq7MH8M10k4cNZYSMJQLISN1fobQ3
 fF+am1O4Aww8VXFVAucwERzaDZ8uLDhMVvPJ1x7OsjMe/rCwLLfEQ3m/f
 lEVE6LCrJ6XzQtzY15Uv3zgrqmZZCXjED43bIx3x49PbXgZaBPKnfCIlE
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aBCcF5PH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 2/6] igb: Introduce
 igb_xdp_is_enabled()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBLdXJ0IEth
bnplbmJhY2gNCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDE4LCAyMDI0IDE6NDAgQU0NCj4gVG86
IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBEYXZp
ZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1h
emV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8g
QWJlbmkNCj4gPHBhYmVuaUByZWRoYXQuY29tPjsgQWxleGVpIFN0YXJvdm9pdG92IDxhc3RAa2Vy
bmVsLm9yZz47IERhbmllbA0KPiBCb3JrbWFubiA8ZGFuaWVsQGlvZ2VhcmJveC5uZXQ+OyBKZXNw
ZXIgRGFuZ2FhcmQgQnJvdWVyDQo+IDxoYXdrQGtlcm5lbC5vcmc+OyBKb2huIEZhc3RhYmVuZCA8
am9obi5mYXN0YWJlbmRAZ21haWwuY29tPjsgUmljaGFyZA0KPiBDb2NocmFuIDxyaWNoYXJkY29j
aHJhbkBnbWFpbC5jb20+OyBTcmlyYW0gWWFnbmFyYW1hbg0KPiA8c3JpcmFtLnlhZ25hcmFtYW5A
ZXJpY3Nzb24uY29tPjsgQmVuamFtaW4gU3RlaW5rZQ0KPiA8YmVuamFtaW4uc3RlaW5rZUB3b2tz
LWF1ZGlvLmNvbT47IFNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3INCj4gPGJpZ2Vhc3lAbGludXRy
b25peC5kZT47IEZpamFsa293c2tpLCBNYWNpZWogPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5j
b20+Ow0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZzsNCj4gYnBmQHZnZXIua2VybmVsLm9yZzsgU3JpcmFtIFlhZ25hcmFtYW4gPHNyaXJh
bS55YWduYXJhbWFuQGVzdC50ZWNoPjsNCj4gS3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9u
aXguZGU+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2OSAy
LzZdIGlnYjogSW50cm9kdWNlDQo+IGlnYl94ZHBfaXNfZW5hYmxlZCgpDQo+IA0KPiBGcm9tOiBT
cmlyYW0gWWFnbmFyYW1hbiA8c3JpcmFtLnlhZ25hcmFtYW5AZXN0LnRlY2g+DQo+IA0KPiBJbnRy
b2R1Y2UgaWdiX3hkcF9pc19lbmFibGVkKCkgdG8gY2hlY2sgaWYgYW4gWERQIHByb2dyYW0gaXMg
YXNzaWduZWQgdG8gdGhlDQo+IGRldmljZS4gVXNlIHRoYXQgd2hlcmV2ZXIgeGRwX3Byb2cgaXMg
cmVhZCBhbmQgZXZhbHVhdGVkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU3JpcmFtIFlhZ25hcmFt
YW4gPHNyaXJhbS55YWduYXJhbWFuQGVzdC50ZWNoPg0KPiBbS3VydDogU3BsaXQgcGF0Y2hlcyBh
bmQgdXNlIFJFQURfT05DRSgpXQ0KPiBTaWduZWQtb2ZmLWJ5OiBLdXJ0IEthbnplbmJhY2ggPGt1
cnRAbGludXRyb25peC5kZT4NCj4gQWNrZWQtYnk6IE1hY2llaiBGaWphbGtvd3NraSA8bWFjaWVq
LmZpamFsa293c2tpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvaWdiLmggICAgICB8IDUgKysrKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfbWFpbi5jIHwgOCArKysrKy0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCg0KVGVzdGVkLWJ5OiBHZW9yZ2UgS3Vy
dXZpbmFrdW5uZWwgPGdlb3JnZS5rdXJ1dmluYWt1bm5lbEBpbnRlbC5jb20+DQo=
