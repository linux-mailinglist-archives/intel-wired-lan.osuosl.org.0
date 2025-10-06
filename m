Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9E5BBFBC2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 00:58:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A9D86151C;
	Mon,  6 Oct 2025 22:58:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mPL9qOsGsT5f; Mon,  6 Oct 2025 22:58:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A740E61528
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759791537;
	bh=AFBsWaNH5xMZWE6beUD+NWpGJwggysup7MM47xTvFLE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ptaUOYsNT0fniEQy9FdVF4RVmZFR7T5SI2JwA/x7OmMd550L6Rq2eTYUGsaeFgSer
	 2V/0GmaNgWvOTKzTgc8boD4QgKSb1+trRFilKrwtrNDlRrKmzUXVmOCbSU/1+mtxsA
	 i87TeRnrjQtTJgBWCXQZwqO03QqLrCJdxMRypKzWudgInnn/9/8BwdNcE/64Wp8nDE
	 AOH4DLovBZBDvZkXgrqQrPDnuo8VW3rU+vbCdbGJoQIguoWc+WefhD9bgGlMZqGQbl
	 L2qKcVfrhkhXn3pBNsjwYn0Ko5+dCefBxYbZ0LTtBNmBMOC06igsZkyR5ntnAlMKYX
	 s285uyMe89pzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A740E61528;
	Mon,  6 Oct 2025 22:58:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B94B0226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 22:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2CE6840FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 22:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xSGIbdjAoafQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 22:58:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9538F831A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9538F831A5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9538F831A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 22:58:54 +0000 (UTC)
X-CSE-ConnectionGUID: DDvqGN3+QY6g9ndJrjA3jA==
X-CSE-MsgGUID: +Q3qqTqCS/6uTTVfzKFLSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61681080"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; 
 d="asc'?scan'208";a="61681080"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 15:58:53 -0700
X-CSE-ConnectionGUID: z3BLxdlfTbChouMSJzAAZQ==
X-CSE-MsgGUID: idRb2mswT1+jM2A5YTSJgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; 
 d="asc'?scan'208";a="179813390"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 15:58:51 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 15:58:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 15:58:50 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 15:58:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mMUthtg/kit3E02HH9Ztbk5w8ei5ozP9gLg5KgGQCayhILVfaPt0NVPdHSxKWHlNWYOyHjS8RDrDejBzAVwNbyT5X0t6l+BwMFRLWWITjC3TZ0VtUPa4mykhnxVt5zQ59n0WwJkvPN/zEMH7YXWqBOf/BGtDhITnH2CP+/LvNxFp+sritV0NvwyRjAAg+rGt/xjslFkdXu7IJwuoKtaSfBlvY5beDIeqK3EadZgiDv/qSFZoH+9D6DoYFgn4wg9JN/UHXxfkiAXced/irtuZT6uoA5FEzIXkl/FfthzZFZbm1gLNc1ojJi1RKenOaCAhTEqGxVrQ2g6P//sRRqYncg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AFBsWaNH5xMZWE6beUD+NWpGJwggysup7MM47xTvFLE=;
 b=DV43SB/F5w3ujx8Vo0SLJG6W/6nQrcWv2JS+1hZ5fG1obBUu3bmfrbq85k/MjhKu1Oyvoe1sUQHsI4pK91eE8OUIsW3gQIdb7yD6xyrwJr6J47iFiXTclvNNCh8mneIwZOQAWB3OH/eFAz8QITjn88Z+PLXv4tUTqkoROQiY8PrgGgYofcJlQEW0M95vmPlEeykBKSWrIXlJqSpe8KFimZ5yBU/Lwe0fA/DgsTphFvT1nDiyQowbeqQRjqpZ53bCuqCR3QWsLXMhh3UhvKNZ+UCtosbd58+SChBUsInhwfTAJsaRkke+kp3LqVfdR1PWhCk/peuw8b1i6Z4JoCxfXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Mon, 6 Oct
 2025 22:58:43 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9182.017; Mon, 6 Oct 2025
 22:58:43 +0000
Message-ID: <eb18f157-843e-4168-8d66-7602611b61b3@intel.com>
Date: Mon, 6 Oct 2025 15:58:42 -0700
User-Agent: Mozilla Thunderbird
To: Dave Ertman <david.m.ertman@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
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
In-Reply-To: <20251003162721.2831033-1-david.m.ertman@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l3mUYxziFuUuL12IaomZekf4"
X-ClientProxiedBy: MW4PR04CA0175.namprd04.prod.outlook.com
 (2603:10b6:303:85::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW5PR11MB5812:EE_
X-MS-Office365-Filtering-Correlation-Id: 350e1c3a-3c30-44d2-422e-08de052be608
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0xROEJuY3FKcWxPU24wMWNOcEZRcks4amUyTXNOUDlzUE5HSTFvR3ZHWkR3?=
 =?utf-8?B?QUJ0Q0o3STNMTTlmcUdETlhyVEprWUNVcXdnRHVmdENFNUdlMTYzellFUHEy?=
 =?utf-8?B?RnlmZUVyY24reExlQ3d2U3hqT0plSU0zWFkyOGhnMW5uUGtIUjNMTmhlYjVq?=
 =?utf-8?B?ajVEV09yVGV1TWt2NTFRSEVhbHNzbWFNMjVFNGdPdS9MSm8zS2ZxZWM3ZUNT?=
 =?utf-8?B?RjVwNzRsdno4NVVZSTZUWVQwRUJuVGxrcW50RjM0T3JkUE0xZmQxU1p2VGdC?=
 =?utf-8?B?QnBNaE1xVFBGd2RRYjV3RFNtcXlvTEE3QWNGSEs0TzFCNWdLZGI1WmVXQVBs?=
 =?utf-8?B?TVZBVk1zOUZQSDdJcVVTV0RLQnNZVHVwZ3VodmRjRGtjbVpCRWxWVXpHTklk?=
 =?utf-8?B?dGJDVEVabkoya1Q2S3B3aERtbUsvMTlhOWRRMFgwK0RiVzFER2pjcXFReGRX?=
 =?utf-8?B?d1RveHZYeGJrYzM2MHZncWQ0dVZYZHBMSllvQUNCN1NVSTd1SFQyU3JMYWU5?=
 =?utf-8?B?YytGWHhMUkhGNVBCZUk4K3N3TkJGZHVzSGVQTVk3YThsRnV5b1BaUStiRkth?=
 =?utf-8?B?TW5OcUJ4aVNsNnB6KzdlTFV1ZEk0V2FLektLOHRWWmxJOEhWVmdrckhwMSta?=
 =?utf-8?B?MEI1bHdBVEVTUTNoQlhsRFBGM2V5Y0lUUHMxcmpqNUo4VjFJZkFKTVZzQjZD?=
 =?utf-8?B?Rk1Bb2EwMHIrMFBjSHM5Q0pDd2l2NmxDNmlnS2hKQklNTUd6S21ZZWhxdEor?=
 =?utf-8?B?Rm9TSHdqMFBJZ2dJdVhvdmYvendabVF6ZUpicWdleFJBVlhEc1RzWE5PL3Rm?=
 =?utf-8?B?a0Mvb0pNMlducDVoVG9ISjdOa3RqRUlZQ0tEaktSZzNkblE2emRuaUNZdmtT?=
 =?utf-8?B?WlBodU04eVZPR3U1Z1hocStRUW5xYmpKdWF1ZW5SODVNVlpoUS9XVUF0NE5P?=
 =?utf-8?B?bFdlck9tS2lPbUd5Q2tMRzMzQzYwVmp6ZW04QlJ6MGZxdFRDWnlTOEpNd1RV?=
 =?utf-8?B?eUZzYXMyS3ptS3NlRkZjcG50bS9sNmZsd2d1a1ZyeU8zdlB6Nklmd2FNa2hR?=
 =?utf-8?B?R3hzTlV4Q2ZGZHhwbnEvZGl4Qk1xK3Z6ak1YZkU4OTdpY3FzRHpBOSt1ZjZY?=
 =?utf-8?B?cjRidWZnV0pEQnVvYXdLY3hZWkhpbG4xWEdsUHc1RnpHVDl4SDZHQWpWWGVF?=
 =?utf-8?B?RHgwN21reHFFa29LUmNmWm9VcFFWVjRORWRYbElHMlZOSUhvd1ViOUZhWnF5?=
 =?utf-8?B?eEtRYUk4b2ZaZ0ZCdlI5aFAyZGhWZTJDa01uaERhWmFKWnZMdlpnNXZKbnd4?=
 =?utf-8?B?NjA2RTlCc2ZDSFk2bGF5MFFSU05uTmM2ajRJZ0l4SW90YkdsNzE3UjlTVU1v?=
 =?utf-8?B?Z2xBeXJlMTNUclliWWIwc3N4QVZwYkhaRk9HT0hBcldqdHFqaGhuNmVZbFpN?=
 =?utf-8?B?cG1TZzZLMXFZNGR0MThWRlBoT0pXRDQ5RVF0RWEvWE0zQjBPbXJ0KzJGYmdO?=
 =?utf-8?B?VVVsYk9SWjFPUXI5bDNEeHRDZ3BybmlyYzcwV3l2VXprdHNUUENtVmljNTJH?=
 =?utf-8?B?YzFuQ2dCdnl4UWJOVmxPc3hrYUZqZDJuWGtvMVczSDJaTjVoUGdGN1l4R242?=
 =?utf-8?B?QWJKbkQ1L1BtNlRhU0xjbSswNDl0cThWY1h1ZHlEMTNnSy8vVmUyUDhKVGxz?=
 =?utf-8?B?dFVUSmpTU3BiekQ2M2JTdVJQdy82Ni9Qb0cyN3E3UnlscXQxdHh0bDVoQlJU?=
 =?utf-8?B?KzhUb3FkajF4RXpPSGVsZE5YMisvYnREb0NTb3lyS0lOOVo4aUx0RFh4UThp?=
 =?utf-8?B?VFJpUDl6ZW83WHZyUW1ReXViSERlR01hUkI4UkNBLytYbERvZzIzWkRVR0dp?=
 =?utf-8?B?L3VtZWxQVkdzRWsxbTlKdDNIQWVmVWxFR1ZMdUp3dHY4cnVkUHlKQXNPZVpJ?=
 =?utf-8?Q?bhUjiX3mPlp2NM45MMZdo29xwI9PEoV3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1Z4YUFXUTN0ZVUreGlZWnBvWUNOTEZxVERNOUNjWXV3Y0lMNEM2RzY1am1T?=
 =?utf-8?B?b0FEcjFxWW4yMmVYUkNQbVdoalJoQk85TlJtRHRpaVU4SW9jTnFidFhicXdB?=
 =?utf-8?B?bnNHSVJUdkkwZEJhQXd1c0RPSG4xQWN6ZlVkWCtUTzNONUJmNC9Va2dmRlVo?=
 =?utf-8?B?UUJPYmcrL3lMWVdkVG93Rnd2enJBUWZiYTduWm1RL3pHZEZNMXlCRURmMWVu?=
 =?utf-8?B?S1czWjlCVmkzS0Q2VXNjR1gvc3lCY0tNZUlpbVAwSXYzL2lNTkhUckg5VUpp?=
 =?utf-8?B?S285SDVJUXBvWGxBaVF2bDBVN09FNTV6N2tlSHAvMzBVMkhmcWczdlI1MFRq?=
 =?utf-8?B?d0hIejBZRzdtNGtOVHFyeDhXd25CSERsREVNQ3RONjE5MmZWWHVSVkZkdDJB?=
 =?utf-8?B?S1JjRWtKeVhIWllDRkJXT28vTjBKS3IreEk3OTdLZ0VZSVhCamZzbnNYYXZ2?=
 =?utf-8?B?ZUk4ZUQ2SVRTeFlnZnlBMzRaaWhvcUdabWhtVWJCbTlXZnd2NDV4YmsvaHdz?=
 =?utf-8?B?eEZFOXlURkEwL01lMjNlZEFOOWhHWHhYMjAvdXlKWml6dHovK3YraWpDcXhN?=
 =?utf-8?B?RlJIa3dzOWRZU1NjbERhUVR5bmUvbXFJK2tJL1ZlSHhReGtBYjJsSThJK0lT?=
 =?utf-8?B?RE03Sml3Z2RWVDRRbGsraE92dmVYcEJLOHJta3RlbVdtci9Ga0g0dzQ5Znlz?=
 =?utf-8?B?NUFWc1BFdlNEQmFNNTRSL0l2V3h0ZFhiVmo3WmR1aVYxblRJSkY0aUNwMGFL?=
 =?utf-8?B?OS9XdHhsVlRYbzYvTTZqQzRDL0VuelJzbEtqV09qaUdvam5Zc1dxRGQzbUY3?=
 =?utf-8?B?UlJNWEhYTTZqU08wY2x2UGdMbWg5YXRpNXRsa052MENZL21NVU9JeUtKUFN6?=
 =?utf-8?B?RVFhRzU0d2w0Z2F1bFNaWTdBTTltZWtWZGF3ZE5uZFhPWlBlTG5RSFYzUXI4?=
 =?utf-8?B?b3Q5eXZZN1N3WHR1OHgyTE5xeGtzMUdKMXZ4Nk9GR3NtOUN3MVFzZUlJTjVa?=
 =?utf-8?B?R092QnUrRmorOU1sY2tSN2I2WnNleDhObzFxajdONWZROEJTOWlOSmc0aW1L?=
 =?utf-8?B?Q3ZLVWVCLzA1U0svUjc2UmdiaU9tcjVlMDR2MlFQUXIvQUM1SEtOQ3g0R29u?=
 =?utf-8?B?SUM5alY2NFh6d1VtYUZDeTN4N0JKanlqZ1RhdFp2WGxYZi8rczdXK2JFTWtW?=
 =?utf-8?B?NVFKdXJpOWZHajgzT3BJc21VeXI3L3N2UW5iWHFhRWxCZDUrVVFIYkFLMWdy?=
 =?utf-8?B?UlBJT3VQNGdzWmM1RnhzaDdmNDZXYTVKVGRwdGpLbHRuWnBPeTYrU1U5YXBP?=
 =?utf-8?B?ZmhKOWU3ZkZOeVlhc0JRSld5Z0RsK0QveG9Tbk1xaDh2ZFZVL2g4Z013UDF3?=
 =?utf-8?B?dGszMmNmZzlPOFl4K2ZLSFZmaVBUektIRHJZR0g1QXd6QitpNWZsQ0N0dmNS?=
 =?utf-8?B?U0E4c1I0KzVCcXNHNGtJRnN3ejV5aEtIbkozdW9RbjRmYVhmK3VKWk40K1R4?=
 =?utf-8?B?cDdHMmpxY1gwRS82UzA5d0UrRTNjaWtlaUpkbkNGUDYwdjRVOVg0Rm1scVJJ?=
 =?utf-8?B?dUhjUENuYmZwWkl4bmxwSFVNSllKY0dVanBkZ245bFg0MHpydEphRnB6a3Fz?=
 =?utf-8?B?bzl1S05ZOGVSWGVvTjV5YnBnZWNoSW5xOHhRQ0UrZUZlZVN1Y0JkVzFDaWh6?=
 =?utf-8?B?OXFhTkhFeG1xNmYvakFUMnRIL0k4cmRKRW5CYk9MZTN4endEUmx5MzIwMnVC?=
 =?utf-8?B?SU5mUlVlZ29xVEx2dmwzakU3V0ZPZ2MxZXNRK3libUdJTnNhSDJsVHp2aXBu?=
 =?utf-8?B?K1BwL1hGZStxZ1dKaS9MUVlpZE9zL0hRVWFlbitFalpvSWplZmpCcnRiUkU3?=
 =?utf-8?B?bU8yTTl1OU12N3ZjUzZFTkFTLzc4eHgrblpwTEovdVRPejdpT1ZQZjhZQzZF?=
 =?utf-8?B?bkxTRk95SW5hcjhlSEM4eHphbUdQbzZKOEZhMmYvMlhjTWFqQmY2cUlaeVdP?=
 =?utf-8?B?TDRidGxaM2tYamdXcXVqdFBLcXZHSjJXcnBuQldtbkRNZnJWNzVsaHJzWFF4?=
 =?utf-8?B?QWNBYktkVGxUUCs1T0FFTEcxYkhqWTlzZm9vbDl4c3FEc2lMMlBSSGZtRnBH?=
 =?utf-8?B?Mnh4UjdwaVNMOFdFYlpsSithVUdveTFDbDROT1V2ZitrT2ovVEZQejd5ZEYw?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 350e1c3a-3c30-44d2-422e-08de052be608
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2025 22:58:43.6158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: akYQrLN73FwNO+bMtmFuuRKkq38vTmgZ/J8meRa/IOaSAPe1viEhB5sPmTqID0eM8AGEhRhqSIJR2f+aKcZCYiPmbTLyAnwXx9jGCmgHrro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759791535; x=1791327535;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=WrOsLBgDY5WdSGo8glS/cNksHUVhV60jwzZANBIukRE=;
 b=MNWjGjz3IZHT4eO9C9BUP7ZDZh8WqsSZviNY1OsJBg+eB0zsn/K73Lvr
 EiSsgVGm+vBAxRoOwKJTEfRuHO43bPNQZQ38Dkw+d4lWZJbbLmNBoR7KA
 HOuhHmpFd+aj5eq4rsmBEZpBT33KRU1br280JsrWmcs8n7eHGqzixojkB
 cJfxwdqYdBMM7bdVQuLx1wPUHar+sw45kYvrZRUnOPUPhz2TGXR/F3WHd
 6WAGMSuZtZxzz05OqUUjhC3PV0mitHZ34BO/8l4x1a0ccN94c7QPZeUuM
 BJewfp9Gg1SLdExDyxAihm1hkpJPtxpKuiwkWYuIMF8H/5w+SQmZpEG/G
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MNWjGjz3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
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

--------------l3mUYxziFuUuL12IaomZekf4
Content-Type: multipart/mixed; boundary="------------0bBtyIG89oHpyZvbwLIVEoSW";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <eb18f157-843e-4168-8d66-7602611b61b3@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for PF
 traffic in bonds
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
In-Reply-To: <20251003162721.2831033-1-david.m.ertman@intel.com>

--------------0bBtyIG89oHpyZvbwLIVEoSW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/3/2025 9:27 AM, Dave Ertman wrote:
> When two E8XX interfaces are placed into a bond, and are correctly
> configured for supporting SRIOV traffic over the bonded interfaces,
> there is a problem with traffic aimed directly at the bond netdev.  By
> conjoining both interfaces onto a single switch black in the NIC, all
> unicast and broadcast traffic is being directed to the primary interfac=
e's
> set of resources no matter which interface is the active/targeting one.=

>=20
> To fix this, add a set of rules into the switch block that combines bot=
h
> target MAC address and source logical port to direct packets to the
> active/targeted VSI.  This change will not touch traffic directed to SR=
IOV
> VF targets.
>=20
> Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event h=
andler")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 101 +++++++++++++++++++++++=

>  drivers/net/ethernet/intel/ice/ice_lag.h |   5 ++
>  2 files changed, 106 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/eth=
ernet/intel/ice/ice_lag.c
> index d2576d606e10..7773d5b9bae9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -17,6 +17,7 @@ static const u8 lacp_train_pkt[ICE_TRAIN_PKT_LEN] =3D=
 { 0, 0, 0, 0, 0, 0,
>  static const u8 act_act_train_pkt[ICE_TRAIN_PKT_LEN] =3D { 0, 0, 0, 0,=
 0, 0,
>  							 0, 0, 0, 0, 0, 0,
>  							 0, 0, 0, 0 };
> +static u8 mac_train_pkt[ICE_TRAIN_PKT_LEN] =3D { 0 };
> =20

Is there any way this static global variable could be either allocated
or made part of the LAG structure or something?

You're using it as some sort of storage from what I can tell, but I
really don't like that its a driver global and open to a lot of
potential race conditions.

For that matter, its only accessed a couple of times, and each time its
used to copy a value into it and then copy that into something else..
Can you explain whats going on with that and why it even needs a global
variable like this??

>  #define ICE_RECIPE_LEN			64
>  #define ICE_LAG_SRIOV_CP_RECIPE		10
> @@ -29,6 +30,10 @@ static const u8 ice_lport_rcp[ICE_RECIPE_LEN] =3D {
>  	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>  	0x85, 0, 0x16, 0, 0, 0, 0xff, 0xff, 0x07, 0, 0, 0, 0, 0, 0, 0,
>  	0, 0, 0, 0, 0, 0, 0x30 };
> +static const u8 ice_pfmac_rcp[ICE_RECIPE_LEN] =3D {
> +	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x85, 0, 0x16,
> +	0x05, 0x06, 0x07, 0xff, 0xff, 0x07, 0x00, 0xff, 0xff, 0xff, 0xff,
> +	0xff, 0xff, 0, 0, 0, 0, 0, 0, 0x30 };
> =20
>  /**
>   * ice_lag_set_primary - set PF LAG state as Primary
> @@ -1336,6 +1341,89 @@ ice_lag_reclaim_vf_nodes(struct ice_lag *lag, st=
ruct ice_hw *src_hw)
>  				ice_lag_reclaim_vf_tc(lag, src_hw, i, tc);
>  }
> =20
> +/**
> + * ice_lag_cfg_pfmac_fltrs
> + * @lag: local lag info struct
> + * @link: is this a linking action
> + *
> + * Configure lport/MAC filters for this interfaces PF traffic in the
> + * current interfaces SWID
> + */
> +static void ice_lag_cfg_pfmac_fltrs(struct ice_lag *lag, bool link)
> +{
> +	u8 lport =3D lag->pf->hw.port_info->lport;
> +	struct ice_sw_rule_lkup_rx_tx *s_rule;
> +	struct ice_vsi *vsi =3D lag->pf->vsi[0];
> +	struct ice_hw *hw =3D &lag->pf->hw;
> +	u16 s_rule_sz;
> +	u32 act;
> +
> +	act =3D ICE_FWD_TO_VSI | ICE_SINGLE_ACT_LAN_ENABLE | ICE_SINGLE_ACT_V=
ALID_BIT |
> +		FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M, vsi->vsi_num);
> +
> +	s_rule_sz =3D ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule, ICE_TRAIN_PKT_LEN);
> +	s_rule =3D kzalloc(s_rule_sz, GFP_KERNEL);
> +	if (!s_rule) {
> +		netdev_warn(lag->netdev, "-ENOMEM error configuring PFMAC filters\n"=
);
> +		return;
> +	}
> +
> +	if (link) {
> +		u8 broadcast[ETH_ALEN] =3D { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
> +
> +		/* unicast */
> +		ether_addr_copy(mac_train_pkt, lag->upper_netdev->dev_addr);
> +		memcpy(s_rule->hdr_data, mac_train_pkt, ICE_TRAIN_PKT_LEN);

Here, you copy dev_addr into it, then you copy that back into
s_rule->hdr_data...

> +		s_rule->recipe_id =3D cpu_to_le16(lag->pfmac_recipe);
> +		s_rule->src =3D cpu_to_le16(lport);
> +		s_rule->act =3D cpu_to_le32(act);
> +		s_rule->hdr_len =3D cpu_to_le16(ICE_TRAIN_PKT_LEN);
> +		s_rule->hdr.type =3D cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
> +
> +		if (ice_aq_sw_rules(hw, s_rule, s_rule_sz, 1,
> +				    ice_aqc_opc_add_sw_rules, NULL)) {
> +			netdev_warn(lag->netdev, "Error ADDING Unicast PFMAC rule for aggre=
gate\n");
> +			goto err_pfmac_free;
> +		}
> +
> +		lag->pfmac_unicst_idx =3D le16_to_cpu(s_rule->index);
> +
> +		/* broadast */
> +		ether_addr_copy(mac_train_pkt, broadcast);
> +		memcpy(s_rule->hdr_data, mac_train_pkt, ICE_TRAIN_PKT_LEN);

And here, you copy the broadcast into it, and then copy that into the
s_rule_hdr_data...

But why not just copy directly into the s_rule->hdr_data instead of
copying twice? Literally nothing else interacts with mac_train_pkt
introduced in this patch, so we needlessly copy, and result in using a
value that could be modified by another thread possibly even on another
PF since its a global variable...

Please fix this.

--------------0bBtyIG89oHpyZvbwLIVEoSW--

--------------l3mUYxziFuUuL12IaomZekf4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaORJogUDAAAAAAAKCRBqll0+bw8o6Lzw
AQDlN09aelGwe/ThEktrDasUVJaXduOKZauMzY1mAGLupgD/cZIWxu6hiR4cYP26GhvzalSqD07s
XC/chRyh2L1/ugE=
=Yms+
-----END PGP SIGNATURE-----

--------------l3mUYxziFuUuL12IaomZekf4--
