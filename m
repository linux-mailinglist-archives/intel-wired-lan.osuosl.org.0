Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FnCDps3e2kYCgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88688AEC88
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09E2983D82;
	Thu, 29 Jan 2026 10:34:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hx9szp6W4_St; Thu, 29 Jan 2026 10:34:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DE1783D83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682840;
	bh=SwI05M7RKngnVqYM0VmhnGcBq6ypTprkM4kQ0hvOrSg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SBuifP1NQA+kmURmKQSmro9WecAba4DTcwOnP9F2t70mSwDKGjBdXOJ0Y2fbPgL/M
	 lFmYznmzRhzE18cn9QoWbYMrioHWeu5U1jvY7eBobVq+woVU8Lay/uznwBDwWDMfRB
	 pVhqvbB6os9EAtblxpdjCn7M0W8t7VffblUzjMV8kPgnZGwkj3RlSXr5yo+n+D83oB
	 rxYQGHA5+0yNyiRrFV98m8CbQiqGxLch4vPF999L8+N9gxzE4Nss/DkW0VL+M8ceZg
	 FRGW7Cpt968g/O0khk8OnF1MIIPyZbjgU26Id+C4Xu/NEKaUS69khfuEDkrHdcdLka
	 kk5Pau4SoeymA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DE1783D83;
	Thu, 29 Jan 2026 10:34:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 10BDA1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 017936086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:33:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 13FIOYkj4QYx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:33:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1750060866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1750060866
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1750060866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:33:57 +0000 (UTC)
X-CSE-ConnectionGUID: FFXz7gaLTGmbmpC4diXewQ==
X-CSE-MsgGUID: E8ERJA5CTUGOaX/sMTtkqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81231680"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="81231680"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:33:58 -0800
X-CSE-ConnectionGUID: leZ2Q30TSJCjFTNdQe636A==
X-CSE-MsgGUID: 6MdAwWpyRTSuQta9YGcpVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208903442"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:33:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:33:46 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:33:46 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:33:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mClaeYNFaMsXjxQ+Pmm6pIdNwYrs61QqmDRmjj7FECjBFZN2J1iQTnt/wBweSaGOlvs6XlvidkZ+IhrcFQbadcg4nGDns468znaBXM/FNLMMc0vKVBmRF92AR8CuZSMlnTYpQZhi5xlbO1VI820J8R3K2whiVRrQwc/zJbaJ03yIXiCNCxs2dOj9/2LLplxiU4JpVQ+SfEZK7B2m3Juy4SfKkIut4SGT42dzqVZ/JgCFMUUVl/jGwG5zZvlon+zv8TmLOjPX6zkcSvZ9mmjoab+RA+Ha7gjICH1BBLWm3vQ0IjW9RrZtYELCJPgiMI1ud4Z4N6uiuTrEFkxFaNRUBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SwI05M7RKngnVqYM0VmhnGcBq6ypTprkM4kQ0hvOrSg=;
 b=M0gnO1xDOfFSP2ONMOfN0XWcFq+bZtSZxYvmJnbOD6oQp5cYS5RbRq22R0+Owb9UJiCFro7KsvHYIzxvY78RjfuemSj/pvSOHnttGaWInZIsOX49hi8CEtYJeVSVY9oWMe5s+wvFEf4Y7iG3Shq7FI1iFSfNYfaLwA56Ykp96tcXC1LAysG4FTV35g7W8HcJhJCsV5y7sK0Ss9XRFQ/GAUHbdPu6ytEGsn4sHo4RQrrQC9IB3agqRdbdDpalETgjvZEe0HBXOS1ZPSSkD5vX1Zwie5hwh+qVZ2e9MLv8swMd5xfA3iQqcazSTLGkp2R4CXe8OF/u+JwwOSmhR+yR9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:32:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:32:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 19/30] docs: kdoc_re: make
 NextedMatch use KernRe
Thread-Index: AQHckPaX4dcAMGBj20iaMAq9FKcAlLVo80zA
Date: Thu, 29 Jan 2026 10:32:55 +0000
Message-ID: <IA3PR11MB8986A6C09317CBBE23CE396BE59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <8a7da8d12e69a5a70d63f85a3d4ea11af6ac782a.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <8a7da8d12e69a5a70d63f85a3d4ea11af6ac782a.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: 26b5e6d3-9780-4646-3856-08de5f21c39e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?a1NUanBDMm0yQnZIZGk0NlZZYlNKdUVrRXcvMzVCTEFXeWxWR0FoSk53UUJG?=
 =?utf-8?B?MkcxcjFLaXpZNXpiQmx2d1hFU3dQNmtUOGV2eWhtbzF0KzJsOEZMbVVING5i?=
 =?utf-8?B?TVpjKy9UeW9vQldEcGV1aHdIRzZ0dGRpNWM3bXVKR3JyTHFXVlVreWZ2bnpp?=
 =?utf-8?B?N3UvQjBKN2xiNlJ6Q3JxL3AxZ1JlTStwdHpNR0pRbXJaK1NKaHV6V1ZRQUl6?=
 =?utf-8?B?MWFEbTBsQjB4VjRwN0VoNnRkV3Y5QmlwMjYwdzFNZEtVOFhCNk00TnNPeFBp?=
 =?utf-8?B?S3h0dFdQQktaZklKT3FDUjZHbzJEK3Azek9zcVo0d1kzY2I4QnhaQjN0NDFS?=
 =?utf-8?B?VmRpNHpITTlaSVhZQm1VNkV6ZnBaZWdsRm40bm9DLzhaYk1wUmxsOXlhRS9U?=
 =?utf-8?B?UytiMkNGWXF4Y0d3VnB6WkgzV0xMRjJHYjQ0YUIvbjJSc0Iwblg2YUdQZzZ3?=
 =?utf-8?B?VVJ0NWozUVR4RVl4cXNHd0lYRVFvSDdINHNlMG1mMmtScHlzb2tLbzE4ZUF1?=
 =?utf-8?B?TTg4N2svRTNFRGJsV1d6eEFXNTJ0S2k1TmlxUjRxNjUvT1BxKzUydG9GYkRY?=
 =?utf-8?B?MkRLR29nRUZENW8xOFJGVjZySDFaTGdCdW9yQnVmMVhCVzZTMU56dVFKWjhq?=
 =?utf-8?B?S0R3b1pLQy9uczlRbVZTU0JMOGV2dVpFWk82ZmkvQlhya05KZE54Q0RGa2Ry?=
 =?utf-8?B?d2J2YjE4RHlEZTZ2MWZBZW1XMTVpdmxqKzJpMFhJRVN2aUZFTEFDRWE5Zkl1?=
 =?utf-8?B?N1k5WDlrV1VFdmR1VWwzZzFvMW1zMnJXbXpwQTh4UmRLRFdBNnpXczd4RXhL?=
 =?utf-8?B?TG5iM3lVSE5XQjFtVnV4aUU0Vk9lODhyVkl1ZjJlRER4VHVFbWJrU0FZTUxN?=
 =?utf-8?B?L1FscVhJL0hVWnJ0TFk4TUNBazRVd08zVXhGSlRScmhUL1pQK2F6UTBNTVpy?=
 =?utf-8?B?OXlMMDE0SzhrSnNXZU80ZkRyUC8xUVhiNXVGV0l1MytmVVVVMFlDQXNyT3VN?=
 =?utf-8?B?UERYZzBBL0swZDY4ekV3cDZudzBibkVFSjFpai9RRGZhb2tMYktWRVlJOEJT?=
 =?utf-8?B?aUY4djUyRXpEVVMrRk4yWmx2MklUeE90RFdJcXM2S29nTk9wVENwRGFBTFc4?=
 =?utf-8?B?blZRVkY5bmlKZDExWC9MYzVaM256ekdHdHVrTURQenNiUTFtV3VzWlp0S3lv?=
 =?utf-8?B?bFhUcytKZ0ZWa2JqWlNGeFp2azVyNWJ5c2Z0QWRwTU5ELzNCRUpLeVkrTXZ2?=
 =?utf-8?B?ZXZaZTVVMTRsaGw2S0E2UjAxcG5zSGVlaWVsV1l4d1BBMjEwdGp4d0NVZm1M?=
 =?utf-8?B?Rnl3WVo1eXFxbnZEdDB0UkNadXVGTzg5c1d2b2FqUVVQckQ3UmtqcjJHcWlW?=
 =?utf-8?B?SWIvUFdLY2kvak9hbCtibEc3b1RlOFlkZVFiZVB5VkM0L1RaT1crOVNuT0gv?=
 =?utf-8?B?Z2pzZkJmZXc1TXB4OWdBeWh5a0lFckpUYmV2TytqR0J5RVNHTDhmQ1pOQ1hH?=
 =?utf-8?B?RU9pZDN0V3p4aG0zRUx1Zk9kbys1S1lYRUpzbm1xNUMxbFhmN2MzYmMzSmtq?=
 =?utf-8?B?eG9aM0YwMm16Sjk4QUVJT25NSjVENTI1bWJ4RGl2M2xEZXlRTGRyQVlWK0hI?=
 =?utf-8?B?dUw5N0R2dFdLTWtyVE1nZ0dRZmkzSm5ERGcvNERHSFNka0E3Z0hBdkE4UEtW?=
 =?utf-8?B?eFJQYzVBei9wdWMvSWxNMmU1Ukw0dUpzZ25hSjNxMG5LK0JMOVQyWFhGTTJN?=
 =?utf-8?B?V1J4NXR5UHhqQ0lTOXBYSVYveHlyc1lIVS8zZ0JHMjlTMGZzaERFQTNjMG0z?=
 =?utf-8?B?c3o2TCtORUtQMWlxU09tTW5odVYyMGZLTmo1WGduUnl3VUpicyswdzFOZmpv?=
 =?utf-8?B?VVoyRVcwTVZ3aEdST3MwcTlSdEkvYndIWEJCS281ekpNblRxNVBZb2FkVTMx?=
 =?utf-8?B?QU05aTNBaVNRZGZvNkhGRzRiejNnS1l0OUlzZ2FXeTkxcUE1QURyM09RaFEy?=
 =?utf-8?B?OWNlMmdKQWZSYlBIWHlqUE92UHdFU2xHVU9tZ1gwaDhMbHlFRDVpV3d0Rldl?=
 =?utf-8?B?ZFJPUUhHT0s3Y2hWQUNsZkpIS0JqeERkaHNlWUliRUNodURTQ0NScVZ6dGZW?=
 =?utf-8?B?TWhsQWxHcXo3eU9yOFNKV3ZibWhJWERDWEFaY1RCOStkT3o2NHljcVl4ZmxW?=
 =?utf-8?Q?FJGCNwJxvWwFX6S54vx2HAU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGtrMEVMY1V5dFNIV0t1VU5wdzV3MXNXanZpVzV6UHhlR0dTSmxPWElMcFI2?=
 =?utf-8?B?d1BIQWU5RVp6K1Q1TldKc1FQMGhKSGdjemxacnlYTm1UNWxIcXlXS1RTZzgv?=
 =?utf-8?B?L2J2andqSk01VkFGVUM5YzhydEJSZGFTcXl6STBEemNpSXdpSENXRlBSRjhS?=
 =?utf-8?B?Z0xsMWo1elV0YVB4c0t3bWxVczJMSzg3QldYcDRZajNibGFoaG00VFRXRzdJ?=
 =?utf-8?B?MHZJNllJUGJzZkQyUzBTOHA4eG1wZFlkQlY2bklTY01PejhFa0tSS1VEVldh?=
 =?utf-8?B?MDNZUTNkWnoyblVTODBoamRKbHA5UFZNbmxFU29sZlBYYkl5MHJnRjVPQWc3?=
 =?utf-8?B?OFV0M0N6QU8zcFVXM0RtZ2lONEl6NEZZMWovNFRNY253SDBaaWJublVKQkJs?=
 =?utf-8?B?UmRYZ0JZNmNiMEQyQ1p3QmFqeHZZNlJZeE80QkJUaWY2VTBTRUhvejlEbjJE?=
 =?utf-8?B?dlFEQ3JtOE44WENVdWdtWERyYVhXSDJZY1U5NUZGTzFSNUhNb1lhT0xzMFBi?=
 =?utf-8?B?blR3ei9xZUZzYzJFVXVjQXlRWVJSZWNSeDJTQVZTc0dxcjJVNWdLR053ZStO?=
 =?utf-8?B?Uk5YdzR1U0wwcnR4SUJEVFFLRmFoSFMrWnBIZVZZUGd6bWQ4MHpUakZkbW5j?=
 =?utf-8?B?RmdoYkt5KzdlUHp0SGFDejN5WUh2SlpHenZkY3YwU3Avd0xGR0tBUko2NjFC?=
 =?utf-8?B?eFpvK3l4eGhTZU0yUDMySzFMQmloelBEdStlM2JHclVEcjJ5Y0VUcDcvQUdY?=
 =?utf-8?B?ZnNacVBnQ1E4S1pLUlFRS1RFeHM3VHdjNDRwRGhiZlViTHVKWmZKNjUwQzN1?=
 =?utf-8?B?amQwTW9Odzg5enlzUDg0RTVLUW9yb29abHNVVWFMNU9PRTBJMFUreHA2cVRy?=
 =?utf-8?B?SWtFV3p1RjdISlhneFFpeXJRNkl5MWZGQnF0TlFBNWNlRGppQkQzQTlkRkk5?=
 =?utf-8?B?c0diNWw3dldqMEM5Sk4rMHA5bERLbHVObUVyNlVLWm9NSldLSEpBSGpwOHh5?=
 =?utf-8?B?OVhCb2YzQXhNR1V2Z0NHSFdRUCt3eTBXL2ZSZzh5eHNjMXJoRmxnWUpNMWpB?=
 =?utf-8?B?aTRjWGdRNEhkVS8zYVpZaGxZUXdHVUlORVJRNkhrYXBrelRsV1QrNFREZmc5?=
 =?utf-8?B?R0ZOYzNJeUNUOUtXZHR0VVZuL0hVTUltdEVLWEZ1MEVZK0NqUThjL1FiaHJm?=
 =?utf-8?B?QWtDU2VnTzhrcThGanVnR3NmenRCNlVRYW9tbUVkTmZpYit4N3FCWDlOMW5L?=
 =?utf-8?B?Y1FtU3ljK1BHbWdkalVmQlYzam9mMG8yTW5uOFFpdElEMXMxcWdNSzlZamNV?=
 =?utf-8?B?RGp5ejU0TElZQmtaVkV3Y3NSa2RmTTFldDZTeE9hVGhmVEViTTQ5emJRYkpy?=
 =?utf-8?B?Yi9hMTlPV1FVK2hibzFURFZNdHloK2wrZWNFLzVKdUk5dW5GMVpDTjJLUWFW?=
 =?utf-8?B?S2ZUem5jRUp4M0Q2cTlDend1RGZDTnZlZWhjSGtTdll0NE45RkVwdDI0TlNa?=
 =?utf-8?B?MDMwYmxxUUJUcGpaMHY5cVhOUHdWT2k3QW84eldpWnhhdlN6L1BTdzR0dkhS?=
 =?utf-8?B?L2JBc2o4RDVXU3dodWZ5eDdhQmtPM3ZBT1gxaFJlR1lMalBMZ25VVjE2VTVJ?=
 =?utf-8?B?S3NwREhkRXBBYmh2bWdrNkFONXJVOU1ZbkxCaFphWmN2VU9zYWI3UWdxdUVu?=
 =?utf-8?B?NG5uZzdvbGF6bGFjL0JMb3RVL1cyU0xGT01QOUFJeXZxU3BNMkcwc3ZCRUZY?=
 =?utf-8?B?djhwakNzY3MwbEI5VzM0ZE85Y0oxUlFXeEpJeXNOeTh3WEJEbzFGOUtEYlJ2?=
 =?utf-8?B?ekhqVDQwTFQ5NUQ4SVp5ei9HWktFZG9sT1I2NCs1Qnp4ek14MmxwVEMrNzR3?=
 =?utf-8?B?MGd0YmN0UmxwMkZEUGt0bFNBU1Z5Wlh3RDczTVlqRjREV0dvTzZUU1dGTGJG?=
 =?utf-8?B?QXVVdnI2WjVtZmZCZk9Pb3VGTzJoODFFb1VsVmMyRmtDaVgvb09yWEltZWxF?=
 =?utf-8?B?aVhDaDNBV3JzOUlDdlFpSjZvWWhKK1VZRVRscnpva0ZrWG1zOUtReGRLUnVH?=
 =?utf-8?B?Y2N4ck00QjJ5VGxrZFVxMTNFOU9wQ1dXalRpNzdrVE8zV0VSckRrWHBNNVVi?=
 =?utf-8?B?MXM1QWNkSDN1NElrbGlaZENaa2YyNEtpbnovYTExZGoxWnp6OE9kdlVMNWd2?=
 =?utf-8?B?VlkrNTBqM1JYOXZyRFdUNGFSbFdtRDl4SzJWQ3g4bG9YVHlEMlZZYXhORXlU?=
 =?utf-8?B?MjdmNWJEam1Ib3JyK1FHZHk1alNMbjc4cGdJVm0rdTJNd3l1ZU51Z09WNzR1?=
 =?utf-8?B?VDU0Ni9mL1lHZHBRZElRUmg1UW04YXRQbmJvN0lVdlBxZUV6YWpFQWlrYlRX?=
 =?utf-8?Q?o9ACW9yItVFr/k1M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26b5e6d3-9780-4646-3856-08de5f21c39e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:32:55.3049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g1DJdUu1IPUDTxnC22pmjAiTgEyZe/sgI+VOS//5VRA6Vjbk5hbyN6vN+7GP12LvYtWsJ54I63lr+bmqyMCRWPAkHXZsfI0IAKEIPwhT+uo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682839; x=1801218839;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SwI05M7RKngnVqYM0VmhnGcBq6ypTprkM4kQ0hvOrSg=;
 b=V3JIsAX7NaEwgfkYzM9ahdHgrMH/X5PFUiz0SbM4fLz0XKZOAvhSCBSs
 0f2Mfy3s5dTLNvp9u0koGRozN36Mw9wUhje6+G1cxk3XKaUC1nLGlqUYI
 ruG1Psrcih2kq6wGHt4xTLZ7yzXGvINhp536htJrAeY88WYgePVwx5eVq
 3lqK9MzQtyfUbeJbFrDxsOcI70gwswym0tmiTc5MfKOJwWgyPIC4/mNTY
 5GdBaWBH+TLcb+4TBl2s9EBjOLsPmvu0OTRfDJOpFzSDZzXV3ycsH3WrB
 Jht82S2vCEPPXu9P1ya8T/8fNx0CziXxljZfedf/lVJW3A832KLE1goNF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V3JIsAX7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 19/30] docs: kdoc_re: make
 NextedMatch use KernRe
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,lwn.net:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 88688AEC88
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDE5LzMwXSBkb2NzOiBrZG9jX3Jl
OiBtYWtlDQo+IE5leHRlZE1hdGNoIHVzZSBLZXJuUmUNCj4gDQo+IEluc3RlYWQgb2YgdXNpbmcg
cmVfY29tcGlsZSwgbGV0J3MgY3JlYXRlIHRoZSBjbGFzcyB3aXRoIHRoZSByZWpleCBhbmQNCj4g
dXNlIEtlcm5SZSB0byBrZWVwIGl0IGNhY2hlZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICB0
b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkgfCA1NSArKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4gLQ0KPiAgdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkgICAg
IHwgMjIgKysrKysrKystLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwg
NDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhvbi9rZG9j
L2tkb2NfcGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5
DQo+IGluZGV4IDRkNTJhMDBhY2ZhZC4uM2E1NjE0MTA2YWY3IDEwMDY0NA0KPiAtLS0gYS90b29s
cy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gKysrIGIvdG9vbHMvbGliL3B5dGhv
bi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IEBAIC0xNTMsMzIgKzE1Myw3IEBAIHN0cnVjdF94Zm9y
bXMgPSBbDQo+ICAgICAgKEtlcm5SZShyJ0RFRklORV9ETUFfVU5NQVBfQUREUlxzKlwoJyArIHN0
cnVjdF9hcmdzX3BhdHRlcm4gKw0KPiByJ1wpJywgcmUuUyksIHInZG1hX2FkZHJfdCBcMScpLA0K
PiAgICAgIChLZXJuUmUocidERUZJTkVfRE1BX1VOTUFQX0xFTlxzKlwoJyArIHN0cnVjdF9hcmdz
X3BhdHRlcm4gKw0KPiByJ1wpJywgcmUuUyksIHInX191MzIgXDEnKSwNCj4gICAgICAoS2VyblJl
KHInVklSVElPX0RFQ0xBUkVfRkVBVFVSRVNcKChbXHdfXSspXCknKSwgcid1bmlvbiB7IHU2NA0K
PiBcMTsgdTY0IFwxX2FycmF5W1ZJUlRJT19GRUFUVVJFU19VNjRTXTsgfScpLCAtXSAtIyAtIyBT
dHJ1Y3QgcmVnZXhlcw0KPiBoZXJlIGFyZSBndWFyYW50ZWVkIHRvIGhhdmUgdGhlIGVuZCBkZWxp
bWl0ZXIgbWF0Y2hpbmcgLSMgdGhlIHN0YXJ0DQo+IGRlbGltaXRlci4gWWV0LCByaWdodCBub3cs
IG9ubHkgb25lIHJlcGxhY2UgZ3JvdXAgLSMgaXMgYWxsb3dlZC4NCj4gLSMNCj4gLXN0cnVjdF9u
ZXN0ZWRfcHJlZml4ZXMgPSBbDQo+IC0gICAgKHJlLmNvbXBpbGUocidcYlNUUlVDVF9HUk9VUFwo
JyksIHInXDAnKSwNCj4gLV0NCj4gLQ0KPiAtIw0KPiAtIyBGdW5jdGlvbiBSZWdleGVzIGhlcmUg
YXJlIGd1YXJhbnRlZWQgdG8gaGF2ZSB0aGUgZW5kIGRlbGltaXRlcg0KPiBtYXRjaGluZyAtIyB0
aGUgc3RhcnQgZGVsaW1pdGVyLg0KPiAtIw0KPiAtZnVuY3Rpb25fbmVzdGVkX3ByZWZpeGVzID0g
Ww0KPiAtICAgIChyZS5jb21waWxlKHIiX19jb25kX2FjcXVpcmVzXHMqXCgiKSwgIiIpLA0KPiAt
ICAgIChyZS5jb21waWxlKHIiX19jb25kX3JlbGVhc2VzXHMqXCgiKSwgIiIpLA0KPiAtICAgIChy
ZS5jb21waWxlKHIiX19hY3F1aXJlc1xzKlwoIiksICIiKSwNCj4gLSAgICAocmUuY29tcGlsZShy
Il9fcmVsZWFzZXNccypcKCIpLCAiIiksDQo+IC0gICAgKHJlLmNvbXBpbGUociJfX211c3RfaG9s
ZFxzKlwoIiksICIiKSwNCj4gLSAgICAocmUuY29tcGlsZShyIl9fbXVzdF9ub3RfaG9sZFxzKlwo
IiksICIiKSwNCj4gLSAgICAocmUuY29tcGlsZShyIl9fbXVzdF9ob2xkX3NoYXJlZFxzKlwoIiks
ICIiKSwNCj4gLSAgICAocmUuY29tcGlsZShyIl9fY29uZF9hY3F1aXJlc19zaGFyZWRccypcKCIp
LCAiIiksDQo+IC0gICAgKHJlLmNvbXBpbGUociJfX2FjcXVpcmVzX3NoYXJlZFxzKlwoIiksICIi
KSwNCj4gLSAgICAocmUuY29tcGlsZShyIl9fcmVsZWFzZXNfc2hhcmVkXHMqXCgiKSwgIiIpLA0K
PiAtICAgIChyZS5jb21waWxlKHIiX19hdHRyaWJ1dGVfX1xzKlwoIiksICIiKSwNCj4gKyAgICAo
TmVzdGVkTWF0Y2gocidcYlNUUlVDVF9HUk9VUFwoJyksIHInXDAnKSwNCj4gIF0NCj4gDQo+ICAj
DQo+IEBAIC0yMTAsNiArMTg1LDE3IEBAIGZ1bmN0aW9uX3hmb3JtcyA9IFsNCj4gICAgICAoS2Vy
blJlKHIiREVDTF9CVUNLRVRfUEFSQU1TXHMqXChccyooXFMrKVxzKixccyooXFMrKVxzKlwpIiks
DQo+IHIiXDEsIFwyIiksDQo+ICAgICAgKEtlcm5SZShyIl9fbm9fY29udGV4dF9hbmFseXNpc1xz
KiIpLCAiIiksDQo+ICAgICAgKEtlcm5SZShyIl9fYXR0cmlidXRlX2NvbnN0X18gKyIpLCAiIiks
DQo+ICsgICAgKE5lc3RlZE1hdGNoKHIiX19jb25kX2FjcXVpcmVzXHMqXCgiKSwgIiIpLA0KPiAr
ICAgIChOZXN0ZWRNYXRjaChyIl9fY29uZF9yZWxlYXNlc1xzKlwoIiksICIiKSwNCj4gKyAgICAo
TmVzdGVkTWF0Y2gociJfX2FjcXVpcmVzXHMqXCgiKSwgIiIpLA0KPiArICAgIChOZXN0ZWRNYXRj
aChyIl9fcmVsZWFzZXNccypcKCIpLCAiIiksDQo+ICsgICAgKE5lc3RlZE1hdGNoKHIiX19tdXN0
X2hvbGRccypcKCIpLCAiIiksDQo+ICsgICAgKE5lc3RlZE1hdGNoKHIiX19tdXN0X25vdF9ob2xk
XHMqXCgiKSwgIiIpLA0KPiArICAgIChOZXN0ZWRNYXRjaChyIl9fbXVzdF9ob2xkX3NoYXJlZFxz
KlwoIiksICIiKSwNCj4gKyAgICAoTmVzdGVkTWF0Y2gociJfX2NvbmRfYWNxdWlyZXNfc2hhcmVk
XHMqXCgiKSwgIiIpLA0KPiArICAgIChOZXN0ZWRNYXRjaChyIl9fYWNxdWlyZXNfc2hhcmVkXHMq
XCgiKSwgIiIpLA0KPiArICAgIChOZXN0ZWRNYXRjaChyIl9fcmVsZWFzZXNfc2hhcmVkXHMqXCgi
KSwgIiIpLA0KPiArICAgIChOZXN0ZWRNYXRjaChyIl9fYXR0cmlidXRlX19ccypcKCIpLCAiIiks
DQo+ICBdDQo+IA0KPiAgIw0KPiBAQCAtMjMwLDcgKzIxNiw2IEBAIHZhcl94Zm9ybXMgPSBbDQo+
ICAjIEFuY2lsbGFyeSBmdW5jdGlvbnMNCj4gICMNCj4gDQo+IC0NCj4gIG11bHRpX3NwYWNlID0g
S2VyblJlKHInXHNccysnKQ0KPiAgZGVmIHRyaW1fd2hpdGVzcGFjZShzKToNCj4gICAgICAiIiIN
Cj4gQEAgLTQyNCw4ICs0MDksNiBAQCBjbGFzcyBLZXJuZWxEb2M6DQo+ICAgICAgICAgICMgUGxh
Y2UgYWxsIHBvdGVudGlhbCBvdXRwdXRzIGludG8gYW4gYXJyYXkNCj4gICAgICAgICAgc2VsZi5l
bnRyaWVzID0gW10NCj4gDQo+IC0gICAgICAgIHNlbGYubmVzdGVkID0gTmVzdGVkTWF0Y2goKQ0K
PiAtDQo+ICAgICAgICAgICMNCj4gICAgICAgICAgIyBXZSBuZWVkIFB5dGhvbiAzLjcgZm9yIGl0
cyAiZGljdHMgcmVtZW1iZXIgdGhlIGluc2VydGlvbg0KPiAgICAgICAgICAjIG9yZGVyIiBndWFy
YW50ZWUNCj4gQEAgLTUyMywxNCArNTA2LDExIEBAIGNsYXNzIEtlcm5lbERvYzoNCj4gICAgICAg
ICAgIyBTdGF0ZSBmbGFncw0KPiAgICAgICAgICBzZWxmLnN0YXRlID0gc3RhdGUuTk9STUFMDQo+
IA0KPiAtICAgIGRlZiBhcHBseV90cmFuc2Zvcm1zKHNlbGYsIHJlZ2V4X3hmb3JtcywgbmVzdGVk
X3hmb3JtcywgdGV4dCk6DQo+ICsgICAgZGVmIGFwcGx5X3RyYW5zZm9ybXMoc2VsZiwgeGZvcm1z
LCB0ZXh0KToNCj4gICAgICAgICAgIiIiQXBwbHkgYSBzZXQgb2YgdHJhbnNmb3JtcyB0byBhIGJs
b2NrIG9mIHRleHQuIiIiDQo+IC0gICAgICAgIGZvciBzZWFyY2gsIHN1YnN0IGluIHJlZ2V4X3hm
b3JtczoNCj4gKyAgICAgICAgZm9yIHNlYXJjaCwgc3Vic3QgaW4geGZvcm1zOg0KPiAgICAgICAg
ICAgICAgdGV4dCA9IHNlYXJjaC5zdWIoc3Vic3QsIHRleHQpDQo+IA0KPiAtICAgICAgICBmb3Ig
c2VhcmNoLCBzdWIgaW4gbmVzdGVkX3hmb3JtczoNCj4gLSAgICAgICAgICAgIHRleHQgPSBzZWxm
Lm5lc3RlZC5zdWIoc2VhcmNoLCBzdWIsIHRleHQpDQo+IC0NCj4gICAgICAgICAgcmV0dXJuIHRl
eHQuc3RyaXAoKQ0KPiANCj4gICAgICBkZWYgcHVzaF9wYXJhbWV0ZXIoc2VsZiwgbG4sIGRlY2xf
dHlwZSwgcGFyYW0sIGR0eXBlLCBAQCAtOTA5LDgNCj4gKzg4OSw3IEBAIGNsYXNzIEtlcm5lbERv
YzoNCj4gICAgICAgICAgIyBHbyB0aHJvdWdoIHRoZSBsaXN0IG9mIG1lbWJlcnMgYXBwbHlpbmcg
YWxsIG9mIG91cg0KPiB0cmFuc2Zvcm1hdGlvbnMuDQo+ICAgICAgICAgICMNCj4gICAgICAgICAg
bWVtYmVycyA9IHRyaW1fcHJpdmF0ZV9tZW1iZXJzKG1lbWJlcnMpDQo+IC0gICAgICAgIG1lbWJl
cnMgPSBzZWxmLmFwcGx5X3RyYW5zZm9ybXMoc3RydWN0X3hmb3JtcywNCj4gc3RydWN0X25lc3Rl
ZF9wcmVmaXhlcywNCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBt
ZW1iZXJzKQ0KPiArICAgICAgICBtZW1iZXJzID0gc2VsZi5hcHBseV90cmFuc2Zvcm1zKHN0cnVj
dF94Zm9ybXMsIG1lbWJlcnMpDQo+IA0KPiAgICAgICAgICAjDQo+ICAgICAgICAgICMgRGVhbCB3
aXRoIGVtYmVkZGVkIHN0cnVjdCBhbmQgdW5pb24gbWVtYmVycywgYW5kIGRyb3AgZW51bXMNCj4g
ZW50aXJlbHkuDQo+IEBAIC0xMTI1LDkgKzExMDQsNyBAQCBjbGFzcyBLZXJuZWxEb2M6DQo+ICAg
ICAgICAgICAgICAjDQo+ICAgICAgICAgICAgICAjIEFwcGx5IHRoZSBpbml0aWFsIHRyYW5zZm9y
bWF0aW9ucy4NCj4gICAgICAgICAgICAgICMNCj4gLSAgICAgICAgICAgIHByb3RvdHlwZSA9IHNl
bGYuYXBwbHlfdHJhbnNmb3JtcyhmdW5jdGlvbl94Zm9ybXMsDQo+IC0NCj4gZnVuY3Rpb25fbmVz
dGVkX3ByZWZpeGVzLA0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHByb3RvdHlwZSkNCj4gKyAgICAgICAgICAgIHByb3RvdHlwZSA9IHNlbGYuYXBwbHlf
dHJhbnNmb3JtcyhmdW5jdGlvbl94Zm9ybXMsDQo+ICsgcHJvdG90eXBlKQ0KPiANCj4gICAgICAg
ICAgIyBZZXMsIHRoaXMgdHJ1bHkgaXMgdmlsZS4gIFdlIGFyZSBsb29raW5nIGZvcjoNCj4gICAg
ICAgICAgIyAxLiBSZXR1cm4gdHlwZSAobWF5IGJlIG5vdGhpbmcgaWYgd2UncmUgbG9va2luZyBh
dCBhIG1hY3JvKQ0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUu
cHkNCj4gYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBpbmRleCA4OTMzZTFh
NjI3NzYuLmUzNGQ1NWMyNTY4MCAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9j
L2tkb2NfcmUucHkNCj4gKysrIGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4g
QEAgLTIwMCw3ICsyMDAsMTAgQEAgY2xhc3MgTmVzdGVkTWF0Y2g6DQo+ICAgICAgIw0KPiAgICAg
ICMgICBGT08oYXJnMSwgYXJnMiwgYXJnMykNCj4gDQo+IC0gICAgZGVmIF9zZWFyY2goc2VsZiwg
cmVnZXgsIGxpbmUpOg0KPiArICAgIGRlZiBfX2luaXRfXyhzZWxmLCByZWdleCk6DQo+ICsgICAg
ICAgIHNlbGYucmVnZXggPSBLZXJuUmUocmVnZXgpDQo+ICsNCj4gKyAgICBkZWYgX3NlYXJjaChz
ZWxmLCBsaW5lKToNCj4gICAgICAgICAgIiIiDQo+ICAgICAgICAgIEZpbmRzIHBhaXJlZCBibG9j
a3MgZm9yIGEgcmVnZXggdGhhdCBlbmRzIHdpdGggYSBkZWxpbWl0ZXIuDQo+IA0KPiBAQCAtMjIy
LDcgKzIyNSw3IEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiANCj4gICAgICAgICAgc3RhY2sgPSBb
XQ0KPiANCj4gLSAgICAgICAgZm9yIG1hdGNoX3JlIGluIHJlZ2V4LmZpbmRpdGVyKGxpbmUpOg0K
PiArICAgICAgICBmb3IgbWF0Y2hfcmUgaW4gc2VsZi5yZWdleC5maW5kaXRlcihsaW5lKToNCj4g
ICAgICAgICAgICAgIHN0YXJ0ID0gbWF0Y2hfcmUuc3RhcnQoKQ0KPiAgICAgICAgICAgICAgb2Zm
c2V0ID0gbWF0Y2hfcmUuZW5kKCkNCj4gICAgICAgICAgICAgIHN0cmluZ19jaGFyID0gTm9uZQ0K
PiBAQCAtMjcwLDcgKzI3Myw3IEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgeWllbGQgc3RhcnQsIG9mZnNldCwgcG9zICsgMQ0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgYnJlYWsNCj4gDQo+IC0gICAgZGVmIHNlYXJjaChzZWxmLCByZWdleCwgbGlu
ZSk6DQo+ICsgICAgZGVmIHNlYXJjaChzZWxmLCBsaW5lKToNCj4gICAgICAgICAgIiIiDQo+ICAg
ICAgICAgIFRoaXMgaXMgc2ltaWxhciB0byByZS5zZWFyY2g6DQo+IA0KPiBAQCAtMjc4LDExICsy
ODEsMTEgQEAgY2xhc3MgTmVzdGVkTWF0Y2g6DQo+ICAgICAgICAgIHJldHVybmluZyBvY2N1cnJl
bmNlcyBvbmx5IGlmIGFsbCBkZWxpbWl0ZXJzIGFyZSBwYWlyZWQuDQo+ICAgICAgICAgICIiIg0K
PiANCj4gLSAgICAgICAgZm9yIHQgaW4gc2VsZi5fc2VhcmNoKHJlZ2V4LCBsaW5lKToNCj4gKyAg
ICAgICAgZm9yIHQgaW4gc2VsZi5fc2VhcmNoKGxpbmUpOg0KPiANCj4gICAgICAgICAgICAgIHlp
ZWxkIGxpbmVbdFswXTp0WzJdXQ0KPiANCj4gLSAgICBkZWYgc3ViKHNlbGYsIHJlZ2V4LCBzdWIs
IGxpbmUsIGNvdW50PTApOg0KPiArICAgIGRlZiBzdWIoc2VsZiwgc3ViLCBsaW5lLCBjb3VudD0w
KToNCj4gICAgICAgICAgIiIiDQo+ICAgICAgICAgIFRoaXMgaXMgc2ltaWxhciB0byByZS5zdWI6
DQo+IA0KPiBAQCAtMzAxLDcgKzMwNCw3IEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiAgICAgICAg
ICBjdXJfcG9zID0gMA0KPiAgICAgICAgICBuID0gMA0KPiANCj4gLSAgICAgICAgZm9yIHN0YXJ0
LCBlbmQsIHBvcyBpbiBzZWxmLl9zZWFyY2gocmVnZXgsIGxpbmUpOg0KPiArICAgICAgICBmb3Ig
c3RhcnQsIGVuZCwgcG9zIGluIHNlbGYuX3NlYXJjaChsaW5lKToNCj4gICAgICAgICAgICAgIG91
dCArPSBsaW5lW2N1cl9wb3M6c3RhcnRdDQo+IA0KPiAgICAgICAgICAgICAgIyBWYWx1ZSwgaWdu
b3Jpbmcgc3RhcnQvZW5kIGRlbGltaXRlcnMgQEAgLTMyOCwzICszMzEsMTANCj4gQEAgY2xhc3Mg
TmVzdGVkTWF0Y2g6DQo+ICAgICAgICAgIG91dCArPSBsaW5lW2N1cl9wb3M6bF0NCj4gDQo+ICAg
ICAgICAgIHJldHVybiBvdXQNCj4gKw0KPiArICAgIGRlZiBfX3JlcHJfXyhzZWxmKToNCj4gKyAg
ICAgICAgIiIiDQo+ICsgICAgICAgIFJldHVybnMgYSBkaXNwbGF5YWJsZSB2ZXJzaW9uIG9mIHRo
ZSBjbGFzcyBpbml0Lg0KPiArICAgICAgICAiIiINCj4gKw0KPiArICAgICAgICByZXR1cm4gZidO
ZXN0ZWRNYXRjaCgie3NlbGYucmVnZXgucmVnZXgucGF0dGVybn0iKScNCj4gLS0NCj4gMi41Mi4w
DQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92
QGludGVsLmNvbT4NCg==
