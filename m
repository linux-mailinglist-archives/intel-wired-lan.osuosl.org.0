Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F3AB46736
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Sep 2025 01:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA763612A8;
	Fri,  5 Sep 2025 23:29:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cPpkFFqe30R; Fri,  5 Sep 2025 23:29:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD32B61336
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757114983;
	bh=j/lTJrHBc/Phhn08b2CD+3ho89soi3dFxzP4IDcFJtQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xuhmPPwpwZ+yyidxkHrW4TbzR0bKLFBB/ADt0KCR+AeLJST7Xg07f20uoc1qVjRN5
	 UX/nJM3DmKZv+je/I9NdGKEljXE6HoCYtXs+vfnA4vcvf/700Asbf65WvlkSNZbw4w
	 6HbD29AWwalZIvV3LRQctSZ+geijlLnUcve5FskxjISKQloGeLUXCHdYzHDRVKXRiu
	 meQieG9Mt4ufhU6D8ZV/j0s3R3O77xXx4w8Fx46fQn8dbF79oEOTIsxt1SCYxqF9mH
	 VdVIWZ1tFY5BLob6lJ6PMKjx6wrjki20QlMU8wCZN8MYHWD8IxwsXbnsR1Wv/8W5Sj
	 pgOC+yv1tSbqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD32B61336;
	Fri,  5 Sep 2025 23:29:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29BEE967
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 23:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 100EE6120D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 23:29:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jil4bqCR9BmZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 23:29:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B0EB611CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B0EB611CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B0EB611CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 23:29:40 +0000 (UTC)
X-CSE-ConnectionGUID: 88fHD1d2TUGhP8wbqAV81A==
X-CSE-MsgGUID: tEcWMD7HQIKVoLZPMQ5D/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="59578513"
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; 
 d="asc'?scan'208";a="59578513"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 16:29:40 -0700
X-CSE-ConnectionGUID: JWztZ9dIS0GxkbM6ZOC1zA==
X-CSE-MsgGUID: cK8q5LlUQxiX6IF3SmExMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; 
 d="asc'?scan'208";a="176616270"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 16:29:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 16:29:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 16:29:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.63)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 16:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A7Vv9I9W7LvFxia+lpW2NsH2HCV0hyjXFftdEyZYec2zEo/Epu9ptZP0dtwx19lg5Q5pOAk7FHEAJzWNRHN+jq5pwRHMaCxRPiUFlNRp42HslOljseRoub9hZccS12z/FgqHeGDQVhSXEAuErlWRq4HcW+X9nKMTOqeDiBNCWDeAImWQQ1XJqL/KQw+Q+eGhTBiRZnt03jtSI+S3wRuAhNmkj2Geqmn7KcAAi638yzIgwSiEdjLuBAnkTPRYjycs7yqF34hRb4fLdTllU6fy4Rhy2znPxq/CVUaDn5bw5QGhzQNfF9Zyf9F2NB4xoJU1NJvdulrdhxiiR+BDziQxEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j/lTJrHBc/Phhn08b2CD+3ho89soi3dFxzP4IDcFJtQ=;
 b=eDMiniLNuVbEwiuk6Uq1S9uSSvBwmtAUeIZcM7n3HCnsqe1rz2wv6NKDCFoStUENzdqq8+TQYzlR2p1BJhAPeJ6Fir7u7WVog/FkN7TJR7goqcqCXGdujDelt3yZR3NrsME59FGvRYLUSRGUM0j08Jmz5rl570KLObpg9iQwEKtrvF7QxG0PPFhhZij8CqePeWKa0f/ZC2tSTGboyilfrGFL51MZ1tsiFmz143iVQsarfdF7SnHfspde8agdk1AOoWZHHz4d2i4z5C6HJiI9GR/kuriOguCIIxqKay8n0uI4RYpQYSdusPepuJg2t5oiM3/rRSXHL8lg/dxhx2U8ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB7320.namprd11.prod.outlook.com (2603:10b6:208:424::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Fri, 5 Sep
 2025 23:29:35 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9094.018; Fri, 5 Sep 2025
 23:29:35 +0000
Message-ID: <5dce7d9f-d5e9-4ea9-8a72-ed8e52d62e71@intel.com>
Date: Fri, 5 Sep 2025 16:29:33 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <mheib@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <przemyslawx.patynowski@intel.com>, <jiri@resnulli.us>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
 <efb80605-187f-4b80-8ba9-8065d1b9e9d0@intel.com>
 <20250905114642.GA551420@horms.kernel.org>
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
In-Reply-To: <20250905114642.GA551420@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9ZnqUe3tfm5cIU87LFD0DmEt"
X-ClientProxiedBy: MW4PR04CA0132.namprd04.prod.outlook.com
 (2603:10b6:303:84::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB7320:EE_
X-MS-Office365-Filtering-Correlation-Id: 68a97ba8-570e-4715-6969-08ddecd412d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnUxR21iSGpPTTFIV2RTYmk4NEViVTlxNWQyMDIwcm82enNjamV1eFNndTNW?=
 =?utf-8?B?elRtelZsdHcwT1FNcEhhYU5kMWJ3R3dyUnpMM0ZmeW5kYW84SE1kVktnZ3pJ?=
 =?utf-8?B?aEtBVFdYa01rVWcrRFBkNVlhS2QvemxleHhUUzgrbm5zekphWjhFS2lMVklu?=
 =?utf-8?B?RDR6RWtFbitpOG44YWJoMkk5SW8xZHRtNlp4SWtBblJnZGZGdG0rSGlQTlRK?=
 =?utf-8?B?VnJzSm1sOXcvRXdhM3djWHRzeEtUMW5pRUFoSlQzOHg3NVVaeEs4ZEVMVWJG?=
 =?utf-8?B?MDlWSGNqT0dDMzhZVXpJVGVRZnJoMnpwMnpLeTlYTkpmdmxTL3BDbHQrck9a?=
 =?utf-8?B?VTU3QXFyVVZMeGREc0JsYmJqUjBuMTJqY21PeHBaQTN2UHh0WXlEM2ZTNk5m?=
 =?utf-8?B?ZkdKYWZsZGc0TmhVd0FRRGxHZkhOV3R5RzQvUmJmbmtHZVdyV09zZTRMeWJs?=
 =?utf-8?B?dUtFRTQycHE5OWVPaFUzRG12ZTZNRXhLNDY4WnJ6UitOTEVjL2kwc0pSdSs3?=
 =?utf-8?B?NkdPMFFPd0NVdW9jMFI2QlMvWVNwTDUxSGx2ZDBrVnREQkZMT0dHeUpHSG5B?=
 =?utf-8?B?MzNuRzZnZWk0Tk5GRFVmV2ZPajNETzJPK3ZHMU5QM0ZRcmpDczhWMEpNKzN1?=
 =?utf-8?B?aHNWU2lKR1VnQURJQjdBaDh2ZGlhREpXUXZxZ2dCRENsRzRkWUdsUUhlemNt?=
 =?utf-8?B?d2ZMdGhhTTZDemxPa1BUZzIweUdISVJjZ21uWk5wd2tFdnIyVlV0VGV5K3V2?=
 =?utf-8?B?RWxwNUd5UHNYL0hSa215ODZzWTMxN081aWhhNmE0TVJvUGh0aWhHRDU2amRv?=
 =?utf-8?B?SGN6ai9QMHBDZzZjZElEU093OFllcWY3Z1VZbXBtS1dTMjJMRm45L2NlV1dE?=
 =?utf-8?B?bG5mQTdGcUpCZE8vVUEwL1UzNkpoRVhpOUhDQ29YVmFhT05iK0pqOGhGNkNI?=
 =?utf-8?B?azY3bjRIdFp0dVVtY2UzQllRSkFlMUhHNEtRdGRPT2dKaWdQWi9TK2JzY01i?=
 =?utf-8?B?L2FJOGYxUkRTdTlrY0I0ejNlYmJQRkJraVdRbUJFampWOWZ6dExLaWw1bmg1?=
 =?utf-8?B?ejRtU2g0UkhLQk1vRk5JYmt3WGdwbHZqNjZuQXJZL24ySUFqMFM4T0J1RlhQ?=
 =?utf-8?B?clk2RGFiYWtLVGU1cnZGN2Fiam83L0hHZGd0TEhyZVUvb3hKdDBndUlXQW1K?=
 =?utf-8?B?dkNkNE5IUWpLRFowMVgrNWZuaWRZakdoa2tjTnVRRmZXVFB6TnFURi9Ccytp?=
 =?utf-8?B?OTd1Q0dXNytVbFAwdWIzTmYzT1Yrenp5MU55QUVCL2VBNXE2Rm1Hd0QyVTZH?=
 =?utf-8?B?ZVFrZ1gvTVBZekJJNkh2cXpiVjNXQ2RKeXF3NHdFc1dKcklhdTQ3Q2w4YjB3?=
 =?utf-8?B?NzZUODdiVmovZU9OaitYK0JUOFgrcjJ0Zm9pdUdjeEM2ZUZEbUJkY3F4bWd5?=
 =?utf-8?B?Rm9GaWpPU245UWlrczdFVDRTM0ZESDl5WDBmK2tybDIwTEk5c0hmYXNBRjJE?=
 =?utf-8?B?eVhvU2t5QWlPOEZLS1NJZnZQdVJUQVZyTnJ5ZGYwbnV6Wk1tZWN2YlJOOU9N?=
 =?utf-8?B?YzV3L0VKQmFHYmZxb0NoYytXSVNuTUovZms1NSthTC9GNzYvY21tMzdkaktk?=
 =?utf-8?B?ZGg4UjJMd3hYTy8zbmhnZG9WUFBNZ3NGbDZQOC9hQW40RmNmb1F6N3RWL0FG?=
 =?utf-8?B?SHBuOTQwY1F4TlJPZ3NRQnRVdzlrSEZtT1NzQWNTTzI2cG9iVmYzbWc1endS?=
 =?utf-8?B?MlkydiswM0w3dDRtQ1c0M0tyYTlsM0FIakZqRnRVTkRLcFRnQ0c0cHljaVo5?=
 =?utf-8?B?amVxb2xXazZxMytNU3ErRlZQeEVBTzUzbDMvYkt2M3NHb0YxZXd0azlUOTBi?=
 =?utf-8?B?TFRyQ3FOeFBjTFFvTllJWm1vSjBuYlZDOEVkaUx6VU00WG8zYnQveU5QOFcw?=
 =?utf-8?Q?Zt1ryUPlO7M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SG93aC93WFpNTnMzOGxKS3lwQ29ONnpDdUR0UUpyYlZLZnNjTlJaMzhqc3Jy?=
 =?utf-8?B?aVc3K3FEbnliWUJaTDZselhLY3ZuelVPSnRacHlraU5SNVk2ZGhtbXRjQ3pW?=
 =?utf-8?B?aVN3QVkzY2F5bU1sWndxUlFZNnE4SjlyTnRjMmZodldHaisyYWQ0a2VPci84?=
 =?utf-8?B?c1hUdHQxVUJZdkg2Q1ZMQ3ppYXBiT3ZBWlpCUFBPMi9KZXBJOGJXTW4waWRl?=
 =?utf-8?B?L2gwb1hCa1hvSmovaCtPRjUvUjRuNHFlMUtscFdBbVJIUk1iMWlaakYxMDFH?=
 =?utf-8?B?bTFBODFGelFtNkF1MWxQM2dtWEwzN05ZeDF3SHIwUHBTWmZjNVErSk4zWENP?=
 =?utf-8?B?Q1NOR0h5MCtnZWUvM2hvY0ZiL2gxZnU0Y21lM0ZiSElkWGJSbGl6YzlCUmQx?=
 =?utf-8?B?b3R6Y29DNHRDcE5XdEYyWjNGc1FJS2pydUxSdk4xYzlaTE1mM3krMWJhM2Vx?=
 =?utf-8?B?Qm12dG1ibURsN2NMWFdSSnBOQTgzNFdNdDZNK2dzMnRzU3B1VkhsS25MdkRH?=
 =?utf-8?B?OXZhOEUrMlE0R0xSNEs1S2M1ME1sYlVOdWgyVFBTb0s1a2M3d0duYjJoSHhD?=
 =?utf-8?B?aitoTVMrLzdGS08zTnZ4aklVYk9LU2lQUUY5cTNhVFJZQ1hWMWZzcUJ4RUdk?=
 =?utf-8?B?a3ZFREtUMUl0N3RNSDVqVitYRVYxQXNSNWlUdHdYd05IK1FYQkFDL2VKVjMw?=
 =?utf-8?B?TU9ETitORTlrQ3V6MFZFenRIczBnYXRXMWlmd1UvTXFXL2xLbFpRNklKUmhk?=
 =?utf-8?B?YnNvbTZsdlZjU1JQWFpiWmdKT2pxdGd3UlN1dkN5aDVMR0NFU0FpQ2k0bGtJ?=
 =?utf-8?B?UE9KUmN4OGZDdWUwMllURXk3QkFCVUpNT1FyMUFZdUNIbXdkTTYvVVlsOXZ0?=
 =?utf-8?B?WGRnOXY5a0YxMkhZaVJqQUtBN2NCazA5UjlwME9mSnczNWl0TUREaGZGbis5?=
 =?utf-8?B?MkFQSk1zaVBaNGlRS2ZZMjk2bGVJbUZQWUhnZ2VEYy9MUzJoR0puVGdodWpL?=
 =?utf-8?B?TWd2Wkp4RTRyVFNXS1dHM0FyT1RvUzA4WGtMNzBIYXVlbG5sNVpLOVhIUS9t?=
 =?utf-8?B?RFMzNFJVQVUxdytURmJZSnhnTVN5NlJjVTNVa2VIbkhzMzdsOXN2UW1rT0dy?=
 =?utf-8?B?MDlDbVBVMTdQRDdzdTJFSHB2YkpRZm9vNmhnL1BOOFowNG1DcVVVdVFJZDJC?=
 =?utf-8?B?Vzg2RE9ZMkFLNkhKbHRMWHhnak1QNHVrU1U3aVVzVHFOakNpYVZuMmdGZW8y?=
 =?utf-8?B?RitXcEN4NFNDb2k1YXFzdHNhVzUraE5ndnM3Vm9wOUNTenl3Y3ZOYmlKOTJL?=
 =?utf-8?B?SmZjd1RQbkZMaWhMOFcvRGlxOEdlcDloUDJTbU01MzVBODBIL1c2VkNRME5z?=
 =?utf-8?B?VDNhZEh3MGV3N2ZkemxTbzljMjlqaDl3bGtmUUxTZHQwWk5EcVdCeWNRTjZT?=
 =?utf-8?B?L2tTTEcyRFBDUk1aWEJXSEVQczRtZ0w1eHBEd3ZDUWZieDVkVlhsWWZpN1dK?=
 =?utf-8?B?NHBCN0NKaEt1OW96MTJYdTJzR01jYm5FM2dyTmdRZlhBeElPSjNWTGVyalRn?=
 =?utf-8?B?anl2Y0J1cDhKQUFTbE1qWkx0VjhBSDFyb2dTZTB6RGNFYmtTL0tZRHlLK0l1?=
 =?utf-8?B?NU1WYWFCYTVFOVFWQlRDNEFaUHVaRUEzMDhTaTNEKzdkb2s0WWZ0SnVRL0kv?=
 =?utf-8?B?bmY5ZWd3dVpMbWpxa25oSytlNlE5S2RNUXdWN2d0cU5OOGFneU5hVlAxL2I2?=
 =?utf-8?B?NVdjWEpwODE4c1c0ejdUamtBSmpKbFlzWlZwNjFWWXZBREUvcSs5Qnlsc3RW?=
 =?utf-8?B?RXFnYWFnZzZwMWVMQk1vRThNcmtQZTJFOTZXWHdLUjhFWi9EdUp3eHZLbEFC?=
 =?utf-8?B?Szltd0wyeG1ZckFHb0VHa3cvS2t5OGdaNEVheDFFZXB5ZUY3M2YrV3h0ZDZH?=
 =?utf-8?B?Mk90VSszU2pzaHc1cndKMlh6ZnBlYTRBUXhWdDcvRU43RXhDM0JaTlY2Uk1S?=
 =?utf-8?B?UXZiMmpVazF6QW5FbHhOd0QwbzY5dXVtMG9vOVFQVmQxWUZSckdqZGo4YTNs?=
 =?utf-8?B?OXlYQXZmV3FuSGhNblVmWjRXYUR1MDFndXlUK055ZFNIeUFoYjJrbkFXV2pE?=
 =?utf-8?B?RnJQYTlDc0ZmN2E0M2VKdnhWU2g2OThzVmxwYmJPQXd3WkRTRCsvUzBhdlFN?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68a97ba8-570e-4715-6969-08ddecd412d9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2025 23:29:35.2686 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: drI+ebd6dAOrGDTBR53OCHFSuaXmv/KfSXorU2JKCQ/RttphGIBBOIqtBH0W5bTAF7nnixiIeWa/FSob6zHReup8IJBSUqnZxQmEzseJCSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7320
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757114981; x=1788650981;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=j/lTJrHBc/Phhn08b2CD+3ho89soi3dFxzP4IDcFJtQ=;
 b=RLhCXWktNr/JdLA5WY8Ci3EnFFUA0zOcFiwshnzi/7uX8cnLoegtccDM
 +PHeOQQQIV5b0hQdh0l0NIBd26vlvgC/2isoG7RvSQIZ4/wC2XpPqYSUa
 cegMFvuCOhiCCiXmhawtZa1dl6CO5pJzkn+INbblkrPHWxHTjrcBM6zj3
 8hFYjH8qxQ28eFZ6oh4+ZV/CRWwEE9GP1NRmnJtuPE3bZLeLasUTWq2yP
 2a65wPPUAGLceMxMwrC4qD9mJbBdyRxV3eLehOM1Rkg2M4z9CCVLvnsMj
 GX6KsVqKpidss7DQpf7zjGE3rkapVVK57rz9nwWS6QHAHdXuCM12MLOzR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RLhCXWkt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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

--------------9ZnqUe3tfm5cIU87LFD0DmEt
Content-Type: multipart/mixed; boundary="------------hcPslSKQwdOcaa81zOMnZt0Y";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>
Cc: mheib@redhat.com, intel-wired-lan@lists.osuosl.org,
 przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Message-ID: <5dce7d9f-d5e9-4ea9-8a72-ed8e52d62e71@intel.com>
Subject: Re: [PATCH net-next,v3,2/2] i40e: support generic devlink param
 "max_mac_per_vf"
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
 <efb80605-187f-4b80-8ba9-8065d1b9e9d0@intel.com>
 <20250905114642.GA551420@horms.kernel.org>
In-Reply-To: <20250905114642.GA551420@horms.kernel.org>

--------------hcPslSKQwdOcaa81zOMnZt0Y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/5/2025 4:46 AM, Simon Horman wrote:
> On Wed, Sep 03, 2025 at 03:25:40PM -0700, Jacob Keller wrote:
>> We didn't rate limit it before. I am not sure how fast the VF can
>> actually send messages, so I'm not sure if that change would be requir=
ed.
>>
>> You could optionally also report the mac_add_max for the untrusted
>> message as well, but I think its fine to leave as-is in that case as w=
ell.
>=20
> I'm not sure either. I'm more used to rate limits in the datapath,
> where network traffic can result in a log.
>=20
> I think that if we want to go down the path you suggest then we should
> look at what other logs fall into the same category: generated by VM ad=
min
> actions. And perhaps start by looking in the i40e driver for such cases=
=2E
>=20
> Just my 2c worth on this one.
>=20

I noticed that a VF can cause this message to be spammed indefinitely at
whatever rate the PF processes the virtchnl message, once its MAC cap is
hit. I don't think we really protect against that in any virtchnl
message, so that makes me think its likely not been considered a problem
thus far.

--------------hcPslSKQwdOcaa81zOMnZt0Y--

--------------9ZnqUe3tfm5cIU87LFD0DmEt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLtyXQUDAAAAAAAKCRBqll0+bw8o6LUY
AP0RDV8CcZBTsVD30E0f5bFH6QjIz0jKrpRMDX8Y/WRx4wD+KkgMkVRfMxzijr7wnDE885lczv17
ytSu1RO62oLTLgc=
=JJzx
-----END PGP SIGNATURE-----

--------------9ZnqUe3tfm5cIU87LFD0DmEt--
