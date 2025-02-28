Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7F3A49441
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 10:01:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7255B60677;
	Fri, 28 Feb 2025 09:01:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gYthAeZCGzYG; Fri, 28 Feb 2025 09:01:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77E606067A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740733263;
	bh=ZAiYKB2wLBFpLub3lfbQrOkPnNLAflPnPx0rmXGnoD0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2TchGAthKUDhmSKXsupRpGFO05XgKogdQKtJknOZPullDcPHIX0ylgwwCG0Awvc9U
	 ez2XaQA45+HskV/YC8lRD4f119M9Trn7uF6wct11SL+6iaZVpCdoUvqH6L7Iysy30J
	 dJl01rtV6U0Cm9q2x4AuC4FYhTtXvNPngx/BR4N6gjuvlRTrhxoMbEWehHNm2xIYro
	 C6bA3OU+DVd0NDTxToqFCsw4Ws0O2BVLdI4v3+qbPcNkMSH0HzVyN6SvqU2uYQKCKT
	 3ZPnr+DMgHArF7lvQSUC2W1lpJ1h5LWBdom6HArUB4UD5qmPJti6oT2TDcp39tfO6N
	 a1bTx5t1RNXxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77E606067A;
	Fri, 28 Feb 2025 09:01:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 17A7968
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB5364174E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:01:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bxZYBkAW5QC1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 09:01:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C71841750
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C71841750
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C71841750
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:00:58 +0000 (UTC)
X-CSE-ConnectionGUID: PcaGWaA+T1arZDGgL0/9zQ==
X-CSE-MsgGUID: 530qnmWCTnSGGM+x0ZuJhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40897664"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="40897664"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 01:00:57 -0800
X-CSE-ConnectionGUID: WwDyh7zJTG6qaM8aGfpIrg==
X-CSE-MsgGUID: 4Tt9Wvl8T2KUfE6Jr3LNQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="117048651"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2025 01:00:56 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Feb 2025 01:00:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 01:00:54 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 01:00:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L05CYo7Re3WojTvUJYBM2turvz6oPKbVV9Xyf+5lFTTnh8nAHJKkravNgG7eYiGzz0M7UOYdLoN5QS4iD8H83l6WBOPSBf/oFzSNEl+P95jGIO5YONYAvY18hNORuofV3R4zpYN48Fo5hGhkuRB1ZwniYFmZollqdceLPkG8bJoyGCw2J/qk2Y8EFPxLqIZfJcSlr9CDM7B6Jfk2omXOAAwVYtrcdyKXVBOUGtc5kuwBcF1ywm+ma1N14d2NUhciCyVOr3eE9H5nlPfyPYak5pzj4HXDHu4EyZm+S2Dbo0zkCXcv2J0Nhz4NB32Nv9/c0wu1BYxxi3QSWM0vAktakg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZAiYKB2wLBFpLub3lfbQrOkPnNLAflPnPx0rmXGnoD0=;
 b=NWfjfW61AwCCnRCBl9cXRsftJTTmASY7so88H2xBUK4qdsfUx8I1GOY3n7or5APtIusbaQpH8/1SDu7Y/l9cWYMCoVrgvhhJQvzhJI5uWQGf/6SElD4JrKSfES6A/xbXMKrzQsAolnHCQHXm25cTdLvBHA6NwerSE6+dsSwVh/TmF/gJbSmRStrPQR3uJzynBII5XFs0prmWqbgh2nVpU+QbjuaclvHNT6hFN+qu01Ev4UZdo6f2EI7Q7E+XFx4rzsQTCP2a4s4VZy0u+hwYqCyjUtSPsyzzD+7TYDNT0Mmjy1lFqCDV3P/m2pfHS9yME499LaXyYFEIibrIHKIOTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Fri, 28 Feb
 2025 09:00:33 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%6]) with mapi id 15.20.8489.019; Fri, 28 Feb 2025
 09:00:33 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Damato, Joe" <jdamato@fastly.com>, Gerhard Engleder
 <gerhard@engleder-embedded.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/4] igb: Link IRQs to NAPI
 instances
Thread-Index: AQHbgS+TAIH8AlHynke1v2zgPZCk57NcdnrQ
Date: Fri, 28 Feb 2025 09:00:33 +0000
Message-ID: <IA1PR11MB62410B2074D4125A236DC1798BCC2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-1-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-1-4cb502049ac2@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DS0PR11MB7191:EE_
x-ms-office365-filtering-correlation-id: ce17c959-9fa9-4c20-0a3f-08dd57d65c1c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?REt2R1hLTzc1VmhFeEtnUG52OGNURjdIZjY0RU9BcHkvVENyWE5rZWRKaWhl?=
 =?utf-8?B?MnBTK1N1OTRjSllOc01PajZmMWV3dTVFdlY5S3RVaXQrWC9kVkJJdWFkc2J5?=
 =?utf-8?B?ODlPUVlFdnlTcFRHdS9JcHViUC8xVzNmK0V6QWQ1NHY2UHVmampJY1VuaEFG?=
 =?utf-8?B?dlhrdmtNeUFGRU5SK0E0ekpYZzR1Q29GYjh4RTdPcnVmRjNDS2p4dExvWXFR?=
 =?utf-8?B?amV5SzhXa2JBUjF2RFJRbHVwWTE5YVNDQk9pV0RtNVFRcTB0ejkzZ1hPbXM3?=
 =?utf-8?B?WXFvQUNKaXl5Q0t3LzcxR3JOWWNKUGpoQ1duVGhMRmtEZ2c0WFQ0TXBKOTZV?=
 =?utf-8?B?R3lvRDFUOW9Yd1Q2ZW9FZ1hOdHJCQVkzcVZKUllxWFNTdGhPL1YybkxaRzB1?=
 =?utf-8?B?cTVTZE5TRlhRWFhBbDMrMnBBYWVKb0tsb3RYNWU5QzNPWFQyWkV6ZDlwLzBM?=
 =?utf-8?B?c043UmxhVkJYTldieW9uOWpETXRackF0dnByQ1hVMVJrdmJ0bU1tb1Y5RHl6?=
 =?utf-8?B?WDdCVStTTzJBcE9PcUpxNkZEaGhOUVE1UU5IeG9BeGZodHFOaTU2RHZIOVQ5?=
 =?utf-8?B?NFdpb0draGpycGxZRHNIb2laQ2RuT3JsWmxwTFhpZEpsMng4T1J0NzF3d1pL?=
 =?utf-8?B?TDkrTkhGQm8vd3QwSURsZWdyZHN4UVRhc1R4UXN3YmxZMFBUVnY3VEFHeTlS?=
 =?utf-8?B?OHVRWklyZlBjcko4YmYybzZRZDg4VlNDRVF5MGM5ZW1PUVY1Uy82WGwzRFFP?=
 =?utf-8?B?UTdXN1c4dmRhYU9HTkVrMDAxR1FuQ0E5cUNjZThFUjliR05qK3ZPK0JzUnJj?=
 =?utf-8?B?SXZaRWhLd090VDkvZ1F3djlHSmxTbW1KOXMwenpKemhLeERxcHJlYTIraWtB?=
 =?utf-8?B?TjNIeFI5NENGR200a2NzN1ZDVElkZm5ZQ1cwWWwrZUFqSDhRQ0hJMkdJZ2NH?=
 =?utf-8?B?M09JL3FKUHFhWGhWNExpdHlEenRZSER3U2VXMEcwVzhRS1lkMzU1ZDk2TG84?=
 =?utf-8?B?cms0dUtyd3dqQzIyTmJPbzJ0dE9VQURJMWRDNENQai9NVCttNFllaytLZ3p1?=
 =?utf-8?B?V1dIemFyRUp4ZzNRUFhVTjdPckF2OWV6ODM4NHlRYTd2M0VYNElkbnVrLy9I?=
 =?utf-8?B?azhmbUxWa1RPUFlWTWx0YXFqQ1d3TzgzdWNWUXZoektVSlVTNnh4MGhuUE1j?=
 =?utf-8?B?cHNpZk5ieVNBbnFhNTBKR1NtS1d5MUlXUmZhRmNyRmVOcGdGRFBkRXpCNjNQ?=
 =?utf-8?B?eWltREdld2tKbWg2YXljTVE2b2Y1ZHU0RFRmWERnSVNIZ28wSWdvL2RoRUty?=
 =?utf-8?B?b0lNRWl3cG9VU25RL3d6ajQ2djlxM3l4WmJTUXlGbGtlOVNvSEM5SEZQZkdt?=
 =?utf-8?B?NHpIUE5VMDhKZTBXSytab2ZvUXNwSFMvUHJzTDVDWlluL002VXhJUHVta0tW?=
 =?utf-8?B?dHZVV2o2NHNxSGhuSmhpQk5IOEV6YzRDa0VWMDBXd0pGUTZvekl4UkVneWdY?=
 =?utf-8?B?MjZabDU2QXJrcUhEQlZSYnYvSTlaYmtQY25QQmYrb0c0TTBQWlN0TVk5TmNO?=
 =?utf-8?B?SzI3NHQ0QXZqSTRoNGsxeEwyeUV1ZStNSXFNS2J0NE5GbTdmakljeXc3UFdI?=
 =?utf-8?B?enR5dlNpbkFlek8xQ3JLd3lycHpxVzBpYm1IT1lHZVFDRnczMUVMdExVQTdQ?=
 =?utf-8?B?dGRMQi94Yms0SnNEZW1CcjFxaytyZWEwTTR0ZkFJZWl1dWJ3a0RXcnZqUDhi?=
 =?utf-8?B?aU5wMStzQUQzb2U2b08zYkdZbVl2VS9oTFZGclV3YldBLzFsaVc5UEw5UFB4?=
 =?utf-8?B?Vmx4TksyejdZRHB2N3ZEUzMvdFk3Smw5TXFrdDRpT2ROSzlFcHc2WTRXNUU3?=
 =?utf-8?B?WDhic1lGeHVZRzk5L3lMaFB0c09FQ1d2Vko0VWZBV1RDRXlTZkZUd2dyb3VN?=
 =?utf-8?Q?xLTUzWG6umM4M//+/z0b6jc9j79KQSNE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDRmcmlJQ285Z3dCdUJSLzd0QTFvVk92ZHNUMFQ3czZRNnYvRmFmSnZPdks0?=
 =?utf-8?B?TnBoN0NjZGcwVkVHQldRSzNmT250SlhsajdrSTEwNFViajRMWmtGMlA2NTBM?=
 =?utf-8?B?cEE5U3VPSmg2U0Irb1phUHNjZXloVWxaVU5XMzNmdmRyOXpCOFlzekdwUGI3?=
 =?utf-8?B?bmRWajkrZVQ2aytEOUFURkFGenNseXQ1OE9JVGtLYlh2MlpKS21DM3Q0UVE5?=
 =?utf-8?B?NGNmRFJxOEs1c0UxWStadzVlTjhmL1lzV3BaS2swZTlVWlJ1UEpGeG1reVpO?=
 =?utf-8?B?YlRXNmdjT3VIa1BlWUxmV0lVYTREV2ZkSDdrWXgvL3RrWEM0dVpkZTZhcjZp?=
 =?utf-8?B?U0hMWkhjNkNMU1FxbTYva1dHNU92NXM4SmRHQktRM2FoZzAyRUJuZ1VnQ3hE?=
 =?utf-8?B?Qm50VUdEYmZ0Nk5aZk9WVFZIR2V2em83Vit3TFFVaXY2N3p6VUFBV09lRUdE?=
 =?utf-8?B?eU9obXhOejRNU09SUWtFMUhSQmZOazRtNEhkMlQ2Y2xYd1JQVFIzTXEzakpp?=
 =?utf-8?B?bGNjVzFMUGZmZ1hLSGZWUzZWRjI0UDlsOTY5YXJVWXNRVVh3ODNBK0d6ckpR?=
 =?utf-8?B?czZSZFRZTDRsS0xnQ0dyTEVYQ2RBS29Vc0hBS0czVUsxeWg2Vk9rOHUydVFx?=
 =?utf-8?B?L0JjT2t4WFpyY0xMb1NGaFgyb29nK1ZLNlhaWFppOUNqbjFRSS9YWXM0MzJX?=
 =?utf-8?B?R2oyN3p1NTdtWTB0VkozcWpuaHBtb01FRDU0ZGlMbGMxZEJuTUpsUmhRMTN0?=
 =?utf-8?B?WnBFeXpJcDNvTHoxR09ZQTcyNUVNQ0d5Mzd2dVI1SXMzaFhseHlnbDF4cHlR?=
 =?utf-8?B?MzlPSXMrK3JCWkZlZnZBOENRQUJhWDhWaXhreFJkOWlWaFI5blpvKzBab0cz?=
 =?utf-8?B?cjNuVlk5N3k3bUNuc0tPT3JFdmpVWVB3MFVNYzh6MlJlS3VZMVlHeWJkMHEw?=
 =?utf-8?B?dzhMQWFZTld0eTVEYm5zMnVnaldxNi9Tb1VsMlhGdmx3dHRDbVkwV2VpdnNz?=
 =?utf-8?B?Tm1tTEhTNnIxQmFLeVJnUjFqazhqWXl6Njdkd2xSZGxyVUwzVWpMSkJkU3pM?=
 =?utf-8?B?Sldaa09VUW1MMU5VM1haYkZuWjJnWDdoMFJaTTV6bHM4RHczMmxjRmFGampP?=
 =?utf-8?B?U2I5VDA0R0RqTDN6VDBQSU1ET1NZRWZyQ1VybXhGVUlGVVpJakVCYng5T0hT?=
 =?utf-8?B?ZFlDZU4zU0l2VnlTY09kcTZOdmR0QjFTdERuL29WbTFnaWFoaENwbVZ5N3lw?=
 =?utf-8?B?aVJaR2ZTL2NzNWFoQTdmeTRXdHc5VWx2RW8vREpCYUdZbVVGdTcxZnpxNWY0?=
 =?utf-8?B?Y1pwdmM0a21uaVVUdThVMS9BQWNCTUd3R2x5enVOeHhEY0pQZGNwOFBQYzBj?=
 =?utf-8?B?dXAzQzJnM091RlJnV2lHOXdObmswcm9ld1R4RWNKQlgwOXcxOGE1VldWdGV0?=
 =?utf-8?B?TjA3ZjR1UUNKZ1BhMCtHeWxpckttMERCcWFOekhyNmJTazhwcVJOVEFZdk5i?=
 =?utf-8?B?RXh2UXBrNklQR1R2TkVwZGFHLzgzWUlKcS9kR0Q4cHFVc0Q5S0xQeDdRMnQv?=
 =?utf-8?B?M01sV0ZzK2FFSWI3cC9EVWNZY3NaV005WG1DVmkyai9XeGNSNmI2SmZNSTdE?=
 =?utf-8?B?REgxaG4xeGtyVHpXMTRrcHJSTDY1a05VV2JhWTdFZVFiZFppSzVuMkJkRjZU?=
 =?utf-8?B?T255Wjl2aUxZWm1oQkdnR25VcW1tMGtqTTRvYjBKWHNCbVVoZTRmTlNPWHR4?=
 =?utf-8?B?eFV1aVFWUzdRUWtkT3dKYUFlS1JnQkRrc0cxUktuaHlVd0VraUdleXVaTVR1?=
 =?utf-8?B?VVJHOTB3L25WZ2p4L2RwV2lDSERWNWN6QXlkMXZyNTQxZ2p5Mk0zOHNnZmhi?=
 =?utf-8?B?VVJoZHE5SHJzMHR5dkhJTGJXZjRjckxpcnJlanBzU0tZTGlLSDNoenJ3NFJF?=
 =?utf-8?B?dFpna3k4UGRDMkw2RWp1MU82a1cvcXhjdFJ5dGpWdDlWM2srd0o1TnJrQmd4?=
 =?utf-8?B?NGFud2VKcGY3bU83UlBOcmg5Um45ZHpDVlE3V1RTMkloU2pES3FqVlVrSkwx?=
 =?utf-8?B?RDlrVi9VS0YxYTRCVlMzUjRXZ3VWNHhLVFlWN3ZrVE9iaXNBQmt5QnhIVExE?=
 =?utf-8?Q?ntp0HiLX6pbmPUeVAKWJNIRYT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce17c959-9fa9-4c20-0a3f-08dd57d65c1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 09:00:33.6306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2/baFKd11mdDsJFp2DluDY5FEnPnoiygISrHHPU1AEyW1/b1TbEkpkyX3zaIcI/TJu135fo14BnOlzih4WOhRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740733260; x=1772269260;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZAiYKB2wLBFpLub3lfbQrOkPnNLAflPnPx0rmXGnoD0=;
 b=EbjbYD6UK4EQc4huXbk1F+mdXV2GHAiZ0ZtKwzGWyoYMLqIsmlkvRSR0
 UvvATweS7URX9NGBY9yVLPBKME/5IvoLo0WASJvHC91dS3HaMIgCXDlPo
 EQEqe/Hvevhx2LFHU5kLVA9T5t+UvCadFZOmMjl3yXCpxCru88AqN5UFk
 T1CLDMY8x6RbfazhGT/5vuWXZPWNm/08t7YO0YUJt3ctskfwuVdrHAht8
 DZLiYf1YjKa6X4il1hpBPR+ma1ULh1OkOxPhMS8tNNHgzn9ywxA6RvYS8
 xB673Ku3sMfUkkiFJLTkTKIO2PaXlcLc57zi5UNLD58C0+X3ZqX8MNitO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EbjbYD6U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/4] igb: Link IRQs to
 NAPI instances
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBLdXJ0IEthbnpl
bmJhY2gNCj4gU2VudDogMTcgRmVicnVhcnkgMjAyNSAxNzowMQ0KPiBUbzogTmd1eWVuLCBBbnRo
b255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8
cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gQ2M6IEFuZHJldyBMdW5uIDxhbmRyZXcr
bmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBF
cmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBr
ZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPjsgU2ViYXN0aWFuIEFu
ZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPjsgRGFtYXRvLCBKb2UgPGpkYW1h
dG9AZmFzdGx5LmNvbT47IEdlcmhhcmQgRW5nbGVkZXIgPGdlcmhhcmRAZW5nbGVkZXItZW1iZWRk
ZWQuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IEt1cnQgS2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4LmRlPg0KPiBTdWJqZWN0
OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjIgMS80XSBpZ2I6IExpbmsgSVJR
cyB0byBOQVBJIGluc3RhbmNlcw0KPg0KPiBMaW5rIElSUXMgdG8gTkFQSSBpbnN0YW5jZXMgdmlh
IG5ldGRldi1nZW5sIEFQSS4gVGhpcyBhbGxvd3MgdXNlcnMgdG8gcXVlcnkgdGhhdCBpbmZvcm1h
dGlvbiB2aWEgbmV0bGluazoNCj4NCj4gfCQgLi90b29scy9uZXQveW5sL3B5eW5sL2NsaS5weSAt
LXNwZWMgRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL25ldGRldi55YW1sIFwNCj4gfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAtLWR1bXAgbmFwaS1nZXQgLS1qc29uPSd7ImlmaW5k
ZXgiOiAyfScNCj4gfFt7J2RlZmVyLWhhcmQtaXJxcyc6IDAsDQo+IHwgICdncm8tZmx1c2gtdGlt
ZW91dCc6IDAsDQo+IHwgICdpZCc6IDgyMDQsDQo+IHwgICdpZmluZGV4JzogMiwNCj4gfCAgJ2ly
cSc6IDEyNywNCj4gfCAgJ2lycS1zdXNwZW5kLXRpbWVvdXQnOiAwfSwNCj4gfCB7J2RlZmVyLWhh
cmQtaXJxcyc6IDAsDQo+IHwgICdncm8tZmx1c2gtdGltZW91dCc6IDAsDQo+IHwgICdpZCc6IDgy
MDMsDQo+IHwgICdpZmluZGV4JzogMiwNCj4gfCAgJ2lycSc6IDEyNiwNCj4gfCAgJ2lycS1zdXNw
ZW5kLXRpbWVvdXQnOiAwfSwNCj4gfCB7J2RlZmVyLWhhcmQtaXJxcyc6IDAsDQo+IHwgICdncm8t
Zmx1c2gtdGltZW91dCc6IDAsDQo+IHwgICdpZCc6IDgyMDIsDQo+IHwgICdpZmluZGV4JzogMiwN
Cj4gfCAgJ2lycSc6IDEyNSwNCj4gfCAgJ2lycS1zdXNwZW5kLXRpbWVvdXQnOiAwfSwNCj4gfCB7
J2RlZmVyLWhhcmQtaXJxcyc6IDAsDQo+IHwgICdncm8tZmx1c2gtdGltZW91dCc6IDAsDQo+IHwg
ICdpZCc6IDgyMDEsDQo+IHwgICdpZmluZGV4JzogMiwNCj4gfCAgJ2lycSc6IDEyNCwNCj4gfCAg
J2lycS1zdXNwZW5kLXRpbWVvdXQnOiAwfV0NCj4gfCQgY2F0IC9wcm9jL2ludGVycnVwdHMgfCBn
cmVwIGVucDJzMA0KPiB8MTIzOiAgICAgICAgICAwICAgICAgICAgIDEgSVItUENJLU1TSVgtMDAw
MDowMjowMC4wICAgMC1lZGdlICAgICAgZW5wMnMwDQo+IHwxMjQ6ICAgICAgICAgIDAgICAgICAg
ICAgNyBJUi1QQ0ktTVNJWC0wMDAwOjAyOjAwLjAgICAxLWVkZ2UgICAgICBlbnAyczAtVHhSeC0w
DQo+IHwxMjU6ICAgICAgICAgIDAgICAgICAgICAgMCBJUi1QQ0ktTVNJWC0wMDAwOjAyOjAwLjAg
ICAyLWVkZ2UgICAgICBlbnAyczAtVHhSeC0xDQo+IHwxMjY6ICAgICAgICAgIDAgICAgICAgICAg
NSBJUi1QQ0ktTVNJWC0wMDAwOjAyOjAwLjAgICAzLWVkZ2UgICAgICBlbnAyczAtVHhSeC0yDQo+
IHwxMjc6ICAgICAgICAgIDAgICAgICAgICAgMCBJUi1QQ0ktTVNJWC0wMDAwOjAyOjAwLjAgICA0
LWVkZ2UgICAgICBlbnAyczAtVHhSeC0zDQo+DQo+IFJldmlld2VkLWJ5OiBKb2UgRGFtYXRvIDxq
ZGFtYXRvQGZhc3RseS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEt1cnQgS2FuemVuYmFjaCA8a3Vy
dEBsaW51dHJvbml4LmRlPg0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2lnYl9tYWluLmMgfCAzICsrKw0KPiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+
DQoNClRlc3RlZC1ieTogUmluaXRoYSBTIDxzeC5yaW5pdGhhQGludGVsLmNvbT4gKEEgQ29udGlu
Z2VudCB3b3JrZXIgYXQgSW50ZWwpDQo=
