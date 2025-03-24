Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 152BCA6D745
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Mar 2025 10:27:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50F7360BA4;
	Mon, 24 Mar 2025 09:27:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0xZmxH_bjuig; Mon, 24 Mar 2025 09:27:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4614160BAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742808452;
	bh=M/Lo6NztOHIA2WNEjsVXMa6oLZhsZhjvE8hIZdH6QTM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iaU7XnXRByJ0g/m63HTKthwt/VH5pOC6+Olzm3uzzUEBh/DgFQwqVTT2LA1vYwl/L
	 xTqPc2tnjwpNpFAi1m5DEk6xMoK5Mft57WjzS/tO0MYMWiqQrKX43W4RtVe2tbIlzn
	 852WTpHLLsUFwY35OyJBIOFmBO1oblpcn/mv8geqHUlrbxoPgd5rra7XG0/cxi/8M/
	 SUfVnmGBSui863t0pj0kZfybLl+Y7x9NZHcfnlKDey9jYQAMPa2mL4hlvfs2AaIX5p
	 OBL4sAd2Rt1zzNgk2i5v6v2HU+PuQLlenwCcFnnx/Oy5Q5k56CN+KfhjxsOUZ0oe1o
	 uV7NrXO9fVBzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4614160BAB;
	Mon, 24 Mar 2025 09:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 672131B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 09:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C61881FF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 09:27:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CfqATYVzKIM9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Mar 2025 09:27:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 611078211F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 611078211F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 611078211F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 09:27:29 +0000 (UTC)
X-CSE-ConnectionGUID: VPSUthe/TgWua70S2LiMPw==
X-CSE-MsgGUID: QszhAqvHQTaC4Y/bMEu5Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="61527796"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="61527796"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 02:27:28 -0700
X-CSE-ConnectionGUID: P43MncphSVaw2pMtg9jyGA==
X-CSE-MsgGUID: UPRi6F88RNyzegmAug+MAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="129105109"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 02:27:28 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 02:27:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 02:27:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 02:27:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gkP1q31kbYIS9WDy6qoeBZtYVC0bENl3Ki7y/I63CS2OzW+mA7zj6VV9zPGeQp8EwHCpfHV6n8FFKgVgDeFitHnD/1vXabjOWfXCRYG6dlAXuiQLZrHDzCynDVk7nBMBglpMk5BOP5TcRc6JEMYSiCboRq+jJ0IUYsPums6zcPgUhz3scbA5+CjfaG6E5u/XzwvLpWpgKKxbO8J2+HjecA8LsAG8xY7s5n1uISyIvX1LPyK5A7TrD/3r+7dniK+p2VSsB3jh0M37LERrkw3mi5tVnAHsVB+Sn0GwIU0dstJJ+XioF1qrbR8aHLQIFaW0K8R42+0A1dw3hDYkopnt9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M/Lo6NztOHIA2WNEjsVXMa6oLZhsZhjvE8hIZdH6QTM=;
 b=usbxMzqa6aGEZ0DQV7r1brBed6Sd/54wgk1e0uzJk8ek8HuN4e+SBDL5DL5hYq6R4G0/WKS14GmAmD9NED3j4nKKBLG0Vj4RW0D+IMOJCbZyYIGQC3eS9gXhkzIzk9JaZu9UmGQjJ9/9H74xKJkxQ9vbI3KGLYgFB9zqceHFXqZEoc0WRG1Nh9uWaAnyP+KAyMR7aaD5SQKZ0HP3GaKoOoqyrKIf5RGVQyQZaMcGvKMPtlxSM06u+6faNRzXxem5vdFlK6OablwVspxIWmhvqT0g4LCBKYpJG8sjK2U0TPREhfMsIJFTvkaHN0S7y9RddD9Z42Fz02Kmh0IVyPqmhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY8PR11MB7243.namprd11.prod.outlook.com (2603:10b6:930:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 09:27:24 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 09:27:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Rinitha, SX" <sx.rinitha@intel.com>, Kyungwook Boo
 <bookyungwook@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] i40e: fix MMIO write
 access to an invalid page in i40e_clear_hw
Thread-Index: AQHbkkS90wyx9nYR7E6giyRu3n2kHLN9E/eAgAUFQuA=
Date: Mon, 24 Mar 2025 09:27:24 +0000
Message-ID: <SJ0PR11MB58666E39C43B2808821CE336E5A42@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <e7e4e5d5-931d-4506-9d75-b87783011379@gmail.com>
 <IA1PR11MB62410B57640BF14F65A190958BDB2@IA1PR11MB6241.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB62410B57640BF14F65A190958BDB2@IA1PR11MB6241.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY8PR11MB7243:EE_
x-ms-office365-filtering-correlation-id: fdbcfc5c-f2af-44fe-151c-08dd6ab615f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YWdGUHkrTStWQmxVcjk5ZE5SdlZkM3ltYTlaWnpjU3ZKRUZLS1FxYkIvWW9D?=
 =?utf-8?B?Z0tFdGU3L2hFcUhnWHR2czVjdWowZURMQjhBRkhkbXBYTUcxWGdiOWxvTi90?=
 =?utf-8?B?djc1UlZBaS9RTUROaExkZWd4d0ZEaGhDdFNrdzkrS2NtUHNqMTg0MFJwT0sy?=
 =?utf-8?B?Z2NTZVd2UWlyN2VlYStpbVhNeWR5Q1ZWUURIdno4NzRqbFVsVVNhbGo2Y0VL?=
 =?utf-8?B?N0p3NGFFQnJOUkpwaGQraW5UK25Wb1FEbk8xSVlNLyttaCs4NHdGc1VqV24r?=
 =?utf-8?B?aUtncjQrcXVTSjloM0lmNzUzM1Y1RkxzMmZhWHFoQlBTajFJVTdVdnJyc0Zj?=
 =?utf-8?B?WUR6dlJrTlFsODUwWHlmSTRtRUU3RE1EVWdMZE5FQ0IzbGg1RGZOL0FRR0Qy?=
 =?utf-8?B?NGl3TXF2N1hqV25tc2NMUlBJcWVVT0VwdGFYMXk2VnVmYWJ6YXNwVUhEV1o5?=
 =?utf-8?B?QVF1OXBWUHJMa0hqWFB6WWVpRWFLclBDNzNZOHNkQ0NYakh0ekpFcWNXWFNX?=
 =?utf-8?B?VkFTU25uaFU1aGtiWmtpcjFPUnA2UEZyTEgwV2tNMG9FQkF1cU1zblBwZzdz?=
 =?utf-8?B?NjRWWktuaFVCSE9YRFRXMkhZZXRGRExlQllJeUdKdHRTRkY5VmtPZEJ5OUxN?=
 =?utf-8?B?SGpscTlwVFFsWFJFQnhWemFjMzVTd3dGNmRyWnBURzNLVVZWOWc2SXl4YXN4?=
 =?utf-8?B?Qis2RFJ0SCsvaDI3NjdySVlVMGhXNUgxZTkxTlQ5dlVWWlBSWS9lV0gxRnV3?=
 =?utf-8?B?L0JOOC9aYmNVc2ZPUmNtVW1maEdlaE1KcjA1MzdPQXQyTUNRL3lrNzc2S29E?=
 =?utf-8?B?amlaQU1PLzhTdk1ub2VldG5kVFFVZmJLbkkxUThjQWkvdFQzL3RkeDVCODYz?=
 =?utf-8?B?S093Z2NFeENLeGREa00zcVRERTduK3BQNHc1WXE0VU54S0ZKQUNiQlhYZTVj?=
 =?utf-8?B?NGszNi90UWhTbE5RT3lySDlvcGkwTjlJZVRjMmpRL3dUdnhvcmhBWTRUL2l2?=
 =?utf-8?B?bHA4UzVIVG5hU3JoMExuZUpHS0hCa1ZYSnF6NFVJLytzczB1TFhRZDlZdjdZ?=
 =?utf-8?B?NnpQcWR6cFFtcnZHbEphWEJLcnFtSEp1Z1BsdnFqTEU0UWR3ZlJEblF3ckdW?=
 =?utf-8?B?OExJbmphcUhzTjM3RE02YXVaOENJaVRYcmV6Qi9LbjFxU0MzRS83Vjk3UGFY?=
 =?utf-8?B?eHdRSUJxN0RjMVYvQ2FQMzJmR2dCcUljOVF4bFlCN1hBSXR3Q1hEVjlLUXMx?=
 =?utf-8?B?aHo1UG5PSitDbjZRalJrcTZvYnpieUZkeDlobndZVjBYZXVYL0FWaVdlSEhH?=
 =?utf-8?B?M3BaWTdnVzhQdHhyeXhvTTJtYjZPamdnZi9vY216Uk05OWJkUHZrR1IxVGRy?=
 =?utf-8?B?UEVQOWFtU1BFUjRpQ0pGQWhoMGhHWHYrWXNQdGxoai9CSG5XWXUybzR3bmNN?=
 =?utf-8?B?T0M0Ly9USFZRSlBXZm5FbjRwdXRuQjRtT0lobENKVU5lVnB6dGJiY0JrMTFu?=
 =?utf-8?B?dHZNaHMyYkdOU2ZXa1dCT21qWVoxUTQ0MHJYVHdaTTR3Y2NSTjk0dzRiY1lW?=
 =?utf-8?B?WmRCeGtXdzF3dkgzcmJxZzdFZzRzckNXNlVJMTZBQTJPSDZYbXRrcEdUNnNa?=
 =?utf-8?B?bWxWclF1N08xdzNQR0JScEt6UjQ3cVA0L25uVmd2S0pwRG5IT2o5NlczZWVM?=
 =?utf-8?B?a1RIZm9pdk53Y2o4bGxaNlJHeXlDWGtsb3FoNm9qZDh6MHJ4RHozR0xEckdH?=
 =?utf-8?B?L0h6Y25OWXNyaC9Fby80Kys4NGhYN2Q1cVdaTlA5VTg4WmVPa2pzN0JCVjBB?=
 =?utf-8?B?VTZlNkkrOXpYYnJuOEV3RFNTMGdqdXVvK250a3IzZlVVSWg1bjEzQWpRcmZU?=
 =?utf-8?B?Qzk2TnR2ZUljWVEvK2VWbyttdUVyVlcyaTJoSi9yc1lzMkhzZW5SRjNHdS9N?=
 =?utf-8?Q?kV5AX1fZTvb46McENQBylN4ZK3zIcX7Y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnhhK3FhWUlSVS9MV08yUXFsK21IckhsOUdianlUUW1ud0htZ0JSRWJ0R2Qy?=
 =?utf-8?B?RGlSWXdVeHhLZnFBUXcydjJlMEtva2ZvZTkzbEJBZk4vdjhDZHV3cXZhWXNq?=
 =?utf-8?B?Z3RuaExVbGx3WTJ3aVIybVEyNER1Y3cvV0l6dTExTVpCcjdtY2RhWks5aGFw?=
 =?utf-8?B?VVRHcWw4Q2NPMEhsTHVnWm1lRkpWM2wwUHJ2R0VWa2tJZ1BOakg5Y01sdFpu?=
 =?utf-8?B?SGc2UzAwOUd1OHNkaG1CaEc2VWlJeDE2TDVNL1ZVcG4rWVpsUmNTdkk4ek9H?=
 =?utf-8?B?UHkxcDlEMkVqdnRiamo5S0NteTloS0lqSDhHeHJDTlo4V2E0OFNYdDF5Y1M2?=
 =?utf-8?B?aFU1SElqVTFTQUZqYWloU3VhQkh2ekZMNkoyaGpxZUk3Sm1rL2U2Z2VoZlVY?=
 =?utf-8?B?UnFmYmI4REVvTzJyanc3TkREZTNhR1drOE9nMkpmYWJlTmtZRG0zd3dpTkx5?=
 =?utf-8?B?emNUR1NxRjc4RlhpMHFhZURWOC8vWG05TDBaVjlBNVpwK0JzUDNkaGUzTC9q?=
 =?utf-8?B?OXljVUY4NHBtVDgrdk8wUXBsZE5UM21aSTJralJnQjlYb0UraEd1cVRCaVBx?=
 =?utf-8?B?YjMvYnlGaHFoai9PWUl4OFd6QzVsWUpBZVRGNWNXbCttVGZ2bHJIbVZkN0I1?=
 =?utf-8?B?bmY1WkhQNjU1WkIyNFQ2SzJFbXJNQk55TWZ6TytDaDZKVFZkeVkrZ2dOR2FG?=
 =?utf-8?B?ejlqUHRSM3hhU1lqbjhPTFhqK1MvdXJYaTFseHZ2UVBwVk1LdzQwa0hyY3li?=
 =?utf-8?B?OVpjN0M1MGtxejNaaHIrREdsc1pwZDQxRnlwOFNCMmowaUs2WWNlNlJhR0pE?=
 =?utf-8?B?MFVwL3hPU1IwUW9DNXB3bXFKNERVTW5tUFN5ZkR0NnR0ZEdLWmhySlkrWWpv?=
 =?utf-8?B?czNSOXlaYXdtUVFrREpiQjNXM0I3dkxHQWNkRVBHWGVLV0tUQmNhMklUV3BU?=
 =?utf-8?B?dlB6dm5JNklpK2V1eDNPcHBjTnRVUkVVYVJXMFFjbzBRQ01zUW4vR3Z4Njd4?=
 =?utf-8?B?UnlMZno4M1FQeEVQWGh6b1RjcmlQWmozMTZicjNVajlPSmVPc3lwRGlYSkI3?=
 =?utf-8?B?cFFKK3p3VTAwV0tPWmk5eXBCREZrVWx6Y2w1NmtHMHI2RHI4dVlxVGhoS0x5?=
 =?utf-8?B?Qzh3Mk44cDdPY3Q0UEZQbzlWT29XSFgvblhHUzVCVndzeTQxTHkyWjlvTXhO?=
 =?utf-8?B?L3duTHFZZk02bm0zTitQTHZJNkN6TW8xN1llNjRDd2NPZ1dnNmIwUnJySXRT?=
 =?utf-8?B?Q1NKeTlHRVMycXlodWt3TEREb1pGb1dFQU9sVTF3dmEzaHZFbjN1RXBWZ3JG?=
 =?utf-8?B?N3BXOHBFSWpoaC9iVlN6YXlSUitTMEVBL1lMWERIL0ROSTM2M2JGMFBGeXJC?=
 =?utf-8?B?SFhES2hHelAxaUFMWXVIOXltdUZETDRxSVNXQ0czbVp2K25nMjE1akp0UlM1?=
 =?utf-8?B?ZGExd1d4MUhGRFhRamF3SWhSYU5XZE9uSjJpd2MySm9sMUpRTi9TMzRCZjBQ?=
 =?utf-8?B?VEswMjRHM0RuRDNPQnZseEFoakFQQkpsejFGSitOOVd3NlN1S0xtblc0Tm9l?=
 =?utf-8?B?alI1Zm5aclFkUzRiN3VzcHBsY0g2dzl5SzFobkduOTNpaXNCeHZUNTY2WGlE?=
 =?utf-8?B?WjhRU3BQNU1WMDJJb01Ec2kzU3dPUDBGZ3FaS0pKZjRMUmJCMm5rZENMcGFp?=
 =?utf-8?B?YzQyTGJTeVRncmlzSGJxS2luQUsvNndYdDZUN1loYVk1YnpaKzN5aE01VXlh?=
 =?utf-8?B?WkdKZnNvdDc2alczMTJ6WTJyd25BVEE3MklzSXpjYWJaNEQ3Wml5cXZWN29v?=
 =?utf-8?B?cGNDeFNhN2tqNWp6Q0dpQlMwWlRRUy9ZN0VNQ0x0UVI1NEJKNjJMM1FHVEtw?=
 =?utf-8?B?eVpLRWZ6YnczNzZpY3JaLzNzcndSZkNoR0tKNnBBSVJSaFF6WUpGUVJxSDVq?=
 =?utf-8?B?KzUvWHlmYW5CZWFLTlhWeFdkKzhpNWpmeVJwRExBSWIwdXVzQy9CcTIvYjJQ?=
 =?utf-8?B?cG5RNHRKbkJxelVIWVpaT0N2SjhPVGMyYTc4VGY3Ry81S0JCb05TNnZyQlZR?=
 =?utf-8?B?VmFXVnJLWVVnSlFUWXg1R2laM3EzSGFiWExraTZRTWsyZkxHaWRyZVkrYUU5?=
 =?utf-8?B?T2t5S1M2NG5IUE5DZEJaY3VwVlY0VmU2WCtnMTdRdEdnaVoxWVVUSHVyK3lH?=
 =?utf-8?B?QXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdbcfc5c-f2af-44fe-151c-08dd6ab615f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2025 09:27:24.1205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZQbfVT2EjytGhB+w5pEiIKRiPVMcFXEy8l/VHgfjMGRt6w/C/L1RJD26IHN90SkPrQWFjLhCGuH3iKupQYEq76Ybkpblcqj/Fm732WH9BG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7243
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742808449; x=1774344449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M/Lo6NztOHIA2WNEjsVXMa6oLZhsZhjvE8hIZdH6QTM=;
 b=Ea2EmAArwctORo+yqyDwHlHk4S++RDYozSPabaqm+JmcJ/xCQGqxqYVX
 mtR+VCSuu93JoRu2hPI4O/MZYjBiBr7fB0ma53GKe1AhEAAzn1gwh5j1U
 yxfD9Dn2VfPIx3fnMahm5zd6IpWHDb0ncA91PRy3LoOHOd8ud7019IO6Y
 3ARrAsyeYqVepwSwJF9yHx1i7oNeCbkaSMpkPRFsNsFdzYTORISGBZPX9
 pO9gGRkfJ8tdBkbuH/mh5cFLscf3w62ga1wIUN7p0/nr8e5qrtWbvLLPI
 rh/U7p+FcDH6IKegJ9h1npFh5AcmIeYOqf2eaPOdHyNJdVYX/t5niGirV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ea2EmAAr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: fix MMIO write
 access to an invalid page in i40e_clear_hw
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmluaXRoYSwgU1ggPHN4
LnJpbml0aGFAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDIxLCAyMDI1IDU6NDcg
QU0NCj4gVG86IEt5dW5nd29vayBCb28gPGJvb2t5dW5nd29va0BnbWFpbC5jb20+OyBMb2t0aW9u
b3YsIEFsZWtzYW5kcg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBLaXRzemVs
LCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgTmd1eWVuLCBB
bnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2ly
ZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVj
dDogUkU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2Ml0gaTQwZTogZml4IE1N
SU8gd3JpdGUgYWNjZXNzDQo+IHRvIGFuIGludmFsaWQgcGFnZSBpbiBpNDBlX2NsZWFyX2h3DQo+
IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwtd2lyZWQt
bGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4g
S3l1bmd3b29rIEJvbw0KPiA+IFNlbnQ6IDExIE1hcmNoIDIwMjUgMTA6NDYNCj4gPiBUbzogTG9r
dGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgS2l0c3pl
bCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IE5ndXllbiwg
QW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdp
cmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+ID4gU3Vi
amVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYyXSBpNDBlOiBmaXggTU1J
TyB3cml0ZSBhY2Nlc3MgdG8NCj4gYW4gaW52YWxpZCBwYWdlIGluIGk0MGVfY2xlYXJfaHcNCj4g
Pg0KPiA+IFdoZW4gdGhlIGRldmljZSBzZW5kcyBhIHNwZWNpZmljIGlucHV0LCBhbiBpbnRlZ2Vy
IHVuZGVyZmxvdyBjYW4gb2NjdXIsDQo+IGxlYWRpbmcgdG8gTU1JTyB3cml0ZSBhY2Nlc3MgdG8g
YW4gaW52YWxpZCBwYWdlLg0KPiA+DQo+ID4gUHJldmVudCB0aGUgaW50ZWdlciB1bmRlcmZsb3cg
YnkgY2hhbmdpbmcgdGhlIHR5cGUgb2YgcmVsYXRlZCB2YXJpYWJsZXMuDQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBLeXVuZ3dvb2sgQm9vIDxib29reXVuZ3dvb2tAZ21haWwuY29tPg0KPiA+IExp
bms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvZmZjOTE3NjQtMTE0Mi00YmEyLTkxYjYt
DQo+IDhjNzczZjZmNzA5NUBnbWFpbC5jb20vVC8NClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9r
dGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KPiA+IC0tLQ0KPiA+IENo
YW5nZXMgaW4gdjI6DQo+ID4gLSBGb3JtYXR0aW5nIHByb3Blcmx5DQo+ID4gLSBGaXggdmFyaWFi
bGUgc2hhZG93aW5nDQo+ID4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9u
ZXRkZXYvNTVhY2M1ZGMtOGQ1YS00NWJjLWE1OWMtDQo+IDkzMDQwNzFlNDU3OUBnbWFpbC5jb20v
DQo+ID4gLS0tDQo+ID4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1v
bi5jIHwgNyArKysrLS0tDQo+ID4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkNCj4gPg0KPiANCj4gVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFA
aW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
