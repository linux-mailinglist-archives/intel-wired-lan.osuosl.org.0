Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E856B52988
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 09:04:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC0B3812E6;
	Thu, 11 Sep 2025 07:04:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y6_Wx2Mof8uK; Thu, 11 Sep 2025 07:04:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0955E8109A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757574285;
	bh=1UQk8FwbnjJTLW7LRIsKuHeqLN3cEFbXwpjRTnExp4o=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OMPVgH6H8nk/H1Z0ExvPdoL0NpdmS/SIHKHEnhp4z6FBecKYQxoq5NL9du91wx/zr
	 V9yTUG3gLLI+VhlTkBBya49UAkD5xlQxgvAbQyV/YAGL1F8QkOUrxN1RYWANUPq+QN
	 dDOFjbAc1PY+mM6YhaQwcHL38qX4OavLk4tC3Hvfl5KTs2I+237dDNrJ5IpGXGyk18
	 WWk1e0LYKc5RKwQ9F/sU0Fp4IxyxdddHQ/ZxCCx4r7seZJ1Oh2OT6uTPmgLWZH0n5r
	 YhmDf8dOlgcdCOU91mHYB6SdbPoJ6T3w+EkB4QNueIvk40PV9i/3ee34OrObJclqP7
	 udSQP/9aJTRmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0955E8109A;
	Thu, 11 Sep 2025 07:04:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C577234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 07:04:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CC7C41F5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 07:04:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ii0PovwAeINa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 07:04:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 23D3341F5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23D3341F5D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23D3341F5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 07:04:42 +0000 (UTC)
X-CSE-ConnectionGUID: BRaTkhWuRWq0ayeXbuaeJg==
X-CSE-MsgGUID: quUtTQeLR22ArN8TZBI7qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="71278224"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="71278224"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 00:04:42 -0700
X-CSE-ConnectionGUID: JbpIYAjNTZScaGG7ih0GIg==
X-CSE-MsgGUID: Gpx0+EWbRc+Msy1yObmG/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="173507227"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 00:04:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 00:04:38 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 11 Sep 2025 00:04:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 00:04:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qnQHgX/4b1nt0RKnOhW8S0T7S89rLS4/YOaqDM8cyeYOgrVt7meHOrOxbzmIxWIGXm3iF9zx8RvFd5WhrehaJ1AHMSxUq6P8UnXVIRvx2iHLdRXmfoyv24hm4XVHZviU8cRHkxk+n0cYGdgyKXIlMv+PLu4imG8SkTLtFsUpdZN/SbbKyKRDbUGmwjPik99Lj9NspAhYjSEPz6sFqF7TYVOeySYg2XHBnbQtsENItqEtka/mc53CW6IRKM11scdpj74YVWbNuOX12HW0BsLjbpTL509jENen4NvcTzTBD8yELtp7rbYAkamFHvR8/vLST9mU0FzeaeofSvIA008W1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1UQk8FwbnjJTLW7LRIsKuHeqLN3cEFbXwpjRTnExp4o=;
 b=OKFXV1HU4FPk4G9JzAt9q7l7hqk2Tp7igNe76ZgYAO2yq/HV/Nl2Q7ikJ75b4PCUmUrFwTMPHqEq7BOBmsXS7FqBkBAcW0925UTtNoASJQRli7uo9qNA2eXqoOMucNt+8HJoOwY0eb0e+Ykaw7ZYY/MlL5i2AuKyT3REDcplG3dLYv9Mht7lF+Vi9s+Xt8UpSTlpAXk4xlUPq6lVmsks1AVFrdT4AaHtikvr4bEsdNorQ13fx03mrOVOn6t+txZcigzGJLqCkIGDuiyloThOt4xzSLnU5cZ2jgFn8S7P4AkwAyIW3yfjNbH4h4HAnzLKLu9a120kKgk6r2jjSaOIFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by SA2PR11MB5100.namprd11.prod.outlook.com
 (2603:10b6:806:119::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 07:04:31 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::6cbb:604e:d0b9:97a]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::6cbb:604e:d0b9:97a%8]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 07:04:31 +0000
Message-ID: <995b4ae2-2163-4618-84de-63548c7e2633@intel.com>
Date: Thu, 11 Sep 2025 10:04:24 +0300
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>
References: <20250910134745.17124-1-enjuk@amazon.com>
 <IA3PR11MB8986D670D2CD4C1543515308E509A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <IA3PR11MB8986D670D2CD4C1543515308E509A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::20) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|SA2PR11MB5100:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ad3e052-1a81-4775-ad82-08ddf101747f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzRrZUZZek1Ia2REVXF1Z2p5YzZURHhiVHM4TDlzR1FBcGRRZzZyeDRxYmVB?=
 =?utf-8?B?Q2E2V0ZrSlBOUVREdlVyVk0vK29jdGNzZnlzZ2NFQVY5UUFTSmtHWGdBdldn?=
 =?utf-8?B?VGZUNXIxOWZqQVh3L0xXOVdCLzFNU21PZjE0V3FoYlpzWXlQT1RQck1vRy9G?=
 =?utf-8?B?WTFiNjhYRHN4ZENWM0tNeGJBSXk3ZDk3SDIyaHlOMlEyVmhMcFF4KytzcDJa?=
 =?utf-8?B?NzVNRmZVOVF5Z0xIVjBMRERIVWMzVzVvRFBvS2MvcHBISXhUd0g4WnVTclNM?=
 =?utf-8?B?T1lwTXlsQXM4V05qeDJaZ1lWZ2krR3k5MXZFVE11L2dTcVJXSXZKVU1UR01r?=
 =?utf-8?B?L2lTdTZBRWhaT2Job0xESFZPaVE0bFk5RmhTRmh3QkkwdjIyV1dsMXIvTkVN?=
 =?utf-8?B?MG5TbzAwbzFrYVVIOG5vb2JGN01FK1d1ZzI2ZHFwV0RlWi8wSmVDbmJWV3h0?=
 =?utf-8?B?Y1RsVHNCL0V0ZmZEbkpSRGt1cHZabkwvbVJCaXU3ejhkU2NIRC9ZeHJmT2Nx?=
 =?utf-8?B?M0JEL1lhb1V1MnltbUowWjJFNXVkeTlQUFpURkpHWHJNVlJhaitFeU5kWTMz?=
 =?utf-8?B?VDVTNmZYUDNaaENkdDFlQ2pUSFFLTjdORmhzV2hPRkNNMU44OHNmcFo0YWdk?=
 =?utf-8?B?TW5uME9BSFFXN215ZmFMakptNjFXYXZ0VFlScjYwM1g2bk85bVdUdGVxODNs?=
 =?utf-8?B?cDJ5c0R2UjFmcmpIVVN1RUU1dnI1R1BrcEp4S2ZUVlRuWm4rQndkWFJ2NUZu?=
 =?utf-8?B?cVZ2UU55TXZ6NGpzUVhUbmtaZWNHaHpGZVk1ZXpoR1BXMXpUeTNNWUhvQ3Uy?=
 =?utf-8?B?T3lXUWFpVmh6RTdXZFNOWjBwTG5yRnJVRWw5T3NjTElRRUV1VHEvWUExQmR6?=
 =?utf-8?B?Rk1JaXBnVEg1NHhXdUtjZ0c0R2VZd0JHTmsxa1J5VUhMazBpcytHd09rM2FE?=
 =?utf-8?B?SmFVdjljamw0bk5RdkVxR05wZ1NZRnBJSGo5cm1KOEErRC8wZ0xXNXgzUm9J?=
 =?utf-8?B?cUs4REpYUytDcGNORG5rYkE0dGxvNTBqS2pjTVlGWHVaQnpEZzB3WXY1SWdY?=
 =?utf-8?B?N1k4VFZBZG15WXV3NVk4NUY5UzZYaXNXS2ozUkdNN0NEekRqUnM2QkdVaDYz?=
 =?utf-8?B?R0dhTFh6b1MyTjF2VVRRQ25MTC8vQ2NwTHo0YkNjc0hSKzdJejM1UFFSNERj?=
 =?utf-8?B?YVQrU0xLbHVlcUVVdmxUMDg3bTRNdFpKUWZCZ2lNV2xuWUh1S2xuaDVvSUs4?=
 =?utf-8?B?Zm1ubnJtNUhEY1VjcFFLM2c4YWpKQVZIeWdrYk9MdWpsUjREaENzMFduR3gz?=
 =?utf-8?B?eWZVMDRvS1I5S0NZR1FRTU15dm9PdmtiUmhNQ0RQNHR1RVcrcDZ0c0hZVFJF?=
 =?utf-8?B?eS9iZGhQQnRoUEZiNkRGeVJiMk5TSjRxVVl1K2pGOFIyNE1sOE1udC9FQXhr?=
 =?utf-8?B?ZFZZUzZtenQ1WWRDelFTTXhqOEw1MmtsU3pmK1RVU1hHUm9PVkhUSk9mWi9Q?=
 =?utf-8?B?QWtkRXhZQWxGUnQwR3pYZmRkQTZycHNWaGtzU3diQVRGV0pRNlR2Nktlc3l5?=
 =?utf-8?B?MnJOWHlnaTd3ejVzWFFLek9UcTFYWFc3WktzaXFQc2UzU2MyWEd2aEZrVzRW?=
 =?utf-8?B?bC9UN1l2aDVkVmdzQ25nOG90Y1ltaWxZcHEzQzY5a3JZOXMxMDBXc2Z1bzhM?=
 =?utf-8?B?YVBYWTNiQXRsOEpBTEpGU3dyZExZbmNUT1l6aG5iNllTbEx0UWZrazN5Ukxl?=
 =?utf-8?B?K1VaNFJrWCtZdStlRUNzQ1pueXhjRnZjQmdvMVJhTFprcnBlQWdkR1ZqM2cr?=
 =?utf-8?B?VGRmZ0llZEh1MXlDRzhkTDR4ejB6a0YvR1RZWktKWldIU0xqL1BMYkRmVEUy?=
 =?utf-8?Q?XuWle+IzNA0D9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2gxQmM5dE5MK3hDbUlPb0V3ek1Hd05VTktjQ0VlN2RBMWprNVRFclNHVUd4?=
 =?utf-8?B?dys0THlEaEdhdVlFSEdvMlFCSmNRME85YU42QUFzUjk2WTFDb1cycXlJbFZl?=
 =?utf-8?B?ODNlOEVseGh0T1VaQUYrWHErcGsxOXkyOFQraW9LTGpMblhTRVkwWjcxb3dR?=
 =?utf-8?B?ZzcrTG51bWtzKzh5VzNra2N2cDl3TXp5ZCsxRlE2d2Q2ekhyUFN5M0FMbTRX?=
 =?utf-8?B?blYwZzlPUXVGTW5PNXpwS2htandGNmljTW93TTkyTFh0dWpOL3B3MmRXaXFh?=
 =?utf-8?B?ek9ZRGFTZkZyUEcyT0oxN3dLcmpKWkxuNkFreG82NG0weFlrRnFWMjlHTElB?=
 =?utf-8?B?SzZnaDdDMnBtQ2F3TDBTdDFhaVhNZTlxdkprZk9UaGZaMGJ6b2gxM0lUUWlz?=
 =?utf-8?B?M2pOR241V0EwekJ6eUJnQjhKaDhjRzRjbDlXS0ZLTUUvT21LbFlSbm80NFM1?=
 =?utf-8?B?UnFOOGFVNzhLRWIveHl5UWZ0cjYzQlYrQ0NXaTZUdS9oeDJZSndudHdKdVdj?=
 =?utf-8?B?THM5RWNJYm42eDNUdWlzVzF3YzVaNGpaRnczNzcxR0loMitaYVZKNmYxcWJq?=
 =?utf-8?B?U1FaNVFQdXlMdVpRODY0OEo5VlJ6SzVlaERpeGx0WEtFTFNxOTMrNXJDZmN4?=
 =?utf-8?B?aWd5R0VOQXpGUXI1S2h6VmZrOEYwN25ydzBNM2ROdytHeWZzSjI2U293WW8r?=
 =?utf-8?B?SFN1bTY0aHhjS2NrQ3A5bXBMMmFZakFWVDl6ZUZjSXNjcDdPVnptdUpZM1hU?=
 =?utf-8?B?djRMa2RhSlVoa1ZmUkx0N1NRRWtLNHRVb2RRSElmZWdXaWlIK2pBdERWMlZG?=
 =?utf-8?B?UHpXdDRtdDNWbS9vVmRFdk1BVzhNdnNackJGOGFseUtKdnRsNjUxUUpWY0x3?=
 =?utf-8?B?ZE9pTWtpT1gxZVhobmdDWWlnbkU1SzZhbGZuVVBKeHJwUStVTCtUczJTbGtI?=
 =?utf-8?B?MXFZdmdaUXpwekFERDYxNEZBMHpVM3k3cXl3dWVocnJ1WHZScXV3UmM1ZkZF?=
 =?utf-8?B?bVhrSUQvRHRaR0RYdlRuckh4MnZEeTlFYlJOaGhpMDJQa0xySWhXMjdTNGlz?=
 =?utf-8?B?NFpEL0JSWjRqL3RTcVNFeFgxYUJaZnU4U0hGUi9OQzBYNi9ZZjB5OUU4R09P?=
 =?utf-8?B?OEJWL0JGVnI4VVBOY3Z4SzY1TlZ1bzdxSzdxb1NkUjVHM2RZaEMycElEbkNG?=
 =?utf-8?B?eTY1NU9OazcwVUdGbnZJOE1oTzBwNVM3cDF3RDRQdFlpSUlUVFF5RjcyL3hG?=
 =?utf-8?B?MnlweWlONXNTWHU2dW0xdms3V01GVVY2VkFSNXVyWkNiTDVYMmUzdDhWeWR5?=
 =?utf-8?B?UmVqMWlZcXFuMzZZZ0w3Zk9MUU8zYVZ1Yk05YXlqM3E0OElUTUdGR1FVVGZJ?=
 =?utf-8?B?aSs0MXdTYkZjK3ZrZVk1QVBWSHZ3NDVlSkVaaGYzRGE1S3RwR3dZdW9XUVU3?=
 =?utf-8?B?a0pmRGJTNHhralp0QnJ3bUZDckxVbmJUc0F1V0FaaVIzOXFsUDdhalpDN2pW?=
 =?utf-8?B?cDcwbzhTUlhlYXhicWNXcmR0N0F1djVqRkc1ZUQrSXpSdTdzcGZlZmREa2M4?=
 =?utf-8?B?SEFVT1lMbWVrZXErY0JtT3lyMnJjMjk0ZS9rYWdRWEVBYTBlVU5VaFFqOTR2?=
 =?utf-8?B?Q2hVOFBtZm1waVBvTUFPYU9ST3hDd0ZBb3psRGhwaFY2SExSWXhiM3B2L09V?=
 =?utf-8?B?dHpJejErekIxcEpMOHBpZU8vcFo1bDQ5WU5KVDN0S2grVWJ0V2pGL3JPaFJh?=
 =?utf-8?B?SkRTbHVKRUlLVzhWVnhFeUVBRUw3NndNVy9CZ0RoL1l6elV1K3FjZGFZaVNZ?=
 =?utf-8?B?blZDcHg3enBxcUF5UmF5QVJsaFdiM2taT3cvRFpGQUNvQWZCL3N3Z2VHTjJ0?=
 =?utf-8?B?bER1TjJvU1ZmdWJkVnVZdy9FaDFaUERacWoxamw5UThLb0owNGI2UUoySFRr?=
 =?utf-8?B?ajNNTWxKR053OE00TCsrRDhoYTJKcFNFc3dKM0hDNnFPRUF0K2xDcVlCQkJE?=
 =?utf-8?B?RGs2UGFmUHVYRDB3a1BJTkFBT3Z3SGJpbmNGNityMDNMeXhsVkFrRjcxLzdZ?=
 =?utf-8?B?ejd1U2drdzdReXJwUjdtN1NLUW01VUhtU05oRWE4ZVVlam1wTkJZTmxRWmVO?=
 =?utf-8?B?cDJDdDBiQlczdGJncmp4NWhQRmE0dGprajVPNWhDS1h2Mlp2empFN1RaZTVh?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ad3e052-1a81-4775-ad82-08ddf101747f
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2025 07:04:31.0755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +UL3ONJrinC5cQ1ke58eFYpEPyRmFZxX/iW+W48V9/luOM8CLf8wvCSAxRF/EXXcEGvVhTsJ28BXuxP2GchZEPDSTTGsYOfLVdhsvNFlv/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757574283; x=1789110283;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fIG5Mw4OI66oZwGuz55fAzc3jsskQgBoes+lCF+SnRA=;
 b=HU/xsnIuaii7m1FCAGSp2IpClm3NVan4ZOneFWNpaLUsbhlua3IeeWLd
 g7kRDhWRW2H5gpSy/Gce5EVsS7vnsR7wTB4skriqBN2ldZSz6ipRqpFfD
 87Jgz8y9NHCO6kzgMHdIYNefrAahoZmqDhnYL3fVI2ASib1cIvMovWySa
 SfNhhWVSG40S7TUMrIgCsJ6D0Ea0G3E97FKjbDoTnm0jWRGS5NZ9tujnY
 6qhBceALPxO73a16iWIaXs7oTXPPXMJHgsMNy3CxgVktzRz3KzYrEvbNr
 KtFX0RZjZo5J1FPJcF7m9/1NWOk72O5FJSQNhcKbDHQ9EZiplmNXSEkJs
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HU/xsnIu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] igc: don't fail
 igc_probe() on LED setup error
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

On 9/11/2025 9:36 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kohei Enju <enjuk@amazon.com>
>> Sent: Wednesday, September 10, 2025 3:47 PM
>> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; Kurt Kanzenbach <kurt@linutronix.de>;
>> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Lifshits, Vitaly
>> <vitaly.lifshits@intel.com>; kohei.enju@gmail.com; Kohei Enju
>> <enjuk@amazon.com>
>> Subject: [PATCH v2 iwl-net] igc: don't fail igc_probe() on LED setup
>> error
>>
> 
> ...
> 
>>
>>   FAILSLAB_PATH=/sys/kernel/debug/failslab/
>>   DEVICE=0000:00:05.0
>>   START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
>>           | awk '{printf("0x%s", $1)}')
>>   END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))
>>
>>   echo $START_ADDR > $FAILSLAB_PATH/require-start
>>   echo $END_ADDR > $FAILSLAB_PATH/require-end
>>   echo 1 > $FAILSLAB_PATH/times
>>   echo 100 > $FAILSLAB_PATH/probability
>>   echo N > $FAILSLAB_PATH/ignore-gfp-wait
>>
>>   echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>>
> Using fault-injection test using failslab - excellent!
> 
>> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>> ---
>> Changes:
>>    v1->v2:
>>      - don't fail probe when led setup fails
>>      - rephrase subject and commit message
>>    v1: https://lore.kernel.org/intel-wired-lan/20250906055239.29396-1-
>> enjuk@amazon.com/
>> ---
> 
> ...
> 
>   
>>   	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
>> --
>> 2.48.1
> 
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
