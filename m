Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D559A47D8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 22:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9215540C07;
	Fri, 18 Oct 2024 20:24:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 90z_7Mgr8BNr; Fri, 18 Oct 2024 20:24:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E50440C2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729283049;
	bh=/4JN/jsuSUrEZwHLiZdmECAx2yHjvPQAkXewXd0ruuQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y9Q4hVnGwi9cA4tqKVSufw+703reSg84XogYSu+24tVUiB/kys8aF0nmu6crV0cRd
	 vreOlvNKxMqDsMMh2+iqtkPtOpboHbyJsw3JdmGILgQLoC/NbuVwhxOEZfOXofZcgg
	 2mGuzJDvftuFPYkb5fXBNyQ7tlzxxxk6v19YafmHiEBiqjlOB7aO4Znz6wZh5LmzJQ
	 nSTpmhZHFmRNoynhIHHdkPyQpUpv9UxsFrYSfB4uVnxRkQ3bnTy5xfNyvZaP9vWWFd
	 8ix0YTMQ2N6y+VTZ1oB4LNfk3e3kyhQSsKKn2QNoDZz8vs9q0v8uQJsKsp3gRqJlhT
	 RuqCq1Tz5bFGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E50440C2F;
	Fri, 18 Oct 2024 20:24:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E4B0527E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C25638174C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZEtfYd6oF9K2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 20:24:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 58DE980D5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58DE980D5B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58DE980D5B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:24:05 +0000 (UTC)
X-CSE-ConnectionGUID: HfXhoCgkTh+ELdZIe6gSIw==
X-CSE-MsgGUID: QbJ9ah/xT96j+hBadrLLIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28288589"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28288589"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:24:05 -0700
X-CSE-ConnectionGUID: SDoWPYu/QfKGheH6FGyYaQ==
X-CSE-MsgGUID: ZB0XnTALTvK7GBAhaTP0Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="83542126"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 13:23:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 13:23:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 13:23:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 13:23:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w44NbPh7NlwIrqmKk9Zb0qax1MBgBv8IEAGXSS6ctT7ZDB1Zcz/hCFU0Q6LU19KX4xPcrhyIzHsNS9U2X+R1IJKhhFT96tbhtCc0oHJPx/3EBq5DBohdzhDZKHrxU5XTu31zZD7NWN/907Yt8qtpaAKLqfKw5bdRwpnkON7qtD04ElmksKATYe6zsYA0ex5E9CDEiv1OEjnPogCsrqmaGmzH50GVjO5IAHrWJdbE/9jWoN185iNbQISEQFzN7xXfGyBWlaO/595VRHiR1XK15gM8vX7xlb0QfeqG6JfJL0IhSaz/EvuMIhH6pifLJo11iYUITz240DkrzlxfXZngtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/4JN/jsuSUrEZwHLiZdmECAx2yHjvPQAkXewXd0ruuQ=;
 b=Hyw1mOWHBEIWcGDYOntw9dY4kpm66FwZliSvOPaZqzDx4YdDHK/pUfaNBBn48e1fSRBZaTOphr3pecea34rZKXZ2Jimw+2LO6cPt/77c5Qdxo+S4DPRfySio1hSABo1To+m7k6MAOcryYknDdwFpDt6AJ9NjvuQL1wUpT545kYfxMeXywhHJ1uJ81+CycHw9O9uW7l4Wk6iz+lrb1aOXu1qHIveZXalVejAtH9QyjsANWvTnqZEvjxt6Ddemd6cHO8LC5zxlI9tiecz9nyobvhfjvXrgEvSoY+RMUVdWN3sm89IEMIA8EKwOq3B3j3JCKCTu9l00aMoOPDQ1+2Jg9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6175.namprd11.prod.outlook.com (2603:10b6:8:99::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Fri, 18 Oct
 2024 20:23:49 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.019; Fri, 18 Oct 2024
 20:23:49 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Paolo Abeni
 <pabeni@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Wenjun
 Wu <wenjun1.wu@intel.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] virtchnl: fix m68k build.
Thread-Index: AQHbHwopuJgZyIcaiEuLFlJdI7TkJrKJ/VKAgACDQwCAAfvyAIAAfElg
Date: Fri, 18 Oct 2024 20:23:49 +0000
Message-ID: <CO1PR11MB508935E4258858C17ED5DA78D6402@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
 <98b5bef5-d5a8-45d5-8fe8-f9c34eb5ab84@intel.com>
 <fee3fe99-14bf-486e-b12e-5088d17a095a@redhat.com>
 <a1f5838c-8452-48f6-a6b1-e8940270d010@intel.com>
In-Reply-To: <a1f5838c-8452-48f6-a6b1-e8940270d010@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DS7PR11MB6175:EE_
x-ms-office365-filtering-correlation-id: 906a5ece-ba89-4510-6871-08dcefb2c67a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Zk81elpvMDIvcHlkeEM3bE9yMjBEN2xEaURyTXp0NjJSb2xQU2VwMWRUZ3M1?=
 =?utf-8?B?SHRObmhPR2xDbmFMUHJJM0IrL25FcUZpbC85NnlaTzBPL0pxMnZmb0VoSXZj?=
 =?utf-8?B?TFJSZlBIaVNaYmVUNEFaWHRmTHRNZEcwVlMxclQ1WGJ5Qk9UQ1NLZVJOZ3Bx?=
 =?utf-8?B?amV0eDRwNXh0WnhCa1pRNngrQlQ2T2gxTWhDd1F5WktEN0Q1VXlLTk5aNkJt?=
 =?utf-8?B?dm5lZHlTeEx1SEVwYm9zT3FBRW9sbjJEWmRDSWY3RzhPcUM2MGV1anB6bXp1?=
 =?utf-8?B?Ty9GOUtjbmZiK0U1VlVhcmJVbTFiWExzUnRpaG85SkY1c3ZLeGpXcXVjVEVz?=
 =?utf-8?B?ZTFvUnpiZ0YwcjR0TVlFeWtTekoweFNQUFRVa0NRQmFiZ2pBR0tKckRHRGVT?=
 =?utf-8?B?T3ovUEtjVmRTUVZwc1VWcnBMZFhlYVVIQjQrYUQycGtjTW1RdVJFQmlZRUtH?=
 =?utf-8?B?WTFlWU9ScElGOVBOWDlYRFp5bjZTYUsxLzg0U091QlRVSVl5K2xSQjVwaDdt?=
 =?utf-8?B?c3lUZTNscEVuc2lUM2N4RFhBK2ZjREpoaFRtVWZLR2JSdG9JdW11blpscFJG?=
 =?utf-8?B?Z2hHcFdsV29MZEdra3hUR3RxZWdrWGswd0V3b2hjellEankvUjlVenE4TVBZ?=
 =?utf-8?B?S0U3N3BsUzE3NXVDVmlOaDZucUlkQ3hrSXdPd2U5WTY4VFJrQkRsRFdtYXVy?=
 =?utf-8?B?bVRlVy9jbDNwTDlRdFpXZmlVdmR5OCtDbU1IUDgwRVdMUjhmbFhiOWJuRFBm?=
 =?utf-8?B?MTZ3NDF1M0Z6QzNOOUNHMUkzc2Z3VDRQbU9ZUUVNcUlsOEh5UDlicldPZXU0?=
 =?utf-8?B?eVJ5bkx1R29KUXV2LzM2MDVLT3B4Z3dKV2pEZHJES2FzalNhUXVmS1o3bVNl?=
 =?utf-8?B?ZitCblgwdVBJOXJrc3VqL2VYbXZLTk1ndWlCb3FsK05CNmpWMXhUOURpUVZv?=
 =?utf-8?B?NEtEcVZYUDZTMFpIUHlpbkVLd2xUT2FCYTVXKzljc1pJaVNpa3NrOEkyQVVu?=
 =?utf-8?B?SjU2YytreWVGcis4SC9DTzBHYUdqMVd1NThLR0UyWGhCT2l1aGdqek0rckNK?=
 =?utf-8?B?U0hERTIyWjF5WUtZNXFtakdYSWJKek5lYVRUcWdvZlJUdGc1R3lkVzJQbTlF?=
 =?utf-8?B?dU1pMndyb2lPZkRjQmtURTVuRGVzajhhZjF2eGlEb1FEWVRDVXphQWduN3E1?=
 =?utf-8?B?T1NucnhLMU5nWWYzTFhDbER2M0JPOGl1clVMNk5YMUhIeCt1MnpTUjF1SGdt?=
 =?utf-8?B?bUUwYjV0NGJrd051U0FVT242SHlrdkxiN1AwZXhzZ3JGRUpTRHVMK0JCSW1R?=
 =?utf-8?B?OWkyV2N2MnlBV0QxNFV5MW9ubStOaWgySVpiMkI1dGlBdzFxWjZYSE1zaEcy?=
 =?utf-8?B?c0JWQ1FPdE5sb2pvZWF0VU82YlFCbnJST01ZdVNXd1JJejVUQU1JTXlTa1JP?=
 =?utf-8?B?Q1JCcFlqVGsyK29CWFM2MHhFejRNT0NKaCtRVzVRMkhEWHd6c1p5NSt6bGNj?=
 =?utf-8?B?aEVQdnc4V2ZzUWVCWlhhODJGbkNWTnZxZ1JIQ3VmbldKa21XbjQ5V1hyazBr?=
 =?utf-8?B?VXJBcDJIdDZIQXlKM1lIdk9rSmZhU0J3RjR1bzJqL3hscTBCQTFtV3BTdVlw?=
 =?utf-8?B?ZUZ5RjNjcGQ2REdRTlZFMGdWRTVISEtZV2Q4RlBPU0JRa212dHhsQnRQckYx?=
 =?utf-8?B?ZjZLbFR2NFhnQ1BjZ2NuaVpkUnIxcDI5eXBSQ1FPNFN3bmVSWndEcjl3TE5Y?=
 =?utf-8?B?N1BxVlhaQ2xvQmIyNm16bEtoeWJ3eFdhaUsram9KcUJ3aDVVWE5DbzBaTjZN?=
 =?utf-8?B?ZW41NEZFYmk4NjQwZUtqMjU3RnFLQ3pTajJ1dHNjU3ZKTnA3L1pzWXd3Tm9m?=
 =?utf-8?Q?ESVO5pvpOflGJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXpTVmdxK3RaV0NjcjNpZW1PWE9qcVFZakdEa1RDcjFBRGxQNm5aNkFLYTFD?=
 =?utf-8?B?eERZbFNUd3VRMmFTRFlKV3RLNkFtRVR0anNOUU1HL2x3cmVmVEJCenlxNFp4?=
 =?utf-8?B?Yk5keWlVcE9wT1VzT3Nlc3pUN09LYlRrcHY5bHNNbWxxVTRZRjQwcHdpOS9P?=
 =?utf-8?B?cmlSbFdRRlZoNG1nV0ZWdUJjWE83UFh4dXRHZWpxM1VleFZIb2xyV1VSMml2?=
 =?utf-8?B?bW8vQm9NeEpvZXd2MVVuRUR5bmE3R1NHY05iSUJUK3dmbWZtS1Vwd3BONEx1?=
 =?utf-8?B?Q0RySVY4U1JlSERRYk1ET1ZiejNGbFNxbUFrTFZLcWJWNFNha0t3V1M5V3ZG?=
 =?utf-8?B?ZER1RXVuU0FDY1JEdGIwRmNIc09qZGhReXcwVTBUSURzckhYekZULzdzdXd1?=
 =?utf-8?B?QllmRExQMUtScmN4bUVFOVhOMEQvUGNTYWNraGFWN2Fycndwb3BIS2JzckJQ?=
 =?utf-8?B?N3RERGNSZGlqR1B3K0JSS3BvazNlNU53Mk92RDJQSVJ1Y3dNYzRISENRNy9M?=
 =?utf-8?B?aVV6VGhvMWNFNlVxM3R0b2VZbWlHM0hIRW90YzMrcllNR2p1M2p1WFpEWDkz?=
 =?utf-8?B?b1UzeDdYblE5bUU0bENIR0M2MXM4MEdYZDF0bm1WY21kdlJtTlh4UDR0RFZw?=
 =?utf-8?B?RjNRZTZMOXQ3RmQrb05wUHVxNFhMR3J5WTZmRW1VZHBka0ZlNGhoY1F3RElr?=
 =?utf-8?B?TUpLdEp3WW1oQmFtWk5RbytJekwzRVJyd2lBWjZIWVM3cnJEakhhSkoyUGoy?=
 =?utf-8?B?Qkd5MXpjZmNOaFo5UUQ4V3BJUnA4UzdYVFZ5bXl3V2xkVUNHUGZYN3hoN3No?=
 =?utf-8?B?bktqVE1pOUgvd3RnYlJTdVJZTGRHZmY1OUYzeEt1UDlaR0IvWUJobW1WSnF2?=
 =?utf-8?B?bHJJZVF3MWduS0lrTkt2K2tVdXMvSUI4cWtlblhKVCt2NHN4QWhXajhCR2RX?=
 =?utf-8?B?ZWVQOWxlMEdneTcxOEpsa0w1dWxNazJZQzJYWDBKSllUbzZ0dCtVcEcyYUZi?=
 =?utf-8?B?YU51TUNSSzdvcFhYR3p0azJudWV0R21KbmhaZ0ZXeVJqcHhIVEdyQlorWlJa?=
 =?utf-8?B?MDB2ZGlQeTVnR2NhNS9PaHg3MjMwYk90N0xrNU1tREQ1QmQ5TFpKWnBIb2JU?=
 =?utf-8?B?UEF3Z28zMmFrdERGSG1JeXNWSG9IYUdzcXNqQWdSSVlremR1WGlmQkNTeGJ0?=
 =?utf-8?B?cnZWWXB4OGFkNDg4YzVDTXoyL0VRQjZZVnkxcmpDaFU0K3RXNFNRZm16WGxk?=
 =?utf-8?B?SDNFZ3hrM1BuWWNZUy9QRUU3WnR5Q1FYbEFXVmtCV0YxMmRuL1lheU9wa2hI?=
 =?utf-8?B?akJVODE3bk9UcGNKUmJ2M2NNdGR6VHVkM3RwQmZhQ3d4MnBDa0NHZzRrZ2Mw?=
 =?utf-8?B?QUw3TUwxM25URkUyWERFUkdlajl4VnprMkJJN2VLT0FpMXdTYWdlNFVnUFBV?=
 =?utf-8?B?bEtSWWp0dk1rZ3dzZ2ZCeDZpZVZBYXJiOGFrNXVYLzY1VlppdllNbTV4ZTZ3?=
 =?utf-8?B?eVVnZTdNWHBqaHZqS0dNdVl4bTRtWDU2aUYwQzNuWVFHb1lwM0N4dldhRmJG?=
 =?utf-8?B?eXFVcUNSVmd2TkZzQlZPN3RrdEtTOXpWa1UwQ0RIQWk0a3NyV0NoaDRqcXdJ?=
 =?utf-8?B?Yjl1MklJTFYxY2xwYTJOaS9MYTgzVUUzWDR0Mm51MTkrOW1wTFpVV0hTWEdn?=
 =?utf-8?B?a0ozYnZFQXY1K1JkUHp5ZUo4R3ZNb2RqME9melB1Y2N2cGdiL0NsTU8ya3lW?=
 =?utf-8?B?ZU92aU5HUHVHRzk4cTZXc21Zb1BBeTJNRUdTVDR0OXU4T0UyZGtRelJlUERl?=
 =?utf-8?B?UzV4bE9veTNQZVJKMDRjY2V6MDVodTZHRnhobFV3RXp6Z0xOUmZGN2F1RFpC?=
 =?utf-8?B?bmhGM1UrMlpqUGVwVS90ZHBWUUwxQjNZTWppSEVkY0diSkQ1eDJYUmxnYnRM?=
 =?utf-8?B?NjNDMEVvcXV1SlpidVNzZ2pTU3NyUGlpb29NWHRnV1hzQ2lldTcwR0FkSzRK?=
 =?utf-8?B?RndFSTI0U3BZbVkvVndxN1pKeWszck5FOVpjblFhVDF1NFhqUnlReExIcERk?=
 =?utf-8?B?enNHS2dLQlFNcHgzYVQ0bVh3RHJqWVJMSlJneTJYUXJXUnN4SXJVRlZwdjE4?=
 =?utf-8?Q?bqljD5UhbfQ32f76habUWWtKw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 906a5ece-ba89-4510-6871-08dcefb2c67a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 20:23:49.2319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paGtSqwheWqN+yFWZL1DY9oT7qThXMeoM9XkSa+AlCs11waCpb9leK8l7zhS9SgrPnvtPEOmdQCDrPAZUYdj+jlkhAAS57nu0IWlZ5MiO1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6175
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729283046; x=1760819046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/4JN/jsuSUrEZwHLiZdmECAx2yHjvPQAkXewXd0ruuQ=;
 b=aUqLWDpnaNoygLZZOY3KJL5bBku6J1j7PemKuhvcSTeNzYJ1KNWoZ+ZU
 maZU+Nsv0GipX9dQHzQfE/onHjEgULuKMxcyfRojORXwD7P7wdwn7bK9p
 Z3NJU4kelQeGiGRzKXkvg6gmeX3cAeD1RTcVJWadQM3tpQShMlSpzi2CE
 zXI6hLAcVCJgxsnbJkI1wtUthKq8KjRvyj0IdptYl3VjdID6FC1xDUExf
 OfPS5+Q6/7dR95bnXZmXc5UCQoy+ALEmzKCT4wMwss6XXpdQbWu89hqtI
 WHSg5ltuYKEJZsyi6k0dfUgQ1OCMj/x0PRUENzImZB6YwApySuHKqRw/D
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aUqLWDpn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] virtchnl: fix m68k build.
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3Rv
YmVyIDE4LCAyMDI0IDU6NTggQU0NCj4gVG86IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNv
bT47IEtlbGxlciwgSmFjb2IgRQ0KPiA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTmd1eWVu
LCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IFdlbmp1biBX
dQ0KPiA8d2VuanVuMS53dUBpbnRlbC5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwu
b3JnPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSB2
aXJ0Y2hubDogZml4IG02OGsgYnVpbGQuDQo+IA0KPiBPbiAxMC8xNy8yNCAwODozOSwgUGFvbG8g
QWJlbmkgd3JvdGU6DQo+ID4gT24gMTAvMTcvMjQgMDA6NDksIEphY29iIEtlbGxlciB3cm90ZToN
Cj4gPj4gT24gMTAvMTUvMjAyNCA2OjU2IEFNLCBQYW9sbyBBYmVuaSB3cm90ZToNCj4gPj4+IFRo
ZSBrZXJuZWwgdGVzdCByb2JvdCByZXBvcnRlZCBhIGJ1aWxkIGZhaWx1cmUgb24gbTY4ayBpbiB0
aGUgaW50ZWwNCj4gPj4+IGRyaXZlciBkdWUgdG8gdGhlIHJlY2VudCBzaGFwZXJzLXJlbGF0ZWQg
Y2hhbmdlcy4NCj4gPj4+DQo+ID4+PiBUaGUgbWVudGlvbmVkIGFyY2ggaGFzIGZ1bm55IGFsaWdu
bWVudCBwcm9wZXJ0aWVzLCBsZXQncyBiZSBleHBsaWNpdA0KPiA+Pj4gYWJvdXQgdGhlIGJpbmFy
eSBsYXlvdXQgZXhwZWN0YXRpb24gaW50cm9kdWNpbmcgYSBwYWRkaW5nIGZpZWxkLg0KPiA+Pj4N
Cj4gPj4+IEZpeGVzOiA2MDhhNWMwNWMzOWIgKCJ2aXJ0Y2hubDogc3VwcG9ydCBxdWV1ZSByYXRl
IGxpbWl0IGFuZCBxdWFudGENCj4gPj4+IHNpemUgY29uZmlndXJhdGlvbiIpDQo+ID4+PiBSZXBv
cnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+ID4+PiBDbG9zZXM6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29lLWtidWlsZC1hbGwvMjAyNDEwMTMxNzEwLjcxV3Q2
TEtPLQ0KPiA+Pj4gbGtwQGludGVsLmNvbS8NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IFBhb2xvIEFi
ZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4NCj4gPj4+IC0tLQ0KPiA+Pj4gwqAgaW5jbHVkZS9saW51
eC9hdmYvdmlydGNobmwuaCB8IDEgKw0KPiA+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspDQo+ID4+Pg0KPiA+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRj
aG5sLmggYi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oDQo+ID4+PiBpbmRleCAyMjNlNDMz
YzM5ZmUuLjEzYTExZjNjMDliOCAxMDA2NDQNCj4gPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvYXZm
L3ZpcnRjaG5sLmgNCj4gPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgNCj4g
Pj4+IEBAIC0xNDk5LDYgKzE0OTksNyBAQCBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDgsDQo+
ID4+PiB2aXJ0Y2hubF9xdWV1ZV9jaHVuayk7DQo+ID4+PiDCoCBzdHJ1Y3QgdmlydGNobmxfcXVh
bnRhX2NmZyB7DQo+ID4+PiDCoMKgwqDCoMKgIHUxNiBxdWFudGFfc2l6ZTsNCj4gPj4+ICvCoMKg
wqAgdTE2IHBhZDsNCj4gPj4+IMKgwqDCoMKgwqAgc3RydWN0IHZpcnRjaG5sX3F1ZXVlX2NodW5r
IHF1ZXVlX3NlbGVjdDsNCj4gPj4NCj4gPj4gVGhlcmUncyBhIGhpZGRlbiAyIGJ5dGUgcGFkZGlu
ZyBiZWNhdXNlIHF1ZXVlX3NlbGVjdCByZXF1aXJlcyA0LWJ5dGUNCj4gPj4gYWxpZ25tZW50LiBX
ZSBhc3N1bWUgdGhpcywgYXMgdGhlIFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4gZm9yIHRoaXMN
Cj4gPj4gc3RydWN0dXJlIGlzIDEyIGJ5dGVzLg0KPiA+Pg0KPiA+PiBPbiBtazY4aywgd2UgbXVz
dCBub3QgYmUgYWRkaW5nIHRoaXMgcGFkZGluZywgd2hpY2ggcmVzdWx0cyBpbiBhIDEwIGJ5dGUN
Cj4gPj4gc3RydWN0dXJlLCBmYWlsaW5nIHRoZSBzaXplIGNoZWNrIGZvciBWSVJUQ0hOTF9DSEVD
S19TVFJVQ1RfTEVOLA0KPiA+PiByZXN1bHRpbmcgaW4gdGhlIGNvbXBpbGF0aW9uIGVycm9yPw0K
PiA+DQo+ID4gRXhhY3RseSENCj4gPg0KPiA+PiBBZGRpbmcgdGhlIGV4cGxpY2l0IHNpemUgYWxp
Z25zIHdpdGggdGhlIGFjdHVhbCBleHBlY3RlZCBsYXlvdXQgYW5kIHNpemUNCj4gPj4gZm9yIHRo
aXMgc3RydWN0dXJlLCBmaXhpbmcgbWs2OGsgd2l0aG91dCBhZmZlY3RpbmcgdGhlIG90aGVyDQo+
ID4+IGFyY2hpdGVjdHVyZXMuDQo+ID4+DQo+ID4+IE9rLg0KPiA+Pg0KPiA+PiBSZXZpZXdlZC1i
eTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4NCj4gPiBUaGFu
a3MsDQo+ID4NCj4gPiBQbGVhc2UgTE1LIGlmIHlvdSBwcmVmZXIvYWdyZWUgdG8gaGF2ZSB0aGlz
IG9uZSBhcHBsaWVkIGRpcmVjdGx5IG9uIG5ldC0NCj4gPiBuZXh0LCB0byByZWR1Y2UgYnVpbGQg
aXNzdWVzIHNwYXduaW5nIGFyb3VuZCBBU0FQLg0KPiA+DQo+ID4gUGFvbG8NCj4gPg0KPiANCj4g
V291bGQgYmUgY29udmVuaWVudCwgbm8gb2JqZWN0aW9ucyENCg0KWWVzIHBsZWFzZS4gSSBhcHBs
aWVkIGl0IHRvIGl3bC1uZXh0IHllc3RlcmRheSwgYnV0IEkgdGhpbmsgaXRzIGdyZWF0IGlmIHlv
dSBjYW4gdGFrZSBpdCBpbW1lZGlhdGVseQ0KDQpUaGFua3MsDQpKYWtlDQoNCg==
