Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 841EDCC8375
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 15:34:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A66C060709;
	Wed, 17 Dec 2025 14:34:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uQt6kikJ0R3o; Wed, 17 Dec 2025 14:34:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC51060716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765982063;
	bh=9FPT1ctBcwUT7P4F+lbtzzhf7uTITwLlpgc/cevhcSI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VUWowbkNys6YO10AY2jLYfoJwKTsNCWecwkqFNdjVjxqDkcb2ner4RnP4Pjyi2Snh
	 WLYlK1YSNqHClQy/8znVFa2+5X9A7Bx9mS18ljjOC42koIEWhEqKyBNyS6YZMeDCwE
	 QvUkYIZMys5vX22lBolFtAwmOmWukGHhRHDWgn4QayDW7C6dizEjUwOnXcI4SS1ANG
	 MIadduEX2EQ95jRbSH6AYk8EsbLaxz0zeQyF0qiTDpdre36nIEnHMZxWMnCGz1K2Op
	 iueZzHBBCbP//9DblS5kj9VlP0evkp4XySLqnbCbb+OazpnbYmA5DsSj5lhXBybC1W
	 ubHw7IrN2cH8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC51060716;
	Wed, 17 Dec 2025 14:34:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C7DB035B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B5A75606F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zDoeY1DwfAMg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 14:34:20 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AAA7F606EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAA7F606EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AAA7F606EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:34:19 +0000 (UTC)
X-CSE-ConnectionGUID: fMtZFR/rRee4teb5gGuOoA==
X-CSE-MsgGUID: YxsqrIpPTIqPwGI2R5jmuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67859087"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67859087"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:34:19 -0800
X-CSE-ConnectionGUID: Q2I5hQP1Q/e8xkQiEgh81w==
X-CSE-MsgGUID: 61eAtZ+JSluDW9TTmhx5Ng==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:34:18 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:34:17 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 06:34:17 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:34:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tdDvsveNsRlt/tPMIN6Kqo+74cB9p7DhmISuc8zBnCydU6tv5Djtm6kVG4/rUOzvd4Vd9gRvCtvw936HtQ+Wj5KKiSvxzT4EasjsSZ1GyO2BzokoWlwTx/NTgU3TGHBres93qzogI63WUK9mBwuNi4422VHJZDwzknLH5sMQWSB+UHqUvD6SVInH8Me+Vx6SirvbNTfImvEf/tzUx6zgY7p21QeKjRkxfMdVwk2sVfC0/F/J4W363/DWthcuaslIxq3vtFBIJuNM9WA8pSQqBpbV5tCWXFr8Pi2vHhSlFCnqOrtADcT2nfsInFIjvVnEqR7Aq2BbmVbtn1bCFgZxag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9FPT1ctBcwUT7P4F+lbtzzhf7uTITwLlpgc/cevhcSI=;
 b=ADyFuh+WaJRtTje1AzhvcS/2XBSvRPXEf4INopDmKV0wlohFQn64+7kD4s+CztvXcxm/VbN6aslNgdYREEmJj2bUvYVaSOJhLOng2en197wbtqz+dkHZLMSRONqBxhwXQylb2W03GYgr4H/udGJ/P4+98lvM2/iNSfhwDMkhByXSuDOw2Rec7zwHhk4iriI22l9gUiKfz3CsXk96EOHblp32kr31nZTV39HPr20kwXpth6PvySFREHEeRNZ0jOgzSfracoQLAjT+tc4Upd6A8v4N0mV6tdSsYqZQPeAncrHfXw9gR8J93wShQ8vxDPO3RvqGRgTM13NE413o+4p/Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPFD7E67F036.namprd11.prod.outlook.com (2603:10b6:f:fc00::f54)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Wed, 17 Dec
 2025 14:34:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 14:34:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Pavel Begunkov <asml.silence@gmail.com>, Byungchul Park
 <byungchul@sk.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel_team@skhynix.com" <kernel_team@skhynix.com>, "harry.yoo@oracle.com"
 <harry.yoo@oracle.com>, "david@redhat.com" <david@redhat.com>,
 "willy@infradead.org" <willy@infradead.org>, "toke@redhat.com"
 <toke@redhat.com>, "almasrymina@google.com" <almasrymina@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
Thread-Index: AQHcbkF7A1ZzBYHaFEaGixciqdtJHbUluH+wgAAZhoCAABMQUA==
Date: Wed, 17 Dec 2025 14:34:14 +0000
Message-ID: <IA3PR11MB898609A6FA1E75B5C87C27C2E5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251216040723.10545-1-byungchul@sk.com>
 <IA3PR11MB898618246F68FA71AF695B3DE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <39e285e0-81b7-47b2-b36f-50de7e51f95b@gmail.com>
In-Reply-To: <39e285e0-81b7-47b2-b36f-50de7e51f95b@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPFD7E67F036:EE_
x-ms-office365-filtering-correlation-id: eee0576a-ce6b-4c41-2b49-08de3d795a10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?a05QRjdMa0prSjRDekJ5OTBNVXUzZkFtWFFuY3VyY0JjRWpzRUxhcktmbjU2?=
 =?utf-8?B?alJ1bE5Fdi9YekoraXBraHoyd1BWdHJZQkh1V1pHT2lzNTB6aDRoZmJteHZD?=
 =?utf-8?B?a1h5T1FvNk9HbmcvVnJNOWZCK1lERlVIK2grb21yd2FxaEpKcmVqeEhYTVNt?=
 =?utf-8?B?aDZ3YmxBVS9sNVpvY1dxR1JLK2ZZTVJNQUROMEJjZ2hvUXZPNzR6SHJzTEdj?=
 =?utf-8?B?NENUQSswTGw1OHF6dHVsR2I5MVZ2N2N0ZWJmMktpOEZ0azE0NzBEWnRZTVVX?=
 =?utf-8?B?bjkxY3I5WTJoMHlOZUt5MzN1RjdpNUZ2ek9HWEl5WWN2NGVpckJkZ2pOU2dM?=
 =?utf-8?B?Q0NnWUZzZmhocHJYeURMbnJkQlM5dU1BaVBibmhSMGpKeDg2c0FIeGpadWZj?=
 =?utf-8?B?bksza2FVRDk3TjVMVHBPQjl3Nlljd1A5UDlpbjNIOTcwdDhNaklEZ3I3bDNC?=
 =?utf-8?B?YkxFeFhvUGRPMElhSlp0WHh2OVhuenNaVFNyNGg1RHlsa293SG5xQjVaZWpG?=
 =?utf-8?B?UHp2bnNoOU91cEpGSi90N3hQNjFLbzl4eEhNenlrNC9sdFljOGRHZ01VcERt?=
 =?utf-8?B?Qmcxa291NFZFNGhyRUsvcFovek1EY0U4dmJ6N3FUK1QzaWtoa0ZaNXozTjZS?=
 =?utf-8?B?MStoTzNBdWdLWWMvbUFnTnBtdTlSNWNWbDZUcENzYTJ3VGxBcTRuUzlOY1dm?=
 =?utf-8?B?ZmhYSUdFdUVRQ2lIOEczeWlYU0wyb2ZzSjJpZUlkSXpDMEJrcUxBYXI4RWti?=
 =?utf-8?B?MERVc3VCUlpCcmZqejFzelhlcTlpem1qaWU0am5MZHEzR1FXQjl4dGxSR3Br?=
 =?utf-8?B?VlkxOFFCV3NjZDBvOXhCdU9BYmdGK2ttL2J6Vk1zSURNUzd0bzFXenZydXRW?=
 =?utf-8?B?NzdhWkk3T3I0ME9hb2JaZGtMcTkwTkduTEljajdpNnVnbEtIVFdsN05Xbi93?=
 =?utf-8?B?V09LbVRjVWt4SXk2S3Rxc0NNNFZyS3Q1UnJLamRkV2JHNnp5bytvc2hnNnBj?=
 =?utf-8?B?RkhOTkpVY0Vmd01HOFdZZ3B5dnlFNnorREJrVzhvOVpWeTREUDJXQytBNjU1?=
 =?utf-8?B?ZTg1emx4bnVTd1krcG93S1VGUCswWDM3WThyYVo3cExPK3poZUtlVi9ZUEJw?=
 =?utf-8?B?SnFjaVczUTVwOUU4eDRTQWFhUjd4YngrY3JweEFNeXhYSUpEamZudjNNcVJy?=
 =?utf-8?B?cndZdVJSRDUvdHp3d0N0ZkpEbXJHU1ViN3JjdGwyRklJNXhPaVBRNG0wUGJJ?=
 =?utf-8?B?M0tPV2JoS0lscVgxNjNzdDYzRDc0Ni9SWG45NmdZTDVQUFpPc1lyY0xzWWht?=
 =?utf-8?B?ekJOTHY0VE5OSjEyVi9SSkgzaGdNSWxOQ2k3WGg4ZTdJaVkrNWhjaEYyVDhj?=
 =?utf-8?B?VVpPUGUrRHZxUU5EMUFVbnNMYjU1eHprWU9UbHhhSVdNSHBSUi8zenBrR3RU?=
 =?utf-8?B?aEVuTmQ2SHRud05KVUpzTkNtVE1JT01hWk44SjVHbWh2QXNmTU5oSUMzU283?=
 =?utf-8?B?ZXVMRHVXRzZwQ1ZnQTlIRGRGendnT1FPMjJlVVE2ZGFMaC9WbEtLZmIxS1Rp?=
 =?utf-8?B?ZkNMYmkzbXh0dmEreVNpNXozd2Y4dDJreHlGK0R2bzVmTlpzSkRiSkY0UWhL?=
 =?utf-8?B?T3pEeUptRWdEQ3FYMDVRdVhIV2tza2sxYzVnQ2tZUG5OTFh2RXZ0cjh5ME0v?=
 =?utf-8?B?R3Y2UDhBYjdKUy83TGdZSTQzZ2hqVzJ0aDIwdGM5WkhZSEI4bTRTTEgrY3Q1?=
 =?utf-8?B?NS8yQlNUUGwvNFg2bWJpVzN0c1dtczFIU1dPUXFibnpqNnNkVm9DdzI5OHVo?=
 =?utf-8?B?ZXBqeFBHdmEraitrRXJSK0pCMElHQlJxQmtRR2FHeUtndkFLWFZDWE13TWIz?=
 =?utf-8?B?Ymc0eEM4SnB6TzFTYkNBQVV5K1ZYZXdqeGE3UmxxWkpZcFJBeVRpYlJ4M25M?=
 =?utf-8?B?bWRFcTNhZGFZSURUQ29ZTFhKM3djS2I0WFNnMGVpdUlodmNyc3d6UDF4QTMw?=
 =?utf-8?B?RGRtcDQ3Sko4K29yUDZubzk4QjA4YzdZamw1Zk41ZTUyTWw5RzJuSzcwK20x?=
 =?utf-8?Q?1PIaRK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MS9RdGJQdkVFNGZiUlh5UjR5OG13Ykp6SlpsbEJYcW5aZDJWZEFncHBoaGdO?=
 =?utf-8?B?Tmh1Um5sTFo4alQxWmZZeUlPb1BVVUYzb1FkaDRITXpDVXluYThrQkRRYTJI?=
 =?utf-8?B?VDhuZlA0NWJ2dDRvNWxnQkI3VzVVNjdLak9ybGRJMmxzM1p2Y0srVm9RS0c0?=
 =?utf-8?B?TUUwWFp1aUtBOC8xOU9ISWZPY1JvZHJUOVNQZEpOcDZaZ1pJcWlXOTZvRisx?=
 =?utf-8?B?OVJtbmNxOXJLcGZyUmtEUzlzWGtVMG43Nk1oM1QxUTNFNUFhZUtpdnhMaWZ1?=
 =?utf-8?B?V3M2bWVDKzZRS0RLcVhFSUpDNHVNQ3ZwMlAzSXkrVXNLUWZ2WGJnQTN1cWlo?=
 =?utf-8?B?aWVvSlM0UFl6WW9hRm1NZ1NKRDFSUzh1TTNPL0F0U0lscEUrbi9MN1F3bTFu?=
 =?utf-8?B?M1FGZDlaendoc3A5KzNQOGRXdjA2VVY2V2RQT003K3hHYWVMT1M3K2doMnVa?=
 =?utf-8?B?UFJFbGMyQWhveTA1dDl3WmFtT2hxL2NhZ1RSUjdJUy95ZGEvcW9WREdHQUw4?=
 =?utf-8?B?UDFGWkRFdWM0UHRsZXJWZTFtdmNXWTBZT2pPRkVzQTMzV2d1OW5Sb01vZlk2?=
 =?utf-8?B?VDJwdGVZZ1hpaHZKZzdwN3VzZkloYkNGNGQrQXVpMitnOEF3eFBWSUZ5eVRM?=
 =?utf-8?B?OFV6LzFBQWs1TmRaVjBaZTU1QXZRa1JRTUx4TFA5bDdnOGVRbnpVQm1QRXJD?=
 =?utf-8?B?SmUveDQ3T3FFa0VWUldSWGc2UkxjdGNVenBwRlNvYzdQZmFjZ2czUThmSGlp?=
 =?utf-8?B?cnZ0UTBrak5rcDQvVWtjOHp4aXNIWFE2NVZZVVorRUdoQ01jYm9tS0VzNDdW?=
 =?utf-8?B?Slp3Q2NPQThiMnBnemJiMDFQZDJxeHVSZzVuYnMrdDBrVmswRFhFVVQ0WkNv?=
 =?utf-8?B?dkpieU1meTlTejd0K2FyUXNlSVUyeThvdy9VYjBGTGNvNmVYWVJaNzB0Vy85?=
 =?utf-8?B?SnZkUGUzZm45YmlMd0lQQ09OU2RzcXZPSy9kY0RpRStkbXZ5R2ZEMS8ydlVk?=
 =?utf-8?B?emljMW83V25kQlBCWTVuVmYwSTRSeGFxaWlhdHlRcnRlNXpXaXhCYVFuVTJE?=
 =?utf-8?B?TzZlWExzRURHaVRPbjJFUUE5Q3RJVVVxSlNTeVFiNEljL0xmVTZiRE5oOU5r?=
 =?utf-8?B?anRnSnNwK1JQb2hzRVRrS3R1VHRGVTN6aFA4a0MyVmNrK2ZqN3dCZ0RMSU1B?=
 =?utf-8?B?MzllS3hpeDYxUS82WU9PTmVNeitBbjRBUWg1ZXUrcjh3MzgzVUVEaHBTTURC?=
 =?utf-8?B?ekVjOUZnaUFOYm9Ja1VmTnB5Rk54cmRwZVZnTlY2WjlUeDlyR0tvbXJ5anpG?=
 =?utf-8?B?bldyTkRPZWx2eExYeUY1UFRGd3M0RnlIV1J4Q2Nncmt5MDBqcTFlYW5kMFNH?=
 =?utf-8?B?Nk5KRDNPMGhxUXd1UXkwL0JwUUt6ZGEvbTZVU0FJbG9Lc2lkelRxMnpSYVZT?=
 =?utf-8?B?WXV4bTIxTFNxRk5yWUdlT0NCODR1b1BJbXVRSVBBbzFVTDgyVmdGR1FrUFZn?=
 =?utf-8?B?YUllYUo1RDNTdStVWTJQL0UwYWNwOG5DVjdzWkErbWVlTHVRWUtycG43Z1dv?=
 =?utf-8?B?T2FYa1JnSHVKVG0zMXZRUXhvOFpFcy80ZmJmZytwY1FFM3NUbUFNc1V5c2xX?=
 =?utf-8?B?NlFsR0U5RDI1L3E3K1g0UXVuYWJvdVd4ejB3eWJ3aUxDb3U4VjlINE1DZ1Vh?=
 =?utf-8?B?Y3NKQ2xsa2JLZmlIOE1kY3QwU0FaRndnLy9vL3FlY3pDcFJXSTFCSFl6M1ky?=
 =?utf-8?B?Vjd0aWRFMWZUTVRNTUE5V21VSUFIcWVjdmcwYmdZcUorSzQ0TjhhZ0x2QXBs?=
 =?utf-8?B?RjdFWHlDYWxsajhkeE9KaUUvQURKQ3NIU0pSMEJWcy9lMlJmRU16YStmTXZN?=
 =?utf-8?B?aDFLcnRkd2M2dkNaM3Bwcm40UkhOeDlXNmo4b3kzTWtyeVlOem1HdnNVWEVa?=
 =?utf-8?B?aWZCVytOSXBUb2QrKzdlc3pkWjhlU0lQOUFzaE91QUNnc3NNQTdyK1p4U1Bz?=
 =?utf-8?B?eHhKOC9jTmorZVVuYXoxK0R2YS81SzFJNFBQYnQ5SjJ0ZGxUZVhzTnlicVUz?=
 =?utf-8?B?OUxxdWxaVStid2V1YnI2M2dsMmt3OEExVUdnams3emZNUVg2dWcrbGcrMUpy?=
 =?utf-8?B?amwxMWJsUFpFS0pDOThPS1gzZG4yL0dWa2lqNEdDM0p4TnJuOXo0dFMwVmEz?=
 =?utf-8?B?Y3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eee0576a-ce6b-4c41-2b49-08de3d795a10
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2025 14:34:14.4386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: egt+jTyI00DbZIo45e1ETvlnqJDxpkBqvcN7DNLYfqHG5tBr7Qo6q3KCqyZda0MgNnZR37f1luigO52pBFF5Ey2mFv2JLIydrot7pdTkiqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFD7E67F036
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765982060; x=1797518060;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9FPT1ctBcwUT7P4F+lbtzzhf7uTITwLlpgc/cevhcSI=;
 b=k08CELSdBrH9hQUjS5oC/q0htU0u1jDurrm/aMXYNpMHrBYO9OcOr+BS
 DPFN6DQ3oYUbCn/Ob0WPUAmMTSrtffKzBlqyFtjOYt5BD/54x8dFSckSJ
 CXHXkzkh298tIRiPX7pcLtJxVorDJQL3Pv21U5j7ddfCiu2/2LZnSkWSc
 rQMg0/5F6wrxaRDd5YKeiBcH+PzfuYuvSf48FK+RLCyklnG+yDzavu9Mm
 qtUOuIJrnJeF953fNno0jWx0KytmZXYQvFeKneg+JS9tDWqOcnGJ+Poxx
 PlQJwQjHtc/jXF3f3FabdBVq/zhVjEZ0uFXKSWDHHu4Z//Mpg0PMFLXBk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k08CELSd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF2ZWwgQmVndW5rb3Yg
PGFzbWwuc2lsZW5jZUBnbWFpbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTcs
IDIwMjUgMjoxNiBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgQnl1bmdjaHVsDQo+IFBhcmsgPGJ5dW5nY2h1bEBzay5jb20+OyBu
ZXRkZXZAdmdlci5rZXJuZWwub3JnOyBrdWJhQGtlcm5lbC5vcmcNCj4gQ2M6IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc7IGtlcm5lbF90ZWFtQHNraHluaXguY29tOw0KPiBoYXJyeS55b29A
b3JhY2xlLmNvbTsgZGF2aWRAcmVkaGF0LmNvbTsgd2lsbHlAaW5mcmFkZWFkLm9yZzsNCj4gdG9r
ZUByZWRoYXQuY29tOyBhbG1hc3J5bWluYUBnb29nbGUuY29tOyBOZ3V5ZW4sIEFudGhvbnkgTA0K
PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxw
cnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgYW5kcmV3K25ldGRldkBsdW5uLmNoOw0KPiBk
YXZlbUBkYXZlbWxvZnQubmV0OyBlZHVtYXpldEBnb29nbGUuY29tOyBwYWJlbmlAcmVkaGF0LmNv
bTsgaW50ZWwtDQo+IHdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBb
SW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0LW5leHRdIGljZTogYWNjZXNzIEBwcA0KPiB0aHJv
dWdoIG5ldG1lbV9kZXNjIGluc3RlYWQgb2YgcGFnZQ0KPiANCj4gT24gMTIvMTcvMjUgMTE6NDYs
IExva3Rpb25vdiwgQWxla3NhbmRyIHdyb3RlOg0KPiA+DQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1s
YW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbg0KPiBCZWhhbGYNCj4gPj4gT2YgQnl1bmdjaHVsIFBh
cmsNCj4gPj4gU2VudDogVHVlc2RheSwgRGVjZW1iZXIgMTYsIDIwMjUgNTowNyBBTQ0KPiA+PiBU
bzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsga3ViYUBrZXJuZWwub3JnDQo+ID4+IENjOiBsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBrZXJuZWxfdGVhbUBza2h5bml4LmNvbTsNCj4gPj4g
aGFycnkueW9vQG9yYWNsZS5jb207IGRhdmlkQHJlZGhhdC5jb207IHdpbGx5QGluZnJhZGVhZC5v
cmc7DQo+ID4+IHRva2VAcmVkaGF0LmNvbTsgYXNtbC5zaWxlbmNlQGdtYWlsLmNvbTsgYWxtYXNy
eW1pbmFAZ29vZ2xlLmNvbTsNCj4gPj4gTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA+PiA8cHJ6ZW15c2xhdy5raXRz
emVsQGludGVsLmNvbT47IGFuZHJldytuZXRkZXZAbHVubi5jaDsNCj4gPj4gZGF2ZW1AZGF2ZW1s
b2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xlLmNvbTsgcGFiZW5pQHJlZGhhdC5jb207IGludGVsLQ0K
PiA+PiB3aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiA+PiBTdWJqZWN0OiBbSW50ZWwtd2ly
ZWQtbGFuXSBbUEFUQ0ggbmV0LW5leHRdIGljZTogYWNjZXNzIEBwcCB0aHJvdWdoDQo+ID4+IG5l
dG1lbV9kZXNjIGluc3RlYWQgb2YgcGFnZQ0KPiA+Pg0KPiA+PiBUbyBlbGltaW5hdGUgdGhlIHVz
ZSBvZiBzdHJ1Y3QgcGFnZSBpbiBwYWdlIHBvb2wsIHRoZSBwYWdlIHBvb2wNCj4gdXNlcnMNCj4g
Pj4gc2hvdWxkIHVzZSBuZXRtZW0gZGVzY3JpcHRvciBhbmQgQVBJcyBpbnN0ZWFkLg0KPiA+Pg0K
PiA+PiBNYWtlIGljZSBkcml2ZXIgYWNjZXNzIEBwcCB0aHJvdWdoIG5ldG1lbV9kZXNjIGluc3Rl
YWQgb2YgcGFnZS4NCj4gPj4NCj4gPiBQbGVhc2UgYWRkIHRlc3QgaW5mbzogSFcvQVNJQyArIFBG
L1ZGL1NSLUlPViwga2VybmVsIHZlcnNpb24vYnJhbmNoLA0KPiBleGFjdCByZXBybyBzdGVwcywg
YmVmb3JlL2FmdGVyIHJlc3VsdHMgKGV4cGVjdGVkIHZzLiBvYnNlcnZlZCkuDQo+ID4NCj4gPj4g
U2lnbmVkLW9mZi1ieTogQnl1bmdjaHVsIFBhcmsgPGJ5dW5nY2h1bEBzay5jb20+DQo+ID4+IC0t
LQ0KPiA+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jIHwg
MiArLQ0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9ldGh0b29sLmMNCj4gPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2V0aHRvb2wuYw0KPiA+PiBpbmRleCA5NjlkNGY4ZjljMDIuLmFlOGE0ZTM1Y2IxMCAxMDA2NDQN
Cj4gPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMN
Cj4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMN
Cj4gPj4gQEAgLTEyNTEsNyArMTI1MSw3IEBAIHN0YXRpYyBpbnQgaWNlX2xidGVzdF9yZWNlaXZl
X2ZyYW1lcyhzdHJ1Y3QNCj4gPj4gaWNlX3J4X3JpbmcgKnJ4X3JpbmcpDQo+ID4+ICAgCQlyeF9i
dWYgPSAmcnhfcmluZy0+cnhfZnFlc1tpXTsNCj4gPj4gICAJCXBhZ2UgPSBfX25ldG1lbV90b19w
YWdlKHJ4X2J1Zi0+bmV0bWVtKTsNCj4gPj4gICAJCXJlY2VpdmVkX2J1ZiA9IHBhZ2VfYWRkcmVz
cyhwYWdlKSArIHJ4X2J1Zi0+b2Zmc2V0ICsNCj4gPj4gLQkJCSAgICAgICBwYWdlLT5wcC0+cC5v
ZmZzZXQ7DQo+ID4+ICsJCQkgICAgICAgcHBfcGFnZV90b19ubWRlc2MocGFnZSktPnBwLT5wLm9m
ZnNldDsNCj4gPiBJZiByeF9idWYtPm5ldG1lbSBpcyBub3QgYmFja2VkIGJ5IGEgcGFnZSBwb29s
IChlLmcuLCBmYWxsYmFjaw0KPiBhbGxvY2F0aW9uKSwgcHAgd2lsbCBiZSBOVUxMIGFuZCB0aGlz
IGRlcmVmZXJlbmNlcyBOVUxMLg0KPiA+IEkgdGhpbmsgdGhlIGxvb3BiYWNrIHRlc3QgcnVucyBp
biBhIGNvbnRyb2xsZWQgZW52aXJvbm1lbnQsIGJ1dCB0aGUNCj4gY29kZSBtdXN0IHZlcmlmeSBw
cCBpcyB2YWxpZCBiZWZvcmUgZGVyZWZlcmVuY2luZy4NCj4gPiBJc24ndCBpdD8NCj4gDQo+IENv
bnNpZGVyaW5nICJwYWdlLT5wcC0+cC5vZmZzZXQiIHBva2luZyBpbnRvIHRoZSBwb29sLCBpZiB0
aGF0IGNhbg0KPiBoYXBwZW4gaXQncyBhIHByZS1leGlzdGluZyBwcm9ibGVtLCB3aGljaCBzaG91
bGQgYmUgZml4ZWQgZmlyc3QuDQo+IA0KPiAtLQ0KPiBQYXZlbCBCZWd1bmtvdg0KDQoNCkdvb2Qg
ZGF5LCBIaSBCeXVuZ2NodWwsIFBhdmVsLA0KDQpUaGFua3MgZm9yIHB1c2hpbmcgdGhlIGRyaXZl
ciB0b3dhcmQgbmV0bWVtIOKAlCBJIGZ1bGx5IHN1cHBvcnQgcmVtb3ZpbmcgZGlyZWN0IHN0cnVj
dCBwYWdlIGFjY2Vzc2VzIGZyb20gdGhlIG5ldHdvcmtpbmcgc3RhY2suDQoNClJlZ2FyZGluZyB0
aGlzIGNoYW5nZSBpbiBpY2VfbGJ0ZXN0X3JlY2VpdmVfZnJhbWVzKCk6DQoNCglyZWNlaXZlZF9i
dWYgPSBwYWdlX2FkZHJlc3MocGFnZSkgKyByeF9idWYtPm9mZnNldCArDQoJCXBwX3BhZ2VfdG9f
bm1kZXNjKHBhZ2UpLT5wcC0+cC5vZmZzZXQ7DQoNClBhdmVsLCB5b3UncmUgcmlnaHQgdGhhdCBp
ZiBwYWdlLT5wcCBjb3VsZCBiZSBOVUxMLCBpdCdzIGEgcHJlLWV4aXN0aW5nIGJ1ZyB0aGF0IHNo
b3VsZCBiZSBmaXhlZC4NCkhvd2V2ZXIsIGxvb2tpbmcgYXQgdGhlIGxvb3BiYWNrIHRlc3QgcGF0
aCwgSSdtIGNvbmNlcm5lZCB0aGlzIGNvZGUgZG9lc24ndCBoYW5kbGUgbm9uLXBhZ2UtcG9vbCBh
bGxvY2F0aW9ucyBzYWZlbHkuDQoNClRoZSBuZXRtZW0gbW9kZWwgZXhwbGljaXRseSBhbGxvd3Mg
Zm9yIGJ1ZmZlcnMgdGhhdCBhcmVuJ3QgcGFnZS1wb29sIGJhY2tlZC4NCldoaWxlIHRoZSBsb29w
YmFjayB0ZXN0IGxpa2VseSBydW5zIGluIGEgY29udHJvbGxlZCBlbnZpcm9ubWVudCwgdGhlIGNv
ZGUgc2hvdWxkIHZlcmlmeSBwcCBpcyB2YWxpZCBiZWZvcmUgZGVyZWZlcmVuY2luZywNCm9yIHVz
ZSB0aGUgbmV0bWVtIGhlbHBlcnMgdGhhdCBoYW5kbGUgdGhpcyBncmFjZWZ1bGx5Og0KDQoJc3Ry
dWN0IG5ldG1lbV9kZXNjICpuZGVzYyA9IF9fbmV0bWVtX3RvX25tZGVzYyhyeF9idWYtPm5ldG1l
bSk7DQoJdm9pZCAqYWRkciA9IG5ldG1lbV9hZGRyZXNzKHJ4X2J1Zi0+bmV0bWVtKTsNCglzdHJ1
Y3QgcGFnZV9wb29sICpwcDsNCg0KCWlmICghYWRkcikNCgkJY29udGludWU7IC8qIHVucmVhZGFi
bGUgbmV0bWVtICovDQoNCglwcCA9IF9fbmV0bWVtX2dldF9wcChuZGVzYyk7DQoJcmVjZWl2ZWRf
YnVmID0gYWRkciArIHJ4X2J1Zi0+b2Zmc2V0ICsgKHBwID8gcHAtPnAub2Zmc2V0IDogMCk7DQoN
CkFsdGVybmF0aXZlbHksIGd1YXJkIHRoZSBleGlzdGluZyBjb2RlIHdpdGggcGFnZV9wb29sX3Bh
Z2VfaXNfcHAocGFnZSkgYmVmb3JlIGNhbGxpbmcgcHBfcGFnZV90b19ubWRlc2MoKS4NCg0KVGhp
cyB3b3VsZCBjb21wbGV0ZSB0aGUgbmV0bWVtIGNvbnZlcnNpb24gd2hpbGUgZml4aW5nIHRoZSB1
bnNhZmUgZGVyZWZlcmVuY2UsDQphbGlnbmluZyB3aXRoIE1hdHRoZXcncyBlYXJsaWVyIHN1Z2dl
c3Rpb24gdG8gdXNlIGRlc2NyaXB0b3IvYWRkcmVzcyBhY2Nlc3NvcnMuDQoNCkFsc28sIHBsZWFz
ZSBhZGQgdGVzdCBkZXRhaWxzIHRvIHRoZSBjb21taXQgbWVzc2FnZToNCg0KSFcvQVNJQyAoZS5n
LiwgRTgxMC9FODIzKQ0KUEYgdnMgVkYsIFNSLUlPViBjb25maWd1cmF0aW9uDQpLZXJuZWwgdHJl
ZS9jb21taXQgKG5ldC1uZXh0IEAgPHNoYT4pDQpSZXBybyBzdGVwczogZXRodG9vbCAtdCAkZGV2
IG9mZmxpbmUNCkJlZm9yZS9hZnRlciBiZWhhdmlvcg0KSGFwcHkgdG8gcmV2aWV3IHYyIHdpdGgg
dGhlc2UgY2hhbmdlcy4NCg0KQmVzdCByZWdhcmRzLA0KQWxleA0K
