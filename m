Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE73B2199C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 01:59:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1EE661794;
	Mon, 11 Aug 2025 23:59:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JRtlI0WTxObj; Mon, 11 Aug 2025 23:59:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFABD61796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754956784;
	bh=yGK4sbgWi0prmOdfkc/HXo/FoZfjCbae13v/xaLSZTw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6ALh5eVS9zxs5IDvo0YZLqu2n2QYIIq/LTozbbffzwwhnOM2YRcFa6FO42UVqzm/n
	 BMsl5He+QbLAmw5ULEepzuv6ZcpkaSQRTMlM+bJy4IJq7G6aWbqrUumOD2c5hTahFq
	 bqKID/XJrOtxSVh0aRHTWWttcHfAAzKP6Q5msNb+mnWgN8XW8dSrmKG08a6bcmadHe
	 YkxeZ3+9W1r2NPdvpIbXfM044jlEInwSHOisO63Vter4LZqk540Q/aNszxrmvxA7jQ
	 W9BwcTdX+KhLSdNoxEFC/He0iUiuBdby+Gz5rgUvRr1ivPEZVCaKO17+QhdWb5Dcjx
	 YkJ4hvOxi5bLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFABD61796;
	Mon, 11 Aug 2025 23:59:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 98FDFB8B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 23:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89DEA41BBD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 23:59:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 37moLDBEiBKO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 23:59:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 645CB41BAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 645CB41BAB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 645CB41BAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 23:59:40 +0000 (UTC)
X-CSE-ConnectionGUID: mGfmqaY/TLymPrqnglXgmw==
X-CSE-MsgGUID: nB/2NDpJSy+sbrMUgsewyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="61018927"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; 
 d="asc'?scan'208";a="61018927"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 16:59:40 -0700
X-CSE-ConnectionGUID: ZBWvhswGQOS8eEMYN84Ddw==
X-CSE-MsgGUID: kJp0m/HVSGCukYSfypE/Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; 
 d="asc'?scan'208";a="165547748"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 16:59:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 16:59:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 16:59:39 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.66)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 16:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SJrIDDQTLqXPiplvc9+z3xGzoI+jWYLUFj5qf+ae/rHGR9x637jYSbo0/OigLXro39Vt/6zmyUPH9khfUxsV5jl0G6mo4kBBKRvabiED3nBp+XpR20mUnDAhmYER5/MRW0hGzChaFWQiiuK1gIHp1pDzacE+oQVJowczoRXWI+kyTcVbAIVP3z/CjO1SAFToxry6ApZP4d1P4DnaEQJ5y912y0brkVeO3yyhw4UQ7cD8gcrQAxmB8AkIj7796aXu9NNlBEJcN4epWUaQVGk3O5Sqr2lbryIRHd0MgfS16mCCXyrN46eLWvYU7TSAxLOXYJga6lNP0N5/suJWo+48Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yGK4sbgWi0prmOdfkc/HXo/FoZfjCbae13v/xaLSZTw=;
 b=cULt1lU+vgQNUdPZjxrI7mY3EkvExCfLlD5ZMcswP1YPw1Q8UgOxfyOJPaER90JuryhENs7zQtoAwTJKHN5crMpjpeDx+MzU5opjNgRGrIUlNwfxX4tBvWtpPwTUY4JyZAaQ9oQxKQa9cURxUPUJM1b2u0vEDzMCxnsQQpmQgT3B8Eb6/fDZS2EZmw1pEjU/gDzJgTyGOdRWcgKS7YwIagm+VWse/DYUISHgj+ocu77v+N43XEwBhIuFjGRVDRy30oii+Hb0hgAHloj8lNt54LiRhiWF07Jo6DFGzpEKyD6HWaoUtJb9m4iG2LE4a0aZApVUJr3BeYOmZht+kjB7ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB7633.namprd11.prod.outlook.com (2603:10b6:510:26c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Mon, 11 Aug
 2025 23:59:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 23:59:36 +0000
Message-ID: <08e315e3-8f29-42c3-97d6-6449bf3cb716@intel.com>
Date: Mon, 11 Aug 2025 16:59:33 -0700
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-rdma@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>, Simon Horman <horms@kernel.org>,
 Paul Menzel <pmenzel@molgen.mpg.de>
References: <20250811-restricted-pointers-net-v5-0-2e2fdc7d3f2c@linutronix.de>
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
In-Reply-To: <20250811-restricted-pointers-net-v5-0-2e2fdc7d3f2c@linutronix.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8wEi0LTIWZ9RVg0DJHSInh7j"
X-ClientProxiedBy: MW4P222CA0022.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::27) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB7633:EE_
X-MS-Office365-Filtering-Correlation-Id: a040836f-0e54-440d-695d-08ddd9332002
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RVhDSnVxMDdIM0o2YThmdUpmdFNiWkVjbWRka1hLaENuWVpYWFRkckQ3ZnUr?=
 =?utf-8?B?eHQvdXRGbTduZTJycDhNVUViRjFJckx6Qm4wWHFBelpmeVVWblpYN2g3ZlVN?=
 =?utf-8?B?NnFKNjkwcUNXaGo0d0tGcURURXFzeFZXbWVXNDFSUExzQVJhd2UzMkFpc1Zm?=
 =?utf-8?B?a0l6UHJqOTU5RE1KV2cxN3lUNUtLZ0dSWGpIVVZmdE80ekxKUTU3SlJKV0t0?=
 =?utf-8?B?VFpBTWUzOFVPbzd1NTVhUXlMcXlBTkY1SG15UXFmV0JNbXhBSE4zOGU1NXlk?=
 =?utf-8?B?UlpVdlBod0FUalNOU0NYL0IvMVZhd3lPVmtKZWdlTm9QWUtLVWxkTGZxOGhC?=
 =?utf-8?B?YnUwVnY2eldSbEQwZkgraUlGOU1BMkNKNG5OZTBsRXg0R3RTUklkNUJSME5w?=
 =?utf-8?B?d0JnVk82R29NSytyeGVWVlc4Z2gzbkFvVytWOG5QUk5JL1liYVJrUGpoeGVK?=
 =?utf-8?B?RWZSaGszelVBVXZJRGZ0ZG8vTUwzMnFPd0RseEtEaUZ4Tnc3cXlqRzdHUktz?=
 =?utf-8?B?YVZTeGZQVERBWk9sNTdrWWUzN1YyZkxmcmUxcmZCckdlY3o0QVVmYm5xcy9w?=
 =?utf-8?B?OTJVbTErRlZhTnFKOFJQY3Y5cWplZGM5OVE0OGZIcVQ3RSt2WTNBa2hJK2hj?=
 =?utf-8?B?anZBWG9BeEIwSmg3ektSMG5VLzB4ZHR5WHdNTzJkMjFkSHBxUXkvM1owSVY1?=
 =?utf-8?B?Q0o3MXcvalpYdmYyQmY0OUJBSlFSZVZBaW8yNjVJMXYvbUEwOWh5cXNyTnBK?=
 =?utf-8?B?emsyV1p3L2d4eldMSk43aWt2dzNGK2NyQktndFFodTBlM21ldkVKMHVkdWtD?=
 =?utf-8?B?cTRlQlgrd0Y5MlZBQmdaeGlCZ3NrR0FReDgwVVVVNG0vSDRyMnIxejFTVXox?=
 =?utf-8?B?Q3pYVXhpNnNLWEh4bTlBUXU4OEtiQ3RxYnpIQVMrazR1NkFURGozaWEwQm95?=
 =?utf-8?B?MHdRdzZQTUtwZ1kvUkZGanp2NEdGOG92WmgvWnNBakREZFhya2NMSzFheHEr?=
 =?utf-8?B?V3ZZVjNjSSswbnBnYTVGRk1DN09vdHlNQkJyQURnQks3UWFvRlA3RGtyNDJL?=
 =?utf-8?B?Z3FaUi9adE1HZDRVa1hpNFRuNGlTTEZnSHpqUHVwUkJodUY4M1hIQnVzZVFN?=
 =?utf-8?B?bUdhLzlKcVFndjdMaXVuYjFTRVlJTFdaZ3I0ZGdtUG9oWlJCYUxzNlQ4YzBE?=
 =?utf-8?B?bGlMa1RtQ1ZkNkxxNDkvNVA1bWl2bDZRT0ZlNXpDcVY0K3pQeWl4MmpEeTRS?=
 =?utf-8?B?SVBmRm5GSVV4VjZBVjRUNGRXRzJ4eWdTWCt4U3JJZ1dyYklOcVZhTWtraXJG?=
 =?utf-8?B?MlJZcnVES3p5QzRkNkZidFpCaklEbXZQWFBKSmZQeEZEZS9oY01uak5hRDMr?=
 =?utf-8?B?a2piZzhiUFpLTTNxQjZkSTR1UkNvOVlRMDRoZE9WVTIvUkc2NkFqc3ZwMCtF?=
 =?utf-8?B?Y25WZTQ0RnFiVDhoZjhHM3UxMmNQS1hwY0c4em1ibmhpYXg0U0F1bERSaUF0?=
 =?utf-8?B?NjZqUjdwbmxobmlPWkxVR2dKcWF3aytlUHhzUXNtTEhRTm5LSmpVUHhDUCt0?=
 =?utf-8?B?QnE4QjNOUG9uQ3ZmazEvNXhoVkpmOG9LQzgvQUMwTVVoeEprK0hodmx1S0hR?=
 =?utf-8?B?ZHZ1Y2hCK3Y0UHlQamdWbUd4TnJGaFFUWlF4V2ZVdkRVM3VadkxUcDNHcDNJ?=
 =?utf-8?B?QnBOU2MyUzJ0NjRmM1NVdGYxZTQ2eTFwdkE1VlAvRy9GdXpFeVNyNUtMU3pw?=
 =?utf-8?B?aDh2V1dmSzVjZnpuTGRVWXI0NjFCanhJZjdLaXp1QmdBamUrWXdpbmloMTNV?=
 =?utf-8?B?MTFSai9iUlhzRUxPMlRlR0xZRDBZNHVhTEJRNnYxcE9FMGxTT0k2cVlxVkFv?=
 =?utf-8?B?MllkRldCd28vclR4NzhPWkg0RWcvY3htZUpETDVORlNUR0xQcWlSa016NFg0?=
 =?utf-8?B?TmJYcXN3bnlTU3B5VU1Pb0c0QTA0aVN5NVZlU2tRSlVDdEZ3UnFYVEp1S3g3?=
 =?utf-8?B?UHF5cWloKzhRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUlPQVdKMG83aVF0R0V2d25WelpxRVFYcnIrSXFjWVExNFZuWmtNZmhFVUhw?=
 =?utf-8?B?eElzSUNVLzJvR1dPZ1hvOEFQSjRYUllZM0Z4QUk4NDdyM1NaZUpyZTM3R2J6?=
 =?utf-8?B?d1p6VWJZdmR6NitrMnJTOGZkNHNHbEJYU0d3dnc0U2lsc0RwQ0JMRFZSMjYy?=
 =?utf-8?B?SFA5a3pxOElscXBsVGU2U3c0SENhUzBneVhOdkFCOWxLcTZKaGE2b0VzYmtB?=
 =?utf-8?B?OUFLYWc0SDZIaGgrK09kV2FBTTYxeERoRWZLb3ZiOVhiOWpVUFhnN0pUTG5q?=
 =?utf-8?B?YWNnRmc5aGw5K1N1eHY4eEp6VE5SM0wwbTFCVFVqaFR0MTBTVTQ0TENUQ0hD?=
 =?utf-8?B?TXd3YlFXK2RXMmNvbmlXQXJpbHg2bW9LY3Q4VENCMW41TSthL3VWQkZ5YzRU?=
 =?utf-8?B?TUJHaElhSDhnVVlQL01mNjU2VzI0Z3lMbmFRaEtBL3A1YUZjbE5kOUVTaTVk?=
 =?utf-8?B?bEdVa2FKc3J2V09WOG1mL0g5bE0yMDJyWVNsMHhxZjZlR01jMWV5eG5rak40?=
 =?utf-8?B?dU43ekJGaytDZWhiWm1kVEJQTUd1T01iakxjZDRFdGlaaXA2MENSa2hLQUJp?=
 =?utf-8?B?bnNiZm8vUWY1bnBZM1VsbmJiVktBUU9VK3V0QnZKRC9YNWVkSmNxZXdwRlQ1?=
 =?utf-8?B?Mk5aQjFXL3N4TTQ4eFBaTVY4Qjg5RTBHekVIeXFpdU1EZFh4T1NnRW51dW9B?=
 =?utf-8?B?bTUyUmdOeFlkYUlVM0VlSnM4a0RJZXRwT2ZTdCsvcWtIbnkzYU5iQlV6TzR0?=
 =?utf-8?B?UThkTkZCRVlwTEZhaVhMQ1VId2s5T1JGR05pWGIzeXlHc2EycXRWRUpMOGJC?=
 =?utf-8?B?N2V4SHVJUXRDaUdzdm5TbS9UV2oyS0ZQNk5EcEF5b2V4a2NnL1V1U2tHZVFh?=
 =?utf-8?B?QnBQYnNMOGt3Y1pHL1oxUk8wakgzejlha2NlVjFqOW9NaDJ0UFpmTHZPRXlH?=
 =?utf-8?B?QnZYU0tpaGRYWDdjQjBvd0tXSDVZRVNPNElGS1U4YjRMbW5ZaUU5NkN0VDdN?=
 =?utf-8?B?SVljdllmZERNN1h3YWVCajN2b0hyWC9ITlI1TjVLcGhhK2l2M2NsQ1Q4c25n?=
 =?utf-8?B?aHB5WElqR1JzcE9XZ0ErL3JnSnk4TTczR0g2NTRWUlBicnZ5Yi8wY0FBWVZD?=
 =?utf-8?B?bXd1Wm9XSk5DTGpRb0ZHOGZUaFRnRzFXTjdoTHU1Z3pFQjV2Ry9jbWlMOWhu?=
 =?utf-8?B?R08yV2lSdWs1clRpWDlQbXB5UDcvRkFRanVIaW9kVnJyRit1QU9qVmdXRmw0?=
 =?utf-8?B?OVB0Tk9tRzJIVzVDT0ZCNjdBanhLTFAvaGwra0o5M2ZiOFFWdzU5NmFnbEhY?=
 =?utf-8?B?bW1Hb0s0Sm9Pd3ZpK2F4OWRqU0Rlblh4UGluMERzTGJkTjF6Nkk4RDFjQXlD?=
 =?utf-8?B?Vm41MjArM2JSSS9uK1FiZkJHVEZSN3RaSFEyM240YStCZTV2b0RIcmkxTGV4?=
 =?utf-8?B?dldITzV3ZVhuSWZyVDloUzJXclZMMUJOWXJuQkJrTVhzbkEreStoenRvMURr?=
 =?utf-8?B?eTZWekFCUW1vTzlUQ2ZqMUlaT3VwRmVON0o5SmdnYXpud3g3VHFCREM5VVVv?=
 =?utf-8?B?NmxJSTRVUmt6TExrMVM2NnJxcEZNaDVXVndpRGFwN3cxQ3RRRFRGZFNQRFZ6?=
 =?utf-8?B?aFNqSENxZm8ydGRxWkU2RFpMUW5oRjd1V1AvZHEwSUhVbk9VVEFqclFkUllo?=
 =?utf-8?B?NWxHNEh2TGh1aElJU0dXQjhqOTJJTTgxWEdnWlFRcXRuWDBRV3pRZy9TMzNj?=
 =?utf-8?B?TE5hVnJZdW1BS3dCNkU0SjBRUG8rcEh0d3ZCWEhVMVBtRVBXcGRPVmFBeS9k?=
 =?utf-8?B?WmRER0lDL0tEL0VGZitmbmtHWWRFU2hMdU1TcmZENHhLTWo0R3JMTnorRm9v?=
 =?utf-8?B?T2lueDJTNzdqTXRqZFV2b05lTlBNUkUxcFdjTzlqaktEVlRzOGdPQzRNUlA4?=
 =?utf-8?B?ZlFQaW05eVdsR21VdnpVaGJtOVZnL2x2NXhZdkhiRWpxOGJFWW5qa2hQV0I5?=
 =?utf-8?B?NUpRK2phRnpBbkZaZ09NdlRrS3h3YTlMQkpVNnhOaHUyRTNOUjFwZTdQQlgx?=
 =?utf-8?B?aStpYlRHeWVqZmNwZ2ZkWTByYVlhN0p0YXVNeTRNcWVJaC9lbzBHSFhEQTVC?=
 =?utf-8?B?aU1yWmhlbnRTRE8rUHhFNHhQM3dHZXYzcXFvcWswV0d1aVZtQTZmUnZ4RkFG?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a040836f-0e54-440d-695d-08ddd9332002
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 23:59:36.2821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cNgOSsfRRS1U9pbotwDUHJ7BHESpaKRq83XtSzW812Czs8UeoeUKRiKKSuzu8NMzr+SkkrrcneC+9Z0cBhdVUVPNCkIgL6Af0B6dRu+HgaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7633
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754956781; x=1786492781;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=yGK4sbgWi0prmOdfkc/HXo/FoZfjCbae13v/xaLSZTw=;
 b=iN6SitGiKRY8MDYmIgdVL6/b2Wy63ULwhwQL1SjIUUHiSs6yNRIieTO5
 8dsPyjxiodUiVUefkg9Exvj0tEE+lD3dwE5PljU+LWyPYmgLlrV7ZTnzA
 he06zBr6nZY6BNPzjetSqPA/n/Gati9zBOveoxyjOmJkWx+GvZtXI0RAW
 I0cTSE9uSLRNufoXMaxPKbpoMeQrXmYQOXRZpfRljrkM92kRIJxL+5Xsg
 tJ28nH+8WUdSNUx/l803elko9jSyKhdQzq8g3KDYTVwOrngF36G/D82If
 HngUnnPTZ88knp8q9n3xgVO5j4BBea+ar4pPRVqHOURfznHsDgrlWKh5S
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iN6SitGi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/2] net: Don't use %pK
 through printk or tracepoints
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

--------------8wEi0LTIWZ9RVg0DJHSInh7j
Content-Type: multipart/mixed; boundary="------------3RVlkU3S061k0nbj06nuUFbK";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Simon Horman <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <08e315e3-8f29-42c3-97d6-6449bf3cb716@intel.com>
Subject: Re: [PATCH net-next v5 0/2] net: Don't use %pK through printk or
 tracepoints
References: <20250811-restricted-pointers-net-v5-0-2e2fdc7d3f2c@linutronix.de>
In-Reply-To: <20250811-restricted-pointers-net-v5-0-2e2fdc7d3f2c@linutronix.de>

--------------3RVlkU3S061k0nbj06nuUFbK
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/11/2025 2:43 AM, Thomas Wei=C3=9Fschuh wrote:
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through printk(). They can still unintentionally leak raw pointers or
> acquire sleeping locks in atomic contexts.
>=20
> Switch to the regular pointer formatting which is safer and
> easier to reason about.
> There are still a few users of %pK left, but these use it through seq_f=
ile,
> for which its usage is safe.
>=20
> Signed-off-by: Thomas Wei=C3=9Fschuh <thomas.weissschuh@linutronix.de>
> ---
> Changes in v5:
> - Rebase on v6.17-rc1
> - Bick up Reviewed-by from Paul
> - Link to v4: https://lore.kernel.org/r/20250718-restricted-pointers-ne=
t-v4-0-4baa64e40658@linutronix.de
>=20
Thanks for fixing these up!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

--------------3RVlkU3S061k0nbj06nuUFbK--

--------------8wEi0LTIWZ9RVg0DJHSInh7j
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaJqD5QUDAAAAAAAKCRBqll0+bw8o6M2Q
APwII677+PCewpdBui2LFX0BKIXw3ghN/I1ydAUk47uyzAD9F3C30ZK9k2n2HXrwZvz06/OEyrgD
XpgSfpQMfwOQ8Q4=
=js0V
-----END PGP SIGNATURE-----

--------------8wEi0LTIWZ9RVg0DJHSInh7j--
