Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bpg3A9orRmoxLAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:14:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D2A6F51EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:13:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Hh1eoI0y;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 176E0413A9;
	Thu,  2 Jul 2026 09:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JzKEcKsdo1RM; Thu,  2 Jul 2026 09:13:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38618413AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782983636;
	bh=EjXYUretDWzvSj04i4hvx22pY+5PXNLhIZ2HE6MeqpY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hh1eoI0ylS1Jd4p565SAVIqTWy/89e9pu4CMOvv+cmwPnWgNThlp9kc7Fne/fqhbV
	 3B7wP+cCZgw7fDMmq/PvtPwzh+iNQMOMJ1aOMdnveyifR68FUgxQvr51ngH0s8VVWX
	 AtC//9hnqBztB0hd2+IFjQT7kwAW3iti/TN5C/YS3tSJHzcKSmz/ocQmjTuCykCijG
	 3BF1DPNvRX3AMWc2Ifu+DElB3FeyYkYluy5DQsB5GmvDSbDS+aekvmEoJXZ2jjJi65
	 MplNiiB56u0HWGh87VMOT+VqZtFg3Z8JP8xXo/WZU8nMjgQze8HZrTFHR3rAtdsmts
	 6WdR1IXoo39OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38618413AC;
	Thu,  2 Jul 2026 09:13:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 272494B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 054FB401F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:13:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9x2Trcmiywu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:13:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EAC5340D62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAC5340D62
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EAC5340D62
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:13:52 +0000 (UTC)
X-CSE-ConnectionGUID: kYzQevFVTiyUaQ2oaqGxHw==
X-CSE-MsgGUID: DsCSo2EeTumGXrDbB96ZRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83781624"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83781624"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:13:50 -0700
X-CSE-ConnectionGUID: yg3DriYJTl2qdp96nTxs7w==
X-CSE-MsgGUID: gZ0uZFJVQNSU4aM4QAxYWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="252365947"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:13:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 02:13:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 02:13:49 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.16) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 02:13:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GLvBnipc6yPMxdOUFbTrIt3P4qElXB0SyxRlMcOkmFjMofi3OvLTfUM/h7H2czS8IPy9K9OmhI5sg+9wYuTAn59Kj8rBnvaI70z5X9gK2J7iHMOCSLzv89FD1IDzC0mqroqG+Y2tjetHZooGB0JYR9AXr8xhVXA3sX705ZqPkitddw7wGncCVbngLsxBTC8EAr4eXobt95ENWcSgPwj00IjSiCVwLmSM8LUCDJZnxf+cyEnnbSvP8U5y907uvcSy9psIN5oj/canGBk+f09J53vwvC4ERg+IBerIUmjAKig0tADHFB5a1Dbjp7JpUKveUQxz4jLEB3oyiS4DE4AMkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjXYUretDWzvSj04i4hvx22pY+5PXNLhIZ2HE6MeqpY=;
 b=cfOZVlXbp2HDDNYEX3CzHDTSWv8SMLC7D68QPEr+5UBS7YRUD6FLYhzlAgv4qLt0AESzIuDaLTY1qd42KEH4ZLRHNu1dCNfS1bKajQOY4xa1hFQW5TYuKxJAk3yN4Se2L5ahto/d7yfqZ3wVOM3K1ss4ADBVGuUAzpVjr6Av9uhNOQ5Cjz/IOC+rObb8Yz314CD/CsK9UJ1sgw/fEHu7lL+/EcbUDcWrzJxYRh2oOpAUerL8Tjrge1s9UMpiX+ajON07pX/5SZVr9Y38usXvrmeNPo7c2EZD0vHO4u4tzb2x6DswwNhL+KcTXHoRsuOWMyuFcJCBqTyROnOX+mjWTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by CH3PR11MB8342.namprd11.prod.outlook.com (2603:10b6:610:167::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 09:13:40 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0181.009; Thu, 2 Jul 2026
 09:13:40 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: E610: force phy
 link to get down when interface is down
Thread-Index: AQHdCVBnGdjXfUlup0SOQP3Fm0VJGrZYlzSAgAFbxEA=
Date: Thu, 2 Jul 2026 09:13:40 +0000
Message-ID: <PH0PR11MB590229F9FCD8AAF8B4BB4F50F0F52@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260701113519.49859-1-jedrzej.jagielski@intel.com>
 <fb13640b-0171-457a-84c5-f6dbdd6d7471@molgen.mpg.de>
In-Reply-To: <fb13640b-0171-457a-84c5-f6dbdd6d7471@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|CH3PR11MB8342:EE_
x-ms-office365-filtering-correlation-id: 91ae6561-0555-48e6-e4d8-08ded81a34ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|38070700021|56012099006|11063799006|4143699003|18002099003|22082099003;
x-microsoft-antispam-message-info: 9Af65oBTWBPJ87xTIpiY0p6CGAPZum8L1wHcXOSABXGhK61jmdAuKyjgOPzgtfkkGEcQ5sI7dZ2GKFX2fyj1mxoV63BnDlcDUCHwT5zoSf+eFp90K17X2L03m9V0Fj40wQV728RXkkTfJkiXVo3Mn0O9hr3Ba5fZx6XVl3xuUVjiGgb6OrxfWdkjREvOJiZ6DVKNh9FFbu2yKIaDLrji2aTrWri5NRzsJoqESB00cmmzFq/Q7EjnolK7YcOmiQUaQNL894iLdgDdpx8nBIGzk/IeBD/C7RBlD9eIqg69JtQ4uXhWZNP9T6p6fkFQSwVU4Qv2rVLNjG6SXnUeHXYzah1vQAhjHUwHkBlgHonhW0LdmxNP4yBiuizxhlm8/U7ND9jGBH9Ejs9qYnV8+NAX186402ObDc4UaGBkNpfcCSLNlraVm1vc+Aff5ZYXFkrnwgCg81MYTTAU8/vGtxVDik8V8V2N5i6N1lnfCCY/pz5HI5Jz4MVMFvYJWXUFuz9rMGPuNeEhRxAxZXnOPYQ0o/FWWC1mzyIj/DHLgE0SSAbo7PBcpfE6k9J1ewCkGOvfTO7UkV4zLACG2G/fuC45t9K6ZjBUpMjAaVcA9SNKesSlzacfwC754ZeY/RDa4KyL1yT6m8YOgRSZEkIXZ8II9Y3gkUL5us0uUnW/riV2vJpUe+pI2Hk3IveLwjJqP/u/fE5ctHw2fUuC04zOvTBSQx94yMsoJL4XZdZWnL679y8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(38070700021)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qy9lUmxZTXFrTmhvcFF3c1BGeUtmY01UVmFqb2NGNk9zdlJNcHN4L1NUTHRH?=
 =?utf-8?B?YUlFRHNHaFY1Wnp1U0tBaXNock5XTFkzSUMrdS80TllrS1l2R1JrMUpkM3hZ?=
 =?utf-8?B?YzZlYVMweWdqNEpDaEhzZ21YODZWZ0pmbUhEZzN4b3NpcUc3Q2Y3clQzWkd5?=
 =?utf-8?B?bjRldnkxVXAwUGUyUHBVWWNRSGNVR01URFRKcnBOMEZUbkxkcm16ZVQ1WnpP?=
 =?utf-8?B?eG9sV0ZacUcwTmd4NFNxU0lXMmFjQ0ErMm1WamhCZHBoeGRuL1V4Z1hRRFNY?=
 =?utf-8?B?WUp5TjltMEwvNVltMFQ2eXJ1QTFHV1htTmxlZVVLdXUxV0pTRkMvbEhxbUtI?=
 =?utf-8?B?eVZ5TkI0dXgybE55MGpWUS9FQzZqekp3cFZISmYxd1pQcHZyVUhIQWIxbTRU?=
 =?utf-8?B?TDJCR1NCb1o4QjFBNlV2d1dVUDl1TEczalRKQkJobEJDRU14a3ZnbENUYWdY?=
 =?utf-8?B?bG1FZGZhczVWaGFyeFpmWk1BZUdVa3pITk9STmQ4S0ROUXQ1bHBjbEVCVm5s?=
 =?utf-8?B?dTMvTGx5cDR6TTNIVU1aZlBzd21kdVRUQmJYOEpmRDZoMSs5b1JMOGptMkJR?=
 =?utf-8?B?WVlZYWtxdWhCbjdZdTMzTkJFNWxURm9pTEx5TURpMlFmSHlUOU1YSDRBODF3?=
 =?utf-8?B?bWZULzEySlVKTmdwTEg4cjVzK2Q3RFJBR1BLV1R2c2p3OU9STlBwbC9aQ2dB?=
 =?utf-8?B?MHJOK2toaDgyaTRvTksrNXBkVURJRkg2M0U3OHlwSFM4ZVZoV0hMM0lEQmp3?=
 =?utf-8?B?VnRrNnNDNE5tS08zQ3BzM2p3anhucUU3bHlZZ0dIOFNwMDNvV0oxNGQrcGx1?=
 =?utf-8?B?VE0vVVYrZ01VR2dVVERiL0IwbDB3ZXk3RnoxTFFVdk1lL3pjLzhwMWw4SXhX?=
 =?utf-8?B?K0ViWU1MaWhkZlI0SllnS2pOY2FuOWsyYi9HOFFSaEFSVGJIY09wSjZFV0dM?=
 =?utf-8?B?N2FoUzB0Nk0vNUhvZTkvTEhxZXFYN3pCLzYxNlFMbjRrNzJKUjFNYjFuQ3Fw?=
 =?utf-8?B?elh1TVVQMHhQQUExTHVHYkhqVGZIb2lLbExGY1JyOSt6YUNJRklrU2NyaWJW?=
 =?utf-8?B?RXE2V1hrTE5lbEhZT0dzWmJVQ0YxRHQwb0w4a3BuVWdiWEFCdTZVZFhtbUJU?=
 =?utf-8?B?emhyMVlkcTNwZ1BXWE0wZkY2RE5HNE5sNHZFaEJVOXVvaktad2pETHE0Y2FT?=
 =?utf-8?B?M244Sy9VOEtvbEpaQlNEL09SQ0FrOVZSY3dsMlI2ejhjME94Y2x6TklFajFq?=
 =?utf-8?B?Rlk3MkJKZVduKzRsWklGeCtyVzRJdUdXSDdueVhnNkd4K3pNRml3cWRESlFR?=
 =?utf-8?B?Q1lVcjREdi8ySmhSNEQ3dHVwaU1xejg4U0xBN3I5SzRSYnMzVDFmSmlwdWxZ?=
 =?utf-8?B?TmtYNjZuRVBZOUQwSGh5R2liNksvSTk5SDFsOE9DdFpiMWVGQmVsUndtcnN2?=
 =?utf-8?B?Mm1iek5jY1hoVUR1a00wTFIxOExKVVR2cmMrU1Nla0xiQmY2eW9KY0tING1N?=
 =?utf-8?B?Vi9TOURMc2FZWDFVOTljc0laL05DUW9jSy9Lc3lEUGphZ3hOUmJRb3Z4c3pw?=
 =?utf-8?B?R1E5a3ZUejMxZWxFWUh4d2NhdVlpMW5MTmlvZnh2cGRSbUdNUUMyemZIZENY?=
 =?utf-8?B?NTZrUUJJVmJ2dklPSERwckpMMHJKSkJ4Vmg3VXRPS083eThQQmkxSUF5ZUY4?=
 =?utf-8?B?VWVtbWVwakp6T0d4SHZGWEsxTnZSRHVsYVdFLzNyeHk3T1dhbkl3NTRWeTlT?=
 =?utf-8?B?WUVMYk1QWGRZWXNqaThoV05tY3hBN3dTelowbW1oM3FyaVFXZHFjWkh6dU0x?=
 =?utf-8?B?SlBNSktBQXZEcUdoai9SV3psTEpLUFZWMjNEU3B2Y1VIQVRORlFZdUZYRjNJ?=
 =?utf-8?B?d2V0V0RjMXBmcW04K28yci9FNTRHR3Nac3NQalBWTjNaZ3lXSmNybFRmTWhW?=
 =?utf-8?B?NUtjclBQNkFhZFFpMUJDaFZSdlVXSzZwazFNOGlKZllldld6QTJRTyswSlpD?=
 =?utf-8?B?b2t3dlR3MXQrNlVXS0ZWWEFycHY4OC9mQ3Q3U1FDeFAzTzk0THhuSUlCMzBO?=
 =?utf-8?B?OTJIeURjYWpocWdOZWYzcEkxd3Rqa2dHT0VHV0t5cVJnSmp2RGJDVjRjYmR3?=
 =?utf-8?B?TENaaWFoU3V5MmFETjFsTk1kMXhoT3ptUEhXMnl4UklLUWxIcGlUL2NxWm1n?=
 =?utf-8?B?S0tqOEtqOXczVVBPclhBbDJma3lNd3JsSVFvQm1YU2F1bGk5Nk5CVTB0Wjlp?=
 =?utf-8?B?ZHJEMkdpdDBmTDNKVFUyUlpPUVR3N0ptdGlKcUFKUXErZzBVdzlaT241Zjht?=
 =?utf-8?B?UkdIZjZTd0tFVlluMkd3VHIrT3pMaE5YTHFmdTBFeVNPWlJlOWVEdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rj+HH7uLw87y1Ax5VxMnj0VzaGGo+okp8k6wBvGlU1VIEnXSrxOd1e1Qhf1v9DagdzBXaK9MXvaljU9N1HrIOQfTKFOIxF5lpJlPHoTVztZf4JPj+rImLaFrjpIdUr0LNK579fXDkLCzE6QYlzYFl76fRmWE7nuFHj7fTwpb9XicTn7s5IZJw3dvijSmp0xAS5Hqn40NW02omqfvG1rIKzXTWoTvCxjlqsIO2Uoq/LuyOV8p0FcBglG5DabcdZR6Uv5cG8SP7ncZbr84XHLNOro0TvJUYO9EvT+n7Nk6FEiGNKy99cqUXbZmlH+khcwM2FgHoCgP6rQ0YfnoyXWJKg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91ae6561-0555-48e6-e4d8-08ded81a34ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2026 09:13:40.1573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZoSf7m0Vyb2ylQWiFdSRBakNoFZEu5AHx6AB+qY9Sw16nbwAwhkQrlUxzPwf+pmUUUeykwWPWq6I8dioutdk5ub1x8NqUIe5MrT4kq52GsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8342
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782983633; x=1814519633;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EjXYUretDWzvSj04i4hvx22pY+5PXNLhIZ2HE6MeqpY=;
 b=SlbiU+x/HMUm/kfpKfcVA22f7VIHJOOAc5HcqADa212u3BLjqx4899b3
 WEhSVRTOLNbwAqJHANov/0XCTAuZic6CVZdFs+MwsgI7q81V/w/mE0NjJ
 vJeGzethlpuGmTfYdDe+iNAz/ElyL1b9y6wGZ8nqfQ+TFKyuomNIDAEV/
 ILvFMSuU484EDw3CGV6hjL30wBIpmxotQDtHfK9lstu/ddG+wT4EzXJr2
 LkMfKNZCdZYkJIXPSG4YqEKvgyNGjj9W+bIS7CIVLoJVOawZ/1mluNV4v
 SYbxFTAOnIMmGIH/vkSjOFvJ/1HobMVBkZASiCfB5vQ1swk0rwg8aCq3R
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SlbiU+x/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: E610: force phy
 link to get down when interface is down
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
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,mpg.de:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,PH0PR11MB5902.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73D2A6F51EE

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQpTZW50OiBXZWRuZXNk
YXksIEp1bHkgMSwgMjAyNiAyOjI3IFBNDQo+RGVhciBKZWRyemVqLA0KPg0KPg0KPlRoYW5rIHlv
dSBmb3IgeW91ciBwYXRjaC4NCj4NCj5BbSAwMS4wNy4yNiB1bSAxMzozNSBzY2hyaWViIEplZHJ6
ZWogSmFnaWVsc2tpOg0KPj4gRm9yIHRoZSBFNjEwIGZhbWlseSwgc2ltaWxhcmx5IHRvIHRoZSBF
OHh4IGFkYXB0ZXJzLCB0aGUgZGVmYXVsdCBiZWhhdmlvcg0KPj4gaXMgZm9yIHRoZSBQSFkgbGlu
ayB0byByZW1haW4gdXAgZXZlbiB3aGVuIHRoZSBjb3JyZXNwb25kaW5nIE9TIGludGVyZmFjZQ0K
Pj4gaXMgZG93bi4NCj4+IA0KPj4gQWRkIGZ1bmN0aW9uIHNldHRpbmcgZG93biB0aGUgUEhZIGNv
bmZpZyBJWEdCRV9BQ0lfUEhZX0VOQV9MSU5LIGJpdA0KPj4gd2hhdCBsZWFkcyB0byBkaXNhYmxp
bmcgUEhZIGxpbmsuDQo+DQo+SXTigJlkIGV4dGVuZCBpdCBhIGxpdHRsZToNCj4NCj7igKYgYnkg
ZmFjdG9yaW5nIHRoZSBjb2RlIG91dCBpbnRvIGl4Z2JlX2hhbmRsZV9saW5rX2Rvd24oKSwgYW5k
IGNhbGwgaXQgDQo+aW4gaXhnYmVfY2xvc2UoKS4NCg0KSGkgUGF1bA0KDQp0aGFua3MgZm9yIHN1
Z2dlc3Rpb25zLAkNCnN1cmUsIHRoZSBjb21taXQgbXNnIHdpbGwgYmUgZXh0ZW5kZWQuDQoNCj4N
Cj4+IEFsaWduIGZ1bmN0aW9uYWxpdHkgd2l0aCB0aGUgaW1wbGVtZW50YXRpb24gb2YgdGhlIGlj
ZSBkcml2ZXIuDQo+DQo+UGxlYXNlIGFkZCBhIHBhcmFncmFwaCBkZXRhaWxpbmcgcmVncmVzc2lv
biBwb3RlbnRpYWwuIEFyZSB0aGVyZSB1c2VycyANCj50aGF0IG1pZ2h0IGRlcGVuZCBvbiB0aGUg
Y3VycmVudCBkZWZhdWx0LCBhcyB1bmNvbW1vbiBpdCBtaWdodCBiZT8NCg0KVGhlcmUncyBubyBy
ZWdyZXNzaW9uIHBvdGVudGlhbCBpbWhvDQpjaGFuZ2luZyBiZWhhdmlvciBpcyB2b2xvdW50YXJ5
IGFuZCBpcyBkb25lIHZpYSBldGh0b29sDQppIHdpbGwgcmVwaHJhc2UgaXQgaWYgdGhhdCdzIHVu
Y2xlYXIgZnJvbSB0aGUgY29tbWl0IG1zZw0KDQo+DQo+PiBMZXQgdXNlciB0byBjb25maWd1cmUg
bGluay1kb3duLW9uLWNsb3NlIGVuYWJsZW1lbnQgdGhyb3VnaCBldGh0b29sLg0KPg0KPlBsZWFz
ZSBwcm92aWRlIGV4YW1wbGVzLCBhbmQgaG93IHRvIHRlc3QgeW91ciBjaGFuZ2UuIERvaW5nIHRo
aXMgeW91IGNhbiANCj5hbHNvIHBhc3RlIHRoZSBuZXcgbG9nIG1lc3NhZ2VzLg0KPg0KPj4gUmV2
aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwu
Y29tPg0KPj4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVs
c2tpQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZS5oICAgICAgfCAgMSArDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX2U2MTAuYyB8IDM1ICsrKysrKysrKysrKysrKysrKy0NCj4+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfZTYxMC5oIHwgIDEgKw0KPj4gICAuLi4v
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wuYyAgfCAxNSArKysrKysrKw0K
Pj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgfCAyNyAr
KysrKysrKysrKy0tLQ0KPj4gICA1IGZpbGVzIGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQo+PiANCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZS5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmUuaA0KPj4gaW5kZXggMzBmNjIxNzRhY2YyLi43YmJiODJkZDk2MmMgMTAwNjQ0DQo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZS5oDQo+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZS5oDQo+PiBAQCAtNjg1LDYgKzY4NSw3
IEBAIHN0cnVjdCBpeGdiZV9hZGFwdGVyIHsNCj4+ICAgI2RlZmluZSBJWEdCRV9GTEFHMl9NT0Rf
UE9XRVJfVU5TVVBQT1JURUQJQklUKDIyKQ0KPj4gICAjZGVmaW5lIElYR0JFX0ZMQUcyX0FQSV9N
SVNNQVRDSAkJQklUKDIzKQ0KPj4gICAjZGVmaW5lIElYR0JFX0ZMQUcyX0ZXX1JPTExCQUNLCQkJ
QklUKDI0KQ0KPj4gKyNkZWZpbmUgSVhHQkVfRkxBRzJfTElOS19ET1dOX09OX0NMT1NFCQlCSVQo
MjUpDQo+PiAgIA0KPj4gICAJLyogVHggZmFzdCBwYXRoIGRhdGEgKi8NCj4+ICAgCWludCBudW1f
dHhfcXVldWVzOw0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX2U2MTAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X2U2MTAuYw0KPj4gaW5kZXggZGE0NDVmYjY3M2ZjLi40NmQ4YTNlYTg2YjggMTAwNjQ0DQo+PiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9lNjEwLmMNCj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2U2MTAuYw0KPj4gQEAg
LTE5MjMsNiArMTkyMywzMyBAQCB2b2lkIGl4Z2JlX2ZjX2F1dG9uZWdfZTYxMChzdHJ1Y3QgaXhn
YmVfaHcgKmh3KQ0KPj4gICAJaHctPmZjLmN1cnJlbnRfbW9kZSA9IGh3LT5mYy5yZXF1ZXN0ZWRf
bW9kZTsNCj4+ICAgfQ0KPj4gICANCj4+ICsvKioNCj4+ICsgKiBpeGdiZV9kaXNhYmxlX3BoeV9s
aW5rIC0gZm9yY2UgcGh5IGxpbmsgdG8gZ2V0IGRvd24NCj4+ICsgKiBAaHc6IHBvaW50ZXIgdG8g
aGFyZHdhcmUgc3RydWN0dXJlDQo+PiArICoNCj4+ICsgKiBTZW5kIDB4MDYwMSB3aXRoIHRoZSBJ
WEdCRV9BQ0lfUEhZX0VOQV9MSU5LIGJpdCBzZXQgZG93bi4NCj4+ICsgKg0KPj4gKyAqIFJldHVy
bjogdGhlIGV4aXQgY29kZSBvZiB0aGUgb3BlcmF0aW9uLg0KPg0KPkF0IGxlYXN0IGZvciBtZSBp
dOKAmXMgbm90IHRoYXQgaGVscGZ1bC4gU2hvdWxkbuKAmXQgdGhlIHJldHVybiB2YWx1ZXMgYmUg
DQo+bGlzdGVkPyBXaGF0IGlzIHN1Y2Nlc3M/IFdoYXQgaXMgZmFpbHVyZT8NCg0KWWVhaCBpIGtu
b3cgdGhhdCdzIG5vdCBpZGVhbCBidXQgaSBhbHNvIGRvbid0IHRoaW5rIG1lbnRpb25pbmcgYWxs
IHBvc3NpYmxlDQpyZXR2YWxzIG9mIGl4Z2JlX2FjaV9nZXRfcGh5X2NhcHMgYW5kIGl4Z2JlX2Fj
aV9zZXRfcGh5X2NmZyBpcyB0aGUgYmVzdCB3YXkNCg0KPg0KPj4gKyAqLw0KPj4gK2ludCBpeGdi
ZV9kaXNhYmxlX3BoeV9saW5rKHN0cnVjdCBpeGdiZV9odyAqaHcpDQo+PiArew0KPj4gKwlzdHJ1
Y3QgaXhnYmVfYWNpX2NtZF9nZXRfcGh5X2NhcHNfZGF0YSBwY2FwcyA9IHt9Ow0KPj4gKwlzdHJ1
Y3QgaXhnYmVfYWNpX2NtZF9zZXRfcGh5X2NmZ19kYXRhIHBjZmcgPSB7fTsNCj4+ICsJaW50IGVy
cjsNCj4+ICsNCj4+ICsJZXJyID0gaXhnYmVfYWNpX2dldF9waHlfY2FwcyhodywgZmFsc2UsIElY
R0JFX0FDSV9SRVBPUlRfQUNUSVZFX0NGRywNCj4+ICsJCQkJICAgICAmcGNhcHMpOw0KPj4gKwlp
ZiAoZXJyKQ0KPj4gKwkJcmV0dXJuIGVycjsNCj4+ICsNCj4+ICsJaXhnYmVfY29weV9waHlfY2Fw
c190b19jZmcoJnBjYXBzLCAmcGNmZyk7DQo+PiArDQo+PiArCXBjZmcuY2FwcyAmPSB+SVhHQkVf
QUNJX1BIWV9FTkFfTElOSzsNCj4+ICsJcGNmZy5jYXBzIHw9IElYR0JFX0FDSV9QSFlfRU5BX0FV
VE9fTElOS19VUERUOw0KPj4gKw0KPj4gKwlyZXR1cm4gaXhnYmVfYWNpX3NldF9waHlfY2ZnKGh3
LCAmcGNmZyk7DQo+PiArfQ0KPj4gKw0KPj4gICAvKioNCj4+ICAgICogaXhnYmVfZGlzYWJsZV9y
eF9lNjEwIC0gRGlzYWJsZSBSWCB1bml0DQo+PiAgICAqIEBodzogcG9pbnRlciB0byBoYXJkd2Fy
ZSBzdHJ1Y3R1cmUNCj4+IEBAIC0yMjA3LDYgKzIyMzQsNyBAQCBpbnQgaXhnYmVfc2V0dXBfcGh5
X2xpbmtfZTYxMChzdHJ1Y3QgaXhnYmVfaHcgKmh3KQ0KPj4gICAJdTggcm1vZGUgPSBJWEdCRV9B
Q0lfUkVQT1JUX1RPUE9fQ0FQX01FRElBOw0KPj4gICAJdTY0IHN1cF9waHlfdHlwZV9sb3csIHN1
cF9waHlfdHlwZV9oaWdoOw0KPj4gICAJdTY0IHBoeV90eXBlX2xvdyA9IDAsIHBoeV90eXBlX2hp
Z2ggPSAwOw0KPj4gKwlib29sIGZvcmNlX29uX3JlcXVpcmVkOw0KPj4gICAJaW50IGVycjsNCj4+
ICAgDQo+PiAgIAllcnIgPSBpeGdiZV9hY2lfZ2V0X2xpbmtfaW5mbyhodywgZmFsc2UsIE5VTEwp
Ow0KPj4gQEAgLTIyNzIsNiArMjMwMCwxMSBAQCBpbnQgaXhnYmVfc2V0dXBfcGh5X2xpbmtfZTYx
MChzdHJ1Y3QgaXhnYmVfaHcgKmh3KQ0KPj4gICAJCXBoeV90eXBlX2hpZ2ggfD0gSVhHQkVfUEhZ
X1RZUEVfSElHSF8xMEdfVVNYR01JSTsNCj4+ICAgCX0NCj4+ICAgDQo+PiArCS8qIElmIElYR0JF
X0FDSV9QSFlfRU5BX0xJTksgaGFzIGJlZW4gZXhwbGljaXRseSBkaXNhYmxlZCB0aGF0IG1lYW5z
DQo+PiArCSAqIHdlIG5lZWQgdG8gZm9yY2UgaW50ZXJmYWNlIGVuYWJsZW1lbnQgYWZ0ZXIgcmVh
Y2hpbmcgdGhhdCBwb2ludA0KPg0KPkl04oCZZCBiZSBncmVhdCwgaWYgeW91IHJlcGhyYXNlZCDi
gJx0aGF0IHBvaW504oCdLg0KDQpvaywgd2lsbCB0cnkgDQoNCj4NCj4+ICsJICovDQo+PiArCWZv
cmNlX29uX3JlcXVpcmVkID0gIShwY2ZnLmNhcHMgJiBJWEdCRV9BQ0lfUEhZX0VOQV9MSU5LKTsN
Cj4+ICsNCj4+ICAgCS8qIE1hc2sgdGhlIHNldCB2YWx1ZXMgdG8gYXZvaWQgcmVxdWVzdGluZyB1
bnN1cHBvcnRlZCBsaW5rIHR5cGVzLiAqLw0KPj4gICAJcGh5X3R5cGVfbG93ICY9IHN1cF9waHlf
dHlwZV9sb3c7DQo+PiAgIAlwY2ZnLnBoeV90eXBlX2xvdyA9IGNwdV90b19sZTY0KHBoeV90eXBl
X2xvdyk7DQo+PiBAQCAtMjI4MCw3ICsyMzEzLDcgQEAgaW50IGl4Z2JlX3NldHVwX3BoeV9saW5r
X2U2MTAoc3RydWN0IGl4Z2JlX2h3ICpodykNCj4+ICAgDQo+PiAgIAlpZiAocGNmZy5waHlfdHlw
ZV9oaWdoICE9IHBjYXBzLnBoeV90eXBlX2hpZ2ggfHwNCj4+ICAgCSAgICBwY2ZnLnBoeV90eXBl
X2xvdyAhPSBwY2Fwcy5waHlfdHlwZV9sb3cgfHwNCj4+IC0JICAgIHBjZmcuY2FwcyAhPSBwY2Fw
cy5jYXBzKSB7DQo+PiArCSAgICBwY2ZnLmNhcHMgIT0gcGNhcHMuY2FwcyB8fCBmb3JjZV9vbl9y
ZXF1aXJlZCkgew0KPj4gICAJCXBjZmcuY2FwcyB8PSBJWEdCRV9BQ0lfUEhZX0VOQV9MSU5LOw0K
Pj4gICAJCXBjZmcuY2FwcyB8PSBJWEdCRV9BQ0lfUEhZX0VOQV9BVVRPX0xJTktfVVBEVDsNCj4+
ICAgDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfZTYxMC5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfZTYxMC5o
DQo+PiBpbmRleCAyY2I3NmEzZDMwYWUuLjU5MDQ0ZDY3ZWJlYiAxMDA2NDQNCj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2U2MTAuaA0KPj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfZTYxMC5oDQo+PiBAQCAtNTAsNiAr
NTAsNyBAQCBpbnQgaXhnYmVfY2ZnX3BoeV9mYyhzdHJ1Y3QgaXhnYmVfaHcgKmh3LA0KPj4gICAJ
CSAgICAgZW51bSBpeGdiZV9mY19tb2RlIHJlcV9tb2RlKTsNCj4+ICAgaW50IGl4Z2JlX3NldHVw
X2ZjX2U2MTAoc3RydWN0IGl4Z2JlX2h3ICpodyk7DQo+PiAgIHZvaWQgaXhnYmVfZmNfYXV0b25l
Z19lNjEwKHN0cnVjdCBpeGdiZV9odyAqaHcpOw0KPj4gK2ludCBpeGdiZV9kaXNhYmxlX3BoeV9s
aW5rKHN0cnVjdCBpeGdiZV9odyAqaHcpOw0KPj4gICB2b2lkIGl4Z2JlX2Rpc2FibGVfcnhfZTYx
MChzdHJ1Y3QgaXhnYmVfaHcgKmh3KTsNCj4+ICAgaW50IGl4Z2JlX2luaXRfcGh5X29wc19lNjEw
KHN0cnVjdCBpeGdiZV9odyAqaHcpOw0KPj4gICBpbnQgaXhnYmVfaWRlbnRpZnlfcGh5X2U2MTAo
c3RydWN0IGl4Z2JlX2h3ICpodyk7DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmUvaXhnYmVfZXRodG9vbC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfZXRodG9vbC5jDQo+PiBpbmRleCA0ZGZhZTUzYjRlYTEuLjBmY2I5ZDcz
ODk4NCAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX2V0aHRvb2wuYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfZXRodG9vbC5jDQo+PiBAQCAtMTM5LDYgKzEzOSw4IEBAIHN0YXRpYyBjb25zdCBjaGFy
IGl4Z2JlX3ByaXZfZmxhZ3Nfc3RyaW5nc1tdW0VUSF9HU1RSSU5HX0xFTl0gPSB7DQo+PiAgIAki
dmYtaXBzZWMiLA0KPj4gICAjZGVmaW5lIElYR0JFX1BSSVZfRkxBR1NfQVVUT19ESVNBQkxFX1ZG
CUJJVCgyKQ0KPj4gICAJIm1kZC1kaXNhYmxlLXZmIiwNCj4+ICsjZGVmaW5lIElYR0JFX1BSSVZf
TElOS19ET1dOX09OX0NMT1NFCUJJVCgzKQ0KPj4gKwkibGluay1kb3duLW9uLWNsb3NlIiwNCj4+
ICAgfTsNCj4+ICAgDQo+PiAgICNkZWZpbmUgSVhHQkVfUFJJVl9GTEFHU19TVFJfTEVOIEFSUkFZ
X1NJWkUoaXhnYmVfcHJpdl9mbGFnc19zdHJpbmdzKQ0KPj4gQEAgLTM4NDIsNiArMzg0NCw5IEBA
IHN0YXRpYyB1MzIgaXhnYmVfZ2V0X3ByaXZfZmxhZ3Moc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRl
dikNCj4+ICAgCWlmIChhZGFwdGVyLT5mbGFnczIgJiBJWEdCRV9GTEFHMl9BVVRPX0RJU0FCTEVf
VkYpDQo+PiAgIAkJcHJpdl9mbGFncyB8PSBJWEdCRV9QUklWX0ZMQUdTX0FVVE9fRElTQUJMRV9W
RjsNCj4+ICAgDQo+PiArCWlmIChhZGFwdGVyLT5mbGFnczIgJiBJWEdCRV9GTEFHMl9MSU5LX0RP
V05fT05fQ0xPU0UpDQo+PiArCQlwcml2X2ZsYWdzIHw9IElYR0JFX1BSSVZfTElOS19ET1dOX09O
X0NMT1NFOw0KPj4gKw0KPj4gICAJcmV0dXJuIHByaXZfZmxhZ3M7DQo+PiAgIH0NCj4+ICAgDQo+
PiBAQCAtMzg3OSw2ICszODg0LDE2IEBAIHN0YXRpYyBpbnQgaXhnYmVfc2V0X3ByaXZfZmxhZ3Mo
c3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgdTMyIHByaXZfZmxhZ3MpDQo+PiAgIAkJfQ0KPj4g
ICAJfQ0KPj4gICANCj4+ICsJZmxhZ3MyICY9IH5JWEdCRV9GTEFHMl9MSU5LX0RPV05fT05fQ0xP
U0U7DQo+PiArCWlmIChwcml2X2ZsYWdzICYgSVhHQkVfUFJJVl9MSU5LX0RPV05fT05fQ0xPU0Up
IHsNCj4+ICsJCWlmIChhZGFwdGVyLT5ody5tYWMudHlwZSA9PSBpeGdiZV9tYWNfZTYxMCkgew0K
Pj4gKwkJCWZsYWdzMiB8PSBJWEdCRV9GTEFHMl9MSU5LX0RPV05fT05fQ0xPU0U7DQo+PiArCQl9
IGVsc2Ugew0KPj4gKwkJCWVfaW5mbyhwcm9iZSwgIkNhbm5vdCBzZXQgcHJpdmF0ZSBmbGFnczog
VW5zdXBwb3J0ZWQgaGFyZHdhcmVcbiIpOw0KPg0KPlBsZWFzZSBwcmludCBody5tYWMudHlwZSwg
YW5kIG1lbnRpb24sIHRoYXQgaXTigJlzIG9ubHkgc3VwcG9ydGVkIG9uIEU2MTAuDQoNCnllYWgg
d2h5IG5vdA0KDQo+DQo+PiArCQkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KPj4gKwkJfQ0KPj4gKwl9
DQo+PiArDQo+PiAgIAlpZiAoZmxhZ3MyICE9IGFkYXB0ZXItPmZsYWdzMikgew0KPj4gICAJCWFk
YXB0ZXItPmZsYWdzMiA9IGZsYWdzMjsNCj4+ICAgDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jDQo+PiBpbmRleCA2MmMyZDgzZTE1NzcuLjU4ZWU0
YTE4NjAzOSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX21haW4uYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfbWFpbi5jDQo+PiBAQCAtNzU0NCw2ICs3NTQ0LDE3IEBAIHN0YXRpYyB2b2lkIGl4Z2Jl
X2Nsb3NlX3N1c3BlbmQoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+PiAgIAlpeGdi
ZV9mcmVlX2FsbF9yeF9yZXNvdXJjZXMoYWRhcHRlcik7DQo+PiAgIH0NCj4+ICAgDQo+PiArc3Rh
dGljIHZvaWQgaXhnYmVfaGFuZGxlX2xpbmtfZG93bihzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRh
cHRlcikNCj4+ICt7DQo+PiArCXN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYgPSBhZGFwdGVyLT5u
ZXRkZXY7DQo+PiArDQo+PiArCWlmICh0ZXN0X2JpdChfX0lYR0JFX1BUUF9SVU5OSU5HLCAmYWRh
cHRlci0+c3RhdGUpKQ0KPj4gKwkJaXhnYmVfcHRwX3N0YXJ0X2N5Y2xlY291bnRlcihhZGFwdGVy
KTsNCj4+ICsNCj4+ICsJZV9pbmZvKGRydiwgIk5JQyBMaW5rIGlzIERvd25cbiIpOw0KPj4gKwlu
ZXRpZl9jYXJyaWVyX29mZihuZXRkZXYpOw0KPj4gK30NCj4+ICsNCj4+ICAgLyoqDQo+PiAgICAq
IGl4Z2JlX2Nsb3NlIC0gRGlzYWJsZXMgYSBuZXR3b3JrIGludGVyZmFjZQ0KPj4gICAgKiBAbmV0
ZGV2OiBuZXR3b3JrIGludGVyZmFjZSBkZXZpY2Ugc3RydWN0dXJlDQo+PiBAQCAtNzU2Niw2ICs3
NTc3LDE2IEBAIGludCBpeGdiZV9jbG9zZShzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2KQ0KPj4g
ICANCj4+ICAgCWl4Z2JlX2ZkaXJfZmlsdGVyX2V4aXQoYWRhcHRlcik7DQo+PiAgIA0KPj4gKwlp
ZiAoYWRhcHRlci0+ZmxhZ3MyICYgSVhHQkVfRkxBRzJfTElOS19ET1dOX09OX0NMT1NFKSB7DQo+
PiArCQlpbnQgZXJyOw0KPj4gKw0KPj4gKwkJZXJyID0gaXhnYmVfZGlzYWJsZV9waHlfbGluaygm
YWRhcHRlci0+aHcpOw0KPj4gKwkJaWYgKGVycikNCj4+ICsJCQllX3dhcm4oZHJ2LCAiQ2Fubm90
IHNldCBQSFkgbGluayBkb3duXG4iKTsNCj4NCj5Mb2cgdGhlIGVycm9yPw0KDQp5b3UgbWVhbiB0
byBjaGFuZ2UgdGhlIGxvZyBsdmw/DQoNClRoYW5rcyBmb3IgeW91ciByZXZpZXchDQoNCj4NCj4+
ICsNCj4+ICsJCWl4Z2JlX2hhbmRsZV9saW5rX2Rvd24oYWRhcHRlcik7DQo+PiArCX0NCj4+ICsN
Cj4+ICAgCWl4Z2JlX3JlbGVhc2VfaHdfY29udHJvbChhZGFwdGVyKTsNCj4+ICAgDQo+PiAgIAly
ZXR1cm4gMDsNCj4+IEBAIC04MjQ0LDExICs4MjY1LDcgQEAgc3RhdGljIHZvaWQgaXhnYmVfd2F0
Y2hkb2dfbGlua19pc19kb3duKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyKQ0KPj4gICAJ
aWYgKGl4Z2JlX2lzX3NmcChodykgJiYgaHctPm1hYy50eXBlID09IGl4Z2JlX21hY184MjU5OEVC
KQ0KPj4gICAJCWFkYXB0ZXItPmZsYWdzMiB8PSBJWEdCRV9GTEFHMl9TRUFSQ0hfRk9SX1NGUDsN
Cj4+ICAgDQo+PiAtCWlmICh0ZXN0X2JpdChfX0lYR0JFX1BUUF9SVU5OSU5HLCAmYWRhcHRlci0+
c3RhdGUpKQ0KPj4gLQkJaXhnYmVfcHRwX3N0YXJ0X2N5Y2xlY291bnRlcihhZGFwdGVyKTsNCj4+
IC0NCj4+IC0JZV9pbmZvKGRydiwgIk5JQyBMaW5rIGlzIERvd25cbiIpOw0KPj4gLQluZXRpZl9j
YXJyaWVyX29mZihuZXRkZXYpOw0KPj4gKwlpeGdiZV9oYW5kbGVfbGlua19kb3duKGFkYXB0ZXIp
Ow0KPj4gICB9DQo+PiAgIA0KPj4gICBzdGF0aWMgYm9vbCBpeGdiZV9yaW5nX3R4X3BlbmRpbmco
c3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+DQo+DQo+S2luZCByZWdhcmRzLA0KPg0K
PlBhdWwNCg==
