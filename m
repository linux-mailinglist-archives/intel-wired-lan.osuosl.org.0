Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F2EB34FA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 01:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B443441B41;
	Mon, 25 Aug 2025 23:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s-7OigSstiHt; Mon, 25 Aug 2025 23:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E6E941B75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756164286;
	bh=XF9rYft8s1pX83v/+ruH3KAe89WwYlXjLrTxuclndOs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RNyqotLd2mkCALxaJgHlX0WdhhM/a9cTO8lodYOvkRc0PSNMpG8o8Q3MWO+9T/kA7
	 sFtjwE9ZSlbfSsnrY0DhggdfAkApBU2rgLLNwHy8GfuMYnFKYtSaITL7cEm+T4MmHg
	 n/jt5ngVo6qmqJB09OLi8tLjI/tAEJoXi/urHLm/JxR/6i7x1zWNnSLcvoMfSCPPpL
	 EkfX5CVXsmTrVlB4ccsCCic/wvpaGiGjyoYFnLCVYBAAfSE/oNG+NaJLVv7dLpsuqy
	 SqBy+z5a36ZxAyzPxmx37yQMdVG0sVm994/f/0ZtKIRXNV3oEFzyOCByijhm4OTFAU
	 BfpgZFcOjhQWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E6E941B75;
	Mon, 25 Aug 2025 23:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 45CA2CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3603E84612
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rYpc2MgBXiLj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 23:24:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 78A27845F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78A27845F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78A27845F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:24:43 +0000 (UTC)
X-CSE-ConnectionGUID: 0Lb26RGdQ36ZHxS3ihjgdw==
X-CSE-MsgGUID: 5ZS7USXCQ6a3oPQL4OE6eA==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="75986290"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; 
 d="asc'?scan'208";a="75986290"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:24:42 -0700
X-CSE-ConnectionGUID: AZXFgCVAThKpINzCzKgEFA==
X-CSE-MsgGUID: BMJ0Pe9LQPOLJIICcn9NRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; 
 d="asc'?scan'208";a="168627887"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:24:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 16:24:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 25 Aug 2025 16:24:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.79)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 16:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IS4PBAMEpGBtUnyyM0PwsIPN1Xner4HU0T8kwFxPMY7FBQlks9sKxGjRBD5Yk7MuFvwhySv6oVD2WwEWrcIKjiS8U3WTEKVV+VjL4k1UeN3MHniWO6GGEbZDdfuKAD+oump3fe+Vs5JV04Ot8DdDiSsKGAEVhiXzF/lssODx62W+4Q5j08uq38pXMz1XklyGX+B0eDRVcRD8vAsKkuTRCBU2DWe4N5OKQofqkKWCnKHZbM6YGCmoJ1skKDO4m63rAb8skZzbz+lwLeGvvDOON/hSuG2FzjQVnG1W1rNZOT0PAH9/ATcF3aK3Ss2jDMTcKGxX+4PwFRVLTg933ys3kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XF9rYft8s1pX83v/+ruH3KAe89WwYlXjLrTxuclndOs=;
 b=oUVe57JkVqAYM8t9sDTYQMEUqWZDVwvbFjNIn+QpyWxV3a4/V1Pzw5iknIWVS/yGMiKRwu3KlfFT2JvJ9cxDhKsw52p6fig31Ru475xweuZnEF3L/5OF/nL3n0HZv6E2Idk+ilmaInPT1vXp5JyxUljCoczOP8goAjNpCeZ6mUN2a6cxYgZ2fiPEUN/UnqHE1wXQsD3DfcFD9HT59S6r1Bjt7uqm0Ew+726t7ZRx9ZOtG6mp+R7IJNylsTFegccw5OeVhvvkuQdpplxbauneK5sQ0lu9yM9/3OVxGnhvhrZ6mUWfyJbupnTIrQR3Jjmonu0di5FNq+uhaX2B7qoVkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB8325.namprd11.prod.outlook.com (2603:10b6:806:38c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Mon, 25 Aug
 2025 23:24:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 23:24:39 +0000
Message-ID: <1baf249d-c9c4-4952-a00f-6294dbb71794@intel.com>
Date: Mon, 25 Aug 2025 16:24:37 -0700
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Kurt Kanzenbach
 <kurt@linutronix.de>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <27e8fb9f-0e9c-4a0b-b961-64ff9d2f5228@linux.dev>
 <87ikie7a88.fsf@jax.kurt.home>
 <1b3f5020-fa2e-496c-83aa-1e1606bc5ea7@linux.dev>
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
In-Reply-To: <1b3f5020-fa2e-496c-83aa-1e1606bc5ea7@linux.dev>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JIEdjey2pbB9nDGt1BX9Qq6u"
X-ClientProxiedBy: MW4PR04CA0147.namprd04.prod.outlook.com
 (2603:10b6:303:84::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB8325:EE_
X-MS-Office365-Filtering-Correlation-Id: ceef6df5-e38a-41cf-3a48-08dde42e8fa9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NU5icFJWa0xSYXBMRjk1SHQwUUNKd2hac3ZBVm95ZlV5N1FHU2huby9nbXVJ?=
 =?utf-8?B?czBTZm16QUNZeGlneFZtOWJmNUN6QXczdlZNYS83dldhVDMycnpSQ2lJNzBs?=
 =?utf-8?B?ZkZGWHRidVlRdlF2S1Z6TjFMVjlpRFVDTzRWOTkrTyt1SmNLeUpBUVZqc1FL?=
 =?utf-8?B?dGN6bFlLaXlNcDAzVWZFWjQzUG14M2FaMmQ4QTcxamM2TUF3MmNQdEVMQktk?=
 =?utf-8?B?ZlFBRi9EWktrZlpweWRBQVRraFgwZVdkUjJRM1VaTkx1dGN0aG9raFZUUjlm?=
 =?utf-8?B?Tkkzd1dtT3BRUmlNRVhkcEo3aG1ZVE9uLzM4TDZWWi96Zzg0TC9YT3h3R1l6?=
 =?utf-8?B?cVNkTjBDQnZDbjRjVEV4QmZKbUI1bXFocDJWWVErM0xXTlU1OU9oUUlodVZL?=
 =?utf-8?B?MUR5NnRYamxrczMxR285bXpFZE1UeE9lQ0k1Wk9weUc4L1NIYTh5cHJuWjcy?=
 =?utf-8?B?VDNQL043a0VtRTQ3T2JDRHNrNy9KUG81SG5iUkh3bzRweURnYU05M2xvSDdl?=
 =?utf-8?B?KzBoMjFxTElmR3dZL0plMWJUK0NKdXJIRGRzQW9sTHJ6VkRMT1EvQ3FFS012?=
 =?utf-8?B?Q3RaM3ZHN0hhaWRpOC9na1Y3dHVmUm4wRGFOcy9ZSC9ZYk1nU0w4OWdPUjd4?=
 =?utf-8?B?L29RZ01rQXRkaWRvMWtFZTdPdGdMUXRKUFl4dk11ZDUydUVPdGRCN2dRcnk3?=
 =?utf-8?B?RGNjcFNCQkIyUmZOMURHekkxZTA1TXN0RGNzNmNiRmsrNHI3blNYdEppQWt5?=
 =?utf-8?B?THAxN1lJSGRvU1pMUVYzSDBvTTZ6U3VMc1dGcVlzLzh1VlhWanV5djQvNDdS?=
 =?utf-8?B?Ymxxb3FaY1ZBdTlLYVJDdVJWem4xNlR0Q0duUkh0S0xjZUc2aDhUNUk0bkNF?=
 =?utf-8?B?ckxlWkJNL2hBc21lVDNIN04vczlDS3dzS1VTY3JOeVpJOWI1Ump4UmJodzJv?=
 =?utf-8?B?OVdCcHlzbjNHUFRhK0V2QlZ4UCtMbTVIWFdYcm5ucDZxSUVueldOUXlyUjlU?=
 =?utf-8?B?YWx6ME9RVWN2ZGl2bmg3ZWFqVTc2OVlXdjZNRHNnTFlYUHNQWnpVWXc0UmZF?=
 =?utf-8?B?TXZSY0ZpWW9rUWdTajY5UUh1RVV5M2FWdmM2cVdIUUpnSzVRYkJ5SkZJcHJ2?=
 =?utf-8?B?UXJUV2ZiY2I0R1RDdG93OVIzdFFFSTlYYWpsZ21sQkhSV0Y0SS8wNGhVcmQv?=
 =?utf-8?B?UEg3NGsybGlVa1ByT0VSTlR6TTRtWmlYMWNIUWc1cEhTejlDUXlIeVp4bndX?=
 =?utf-8?B?MUxFUFkxaDhBNVd1WDVpQnlPZXhrUHVrdEdJVjFiVjhRUHcxWit2RHFVL2Jy?=
 =?utf-8?B?QTZTNkZPWjM3MmcrS1oveElJT0pFVXZGK2tHTWRHMVFKNmhNNFFlTXJMeUp2?=
 =?utf-8?B?dmlPRGJwVFdUR1JLRG4xMnkwdDQ3NUNJUnQrckNGMTU1aVJwWGNEUDZycjRT?=
 =?utf-8?B?Z0IwMEZIdXo1eVd5MkFmZ1loSXVwTmFzV1FBZmovOUg2cUJFdE81bEF4Z2E4?=
 =?utf-8?B?Q2VHRXlOYmZzTENwSnJseGU3NEhEeEMxTlQ3VFFVTFBRTWdUTlY5dWpBZXRm?=
 =?utf-8?B?ejRhUjJKMHhPeVJ4UW5QQTlON0JzbitvSjZsMitkRWEwNVhEZTBoR1d2RU9h?=
 =?utf-8?B?d1RMRjlQMFM3bWxIMmpTSElrQ295TzJWNnU3ajRnRk9BYmUyVzJmSDF3bWZp?=
 =?utf-8?B?KzZSRkQxTWNKZ0xMbTlVRit3eUFsck4rd2tCdjBkdldoWTMvY2Jpa09vS21n?=
 =?utf-8?B?U2ljcDBrNFQwTHJpZGlna3dlQU14NDFudUtERU9zTGdVZVpsVlM0aUtadVY0?=
 =?utf-8?B?M1poK1VuMTFORlIwc2ErYjFhcGRwNmFiYmF5Zm8yVkwya0RMbEcxVHhEUnp5?=
 =?utf-8?B?QVplM1dXR1dXZnJCYUNVeVZLQldFM2FoRUJla3Frdkd0bmpWK3NMQUQ3Yjdq?=
 =?utf-8?Q?a4MeH09LNdc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3IvN2JETi9nSE05cDBsS0VCczZjOTJnc3U4T1NHOHJqdyt1SzBYT0M3VFlC?=
 =?utf-8?B?dFBkbXkxandjZ2pnaFpkSXhLSXRXSzBpWkVKNGc1ZFZKZFNIaEhMbVg3Y3pl?=
 =?utf-8?B?TWtQYjZQNGw1Y1FzRTk0Z3RSelpmSm9URW1KSW50YkVPaTQwaG4vU28wM0gw?=
 =?utf-8?B?eEoreUpTOFFxYzdGVThSN2NQcWJCbWZGUHQrbldRTkNIeGFOc0NMMlVvdkZ1?=
 =?utf-8?B?T3Z3aVc4TEtUYzRuNWlhNk9XQ3ZpVDc0NHd6cmtnb1B0eWZadWlmckI1dUN3?=
 =?utf-8?B?L245aGRSd2VDUHYzZEl0Qis4cjdFYW1vbjhUQWtmMFByOExIZU1qR0dlUjNp?=
 =?utf-8?B?Q05hMml6emQ1bytvclJMa2F6L0hLWkxnamN5SS9XR1YxT0o3c1pQNWtSNWFk?=
 =?utf-8?B?amhPSHlRM2xUaVdBM3VQb091M2lrZ3pYRG1GMXYzNUFVanZwdVlXVVRvWUov?=
 =?utf-8?B?MElGT0hvS1N5OXQwYTVSOHRmSTBQcWJPb1BLTG5pU1EzNkprZXVtSmc4M2da?=
 =?utf-8?B?YVBNcnE1VFVXMHdQQzZnVDJkTER0dlN2REFSQ0oxeUpTUEl5bGI2Ykt1ZlRZ?=
 =?utf-8?B?akQzcjZ5Ym5pd1B6VU95WCtyekI5Y3pmUnRLaDN2UlFiT1hDQ3N1bk9vMHN6?=
 =?utf-8?B?QnNrUUhEb2tvVlNCemVhVXFiN2NqK1BHQXFYaWtEOXVIRktFd25KeElKVnRW?=
 =?utf-8?B?TUtLZ1hvNm93T0xqT3VHZW95NnJUNVJ0UzZLQlN1cUJaRXprTm1ZUE1UblhK?=
 =?utf-8?B?L3cveU1Sb0VNdHRjY2RNcHo0NW94UXo1Rk5Jc3J1TTNFbFkxbTRFVWtIY0I3?=
 =?utf-8?B?aUp2K0xrYnJ4QzhQNnJiQTlFbjJPUHd4d0JOTEZMOVBEUDNxRzZxVDJuWmFR?=
 =?utf-8?B?OUhXRHNqaEQ0bVlwN0MzR2lFNkNtNVVYQnVzYjdxRTZJM2hnd2ZoME1IaC80?=
 =?utf-8?B?WGNJZWZRS3lZQlRzczAyRVQ1Q0tnS2wvcEZUZUl1ZDcwN3dWRGhoZWFsTGRC?=
 =?utf-8?B?RGQ3R21wWU8rMVk4c0RuUDZ0dWEzajdlWCt5bTA2ZFBQQ3cyanpLNHpjYnhz?=
 =?utf-8?B?VlVVQ0VYK1JmZ0tZVkdsUHpqalV0VXprR2M4L2NHMUk1N1BUTjN4d3J6eVEz?=
 =?utf-8?B?YkNlUW5MdlhDTXpaWkRzZHpxSHRYaTB3ZnZUc2hEZnU2UXViM1pvVWJGTW1J?=
 =?utf-8?B?SmFJcVpsWkJVQnNGbitmd3pQM0VhTnF4TEUvVWdFT2t0Z0lFNytMbnd5OEVJ?=
 =?utf-8?B?VW5qRWRPYVYrbHJhcHZBSk1CbENCQWg2YzZVeVJEVDBsQXZyZllHWHJ6bXhW?=
 =?utf-8?B?dkFNZG1kNitGS1k0ZHpsNFJaYVZORElXRmxHQjAzYWpYbk52ZXFHWmExd0RL?=
 =?utf-8?B?WWpKMk92cXVwd0JxWDBJUjAwYSt6WFVRTlZFK1BSS2ZWSDIwSjBEWWttYVFR?=
 =?utf-8?B?dkJlaThaeWhiYk9kRDJadVFTdTZSeW90ZldzMDNqV2ZqZ0JrdEN3UEtTVWJz?=
 =?utf-8?B?MG8rTC8yM0NVWUNkZ2tIWWxWbE1IUEJIN2lwY1NHdWJVWkwyZjZYQnJLdVBP?=
 =?utf-8?B?dVZLTHN5dU1IdWZibDU4M0V4bjg1RTJ5SUcza3g2K3dvMzdxNndUL0lxeGdt?=
 =?utf-8?B?Tm9SODdTZlBxOHZBeDZ6ZVcrRHVwWmJLUm94ajJ5VzhXbTNZV0FBckVvWSts?=
 =?utf-8?B?YjJ0VHhaQXlLQU44QVpyUnhmQlk3ci8zQ202dXRETmVWc0t4bzdZTnU2M1g3?=
 =?utf-8?B?Y0ZqeUxNc2xGOXltTldueGtaQ0hjWlhNL0V6T0xYbkRPcUVQNnlWSWo3aW50?=
 =?utf-8?B?WGVVdmhNRFdISWpzWThuZ2QvV3huQ0EzaGVtVlNoN0RKV3dzYmszY1RnME5V?=
 =?utf-8?B?MktsV2w2b3hqb0lyZmZIZGF2RXh4VDl2TEN4OXhNdmU0akxzL0orMmQ2dWt5?=
 =?utf-8?B?TnlpV2ljcDllSFFpdkdWNnZ4aDdaNStsQlBrRFZBUGJ5RnZoV1Z5ZXNsWWU1?=
 =?utf-8?B?MDhQTlFxREp4TzFSZlFLMWcxU1cyN2l2bm5DTXNPbDBMblY0M2FaOVg0RDho?=
 =?utf-8?B?d3ZWK25WbmdCQjRBVmNhVHVWZmE2RWNNS0J1K0p4b3poYUFKa2FXOFFNVjQ5?=
 =?utf-8?B?ZWhTZnM5T1pNQllVb2JkU2xJM3k0UGkrUERZUWpZeUk5Tno3MG1pWnpNN0tv?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ceef6df5-e38a-41cf-3a48-08dde42e8fa9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2025 23:24:39.0660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0I9K5hsVUzJK/lWPgEJyq3xc7m7EzVLexLLIgfhCIFlj/4BClieitDW5GytOh/nkKw99+lLe8ri+J4qi8SABwij+hNCHyLQhwXnNglBDmeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756164283; x=1787700283;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=cjZRc+PQH6QQ/zcfR0R8wIvAoutrhe38sB/8hjKHKkI=;
 b=KdmH6CDcrA2ZvnWzjkP5hNdaVxMOkIlvYcGvUMmj1bw8Q0R0qm9Rbemw
 VTX7yINXGB/UyIP23lxVFulQ9AIJHfb+0sfxhuCmurq1+DH7lTdYSBwcz
 QeRLi2+1owHLqn/6+xU8A51NhVcg+wB6VDLr3FSQsDCvjcv86nYrgGieO
 09CSIwWBkW6V2r49Ao1ltitTRQXWQ3okAptUOhQ+Fwez0Pwk9qsmKOyXZ
 UsHtEgfA9dIeiEGCY7YEv2FOmfzQ86jx4asad7f6OfvLy4UoJUAHDDWf5
 RoAinycBHOYrPOAHCRzetoXiZQDI0QWP+cuJOuCj7atggmYft8/y34dXR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KdmH6CDc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------JIEdjey2pbB9nDGt1BX9Qq6u
Content-Type: multipart/mixed; boundary="------------2ON6hOoIhWCp8Rc9G7RUgyXx";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Miroslav Lichvar <mlichvar@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <1baf249d-c9c4-4952-a00f-6294dbb71794@intel.com>
Subject: Re: [PATCH iwl-next v2] igb: Convert Tx timestamping to PTP aux
 worker
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <27e8fb9f-0e9c-4a0b-b961-64ff9d2f5228@linux.dev>
 <87ikie7a88.fsf@jax.kurt.home>
 <1b3f5020-fa2e-496c-83aa-1e1606bc5ea7@linux.dev>
In-Reply-To: <1b3f5020-fa2e-496c-83aa-1e1606bc5ea7@linux.dev>

--------------2ON6hOoIhWCp8Rc9G7RUgyXx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/25/2025 6:18 AM, Vadim Fedorenko wrote:
> On 23/08/2025 08:44, Kurt Kanzenbach wrote:
>> On Fri Aug 22 2025, Vadim Fedorenko wrote:
>>> On 22/08/2025 08:28, Kurt Kanzenbach wrote:
>>>> The current implementation uses schedule_work() which is executed by=
 the
>>>> system work queue to retrieve Tx timestamps. This increases latency =
and can
>>>> lead to timeouts in case of heavy system load.
>>>>
>>>> Therefore, switch to the PTP aux worker which can be prioritized and=
 pinned
>>>> according to use case. Tested on Intel i210.
>>>>
>>>>     * igb_ptp_tx_work
>>>> - * @work: pointer to work struct
>>>> + * @ptp: pointer to ptp clock information
>>>>     *
>>>>     * This work function polls the TSYNCTXCTL valid bit to determine=
 when a
>>>>     * timestamp has been taken for the current stored skb.
>>>>     **/
>>>> -static void igb_ptp_tx_work(struct work_struct *work)
>>>> +static long igb_ptp_tx_work(struct ptp_clock_info *ptp)
>>>>    {
>>>> -	struct igb_adapter *adapter =3D container_of(work, struct igb_adap=
ter,
>>>> -						   ptp_tx_work);
>>>> +	struct igb_adapter *adapter =3D container_of(ptp, struct igb_adapt=
er,
>>>> +						   ptp_caps);
>>>>    	struct e1000_hw *hw =3D &adapter->hw;
>>>>    	u32 tsynctxctl;
>>>>   =20
>>>>    	if (!adapter->ptp_tx_skb)
>>>> -		return;
>>>> +		return -1;
>>>>   =20
>>>>    	if (time_is_before_jiffies(adapter->ptp_tx_start +
>>>>    				   IGB_PTP_TX_TIMEOUT)) {
>>>> @@ -824,15 +824,17 @@ static void igb_ptp_tx_work(struct work_struct=
 *work)
>>>>    		 */
>>>>    		rd32(E1000_TXSTMPH);
>>>>    		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
>>>> -		return;
>>>> +		return -1;
>>>>    	}
>>>>   =20
>>>>    	tsynctxctl =3D rd32(E1000_TSYNCTXCTL);
>>>> -	if (tsynctxctl & E1000_TSYNCTXCTL_VALID)
>>>> +	if (tsynctxctl & E1000_TSYNCTXCTL_VALID) {
>>>>    		igb_ptp_tx_hwtstamp(adapter);
>>>> -	else
>>>> -		/* reschedule to check later */
>>>> -		schedule_work(&adapter->ptp_tx_work);
>>>> +		return -1;
>>>> +	}
>>>> +
>>>> +	/* reschedule to check later */
>>>> +	return 1;
>>>
>>> do_aux_work is expected to return delay in jiffies to re-schedule the=

>>> work. it would be cleaner to use msec_to_jiffies macros to tell how m=
uch
>>> time the driver has to wait before the next try of retrieving the
>>> timestamp. AFAIU, the timestamp may come ASAP in this case, so it's
>>> actually reasonable to request immediate re-schedule of the worker by=

>>> returning 0.
>>
>> I don't think so. The 'return 1' is only executed for 82576. For all
>> other NICs the TS is already available. For 82576 the packet is queued=

>> to Tx ring and the worker is scheduled immediately. For example, in ca=
se
>> of other Tx traffic there's a chance that the TS is not available
>> yet. So we comeback one jiffy later, which is 10ms at worst. That look=
ed
>> reasonable to me.
>=20
> Ok, LGTM
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>=20

Agreed.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

--------------2ON6hOoIhWCp8Rc9G7RUgyXx--

--------------JIEdjey2pbB9nDGt1BX9Qq6u
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaKzwtQUDAAAAAAAKCRBqll0+bw8o6PUF
AP0eLqN/wBGz41ZAQUdNpJFHpcTHZ8zS26KE1L3IEe4MaQEA/DcrKY0ohATglzzkhY5FoOlpFjOz
IrrEZWfCFJqHnwE=
=BpCh
-----END PGP SIGNATURE-----

--------------JIEdjey2pbB9nDGt1BX9Qq6u--
