Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C9FAFBE5A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 00:49:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 212AB8264A;
	Mon,  7 Jul 2025 22:48:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UMqxsPustq9j; Mon,  7 Jul 2025 22:48:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D08481EFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751928537;
	bh=P3+QBXbJmYvXma3wgn1q8hLCnPJBIMoAmBFocR7nIKs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HEwlbr6w8wRTe102H9UMIdV1+RhWBv8YVHm/nBjmstNTOuwiLJ6qplOF9TNSA7/uP
	 JngA4WgTT0VoAi3bocLxZLTThCrE9kYxle3GdCk/bxEEZ/V+Rmz789k41pihuOQNFC
	 5r4KQ0v1hlwev00nf/JOKVqKUtIxyylsNYt07EemPybnPpN7gVknE/4mS9RUojVAdi
	 eb68OR/yXOMzCRzT3cNOZyu9xWgGt1T7An8cyiiA3ptq+Ls/TIpeyiCO/nWyVP4IDN
	 VNltR91quvyxl9xjcD8xtLdoRS0KmHoHYoRRyjDoVIo43iZ/uKcgfAwRiwyLvi0cX5
	 6mHKNeTVJPW7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D08481EFF;
	Mon,  7 Jul 2025 22:48:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 287E615F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:48:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24DEF6128C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPwxR8ELGXXW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 22:48:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 73B5561289
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73B5561289
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73B5561289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:48:55 +0000 (UTC)
X-CSE-ConnectionGUID: fQwwgT7zQwqS6eJHukB1aA==
X-CSE-MsgGUID: tOrgbcljQtCVUzNLf7xyuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65614607"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="65614607"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:48:55 -0700
X-CSE-ConnectionGUID: eDti/L/pRjyd/WJMfqeEaA==
X-CSE-MsgGUID: zNtF7xMxRVeYYxA9KnF0YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="154739262"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:48:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:48:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 15:48:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.82)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:48:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Thny4GvYDaY7JdN8wgvL6FLWZFbFN49rM0I5c22jkzrCBDG/HG9mMwBEyXve5cYMElGoN24CZC9PR8fbTQb9DTRjMIm/FHfaFjls8TszU+ifytlR1ulB/tUBduPufURrnrvtM0vL3jtZGVjjuhhRZYg+63gPZtK7R0LdMnribvy+iW87wEN3KyxMiTRNdPqFHLlIiQ0N8ao8BJZxXU6Np7bC/YogHPQNnTqRx0hVnLyuVfxxumroTEd7vnsj8L40G79zuAS+w/foUAbSWyfFJ8czOWUGFVL5rXa3aMfYPg4oQ5oZDLFIry/z2z+7K0mE83Q4Wh1Qn6YbGToscmeZKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P3+QBXbJmYvXma3wgn1q8hLCnPJBIMoAmBFocR7nIKs=;
 b=R4WaC9Oxz4tA/Pjt2xb0s/GxYfGF2xAMjNVKMr1yTsC1JNYBxS60ZDhMDXjydNNsu3zhkz7DKveKU6Ud2ncEe8xz/6qUXTdEKGyozI9jhs04yDxqfmabVrAkIMYI22pULlhGkW7+FCOx5jtZ5xtHOTXnOsPBZN0wSVvk1f5/lwv+uaTPzH8KqcPcuh029O1j9v5iP7fucFKrraOyH0inXeDljohBAp404n9fcmOurmPlKRHgs9VFGPAl3PC8hJZkNVdq2ZGxDtwEuW2MXVyMQ7FllxEZNzr2G9H6LiEu9JIcDQqVlEPT3ns6Rd4vnorhUalT4XR5GkT4Czu09Z79kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB9450.namprd11.prod.outlook.com (2603:10b6:8:26b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Mon, 7 Jul
 2025 22:48:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 22:48:39 +0000
Message-ID: <83ce2cf3-7942-444f-82c2-9489733c56a7@intel.com>
Date: Mon, 7 Jul 2025 15:48:36 -0700
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-3-michal.kubiak@intel.com>
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
In-Reply-To: <20250704161859.871152-3-michal.kubiak@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Dug8pvwhMnus2tlqB0sjdZfB"
X-ClientProxiedBy: MW4PR03CA0136.namprd03.prod.outlook.com
 (2603:10b6:303:8c::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB9450:EE_
X-MS-Office365-Filtering-Correlation-Id: b0e7131d-ddbd-4a90-11f1-08ddbda869f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmJPNnVWVFRBOWtsV0hxd0s2aGlYMnNuZFBGMFV6clpTRWdjTmxuTlQrWkQ1?=
 =?utf-8?B?dlVUaEdCMVRMUVNESHBaTnpYSE90NnNiQlpkSTZGWnRiVEdhU0NPRHh1eWJw?=
 =?utf-8?B?czBjcjdQQlRERytYTE9GUktUUVNnU2FPVW5HaDhWVkZHZGszL0dVdmlEdDJH?=
 =?utf-8?B?Skg4RmRmNGk5ZXR4ZGRiaGFOS01id3V2Zkx0UU5BUWRSTG5ielhvV3kxVDRl?=
 =?utf-8?B?NGMyMFpiR2lhcTdLK2dTZERLMjNuSXExU0J3a2NYNEVxeGs3bUhMRncra1A3?=
 =?utf-8?B?QUNTTVUzWVBRZng5dVBrTzExcFNYUjU4V1JFR2lQdnY3dFhKa2RyK0pFb3lu?=
 =?utf-8?B?R3F0akNGblVmSHpsdldiWm5vRkU4Q1p4elVhUHc1MWVjVG42T1VpaVNYRlU2?=
 =?utf-8?B?RGU1WmZDM0E3L3BIYmltNHBLOXVoZ21QTksyNnkxTmhZQi9KVlczQTZVL2Fu?=
 =?utf-8?B?ZmxrMVZkdGtqczlxWTdMS2hGWkRKSzNtaDd3T05BVE1kdGpGdzhjbW9TQUhT?=
 =?utf-8?B?UnZ6SklUSzJITGlvVEE5NHFjMFpRa2ljcnNxdk9ZQXhYWVNUd0NzZDYzNjdP?=
 =?utf-8?B?OWc2cHJhb1VoR0Y0U2RNeUQ4Q05IYTl2eE5CbG5STEZscU53R3NKTk9NMC9Q?=
 =?utf-8?B?T3pHaVNlSXl2R3J5YVJwOG5kczJkMSttM1VHZ3JGWUxLaUdRcEd0dzdjWnhm?=
 =?utf-8?B?WkpCNWFranQ0MlBjNE9nUkd5R0dmdU9ZSEJRZktJM2s0RDRuTi8ycEVkS0lu?=
 =?utf-8?B?NE12YzVTaXhzQnVZZHFlaElmM3hRSm5nUnREVmhidlRPOWRGWHAzY0szSmZP?=
 =?utf-8?B?U0cvdHBOd3RYUFFwU2pEWk8wZzBnd2dMOFNqK3BXMmxTaVZDNVFjODZPYzR6?=
 =?utf-8?B?Z0ZoS3ZLVmthQ3JRcDkycitaZUwySTcwSWkwVDh1SlZiTGtydVl6T05HOTl4?=
 =?utf-8?B?U3ZpK2dGOElCdVZpVmF6YWtPcU93dmxMRmlNeGxZWU9Lb09PQ0JhakRKRWZE?=
 =?utf-8?B?UFBhVnBjblV1c0NnVFBYTG50b3pBZzczS0UzNVpZOXBtOFBjUFc2cVMxZTJK?=
 =?utf-8?B?TVV1SVpNSC9HYU95VVdpS05xOTVOenZpTTMydis3OVJMRkltUUh5UGhhdWpT?=
 =?utf-8?B?OWJzbnNVSlQwUGdvcDJkMEo5MENSbkU5U0VqdTd6cGltSU5oMTFPQnZQQUFW?=
 =?utf-8?B?cWxCY3NhUm1GckdlQ2pTSnpBL3lWQkp0dFo1M2o0Mk1sa2lLMzV4bHRaUFc1?=
 =?utf-8?B?WjloSGJoWEpORFlRSVlxM0NOTjlwZHV5MEd4KzR5YnZpTGR4eVo2QXhtOVEz?=
 =?utf-8?B?RHl3THd4UjJPL3FObTdNOVUrOU9veE8xUWxjWHhWa2ltellSaWZZaVJwTEJC?=
 =?utf-8?B?TTdKbVBMbG5UNC9lU3VSNGRWYnZOaE1aY1ZzdUxpVjdUMlBHOEt6MWw2M3Ey?=
 =?utf-8?B?dDhCcUhraDNKQ090NVJTQVloM203S0ZwaTZLdGlwSFpnSVJTZ1habjJaYW5U?=
 =?utf-8?B?c3pFcjJRdXc2WHJoUkwyc3psQTBOODBvMFh4VUNmQkVPbURWN2pFR0liOWpp?=
 =?utf-8?B?blJzbEdFellwZFlwVXRsUjdtbk1sSjdLUktBZ1BVdjU0anhTVllxZlQ1RVBl?=
 =?utf-8?B?SFdhZnN6TktLaHo5SnZBdmd4bE5jOWtYOGhxNjNqVXhOcklndWtzQk03dThs?=
 =?utf-8?B?Y0ZKM1M5VHhsbWhKVlJmZkE1SmEzbnZCV1lJMWVtbmV4VEE3NDl4TXIzRTIv?=
 =?utf-8?B?SVcwbTRXRmdQK3ZLOFdmcjdzdkMyZzgxOFkyancyZW5RS0JibkZ2Q2M1WUpH?=
 =?utf-8?B?NStvK2pmNGgvOU9IRGE3MG9ZbHZPajRxUmgzbDhVNG1uNWhlYnFjM1NldWha?=
 =?utf-8?B?Z0pHRkVJWjVmRFZnd2pVdVBqcDZUNFJPYWlJTUV5elEvb3plcGRMZlF5UHlB?=
 =?utf-8?Q?a1z8UwBnht8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0FhclBqaTR1dmh2LzVqWEYwRWFHWjYxV3cySWpCMXlWTjRuMjc2d1kxLzYz?=
 =?utf-8?B?dWNwYkhwQkxQaExIdzFrUCtncmtKZDQ2ajJOOWsvYkFpdnhIcWFvZVc0clVY?=
 =?utf-8?B?VkhuR0VIenNoeVdwNjhXVWNnUkV6NXFycDhZdG54QnJpbFc1TTJ5Tjd2d2la?=
 =?utf-8?B?RmRkVFdMdmlOYkNuZDU2bDUvYWtuaEJydE15ZGtGaHkxc1lMbTAyOHdMNFFO?=
 =?utf-8?B?SnVOWG5kc1ZQeWpSclRBU2o3MkZYN3lZSEJkMGUvZXU3VjRXWEM0dWZPdWdl?=
 =?utf-8?B?OCtPQkdPUE1Fa3lFMXV3aE9lL1Z6YmVzeFJQUTZ3dmpsYmp1eTV1ZXpweE1v?=
 =?utf-8?B?eWJVNlBJRXR0RVQzSUhzSW9pZHEvRkxHWGRyMzQ4WVhUM3liejUvZlRsWVRx?=
 =?utf-8?B?RHg2N2o1UjVoQVVnMTZjcTlzK09haGc3cFhqVUJYSHRlbE93b3B5U1BKRHRQ?=
 =?utf-8?B?QjNiTEFkWXEwd1d3ZDREaEhEU1JiTzZpVFltbC9Mc1Y3MkZVby9mL1Q2NkV6?=
 =?utf-8?B?UmpxMTlKcnFKL1dqZEdNcEEvVUdHRk8zQ212TitPNDZmeXNiQ1NqTmFaYTJy?=
 =?utf-8?B?M2ZiL2dQWDRrYWFSeGRjM01BSndhNnRrK09KMTJWZTk1ZVpBMVZzODN0WWR2?=
 =?utf-8?B?ajI1dUhEenY3L05rbkZoM2dXcmNuMGxrQTl2QnZJdU9JRGNsSG1vNkEvZkNm?=
 =?utf-8?B?VFk0S3hkSGprM3pVbVBWQXhJZDE3OXFQRVBKMnF6MjlKYUc0ZmNoMFpvNkxa?=
 =?utf-8?B?R1dRQm5yK2RBY1NMWkYxeldxOVFiMzV1WG9zdzk2ODhpa0hHUUVzQVMrNW83?=
 =?utf-8?B?QUZMbTNqelVwK2FWUUxlTUhwa2xvd0dQMmxWMis4blhSSGpVSCtmWmZFWjdX?=
 =?utf-8?B?ekErM3NDUzJ4RE1Bd204RWsybThpdDVId3Q0L2M1bUZaRTFESEZqZ05vSVV2?=
 =?utf-8?B?UmFXYnpoem1KNjV3OWhqdWRoT2JkdEFHOUxMa3N2OWJDeXJnemljeDdEZE9Z?=
 =?utf-8?B?WWkrUEJYZlJLMlo5RjU4RlMvcVp6Z2xYWHNzNjRrblNiR1NtaDJPR0Z1VU5H?=
 =?utf-8?B?a1RmR0pzQmpmSVNuVEhsVlBUcE84U01RK0dIOHZjQndTQ1k0by9rSGc4azE3?=
 =?utf-8?B?U3pzQk5oRVRKQnZHUW9oZ2FOTVF0c0IxUXFicG1rZkhheG5UbWtzSTI1ZjZT?=
 =?utf-8?B?OXU0Q2NhMXY0TE5tWGlCVU9nS1N1QUloQ3UwbmcwUXRQR2VOOG5ZTHhDVWVK?=
 =?utf-8?B?eXhkTGc1WUNqZ040aFNLRUdOY09oRERuRmd4VnJjcHhORDdDZFdIWHhwcXY0?=
 =?utf-8?B?WGJMbGQ0U083RkRGY0FoU2c4VHhGOWRxamJKWW05bmticmRSWWhkb0IwTkhz?=
 =?utf-8?B?UmRvNURMUFUrbzNwTjRyTERXWHo1dHNjTks0UGM3VHZTMndUMHNsdURvK2x3?=
 =?utf-8?B?V3hFMHBkSDcrbThTZ3dUVDdobEM0a1pTTEtGanNXYnpCYkxFR3lGTlZsaG1a?=
 =?utf-8?B?MUpIcnNmUlkvNG03N1RIbVpPc3lzQ3RIWGwxZlc1MWxKSnpUOUg2cGdNZDJP?=
 =?utf-8?B?RnhpUEJiSU1kL1NnazRiSG9DQmlkd2lJaEFOc1I4SE9oY0FwWm5WSWdrdGJX?=
 =?utf-8?B?dW1GeHNEQ0MwWU9INFRGTE5YTEdxbXhoTTZEbDQ0NUlYRHUzNFRpdW5LVmpw?=
 =?utf-8?B?RTRLRmZ4NHlmM05wVWhlWTZqZFZpdU9kalJJVGE2T1BqVFVIVTFubWd6N3pK?=
 =?utf-8?B?VC9XbGt1THZZaUdZSHNYYXc3b0lZTFVIRGtucjZ4bDJYOGkxR3ZEZDdENjIv?=
 =?utf-8?B?RU9HMXJpV3IraExHUnJDelgyS2VXRjk0R1BoR3FnM2JZSGRDOS9iOG9pZ0NV?=
 =?utf-8?B?OWI2RFg2T0VoN1c5NEw0cnQ1dXdMNU5zOWNiYWlMWnVzUHBvR2Q4ekZTUWRU?=
 =?utf-8?B?N1FiWXpvMVpPcTlVcXNISTF2V0xFaXBaeTBvNTFheG93N1RlZXBRTXRGWnFG?=
 =?utf-8?B?ZE1qN2RaRG1qUmVCUDhheGZ0a2xHa0pZQzUzR043c0JkNnEvcDV3RFB3bXEr?=
 =?utf-8?B?SUlTaTYzT2NWMnNGV0tETjJJUjRzSlpKWnhqelRScnIzbjRLcHFUbkJrTWpm?=
 =?utf-8?B?VUplZkx1WDdMSUZDU2Y5bEJCY0pTa2EweWIyM2RDRFVHdURmYUJNR2JZdXM4?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e7131d-ddbd-4a90-11f1-08ddbda869f3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 22:48:38.9438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W0JFQhGM2EdHMWSeWzhAONpEdm53MCvpA0hMCcgtyCRixciaqYwNUfb3QzQG0Whbyx+fLNNcRb3DeWsPOw8MKOi6VRed+OAstGqRhXbTEyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9450
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751928536; x=1783464536;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=wy/7iSbWwcJM6mOoWMcCuKG7n8gJ4rdMzttioZahg0k=;
 b=E/SQYjJflt2GPDsvR0LCUIwG+WOb+c20DsvK0uYOowCAL4E8AkThYBSz
 CmsQecEbinIHVh74QMM0cpyK4o2cT5iPyiiMpxCt9Nic8xfmokFMWSv65
 KZvmbBRiVgs61528TIqbwHcvv+7G91OdlDOK8iNRTWDscynVuAqUojAZv
 6vPDVRSpVF0O3orGwOpFawNz3f8AJWMCVrQO0wkcG1iDjWAK7fd2chnWt
 50GbGy3PSRwPa9PBt7/W0/6/WkxlZMxwyVlzT8myEHNiUORq+LBAX4ORk
 lvwQyBQcqEWn78TGLv8ohpDUbvoFuy9pBz+HzonS9CXga2sbKNCD3Rxz5
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E/SQYjJf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: drop page splitting
 and recycling
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

--------------Dug8pvwhMnus2tlqB0sjdZfB
Content-Type: multipart/mixed; boundary="------------v5akIS4C2x5g5BWJkHWfiTfj";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com
Message-ID: <83ce2cf3-7942-444f-82c2-9489733c56a7@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: drop page splitting
 and recycling
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-3-michal.kubiak@intel.com>
In-Reply-To: <20250704161859.871152-3-michal.kubiak@intel.com>

--------------v5akIS4C2x5g5BWJkHWfiTfj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> @@ -1100,14 +994,10 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *=
rx_ring, struct xdp_buff *xdp,
>  	for (i =3D 0; i < post_xdp_frags; i++) {
>  		buf =3D &rx_ring->rx_buf[idx];
> =20
> -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> +		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
>  			*xdp_xmit |=3D verdict;
> -		} else if (verdict & ICE_XDP_CONSUMED) {
> +		else if (verdict & ICE_XDP_CONSUMED)
>  			buf->pagecnt_bias++;

Why do we still keep pagecnt_bias++ here?

--------------v5akIS4C2x5g5BWJkHWfiTfj--

--------------Dug8pvwhMnus2tlqB0sjdZfB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGxOxQUDAAAAAAAKCRBqll0+bw8o6FfE
AP9UFrw9ZuxOSTxU2NZgVPz853F0UcpdVB8t0wwqXBTjegD/QhxcxqKoHccRVkQA7bJpd16KXGCD
7KKOrPa2Z4D6dQs=
=K0cH
-----END PGP SIGNATURE-----

--------------Dug8pvwhMnus2tlqB0sjdZfB--
