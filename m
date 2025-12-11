Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4536ECB7411
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 23:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD7CE60664;
	Thu, 11 Dec 2025 22:06:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GiFLgbWJLIvy; Thu, 11 Dec 2025 22:06:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0714660668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765490798;
	bh=ZYA02LqXvv3MYLx3CfqPHuU+H0uJnWlSsZEucaHnXI4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rQpRYBZdUEGlMol4hk9p2QgBuXoLKZk51pHREdypWSwupXffJ1DgLe0pn9nz4+pwt
	 c0yKtZTVmXmGXS1gvJcuMIZQl1r8u5HI4/nCoD6Bn1kcAcj6JA1ulLiSU7u4r1lzY3
	 PUVXdnGyCjecEZOtt7XX/X2N4ewh13mpeZMOnBdy5ewme6FIYK7YICevVLcknAq/p+
	 hZitSqzUtCKgwnsZFoWz0r5B2FcY4gs6Neo9N9T7KUr1gM/KQZ/e1EdEgG12qrnGCD
	 8wPRQFsdATgeTIpnoWGw80e7Iuy6f6IQsy0/o0Sx7CBrP3jm5h4yojeSVS6unx9u/a
	 y3BajB36XAWoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0714660668;
	Thu, 11 Dec 2025 22:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 65F562C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 22:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 577A360641
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 22:06:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bHEmYByN4TAJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 22:06:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7353C60630
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7353C60630
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7353C60630
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 22:06:34 +0000 (UTC)
X-CSE-ConnectionGUID: 7/8+Pm0PQ/mfAr7dJyRMMg==
X-CSE-MsgGUID: dYjKNfsgSsyD/OagsS+b7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67369974"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; 
 d="asc'?scan'208";a="67369974"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 14:06:34 -0800
X-CSE-ConnectionGUID: bcCf7f8PSXGGK1/phJbbgQ==
X-CSE-MsgGUID: U7c0sxZgSISdctgTtwXgGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; 
 d="asc'?scan'208";a="220294777"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 14:06:33 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 14:06:32 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 14:06:32 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 14:06:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YXKKFBvuWQ7vAK84NVeelNiXbTyLjo447SVIbFFc1KvzlopAvez17Z1qWcev5B8aWe0Wpa5aPDIGu4QdyxdP8NVJGnssXEyD4WOEfqiB3XkzPVka/G4eZPQm8cDCHzDzAbtOu9l8/c1leOOoZiDKzwKrfY4nCKlRENgkUqi2MEM7lGCpHG9UBc+ZZ2Q2RtaoIVvsaXgfbmdG4BYINDtk6mULXXcTWSKWenGJPVcP2lvH3aETG38/VgXKLjqa39LPb1i4NT3saOe6zaMJPi8cdBkj1rUSxF8POz7QsYUBR5Qb8AG2uUQX2FzfIqxjmlpUJ7r8+cGHql1Gy58p5BcwVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYA02LqXvv3MYLx3CfqPHuU+H0uJnWlSsZEucaHnXI4=;
 b=oTVPgU/HfXQbdPRA9D7lo1v5b/dGl9WApZiQSipkDwCHBch7a9D6h5Mg+hxVyB6/DYTHoJoQG78DCOtMkKXPSHX4tGP6p6v8owb3xLFWo2lF2+Nz9Alm2OTV1lzPnMesXGm85LydOHTet8vtJzeoAQoZXyYrW5NqLBJtszwnAF3EbQhETdRNXZLpSAtYIQIjglmxQIGPvwEXJnkjvCFHodP6QfT51ZVtH38bHgyPpEXwA8H68XOSFpAY9Rbacy4a9APW4pZnMeM1WUkjLM0X6vcD4jllpY/+YswUGQuGWNVPEizUxTC8UdhJ9+nChAHzf8UUVbmpMXcfdb8eER6SNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5940.namprd11.prod.outlook.com (2603:10b6:a03:42f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Thu, 11 Dec
 2025 22:06:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 22:06:29 +0000
Message-ID: <25a83e83-46d1-4a16-9383-6d492cb37c7a@intel.com>
Date: Thu, 11 Dec 2025 14:06:27 -0800
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Mina Almasry
 <almasrymina@google.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Rizzo, Luigi" <lrizzo@google.com>,
 "namangulati@google.com" <namangulati@google.com>, "willemb@google.com"
 <willemb@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Olech, Milena" <milena.olech@intel.com>, 
 Shachar Raindel <shacharr@google.com>
References: <20251211101931.2788437-1-almasrymina@google.com>
 <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
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
In-Reply-To: <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CAhLP8BV4TvtuY1yS8dVhLHM"
X-ClientProxiedBy: MW4PR03CA0176.namprd03.prod.outlook.com
 (2603:10b6:303:8d::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5940:EE_
X-MS-Office365-Filtering-Correlation-Id: 1df7b693-dc9d-4614-369f-08de39018916
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGJ5WktRTXJPWkFEVDdHOXU0TnRXcG0yVFdrbTF6OUJZajVNRHlwZ2xidDlK?=
 =?utf-8?B?YldzNTFUUnhKTHBwTGFDN3pWZndJK3BURDJtTTR3T0tFT3pXdGl4aWFpME0w?=
 =?utf-8?B?S1J4eksvQ2NkMEdMNVhVcGF6NDZ6S2Q0QWZGVVlMNlkxa1ZRRWh6a2lHcjZh?=
 =?utf-8?B?SlZmczVOZHR5VTRlM0FxNTc4SW5WMkJrU3dvQUlwRTA1Q1RxL1c4ZzI1czlu?=
 =?utf-8?B?YWx1OU5qWHFSU0xIQ3ZzWnJQYWRTTHZPeDFYSmgrcmdKTVNHZkRqVk8xdW5W?=
 =?utf-8?B?YWtJTlluU3hBSGZEUXNYcmZNN0NMbWtSOTltRnpCcXh2OG5uR3JUbzc2MndX?=
 =?utf-8?B?T1hRN3NvT1pNWGpXc1VwRUNzSFRSQ2NpRjE2dzhTWWs1VzdKSzRiaytzdkw1?=
 =?utf-8?B?amkwVzJuNWdFM1BuTWNpdjZMM3p1WlptUXoyV3RNV2E3RUJNOEZnNlN3OWhn?=
 =?utf-8?B?WE92am5IQkhRK0dSMzZTWFdscy9aazA0UUZ0NzAwSktROW1YQitqQzN0TDI0?=
 =?utf-8?B?MUo0YUc5My92UzBxZFNkYVBab2tXQjh5bHh6OTl5RXNNUTFsa1lrN0loODVx?=
 =?utf-8?B?TzVvbk9tU1ZlTGhtRnQvVkhuOVc3TmdiejNUNjJHSEFkb1ZSc0UzZlVFcUN1?=
 =?utf-8?B?WnB5aytDSmhkOWZTQ2VWbkZ6Ri9IMGcvM21VdGJlcGhLanNWUmZIcnQ2VmVO?=
 =?utf-8?B?cmdyQVgzTzJxM0U1dTdzSUhmUlJlNVM1bmI0VkdyUCtqS25XY09UVXF0czRu?=
 =?utf-8?B?eWVoUFFJK3J2Q3F5bVQyNC9icjVYZHdDZFY1bi96ZlFwZEpXbE1JTHN6L0g4?=
 =?utf-8?B?YWtSWXBsTmZ2d0RvTDBSeWdsTlE2QTV3dmV1NlMzL1RucThrbjVieXJDMEZJ?=
 =?utf-8?B?QXRra1NOWGdSSE5NWHlMSjJNWUdwRC95cXpGWnY3UkZBT0s5eCs5cnkzUkhs?=
 =?utf-8?B?Q3dUOTVkaEgzTys4c3ZRcmMycjdNY2R3UjI1SlJRZ2hraWFYRFFhRnUzUzlF?=
 =?utf-8?B?cHpQTS85ZkFXMkFzc3IxQ3kybG9BanNvZzNrTkxJcEdhQlJ6VXpXcDF6SkMy?=
 =?utf-8?B?Yk5kdnhoTjFXL05Cb1pYZ3hqUzBBQ1VmVUJBK21UVE1mSWNYcU9pdlVQUlN1?=
 =?utf-8?B?SE9FM1FlVktPYkFOdm1xdzVYN203UUI0c2VrVjZoQzNKbTZyY2Uxb2FjVW1n?=
 =?utf-8?B?Rjh1Z01jZmJmWFgrS0RpU0NHYWg4ekp0NWY1NktPa25NQ0UvS2NmL3UxM2wx?=
 =?utf-8?B?dEpObEp3cnNYN2pLeVowQ0dualVuZUluYUZQSmExc3l0THFPYjQ4VTRqOUNt?=
 =?utf-8?B?bGMrTyt5UWFuMXh2YURvZU9PYzJRZGxKTldLNk9sLzZYTFhOMEgrMnB0OUFX?=
 =?utf-8?B?YTJjeXhSZmcybzhwaDJyOFhIODVhRTJFc25sQ0NLTC9oalhjazl6WStrM3gv?=
 =?utf-8?B?RFNFRFhKcGxZdm5FaktibWVKd3hGZHNVYWRpT1Y0UjQrOUtMTDB2SU9maHlx?=
 =?utf-8?B?MnFrelJnaHJKVmxvNmQ4SEh5NVlnVjU0U3RiMEc1b0J4eEJzMEFNQitRM0lt?=
 =?utf-8?B?WTN2UGQ0K2lxTlNDTzV6THhuc2kxODZkdXBhclF1NTVDRmgxcGlaRjdoeFQ0?=
 =?utf-8?B?Z2t0c2ZsUExrS0F2cFVleStKU3h4NHp0Rzh4eTBBQlV1WlB3aWxFYWxkVEpp?=
 =?utf-8?B?eGQ4YnY2NXhMUFlFbnN0RHlwc09NY1F3Q3hoS2pXNTRtckFMV0NRaG5YWDNk?=
 =?utf-8?B?blRWVnRJQWc5TGNGL2psdjdpREdia0hqeit0KzdBK3dsdDFNZjk2RGRWRCtC?=
 =?utf-8?B?anptbFBNK2ZOVGtWaVYyN3NpY1hESm9RelY5MS9QdWFMNXpEYU9zZXFJL0pR?=
 =?utf-8?B?QlZwV2k0UnNRbkxyejNXdTJwdWZFMW04LzNSNlUrL2hzRDFuUUJHR2lwV0lS?=
 =?utf-8?Q?mHosI0pHuBe4sSxwAJ+8GE3OjMAdNF5f?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2FVNmg1RUZYbjVReDlxdDZFYTJGcG5FUmRncHJ2M2hFRm5JSjNWVktUY0tT?=
 =?utf-8?B?bDVlZHVhMXM5aVJrUXB4VHh2WmYvZjdYNEVjcG5FVWhKY3BuZFRmVU9TUnRC?=
 =?utf-8?B?bWNnd0NUM29zZmkveWZ4cTE0QkxFczNyZHdDQllYRnB4WVFITS9xU3Fwemlw?=
 =?utf-8?B?T3ZWWUxoVU1nd0IwNVNPM0RHaldyZTJYY0VBOTBYc1JFZ21aSmdIKzhCZk5O?=
 =?utf-8?B?UXp6U01tM1c4VDBoSTQ4aVR3RVFzYzFSSXhPakNlZkhqaHU1Qzd2ZTVkc3hP?=
 =?utf-8?B?cFQ0ZkRRaGdJT0JMRlplQ0tmcHdicWhyMCsxRURDT29hczVZb3VBZnZTVlR5?=
 =?utf-8?B?bHBpOVNpSVlPYVAya0dQbC9UY3RnUVZsNU5FYW9TSHRjN1I0aHpCbWRjTm5k?=
 =?utf-8?B?b1g2amEySXcyRm9TZ2hrMGREUS83ZUpUemlsTU5TbWpsbW8xdDBubHlscjlj?=
 =?utf-8?B?YU5qMWJ0dENDZDFlczNnV0Z0ZDcvOFdOZTRrYy8yWDNVSmQwYTQ2cFN2NlM1?=
 =?utf-8?B?VnZ3clhsUGFTVHFzVEx6cWZxZ1YreUU5WFk1WnlhWVdCSCsyNldSYnA1U0tH?=
 =?utf-8?B?dUptNE94UWpGV0RoQzhOV0pCUHcvWUp2cXJnUXlLdU00NG9OMDhqT0t6SjVC?=
 =?utf-8?B?K01JbW9zLzNVa0w5YnFPeXZFcXhLaGQ1T3lWTDNrbTdrRElzYk9qaUNlSHV6?=
 =?utf-8?B?Q2E2aVZOTm1xZFRUZmNBUmU4aXptclJDenZPQWRZNCtIRTUwZThwMzNaWW9o?=
 =?utf-8?B?RGpiMG56dXJIdjdBZkxuOFNjMmN2MWhIUlJRa1BCTU9FdU9SYkVZajZQdEFN?=
 =?utf-8?B?UzhHeHhJL3BndUVCUXFSTmJNbDN0UXdsSk9mR1dkcGtEa1V6WWhCSitrU3RL?=
 =?utf-8?B?ckJlcU5YUmlNN1RWdDcvTlBGRHMyY0NFQXVmV0o4WUZmMjY1eUczRkR5SWVu?=
 =?utf-8?B?MGZ6bkhmdVc1SFhucGFQenJUZjFhbHhzV2kzYml1SHJTb2Q4eFBHS21oVks0?=
 =?utf-8?B?QWNiY3RtQzZ4WGY0ekRLZktRZHErdmhDNEZnVFB6K0IwQms4Z1A0WlN4Y3Ny?=
 =?utf-8?B?UWx1RkwyZHZYZTNyZ3prN2dwRTNkQ2RvRmhxa0Y1Vm1kUmM0bDZzU25JNGdU?=
 =?utf-8?B?dkxHa0lORFFqdnEwOVdPVVBzOTJVdm1IN2hXU2lZN3ZMYjZKUytIN3kxYjhO?=
 =?utf-8?B?cE5TYUtCNkprUWY2ZmQ4bjhhTmc0TEorSks3NjBjMDV1QUo0MEY4bVR4bm5V?=
 =?utf-8?B?eFVMV1JmVllVZFFEN1RtSWxrT2dGbTJHNTVQeGUrSFdYV1ZhaDFTQ3BkSlFl?=
 =?utf-8?B?RGh2STlUVDI2QUk5bzFjVWJwQmVVa0kybDVOVFBzV3VGanNMYXVVN3VLeHU2?=
 =?utf-8?B?QmVxYk1yRUlpcjZMaXJyTDVRaUtaVFdiWmlhRzJ4L25lVytIUG1aQ2tIMC9G?=
 =?utf-8?B?cDNPWjVlQ1IzL0lMWHdGdkFXOWR0a3dqemlEVnJLL1htNmlwUmVScUdYNkNz?=
 =?utf-8?B?dDVYRHZrVUlackd1SkJ2R3pPWStPSmlSUmNRdlp0M1R3dnpEMktzR0drY1A1?=
 =?utf-8?B?cHRnNUpJbGVGR21FeWVwMkd5RThlQU8rOUJLTzVsTFRGR3lUYXpGV01sd2Nq?=
 =?utf-8?B?SVJUKzUyZm1vd1RNYmduRWh0d1hScU01VDNLSTIzUVgwZjZTaldHVm9wT240?=
 =?utf-8?B?NGc0OGNpTEJ2UXNUL1BpTUtnYkFJR2krMnNBNU1henNvS3doSGhKUEZUdGhx?=
 =?utf-8?B?ZDQvMDR3Q1IvVjdGeFdYbDk5RWhSU3V5cW1lbFpUVTFWbFNQdHJ0K0lDUStC?=
 =?utf-8?B?V0J6emV1N2RwV3dUTHA5L3JWa25oUE4yNEVKUzZYUC9hMFJPRS96YTk4Wk8v?=
 =?utf-8?B?L1o4dWFzb2xRODF4ZlJRdG9MQ3UyT0JuaWpkRzFzUEVZR0VxRm9HOE9POXZh?=
 =?utf-8?B?NG4yVkVNejVYNWtDeDN6R28yVlp5alZMckF5ZFJFbkdlK1pTZHBQbkh3Vm1n?=
 =?utf-8?B?aCtLQlNHZ1hWU2IyUm4wd3ZieHZ0MVdPTzNLNEdpdzhybVBnTmdUcm12ZWwv?=
 =?utf-8?B?MytFb2RxWTIxdFo4OUNLVmdyeUdjZkxXbjVlVFZ6eDlaTW1VS2FLN0NlM2pR?=
 =?utf-8?B?V3pkc0VwaGRmQjdsK1JxTVNvQ0l4YW4rRDBhNWtLREdwYll4Q2FMbjFYQ1lM?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df7b693-dc9d-4614-369f-08de39018916
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 22:06:29.2606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hC95MAh7OtbhVm6Simxf33GlRlQd+gWRob3o0Fi8q9UjYKmLcqlZ0q5hwhnEP6Vb+ZjKA5CK8BEfdW1dlPBr5QsNB5EUNFi6QebCEer+ntc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5940
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765490796; x=1797026796;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ZiPR2H4biAAM6hJYJkVUr7rZ/Y7SFYjAW/vKuuODwUY=;
 b=i6u6hAAVFe4Ua8uZnlVnhqMAh65OAO2RnODePQU4kLxL4JpY5KBdKear
 fS2ijjI6wzCtNTwCZKcivcUX55varfqVltdgmr0D59WwubSak3i3ttdWb
 X/Bf1Wef9k/dNgH0uOCaOYm8wF0EWPKCLB7/A69I6VCktLwOb2i//0Vqy
 kyMCsuBWJQhZpj/HnnrYYGGpANfxqnjeTR4nbfJp++EejbOLDdg6qgYpR
 Acm+HQdHQLTOmntFMy7pWghlw0Zmrdv9GC0d9UU+3pE8Jf3oLk9M0aW60
 HL9XY41x9Ti1vQiU6j3ha2PQcGdthPkj7A26gJlQ+6Zyjj3YjH2YRbDN/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i6u6hAAV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
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

--------------CAhLP8BV4TvtuY1yS8dVhLHM
Content-Type: multipart/mixed; boundary="------------HW3N6CI9ELqrop3WlKRd8094";
 protected-headers="v1"
Message-ID: <25a83e83-46d1-4a16-9383-6d492cb37c7a@intel.com>
Date: Thu, 11 Dec 2025 14:06:27 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Mina Almasry <almasrymina@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>, "Rizzo, Luigi"
 <lrizzo@google.com>, "namangulati@google.com" <namangulati@google.com>,
 "willemb@google.com" <willemb@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Olech, Milena" <milena.olech@intel.com>,
 Shachar Raindel <shacharr@google.com>
References: <20251211101931.2788437-1-almasrymina@google.com>
 <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
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
In-Reply-To: <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>

--------------HW3N6CI9ELqrop3WlKRd8094
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/11/2025 2:37 AM, Loktionov, Aleksandr wrote:
>=20
>=20
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Mina Almasry
>> Sent: Thursday, December 11, 2025 11:19 AM
>> To: netdev@vger.kernel.org; linux-kernel@vger.kernel.org
>> Cc: Mina Almasry <almasrymina@google.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
>> David S. Miller <davem@davemloft.net>; Eric Dumazet
>> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
>> <pabeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>;
>> Rizzo, Luigi <lrizzo@google.com>; namangulati@google.com;
>> willemb@google.com; intel-wired-lan@lists.osuosl.org; Olech, Milena
>> <milena.olech@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
>> Shachar Raindel <shacharr@google.com>
>> Subject: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
>> inside the time sandwich
>>
>> PCIe reads need to be done inside the time sandwich because PCIe
>> writes may get buffered in the PCIe fabric and posted to the device
>> after the _postts completes. Doing the PCIe read inside the time
>> sandwich guarantees that the write gets flushed before the _postts
>> timestamp is taken.
>>
>> Cc: lrizzo@google.com
>> Cc: namangulati@google.com
>> Cc: willemb@google.com
>> Cc: intel-wired-lan@lists.osuosl.org
>> Cc: milena.olech@intel.com
>> Cc: jacob.e.keller@intel.com
>>
>> Fixes: 5cb8805d2366 ("idpf: negotiate PTP capabilities and get PTP
>> clock")
>> Suggested-by: Shachar Raindel <shacharr@google.com>
>> Signed-off-by: Mina Almasry <almasrymina@google.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/idpf_ptp.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> index 3e1052d070cf..0a8b50350b86 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>> @@ -108,11 +108,11 @@ static u64
>> idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
>>  	ptp_read_system_prets(sts);
>>
>>  	idpf_ptp_enable_shtime(adapter);
>> +	lo =3D readl(ptp->dev_clk_regs.dev_clk_ns_l);
> The high 32 bits (hi) are still read outside the time sandwich (after p=
tp_read_system_postts()),
> which defeats the stated purpose of ensuring PCIe write flush before ti=
mestamp capture.
> /* I think he "time sandwich" is defined by the region between ptp_read=
_system_prets(sts) and ptp_read_system_postts(sts)  */ Isn't it?
>=20
>=20

Any read will cause writes to flush, so we don't need to move both
registers.

The point here is that we write to the shadow register to snapshot time,
and it won't guarantee to be flushed to the device until a read. By
moving a single read in side the time sandwhich, we ensure that its
actually complete before the time snapshot is taken. We don't need to
wait for both registers because of the snapshot behavior.

I think the patch is fine-as-is.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake

--------------HW3N6CI9ELqrop3WlKRd8094--

--------------CAhLP8BV4TvtuY1yS8dVhLHM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTtAZAUDAAAAAAAKCRBqll0+bw8o6IB5
AQCP7TCVJbeKzokDZDFEzXO8LDl48T5Etz+sA/JY9hZKMAEAjcXa8TTPg3ME4Zprxwf++CnGL4vs
4sTPI49SQUmz1ws=
=/KRb
-----END PGP SIGNATURE-----

--------------CAhLP8BV4TvtuY1yS8dVhLHM--
