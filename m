Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AFDBC6040
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 18:25:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37DA160E74;
	Wed,  8 Oct 2025 16:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fu3uvlT8dZ5K; Wed,  8 Oct 2025 16:25:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADB5D60E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759940757;
	bh=Kc22PHu1onjfVlSHEhbVfwTXdAcRqk58xk1VklFcgeM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mGNCc+JFZ6/g/4wB/X6JNYhKCM/Y8ettsMiExLbW0BtNcozMbPQamS2YLszh3ryRN
	 9wcL3F80oS4L0HfjF8Rb6KLYlPrVxXGpm/O+0u0Ec3c+k97JR0zBNV99h0E05ujiGT
	 069FAPVUVWT4YgED7hmndMseNyvoxZP1tfvKA3dLUq9URGYrRkhlUR8ZPUQBpGxDWq
	 bZ9oaA4ZfMiRZX94W72dKXgRk1qeiBu/RE+vwAQl8vEos+O1ADcvUdBIiY1ezFpINl
	 VijIG2AdeywuC2Nfjla9x9hzfXiXj4vrFHaKkyCaiHjTAtU9vRRJSGNSLejR4TNNtb
	 KjAJo5goO+TTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADB5D60E6B;
	Wed,  8 Oct 2025 16:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D3CD119
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 16:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62A9140B61
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 16:25:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eE_KaLC4TRME for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 16:25:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 03EA540B5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03EA540B5F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03EA540B5F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 16:25:54 +0000 (UTC)
X-CSE-ConnectionGUID: kI/j1kSYRZewjp80b6AfGQ==
X-CSE-MsgGUID: I7OnhrlpT0mgZRk3nPIxnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72813816"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="72813816"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:25:54 -0700
X-CSE-ConnectionGUID: +P4EG04cQzq8LKRyWE7pRQ==
X-CSE-MsgGUID: rAa+aFdVTaSytQ99YKNOxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="179604105"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:25:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 09:25:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 09:25:51 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 09:25:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B8fze+eLQti4g0PR/54M2pSdBs8GiAWgas5b49ndjONALOmddPSI00c5aL3na8KbCEyKkPBKMKQJWveBq+NBVqBd+6A6WE9TFLikD+Nbr/w5LPcViWfloO2CJib0V+Ri/2dobjIZ0O5s1X3maKV6vNSPM4ntElFbDA973Utu2zH/NAJgoZDXxCGaNkkycfwcP8NoYpenIbKy9mleg7Jid5EiKlS7kEcWDmsM4dIwHH/rvVAnpLUJ6qU6F4RlflQMuASMcVIGgIUwzajvqx/J3BtC2I9WLP0zilZiEVLnt+EeR4hlpWQTE8as9K2Biwve7DGhvUrtbZwo5L7aWP9avg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kc22PHu1onjfVlSHEhbVfwTXdAcRqk58xk1VklFcgeM=;
 b=D/uLOeECyyiGKMeJHUkvUUzLwEe/42To64tQr/RrGXyHvgfi81zM4z1hrhDEQTuOlGczu6dtN74is1EmdBcvbke05WELCzBGW4YBQ/O1/D3A9zzk/22QrJ8ZNgl3viOcCDdgozaf0CSBSYa7nKI9Hn8AGgntzQy1koqQ59s5vwSl/1tZ7RtgyCpb9GlplssQk9D3Nx78C1xXLvMJFWU99YrSOSMi8Rm92KFwWmhBmeULw2v/b2XQWqzKtJ3eRifGhiWYgEfIRvqj9TN+8v7HCxUk9ktU4vjCEhZ5c2OrD16OzyFvuKUPW3sIoIRqjxblTF/3p2Bf/cHr453jnzRyRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by SA1PR11MB7111.namprd11.prod.outlook.com (2603:10b6:806:2b5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 16:25:48 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b%4]) with mapi id 15.20.9203.009; Wed, 8 Oct 2025
 16:25:48 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
Thread-Index: AQHcNxTCL3QbeGo2hk2nXEAIP+98ebS245QQgABRLYCAAT0NsA==
Date: Wed, 8 Oct 2025 16:25:47 +0000
Message-ID: <IA1PR11MB6194A3C171780D43B307D3D5DDE1A@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
 <eb18f157-843e-4168-8d66-7602611b61b3@intel.com>
 <IA1PR11MB6194AE9A51693D9AC3E3E534DDE0A@IA1PR11MB6194.namprd11.prod.outlook.com>
 <5b62fad1-d325-4169-a34a-4bab4dcf198a@intel.com>
In-Reply-To: <5b62fad1-d325-4169-a34a-4bab4dcf198a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|SA1PR11MB7111:EE_
x-ms-office365-filtering-correlation-id: 5970666e-dd91-4373-035e-08de068756cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Q252OWJlR1NiSTVhTkNrclY2c25neHhyaWRBVTdzRWNnU2JDVHlIWWs5dXNB?=
 =?utf-8?B?eHNudHFYNWtrcFZod3ZOZ05abUpuc3ZQOUMvSG5aVHJSdk1EbUVMejJCVG5J?=
 =?utf-8?B?V3RIa1J6ZlBVMWZEQUdxMW8rUzl6NGJ4TmpOUXpQMyt0V0Z3MEhSaG1Db3FP?=
 =?utf-8?B?cDczQkVOTUd0KzNwQkVTbDJZOUxjOVg0d0RmcERld052RUdYL3JkSndRanly?=
 =?utf-8?B?VlZZRE9mY0xSdFkzMWkrTWQ4SGJZdEI3U0hzZmJUZTJRa2dNclRGRE12WGt2?=
 =?utf-8?B?Q0s0Tm1GWW83WkpWbDRMRWZzUmhTM09rSnoxZ3RZZS9nSlpTTlBzQjREeUxy?=
 =?utf-8?B?ekduQTFtb3dSVjJINnVRTnlxdWVBUGFJTFZaUitEdVJ2QzFkbW42MDhMRHls?=
 =?utf-8?B?TmR1Qm1qUGJuRks4YVZQOWFQUGFQdE9qYVFPS0J0MVRLN2JIM05SQzlxbVpC?=
 =?utf-8?B?ZlZKSWptdE1OTisyckpSeFlFbU14MndlN1JPdkVUcGV4dCtlSzRWRHBrQTR3?=
 =?utf-8?B?VytRaXZzR29iVnFXaTNNRGZOWlAzYkxZb2Y5bG9yY1hoTm15WU1aaVhYQmtE?=
 =?utf-8?B?c2ZiQ2RiM0ZTaFBEMnQxMG1KdEl0VFhuZHVmeTFSekpZMFJBSmt5YVE5T0p0?=
 =?utf-8?B?Lzc1bGpYZkVnTnpDSm02cEplUlU1eGt6c2IySVp4NTJpbUFRMThRRkdSVk1r?=
 =?utf-8?B?aXgzSUROajBBb2tyOTJvS2tIaEpoWklDTCtKY24rQjU4SnlnZlJaeVJ0VHQ2?=
 =?utf-8?B?NTZkenlJTU5CcnRObjN3aC9VU0VaVFhaeThOakJaRERwVFBKeXVtYXJVSFpJ?=
 =?utf-8?B?cVV5bm9sZzh5dUtUYUJZNnExYUJYSTBiYjY2Nml0SjdyS1JxT01ERkFCNmM1?=
 =?utf-8?B?djJTLzdDNEd0USt1MHpsQTFwbFM4M3BhZHNBQ1o5d21UNTZ2aEEzb2FFOU1L?=
 =?utf-8?B?aTFDUWNmR2RuYUErS2JQQkEwUHA3bzZSNDZmOW4rTUZteUQrMTg3eGJJNmdl?=
 =?utf-8?B?YU03MWowRUNMdjV0QUxLcWhUUlJHOXdweXRKbDg2aTA5VzhTallQRGUwRVlr?=
 =?utf-8?B?YXZPK0s0WGptbCtzU0NEYlpsVHkydVVkVjNCWTBURHc4VnhjV2M5TkhlMmNo?=
 =?utf-8?B?ZjJ1Z2drc2oyNEVudWZQZTJRT1Q4WWExWHlTejF1NXBlZnZKMTVEWUM1N1Z5?=
 =?utf-8?B?NVgwb3NhU0tNOWJ0K0JOc2VEM2FIdjhTbnptcjRnVW1Odm5pbURFRXVGMzBq?=
 =?utf-8?B?d2o5cjVMQUFBN0h1SUNXV0lvcnVsZnNsV0R3UzhOM3VMTDVyMzFBbG9HbjFp?=
 =?utf-8?B?Yk9MbmVWQXIyZHVWd1NEb082U0RLRHlXMDhFRDd2bEw4UUhnZEkzSGVvTUhH?=
 =?utf-8?B?b05rZmpRa1EyZzZ3WEoxMWkwVllDSFhRa2xCUmFHWXpOUzV0bHFuY1FsWnB2?=
 =?utf-8?B?Z24yOUFXYjdqVkZldFc3WTFXNlhBQlVqRzhEdUZqeUtLZmNBOTFiR1NQZ0tP?=
 =?utf-8?B?ZWtKR3R1dmEyQ3plWnlobWRCckNEM3d2OHhRUkJLekEwMVRIMlhDMGNjTHZo?=
 =?utf-8?B?alU0NmFpeDU3WTdYNjRFdmppZEJKQ3JDSlkrVlllNG5oVEVEL21EcWhiaTVV?=
 =?utf-8?B?RlFBWEg0SnhyVStRd0J4T1JrMmNwdW10ell0N1NOTThRZ21aWEM2NEdIclE2?=
 =?utf-8?B?czlualU1S2xmQ2tEY1BpTm1ZOGFKWW9sbUpBTTVqK2VjczJBN3JPMTUwTVFZ?=
 =?utf-8?B?Y3NzbEhvNmd3dm9FZkF2MEdoc0pxc1daVE8raGt2SS80YXo2eUpSWFZzWHNT?=
 =?utf-8?B?Vm05cno1a3JJZ3VzdDFoQjFUTXNialBwRDJNQVRIY1VwUmQ3U1cxaEN1aEZD?=
 =?utf-8?B?aXZEZ2srb2ZrWUZUaC9CbnFoVW1DM0hWd29tS0ozRGFLY1dLY0JpZkFKSmNq?=
 =?utf-8?B?VWxWSWhEb29OL1FGZmtncUxNTEtHbTlpcEU0VG1rTlVlVUU1czB3dUFGWGho?=
 =?utf-8?B?MzUwcnFpVHltV0pFczBSS2ZKbEJHNVNHUk1ISjF4aWwranhidjRYQUxqRlZ4?=
 =?utf-8?Q?BcHlKt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ME9zeXJveldiSk5KSG5EOEQyMi85SC9UMlhBRjV1UXdJcDdjYlVSUVF3OHNu?=
 =?utf-8?B?YXYzcTRZYlNQSlZYOStQRWFsQVpJMGUxSllWOFphMmxmc2xFaVRMQzhzUkJn?=
 =?utf-8?B?WXgrZTlKenNjTWFsM293eGlOODVoTWJaa3J1MzJNZGpGeE95R3pmUG5OTitz?=
 =?utf-8?B?YWJpZCt4VHNWM1AvZllTUWNLR3plOE1SL0RhZWlxb0RiT2dvWUFCcHB4NTJ5?=
 =?utf-8?B?RGJwVWRoK1lkUWU4Qkp5NDZjalFPa21Neng2KzlxTDZpMjFaN1FnbHA5ZXlU?=
 =?utf-8?B?ZmRwRDF2Ly92MTRicXdIeW9qSEJoejV5NnM0NHJDTUtmcndPNXY4M0JHelV5?=
 =?utf-8?B?ZGtUNG16dDJ4UEVOUm9tZllhY0ljZGFyWUg3a3QxTU0vamlRa2xHMXFNUmNQ?=
 =?utf-8?B?ZWpVaEdqUW1aRHZmYVdWZmtsUXhIYnFaYmhJbW9jdCtEaWt5S0w5U2lJOUwy?=
 =?utf-8?B?cDdFYUhKZi9VY2x3OFFjRCt5OHh4N1o1U3QwOXR6eEhoaGRYNHpsRndDbGpI?=
 =?utf-8?B?K1JQa29CV0FCcXM4SGdxVUZUTTRoU21oSGFickZnK2g3OEYrTW9ZQVZUR1Nt?=
 =?utf-8?B?QjV1M1M2cjhIRnN2WitqaHk3QTd3SmQwaGU2WmhNaFVYVFM3ZUVNS1lQL25X?=
 =?utf-8?B?SXhYZlV4Q0tGeDA1NG1QeU5Bbmd4TDdwdkhwQlFOUkMwd3ZFNk1WOW1odHpl?=
 =?utf-8?B?bzREeGRGRUdhblI4Z2hYa3FiNHRJYWtoV3dRQUpjOWQxTTRHNnloank2bXVC?=
 =?utf-8?B?dWd5cnVLVXZzQ0pDK0hBV2lreVBWaTRGVGZxeUNkbVA2QWdPbDZqM1plTmZV?=
 =?utf-8?B?QjZFSDhFWXBQWFBzQzRUMkZsT0xoY0pTOUV4SllxcG0rNGtia3daNVhFaGp4?=
 =?utf-8?B?K0pyQ002aUJaR1ZTRUdqUGxiNXlINFZFQ1JJYmhCRDBqVDBNaEwvc0J5bHBs?=
 =?utf-8?B?U2o1MnR4S0ZuWHA3dkNCU3R0bzVXcERwV01reEgvTjU3Rk5RaTl0czF5TG9N?=
 =?utf-8?B?ZzAvNElqYUVhY05ZSE9XbytwYVNUQ2FQTXRIb0Z0KzcxVjcwWTdPS3RxRFZs?=
 =?utf-8?B?dUlXYTM0YVU2c1cxNllZWVkvQUEvU1RJMGVucU4vdHRSRE16RVJHQ3lZMk0z?=
 =?utf-8?B?QTVoSjFvem1FS1NSRnFBUVdNRC91amR4VXovRnZuWnpJcWhWNWxSZjRsNm4r?=
 =?utf-8?B?U0NiQ0plSUdCTnFsYkk5ci9wQWJsV0ZGTVlxUDVWQ1pZTUtobnNGblBYM2Zk?=
 =?utf-8?B?WHp6K1dPWHRGcXhveVVYbiticWtJRHgrRXRtU2Z0ajF0TzgwY0JyN3BOU3hj?=
 =?utf-8?B?d3JQYUFuU2NrbTFMYmE4TWY3KzI3bklPUXpOei80WWQreVl1ZGxOUmFUMng0?=
 =?utf-8?B?SkFna2ZhZm9SSXhFcDIwZ3JyOUhrRmtFMmFlQ1BkcHVSeWd4bStwS3FFenZt?=
 =?utf-8?B?MXlrdVlzRnBJN1BUMEVWL3VXWXV0aFVxakQrTDRKTWFQNnFGK0ZHQXlVYnkw?=
 =?utf-8?B?d1JTQzdzcS9VRHloaG5EbUsvRmFuSmtlUG52VStxMkZnQ3RXTVZia05tTnpx?=
 =?utf-8?B?d0U2NEs1MHFkZ245TGQ2dks2MTNTN3QyQlF3bXFXQy9GQy9EMjR4c2ZwdkdM?=
 =?utf-8?B?bUJNdG1aM3dUVHZ4L2tFRWtVSVViVmR6L01Rek9JVU1hKzU1eG9mbXhmMFVB?=
 =?utf-8?B?NEk2dzFjbHgvZGZnemorOE56QUhPSzBTRmVUYTRMTlBuNnV4WjdKT2ZWd3Jh?=
 =?utf-8?B?V2VtdlVYZlJDcXpWUHE4Mm56cHJrV0Roay9Wc0lGL1pLeitBVkdmQkdEYkZj?=
 =?utf-8?B?S2xLeUdjcUJvc3NSOS9xR0ZleEJtUS9pMXNtVTZBcy9Relp1KzgvaU1oTlox?=
 =?utf-8?B?c2pPb3JDbUNXSTB4YzZjQTh6dnZ1UCt2VU5FZFpOSGkzYlhoZXloOUJxRkp5?=
 =?utf-8?B?UW5qRTBybnNvUEtNcVhjdXkrWkpRd2x4dmxQL1pkL0xadGp3eGdCbnBEM21r?=
 =?utf-8?B?d0oyeWNYVnFSeWpDNUE1MGdwSmVTTmU1YzR0UThxd2w3RE9IeHdjMTY2amFS?=
 =?utf-8?B?VnM1c0xnYjYwcHk0QS80ZnVpREUyTjBkM05IcFF2dmV1bGcybSs2U1o4UkNG?=
 =?utf-8?Q?KyBdnuZY6Cywx157PUx1n1wgR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5970666e-dd91-4373-035e-08de068756cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 16:25:47.9905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W/7mhkWYbTjMn+X6Vy9aUzAYY4myrF2Yo5YqzrB0IJAsPiRo/+w377JBI1iG3K9+7gdzEhdr87Abi6RjsRAuiicQw+3INKpFOU/VNohgRQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7111
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759940755; x=1791476755;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Kc22PHu1onjfVlSHEhbVfwTXdAcRqk58xk1VklFcgeM=;
 b=C7cUPVdjgpSMmlgQWFEv4vhH6JN5VNouY9QAIMrB6w+7jKzFsU3RQS8o
 ZAKty4/H5csOG/2q2E2K1jfeb6XV73AHakiBwEO1dvaSLrABjjFazVsmn
 /dc4WfvfXdeo13tbcMeIvOYe2f4chYBi6h7MUseAWeKwdLD3OjhAuRP7Z
 tv+tOA/JH7dAiWdvRvGjfvDAG7QKoaQ45jYjTww+1fZEmrWYnEqs4YWDv
 tSdPrs2LjAb91NSnj3Qn5iBJg9QfdL+5tkpQ/XMiJoF4pTz9A92pMIzg+
 zRCHNYts1kYQjk9H88D2Tdx7FgnDyRZqUUEXlTIo5tuIeVosOW2TlUHXQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C7cUPVdj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
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

PiA+PiBBbmQgaGVyZSwgeW91IGNvcHkgdGhlIGJyb2FkY2FzdCBpbnRvIGl0LCBhbmQgdGhlbiBj
b3B5IHRoYXQgaW50byB0aGUNCj4gPj4gc19ydWxlX2hkcl9kYXRhLi4uDQo+ID4+DQo+ID4+IEJ1
dCB3aHkgbm90IGp1c3QgY29weSBkaXJlY3RseSBpbnRvIHRoZSBzX3J1bGUtPmhkcl9kYXRhIGlu
c3RlYWQgb2YNCj4gPj4gY29weWluZyB0d2ljZT8gTGl0ZXJhbGx5IG5vdGhpbmcgZWxzZSBpbnRl
cmFjdHMgd2l0aCBtYWNfdHJhaW5fcGt0DQo+ID4+IGludHJvZHVjZWQgaW4gdGhpcyBwYXRjaCwg
c28gd2UgbmVlZGxlc3NseSBjb3B5LCBhbmQgcmVzdWx0IGluIHVzaW5nIGENCj4gPj4gdmFsdWUg
dGhhdCBjb3VsZCBiZSBtb2RpZmllZCBieSBhbm90aGVyIHRocmVhZCBwb3NzaWJseSBldmVuIG9u
IGFub3RoZXINCj4gPj4gUEYgc2luY2UgaXRzIGEgZ2xvYmFsIHZhcmlhYmxlLi4uDQo+ID4+DQo+
ID4+IFBsZWFzZSBmaXggdGhpcy4NCj4gPg0KPiA+DQo+ID4gWWVhaCAtIEkgdGhpbmsgeW91IGFy
ZSByaWdodC4gIEkgb3JpZ2luYWxseSB3cm90ZSB0aGlzIGZvbGxvd2luZyB0aGUgcGF0dGVybg0K
PiBhbHJlYWR5DQo+ID4gUHJlc2VudCBpbiB0aGUgY29kZSwgYnV0IHdpdGggdGhpcyBwYWNrZXQg
c3RhcnRpbmcgd2l0aCBhbGwgemVyb3MgdGhlcmUgaXMgbm8NCj4gbmVlZCBmb3INCj4gPiBJdCB0
byBiZSBhIGNvbnN0Lg0KPiA+DQo+ID4gV2lsbCByZXdyaXRlIHRoaXMgdXNpbmcgYSBsb2NhbCB2
YXJpYWJsZS4NCj4gPg0KPiA+IERhdmVFDQo+IA0KPiBJIHN0aWxsIGRvbid0IHVuZGVyc3RhbmQg
d2h5IHlvdSBjYW4ndCBqdXN0IGRvIHRoaXM6DQo+IA0KPiBldGhlcl9hZGRyX2NvcHkoc19ydWxl
LT5oZHJfZGF0YSwgYnJvYWRjYXN0KQ0KPiANCj4gYW5kDQo+IA0KPiBldGhlcl9hZGRyX2NvcHko
c19ydWxlLT5oZHJfZGF0YSwgbGFnLT51cHBlcl9uZXRkZXYtPmRldl9hZGRyKQ0KPiANCj4gd2l0
aG91dCB0aGUgZXh0cmEgdGVtcG9yYXJ5IGJ1ZmZlcj8NCj4gDQo+IFRoZSBtZW1jcHkgaXMgdXNp
bmcgSUNFX1RSQUlOX1BLVF9MRU4uLiBpcyB0aGF0IG5vdCB0aGUgc2FtZSBzaXplIGFzIHRoZQ0K
PiBkZXZfYWRkcj8gSXMgaXQgYmVjYXVzZSBJQ0VfVFJBSU5fUEtUX0xFTiBpcyAxNiBieXRlcywg
YW5kIHlvdSdyZQ0KPiBjb3B5aW5nIGEgYnVuY2ggb2YgemVyb3Mgb3ZlciBhcyB3ZWxsPw0KPiAN
Cj4gQnV0IHdoeSBub3QganVzdCBtZW1zZXQgYW5kIHRoZW4gY29weSB0aGUgYWRkcmVzcyBpbj8N
Cj4gDQo+IG1lbXNldChzX3J1bGUtPmhkcl9kYXRhLCAwLCBzaXplb2Yoc19ydWxlLT5oZHJfZGF0
YSkpOw0KPiBldGhlcl9hZGRyX2NvcHkoc19ydWxlLT5oZHJfZGF0YSwgbGFnLT51cHBlcl9uZXRk
ZXYtPmRldl9hZGRyKTsNCj4gDQo+IFRoYW5rcywNCj4gSmFrZQ0KDQoNCm1lbXNldCBhbmQgZXRo
ZXJfYWRkcl9jb3B5IChvciBldGhfYnJvYWRjYXN0X2FkZHIpIGlzIGFjdHVhbGx5IHdoYXQgSSBl
bmRlZCB1cCBkb2luZyDwn5iKDQoNCkRhdmVFDQo=
