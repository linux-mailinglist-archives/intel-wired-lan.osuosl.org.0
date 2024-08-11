Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6949694DFD8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDAF9412F7;
	Sun, 11 Aug 2024 03:39:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OxhoTmOU-0ey; Sun, 11 Aug 2024 03:39:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F26C440B7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347540;
	bh=xITSHssTjKeJIxieudQgZynY+HslVL+gqAW8LZ5dE9k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jMoBDH31lrjq2QhHXJw3KF5H4fiXbaDVa0yex9mFRGE5b/AXxcc56WYDAamHLrRaU
	 s8vR51p4n5VveE287uborB/2RwopDhHwvOAmOvGSP51asauEGUyA6dnagD1dfW7XKm
	 0wIpxK4A0sN6afU+e0XVz2lpJ8C+EKxPcVQWqhrbc/y9bZdMDcid7cU/eTrtyI20bf
	 MaTzyvNOe5yjTHj41UIzgdlozXuWA/iL/51AWeHfLhRwWEzk7zt48qC4IJvoBdnQWA
	 xpYl138b0MxFklNhrZvFsOjtV2wPoepJyCSneddjNBg6oB3MyE0pEi9vcoEwKCqAz2
	 Q2oBRFfEhyMVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F26C440B7B;
	Sun, 11 Aug 2024 03:38:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6634C1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9FD4400C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clu90ftOq0XL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AAC9040279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAC9040279
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAC9040279
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:51 +0000 (UTC)
X-CSE-ConnectionGUID: nuJdEu++QfONBUWlC669MA==
X-CSE-MsgGUID: oBPRfehETNOlWevwqBYjhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="21457783"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="21457783"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:51 -0700
X-CSE-ConnectionGUID: PIOU8jfLT22xeOu7hXtNqw==
X-CSE-MsgGUID: Y9wjWKqESwq3ENfNSAnjtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="57828244"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cmDB0HI5Bhle+18o9vT6enuovwXcUVxFI+GnXORviHCJ5vxMXC6WXGKNLButishqGYMD+1sbstx0H0vMhJkgk+aC6Q0sP2QmwnI9dBd0ZG3Oh57oqzCpbOYQqFnvnlN4cX35amxXYIQPhby8q8gcDHRWht/gNcwGPk0oYoQqqKOnd+hrR+AvmMuTiAK92WzJ/sVOF8hjZrthUsjd2OEVhtLWzSCNDCBGTTTUCQXu52VYaXX+C+kd8RErVhX+tJciY/ShM+5kK2OD+aqUX/7Z9cJZEvTO97W2hiCXlOuEKMm+Gle7ZZwlbW5mvvPeGEW4J5TJmNIkTnN3MWCQ/5Np/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xITSHssTjKeJIxieudQgZynY+HslVL+gqAW8LZ5dE9k=;
 b=xYBs3qz8Vf4HCinMTQpAA+WZrN1IwYeaIAN9LQw1aUGpaLb21xLE4hHrePLnJTmZLnu1e0Wyp3Tl2EUWhk0EVej/i5/1/2g9l7pMzMRF2RYuDJSSTrkKPeZa6PyHBdlSC6wqxzQeMkNAk2H/c0C3fCi7SJRuae5GzUpIkc/jmBkSIsyEAVygdzb2knq1fPEstSYEywaHAC8LpoFNfWtViSHMr1QJsfiPTKZlL4OEEyYTmOjW+63bOPMSncZNQWBn3F/0JInWJ3gyErgO8cnSpyoBCHV77YFerJkWh64NhgsVTJUOAOIie48TL2dPFokpeyyvhm7MFXJB/y399x0aWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:45 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:45 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "\"netdev netdev\"@vger.kernel.org"
 <"netdev netdev"@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/7] ice: stop intermixing AQ
 commands/responses debug dumps
Thread-Index: AQHa6EHioIFrWCH82Ei4R3b+It5U3bIgWNBA
Date: Sun, 11 Aug 2024 03:38:45 +0000
Message-ID: <CYYPR11MB84294387F402734EE56EA680BD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
 <20240806-e810-live-migration-rd32-poll-timeout-v1-4-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-4-b5ada29ce703@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: e0f7eb9b-aa89-45d9-09a2-08dcb9b71ab3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RjBPaFdoUHZSUUdOOEpjQXBGeFdHRG0zTTlMWWZjYlA2TWFzTDh5d3BzYzhs?=
 =?utf-8?B?cWdWSy90T0dtcEtqTkNYdjFwc3JUVnFHTEI4cE5CT0sreGhOR21taUQ3K1ZV?=
 =?utf-8?B?eldFWFFNOHlMUjVkaFFHbFE2Q0p2L3lCVDhBQ0lVMUdjd0dQdFFIMGVBTjFI?=
 =?utf-8?B?c1R4bXFMV2NnL0hmN1FHZkZ5ZFU2enk5ekJPUG5ubnBMNnRLdXQxZERuaHNV?=
 =?utf-8?B?Y2dQYVNtRG91OHJESXpOUnZPNitPakxDUVNaTUFMclNWUklGRm11WEM2bVFU?=
 =?utf-8?B?VWZKa2RidlFIYlBuYzEzd2FMdmpIOWJFdlFJaU9pQmNIcXkwU1FrSnMrWEZW?=
 =?utf-8?B?WjQvVUZKN1FkdGlmaGx3ZzdqNlpKRlhjd2RjU2VZNnhlenlyM0JuZ0k3WWRr?=
 =?utf-8?B?cGh1VVJEY2I2VUM5aXRxdklMWDdDbGNFc0V1aXh0MTh0TFJCOU5rbW9PbDRB?=
 =?utf-8?B?L2RkcG50Q3NUbzBjajIvK3BlV1U1aUpObFA3d3FXeit0ZCtTNlVQL1VHT2ZQ?=
 =?utf-8?B?RGVxOXhucTlINlBWczFvTkc5ZjZqd2hGL1ZiaittaWx0ZkpFdWRNTGVOQnha?=
 =?utf-8?B?RndkMGhIYkdmUk1IdUZsM3ZxK2F6WkFqVUNid3ZYaVFEcEZlY1VKR25RdzdB?=
 =?utf-8?B?Y3o1c2NFb3FvRFQ0TXBNZ0hYN3JrRzlRY21CelhaUW1iUm9wZ0lCbVVtbUQx?=
 =?utf-8?B?Vm54bnV2NFp1ZS9JYlBRaHJUT1pwaVVZZm5EYjFGakdjbHlBTWduQ1hPaXZE?=
 =?utf-8?B?d1BDY1lYcEllOTN3cS92WUlXbjZhR2ZIOGdnZ2dIbTJNTFdmVzIwZGNieGJY?=
 =?utf-8?B?VnBDSnJxdEZmS3VPbmFWeHAxUGlhZHUySEw0a3lId2hlV1o0Sk8xZ3ZMQkR3?=
 =?utf-8?B?cnllUkhPMjAxS2NyNGN4anJpamlmdFhvdVBlQWtMcTNoeWdxWmVOalRjMWdE?=
 =?utf-8?B?emFCSklCSjJmaURuQ2VYaGF5aXRFS3NlaWJqN2k1M2t6Q2krdnFVNGdqVGo1?=
 =?utf-8?B?WUFJQXZ3YXhHQ2FYbjVKL3htSU9TMFFkZTlKaG1YYmJWV0NiQmV1NzZFY3JE?=
 =?utf-8?B?UzRZY2M3T1pxMjB2cS9pV1JtdFRsZFQyeWVzaDlyMU1sTnQ1dk51czdqVkg1?=
 =?utf-8?B?OTltUkd1SUdrZEVoS2c0UDdCNjI4dWtzNzl5dHg3ZjZBdk5heUYvcTRFdS9y?=
 =?utf-8?B?aVFrU2hYT1VsdjJFMUxGeXBNUTluMXFSNjVHT1hXeDFqRjROZ1ZUSTVyRXZY?=
 =?utf-8?B?ZkdNWUtLb3V0V0NtNEg1Z1RnOFBNOUFJcUYycndMQTlpN0lPWlNKZjVMaHJq?=
 =?utf-8?B?OXQ4Zk13ZWpSdFdPRHJUUmszMFRMV1NiWVJiQ29uUVVrcXd4MytwZlYzZjA2?=
 =?utf-8?B?QkM4dCsxM21La0NEdlRrOHBIWWlVd0VDOEpMK2xndlM2ckt1SXI1YWxyY0xl?=
 =?utf-8?B?bllIaVVZakpDSERJNWxkMWl6V05HL1F2SUlBN0w4aVUrelFleGxaL3FWemJF?=
 =?utf-8?B?N0ZzcmtUdS90Uis5anZJWFNjRUNHVW5HQnFFNzlPR1B1UHVVRGgvdGplTGEz?=
 =?utf-8?B?ajIxazBTS0dBdHFuK1NJWWFIMmtwc0dXc2ZyUDJFVno5RUJZQmFod2s4VlpK?=
 =?utf-8?B?NkxUQ1JlNVhFY1I0TFVHWGx5Q2JtbzBCcEwyMWtTMXhja3Y3RnJIcnYzZ1BR?=
 =?utf-8?B?ZEs0YXhIN2lDSlFqT2hjWVNnY21nUUQ4NHFuYy9laTk4bHdONk94N0FhbTM5?=
 =?utf-8?B?M1lmM3NCcnVWTUQ5bS9BUnNHTjZQZzArV2NIa3ZCQk5qbnNwZlpxOWlwTi92?=
 =?utf-8?B?M1RHZTd4S2pvQmVLYWcvd0lnSVFIUTFydGpOOGZVOWhUOS93WDVzMDZnd3cy?=
 =?utf-8?B?MDN4TEQxWVpKVWZEeUp6VjhTRXFtbjV6S3hFaHJFY1lqY3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmJvYnJMWGs1OVBYdS9jcUNVYzdBR0JTQk00M1hMRGZpd0M1SmZTTGU5RFBI?=
 =?utf-8?B?RmtENUR6QmF2Z2pLQ3pBUXJJbThhWmZnRnN0dVVRMlZyME80RHNLeFZIMjZM?=
 =?utf-8?B?bDBKZEMrczdQZ0ZzNkhsaCs0Q1VhbkNxRFFQVldnU1J2eGlzdHAva09yNmty?=
 =?utf-8?B?NkF3MGpuKzlQQWd5SUdsNzJzOEVkdmIvVjExdnpTVHdUUzNneHhFWFA0c3k5?=
 =?utf-8?B?b1ZOSkRreEFHQmhNeEFHR2o5UWZUcnFhRWluL2xYaFdMekZidHZzdURUcDMy?=
 =?utf-8?B?SGZmSENDVFEyVmRXRVR6WmlNc2pCQ24xMDVjNm82b3BxaXVvQUNWdCtBQTRI?=
 =?utf-8?B?T2dpTFhIS0g5NzBQQVJmeDFVakwvdWRMeVdaUlZpcVg2S0tIaS9Ibnc2aDJJ?=
 =?utf-8?B?bk56NnBKS3IzajlnK1kvWjZSV3czczBmNmRkMTFUMHRjQ2pzVGpTZWtvVDVU?=
 =?utf-8?B?RU1VRW5FZHhVTUFUYWFHcTB4RjVpRzJSMHk1MmRHRG5EVFg0Sno1OFlHZEsy?=
 =?utf-8?B?TTZOZC9TTWJQNFltejV3WmZjOHJFWU13cUE2T2RGbXdRcC8xN010NllhT1Z0?=
 =?utf-8?B?MHVCK2tscDFMZFJvMXhhaDV6RGFpWnFMTXpIRDl5MlFldVhTaHkvZnNFUXc4?=
 =?utf-8?B?SE5aTE84MXBmcVdqdkNoNHlYQVNIUjZRUDh3QVVCRXVNdXJQbEU1eHZRVUN4?=
 =?utf-8?B?WnVzcnhWVWF4RXAxaHA5Y3lGSnFYdmRicFZ2QTBRUFh1L0lsaWJOMng1aG5T?=
 =?utf-8?B?OTc4Z05lQnRCT2NDM1VaWGw2WG1lT2kzT2FyYjVHYlpVSmlqb2hHVXNaY2FY?=
 =?utf-8?B?eTgreDZrRXdKK0xPcFNPYkVabGV6b3BJc2V5NFovQzNyeVM4UWhhbDdCNGhE?=
 =?utf-8?B?K0RvQllPUUEwRzNvYjNmR1l4MzkzcjlpN0YwRzVGa1NUYVFlc2h0RFVYQjdY?=
 =?utf-8?B?d2g5a1hUbFBJTHEzTWgzV1VzZWtwUVNnRUR0aWxDSmlSbS9nQndQNmRUYTV5?=
 =?utf-8?B?TXVyTm9hem1WZUNUQzU4eVRFKzJxRnRIMUVHdERCWjlSVE9zeGhmL2FLaDgw?=
 =?utf-8?B?TmlZcDJBcVJieGUwUkNEbE5PeWlHdDhqeU1IOTBadjlTMnhRUG5SV2ozK3Ns?=
 =?utf-8?B?NTl0eDVJNTVBS1RyZERTalo1bTZpMUNSY2FPcEhJdS9TYndnRXBNTXphTDIz?=
 =?utf-8?B?V2dDRnh6aFpCQlMrcFFid2M0Y0d0cUJGTW53SWpjdzVYOUhkUnhuV2NERVp0?=
 =?utf-8?B?M0NjZktzUXFEZ3BONEFVZ0JoUTBSaTdGY25WdS9WdjNtaUV4VGxaZkxZTXhi?=
 =?utf-8?B?TkErZkpLNXpkbE96VUE0ZVp3aElYWGJ0Qzg2Qlo0UTBlLzJuMFVXWDUvcTZz?=
 =?utf-8?B?M291bUNMVGFKdVlhQjN3U2wwL2d2QkUreDJGNHJTTkZNSXdSL2NLamlvTFN0?=
 =?utf-8?B?bDg0SDBHaTQvNnU1WXBXV1FqMlhrWFpsUVZ6Q2xTY1BvZE5qMElFZ3ZrM1Zj?=
 =?utf-8?B?cVNWVHhOWDFVVHRkUTA1QkRJcHVGaHVBQURHaSs1OTg4bkYwWTFXVm5UQmlx?=
 =?utf-8?B?R01kSjhGc1d1UXBLK09NbE1lQkRHYU0rZFdBeWJMVGpwSWhxTCs1dSs3NHJB?=
 =?utf-8?B?bVpSKzZ1OExOVkx5d2FmSTZqTnBrRnMvcFBjNkxFUjdrUWx4VkJGaS93MDl2?=
 =?utf-8?B?MlBUS0dpVjNELy9UMlZwc283TzFpcm1lamhFUXQzM3lhbDJ5dCtxeWx6bFBm?=
 =?utf-8?B?ZGNPN3JsamJrVUVGTkw4SDN0VEVYRDlQVXpSUXZXMzdCcGxxZE0wUmdIYW0v?=
 =?utf-8?B?b2QwWE5WSlBhcTFZd0Y4UmVUdkNIQXVCM2J2OGwyb2FpS0I1WW9NQTN1VklX?=
 =?utf-8?B?UXVITDNtWFdoL054bllxRTUvVmFka25IZGdkUUdiZ3JRcTBpWDF5Y244VlM1?=
 =?utf-8?B?UDR2MlBmVHIxZXJqcnExSG9Td1A0cVNUVS9YY25qYTdCWllGUEtNVDNKbnR1?=
 =?utf-8?B?VEtOUW5aRk93T2VCVDNPcFY3MzFRM2xncFlCcExLNUxkZnFxY24yMTRPOVpE?=
 =?utf-8?B?V0FUdzJ4OGJYMUNFaUg1UjdlV29OS005S2JEMUs5YjRZNFBpNmhHOFYrM3hq?=
 =?utf-8?B?S3JqTm1Na054dGN6T1RoZmYxRytkemYrVk1GQkNxZVJabzhmdUtMUFFoeHZL?=
 =?utf-8?B?eXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0f7eb9b-aa89-45d9-09a2-08dcb9b71ab3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:45.7566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /z/eKqlw/MNXrMKcIHY+GHX5K7wNcyin5OqL7dRFBHmxJIJOTqRnpzYD5IZ/Q+vVuDTHkRI7hyt+Vt2ByVjaHnP6Apq52BmvwYtkvzRiF38do6ERZlxEG+/JhizIBbFb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347532; x=1754883532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xITSHssTjKeJIxieudQgZynY+HslVL+gqAW8LZ5dE9k=;
 b=O3a9QqSRVtxz20P07MV3DAhjR2KsNEioWlJzYPDS1u7mYOSkDB04U8ke
 TN5Nh/FpK4dUAu2oyjMzJwXhpr1j6fYCU04YSE+4LFCI8Lh9VLh5rtLBy
 WgP+lRZRaxVK9WMmMDyWkjNzVokqUaXv+DjqKwrHaQSJczmwUPky3+r+Z
 YaP0tNBDIkX/uxADZpfGgtKMuwlR7jc+vbd+WpXda/h0cVR1aTSliwVv6
 rlEB3MS34UXqx3m91s0T6r+qJIvimxYeE4PZK6fT1ZZyBm4b6IKzezL8p
 jUChjW0y+PYheR0oVabpjT2U4hCKH5Ryva93mNcjZl8VjM+jQO2RTwqdH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O3a9QqSR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/7] ice: stop intermixing AQ
 commands/responses debug dumps
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Wierzbicki,
 Jacek" <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCAyOjE2IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgIm5ldGRldiBuZXRkZXYiQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogVGVtZXJraGFub3YsIFNlcmdleSA8c2VyZ2V5LnRlbWVya2hh
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
OyBXaWVyemJpY2tpLCBKYWNlayA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCA0LzddIGljZTogc3RvcCBpbnRl
cm1peGluZyBBUSBjb21tYW5kcy9yZXNwb25zZXMgZGVidWcgZHVtcHMNCj4NCj4gRnJvbTogUHJ6
ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPg0KPiBUaGUgaWNl
X2RlYnVnX2NxKCkgZnVuY3Rpb24gaXMgY2FsbGVkIHRvIGdlbmVyYXRlIGEgZGVidWcgbG9nIG9m
IGNvbnRyb2wgcXVldWUgbWVzc2FnZXMgYm90aCBzZW50IGFuZCByZWNlaXZlZC4gSXQgY3VycmVu
dGx5IGRvZXMgdGhpcyBvdmVyIGEgcG90ZW50aWFsIHRvdGFsIG9mIDYgZGlmZmVyZW50IHByaW50
ayBpbnZvY2F0aW9ucy4NCj4NCj4gVGhlIG1haW4gbG9naWMgcHJpbnRzIG92ZXIgNCBjYWxscyB0
byBpY2VfZGVidWcoKToNCj4NCj4gIDEuIFRoZSBtZXRhZGF0YSBpbmNsdWRpbmcgb3Bjb2RlLCBm
bGFncywgZGF0YWxlbmd0aCBhbmQgcmV0dXJuIHZhbHVlLg0KPiAgMi4gVGhlIGNvb2tpZSBpbiB0
aGUgZGVzY3JpcHRvci4NCj4gIDMuIFRoZSBwYXJhbWV0ZXIgdmFsdWVzLg0KPiAgNC4gVGhlIGFk
ZHJlc3MgZm9yIHRoZSBkYXRhYnVmZmVyLg0KPg0KPiBJbiBhZGRpdGlvbiwgaWYgdGhlIGRlc2Ny
aXB0b3IgaGFzIGEgZGF0YSBidWZmZXIsIGl0IGNhbiBiZSBsb2dnZWQgd2l0aCB0d28gYWRkaXRp
b25hbCBwcmludHM6DQo+DQo+ICA1LiBBIG1lc3NhZ2UgaW5kaWNhdGluZyB0aGUgc3RhcnQgb2Yg
dGhlIGRhdGEgYnVmZmVyLg0KPiAgNi4gVGhlIGFjdHVhbCBkYXRhIGJ1ZmZlciwgcHJpbnRlZCB1
c2luZyBwcmludF9oZXhfZHVtcF9kZWJ1Zy4NCj4NCj4gVGhpcyBjYW4gbGVhZCB0byB0cm91Ymxl
IGluIHRoZSBldmVudCB0aGF0IHR3byBkaWZmZXJlbnQgUEZzIGFyZSBsb2dnaW5nIG1lc3NhZ2Vz
LiBUaGUgbWVzc2FnZXMgYmVjb21lIGludGVybWl4ZWQgYW5kIGl0IG1heSBub3QgYmUgcG9zc2li
bGUgdG8gZGV0ZXJtaW5lIHdoaWNoIHBhcnQgb2YgdGhlIG91dHB1dCBiZWxvbmdzIHRvIHdoaWNo
IGNvbnRyb2wgcXVldWUgbWVzc2FnZS4NCj4NCj4gVG8gZml4IHRoaXMsIGl0IG5lZWRzIHRvIGJl
IHBvc3NpYmxlIHRvIHVuYW1iaWd1b3VzbHkgZGV0ZXJtaW5lIHdoaWNoIG1lc3NhZ2VzIGJlbG9u
ZyB0b2dldGhlci4gVGhpcyBpcyB0cml2aWFsIGZvciB0aGUgbWVzc2FnZXMgdGhhdCBjb21wcmlz
ZSB0aGUgbWFpbiBwcmludGluZy4gQ29tYmluZSB0aGVtIHRvZ2V0aGVyIGludG8gYSBzaW5nbGUg
aW52b2NhdGlvbiBvZiBpY2VfZGVidWcoKS4NCj4NCj4gVGhlIG1lc3NhZ2UgY29udGFpbmluZyBh
IGhleC1kdW1wIG9mIHRoZSBkYXRhIGJ1ZmZlciBpcyBhIGJpdCBtb3JlIGNvbXBsaWNhdGVkLiBU
aGlzIGlzIHByaW50ZWQgc2VwYXJhdGVseSBhcyBwYXJ0IG9mIHByaW50X2hleF9kdW1wX2RlYnVn
Lg0KPiBUaGlzIGZ1bmN0aW9uIHRha2VzIGEgcHJlZml4LCB3aGljaCBpcyBjdXJyZW50bHkgYWx3
YXlzIHNldCB0byBLQlVJTERfTU9ETkFNRS4gRXh0ZW5kIHRoaXMgcHJlZml4IHRvIGluY2x1ZGUg
dGhlIGJ1ZmZlciBhZGRyZXNzIGZvciB0aGUgZGF0YWJ1ZmZlciwgd2hpY2ggaXMgcHJpbnRlZCBh
cyBwYXJ0IG9mIHRoZSBtYWluIHByaW50LCBhbmQgd2hpY2ggaXMgZ3VhcmFudGVlZCB0byBiZSB1
bmlxdWUgZm9yIGVhY2ggYnVmZmVyLg0KPg0KPiBSZWZhY3RvciB0aGUgaWNlX2RlYnVnX2FycmF5
KCksIGludHJvZHVjaW5nIGFuIGljZV9kZWJ1Z19hcnJheV93X3ByZWZpeCgpLg0KPiBCdWlsZCB0
aGUgcHJlZml4IGJ5IGNvbWJpbmluZyBLQlVJTERfTU9ETkFNRSB3aXRoIHRoZSBkYXRhYnVmZmVy
IGFkZHJlc3MgdXNpbmcgc25wcmludGYoKS4NCj4NCj4gVGhlc2UgY2hhbmdlcyBtYWtlIGl0IHBv
c3NpYmxlIHRvIHVuYW1iaWd1b3VzbHkgZGV0ZXJtaW5lIHdoYXQgZGF0YSBiZWxvbmdzIHRvIHdo
YXQgY29udHJvbCBxdWV1ZSBtZXNzYWdlLg0KPg0KPiBSZXBvcnRlZC1ieTogSmFjZWsgV2llcnpi
aWNraSA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFByemVt
ZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9vc2RlcC5oICAgIHwgMjQgKysrKysrKysr
KysrKystLS0tLS0tLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bnRyb2xxLmMgfCAyMSArKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MjUgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pDQo+DQoNClRlc3RlZC1ieTogUHVjaGEg
SGltYXNla2hhciBSZWRkeSA8aGltYXNla2hhcngucmVkZHkucHVjaGFAaW50ZWwuY29tPiAoQSBD
b250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg0K
