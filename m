Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13728CA1C9C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 23:13:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C27DD8238F;
	Wed,  3 Dec 2025 22:13:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M_cy7t3s4adF; Wed,  3 Dec 2025 22:13:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2837B82319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764799989;
	bh=qkKCpG406hs2OEdjcYjztXhFvvRgTzDRdEq2rtjINQ0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y0kvDCfrwzryoSNDeZHRykdFUcIa0MgD/5fyQcUUetvHYQdnNxQs3hOLMRIl+cebn
	 beZW2mV2u6Z/P9tyw+lVjBQrShYgqpwaMItDGab494BQJEpDqKcCbgi6DzmV/hz6mQ
	 RotkKX/o82Q98XIdVaob6qJLMWZRtpgIsQaAfRfjC3h8gx3ECksPgG5l8Dw5vDnktr
	 pmqajtHAyBEJ66nHkKWkNQeDXcyC+roDZCp1ViR/Q9FZF5ANtcSgN+KoPbxaoVHRQT
	 y4umkT2W6Tl8Fzlx1cbgXe89QJB2L0mQeUmSjNRjj1doTrwlxi1Tb953oEyDaoELbU
	 WueYM9AAqmEPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2837B82319;
	Wed,  3 Dec 2025 22:13:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B17CD3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CC4260655
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D2_ggER53R6x for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 22:13:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6B19760E92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B19760E92
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B19760E92
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:13:06 +0000 (UTC)
X-CSE-ConnectionGUID: p2qF2tS/QHOxpQc1F0DorA==
X-CSE-MsgGUID: NqNLBCBCSFuDNzQTL0JqfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66702517"
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; 
 d="asc'?scan'208";a="66702517"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 14:13:06 -0800
X-CSE-ConnectionGUID: DpLaJarOSKi16yJn1xBUYg==
X-CSE-MsgGUID: sgVEz1J9QqSMFYUzVbhQpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; 
 d="asc'?scan'208";a="194091537"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 14:13:05 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 14:13:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 14:13:05 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 14:13:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vWbTZaqR6OTBCnV8TB79KhWr4g9V41SbrFLqgb2S0INL8+jBgb9LfzqybH60hz+YPgvscjZBm9WuMqQ5uV9RzXbV225CFMmx0jMhLdJO8KKO7hfLHl/uk3AtbhbZR2mbAuAizKg+pBjRe8jZ2BXHCCOE3t3PAMsm1kGOhy1zJSCOGn4FFLashCBqUw3y/MAf6bJxEUsgt2I612CpS+6DSA4t0DHFdRP9050WuzYUffQKNGVVnyYQxYh/BFlN31EjX5O+hAST3RkF9L1twSTuo6UgLLlfjQcwoyEPU/19QkEzJ4oOPAMuZzvPvI98w9bQHK8vu5SMzhQuWQue18rczw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkKCpG406hs2OEdjcYjztXhFvvRgTzDRdEq2rtjINQ0=;
 b=eRcOIbQQOPEu/qsssCCytQYP+MNaaDsqtWHoFSQYjjeO/AjQOuCOU9MrRbvgfueITzPrPV1wJtRzxTFPdefQbYnGScgrf8l4PO+la7wzV5GQKpuSNUeI6YaN0aGwwQh4d0f4SPJRCXw28NNTepM62BfGQBuGCuj2wuEemSP4OVQ8lI16PP+42/unOqkl/r1pop6+lt6YO3yG0v9cyYogWS75kZM+meez+aPmdxEdL8I7LH8JbuGamFhshJ6urVW9wqaCnpyE9XRpvn4QLvSKk/lPbBLpbzFMZ7ZA6WF/iQhzkLusS2tvIrPRHcfyN/nfxj+7sYm6sJdMcON2lffcYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB5091.namprd11.prod.outlook.com (2603:10b6:303:6c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 22:12:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 22:12:54 +0000
Message-ID: <861e9748-f4e6-4383-83b5-b1457df63e73@intel.com>
Date: Wed, 3 Dec 2025 14:12:52 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-2-6e8b0cea75cc@intel.com>
 <aSWB8tuqClJGBqrg@horms.kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <aSWB8tuqClJGBqrg@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UF9QQe2Wtp0jYoQ5YICRXC1R"
X-ClientProxiedBy: MW4PR04CA0214.namprd04.prod.outlook.com
 (2603:10b6:303:87::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB5091:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ab3c4c2-9af8-4a70-4b0d-08de32b91b00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aTc2RS9qTE52TllFL0pvaDZNTUJyS0QvYXVzc3VOYmtlVC9CS2RzcEdwdjZB?=
 =?utf-8?B?Wk1mM1RzakVtTnZhWnZCWU54NGNtNnJsWENENm43OHZmTzRab3BZeSs0a0R4?=
 =?utf-8?B?dWJQUDdSSjRJL2FVUm5SQTc4dFpWRG92U1c1OHNSaUcvVkU2ZEpOTUlHN3RR?=
 =?utf-8?B?YXlPYjZMOGlBSGVjc1JORVFQWGtVWGgvb1pFdmJUK25wNzVGakl4WmR3TGpj?=
 =?utf-8?B?OHZBNUdUN2FDTUUyRkcrQTJLZkM3Y05DdURPS3c2bzJDVGxJMlA3NllIbGUx?=
 =?utf-8?B?QWU0VE1ZamRHSGUyVG5xd1BSN0ZWZlhxa3RZcmpMUHlTUVZQTjVMeEd6SHZm?=
 =?utf-8?B?Vm1oczBrc3FCOEU4d2ZCdkdZQXVmblMwN2pGdFhuT0xTeW1PaG9RUFg1VVB3?=
 =?utf-8?B?SHlpQ2JydUtZZ0tUUDBGQkx4NzBpR3U0UEkwdVhoeEs4NzVnTTBSTnFqSG5M?=
 =?utf-8?B?eHNmMGRBL1d3STRlbW4yanVIVmM5dXY4elBTYU0xRHRHbHNEUGgxUDRnbFoy?=
 =?utf-8?B?aU9vRzZsWVNTcy9SL3BjQkxCaGJBdmxjd3UyVHR1aXVSSWNzcGNKTDhTTWNo?=
 =?utf-8?B?UzBEVUlhenRYS01TSFMyRko2aUJXVWVhM01Yc2NSaVE2c0xDNk1ZN1VBTHEr?=
 =?utf-8?B?cFVTYXVUUWs4ODN1VThoR1dlNVFyZlZ2NEJidnlxNzY2NGJPWjhwNXlXOUlD?=
 =?utf-8?B?NXQyemRvb2M0ejdkRTRQTC9Wb2NhbVpQdi81MU5DUmxqWVZyQVRYMkdRYzA2?=
 =?utf-8?B?LzUxMWRZUC9yOUJWTEZET2I5Z0h0M0NuVGdrU3JMU1dlcGdWc1IraFVLcDlj?=
 =?utf-8?B?emVETzRreUNabWNvaWdUVnB5UU5NWkpKZXhMNWxrRjgrRVVTdjlDV3JpaDB6?=
 =?utf-8?B?dTF5eEZTMHFhWTNBbjJJcURJcG10Zkt2WUZjcEFMazVBM1gxeHhOUis0VFF3?=
 =?utf-8?B?VWFoMkFLN04xdmhFVmhTaVJHSTRjR0l1K29WckRVWjhEZmhhNi9mQUNxTEVL?=
 =?utf-8?B?YmphdFFFbm9BeUJ5QzM4bjNaUFNLMzJXbGR4dlJlQWM0WWNJdjZ6L2ViYjBY?=
 =?utf-8?B?NVZ5QnV1Szd1WFVpQ200cW4wMnk5QVNjekk3QnFUZ2J2V0FqejFqb0xMeDBC?=
 =?utf-8?B?VzBqempzWnRVTy9qOHVHdHorTlIrQWlCVEh2eXJkcmpwUUNUS3UyQ2FMOGFH?=
 =?utf-8?B?QlE4MHBGdjA1N3NvTkI2ZTRmUy9FMDdEMWJ0NzMxb05VUjBqV1cwL0hpRHZ5?=
 =?utf-8?B?aUlWellWQ0c1bG50ejlmUnk3YnpNdDhqdlhKeDVRUWZCTmQ2L0N2R0VCenh5?=
 =?utf-8?B?N2RkbUdjNWZKT2FKUVprOVlmMFFmZVJEN2VZRmx6QmE2ZEI3Q2hsREc5TXF3?=
 =?utf-8?B?T1BnU1ptZzhtbmdSQjB2V0JYdkxCMXlTR0V3N09DVGRadlYzUk5mRkxRSFhr?=
 =?utf-8?B?R2RKRktUSXFlL3loMzRNR2lwMXhoUFpNMitPYUl0cVlqQ1NGa3Q5OHMyNExE?=
 =?utf-8?B?UVlrWEdob1JuaDVOaGc4cVJHblhuNzE2bVlMTlRERTdraTFWdWt1MDQ2WUNU?=
 =?utf-8?B?RTc3MElZOFV0cEJKdXVwQkVwZUxEMXVCaDBLOWRXeHZWajBBVFJBTDlhSytj?=
 =?utf-8?B?SDZDOEMwR0hlQ09tS2NtdTd6UG1UdjVIU0tKYWl0YnpnWmdYcXd2bkRsM3o4?=
 =?utf-8?B?d2xEL1NTbHpkeGQyeGU1T2dRYjgzbjVJVEdmTjEwTWtZWFcyVUZEMTdPRkVM?=
 =?utf-8?B?TGEyZFE2RUF3TnlOc3BLNXJTdVVwc1ZIaURsdi95cXV4Y2Z4ZFRQV01NVVVS?=
 =?utf-8?B?QU45aUNlUFBmaXJkYkhLNjljM0psb1ljV1BlaWdMWGQwTXJucXdFd3lUSW54?=
 =?utf-8?B?Tkh5dklBTW1DMU1hZTBRTnArQ1VEdTFNR21CMzVEYU5JekdnaExIU3BiaUFP?=
 =?utf-8?Q?/9D4dlaX53GCm8XjPLSqfbLskdkZmxle?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RW5WMFprTkNjMWlqOHJoMWlLVy9XUFQ1NTJhbkFnei9aSWNNMUN1UTB5czEr?=
 =?utf-8?B?b0RyWWZpNk82WFcyUmZ4bFhIQnJkVElFN2J3Y3JySUZKRVdmRkd6aDdqRWRT?=
 =?utf-8?B?WFZpSkFhU1MxeVZVMFpFUGdNN2ZKMWpHQnExSDloN3JiaEZYTzJLZnFpRXVT?=
 =?utf-8?B?OUd6MWNFdUhERktQMHJzQjJKeEtUSE8yTnBWSXo2YXlPRTErVlhGa0VPdUtw?=
 =?utf-8?B?K2tuZ0gxSDQyejgxUVRYMWE2cW1kaVFCTnRQK0hqcmV2K1JVbkRid1Y3M0pk?=
 =?utf-8?B?aXZYS0pramxISGhxLzlUcHlhSlhZR1J1UVZlWnJ4aHJUVG1KZ3psRE80eWJo?=
 =?utf-8?B?YjdmL043cUZXbW5LN1dzUlh6UFZ6dk5MS3BZV0FPd210dkhPelJUVlVjNkhs?=
 =?utf-8?B?R1lzbUhDdWo0OW0rSUFQbGxoSkR1YW9JSmdoSWtPRjU3QlIxUktobDV0b2Vv?=
 =?utf-8?B?eE52VkFqc083L21Vd3FRcm9aenZsb2JtQkRCRFZWdGpPZ283UUxJdzFnS3FT?=
 =?utf-8?B?S3pUeUxtL3duRTYvQVpUeDNlVWd4TUprM1FsSG4zeVBJWTQ4M1NxenkveTF0?=
 =?utf-8?B?VnkyLzdMZDEwQlJkZlRESm5NMzRtbUE1U2UxeTMyTG5ka3JXODl3SmJ0amcv?=
 =?utf-8?B?c3Ryd1RqOHc1bElNN2tWOTVlSTVlSjBkc1VMNG9Qcm9aNWJXdzdYUGZvNW5U?=
 =?utf-8?B?USsrb1pCYW1nWTBGQXN3b2R2WFd4QWdPb3lOMzdFNjdheXhGMGVqOEh4bXNT?=
 =?utf-8?B?SWtsZndrZmRtdkNhekhKZFg1eDJJQ29CaDdjSDU1RXV0M2xXYW55U1Raa2Nm?=
 =?utf-8?B?QUcyNDVMeDE1dEg3SmtLTHNmWFBvODRGN2JtQXhLTzBkMDBBVlg4NnZoZW9D?=
 =?utf-8?B?dCtDSkdUK0pJNUZCUHFpK082OUVIR0dvc1NkWHBNaTJPZ21jMVgwTG5ReDND?=
 =?utf-8?B?anZSc21NL211bXJHRllQaHRTQVdpQ0NiUGJ5ZzV4V0Jhb2R2RWJRTlFnbW9J?=
 =?utf-8?B?YzJUZVNnbGNjQzZBb1JhdnByNkJNMW5JM1NHWUpHUGNyQTR5eXI5eWdnN0VW?=
 =?utf-8?B?a2I0UE1MbkxCQXFHUUVvS2ZhV0I1N2xmdWhrVkRlYS82VmZlQVlZSFVoSEdE?=
 =?utf-8?B?ZU5wVmwzdWYxRHpicU5IQ010Q1NsWWZJZEZhYm9PcmxIbEhxcXRRcnNEa3or?=
 =?utf-8?B?L1ozMTJpUmQ5Uk5lR0MzWGNZRi8rTnNJMlUxNmt1ZUpMZEdFVzJTMEk2RVpl?=
 =?utf-8?B?WWhueVRXOS9BNHc2K1VyUnlMRlFHampNTUZvSnUzR0Jidm80dzlNenY2Slov?=
 =?utf-8?B?S1dsaFZzbjhjdUlCSEtGczh4aHV1YmdHRWUxVzFUNzFHa1c2dmJPNGx3RDly?=
 =?utf-8?B?ZnQ3K2FsUVg5cGQ4UVNRWDI3a1NPb3RuOEVqaVpNTnUwSEw2dVN4Z05JWnZD?=
 =?utf-8?B?ZGU4ZjczM1hUbXM4cHNRMXRRRUJSRU4xY0RnSlZzYWROcE8xQUNkYUVBc1Fv?=
 =?utf-8?B?bFZYNjhTYm1MNFNnOU1DSStxLzdXTEh3dWpsdi9RK3haZHdmN1p1NXF4N1BQ?=
 =?utf-8?B?ZUxQRGlHN1hKZlpwNWVrdjNPNVZuSGU4SVU5S0tTSXpZS0dvN2hxTy9RelZP?=
 =?utf-8?B?SGxtY1BLbDdSS0dYYThUS0I0WG51ZTFNSmFaZDZhdHVVUktHbE5GT3JLSHQy?=
 =?utf-8?B?WkhmM2VjYXVaZG4yc2ZnUUxSc2UrMEVBRThja2RsckdmMXprQU1Ga2MyQUtq?=
 =?utf-8?B?QVlXaFNlK25Dd2ViNmNsSmZ3Z3VWY3lFYTFBVmdRNk1QWHZ6OWlhSTdjanJm?=
 =?utf-8?B?MXdIOGVNell1VlBQQlVtOWNLZG1sdkdMSFB2RUpid3ppSTIvdWg3djlxMGxr?=
 =?utf-8?B?K1VqcVk3cGwrNHRLVTEvaGFESDJOTjB0dmJxblptUk9Dd04venUvUFVEV3pv?=
 =?utf-8?B?c3J5NVcxeXRyckZjQmNZNEN0U2VHK0VVUDYyR3hHV3JCSGxWTldHVHMxTTV6?=
 =?utf-8?B?d0hyOG5OOXhFTVNGSWR6VFFnQVZKQzUrSmlROFZUcTlEOW05bFEyeUdEZFpI?=
 =?utf-8?B?SFpQQUdwb3N4NnM3RFUrSEFMcHllR0RCWk9KMzBoTmhGK2ZPVy9aNFZ4ZmND?=
 =?utf-8?B?R3pVSWMxVTRLTmI2TU9aM2pRU1ZMN2U5M0FsMHRIMXM1Zi93WDdBR3duUnVP?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ab3c4c2-9af8-4a70-4b0d-08de32b91b00
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 22:12:54.0121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GUC8axVdKpZFkHK/e+FN1d69cBmIxhwiL5wXcmLqxyYUzKFxGnYlL+yd71N7WZtw3EJfMvExshkfPkv5S/xIkGuRmjNjCxBTVfwyG/5XbaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764799986; x=1796335986;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=qkKCpG406hs2OEdjcYjztXhFvvRgTzDRdEq2rtjINQ0=;
 b=ODJxXMTTp9d49bvyXqcnRB0hAgUwrKW2ypp3DtZzlq4gEstTho/YUMnb
 T37rRoURa8orTRtS+1eXARoMhnNjqjDWyWsQMSlv+Ui8gzkIlQ4Ylkw4q
 HTlwrn6NeoCu2nndoQisPjrZ88heL25seP7PYZHWkD0D86HLzAXhzylqW
 VH/fbh/6jhWBtJ0lzutnJgwWc19X6Al69e/iTXCkFGv6EBbr0+Rt+9k4v
 2NizUc/cJqBCp1vkHNoiwZgDgcSLDgU+eOqx75XEQYuhKl/HE+cMQh2gk
 Cu/L3hz97Jd9596/nV1b9rlKI41lUr3a5v+pP8i1qA0Xvhtv4zIrCGDBQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ODJxXMTT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
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

--------------UF9QQe2Wtp0jYoQ5YICRXC1R
Content-Type: multipart/mixed; boundary="------------vZSjKLjBMLFLjjKuGhHYqzSw";
 protected-headers="v1"
Message-ID: <861e9748-f4e6-4383-83b5-b1457df63e73@intel.com>
Date: Wed, 3 Dec 2025 14:12:52 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next v4 2/6] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
To: Simon Horman <horms@kernel.org>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-2-6e8b0cea75cc@intel.com>
 <aSWB8tuqClJGBqrg@horms.kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <aSWB8tuqClJGBqrg@horms.kernel.org>

--------------vZSjKLjBMLFLjjKuGhHYqzSw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/25/2025 2:16 AM, Simon Horman wrote:
> On Thu, Nov 20, 2025 at 12:20:42PM -0800, Jacob Keller wrote:
>> The ice_fetch_u64_stats_per_ring function takes a pointer to the syncp=
 from
>> the ring stats to synchronize reading of the packet stats. It also tak=
es a
>> *copy* of the ice_q_stats fields instead of a pointer to the stats. Th=
is
>> completely defeats the point of using the u64_stats API. We pass the s=
tats
>> by value, so they are static at the point of reading within the
>> u64_stats_fetch_retry loop.
>>
>> Simplify the function to take a pointer to the ice_ring_stats instead =
of
>> two separate parameters. Additionally, since we never call this outsid=
e of
>> ice_main.c, make it a static function.
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> The *copy* was certainly working against us here.
> But TBH, C syntax led me to read the code more than
> once before seeing it.
>=20

Yes, I had the exact same issue. It took me a while while refactoring to
notice this particular bug...

> Reviewed-by: Simon Horman <horms@kernel.org>


--------------vZSjKLjBMLFLjjKuGhHYqzSw--

--------------UF9QQe2Wtp0jYoQ5YICRXC1R
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTC15AUDAAAAAAAKCRBqll0+bw8o6K/o
AP9pqXoMTUbV5rfPuKC4wu+7+2J+NotZNUDIAsNGBw1rTQD+Od+vecipM65a50/JsbYAPxZF36wI
JQLVUfC/7OecBAg=
=szkB
-----END PGP SIGNATURE-----

--------------UF9QQe2Wtp0jYoQ5YICRXC1R--
