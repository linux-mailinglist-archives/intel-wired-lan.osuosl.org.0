Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7F8B15FFF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 14:12:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF3F540873;
	Wed, 30 Jul 2025 12:11:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OjYNpmgUPB_N; Wed, 30 Jul 2025 12:11:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07FE640882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753877512;
	bh=pDRlWMH4WNuEO3Kdx105vOt9plGcNAb3DCLSipTILXc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UEDGSRh2jETCXBd43OjXtCRVwNcQKTQ/EWwmcxoenEBa/cHBfywsDipz1AO+YalSk
	 b2nPwGwlVcEBpZetNukKXRNWob0OCha9VRt6a18Dc5mETrATE8SnejcclPiukrH+fi
	 OcFvCPQdkYzTYkUrlI6RBD2d+spxnvE5odPDFk91yOWi0oQ1RKRijFhUP3GwiJHLz8
	 9rCiDi+tTGFrKWG6AMfHdlzCaCiA67xk1La7IHlRVEqgndIbtNcpa+M0fqy9QbxTUR
	 PBLiBnxffUk0CzoTAcbp43Z16WBorF2SNnmtKdG05LXAJm42/71VQxsTRLVm7nhQlw
	 sQRTXeelnsv9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07FE640882;
	Wed, 30 Jul 2025 12:11:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2165716B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12E1240CA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:11:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fDIg1XaPoRIc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 12:11:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2CB6240870
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CB6240870
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CB6240870
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:11:47 +0000 (UTC)
X-CSE-ConnectionGUID: lms/UvW/TXqYR8yhZ3cltQ==
X-CSE-MsgGUID: JEot/zwrSs6ahIX6uxQk7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="43778429"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="43778429"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 05:11:43 -0700
X-CSE-ConnectionGUID: LjtRSi6lQ9Sql+I+lRfrfg==
X-CSE-MsgGUID: lE/5gZ7kRlWrMnMPYmfoxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="193960526"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 05:11:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 05:11:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 05:11:39 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.41)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 30 Jul 2025 05:11:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CWdwPMj5O+vsv6d8fHS+4WS5dqCDRXoboROwYhy1469eTsYMlVnM1KBZZeqY4mJP/4G8JS5QAjqzoycAebOXfqizsMBEza2+BBd89Q4f/zcUYRxCfeMn+9PETLiso1e5+cO+unee5Dc2/M9mVtwuxBtH81cm4r2irbqu2JWtkOQiXD/2ODZPP4JIwebRp1DgvZdkmOnT2DfLJym8A0h+mzCYbbpIZD8gOyXia0DIO33y7EukGg8ds0imwGmGis7PVxEIddPcjds0TfwYg/KQgnokl1Lt5WYLPjIZSivmSDLJuNbIBzJCyleCIhwQIcxT94ThXcEwSlwsH0mDIH0eug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pDRlWMH4WNuEO3Kdx105vOt9plGcNAb3DCLSipTILXc=;
 b=vzF6vRPo4/HKik6znXxsbGUqCkwnfgwNudokNkafXlGc+ww5REAf3MnfEpLT4lii5UUJ34y/HLCahsveST6bFFoOsN8v1hBb/4PNERTSOlfVf661q4Iz1ozfAwGWaoSFV8deZKv7M2TB9yG2xYc8FJB/uWYCM9ulUmdZsGoLbrigQmtz5gvlCwwuBdhT9rlmIS8WRg2lDtTfIsLgBxOW9zYJz5cTe5NafM8n1K0knrhVoCO8HBggRMQWj8Y3vZvE7ojigIYQ+GX3SEo5XKNbDRyImuRqv32xv1u/KpOdIoSK/HT4Dothuts8TLp/xbqArO6QiWZ8gQYYnRAw3+jnvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB7053.namprd11.prod.outlook.com (2603:10b6:303:221::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.24; Wed, 30 Jul
 2025 12:11:37 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8964.019; Wed, 30 Jul 2025
 12:11:37 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
CC: Joe Damato <jdamato@fastly.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Christoph Petrausch
 <christoph.petrausch@deepl.com>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
Thread-Index: AQHb8sNkGAMtebnHq0uJ96E/H0bLO7RKYHrQ
Date: Wed, 30 Jul 2025 12:11:36 +0000
Message-ID: <IA1PR11MB624196F828BB4E145753F48B8B24A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250711-jk-ice-fix-rx-mem-leak-v2-1-fa36a1edba8e@intel.com>
In-Reply-To: <20250711-jk-ice-fix-rx-mem-leak-v2-1-fa36a1edba8e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB7053:EE_
x-ms-office365-filtering-correlation-id: 02a26640-8c39-4002-ba4d-08ddcf623b9d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MDBQemt4cU9RMElNNmVpdDVoUy9TcC9oR1M3NHNsNXdLdUdFRG1icHVNeWZZ?=
 =?utf-8?B?Z1c1TnJOczVXdE1XQVRQano4TVMwNEpVZisyQUNHVFpmS1AyWUZCYmcxbk1x?=
 =?utf-8?B?dGwvWTRTWkZJRElWZ3ZCeTVqUXgxK3Qxa0V2Z09DRW01TW5PcmJHeUNnZkJp?=
 =?utf-8?B?d0dJVGZYUWRLd0FiVk41d0ZqU2ZHS1JUeUYvUndiRDRRcDg1NXhZUjFjTUJ6?=
 =?utf-8?B?VTB3TjViaUhDZ05kTWVzOS9pTmJCbDE1ekxTNDEwVHhRWXRQbVJLd0dtUDVz?=
 =?utf-8?B?VUt4c2xJejhka3p2b0V2Q2tmMGczWnE0ODRwNGRMNmZIZktpL0s0NTZCWVRI?=
 =?utf-8?B?UGkwOFRNMG9mQllURCtzWlRLdFEvaGFYVmdwSHB2bmZNSnVtRzljVEsyN0VN?=
 =?utf-8?B?bUZLS3JuNHlJNkxqUDZQWmJCRU5kQUtHRzRRbkpnMzFGVVBrVHNoRm1rZ0Zy?=
 =?utf-8?B?ZW5zNkthaWhoUjZ3b20vYm1EYkZ5a3A0NlQwL3FlQXJ0RDlMYjNBR3lnWDhx?=
 =?utf-8?B?VlFiT3ZMaWpIMWYzLzJHNElqMU1LcTNKWUl0bkRVK2lKQUwzNjNFbUh2bTZ6?=
 =?utf-8?B?R0NlLzEycll2Mi9HNHQyTXdWYXBaMGxYU1lHSkNxWmJFeVJIaTBxTGxYQWoz?=
 =?utf-8?B?OGZ4T2N1SndhUGpHTExFSnN2dUZuSlFyM2J4a2kvcUtiZXZlRDFCN2VIZWRX?=
 =?utf-8?B?SE1EbnplSHRRWGFtZmZJWVBsdm9pNmVxbXhNM0IxMzVWa1ZxTFNYN0d5LzFX?=
 =?utf-8?B?WGFqSVlPblgreGFXaVRMUHJyWjNDc09DQ1VnTmtGd3d0UTIraml6M2VqVDRS?=
 =?utf-8?B?UzliTFlBemhlTitoM2dIbGJNRy9FemZ1MUY0SlMycUdiRVR1dUJXTmVrbVFK?=
 =?utf-8?B?amlMUmJrU0syT2pucnFmZXg2WHVIdGZScnpidmtmd3hYaGdmeGhVMTRiSU9l?=
 =?utf-8?B?djJxbmNneVpjRjRqblhYMHZXU2VGTHhCVUE1aVhWSHdxSEtZWjJ0ZGFucVFk?=
 =?utf-8?B?WWxQRkNTY1FRRG1tRytBM3ZURG5ROVFic0JJL2g1OWdSdnlPMS9ocmtocXZ6?=
 =?utf-8?B?VFNkU05vRG8yREtBa2F3NEFQaHEyL0dKNElwc1BmVTliaXRabnJJSjhGMnEz?=
 =?utf-8?B?WWUrUkZWdXBaSjBXL3pGMVJUaXdIVlltS0RNNE1hOWxtdzVmYzQyVmg1UnV3?=
 =?utf-8?B?WmVJOVVucHA1cFlnLzc1MW9JYkUwK3prajRjcEdCcDJ3dEM0KytyY1VtOG50?=
 =?utf-8?B?cmlIUkN5eDhRZkFSOXRFZnV4aXZYMnlCaVQrZzhxTTFHR01KM21iMnJ4ckVl?=
 =?utf-8?B?c1ZNWXNvQ2ZkdXA2ZHhQTnRSRnBXeVp2V0NBT1VoQkxpN0JBVlJUNnpMc2RP?=
 =?utf-8?B?RW9Bc1JqNjJadXdUaHVKaThLRzZFY0VBYk55RnUzWFVacDZ5ZFFEbHkraFRF?=
 =?utf-8?B?T3Y4V0lGMWlVdUNRR3NDVXNzdnc1M1R6cDVLNUo5NGV3MW5MM21KandXM1BL?=
 =?utf-8?B?MHU4MTBLbnhFYWxqVWJEWUJzbnBQSFZqNEM3OXdneUNzMTFEODRtQjJOaGFK?=
 =?utf-8?B?bXc0a2hhMmNUNjBneWJkQSt6OHRBbzN5OWFUU0JlU1FpelhJZXlUMFhRSjd0?=
 =?utf-8?B?M2Z2N0dxcGRYNmpZUnoxUnkwVjY4ZVQ5UHVJSzU0TTRoTm9oeUwwR3dVWTdJ?=
 =?utf-8?B?NGFlSlQ3b0pqMHJ5Vm9OaGRUY2EvQ2sva2hMKzA3UGcrcWUvbkNPNzJMa3NO?=
 =?utf-8?B?VFBGWWlqTWVVN095QWVDdWlVNEFaNUUyQ3kwc0l4Q21COUY2ekUrWkYwK1dn?=
 =?utf-8?B?d3RlM2VnSlduRktoOEo2am9oWXJQRXJuUUl1clczeGNlQUlDZGNoWWRLaUlY?=
 =?utf-8?B?ZXUvcmljc1NQM2w1MG1oZVl0U1ErS0drT25CNXBxdE9BenNUckRTamJmZ2JR?=
 =?utf-8?B?UEdjSG5ZUGRhM2YzNmF5USszN3RvUzFzWGx1QlpiTi9TbjAwcmlHcUZtY28v?=
 =?utf-8?Q?UeZhyREUDZuMuZcmmYGNAtazxTyT5c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGFkTk1xK1phRWZ1SGJiM0Q2SWRrSmQ5N0JGaFVRUWk1VDZ3TjRIamM4c1kx?=
 =?utf-8?B?eTRGRmNwTm10WWFmUzgxcE9VaFdhZkhDVFJvZzBxL1NPa1p0dC9Ob1RRZ0NG?=
 =?utf-8?B?Y25JMm1TWVlxT0YwZmJ1UTRrb1p3RTRDcXBJd3MrYjJFdjkvb1ZVc3RiZ3N5?=
 =?utf-8?B?TllxNFlOQm4zNEd2WUxkZVZ2YTljVC9KdGZhbTROV2FpWWtZV3VvZDlmdS9P?=
 =?utf-8?B?M2lDbXQvK21MdWN1WVEzeVZMTlNlUmwrc1lrY3ArSU9tRnZjKzFCa3F1R0gy?=
 =?utf-8?B?Q1crbXQ2OUZaTmhNSzdMV20wMTdlbm4vcys2TE5HRFJIV284aEgraGMvVnlW?=
 =?utf-8?B?eEhoRUZ4RUtVb0JSNjRPMGlMNmhIM3E3RGJSVFh5clpyeFU2bytYQldHSlhp?=
 =?utf-8?B?MTh1b0pva0p4NmxCWWRXN1RDTzNBU3lnSmdSbk03cm1xSEh1RnNpQlJ6SjFL?=
 =?utf-8?B?M2g3VnhzeTRWeVpjVnM5ZzRxTG9QSWNPTHNnVEtlTlhWdDVTN2pXcDRWWW9y?=
 =?utf-8?B?RGMwbEZpWm1oRlg5T045VTBOZml0ZFV5T3J2bzRHcHN2R0pHQlRWUkxOUXF3?=
 =?utf-8?B?eE1oRVgzV2VWbUJOKytzUHREd1NSS1Y5SU1FOHlCMFhJWHhUNlZzU1BCMUtY?=
 =?utf-8?B?ZEsvWk1hQ2twYnMxeCtCMForR1pUR294ek9pRXhSNU5UcGdqa05TaHJ5aHZG?=
 =?utf-8?B?Z1AwdW02c3JGVVpSSWgxcXdHQ0FjWVNiRGk4MUxQNkFTaWdvZ2RoWjB6VTln?=
 =?utf-8?B?NnNVL2NvakhpNTZlNTF4NnM1WFFROHo2bUZ4dE9uWjdYTFU1UUo1U2tzNGVj?=
 =?utf-8?B?T0ZUbkV6ZjkyQjd0dkltMjhuU3k3cmpDZ0NXTDNub1J0WG9ibURhQlBBemkv?=
 =?utf-8?B?b0p5VVFtUFlzVmZqLzBHT3k3dnFhSVFHWU40V0p1QUZoVVoyQ2QxN3JjNTNx?=
 =?utf-8?B?aVBqbUpLbVB2S0NoWTYweVcyZEo0SkhmZlQxNmdVSXExZ1ZEcktrZXR0YmQw?=
 =?utf-8?B?UlNUQ20yTU1BU0JCcDBJcFBFTzQxVk1nRzZ1U1BCMmFGNFZZZXRlaU1KVHNS?=
 =?utf-8?B?dDdLVWNyOVAxL3J2bUFTQ1M1Rk4vYlFQVXJtMFRidndyZEY4VnJyN2NxUXZZ?=
 =?utf-8?B?ZkVrTUlZOVgxYjVBeFlMVjZFNk1QUDIrSmR3R2YxTEZZQzdVRXZSanBWUVN1?=
 =?utf-8?B?UDhGNklmdUhjM1RpR1NLVHBUeTQxOXovNUM0MUE5YTVPNEtOUjBYczBCdGdt?=
 =?utf-8?B?RnFSam5LMzQrOFN3aVhXWDRZQzkzZjFWK2Y5SEdiN1YzamFpYkNoWWV2ZERr?=
 =?utf-8?B?TzJlUmp6aXBCRHp5djkvSk41VksxK3ZDYmduc3ArV0Qvbno1SnN6OWdOL2Jq?=
 =?utf-8?B?d3h3YXpXR0FNSWxLZFNhd3BtSlh5N09rUUJ6bnZBTEc5U1ZRT0pvYThQRmZV?=
 =?utf-8?B?dTZpODZHTnI5ZGxUTHVZUVA3WmFDVTBLeEViYTIwZEYwRE5NdlRqUXljNEtY?=
 =?utf-8?B?bU5yTG5pUUZNL1dLMTZ0ZU1QZmpBdy9CUE4xWEZpcjNRSHU1RDkyWTJDcHp2?=
 =?utf-8?B?d0RERjl5aVk3b0F5b1d4d3N6MVVIalVjdWNabWdzd3V2SEV4amRXT3JFS1hG?=
 =?utf-8?B?MTRkamRoQzZCU1JhVjhtQ3F5OFB1OUJmWmh4NDhwVjFBWXpzc01YbEx2bzNJ?=
 =?utf-8?B?dmFGbXdLSlRRc0FrdHI4QTNtcWxSbExESlE5YzVGb04rUm5lejMrU00vUk1l?=
 =?utf-8?B?NFpwa0NWNGtMaGcwODhrd2xMMTYySjZRMUFReU9nYzBPOUJ0bm8yMVNWTlVT?=
 =?utf-8?B?NmM4amJGSUZHV0pyQlhZOHBTdlozTVBnMzBES0J2Vkp1R1Z5NXpnN2pRMHIw?=
 =?utf-8?B?dGwvd213cXB0ZWVqVzRsVXh4KzBmeEg5NjlGSE1IMjFzTWNjUDVRaHEzT2hw?=
 =?utf-8?B?anNlL0RUWGRrOHlja3YrOUhSdDRsaHQxeEV0eXFVZUwrNGVxL2Ewbzc2Vkpp?=
 =?utf-8?B?MHJTQ3VtajhteVFCMWV6aWUwR3l3RTJsRlRKcXZTZnhSTjUwRVBZMjhZcVNj?=
 =?utf-8?B?K1Yya0VpTHJWa1JFNkZSckY5LzZyNW9XR1FUQW1zV1BDTTRWUDZ4M3hWdVpl?=
 =?utf-8?B?a1hub2d0UEtISnR0bzlLTHFQUk90NXE3U0hzUWwyWk9kdTllZFgvdkRleTB6?=
 =?utf-8?Q?PmsCEaUIVLUEK+QgkIQZ5UD9a7FdLz7rGOz4QSewTVfm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02a26640-8c39-4002-ba4d-08ddcf623b9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2025 12:11:37.0107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gw1JM2EuFXzNkx/JTXIa+aVVkHnECA2melkkKEnfarZq7WY1rbj8qI+1VXHeH2ftu3gX1JroGwcJcES1S9EnJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7053
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753877509; x=1785413509;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pDRlWMH4WNuEO3Kdx105vOt9plGcNAb3DCLSipTILXc=;
 b=SK59kY6AUAsQRrp0rkddfXgjzyXN/ZXSnlA6cdZYlD8DBcxhODd8z67u
 odOxX1HEUvyoxAlZQ9ZM3vX8vIrllHYrngHiSGexS80b9EhhokvqhCaEv
 MNDyPQLQaxKauorB01A7vcr5VcPQTyhN8MaBF9PEZIv8RFie3MsiRNMXu
 Rkr5A5IJFXmog/jbYJVJIeHw/ZcsFpWtcfbzqP+aLB163FF2gcAoLr3aE
 NVSXue6WHC/u4RyldYlRrDf4ppIyQAb4Yf+q3F2ubSObUBp66znDrt4oU
 9JeZhH2lk+qOTE3nbt9xhCvVTJb0UCnRwdCqDhBPPRzRRW+ay2giCqelS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SK59kY6A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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
ZXINCj4gU2VudDogMTIgSnVseSAyMDI1IDA1OjU0DQo+IFRvOiBGaWphbGtvd3NraSwgTWFjaWVq
IDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6
ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQt
bGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBMb2Jha2luLCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxv
YmFraW5AaW50ZWwuY29tPg0KPiBDYzogSm9lIERhbWF0byA8amRhbWF0b0BmYXN0bHkuY29tPjsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgQ2hyaXN0b3BoIFBldHJhdXNjaCA8Y2hyaXN0b3BoLnBldHJhdXNjaEBk
ZWVwbC5jb20+OyBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYucHVsY2hhcnRAZ29vZGRhdGEu
Y29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHYyXSBpY2U6IGZpeCBSeCBwYWdl
IGxlYWsgb24gbXVsdGktYnVmZmVyIGZyYW1lcw0KPg0KPiBUaGUgaWNlX3B1dF9yeF9tYnVmKCkg
ZnVuY3Rpb24gaGFuZGxlcyBjYWxsaW5nIGljZV9wdXRfcnhfYnVmKCkgZm9yIGVhY2ggYnVmZmVy
IGluIHRoZSBjdXJyZW50IGZyYW1lLiBUaGlzIGZ1bmN0aW9uIHdhcyBpbnRyb2R1Y2VkIGFzIHBh
cnQgb2YgaGFuZGxpbmcgbXVsdGktYnVmZmVyIFhEUCBzdXBwb3J0IGluIHRoZSBpY2UgZHJpdmVy
Lg0KPg0KPiBJdCB3b3JrcyBieSBpdGVyYXRpbmcgb3ZlciB0aGUgYnVmZmVycyBmcm9tIGZpcnN0
X2Rlc2MgdXAgdG8gMSBwbHVzIHRoZSB0b3RhbCBudW1iZXIgb2YgZnJhZ21lbnRzIGluIHRoZSBm
cmFtZSwgY2FjaGVkIGZyb20gYmVmb3JlIHRoZSBYRFAgcHJvZ3JhbSB3YXMgZXhlY3V0ZWQuDQo+
DQo+IElmIHRoZSBoYXJkd2FyZSBwb3N0cyBhIGRlc2NyaXB0b3Igd2l0aCBhIHNpemUgb2YgMCwg
dGhlIGxvZ2ljIHVzZWQgaW4NCj4gaWNlX3B1dF9yeF9tYnVmKCkgYnJlYWtzLiBTdWNoIGRlc2Ny
aXB0b3JzIGdldCBza2lwcGVkIGFuZCBkb24ndCBnZXQgYWRkZWQgYXMgZnJhZ21lbnRzIGluIGlj
ZV9hZGRfeGRwX2ZyYWcuIFNpbmNlIHRoZSBidWZmZXIgaXNuJ3QgY291bnRlZCBhcyBhIGZyYWdt
ZW50LCB3ZSBkbyBub3QgaXRlcmF0ZSBvdmVyIGl0IGluIGljZV9wdXRfcnhfbWJ1ZigpLCBhbmQg
dGh1cyB3ZSBkb24ndCBjYWxsIGljZV9wdXRfcnhfYnVmKCkuDQo+DQo+IEJlY2F1c2Ugd2UgZG9u
J3QgY2FsbCBpY2VfcHV0X3J4X2J1ZigpLCB3ZSBkb24ndCBhdHRlbXB0IHRvIHJlLXVzZSB0aGUg
cGFnZSBvciBmcmVlIGl0LiBUaGlzIGxlYXZlcyBhIHN0YWxlIHBhZ2UgaW4gdGhlIHJpbmcsIGFz
IHdlIGRvbid0IGluY3JlbWVudCBuZXh0X3RvX2FsbG9jLg0KPg0KPiBUaGUgaWNlX3JldXNlX3J4
X3BhZ2UoKSBhc3N1bWVzIHRoYXQgdGhlIG5leHRfdG9fYWxsb2MgaGFzIGJlZW4gaW5jcmVtZW50
ZWQgcHJvcGVybHksIGFuZCB0aGF0IGl0IGFsd2F5cyBwb2ludHMgdG8gYSBidWZmZXIgd2l0aCBh
IE5VTEwgcGFnZS4gU2luY2UgdGhpcyBmdW5jdGlvbiBkb2Vzbid0IGNoZWNrLCBpdCB3aWxsIGhh
cHBpbHkgcmVjeWNsZSBhIHBhZ2Ugb3ZlciB0aGUgdG9wIG9mIHRoZSBuZXh0X3RvX2FsbG9jIGJ1
ZmZlciwgbG9zaW5nIHRyYWNrIG9mIHRoZSBvbGQgcGFnZS4NCj4NCj4gTm90ZSB0aGF0IHRoaXMg
bGVhayBvbmx5IG9jY3VycyBmb3IgbXVsdGktYnVmZmVyIGZyYW1lcy4gVGhlDQo+IGljZV9wdXRf
cnhfbWJ1ZigpIGZ1bmN0aW9uIGFsd2F5cyBoYW5kbGVzIGF0IGxlYXN0IG9uZSBidWZmZXIsIHNv
IGEgc2luZ2xlLWJ1ZmZlciBmcmFtZSB3aWxsIGFsd2F5cyBnZXQgaGFuZGxlZCBjb3JyZWN0bHku
IEl0IGlzIG5vdCBjbGVhciBwcmVjaXNlbHkgd2h5IHRoZSBoYXJkd2FyZSBoYW5kcyB1cyBkZXNj
cmlwdG9ycyB3aXRoIGEgc2l6ZSBvZiAwIHNvbWV0aW1lcywgYnV0IGl0IGhhcHBlbnMgc29tZXdo
YXQgcmVndWxhcmx5IHdpdGggImp1bWJvIGZyYW1lcyIgdXNlZCBieSA5SyBNVFUuDQo+DQo+IFRv
IGZpeCBpY2VfcHV0X3J4X21idWYoKSwgd2UgbmVlZCB0byBtYWtlIHN1cmUgdG8gY2FsbCBpY2Vf
cHV0X3J4X2J1ZigpIG9uIGFsbCBidWZmZXJzIGJldHdlZW4gZmlyc3RfZGVzYyBhbmQgbmV4dF90
b19jbGVhbi4gQm9ycm93IHRoZSBsb2dpYyBvZiBhIHNpbWlsYXIgZnVuY3Rpb24gaW4gaTQwZSB1
c2VkIGZvciB0aGlzIHNhbWUgcHVycG9zZS4gVXNlIHRoZSBzYW1lIGxvZ2ljIGFsc28gaW4gaWNl
X2dldF9wZ2NudHMoKS4NCj4NCj4gSW5zdGVhZCBvZiBpdGVyYXRpbmcgb3ZlciBqdXN0IHRoZSBu
dW1iZXIgb2YgZnJhZ21lbnRzLCB1c2UgYSBsb29wIHdoaWNoIGl0ZXJhdGVzIHVudGlsIHRoZSBj
dXJyZW50IGluZGV4IHJlYWNoZXMgdG8gdGhlIG5leHRfdG9fY2xlYW4gZWxlbWVudCBqdXN0IHBh
c3QgdGhlIGN1cnJlbnQgZnJhbWUuIENoZWNrIHRoZSBjdXJyZW50IG51bWJlciBvZiBmcmFnbWVu
dHMgKHBvc3QgWERQIHByb2dyYW0pLiBGb3IgYWxsIGJ1ZmZlcnMgdXAgMSBtb3JlIHRoYW4gdGhl
IG51bWJlciBvZiBmcmFnbWVudHMsID4gd2UnbGwgdXBkYXRlIHRoZSBwYWdlY250X2JpYXMuIEZv
ciBhbnkgYnVmZmVycyBwYXN0IHRoaXMsIHBhZ2VjbnRfYmlhcyBpcyBsZWZ0IGFzLWlzLiBUaGlz
IGVuc3VyZXMgdGhhdCBmcmFnbWVudHMgcmVsZWFzZWQgYnkgdGhlIFhEUCBwcm9ncmFtLCBhcyB3
ZWxsIGFzIGFueSBidWZmZXJzIHdpdGggemVyby1zaXplIHdvbid0IGhhdmUgdGhlaXIgcGFnZWNu
dF9iaWFzIHVwZGF0ZWQgaW5jb3JyZWN0bHkuIFVubGlrZSBpNDBlLCB0aGUgaWNlX3B1dF9yeF9t
YnVmKCkgZnVuY3Rpb24gZG9lcyBjYWxsDQo+IGljZV9wdXRfcnhfYnVmKCkgb24gdGhlIGxhc3Qg
YnVmZmVyIG9mIHRoZSBmcmFtZSBpbmRpY2F0aW5nIGVuZCBvZiBwYWNrZXQuDQo+DQo+IFRoZSB4
ZHBfeG1pdCB2YWx1ZSBvbmx5IG5lZWRzIHRvIGJlIHVwZGF0ZWQgaWYgYW4gWERQIHByb2dyYW0g
aXMgcnVuLCBhbmQgb25seSBvbmNlIHBlciBwYWNrZXQuIERyb3AgdGhlIHhkcF94bWl0IHBvaW50
ZXIgYXJndW1lbnQgZnJvbSBpY2VfcHV0X3J4X21idWYoKS4gSW5zdGVhZCwgc2V0IHhkcF94bWl0
IGluIHRoZSBpY2VfY2xlYW5fcnhfaXJxKCkgZnVuY3Rpb24gZGlyZWN0bHkuIFRoaXMgYXZvaWRz
IG5lZWRpbmcgdG8gcGFzcyB0aGUgYXJndW1lbnQgYW5kIGF2b2lkcyBhbiBleHRyYSA+IGJpdC13
aXNlIE9SIGZvciBlYWNoIGJ1ZmZlciBpbiB0aGUgZnJhbWUuDQo+DQo+IE1vdmUgdGhlIGluY3Jl
bWVudCBvZiB0aGUgbnRjIGxvY2FsIHZhcmlhYmxlIHRvIGVuc3VyZSBpdHMgdXBkYXRlZCAqYmVm
b3JlKiBhbGwgY2FsbHMgdG8gaWNlX2dldF9wZ2NudHMoKSBvciBpY2VfcHV0X3J4X21idWYoKSwg
YXMgdGhlIGxvb3AgbG9naWMgcmVxdWlyZXMgdGhlIGluZGV4IG9mIHRoZSBlbGVtZW50IGp1c3Qg
YWZ0ZXIgdGhlIGN1cnJlbnQgZnJhbWUuDQo+DQo+IFRoaXMgaGFzIHRoZSBhZHZhbnRhZ2UgdGhh
dCB3ZSBhbHNvIG5vIGxvbmdlciBuZWVkIHRvIHRyYWNrIG9yIGNhY2hlIHRoZSBudW1iZXIgb2Yg
ZnJhZ21lbnRzIGluIHRoZSByeF9yaW5nLCB3aGljaCBzYXZlcyBhIGZldyBieXRlcyBpbiB0aGUg
cmluZy4NCj4NCj4gQ2M6IENocmlzdG9waCBQZXRyYXVzY2ggPGNocmlzdG9waC5wZXRyYXVzY2hA
ZGVlcGwuY29tPg0KPiBSZXBvcnRlZC1ieTogSmFyb3NsYXYgUHVsY2hhcnQgPGphcm9zbGF2LnB1
bGNoYXJ0QGdvb2RkYXRhLmNvbT4NCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9u
ZXRkZXYvQ0FLOGZGWjRoWTZHVUpORU56M3dZOWphWUxaWEdmcHI3ZG5aeHpHTVlvRTQ0Y2FSYmd3
QG1haWwuZ21haWwuY29tLw0KPiBGaXhlczogNzQzYmJkOTNjZjI5ICgiaWNlOiBwdXQgUnggYnVm
ZmVycyBhZnRlciBiZWluZyBkb25lIHdpdGggY3VycmVudCBmcmFtZSIpDQo+IFNpZ25lZC1vZmYt
Ynk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gSSd2
ZSB0ZXN0ZWQgdGhpcyBpbiBhIHNldHVwIHdpdGggTVRVIDkwMDAsIHVzaW5nIGEgY29tYmluYXRp
b24gb2YgaXBlcmYzIGFuZCB3cmsgZ2VuZXJhdGVkIHRyYWZmaWMuDQo+DQo+IEkgdGVzdGVkIHRo
aXMgaW4gYSBjb3VwbGUgb2Ygd2F5cy4gRmlyc3QsIEkgY2hlY2sgbWVtb3J5IGFsbG9jYXRpb25z
IHVzaW5nDQo+IC9wcm9jL2FsbG9jaW5mbzoNCj4NCj4gYXdrICcvaWNlX2FsbG9jX21hcHBlZF9w
YWdlLyB7IHByaW50ZigiJXMgJXNcbiIsICQxLCAkMikgfScgL3Byb2MvYWxsb2NpbmZvIHwgbnVt
Zm10IC0tdG89aWVjDQo+DQo+IFNlY29uZCwgSSBwb3J0ZWQgc29tZSBzdGF0cyBmcm9tIGk0MGUg
d3JpdHRlbiBieSBKb2UgRGFtYXRvIHRvIHRyYWNrIHRoZSBwYWdlIGFsbG9jYXRpb24gYW5kIGJ1
c3kgY291bnRzLiBJIGNvbnNpc3RlbnRseSBzYXcgdGhhdCB0aGUgYWxsb2NhdGUgc3RhdCBpbmNy
ZWFzZWQgd2l0aG91dCB0aGUgYnVzeSBvciB3YWl2ZSBzdGF0cyBpbmNyZWFzaW5nLiBJIGFsc28g
YWRkZWQgYSBzdGF0IHRvIHRyYWNrIGRpcmVjdGx5IHdoZW4gd2Ugb3Zlcndyb3RlIGEgcGFnZSBw
b2ludGVyIHRoYXQgd2FzIG5vbi1OVUxMIGluIGljZV9yZXVzZV9yeF9wYWdlKCksIGFuZCBzYXcg
aXQgaW5jcmVtZW50IGNvbnNpc3RlbnRseS4NCj4NCj4gV2l0aCB0aGlzIGZpeCwgYWxsIG9mIHRo
ZXNlIGluZGljYXRvcnMgYXJlIGZpeGVkLiBJJ3ZlIHRlc3RlZCBib3RoIDE1MDAgYnl0ZSBhbmQg
OTAwMCBieXRlIE1UVSBhbmQgbm8gbG9uZ2VyIHNlZSB0aGUgbGVhay4gV2l0aCB0aGUgY291bnRl
cnMgSSB3YXMgYWJsZSB0byBpbW1lZGlhdGVseSBzZWUgYSBsZWFrIHdpdGhpbiBhIGZldyBtaW51
dGVzIG9mIGlwZXJmMywgc28gSSBhbSBjb25maWRlbnQgdGhhdCBJJ3ZlIHJlc29sdmVkIHRoZSBs
ZWFrIHdpdGggdGhpcyBmaXguDQo+DQo+IEkndmUgbm93IGFsc28gdGVzdGVkIHdpdGggeGRwLWJl
bmNoIGFuZCBjb25maXJtIHRoYXQgWERQX1RYIGFuZCBYRFBfUkVESVIgd29yayBwcm9wZXJseSB3
aXRoIHRoZSBmaXggZm9yIHVwZGF0aW5nIHhkcF94bWl0Lg0KPiAtLS0NCj4gQ2hhbmdlcyBpbiB2
MjoNCj4gLSBGaXggWERQIFR4L1JlZGlyZWN0IChUaGFua3MgTWFjaWVqISkNCj4gLSBMaW5rIHRv
IHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNzA5LWprLWljZS1maXgtcngtbWVt
LWxlYWstdjEtMS1jZmRkN2VlZWE5MDVAaW50ZWwuY29tDQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaCB8ICAxIC0gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfdHhyeC5jIHwgODEgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDQ5IGRlbGV0aW9ucygtKQ0K
Pg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRp
bmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
