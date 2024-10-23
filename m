Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F25F59AC82C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 12:46:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5864E606CF;
	Wed, 23 Oct 2024 10:46:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x5SsUUyaPV3n; Wed, 23 Oct 2024 10:46:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8031060703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729680396;
	bh=US2o55JwwOxDcE7Kvi4wd0c0eL751Ud58zkHd94lpT8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lU66TKejGesHYMKkDP7stS67UkylHhV1jGbmm8spZdnw7MmsHqWwpCZLUNgof7j1w
	 0kDbonxlI4XY6IislaV9CgofTBDTZ0AJe6CmKhWX5lIGuLW+KJPMlkLqZ22lifWQCD
	 dQhtQIllqbyIz98ttB4eGhGJ0OqssSVdzyfOXwt/Rz3ydVqDHoYR2sw21oWgYJIfka
	 tWWw9OeooSHACvOSHqTdTQnzg+DIVg1CkVd28DIT7topBoc+/TcD/8jWpf5ZhbYs7V
	 6vKPQwFAt6DYnJcar4eQN63PMEnK1ulKmfN7kIKf7dP2HodcrtcY7v+6PT77nvayyr
	 1Pgn0kcYO2WMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8031060703;
	Wed, 23 Oct 2024 10:46:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E2B12072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 10:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F0AE600D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 10:46:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iVIXJRwMnOPK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 10:46:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1688E606AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1688E606AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1688E606AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 10:46:32 +0000 (UTC)
X-CSE-ConnectionGUID: Hz9+d6kHQxibJ/97H3R4bA==
X-CSE-MsgGUID: HZVR1Hx2RPiizBjqbX/LYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29040376"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29040376"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 03:46:31 -0700
X-CSE-ConnectionGUID: GmtWBUsOQZa7+QPJW6SzKg==
X-CSE-MsgGUID: OrVg+hoXQI6NOZySX+NrXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80578033"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 03:46:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 03:46:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 03:46:30 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 03:46:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nvoSTznWEsjF/YVykap9K3zsmBCk/XfQWLznwYaAJIJwgPt5DQp/d0tw0W/n3LTNVvKtFDfXrJuIEuzUHRx0lWOBp1S3OrFeVZE8cO0Tkg+hUbkf8yANOxkKCZBgJ6HDFvmhBINXFNKJqYoFNGVUzHx/eJh28SX5yLGPwYQ27ZSflAmxWjkK5rfsaeLp0drJ5xg3eQTD+vcl1SN7VVDX1mW8t9RYChPEZ6NhorJO3PNlGdTDonUkRwGYViJkflLvI2QZiQ6gIDn+5nPUwG3UgH/U7Y8dd22QXiR2tZCX7G/y7AUCMVc2YzxXDRHtuoF2k2ubUflowmDqgrFq1a/xNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=US2o55JwwOxDcE7Kvi4wd0c0eL751Ud58zkHd94lpT8=;
 b=ksXb8dV7FqgIx2FhrPoh0/4NOm+JxHCaD8jTenuQPyIfxSuC6BmEBjWUpKrNU1ObC+VhoYzhc5CRsc4ePEB1Z5zfHVWwoqEp8XZPZY3T2LyoUY+kx2qTmRB/z2JQDxQBtJj3vyTTKXcojGjcoGVRbzfzdUOcCmQU9CSNYHKCJeuf7o0EVnY0l0zRAfio+qlpkUnRVXdL+6THPLHKIxt9GQPBSAm+Go7nszoAC91cpkhPURCKBgDJlw7K3JzN5a3RJCYerFXDvrlWgqZ0ePbuudg3gYvyD1lTUZBG5xuUiWV3Wy1TBilLGXot6UZKf8UDNgRT+JfAcKRlEldVRu+jPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6911.namprd11.prod.outlook.com (2603:10b6:303:22d::20)
 by IA1PR11MB7366.namprd11.prod.outlook.com (2603:10b6:208:422::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Wed, 23 Oct
 2024 10:46:27 +0000
Received: from MW4PR11MB6911.namprd11.prod.outlook.com
 ([fe80::493e:b936:6d83:d520]) by MW4PR11MB6911.namprd11.prod.outlook.com
 ([fe80::493e:b936:6d83:d520%7]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 10:46:26 +0000
From: "Knitter, Konrad" <konrad.knitter@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/3] pldmfw: selected
 component update
Thread-Index: AQHbJTGSxIXc0Ib7xU2KZIteSPQJEbKUHD0AgAAH/dA=
Date: Wed, 23 Oct 2024 10:46:26 +0000
Message-ID: <MW4PR11MB69116C7763511B887220CE56874D2@MW4PR11MB6911.namprd11.prod.outlook.com>
References: <20241023100702.12606-1-konrad.knitter@intel.com>
 <20241023100702.12606-2-konrad.knitter@intel.com>
 <fd443617-0460-4c44-84a1-3563c0c76033@molgen.mpg.de>
In-Reply-To: <fd443617-0460-4c44-84a1-3563c0c76033@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6911:EE_|IA1PR11MB7366:EE_
x-ms-office365-filtering-correlation-id: 15fdcfb1-598f-4b60-efc4-08dcf34ff1bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?b1FYcjBtN1pRZ2FUTFVLZUV5WXdiTDJPa0FIL0xsSGZNeHh0VjdlRHhEbWdO?=
 =?utf-8?B?WWN5MDljZ3Y2blNYNmpNeFkrMmFHVVJPeUtBVTJQUE05RFluTGhhRUl4OTA0?=
 =?utf-8?B?alFOU2p2anpidmVqbTlXa0dCTWtjSy9id1F5UkZPZWpxR3NZZEdHQXFnOHdE?=
 =?utf-8?B?d1Q1cERhbTluRGR4OTdqcEJha1A4QW9NMyt3aDR2Wlg5SVcvR2RZKzF3OTdi?=
 =?utf-8?B?eGczZ2Y0SHNYT0lvUWlJSy9SNTkvaXdObFlDOVY5c3MvbW8xaTRyaHJIb2VR?=
 =?utf-8?B?U2lqait4QWgyWWJHTXl2aFBkQS9OMjQxR3lRdU9RbWFPUlN6OUNlVWw0NE9X?=
 =?utf-8?B?RTdlVElFRVRhY3VtajBhb0FwL2Y4N3lBSnRJWjVueHYvbTR6YVQ4Zis4NVpS?=
 =?utf-8?B?WWhZcUJ0N2MvREFqSk9tcEtLR1dnY1lqbDEyTkRXL1graEMzY3lCRXJ5VHh4?=
 =?utf-8?B?REVUdmdNb21LUHh0OG9Ja1V5UnE4WWticWl3QURweXp1KytIL0dIOVB5L245?=
 =?utf-8?B?MlBlZjN4bzRaRG1VS3VjalJVREhuYm9zN3d6bWt0Mk1MU3VMTXNSajFNdjE1?=
 =?utf-8?B?Wm4zcnZiTU03eDMxSW9zdEdLNEZNZHo3Tk1OVlRMTkg5eDNPeGRTTS9BZFB4?=
 =?utf-8?B?N21QS2hHK1RYcFkyd0NZeHhMSlMvZ1B2bys3ZjdTK3lHSnV1Um9DNXBwNFRk?=
 =?utf-8?B?SElyWVFmU2QzMTNEY1dOWnVwV3pqcERibmwyalpoZkQrazlJTW11RTkxd0tL?=
 =?utf-8?B?WDQ1RWczcVJnUVBJL2tWTDB5ekhQV3drV3ppRW5PTWlkcC9FMmhSOU45dW5U?=
 =?utf-8?B?TWlyV2pQdFpoSkFrYjh2NDlTMHVTSDRLcHo4NGd3UHNkL1c4TzV3MkRYSlpv?=
 =?utf-8?B?NlZTUG1vYUVhOXRsMFpqZEYrNUdtSVdWWG1WSlZIMnNLMmVVa01JOEJRMW5j?=
 =?utf-8?B?bThiTmZnSGNDbHFrL0pkc3F5Q212dkpsZUVzTnRGQ3NJM3FLczV1c0M3QkpC?=
 =?utf-8?B?ejdUNjZ0akZoS1ArbkNiSXl4Y21aMjRxRE9Yd2tWYW50T05keDJhV0ppVnNL?=
 =?utf-8?B?UE00WUJ5TGdGTXpBZkxab1BtSEgwTjNkaHp6VVA0cExobkplTzFYN3VFcjVG?=
 =?utf-8?B?cmN2L2lDUkQyMTl3VngyRG5oK1lZWk5PcVlITXlPclI5UE4vMDZncCsvbWdy?=
 =?utf-8?B?MkxPM1kwbnV3OGgwdldlTmJMSEtyM1psVW1IYnNENlhic0hqcEw3TUluSHhr?=
 =?utf-8?B?T05NZ0t4VVZzdmZ6UGViREhmSC93N2prWVoyWXFyWXFVcktSRktDaklsa0Vu?=
 =?utf-8?B?MnhIa21MdG9nclRLUGwzUmErbXFDbFZVNTQ0ZmIxczlyMTZPZktRVWYxL2ZS?=
 =?utf-8?B?b0Q0ZmV4TzVWajgyUjJlYU91NFJqQ0V3WVk3ZWg3TVhIM3UveUJtdEhMS3FN?=
 =?utf-8?B?TkkvYjBrQmdBY1FCVE5PaDdKRDQyTXdvRmY1K1NJajdYM0lxYUhLTlFNMXpk?=
 =?utf-8?B?eDRTN2NzTTJLTml0eVJXK0hLVTZTd0VVVklkM0pydld5M3dqMFI2Y0ZxbVJv?=
 =?utf-8?B?bEJFRlluM1Z3QU5McVNsSXNVdjRDQncvSGg1bXFIbjV2RWc4dzhYd2hhWExM?=
 =?utf-8?B?Z1lnQXZveXliWW9ZT21UbVFkbllrdVUwZXRaZm9tZEFVVllZSElTWkJHSGs3?=
 =?utf-8?B?QzJYSDNXQWVreHU0ZzFkeW9iNlVBak83VXhXT1h1TkR3UVhyRm0wQ0EvODlZ?=
 =?utf-8?B?eitNM1ZmbXhYR1JoaHRmMTlMdHhKZUhhZG1zejNZWEpkTzVhWlBueWhEdlN3?=
 =?utf-8?Q?KYoxlP7Nph8Oajam+HftJN0BcIEEic4loPH5Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QzZlT1ZIdDdGRVJLcUpGT2RhUXZ5MFhUb3hSLzJxOG1wZFZjby9VdGh4QjJZ?=
 =?utf-8?B?c3N4WmxmdzhEMlAzNGg2N3lNS2E0MFZTWHVqY2JMd1NRZlhONVpRaVBGOUQ0?=
 =?utf-8?B?eDlBcVFnajEzMGhGdWl6M2NCYk51QVdja2NxU1N4bmZOVVdHeUtJZmtzQWFK?=
 =?utf-8?B?em1ySmltY3pyL053VFhVM3hUVGZkTTA3M1Z4VGFoSlBnZTVwNVp1c0xKUHkv?=
 =?utf-8?B?d0VhY0FXWGR4S1N1bXhUamRUUXlWb0hTM1NIWU1OTTY1cWxlQmpZQUw0NnZa?=
 =?utf-8?B?S2psdWVadjB3aUR0YmVPSjhFdStvbFdPMFFlR2hjT2hCaE4rdldSOXh2bzlx?=
 =?utf-8?B?dGpYaHg3cGI0dlRNRm1Takxzb0lIRE1lQnhoVTNyQUhPcFVTRXhYUVNvWHlj?=
 =?utf-8?B?VTh0a25QSlNoblZsb2xwK2owMUxKK21Na2pNaWgrV3ZvQXBHb1VEdnBKWFN5?=
 =?utf-8?B?bnNFZ004TGdQMGpBYUpsNXVOWExqTDRYcUlBT1lCSjROS1Vaa2dVMDhqYVdF?=
 =?utf-8?B?SzNVekxmYlB3WktXNVAvTExYQkJ0UUhpQmdrUVBza3lyZ3lDOUlTelo2VlV0?=
 =?utf-8?B?UzlyWDFLY1ZFa3FvcTQ1QlNFTDhqdzRhWTFaZFlkV2wzRFR4YUdSTC84ZHNW?=
 =?utf-8?B?NXJYbjdKQWUzelFoa3NEMk9PTWZwdFJwTlBGdTBxQURoWkFyU1BtS3hOclg1?=
 =?utf-8?B?WTJIemo2OUFKY0VYVkJuMWdjV0dXYll2cTladmgxNFArMnlDcE93elA4NFhh?=
 =?utf-8?B?djJzeHpXT1VLVE1McGFVS0xmMnExUStYUnM3a3NrYW11Uy8rSE5lWUN5d1Bx?=
 =?utf-8?B?YXFzeVllMWNQNkR6cUdFcS9HSW5uNFI3MkU5MUp2YUNZNGltUUVaMC96VnBC?=
 =?utf-8?B?VVZhbmw5Snp6WDFTUXlKZ09BRTNZNlZQQ3E1N2J1MldkSGI5cC9MakRBKy9D?=
 =?utf-8?B?RjBiVWQxOEh2UXhtKzFQWjNjTHFyek9uWFVQUUhKRjBsUzBaWHpGb2o5NzJw?=
 =?utf-8?B?RWRmNkRWNHd3NDAxakd6MWYyek41T0xEeFc5Z2E2QnRuUVZGaTZiSWowZ01p?=
 =?utf-8?B?TjVVY2RJaVl5ZXFoRGZ3eG5lUWkzdkVQVjlpY0JOMWpISUdWZHBpOVBGWVZw?=
 =?utf-8?B?blV5eHpseUJQNC9BbFQ3d1gxSThTUitRYXgrUGw1SEFFMU9DbzNSVFozSkhh?=
 =?utf-8?B?ckhuRWVEYXlhYlNrMUxTaHNnTjNucjdkZ0RhOFUyTm5wdlNWRm9mMzBFS2FU?=
 =?utf-8?B?ZTh4bldVNld1UjcyQkNRamxFY1RER1B6cGMzNlFJMDBpTVBXWFk3UWRERFN5?=
 =?utf-8?B?UTBncUtTWXhMZEVuMmZLRUg0QkVpZ3AwSCtxODBobUR0bUtVSCt4VG53TW84?=
 =?utf-8?B?akdMSGZJQTRvbE1GSDVxcWtjUkdRckVHSmI2V0lWWmE5MVlPaDVTWG16dUJW?=
 =?utf-8?B?NG5nTUdSRUtwVW5qL2lNTVV3VnpQRStzUmhBbGRUT2trWkloWk5hM0tGeWtu?=
 =?utf-8?B?U24zMG1UNHlWb2FlTUZtS1JRQzlnZy9UWHBXTFJHVVY5eGd3Y0d3MDRzMTJC?=
 =?utf-8?B?Tnl5Y1lodFQ0T3NXUVNrZjlZNENFVmZjcEl5TmkySFA0WGw5MzFoajdyck9X?=
 =?utf-8?B?aE9zdVFobVhPL0RJZU9yNlJmMElmUXBaUEtUeVhHMUpSTGlYNTRzZWpWYkNM?=
 =?utf-8?B?dWE4cWE0bVZLNlpEa0pQK3poUWIvRjlqTlllSFJBZ0cvbzIxYy8wSDllTFF3?=
 =?utf-8?B?L3E1U0ZsSmlUN2M5ODIraU8xL1VOekJSWDJQTVZsaHhDQkNISUVYNmxTQlNj?=
 =?utf-8?B?OEZHakoyanBWN1Z4NHU0dkVjNDZHSkEyM2tpcExJWU5LYmg0RWFqTkt5MkFj?=
 =?utf-8?B?NCtwSGdXSC9rS0Q4NUNRN1IwdGUzd3NxVzFpOHcxTE9XTnNQbjNVVTA2Vit4?=
 =?utf-8?B?c2RDMjEyYlp5ZFUrR3hsTGlFWk5lak9XNkx4eVhoN0ZVQ3pVemFoN1RZY04z?=
 =?utf-8?B?Z2FKMmJ4aWE5d3MxV2o2UDIwSHNsei85RHhpaE5uYUhkTzZna1BaelNDWTNP?=
 =?utf-8?B?K253WmNQQkZiTURaQy93TzVUY0QvK3NmeGZkSk1qUWxBbzFBQWpycGFyZkd5?=
 =?utf-8?Q?SnTdNDMghGjoBuDROI+RdItq2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15fdcfb1-598f-4b60-efc4-08dcf34ff1bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 10:46:26.2630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jnoWWQJMPqQgnj1oXYqxMw2A7v4xwaMHlG5plHKTDK+Wo2tpxewZQea9o2PHIxoSYtcq7COjDMmNfQxeZMF2ar3fLlFQAD0K1f4fmJDoQnM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7366
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729680393; x=1761216393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=US2o55JwwOxDcE7Kvi4wd0c0eL751Ud58zkHd94lpT8=;
 b=lhiD75AoDM+0zIzspY+2oTXR1bdiqA0Ck3SD4Op/2KaEDsNZ2qMpoINi
 An8f8q8c2hmNxZ44i2W937NnI3guYyoiaqr4D7e1qexqrKEekHdjHwikc
 ZUsQZwRVahuvqF/9mV3PuyFsHWKZgXwiQs8xF6SmbppRZK1EgYk9ARBxW
 Hk0ggtJNhg/tptCY6cvFIZsuYxcoiMfUW/4MA/ZZCbjSAy4FWxF2wCqkT
 8JBalVDsCpNvhG2WPw2S1BzjQoEooNGyaHHJ+PP8vuaO1t5sbiCc/ErCk
 hjFnqwAym9SR2RLpD+rZmNklo0qGs6jOYxiB6xwaMJHVCtJDanynRBPLP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lhiD75Ao
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] pldmfw: selected
 component update
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnpl
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMjMsIDIwMjQgMTI6
MDcgUE0NCj4gVG86IEtuaXR0ZXIsIEtvbnJhZCA8a29ucmFkLmtuaXR0ZXJAaW50ZWwuY29tPg0K
PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IEtlbGxlciwgSmFjb2IgRQ0K
PiA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgamly
aUByZXNudWxsaS51czsNCj4gZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xlLmNv
bTsga3ViYUBrZXJuZWwub3JnOw0KPiBwYWJlbmlAcmVkaGF0LmNvbTsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50
ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT47IE1hcmNpbiBTenljaWsNCj4gPG1hcmNpbi5zenljaWtAbGludXguaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYxIDEvM10g
cGxkbWZ3OiBzZWxlY3RlZA0KPiBjb21wb25lbnQgdXBkYXRlDQo+IA0KPiBEZWFyIEtvbnJhZCwN
Cj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQo+IA0KPiBBbSAyMy4xMC4yNCB1
bSAxMjowNyBzY2hyaWViIEtvbnJhZCBLbml0dGVyOg0KPiA+IEVuYWJsZSB1cGRhdGUgb2YgYSBz
ZWxlY3RlZCBjb21wb25lbnQuDQo+IA0KPiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IHVzZWQgdGhh
dCBmb3IgdGhlIHN1bW1hcnkvdGl0bGUgdG8gbWFrZSBpdCBhDQo+IHN0YXRlbWVudCAoYnkgYWRk
aW5nIGEgdmVyYiBpbiBpbXBlcmF0aXZlIG1vb2QpLg0KPiANCj4gSXTigJlkIGJlIGdyZWF0LCBp
ZiB5b3UgZWxhYm9yYXRlZCwgd2hhdCB0aGF0IGZlYXR1cmUgaXMsIGFuZCBpbmNsdWRlZCB0aGUN
Cj4gZG9jdW1lbnRhdGlvbiB1c2VkIGZvciB0aGUgaW1wbGVtZW50YXRpb24uIA0KPiANCg0KUGxl
YXNlIGNvbW1lbnQgaWYgdGhpcyB3b3VsZCBiZSBlbm91Z2g6DQoNClRoaXMgcGF0Y2ggZW5hYmxl
cyB0byB1cGRhdGUgYSBzZWxlY3RlZCBjb21wb25lbnQgZnJvbSBQTERNIGltYWdlIGNvbnRhaW5p
bmcgbXVsdGlwbGUgY29tcG9uZW50cy4NCg0KRXhhbXBsZSB1c2FnZToNCg0Kc3RydWN0IHBsZG1m
dzsNCmRhdGEubW9kZSA9IFBMRE1GV19VUERBVEVfTU9ERV9TSU5HTEVfQ09NUE9ORU5UOw0KZGF0
YS5jb21wb250ZW50X2lkZW50aWZpZXIgPSBEUklWRVJfRldfTUdNVF9DT01QT05FTlRfSUQ7DQoN
Cj4+IEFsc28sIGhvdyBjYW4gaXQgYmUgdGVzdGVkPw0KDQpUaGlzIGlzIGVuYWJsZXIgZm9yIGlj
ZSBwYXRjaCwgd2hlcmUgb24gbGVnYWN5IEZXIHZlcnNpb25zIHdoZXJlIG9ubHkgImZ3Lm1nbXQi
IGNvbXBvbmVudCBjYW4gaXMgDQphbGxvd2VkIHRvIGJlIGZsYXNoZWQgaW4gcmVjb3ZlcnkgbW9k
ZS4NCg0KVGhlcmUgYXJlIG5vIGRlZGljYXRlZCBpbWFnZXMgZm9yIHJlY292ZXJ5Lg0KVXN1YWwg
aW1hZ2UgY29udGFpbnMgbXVsdGlwbGUgY29tcG9uZW50cy4NCg0KVGhpcyBwYXRjaCBjYW4gYmUg
dGhlbiB0ZXN0ZWQgdG9nZXRoZXIgd2l0aCBvdGhlciBwYXRjaGVzIGluIHNlcmllcyBvbiBJbnRl
bCBFODEwIE5JQyAtIHdoZXJlIHlvdSBjYW4gDQpub3cgZXhlY3V0ZSB1cGRhdGUgZnVsbCBjYXJk
IG9yIGp1c3QgImZ3Lm1nbXQiIGNvbXBvbmVudC4NCg0KPiA+IFJldmlld2VkLWJ5OiBNYXJjaW4g
U3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTog
UHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEtvbnJhZCBLbml0dGVyIDxrb25yYWQua25pdHRlckBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gICBpbmNsdWRlL2xpbnV4L3BsZG1mdy5oIHwgOCArKysrKysrKw0KPiA+ICAgbGli
L3BsZG1mdy9wbGRtZncuYyAgICB8IDggKysrKysrKysNCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGxk
bWZ3LmggYi9pbmNsdWRlL2xpbnV4L3BsZG1mdy5oDQo+ID4gaW5kZXggMGZjODMxMzM4MjI2Li5m
NTA0Nzk4MzAwNGYgMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9wbGRtZncuaA0KPiA+
ICsrKyBiL2luY2x1ZGUvbGludXgvcGxkbWZ3LmgNCj4gPiBAQCAtMTI1LDkgKzEyNSwxNyBAQCBz
dHJ1Y3QgcGxkbWZ3X29wczsNCj4gPiAgICAqIGEgcG9pbnRlciB0byB0aGVpciBvd24gZGF0YSwg
dXNlZCB0byBpbXBsZW1lbnQgdGhlIGRldmljZSBzcGVjaWZpYw0KPiA+ICAgICogb3BlcmF0aW9u
cy4NCj4gPiAgICAqLw0KPiA+ICsNCj4gPiArZW51bSBwbGRtZndfdXBkYXRlX21vZGUgew0KPiA+
ICsJUExETUZXX1VQREFURV9NT0RFX0ZVTEwsDQo+ID4gKwlQTERNRldfVVBEQVRFX01PREVfU0lO
R0xFX0NPTVBPTkVOVCwNCj4gPiArfTsNCj4gPiArDQo+ID4gICBzdHJ1Y3QgcGxkbWZ3IHsNCj4g
PiAgIAljb25zdCBzdHJ1Y3QgcGxkbWZ3X29wcyAqb3BzOw0KPiA+ICAgCXN0cnVjdCBkZXZpY2Ug
KmRldjsNCj4gPiArCXUxNiBjb21wb25lbnRfaWRlbnRpZmllcjsNCj4gPiArCWVudW0gcGxkbWZ3
X3VwZGF0ZV9tb2RlIG1vZGU7DQo+ID4gICB9Ow0KPiA+DQo+ID4gICBib29sIHBsZG1md19vcF9w
Y2lfbWF0Y2hfcmVjb3JkKHN0cnVjdCBwbGRtZncgKmNvbnRleHQsIHN0cnVjdA0KPiBwbGRtZndf
cmVjb3JkICpyZWNvcmQpOw0KPiA+IGRpZmYgLS1naXQgYS9saWIvcGxkbWZ3L3BsZG1mdy5jIGIv
bGliL3BsZG1mdy9wbGRtZncuYw0KPiA+IGluZGV4IDZlMTU4MWI5YTYxNi4uNjI2NGUyMDEzZjI1
IDEwMDY0NA0KPiA+IC0tLSBhL2xpYi9wbGRtZncvcGxkbWZ3LmMNCj4gPiArKysgYi9saWIvcGxk
bWZ3L3BsZG1mdy5jDQo+ID4gQEAgLTQ4MSw5ICs0ODEsMTcgQEAgc3RhdGljIGludCBwbGRtX3Bh
cnNlX2NvbXBvbmVudHMoc3RydWN0DQo+IHBsZG1md19wcml2ICpkYXRhKQ0KPiA+ICAgCQljb21w
b25lbnQtPmNvbXBvbmVudF9kYXRhID0gZGF0YS0+ZnctPmRhdGEgKyBvZmZzZXQ7DQo+ID4gICAJ
CWNvbXBvbmVudC0+Y29tcG9uZW50X3NpemUgPSBzaXplOw0KPiA+DQo+ID4gKwkJaWYgKGRhdGEt
PmNvbnRleHQtPm1vZGUgPT0NCj4gUExETUZXX1VQREFURV9NT0RFX1NJTkdMRV9DT01QT05FTlQg
JiYNCj4gPiArCQkgICAgZGF0YS0+Y29udGV4dC0+Y29tcG9uZW50X2lkZW50aWZpZXIgIT0gY29t
cG9uZW50LQ0KPiA+aWRlbnRpZmllcikNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICAg
CQlsaXN0X2FkZF90YWlsKCZjb21wb25lbnQtPmVudHJ5LCAmZGF0YS0+Y29tcG9uZW50cyk7DQo+
ID4gICAJfQ0KPiA+DQo+ID4gKwlpZiAoZGF0YS0+Y29udGV4dC0+bW9kZSA9PQ0KPiBQTERNRldf
VVBEQVRFX01PREVfU0lOR0xFX0NPTVBPTkVOVCAmJg0KPiA+ICsJICAgIGxpc3RfZW1wdHkoJmRh
dGEtPmNvbXBvbmVudHMpKQ0KPiA+ICsJCXJldHVybiAtRU5PRU5UOw0KPiA+ICsNCj4gPiAgIAlo
ZWFkZXJfY3JjX3B0ciA9IGRhdGEtPmZ3LT5kYXRhICsgZGF0YS0+b2Zmc2V0Ow0KPiA+DQo+ID4g
ICAJZXJyID0gcGxkbV9tb3ZlX2Z3X29mZnNldChkYXRhLCBzaXplb2YoZGF0YS0+aGVhZGVyX2Ny
YykpOw0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCg==
