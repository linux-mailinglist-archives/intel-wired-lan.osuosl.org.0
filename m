Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD9BAC132A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 20:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3C8683E50;
	Thu, 22 May 2025 18:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xqhZ9JBCOvKf; Thu, 22 May 2025 18:17:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DBE183E4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747937870;
	bh=s3Dnz9OThx3YaLTEdTeZlcNXOEmaOUkXVNSWwQwCO5A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RnHeFrXSlYzxogGUy00/0LWZs1OnHuemZIQnq7vsdzcJgAeuPXioWREPMsjC/7uAg
	 glEKVK1iXxg/hkG6Hd67JK/SJbwqJ2BgQ7+sdYCILZ7S+rlgtoqHH54YM/cmRibPQo
	 Pcpfj9g8/uQ+RivbEphoROWX1u+0UnTxR+IGW6xbBNc3uaoX/ayuDoqniDjlSP2wQM
	 pTvkEQfNLfJbU5qjdf3/alu0WiQsEkOHk966sBF0jUUF4NgBEgi50+FL3uDkgCiXx6
	 9vayMZ8ZGrVP1QMrsWUj3Gv0mGIresy0SPHD0akM7RuPQZYhsWPIOgHMhb/3GQMaMG
	 WroDNbOJ4lb8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DBE183E4B;
	Thu, 22 May 2025 18:17:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 23922106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09AF940E3B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:17:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N7H7jJR3OBqd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 18:17:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 552BA400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 552BA400D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 552BA400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:17:48 +0000 (UTC)
X-CSE-ConnectionGUID: uN/y7DgJTaCcAymiiRv7Xw==
X-CSE-MsgGUID: TB863TU+TNGkLhaULVlzjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50127581"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50127581"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 11:17:47 -0700
X-CSE-ConnectionGUID: RwAjDR0pRviK0G7xVTLDhQ==
X-CSE-MsgGUID: O7Un7FemRYCF04PjKNB4ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="141136170"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 11:17:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 11:17:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 11:17:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.40)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 11:17:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hqh1c3eD2vjUZwJlO+Bk3PuRYBoPWfc46fxtLg9tAggbLtvCLjmc9SSUx5i+9ZXKJc68A4GQeZioGOwmD2FRfkp9RjHt8+D2Z4vzPCinSYD3D2OTkAUn41dbPiMXrJAKVWlqSLbxCDUfev3UCgy08Z0Uwd1ANQNZlXmWGWsgabnVYyOYFNzy+V1Z+6Cerc4pGIWH82QccoWbrkI9+b5lcAXPGMz3m6T5G8wyNGRdN5i7yjOmJE/T0vVAtt9CdLPpESZfRSDMX+pw48Fq/UN3u+LKS9FHj//CFN20ey/90VL5ZUkESPdXpLnhWcFEd4pCxslUij6T+T1inlX309hpdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s3Dnz9OThx3YaLTEdTeZlcNXOEmaOUkXVNSWwQwCO5A=;
 b=MclhkjjZffZ64mrZ0lUEJwlIeBtld6ftCg/UV3G6QGjQqHZqRKsJMsJ9cj4gDRFS629SdLNQBiLUVMWLW9vIdHinIGm7PHZQb5CdgmxYkHmnsv/AHQ1tNnTofeYHwLIhq72715+mjBH3iBCo9Kq2XQG94fG+2aH3p7vRsXsJrKEuM/5/a5giG8wW/v2DtPBv5ktY6hHHF6hCBsOQ6GB2Q+YNfv6c6ODN6iexaP5eQgZWeE3gLQwLqN3OJ7x9usUbrAPbgcJqydyfAWcmHAmDxgi9j2UrZt6UsCgoxH5126nlPBUgPAsoFkXxWeuL2uUpf+jRR/1YaP4gtsz7vd5RRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA0PR11MB4525.namprd11.prod.outlook.com (2603:10b6:806:9d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 18:17:16 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8699.019; Thu, 22 May 2025
 18:17:16 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: move RSS
 packet classifier types to libie
Thread-Index: AQHbvfpvuYmtP/cHD064OIdCClWUJLPfD3KQ
Date: Thu, 22 May 2025 18:17:16 +0000
Message-ID: <SJ0PR11MB5865D93024C9B7356813EF838F99A@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250505-jk-hash-ena-refactor-v2-0-c1f62aee1ffe@intel.com>
 <20250505-jk-hash-ena-refactor-v2-2-c1f62aee1ffe@intel.com>
In-Reply-To: <20250505-jk-hash-ena-refactor-v2-2-c1f62aee1ffe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA0PR11MB4525:EE_
x-ms-office365-filtering-correlation-id: b53e283e-f46c-4783-1a3f-08dd995ce202
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YzQydUhaYlFoN1RiazdNOExKNjJEY3RCS2Q0WGxUckxJcnl2d3Bud0JLUWR3?=
 =?utf-8?B?TjF3MTlIYi9MWHFSRzlxUi9JNkE4V21MeGZOeWxQa1oyK3dnODl0ditFVUdB?=
 =?utf-8?B?dWxacGY5b3p0WEE3VUNiN05WNnRoY3M5TDUxQlRSTm9UN3ZudW5OeHcyWnNp?=
 =?utf-8?B?MVBCbTJHN3NwV2k1aTJmN2FNQlRJMXUvdU42T001bmZnVGRFYko0RXFsaWhX?=
 =?utf-8?B?eW1hdHprMWVJcnptZUx5WVg3ajFPb085RVJ4eStCWDdNakNnVUM2YWg5SC9v?=
 =?utf-8?B?WEFtb3YzNnhYV0xHditFaGZua21VZzJETlpVWjdnNStNNEZRNnFMK2ZwZFl3?=
 =?utf-8?B?eDBvdHJIVVRlQXVSY2sycVBva3BoYWxtQUhZUE1SRWxYeURHQ0MvUHcwYjh4?=
 =?utf-8?B?VmVJZHluQXczclFmMTBsQlI4NVl5TUpuVURtYVFtQVhSSG5qc3Nnam85bFNs?=
 =?utf-8?B?VzJaUnY1aXhUYVptOHRLSU5xSENsUldBKzFjRFVsMFJ6SWhRZ3l4YVl4YUJo?=
 =?utf-8?B?ZnplMXZuZXJxRUE2VjgwR29oTHBQMU8xV21lUU10N0h6bElPYjJWd3NZckk4?=
 =?utf-8?B?UHVoQmlzT3lndlVZVU55MDEvQ2NpUmErV0R5V3psNkpwNjJuTzF1ZWcvMTRn?=
 =?utf-8?B?WDhORGs3ZWFHRUVjNVI4eGIzWVArK1lSNk5IaXJRc0t4dDFXNUZTclN4ZWJQ?=
 =?utf-8?B?RUx2Q1VwUWJJVkh2SjNLM1lPWnl1YWlYRXhKYWFhbGJsN0FpbDlKU21Fdyts?=
 =?utf-8?B?dytFRGtNMEZLSTlsWEU1amdqblJsbldQWkY2S3hua0RPMy9abHFpK0hJSE80?=
 =?utf-8?B?RFVqTU85ZG1OK3FQNFVZS1RDQTZtbVl5RWtLNEUwMW02cGMzcUhTRkN3aWpQ?=
 =?utf-8?B?MWllckpzT3RwNnFiN01FVVM3R2w3V0pEeCtGalAzeERRT3JsSk1nSk50YWRw?=
 =?utf-8?B?Tllzdkc4K0s5ZkZydEZSajArc0dZWnlaeEdic01XSC9uYTBUOWh1N1ErMjBL?=
 =?utf-8?B?MDdKSUxCdHk1VS9meG9VdklybUVBOHVYWUVQSGNYRzRXMnljSk9BanhIVmNO?=
 =?utf-8?B?ZnNkZ0N6THNEbThGdVhBcHpmWWZ3UStFVGpQM0dDbHVXTm1paXhkUnBkazBY?=
 =?utf-8?B?Nm8yZnY0cVJsS2MzRERtb2pEZUlKc3RoK2dpR2tMTnlqQ0lybC9jTFlLUWF4?=
 =?utf-8?B?M0t4dHpJaElnaUhENmFHSWthZ25oS0dSS0JWRUxrN0xienlMeTFXUTg3YXd2?=
 =?utf-8?B?YTlGNGZqaHRsQ0w4MzdRbjdJdXVoWXIyVzdvdC9jemJYQVZtcmVKNDhpSTRm?=
 =?utf-8?B?OGM4OTVaRXgya2NWTThCVE9ScEZtdGxCckI5WWhxcXI2NXhGMFRQVGJKWGJL?=
 =?utf-8?B?ZEJIR05lUDNhZEVJcTBHUVlKeUhmRG04V1lmZUtUVmlPU0N6V05OOXljYzBj?=
 =?utf-8?B?MnNNbmJZRHBBbVhGcUVXK2tYV1ZMS3RWT2FaK0wyUm9MUkZDSGNZK1ZYSmtl?=
 =?utf-8?B?dEhXUE5uWHBZcXlVRHVPcXR1SU5sWXZLK3pLQVBkUDJNc3FudmxGV1ZXYThT?=
 =?utf-8?B?c25Eb3VYdFRRZXV5ZnV4dDBBa01uUGRiUHUyd0NreG5wQzYyVjEyT2R4SS9U?=
 =?utf-8?B?UFRkOTN6Y0UrbThMdVRTR1V1RXZyOXo0ajhyUkFKTUlpZ3lVWGtLaVRpQ00y?=
 =?utf-8?B?K2w4UVp2R0tacG52NENDN2wrbHlGY2ZjNFQ0RjY4bEdRcGhaQXdpU1hmNDY5?=
 =?utf-8?B?d3prSC9NdElRMC9MN2c4Y1F0U3JjN1lydWJZUVlneFhoVEtFU1NIWkFPK0tC?=
 =?utf-8?B?dWg5bXFvMS9PT3J5SklLeXNab2lyaVJaY2dSaHFvM2RXYXRBRUZSNDdWWHdN?=
 =?utf-8?B?RWozUUtFWWFONEo1eG5aNm8yZW5kZkRxMzFtU1ZtaTdYQ3c5anczbUN6cGU0?=
 =?utf-8?B?NENNQURnUjdtTVVXeCsxcHB5dG9aN2xPZEZISDBzUmxpYi9vdnpkdlJOaEUy?=
 =?utf-8?Q?CAaGeRKMVoVa6j4INFwBBon2ITSaWU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTdaa09oOWJxS2Q3MHJjak1qZnFPeTJjOTRRcGhPcUZmU3E0b1d3SmcxNnJT?=
 =?utf-8?B?YXpzS0MwN1VPTTE4bGZORVdueVNVb2FFZWY2aXZDRE5hQ004MEtrVWt6SSt6?=
 =?utf-8?B?bmxiZEdJeWF3L2lRU09lZmE4NHMxajhlOEV4SmhLWUZXNm4wMXUwcGdvSVA0?=
 =?utf-8?B?MzJFU29ZdHRDaUIrRkFpOGMxTWZ0WkRyeElKUURUaU9jdW1lUXJtM0MyaWd5?=
 =?utf-8?B?MnRSTHkzd2FDMC9kTjFWYTZTVUxJbURkclRxRHlhOWF3dk1jdEJKL21OTi9t?=
 =?utf-8?B?ZHZ0TEFlb1Y4ZXVFUEwreXRXQkUrb2xYS2QveTgySEg2Njg5aEQySEEvSmNl?=
 =?utf-8?B?RWNKdmd5VUQ2RGs3czVYTTE2UWlVV2dmL2NWNDZwUTdRTTYvRFJ5emo1USsv?=
 =?utf-8?B?a01IS3FhVjZwWnAvM0dOeEZOQlpYeTRPY2RGRGlvU0lvMVF6ejRqNTJPT01W?=
 =?utf-8?B?alVrYmh0b2R6SEt2OW1nSzlxajhyWkRuU2cxZXhIbXdUUi9hczB3NlE1NmJL?=
 =?utf-8?B?cmZtNFZWb3ZRL0hIa283TTdJbWllSUtVeFFvQVpKRWlyaStqd1dmY2JaYWcw?=
 =?utf-8?B?Tnp0WTdpY1BPcHNnelQwODJnb2ljbUMvT2JKYXVyZ3J1TmJQdXh6WmZhajN0?=
 =?utf-8?B?OXFzQzQ0UHZPeHQ5b2pQTTlXdm5ENitOYllzb3Y4NGxOZUdiOU1Dckw0by96?=
 =?utf-8?B?bWVqRXBCZVYyRjVVTlAwTytIRzB6b0hyaCtzd1o2NWNjOTRmdnVBUGs3NEpi?=
 =?utf-8?B?K3UxYjBzdUxqOWNodThtdVhkc2JZY2RlenB3MVpZRTI4S29KeEttU3JTQWpU?=
 =?utf-8?B?M2NEeXRTQU0yZm4xNys2clJRRjBqL3N6WHo5RUdSVlRjNzNDK3VBenIxeko5?=
 =?utf-8?B?c3FZRnBCdm5YT1RNS0JqUFZ4WmI2SUFkUXpRc1c0Tnl2aE5nOG1uVzRHTzVZ?=
 =?utf-8?B?SUtjQnAzOWlFbzNQMGdxN1l6TTlrN1FnWTJyR09lVi9odmMvSjBHNWlMdEZs?=
 =?utf-8?B?cEcweEFkV2VXbjVTbFVOZzlKVE1nSTMrRC9GVjhnbWlFc3pHaEtVeWUzby9w?=
 =?utf-8?B?MVVUd29XWDlwM1BRa3hHN2hVek1maXNUUFh5UjVreERlSHdxMlFmazIrc1dB?=
 =?utf-8?B?c3JKV01hZTJ0dnJ6ZE1hMVJhOVNmSU1Kek5XSHFSTjZSajRJS0JKd05BR0Zs?=
 =?utf-8?B?RVRvRG8xN0lZb0tjd21KOWkranZ6ZkpNRkpaWTY1NFpsVU1jMmd0V2pDeWp0?=
 =?utf-8?B?TzN5M1p6dXNTVlZqQ1pnZXQ5VjZvUzJxUlh2QWJ0STFpbGthNnpHeFBYUHpJ?=
 =?utf-8?B?S3BVMzVqeEtGQXBHM0p1VXVNSkYzdG9GMWFxS2V0U3JWTGJ3L3JGbEVaQUhy?=
 =?utf-8?B?SzBkSzRwMVcya2N3ZzhPam9MQ0JXU2k4Wnc1TkkveExhaFFnN3l2U0dCeHBH?=
 =?utf-8?B?WXRWbWxVRUh2bFd5L1hlc1hhbm9HSWpHSVIyS2RQOGFmM3ErNGphWFB5YmN5?=
 =?utf-8?B?WDd3UXBwbmUweHNUcWZ4dk1lOTRickNoTjZGakh2VG0vc0REbU13TStxWllV?=
 =?utf-8?B?KzNvd1ZIbjJMbmhUQVM2anN4QUdSQlFLd2NlYWdCYUdsR0hxb3JmZFBISVds?=
 =?utf-8?B?ZjVrUEV2SzVmVldCbVd5dkNMSlJ3YlVWZG1lYjhMMVRIbXNLcDl3bkF0SDYy?=
 =?utf-8?B?QnRnaTZvL3J3QzJQbitzeWUvUmJuSUtmM3hpTHRiUDkrZlhEUVNzTmNPOEVj?=
 =?utf-8?B?aVdBL1hmZ2F1RUFnTXllSlVlUzlNZjVLRzNOQ0hMVUJkSzd2STRKSS8xQzM3?=
 =?utf-8?B?Nks4UnVCaHJ0bzBqN2JDQmZOSHlocHNoQjdrRnlPU3hmU0cyR21LTFdEWkwy?=
 =?utf-8?B?VnhIVEErZncvRWc0WEM2OWlMaUxLb2lHRGVzNjhNa2lhR0hLNjVTMXREMy9v?=
 =?utf-8?B?eHNaUnZucGVmd1paTDIxU2JWWGdDN2tNR2NhNkFCRXcvSVVGT29FekxnSGgx?=
 =?utf-8?B?Y3NrbjNmTS9ONGZTVUJTVWlGdXNSZUxQOGJUdHpodmJUNGpOMWw5TjJOT3N4?=
 =?utf-8?B?M1ljemF5akVUSWZqbCtoZG5MWkQ3TFJwQ0V1ODhXQnJTdnlaaVliWWlwaitJ?=
 =?utf-8?B?MFliZXhaRDMreXhQc09TUlJMWU1mWDdmYW1UTzErbE5pZHFPR1JvdVF4MWJM?=
 =?utf-8?B?ZkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b53e283e-f46c-4783-1a3f-08dd995ce202
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 18:17:16.3992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5RIOIWNsqVtXNwnizjKYU9zTpnhIORJ3aj9n4mEdCzg2F5tO5Mvmj8CxXDfGzBVSUY+9gfzpZYAXEQoOl8BalDku6tnqsi/p3SuqcSy0kRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4525
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747937868; x=1779473868;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s3Dnz9OThx3YaLTEdTeZlcNXOEmaOUkXVNSWwQwCO5A=;
 b=R5OSK5cAUyzbqs6+1Ib5+VvUykIevTUgQLrj4VwjdX4rzqmVxfHAVZSw
 zZNJHIjI7XEY6zThGdED4tczfPnCnU16v3hB0qmd7KRq5a0YSW2DU2yw1
 iX5lnG2Up483x+YSKR3TcxtSCTwANOmu+MiXGmmA02I3dp1dJRRrtqgmA
 00if9UGDst2I8LebklxC1wOuofc1j5tEwAWxVHgPM62OzP3ubs/N3Qciu
 YquJPlCv8t6yJYqzC4RhyljVWRb878CniwYZs5wx09PrzQlpHrLWHh/Q1
 G/P0PMEVwQhwjoM1rCacg9avHYpjK07eOP7/Kxxzo5gHU5jNu2cwC/SdG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R5OSK5cA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: move RSS
 packet classifier types to libie
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogTW9uZGF5LCBNYXkgNSwgMjAyNSAxMDoxNCBQTQ0KPiBUbzogSW50ZWwg
V2lyZWQgTEFOIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz47IE5ndXllbiwgQW50
aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldiA8bmV0ZGV2QHZn
ZXIua2VybmVsLm9yZz4NCj4gQ2M6IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz47IExva3Rpb25vdiwNCj4gQWxl
a3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYyIDIvMl0gbmV0OiBpbnRlbDogbW92ZSBSU1Mg
cGFja2V0DQo+IGNsYXNzaWZpZXIgdHlwZXMgdG8gbGliaWUNCj4gDQo+IFRoZSBJbnRlbCBpNDBl
LCBpYXZmLCBhbmQgaWNlIGRyaXZlcnMgYWxsIGluY2x1ZGUgYSBkZWZpbml0aW9uIG9mIHRoZSBw
YWNrZXQgY2xhc3NpZmllcg0KPiBmaWx0ZXIgdHlwZXMgdXNlZCB0byBwcm9ncmFtIFJTUyBoYXNo
IGVuYWJsZSBiaXRzLiBGb3IgaTQwZSwgdGhlc2UgYml0cyBhcmUgdXNlZCBmb3INCj4gYm90aCB0
aGUgUEYgYW5kIFZGIHRvIGNvbmZpZ3VyZSB0aGUgUEZRRl9IRU5BIGFuZCBWRlFGX0hFTkEgcmVn
aXN0ZXJzLg0KPiANCj4gRm9yIGljZSBhbmQgaUFWRiwgdGhlc2UgYml0cyBhcmUgdXNlZCB0byBj
b21tdW5pY2F0ZSB0aGUgZGVzaXJlZCBoYXNoIGVuYWJsZQ0KPiBmaWx0ZXIgb3ZlciB2aXJ0Y2hu
bCB2aWEgaXRzIHN0cnVjdCB2aXJ0Y2hubF9yc3NfaGFzaGVuYS4gVGhlIHZpcnRjaG5sLmggaGVh
ZGVyDQo+IG1ha2VzIG5vIG1lbnRpb24gb2Ygd2hlcmUgdGhlIGJpdCBkZWZpbml0aW9ucyByZXNp
ZGUuDQo+IA0KPiBNYWludGFpbmluZyBhIHNlcGFyYXRlIGNvcHkgb2YgdGhlc2UgYml0cyBhY3Jv
c3MgdGhyZWUgZHJpdmVycyBpcyBjdW1iZXJzb21lLg0KPiBNb3ZlIHRoZSBkZWZpbml0aW9uIHRv
IGxpYmllIGFzIGEgbmV3IHBjdHlwZS5oIGhlYWRlciBmaWxlLg0KPiBFYWNoIGRyaXZlciBjYW4g
aW5jbHVkZSB0aGlzLCBhbmQgZHJvcCBpdHMgb3duIGRlZmluaXRpb24uDQo+IA0KPiBUaGUgaWNl
IGltcGxlbWVudGF0aW9uIGFsc28gZGVmaW5lZCBhIElDRV9BVkZfRkxPV19GSUVMRF9JTlZBTElE
LCBpbnRlbmRpbmcNCj4gdG8gdXNlIHRoaXMgdG8gaW5kaWNhdGUgd2hlbiB0aGVyZSB3ZXJlIG5v
IGhhc2ggZW5hYmxlIGJpdHMgc2V0LiBUaGlzIGlzIGNvbmZ1c2luZywNCj4gc2luY2UgdGhlIGVu
dW1lcmF0aW9uIGlzIHVzaW5nIGJpdCBwb3NpdGlvbnMuIEEgdmFsdWUgb2YgMA0KPiAqc2hvdWxk
KiBpbmRpY2F0ZSB0aGUgZmlyc3QgYml0LiBJbnN0ZWFkLCByZXdyaXRlIHRoZSBjb2RlIHRoYXQg
dXNlcw0KPiBJQ0VfQVZGX0ZMT1dfRklFTERfSU5WQUxJRCB0byBqdXN0IGNoZWNrIGlmIHRoZSBh
dmZfaGFzaCBpcyB6ZXJvLiBGcm9tDQo+IGNvbnRleHQgdGhpcyBzaG91bGQgYmUgY2xlYXIgdGhh
dCB3ZSdyZSBjaGVja2luZyBpZiBub25lIG9mIHRoZSBiaXRzIGFyZSBzZXQuDQo+IA0KPiBUaGUg
dmFsdWVzIGFyZSBrZXB0IGFzIGJpdCBwb3NpdGlvbnMgaW5zdGVhZCBvZiBlbmNvZGluZyB0aGUg
QklUX1VMTCBkaXJlY3RseSBpbnRvDQo+IHRoZWlyIHZhbHVlLiBXaGlsZSBtb3N0IHVzZXJzIHdp
bGwgc2ltcGx5IHVzZSBCSVRfVUxMIGltbWVkaWF0ZWx5LCBpNDBlIHVzZXMgdGhlDQo+IG1hY3Jv
cyBib3RoIHdpdGggQklUX1VMTCBhbmQgdGVzdF9iaXQvc2V0X2JpdCBjYWxscy4NCj4gDQo+IFJl
dmlld2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
DQo+IFJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IFJldmll
d2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IC0tLQ0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFub3dz
a2lAaW50ZWwuY29tPg0KDQoNCg==
