Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC26942DE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 14:14:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D31F040DD1;
	Wed, 31 Jul 2024 12:14:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a0KGFUPb4jEn; Wed, 31 Jul 2024 12:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80F2840DC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722428086;
	bh=vcE8HPY4SzHbMP2jnlBGjv0DmVFkFyZEm0zOX1iNmTU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZEJ+Tr6z0JyRH683M/dn3GON8GsBXlh3AuWzJ2X/SKgZl2++zclp/lLenytVgaId
	 Art1P5+EmaIE/WvS2MvXposyHKi4djr9I7Ue82MfaPq5S5V1GowqRsO4P/2XR9+RvR
	 REHqM8I/WGtt9IG8mpemtfuDxuL2e0W0cjzsrWRaiOOGBYOpsBwu/Tf5g6YpDUAZXJ
	 Eyh8j41tU0E5RDkNy4ZPdy7HCr2jkuH4kd6CPiHl84uWmbls9jlw29XZvjQ4pL79mZ
	 59l4U/3afY4Z6qsr8v4FPKtrlYAcNfJrooCiqaPeyhqlUkkzk49O5K06cONorCSF1T
	 aNbJPDwKpcpcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80F2840DC1;
	Wed, 31 Jul 2024 12:14:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 065531BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 12:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E592280BED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 12:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id swP0P7MQDhFZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 12:14:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C551980BA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C551980BA1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C551980BA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 12:14:42 +0000 (UTC)
X-CSE-ConnectionGUID: FUgDd2N8QeiV8tHyqN2Utg==
X-CSE-MsgGUID: NvASP95yTLmuoy4eN+DpGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="31707553"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="31707553"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 05:14:42 -0700
X-CSE-ConnectionGUID: ATIeJBbPR6iXiof9lT66NQ==
X-CSE-MsgGUID: QHsx38nZRkawdD2M4PlhIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54725197"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 05:14:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 05:14:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 05:14:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 05:14:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GzFR9NlNRjmXUVvUC0gKWbHJE3mHtizczDCk3I0If+9GCB9Y1j5Ccsg9NmDdhW4cN1HRhgH2zFOvKHq+3sgTV7WjDn9Ld0SaVuaIiPSZ6bjUv4qp3w6pJvXo53yEgKq6phc+P953oFE3Qm0+AOY45nFtIRmyucI8reMOowXU0cQsjImlxkaCR9jMwd24IZTzzGwVoJBNSMw4OjE2W+/BYY9ogaIMOmy68+0CTMt5XWkwOEZCm/aI/Io7pUEtEdlN/NfEK4WXRQMk9EEtjpr5eyzYZG4Rv3nVbe1fewWpvu0gaMeApmDjKpWm3+jLjI5TsNSko2plTA0oxuL2yiGITQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vcE8HPY4SzHbMP2jnlBGjv0DmVFkFyZEm0zOX1iNmTU=;
 b=GzbVhi5mL/ziyEppkbzk39lzuaXiLRybhKGHVqaq55m2ePcMwkAaBCkj6rymMrasu+04HSGSpsSTlsek+4YK8iY7R2FhY9PI2FHRLYhEZ2Ne7VqgtDQUcl6I4Wxk5F1oNdGpHhYlvNhRXr+2YdHiPYN3vPhEsfevbuZe3xvgH2Msu33qOu7u3NgkDz1/FF/UOpFzCtSPejSJIBcvRKVPIeDB9cEQfz0O0qHFdI4NkvpJUZe71TZdhWFAD2yuglxiZKijbvOFedvrDYNRm2PGpCi3+/hyvlRh5oObM5i+lcgvepvP4jLADYDj20iF/PzQd0yEC9jQkxekGusofx2Z6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA1PR11MB6566.namprd11.prod.outlook.com (2603:10b6:806:251::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.26; Wed, 31 Jul
 2024 12:14:35 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7807.026; Wed, 31 Jul 2024
 12:14:35 +0000
Message-ID: <d498996b-50af-461f-bb8c-03531ae7a2cc@intel.com>
Date: Wed, 31 Jul 2024 14:14:28 +0200
User-Agent: Mozilla Thunderbird
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
 <a3682c39-054e-44f7-80c9-b181264c2413@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <a3682c39-054e-44f7-80c9-b181264c2413@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0321.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:87::18) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SA1PR11MB6566:EE_
X-MS-Office365-Filtering-Correlation-Id: af78dc82-349e-42ce-5270-08dcb15a578d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VkFaOTV2ZzA1ZmdkQWVobHIwK01aSnpLYzRPbjcwdXlEU2h4dVlORnk5WVNu?=
 =?utf-8?B?NEZxaStaRW9OSjlJbXhvZnZiTmMremlxVkxBczhJSzh2ZVdIZGlmU0RFdElR?=
 =?utf-8?B?YlI5MVJTcXhwbXhTdC9zbCtoTTArT0JWUkNzZ3JyM1hzODdHZkpNblB4MERp?=
 =?utf-8?B?SzYyY1o5UlhHNE9CbzhOck5IMFYrQytva25LWERCYTU3ajllenMrajRzaFVN?=
 =?utf-8?B?R1ZUY2ZqVGNmUUlwWVU1dDV4dFFEMDNGdlpPVkZZUmVnV0tVQXNrRTVHYWhF?=
 =?utf-8?B?V09mekV0eERjbDAzZno3NENsZDNoZEZNSnhwOXpXWGxCSGJ5azFONTdKUjIz?=
 =?utf-8?B?K3VabzVSa0tPa2dUMXY0cm9mZmxYaXErYWx5SHRnME43M1RWTE5kcEZCQUkz?=
 =?utf-8?B?RXNkNXk3bE1odDY0SHN1TnY4OUhheHZXMjFYd0NVV1l4Z2VaU2FTcnQvQmZm?=
 =?utf-8?B?Rm1mZXFsSEZXbG1WY0JxSFRuOXB5TXYzSDF4R2NweDZqT0lPODdsRk05VXk3?=
 =?utf-8?B?c2NDbFNReDMyRm1hMnl6dUZTbUF0KzNZaTAydXpGZ2xtWGJ0MTZEUTdlTGdC?=
 =?utf-8?B?dzVIcnYwMlN5NGxKWUZXUGdGOUg0Y3FlUHBnWFZFU0RjWGllMmNJMGF6RlBK?=
 =?utf-8?B?SnVvci9BTU5kV2o5YVpKVWVrMFVSZHo0NGNGbnV6YTdjd1orMzZFV3JDdjlp?=
 =?utf-8?B?NjMybnByN2lGZlBkczJsaUk0R0JkcGFQblRjWXJQZnYwU0swcGFpdHRhcUpu?=
 =?utf-8?B?dWVrWUJvSmUxVHZFZTJManlZcDJWMVJtUGNBeDdLWFNJRXB1NmFYNjNkSy9S?=
 =?utf-8?B?TnY2S2hKZjI1SHJsL3ZFVWpjdzRNWVg5OUIxTXlOZE1PRTlzRXdZRnFWSDR2?=
 =?utf-8?B?eE1Id2xDNFpwOEExNkhxVFdROTExT2lwUUFYRmZMOC9sdEpBK0kxRVF4b2dN?=
 =?utf-8?B?ZExLcFJxcWtuR1h4QmFka2tLNTJtcjhZMHZmYnU2Tzg2K1ZwVVpwY3FqZlF3?=
 =?utf-8?B?NEdra1F0RnRPVlBsdWJlenRVbzM2NGZiSnMzQ2tPcW5Sdmo0NmhYK2VEaEx2?=
 =?utf-8?B?bGx5RUtEOEpWNVVrSEhMV0EzbG0zN3Y3V0JrSVlwMk1IcXZBdk5FdnA4QlB1?=
 =?utf-8?B?UTI5OGV6aGRIdnJkYnZQZFZkbEM0M2wvalFxQUpaSEZJbWxwU1hMYzVIdktH?=
 =?utf-8?B?Ulhsa0RLeE55OUR3aTkvWFNhSVhWRUd3dEtCeGtXRi94ZmN0QmVsV1BIRjV6?=
 =?utf-8?B?MUFKQVN3TFBRaVNGc1R3azBXdzBHNXJLendYdFhVOU12Q0ZCVno1UDVvTEt0?=
 =?utf-8?B?RzVQeW0vQ05hSUhueHJHN2dEV0ZoMVM3NGVkb2xwMFFjaVE4S2RFMmRTZ1Av?=
 =?utf-8?B?VDBsRHRHcmp0R2M4NDJoTDZVZUlKeHNyZENsWENZYXFpQ1BiMFhNcHlGcmVJ?=
 =?utf-8?B?RkJYelVoNEd0MDk4cTlPZVJLeEdWM1N3Q0l0anBnRlR6K3ZZaWtLbHN4S1B5?=
 =?utf-8?B?aHdWb21ZSjNjSk8yNHBKdEhYcFd1T1NwdWpEd3JTa0tDR3lPbVNNT2sranFh?=
 =?utf-8?B?cENOVkxDaVV2RDIwNG9RLzJ1MklVa0Y2MHRkSWxDMERYbGoxQUNFUkIyUlZB?=
 =?utf-8?B?aCt0eVBwOS9wcU1xMndsdjdxakJ0UDhBYWxuWGw0b3l6RnFNMEF0a2xTM2M2?=
 =?utf-8?B?MDZwS0tsUFdYbXYzUzRMZFpyTU1yaCtlNjh0cDhpOXdOYWhEME5xUUE4c1Fu?=
 =?utf-8?B?ODE0M2JRaXNrSWtZZmt1OTZJVmFEYit1ZTV4VnIyWWxwVWxOMmhTSmdBOHdw?=
 =?utf-8?B?eGRsc0E1MTdMKzZjR2ZHQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWhWYVJNTHNGODJHUlJtK0J4Tmt1SnVpenlXTklTQzF1cGw4bU8zMlhsMjlV?=
 =?utf-8?B?TFNYUnQvWHptQTlBdStYbElTRldXVUdvTE5MTHpONnRQVDU2RGtDYXNDMC92?=
 =?utf-8?B?SEsyUmVQWVJzSnh3L0RKakpQRGlLdC9STVl1OHB2ZEVMTWRlcm0waDQzUThH?=
 =?utf-8?B?OVNNRXdvUlZRVTYrVHpKUzZING0wZWdtT1VkbnpWYldlUzJPYXR5RmVJckx6?=
 =?utf-8?B?Y0M2bUNuR1RIRXhCRVdINnRlc2xhR2E2L3pneGZqdU12QzJldFhKN3I1a3la?=
 =?utf-8?B?L1phbmhLNjJFRC83bGRLdUFLLzNoUHNGa0NMOFhqUDJkMXk1WkZYYkJrcFYy?=
 =?utf-8?B?RlZhTjNaUmZvbDhBeFBKRDBWdzFsdmM4L1FNd2FFMDN6M1Y3KzBVNjRGNS9n?=
 =?utf-8?B?VnBkMURrajlRd013eWtnNHRNS0FyYmpEUEtKbHJqUkphd0ZVdzI1Uk51ekd0?=
 =?utf-8?B?QUw4V1N5MjNuRGhsR0xlZ003NEg1V2twVlh0QUhySzEzQUdnOHJib1dhM2hE?=
 =?utf-8?B?QWZ4RU5EWWd2UGZxM0IrSjVnVlFaK002TjVFd2RmM1h0VEVEMmZOb1JGckQ2?=
 =?utf-8?B?V1dmd0JoYW5XdG9YSCtTRXlwVkdsb0F2aW9DaHhOVWRYcEszcjZyNk9wcEVL?=
 =?utf-8?B?c2pnL1crWmJwMGFQMXZyRlhxTzJrcmJMVHhjOUI2WmI3U2VIQ2NIcG9BaUdN?=
 =?utf-8?B?UWlxWEFaRkJJWjBwS1doQmE3Z21xUjE4ZFpWNjVubyt0V3RLRm9PaVQrRU5W?=
 =?utf-8?B?WnpEN2NmZGRnb2RxZzZqd0FGbUVVc0F6czZHUnhsWFlJT2tQZHhFV0poUUdL?=
 =?utf-8?B?R2g0NWJZOFA5OC9zZE81RUljVGZuemxlWTZOdjBaemFHY0FLWGROK1ZEWkJp?=
 =?utf-8?B?cG4zeUcrbHBCZGFmdUJQaVhUdnMwc29YTy80VUg5M1FIMEVrY3lWcEhkYVJO?=
 =?utf-8?B?dVp5MTFuWVE4YXNUSVVnT0cxWWowRFU4ZE1EUkJUR1dXMUdNZVNYejB2aDdl?=
 =?utf-8?B?U295c1RaUVpKN0I3V0NSelU3b2xVVE1iNGthb0puTWNNZWlLMWR6MEx6bnlE?=
 =?utf-8?B?RVhJU1NldnpJUnFZbTJDZS9DY1JHaEhodng3VENPZlp3aVZCLzR3VmNuTERS?=
 =?utf-8?B?VWhqcG5rNlpVZXVKMXZ1YnpTL0dzYkJyQk5UOGUrbktqS0duSXdES3lIVitC?=
 =?utf-8?B?aVpYQzVJV255bE1LT0YrR1pNZjZGWGY3WFhzWG42Sis5WGUwNk1xTXBNUVhX?=
 =?utf-8?B?c3VIaDBhWVdIZlFBZHc0ZFlWOFF5UzlKQkdvZkJ1VFR6YzZlWGZ0SlFNZnFp?=
 =?utf-8?B?TFRtcFFzdEtLN1pKNnJFVEhNUjRuWnFNU3hqYUF3NkFmUEdJYlZBUDh3YU9L?=
 =?utf-8?B?ditNU2ptV3ZkTEFrWlVtd291SCtDZnl0TnpIWTVhclhoK2hqVEZneTBHb2pz?=
 =?utf-8?B?VWk5NnhVM283MHpYYmlvSHN4aWw0dkYrRkFobERROE5kK2dQU2E2RlBrYzZP?=
 =?utf-8?B?OHJZRVF3Um9iOE0rSVhUTjNad2lUcnVjWkJUQUNIUkRKbWFTL2FUdnRwb240?=
 =?utf-8?B?VE1WMEpwMFVxLzArTW5USUVtdEEzSTFhbEFYenlWSjBGdENWUFRDSkc5NVVy?=
 =?utf-8?B?dlBJV3VNOGZzVkdaNUs2TnlVS0NYVi9Wc3VJZzRCVnF2Uzg3UjlVNmQzOEZK?=
 =?utf-8?B?K2RtYjR3SmJaMEx4dHBFTnJPU21zdlpJdklDaENWcERqMDd0aFgrQ1ltcFBl?=
 =?utf-8?B?Wm96RGtXWDVNemZOMkJ5Y1VabHlVS1VtSWVJZW11SVRNLzJwSkZMeklFT3VF?=
 =?utf-8?B?d1hHT2UwYXIweTRtMS9pV0pyNlZEbVBJcHcrSmNyN0dBeERnOWpCQW5Ualhz?=
 =?utf-8?B?OWRGd1RTaXZrZWQ2Y0VUdXpDS2l0cDhEZ3M2NVA0NGdWZE16Tit2SXMxYlBK?=
 =?utf-8?B?UWZpaFpGaFdKRGpUVVNQRlo0R09RWmlrbVhFYSt6YjBFRXhNdkcvc1F0cXMy?=
 =?utf-8?B?Z2NzQzRHV3BtWlpuY1RMYnZib3gyV2xNd0NuTmJvald4bVBURFRUaUdqWG1l?=
 =?utf-8?B?UjQxSXViUlBvYmZzbitDVVlTeHVHTjZFZWJWaThkc2RQbGcxL004NVFBb1Fr?=
 =?utf-8?B?UlhQQmM1MlZqRjEvQUZUczJId0tVNE1xMnk1dHBEaWJqNjBST01NNXB0RnUz?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af78dc82-349e-42ce-5270-08dcb15a578d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 12:14:35.6296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zGSKowwJdVL8bv5C/1Oc5jWEwVwWqsoyef+XNINXlCADN96eWuPDAWdEiNJ+6mPf5KlezUki1siW0r2u5jETNegem9ILlWcpUmb27YjQs2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6566
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722428083; x=1753964083;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d5JsgWHUrFbjJtmn/AR+C6lG6Pe3zkRoXaHADFxqvGU=;
 b=ZgOYzclqXSyArAWPcGAcBrTK0aHDgxq3uryvCVeFqbCiocYXFZsB2QDl
 w13YhMczEO809ieTYtdyyTpN5VjtO1AXlZ41Yj6dJXa1crNmd2pdACLJX
 bdppP5l3J/k67JW0cUVW8BZH5AMmvhA53amUvzcAmdFWJ5BKK6NqT6cel
 u8GuC2PFQuR5Qk7FfPFX+WTTd74kBvanFCnrbaKCh8XT5vom6rPvZhYQL
 m1TO55gARjPQxjXGLfSeJ5kDS7CJrh7j4KhnQDCKun0ZJt/Ayjx9EwfMt
 cTAnHP24VRHzFzt5OfL1+bZODB35C6KehvUgZEi0H+/RO/Vfp3Vqh0SNh
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZgOYzclq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <horms@kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 31.07.2024 10:22, Kitszel, Przemyslaw wrote:
> On 7/30/24 12:51, Wojciech Drewek wrote:
>> Enable ethtool reset support. Each ethtool reset
>> type is mapped to the CVL reset type:
> 
> not CVL, perhaps "device" or "E810"

right

> 
>> ETH_RESET_MAC - ICE_RESET_CORER
>> ETH_RESET_ALL - ICE_RESET_GLOBR
>> ETH_RESET_DEDICATED - ICE_RESET_PFR
>>
>> Multiple reset flags are not supported.
>> Calling any reset type on port representor triggers VF reset.
>>
>> Command example:
>> GLOBR:
>> $ ethtool --reset enp1s0f0np0 all
>> CORER:
>> $ ethtool --reset enp1s0f0np0 mac
>> PFR:
>> $ ethtool --reset enp1s0f0np0 dedicated
>> VF reset:
>> $ ethtool --reset $port_representor mac
>>
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 64 ++++++++++++++++++++
>>   1 file changed, 64 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> index 39d2652c3ee1..00b8ac3f1dff 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -4794,6 +4794,68 @@ static void ice_get_ts_stats(struct net_device *netdev,
>>   	ts_stats->lost = ptp->tx_hwtstamp_timeouts;
>>   }
>>   
>> +/**
>> + * ice_ethtool_reset - triggers a given type of reset
>> + * @dev: network interface device structure
>> + * @flags: set of reset flags
>> + *
>> + * Note that multiple reset flags are not supported
>> + */
>> +static int ice_ethtool_reset(struct net_device *dev, u32 *flags)
>> +{
>> +	struct ice_netdev_priv *np = netdev_priv(dev);
>> +	struct ice_pf *pf = np->vsi->back;
>> +	enum ice_reset_req reset;
>> +
>> +	switch (*flags) {
>> +	case ETH_RESET_MAC:
>> +		*flags &= ~ETH_RESET_MAC;
> 
> this line is equivalent to:
> *flags = 0;
> 
>> +		reset = ICE_RESET_CORER;
>> +		break;
>> +	case ETH_RESET_ALL:
>> +		*flags &= ~ETH_RESET_ALL;
> 
> ditto
> 
>> +		reset = ICE_RESET_GLOBR;
>> +		break;
>> +	case ETH_RESET_DEDICATED:
>> +		*flags &= ~ETH_RESET_DEDICATED;
> 
> ditto
> you could just move *flags = 0; after the switch statement

makes sense

> 
>> +		reset = ICE_RESET_PFR;
>> +		break;
>> +	default:
>> +		netdev_info(dev, "Unsupported set of ethtool flags, multiple flags are not supported");
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	ice_schedule_reset(pf, reset);
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * ice_repr_ethtool_reset - triggers a VF reset
>> + * @dev: network interface device structure
>> + * @flags: set of reset flags
>> + *
>> + * VF associated with the given port representor will be reset
>> + * Any type of reset will trigger VF reset
> 
> why not to support just one type of reset here?
> (that would left us with future option of different behavior on
> different reset type requested)

Agree, I'll use dedicated here since it is similar case to PF reset

> 
>> + */
>> +static int ice_repr_ethtool_reset(struct net_device *dev, u32 *flags)
>> +{
>> +	struct ice_repr *repr = ice_netdev_to_repr(dev);
>> +	struct ice_vf *vf;
>> +
>> +	if (repr->type != ICE_REPR_TYPE_VF)
>> +		return -EOPNOTSUPP;
>> +
>> +	vf = repr->vf;
>> +
>> +	if (ice_check_vf_ready_for_cfg(vf))
>> +		return -EBUSY;
>> +
>> +	*flags = 0;
>> +
>> +	return ice_reset_vf(vf, ICE_VF_RESET_VFLR | ICE_VF_RESET_LOCK);
>> +}
>> +
>>   static const struct ethtool_ops ice_ethtool_ops = {
>>   	.cap_rss_ctx_supported  = true,
>>   	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
>> @@ -4829,6 +4891,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
>>   	.nway_reset		= ice_nway_reset,
>>   	.get_pauseparam		= ice_get_pauseparam,
>>   	.set_pauseparam		= ice_set_pauseparam,
>> +	.reset			= ice_ethtool_reset,
>>   	.get_rxfh_key_size	= ice_get_rxfh_key_size,
>>   	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
>>   	.get_rxfh		= ice_get_rxfh,
>> @@ -4885,6 +4948,7 @@ static const struct ethtool_ops ice_ethtool_repr_ops = {
>>   	.get_strings		= ice_repr_get_strings,
>>   	.get_ethtool_stats      = ice_repr_get_ethtool_stats,
>>   	.get_sset_count		= ice_repr_get_sset_count,
>> +	.reset			= ice_repr_ethtool_reset,
>>   };
>>   
>>   /**
> 
