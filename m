Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DA2B32E14
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Aug 2025 10:00:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 509AA61722;
	Sun, 24 Aug 2025 08:00:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGVs4RNKaEFv; Sun, 24 Aug 2025 08:00:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92DC161726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756022403;
	bh=EuqQ8T9wnBnsXmEj3T8iBeppHiK77KNGuE1BA8yvgJo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IPYRxlczeHOy8IBjCIvSH//uFVAZoKUf8bhjLbOnnNDisVm2yTndSHoUI6FZFJ1yB
	 oT0soh6npDg7ixDHuJinNvZma+1vFrBncl+69xW2jFZFT+pPVz0WGpVkynhI+jVHL4
	 W+x/zgja5/u9snORxueAB1ADB1qw7rMWXu1NMttg8ViC7tRLu041I/Gr5DCEkqELgD
	 bsGOv3EJqqGS3svDcLm21Q7OYxKAD6Yx7/jK8qeFv/Lta4n0+Pn0gITeDaltNpqYVz
	 KlsUL3Wz0mDB/2FEThrc6+Fj4auvDloKtvaHE8wHJVU5QqzT55BhsRahWr/nEL4UAM
	 lfoJZKCytp1wQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92DC161726;
	Sun, 24 Aug 2025 08:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 92D4019C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 08:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76A1480EB0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 08:00:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVa_eJ7reu_F for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Aug 2025 08:00:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D93083FEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D93083FEA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D93083FEA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 08:00:00 +0000 (UTC)
X-CSE-ConnectionGUID: vb2+r4LTRrS2SKQl05OlgQ==
X-CSE-MsgGUID: enHFUXwET/WLJ/FRLhtpxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="75718734"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="75718734"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 01:00:00 -0700
X-CSE-ConnectionGUID: iJYyRk64SA+JZH8PKqQd6A==
X-CSE-MsgGUID: bMpc8Id1TYiai84rUFLd0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="174343963"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 01:00:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 00:59:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 24 Aug 2025 00:59:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.81)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 00:59:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A4q2SZoqVW61mCDcc1YzfQTzrdDqD47+9ryYar7nVL64XdD1zPFHNFSWmpZIwcxwntKOsYj/4WSKQuzMqRiwg7Q4zGMnTs3FMgGsnFF3TKcyoaRL6QbYXfzSWFGyutLe5DCzhUQYsZ9IfwzX96orAGxRshqNr1p4Baow7jIY+SUZT2feCeIxptztpDORoU0NP4W5+J0wqEvnUHOpdJ6Itt9UuBMKkoUG5EwfKKp9eLd6Ux30e1IXhntXFbKJPPOoGpqXcQH0dJBFE9G6tHGhI5NYhxzkiJr2Bjyd6yPr83WSgpvLEvw5KZRxFHbTpBfkSxhkvXimlyfxMhZoVyYTSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EuqQ8T9wnBnsXmEj3T8iBeppHiK77KNGuE1BA8yvgJo=;
 b=rHrooil9tPJUSdP1oWbsR4vNxRVIA+DJBPn62CNY8aXBl/DCqJg0uHPX/Hy31/y2i1gJQxQGiOndlyL+7DRMMTBhBstApSXc/tTXeT7+SPUMyt28Z1Nw86n4JVI0knw4bJR48GQgZ+8ulXss8SsvdvGYqiQR+v2vriNQJSvJrQ8VwpeUsH4KluAWAsle+fh8YWbu8ONgarkxexI3zLSdafx+9rgmDxoBqcdUJ6Cp0MYWrCDhNF6SkTTz9dKW+/b7/qDdTifYt39/nLudt07XkN6l81EaGrP2gd/WfPjL6mz5Vz7SR28IFe2LHFXvwINRa3cibZf7sHDtvMjni4A3Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB6378.namprd11.prod.outlook.com (2603:10b6:510:1fa::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Sun, 24 Aug
 2025 07:59:54 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9052.014; Sun, 24 Aug 2025
 07:59:48 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Temerkhanov, Sergey"
 <sergey.temerkhanov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: use fixed adapter index
 for E825C embedded devices
Thread-Index: AQHcAzOSdYJTTE/uzEaqzzBdTsRuKrRu4s7A
Date: Sun, 24 Aug 2025 07:59:48 +0000
Message-ID: <IA1PR11MB6241B678B2620036E65AF4188B3FA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
In-Reply-To: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB6378:EE_
x-ms-office365-filtering-correlation-id: 161e35a8-ada5-49df-5fcb-08dde2e432c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|921020|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?T29LVXJFUnNXQVc3OWNTN2diT1drajNXZTBsNUtUaVFxL244anlLMGl1NXlP?=
 =?utf-8?B?WDhNeHMwTzAyd0lhZ1ErRFFDOVM3QzRod3J0VEVESE85ZVNBb3BMTmVFMUNn?=
 =?utf-8?B?M2FXNTRxblZhZ3RObnZNdk1IK3dxTXB5OGtYbDdoaWRMTGVLNzUzYWs5VU01?=
 =?utf-8?B?aGxJMUt2VTNhZUllQlNHUmhQWm1sQkVvcUlweTFrTXp0M041MU9jcVFkVTU4?=
 =?utf-8?B?azBWUWtHZ28wR1B4N1AyZEh4Mm1NdmExcTBRYUZiRmtTTDBNQ1hMWklrQUQr?=
 =?utf-8?B?a0ZDVE1pTmJXUWhFTTdDdVpGUUpoOW9Md3JJN3htcnJUdmdQbHpmODZxQmVz?=
 =?utf-8?B?K0xxUjFOdm8rdlJHS0M3Uy9tUklwV21FcXdnZXg4RFFOTFJBbDlqTlhqY1Bh?=
 =?utf-8?B?R2xveEdrZ3FjUUo2STFYa2lqQmRoL1haTEQ4NmYweXJSTFFhVTdFY09SQzBN?=
 =?utf-8?B?T05TSk1TTVc5L0pZRkRoSkpTbjUvdklqOWh6Mkd4aFZVRUh5NXNkbDI1R0xP?=
 =?utf-8?B?YlhsVnlpRERaOENwcFNMK1hBQk1odjg5R2E4YUFYU1BKTTcvUW5MSFQxVzNB?=
 =?utf-8?B?emlOSVhBWk14cXVBMFJSREFiWDZxeWIwUldRZTBBeUxuZGZCYzVDVXl0K3RM?=
 =?utf-8?B?anhXRE5vSm5XQmRaMnFNMVhNUDYvZy9HK1o0T2RjT3dMT1hDMkpyWEZDazB1?=
 =?utf-8?B?SE1oY283NGFJcklpTDZ4VERoeXVua1l3dlV2L1FzSnVoSW0zWUpES0JvdlFZ?=
 =?utf-8?B?WnpCNzV0Q21uR0tFSFd3S2NIUWpESGhEZmJ2aVdmYSs0YXdZYmFZMnBncDdT?=
 =?utf-8?B?YWhpQjYzemFrckQ0aVBNRFdQV21NU1JZdExTeUJ4WTN2QW5lclRVMHFYNElw?=
 =?utf-8?B?UjdDUEp5U3dNTmVGbjY3Z0EyU1dKZEdHdHJJL1lDdE00a2xDcUlKVkNQN1o4?=
 =?utf-8?B?L3lQcVZIRXhFK3pxdE5sZkxVS1JGNzlPT25HRVd4WS9zcTRSSU55UUlhRTgw?=
 =?utf-8?B?aE1uSVl3NUtqTDNJT3A1RWNSZjA3cEdiZEpCN3pzdGNFWUkzbS9vem9qMVpU?=
 =?utf-8?B?d3hkRU1FcUh6cWlUSEFqNktDS0NiYlpONGNsU3VoL3BQbzVINUljOExIckJ2?=
 =?utf-8?B?YVlubnR0VmFpMTNENytaNTBRU0M5MHN4N3loeFNnZ25IMXZRQjNWc2grbThK?=
 =?utf-8?B?UzJyQ3JNNmdEREU4QjNtNlpxMUk2TUoyd1Q5aTNyVFpqZXdGWURWd2dSaHZH?=
 =?utf-8?B?RlF5T1FKSnVnTi9nN20xLzBoVkFLbFE1MzV0ZjY1c0U0eWJrWTZBUy84a1JI?=
 =?utf-8?B?bGtIWko2NjYvMjBQcEpwaVZxV3AwRCs5TWVYd3IyY29YMEJOSEFwUHIrQnRY?=
 =?utf-8?B?MjM5bjhucUdwTnFmTk5VR2o2L3lJbG1hcFc4aXNSemJCYll4b0hqSk9YS1Ew?=
 =?utf-8?B?QXhxVG1MRC9WS0Y2K0l3RjlSc05qTndDZ0RUOUJTZjlGbktveCszaVFhUTFN?=
 =?utf-8?B?aTY5NzYvVm1IRG9Qb1FmNm9nNmRNYkpqdXJmSnlYTkd0aFRUWCs2WXlqRjNI?=
 =?utf-8?B?aDlGR3lXMzM1VlFnNFF3Z0Y3Y2QxQ2V1NENsYnpWTHYxTmF5UmV4bzN1bkF0?=
 =?utf-8?B?NUkyVXdKMkczdnhRZmVOSHJMSFlNd2Rha3JKMzdUd29NQzBUcWhZWGE4d2pR?=
 =?utf-8?B?MGpDZ3F4T2VPZWx5VVdEeU9XNFJkTE5wdklUQUE0dVN1U21KVjc1M2Nub2Vt?=
 =?utf-8?B?Q0xBSG4yekd0T21qSHlGZjI4RVhoZGZoQVJEdTBtTHNNOUZaQ1J1UENoT252?=
 =?utf-8?B?QldRUTMzVjg0blZ1aDNPa2NkOW1VNy9FNWh0SEJRUnFEMitDTkRhbVloRTdq?=
 =?utf-8?B?Yzd1STVhT284dEEzV3l0bUNTOFlRaUZRTXZnQlNaMTNjUjVBTFV0MjU2aEtE?=
 =?utf-8?B?a0d6amsvMXhaZWEzSlJhTGgybC9GSHJsTjRkMmc4cng3cTI2SC83U1hPb2Zo?=
 =?utf-8?Q?NrRV7YJa6TIYCFYrQQzb9DMZapyQSg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T3lYcXIyais0dFFKY200aElub2s1bnNvWXZSMUR0QUFrZzFBOGd2Ukc3NzBk?=
 =?utf-8?B?Rk9VazhRZGVWZFhlV3ptU0llRTJUdVYwcnlkVDltTDBXbzZZbENZRGVSZGMv?=
 =?utf-8?B?QVhXUCs2TnhYOGU5K3gvTUhCT0JCOUxRSzJleDl0a1RMelBPU1Y2WU82RXNE?=
 =?utf-8?B?Tkx2bzlyb3dYTEZZN1lwaktiNGRkR0hPcWFPbDNhTjk4V0VkaWMyUjQ0WmlR?=
 =?utf-8?B?UFpZT0pnVVplajlteUpGcFBveE1QRWhIVGppRnF3RWNTWFdKNG9TNXZJUmRD?=
 =?utf-8?B?MWRZVUhLQ0k3aXY4SVYxSmx3QkFVclF0OFlTR0QrMWFXTHNXLzBQTkdmMk9n?=
 =?utf-8?B?Y2h4bGRkSGIrZ09kYlhIWUlhaHAzaWhvS2c3WU4rWjdOb0wzM0lQZnJZcEVq?=
 =?utf-8?B?YndtdFdlSGp6T09sTlNwNFdidmY1eFJFSUZzNDV2eDZJUTRXd0JvS3RvV2U4?=
 =?utf-8?B?RnIzeVFSZUFSSEFJa0J5V28xSzNVVnBkV2VoL1hXNFhNeXZtV0FLV2luTUFG?=
 =?utf-8?B?Q1ZQSTB2QkJPdnRORDJoa05jODVsOXJkVWZtcHlTOTVhckVUaGcyTE1TY0Z1?=
 =?utf-8?B?UTNQUWgyZm9McnNzYTBSNkcwcVZEdjdMek5mbExHREJQZmxIRkVUeE1McmV4?=
 =?utf-8?B?U2NhV3BDeVdselY4REFNUjhKdTQwV1VmMnBVQmZmckp1TzlBRHpHVnpuR0xZ?=
 =?utf-8?B?b1VmTk82bmJRdXFxVG5KVisrVjBEUllpQXFQU1JkWkw2TW9LUVBtYklpaVJ1?=
 =?utf-8?B?L21tZVdEM3R3b08zc2VVNGhYYnplQmFDWDROVUpvT1JhenplVjVtRjdXVmVy?=
 =?utf-8?B?cjhJT0w0c1o1Mk5pTDNrRFJZdE9KSWFnWndRZDU5cnVnSGlYc01KNVMzUDhX?=
 =?utf-8?B?WXBRbkVlK1lCYk9Ld25vdUdOeTRhNE5KUyttd3liWUVaN3Y3dzdOYldCK1Zw?=
 =?utf-8?B?bmxRcThIQ3Nxdi90TXRTbWhLWEpZeDlHcCsvUVpzQXlJYlFqVXNlL1duOU9H?=
 =?utf-8?B?cGNvV04wWktlVjY1QnhGejZoZVJUT25GV053Q29zajNhM3UwNHE4SkxYUXRk?=
 =?utf-8?B?OU1LMmFNbVd6aFR4ejl1ZURhN1hXRHdiTnAweGNTY09nQUNMTDV0dEJCeGY2?=
 =?utf-8?B?eHRmSkV0bzRuYnN6TVhCempkSDVvS1k2ODEvT3c1ZG1yL3lxZUxMRmczbnV3?=
 =?utf-8?B?L3ZlMjh5RlU4ZTV6TW5lZzhqUUFkdnlsSHk5Znk0bEZwbFdBVFlnbFBCNEFL?=
 =?utf-8?B?NzhXNHU0VkVqODg4UGJKb2VHQUVMZ0tYWjRtWHdYd1RGS2ZGQTh4LzlaNmh4?=
 =?utf-8?B?RjlGRnp3ZEsvRmkxRTZ0R0ttRjk0RDRLRmVqZERkSGhpSVQvc28yVG1DQWZj?=
 =?utf-8?B?cG9xVXRodjkwOFJaNkkyZTZFVnBDTHJzbEZ6elEzdUU0MFRMUG16aXZ2R21n?=
 =?utf-8?B?SUZkVk9uc3R0bVNxaUc3UG1hc2lSTnY5WU1WVDRvYTNNWWVrSXVQUEZlUEh1?=
 =?utf-8?B?NXFlSnpZY3RNT0Y4VUMwMDc1NmdBZklnN28xdmxpblRZU1NlckU4VEF3NG1l?=
 =?utf-8?B?RTQxa3Z0QXVqb3hkMCs2NnRuQzhEWDhqT3JVNmpra2h6aTZHTVBuYWM1SktM?=
 =?utf-8?B?SjBSbVozWS9FbEJKNkNzSTloQW05alAzSUZmMFRucXRuT0t1NnpBcDVHbjZn?=
 =?utf-8?B?WjhmU3RYRFptQnA4L0ZnTTNzNU1qeUt0NGtqMElrVEVjVXpjbmVoMjhoODFn?=
 =?utf-8?B?UHlQZGNYcHdoSzIrSVBDQVNaSWIrcnlheUpuNlBWZ2NxNk9IRE1yblVPS2pn?=
 =?utf-8?B?cm5wTTA3bDRIcllSVDBxQk11TlRLN0pnZ2UxYmRtZ0hUMGlEUzdZRHdjZHZp?=
 =?utf-8?B?RHJsYWFCUlZvTFVVS095SE5aYzFUNmduUmFucFNkTHMzQzBxUXgybVN4YUxv?=
 =?utf-8?B?RkVWSlZvTE9DVTgwWXNKc3VYMUV5Sk9pZWRhOGQrbGp1RGZseGVIWW9tZER5?=
 =?utf-8?B?SWpzcmg4Zis5UmpUYmYwbnM1emRaMjZiOHMrUVpHNDQ2dUt2WmtvMlZkVUha?=
 =?utf-8?B?RGt1L3ZMZy9PN3Z4ejlVWG5vRGw2d0dOUFd0WUJPd2psNkRhbnNGa1RMSHJh?=
 =?utf-8?Q?PeysWvk/f1nyncOm2QV9UQTl8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 161e35a8-ada5-49df-5fcb-08dde2e432c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2025 07:59:48.7708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oQfgBTuG1x/QBHp+aE3g5mWk6/G8RryYOVAep3iv7VejiYs1stQMa2xeX4ZDJt+D6uzU9ZY+eLGsCY1sxxw5HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6378
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756022401; x=1787558401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EuqQ8T9wnBnsXmEj3T8iBeppHiK77KNGuE1BA8yvgJo=;
 b=jeVJRKvu1ijZ8cuBf/qBY+0nG3pJBUNio8yJoaBI12jdoVUL9ndKyWac
 8Lja2J//luLuWd9K9fjz9cmi0jdE1JWDm2gmp40qHMHZsmBd7Pr+7v8v2
 IK/mwNfEbBogY6dJOw4VivlFEHM24+WRq1KNlb3quoegSfOD5KJV10pRM
 ry5bwkQenbooYdVTq4uB8ecsrJ1uTR09whlBc3F+2nlbVkqerxBHQRTdM
 iuWHkttATO341JW/B/rCmyUC8XOPGVc+OYFMn/XnlsVxJY44sHT/pAkkf
 ywmmy8sKx/GVJX7/kKCdGGPDwfLNb0XtXn6s/LwPw5UuFA1KpsR8welOF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jeVJRKvu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: use fixed adapter index
 for E825C embedded devices
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgQXVndXN0IDIwMjUgMDM6NTcNCj4gVG86IFRlbWVya2hhbm92LCBTZXJn
ZXkgPHNlcmdleS50ZW1lcmtoYW5vdkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3IDxw
cnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgTml0a2EsIEdyemVnb3J6IDxncnplZ29yei5u
aXRrYUBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBJbnRlbCBXaXJlZCBMQU4g
PGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgTmd1eWVuLCBBbnRob255IEwgPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5l
LmtlbGxlckBpbnRlbC5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wt
bmV0XSBpY2U6IHVzZSBmaXhlZCBhZGFwdGVyIGluZGV4IGZvciBFODI1QyBlbWJlZGRlZCBkZXZp
Y2VzDQo+DQo+IFRoZSBpY2VfYWRhcHRlciBzdHJ1Y3R1cmUgaXMgdXNlZCBieSB0aGUgaWNlIGRy
aXZlciB0byBjb25uZWN0IG11bHRpcGxlIHBoeXNpY2FsIGZ1bmN0aW9ucyBvZiBhIGRldmljZSBp
biBzb2Z0d2FyZS4gSXQgd2FzIGludHJvZHVjZWQgYnkgY29tbWl0IDBlMmJkZGY5ZTVmOSAoImlj
ZTogYWRkIGljZV9hZGFwdGVyIGZvciBzaGFyZWQgZGF0YSBhY3Jvc3MgUEZzIG9uIHRoZSBzYW1l
IE5JQyIpIGFuZCBpcyBwcmltYXJpbHkgdXNlZCBmb3IgUFRQIHN1cHBvcnQsIGFzIHdlbGwgYXMg
Zm9yIGhhbmRsaW5nIGNlcnRhaW4gY3Jvc3MtUEYgc3luY2hyb25pemF0aW9uLg0KPg0KPiBUaGUg
b3JpZ2luYWwgZGVzaWduIG9mIGljZV9hZGFwdGVyIHVzZWQgUENJIGFkZHJlc3MgaW5mb3JtYXRp
b24gdG8gZGV0ZXJtaW5lIHdoaWNoIGRldmljZXMgc2hvdWxkIGJlIGNvbm5lY3RlZC4gVGhpcyB3
YXMgZXh0ZW5kZWQgdG8gc3VwcG9ydCBFODI1QyBkZXZpY2VzIGJ5IGNvbW1pdCBmZGI3ZjU0NzAw
YjEgKCJpY2U6IEluaXRpYWwgc3VwcG9ydCBmb3IgRTgyNUMgaGFyZHdhcmUgaW4gaWNlX2FkYXB0
ZXIiKSwgd2hpY2ggdXNlZCB0aGUgZGV2aWNlIElEIGZvciBFODI1QyBkZXZpY2VzIGluc3RlYWQg
b2YgdGhlIFBDSSBhZGRyZXNzLg0KPg0KPiBMYXRlciwgY29tbWl0IDAwOTNjYjE5NGE3NSAoImlj
ZTogdXNlIERTTiBpbnN0ZWFkIG9mIFBDSSBCREYgZm9yIGljZV9hZGFwdGVyIGluZGV4IikgcmVw
bGFjZWQgdGhlIHVzZSBvZiBCdXMvRGV2aWNlL0Z1bmN0aW9uIGFkZHJlc3Npbmcgd2l0aCB1c2Ug
b2YgdGhlIGRldmljZSBzZXJpYWwgbnVtYmVyLg0KPg0KPiBFODI1QyBkZXZpY2VzIG1heSBhcHBl
YXIgaW4gIkR1YWwgTkFDIiBjb25maWd1cmF0aW9uIHdoaWNoIGhhcyBtdWx0aXBsZSBwaHlzaWNh
bCBkZXZpY2VzIHRpZWQgdG8gdGhlIHNhbWUgY2xvY2sgc291cmNlIGFuZCB3aGljaCBuZWVkIHRv
IHVzZSB0aGUgc2FtZSBpY2VfYWRhcHRlci4gVW5mb3J0dW5hdGVseSwgZWFjaCAiTkFDIiBoYXMg
aXRzIG93biBOVk0gd2hpY2ggaGFzIGl0cyBvd24gdW5pcXVlIERldmljZSBTZXJpYWwgTnVtYmVy
LiBUaHVzLCB1c2Ugb2YgdGhlIERTTiBmb3IgY29ubmVjdGluZyBpY2VfYWRhcHRlciBkb2VzIG5v
dCB3b3JrIHByb3Blcmx5LiBJdCAid29ya2VkIiBpbiB0aGUgcHJlLXByb2R1Y3Rpb24gc3lzdGVt
cyBiZWNhdXNlIHRoZSBEU04gd2FzIG5vdCBpbml0aWFsaXplZCBvbiB0aGUgdGVzdCBOVk1zIGFu
ZCBhbGwgdGhlIE5BQ3MgaGFkIHRoZSBzYW1lIHplcm8nZCBzZXJpYWwgbnVtYmVyLg0KPg0KPiBT
aW5jZSB3ZSBjYW5ub3QgcmVseSBvbiB0aGUgRFNOLCBsZXRzIGZhbGwgYmFjayB0byB0aGUgbG9n
aWMgaW4gdGhlIG9yaWdpbmFsIEU4MjVDIHN1cHBvcnQgd2hpY2ggdXNlZCB0aGUgZGV2aWNlIElE
LiBUaGlzIGlzIHNhZmUgZm9yIEU4MjVDIG9ubHkgYmVjYXVzZSBvZiB0aGUgZW1iZWRkZWQgbmF0
dXJlIG9mIHRoZSBkZXZpY2UuIEl0IGlzbid0IGEgZGlzY3JlZXQgYWRhcHRlciB0aGF0IGNhbiBi
ZSBwbHVnZ2VkIGludG8gYW4gYXJiaXRyYXJ5IHN5c3RlbS4gQWxsIEU4MjVDIGRldmljZXMgb24g
YSBnaXZlbiBzeXN0ZW0gYXJlIGNvbm5lY3RlZCB0byB0aGUgc2FtZSBjbG9jayBzb3VyY2UgYW5k
IG5lZWQgdG8gYmUgY29uZmlndXJlZCB0aHJvdWdoIHRoZSBzYW1lIFBUUCBjbG9jay4NCj4NCj4g
VG8gbWFrZSB0aGlzIHNlcGFyYXRpb24gY2xlYXIsIHJlc2VydmUgYml0IDYzIG9mIHRoZSA2NC1i
aXQgaW5kZXggdmFsdWVzIGFzIGEgImZpeGVkIGluZGV4IiBpbmRpY2F0b3IuIEFsd2F5cyBjbGVh
ciB0aGlzIGJpdCB3aGVuIHVzaW5nIHRoZSBkZXZpY2Ugc2VyaWFsIG51bWJlciBhcyBhbiBpbmRl
eC4NCj4NCj4gRm9yIEU4MjVDLCB1c2UgYSBmaXhlZCB2YWx1ZSBkZWZpbmVkIGFzIHRoZSAweDU3
OUMgRTgyNUMgYmFja3BsYW5lIGRldmljZSBJRCBiaXR3aXNlIE9SZWQgd2l0aCB0aGUgZml4ZWQg
aW5kZXggaW5kaWNhdG9yLiBUaGlzIGlzIHNsaWdodGx5IGRpZmZlcmVudCB0aGFuIHRoZSBvcmln
aW5hbCBsb2dpYyBvZiBqdXN0IHVzaW5nIHRoZSBkZXZpY2UgSUQgZGlyZWN0bHkuIERvaW5nIHNv
IHByZXZlbnRzIGEgcG90ZW50aWFsIGlzc3VlIHdpdGggc3lzdGVtcyB3aGVyZSBvbmx5IG9uZSBv
ZiB0aGUgTkFDcyBpcyBjb25uZWN0ZWQgd2l0aCBhbiBleHRlcm5hbCBQSFkgb3ZlciBTR01JSS4g
SW4gdGhhdCBjYXNlLCBvbmUgTkFDIHdvdWxkIGhhdmUgdGhlIEU4MjVDX1NHTUlJIGRldmljZSBJ
RCwgYnV0IHRoZSBvdGhlciB3b3VsZCBub3QuDQo+DQo+IFNlcGFyYXRlIHRoZSBkZXRlcm1pbmF0
aW9uIG9mIHRoZSBmdWxsIDY0LWJpdCBpbmRleCBmcm9tIHRoZSAzMi1iaXQgcmVkdWN0aW9uIGxv
Z2ljLiBQcm92aWRlIGJvdGggaWNlX2FkYXB0ZXJfaW5kZXgoKSBhbmQgYSB3cmFwcGluZw0KaWNl
X2FkYXB0ZXJfeGFfaW5kZXgoKSB3aGljaCBoYW5kbGVzIHJlZHVjaW5nIHRoZSBpbmRleCB0byBh
IGxvbmcgb24gMzItYml0IHN5c3RlbXMuIEFzIGJlZm9yZSwgY2FjaGUgdGhlIGZ1bGwgaW5kZXgg
dmFsdWUgaW4gdGhlIGFkYXB0ZXIgc3RydWN0dXJlIHRvIHdhcm4gYWJvdXQgY29sbGlzaW9ucy4N
Cj4NCj4gVGhpcyBmaXhlcyBpc3N1ZXMgd2l0aCBFODI1QyBub3QgaW5pdGlhbGl6aW5nIFBUUCBv
biBib3RoIE5BQ3MsIGR1ZSB0byBmYWlsdXJlIHRvIGNvbm5lY3QgdGhlIGFwcHJvcHJpYXRlIGRl
dmljZXMgdG8gdGhlIHNhbWUgaWNlX2FkYXB0ZXIuDQo+DQo+IEZpeGVzOiAwMDkzY2IxOTRhNzUg
KCJpY2U6IHVzZSBEU04gaW5zdGVhZCBvZiBQQ0kgQkRGIGZvciBpY2VfYWRhcHRlciBpbmRleCIp
DQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29t
Pg0KPiBSZXZpZXdlZC1ieTogR3J6ZWdvcnogTml0a2EgPGdyemVnb3J6Lm5pdGthQGludGVsLmNv
bT4NCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9u
b3ZAaW50ZWwuY29tPg0KPiAtLS0NCj4gSXQgdHVybnMgb3V0IHRoYXQgdXNpbmcgdGhlIGRldmlj
ZSBzZXJpYWwgbnVtYmVyIGRvZXMgbm90IHdvcmsgZm9yIEU4MjVDIGJvYXJkcy4gSSBzcG9rZSB3
aXRoIHRoZSB0ZWFtIGludm9sdmVkIGluIHRoZSBOVk0gaW1hZ2UgZ2VuZXJhdGlvbiwgYW5kIGl0
cyBub3QgZmVhc2libGUgYXQgdGhpcyBwb2ludCB0byBjaGFuZ2UgdGhlIHByb2Nlc3MgZm9yIGdl
bmVyYXRpbmcgdGhlIE5WTXMgZm9yIEU4MjVDLiBXZSdyZSBzdHVjayB3aXRoIHRoZSBjYXNlIHRo
YXQgRTgyNUMgRHVhbC1OQUMgYm9hcmRzIHdpbGwgaGF2ZSBpbmRlcGVuZGVudCBEU04gZm9yIGVh
Y2ggTkFDLg0KPg0KPiBBcyBmYXIgYXMgSSBjYW4gdGVsbCwgdGhlIG9ubHkgc3VpdGFibGUgZmFs
bGJhY2sgaXMgdG8gcmVseSBvbiB0aGUgZW1iZWRkZWQgbmF0dXJlIG9mIHRoZSBFODI1QyBkZXZp
Y2UuIFdlIGtub3cgdGhhdCBhbGwgY3VycmVudCBzeXN0ZW1zIHdpdGggRTgyNUMgbmVlZCB0byBo
YXZlIHRoZWlyIGljZV9hZGFwdGVyIGNvbm5lY3RlZC4gVGhlcmUgYXJlIG5vIHBsYW5zIHRvIGJ1
aWxkIHBsYXRmb3JtcyB3aXRoIG11bHRpcGxlIEU4MjVDIGRldmljZXMuIFRoZSBFODI1QyB2YXJp
YW50IGlzIG5vdCBhIGRpc2NyZWV0IGJvYXJkLCBzbyBjdXN0b21lcnMgY2FuJ3Qgc2ltcGx5IHBs
dWcgYW4gZXh0cmEgaW4uIFRodXMsIHRoaXMgY2hhbmdlIHJldmVydHMgYmFjayB0byB1c2luZyB0
aGUgZGV2aWNlIElEIGZvciBFODI1QyBzeXN0ZW1zLCBpbnN0ZWFkIG9mIHRoZSBzZXJpYWwgbnVt
YmVyLg0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZGFwdGVy
LmggfCAgNCArLS0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRhcHRlci5j
IHwgNDkgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDQw
IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEg
UyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
