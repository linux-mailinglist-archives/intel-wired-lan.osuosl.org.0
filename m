Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E98CCB7C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 11:51:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71BD5606CA;
	Thu, 18 Dec 2025 10:51:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WzD3wNQ9VNjA; Thu, 18 Dec 2025 10:51:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEFCD61149
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766055060;
	bh=86BdkMSncxuEtkUt4BZbg/rUBoc2f7JaxbH4GWQBGWw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XSAbbRT1Sy4h3mWFDnUht7Lwxd9cnclsYe176h3nGKN1DOhiXrwhDIOyD/omYvsDW
	 nRF1vViubc1bPkC0HoWgRL9RiuWbvEPuIC4szFihZiYIeCPngHLUa+uxl37hPkC0JJ
	 k8g36yoDzjl9P5yq8o8dEi2ZX82ybNnbifsOygaLBRVBUi+Pmcj1Oql/LWdy5fJn5B
	 ZuhH1kmh+BeRA/aQvBPGHutrxpfC3ss+9fnG3Xi0PtH6BEVEJS7lKrGcehWKKM8yQC
	 WJxyG/9m515OlilUaN3qk81Cb6v+YbleuMkmn9JXtV6BEY/aHIaXOeIpx13+BPCOzV
	 vT1PLvJTq5ODg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEFCD61149;
	Thu, 18 Dec 2025 10:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B779E1A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E97840391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WkK12q_AWezJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 10:50:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6AF54036E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6AF54036E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6AF54036E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:50:58 +0000 (UTC)
X-CSE-ConnectionGUID: /gl3TlG/TPiWa83KuO/ZPQ==
X-CSE-MsgGUID: L65AWoGlQqyyXAqMwQqJ8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="79463824"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="79463824"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:50:58 -0800
X-CSE-ConnectionGUID: 62y+YC2cRHKF1K6N6/adhw==
X-CSE-MsgGUID: JTYQpLloTgSU/YdsiazMZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="203070714"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:50:58 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:50:56 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 02:50:56 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.17) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:50:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QFU1p3Q2MkOtkHr9sO5P+fUto+rkLPtcA+vzc9+qhw3gveK3SXI2bhVTJqj7+DBkYTbKcEqf7QfKQnwWyaGl7pTQAzFv2CEN3d0G0Ej6ilCgMSns1Gs6J/CcUlLHnQu0sa8U2sYZQddtO0aIqIaZjbRAweApu4jEN7BpclyikPs3D6h0c/6iaY9kC3d0Q2HH7CvKJ7M6Tl7ZEI+C05jXf3VSViBdGL/28c18brAG63BIM5ADvL8L2HJ17JCOWAMpyRf+gPR+qQbfi6ODKrBF9E7y6OnbKvMydjlzpheawyXz7LvvmZk2Id1NRL0XuW6qPJS0hDDdno69Fj3Ni9u0RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86BdkMSncxuEtkUt4BZbg/rUBoc2f7JaxbH4GWQBGWw=;
 b=MLUvX+Q+zW93EKzhX/yJjQftbo4bd1r9r0XVStenKuV1rHEnXvexQi/NTGBmG4Ip1qVtBxfFbrD4utkxA0myvcKW2iJMYVUGB0QOKdVJpYfgxaLeHHKJHmoApiHo2kT5bAJpA+2V6ZBODFsQnVFKhLXDHspIXsCQEsBNUKUBfLJ+lwsK9o79a2SDFYXyRSZl8Tgy5vyb8qhzMlVtrxopWBY116rzsyfEtgsTfEwimBIm2zxqkhP3Eg+3l+xYiZq958WAtK87hinKBBRpZGSfqZOvxoOgT9xMRfVgCA8KbwV0sWfrWeMZ4hRhyCC/2wwpZ4tq3AZSAvl1zhepXFswHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6196.namprd11.prod.outlook.com (2603:10b6:208:3e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Thu, 18 Dec
 2025 10:50:54 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 10:50:54 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 3/6] ice: remove
 ice_q_stats struct and use struct_group
Thread-Index: AQHcWltMe/B+ZaFpGEyQDdMlqvxmhrUnIb9Q
Date: Thu, 18 Dec 2025 10:50:54 +0000
Message-ID: <IA1PR11MB62414896C227BF140603A9C38BA8A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-3-6e8b0cea75cc@intel.com>
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-3-6e8b0cea75cc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6196:EE_
x-ms-office365-filtering-correlation-id: 979010fe-364c-47d8-f284-08de3e235175
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?S2dkSGFpdHRMV1k4SDg3V3dQbHpCOVlScXN6UCt6cjZEZXZGSnhSQ0Jza3pU?=
 =?utf-8?B?dGNZTnVKVEdZUkFPaHVqNkI5YzN2Q0dUWHRqTDhkM3YrTks1VUlNeUp2YUNO?=
 =?utf-8?B?dE1ZL0Y4cmVkY1VESHdEUDhEcENFMzBZdDU5WG9MRUJRbkMxdVo2RHZ2b052?=
 =?utf-8?B?bU9iaHh0VER3QldrMjNmam1JOGVoT1NRSlVSWWFUYjIvTkNTZVZLQS90eWxL?=
 =?utf-8?B?ZzMvR3J0c2dPQWtYZ0NXMVZ5VlNzaFoxRzNHQktqbFZWZW4rMjNlVUsza0sy?=
 =?utf-8?B?OHJQZXNYUGRrckZDaHptaDRjT2hNc0JBcXo2K0J3dWpNRnhETnErWDFCS3d3?=
 =?utf-8?B?bTJ3NmU3Nk5iNXBMOE5iWEpJc21McGtWdmdjdmtjSlpVdmlmeXJUYnFsb2JQ?=
 =?utf-8?B?YkJkQ2dHMmdVTHZkZmJQeDlBcG1ESFZFbTNlbjEzM1hqeVlZeUVjdnVNa2k5?=
 =?utf-8?B?NDBOVGZKUHd4N0FuV3dQNXNsLytXRG5HUjNqRllYVllUSU5XQlBhamkxZ2xS?=
 =?utf-8?B?U1JTa0swcGREY1NXL0lETVNPZUhTMExwMVgwaXo5M25BN20xUkhmakRsV2Ir?=
 =?utf-8?B?WnEzVzZncWRPNnc4MExNaEZ6UGV4bUhxREZKZGxYQlh2cG95YjE4YVBVSld0?=
 =?utf-8?B?NWNyd2VOZHo0aS8vYWw4cWZFZFp5U2E4aUR6MnFWMTNRWW9FbVYwWmVXZTNn?=
 =?utf-8?B?czhoNGhFcWNvSWlMcTV4QU9wbDlIUC8zVmRHUTErSWlQaGIxWnZwL3AxY3JK?=
 =?utf-8?B?bHJvVlFWUDNZeHlaMHR5NVFuUllWWUo3SVNSazR4QUFRYktpSm8rTFgxREhp?=
 =?utf-8?B?NWU0dFRjZlF3M3hkNUo1SmF1c0MzK3lOZzZUMjI1QnBDUVdRbGxSajhPVUxL?=
 =?utf-8?B?aFpYT2FQazlRa096dW5nSDlzbFA5SnF5Mk55YWxOTWg3TkhWcEYvVGl6cS9i?=
 =?utf-8?B?ZVdVM2xkaStWUWo0VXdNbUh3aUd2QzlON1RRWEJUU05WbXdYRkNwbWlBb2tN?=
 =?utf-8?B?RGs4Y3k2bzBTSFV0andYWHNmejlqc1VWUG92TTRsZllZckRIaU8rb3J4Q2k2?=
 =?utf-8?B?TEw2RjBUaEZNS1MxWEVScnhsN243SjNQSVpaZFgxZFNUUStXUXRvYnBHbCtN?=
 =?utf-8?B?bitteVNhb0I4SyttMWVQcnNFdW1yeEhqSU5neSs2MDR0RlEyZFhFQ05aZDNK?=
 =?utf-8?B?N2hRQmxMQ2pzWXZoY25ObjE4T2s5OTh2TlNNc0l0bzlocXlQYUdNMFpwRzNX?=
 =?utf-8?B?d09ma2V5SEZnYmVXTjBlRFBkZlF5ZTNzQTI0RG5FdUZMYUZqV2VVR0JmMHV5?=
 =?utf-8?B?V0gwSkh4RGtuL2FoSnlBTGloNHhPVDZiOExES2Uzamk5ZWNidmlBQnZ5bmky?=
 =?utf-8?B?Wll2QmNaclJGa0pZMEVUT0FLWHdsK0Z2U1l2S1RxdjFjVDcvMnAzQjFYNFJ6?=
 =?utf-8?B?TlJBUC9LZE1aRzh1SGlNSGxoQ1NXL3V2Y1NHaU9nOXZhSUNHWXNVTTQzUGhF?=
 =?utf-8?B?WFQvcEFJc0s5QlAwOUJtRzBLRzhsZHVCbktUbEpHT2E2QXFNenZZNVRnY1JX?=
 =?utf-8?B?NzBDYzZCUmI0dXBwa1hySE5adU44S1U5clNjYWhra1ZoRXBTQU90bGNGOVFM?=
 =?utf-8?B?SVl1Rmk1cHNDMnZSZzJBbkhWZ1lRL1JOK3dQZ0p4THlyank0RnZlcFlQTE1D?=
 =?utf-8?B?cE05cHZwZFdVTldwNU8rNUdIbnBWWkE1UmVLUHUvTFphSy90YUkyekF4MTli?=
 =?utf-8?B?c1pMUnhmNWpDTjNhM2dBcEJkVnozeGJLdU1KNU5wb3gwZWVUVXhRMDBaeUZG?=
 =?utf-8?B?YlVrZXhIUXBtMkNuR3U5TDBWUUZKcnhWVHJMTlhxTWJLWTdWa0poMUxXY1dB?=
 =?utf-8?B?T0NWSVRjL1NWOWFRd2JPM2NnenMzNlR0TVNoNmJtRS9pYWhaSmhjbEF4Q0Nn?=
 =?utf-8?B?dUNEYXhLOG5leCtERFkrMm0wenNjWVVWRHVVRVd5NGIzbUtuVlB2dlo3OW12?=
 =?utf-8?B?dVowSXRNTTlveklGUmQ4YW5aMWhvazNHa2pDRDY1YkFFT2J5NXhEV0U0ZU1K?=
 =?utf-8?B?K2VxRzJubWo4SFNJRDMzRzhlQ3Q0d09JeXBHZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0VUTXdyZVRzWFdtU2ZIOEY1M0N6QUV2VTJveG5zUmlsOXZlYjhKKzVMZm5T?=
 =?utf-8?B?SjVsVXU3L1VUdHFrYzVOTk5teStEV2MzUkoxQ1Vyb0F0alVFWmJ3Z2l4WmNx?=
 =?utf-8?B?a0l5c2dMRU5IWkFYdzBDZE83OFovZ1pHWTd3WDk3Z3dDL05sSHpmdS8rZkdN?=
 =?utf-8?B?NUJxZWZmZk9lOFhsaWd0REkrMHRxMWdlVFArZ0J2V1gvNllKZ2N3cFFnU1BZ?=
 =?utf-8?B?b3RJUlI0RHdveDFtcEl0MTRQbnB2eFNqek43RGFpZnRKSkNJKzc0NmwrY0I2?=
 =?utf-8?B?TDEzRDM5M0diNFcyVUhoRU16ZjRhR0tQaVladnI1aFZkYnZ5d00zSWhDY09N?=
 =?utf-8?B?cW12ZFFVb0FqRkZFRkVsQzVwdmFEVktIbWZtTzZuV01weGhybENma3k5eE9I?=
 =?utf-8?B?ZGptQVk0TkdBbjRFSklQL0xaSDNFek1aOVBNRGVWbmZqc3BJUHB4NmJYVGFM?=
 =?utf-8?B?VktIMEtLWjRxOThmSW9RcTk1SkF3Y203Wmp4SDBkelpKSGZmRk9PTmV1ck9G?=
 =?utf-8?B?Y2JkWXZVMkVreUM2bXljRWpseVFmWCtpVk16V1hiSXA3TmRxQTE1RVdJOGp2?=
 =?utf-8?B?OTl5UlkzSldCa3U3NFduSFBhcWQ1K1E1TktRV1Q2Z0lQSExRaUI4REp0OGFW?=
 =?utf-8?B?S0ZDNTIzYzBxQkxURUN0TlNwbjh0SmM0NjZQMW5OajVrZVdYd2YxMWlCYVBZ?=
 =?utf-8?B?Sms1Q3FJa0EyZjVMR1hORGgyTUoyaStpcU5yVWIyVXIwdjh6RGJuV2VRb3dF?=
 =?utf-8?B?V1BzaWkvQndaQjFHbTdqOEZXUkVpa0FwSzZaRjZlUlVKUUpTdTZxbG16MzE1?=
 =?utf-8?B?WWdBdFYzR3NjRXJpeXlTTlNHT1ArcEFKbU0xUDA1OUpxa094T05aZk94ZFBY?=
 =?utf-8?B?SlVvU3ZOdXd5aS9QTktWVW1tZGVoRHZGNk1jYWtYOGM3NTB0N3c5R2xpdm14?=
 =?utf-8?B?eW5XcDZCdnJPMUxaRmNsRDcyU25YRjdqdlFIWDdvaHpaNVRTNStsT0lwazRI?=
 =?utf-8?B?UUV0NzcvNXJQVXB1REZlSkNDejRGTVNPSVM4RmtWVkQ0b2YxVEg4QU13NzYw?=
 =?utf-8?B?NU56TzZrYXIxVWpSYU92TnRBUmF1VGZ5bjZ5M1dzOHhJTmVHcEIwZGtWQ0Nq?=
 =?utf-8?B?cTMvdE5VNFdMY3VmendEdHpKQkpGT1JUbzY2Sm1peWtZNW83SHoyWHovWHlO?=
 =?utf-8?B?Y2ZUQjB1bDNvR0ZMTUpYcHVqZXU1Y01jYkN0dHNscVkvVW1XMVBjUng5NHZB?=
 =?utf-8?B?QmVIb094a0RHOEVBaXMxb3JrbkVCZDIzNXlCTXNHNXhsRGhEVTZyaE41QVVh?=
 =?utf-8?B?NzZsMlZsSSs3Wk1UZkthbmtHelR2MlJTNlh2TXUyandPU0R5dFRkOFk3NDc0?=
 =?utf-8?B?OU4raVhQY1U5cytUYnhuNm1OUHZFWmJLWG9iYkg2dHFwblFSODF4Z0FpNlBI?=
 =?utf-8?B?dGpxSDlvTmpySjVmYXNiN0VISEpEQmdLUFpYN2tNWmFvWTZ1QTBtZmJmOWVG?=
 =?utf-8?B?VURVWWh3OTdHdGxocCtKYVJLTlMyVlVWYlRqa1VKM0J0L3REQ2lYT2wvS3JU?=
 =?utf-8?B?UlY1TUNVZ1JVWXA2VjVsdFhkM3NSN1pyc0pMbTU3TUtYVjRlSmI1Q3lzQmor?=
 =?utf-8?B?VkM3UDZ2d1A2b1ZGOXRHd0FGREVWSkNPRlBQaGRmdC8vWUVzRy82VEJVNGF0?=
 =?utf-8?B?amdiS3BhYVFUa095ZUNndjRIZE5mYk5ZclYyUlRLNkpHd1p5RjlHVGxPZ0lM?=
 =?utf-8?B?S2JRczNTOTJTbGtjNG5pYm44U1hudDZGazFxS2xlRG5DOTVQZWRRajkvYnE4?=
 =?utf-8?B?aDdLS2RqVWFreDQ4dUtRVVplZEk5czhmM0s4N2pNYmFZaXBYZ1pBbEltZ1JS?=
 =?utf-8?B?THNQSmNqc3NEdkk0MUUvNUxKUXNJamZ1Y0U0RnloM0x6QzNEUkNWN3pEMENy?=
 =?utf-8?B?bHVxd2g2UXdPR09kTWpDbU91RklkeHZYREF5NXQ1OStZWVI3WFdVSURkSjhS?=
 =?utf-8?B?WWtNZ2Q1RDFqUm9BNXhPY1VmL1lzVW9iODI5dmRvTWpvQmV4OFpRVDBDLzZp?=
 =?utf-8?B?dVZxZndLU0xGMDVlbWZ3R3BHRTBvckFJd2hYcWIvbEkvWnFQTVlXa2FISDRU?=
 =?utf-8?Q?LEHHQVVzCb1dOaz/l9lTPxW3o?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 979010fe-364c-47d8-f284-08de3e235175
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 10:50:54.3743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9eg1p8OJLkQVOfmf3Uyb0mU7w4F3X+vS3gXXa0CuRm+AHSEX251/GCuZXqKBYkvUI5egElwlSOSBSGiBAeKdLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766055059; x=1797591059;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=86BdkMSncxuEtkUt4BZbg/rUBoc2f7JaxbH4GWQBGWw=;
 b=SbT4WsaZpPYzMqUGWy061WecKMJ1JvZY4JUXeVPgNOjMijbUqSU/xbVX
 TMzX0UmTt0OrY0sum/8AEEzyp8m5S3w/6bI8dZ/AuXHpup1euiIVH+9fN
 lVsrDDar4PenBMiaJnJUEaUjm130nHFeDUKmRYIwlwHItVALsy1+HcZGG
 BaXGqxEsSG7w74eEQBUDSH6nc9T2UEAWg7k1qU0F2Mhzkoax55iinRPii
 fad1W4YO6khaeJW2jo0wJzxinh/jcamfhxvWCODcpNk8SnG8+ggT1MCIT
 FxiBzlGU3aSrM18mLp/f9klancDqCzhH6he3v2x+ruF6bHp5g7/KBTxxM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SbT4WsaZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/6] ice: remove
 ice_q_stats struct and use struct_group
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
ZXINCj4gU2VudDogMjEgTm92ZW1iZXIgMjAyNSAwMTo1MQ0KPiBUbzogTG9rdGlvbm92LCBBbGVr
c2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwgQWxla3NhbmRl
ciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+
OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZzsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBMb2t0aW9ub3Ys
IEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NCAzLzZdIGljZTogcmVtb3ZlIGljZV9x
X3N0YXRzIHN0cnVjdCBhbmQgdXNlIHN0cnVjdF9ncm91cA0KPg0KPiBUaGUgaWNlX3FwX3Jlc2V0
X3N0YXRzIGZ1bmN0aW9uIHJlc2V0cyB0aGUgc3RhdHMgZm9yIGFsbCByaW5ncyBvbiBhIFZTSS4g
SXQgY3VycmVudGx5IGJlaGF2ZXMgZGlmZmVyZW50bHkgZm9yIFR4IGFuZCBSeCByaW5ncy4gRm9y
IFJ4IHJpbmdzLCBpdCBvbmx5IGNsZWFycyB0aGUgcnhfc3RhdHMgd2hpY2ggZG8gbm90IGluY2x1
ZGUgdGhlIHBrdCBhbmQgYnl0ZSBjb3VudHMuIEZvciBUeCByaW5ncyBhbmQgWERQIHJpbmdzLCBp
dCBjbGVhcnMgb25seSB0aGUgcGt0IGFuZCBieXRlIGNvdW50cy4NCj4NCj4gV2UgY291bGQgYWRk
IGV4dHJhIG1lbXNldCBjYWxscyB0byBjb3ZlciBib3RoIHRoZSBzdGF0cyBhbmQgcmVsZXZhbnQg
dHgvcnggc3RhdHMgZmllbGRzLiBJbnN0ZWFkLCBsZXRzIGNvbnZlcnQgc3RhdHMgaW50byBhIHN0
cnVjdF9ncm91cCB3aGljaCBjb250YWlucyBib3RoIHRoZSBwa3RzIGFuZCBieXRlcyBmaWVsZHMg
YXMgd2VsbCBhcyB0aGUgVHggb3IgUnggc3RhdHMsIGFuZCByZW1vdmUgdGhlIGljZV9xX3N0YXRz
IHN0cnVjdHVyZSBlbnRpcmVseS4NCj4NCj4gVGhlIG9ubHkgcmVtYWluaW5nIHVzZXIgb2YgaWNl
X3Ffc3RhdHMgaXMgdGhlIGljZV9xX3N0YXRzX2xlbiBmdW5jdGlvbiBpbiBpY2VfZXRodG9vbC5j
LCB3aGljaCBqdXN0IGNvdW50cyB0aGUgbnVtYmVyIG9mIGZpZWxkcy4gUmVwbGFjZSB0aGlzIHdp
dGggYSBzaW1wbGUgbXVsdGlwbGljYXRpb24gYnkgMi4gSSBmaW5kIHRoaXMgdG8gYmUgc2ltcGxl
ciB0byByZWFzb24gYWJvdXQgdGhhbiByZWx5aW5nIG9uIGtub3dpbmcgdGhlIGxheW91dCBvZiB0
aGUgaWNlX3Ffc3RhdHMgc3RydWN0dXJlLg0KPg0KPiBOb3cgdGhhdCB0aGUgc3RhdHMgZmllbGQg
b2YgdGhlIGljZV9yaW5nX3N0YXRzIGNvdmVycyBhbGwgb2YgdGhlIHN0YXRpc3RpYyB2YWx1ZXMs
IHRoZSBpY2VfcXBfcmVzZXRfc3RhdHMgZnVuY3Rpb24gd2lsbCBwcm9wZXJseSB6ZXJvIG91dCBh
bGwgb2YgdGhlIGZpZWxkcy4NCj4NCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3Yg
PGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBL
ZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5oICAgIHwgMTggKysrKysrKystLS0tLS0tLS0tDQo+
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYmFzZS5jICAgIHwgIDQgKystLQ0K
PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyB8ICA0ICsrLS0N
Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYyAgICAgfCAgNyArKysr
LS0tDQo+IDQgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0p
DQo+DQoNClRlc3RlZC1ieTogUmluaXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNvbT4gKEEgQ29u
dGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQo=
