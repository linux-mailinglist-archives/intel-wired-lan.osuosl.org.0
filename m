Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 450DFC0CE2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 11:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94A17822A1;
	Mon, 27 Oct 2025 10:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Le0HtXFIVq4i; Mon, 27 Oct 2025 10:09:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09B0A8229E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761559748;
	bh=DnqovTxKBkWSDwF5871FG7V1A6zThwCGEu3/8gIfjC4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SG4fgV30/szINIbU3MWD6Mq7Lp2+r0pUW5UF05ISI6uPXKWjIvg/13I61j/XlqOUt
	 6jm4SNtk2bc1JjH7FM7iD/dfOpEpAEHRWAz32/6sZlivLu9GoIATLFbqwzUb5X3aUm
	 45XPY+E+UE3X+qbF4yyKckOJeTWmYXiADycW8iO7Gk/Wn7CM6Ro9Toe4B1haDBf3+4
	 112HsaKGkienls3bY++jylcG9kHmir8E9HItDZy66bRVdymtfhoO6Q6QWFdf0WEui4
	 Q8kInrLk8nzTjTKUqH0ucHkwdU7TzQ8cdMNbk1CqEaqpbmTl02IVw/3NhDq9lwf0KK
	 xOcOwg7QOm4zQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09B0A8229E;
	Mon, 27 Oct 2025 10:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E17BD15F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 10:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D005940FC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 10:09:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6fm0G5-tz3z2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 10:09:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A345840FB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A345840FB5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A345840FB5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 10:09:04 +0000 (UTC)
X-CSE-ConnectionGUID: 5RtiNQUdTbSqWAzL9iO9og==
X-CSE-MsgGUID: zYgug9pCRN2euEhLAerTvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66249430"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="66249430"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 03:09:04 -0700
X-CSE-ConnectionGUID: OyEC1MNSQPS/w5VIwUnqzw==
X-CSE-MsgGUID: 416wJXj0SkmdEHlqOqgRSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="185471628"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 03:09:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 03:09:03 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 03:09:03 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 03:09:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xVCLKBZYBNFb9kgvrzybczOg1fkY2pgICFr+t69muxyqg1OkOKCVce8EHji2Wz3Of08leUQzGD2OYAkQ/3B6MISQptxkWyjpxBsHcLpTC9DqOo3bLMgYHk2wSPliStgUtNg05McDQrwFCTkfWQTzCgFhYk0LfzvyTsuTzt1SjJKB62fPp14KJQnsF6VpwSe7Vkim0OE23bz2mV3JF3r4nGoruVQDicWT8vfetuVP814X6/4nhBc7yJTKqZx87eqLz0UmhSZsZkLnAnmdu+8sldctvwNM07XwRHyLFFrVqfvw9+fiLveiKn8xfTWpZICj74MIXRAFepicmVTOz7AQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DnqovTxKBkWSDwF5871FG7V1A6zThwCGEu3/8gIfjC4=;
 b=uVttnxWV9NoHEFn9Z58bKZ6JsYRJENsh7eTQpT5td/Klf9NMeUtoQrOgHVGYRXC/+LKkol/Kid8tamlj1HHqjn3AJKAuaHFnPxlmXAped5cIM43JFJadkk4B2l5GVxFWP7An8K2nfTOxguRzG/5k8lFTROFdAYFW3eIKmu0iqNAit/ZD+V7DUAuTncDjc1a+OABlvAV+qpLnC0zdj60F8iGEiUDv/mJTW2/mQjePKmDAYlvH8pV+HB1KnnLHOC3LKt5dOpj4bIQQ30aKiguAX1tzd14FFBh0QCZ8HRX6bq4UBfpfzjn9Ch0vlDCuuFTUGWhgRPQTn9VWOndDGd5zbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL1PR11MB6026.namprd11.prod.outlook.com (2603:10b6:208:391::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 10:09:01 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 10:09:01 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next v6 3/6] ice: implement GTP RSS context tracking
 and configuration
Thread-Index: AQHcQ1WRhgA03IpflUeUOpo4TGhxQLTOxRkAgAb/weA=
Date: Mon, 27 Oct 2025 10:09:01 +0000
Message-ID: <IA3PR11MB8986B0E4CFFEEACF1622A6FBE5FCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-4-aleksandr.loktionov@intel.com>
 <967c9a87-d759-44ed-a81e-ec8b8de99a75@intel.com>
In-Reply-To: <967c9a87-d759-44ed-a81e-ec8b8de99a75@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL1PR11MB6026:EE_
x-ms-office365-filtering-correlation-id: feee70b8-a3dd-48eb-d0cf-08de1540da13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?OEtkaDRUY2ZxK3cwTVZLcHgvdTdxZlY4bU5STlk4SElUeGNkdVREdnc1RUZV?=
 =?utf-8?B?SzV4a1NGOVdZdzlwVjJyV3JDUDhiNTFldFM0N2I4SnM3Q3V0c2Y4cE9iZjZa?=
 =?utf-8?B?aVRWVGNYTm9RZ0V3UWVDcTJKM2FmU2NjUXNzWlNScWpnV2thdkJ4eitrV3dZ?=
 =?utf-8?B?WjBteWRpTTBubFQrWmZPaXJMM0o5bzdjRDFON2J4Y2k4OTVuSGZMbU1DNCtP?=
 =?utf-8?B?SnpxTllWdksweXpsdnMydUloTHNURENla29OWXkwSkphYVJrMkM2djQwZmVU?=
 =?utf-8?B?a2FxYlU2R1g4RTRQQWxQTkZxQzBNU2xheEZteTA4YUF3Uk1rb0xDR0hjV1NX?=
 =?utf-8?B?Wm5Vb2g4aEs1NXRZeTFLbUhtUnRUR0l1U3FYWmxhSGp1TTltREh6cFJsNzNn?=
 =?utf-8?B?Z003b1Q5ZE1STDVUU1AwSy8rczdhalVlak0zREY4b0VaQmNDUlVqNytZaDFV?=
 =?utf-8?B?R2lMbVhpWXd2TWdaTWJJNHMzd0VNN2c1RXh3TlBBci8rWFRSWG56MlVyN1Fn?=
 =?utf-8?B?ZTdpb2tsNkt5T3Vxb0s2WlF5MnZROU5VSHBObHN3MFMzcUkrRW1ydElEdzg5?=
 =?utf-8?B?ZmNNblRVbU5WK0Y4TmtpNlQwYTBZL0lxdTQ5V1RvenJQMUdQSmZtZHpiUTRR?=
 =?utf-8?B?UVE4eHE3Q0k5UUUyc0dtOW5pYXc5K2ZmQy91cjVwSGNZSHRsTUJTeWtYZFZk?=
 =?utf-8?B?blRCcWVxZWJESFdvSUU2blQrTW93S096R3dGVEF6YnJyRjZBYWdmeXJEdVVl?=
 =?utf-8?B?eFExNHJtRld2YU54bHl3SHlYcU9hRytDWGZnR0pjZ1puWFlKNTlsRjdib250?=
 =?utf-8?B?QlIxbkJHbGVsSGZ5RzBQRklUdVRPc0pNY0sraURRZ21GSmVlWFVldlUxVlRY?=
 =?utf-8?B?TVJFTDhSSGk5NytKYVVYanBOOE5BL2Vwc0tpRElrVkhxRzNDWExpUzlLOUdm?=
 =?utf-8?B?eDNJZ0VzYmpIMzNkaFZydHg4Q2tFY0lRV2lyNWkzMHpEMExxTjVuQUtRTEpm?=
 =?utf-8?B?Y1hYSmNIQVJLaHZtaGUwUVhuODVBbk1oQ1c3aWZqaFlaekJDd284Qkt2WENS?=
 =?utf-8?B?RXhRS3lkZ0NKUVVrQ3JDMWpJNTg0UnV0eklTVzdGek44MjJDNDhqdER1ckVU?=
 =?utf-8?B?UWxCajNScXo0US83bHlvWEhsU25OMGNyc2htUXVLTHNVcDZ0Y3ZUazh4a3RI?=
 =?utf-8?B?SFFNa05zd21yZkQ5c1pjemRRR3BJbUQxZ0twVkxNV1lCQTNmYzcrUndoQktZ?=
 =?utf-8?B?cCtxaG5hZ1ZxN1BzQVUvTE1leWlqRXNZeU8xd0oyK3MrQkhKVjRsblJwUzR6?=
 =?utf-8?B?ZWVYeElvSUt0bHpwcWNlNDJZSHU1aHRSZHhNT0RaSncwaHRmNTcyVVlRM09K?=
 =?utf-8?B?bk5NNFdTYkVURGRqN0F6aThjVE0wQmhaWU50bHRGUkE2aURoTnNyeitjUm9M?=
 =?utf-8?B?Z0FlVXlYWSs1TmovTGxqVE5XY0JOK0tHZVBvUVY4MmgwVHhOeE1mTWFtWkJR?=
 =?utf-8?B?NXNheWpvdkU5ZVEwZk83em9OdE8zSmlEcmN4VXk4cjVBQmdlUHY4Rk1RZ05D?=
 =?utf-8?B?YkdnVGNJTVlrU0phZmlHS0p2OUx4NVIyZ0pjM3hoWE9PSGR3NVVYeStXTFNa?=
 =?utf-8?B?NTRPQXN6b25TdDRLc092akxHMEdqQm1IOFZwUkZTRWFxNGo0cXhJeTZGbzdn?=
 =?utf-8?B?ZHhjOGxOem9vRGh3Zmt0UFlwZ3lYbzdDakNVOUVINXVyUkl1UTJWM1RETzMr?=
 =?utf-8?B?dmU3MW1lcWpHZGdlVlBoZDR2MkVxTGRNMnJycEh3WS8vQjhYSTJNUkNTU0xQ?=
 =?utf-8?B?WS9PdHc0WHNFbVdWTC9PcTlVczNJSTZ3bnZtZ1FkQXhmaWd5Y29ReDd4YjJS?=
 =?utf-8?B?MUFWWXNDaUtrYVlZc2NBeW5tK21ITHc2RlhPSVFoMjFKdkFNOS9UcnJENHNm?=
 =?utf-8?B?ZmZySVRraVlWZzZIZnZmRUgrVlBTQjh4K21VRHplNjhBejZkZUdkWldvMDVJ?=
 =?utf-8?B?NlEzTWNwVzhQbWcxcjFuR0g0L1VLamF0eXF4cVRydHRSWmJLUTlWL2lUMUZw?=
 =?utf-8?Q?42YsIe?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVRvcFJXejZjc05sMGdYVTMrb01LaWRBZFA2NnNtSmRFa3ZzNjBKOHN1TzRw?=
 =?utf-8?B?YTdnbExqRWNUQTBoeFFOQ01mbXhSUEhwWCtTRmRIcEw4RjR5bkNubm5kcVh6?=
 =?utf-8?B?TXZxM0FsOWFiT2l4UHNNck5XQlB2R3FjSDFVYUVsTEh2dTRsbGxkYlo0NzRM?=
 =?utf-8?B?KzFTNjN3bng4MTl4bS9IY0lMT1pJaDRXSkdFcG1YMkROQXJhcms0YkpkVmJu?=
 =?utf-8?B?bitZTzFRcVNtRTFPOXdZOEMxMXZCK3lGeXRFWDh3dFJZMDNkaWpDeTJ1bTIx?=
 =?utf-8?B?MkFmVmxLeGdoSHFpcmJqeGQvRGM0K09yRnlOVVRldXlvS2k0RWJJT3VnSTNq?=
 =?utf-8?B?Und2SHNRSGNBUThWZUR0T2JENUROdzhNVGpCWGJPMHM1TzJaSmErcmZadUZt?=
 =?utf-8?B?QmMzRTlWQUdPdENVSUpmMHQ0QncxWW0rbm02WnUzbzlqSHZnWXJUSldXVFlJ?=
 =?utf-8?B?aWc1WWE2ZEl3TFJQWTN3T1RMc2NReUJhQ1ZHL2dRU2pJMFUxcmF4eW8wS1FO?=
 =?utf-8?B?TWVBamZNRTRHR2h4UGRPRU5JeDdSSWM0VzJqN25Gd1hwUGhxZ1I3Y1ptL3Nw?=
 =?utf-8?B?bWNnVXlqNEdadkU2YkY1WWNkRWFGQ2N2Uy96dEFKdENDTlNvRFBXdjA4R1Yz?=
 =?utf-8?B?ei92VTV1WUtqNEZNV0FDM0pJZmZnZ2ZlY2JrVTREd05VSmh0T2dtOVVLL3Zk?=
 =?utf-8?B?WGF5akFLbzFqUUp2aXN3NXhGNTNYU01LYXE4bjBhNlZWSDVBdUxhTTA0eFZr?=
 =?utf-8?B?UGdyTzhLMkZHbkJ2NFVpSzVUeHpPcHRYb1VqZ0Z1aGhqOU5NM1pQbHA2bDR4?=
 =?utf-8?B?VTJrcWpSVmlIOU83Tm0vM3VEN0c5N0Nob2lETEVZUTgzWmQ2a2FIa3BnczdF?=
 =?utf-8?B?Ry9MNVE3b0txQk1NTzhaMzFldzZBUlpZd2R0UUQ3QlRYS0I2OStsVURrUUEv?=
 =?utf-8?B?SmdSU0ZQOHVWeHMyTVF2R1BRU1dJVnFKZThNdlc1eFQrRXI5ZGNiTGp0eU9a?=
 =?utf-8?B?THB4UU9xWDdSbXllT00xYkRnTTdOUGlqMUdQVHNBU1lVU212b0dCOEhrWmZ0?=
 =?utf-8?B?dC92eS9aMzFjQzIrVVV5ZzE0VldRdEt5SmxWMWVQTm9uSU1oUFdEL1hQaTk4?=
 =?utf-8?B?YWM4UDhTcXFOUFJNQm1FOGpJeDBoNWo5TCtwN1l0RXE1dnZhaDJYZDZTdXVW?=
 =?utf-8?B?TW9NM1hubDJxK0EvdjJuK2h5MVRiZExYRzh5RW1LSSs2SlMzelhKcXlYaCtP?=
 =?utf-8?B?QmpiWmswSzAzMFVVVFJIL2ZMb3RYZXRMTEtSRDR5SWlDU0pMeGFkSTVLVmpL?=
 =?utf-8?B?QzhoNEFvOEhDUjJIckd3V0hjM1BnLzZOWWIwNVllS1ZhT01JTTlEN3RMaVZr?=
 =?utf-8?B?cnZyV2RwT3VjOVVoUnc5bnh0SVVxSkJ2VnVWR2tMWmVsUFpjM1lsZW5wODN6?=
 =?utf-8?B?YkNZb2lRQzJheDhES0lId0RXek4wTElmVjluNi95TnNlcDQ5MUNudVhIWEY4?=
 =?utf-8?B?TmxabnJ5bE9YVWF5L0s0emdueU8xRnJqYXhQKzd0a0l3K0Z1QVR4NHBUUFox?=
 =?utf-8?B?UklVTFQ4ejFBT0pxWXJhM2t6UGNrYmM2ckhuYjBrRisvUkZYRkVyazBSbkZy?=
 =?utf-8?B?dlZXRU1xTi9GeGs1UWdZMnlTcFdMU3liRER2M3F5SndNZW1BQWhPRDh2b0Nj?=
 =?utf-8?B?Vm0wTGNNa3RwM2g1Mkx5eGxla2pLcDExT0llN0lONmx2RGJwbmx1ODZRYkJk?=
 =?utf-8?B?QU5ZOHhwZWtPcE1WMnc4azRPYTFSRUF3MTlDbVpjSDl2U0J0WGpDL0d6RWtm?=
 =?utf-8?B?VklHL0IzcWJJejBQQndZY2VRM0xuKzJmbmVBM2lGMnVLU2FraW02MU5nSFNl?=
 =?utf-8?B?NDlsN2ErTE9yWHhZZ2xBN282SDcyRFprd3dYeFhrTGE0c0lYbHVVc3c4Vy9h?=
 =?utf-8?B?b0V3UVdrRUo4cmpuUGY3aGhrV0ZqczN5c0dUM1lDeW9vSml1Q3p1bm1UTmhF?=
 =?utf-8?B?cGhFYWN4bVpMVE1ObmVYMHpHbjBmVEVqSGl3M2FlL0l4MDZzM0pVU2toUGkw?=
 =?utf-8?B?WU4ydHU1aVlLdXNZcGt2bkYySXVCbnBKZk1MeStjSGJDbjl1Z3BiK0hML0Ni?=
 =?utf-8?B?MUFaRko3Y3lJcXhSUDNRd2s1cTJvdFpxQk9VNEsxZjZuT2xyWVc0U2NnOWls?=
 =?utf-8?B?MFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feee70b8-a3dd-48eb-d0cf-08de1540da13
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2025 10:09:01.3470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tSfRKBv3S+mqI1FBlEt902GjDO4Z4a8qKUSe8CirduGaR4XqOps550XTCS087n3+oNtDIVm1Deu42MI1SvAnC2EAJdeUC5/IDpEmK6pDIgY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6026
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761559745; x=1793095745;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DnqovTxKBkWSDwF5871FG7V1A6zThwCGEu3/8gIfjC4=;
 b=b7gH/+h+bUxXbxX9aF8X8uVFMsrLF+K/VA14o0boBOjkXgQLNWEKxCsC
 ibFiAZhVA4ZJcrkw0dbHnyHu6x8jbckKMkNW16ByS4fV3cbAzFOjWBksx
 v5PvtnjQ7rR/6kwRtBHWs53jU8piB3kke8JAMauLjbeANCoCDgFyJ1cT6
 oj2Pt4jXQ8cbAjcHfqoabX+KVH47ctkr3wZrCus74v5gJa/QUTemrO7yk
 0NGMSEexTH/SCkEB6qaUJksTjseWC80F197Gb/yG3I4od61YhWOpAv49H
 j2bfXaY5n6xGsYe1AWVApe0NmUDEGoYQpY/DHD2iBUw82ASbYzlBbG7QI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b7gH/+h+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/6] ice: implement GTP
 RSS context tracking and configuration
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDIz
LCAyMDI1IDEyOjQ4IEFNDQo+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxv
a3Rpb25vdkBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmc7
IGt1YmFAa2VybmVsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5A
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHY2IDMvNl0gaWNlOiBp
bXBsZW1lbnQgR1RQIFJTUyBjb250ZXh0DQo+IHRyYWNraW5nIGFuZCBjb25maWd1cmF0aW9uDQo+
IA0KPiANCj4gDQo+IE9uIDEwLzIyLzIwMjUgNjoxMiBBTSwgQWxla3NhbmRyIExva3Rpb25vdiB3
cm90ZToNCj4gPiArc3RhdGljIGVudW0gdmlydGNobmxfc3RhdHVzX2NvZGUNCj4gPiAraWNlX3Zj
X3Jzc19oYXNoX3VwZGF0ZShzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV92c2kgKnZzaSwg
dTgNCj4gPiAraGFzaF90eXBlKSB7DQo+IA0KPiBUaGlzIHdhcyBleHBsaWNpdGx5IGNhbGxlZCBv
dXQgaW4gdGhlIHZlcnNpb24gd2Ugc2VudCB0byBuZXRkZXYgbGFzdA0KPiB3ZWVrIGFzIGJlaW5n
IHRvbyBzaW1pbGFyIHRvIGljZV9zdGF0dXMuDQo+IA0KPiBDYW4geW91IHJlZmFjdG9yIHRoaXMg
dG8gdXNlIGludGVnZXIgZXJyb3IgY29kZXMsIGFuZCBjb252ZXJ0IHRvIGENCj4gc3RhdHVzIHZh
bHVlIG9ubHkgcmlnaHQgYmVmb3JlIHdlIGdlbmVyYXRlIHRoZSBjb21tYW5kIHRvIHNlbmQgdG8N
Cj4gdmlydGNobmw/DQo+IA0KPiBDaGVja2luZyBhZ2FpbnN0IGN1cnJlbnQgaWNlIGRyaXZlciwg
b25seSBvbmUgb3RoZXIgZnVuY3Rpb24gYXBwZWFycw0KPiB0byBkaXJlY3RseSByZXR1cm4gYSBz
dGF0dXMgY29kZS4gV2UgaGF2ZSBpY2VfZXJyX3RvX3ZlcnRfZXJyIGFuZA0KPiBpY2VfdmlydF9l
cnJfdG9fZXJyKCkgd2hpY2ggYXJlIHJlZmVycmVkIG92ZXIgcGFzc2luZyBhcm91bmQgdGhlc2UN
Cj4gdmlydGNobmwgc3RhdHVzIGNvZGVzIG1vcmUgdGhhbiBuZWNlc3NhcnkuDQoNCkdvb2QgZGF5
LCBKYWtlLA0KDQpUaGFua3MgZm9yIHRoZSBmZWVkYmFjayBhbmQgZm9yIHBvaW50aW5nIHRoYXQg
b3V0Lg0KDQpJ4oCZdmUgYWRkcmVzc2VkIHRoaXMgaW4gdjcgb2YgdGhlIHBhdGNoIHNldCDigJQg
dGhlIGZ1bmN0aW9uIG5vdyByZXR1cm5zIHN0YW5kYXJkIExpbnV4LXN0eWxlIGludGVnZXIgZXJy
b3IgY29kZXMsIGFuZCB0aGUgY29udmVyc2lvbiB0byB2aXJ0Y2hubCBzdGF0dXMgaGFwcGVucyBv
bmx5IHdoZW4gYnVpbGRpbmcgdGhlIGNvbW1hbmQsIGFzIHN1Z2dlc3RlZC4gVGhpcyBhbGlnbnMg
d2l0aCB0aGUgYXBwcm9hY2ggdXNlZCBlbHNld2hlcmUgaW4gdGhlIGRyaXZlci4NCg0KUGxlYXNl
IGxldCBtZSBrbm93IGlmIHlvdSBzZWUgYW55dGhpbmcgZWxzZSB0aGF0IG5lZWRzIGFkanVzdG1l
bnQuDQoNClRoYW5rcywNCkFsZXgNCg==
