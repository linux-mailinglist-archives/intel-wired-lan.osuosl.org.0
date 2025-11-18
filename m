Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7374BC6B665
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 20:20:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABE18845E0;
	Tue, 18 Nov 2025 19:20:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lGADDAppXoVW; Tue, 18 Nov 2025 19:20:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93AB68460B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763493640;
	bh=9np9Bw1svUl4CO0Sq63J65VbdO9Y6R2Xo/XjTeLLdWk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vlIa/EbsmCQCYWyi5wVi82Bw8bORYUSjex3PTiJbvYE1tLtXKCBk+uX3uDhq8F5Da
	 kYPZtrZejeBD/9pHvxQjlKA2y4hQUemlfKmj/OPd3TsFC0pY1lp1h7h8djnqjbF6Pf
	 oSHL7nF6SXWBa+PfaP2ASovQeem4L5t0JUTtL0rCkx+QohBBAEXUQJiQAq5YoEZrbW
	 co5VYYOczUHpAt4Z0RoqpMzhENFY3b/7Srzme7c2GBCtaeQcCSvkuElzHwagh5w8Jm
	 MbyCHA8JniJu9krrm28cG1ocOu4QMp9L+yGOI2In6OD7cWWzQnI1q/ZDQheVDqPnlG
	 Sy0TNvhCHg/sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93AB68460B;
	Tue, 18 Nov 2025 19:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D06A158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 19:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0EFAE845E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 19:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VWUDSXRV-E-u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 19:20:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8652A845E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8652A845E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8652A845E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 19:20:37 +0000 (UTC)
X-CSE-ConnectionGUID: C6ZWQnAQQTmg99nkEgA50g==
X-CSE-MsgGUID: Bfpt8farQQeANgiOiWXs6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88180524"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="88180524"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 11:20:37 -0800
X-CSE-ConnectionGUID: mDAx6riBSYOnm8ZqRH9zCQ==
X-CSE-MsgGUID: eg5KA7bHTFe6tK+J7UYAQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190645105"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 11:20:36 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 11:20:36 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 11:20:36 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 11:20:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qhInACz6m+1FCnmQAUZ1j4a6NOG4b5am6cKnZpzWbuItV9T/UHe8F98N2xBjPDqYJfcsCvohJy0EX8uEp8ze3XAxOjAWJhq6cNYic+C8g5udKgCj9qLr1GCnahYRbPMW9vzkE3Zfl/GH/YcpBrnmoiRYkJ+Ywo5mJhZy+QZ347Rez9NochbYxKodLuBXf6HfsJB14gfDhvPXh5l3Q9D49mqU/QLMuZW2Gs7DHhZxn/R1EZGq5iQIsIliVaogu2l4NG3KT8oNIZb4gTxk9gDO8ZlqSZaxwKwY3y84ZyoRggmTuaVM5R2NzZwjqWLHm/qH1IaWpjNklmbXx8ZIzNLpqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9np9Bw1svUl4CO0Sq63J65VbdO9Y6R2Xo/XjTeLLdWk=;
 b=d5fPpvPXid/4tmtG5UxMnqL4/nlhlFzOIxyOQxeMxHxxMIndxwyXakjFP9cpqYxQfVWCux5+uGgTrLdVxfPHUMz3BGKSQje34UZqXIgCGBy4s9/gtGvxRNr3EaE9h0uhmsLmKZdOWXRmv5dWwa73xWOTi/Nk6r311H1UOoU1uVcAs9lb51AwvYjqNS7R2FCm6x46mdI41EonlPAQzuFEcb0jzj1tU139vTsYOxT2E2peGe7/bX5833+lYvtRUCqUq/lcH/Vxmm5LHq1GHVigxLsx1mC1IDQqiLnBA+Lm/aQoGcy9eIbIokbRrlOxTnB41AfRe6c6rTZI7aCVwWorEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9)
 by DS0PR11MB7852.namprd11.prod.outlook.com (2603:10b6:8:fc::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 18 Nov
 2025 19:20:33 +0000
Received: from IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93]) by IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93%5]) with mapi id 15.20.9320.018; Tue, 18 Nov 2025
 19:20:31 +0000
From: "Joshi, Sreedevi" <sreedevi.joshi@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: Fix RSS LUT NULL
 pointer crash on early ethtool operations
Thread-Index: AQHcWEMH9qQ04PecRk6W2jzigFOGsLT4B4qAgADHQeA=
Date: Tue, 18 Nov 2025 19:20:31 +0000
Message-ID: <IA1PR11MB6289306D2239682C7E5F50B589D6A@IA1PR11MB6289.namprd11.prod.outlook.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
 <20251118042228.381667-2-sreedevi.joshi@intel.com>
 <a3b8dc4c-caa3-4950-8834-29e8adc57854@molgen.mpg.de>
In-Reply-To: <a3b8dc4c-caa3-4950-8834-29e8adc57854@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6289:EE_|DS0PR11MB7852:EE_
x-ms-office365-filtering-correlation-id: 7ec68754-7ee6-48c0-891d-08de26d78a61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?SDZEQU1QaW5tTXFFbU4rc0wrbzlPSDJzZVBoQU5sRXpXVVNsb2RoZHNON3ZI?=
 =?utf-8?B?dlVna2ZJNk5BYVBqOUpHcjdlcTgyTUt4NTB0cG0rdk13cW9ZZXAyZlllcGpk?=
 =?utf-8?B?MmxmRmpFUEVYZEFiRkdjZWRuVy9venJFeGZ0S1AvYm5pYmdneW5CTW1WQXgx?=
 =?utf-8?B?aVRXbUo5MHdzaEM4QzFHV3pjSnI4aCtBOUEvQVF0K0pYZTJzczRaeVMyakFW?=
 =?utf-8?B?cVlHMnF3eEVQTnVwSXZDNnE0ZXcvN3ErV0lXR2hHeFMrZ1Vjbjc1TDVoK1Z3?=
 =?utf-8?B?M3U4bGdCeXU4NzVQUVFNQkQ0SnZ5azlYOHR4V041V3hFZ2gyKzJ4L0JPM051?=
 =?utf-8?B?a2FNcW5yVWVJS2w2cmMwSG5SWjdTT0dhTUQ0aWkyMmY5SUg2ZGxzcTFpcUFG?=
 =?utf-8?B?RlVJVldHUjVCaDlDZmtuandjTGtaRWJudXRNbE1veU1TL29PMjNQa0huc2F0?=
 =?utf-8?B?aEIyam1NV0RmZ01rR1NjV0FsVlZ3VlY4ZERjMVJtaXFPY2lmQ2VEY2hudzEy?=
 =?utf-8?B?bmtRSTM1TjRFbVRsUTN2SkVwai9lMDZ1VitONllWb29WVGhUUURJeDhZdzAy?=
 =?utf-8?B?cFVQWHduQzcwWnJOL2hZTFJEY21nMzRzWEVRNUxlMUUwdmp1L29qS2dzWUd0?=
 =?utf-8?B?NlV4TDB4WVRxS3pST2VWU2JuOEVaSzRiOFNHQ1V0azMxbG5qeEZscnBTVCtN?=
 =?utf-8?B?cGRUMVFDbkF2dXVDaXNIZFJPNGo4ZTNnRFQxYUFZeThqZExuaFBCRUl0TDZn?=
 =?utf-8?B?eGs5TzYyZjNoT1lvZVpldHdIS1RQMC92Q3F4S0VaelFJcnVlVHpIMWdPaE1z?=
 =?utf-8?B?dnJ6SmpseVVjZDM5cTk4ZElWL29VRjFiUjNWaFZJQ1MzR0twcFI2dyszbXR6?=
 =?utf-8?B?dTdwSk8zelRFRnJ1ZlBPd0pUZXhSSnM0VzV4V2syODdQQTRlbktZcjlaaEtU?=
 =?utf-8?B?YlZHT09GOVIrNDJOdUlmV0wwM3BoYndoV3F6TDZvekYvTnA5bHVHMERwY2R4?=
 =?utf-8?B?Z25VcGRKdXk1ZUxGb0VJUWRJVktkRFErV1hZZHJ6ZnFRZXRVWU82OW9BOTFn?=
 =?utf-8?B?YnBhc2kvbElNL3NCYStHeXdlWUlDb1ZuLzFZaE12UHcrbTBCVVJPUkRIaEJj?=
 =?utf-8?B?L3huV3hLMVVVSmwrOEhBSGJFUE5jb3JDMVc1S3IxdTBBRFdXcXErYVUrZ3hq?=
 =?utf-8?B?WWhGbzNtTGZXUVJSVEFyRFBRQ0RSUmd0Vkh6QmJwK2xDc0xjcEl1WTVKeEZt?=
 =?utf-8?B?ZFZJTnNYODNtUTBoMUxkbThiU2hvVmZ2c3p1SVFlUVh0SEszblcxL1VKSzRl?=
 =?utf-8?B?YjNraGdBSm5LSXhkRkdsUVVmRGozc2NUQTNpK2theElKT3Q1UWtobHhtS0VS?=
 =?utf-8?B?MURLVXZvM3RtdmdzMkdNV0RLQ2dGMW4rWldUN0IreGl4VDZhZ1Q2cVRtOENJ?=
 =?utf-8?B?SVFsdEtTampqd2pSQXM1NEhJWGhGb2thRlR4b0pEeTZUaHBkS0hCaW9xbTBj?=
 =?utf-8?B?MG10TW40clNzc2h2aDBkSWlxZ3pnYjlBTHpjZ2F1QTZvSEtZWmlwQlRvbnpk?=
 =?utf-8?B?d3dsaUJOR2VkUU1nWk9NY3ExWUF3c1hvSEVMQTgvWHplN3dMUDRnajhrODYz?=
 =?utf-8?B?NUlnaVJ6UU90Rlk2cFpkdGUyMWtDNFViSm5ORFV5dWVUTWdyeUY3cXg3OHZC?=
 =?utf-8?B?R1FQdFNuNENkUXdOMlI5SnBWMTViVjBmWUMzck1FME43aDhMQXhYQk9BU1dv?=
 =?utf-8?B?V2FlQUlsOUk1ODlZTmJNRnNmcWtKQmJoU0RSV3NlOWQ0NWxpMEtlM0lBMmNs?=
 =?utf-8?B?K1FObklrdXNZSjNIa0lMLzJFdkVaekpsMExkcVA3U29YMGhlNkJKQ3hFQXVl?=
 =?utf-8?B?UGNMeUdKTTNUT0FsZWNHL2lSUGV1OGpsKzZXbHJjcEFPcUFvbWxTQ0gxTVdy?=
 =?utf-8?B?blloR1VTNVdPQ2s3V01heUMwTWM0QWhET25EWFBkdE13RjRjazZtTk9GRHBz?=
 =?utf-8?B?N0E3SlNMQWxLODNYU3BhMENUZG9uVEpOblA2U1dNVE9VSTV5VTgrK1hGK2Qv?=
 =?utf-8?Q?Ca0CkI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6289.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVRzdzVKWGlSQ2g3Q24raEFFUHpEOVplTEhaUUhOeEpRdGUwcm9sOUI5dEZY?=
 =?utf-8?B?WkF6ckFiaE9zTDhuTzFaUFpMTFlEL3VwNjJQOVFSSTllRGMvUUtLNDVrYTBN?=
 =?utf-8?B?VmtRc0hVZkV4cDBCZmJ4OGsyaS9seFQreVluVys4Y092Z0dmVzAyYnJGZCtI?=
 =?utf-8?B?NUx4cTVMTFFpZ2s2aDFERnhzVGl0bVYvdDFoa3BsUjNqQUZLWE13R3ZRMkFm?=
 =?utf-8?B?NlgxbCtDd3ZBaGhhRDZFZDFGODdDUjNrdTYwZmZ2RTR6dDVEWVNpbS81VUhl?=
 =?utf-8?B?bEJLVVRBWnVhTk5VMUNmUkVKM1pLZjVvZjNZK3pqSkl5MmZEN25OZWZNVjBD?=
 =?utf-8?B?bWc4UTZhL0ZMNWNKaS9sVHBwOHZEZTVQSlV4SHZJTGlUWVk2R01ESnV3aGFJ?=
 =?utf-8?B?cU8xTzUxTWw4ZjFvd25iaWxqdlMzRUR4NGhmTVh2bFRPTFE4dUo0U3VwMCtU?=
 =?utf-8?B?K2ROaFZUL3ZLYnVRbi8rUlhscUhrWUlqZENRbTlEM1g3SWU0V0NGalZsL2VD?=
 =?utf-8?B?aFZuM29RbDZxbmtzZ25SdDBOL3Q2RjVzMUxtSHJIbjJoazlmK284V2JkeENG?=
 =?utf-8?B?OUxia0RMbmZDSXBTd3oxN0JMSERvQmRoTGc0Y3Q5azRrQUQrQnNWcUN6RFNt?=
 =?utf-8?B?V0VNZHJJekFhbHhVUlkvUVFycjJubUEyS0UyckQwRWxqbHNzTkhuS2hQOUNN?=
 =?utf-8?B?WFduQTZBdDMwWitwa1F6eVJNZ1U5Q21EN0RtK0M3MFEwR3J2QVlyL0ZTbStn?=
 =?utf-8?B?NWRMMXhHa3k2cWJxYW40dFpuU2pJdGRNdEUzKzR1NzVjdGFSWlVTeml0bUFC?=
 =?utf-8?B?TW1tUnJITnZNVFRHQTExaHRCbzhQR2kvOGd6anJTL241SXZDTnhSdGpNU2Fy?=
 =?utf-8?B?SmtKYTUyQ0NNME1jS2ZITHdFSWYzWWJTS09xZURZaldxcVMrcEI5MWl6cnNp?=
 =?utf-8?B?UjA1dGR5VDRXMCtWdUxSNXdwTEsyY1RqY2doWi94cFNDRjFBOWRPQTNuYkRV?=
 =?utf-8?B?RFBYZUl3OHM4YzdqR1Rab0ZKZmFBZ3R6cDliVnhva3h3WUJqQzRjVlRSb2dz?=
 =?utf-8?B?VGRCUnhvOXNmWjBJNFgrcDFwajNMYS9Yd2ZRd0FWdElhYTBIWjB0ZUY5bmxr?=
 =?utf-8?B?ZERkNXJWWURxYzJBZytESUpjRThjQUYrSlJ3cjB1TURIeFJYUFFIdkRCK2FP?=
 =?utf-8?B?T2l5NlR2WlFCS3B5Vk8vbVdGdTVvY0hRUENzQk50YUxoSFpmWGJUTVA5TzhC?=
 =?utf-8?B?eDNoTXlRcVJ0bXJVT1B1M1A5SituOXdORk5seTNNSitFOUNiOXhwNzJzVmxT?=
 =?utf-8?B?QUhQY1lPV2kwNjZiQmNuQ2dQRFdCVVBkZm1DSmVZbXRkODVIelFRc3F0a2xC?=
 =?utf-8?B?MG9JWEJCUzY1K2VXZWRjcm5FYXlISDE2TUZhUlRoeUNWQks3eElMWVpXWWwv?=
 =?utf-8?B?b0svU0RKNGhTYVhrb293WkJ4MEtpS3FxNnhvaGkvMHVBZ1lrYmdpbndxMWJI?=
 =?utf-8?B?YU82aStkSGFZOGdCNVJJOEtVMklvZkxYODUyS05IN3YzSXVVTU4xdTFXUElJ?=
 =?utf-8?B?aG9RQWc0K1U4VVZrYmFoSFl1cjd1WDZVQ0phYXkvcXRBSVdmY2RJU1dCTWdO?=
 =?utf-8?B?bHZGNnppemU1M1k2dmkzUGdGaXRDTFlkbTJGM2JCS2tEL0FZUUtUSmJ2Y3lW?=
 =?utf-8?B?a2R3bmhTYUd4bEl6Y3ljSU41bUwveGxPU2FRSU03dkFnV1JwSDhLUjR6M0JE?=
 =?utf-8?B?M3V4TmpXbjNsUTFtNmdqN2c2cUUrRElaeGg0UmlnVXZ2eGFEZktVWWF6cVlZ?=
 =?utf-8?B?ckhxSGhwcHo0WjJSUCtaR0V2eHc0aElmNjZkVmJING93d2VZdUxiUUsyenQ4?=
 =?utf-8?B?V2xMSGhoSVRVcFBsdUV6YmdsTU1adFhzZ3VNSnVIM2tJZlEwbnI3QTJqR1A1?=
 =?utf-8?B?cERad0ZQSFlwQTZHLy9tNmNRQ1E2WmxhZjZKZW82V2k5eVJNMTBiejZuQzRy?=
 =?utf-8?B?QTBvdDRQWThSSjVYNXI3K2ovQUtwUHRMRFZVV3oyRm4rNWIvQ0VPWFZLL2Vq?=
 =?utf-8?B?ajJVVzh6TkJ0OWdkVmxyd1p3ZmRGTzg0TXdDbTlGdHFUdVFDMXJ6bzB4NTRm?=
 =?utf-8?Q?r5hKntUZEhsyLV8CLJ0jkIVdu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6289.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ec68754-7ee6-48c0-891d-08de26d78a61
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 19:20:31.4393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: shZacAI84JmHaa5qQYXRNXmUU9/zbYBt/nPWGI9/BveddpU+a0VlleFOfhZ9p0sxZDKGgKdqZjaweFnzNVZ1VXnCguLCiwjEutiH/1NkBK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7852
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763493638; x=1795029638;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9np9Bw1svUl4CO0Sq63J65VbdO9Y6R2Xo/XjTeLLdWk=;
 b=AN7PXcPKmqKq7R7h3CFu4DglKm2FNTvyjOJVxnws/2Rw7ecupGnEZAG+
 JM2QiPj0jLfiiUV6ocsl0peIczx7GrCl1T1gx72YtrhXwgIBBrilnN6s2
 YR00M3y0iFVEKhWPcyav97mwNoMU9cJEfNubIzI2IA6buqhjlz2KT5H7l
 ts5HT1kQ+8a5SjE5HzvZXHQ8bbr6yDFYYYfK1DWgkcPNXUkOXO5t3fekb
 wTHtzZWnfkZVImqsIlr3seSDyUiPucGAs+dSWWJN+buLGD63WOuQka0j9
 iHKDfjZHE4vso53GYsJLvFwvNJMX2ETTqJdDLmfCouh8TPGGIu+HsHXXD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AN7PXcPK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: Fix RSS LUT NULL
 pointer crash on early ethtool operations
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
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAxOCwgMjAyNSAyOjIy
IEFNDQo+IFRvOiBKb3NoaSwgU3JlZWRldmkgPHNyZWVkZXZpLmpvc2hpQGludGVsLmNvbT4NCj4g
Q2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBTYW11ZHJhbGEsIFNyaWRoYXIgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT47IFRh
bnRpbG92LCBFbWlsIFMNCj4gPGVtaWwucy50YW50aWxvdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCAxLzNdIGlkcGY6IEZpeCBSU1Mg
TFVUIE5VTEwgcG9pbnRlciBjcmFzaCBvbiBlYXJseSBldGh0b29sIG9wZXJhdGlvbnMNCj4gDQo+
IERlYXIgU3JlZWRldmksDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLg0KPiAN
Cj4gQW0gMTguMTEuMjUgdW0gMDU6MjIgc2NocmllYiBTcmVlZGV2aSBKb3NoaToNCj4gPiBUaGUg
UlNTIExVVCBpcyBub3QgaW5pdGlhbGl6ZWQgdW50aWwgdGhlIGludGVyZmFjZSBjb21lcyB1cCwg
Y2F1c2luZw0KPiA+IHRoZSBmb2xsb3dpbmcgTlVMTCBwb2ludGVyIGNyYXNoIHdoZW4gZXRodG9v
bCBvcGVyYXRpb25zIGxpa2UgcnhoYXNoIG9uL29mZg0KPiA+IGFyZSBwZXJmb3JtZWQgYmVmb3Jl
IHRoZSBpbnRlcmZhY2UgaXMgYnJvdWdodCB1cCBmb3IgdGhlIGZpcnN0IHRpbWUuDQo+ID4NCj4g
PiBNb3ZlIFJTUyBMVVQgaW5pdGlhbGl6YXRpb24gZnJvbSBuZG9fb3BlbiB0byB2cG9ydCBjcmVh
dGlvbiB0byBlbnN1cmUgTFVUDQo+ID4gaXMgYWx3YXlzIGF2YWlsYWJsZS4gVGhpcyBlbmFibGVz
IFJTUyBjb25maWd1cmF0aW9uIHZpYSBldGh0b29sIGJlZm9yZQ0KPiA+IGJyaW5naW5nIHRoZSBp
bnRlcmZhY2UgdXAuIFNpbXBsaWZ5IExVVCBtYW5hZ2VtZW50IGJ5IG1haW50YWluaW5nIGFsbA0K
PiA+IGNoYW5nZXMgaW4gdGhlIGRyaXZlcidzIHNvZnQgY29weSBhbmQgcHJvZ3JhbW1pbmcgemVy
b3MgdG8gdGhlIGluZGlyZWN0aW9uDQo+ID4gdGFibGUgd2hlbiByeGhhc2ggaXMgZGlzYWJsZWQu
IERlZmVyIEhXIHByb2dyYW1taW5nIHVudGlsIHRoZSBpbnRlcmZhY2UNCj4gPiBjb21lcyB1cCBp
ZiBpdCBpcyBkb3duIGR1cmluZyByeGhhc2ggYW5kIExVVCBjb25maWd1cmF0aW9uIGNoYW5nZXMu
DQo+ID4NCj4gPiBbODk0MDguMzcxODc1XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZl
cmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMDANCj4gPiBbODk0MDguMzcxOTA4XSAjUEY6
IHN1cGVydmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2VybmVsIG1vZGUNCj4gPiBbODk0MDguMzcxOTI0
XSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAtIG5vdC1wcmVzZW50IHBhZ2UNCj4gPiBbODk0MDgu
MzcxOTQwXSBQR0QgMCBQNEQgMA0KPiA+IFs4OTQwOC4zNzE5NTNdIE9vcHM6IE9vcHM6IDAwMDAg
WyMxXSBTTVAgTk9QVEkNCj4gPiA8c25pcD4NCj4gPiBbODk0MDguMzcyMDUyXSBSSVA6IDAwMTA6
bWVtY3B5X29yaWcrMHgxNi8weDEzMA0KPiA+IFs4OTQwOC4zNzIzMTBdIENhbGwgVHJhY2U6DQo+
ID4gWzg5NDA4LjM3MjMxN10gIDxUQVNLPg0KPiA+IFs4OTQwOC4zNzIzMjZdICA/IGlkcGZfc2V0
X2ZlYXR1cmVzKzB4ZmMvMHgxODAgW2lkcGZdDQo+ID4gWzg5NDA4LjM3MjM2M10gIF9fbmV0ZGV2
X3VwZGF0ZV9mZWF0dXJlcysweDI5NS8weGRlMA0KPiA+IFs4OTQwOC4zNzIzODRdICBldGhubF9z
ZXRfZmVhdHVyZXMrMHgxNWUvMHg0NjANCj4gPiBbODk0MDguMzcyNDA2XSAgZ2VubF9mYW1pbHlf
cmN2X21zZ19kb2l0KzB4MTFmLzB4MTgwDQo+ID4gWzg5NDA4LjM3MjQyOV0gIGdlbmxfcmN2X21z
ZysweDFhZC8weDJiMA0KPiA+IFs4OTQwOC4zNzI0NDZdICA/IF9fcGZ4X2V0aG5sX3NldF9mZWF0
dXJlcysweDEwLzB4MTANCj4gPiBbODk0MDguMzcyNDY1XSAgPyBfX3BmeF9nZW5sX3Jjdl9tc2cr
MHgxMC8weDEwDQo+ID4gWzg5NDA4LjM3MjQ4Ml0gIG5ldGxpbmtfcmN2X3NrYisweDU4LzB4MTAw
DQo+ID4gWzg5NDA4LjM3MjUwMl0gIGdlbmxfcmN2KzB4MmMvMHg1MA0KPiA+IFs4OTQwOC4zNzI1
MTZdICBuZXRsaW5rX3VuaWNhc3QrMHgyODkvMHgzZTANCj4gPiBbODk0MDguMzcyNTMzXSAgbmV0
bGlua19zZW5kbXNnKzB4MjE1LzB4NDQwDQo+ID4gWzg5NDA4LjM3MjU1MV0gIF9fc3lzX3NlbmR0
bysweDIzNC8weDI0MA0KPiA+IFs4OTQwOC4zNzI1NzFdICBfX3g2NF9zeXNfc2VuZHRvKzB4Mjgv
MHgzMA0KPiA+IFs4OTQwOC4zNzI1ODVdICB4NjRfc3lzX2NhbGwrMHgxOTA5LzB4MWRhMA0KPiA+
IFs4OTQwOC4zNzI2MDRdICBkb19zeXNjYWxsXzY0KzB4N2EvMHhmYTANCj4gPiBbODk0MDguMzcz
MTQwXSAgPyBjbGVhcl9iaGJfbG9vcCsweDYwLzB4YjANCj4gPiBbODk0MDguMzczNjQ3XSAgZW50
cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NzYvMHg3ZQ0KPiA+IFs4OTQwOC4zNzg4ODdd
ICA8L1RBU0s+DQo+ID4gPHNuaXA+DQo+IA0KPiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IGRlc2Ny
aWJlZCB5b3VyIHRlc3Qgc3lzdGVtLg0KV2lsbCBkby4gSSBjb3VsZCBsaXN0IHRoZSBjb21tYW5k
cyBsZWFkaW5nIHVwIHRvIHRoZSBjcmFzaCBhYm92ZS4gDQo+IA0KPiA+IEZpeGVzOiBhMjUxZWVl
NjIxMzMgKCJpZHBmOiBhZGQgU1JJT1Ygc3VwcG9ydCBhbmQgb3RoZXIgbmRvX29wcyIpDQo+ID4g
U2lnbmVkLW9mZi1ieTogU3JlZWRldmkgSm9zaGkgPHNyZWVkZXZpLmpvc2hpQGludGVsLmNvbT4N
Cj4gPiBSZXZpZXdlZC1ieTogU3JpZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2FtdWRyYWxhQGlu
dGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogRW1pbCBUYW50aWxvdiA8ZW1pbC5zLnRhbnRpbG92
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lk
cGYvaWRwZi5oICAgICAgICB8ICAyIC0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lkcGYvaWRwZl9saWIuYyAgICB8IDg5ICsrKysrKysrKy0tLS0tLS0tLS0NCj4gPiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMgICB8IDM2ICsrKy0tLS0tDQo+
ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5oICAgfCAgNCAr
LQ0KPiA+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdmlydGNobmwuYyAgIHwg
IDkgKy0NCj4gPiAgIDUgZmlsZXMgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRp
b25zKC0pDQouLi4uLi4uDQo+ID4gICAJaWYgKGNoYW5nZWQgJiBORVRJRl9GX1JYSEFTSCkgew0K
PiA+ICsJCXN0cnVjdCBpZHBmX25ldGRldl9wcml2ICpucCA9IG5ldGRldl9wcml2KG5ldGRldik7
DQo+ID4gKw0KPiA+ICAgCQluZXRkZXYtPmZlYXR1cmVzIF49IE5FVElGX0ZfUlhIQVNIOw0KPiA+
IC0JCWVyciA9IGlkcGZfdnBvcnRfbWFuYWdlX3Jzc19sdXQodnBvcnQpOw0KPiA+ICsNCj4gPiAr
CQkvKiBJZiB0aGUgSW50ZXJmYWNlIGlzIG5vdCB1cCB3aGVuIGNoYW5naW5nIHRoZSByeGhhc2gs
IHVwZGF0ZSB0byB0aGUgSFcgaXMNCj4gDQo+IEnigJlkIHNwZWxsIGludGVyZmFjZSBsb3dlcmNh
c2UuDQpXaWxsIGRvLg0KPiANCj4gPiArCQkgKiBza2lwcGVkLiBUaGUgdXBkYXRlZCBMVVQgd2ls
bCBiZSBjb21taXR0ZWQgdG8gdGhlIEhXIHdoZW4gdGhlIGludGVyZmFjZQ0KPiA+ICsJCSAqIGlz
IGJyb3VnaHQgdXAuDQo+ID4gKwkJICovDQo+ID4gKwkJaWYgKG5wLT5zdGF0ZSA9PSBfX0lEUEZf
VlBPUlRfVVApDQo+ID4gKwkJCWVyciA9IGlkcGZfY29uZmlnX3Jzcyh2cG9ydCk7DQo+ID4gICAJ
CWlmIChlcnIpDQo+ID4gICAJCQlnb3RvIHVubG9ja19tdXRleDsNCj4gPiAgIAl9DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+ID4gaW5kZXggZGNk
ZDRmZWYxYzdhLi4xMWY3MTE5OTdkYjggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gPiBAQCAtMjg2OCw3ICsyODY4LDYgQEAgaW50
IGlkcGZfdHNvKHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBpZHBmX3R4X29mZmxvYWRfcGFy
YW1zICpvZmYpDQo+ID4gICAJcmV0dXJuIDE7DQo+ID4gICB9DQo+ID4NCj4gPiAtDQo+IA0KPiBV
bnJlbGF0ZWQuDQo+IA0KPiA+ICAgLyoqDQo+ID4gICAgKiBpZHBmX3R4X3NwbGl0cV9nZXRfY3R4
X2Rlc2MgLSBncmFiIG5leHQgZGVzYyBhbmQgdXBkYXRlIGJ1ZmZlciByaW5nDQo+ID4gICAgKiBA
dHhxOiBxdWV1ZSB0byBwdXQgY29udGV4dCBkZXNjcmlwdG9yIG9uDQo+ID4gQEAgLTQ0ODYsNiAr
NDQ4NSw3IEBAIHN0YXRpYyB2b2lkIGlkcGZfdnBvcnRfaW50cl9uYXBpX2FkZF9hbGwoc3RydWN0
IGlkcGZfdnBvcnQgKnZwb3J0KQ0KPiA+DQo+ID4gICAJZm9yICh2X2lkeCA9IDA7IHZfaWR4IDwg
dnBvcnQtPm51bV9xX3ZlY3RvcnM7IHZfaWR4KyspIHsNCj4gPiAgIAkJc3RydWN0IGlkcGZfcV92
ZWN0b3IgKnFfdmVjdG9yID0gJnZwb3J0LT5xX3ZlY3RvcnNbdl9pZHhdOw0KPiA+ICsNCj4gDQo+
IFVucmVsYXRlZC4NCkkgd2lsbCBtb3ZlIHRoZW0gdG8gYSBzZXBhcmF0ZSBjbGVhbnVwIHBhdGNo
Lg0KPiANCj4gPiAgIAkJcXZfaWR4ID0gdnBvcnQtPnFfdmVjdG9yX2lkeHNbdl9pZHhdOw0KPiA+
ICAgCQlpcnFfbnVtID0gdnBvcnQtPmFkYXB0ZXItPm1zaXhfZW50cmllc1txdl9pZHhdLnZlY3Rv
cjsNCj4gPg0KPiANCj4gV2l0aCB0aGUgbWlub3IgY29tbWVudHMgYWJvdmUgYWRkcmVzc2VkLCBm
ZWVsIGZyZWUgdG8gYWRkOg0KPiANCj4gUmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVs
QG1vbGdlbi5tcGcuZGU+DQo+IA0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4gUGF1bA0KVGhh
bmsgeW91IGZvciB0aGUgcmV2aWV3IGFuZCBmZWVkYmFjaywgUGF1bCENCkJlc3QgUmVnYXJkcywN
ClNyZWVkZXZpDQo=
