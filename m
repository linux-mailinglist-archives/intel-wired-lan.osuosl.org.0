Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0971B027BB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Jul 2025 01:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D2FF81846;
	Fri, 11 Jul 2025 23:41:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6aVWmfs_tkyF; Fri, 11 Jul 2025 23:41:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDA7281A30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752277317;
	bh=Uzi0y/0o5NSZ6xdq6VXoDN21Z1Dw30jNh53otFZi4Vc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QJgwaVrDT4aV/y5UepbpF5/HoPX2uC67Zi4R576Z7emqp8EnnCQQT6h/5Qekc/76w
	 9befStI1rJkE4R2yXo0KYT9GiU66W58fiNIfzwolPtrSppiw/3P5jLFCWiNANWopOE
	 y7BSAstXSxg0+X34AXEYxq93oeVrhuxgivM0yaanE05rKrY2g/BmTMk6oiAbi0/0Y1
	 3jl/YmF9WKsZ4kI2dFnr6nDcposZ7RjKUSZMQ809QmSawJUi0vjbGwcVJd3uDDbgKw
	 nd6o9V2OIiisBNgqO3tc+euWwbV4Nlz2CSKHkEIBrYPe5l5JiI/0kFlfjZSmvC6GjG
	 PFSBsxXA8KQ/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDA7281A30;
	Fri, 11 Jul 2025 23:41:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 50D57436
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 23:41:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 373CC4023F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 23:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BZX0143r6ESk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 23:41:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E74334005D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E74334005D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E74334005D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 23:41:54 +0000 (UTC)
X-CSE-ConnectionGUID: 5uG7AewpTIeszQWO4M39bA==
X-CSE-MsgGUID: B1Yu8ysDQNOkBZM3xBTbsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="80010590"
X-IronPort-AV: E=Sophos;i="6.16,305,1744095600"; 
 d="asc'?scan'208";a="80010590"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 16:41:50 -0700
X-CSE-ConnectionGUID: OjAO9kFUSS+uUgB+5i012A==
X-CSE-MsgGUID: YHdhE0o0SEuJhpAcWZiL2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,305,1744095600"; 
 d="asc'?scan'208";a="157203318"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 16:41:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 16:41:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 16:41:50 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 16:41:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dI/H/JGcjC+4rkFWPN+ub92etltZqlKo0G689QSN+zKMr04+uBv5+ZC2KBAjZi8mbp4oTjsAODVs6lyUfh0adR7++V6Pc2H/TfMhFph9ibRySCKoqodj7p9R2WxIT2Ge3gGQ/AhzoYliFWglDXMhq0Cns/T///2COyD4gPZ2+uthuHO6Jyfa1tupiVmOXI4UoVqHKutEyI/G10y/BjagRaNdPf9fKj06yWEAHwEL/S/FIwqmszT9RNcsPnGfLWmlX/eTt4QFfoqfyRgNvU52MPh3j1j54IWdg/1mfsytKnP/bCIfuq3vXc29EjsEXAVPzo7fo8bxgXpPrrTTBe7h4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uzi0y/0o5NSZ6xdq6VXoDN21Z1Dw30jNh53otFZi4Vc=;
 b=hZezahxyb7idrXGXGvNMGJhH5zFaZbJbPcoa32MX/ncijhQs+zVjTkluBMjxO14vp33o4dfuMKwn0u6t4L4A3rQCs5EAS879QnAqjgtEAl+PKF4bD4EcGHsefZRTOzd4Dwd02yjXRFutHvALNW/vPpKSf5KO3DkLhizdC7w5WNlfNCNQ74h0SrEmwwU9Ou1Um717OUK5nQ1qcqvftdwXM7S+MT5Grh7oaNkPd+HOXZFQGEeP+34PZdrWpjWyEpXV8SocN6eUFyUlXsXnHLLFLXTDoJV17UA7G1ZNYRIBFbV1Z1QmK8NVHXSxyjZbVVpmWKXkjdJUjbIoaJ3R4sEzSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB9501.namprd11.prod.outlook.com (2603:10b6:8:28e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.27; Fri, 11 Jul
 2025 23:41:15 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 23:41:15 +0000
Message-ID: <2615a858-4b4b-422c-aa7c-a5e9f78dbabe@intel.com>
Date: Fri, 11 Jul 2025 16:41:13 -0700
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Joe Damato <jdamato@fastly.com>, "Anthony
 Nguyen" <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, "Christoph
 Petrausch" <christoph.petrausch@deepl.com>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>
References: <20250709-jk-ice-fix-rx-mem-leak-v1-1-cfdd7eeea905@intel.com>
 <aHEuuFK+XktcEPzc@boxer>
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
In-Reply-To: <aHEuuFK+XktcEPzc@boxer>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------u2eRvfW007szMEefumFdVaB4"
X-ClientProxiedBy: MW2PR2101CA0024.namprd21.prod.outlook.com
 (2603:10b6:302:1::37) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB9501:EE_
X-MS-Office365-Filtering-Correlation-Id: 359dc293-5989-4dcb-5a40-08ddc0d46d05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTNXbWVtL3ZSYzZFcGw0QWRPcU40T21OdjZYcGoyUi9TTDlEbTF4c2w0eXBN?=
 =?utf-8?B?bHpKSG02Nm0vZkZlN2tNUEk0b0hlSzRrQVRKVVY2SUw0V0RMOXM1YUdzWUE2?=
 =?utf-8?B?RW1idGM4Z2l1M0Y4Q0JLSk9ybEpzaTlMY0VnRnlGenNEVHFYUVY5WE5tc010?=
 =?utf-8?B?RDYyNVBxR2RBaDJuUy9FUVUyeTZZdXE1OVIyNzdiaU4wbi9LYXRxZDFHZG5j?=
 =?utf-8?B?Q1h6ckFHVjZhMXprUHRZY0E1OU1maTJYbk9aSVJjelk3cTZEM2JrNXBpUzRZ?=
 =?utf-8?B?cUFTeXNlcjRzVzhVdHdVemJhbHcwVGdWUDR4ZTU2SnY4ejNEblJkZHExM28w?=
 =?utf-8?B?eEtaUlNBbTV6TURwdHRqRkZtNjlGMmRUMDM1K1Fqc3l3Y2dDaVdTRjhOZU9V?=
 =?utf-8?B?K2JOd0tIdW5wRWlXR0p6czNQTE9tRUVSRXBtVTNvempMUE96d2tHbjhtVGZK?=
 =?utf-8?B?NXpJbzF6VUlMQUtORnhOdzJyMjJseHFqOTFmTWpCLzc0bVUyM09rNjU2VVZs?=
 =?utf-8?B?b21Yci83am1ZdVBpREMwZWJiemFGS3FiMWZjVDllZXJyeTM2YndzYUw1czRZ?=
 =?utf-8?B?c2EzYkgyMVhhdDVFOFhFa2NqZXpiNlhKS0NDOWh2cUtJNXlMSTN5Y1h5VXVh?=
 =?utf-8?B?aGhnWmdUbXZRWG5XZktOTzl6bEgyS0xON2tpQlJUVzZ5VGZhT0lrVk9jU3hY?=
 =?utf-8?B?Y0FmTytPV1hjNWNzWW1ucEM2Skp5c1A3U2xrK0lUV0NEL2hHb0ZvcytyYTRU?=
 =?utf-8?B?YnE4TUxrWlZwa3I1UnRtTUVRcVlZS1MxSnB6QzVhNDhwK1NVRGI1UlhidlBp?=
 =?utf-8?B?cm9pYjAyZUFYK2tPcktodm1FaXI0OCtqby9SeXoxNnpYR2NIOFhDbFliK0Va?=
 =?utf-8?B?NWRwSVdlOUdLOGlqcW1aZzhnQkV2QlNrSUUydStMQWhFZGdUdEVDUEhMUGxk?=
 =?utf-8?B?WEZ3Zi9kSW5OZEdHeG1oMW9KOExmcDRObkN1QXo3ditoL2FodFJycEpBNHhq?=
 =?utf-8?B?N1VMZ2szZjN6TkZnYTRDMGNFTmhyV3U0RTl0TEhyTmRLUytDVC9CeGtLaDJW?=
 =?utf-8?B?Q3I2RUFjalNNZDF5ekZEKzhmZ2k3ZFMvK3RYR1IzSVI1M1gzU1AraWRYTG5y?=
 =?utf-8?B?eFdVZmNUOUcwUEtOR1YzK3g5azdQL2ZLU3NRc0Q0ZXl6MnVHZWhiLzlIRG9W?=
 =?utf-8?B?anQvcGNoVERaN3ppdnJWU0V5cUF4S1NUeWYydXBsdWtxZnZnUXAvRmhLK1V0?=
 =?utf-8?B?RnVPOHVqcFAvS3BZSGJYVHdxdW5GdU9sZy9EZk93ZHZ0UVZTVHhhYTQ2Vi82?=
 =?utf-8?B?RzFQd1Q5SEYxRVpUSHIzVVBiR08yQ05XM3d2VHM0dGlqbElzR3M3L1UyN09I?=
 =?utf-8?B?OEIvaTRXbVlpNDNmMWNIWVkyUHpRZjFxL0pDamRwZnJPNU1sSUo0Q0N3RWtl?=
 =?utf-8?B?QzRhRFdwcmRpT2EyTThXNzIvdmZldWN3Q3B3SjFCYkF6QTJUbFpYTEd1cGlS?=
 =?utf-8?B?M2dGbituVmlxWGVHSnl0MFc1dW5UNDFzMldQaEpyVEJRODFOZ2h3ZDRYQWp4?=
 =?utf-8?B?UWhJRUhQVmFPYnArNit6ZDFDRlFsNlZNd2owQzF0Tnp0VVdxaE5sdTBhd2I1?=
 =?utf-8?B?VVNZdTkwT05MMHhJbG9iQzZ0OFlMUTRUdEVDdFlULzZxdFl3OGF5YTFDd3JU?=
 =?utf-8?B?UnMxNzVyditHWitPemRHcktCVUs0TFRySHcvWEl0OTJUaG5abFdhdm9udVU0?=
 =?utf-8?B?cDBCSjJSektXNGhwb1c2RWVQd0JsZng4VzN2ZG05b1BGVUVlbENyRWdTV1hI?=
 =?utf-8?B?VUdpQXp0OUNjNjYwNGFRTjlEbHplZ2hoUFlYS2VZR2JVNzJuYUxmVlc3aFVZ?=
 =?utf-8?B?N1ZoMWExVnJEZDlwaFFQcTRwUitXT0hKVlRVeVo1Tk5KQ1VyWVJVaWJaNE9m?=
 =?utf-8?Q?EjxIUerbdnE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnplVExJb1k1UHI3aUlZZDdyeFlWb0JMMXJEYXlLUmgyRnY5NFNuWTN3TTFz?=
 =?utf-8?B?V0tPZ0g1WEVwRU1pWktEUnJzSGlSSW5RZCtPUzMwb3FvRUczN2Y4elZqUFRK?=
 =?utf-8?B?UnhDaytRMHI1a0toU0kyelBYRzA4V3JBVzdmUzJoY0IvYzJNaDAwSXd1MjND?=
 =?utf-8?B?SXQrZ1M2b3plcUl4RWlWVnhNTFRBamdjeXVyUk1sV0cybmIzQXUyellWWm05?=
 =?utf-8?B?SWk5c01hUldoZzBLVWIwRkZ4UG1nUXptUW80bTl3ZEFqcGVjSEZnRkFGdFF0?=
 =?utf-8?B?Tng2dHljQkxJcE5sR25HcXNZZ1BxYWlqanV4TlJGK2FuR00vZjRSS0pteEJ5?=
 =?utf-8?B?ZTQ1djlqZG54VkQ1NVJodGFkeC8yMWFPejlDNXlzd1JKQmZRRnJmZWREZHZF?=
 =?utf-8?B?YlpCN2pUanExVmNCZGY0Y0FCZFNHbUxNSHFqa1pXZ1h0RENuYitqcDMyTjNT?=
 =?utf-8?B?U0I5QUQrWGpzTitHbmpNaFNNZlVlbVM0RjRFd0xYUXFCcVJteVVGMTk0Y2ll?=
 =?utf-8?B?aG9BMWRjVHhRWFpic3ZhMEJTVVlCSVN1a2lWZDZZL0NtajhhWU5FajR6MVl5?=
 =?utf-8?B?U0ZkNElieVVmSmN0ODdHRWx4Q2ZrbElrODdPRlkyWTNqWjNyaUxEYkNIa3dM?=
 =?utf-8?B?cXpkRTdLRGl1VGhkZlVscGZ6NzZENzFkMTk3Wm82elRNSG9oM3QxQlk0c1c0?=
 =?utf-8?B?bUdnNm9rOEVLZll6ZUxIdlVLK0gzeFVoNy9tNEIzc2dUWlFGU1Y5OVdJN2dz?=
 =?utf-8?B?UkpsaktWcWVDeXRxNFpYUVVIMmlBQXpFaGcyMm0wNTl2ajFkdkM5YnVLUW5t?=
 =?utf-8?B?TVhXTXN6Qnd6RW9uOU1BaFlkQndJbnNWcnNDdmFZVWNxeDNHVTZFcjRGcmR2?=
 =?utf-8?B?ZjRZVnVqeWJOUEFOeEoyNjBtZ25xQzVBdXFwUWp1VTRUM3NLeXg0dmNGZnV5?=
 =?utf-8?B?dkkwMTlIZDIxcG9nbjBrS1kxblA0d1M3ZzZLSk9MNDY5THVSUEJhZ0lQeHg3?=
 =?utf-8?B?bXVXcW5mSnNaZVkxZ3BsaEwwZWxhbUE1clJMQmg4WU41ZkhnZm0wajZvOTFW?=
 =?utf-8?B?Z3pwM1lCNkUxSllxR0NMaStwZDRhbVczYW54dk56Zld1amtGajVzb2dnV3lM?=
 =?utf-8?B?Z1ZQTWJwb1V0L1g3dnpBQWlNOTN2R2x2QzJHT1lWVzVDTlo5UFRhWnVXdUhK?=
 =?utf-8?B?c0hxTmdCU3k4dkg0QlZ3K20zL29GMTFhNVJjTUJXOVl2QW5qL1Z6Sk9IN21o?=
 =?utf-8?B?MzlTKzBqSXZ3eHBIaERidmV2L2RGcllmeW1DME9qRCtxU3I5VXRBU0tlTDRl?=
 =?utf-8?B?MkpLV3NZSVF1VUpsNW1zdFZCODVQcG9WaU00Nk1IYTd0QmphTkxEem1aRmlq?=
 =?utf-8?B?S1NmaGpVTjJ3UnNjNDlDdzRVNXZCUGVGR1pmNnQxSUU0L3hRbkVvNGlSZWJU?=
 =?utf-8?B?UHN3Zy9CeERCbkFhWnpDMHNlZnhXTkp1TDBucVNUcjAwMGcxNDMrNTk2Wkkv?=
 =?utf-8?B?SEV5Q083dmI4T3QxRWw2T3dkdS9IU3BiNVhNMHlJNmJlZC9KUjlqZzdNZ2dI?=
 =?utf-8?B?eldkYlQyOTJ5bCtRaUVFSi9Ma1dZb3lBaGlMM1NKRjJUUDZFUTJQWmd6ZkpW?=
 =?utf-8?B?OHI4QUJVbTFINGRCQUVwMFhRODZvYml1eDhRV0ZEYUFXQ0JXdmdibHgyRURG?=
 =?utf-8?B?RXlkWitIUW5yck5jbndhRVdZTGVZeUQ1TVJBeGRJRWdBdG5WZFJhQ1ovczVt?=
 =?utf-8?B?RGtkSGdodVRvS3BPZEErS3hGV2VPMHJvUXpybU9JZzNNSDNIazl0TXFBbUlB?=
 =?utf-8?B?L1BPZVMwbUtDaDJrMGdqdEo3Q1ZpOGhvQStIMysrRXNXVnhrYm9TeU5Cc3hT?=
 =?utf-8?B?YkkraHVhaFh0aFZ0aDhqSjVtMjFEaUtaQ2JiaTdlcjhxbDNHYXNuSU9SZmE0?=
 =?utf-8?B?ektSL2tpUGxVOTByRmlJNFlMWlpzTHM3SUhwbEN1alVvUWc3VHRRdFFIZVRs?=
 =?utf-8?B?Uzk0YVdDdWQ3REFSaFplbGtGUmFBY1FGcTZSdU0waWcyZ1poKzkxbVg2bmlQ?=
 =?utf-8?B?djMrNDNCdkFScUl1TU9EZTBNd05jS1F6N0RwSVRQU3VTLzNUSGlKT2tnZGNr?=
 =?utf-8?B?SlNzKzNCclFWc05wQW9BdEIvOERKcnpHZDYvbWdTVE1EcEZPL3l1M3QySnFZ?=
 =?utf-8?B?ekE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 359dc293-5989-4dcb-5a40-08ddc0d46d05
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 23:41:15.2925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KbB2O2D0uYmW8Q52IhqhRZgP9PfmsJ5SQy58zMU7QuwItDNJ36ScqrZBZOSd7S4FlcWGWpLQmna6pxd3GlsqsYMzVIwBeFzZux0yI9IPatk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9501
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752277315; x=1783813315;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=JBUAZlNPBvYOOTM44JxlR0ncUjJr48cGQNa+BvaEbhs=;
 b=mUl+LmHoUKPHjfbHm4IGONxPxjcmKtWXKjr+YWc963FLQrNaK2BjQUfB
 JTjk6SZL9rAezcJr8DF3UKN/T3cFGld7w1vdVEJ5V78coLO9P4InWOVd1
 R8Wk92dLrebBK3QHugijo9DwXQmhR3I1nk9XeKuN3ANxMgR3EtTbWaWoM
 5ZLsw5zeEafbPY7S4cyzU4yYCevhTbWiNvTgWSijY7Ta77nQow1i1VFkb
 PXq5Vf0o0zbgr1SVR2yfMCDcrRIs+DisxXqDN6MKuZf3sTch8FlySPRcX
 tly2Zfx4tU6SO4HWbgBer7XR8nq3f0xFwyoIfem0qAiAx0czUQBbAvcv8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mUl+LmHo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix Rx page leak on
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

--------------u2eRvfW007szMEefumFdVaB4
Content-Type: multipart/mixed; boundary="------------9MoXxGRrxN7eKJ9MP0APs8hQ";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Joe Damato <jdamato@fastly.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Christoph Petrausch <christoph.petrausch@deepl.com>,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Message-ID: <2615a858-4b4b-422c-aa7c-a5e9f78dbabe@intel.com>
Subject: Re: [PATCH iwl-net] ice: fix Rx page leak on multi-buffer frames
References: <20250709-jk-ice-fix-rx-mem-leak-v1-1-cfdd7eeea905@intel.com>
 <aHEuuFK+XktcEPzc@boxer>
In-Reply-To: <aHEuuFK+XktcEPzc@boxer>

--------------9MoXxGRrxN7eKJ9MP0APs8hQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/11/2025 8:33 AM, Maciej Fijalkowski wrote:
> On Wed, Jul 09, 2025 at 12:07:30PM -0700, Jacob Keller wrote:
>> The ice_put_rx_mbuf() function handles calling ice_put_rx_buf() for ea=
ch
>> buffer in the current frame. This function was introduced as part of
>> handling multi-buffer XDP support in the ice driver.
>>
>> It works by iterating over the buffers from first_desc up to 1 plus th=
e
>> total number of fragments in the frame, cached from before the XDP pro=
gram
>> was executed.
>>
>> If the hardware posts a descriptor with a size of 0, the logic used in=

>> ice_put_rx_mbuf() breaks. Such descriptors get skipped and don't get a=
dded
>> as fragments in ice_add_xdp_frag. Since the buffer isn't counted as a
>> fragment, we do not iterate over it in ice_put_rx_mbuf(), and thus we =
don't
>> call ice_put_rx_buf().
>>
>> Because we don't call ice_put_rx_buf(), we don't attempt to re-use the=

>> page or free it. This leaves a stale page in the ring, as we don't
>> increment next_to_alloc.
>>
>> The ice_reuse_rx_page() assumes that the next_to_alloc has been increm=
ented
>> properly, and that it always points to a buffer with a NULL page. Sinc=
e
>> this function doesn't check, it will happily recycle a page over the t=
op
>> of the next_to_alloc buffer, losing track of the old page.
>>
>> Note that this leak only occurs for multi-buffer frames. The
>> ice_put_rx_mbuf() function always handles at least one buffer, so a
>> single-buffer frame will always get handled correctly. It is not clear=

>> precisely why the hardware hands us descriptors with a size of 0 somet=
imes,
>> but it happens somewhat regularly with "jumbo frames" used by 9K MTU.
>>
>> To fix ice_put_rx_mbuf(), we need to make sure to call ice_put_rx_buf(=
) on
>> all buffers between first_desc and next_to_clean. Borrow the logic of =
a
>> similar function in i40e used for this same purpose. Use the same logi=
c
>> also in ice_get_pgcnts().
>>
>> Instead of iterating over just the number of fragments, use a loop whi=
ch
>> iterates until the current index reaches to the next_to_clean element =
just
>> past the current frame. Check the current number of fragments (post XD=
P
>> program). For all buffers up 1 more than the number of fragments, we'l=
l
>> update the pagecnt_bias. For any buffers past this, pagecnt_bias is le=
ft
>> as-is. This ensures that fragments released by the XDP program, as wel=
l as
>> any buffers with zero-size won't have their pagecnt_bias updated
>> incorrectly. Unlike i40e, the ice_put_rx_mbuf() function does call
>> ice_put_rx_buf() on the last buffer of the frame indicating end of pac=
ket.
>>
>> Move the increment of the ntc local variable to ensure its updated *be=
fore*
>> all calls to ice_get_pgcnts() or ice_put_rx_mbuf(), as the loop logic
>> requires the index of the element just after the current frame.
>>
>> This has the advantage that we also no longer need to track or cache t=
he
>> number of fragments in the rx_ring, which saves a few bytes in the rin=
g.
>>
>> Cc: Christoph Petrausch <christoph.petrausch@deepl.com>
>> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
>> Closes: https://lore.kernel.org/netdev/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfp=
r7dnZxzGMYoE44caRbgw@mail.gmail.com/
>> Fixes: 743bbd93cf29 ("ice: put Rx buffers after being done with curren=
t frame")
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>> I've tested this in a setup with MTU 9000, using a combination of iper=
f3
>> and wrk generated traffic.
>>
>> I tested this in a couple of ways. First, I check memory allocations u=
sing
>> /proc/allocinfo:
>>
>>   awk '/ice_alloc_mapped_page/ { printf("%s %s\n", $1, $2) }' /proc/al=
locinfo | numfmt --to=3Diec
>>
>> Second, I ported some stats from i40e written by Joe Damato to track t=
he
>> page allocation and busy counts. I consistently saw that the allocate =
stat
>> increased without the busy or waive stats increasing. I also added a s=
tat
>> to track directly when we overwrote a page pointer that was non-NULL i=
n
>> ice_reuse_rx_page(), and saw it increment consistently.
>>
>> With this fix, all of these indicators are fixed. I've tested both 150=
0
>> byte and 9000 byte MTU and no longer see the leak. With the counters I=
 was
>> able to immediately see a leak within a few minutes of iperf3, so I am=

>> confident that I've resolved the leak with this fix.
>> ---
>>  drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
>>  drivers/net/ethernet/intel/ice/ice_txrx.c | 71 ++++++++++++----------=
---------
>>  2 files changed, 28 insertions(+), 44 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/e=
thernet/intel/ice/ice_txrx.h
>> index a4b1e9514632..07155e615f75 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
>> @@ -358,7 +358,6 @@ struct ice_rx_ring {
>>  	struct ice_tx_ring *xdp_ring;
>>  	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
>>  	struct xsk_buff_pool *xsk_pool;
>> -	u32 nr_frags;
>>  	u16 max_frame;
>>  	u16 rx_buf_len;
>>  	dma_addr_t dma;			/* physical address of ring */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/e=
thernet/intel/ice/ice_txrx.c
>> index 0e5107fe62ad..b139066b6f0d 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
>> @@ -865,10 +865,6 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, str=
uct xdp_buff *xdp,
>>  	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
>>  				   rx_buf->page_offset, size);
>>  	sinfo->xdp_frags_size +=3D size;
>> -	/* remember frag count before XDP prog execution; bpf_xdp_adjust_tai=
l()
>> -	 * can pop off frags but driver has to handle it on its own
>> -	 */
>> -	rx_ring->nr_frags =3D sinfo->nr_frags;
>> =20
>>  	if (page_is_pfmemalloc(rx_buf->page))
>>  		xdp_buff_set_frag_pfmemalloc(xdp);
>> @@ -939,20 +935,20 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, cons=
t unsigned int size,
>>  /**
>>   * ice_get_pgcnts - grab page_count() for gathered fragments
>>   * @rx_ring: Rx descriptor ring to store the page counts on
>> + * @ntc: the next to clean element (not included in this frame!)
>>   *
>>   * This function is intended to be called right before running XDP
>>   * program so that the page recycling mechanism will be able to take
>>   * a correct decision regarding underlying pages; this is done in suc=
h
>>   * way as XDP program can change the refcount of page
>>   */
>> -static void ice_get_pgcnts(struct ice_rx_ring *rx_ring)
>> +static void ice_get_pgcnts(struct ice_rx_ring *rx_ring, unsigned int =
ntc)
>>  {
>> -	u32 nr_frags =3D rx_ring->nr_frags + 1;
>>  	u32 idx =3D rx_ring->first_desc;
>>  	struct ice_rx_buf *rx_buf;
>>  	u32 cnt =3D rx_ring->count;
>> =20
>> -	for (int i =3D 0; i < nr_frags; i++) {
>> +	while (idx !=3D ntc) {
>>  		rx_buf =3D &rx_ring->rx_buf[idx];
>>  		rx_buf->pgcnt =3D page_count(rx_buf->page);
>> =20
>> @@ -1125,62 +1121,49 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, st=
ruct ice_rx_buf *rx_buf)
>>  }
>> =20
>>  /**
>> - * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
>> + * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all buffers in fram=
e
>>   * @rx_ring: Rx ring with all the auxiliary data
>>   * @xdp: XDP buffer carrying linear + frags part
>>   * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
>> - * @ntc: a current next_to_clean value to be stored at rx_ring
>> + * @ntc: the next to clean element (not included in this frame!)
>>   * @verdict: return code from XDP program execution
>>   *
>> - * Walk through gathered fragments and satisfy internal page
>> - * recycle mechanism; we take here an action related to verdict
>> - * returned by XDP program;
>> + * Called after XDP program is completed, or on error with verdict se=
t to
>> + * ICE_XDP_CONSUMED.
>> + *
>> + * Walk through buffers from first_desc to the end of the frame, rele=
asing
>> + * buffers and satisfying internal page recycle mechanism. The action=
 depends
>> + * on verdict from XDP program.
>>   */
>>  static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_b=
uff *xdp,
>>  			    u32 *xdp_xmit, u32 ntc, u32 verdict)
>>  {
>> -	u32 nr_frags =3D rx_ring->nr_frags + 1;
>> +	u32 nr_frags =3D xdp_get_shared_info_from_buff(xdp)->nr_frags;
>>  	u32 idx =3D rx_ring->first_desc;
>>  	u32 cnt =3D rx_ring->count;
>> -	u32 post_xdp_frags =3D 1;
>>  	struct ice_rx_buf *buf;
>> -	int i;
>> +	int i =3D 0;
>> =20
>> -	if (unlikely(xdp_buff_has_frags(xdp)))
>> -		post_xdp_frags +=3D xdp_get_shared_info_from_buff(xdp)->nr_frags;
>> -
>> -	for (i =3D 0; i < post_xdp_frags; i++) {
>> +	while (idx !=3D ntc) {
>>  		buf =3D &rx_ring->rx_buf[idx];
>> +		if (++idx =3D=3D cnt)
>> +			idx =3D 0;
>> =20
>> -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
>> +		/* An XDP program could release fragments from the end of the
>> +		 * buffer. For these, we need to keep the pagecnt_bias as-is.
>> +		 * To do this, only adjust pagecnt_bias for fragments up to
>> +		 * the total remaining after the XDP program has run.
>> +		 */
>> +		if (verdict !=3D ICE_XDP_CONSUMED)
>>  			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
>> -			*xdp_xmit |=3D verdict;
>=20
> Hi Jake,
>=20
> you're likely breaking XDP_REDIRECT/XDP_TX workloads. I believe you nee=
d
> to give this patch a spin against xdp-bench and test all actions...
>=20
> anyways thanks for great analysis and bugfix!
>=20

Maciej is right, we need to update xdp_xmit somewhere. I think doing so
in ice_rx_put_mbuf is wrong (we're bitwise OR multiple times the same
verdict once per buffer, and we only need to do this if an XDP program
is run, so 2 of the 3 callers don't need to do this. One of them even
passes NULL to xdp_xmit, which isn't ever checked, but happens to work
because it doesn't pass XDP_TX or XDP_REDIR as the verdict).

I'll fix this by dropping the xdp_xmit parameter to this function and
updating the xdp_xmit outside in the one place where we need to do so.

I'm building that version to test against xdp-bench to verify.

Thanks for spotting this oversight!

Hopefully I'll have v2 out soon but it might not make it before the weeke=
nd.

--------------9MoXxGRrxN7eKJ9MP0APs8hQ--

--------------u2eRvfW007szMEefumFdVaB4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaHGhGgUDAAAAAAAKCRBqll0+bw8o6Hi9
AQCsSlE0ep4Wm8ZYNc5jZyFXlMBGrObbmCpFo9i2l+suVgEAii2+HhxClKBWmGAdcLwM0rYjKvmw
sVbT2JS8bvE6bAw=
=irqT
-----END PGP SIGNATURE-----

--------------u2eRvfW007szMEefumFdVaB4--
