Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9319AD12F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 18:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A23F40305;
	Wed, 23 Oct 2024 16:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GoZsIZ8G9py8; Wed, 23 Oct 2024 16:39:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBA6D40319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729701594;
	bh=T45Azrdg4UKAIWUb09KH89cnPM5R2IMM/vd8IVfiNe4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ELkEnd//g1yIDjMnpI3n19mMWo0IHxXYjX1EnTUjy7cIE5upDfwhW8TH4qeV0RLHj
	 NtY021zrL8aR2JadA6zcF8oeYlx7HJtHCRT4shBLGOExnYt6oGu9bg4erEgr9GUSoT
	 dAm5pc4rTETOu6LMkoWXjJFAkg5IApVWLbkp8e1OoV/Z2FsyIfNa1sRMnd4LqSzy+i
	 26XkknEImqkAwuGXW6/FB7y5G+Vhz966YgrItvz5l0JnDZoR+EyzPJsaXtM9VM1xKD
	 vGcg5/QFAdxQzNSEHgNkB+I+l24F7fVp58P2XZzoI563A1czMgwBYV/YqA86mWLw9S
	 0DRYItirJYPCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBA6D40319;
	Wed, 23 Oct 2024 16:39:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E71AE27ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 16:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B10184027C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 16:39:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3eh9RKDUfNc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 16:39:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 560E3402F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 560E3402F0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 560E3402F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 16:39:49 +0000 (UTC)
X-CSE-ConnectionGUID: IJkvxCrNRBG0wcVmK6HgYw==
X-CSE-MsgGUID: Jw4HkokxQ2atPLOogNvAQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28740874"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="28740874"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 09:39:49 -0700
X-CSE-ConnectionGUID: 496DK2QITXqYCbE0PZyIWA==
X-CSE-MsgGUID: XUSUkrTPSy+2c6dL8JPFIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85093210"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 09:39:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 09:39:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 09:39:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 09:39:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fghncXaCYo6AX4eQ8A8BYwZ0khqgttgKCYOY6WWP+TtUeYTQdqiTgmqdQXVNhw2f3DAbSL4RDf92io2P+eiQHOWr9pyCmfALq4ud4Tq4Q+wN0ifYB0m1SFF4eAncDmwT1SbYh6k5T4BRpu0l4zF/JKiXKa+3iM3BNJYZAhJxkiEyr5eBFUdfmP634Z71qTLMr+fsN5V8A50Mk6ibWgg9L8pnJgwdguHQ9Ew6sko7P4Zk3Zpy/jRCjop8phBPLBtSWplObTROz/1fYZjsdqVaZc1C+62K26cqG+kZazRw8pCIKje6dYYxHwIkXk2KMI7pmA1RrQSW/aLSkg3zvD2yGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T45Azrdg4UKAIWUb09KH89cnPM5R2IMM/vd8IVfiNe4=;
 b=w9IW1IPLzc+YP4TKrOLtaLqUI+2lk/I3ZwqUPTWIbe8jeilGicjkVluQ80j3ulQQCIbM9zaBLXAu9YcOKmnI6uLqoT2hnol+FwDM5ldXI/TpVYalS6MtqlvOR5jb9mpcV028jM8ee1d5BHDNxVQrSwTJDOq+tqzcwI+/wVNh5tOvvKwPMR7ZXJdNlCF0N1Q7aSaVuBfUkuvrSKPnZlXxBUd3xzU8h7GURsgyOgLKRLUdAuQGTp1z22iq583lMTMLOh2PVFPtjnjU1dhf2oIhaYxntyr7BZ12CClAvXti9FF2ssJbEiGziEwtvUK69FjqyMe+CUteLGeJKXICuH7quQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB5795.namprd11.prod.outlook.com (2603:10b6:510:132::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.26; Wed, 23 Oct
 2024 16:39:44 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 16:39:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: mschmidt <mschmidt@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition by
 adding filter's intermediate sync state
Thread-Index: AQHbH64OTmJiM5fmDUaHuCAKle55qbKUk3aAgAABB3A=
Date: Wed, 23 Oct 2024 16:39:44 +0000
Message-ID: <SJ0PR11MB5866A10FB3FACB7548AD900CE54D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
 <CADEbmW2NRmYZvx7+yki8MR0tX+OzZovAYO-u+o6adHdYyaFn9w@mail.gmail.com>
In-Reply-To: <CADEbmW2NRmYZvx7+yki8MR0tX+OzZovAYO-u+o6adHdYyaFn9w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB5795:EE_
x-ms-office365-filtering-correlation-id: b041b9c7-eb87-4b4b-510b-08dcf3814ca8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Rzc4bGRPMWEyQ0hZRFNPNWt2UGRHL3JSR1EzV2FCNjA1dzQ5TVJXcm1QV2Z6?=
 =?utf-8?B?VDBEcC9GYlBFRnh1RVNQOUR1ZnAxZHcwR3JsZXk3a1VnWktXeXg1RXlJTG16?=
 =?utf-8?B?Q2c4YVZFejdsU1I2a2czYWFET3RVSjJQbEdaUk0vZkxUWWtWQ0daMWRRYW80?=
 =?utf-8?B?NFhQT3JLU2ZOcWhIeGEzTW9QMnhMTDladkVJWDVFWnBvNU5yQmM5UTBVcGZq?=
 =?utf-8?B?Yi9ZVEgwbGNEd0JPQXk0VzFuU2NEN1JBWmxWT0I2U3d2bUFUaW94MTB0Tmc4?=
 =?utf-8?B?ZlljbVJzWkkrRjRRTUk0WC9GcFZZSjZtSklUWEtnVVkxdldRRVVOR3JjSFEz?=
 =?utf-8?B?cyswblZSSmNsc3duS2VJaEFlUGhHZTNaZEt2c0l5Y2NLS2lVUFZ0aW9HdHNH?=
 =?utf-8?B?N2lpaE1IZld3SmEvMUFHOHdwRGNuV3NESFhiV3dDTFNVRkpDRWNmSXJEVWNJ?=
 =?utf-8?B?RUxvWjUzUnRCTnBXc1F3NStSVytJcVJsQ3ZjUGV1Z0sxLzlVeHc1SVd4dVdF?=
 =?utf-8?B?SjZnVEYwMkttRGk5UzY5OG5KWGt6eDFMdzdsVUo1RXF3aFVGcXVkZzJ2WG9a?=
 =?utf-8?B?a21tVjdKRTh5b25MQWVvdjdKUStCd29VdVVWUGFwaDNlckdsMmR1ZS9FU1Js?=
 =?utf-8?B?cWU3Qmw4MmxWL1Z3VmViM2JOV2c4ZExUVnZ5MkR5S1R4d3czajZFUmk2aDRn?=
 =?utf-8?B?L0ZmaGlRdGVtM2V4U040UWxKTDJ5M2dELzY3R3FHY1NDcEZzN2RUWEhBMVhp?=
 =?utf-8?B?UGVHYnpONnlmRlJVZUZvdTJ0QllQaytLY0xnZXVPd09mSnByanNRUmZVNzFk?=
 =?utf-8?B?a2c3ZjQwbS90RXRYNkNKRVZPekpXd2plWjFDSzEyZkMwOWdSSWJmMEEvWTJF?=
 =?utf-8?B?cVZJcElweXNLcXlka1oremtwbXcrWkR1Y3BNMnBUYys4WmhpdlJPR09QazV6?=
 =?utf-8?B?bmJOcUNRN2xHeWNjZWR2R3lGYW9QZUQ1clh6NldORjdiU0ZTcHZaeExPSlZC?=
 =?utf-8?B?ZzBpRlE4eHpwUERTUzc5TFBPQ2xXV01iTDBzaWxnN3c5d0xLYUJMVHEyRDVW?=
 =?utf-8?B?TmNIQXllY3VRR0VleHNpejE5YndBNG82ejhoMVltTnJGdytUcFpRVkxaR2k1?=
 =?utf-8?B?d1ViU0kvU1RsMU1yUTV3STNVU0R0cGx0dDBqQlhBeU1LcFp3L3ZkeStBTTJM?=
 =?utf-8?B?MUVVMlM3Z0pHZ0gyelFPMndUbXkxU2F1MzVnaVlxMHMrZWpsa0tjZHZscXlH?=
 =?utf-8?B?b3RzdUlPdVlqODFOaE9yZkRxeWdJMDM0aTJUWldQSHBrdDRPM0xNeFg3Q3lU?=
 =?utf-8?B?SmJTR3VhMjQ2VGNOT01tMUphYVlKRnphTXJFMmwvckhTVVFHa25CN2gzYjBa?=
 =?utf-8?B?cUJ3QXhjemc0bFhxNld4bXRDOTl1NFlRK1R5VFBYK3VyWVdyQ3NENnF6WGZr?=
 =?utf-8?B?di9ZSU54TGloMERSai82K3JBbFp6V2tTU3phRXlBVk45OVBZOXY1UEE0Szho?=
 =?utf-8?B?R0oyejdTMG05STlDc1VuY0hIMjVOdEJhSDNBQWhPckYwM1lUZGlISThqL0dp?=
 =?utf-8?B?TXlrLzJkc2FxZnNxd2RraWZsMXRiaHhWL1VJRlA1dnZ1MUZoakFYL3NMM2E3?=
 =?utf-8?B?dW1nbVFuL3JUb0R6eEZsUFVydmVmRDB2UjhzNWw2YVM2MzFaZUJNU0J6bEtW?=
 =?utf-8?B?Y3o5YmNYSVFRMDVVTmlLNkFIKzhXdkxPWm5jWjA5bjBNZStwZWEwYzhuWi9P?=
 =?utf-8?B?dnArbE1XNXh6RjJDL0xqQXlPTFhNM3h2Ny8rdzd4bkxEWmF6YXpVTG5FRS9U?=
 =?utf-8?Q?V0SZCILjKCLMjs992cNLdfCS0aSIZRIwSNdu0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGlMV0ZYZ0RFNWduSFpuRE13UjBQTENEdWh6bWhKbjBwNEZWZHdnT2VxZ1V6?=
 =?utf-8?B?UUljU1lKMVYxbGtjWmxIc3lNVEJiWDBGMFBtZ0FMN2szS3ZLdW9pazJ6bSsy?=
 =?utf-8?B?dkl0MlBGL2hDQUpFRWxFbHlzWEI4UUd6aHBaVGtTMDV0WjAxdUpEbEhxTHFu?=
 =?utf-8?B?Wk0vemZkMU0zaTdXRmNkLzdKTjJwa1FGN3krcGhxb0FQRkNGRVZSVDhRQlNY?=
 =?utf-8?B?K3VXT3h5cTc3SFZ5eGhQVHovNlF4UkVHTWVzNUlYU3F3ZlNOZ05tcUpyVDMv?=
 =?utf-8?B?SWErRnhSVk02eDhIWFI1Q1k0VmNXRkVNd1ZRZkJ3RkVsSWZuYzFnbm5SUlc0?=
 =?utf-8?B?NW1rK3BWWlMxL3VucFlBV0pXRE9ocjh3Y0FuZ3phK3E2K3pWbzNEU2xublFZ?=
 =?utf-8?B?UWVmTjNEVURvRFczUkhTRzM0TW5NY2lveGtZVHJReDFWL1lQb1ZjZ3YxbEly?=
 =?utf-8?B?THRwSDlKenNaeEJyY09mZmhhRFl4QVQ0RVRqV0F5ZmVhTGhzS3Y5L1BWa2Ry?=
 =?utf-8?B?N0FIL3hBUHVtZjNOY24xMUtOYlQ0amVvUUc5L08rUGMxR2N3dGhPQSsyRFpq?=
 =?utf-8?B?aG1PNzI2SENoOEZ6cy9kQXFFUDdkUUdlTVZZS2RxTUlhLyt0UzY3TFJyNlRh?=
 =?utf-8?B?WXRNRTRpTndQQVdySjBsUE0vYzM4T3psa0RPUmFZODNER29Jek1IOEQrUHNq?=
 =?utf-8?B?bGZCTktCRmh0emRNaGFKYkc3bVhNbnIxNVpQbGJIS0plb3MrdUJIajJRWXd5?=
 =?utf-8?B?c2VWWTBkQm96L2hwQzFvWHh5M0w2QTFnRk9ld09Vd1RRRXUzWVNXcEtWYXo4?=
 =?utf-8?B?NURWUUV0S0RQQlBLcG9zZm9ON0R6NmVnSkthTWo0WTd5NThBc0lqK0psdnV0?=
 =?utf-8?B?dTVudmZETXpzTnU1SGRLVGxqUUJpRUVPYkNZYVBMdDlBcXkwUnVsc0N5RnFl?=
 =?utf-8?B?OGNxazVUbGYyRHBlNjJKZmZ5RUFhUWZETTdkcTl3Z3Y3R21BZVN6dDVDRmJK?=
 =?utf-8?B?VU1uMG4rNjB6bnNlMWk2WkRBQ1p0SFhOQVRHVWRBTTIzQVdSTjgrdVVadmwy?=
 =?utf-8?B?Zlg2cjJQMHdkK29wT1NXbkl5WUl1em5MM0R5QWNXN3RsbDFDRHJKcWRQU0ZF?=
 =?utf-8?B?eGNLUXFoQXRLc3JYaGU0Y2wxRGFSbjNodCsyWVBDTjYxajhzWjh1M2hucUhw?=
 =?utf-8?B?S3FUYU9UQVBZYnR4Y1ZtTGU1RmQ1L0pmMGxHTVNvYUxLRnRMQlN1Z2NsMU41?=
 =?utf-8?B?MU1Cam05bGRqTGc2d1JRZmR5aUZKOCtsUXYvek1VU2RHSmhDdkxzeTVuUDR3?=
 =?utf-8?B?Z3M5RHc3SjUzbm1uS01nLzM2T1pOYWQ1blpHNXlYZGJjNVlHNml2VHN0NVkx?=
 =?utf-8?B?WXlLd2ZyV0pwaWRpUmRXS1ZtNWVDZUIwQXE1cW82STYyVS9OVUU1cFBCQ2xW?=
 =?utf-8?B?S3hsMlhQSjBWaEt3YnkwVVhBQTRMMjNpZU5vSXJPbDZVOUxFd2RyL2RScmgx?=
 =?utf-8?B?Um5jMjJyN2Zia1VSeTJtSlNhVzlVNU1vWkJKUitaR2VDVkVTblVqRWppdXN3?=
 =?utf-8?B?U1NVTXlKSU9OdWFraDVzYmcxMElGU1NPNHpXZXp1dTR2SEVkUjlFVnkvVnA3?=
 =?utf-8?B?TVdlanpZMDcwNkRhWVc0RkE1a0t3eVIzY29JRFBicGtqOTh5UnhZa0YzUHYz?=
 =?utf-8?B?ekpZTzZjYkErQjZaelBPRlo3bHFBblg1RGtaS0FWc2F5WGM2OGlXYXpsaTZa?=
 =?utf-8?B?TDNDUVFqaFhXcnBoNEYwSnpxWWdaOWFLMTVqakRpcWVqVlRydjEyQk9JNldD?=
 =?utf-8?B?ckE1QXExQ3VBeHVPZnlIRlFxMHFMN3NMOWNVSnByRGF5VTJwNWhrOWJ5V3k2?=
 =?utf-8?B?WUlmdjNQSGdwdEhwazJyRWJlcGY3b1UwMFJDVW1YRzc0ZzZkOGIwQzQ5MWpi?=
 =?utf-8?B?SGdGUlpOaTdSUXUvZGF0UXhkN0ZrV0J0QXZTcUtXcFZjWUpjaGFyWDhYeFA1?=
 =?utf-8?B?eUJGWlUvcHhPMmtGVFo5d2lyNDR1ZHRWZ3JhVHBIQ0FBaE11aWZCYm1tK1Vk?=
 =?utf-8?B?cDVyM3gxb0xINVZJVHBUWjZMbXgyYWcwamtHRkVwSmd6TktDWWxtR0JYalll?=
 =?utf-8?B?enJ1d3h2ay9OSjBvOXp6M24rNUt3RHkwZ3g4ampiYTdQK0dNem43SGlsbmtj?=
 =?utf-8?B?NGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b041b9c7-eb87-4b4b-510b-08dcf3814ca8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 16:39:44.1658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kJI/H44qcJK26/wcUJd0cRQoP8u4cAzwQQwzxbHcHdQy7wXvdf49od1tqYXYCm2AlwtbMwRg89Gjx04QU/fB6nQ+WdcG6MGX2kwDphEY/5E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729701590; x=1761237590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T45Azrdg4UKAIWUb09KH89cnPM5R2IMM/vd8IVfiNe4=;
 b=NUADTqFipOX+EtLU4acgqfj90bz67mnPmCaC0/StNZ7npmymOw49qH4F
 08EXkHwk7BVHH8ACjPXmywbpzLb1jbLmv7WFJKiTw6jeWmRuPmcdexA8u
 Q/FEeai7meUptPWiSm583jevoU+Ptca8iIPMvRu9y8zqp0x3Axh/8Bw/d
 BfXCUBGSwPT0P7j+8mq4xV+NACckScBiK6m5iWDTrtoPMfLeWlIXNDcKc
 p8w20nwflInNUmqCkYFzxkvCHvmMY6IzjfO7EVCteIYIwYMVLq4Dma7P/
 wT0n0cHuvqtMYBjeB/aYg6nGDPBrQ+0WxrbVeSQEM3PMB3o3TXKRMfubL
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NUADTqFi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition
 by adding filter's intermediate sync state
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWljaGFsIFNjaG1pZHQg
PG1zY2htaWR0QHJlZGhhdC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciAyMywgMjAy
NCA2OjM0IFBNDQo+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25v
dkBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgTmd1
eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3
bC1uZXQgdjJdIGk0MGU6IGZpeCByYWNlDQo+IGNvbmRpdGlvbiBieSBhZGRpbmcgZmlsdGVyJ3Mg
aW50ZXJtZWRpYXRlIHN5bmMgc3RhdGUNCj4gDQo+IE9uIFdlZCwgT2N0IDE2LCAyMDI0IGF0IDEx
OjMw4oCvQU0gQWxla3NhbmRyIExva3Rpb25vdg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gRml4IGEgcmFjZSBjb25kaXRpb24gaW4gdGhlIGk0MGUg
ZHJpdmVyIHRoYXQgbGVhZHMgdG8gTUFDL1ZMQU4NCj4gZmlsdGVycw0KPiA+IGJlY29taW5nIGNv
cnJ1cHRlZCBhbmQgbGVha2luZy4gQWRkcmVzcyB0aGUgaXNzdWUgdGhhdCBvY2N1cnMNCj4gdW5k
ZXINCj4gPiBoZWF2eSBsb2FkIHdoZW4gbXVsdGlwbGUgdGhyZWFkcyBhcmUgY29uY3VycmVudGx5
IG1vZGlmeWluZw0KPiBNQUMvVkxBTg0KPiA+IGZpbHRlcnMgYnkgc2V0dGluZyBtYWMgYW5kIHBv
cnQgVkxBTi4NCj4gPg0KPiA+IDEuIFRocmVhZCBUMCBhbGxvY2F0ZXMgYSBmaWx0ZXIgaW4gaTQw
ZV9hZGRfZmlsdGVyKCkgd2l0aGluDQo+ID4gICAgICAgICBpNDBlX25kb19zZXRfdmZfcG9ydF92
bGFuKCkuDQo+ID4gMi4gVGhyZWFkIFQxIGNvbmN1cnJlbnRseSBmcmVlcyB0aGUgZmlsdGVyIGlu
IF9faTQwZV9kZWxfZmlsdGVyKCkNCj4gd2l0aGluDQo+ID4gICAgICAgICBpNDBlX25kb19zZXRf
dmZfbWFjKCkuDQo+ID4gMy4gU3Vic2VxdWVudGx5LCBpNDBlX3NlcnZpY2VfdGFzaygpIGNhbGxz
DQo+IGk0MGVfc3luY192c2lfZmlsdGVycygpLCB3aGljaA0KPiA+ICAgICAgICAgcmVmZXJzIHRv
IHRoZSBhbHJlYWR5IGZyZWVkIGZpbHRlciBtZW1vcnksIGNhdXNpbmcNCj4gY29ycnVwdGlvbi4N
Cj4gDQo+IEkgdGhpbmsgYW4gaW1wb3J0YW50IGRldGFpbCBpcyBtaXNzaW5nIGZyb20gdGhlIHJh
Y2UgZGVzY3JpcHRpb24uIEkNCj4gYW0gZ3Vlc3NpbmcgaXQgY291bGQgaGFwcGVuIGxpa2UgdGhp
czoNCj4gDQo+IDEuIEEgdGhyZWFkIGFsbG9jYXRlcyBhIGZpbHRlciB3aXRoIGk0MGVfYWRkX2Zp
bHRlcigpLg0KPiAyLiBpNDBlX3NlcnZpY2VfdGFzaygpIGNhbGxzIGk0MGVfc3luY192c2lfZmls
dGVycygpLCB3aGljaCBhZGRzIGFuDQo+IGVudHJ5IHRvIGl0cyBsb2NhbCB0bXBfYWRkX2xpc3Qg
cmVmZXJlbmNpbmcgdGhlIGZpbHRlci4gSXQgcmVsZWFzZXMNCj4gdnNpLT5tYWNfZmlsdGVyX2hh
c2hfbG9jayBiZWZvcmUgaXQgcHJvY2Vzc2VzIHRtcF9hZGRfbGlzdC4NCj4gMy4gQSB0aHJlYWQg
ZnJlZXMgdGhlIGZpbHRlciBpbiBfX2k0MGVfZGVsX2ZpbHRlcigpLiBUaGlzIGlzIHdoaWxlDQo+
IGhvbGRpbmcgdnNpLT5tYWNfZmlsdGVyX2hhc2hfbG9jay4NCj4gNC4gVGhlIHNlcnZpY2UgdGFz
ayBwcm9jZXNzZXMgdG1wX2FkZF9saXN0IGFuZCBkZXJlZmVyZW5jZXMgdGhlDQo+IGFscmVhZHkg
ZnJlZWQgZmlsdGVyLg0KPiANCj4gRG8gSSB1bmRlcnN0YW5kIHRoZSByYWNlIHJpZ2h0Pw0KPiAN
Cj4gTWljaGFsDQpJIHRoaW5rIHlvdSd2ZSBnb3QgaXQgcmlnaHQuIEFuZCB0aGF0IEkndmUgd3Jv
dGUgYWJvdmUuDQo+IA0KPiANCj4gPiBSZXByb2R1Y3Rpb24gc3RlcHM6DQo+ID4gMS4gU3Bhd24g
bXVsdGlwbGUgVkZzLg0KPiA+IDIuIEFwcGx5IGEgY29uY3VycmVudCBoZWF2eSBsb2FkIGJ5IHJ1
bm5pbmcgcGFyYWxsZWwgb3BlcmF0aW9ucw0KPiB0byBjaGFuZ2UNCj4gPiAgICAgICAgIE1BQyBh
ZGRyZXNzZXMgb24gdGhlIFZGcyBhbmQgY2hhbmdlIHBvcnQgVkxBTnMgb24gdGhlDQo+IGhvc3Qu
DQo+ID4gMy4gT2JzZXJ2ZSBlcnJvcnMgaW4gZG1lc2c6DQo+ID4gIkVycm9yIEk0MEVfQVFfUkNf
RU5PU1BDIGFkZGluZyBSWCBmaWx0ZXJzIG9uIFZGIFhYLA0KPiA+ICAgICAgICAgcGxlYXNlIHNl
dCBwcm9taXNjdW91cyBvbiBtYW51YWxseSBmb3IgVkYgWFgiLg0KPiA+DQo+ID4gRXhhY3QgY29k
ZSBmb3Igc3RhYmxlIHJlcHJvZHVjdGlvbiBJbnRlbCBjYW4ndCBvcGVuLXNvdXJjZSBub3cuDQo+
ID4NCj4gPiBUaGUgZml4IGludm9sdmVzIGltcGxlbWVudGluZyBhIG5ldyBpbnRlcm1lZGlhdGUg
ZmlsdGVyIHN0YXRlLA0KPiA+IEk0MEVfRklMVEVSX05FV19TWU5DLCBmb3IgdGhlIHRpbWUgd2hl
biBhIGZpbHRlciBpcyBvbiBhDQo+IHRtcF9hZGRfbGlzdC4NCj4gPiBUaGVzZSBmaWx0ZXJzIGNh
bm5vdCBiZSBkZWxldGVkIGZyb20gdGhlIGhhc2ggbGlzdCBkaXJlY3RseSBidXQNCj4gbXVzdA0K
PiA+IGJlIHJlbW92ZWQgdXNpbmcgdGhlIGZ1bGwgcHJvY2Vzcy4NCj4gPg0KPiA+IEZpeGVzOiAy
NzhlN2QwYjlkNjggKCJpNDBlOiBzdG9yZSBNQUMvVkxBTiBmaWx0ZXJzIGluIGEgaGFzaCB3aXRo
DQo+IHRoZQ0KPiA+IE1BQyBBZGRyZXNzIGFzIGtleSIpDQo+ID4gU2lnbmVkLW9mZi1ieTogQWxl
a3NhbmRyIExva3Rpb25vdg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gdjEtPnYyIGNoYW5nZSBjb21taXQgdGl0bGUsIHJlbW92ZWQgUkVTRVJWRUQgc3Rh
dGUgYnl0IHJlcXVlc3QgaW4NCj4gPiB2MS0+cmV2aWV3DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oICAgICAgICAgfCAgMiArKw0KPiA+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVidWdmcy5jIHwgIDEgKw0KPiA+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jICAgIHwgMTIgKysrKysr
KysrKy0tDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGUuaA0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgN
Cj4gPiBpbmRleCAyMDg5YTBlLi4yZTIwNTIxOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+ID4gQEAgLTc1NSw2ICs3NTUsOCBAQCBlbnVtIGk0MGVf
ZmlsdGVyX3N0YXRlIHsNCj4gPiAgICAgICAgIEk0MEVfRklMVEVSX0FDVElWRSwgICAgICAgICAg
ICAgLyogQWRkZWQgdG8gc3dpdGNoIGJ5IEZXDQo+ICovDQo+ID4gICAgICAgICBJNDBFX0ZJTFRF
Ul9GQUlMRUQsICAgICAgICAgICAgIC8qIFJlamVjdGVkIGJ5IEZXICovDQo+ID4gICAgICAgICBJ
NDBFX0ZJTFRFUl9SRU1PVkUsICAgICAgICAgICAgIC8qIFRvIGJlIHJlbW92ZWQgKi8NCj4gPiAr
ICAgICAgIEk0MEVfRklMVEVSX05FV19TWU5DLCAgICAgICAgICAgLyogTmV3LCBub3Qgc2VudCB5
ZXQsIGlzDQo+IGluDQo+ID4gKw0KPiBpNDBlX3N5bmNfdnNpX2ZpbHRlcnMoKSAqLw0KPiA+ICAv
KiBUaGVyZSBpcyBubyAncmVtb3ZlZCcgc3RhdGU7IHRoZSBmaWx0ZXIgc3RydWN0IGlzIGZyZWVk
ICovDQo+IH07DQo+ID4gc3RydWN0IGk0MGVfbWFjX2ZpbHRlciB7IGRpZmYgLS1naXQNCj4gPiBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMNCj4gPiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMNCj4gPiBpbmRleCBh
YmY2MjRkLi4yMDhjMmYwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfZGVidWdmcy5jDQo+ID4gQEAgLTg5LDYgKzg5LDcgQEAgc3RhdGljIGNo
YXIgKmk0MGVfZmlsdGVyX3N0YXRlX3N0cmluZ1tdID0gew0KPiA+ICAgICAgICAgIkFDVElWRSIs
DQo+ID4gICAgICAgICAiRkFJTEVEIiwNCj4gPiAgICAgICAgICJSRU1PVkUiLA0KPiA+ICsgICAg
ICAgIk5FV19TWU5DIiwNCj4gPiAgfTsNCj4gPg0KPiA+ICAvKioNCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiA+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiA+IGluZGV4IDI1Mjk1YWUu
LjU1ZmIzNjIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX21haW4uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9tYWluLmMNCj4gPiBAQCAtMTI1NSw2ICsxMjU1LDcgQEAgaW50IGk0MGVfY291bnRfZmls
dGVycyhzdHJ1Y3QgaTQwZV92c2kNCj4gKnZzaSkNCj4gPg0KPiA+ICAgICAgICAgaGFzaF9mb3Jf
ZWFjaF9zYWZlKHZzaS0+bWFjX2ZpbHRlcl9oYXNoLCBia3QsIGgsIGYsDQo+IGhsaXN0KSB7DQo+
ID4gICAgICAgICAgICAgICAgIGlmIChmLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVcgfHwNCj4g
PiArICAgICAgICAgICAgICAgICAgIGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05FV19TWU5DIHx8
DQo+ID4gICAgICAgICAgICAgICAgICAgICBmLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9BQ1RJVkUp
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgKytjbnQ7DQo+ID4gICAgICAgICB9DQo+ID4g
QEAgLTE0NDEsNiArMTQ0Miw4IEBAIHN0YXRpYyBpbnQNCj4gaTQwZV9jb3JyZWN0X21hY192bGFu
X2ZpbHRlcnMoc3RydWN0DQo+ID4gaTQwZV92c2kgKnZzaSwNCj4gPg0KPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgIG5ldy0+ZiA9IGFkZF9oZWFkOw0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgIG5ldy0+c3RhdGUgPSBhZGRfaGVhZC0+c3RhdGU7DQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKGFkZF9oZWFkLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVcpDQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBhZGRfaGVhZC0+c3RhdGUgPQ0KPiA+ICsgSTQwRV9G
SUxURVJfTkVXX1NZTkM7DQo+ID4NCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBBZGQg
dGhlIG5ldyBmaWx0ZXIgdG8gdGhlIHRtcCBsaXN0ICovDQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgaGxpc3RfYWRkX2hlYWQoJm5ldy0+aGxpc3QsDQo+IHRtcF9hZGRfbGlzdCk7IEBADQo+
ID4gLTE1NTAsNiArMTU1Myw4IEBAIHN0YXRpYyBpbnQNCj4gaTQwZV9jb3JyZWN0X3ZmX21hY192
bGFuX2ZpbHRlcnMoc3RydWN0IGk0MGVfdnNpICp2c2ksDQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICBuZXdfbWFjLT5mID0gYWRkX2hlYWQ7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgbmV3
X21hYy0+c3RhdGUgPSBhZGRfaGVhZC0+c3RhdGU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgaWYgKGFkZF9oZWFkLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVcpDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBhZGRfaGVhZC0+c3RhdGUgPQ0KPiA+ICsgSTQwRV9GSUxU
RVJfTkVXX1NZTkM7DQo+ID4NCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBBZGQgdGhl
IG5ldyBmaWx0ZXIgdG8gdGhlIHRtcCBsaXN0ICovDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgaGxpc3RfYWRkX2hlYWQoJm5ld19tYWMtPmhsaXN0LA0KPiB0bXBfYWRkX2xpc3QpOw0KPiA+
IEBAIC0yNDM3LDcgKzI0NDIsOCBAQCBzdGF0aWMgaW50DQo+IGk0MGVfYXFjX2Jyb2FkY2FzdF9m
aWx0ZXIoc3RydWN0DQo+ID4gaTQwZV92c2kgKnZzaSwgY29uc3QgY2hhciAqdnNpX25hbWUsDQo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTQwZV9tYWNfZmlsdGVyICpmKSAg
ew0KPiA+IC0gICAgICAgYm9vbCBlbmFibGUgPSBmLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVc7
DQo+ID4gKyAgICAgICBib29sIGVuYWJsZSA9IGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05FVyB8
fA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBmLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVdf
U1lOQzsNCj4gPiAgICAgICAgIHN0cnVjdCBpNDBlX2h3ICpodyA9ICZ2c2ktPmJhY2stPmh3Ow0K
PiA+ICAgICAgICAgaW50IGFxX3JldDsNCj4gPg0KPiA+IEBAIC0yNjExLDYgKzI2MTcsNyBAQCBp
bnQgaTQwZV9zeW5jX3ZzaV9maWx0ZXJzKHN0cnVjdCBpNDBlX3ZzaQ0KPiAqdnNpKQ0KPiA+DQo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBBZGQgaXQgdG8gdGhlIGhhc2gg
bGlzdCAqLw0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaGxpc3RfYWRkX2hl
YWQoJm5ldy0+aGxpc3QsDQo+ID4gJnRtcF9hZGRfbGlzdCk7DQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBmLT5zdGF0ZSA9IEk0MEVfRklMVEVSX05FV19TWU5DOw0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgIH0NCj4gPg0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
IC8qIENvdW50IHRoZSBudW1iZXIgb2YgYWN0aXZlIChjdXJyZW50DQo+IGFuZA0KPiA+IG5ldykg
VkxBTiBAQCAtMjc2Miw3ICsyNzY5LDggQEAgaW50IGk0MGVfc3luY192c2lfZmlsdGVycyhzdHJ1
Y3QNCj4gaTQwZV92c2kgKnZzaSkNCj4gPiAgICAgICAgICAgICAgICAgc3Bpbl9sb2NrX2JoKCZ2
c2ktPm1hY19maWx0ZXJfaGFzaF9sb2NrKTsNCj4gPiAgICAgICAgICAgICAgICAgaGxpc3RfZm9y
X2VhY2hfZW50cnlfc2FmZShuZXcsIGgsICZ0bXBfYWRkX2xpc3QsDQo+IGhsaXN0KSB7DQo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgLyogT25seSB1cGRhdGUgdGhlIHN0YXRlIGlmIHdlJ3Jl
IHN0aWxsDQo+IE5FVyAqLw0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGlmIChuZXctPmYt
PnN0YXRlID09IEk0MEVfRklMVEVSX05FVykNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBp
ZiAobmV3LT5mLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVcgfHwNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgbmV3LT5mLT5zdGF0ZSA9PQ0KPiBJNDBFX0ZJTFRFUl9ORVdfU1lOQykN
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5ldy0+Zi0+c3RhdGUgPSBuZXct
PnN0YXRlOw0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGhsaXN0X2RlbCgmbmV3LT5obGlz
dCk7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgbmV0ZGV2X2h3X2FkZHJfcmVmY250KG5l
dy0+ZiwgdnNpLQ0KPiA+bmV0ZGV2LA0KPiA+IC0xKTsNCj4gPiAtLQ0KPiA+IDIuMjUuMQ0KPiA+
DQoNCg==
