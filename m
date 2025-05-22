Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C81AC0DF9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B1CA8174A;
	Thu, 22 May 2025 14:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gBCBxgM5O-Vi; Thu, 22 May 2025 14:23:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC18F816E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747923807;
	bh=6pnmdEVb8xwRjikE9XGUBA4afEAgZsvKsNt6e2vHLhs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HFS+M1d0v4r3uHJCAre84aLGV32ds1XQxRFN8EjLVPsOs9V1Ul/5hQWsvfQu3Z1fh
	 npgmfMJb20l8ZJsRME1+FG/l7M8hbYSXBMsXOUIdcDpPpxZ9meLJ5vfmaN77RnVV9G
	 6KexwIkcw6+lYQ3ea5Sd2BLthuL9pe6xnwnQDbOuXIDwYQlpcTJpw4n++bEDuv0v5Q
	 oG7UX0PvUsmZMe9pWSYRAYLEUPJEI9z3KBNak8EACCXFXiHPp9nY+iTw66rNx8V5NI
	 0MGt3YkHl6KUDNwZTu3hHbxrv5HkK+J3jq7nEW5XLQmRi0fuGBple/rCr5KYKRPJXy
	 9kANwo7+RPX3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC18F816E0;
	Thu, 22 May 2025 14:23:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0108ABC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6FB6611F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eo7ai0eNN6-M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:23:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1458960D7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1458960D7F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1458960D7F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:23:24 +0000 (UTC)
X-CSE-ConnectionGUID: SrxCzYp0RAGYtOWG6dDdPw==
X-CSE-MsgGUID: 8g3Qi6vRQz+q4gpWZeXc9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50097062"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50097062"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:23:25 -0700
X-CSE-ConnectionGUID: Z+uCn9zHQP+Kr4V0xREh+Q==
X-CSE-MsgGUID: GigdKPjrRjScw04WORiSWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="141040201"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:23:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:23:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:23:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:23:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qv6tlsjomgh4GdItbGhkeNwb4k/ioy4agI6kQoYDIRofD0rpc691tF/gYu9MtN/G7l9luXIVBiWIma5y7OjNHFCNIe62EdKFgin/v4S+RAYQxcTs4fulA033HV5xCVTV9GLIfO8vGkT1aDOjFCtVCJFzKbk4bTxfiYp3IpUGhQ3pRcC+ygSgquA6Ld7nPU7oHrOohvHJ9QqDmmZ6kIb2QUCKsyDk22OrE1Wrv28nIUAleuJgGeMrLEb3Yef3HJSqLX/YsdneQ316jhtH9ozzH90LViz259+KApqbDmrNY1cDazom58+W5zgtf1Acyj+NNqY/zqjV++6HnjeS/068kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pnmdEVb8xwRjikE9XGUBA4afEAgZsvKsNt6e2vHLhs=;
 b=cUqJGFSee7416u4cF0CjhRTnkT2sNz0LfjTF8FkxU8WpDkCI2Tfa20j0uTMAkDTC4PIO/Bl6umqZHwagN41hwlrikCaFv4qHgAhMJY5NtHg9al0MK6rNf+MIAu5ErEYtgheKZLVuE/9mg+6wGGRUkr5C+r8rrH3MU+lYv98Bnu9BkRIHwePgeYGBFXYZw8K+2lNV7GdK46G/iBNnEl4k8z/BOPFSo2AE52KLBrx4VQ6tc2FC8Wz4y5orkKIAmQPbmeDSAAKmac7yeiapRL9n6qfstm3KZfqZ+xez2P+p1oSxh9sJnrBPa3MRlnnolME4hcgGwfxnGyFBEUWGa0PKsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 14:23:07 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:23:07 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 06/15] ice: add TSPLL log config
 helper
Thread-Index: AQHbuuwTSc51BxTv2UqVUBMWBf9aObPe09ag
Date: Thu, 22 May 2025 14:23:06 +0000
Message-ID: <IA1PR11MB624152F4CF4A8AC7D3676CC88B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-6-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-6-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB5934:EE_
x-ms-office365-filtering-correlation-id: af4a5952-119a-4899-4866-08dd993c2be6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UnltanViWVdKR2VlSkhSL3AwREN4NndOZUlTTlZxTWNPT2FUV1ozZStnUFRN?=
 =?utf-8?B?RlJveUVac1VpMjQ5QnZtTFJGQnB0MVVzYXdlOHRZRzZLTVVVeVgwNDBTbExH?=
 =?utf-8?B?bW83RFdJNUhQNjVDazVxR3pJVmp2czlrYzRpdHJGcWQrSlBvN0JldlZON1Iy?=
 =?utf-8?B?aXFsKzk3c1UxMUdvalN2bVIrMlh2Tnp1ODJQU0MyRHJBc3VLYXpYSEpqR3Nz?=
 =?utf-8?B?T1ljUXVrTGk5Q1pnSnNqVDNXSFJubFIxK2pTem04VUJvK1B6MXNUZkVheGU2?=
 =?utf-8?B?WEk1YzhNRzJ2cVRlSGlQb1RqY01GZjY0SzVUbUhQRlVDenRaWDhKWmFQUTRj?=
 =?utf-8?B?clVNdTl4MytteFVIVVZNUWpxZFVPbFR5ak9wNDB0cU9XSjNhYWYzeDVXV3ZB?=
 =?utf-8?B?VEU0K0tMSkE5WFNUYjhGUXd5bDZYYW96MVBJSmR0Zk5qNWlkY1Y2R2VZMzlq?=
 =?utf-8?B?MU5DL0l2UHF3UFpwUllldTVKWlpvTlBWYzZTZTJ0WGxuRXQ1V3JkTlk0YkNQ?=
 =?utf-8?B?azhmQ01IRXFtUytBbWk5aGNmMjFEUU5hOGhBUUpiSFg2SVJ1b0pCOTV6WGUw?=
 =?utf-8?B?ejBqaWJLTVhySzhUc2xONEErMW1qMVordXV0QmxvVnBUYnVvV0VST1BaTXQ2?=
 =?utf-8?B?cHFLcDhBNnoycDhweTNRb3JhcktvbmJvNTF0YnVaYXhXYWtxTEMvYTFqcHF5?=
 =?utf-8?B?eUVwZ2pIMThKNHZMY2tVK1l3bk43RUpzWDJQL1YxRVFKVmZzRGxkaUxnemhU?=
 =?utf-8?B?TC9jWm8zQVBlOXlTOEZLbENUUEMxZjEzS3o2TUpreXJEbGJtZzhydHU5bVdt?=
 =?utf-8?B?TmVybDJUVTM1SnJLRnk2eGJmU1EzUmkvTGhtamVHVFIxSmswK05ZU0FUNkpI?=
 =?utf-8?B?QW1DRVJ6SVV4NzdrQy9ZZVdwbVlmSU5kbVNJK0ZmZ0VrdFRPWEZwVnd5VStn?=
 =?utf-8?B?Z2NkRUI2YjBJQTdCbzZCdzdJQ2NSWGVra0Y1RnN6MjdRZFhiRXdPR2E2WXIv?=
 =?utf-8?B?K214RHZVd2tMNnU1MTRNUDdMSGN4ckd5MnlUcVRGbjFTOURVenlsK1Nvb0sv?=
 =?utf-8?B?YU9JOGZYSE9Ld0tpZWw0NWMvK1oxUVJvTXFJUEZtdWVobWxiTU1yeWF6ODJO?=
 =?utf-8?B?VzNkNnBVRUZlUFdGeVBmaG95bm8zRE1uM2tCWXAxS0cwTXVIanhIaWJVbG9L?=
 =?utf-8?B?WW4wYS8rb1YwUjlxV2o5VWIwYUVXZGN5Q3JxQ0V0YnY3T25lU0RlQXB1RnZm?=
 =?utf-8?B?aFpHS3JEakZaRTlieTk4SGFnUGtEdVBMcjFFV2k1ejVTUDcyVDJ1S1ZxNGFp?=
 =?utf-8?B?aFVzM0Y2c0JPMHM0SFZ5dTJ3aU5NclMyZFZIQ0xkRStZTzFyOWQ2ckFDdGtp?=
 =?utf-8?B?ZVJTTlR2Z3RxK1RxdVVVaUZ6TkRmT2QvZ3dmaFdiaHI0N01qdkVLU0RlYzJC?=
 =?utf-8?B?MjFIMjBIQUw1VTJlaUVzLzRVUnZNWjR1cWJSQTBuR1JrNUsyUEZucEhCMFl1?=
 =?utf-8?B?UTRPMTZHb0lwVGdpZ21nQWJRazZseFVZaFlxQ0V6QzRLYlVvb1EyVlBDeEht?=
 =?utf-8?B?QytYVUVGY0cwQ09QVi9kaEd4bEtDK2FBbm5kTGZ2RE9jWGJTYURKVzdXa2Iv?=
 =?utf-8?B?ODZWNmFLL2NiQzQyRU0wZEdaRUU3dkQ4b29zbnlUdGxBTnlrbzgxcTExdnpF?=
 =?utf-8?B?b0J3L2ZTeElSbFZNMkFCbGFiejkrcjFwb0xhUUlzWStyUUp2bzZRdFlHV1Fk?=
 =?utf-8?B?M1VlNzRVQzNPRHRxNnlsME93cmJ3c2pQc251WWh0NGF3Rzd3SVlrNWs3OW01?=
 =?utf-8?B?NzB3THdYTmxLSkpPNWp0dHkvYnJuanhNM3N3RHVHdjJjTTNnTWpMYmtTSzhr?=
 =?utf-8?B?bXE4Qk5BdHpNb2JmWWJXOEl1U1FYOGVwT1pXRWlObzNQR0t4Ui8zS09GQnBn?=
 =?utf-8?B?WW9ZbkIxTXpWR1d0RVozNFUxZ0I4SWh4S2ZJcDJvVUFaZGtkQWk2NkRFVHMz?=
 =?utf-8?B?SVZIS3hQQTBnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFQ5RFFySHBkMWhpWnBHams5L3Jaa3pQQlIwK1FpcDJJUjYvL1ZFcVQ1R21t?=
 =?utf-8?B?dXI0RTVPUlpIaURPdkJnckZyWW9wejlLTDJZclJEa2pkbmtnczZFdHUxQ3FB?=
 =?utf-8?B?MEhqRU55UzFpYjNhcFZBVkluVGowRjZldGlQQlVobFhZOERmcFNTazcyVE9j?=
 =?utf-8?B?dE5MSFphT2plWFBTK3lQaW96RHcyTnRvNU5RQzYvZXZ5VG54ajJ2MCtlblRt?=
 =?utf-8?B?Q2prY0dvbzRvYnkrWCtBVStvNFJkV0JiUS9zUnAyZE5wcjVmS1dDS2g3djlC?=
 =?utf-8?B?REd3Rk9RSWVCVTIwU1luUklWWm5scXh4dTl4My95bGN5R3Uxb21OeXNBamw2?=
 =?utf-8?B?RXVod1BRbFBDako5N1hTVzd1UjVGUFFVWVZRdFZrZ0poNDMvSXoyY2xDQ3BN?=
 =?utf-8?B?YXZYeTZZVTMwTGpOSVVxVDQ5bzk3OCs0VTZmOFZVSzlBanJ5dXhTbkpaeEs3?=
 =?utf-8?B?YTJmNVhacVROM0dLTytQeHJZTExwV3J2L0lVQ0FsQXEvUEJhOHhWMFBOeTRT?=
 =?utf-8?B?Z2RQMzlkWXNUc2hmL0VQVHl4bUEzZGVQQTZkSGgyb1BjUThzT25Cc3BTeEp0?=
 =?utf-8?B?WkRyY1Zua0hwdCtXcjVkUjJ5WFkxUHhWUS9qTWc3SFRaVmp2aUZuN0QwRUds?=
 =?utf-8?B?dzd3Snh4YThTalV0UlJta3JCalI1dkFVdkZ3NFJmalVHQm9zNFlQRU9adHo1?=
 =?utf-8?B?SkgyNnBqYkhFUU5ibnlVbU5wUDVDbWhNYW55TTlQTHluYzlUaHRuL1I2NmJk?=
 =?utf-8?B?Q3hUZjhBZ1lydHpNczhkWDMraUs3ZEFGcnJzdHB5NjYyMVBnRlUrc3V2ZkxI?=
 =?utf-8?B?TFlaVlg4bHBzRkoxejc3UDBpSllTQW1qczJRU1JKNDRqdTN0MVQ2b2N0WXpm?=
 =?utf-8?B?Ulc1RTV3SVV0ZDJGVERLcEZUczQ4WWE5TnR0aXkwU2g2WUN4c011UEpObDFU?=
 =?utf-8?B?R3FPRis0WWt5cTFmYTlxQ0dHYWtKRE5PYW5MQkNqK0tVc2dvS2tPUXByZnpI?=
 =?utf-8?B?cmZiOFd3eWtMOTZFYk9oaFd0MnJoeTc1cmJRSnVnbzZNdUJCZjNrUUhpVVor?=
 =?utf-8?B?K2l3cERZbG1SbmJsa1dDOHljRXVJQUJuKzhod2x0eGE0VFdJUXVxSzh4OVov?=
 =?utf-8?B?Z0JsLyszM1M3Vm9pczUweFhNQ1BZeW9QYTNPWWhDNEhFNHdGT0FGUDFzUnIv?=
 =?utf-8?B?dUtqMFkwUXRNZHFEVG92RkdlL3R3d2UxK0ptdU1mNDEyRkE4ZGFiMTRwMHl1?=
 =?utf-8?B?ZS9tak0xMmhISGhWQlMwQzJ2Qm4yWnhoUGd1OS81Q0J6bXBpRVF6ZituYlhY?=
 =?utf-8?B?cnp3elc5cDAweVF1R3REUHVpV2tXRHUwN2dqUXlUM080blk5WlI5ZEF2Qkth?=
 =?utf-8?B?RG00UngyY1c4VXFhSDFMVlVQYkR1Wm0xM3ZNeG84ZHlvZnpKajI2WWRGbDJ5?=
 =?utf-8?B?cVk4UFBWRjQ2QW1qN3RwTDNlUUxUWHgyU1JwYWJiSklOWEN2MXYrL3N0bGUv?=
 =?utf-8?B?NXJ4bkJ5ZWtLSHlRbE5yRkFpM1lhd2VtVC9teU5yMjZJMlErcncxd3YwT28w?=
 =?utf-8?B?Yk9PNVNBdndjTkd0Wk5rcHlaSmNYQldVblFLR2JTVHE0RnNCcmJIZWhSNjl5?=
 =?utf-8?B?NWhhWVBTVEZaeVNzMVB4TFpFWitzUlFvZ3RTZHdwWGNQYjRoU1dvbmwyT2lP?=
 =?utf-8?B?K2tCVFhSdWJWdHlqNWt5MiszWDBEbmwvQzlvOVN0Y1NJVG5ZcFV5LzQ3c2sz?=
 =?utf-8?B?ZGVRRGs2S1JPamlCTGZSdVJjVEFLNEFrOC9oWkl2cUsxaWlnbklRQkk4SnI1?=
 =?utf-8?B?VVBLWUVPSi9Tdkh6WVBaVU9UQ1UvZnl4SWpjbzA0SnZDM0FxVUltSGk3bXdL?=
 =?utf-8?B?eGdjN1ZqK3BSbk5yWXc1WEM4UFlqQmhhNkZlSCtNVmRXS2FoVWgwRVU4WnU0?=
 =?utf-8?B?RWxJVzhQWGhLdTVxbUlodTNRc3dlb0pPRVR4cTY1NDhvOXhtc2tUUDJ3U3FZ?=
 =?utf-8?B?OTRaejJuL1JEcWJOc3dPNHg3MEN6ZFU1dmFjWDRibWZwMXhhZ2lnVm5SVi9V?=
 =?utf-8?B?dVBOeGdOWmF3SndvYzlvL2ZYVlN3N2ZIZm9MekU0WkFWRUFIQ1p1V3hrSDdL?=
 =?utf-8?Q?157zXOZDh6Sn0iRWAf8+9BXz6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af4a5952-119a-4899-4866-08dd993c2be6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:23:07.0025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uB8oBawZNT32aDA8NRv70/xMF3xYWo1n7vvKcrBNyXQBwH3XH5ZIv5eecCV5+o1dP1n17ley2PMptENqTch7KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5934
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747923805; x=1779459805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6pnmdEVb8xwRjikE9XGUBA4afEAgZsvKsNt6e2vHLhs=;
 b=kQc4bEZmsElLf+EUejJ1bRgGhaRxK5iRFyzihCzAvpi79vhQt1NKsRcX
 eNrGFa/cp1qzaBVRaFqJ/WEI2WWfCzd/Tnh8kRSpW9BlXYXdzWX2Cc/bD
 25jmboyAIMPI35RQVFTdTB1fL0gt3cwx5LtKB6HcjC1cvyU8+NCTujU67
 llhk/H+bM4uOl7hmIz/t8v4k4XriLZnOnmCHh6HgQV6xhrro7qPpfM/p9
 ciOOUUYkFzGjxxw4QsEE1DXgXfx3rLsQv7Qz6sw8EY9j8OdoKWuRo6EcS
 myUnu5+58qUsP9X2ZPccK4sgfDb4jbCbFvJwjlc3j6cEbOpZadutNjkkh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kQc4bEZm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 06/15] ice: add TSPLL log config
 helper
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
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDA2LzE1XSBpY2U6IGFkZCBUU1BMTCBsb2cgY29uZmlnIGhlbHBl
cg0KPg0KPiBGcm9tOiBLYXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNv
bT4NCj4NCj4gQWRkIGEgaGVscGVyIGZ1bmN0aW9uIHRvIHByaW50IG5ldy9jdXJyZW50IFRTUExM
IGNvbmZpZy4gVGhpcyBoZWxwcyBhdm9pZCB1bm5lY2Vzc2FyeSBjYXN0cyBmcm9tIHU4IHRvIGVu
dW1zLg0KPg0KPiBSZXZpZXdlZC1ieTogTWljaGFsIEt1YmlhayA8bWljaGFsLmt1Ymlha0BpbnRl
bC5jb20+DQo+IFJldmlld2VkLWJ5OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lA
aW50ZWwuY29tPg0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90
c3BsbC5jIHwgNTQgKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tDQo+IDEgZmlsZSBjaGFu
Z2VkLCAzMCBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBS
aW5pdGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJ
bnRlbCkNCg==
