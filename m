Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDF4A90EFE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 00:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B58241E55;
	Wed, 16 Apr 2025 22:57:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QcWjgREtWzLm; Wed, 16 Apr 2025 22:57:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CB36424CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744844265;
	bh=b4Noz4axN8xETrTI30FknUlBZP766VHIo4Gr+IG1Z28=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nL3DTCCh1jx/DEV+95CD/RgiaYM3MdFQuzzd0S+5fvhBnKe+71YJpTXnsse/7IO2s
	 dpo4Hk1vh6V+NRiAA233H0guqlK/GOBol9dIFZIqplgxQBQEkcvfQjtMMdyMgK8qoB
	 wmTY7KcOp6B8jeRwokEZKzeEY9Sbb0BMjPpIyfTUxFz3u4dvGaHJ9HsXBiFfKf6J8v
	 txUKCca+8l81U42EG4tkjDqgWKH9SqM1BYIXeKzGx+U+zAHCYWjh5AEeTg0ylygSNR
	 EaNMfOR/Bi6IVTzjEPDp/2K+xDoKkiS06bHuqoXUMdbOz0J/TvQgHX3rWvvwOl5rdf
	 aMBrZV2iVWYiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CB36424CA;
	Wed, 16 Apr 2025 22:57:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 71957444
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62CFD424B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:57:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3RvTFkbRScwp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 22:57:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 79BB5424C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79BB5424C2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79BB5424C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:57:42 +0000 (UTC)
X-CSE-ConnectionGUID: FQE7ehxNRG24hOWOjjpxzQ==
X-CSE-MsgGUID: ITt0JKyPSf2VSgHngrnQFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="56596035"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="56596035"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 15:57:41 -0700
X-CSE-ConnectionGUID: UyKtllwiQsWlODEiFAp6sQ==
X-CSE-MsgGUID: d0HVpNh+SQ+MI9rC3Iv+ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="161659932"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 15:57:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 15:57:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 15:57:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 15:57:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HofJViOy3kZNaIaAd/ZDjUkeSZ8zYFpzfMbSbEWKUSM/7Rej4N9sVXnt6pgYII23xyVNycf0P8FAfrVMM9x/loxMe3M59ujt4etyHA9QKtYSBEQio6S7UbVRLq3wmr4MYCPjI9vgHvevoG4CCwelt8Oup8Nds3lF36UYwrUy+cVFH7jFm2ASWVelK+rwOIGSRGphNFWsD/r28cGaa7RvkeRqMfeEmP2AMPPepwOxI9RoPg+m+fT6gBNU38w2nyCxePo1ww2XyY1HUqU6625aO+gBJuPfn7XaMtBVBj/v5T0XDMfHTALWVGQqaNm43u3Eufg2WC3Jcu+zMP8DwDOJxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b4Noz4axN8xETrTI30FknUlBZP766VHIo4Gr+IG1Z28=;
 b=Py+z91AMFn+45h65dMdbU4iDqRFBfQwT+b0Pdi41OhItq8INDgWkBuXOXXFL6aOtuVqqB96pInKfyLkYqQMUQ7L6w4NS4hYseo5MV6ruvt0QTU5RR7zYpk1Aq21UBrlJBPlt0UsldcN4gYQNYPk1KZcpxngTQ99N/LPSozupD+NOmu+tu5NHKnwWDuY88ru6EhkMDsgtsqtC7ZhdoQye1eg+YWs0lni8iORIK+denPj9ZtcXgYE6aEnEOqWNDRlgSsuvJgM4mcwTAtogSLVNuAM5ypqxl/zShiX/7i/TJrsGIheBI43k4YI8lRbviGs+NQWfJS9REfyzTl98bsnehQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH3PPFA061B3868.namprd11.prod.outlook.com (2603:10b6:518:1::d3d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Wed, 16 Apr
 2025 22:57:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.025; Wed, 16 Apr 2025
 22:57:10 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, Jakub Kicinski
 <kuba@kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Damato, Joe"
 <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>, "Dumazet, Eric"
 <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit
 492a044508ad)
Thread-Index: AQHbrmoYFHYXzwUONkyzBwPhX3SQxbOl4UCAgABufwCAACW4AIAAcbww
Date: Wed, 16 Apr 2025 22:57:10 +0000
Message-ID: <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
In-Reply-To: <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH3PPFA061B3868:EE_
x-ms-office365-filtering-correlation-id: 3119b38f-5400-415c-f822-08dd7d3a0513
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZHBhYklpVDlRWi8vVU9vTy9IU3BXZFozOUl4amFHY0Irbzc3S1QyNldFbUZs?=
 =?utf-8?B?THphM1NocFZlM0M4aVZvM0EvVU1WNnRock0xWmJiaWtnSEJ1WFRacURmUUVP?=
 =?utf-8?B?cU5WOVZ2ZmVoOUw1emU3bnhSWDdOMjcreUdNUHd5eDRYVzZUVnZNaHMzb2FD?=
 =?utf-8?B?ZVhDazA1bTk3NkRndVNsUE9NcG81ZEV5RHBHeTZTTDY2QXV1V3N5YXRaT2sv?=
 =?utf-8?B?WE1tVitCOGxicmQ0ekJxcXVVazltSllpcVJXSTl3L1BMaE4vRWo2RC9meEE5?=
 =?utf-8?B?Tk5iUmltdjFia0ZFbmxST2hCSUZqOTlYS2s1M0htMmNnYnRXQjVSN1F2Q2Ft?=
 =?utf-8?B?dHhPTEVZTkRMbUs2Y0k5cnhXQWcvOWVOWkdRU3JjSjM4ZUQ4dkQvN0VHbFZO?=
 =?utf-8?B?eVM1K240eDZmOTZLSGtjSkhSWTk5RlEzcmszRWZDYTM4ejRsVVZvM3l5WGN5?=
 =?utf-8?B?Uis4Y0hrNGdhWnNTWkJZRFo0bWRCNTA5NE1zN2xDV2lEZWF2dTcyRENEdDU0?=
 =?utf-8?B?VUVWSCt6YzhickRxUThVTjFkUVpPc3pGcWUrNXFxS3JOVzR4ajgrWEFlR0tv?=
 =?utf-8?B?aTI3UmtPVW9rU0tsODFkYm1zRS9LYVRFU3BNT1lGSXd6VU1vZjl6eEVYT2px?=
 =?utf-8?B?MCtNSFRRdzVjQzJPYkFJKy9pNmJ6MlFNbExwYnRsN05YTXNJek8xdXBJNVBj?=
 =?utf-8?B?OUt5R1dZbUoxbFNERWhlTnRpUmRDSkZQZlJJbHBKaTVHL05jUUJla0tHNi9x?=
 =?utf-8?B?NFVFM1VHQXdRQkdnWE8zNThsTHR2TnExZTR4c0l3emJVcG1qaG9PNE5Qcy83?=
 =?utf-8?B?Nm9jc0V5VHZ2TUZWbmpqeEFqOUNnOFVwU1BHeEVJSFErZXp4WXR0NFRlTVZl?=
 =?utf-8?B?bzcyWUtjSVd6OFFhMzlSZjJMUmtPVVloRE9OS1hENTdQWnV5UWRNcFJXdFFF?=
 =?utf-8?B?dGhWSndsaTFhcGVFZUJuNGhDT2U0cEU0WlNscjdSR1ZwNlREbTRkeCt3MDJI?=
 =?utf-8?B?cGg4WHVNc281WTN5bytvZDE0aFhxcWpZZWVoQTRTbTZmMC9xcTZLa1JaeFB3?=
 =?utf-8?B?Rllvcjdlck0wUHNCUnRGd3F6a2VVK25wdkM0TCs2ajRBTm50TmNnZzY2UFN4?=
 =?utf-8?B?VFdvaXZ1R3lCbWVLSGNxd2ZUL0FLL1YzV2J3clgvM1JOeTUzZWtManpEbEsv?=
 =?utf-8?B?aWlZdENzSkFkY1p0VG5lNTlNV1RsTVFBWHB1NEZOSDVqSnNDdUlCWmJ5QXRq?=
 =?utf-8?B?blZVNmNVVE9OTkNZVkNxNWhvamdJTUZMdm1xSXFhKzdERkFYa3ZUR0YybW5a?=
 =?utf-8?B?dkdFYVNHUklRVjVtZS9JSlQ5c3FkbW5jamtkQVUwdk8xMDlsVzdnc1EwQ2RQ?=
 =?utf-8?B?TFFDSUdoQS9nRzgzWlltK1BQUm1WUzYzZWdyWmJwOHhJRTY2anczM1F6b1NT?=
 =?utf-8?B?a3VxbHdaREc2VW42MWdVV0FMN1R0MDhSdzd6N24vRjRkS2VReE9jdjIrYWRD?=
 =?utf-8?B?QjkwYlAyK1Z2bURsbDIvVU5rT2poeDE5d0FWNXVUd0lVS1ZTTEwrQ2toN1pq?=
 =?utf-8?B?Tkg0UGVWVmRRK05ZS28yQ1pLcko2Um1Ocm1mb3IvcFlVU2ZydDJpTkxFYmNt?=
 =?utf-8?B?d1B2ZUZpMXcxYzBsa0dNN2QwTHI5dTRtOEk0eldZd1VZbTdYclNGUTlyelVk?=
 =?utf-8?B?ZDVBVkZWb3h1bDVaS2NYTm1idWJrb3M4Z2VOOE5Eb2FrQWorNmUwemJlNmEx?=
 =?utf-8?B?Rjlnek8yQUx4MHBEcFlremFSWjhKaGZTSkswM0dGQ25OUDY4TGNQbTRCbXJT?=
 =?utf-8?B?S1M4TFRscFludUhmTmlvRWF3aHFFd0JIaW4vRFZFU0JwemNVbkkwNzJUbUVW?=
 =?utf-8?B?eHh4MlUrS0JvejRiS0NERUdueFp5VEFaZWVJK21LYVFqUDE1UzlLSHRuR1B6?=
 =?utf-8?B?MDNJZ093R3M2ZmdJSXY5eitJN2FxTHVwd2dEWkdzQStXaGgwenVwUVZGZVNW?=
 =?utf-8?B?UndiKzJDL09BPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2gxU1dFUkNrQVczTllpRXlnbmtyRHdVei9hWjJhMENiMS8zYnVLcmV4cjFU?=
 =?utf-8?B?UVZjS0ZucW9ZRFJhZWRIWUgzM3d1a2Q2MlFCVUFJL3MzaVhUaGVtYndQM202?=
 =?utf-8?B?cmFkNm4vOENsMlRSWUJ5N21zRGJCSEdiYVdOeG1vdXhUTHhjdlhNZGsyWXdD?=
 =?utf-8?B?MUs2UjU2eURwK2pKTkN5M3dSNk42dzBTWXZZV2owM2RzeWs5UGtsdlAwTnUy?=
 =?utf-8?B?MnArMC82OUpvelBJSUdxN0R0UW9qZStQUmVZTmFoVkI2ekR2a1E0VDVaYytX?=
 =?utf-8?B?NTlaQnc4dTJqL2dOUmh0a2pEVFlBczVHQlpmdXFMeFVDbnFDQlNNUUR6dU1r?=
 =?utf-8?B?SE5UUVFZNUJvSG41c3JOYmhlSjE4T3A0Q3MvYzZIRmpTTXJoUS93eFg1VXZD?=
 =?utf-8?B?MmxRdVJNNVFYaldBQXU2YkFlRVROKzlUVEFNMGZGbkkyZThtV0VuTWZkNENI?=
 =?utf-8?B?eUkwT0l6V2c5azNQT0VqSjNUMnpaeGk3ZnBaemFNWHBFVnRlSXkrNEhHOFUv?=
 =?utf-8?B?RUM3Z0x1MElaZzcralZadkNOOG5MMHNWZWR2RnVzQXB5Z05MTmsyZnIyMzR4?=
 =?utf-8?B?VytrcDJUc1NMZGsrQ3I4dFJld0xGUzlDd3YvQVM3Y3JhenU4ZHZUdkZqZ0Ew?=
 =?utf-8?B?MG1HWm1YalBuNzJNWVNlcGhSc3hudTkyenpRYUYwNVFTZzJPZFdVS25SUmt1?=
 =?utf-8?B?bE1xQkVwUUJoM245UVNtWkVYNVk4eS9rOGpqRElabGlvUDljVmJMUWlHb3hm?=
 =?utf-8?B?TVdYeGJUcVdmWW1nT2JmeGNHZmlYU01HK2FEUVAyM2lGZ3g3STJsc1JwWm1B?=
 =?utf-8?B?U3owVi8wOWRLOWUrSlNOU0kvM0tIYTZhS3ZCNVI2UXdIcktSQnI3VXN0SnZP?=
 =?utf-8?B?YVo4b2RzVVdPTzFxRVFzUEtuKzRvQkoxZnB6ZitLM0lMUkxvUkRXUEhzdkRr?=
 =?utf-8?B?MGR5Q3NaaG9BYXB0QzRDMjdGdnpmV1dGZjZKSUJ0d293VFRROGxzY2s2RXl6?=
 =?utf-8?B?YUFseWNVV3NTS0RCRHQwRkhZeXFpRGRtSXZVZTBneS8zdDJ5OElzUlJQRWRE?=
 =?utf-8?B?dzhmckFCb3NIOFEyNE11MFFKQlZiQUlYTzg0ZTRQYWNtSDVObGFyQ3YyTzho?=
 =?utf-8?B?aEhReXZ4cytwMkxEaDlNTTd0TU1IYXo1elMwMjJ1TWZBdFNvdDh1L01nNnpp?=
 =?utf-8?B?ZHlySGtHVG1qYW93VEczLzRtdHBWUEcrbWpab3FKUWQvRmNDaGM5N3JWWlJR?=
 =?utf-8?B?WEVYWCtLRUxNcHZ2UEZNQmNiRWVuUUp6YmI1U2tiOHRVaFVsTkVCR3l3Q0JW?=
 =?utf-8?B?QXl2bU43Y2xNam1WNHFzYXZHOXV5RXh6OGs0cGVRRCtrVHR2eEsrdlBDd0Rt?=
 =?utf-8?B?VzBmb203QzNSK2puVHRIbFJ2N0kvbTI2WmJoSjZBbGhtZDJkNzhRMmNFRWRU?=
 =?utf-8?B?Z2oyWGs0MHBVT09vK3BOVXpZd0lGWkRFVy9ycCtSSnJRMmhUZ0dUTUtrTHRT?=
 =?utf-8?B?WEZQelRRSW1nS3N3RGxsVEYxUk1udkNRcnk0ZWlKcFdDWWV1UjJkVnBBRlI4?=
 =?utf-8?B?WVQ4VzV4U3d4RStUMUdmeFlJU01BNHVzN1ZVSlZwcHBvWCt5bjY1Sng0M09l?=
 =?utf-8?B?d3pKc09IZmVKaHg3QWJnNURiZnRTTWZFTnd4U3ZFWHI1d0xKMitXbW0yYUsr?=
 =?utf-8?B?RUZTWmd5U1R2REhEcHVyRUhOWXVRWTJsdWhNVlU4NCszajNLWitRZ0ZnOHkr?=
 =?utf-8?B?cVgySEZjSHNJc3hnUW9HblB3R2E0ZXI0aFFRVEJCbjN2TnNXUmhGVW4rWFJX?=
 =?utf-8?B?Lyt2NEdiTU4vRmE0b3Nnajg2VWQ2ZUpVYkZ1MFR6akg2VEQ1QzloT3JPeGRE?=
 =?utf-8?B?c1laQVpqSVhxTisrSTR4eEZDSWQ0WkIvUXFsSlRFVGpZRnM5YnRvRjlLZGl5?=
 =?utf-8?B?bE1XZTFWTm03cnVjMFBBNjArejZBdnlRRUNnZUxVMHlqZk9XUzQrOGhOS21o?=
 =?utf-8?B?VCt6YTJRWWNSTkY4MSt3elRpU043bTFQZlBJMm10MExCcTFpaGE2MXJtaFVj?=
 =?utf-8?B?YzVpU1VlSzZNQ1VnNklzQUNXMDJXby83dlo3elJsSm5Jb2J5eWVjVDh4bmEy?=
 =?utf-8?B?dlBRemNEUGxlZTJDSGo0Yjk1TmtVaUFsbk41ODFDWkxjK2wvTjNxOHdEVXlW?=
 =?utf-8?B?Mmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3119b38f-5400-415c-f822-08dd7d3a0513
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2025 22:57:10.2774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ny816V+eWE58ugfOaOrLDHdr1z9biRoCkUF/LT6cTA7y8MzPx9UUgX743p+RJspyPsrwHlypnQSQK8RQoyUk3LE426xyHGaPVUV4PloTpFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFA061B3868
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744844262; x=1776380262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b4Noz4axN8xETrTI30FknUlBZP766VHIo4Gr+IG1Z28=;
 b=Hl2fvm2IpLIw9HeLg9UAZhYFPG34eAA1URV9q8Ip9iWxkMxvCoHn0VEe
 sp3cmogcW2v95FbzgKOmFMfP36VFSbcUGyIxoTUKAO33BYkcgRERU8koR
 YrWA+U9aHj3B1vtHZWuvsCccpRi18wenafhAl7jTD05gw3sLhnVCt72K6
 urExJHKVCsjkV2x4wjsHWDPrhU5zRr5ffueajOrlQS1RszEVNlqcIgjOo
 F6+HNSEpldyJW3Vy4TvByyG8RcUbGUMP+9fNvRteeKe17d9iRtti3cyxi
 1PDiZJ7KNY46RXZty9OTBX80Y0yo70a63/+0jfD65YG0UaWKFxOhwXlEZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hl2fvm2I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgSmFyb3Ns
YXYNCj4gUHVsY2hhcnQNCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCAxNiwgMjAyNSA5OjA0IEFN
DQo+IFRvOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPg0KPiBDYzogS2l0c3plbCwg
UHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IERhbWF0bywgSm9lDQo+
IDxqZGFtYXRvQGZhc3RseS5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsg
bmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4gTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5u
Z3V5ZW5AaW50ZWwuY29tPjsgSWdvciBSYWl0cw0KPiA8aWdvckBnb29kZGF0YS5jb20+OyBEYW5p
ZWwgU2VjaWsgPGRhbmllbC5zZWNpa0Bnb29kZGF0YS5jb20+OyBaZGVuZWsgUGVzZWsNCj4gPHpk
ZW5lay5wZXNla0Bnb29kZGF0YS5jb20+OyBEdW1hemV0LCBFcmljIDxlZHVtYXpldEBnb29nbGUu
Y29tPjsgTWFydGluDQo+IEthcnN0ZW4gPG1rYXJzdGVuQHV3YXRlcmxvby5jYT47IFpha2ksIEFo
bWVkIDxhaG1lZC56YWtpQGludGVsLmNvbT47DQo+IEN6YXBuaWssIEx1a2FzeiA8bHVrYXN6LmN6
YXBuaWtAaW50ZWwuY29tPjsgTWljaGFsIFN3aWF0a293c2tpDQo+IDxtaWNoYWwuc3dpYXRrb3dz
a2lAbGludXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gSW5j
cmVhc2VkIG1lbW9yeSB1c2FnZSBvbiBOVU1BIG5vZGVzIHdpdGggSUNFDQo+IGRyaXZlciBhZnRl
ciB1cGdyYWRlIHRvIDYuMTMueSAocmVncmVzc2lvbiBpbiBjb21taXQgNDkyYTA0NDUwOGFkKQ0K
PiANCj4gPg0KPiA+IE9uIFdlZCwgMTYgQXByIDIwMjUgMDk6MTM6MjMgKzAyMDAgSmFyb3NsYXYg
UHVsY2hhcnQgd3JvdGU6DQo+ID4gPiBCeSAidHJhY2VkIiBJIG1lYW4gdXNpbmcgdGhlIGtlcm5l
bCBhbmQgY2hlY2tpbmcgbWVtb3J5IHNpdHVhdGlvbiBvbg0KPiA+ID4gbnVtYSBub2RlcyB3aXRo
IGFuZCB3aXRob3V0IHByb2R1Y3Rpb24gbG9hZC4gIE51bWEgbm9kZXMsIHdpdGggWDgxMA0KPiA+
ID4gTklDLCBzaG93aW5nIGEgcXVpdGUgbGVzcyBhdmFpbGFibGUgbWVtb3J5IHdpdGggZGVmYXVs
dCBxdWV1ZSBsZW5ndGgNCj4gPiA+IChudW0gb2YgYWxsIGNwdXMpIGFuZCBpdCBuZWVkcyB0byBi
ZSBsb3dlcmVkIHRvIDEtMiAoZm9yIHVudXNlZA0KPiA+ID4gaW50ZXJmYWNlcykgYW5kIHVwLXRv
LWNvdW50IG9mIG51bWEgbm9kZSBjb3JlcyBvbiB1c2VkIGludGVyZmFjZXMgdG8NCj4gPiA+IG1h
a2UgdGhlIG1lbW9yeSBhbGxvY2F0aW9uIHJlYXNvbmFibGUgYW5kIHNlcnZlciBhdm9pZGluZyAi
a3N3YXBkIi4uLg0KPiA+ID4NCj4gPiA+IFNlZSAiTWVtRnJlZSIgb24gbnVtYSAwICsgMSBvbiBk
aWZmZXJlbnQvc21hbGxlciBidXQgdXRpbGl6ZWQgKHJ1bm5pbmcNCj4gPiA+IFZNcyArIHVzaW5n
IG5ldHdvcmspIGhvc3Qgc2VydmVyIHdpdGggOCBudW1hIG5vZGVzICgzMkdCIFJBTSBlYWNoLCAy
OEcNCj4gPiA+IGluIEh1Z2VwYXNlIGZvciBWTXMgYW5kIDRHQiBmb3IgaG9zdCBvcyk6DQo+ID4N
Cj4gPiBGV0lXIHlvdSBjYW4gYWxzbyB0cnkgdGhlIHRvb2xzL25ldC95bmwvc2FtcGxlcy9wYWdl
LXBvb2wNCj4gPiBhcHBsaWNhdGlvbiwgbm90IHN1cmUgaWYgSW50ZWwgTklDcyBpbml0IHBhZ2Ug
cG9vbHMgYXBwcm9wcmlhdGVseQ0KPiA+IGJ1dCB0aGlzIHdpbGwgc2hvdyB5b3UgZXhhY3RseSBo
b3cgbXVjaCBtZW1vcnkgaXMgc2l0dGluZyBvbiBSeCByaW5ncw0KPiA+IG9mIHRoZSBkcml2ZXIg
KGFuZCBpbiBuZXQgc29ja2V0IGJ1ZmZlcnMpLg0KPiANCj4gSSdtIG5vdCBmYW1pbGlhciB3aXRo
IHRoZSBwYWdlLXBvb2wgdG9vbCwgSSB0cnkgdG8gYnVpbGQgaXQsIHJ1biBpdA0KPiBhbmQgbm90
aGluZyBpcyBzaG93bi4gQW55IGhpbnQvbWVudWFsIGhvdyB0byB1c2UgaXQ/DQo+IA0KPiA+DQo+
ID4gPiA2LjEzLnkgdmFuaWxsYSAobG90IG9mIGtzd2FwZDAgaW4gYmFja2dyb3VuZCk6DQo+ID4g
PiAgICAgTlVNQSBub2RlczogICAgIDAgICAgICAgMSAgICAgICAyICAgICAgIDMgICAgICAgNCAg
ICAgICA1ICAgICAgIDYgICAgICAgNw0KPiA+ID4gICAgIEhQVG90YWxHaUI6ICAgICAyOCAgICAg
IDI4ICAgICAgMjggICAgICAyOCAgICAgIDI4ICAgICAgMjggICAgICAyOCAgICAgIDI4DQo+ID4g
PiAgICAgSFBGcmVlR2lCOiAgICAgIDAgICAgICAgMCAgICAgICAwICAgICAgIDAgICAgICAgMCAg
ICAgICAwICAgICAgIDAgICAgICAgMA0KPiA+ID4gICAgIE1lbVRvdGFsOiAgICAgICAzMjIyMCAg
IDMyNzAxICAgMzI3MDEgICAzMjY4NiAgIDMyNzAxICAgMzI3MDENCj4gPiA+IDMyNzAxICAgMzI2
OTYNCj4gPiA+ICAgICBNZW1GcmVlOiAgICAgICAgMjc0ICAgICAyNTQgICAgIDEzMjcgICAgMTky
OCAgICAxOTQ5ICAgIDI2ODMgICAgMjYyNCAgICAyNzY5DQo+ID4gPiA2LjEzLnkgKyBSZXZlcnQg
KG5vIG1lbW9yeSBpc3N1ZXMgYXQgYWxsKToNCj4gPiA+ICAgICBOVU1BIG5vZGVzOiAwIDEgMiAz
IDQgNSA2IDcNCj4gPiA+ICAgICBIUFRvdGFsR2lCOiAyOCAyOCAyOCAyOCAyOCAyOCAyOCAyOA0K
PiA+ID4gICAgIEhQRnJlZUdpQjogMCAwIDAgMCAwIDAgMCAwDQo+ID4gPiAgICAgTWVtVG90YWw6
IDMyMjIwIDMyNzAxIDMyNzAxIDMyNjg2IDMyNzAxIDMyNzAxIDMyNzAxIDMyNjk2DQo+ID4gPiAg
ICAgTWVtRnJlZTogMjIxMyAyNDM4IDM0MDIgMzEwOCAyODQ2IDI2NzIgMjU5MiAzMDYzDQo+ID4g
Pg0KPiA+ID4gV2UgbmVlZCB0byBsb3dlciB0aGUgcXVldWUgb24gYWxsIFg4MTAgaW50ZXJmYWNl
cyBmcm9tIGRlZmF1bHQgKDY0IGluDQo+ID4gPiB0aGlzIGNhc2UpLCB0byBlbnN1cmUgd2UgaGF2
ZSBtZW1vcnkgYXZhaWxhYmxlIGZvciBob3N0IE9TIHNlcnZpY2VzLg0KPiA+ID4gICAgIGV0aHRv
b2wgLUwgZW0yIGNvbWJpbmVkIDENCj4gPiA+ICAgICBldGh0b29sIC1MIHAzcDIgY29tYmluZWQg
MQ0KPiA+ID4gICAgIGV0aHRvb2wgLUwgZW0xIGNvbWJpbmVkIDYNCj4gPiA+ICAgICBldGh0b29s
IC1MIHAzcDEgY29tYmluZWQgNg0KPiA+ID4gVGhpcyB0cmljayAiZG9lcyBub3Qgd29yayIgd2l0
aG91dCB0aGUgcmV2ZXJ0Lg0KPiA+DQo+ID4gQW5kIHlvdSdyZSByZXZlcnRpbmcganVzdCBhbmQg
ZXhhY3RseSA0OTJhMDQ0NTA4YWQxMyA/DQo+ID4gVGhlIG1lbW9yeSBmb3IgcGVyc2lzdGVudCBj
b25maWcgaXMgYWxsb2NhdGVkIGluIGFsbG9jX25ldGRldl9tcXMoKQ0KPiA+IHVuY29uZGl0aW9u
YWxseS4gSSdtIGxvc3QgYXMgdG8gaG93IHRoaXMgY29tbWl0IGNvdWxkIG1ha2UgYW55DQo+ID4g
ZGlmZmVyZW5jZSA6KA0KPiANCj4gWWVzLCByZXZlcnRlZCB0aGUgNDkyYTA0NDUwOGFkMTMuDQoN
ClN0cnVjdCBuYXBpX2NvbmZpZyAqaXMqIDEwNTYgYnl0ZXMsIG9yIGFib3V0IDFLYiwgYW5kIHdl
IHdpbGwgYWxsb2NhdGUgb25lIHBlciBtYXggcXVldWUgd2l0aCB0aGlzIGNoYW5nZSwgcmVzdWx0
aW5nIGluIDFLQiBwZXIgQ1BVLi4gaWYgdGhlcmUgaXMgYSA2NCBDUFUgc3lzdGVtIHRoaXMgc2hv
dWxkIGJlIGF0IG1vc3QgNjRLQi4uLiBUaGF0IHNlZW1zIHVubGlrZWx5IHRvIGJlIHRoZSByb290
IGNhdXNlIG9mIG1lbW9yeSBvdXRhZ2UgbGlrZSB0aGlzIGlzIGp1c3QgdGhlIG5hcGlfY29uZmln
IHN0cnVjdHVyZS4uLi4NCg0KUGVyaGFwcyBzb21ldGhpbmcgdGhhdCBuZXRpZl9uYXBpX3Jlc3Rv
cmVfY29uZmlnIGlzIHNvbWVob3cgY2F1c2luZyB1cyB0byBlbmQgdXAgd2l0aCBtb3JlIGFsbG9j
YXRlZCBtZW1vcnk/IE9yIHNvbWUgaW50ZXJhY3Rpb24gd2l0aCBvdXIgZXRodG9vbCBjYWxsYmFj
ayB0byByZWR1Y2UgdGhlIG51bWJlciBvZiByaW5ncyBpcyBub3Qgd29ya2luZyBwcm9wZXJseS4u
Pw0K
