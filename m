Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C3C8BC704
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 07:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12824406D8;
	Mon,  6 May 2024 05:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tHJvlN24oILx; Mon,  6 May 2024 05:37:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA5414069C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714973866;
	bh=o3Hmws9U0rW39RVeIdpWBcIRxUwd5BQvxOezRJFX8uE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5SAXtdbAmMt/g9LJNrpfDc18ysA8r7B1IEL76r3ADoX9NlobuFDN9IX/lB7lxIgca
	 mLpoctQCrTjMr7VDmDn1OQzyQBUHIsZrgxU/36pu/9mtRgp7cAVQDlI3J1QDJOZVqp
	 K9cSPXWDlPvFj65hQsr3VD0U2HOrDCpIqwUdD/aafPlRN6awGt2F0+lhRvf9zfAO24
	 976SBtE6MAFzAgv6niCstKn23X36Hi/0ntGekYhvaNobGf30l58UFSDXgbO2v7rSX7
	 9bmYxn018MM3aCuUXWoXS0kvcA167lSPQdVIT/gkEXFBu7EHCZJsmtHn7r6Mxvws6B
	 rADFQ+n/GoQRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA5414069C;
	Mon,  6 May 2024 05:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 371F11BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22E4C8215E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cHxbJdy-iCgC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 05:37:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5DBDF8215D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DBDF8215D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DBDF8215D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 05:37:43 +0000 (UTC)
X-CSE-ConnectionGUID: iD7OntQwTLuXVDOKJi4NjA==
X-CSE-MsgGUID: o28EZibLQHmjqXUzx1iK0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10556312"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10556312"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP; 05 May 2024 22:37:43 -0700
X-CSE-ConnectionGUID: Dr7mj//tRDmj2buf3FNjvQ==
X-CSE-MsgGUID: uGxzmNk9TnyDOcte9rF4EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="58933362"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 May 2024 22:37:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 5 May 2024 22:35:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 5 May 2024 22:35:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 5 May 2024 22:34:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCQ6qO+wE5KNQB+4+atx5XPwZgm+cgmwdh8wb58y6NaT2cnZR0w4Bkxeo8e7Wo/IyN3mNni5awsVml5KbLIQmSs6k0kB5QbKRfqu0vbhO0IQjOndJaDdMGB4iwZUGMseJJV9VqVDrdkNLD2GRxXxeNtfLe4WQIv4SI6RbRn2yTlUqpIRiBTOMN3j+jbga0UbLabuanjP63w0evwUyi/9XGXNwqHP9T8UhaeZfnMsW+8yWOeAje8Pt6QNSqQgUQuFm3VSDmUQYuzCtdnJBGUa0K9E83RXBkViw7uaJXc+CPecDOfYlPdA4Oi4sqhvLQ8O5GVzudX89vuKPaf2dk6J+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o3Hmws9U0rW39RVeIdpWBcIRxUwd5BQvxOezRJFX8uE=;
 b=XpbXF3gxJOdvEx85W13tbg9ShH1FNXwQsud0FDTH8HMW1GAYujNzXJDKM5xzdGtp9vqVOp9hXQfj2kQIp3EnLB9wUDQbWx5WgPhILjeFYD9Hn6LAhibB4iPvD9HzyoxjiYeJMrqWkEVbKJ904crTVoMYCqFBY13sFE11m4RRGNYU6qPfQ5HdRS/K0q5CPj3BhwIZfB/g6Ug1zQoLYpPlsEH2ZjysiB/5ll/kkZPAlPl3LpPuX1WvwTAnpqYeCXvewY0c/0YrBsAFJouMv5E9s6zg9g1Hn46O8+XMrH6SoBccbmP+AcsRXEBHXBluQzVWM50AzaM5+9T4T/5i1iDz3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5255.namprd11.prod.outlook.com (2603:10b6:208:31a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 05:34:27 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 05:34:27 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate control
 flags
Thread-Index: AQHakA4WoMrCetPpSkCXQWbM721odbGJzehg
Date: Mon, 6 May 2024 05:34:27 +0000
Message-ID: <PH0PR11MB5013DA8FD185E8F4F3ECBFC8961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240416144331.15336-1-ast@fiberby.net>
In-Reply-To: <20240416144331.15336-1-ast@fiberby.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5255:EE_
x-ms-office365-filtering-correlation-id: 7d5e0d8d-7fbe-4e12-1e08-08dc6d8e3211
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?K1BBY1dTbVN0YkgzVmZaNDdueG04NnczRXkvRExWWmZOUENJU1FHN2RXL05B?=
 =?utf-8?B?ckc0T2t6eXZpazNnSG1tUmp4cTAvakRZM1JFelZ6UTQ1S3JUSEE4MElhODdk?=
 =?utf-8?B?OFFha0xLNkhST254T0F6U3ZCM2hvdmY3eTk3YSszWmZkSklFM1dwb3k0QUI5?=
 =?utf-8?B?T2V0V2ZxRWUzekdPOC9mamlnM0laY205enJ5WmkyWHpZZjgrUTVVMFdkUFpk?=
 =?utf-8?B?ZmVJZEdCT1V0aEh6cnZZU0JxVDRPVFF2cUNVNFVwRSszMDJxdnlLbmlJVm5x?=
 =?utf-8?B?UUh0cG85Z00weDJZVTM4c3F6RUhqeXFyWTRLampTVFhHU0V2STdURk5oN1pX?=
 =?utf-8?B?UGorMUgwWFI2N0lCSFhwMm9mY2U5VGZoeHZiaFZ5dDZuc29RS3B0aWtVTXNY?=
 =?utf-8?B?UlVMSHdjemUwMDRuRHM1Q1lwZ1JyV1U1a1BQUnJWWit2Z2NXTGtEYmExaisr?=
 =?utf-8?B?TU1DTkl3MFc2a1d5MDNaZHdQNzV0YVAwZUhTc1Zuemx5ckdGaDl3WnBHVUZB?=
 =?utf-8?B?dWRjd1IzTUpZODNWV2RKNFYwd3dWTVdhRkkzRnN3WDVCQzZkUlczZnRkMVN6?=
 =?utf-8?B?ZmpIM0p4MFZmY0k3cHdldXkyTXRFWTRjdE94cXEydzY3NFJ0OEwxdE1SOWNv?=
 =?utf-8?B?N1FtZXZmRVhvKy9uMnVWN01DSFBKVW5wNFB2OW1oZThNWmpaUkhGYmFKTmts?=
 =?utf-8?B?WVFwaHRZc0NIL2YvNko3N0I3RHBhNVZSaDFlb2x5NTZ0Y1NZSnZwejBLeHh6?=
 =?utf-8?B?b016UitkYTNIZ2Z1NjdtV0FhSm1CK2EyUnlOZ2crOEJhbXhaYnYrRHMrMTEz?=
 =?utf-8?B?MDgrYXJETGs2alMwTnFUQVJ3S0FXT3Rqa0x1SGVpYlgwak96UVhSamJDMmtw?=
 =?utf-8?B?QTJSTmw1UlNjL0JKZ0VXQnlyQWM4QmpKMWpUVi83Mys5cEx4MjZNSjZvamVL?=
 =?utf-8?B?bkJuT1VrQ2d4a2VCcnY3bGNSZlllL25iaWZjMk5NTnhoME44ckk4dWU1Nk0z?=
 =?utf-8?B?bkJvMWZNWmdPamlWQnpSanpPcm5nMlU3SlVOOEZJTlBTaVh2NExmVlZILzlH?=
 =?utf-8?B?RTUzYzM0SkJzMWZwc1V4ek11UGZJekcrbUZXNUJ5bm54dnBZa1A3MWkxc1hl?=
 =?utf-8?B?UGVJYzhkMkdCVzZqUHAwU3cyRUxCd29LejFHSmJqMFB6RCsydms1UVlPRTAz?=
 =?utf-8?B?cEtQSVp2TXdsRFUyMU4zVkM3Q2dCVWpJNEVYcG5BT3hDc0VmOHN3ZG5UYTNE?=
 =?utf-8?B?dW5TSE1FbEUzbk1lWHJQbTVXaGYreWY2OGFSeHBXaHBwOTBEa285Q3RSUGZC?=
 =?utf-8?B?THJGcjBZYk9STTdnWDFTNEo1ampIY1lmZlBCL1BCbnI4Q1BtNjJ3MUY2UHlj?=
 =?utf-8?B?VVJ2bkZFN0JUejJRU2ZzSmV0U3BETTB5alV2WFhwd1JzOUljbms3c0Qrd1NL?=
 =?utf-8?B?dFljWU9LQkh2R2d6ekpsKzlXQ2NxUmZiaTVKNk1VdHJMNkJqMjlSNlRjNUFn?=
 =?utf-8?B?Y29rcUJEWG0rLzBtb3l1anUvQ0g4UTRXWEJLbGVzbWJHdFhOQ1ZhR2ZSMkpP?=
 =?utf-8?B?d3E2V3dvTEFoaGdEVEJHcDk0RHRFWlVJcnpORXMwYnFFWktrMC93MFAvZ3p3?=
 =?utf-8?B?enZMaVpseS90RFVYdW9IUXZTS0JUaU5ockkwOHA5V2VEdFZJdHlrcVBvbHg1?=
 =?utf-8?B?L2lxT1NBcFhuWWppU3NZc1dWK016SFZGTTZCRW5rSnRWRk9QcU9GRm1ScmdE?=
 =?utf-8?B?SSs3SFFSNXRmV3BNcGY2WlJlNlhEWHNPRzl2WDhRRmtRZ0JhakE5NFRXUVZM?=
 =?utf-8?B?OTNYQUNPaTRDTkZNRG5QQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTZrTEhMMG9ZSjdDZVZFak5jalF3R3BUUCtSUWdKR3lSaUlUWVg0Vk9jR2M3?=
 =?utf-8?B?cm4yQ2dLbFlmR2NQSkpjTmNVMFQwcjN6WlNKZStITTFJYS9YWTBzWlhSTCtP?=
 =?utf-8?B?ejZSdG41bXVCTG5XV3BFdFNBT1ZGaGVTT0tlZk1rTHpYWUNxMWRSL1EwYVN3?=
 =?utf-8?B?TVpONEFTRXVDYzQ1eDkwWVo1b3k3YTNZWHp3YVN5dmpuOFN1Vzc3eHpRZVl6?=
 =?utf-8?B?R3RPR2dWNkNYdHJCRTRHelRMY1FYOEgyZHg3Y3F0djZ5U0xGME50TitiYmNR?=
 =?utf-8?B?a0duaWRPOUVSd3JSWWdYUlM1WEJCaTZaeEE0aVhxMDF5YVFiNjJuWlRyZjNn?=
 =?utf-8?B?QlkyY3prcGdFL1U0d0ZEU0pEZmVrS1owbERma3BLUkh1TmR0clc1SEJyZTIw?=
 =?utf-8?B?ZS9iM0tIYjRRSlNSNWdBdjNWdU9VQWUxRGQxYnhHM3AwckY4bFdyUUh6SUVY?=
 =?utf-8?B?aXFwc1c2K3BHVEhWL0RiMVd0MUJLOVAzVTBhN1NCY0VYU21LZDVOelBwdlQ2?=
 =?utf-8?B?TVNHNU52NllRS1BwR04zSWZ6Rm1iMGdyT2EwMGNkWEJvK2hkY3Ixa1NaZFFM?=
 =?utf-8?B?SWtDeTJ2OWExREVyazdoTk93Tm8zekNHYWJDY0lMbFkzRXZFb2FERlFxSFdn?=
 =?utf-8?B?QWFEeWljRWJub1lLQmNjRWRINEh0MFQzYmZkV0c1TUdYbzhxaXNuTjR2b1dU?=
 =?utf-8?B?VEhtRnJCS3ZVMzVreWsxQy83dnllN3k2N0JhZy8wYWs5TGZUZGxkTDdQQ0cv?=
 =?utf-8?B?Y0VoTWVpd3VUb0VuMFdzSEhmaDFKczV1OWpoNVR1MFFwUzRpZHZtcWlac2pm?=
 =?utf-8?B?dy9hWEhKQ2ZkdVN1dzdZMDh6TU1NcFVpVzVGVFg2TUovQTNnc01GYy9kY3Vi?=
 =?utf-8?B?TGN6MjZ1ZVFsVm5FbUw1L2hPeGt1RTFHUmxhK0kxNHNEYVlURzZUSkFTSks2?=
 =?utf-8?B?cXgxeUVuVnpibDlLbm80UG1MaEJQM3BibGpFQ01Wc2xKbGRMb2Fma2xvMDNX?=
 =?utf-8?B?U3FzZXZBN0NkU2thVU9raEN6cmc2VlFEUHJtYytXWk43dGdTYURxT1JMbE1y?=
 =?utf-8?B?Nmd2ZFR5ekxscGl3RjJEZldPL0IyMTM1QmEweEgvZ3lUV0h1YVpJc2lKRm93?=
 =?utf-8?B?MVdBekZESnRFa3Zwa2orZnQ3Q3JMMzZBK2xzQVNHdDlXdXRWWFk5RDl1ZmI4?=
 =?utf-8?B?UjVVOTdnbFMvczM4NWl4QzNlNFA5cS9PTFkxc0hzRVYwbjBjd2pHejdGZE1I?=
 =?utf-8?B?b0JQZDlqWmtlQXFEbzFqOGdZWStDYWhidURlMEFIbFJYekdqK29mR0RmYmFR?=
 =?utf-8?B?YjZmUFBpaWdEZmVaVXl4UzZKSE9VTTc4ZzVLcmpTaE5NTi9OT0xzRCsydlM5?=
 =?utf-8?B?REx4SDA4UVhVelBvZWhMbkVXa1JGZnVMRTFBU3Q2ZDNWT2pTc285Y1ZnbjR1?=
 =?utf-8?B?SWdJUlVmTXo0eVFIVFFvMjBIYjJ5d0xhNzVvUEZRNVplaHhqKzUxUmZKSkUz?=
 =?utf-8?B?OW1lYjRnK1ZiaVdGOU1lL21OU0JoclBpUDhsQWxNTGtmYVhWVEFKYk5XREdq?=
 =?utf-8?B?V2tlazNXMm5CcFdlazd0Mm03aFY4S1g2MnBTWVllaGloN3NqQ0Z5ZWlmVU5z?=
 =?utf-8?B?TUxubXdVdEFMZUQ1NWhheDZMODNqU3hwSkttcks3bitEeEw4NmhZSEhKVkIx?=
 =?utf-8?B?YlByTmpKQk5EaGtpTXZBQ3hHMWQ2VEVlR1l4TGE5Y0RQWThJSXc5YXZsNlFl?=
 =?utf-8?B?WTBDR3p3OGVGVG9ZblA0YkNsSjV2UVBldEphTkpUUDNWeEVWR1ZyK2dKTDhP?=
 =?utf-8?B?bVI1ZXhsNmkwVnlLNTVicHVsTzlLZUsycTFrRllmWjVoWDdtQnJjeWFyRFhR?=
 =?utf-8?B?STJZQkxGY3c1MDVvMVB3Tkl5d3lHWTJ5SWs3YnkwdkdmbkxIYkxKb3FRSUFR?=
 =?utf-8?B?Z1NlbnNQZkd4LzREejVBWG1ZYjN5MmFVSG5JemtDUy9tS29iSzBGWlU2eEli?=
 =?utf-8?B?K2dnN2E1NUxKeWtjbVliYkFBbm5FUEhFWm5kMVh5M2hxOXlZOEk2VVVlUm5p?=
 =?utf-8?B?RUZFS3ludDl1cWowMjhaYnhIb3JnQ0t4cjliWm9iZzRySzF3MWlBOGIyZDhv?=
 =?utf-8?B?UGtjdGlXMVVLd2xzYXlQekdadlhycnhTd241bE03NTdGWVJvS0FlTDdHQ05l?=
 =?utf-8?B?Q3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d5e0d8d-7fbe-4e12-1e08-08dc6d8e3211
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 05:34:27.2386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7AnI7sxrwX1JL8TJNxybQMzIK9S7XvlnGiQ8w7ee48U9P78baDEvG6zgefAnnPdfeUGZ6/PI4CPeggzlS8r4UmMZD9+wgr3CYby85b6Md4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714973863; x=1746509863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o3Hmws9U0rW39RVeIdpWBcIRxUwd5BQvxOezRJFX8uE=;
 b=UujzWfR/cqTQUBppK2YHrhEKnV6tMWF2/Snmg2NuYpqPxJ5NRCxX40Uz
 3FYD33NMBFSDmpTt6HiVkQ5RBdZXpZP8gTgfn8dP7QSOYAU32Du64tsyL
 MDNycODA5wTb47Nm9seE8Ioxtx9e+37HBX1HoL3ixbITw3PtUW8yu2FMG
 3XHG9qN2xasWJYRqyiFSEAYc7lv+qG3KNx1mrKib3hsa4XXnjlQEmKBsh
 FEHmqGRQBZA12X1KkeTsOADqsdyA5TKWAt5nPVfo0rQF45KiyTHYGjhRO
 i2IiyqongI4fLcr4FIJeR+wUEvKTLiw9jvC3hX+8VPO8LuPfsjQgitRPz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UujzWfR/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate
 control flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBc2Jqw7hy
biBTbG90aCBUw7hubmVzZW4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgMTYsIDIwMjQgODoxNCBQ
TQ0KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEVyaWMgRHVtYXpl
dA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT47IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVy
YnkubmV0PjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5p
IDxwYWJlbmlAcmVkaGF0LmNvbT47DQo+IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpY2U6
IGZsb3dlcjogdmFsaWRhdGUgY29udHJvbCBmbGFncw0KPiANCj4gVGhpcyBkcml2ZXIgY3VycmVu
dGx5IGRvZXNuJ3Qgc3VwcG9ydCBhbnkgY29udHJvbCBmbGFncy4NCj4gDQo+IFVzZSBmbG93X3J1
bGVfaGFzX2NvbnRyb2xfZmxhZ3MoKSB0byBjaGVjayBmb3IgY29udHJvbCBmbGFncywgc3VjaCBh
cyBjYW4gYmUNCj4gc2V0IHRocm91Z2ggYHRjIGZsb3dlciAuLi4gaXBfZmxhZ3MgZnJhZ2AuDQo+
IA0KPiBJbiBjYXNlIGFueSBjb250cm9sIGZsYWdzIGFyZSBtYXNrZWQsIGZsb3dfcnVsZV9oYXNf
Y29udHJvbF9mbGFncygpIHNldHMgYSBOTA0KPiBleHRlbmRlZCBlcnJvciBtZXNzYWdlLCBhbmQg
d2UgcmV0dXJuIC1FT1BOT1RTVVBQLg0KPiANCj4gT25seSBjb21waWxlLXRlc3RlZC4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVyYnkubmV0
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmMg
fCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQoNClRlc3Rl
ZC1ieTogU3VqYWkgQnV2YW5lc3dhcmFuIDxzdWphaS5idXZhbmVzd2FyYW5AaW50ZWwuY29tPg0K
