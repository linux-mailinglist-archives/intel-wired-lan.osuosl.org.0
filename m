Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD100AFBEB0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 01:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ED894190D;
	Mon,  7 Jul 2025 23:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FDo0VyQtQXvH; Mon,  7 Jul 2025 23:36:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68CE8418FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751931415;
	bh=2ioZVxiP4noqD8c6sS1uA+yWzg6x7KMdQc5GXjnK0UY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tnb7vSuDfHJOK9mqRP9V5GjVGnnK3quZLD236id6M3atdzhIcHF0gLFY23ApnnhqN
	 zod4OXCLhjxSyE8cSxImWnbibr8ktznQ9Wk8YV3tIbttWUm7AW2ps33KOCavmJDmoP
	 69B7Qeq8SsOPlQsfz0WLS9YzeNS7OgatrTm7yeWZfi71DlrDInWO9jNkyNb3ebILRM
	 JeVGNdegoObvxE1WZl+3IJzA2/R0kgDvZZOH2x7eHq6dD/oJdYqAaY1FU3/Ktn72MW
	 gSEzkk9NMrpnaH8kquLfu02h5OC7hjA0rAiS5jFlUXkCnd8uxIeIhf50H4WsH5oVQ1
	 R/payGlLhL/ZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68CE8418FF;
	Mon,  7 Jul 2025 23:36:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C049112E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B082A400F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:36:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ClrZcA7BCVDG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 23:36:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5729F4093B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5729F4093B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5729F4093B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:36:52 +0000 (UTC)
X-CSE-ConnectionGUID: xhECoX5sR8ifYj8Lj4ddhQ==
X-CSE-MsgGUID: STYofE3aQ5uB42v/cOep4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54019710"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="54019710"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 16:36:52 -0700
X-CSE-ConnectionGUID: uCAaBzrCTqmSf0BH083Ezw==
X-CSE-MsgGUID: /qeUkVsLRsS+HKhgEmD0kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="155466013"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 16:36:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 16:36:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 16:36:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 16:36:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n8fv4rlCScJL/P88zHQnwXxgSQp/yzhbmnp7pe/9LrhdDaYibDMsRrAH88A+wcZ30QDEM3yLt47wRcM2GuJpgxWNy9pKS52kMpvngvrmstDqMtFWi2ftXgrBl8LlYllBwq89cd3ChkkdqqVuCzIye1lTFUUqSd51Z16LZ80hhrEUmHszL7KsWjAhoZdqlL6f1a57ekThXXjp4OQTTtY+VYqCiJdFioEBJYM6/2dldA9IfcoI7YbELUrl1HhyIWxtgwqFdY4+8xWCp2WUnNG5W+FJAGAcnpLknoWbo4CgrYf0tUK7Buzp7OW/IkU8GVKWliq5LiGaqV6ec/Icstwvbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ioZVxiP4noqD8c6sS1uA+yWzg6x7KMdQc5GXjnK0UY=;
 b=flF7cWxRKTmapCA7Ej3TmTdpC2yr/HsjS4Te7KO0qbs0nVOF2hMiiqFo+IqBhrbsZl3zINsAYrKlT91fKqPoXMTIgp/y+Whu81KA3RzSZUyrZGGT/8KkWKBq77NXZ9sbwKIrYnC1/NVM+1/hi4GJpp5oDTWqGIBZLSbVRCLgnXmFjIi/EUDAC1F/utfZF90FB0zfff6nQUL880eHRMq0u2E/gWshsXSHIBhGFy9mMo5j1fiS49wD8ldqe7F932QF6UIh7js74mR5krQ6OrmP4xQKZs8vMHYm7DpWf/MBb1SP5eUZ6JU739encL9LEuYV5ScPIQVPftCW1qnQIOzbWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB6423.namprd11.prod.outlook.com (2603:10b6:8:c5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Mon, 7 Jul
 2025 23:36:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 23:36:47 +0000
Message-ID: <5a48f9b2-9a7f-4887-919c-cd99d8468c44@intel.com>
Date: Mon, 7 Jul 2025 16:36:45 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
Content-Language: en-US
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------E0h6ZpfTtO0ogzrYeqK6n7Bg"
X-ClientProxiedBy: MW4P223CA0008.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB6423:EE_
X-MS-Office365-Filtering-Correlation-Id: b2a518f0-45e7-4f87-feb9-08ddbdaf2383
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmUyYUNET1gydC95dHk5c2hRbEZBSnhkcE05alFmZ0J6eGFEM243U1R6K3Jw?=
 =?utf-8?B?anNRcjFFV2lvelF6RzRrMWxPQSt5Zk1JQVFSOVVNeUcwVXU1STI0dUk4b2Na?=
 =?utf-8?B?RTczMnJkL05jQ3g5bEdOMmY0Ym9WWFRZbXJwdHFEMDZieDdJQ1VJWUdGVnBu?=
 =?utf-8?B?bUpFaCtEZm5WV0JnTmsxU0xZMDIwcUdObzdBOHhXcVBWQ1Bubzg0QTVqVEdt?=
 =?utf-8?B?NkdlR0ZuS0VzOXlyQzIySlNKYURsVTRqNGFmRGgvZ2FtTWpWNU1JRzBhZkFK?=
 =?utf-8?B?MVBiamRQaVZNTk53bC9VVzVHLytMVjNuejlrbHpqeHMya3MrNzkxK096WVZz?=
 =?utf-8?B?QmNPK0hYV3ZSU2ZYbXNWbE9pcW1WYWFaRzI5Q3FGeGdmVHd3YWh6Zk1VTkZ4?=
 =?utf-8?B?Sk56bEdyQklUSmRQUDNvSU9nT05yRDZYZ0lHcGtSUU5JdDFJTGxiMXpDcmxx?=
 =?utf-8?B?QVFVMVhJbXEwUU04UWdaeWZ6SVhweUtwS2VJNkVMbkJ2NHYvdGhYNDBsMmRq?=
 =?utf-8?B?bEFSOVJ5WWd1dDNIZWtmbUtGSDFkdmRQWDhKV2E5TGI0R2N5eFF2OWpkUWJh?=
 =?utf-8?B?R3NqTzEyOFRONHJDWnNDN2F5NnJhMjlUQkx2Q1V0SU1TMHlGRWt1UDY5VUhF?=
 =?utf-8?B?WnhNNjd5anVMa1YyU25CQzd4Ymt3ZGsxWDJKVjRwaU50Q3QvTXE2ZGJuakpM?=
 =?utf-8?B?bTNYaTVpTkkwTW0zL3Y4ZmZsS3E5UXVrZDZJeUc1NXZIYmNLU0lyOTc1eGFF?=
 =?utf-8?B?OUkwSGRkZlJrMlNJeXgwbjFLN0lLZHJHbmIyUGdVbUdIYUJvWmpTcmVTaHpS?=
 =?utf-8?B?YjJRSU02UEJGVHpzcUJPNDRDWDBIcDBlSkx2cmR5MTRJY1hkUDRBWEZwQm1q?=
 =?utf-8?B?UGtzTlNSd3l5ekNTeEV6ZTJMNjVydkNEbVNqdzlCWGN5cDIyRTNEdk5HclNP?=
 =?utf-8?B?QndxR0RoaGlUZTArd0h3cWFKMWs5R1hJd0dVOEU0Vi8rNWpiRnk0WFFYY2s1?=
 =?utf-8?B?RkcwdElvemRNanZIeENkNDFBSUFLQ2MzbGc0RlBwQUVVSjNOYjVDOG5VRXVy?=
 =?utf-8?B?d1hMTmx5OXRDaGxmaFZqZVFRU0VzN3RnSGpMNU54VnZtWGhiTVF0eURHZTJF?=
 =?utf-8?B?UitXdlltdUpXb2ZsZ1JWWXRFSVp6bjBLcVJxSUg4NVlDcnFkenF5dHdTb2Jz?=
 =?utf-8?B?ZEd6Mm1ZVWxURTVzYzhUU2ZDd0swZDR3RmlVdHpkUHpUajBJa05tOU1wU3Z4?=
 =?utf-8?B?b040alBET2gxS1J3V0RUaDlwSGRISmw5aDlFMEo2OUxHajZpQkhrV2loM25m?=
 =?utf-8?B?YXloak1MQU1qTTlQTXMxTmlaVnNnc1Nqb1RXeGE2R3o0akNtZE5FK3MxeTcz?=
 =?utf-8?B?OXp1R2VNajIyMEg2YTRQYXJHZENtVGowdzVYajUwU1YxU3N1dzRkVGJsVXUw?=
 =?utf-8?B?cjNGUzFheG8xczZwb2xkYkMwOHFoY1F2dUNNY2J5cDY1YXNsb3hSSi90RUVr?=
 =?utf-8?B?VTg1U05PN2pvNUNUano0OHdYUnZvdk4zeEdrK2RHVXNMakhINzBvdFMvdTNP?=
 =?utf-8?B?MHcyay94U3krTCtLcE54SnVuUFM2R0c5amxWTjVpaDRIUW9xZXQxSVI1bENm?=
 =?utf-8?B?c3lkbEJxU1M2eUIzS2hZaksrZ3FKb0RaYUp6d3FBQmhJMWVjMVBvcEZ4ZTdy?=
 =?utf-8?B?RkgxK1RWYUthWnpDeHFBQmFVU2NKS2M1MGE1eWxnWWVBMDdhWklLb1V2a0hG?=
 =?utf-8?B?ZWJKOVdhSkRxUWp4U1AzdkI1TlRISnpwZXBPRk41MDRjR24zemlOY0lzK2Nv?=
 =?utf-8?B?d3pJajF3T0NoTHJ2dEMyZkZ0dUg4NDIvSFIvcFpxTDBmVmxEQnhKT2kxSi9I?=
 =?utf-8?B?aDFKcWJaZVN4cmZQV3ovSFpDTmQwaE1oKzE0eUF0WnF3NGkxUzloQ2V5VG9X?=
 =?utf-8?Q?4Qzjg/IsZbw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TU5WTzVMcjJhSW1pNjViV0p1SFdEUmVHWGRzcEd4RWY0dlJ5ZmtrSnVkUzlz?=
 =?utf-8?B?Q0x1a3RJK3p5NEo4NXl3TVlzUzM1aTkyamxnNVN0aEpOR0UxdXBQejdEQXZx?=
 =?utf-8?B?cGIyRXVXNEhuenVRSVZOMElKdFBmRzdveFloTlZqZ1lxU2ptVWFtV3N2b0s2?=
 =?utf-8?B?Q0Ivank4cXFzcU5ZWlczRk5Ia2M0MGJkNHU5ZndFSXRHdnZrejZxUEFCcEhs?=
 =?utf-8?B?Vy91N0czT1JqbFhkQjdVQkErM2ZHdVJhd1RZejVUT0IwWm5GNmx4NFZuTHFQ?=
 =?utf-8?B?ZHliRlR3Q3RBSWtqSDU1S2RUQkNjOUp4NXBiU0xRbk5FMDArTHBXbXBBcXli?=
 =?utf-8?B?T1ppMW1NMjRaTk01UW4vaGRyM0Z1VHJlY2JhK090cUFKMDhHdjdDN0dtc2sy?=
 =?utf-8?B?anlXNXJWVW1vaVgvZXhnQnVtWXBFcVpaOXZVbkhKc0lEaHhwWk9zQVhwaEsv?=
 =?utf-8?B?aXVpMDZzWnZvV3IzbWMxTjNCdlhZR0tWSWNrakhwaW5Oc0diRUdzWng0eG1G?=
 =?utf-8?B?UnNKNE1UdTB1YTVmcXNKd212WTViaTgzTUl4eDhZS3VPZWdKSnp1UVVncDFj?=
 =?utf-8?B?am5CVFozS3ZYR0hjaFlkUUxodllGdWwwSjQzcEhweGVocDYzYXRFazN2emdF?=
 =?utf-8?B?Z3FKVGdQVHY3Ty9qeTlmVXdDbUJ5Y3Qwcjh1aEFMU04zSFprUFFjeFdiQ0JK?=
 =?utf-8?B?NzJFZUwrb3d6WVJoVHg3eWVQdXpUN29XSXVCRFU3WE9jUmdoeXlhOENFUVRw?=
 =?utf-8?B?MjAwVC9kcDVZSHFJcHJ0VmVPMHdZQnhOeGdEVU4yWDlBM0lHU2d2cGVBTXR6?=
 =?utf-8?B?V2N4NFA3Lzd0UitiL2FsU2xyNGYxZThpUCtnSmFuUWIvV2hGa2ZJbmdYcXpH?=
 =?utf-8?B?OXVYL1R5Wm1nNjJjdWM5TUNEMHRqL3pTMEhVUFZmVTd3ZVZKcVVwQU43VHox?=
 =?utf-8?B?bG9qU04yWVNTSXExSU9UR2xqS2lQbmxrdTZ3ZWMzRWU0RUFQY3BPb0JzaFFP?=
 =?utf-8?B?MnN4OXRkTER6UTZtalQ2bmNqWkNBQndlTjI5cUVyOVk2bUZGa3JzNlV4R0VC?=
 =?utf-8?B?OW43Z284SGJib3NQdHI2SjFpM01aSHVQa0VyYUdNZEVwTDZuRXliNHFzSVgx?=
 =?utf-8?B?czJsT2ZNOTdoL29HRVZ5WC91L1FjWEtkUkJxMldoSDBPOUZTem5yQVhxNWVC?=
 =?utf-8?B?V2VZQ2U2Z3czQzQ2L0laeFlJZXFPaEJVTUlHbXN5M0pTeHU2YjFYbnBQcGxj?=
 =?utf-8?B?Q3hNY2xUTFRRVll5eDg2ekN3U2FxTEU0L0VDMWJtV08vdGRNMms2VFpzb1do?=
 =?utf-8?B?a25XaUxKSEtiRHpZYmVTTFBOWVBQbDRIVXBkMDZPNVJUT0dQbG5SZjgwV3B1?=
 =?utf-8?B?eFJGT3FHTjdPZDJQa2lCWmdZR1hoem14V3ZRU1pWSWRxUXFwWW1lOVo4eC9R?=
 =?utf-8?B?eHJFSzlya1E5aWF1WTBldkhYWVgrcWlsK2lTNXJyR1VnT2tHa2NZblRrWmNF?=
 =?utf-8?B?WUtVbHNzazlqbExkcyt3UEsvNlhaOExqSk5lQnpnVG9uSDVoZmQyZy9jWXdU?=
 =?utf-8?B?Y0RzOVd1SEs4blhLZWtQRzVkQU5zQXFSSlRaQmdjZ3BhMU5yTmg5Y0k3R0JR?=
 =?utf-8?B?L3Z0K2ZHeVcvbTE4TGN5b3BrL2g4a1RtZDNmV2t5TFk0WU9JRjdSNmRrZ0U4?=
 =?utf-8?B?RnV6S2szYVRTVjNjZ01ENDI1RFc4aFNuU2gvN1BERmRwUmlvdjIyMmh4K01z?=
 =?utf-8?B?djhBbVJPOHJvdm5LY1NkeGRWeEJ5ZFZHSVNic0ZaNWk1Q2lhZUMybU0zTzBZ?=
 =?utf-8?B?RDJ3SE93eS93SjBSOE5DdlBjblo0RVZ2NTFIZXpxN2sxakJNUWUvekpFMnQv?=
 =?utf-8?B?Y0FYb0pGdTRIYUJqRTJIalpoY3M5WUUwSWFhTjZOamY5dVBMZlNFcmgxVmRC?=
 =?utf-8?B?MFZIUDQrQTVYL1dXWXBmN2RmSTdtdWIxSGZBVmpja3hoTDJRZlJ3WXNoRzJn?=
 =?utf-8?B?ZkxNeGZkS0VudGlteGVacm1LejZQNEMvNXRlQWFJU0ovZFFJOG0rczc2QnRr?=
 =?utf-8?B?UG1MQmdCL0llMUJJUmQ0YlVuTGNhdG1NWGdFOHlpYmcxUVphNUVkWlpydmtZ?=
 =?utf-8?B?R3A0ajNmYUJQVEpUb3ZzM0g0TkpTQUI2Q2srTXV3SmM2dWFZSWFuakpxYXhD?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a518f0-45e7-4f87-feb9-08ddbdaf2383
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 23:36:47.0726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LNvaiwExujw6s/UrhDvy8fX6kkAQBqQ26TBmod0UqlnpJOdEk7EWOMJhSEI0yhjis8ny8LYz/cAe1NWieJbmeaIjFlta3Ctn9CcvLBitWcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6423
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751931413; x=1783467413;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=wa2hp92AVw7QZhJ8xXHeL3SYZtdx0cPCq8nlf+D9iXs=;
 b=Y2xmF6x8ej7JtLd48W0Gllj6D5KbAzVrmgJg/wbKuoMNtSyCIQym7tme
 rQJlTZDFlC1pCj2QY1Vl3qwZmW7Ey5WzR1k1t2qYE7ccO5A5tKnuYz/Dz
 L6RORDBshubUyXruurctzZBDMndaEuO5fH22bM7QQ38dmJqyH8CLJ4fC2
 I1IAOJDNqaEPgZABhVep0G140r4mJDcNdw9NswdZ9oIwynlO8Nm+dz+TS
 85lbWzD5dvbUBixlPsUY77XJLyHERVtGkvAJQ6WiDi+qv40p09NqPYK/Z
 ZVEtegcshgjBcSHJduwFFdH9lRnBHlN8FLZ2JGSZchc0P8Q5Z0aQub+qn
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y2xmF6x8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
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

--------------E0h6ZpfTtO0ogzrYeqK6n7Bg
Content-Type: multipart/mixed; boundary="------------uX2eiJVLd5ct0ovZE1cST0mv";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com
Message-ID: <5a48f9b2-9a7f-4887-919c-cd99d8468c44@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
In-Reply-To: <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>

--------------uX2eiJVLd5ct0ovZE1cST0mv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/7/2025 4:32 PM, Jacob Keller wrote:
>=20
>=20
> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
>> This series modernizes the Rx path in the ice driver by removing legac=
y
>> code and switching to the Page Pool API. The changes follow the same
>> direction as previously done for the iavf driver, and aim to simplify
>> buffer management, improve maintainability, and prepare for future
>> infrastructure reuse.
>>
>> An important motivation for this work was addressing reports of poor
>> performance in XDP_TX mode when IOMMU is enabled. The legacy Rx model
>> incurred significant overhead due to per-frame DMA mapping, which
>> limited throughput in virtualized environments. This series eliminates=

>> those bottlenecks by adopting Page Pool and bi-directional DMA mapping=
=2E
>>
>> The first patch removes the legacy Rx path, which relied on manual skb=

>> allocation and header copying. This path has become obsolete due to th=
e
>> availability of build_skb() and the increasing complexity of supportin=
g
>> features like XDP and multi-buffer.
>>
>> The second patch drops the page splitting and recycling logic. While
>> once used to optimize memory usage, this logic introduced significant
>> complexity and hotpath overhead. Removing it simplifies the Rx flow an=
d
>> sets the stage for Page Pool adoption.
>>
>> The final patch switches the driver to use the Page Pool and libeth
>> APIs. It also updates the XDP implementation to use libeth_xdp helpers=

>> and optimizes XDP_TX by avoiding per-frame DMA mapping. This results i=
n
>> a significant performance improvement in virtualized environments with=

>> IOMMU enabled (over 5x gain in XDP_TX throughput). In other scenarios,=

>> performance remains on par with the previous implementation.
>>
>> This conversion also aligns with the broader effort to modularize and
>> unify XDP support across Intel Ethernet drivers.
>>
>> Tested on various workloads including netperf and XDP modes (PASS, DRO=
P,
>> TX) with and without IOMMU. No regressions observed.
>>
>> Last but not least, it is suspected that this series may also help
>> mitigate the memory consumption issues recently reported in the driver=
=2E
>> For further details, see:
>>
>> https://lore.kernel.org/intel-wired-lan/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGf=
pr7dnZxzGMYoE44caRbgw@mail.gmail.com/
>>
>=20
> I tried to apply these and test them, but I ran into several issues :(
>=20
> The iperf3 session starts with some traffic and then very quickly dies
> to zero:
>=20
>> [  5]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>> [  8]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 10]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 12]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 14]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>> [SUM]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>> - - - - - - - - - - - - - - - - - - - - - - - - -
>> [  5]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>> [  8]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 10]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 12]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 14]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>> [SUM]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>> - - - - - - - - - - - - - - - - - - - - - - - - -
>> [  5]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>> [  8]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 10]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 12]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 14]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>> [SUM]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>> - - - - - - - - - - - - - - - - - - - - - - - - -
>> [  5]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>> [  8]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 10]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 12]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 14]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>> [SUM]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>> - - - - - - - - - - - - - - - - - - - - - - - - -
>> [  5]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>> [  8]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 10]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 12]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>> [ 14]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>> [SUM]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>> - - - - - - - - - - - - - - - - - - - - - - - - -
>> [  5]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>> [  8]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>> [ 10]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>> [ 12]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>> [ 14]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>> [SUM]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>=20
> I eventually got a crash:
>=20
>=20
>> jekeller-stp-glorfindel login: [  326.338776] ------------[ cut here ]=
------------
>> [  326.343440] WARNING: CPU: 109 PID: 0 at include/net/page_pool/helpe=
rs.h:297 libeth_rx_recycle_slow+0x2f/0x4f [libeth]
>> [  326.354082] Modules linked in: ice gnss libeth_xdp libeth cfg80211 =
rfkill nft_fib_inet nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_=
reject_ipv4 nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ebtable_nat eb=
table_broute ip6table_nat ip6table_mangle ip6table_raw ip6table_security =
iptable_nat nf_nat nf_conntr
>> ack nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw iptable_s=
ecurity nf_tables ebtable_filter ebtables ip6table_filter ip6_tables ipta=
ble_filter ip_tables qrtr intel_rapl_msr intel_rapl_common intel_uncore_f=
requency intel_uncore_frequency_common sunrpc skx_edac skx_edac_common nf=
it libnvdimm x86_pkg_temp_th
>> ermal intel_powerclamp coretemp kvm_intel spi_nor mtd kvm irqbypass iT=
CO_wdt rapl intel_pmc_bxt ipmi_ssif mei_me iTCO_vendor_support intel_csta=
te vfat fat i40e spi_intel_pci intel_uncore i2c_i801 pcspkr libie ioatdma=
 mei libie_adminq lpc_ich i2c_smbus spi_intel intel_pch_thermal dca ipmi_=
si acpi_power_meter acpi_ipm
>> i ipmi_devintf ipmi_msghandler acpi_pad fuse loop dm_multipath nfnetli=
nk zram
>> [  326.354222]  lz4hc_compress lz4_compress xfs qat_c62x intel_qat pol=
yval_clmulni ghash_clmulni_intel sha512_ssse3 sha1_ssse3 ast crc8 i2c_alg=
o_bit wmi scsi_dh_rdac scsi_dh_emc scsi_dh_alua pkcs8_key_parser tls
>> [  326.462156] CPU: 109 UID: 0 PID: 0 Comm: swapper/109 Not tainted 6.=
16.0-rc4-ice-page-pool+ #25 PREEMPT(lazy)
>> [  326.472075] Hardware name: Intel Corporation S2600STQ/S2600STQ, BIO=
S SE5C620.86B.02.01.0017.110620230543 11/06/2023
>> [  326.482519] RIP: 0010:libeth_rx_recycle_slow+0x2f/0x4f [libeth]
>> [  326.488454] Code: 1f 44 00 00 48 89 f8 48 89 fe 48 83 e0 fe 48 8b 5=
0 28 48 8b 78 10 48 ff ca 74 20 48 83 ca ff f0 48 0f c1 50 28 48 ff ca 79=
 07 <0f> 0b c3 cc cc cc cc 75 12 48 c7 40 28 01 00 00 00 31 c9 83 ca ff
>> [  326.507232] RSP: 0018:ffffd2c4c814cd38 EFLAGS: 00010296
>> [  326.512466] RAX: fffff58c342d0ec0 RBX: 0000000000000000 RCX: 000000=
00000000e3
>> [  326.519608] RDX: ffffffffffffffff RSI: fffff58c342d0ec0 RDI: ffff8d=
596e024100
>> [  326.527173] RBP: ffffd2c4c814cdf8 R08: ffffd2c4e6bd3960 R09: 000000=
0000000000
>> [  326.534674] R10: 00000000fffffb54 R11: 000000000002cd86 R12: ffff8d=
49fde71cb0
>> [  326.542159] R13: 00000000000001cb R14: ffff8d49acca5600 R15: ffffd2=
c4e6bd3960
>> [  326.549627] FS:  0000000000000000(0000) GS:ffff8d59a3c9b000(0000) k=
nlGS:0000000000000000
>> [  326.558047] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [  326.564119] CR2: 00007f3eda90df78 CR3: 0000000caee56001 CR4: 000000=
00007726f0
>> [  326.571574] PKRU: 55555554
>> [  326.574595] Call Trace:
>> [  326.577353]  <IRQ>
>> [  326.579664]  ice_clean_rx_irq+0x431/0x520 [ice]
>> [  326.584584]  ? iommu_dma_unmap_page+0x48/0x90
>> [  326.589232]  ice_napi_poll+0xbe/0x2a0 [ice]
>> [  326.593786]  __napi_poll+0x2e/0x1e0
>> [  326.597567]  net_rx_action+0x336/0x420
>> [  326.601608]  ? update_rq_clock_task+0x3f/0x1d0
>> [  326.606344]  ? sched_clock+0x10/0x30
>> [  326.610207]  handle_softirqs+0xed/0x340
>> [  326.614316]  __irq_exit_rcu+0xcb/0xf0
>> [  326.618241]  common_interrupt+0x85/0xa0
>> [  326.622340]  </IRQ>
>> [  326.624702]  <TASK>
>> [  326.627053]  asm_common_interrupt+0x26/0x40
>> [  326.631493] RIP: 0010:cpuidle_enter_state+0xcc/0x660
>> [  326.636709] Code: 00 00 e8 67 40 ed fe e8 32 f0 ff ff 49 89 c4 0f 1=
f 44 00 00 31 ff e8 53 54 eb fe 45 84 ff 0f 85 02 02 00 00 fb 0f 1f 44 00=
 00 <85> ed 0f 88 d3 01 00 00 4c 63 f5 49 83 fe 0a 0f 83 9f 04 00 00 49
>> [  326.655959] RSP: 0018:ffffd2c4c6aefe50 EFLAGS: 00000246
>> [  326.661446] RAX: ffff8d59a3c9b000 RBX: ffff8d592decfe80 RCX: 000000=
0000000000
>> [  326.668863] RDX: 0000004bfb4d51d2 RSI: 000000003351fed6 RDI: 000000=
0000000000
>> [  326.676284] RBP: 0000000000000002 R08: ffffffbe2deca6d0 R09: ffff8d=
592deb0660
>> [  326.683706] R10: 0000008df1fafa1d R11: 0000000000000000 R12: 000000=
4bfb4d51d2
>> [  326.691133] R13: ffffffff89512ee0 R14: 0000000000000002 R15: 000000=
0000000000
>> [  326.698560]  cpuidle_enter+0x31/0x50
>> [  326.702387]  cpuidle_idle_call+0xf5/0x160
>> [  326.706647]  do_idle+0x78/0xd0
>> [  326.709937]  cpu_startup_entry+0x29/0x30
>> [  326.714087]  start_secondary+0x126/0x170
>> [  326.718241]  common_startup_64+0x13e/0x141
>> [  326.722561]  </TASK>
>> [  326.724960] ---[ end trace 0000000000000000 ]---
>=20
> Something has gone wrong with the patches applied :(
>=20
>=20
Changing MTU back to 1500 broke things further:

[  436.757872] page_pool_empty_ring() page_pool refcnt -4 violation
[  436.758147]  non-paged memory
[  436.763901] page_pool_empty_ring() page_pool refcnt -5 violation
[  436.766847] list_del corruption. prev->next should be
fffff58c32d39dc8, but was 0000000000000000. (prev=3Dfffff58c332cb6c8)
[  436.766894] ------------[ cut here ]------------
[  436.772880] page_pool_empty_ring() page_pool refcnt -6 violation
[  436.783799] kernel BUG at lib/list_debug.c:62!
[  436.783805] Oops: invalid opcode: 0000 [#1] SMP DEBUG_PAGEALLOC PTI
[  436.788430] page_pool_empty_ring() page_pool refcnt -7 violation
[  436.794426] CPU: 61 UID: 0 PID: 388 Comm: kworker/61:0 Tainted: G
   W           6.16.0-rc4-ice-page-pool+ #25 PREEMPT(lazy)
[  436.798880] page_pool_empty_ring() page_pool refcnt -8 violation
[  436.805139] Tainted: [W]=3DWARN
[  436.805140] Hardware name: Intel Corporation S2600STQ/S2600STQ, BIOS
SE5C620.86B.02.01.0017.110620230543 11/06/2023
[  436.805142] Workqueue: events drm_fb_helper_damage_work
[  436.811149] page_pool_empty_ring() page_pool refcnt -9 violation
[  436.822785]
[  436.822786] RIP: 0010:__list_del_entry_valid_or_report+0xd8/0x110
[  436.828791] page_pool_empty_ring() page_pool refcnt -10 violation
[  436.831755] Code: 0b 48 89 7c 24 08 48 89 cf 48 89 0c 24 e8 30 8b a8
ff 48 8b 0c 24 48 8b 74 24 08 48 c7 c7 f8 40 80 88 48 8b 11 e8 78 59 5c
ff <0f> 0b 48 89 7c 24 08 48 89 d7 48 89 14 24 e8 05 8b a8 ff 48 8b 14
[  436.831757] RSP: 0018:ffffd2c4c7774d38 EFLAGS: 00010046
[  436.842181] page_pool_empty_ring() page_pool refcnt -11 violation
[  436.847396]
[  436.847397] RAX: 000000000000006d RBX: ffff8d494b6ccc40 RCX:
0000000000000027
[  436.847399] RDX: 0000000000000000 RSI: 0000000000000001 RDI:
ffff8d494b69e480
[  436.853408] page_pool_empty_ring() page_pool refcnt -12 violation
[  436.854903] RBP: 0000000000000001 R08: 0000000000000000 R09:
ffffd2c4c7774b20
[  436.854904] R10: ffff8d592c23ffa8 R11: 00000000ffff7fff R12:
fffff58c32d39dc0
[  436.854906] R13: 0000000000000022 R14: ffff8d494b6ccc40 R15:
0000000000cb4e77
[  436.860998] page_pool_empty_ring() page_pool refcnt -13 violation
[  436.867089] FS:  0000000000000000(0000) GS:ffff8d49c149b000(0000)
knlGS:0000000000000000
[  436.867091] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  436.867093] CR2: 000056464518b448 CR3: 0000000161138004 CR4:
00000000007726f0
[  436.885836] page_pool_empty_ring() page_pool refcnt -14 violation
[  436.891050] PKRU: 55555554
[  436.891052] Call Trace:
[  436.891053]  <IRQ>
[  436.897148] page_pool_empty_ring() page_pool refcnt -15 violation
[  436.898634]  free_pcppages_bulk+0x140/0x2d0
[  436.905772] page_pool_empty_ring() page_pool refcnt -16 violation
[  436.912901]  free_frozen_page_commit+0x1d8/0x370
[  436.918997] page_pool_empty_ring() page_pool refcnt -17 violation
[  436.926126]  __free_frozen_pages+0x56c/0x810
[  436.933260] page_pool_empty_ring() page_pool refcnt -18 violation
[  436.940383]  kmem_cache_free+0x3dc/0x490
[  436.946479] page_pool_empty_ring() page_pool refcnt -19 violation
[  436.954561]  ? rcu_do_batch+0x1d4/0x810
[  436.960312] page_pool_empty_ring() page_pool refcnt -20 violation
[  436.967438]  rcu_do_batch+0x1d4/0x810
[  436.967442]  rcu_core+0x17d/0x350
[  436.973535] page_pool_empty_ring() page_pool refcnt -21 violation
[  436.976246]  ? sched_clock_cpu+0xb/0x30
[  436.978702] page_pool_empty_ring() page_pool refcnt -22 violation
[  436.980717]  ? irqtime_account_irq+0x3c/0xc0
[  436.980723]  handle_softirqs+0xed/0x340
[  436.986813] page_pool_empty_ring() page_pool refcnt -23 violation
[  436.990996]  __irq_exit_rcu+0xcb/0xf0
[  436.990999]  sysvec_apic_timer_interrupt+0x71/0x90
[  436.997092] page_pool_empty_ring() page_pool refcnt -24 violation
[  437.001706]  </IRQ>
[  437.001707]  <TASK>
[  437.001708]  asm_sysvec_apic_timer_interrupt+0x1a/0x20
[  437.007805] page_pool_empty_ring() page_pool refcnt -25 violation
[  437.012073] RIP: 0010:memcpy_toio+0x71/0xb0
[  437.018168] page_pool_empty_ring() page_pool refcnt -26 violation
[  437.022093] Code: 5c c3 cc cc cc cc 48 85 db 74 f2 40 f6 c5 01 75 45
48 83 fb 01 76 06 40 f6 c5 02 75 25 48 89 d9 48 89 ef 4c 89 e6 48 c1 e9
02 <f3> a5 f6 c3 02 74 02 66 a5 f6 c3 01 74 01 a4 5b 5d 41 5c c3 cc cc
[  437.022095] RSP: 0018:ffffd2c4c7767ae0 EFLAGS: 00010206
[  437.028189] page_pool_empty_ring() page_pool refcnt -27 violation
[  437.032022] RAX: 0000000000000000 RBX: 0000000000001000 RCX:
00000000000003f0
[  437.032024] RDX: 0000000000001000 RSI: ffffd2c4cac7d040 RDI:
ffffd2c4ce080040
[  437.032025] RBP: ffffd2c4ce080000 R08: ffffd2c4c7767be0 R09:
ffff8d3e3c030758
[  437.038120] page_pool_empty_ring() page_pool refcnt -28 violation
[  437.041781] R10: 0000000000000000 R11: ffffd2c4cabfd000 R12:
ffffd2c4cac7d000


--------------uX2eiJVLd5ct0ovZE1cST0mv--

--------------E0h6ZpfTtO0ogzrYeqK6n7Bg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGxaDQUDAAAAAAAKCRBqll0+bw8o6BAo
AQDx5dL4KuKDdd2xCK6eF1v16VGjFYkr/kIlvjrZ7UdJaAD8D6CWtziA9TpIR/q4YhlD2CKQV9WU
Arhe1KqE6NPw5Ag=
=iWkc
-----END PGP SIGNATURE-----

--------------E0h6ZpfTtO0ogzrYeqK6n7Bg--
