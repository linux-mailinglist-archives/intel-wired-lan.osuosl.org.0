Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FC0B58CB9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 06:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC6F1606DB;
	Tue, 16 Sep 2025 04:19:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zWPrbD2Vedgk; Tue, 16 Sep 2025 04:19:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE411606D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757996392;
	bh=gYcbm+XhNk3W5WtnAOnfbFCnQ+rY4majDX78i9KMXa4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VlongnDgUnRENmxOzIFbSKjTEnWJpd+1R4Yp/6pBkwGxKlaofruaYpFGJ74Pn3J9z
	 B2RQavdT5BAtvj952vmTqb9Rt4d2ogF/qCu+qV/8gmv4oftxHihBDeKrhI64fKKcl7
	 6f7Uni5kzUkK/huRQLY05TwrfQVRpbGdL8/YWlWbKNDKFpVK8bY78AgWbJGfeb/B1m
	 nQ1St6oywisUSJSOMWhQgwr959LKhULGvTYkPS4RQ+Bzlw6r1Ty0TQSVM9Yz0lyQ8y
	 GCkTOX0WWjCpmh0b7bRuJ9A/c1oqfJrvN+8evaARKcT9tFIIeFge0E1nZcZqp5tsNq
	 vEPCSU4Q1k9DQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE411606D6;
	Tue, 16 Sep 2025 04:19:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C2D7A22F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 04:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A017C8071A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 04:19:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3wg_xs2fVKgl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 04:19:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F7FB80710
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F7FB80710
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F7FB80710
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 04:19:48 +0000 (UTC)
X-CSE-ConnectionGUID: /TNJs5oDTa6h6zSd9P0IAg==
X-CSE-MsgGUID: 00JS6juXSQeEHNSbOwtfWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="60410026"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="60410026"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 21:19:49 -0700
X-CSE-ConnectionGUID: bYipWXh7TJmuiPIq+9gL4A==
X-CSE-MsgGUID: 2TVJ3j2wTDm+qay/k+QnGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="173946238"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 21:19:48 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 21:19:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 21:19:47 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.23)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 21:19:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IKU9PqXnBmXpU7GbjbkLKgu9ILn5EoMBoGozhnJg/f7+lcatV8p4URFfvykWPirTd3KCE7byc/P3teLE4KWaBB7p1wWXqq1mvhCzINv6tcRdGriFEmcW6tz2LFU5W6VZa7lCMTz3EsJqD0b0cnNPOtdtanH2LAsFn0VHA8eTMpdEuxIIsXLcw3+fcBcQM85CWZWgnMK0802rXzdANuim67lURrPscjKHsfYyO+FvGMS4z1HU/k6nMMZ27TLPp7KHthxY3W0HooXhLnBOUD3EPMYweUQutkHkBsMX8Sm6tiXZ5+8zYo8oXqJAip91Hu/P7qD8KSxQSWyFwfS46DRsAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gYcbm+XhNk3W5WtnAOnfbFCnQ+rY4majDX78i9KMXa4=;
 b=I4DsMAuh4sn0mwcoye0lZURfnTXQj2nVNR0boD+JG0hlUvIqYtnq/hEt+tNw/XaWFqE5VmnMUnAOt+sD9sUhw6HdcNH5gsw8u/w8lKSu5glpFo/Pn608wWDkGjP9D4bKTUPs/HpGvxXIM2LjqwROfQT3NGGK/yR1Gz6z+ay7V+y0WVnuPcrZHcbCml4aGMRDfQBBPh9k9PPltMRUjh6hCA+ElU6Cgoyj3ssHHZWcTo8lTuaDg/SofH3cHcIBECvkVmOUyBup0eDvSk22jCOTLu8bfcGUO+SOsaN/R7lsRqw4XWlgmny8nRpcFv0QMwiC+fQZIdYqEK2BC/ocRYZOKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 04:19:38 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.021; Tue, 16 Sep 2025
 04:19:38 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Christoph Petrausch <christoph.petrausch@deepl.com>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
Thread-Index: AQHcFhQvXzNpdjjAJ02bShFmVkjx27SVU94A
Date: Tue, 16 Sep 2025 04:19:38 +0000
Message-ID: <IA1PR11MB624104B8FACCCD9DC31493248B14A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
In-Reply-To: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA0PR11MB4542:EE_
x-ms-office365-filtering-correlation-id: 2997817d-7f85-4c05-e38c-08ddf4d84047
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?V0I1WVFldklnNnNmMTNWNytOdmgyUCs5UnFjWHpLWlJuSGIxeVhkcG1qcWt4?=
 =?utf-8?B?SHlPK3lxeEhhbVF2SmZCcSszOHhLeVJKdGtPcDhQUlRGV2hyV3hKVnNtYzNa?=
 =?utf-8?B?N01vTVlaVCs2YTZudGd1OU1KdVQxYU94TnhKMVhiNURDb1M4TDRTWnI5eXlK?=
 =?utf-8?B?bUhEWTNyemo0VStKbHVPUnFsV0VwMHVMaVZjT1djQml2WjVNRjc1UDNlNm1S?=
 =?utf-8?B?RFZSN0xKbE44SzlzbUU0RzV1ZTQvbk0zSmZLejMzVjBOU1ZpU0NCZHdjUTIx?=
 =?utf-8?B?U3NBNUpuSjI5NTVpbC9Kc0RMQVpudlZEb3MxQWlPVFlwOFJGRTNVd3ExYzZF?=
 =?utf-8?B?WWpSbk5lYnRmL0t6dG01WWNtNTk2RzJGY2xlemQ2L3k5YWVBdGQ3Y2xxTzBn?=
 =?utf-8?B?eWVNc09LNGc4UGEvdzZqb2ZTRkplc3Jld2RFZE5yaGwweFpZeno2cThjZWJ1?=
 =?utf-8?B?VkdNaEJOSmZlZGNDQUZtZ0ExL0RPeThLK1o2MUFRZGdOQ2hsd29ESWo3NWF2?=
 =?utf-8?B?NHRpVmd5RldzNU0ycDRMbytPc2VTd3E4QU9zSDNmdEFoTE1yempiMDA1bmtI?=
 =?utf-8?B?dWtsUDNBa2hIY3pJZkJERnJneXFPMkh3STd6Q01DclFzUFpGMUx3S1hjN2Uw?=
 =?utf-8?B?REloaisyQjhHY0lXNis4YTU3TzZYZjBlOUZsRUp0c1lFdXhoVGw3VEVtTFYv?=
 =?utf-8?B?VGUrUDNmZVhkaEwzRi9wRXl0OWhVNXZLOEFocjJhZUtjRGJnenVpMUtjMUM2?=
 =?utf-8?B?YnR1Z0dKQjFRK3VKM050cUdjeTJ3UEd6UkNQVS9KY1ZxN0J5eW1mZFJUWGxu?=
 =?utf-8?B?RXFFQ29QckdYZ2c3eWVyU2ZidHlOeWFldDZ5NFYvSmFTeTJ4bW9lYVhlODZN?=
 =?utf-8?B?bWJCUHVJcUIrOE1WWXRyZGNCSnFsb0JSUEFzaGZ3b2F6emRkNHNaSkxGZHdr?=
 =?utf-8?B?SW8yMmhGNXlucWZzOVM1bVJkT1BuSTN1WWRYaE9TU04xTGJ5elJKNHlSTDFH?=
 =?utf-8?B?TmE4OE41Rm5wMGJnQ3VqYWpaV0owb2VpUGY2QlUyYWNIZFY0aThRaTFBZ05L?=
 =?utf-8?B?NkF6UC9nbHhvcG1ndFJTYndaMllWUHkxLytTVEFXTnZqR3dYNkFDYVQ4Tlp2?=
 =?utf-8?B?SVlUWlI2MTN4Z29jTlQvM0M2RGFJTlZhYldhK3VLeVVXb1J1QUtxWVNzRHll?=
 =?utf-8?B?Ujl3UE1zS3MvbWRWQlpkWURPeklxeDNzbGhzTjZaVU9qT0ZOeDNWbFMrSEFU?=
 =?utf-8?B?TzM5b3o4L0JGNktrZms1dmZqQlRZMVRJVTdKOUNvemE5SHk0NzJmMVM1MWd5?=
 =?utf-8?B?ZkdGNHhDVWc5NWpEbmtDMVhHQzllSXJRSE9NQ2kwWWRFbXMrRlZzTEJQK0VX?=
 =?utf-8?B?aXZDQW5oa1RGazRWWHJWUjNTSngwTlNaUnRUVm1BMHV2WlpRQUhPeWJOVm80?=
 =?utf-8?B?enJFQ094aUdmUmlsY2RjdUVMZGlVZkEwZ1ZNQkpKTzZIRldHQWMzUmFma0xW?=
 =?utf-8?B?OUhQKy81NFVFYUV3ZUtCUUZFSVoxck5KNC82RTY0U2txZGdyR21ZT3M1MVZM?=
 =?utf-8?B?YkZRcWVaTDAxN00xdDJKV0VZd1B0RW5wNFZ1QkJEdllpdHp6RUxwTVB2NDdt?=
 =?utf-8?B?R245STlUZ2RVdmEwdWhBQU5Cdm4rUWF3ZU1JUEJMVGhGOVo1RHpML0F4Y1F0?=
 =?utf-8?B?NGRRbFdLOUkvQlZTbzczR0lwUFNPeG1VVmk5L2J0N3E0L2R3UUJUYk5Wc2ZB?=
 =?utf-8?B?REJhVkZ2R1V4RWlsTGYrUStDb3dqZk9mSlM5KytrZUdoYklZdjFZZlpiaVpK?=
 =?utf-8?B?KzZZTmpWb29EcjhoNm1OTmJOYm9lK0ZDTENKVE1IUFl0SUlJRVlIOHVCWk5q?=
 =?utf-8?B?TlIzVzFlZjRlRlhyNElNb1cxQUExV1FLMFpkcFBuQTRiQkVIMll5bWNHSU0z?=
 =?utf-8?Q?vH8QOuDHJ7Zq0xVPx6ekRf06a3BlWBgX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0QwZ0twYWwyN3ZzREd0WTlwY3hCYWl3Szh6Tm9qWGxSZ3dsR0dLY2kzYjZq?=
 =?utf-8?B?SUxJRG9ZUW1BMmY3YXc1dk1MbmY4RGg1R0RMZ1RvWm00Y0lWbUNUODJtSzhy?=
 =?utf-8?B?eGpkeFhpTGM0eUdheTNxRVJVRUdRdGFKQW02SVRUZTd6K0VOV0VEejl5S2Yr?=
 =?utf-8?B?cWRsT2hiU3pWbWJWOWEraHIyYmZJeFQwck4wR3BacXF2N01qODVtbnRCTjhK?=
 =?utf-8?B?Z3JmVHFFQmN5WnNDbjVwOXFnUFNJTnhjMDNMNGlZRitOTUV2Z1hJMTRRRFBJ?=
 =?utf-8?B?Vk5uZmJoNkZ3RlphWmpKNzk1MGxjRHBkaDhrUUxuZUNUVHo4RXBGZ2xpaGE3?=
 =?utf-8?B?eDUvbmVDMzhwemdITVRBUTh2cTdHWS8xVnpTUm5lVGVrbmFYWSs5OHZiYjJJ?=
 =?utf-8?B?em4zcXUxOXZ2K3BlV0ZudUhzYzBsS0s0aGVRZjBHYjRBWHYxZmZNSTN2SnVo?=
 =?utf-8?B?OTM1UEFXK0FHVy84VmF0SkNNWlo5aytMeDlZM24zUFYyd1orWWU2ZUxQQmkx?=
 =?utf-8?B?TUFZWUhoTklCbzdiV3l2anZYNE95VDVJYjJGUEpnVXlvMEczVTVhU1M1RTFt?=
 =?utf-8?B?bFlWQkEvMjlDaHVyWDZQS2ZWTFUyalNLM2NuNWhKaWF4VzROa21YRURDUnZI?=
 =?utf-8?B?eGNZOE5Db1dvdDFPOHpDcFJ1U3VTN3VPdVM2VE1LNXJEZVFvaHFxNnFqcU11?=
 =?utf-8?B?ZUJhQVk0MFp0SU5mZ05NaGlRMjVkREkyc0QxYUVGODgzS2ptakl4MHQyOWVv?=
 =?utf-8?B?aWI4a0RSWHlVZWxGbjJ5blhkTUNTTjhwSmNaVVc2RUJOUWp5M2VENFpvRW1P?=
 =?utf-8?B?VGxIZDBrVWRnblhqb2FPclpzNnVUMjZrdmhJMzRsY0VxM2w2Q0U2b2dFb1Bq?=
 =?utf-8?B?dHU5WUswcEM3RDZaODBxYktlbGV2V0dPR0pVUlcwRzh2dVRKL2ZLdHVSdGl0?=
 =?utf-8?B?OFZPWWQrWTlXc3JaS3EwNEdNSUYwZmlmcDZQS29jaXgzRWxOVys2cVB5MDg5?=
 =?utf-8?B?c0xWaTJycnl6b0R5dm9ReG15ajFxeHozcTlxRUUyWlJ3WS95aitHZnN0V3Jj?=
 =?utf-8?B?ZzZGS2JlUHU3bnovL1hxYlArT0dIcUlpcm4wYWhFbnFRZlNJbjE0WnZEQ25u?=
 =?utf-8?B?SzhhZlQxVzVTcWVSb2o2ZkpKZURjUkM3VDlyUXpDVDJ2VGNhck9DLzhLZ0pY?=
 =?utf-8?B?NndzaDB0a2JUYVU0TW5nTlZRMEtHdEVPWkxvcGgwbGd0dkkvQVJ5ZHVVaDZ0?=
 =?utf-8?B?L1dJOFlIMWx6cGU1T2lTUW5HdFJaM29zTnBvYkpwVlpYVWI1RUJ5QTdTRW9k?=
 =?utf-8?B?WkZBWjhqeUh4UStOaW56TlpDT3cwNjBqS3JsY0kyYjBUcXJQZ1ZOemt1Z0U0?=
 =?utf-8?B?dXdLMG9nNWJPam0xZEJ3RjNjRTVJNlRvcDV0T3MrcndSYm5qR0hGc0lKYjR0?=
 =?utf-8?B?ZlJabU5mZGVIU213T1hTekl1K0t6b1huZVYrMUNIMDBFZFZCNXBkajIrcVJv?=
 =?utf-8?B?UnRZMURwOUNSVEVpVkg2enhUbzZaenltdHBna1RPMUFZTVBLY1Blb3gvOGR4?=
 =?utf-8?B?N29JbU9tU0NITDcveFEwa2pxcEdjNzN4Qkh3ZUViZ0JWeDZhUW50RnU0aGla?=
 =?utf-8?B?ZVVmV215R2FDYXc1aE0zbFNxeE1RM3Ivb0dxSFNpeTVMSlBZblhoV09jV2M1?=
 =?utf-8?B?Rzc1SmdqM0xKcUM1MkdRckpyMHVIcXB5NnNuTUtZV0wrdVZwVXN5YmViNVdK?=
 =?utf-8?B?cGtGN0ROMW81ME9ESEFSRHFuT2h3T2V1QnFFdnNWL0MvbS94Y0xBL3hKUW9y?=
 =?utf-8?B?blV5NUNpeDdKejZQekVOOURQekxEdi9qcWcvNFljQmJqZFBsL3Z3Z0t5cGRj?=
 =?utf-8?B?MFdBOFRTdFNDUkx0bkIrYUdLZlVMVW95TGNYRGdjbGN1QVU0K3dreWtld2g1?=
 =?utf-8?B?UHUvK01kTG9iKzNHb2p0QjFnOVA2bnhxYXhEeTBmRkV3T0hIYVNFeiszQThm?=
 =?utf-8?B?MXp4YU1kZ3J4VXEvQVZjYnVzTGNSeFJDVm5GY0d4T1AwSGxyTFlLZFFramQy?=
 =?utf-8?B?WDJPYXIyWS9lS052Vkw3TmhBQUJuUTBxcEl1eVI0RzFVeU5NaFFaQUoxVWlC?=
 =?utf-8?Q?chaoYoZ7PQN5gf0ehgdq73Om9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2997817d-7f85-4c05-e38c-08ddf4d84047
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 04:19:38.4817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fuFztoQTHzwOdgipcugFOEH/L15EVqyJZrV4u+eVAgnRa0k4rpM+KgCOBHXR0rp3Xm/Er3bMG9jQ5flbY5Bayg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757996390; x=1789532390;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gYcbm+XhNk3W5WtnAOnfbFCnQ+rY4majDX78i9KMXa4=;
 b=A8QnOjdW7ZjRZZsBJ+DXZ82k+YxCUHejmvP66fS7EYWMS9mPhBbjoUBd
 TCB3sOrua3DVeFZ7wJDAkkJPzRqn1uVfgzUiMFa2nazftvAjvidrqnsKA
 tjpWVuPMJ3//NsIKj3AZTLauBqi2ja6c/CnRSywTRvN4VXdZcNnmtYNn6
 +VLmtB2Obh57lXt/i4u3rOkPaW5L2ZFLC+ZAJdiYpDhz5zSHa3v/1meBL
 x7DzQWTIyU+4nSyYCVXCFVotC2Nox37LbblyNincV6JZi52rVrSZLqBU8
 e3Vz0PsqVUFsR2ix4eKdsntCYynD89yzu/QInHeQcme7C9nPtr0buU5bz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A8QnOjdW
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
ZXINCj4gU2VudDogMjYgQXVndXN0IDIwMjUgMDQ6MzANCj4gVG86IEt1YmlhaywgTWljaGFsIDxt
aWNoYWwua3ViaWFrQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1
eWVuQGludGVsLmNvbT47IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9z
dW9zbC5vcmc+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IENjOiBDaHJpc3RvcGggUGV0cmF1
c2NoIDxjaHJpc3RvcGgucGV0cmF1c2NoQGRlZXBsLmNvbT47IEplc3BlciBEYW5nYWFyZCBCcm91
ZXIgPGhhd2tAa2VybmVsLm9yZz47IEphcm9zbGF2IFB1bGNoYXJ0IDxqYXJvc2xhdi5wdWxjaGFy
dEBnb29kZGF0YS5jb20+OyBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjJdIGljZTog
Zml4IFJ4IHBhZ2UgbGVhayBvbiBtdWx0aS1idWZmZXIgZnJhbWVzDQo+DQo+IFRoZSBpY2VfcHV0
X3J4X21idWYoKSBmdW5jdGlvbiBoYW5kbGVzIGNhbGxpbmcgaWNlX3B1dF9yeF9idWYoKSBmb3Ig
ZWFjaCBidWZmZXIgaW4gdGhlIGN1cnJlbnQgZnJhbWUuIFRoaXMgZnVuY3Rpb24gd2FzIGludHJv
ZHVjZWQgYXMgcGFydCBvZiBoYW5kbGluZyBtdWx0aS1idWZmZXIgWERQIHN1cHBvcnQgaW4gdGhl
IGljZSBkcml2ZXIuDQo+DQo+IEl0IHdvcmtzIGJ5IGl0ZXJhdGluZyBvdmVyIHRoZSBidWZmZXJz
IGZyb20gZmlyc3RfZGVzYyB1cCB0byAxIHBsdXMgdGhlIHRvdGFsIG51bWJlciBvZiBmcmFnbWVu
dHMgaW4gdGhlIGZyYW1lLCBjYWNoZWQgZnJvbSBiZWZvcmUgdGhlIFhEUCBwcm9ncmFtIHdhcyBl
eGVjdXRlZC4NCj4NCj4gSWYgdGhlIGhhcmR3YXJlIHBvc3RzIGEgZGVzY3JpcHRvciB3aXRoIGEg
c2l6ZSBvZiAwLCB0aGUgbG9naWMgdXNlZCBpbg0KPiBpY2VfcHV0X3J4X21idWYoKSBicmVha3Mu
IFN1Y2ggZGVzY3JpcHRvcnMgZ2V0IHNraXBwZWQgYW5kIGRvbid0IGdldCBhZGRlZCBhcyBmcmFn
bWVudHMgaW4gaWNlX2FkZF94ZHBfZnJhZy4gU2luY2UgdGhlIGJ1ZmZlciBpc24ndCBjb3VudGVk
IGFzIGEgZnJhZ21lbnQsIHdlIGRvIG5vdCBpdGVyYXRlIG92ZXIgaXQgaW4gaWNlX3B1dF9yeF9t
YnVmKCksIGFuZCB0aHVzIHdlIGRvbid0IGNhbGwgaWNlX3B1dF9yeF9idWYoKS4NCj4NCj4gQmVj
YXVzZSB3ZSBkb24ndCBjYWxsIGljZV9wdXRfcnhfYnVmKCksIHdlIGRvbid0IGF0dGVtcHQgdG8g
cmUtdXNlIHRoZSBwYWdlIG9yIGZyZWUgaXQuIFRoaXMgbGVhdmVzIGEgc3RhbGUgcGFnZSBpbiB0
aGUgcmluZywgYXMgd2UgZG9uJ3QgaW5jcmVtZW50IG5leHRfdG9fYWxsb2MuDQo+DQo+IFRoZSBp
Y2VfcmV1c2VfcnhfcGFnZSgpIGFzc3VtZXMgdGhhdCB0aGUgbmV4dF90b19hbGxvYyBoYXMgYmVl
biBpbmNyZW1lbnRlZCBwcm9wZXJseSwgYW5kIHRoYXQgaXQgYWx3YXlzIHBvaW50cyB0byBhIGJ1
ZmZlciB3aXRoIGEgTlVMTCBwYWdlLiBTaW5jZSB0aGlzIGZ1bmN0aW9uIGRvZXNuJ3QgY2hlY2ss
IGl0IHdpbGwgaGFwcGlseSByZWN5Y2xlIGEgcGFnZSBvdmVyIHRoZSB0b3Agb2YgdGhlIG5leHRf
dG9fYWxsb2MgYnVmZmVyLCBsb3NpbmcgdHJhY2sgb2YgdGhlIG9sZCBwYWdlLg0KPg0KPiBOb3Rl
IHRoYXQgdGhpcyBsZWFrIG9ubHkgb2NjdXJzIGZvciBtdWx0aS1idWZmZXIgZnJhbWVzLiBUaGUN
Cj4gaWNlX3B1dF9yeF9tYnVmKCkgZnVuY3Rpb24gYWx3YXlzIGhhbmRsZXMgYXQgbGVhc3Qgb25l
IGJ1ZmZlciwgc28gYSBzaW5nbGUtYnVmZmVyIGZyYW1lIHdpbGwgYWx3YXlzIGdldCBoYW5kbGVk
IGNvcnJlY3RseS4gSXQgaXMgbm90IGNsZWFyIHByZWNpc2VseSB3aHkgdGhlIGhhcmR3YXJlIGhh
bmRzIHVzIGRlc2NyaXB0b3JzIHdpdGggYSBzaXplIG9mIDAgc29tZXRpbWVzLCBidXQgaXQgaGFw
cGVucyBzb21ld2hhdCByZWd1bGFybHkgd2l0aCAianVtYm8gZnJhbWVzIiB1c2VkIGJ5IDlLIE1U
VS4NCj4NCj4gVG8gZml4IGljZV9wdXRfcnhfbWJ1ZigpLCB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0
byBjYWxsIGljZV9wdXRfcnhfYnVmKCkgb24gYWxsIGJ1ZmZlcnMgYmV0d2VlbiBmaXJzdF9kZXNj
IGFuZCBuZXh0X3RvX2NsZWFuLiBCb3Jyb3cgdGhlIGxvZ2ljIG9mIGEgc2ltaWxhciBmdW5jdGlv
biBpbiBpNDBlIHVzZWQgZm9yIHRoaXMgc2FtZSBwdXJwb3NlLiBVc2UgdGhlIHNhbWUgbG9naWMg
YWxzbyBpbiBpY2VfZ2V0X3BnY250cygpLg0KPg0KPiBJbnN0ZWFkIG9mIGl0ZXJhdGluZyBvdmVy
IGp1c3QgdGhlIG51bWJlciBvZiBmcmFnbWVudHMsIHVzZSBhIGxvb3Agd2hpY2ggaXRlcmF0ZXMg
dW50aWwgdGhlIGN1cnJlbnQgaW5kZXggcmVhY2hlcyB0byB0aGUgbmV4dF90b19jbGVhbiBlbGVt
ZW50IGp1c3QgcGFzdCB0aGUgY3VycmVudCBmcmFtZS4gVW5saWtlIGk0MGUsIHRoZSBpY2VfcHV0
X3J4X21idWYoKSBmdW5jdGlvbiBkb2VzIGNhbGwgaWNlX3B1dF9yeF9idWYoKSBvbiB0aGUgbGFz
dCBidWZmZXIgb2YgdGhlIGZyYW1lIGluZGljYXRpbmcgdGhlIGVuZCBvZiBwYWNrZXQuDQo+DQo+
IEZvciBub24tbGluZWFyIChtdWx0aS1idWZmZXIpIGZyYW1lcywgd2UgbmVlZCB0byB0YWtlIGNh
cmUgd2hlbiBhZGp1c3RpbmcgdGhlIHBhZ2VjbnRfYmlhcy4gQW4gWERQIHByb2dyYW0gbWlnaHQg
cmVsZWFzZSBmcmFnbWVudHMgZnJvbSB0aGUgdGFpbCBvZiB0aGUgZnJhbWUsIGluIHdoaWNoIGNh
c2UgdGhhdCBmcmFnbWVudCBwYWdlIGlzIGFscmVhZHkgcmVsZWFzZWQuIE9ubHkgdXBkYXRlIHRo
ZSBwYWdlY250X2JpYXMgZm9yIHRoZSBmaXJzdCBkZXNjcmlwdG9yIGFuZCBmcmFnbWVudHMgc3Rp
bGwgcmVtYWluaW5nIHBvc3QtWERQIHByb2dyYW0uIFRha2UgY2FyZSB0byBvbmx5IGFjY2VzcyB0
aGUgc2hhcmVkIGluZm8gZm9yIGZyYWdtZW50ZWQgYnVmZmVycywgYXMgdGhpcyBhdm9pZHMgYSBz
aWduaWZpY2FudCBjYWNoZSBtaXNzLg0KPg0KPiBUaGUgeGRwX3htaXQgdmFsdWUgb25seSBuZWVk
cyB0byBiZSB1cGRhdGVkIGlmIGFuIFhEUCBwcm9ncmFtIGlzIHJ1biwgYW5kIG9ubHkgb25jZSBw
ZXIgcGFja2V0LiBEcm9wIHRoZSB4ZHBfeG1pdCBwb2ludGVyIGFyZ3VtZW50IGZyb20gaWNlX3B1
dF9yeF9tYnVmKCkuIEluc3RlYWQsIHNldCB4ZHBfeG1pdCBpbiB0aGUgaWNlX2NsZWFuX3J4X2ly
cSgpIGZ1bmN0aW9uIGRpcmVjdGx5LiBUaGlzIGF2b2lkcyBuZWVkaW5nIHRvIHBhc3MgdGhlIGFy
Z3VtZW50IGFuZCBhdm9pZHMgYW4gZXh0cmEgYml0LXdpc2UgT1IgZm9yIGVhY2ggYnVmZmVyIGlu
IHRoZSBmcmFtZS4NCj4NCj4gTW92ZSB0aGUgaW5jcmVtZW50IG9mIHRoZSBudGMgbG9jYWwgdmFy
aWFibGUgdG8gZW5zdXJlIGl0cyB1cGRhdGVkICpiZWZvcmUqIGFsbCBjYWxscyB0byBpY2VfZ2V0
X3BnY250cygpIG9yIGljZV9wdXRfcnhfbWJ1ZigpLCBhcyB0aGUgbG9vcCBsb2dpYyByZXF1aXJl
cyB0aGUgaW5kZXggb2YgdGhlIGVsZW1lbnQganVzdCBhZnRlciB0aGUgY3VycmVudCBmcmFtZS4N
Cj4NCj4gTm93IHRoYXQgd2UgdXNlIGFuIGluZGV4IHBvaW50ZXIgaW4gdGhlIHJpbmcgdG8gaWRl
bnRpZnkgdGhlIHBhY2tldCwgd2Ugbm8gbG9uZ2VyIG5lZWQgdG8gdHJhY2sgb3IgY2FjaGUgdGhl
IG51bWJlciBvZiBmcmFnbWVudHMgaW4gdGhlIHJ4X3JpbmcuDQo+DQo+IENjOiBDaHJpc3RvcGgg
UGV0cmF1c2NoIDxjaHJpc3RvcGgucGV0cmF1c2NoQGRlZXBsLmNvbT4NCj4gQ2M6IEplc3BlciBE
YW5nYWFyZCBCcm91ZXIgPGhhd2tAa2VybmVsLm9yZz4NCj4gUmVwb3J0ZWQtYnk6IEphcm9zbGF2
IFB1bGNoYXJ0IDxqYXJvc2xhdi5wdWxjaGFydEBnb29kZGF0YS5jb20+DQo+IENsb3NlczogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2L0NBSzhmRlo0aFk2R1VKTkVOejN3WTlqYVlMWlhH
ZnByN2RuWnh6R01Zb0U0NGNhUmJnd0BtYWlsLmdtYWlsLmNvbS8NCj4gRml4ZXM6IDc0M2JiZDkz
Y2YyOSAoImljZTogcHV0IFJ4IGJ1ZmZlcnMgYWZ0ZXIgYmVpbmcgZG9uZSB3aXRoIGN1cnJlbnQg
ZnJhbWUiKQ0KPiBUZXN0ZWQtYnk6IE1pY2hhbCBLdWJpYWsgPG1pY2hhbC5rdWJpYWtAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+IEkndmUgdGVzdGVkIHRoaXMgaW4gYSBzZXR1cCB3aXRoIE1UVSA5MDAw
LCB1c2luZyBhIGNvbWJpbmF0aW9uIG9mIGlwZXJmMyBhbmQgd3JrIGdlbmVyYXRlZCB0cmFmZmlj
Lg0KPg0KPiBJIHRlc3RlZCB0aGlzIGluIGEgY291cGxlIG9mIHdheXMuIEZpcnN0LCBJIGNoZWNr
IG1lbW9yeSBhbGxvY2F0aW9ucyB1c2luZw0KPiAvcHJvYy9hbGxvY2luZm86DQo+DQo+ICBhd2sg
Jy9pY2VfYWxsb2NfbWFwcGVkX3BhZ2UvIHsgcHJpbnRmKCIlcyAlc1xuIiwgJDEsICQyKSB9JyAv
cHJvYy9hbGxvY2luZm8gfCBudW1mbXQgLS10bz1pZWMNCj4NCj4gU2Vjb25kLCBJIHBvcnRlZCBz
b21lIHN0YXRzIGZyb20gaTQwZSB3cml0dGVuIGJ5IEpvZSBEYW1hdG8gdG8gdHJhY2sgdGhlIHBh
Z2UgYWxsb2NhdGlvbiBhbmQgYnVzeSBjb3VudHMuIEkgY29uc2lzdGVudGx5IHNhdyB0aGF0IHRo
ZSBhbGxvY2F0ZSBzdGF0IGluY3JlYXNlZCB3aXRob3V0IHRoZSBidXN5IG9yIHdhaXZlIHN0YXRz
IGluY3JlYXNpbmcuIEkgYWxzbyBhZGRlZCBhIHN0YXQgdG8gdHJhY2sgZGlyZWN0bHkgd2hlbiB3
ZSBvdmVyd3JvdGUgYSBwYWdlIHBvaW50ZXIgdGhhdCB3YXMgbm9uLU5VTEwgaW4gaWNlX3JldXNl
X3J4X3BhZ2UoKSwgYW5kIHNhdyBpdCBpbmNyZW1lbnQgY29uc2lzdGVudGx5Lg0KPg0KPiBXaXRo
IHRoaXMgZml4LCBhbGwgb2YgdGhlc2UgaW5kaWNhdG9ycyBhcmUgZml4ZWQuIEkndmUgdGVzdGVk
IGJvdGggMTUwMCBieXRlIGFuZCA5MDAwIGJ5dGUgTVRVIGFuZCBubyBsb25nZXIgc2VlIHRoZSBs
ZWFrLiBXaXRoIHRoZSBjb3VudGVycyBJIHdhcyBhYmxlIHRvIGltbWVkaWF0ZWx5IHNlZSBhIGxl
YWsgd2l0aGluIGEgZmV3IG1pbnV0ZXMgb2YgaXBlcmYzLCBzbyBJIGFtIGNvbmZpZGVudCB0aGF0
IEkndmUgcmVzb2x2ZWQgdGhlIGxlYWsgd2l0aCB0aGlzIGZpeC4NCj4NCj4gSSd2ZSBub3cgYWxz
byB0ZXN0ZWQgd2l0aCB4ZHAtYmVuY2ggYW5kIGNvbmZpcm0gdGhhdCBYRFBfVFggYW5kIFhEUF9S
RURJUiB3b3JrIHByb3Blcmx5IHdpdGggdGhlIGZpeCBmb3IgdXBkYXRpbmcgeGRwX3htaXQuDQo+
DQo+IFRoaXMgdmVyc2lvbiAodjIpIGF2b2lkcyB0aGUgY2FjaGUgbWlzcyByZWdyZXNzaW9uIHJl
cG9ydGVkIGJ5IEplc3Blci4gSSByZWZhY3RvcmVkIGEgYml0IHRvIG9ubHkgY2hlY2sgdGhlIHNo
YXJlZCBpbmZvIGlmIHRoZSBYRFAgYnVmZmVyIGlzIGZyYWdtZW50ZWQuIEkgY29uc2lkZXJlZCBh
ZGRpbmcgYSBoZWxwZXIgZnVuY3Rpb24gdG8gZG8gdGhpcyB0byB0aGUgWERQIGhlYWRlciBmaWxl
LiBIb3dldmVyLCBJIHNjYW5uZWQgc2V2ZXJhbCBkcml2ZXJzIGFuZCBub3RpY2VkIHRoYXQgb25s
eSBpY2UgYW5kIGk0MGUgYWNjZXNzIHRoZSBucl9mcmFncyBpbiB0aGlzIHdheS4gVGhlIGljZSB2
YXJpYXRpb24gSSBiZWxpZXZlIHdpbGwgYmUgcmVtb3ZlZCB3aXRoIHRoZSBjb252ZXJzaW9uIHRv
IHBhZ2UgcG9vbCwgc28gSSBkb24ndCB0aGluayB0aGUgYWRkaXRpb24gb2YgYSBoZWxwZXIgaXMg
d2FycmFudGVkLg0KPg0KPiBYRFBfRFJPUCBwZXJmb3JtYW5jZSBoYXMgYmVlbiB0ZXN0ZWQgZm9y
IHRoaXMgdmVyc2lvbiwgdGhhbmtzIHRvIHdvcmsgZnJvbSBNaWNoYWwgS3ViaWFrLiBUaGUgcmVz
dWx0cyBhcmUgcXVpdGUgcHJvbWlzaW5nLCB3aXRoIDMgdmVyc2lvbnMgYmVpbmcNCj4gY29tcGFy
ZWQ6DQo+DQo+ICogYmFzZWxpbmUgbmV0LW5leHQgdHJlZQ0KPiAqIHYxIGFwcGxpZWQNCj4gKiB2
MiBhcHBsaWVkDQo+DQo+IE1pY2hhbCBzYWlkOg0KPg0KPiAgSSBydW4gdGhlIFhEUF9EUk9QIHBl
cmZvcm1hbmNlIGNvbXBhcmlzb24gdGVzdHMgb24gbXkgc2V0dXAgaW4gdGhlIHdheSBJDQo+ICB1
c3VhbGx5IGRvLiBJIGRpZG4ndCBoYXZlIHRoZSBwa3RnZW4gY29uZmlndXJlZCBvbiBteSBsaW5r
IHBhcnRuZXIsIGJ1dCBJDQo+ICB1c2VkIDYgaW5zdGFuY2VzIG9mIHRoZSB4ZHBzb2NrIHJ1bm5p
bmcgaW4gVHgtb25seSBtb2RlIHRvIGdlbmVyYXRlDQo+ICBoaWdoLWJhbmR3aXRoIHRyYWZmaWMu
IEFsc28sIEkgdHJpZWQgdG8gcmVwbGljYXRlIHRoZSBjb25kaXRpb25zIGFjY29yZGluZw0KPiAg
dG8gSmVzcGVyJ3MgZGVzY3JpcHRpb24sIG1ha2luZyBzdXJlIHRoYXQgYWxsIHRoZSB0cmFmZmlj
IGlzIGRpcmVjdGVkIHRvIGENCj4gc2luZ2xlIFJ4IHF1ZXVlIGFuZCBvbmUgQ1BVIGlzIDEwMCUg
bG9hZGVkLg0KPg0KPiBUaGUgcGVyZm9ybWFuY2UgaGl0IGZyb20gdjEgaXMgcmVwbGljYXRlZCwg
YW5kIHNob3duIHRvIGJlIGdvbmUgaW4gdjIsIHdpdGggb3VyIHJlc3VsdHMgc2hvd2luZyBldmVu
IGFuIGluY3JlYXNlIGNvbXBhcmVkIHRvIGJhc2VsaW5lIGluc3RlYWQgb2YgYSBkcm9wLiBJJ3Zl
IGluY2x1ZGVkIHRoZSByZWxhdGl2ZSBwYWNrZXQgcGVyIHNlY29uZCBkZWx0YXMgY29tcGFyZWQg
YWdhaW5zdCBhIGJhc2VsaW5lIHRlc3Qgd2l0aCBuZWl0aGVyIHYxIG9yIHYyLg0KPg0KPiBiYXNl
bGluZSB0byB2MSwgbm8tdG91Y2g6DQo+ICAtOCwzODcsNjc3IHBhY2tldHMgcGVyIHNlY29uZCAo
MTclKSBkZWNyZWFzZS4NCj4NCj4gYmFzZWxpbmUgdG8gdjIsIG5vLXRvdWNoOg0KPiAgKzQsMDU3
LDAwMCBwYWNrZXRzIHBlciBzZWNvbmQgKDglKSBpbmNyZWFzZSENCj4NCj4gYmFzZWxpbmUgdG8g
djEsIHJlYWQgZGF0YToNCj4gIC00MTEsNzA5IHBhY2tldHMgcGVyIHNlY29uZCAoMSUpIGRlY3Jl
YXNlLg0KPg0KPiBiYXNlbGluZSB0byB2MiwgcmVhZCBkYXRhOg0KPiAgKzQsMzMxLDg1NyBwYWNr
ZXRzIHBlciBzZWNvbmQgKDExJSkgaW5jcmVhc2UhDQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYyOg0K
PiAtIE9ubHkgYWNjZXNzIHNoYXJlZCBpbmZvIGZvciBmcmFnbWVudGVkIGZyYW1lcw0KPiAtIExp
bmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDI1MDgxNTIwNDIwNS4x
NDA3NzY4LTQtYW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20vDQo+IC0tLQ0KPiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaCB8ICAxIC0gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jIHwgODAgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDQ3IGRlbGV0aW9ucygt
KQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENv
bnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
