Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 525EE8CBA57
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 06:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD981405C3;
	Wed, 22 May 2024 04:28:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rl92QgebYvhA; Wed, 22 May 2024 04:28:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C7940545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716352127;
	bh=QnTILEZmhEdndxD2Frk60Wt1H9QSUjE2eWPKYzUfN7k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F5fHUdrNsbH/GzTDfRUpFwFkoN7lRqT+HEPjUCO4xqIZEj7oq61glJqtkvBrJOoOk
	 VuqjWUCk3PDfr9CWcBar35lPtLY9OLp1pDtd+sPVz9Pa5yGXme2A864Lpy6J5m/fHZ
	 u1w3QosRYMSxhk7zJWwbDuYuxdfBxcMmiQGKZKijjBXsgj5oSVk5HogYjSk36qafVV
	 EiX9tUtwrZI277qcb5o35Y4vV6BM1p/3LO1elOhBAr/pvt7Mva1AsYh1RBGXngXLTX
	 p+UY1GoxWSl9bCwf5YV0hHrVHrdvuOH0YpRMq+9px95qKyjwLWdhaGmeedmKhkD0eV
	 9bw931W3VYtKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0C7940545;
	Wed, 22 May 2024 04:28:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32DDF1C5744
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E3C8402F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:28:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NuCMy8UHzhgS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 04:28:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C416E402F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C416E402F0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C416E402F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 04:28:42 +0000 (UTC)
X-CSE-ConnectionGUID: FAtUUXR3S8+cud3ghjuRRQ==
X-CSE-MsgGUID: RtTTIfKAS9ybu+xNjwDWRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="23192373"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="23192373"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 21:28:42 -0700
X-CSE-ConnectionGUID: jmNQ7cwnTteqQXr36JDAyQ==
X-CSE-MsgGUID: bTYeV0KeSwy1j5QCYPfnbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="37632421"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 May 2024 21:28:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 21:28:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 21 May 2024 21:28:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 21 May 2024 21:28:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ol10qvZGrPNwYVcqBDVtSXurXjDi3JEM0YRqAARe3PjECnoR4fSDcv41IJJz4PcUlDWcidpA+LBf3cjSXhVplMik6D8l1G2mr+zq5TEc7a7nUc6tVoVf9lLDhMkpjpQYnEpaDNk1K3i8fTl+53vd7SepwIAhnJLclK73X9/gA7kuD1B6wj6TgNqSN1zoB65JMfDcmV4R7NYkmm2cHBCISn9PRiW+RFLd5oFydqLQFnRhGkmBaU9qYx+ZBxDycGmuAcTqLSmYd9bhquIe5SWGGEGUZaI+k6OrJY2IQ3n78VopFwMRdsOoe/3JVUFWlsIvqjAePpJt5iwIjGc7WEeG/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QnTILEZmhEdndxD2Frk60Wt1H9QSUjE2eWPKYzUfN7k=;
 b=IjGIrGuPtoeKmY0TYdGSPTqhJpmAvTI2s3vtnt+G4VkkhdkYWo8ofOwY7eipTDmr7fPn71R3gWJyS3xSzbQq1+BI419boUbmca/OQBscd4/diKhkKoShk4P7lXtJWFChDmMrHOssj4/A8Vfd1XHCa17P2690mm+prux87gelppdeHG2hr9YvexBeRiDe79YLIz76cLt98X0sR30mvuKW8jtUbFhN/rRz34+EimKspcv+PriDdu6stL0XotGES/QpZ311PuTh9p8rCoB33RsZtS3qZm27jgH2/TfBVpiKx2U0OTO5V6D+8NhzaOA4GLILvb0BnGWMIFZV7TyNuuImVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 22 May
 2024 04:28:35 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7587.028; Wed, 22 May 2024
 04:28:35 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix reads from NVM Shadow
 RAM on E830 and E825-C devices
Thread-Index: AQHaqv5R4K7o/ouN6kek6/4Hc/2Wu7GiqnOg
Date: Wed, 22 May 2024 04:28:34 +0000
Message-ID: <CYYPR11MB84291C6228586BBAC50194F4BDEB2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240520-iwl-net-2024-05-16-fix-css-hdr-len-v1-1-7607a0752b07@intel.com>
In-Reply-To: <20240520-iwl-net-2024-05-16-fix-css-hdr-len-v1-1-7607a0752b07@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH8PR11MB6753:EE_
x-ms-office365-filtering-correlation-id: 6e3a8e25-7a80-403e-20be-08dc7a17a4fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dzJEb1FaQlZzMGF6MU5JT1N5VVNrcTViQzBVTEVDelBQand1SkJGdDc2bHZH?=
 =?utf-8?B?U1gza0M5alQwS1RXSlNwV2FxaHRpZ1FxVTY5ckh4bWp1SVN5QXpUWFh2MC9E?=
 =?utf-8?B?RDQ4ekVTNjh6RkludmRLelA4S1kxVnZiZFBabHZJZEJZOTVvSzFDN2xQRUp3?=
 =?utf-8?B?TDdEbDZmbVhTc09BY1E1TUpvNjA4MmtYTjJvQ2JzNkZMOGVNU2RWUmkwY256?=
 =?utf-8?B?cGZLc0JPWXM5UzdmaGswcC9WOG9ZSVdPZWpiRk1WZkl6QXV1ejJLTWUxNllU?=
 =?utf-8?B?aHM2bkQyd1ZBS0lncE5Lc2hob1BNU0VpT1VhZzMwZ2lOM2NzVHBxYnZCdDdR?=
 =?utf-8?B?aTV3Z3ZnYzAxMHFxMm0ySmdJaTZpbFVadmo3YjhIbzBDMFpPMDgrRk1HYXNK?=
 =?utf-8?B?OUpvZ0tYUFl1dkRWQ1RacXpQZjJOc0dock9jUDJRMzZBMkgyZk01RDVDRWtj?=
 =?utf-8?B?TXo2WGNDNnhoMXd6Rm9wZDl5STZyWVFsUWcvNXV2TzdUQ2NSV1JlaHJpSFYw?=
 =?utf-8?B?dHQrM0RNQW94TlcvOWdzaFQ5Y1ozTnloR2N0OUMzNFllMjgzMEcrYjBwYjJa?=
 =?utf-8?B?QlJtWWpuZjZzU3c5U0JPb2ZHN01xb2xFSTJXZ1BzY1paRjVWNklzMVpqenpn?=
 =?utf-8?B?NkEreVVwUWVQY1VKaTdCUHVTQjRBMzY5aFVNRHhDMDBTVW9yMzlkNENybGg3?=
 =?utf-8?B?ZkRTRUZwYW92Y3dmd0xydFVvSXFYNEVTWGJJcVZtK200OTZGRnJTdC9OTTRJ?=
 =?utf-8?B?OXcxM3o3Nk1OYlVCZEpVSEZaQXA3VmlIbElJYUx1b1hnOGs1ZjNFejhjR1lL?=
 =?utf-8?B?L1VrdkRkempOTXFsYWFyUVJQNmg0bGIxSjd4S08rMFlmN3EyZWpRemRmTFY0?=
 =?utf-8?B?Mm5Mai9zdk80RHdkUWYzRXNRekpEWEJkTHpYWXJjU21pVDlBSWgxMncrTkI0?=
 =?utf-8?B?aUlhS3o1clNSS3hwbGFsQ2xsRnRJUW9XbXhIN2VnM1NQT2VrY3NxcUxRcitO?=
 =?utf-8?B?MERCWFFtbEpsTHR1bkN4Q2JKV3lyekhlcjc5MnltSlY4Tk1iRGVaLy9uVlpL?=
 =?utf-8?B?UjNKQmVtQkJSNEdLVDFhM0tvQXhvRVpqcFFpTWxnZjBTOGhBaFJ3WmVMTng3?=
 =?utf-8?B?Z2RqT01Ha3VFRWlzNlRuL3JtWXhVMi9nZHl4QkVIQ3VlUW4wNm02SXpkUmNM?=
 =?utf-8?B?a2l5VXF5bUtnMEZod0NMMlBDaDd2QjdPbG1wQmZaS2ZaQlY0YVZWSGduWnhm?=
 =?utf-8?B?Uk91eThnenBReTdCYmJwQnYxRG85Y2I4bGx0VENKOFVHejNmUk9wSFRTczFu?=
 =?utf-8?B?aTYzU1BOby9NSDRieGs3MG1MR2xTRDlhUDZTYkZrRjlGbjdzWnViT1hSK2Mr?=
 =?utf-8?B?c2lnWDN1RHB1eE5PcWFEUldNUEpORWp1M1hoc0VudnJTNWtJSWxVNGdBRG4y?=
 =?utf-8?B?aGhLdEE5ZmNBYmRqVXNZUy9pSytLOVIrNi84UU44RDJ0M2pGbURhbCtoN1li?=
 =?utf-8?B?ZnhrdjZnY3FlWGFROGJvR3hkclEwNUtISm55Ynk5Y2FUbVBPMDRwU3ViN2FH?=
 =?utf-8?B?c3hCWnZoZkxraWE3S0FDWTZtRVlDaVZsSnlnS3ZiWTJHSDBPZS9LR2g4QWVS?=
 =?utf-8?B?bm9GcGJHZlQxRlZveWFUUXFIN3luVE5MSFlSZ2kycE5KcUJkWFNIZzFtOHph?=
 =?utf-8?B?Tjdib2tzY21QQUt3RFRZUUs0RVdlOFJ2N0VGbkhpbithU0NMalowZ0NlVXlo?=
 =?utf-8?B?ak9NWUhQOFAyeStDZ1NhTXZBVWk5Q2prTVNBSW5oajNwcHhBdkx0eG9kbXFM?=
 =?utf-8?B?T2xzZ3VjQW5hcnM5Ulkydz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUZRUnNnZlhDalEwZHdRcXl4TEVxQkpmYXBPWW5RSzlhSS93VDFIN2xXUE9r?=
 =?utf-8?B?UVpINnhraTZsMXhJeHFoL00vL0grYXFqSWVibDdDY1pQTm5MNDR6L0hjZ3lO?=
 =?utf-8?B?ZGkwYkxSaVVJU0tmaTgza1BCR0VzSjFyWTR1NHc2M2RUYVIzWjZCUk41b1cw?=
 =?utf-8?B?WkZhc0N5SzdNbE9LVlRQR21icStHQzQ2RXhOZTk1MGIydjR3cGxDLzlOSDlG?=
 =?utf-8?B?NlJhMi9TalRLanFWbnhWM3YvelpablgwY1gzTXBXSWdKNlIvbHRnK2Fkc3ZV?=
 =?utf-8?B?RkM1eVVwbVNlRi92QjgrU1U5RTRPd1hiMms3VTgzKzBOeVJIcDdvaHR2NEgv?=
 =?utf-8?B?VlhDSzdLTG9XbUJzQ0hZbVFzNDNHaFo4bzU3VGNVTFhJK29jcXZQYkprTWpN?=
 =?utf-8?B?V0x2aDFhalA4d0dBOUpiV0dQSlN2VVM3eHBBZ01qWFJsWk9TaHVraHVDc0dp?=
 =?utf-8?B?NGhxTkpQV3M1MGtjTlFRNkNGOFJMMXE4SFErT0NkNi9BeUY0VTVONjJ4ZjEx?=
 =?utf-8?B?R1JBRDZoUEU3b3pMejltWHpYbVgzVCtXRHBOaXZpOG44UmRPa3lEaGpMY1Jp?=
 =?utf-8?B?eWtQcUVWRVV3V01DbXdWalJwK1A0V3ZtMXhnQXpvQTlxZ0Y4d3Q4bU5KMC8z?=
 =?utf-8?B?di96Ulk0NmU3Wis3QnNpdzZYVTc1K2hNeDY3T3dIUTFTY2N4NFRJZGRzNnNG?=
 =?utf-8?B?cSt6a3R6UEx1ZlMxUjFvVHZJUVlRaSthazNCZ2o4aU8xa0J3cGYybCtjNWtz?=
 =?utf-8?B?d3Z4SGxMSWxHUjZidjVrWDY5aDlZdjVyTHJ1TlJmazRrRE83Z244Z3FOc2pj?=
 =?utf-8?B?NGsyK3c1VVNvOXFGaWNTZ3hLVmN2NEVzTEJFN05VVDAzRVhTVXhkU2VrU2px?=
 =?utf-8?B?SE5aN3lLMHcweXl2UlBDSzI1ZmxWZ25vYUVNV0N6ZnpQUWFUdGZuc2RoZ1k3?=
 =?utf-8?B?UjZFMmlucEFzd0RnRlYxUlVQUUNXSnZyZkVSR3JxSkxlaFVXait5OCtkdzdH?=
 =?utf-8?B?V0RiTmFQUUhDazFBUlpGcEtPWXZoYS9SNVhIN3RvbkRtbW82dGJFTkhpaEcz?=
 =?utf-8?B?YTFLL2I0a0s2THVYRk1ZcjVHRkpkeEE0UkRPbjRobVJ0cnJieVZyQlBKaEE2?=
 =?utf-8?B?R2pwdG8ra1VaWlE1bHVJOTQyL05pZ05yeDhDdDRJSkoxdWkxcXd3c2xENjBZ?=
 =?utf-8?B?K3RUeHJxWlNsdEx3WUtNU0VRMFJOdVM4Rzdpd20wOXYwR0dlSjdFeVBocTg3?=
 =?utf-8?B?NUlDT2VYWlgzZzhpdFQ3T1QxQlo0K0VmZUM3eUVjTkk3TmZtQUN6bytXT1FT?=
 =?utf-8?B?N2VsbVBlSnd2bTFaUEFTSjdEUmFvaWpCN3MrWWhHUTE0WUJWbW5OVnFIT3c3?=
 =?utf-8?B?Zm1oYTlBWHFOSEV0aDJJMDY1dURNWkZJVnE5anNGNFV6alN1OWZjaUpBZlZy?=
 =?utf-8?B?MDFkbFJ2QXZVaE9lNDFyczNaY29nWkh4dTVNOHZpU3NhRGNPYTVhcG9wYzZp?=
 =?utf-8?B?Uk5LenFhOUF5MWxHVTRiK1VRR2phMHpKR1NiVEt6QlhDSHNUbWlUQ1pETXZK?=
 =?utf-8?B?VFZVKzhNM01QUGNMNGIvV0JCMlZKTncrMHFGd2djQUt4ZWVHMHM0bXBlUXhr?=
 =?utf-8?B?V2NvaGlGRnM2ZDQrQllYcWEzaThMcUFxZTh2bXVhaXo3bHhydTUzY05HbjFo?=
 =?utf-8?B?UlFSRWV2WkZIMjBwTDZDUXBRbVgxZXJiK0pZZUtpKzFMNkpDdVZqbHBUditR?=
 =?utf-8?B?TWpRZWR0Q3pBNTMwenM5eGVMZ0I4cmhENFNpU2pkRHk3RDc0dFZQaEI1bU1O?=
 =?utf-8?B?ZEtJOFFXdXlYYTIwc3RYUW5IVzRtUG54UVNXQWVuSE5oVG9wZk9sNEd4eHUv?=
 =?utf-8?B?d0syQUtMVVB1c3NUbGdkaER5eCtVNndpL0RrQUQ4UHVXM25OdE1PYUhrSGhO?=
 =?utf-8?B?eERDWHYwUC9kSmlPcEZ0YWxEMlhHNTBBc3U2M3FtWUtRQ1djM2RFQlU5c3Fv?=
 =?utf-8?B?aVhZZWlCN0o0TnFSQ1QrTGVBbXlVQVNNM1dsNjltdWJoc2NraDQ2dlpBLzJt?=
 =?utf-8?B?N3lzdmMyU2J3NWJrR2tQdEQ3WGw3ZHNNWG5TdXMvbDlLWkRoci9GTGRnS0J3?=
 =?utf-8?B?ZWdaeWNSWTRkNXpzdHcxcXhwMW5GYVR3TW9LcFNYM2JBMDVDQ0RwQU9XSjZ3?=
 =?utf-8?B?OVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e3a8e25-7a80-403e-20be-08dc7a17a4fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2024 04:28:35.0025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jr2EN0GtDX0SpdtDnrgUAqsc2iJOQ+a4DudW845f4WH811/Mhczh7eq46Y3owE1uwdjAdjXPDh+s1e+l0EDePd/OL48M97wBh01/XKas39/Dy/cuJPATzLoOaJl+E9nU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6753
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716352123; x=1747888123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QnTILEZmhEdndxD2Frk60Wt1H9QSUjE2eWPKYzUfN7k=;
 b=hokKcMUx61aQZ9Zb5ZscFkSNt54QoF6cNyFCSgqzBH9tT2hfyg7mc5wr
 51rFrjEycWThVDswYziE4/Dv7+1wSOMdFLf+Pq6pAsj4UIzxnemA8zlcf
 7vhaRGcZXhFRa1CzxIyKYdL2UX/a3oS+bBcH9ath34YOWvJ/XzEyX5xNN
 Syvef6bpyHesnJAKJezNDyQC1kVFfIAbce7uFQqjcFyy1O+bStVnxj4lN
 okUdXbwYFmCiQAeze8cCogICKpfMv6zt7NlRoPO+Hi4be8bxHZS20pq4n
 61xFfgICS73dcjV1qdVt5GOZN/2rZ0fnlAhzD5v3s0d3EQirprb05rVYE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hokKcMUx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix reads from NVM
 Shadow RAM on E830 and E825-C devices
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogVHVlc2RheSwgTWF5IDIxLCAyMDI0IDM6MTAgQU0NCj4gVG86IEludGVsIFdp
cmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+DQo+IENjOiBLZWxsZXIs
IEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcg
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBHcmVlbndhbHQsIFBhdWwgPHBhdWwuZ3Jl
ZW53YWx0QGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3
bC1uZXRdIGljZTogZml4IHJlYWRzIGZyb20gTlZNIFNoYWRvdyBSQU0gb24gRTgzMCBhbmQgRTgy
NS1DIGRldmljZXMNCj4NCj4gVGhlIGljZSBkcml2ZXIgcmVhZHMgZGF0YSBmcm9tIHRoZSBTaGFk
b3cgUkFNIHBvcnRpb24gb2YgdGhlIE5WTSBkdXJpbmcgaW5pdGlhbGl6YXRpb24sIGluY2x1ZGlu
ZyBkYXRhIHVzZWQgdG8gaWRlbnRpZnkgdGhlIE5WTSBpbWFnZSBhbmQgZGV2aWNlLCBzdWNoIGFz
IHRoZSBFVFJBQ0sgSUQgdXNlZCB0byBwb3B1bGF0ZSBkZXZsaW5rIGRldiBpbmZvIGZ3LmJ1bmRs
ZS4NCj4NCj4gQ3VycmVudGx5IGl0IGlzIHVzaW5nIGEgZml4ZWQgb2Zmc2V0IGRlZmluZWQgYnkg
SUNFX0NTU19IRUFERVJfTEVOR1RIIHRvIGNvbXB1dGUgdGhlIGFwcHJvcHJpYXRlIG9mZnNldC4g
VGhpcyB3b3JrZWQgZmluZSBmb3IgRTgxMCBhbmQgRTgyMiBkZXZpY2VzIHdoaWNoIGJvdGggaGF2
ZSBDU1MgaGVhZGVyIGxlbmd0aCBvZiAzMzAgd29yZHMuDQo+DQo+IE90aGVyIGRldmljZXMsIGlu
Y2x1ZGluZyBib3RoIEU4MjUtQyBhbmQgRTgzMCBkZXZpY2VzIGhhdmUgZGlmZmVyZW50IHNpemVz
IGZvciB0aGVpciBDU1MgaGVhZGVyLiBUaGUgdXNlIG9mIGEgaGFyZCBjb2RlZCB2YWx1ZSByZXN1
bHRzIGluIHRoZSBkcml2ZXIgcmVhZGluZyBmcm9tIHRoZSB3cm9uZyBibG9jayBpbiB0aGUgTlZN
IHdoZW4gYXR0ZW1wdGluZyB0byBhY2Nlc3MgdGhlIFNoYWRvdyBSQU0gY29weS4gVGhpcyByZXN1
bHRzIGluIHRoZSBkcml2ZXIgcmVwb3J0aW5nIHRoZSBmdy5idW5kbGUgYXMgMHgwIGluIGJvdGgg
dGhlIGRldmxpbmsgZGV2IGluZm8gYW5kIGV0aHRvb2wgLWkgb3V0cHV0Lg0KPg0KPiBUaGUgZmly
c3QgRTgzMCBzdXBwb3J0IHdhcyBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCBiYTIwZWNiMWQxYmIgKCJp
Y2U6IEhvb2sgdXANCj4gNCBFODMwIGRldmljZXMgYnkgYWRkaW5nIHRoZWlyIElEcyIpIGFuZCB0
aGUgZmlyc3QgRTgyNS1DIHN1cHBvcnQgd2FzIGludHJvZHVjdGVkIGJ5IGNvbW1pdCBmNjRlMTg5
NDQyMzMgKCJpY2U6IGludHJvZHVjZSBuZXcgRTgyNUMgZGV2aWNlcw0KID4gZmFtaWx5IikNCj4N
Cj4gVGhlIE5WTSBhY3R1YWxseSBjb250YWlucyB0aGUgQ1NTIGhlYWRlciBsZW5ndGggZW1iZWRk
ZWQgaW4gaXQuIFJlbW92ZSB0aGUgaGFyZCBjb2RlZCB2YWx1ZSBhbmQgcmVwbGFjZSBpdCB3aXRo
IGxvZ2ljIHRvIHJlYWQgdGhlIGxlbmd0aCBmcm9tIHRoZSBOVk0gZGlyZWN0bHkuIFRoaXMgaXMg
bW9yZSByZXNpbGllbnQgYWdhaW5zdCBhbGwgZXhpc3RpbmcgYW5kIGZ1dHVyZSBoYXJkd2FyZSwg
dnMgbG9va2luZyB1cCB0aGUgZXhwZWN0ZWQgdmFsdWVzIGZyb20gYSB0YWJsZS4gPiBJdCBlbnN1
cmVzIHRoZSBkcml2ZXIgd2lsbCByZWFkIGZyb20gdGhlIGFwcHJvcHJpYXRlIHBsYWNlIHdoZW4g
ZGV0ZXJtaW5pbmcgdGhlIEVUUkFDSyBJRCB2YWx1ZSB1c2VkIGZvciBwb3B1bGF0aW5nIHRoZSBm
dy5idW5kbGVfaWQgYW5kIGZvciByZXBvcnRpbmcgaW4gZXRodG9vbCAtaS4NCj4NCj4gVGhlIENT
UyBoZWFkZXIgbGVuZ3RoIGZvciBib3RoIHRoZSBhY3RpdmUgYW5kIGluYWN0aXZlIGZsYXNoIGJh
bmsgaXMgc3RvcmVkIGluIHRoZSBpY2VfYmFua19pbmZvIHN0cnVjdHVyZSB0byBhdm9pZCB1bm5l
Y2Vzc2FyeSBkdXBsaWNhdGUgd29yayB3aGVuIGFjY2Vzc2luZyBtdWx0aXBsZSB3b3JkcyBvZiB0
aGUgU2hhZG93IFJBTS4gQm90aCBiYW5rcyBhcmUgcmVhZCBpbiB0aGUgdW5saWtlbHkgZXZlbnQg
dGhhdCB0aGUgaGVhZGVyIGxlbmd0aCBpcyBkaWZmZXJlbnQgZm9yIHRoZSBOVk0gaW4gdGhlIGlu
YWN0aXZlIGJhbmssIHJhdGhlciB0aGFuIGJlaW5nIGRpZmZlcmVudCBvbmx5IGJ5IHRoZSBvdmVy
YWxsIGRldmljZSBmYW1pbHkuDQo+DQo+IEZpeGVzOiBiYTIwZWNiMWQxYmIgKCJpY2U6IEhvb2sg
dXAgNCBFODMwIGRldmljZXMgYnkgYWRkaW5nIHRoZWlyIElEcyIpDQo+IENvLWRldmVsb3BlZC1i
eTogUGF1bCBHcmVlbndhbHQgPHBhdWwuZ3JlZW53YWx0QGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogUGF1bCBHcmVlbndhbHQgPHBhdWwuZ3JlZW53YWx0QGludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmll
d2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYyAgfCA4OCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3R5cGUuaCB8IDE0ICsrKy0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkzIGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+DQoNClRlc3RlZC1ieTogUHVjaGEgSGltYXNla2hh
ciBSZWRkeSA8aGltYXNla2hhcngucmVkZHkucHVjaGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50
IHdvcmtlciBhdCBJbnRlbCkNCg0K
