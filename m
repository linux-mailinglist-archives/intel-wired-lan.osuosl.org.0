Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D6CA69251
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 16:06:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19213607AC;
	Wed, 19 Mar 2025 15:06:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dq5uHwqJ2ZcC; Wed, 19 Mar 2025 15:06:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E4AC60842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742396813;
	bh=CSzneefcigGTJTy1hUAGYasFQjvvEuSFDiBiCaGNjTc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DWgUUlRbSTx2XBRxleldh1mSP5IcNNPwPwuWGWzt1UEXTRlGmvPMsgg1YfGCfq430
	 J9tmebZtyMIX/0Bek/b12NIIZcfQdHf0RoJobxCqUHdDw9kdgfKEo/+1U7BVq2sqbj
	 mWafto6WZKoasuNfJpL/4oMIyvRGV+cCcLfRuByDXVvujCl3jwTXwkO7aEPaeHiYsJ
	 KpZcy0bkS4a7nULaGFiNCAIdF+Pq7HDhY+cpGJrZcThboImUEapD5XQA65WQaQwXQW
	 2Qfz5oAkqABFe6JLi2iSIJVPyQbSK0X/b+QEwWWw+ucHno1rOqdMZ3EnMjnYul5yFZ
	 aO6QNetqS+V6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E4AC60842;
	Wed, 19 Mar 2025 15:06:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CE6C1A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:06:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1EBFD406C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:06:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6oeJxd0iLc8f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 15:06:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB5E6406CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB5E6406CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB5E6406CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:06:49 +0000 (UTC)
X-CSE-ConnectionGUID: pkD96EaBSR2WQ4lI3TdFzw==
X-CSE-MsgGUID: PBXn3+PySXK1E4QsvXg3yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="68946701"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="68946701"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 08:06:46 -0700
X-CSE-ConnectionGUID: THqfSMRrSQ6wylyHz8FcvA==
X-CSE-MsgGUID: XiNJsHdbSaugLLG+n4KilA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123399470"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 08:06:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Mar 2025 08:06:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 08:06:44 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 08:06:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LwZMGpVHUi1yNXYLUEoTPc8IUDGkmfac6WzbZejxiRyaZX/1ecMzMsHHTgGDobPRLbE9q90gmLKe4OtNzMSPjdKy9O2qRflHAcqX23aaap0ZeEAolpKQPrXNs7oPNzpSrbEDw34gc1iqa//YcHVTMHpvcYpPg0PZSePl5EQPdzUBA3HvMMiLnLsFLQn5bJHN1+qL94EBVMQ9VZSpL34Bi6zA7oogmIq7OOlgmTRL1nTf8gbpE+xOuke127MQo0zef/o5aHa4WQZeT48+Q7MVoFuoDgapQaOMcHTBsp/c4OsRTy2e8OrTsyWEo9Syvyc6eXjPAuFvyzYRQVl70RVuWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSzneefcigGTJTy1hUAGYasFQjvvEuSFDiBiCaGNjTc=;
 b=J7n2ZjAStXlaXrRXg32LCzyUY/fjAtT4toB1HjeLLsbdaCvER6hQDTQ10/64EjJvIaKmzVQ9ZMFlv8W1SXJZNz652bkcpx2Al0dFvnlgLRLSLQV9UPTOPh1Od4D+AYkISOAcFmrL7nB0Brleh7q2al52aml9BzmzH9i+9j9Eda8aPo4s8P0D2WX6NkD3LH05sBQQWV+7O51qbrqkFZO+wUbWLtGlW80S+BPKYXFy/gS6kVacr8LZ39y4fQFqYN+fjdBXeUgIytWzTbDBt42y7QGQbbf2v1lv2HRpAGah5eErB1DLfWbtEBFixAJg9AHHV8bCHNa+pn+2Stb1oz+21w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Wed, 19 Mar
 2025 15:06:14 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6%4]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 15:06:14 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Bouska, Zdenek" <zdenek.bouska@siemens.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 Andre Guedes <andre.guedes@intel.com>, "Vedang Patel"
 <vedang.patel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Joseph, Jithu" <jithu.joseph@intel.com>,
 "Bezdeka, Florian" <florian.bezdeka@siemens.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Bouska, Zdenek"
 <zdenek.bouska@siemens.com>
Thread-Topic: [PATCH net-next] igc: Fix TX drops in XDP ZC
Thread-Index: AQHbmNnoMpaLHUOhh0ezcjBKmdSmNrN6jqAA
Date: Wed, 19 Mar 2025 15:06:14 +0000
Message-ID: <PH0PR11MB5830C173F108E4B8F60C3611D8D92@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20250319-igc-fix-tx-zero-copy-drops-v1-1-d90bc63a4dc4@siemens.com>
In-Reply-To: <20250319-igc-fix-tx-zero-copy-drops-v1-1-d90bc63a4dc4@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|DM6PR11MB4546:EE_
x-ms-office365-filtering-correlation-id: ca29ab05-e228-4b7e-50c8-08dd66f797c5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YlpwK1pJdmlwbEYxQnpEVndoZkFGNnRPL2NDaDg3ZWd1NVNKbkpVQ0tlT2Zh?=
 =?utf-8?B?cHpYQStjVE9tcjFnTWxHUXFjdk15ZnJGTWZkeU01SDllbzIyMFlCdTVMMU56?=
 =?utf-8?B?aXBFVVFXdTJZRDVlWjM5bHlqdkJiVjlFR1pQcmZzSU9SbTY3bnhQMXVyM1Rn?=
 =?utf-8?B?a0FCT0syUm5Oc2dQUUc3aXhCS3RKREhFeWM2WUM1N0Z3QVhjc0FSZ0xqdVZE?=
 =?utf-8?B?Qm9RZUF5aDR4eWdRdFhqbnkzV2tMeGZNUlcvU1hOMXVyNnRacVN1Y0xneW91?=
 =?utf-8?B?d2NHNkhVZCs0dW1wTXBUS2g1TDB6V2h1OEZaVzZUajBDallnOXBoUS9odm80?=
 =?utf-8?B?c2pSNlR0bDZ1QmtnNHVOQmQvV01LaUErSnVHbFR5YlBxbVE4SjBGTjhnQ2dE?=
 =?utf-8?B?M2lJbThxSWRPTnRHZUxtU3BuSlJFeE5EK290V1NnY2Fza0V2blViKzUyanJi?=
 =?utf-8?B?Z1RPdGpmSkJPSkJ3SVVVNTkvMmE4WUg0US9EaUI1bGE1UExkWjhGa3c5VTl0?=
 =?utf-8?B?WHVqMW4zSnNrMjhWV2luNzIrWkFYS0Q3Ly8xU09tam9PWVoyejlhakJTd0Zu?=
 =?utf-8?B?RFdUblNUWEpGNXBlRFJIMzluVmhXWlQ1bzRDRjlUMEU4NFh1TzZXeEdQRklu?=
 =?utf-8?B?K0NLcndrdUtTUmFBalVqenl0SnJ2d3NzY2VZL2o0SXZ4SFhDZkhmMDR3ZWZH?=
 =?utf-8?B?Q3ZlejZlNW5Hd3hCSXo1RFh6WHY4Zm4rUkVFbmFxS09hZ1JMeWkxL2prOU43?=
 =?utf-8?B?QzRZS1NIUFpjZE91TGVhTHRRcWtHNFU4OWJTZHRiVWN1aTMxU200TitGR0I4?=
 =?utf-8?B?dnFHTHgwbyt3aHBBVm8zYVBEN1lkN1NYalRSU2cwaDRBQTZVVm43TnArK0pS?=
 =?utf-8?B?aFMzSmlLM3BpdXVCSXlmb1pScjZxQjJBOVMrUTVtU0RGdkdNUGx5NUQyQTFr?=
 =?utf-8?B?eTlpUTAyM3BsU1dRSWxpSUp4aGhLbFhaMGFPUm5UbW55QjAvaFlQd09ucHht?=
 =?utf-8?B?Z1hIaDBlL3RoZDBnMS9HSlRMK1Zqa2NoTURzK2JpRmtadjc0bXRzcFVKd1d2?=
 =?utf-8?B?S2pScGlITW9QQ3IzeCsvbGQrTnd6bGRWc0FsZWVtekNCMFVUQUZEUnNXODlm?=
 =?utf-8?B?NXFxTmIreWdQSTIwc1lsM1RFWkNzQkVkU2ozQytrdkxpNnVuZGVLQXgybEM0?=
 =?utf-8?B?U0pveTFrS0FoR2UxMDluZFpXS2hVUWo0cGtibFpRcXdUMXZUR0NlcTd4dit2?=
 =?utf-8?B?RVFOOGE4dnl6VlFnOTVFQVdpQ0JweEhwM2RBTFBzbGMzTlhrU2ZyMEs5aGVK?=
 =?utf-8?B?MlkvTVQzbUNKNjZRVk1VOGpUOUNvM0FMV091YjNrTU45UUxYVHlpRmM5QUg0?=
 =?utf-8?B?cjJiMnpiZU8rblN2SE8wYUp5RmR5Z2FUeGdJeUE2SHFQOFVBaHBQalJRMkZZ?=
 =?utf-8?B?VzA5cUc0QjV0Z2hxUkpTODFQSS9zakIvZStaTXo1dm85ZUdFcEhFSG1OY1J4?=
 =?utf-8?B?M0N3enRKVkdxVUtIcXdYcEFNQS9xTncwcjhsN2hUbGtSN2w0VXMrK1EyU1ph?=
 =?utf-8?B?NDRpNmt3dXplOWpBUnpGT2gzVWthcTB6ZGYvUGtGc0c3UFZiR2xFVFlkMDJ1?=
 =?utf-8?B?SVYrS042Szc2L2I1TFQ3NXROL1lUdEFuZnB6ck0xbit2NG92TmZNT2xGeG0z?=
 =?utf-8?B?b3p2bFBDNjQvVjNQMDNIaXdicnpEWG9wdVhMdUZyL2ZNOWUrNmpuMlBrUDU4?=
 =?utf-8?B?eFZoUTFCZ1lmS2FrdDJXYTNvYjI3ZnJpTUZicnN6VWdIWjFLM0tGUmFjZU5k?=
 =?utf-8?B?ckRWcURsbG0rZ0lScG9DLy9ITFA1OGtBRHQxSjJteTZnc1FTR052bUd2dUQ3?=
 =?utf-8?B?VWt3NFEwNk1QYU8vME9YdktxZ1VpVkN0TjE4TVlLSTI1Mis1RUJaZUdnWUNK?=
 =?utf-8?B?R3F2blVqZUlFcjlFZytGVnBxTllheWhmOGYrT2FRdHQ0Q1VJTHBHYnFjM0d0?=
 =?utf-8?B?VGxjTEFlakF3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0hiUE0rc2lSaU9hQjE4ckxoRHN0bUJYaU9kUXE3VjV5eVVLVEd5dTd3M2lQ?=
 =?utf-8?B?VkNqeFp1V3JZeUUyMGdHdklMUTFOMEVGR0lIbFQ3WGVveWNmd2ZKYiswMStZ?=
 =?utf-8?B?L1gvYm1Ha005ODd1eHNwTTFiMFlCMlFiUng0RDBJT2ozaHVpamhQWHc2cm5R?=
 =?utf-8?B?eEhkQXV2djdiS2w2d3JSdzNnaFRUTnFxL1pTNkprVnBqeWIya1Z4UzdLVUE5?=
 =?utf-8?B?M0xJUktpL1ZOUWI0YzF2LzRieEViOVJ4U1RnS1lBUkxDQUU0YjlPSTV5SnJT?=
 =?utf-8?B?SXh4SmdVT0dvRE40SVV3TVhOeVNSWDRRRXNTSFFSRnU0SDBLSW9mL1NXekd4?=
 =?utf-8?B?TGRnOG9uSkRLY3RweTd5WXFEb3BiTDNoNFdQSkVEOEc3NTk3WjRVam9SazNp?=
 =?utf-8?B?K2tydlJxWTVvWFRJaDVDRjRNWHB0aW5qRmFQemowOXY5NXRIbDJxVEJmNFBY?=
 =?utf-8?B?SG1iMG9HVXM4VVpTTE5NcVFDcFhHVWYvSnRYUG1EZU1mbVJZeENqWHUwOHNY?=
 =?utf-8?B?RmdSWnJ0eFkwVnhIKzU1U3Jha0RGZXNRQVJNRTFabGNVNWMvNVk4cklYRERh?=
 =?utf-8?B?emh0UTkwRlpSczcvcEJPMXgrNGZFVlNGWS9xa3hERXlNYU45bVRpbjhGUU1N?=
 =?utf-8?B?YjJyZGNFVzhyQ1NNZnVJOE5jMEFHMktocStWc0ZqNGRhWHMyWXU2MEFWR1pD?=
 =?utf-8?B?a3JQNGlQcVIwMlRjYkZTVXRmODlpSkU5YkxWM2JndHVZQUFFcDJyR0UzV3Zu?=
 =?utf-8?B?aHh4alFNMXk1cy9hcWZOcnZaR0JPSHV3NFRwM3ZGd3pycUZxTGc2akt2cWRn?=
 =?utf-8?B?Qm82QUFDTi9uVVlkeUxqTlVpaU0ySjdmOXlyL3Z1a0RzOXFDb1JhenNLTGFx?=
 =?utf-8?B?Q0tIeXh3SVRYbmt4RFdBejdqQ0xTaktpQVpMTVVlT0tIMWlWajd4V1FTRWJT?=
 =?utf-8?B?YkpBNHNDOXgzbmgzaGV6UE5sL0JVT09HR0tTbTlORHlma3hPT0ZaSml3T2Yy?=
 =?utf-8?B?OE9LWk12d0RIczMvOUhhQmd0K2JCaTNkZWttcmt0UUlubmJQRVBVRWVrV0FW?=
 =?utf-8?B?NTQvNXluMnA3ajlvM0F2YUhaVFpmSiswcUNEakZGWDNlVUl5MFR4R3RpYm5l?=
 =?utf-8?B?RUEzbC80SWdMS0cvekZsS3ZGNmI0S2c1TkdUR3VHbVFNRmZTQnZoTExYVkpN?=
 =?utf-8?B?emdOcWRtVFNnZ1N1WGxacm5sZkpIbFd2ODRSTHo5SHpzSURlWGtObU1hRnFQ?=
 =?utf-8?B?cEkxQ2RoMWlGaWJmR3pPVzVsUHN4dmdTQVZXNnB6bjNtbVZhVlJZc3ZCRXJi?=
 =?utf-8?B?VmdUQlR5NE9jUFZHaUNuWVNrcHZ0ZTZEMzVEL2ZIV2VtWUlRQTQ5eVBQMXFK?=
 =?utf-8?B?Q0RaMEswZzhLNkpzbUw2WmMzTVUrNUhWd1FLRVV5cWJPdFZkdVNLRFlyUjJy?=
 =?utf-8?B?alFQK0VIY3dKTU9Ub2kreEZ1SXREZExMaGk4T3pkQldIRGlMVEE2MWNvNmxa?=
 =?utf-8?B?UjFSWjE0UHlQcUhQNitaTC9GdFkyNFNpVWdTRkNnM2lBdEUyYWdJT3hWSXpX?=
 =?utf-8?B?Z1JYdWxQVUpLTERzNCtuZkgzOG8xdzUvNG4xL3RlcTFDSndIUTVwRFRnWUk0?=
 =?utf-8?B?aW93bUwzN1lRZlBldkFpSVVSYkR3c3JrWTQydUZEWTVOV3RnRlNCVExycUxF?=
 =?utf-8?B?Q0NsWGgrQzJPTGk1TkFXQVl3eWVtdUVjRjA1L2RnY2d0OHc2Vm1YK202WmUv?=
 =?utf-8?B?cGtMQ1NsWUhKblZ5bndZOEJ2bkJHcVpzU2pvdmdDR0pSMG1ZMkJENnBVUHZL?=
 =?utf-8?B?SzdaemdWNjN1YXN2cFduSHQwbHZHUFlhNDBtSTZ2d3c5aTVZanEyR1l1RjJq?=
 =?utf-8?B?cW02RUZBVEtpRGtkRlVnajNjNzZuRFJqYS9GNU9zRjBmdllvZjNGaGsxNS8r?=
 =?utf-8?B?UlQ1V2YwNVQ0eW91YzNQUUQzSnF5dGFsck9EcnFSa3QrcWoySm1qQk9OUCtp?=
 =?utf-8?B?Zm90YmQzODVCWjJlb3FHdTg1aFNGbUZxL2pTSDIwQVFINWFGTnFaYVZYclcy?=
 =?utf-8?B?YlFrWlE2QmNieUNSNk04Umt1UE9pTGh1QXMzVm5yV2EycjBnejl0djBjS3li?=
 =?utf-8?B?NlUzUytwQm1mdzRYOVlXNzFqc0ZqcDBvRTZIUVNqY3IxS2dSZ0MxdVZIVmQw?=
 =?utf-8?B?RFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca29ab05-e228-4b7e-50c8-08dd66f797c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2025 15:06:14.5164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SacTzHG6NTvXnsi4KNhkTggLAci0Huzgd5Nb4q0GcCQdarhnqd+u3f9s+YVBGkaIACeMiVgC5yV+xCI2UAGgOqpZUX3A3sY5Hu4RqaKyY2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4546
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742396810; x=1773932810;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CSzneefcigGTJTy1hUAGYasFQjvvEuSFDiBiCaGNjTc=;
 b=UwDZna36WlHvJgiisoiUf/WyxluI0xv2ljZYikopfoZyogaHCT3PHqQ0
 S/ZzFAI6aPMKiYCgv/sb92eh6Jxk17BWRDUWpDowBiTFqvOVM2AHRVct8
 1vO6d2xRLhnGIJDS8V+fJ3bdyvmUiex596yO8/xqD9dx35eBIGzRilpkW
 Y9isVtdDDYmnFIBwCZz33akyYbNUEYhJbyfOOXDvAzs/K2/5mOpHxsvwy
 Tl/367h6Qo3kUlKxk+r8Aj8835Wh0roF5I3QwamjcMHpPePdaPtOpZn8H
 3V9pj9oKgoC+ofViaWm3EsAt0xE04kfwz8EsUaKgvEfJtUM/kdQTSCv25
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UwDZna36
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Fix TX drops in XDP ZC
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

T24gV2VkbmVzZGF5LCBNYXJjaCAxOSwgMjAyNSAxMDoxOSBQTSwgWmRlbmVrIEJvdXNrYSA8emRl
bmVrLmJvdXNrYUBzaWVtZW5zLmNvbT4gd3JvdGU6DQo+Rml4ZXMgVFggZnJhbWUgZHJvcHMgaW4g
QUZfWERQIHplcm8gY29weSBtb2RlIHdoZW4gYnVkZ2V0IDwgNC4NCj54c2tfdHhfcGVla19kZXNj
KCkgY29uc3VtZWQgVFggZnJhbWUgYW5kIGl0IHdhcyBpZ25vcmVkIGJlY2F1c2Ugb2YNCj5sb3cg
YnVkZ2V0LiBOb3QgZXZlbiBBRl9YRFAgY29tcGxldGlvbiB3YXMgZG9uZSBmb3IgZHJvcHBlZCBm
cmFtZXMuDQo+DQo+SXQgY2FuIGJlIHJlcHJvZHVjZWQgb24gaTIyNiBieSBzZW5kaW5nIDEwMDAw
MHggNjAgQiBmcmFtZXMgd2l0aA0KPmxhdW5jaCB0aW1lIHNldCB0byBtaW5pbWFsIElQRyAoNjcy
IG5zIGJldHdlZW4gc3RhcnRzIG9mIGZyYW1lcykNCj5vbiAxR2JpdC9zLiBBbHdheXMgMTAyNiBm
cmFtZXMgYXJlIG5vdCBzZW50IGFuZCBhcmUgbWlzc2luZyBhDQo+Y29tcGxldGlvbi4NCj4NCj5G
aXhlczogOWFjZjU5YTc1MmQ0YyAoImlnYzogRW5hYmxlIFRYIHZpYSBBRl9YRFAgemVyby1jb3B5
IikNCj5TaWduZWQtb2ZmLWJ5OiBaZGVuZWsgQm91c2thIDx6ZGVuZWsuYm91c2thQHNpZW1lbnMu
Y29tPg0KDQpSZXZpZXdlZC1ieTogU29uZyBZb29uZyBTaWFuZyA8eW9vbmcuc2lhbmcuc29uZ0Bp
bnRlbC5jb20+DQoNCj4tLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMgfCAyICstDQo+IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQ0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
X21haW4uYw0KPmIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj5p
bmRleCA0NzJmMDA5NjMwYzkuLmYyZTBhMzBhMzQ5NyAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPisrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+QEAgLTMwNDIsNyArMzA0Miw3IEBAIHN0YXRpYyB2
b2lkIGlnY194ZHBfeG1pdF96YyhzdHJ1Y3QgaWdjX3JpbmcgKnJpbmcpDQo+IAkgKiBkZXNjcmlw
dG9ycy4gVGhlcmVmb3JlLCB0byBiZSBzYWZlLCB3ZSBhbHdheXMgZW5zdXJlIHdlIGhhdmUgYXQg
bGVhc3QNCj4gCSAqIDQgZGVzY3JpcHRvcnMgYXZhaWxhYmxlLg0KPiAJICovDQo+LQl3aGlsZSAo
eHNrX3R4X3BlZWtfZGVzYyhwb29sLCAmeGRwX2Rlc2MpICYmIGJ1ZGdldCA+PSA0KSB7DQo+Kwl3
aGlsZSAoYnVkZ2V0ID49IDQgJiYgeHNrX3R4X3BlZWtfZGVzYyhwb29sLCAmeGRwX2Rlc2MpKSB7
DQo+IAkJc3RydWN0IGlnY19tZXRhZGF0YV9yZXF1ZXN0IG1ldGFfcmVxOw0KPiAJCXN0cnVjdCB4
c2tfdHhfbWV0YWRhdGEgKm1ldGEgPSBOVUxMOw0KPiAJCXN0cnVjdCBpZ2NfdHhfYnVmZmVyICpi
aTsNCj4NCj4tLS0NCj5iYXNlLWNvbW1pdDogOGVmODkwZGY0MDMxMTIxYTk0NDA3Yzg0NjU5MTI1
Y2JjY2QzZmRiZQ0KPmNoYW5nZS1pZDogMjAyNTAzMTAtaWdjLWZpeC10eC16ZXJvLWNvcHktZHJv
cHMtMWM0YTgxNDQxMDMzDQo+DQo+QmVzdCByZWdhcmRzLA0KPi0tDQo+WmRlbmVrIEJvdXNrYQ0K
Pg0KPlNpZW1lbnMsIHMuci5vLg0KPkZvdW5kYXRpb25hbCBUZWNobm9sb2dpZXMNCg0K
