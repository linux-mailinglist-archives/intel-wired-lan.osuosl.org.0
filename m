Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMQtEcb7BWrFdwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 18:43:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C398544E1B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 18:43:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF4E140FDB;
	Thu, 14 May 2026 16:43:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u3HsWefrkkuU; Thu, 14 May 2026 16:43:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2218D40FDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778777026;
	bh=M9gxeOc4dWHLm47OxT+Mkl9/u1uJmuob77aqZpANVq8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bw3RTiy7O5x73eIP4tfpY4WGHZJQ87WG0lU6F1iNuORDSxZbxpRyb41sH9gBo9TZT
	 Nr3jN5Sp8MBHDo4fDruL9fbMh8pSp0cOQxNcoHed7M3Ely1dfopWLp0APUSoDfjQBV
	 R4oylRPfarha8cYLS9Rehw+KxSNHwEPuDUqa7tSuJrDApboTtaLpebaJjgpnDNDoGq
	 ZaVIYXjCyVrjHZ2zA7qcrX5M9OrJTlCTHOleaPafiPZyBQVFiO2s1MyFbWHpByXdF6
	 beTRC8trqKovlD6I5E1ZZehEK2AW3cXFqS+E+T9AirpYY+HajPaMxeYwrILxic3ow4
	 jdOgxMQb5xEdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2218D40FDC;
	Thu, 14 May 2026 16:43:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 235CC37D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1470D40FDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FF6KBTAGyXMj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 16:43:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2E41640FD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E41640FD8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E41640FD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 16:43:42 +0000 (UTC)
X-CSE-ConnectionGUID: lC0n6QgHSfaDdqHBJDmdKg==
X-CSE-MsgGUID: Od20nyrdTdSMiBx05ODbUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="78864123"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="78864123"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 09:43:42 -0700
X-CSE-ConnectionGUID: MCl4EMG7RKuz/6fySWhjig==
X-CSE-MsgGUID: nyUv/ARTTNWuhixiMec7eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="261960873"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 09:43:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 09:43:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 09:43:41 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 09:43:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T0n/h8oh4pA8lAhTpO9nfxXjuwav6fnS5yYyvZjpnT7BCUV/pvK8H893EIsNH9VdjlLqnVUtg2urA7NE6rou+M7BPOZKn/6ye3nItnYyMMFhnyqBLHxys9H2RksvwEHKT2Bm+Uq1Wmy7hSuD7rIJ4YSOAMLsp/+nNjUfKvUdhvnXR0kpI79EquqgwGtrFD1kFDiGR0Xc6otN4lcFVze+Zv1MstQA7NdffcyMvpxp6zhIljkOocKDe0XzPszMrKc8iB8JVX/dYmhrjnYxCvA86L8CP5Mt7zaCCn+80X9o/dpMUjBLRJTPLGOTqUyxE8vcxUqStA/HSqX60Yu59ivYCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M9gxeOc4dWHLm47OxT+Mkl9/u1uJmuob77aqZpANVq8=;
 b=bpMw0zSZHpJ8NEfnzYHC9mK7vSAwuNNiKzQqwmtRuCJwi5MkKz4V52qtAedbX3b4G4U6Ep4OB4yNwXKmUgd6ycMjejFG2+PLCUV4BnJkLMjDHRqOifb8p3Vu4K+BUiVfGKhohxjxJ7LDFxFLpu4WJmVHqjWMU4myRuqGJP5pIFo1fj88U5Sf2B5g2gosZhKC3fsGdV+oCGO3HBzfkstS/WnYwhLJL4d1xAi67YuYcyOuUEKC0dpaZQeH0d/Q6hmZx3D62YgqoIJwmN6dE2kCag5qaKK/xm10cH1IO1EtAX3ZdSRVGMW048dnRBcy6tRkmRZlzDrXZW7V5ygc3MmT7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by DM3PPFF3DEC9799.namprd11.prod.outlook.com (2603:10b6:f:fc00::f61)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Thu, 14 May
 2026 16:43:34 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9913.012; Thu, 14 May 2026
 16:43:33 +0000
Message-ID: <30dc284c-8cc0-4bae-b7b0-99d6d71a66e3@intel.com>
Date: Thu, 14 May 2026 09:43:32 -0700
User-Agent: Mozilla Thunderbird
To: David Laight <david.laight.linux@gmail.com>, John Ousterhout
 <ouster@cs.stanford.edu>
CC: <stable@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <przemyslaw.kitszel@intel.com>,
 <netdev@vger.kernel.org>
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
 <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
 <20260513214927.17a8dd45@pumpkin>
 <CAGXJAmx4LaVv=QJ=SanvF6iayJ8+SiLyUqht+jMxouXPX=54-g@mail.gmail.com>
 <20260514110112.12bdf5ff@pumpkin>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260514110112.12bdf5ff@pumpkin>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P221CA0022.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::27) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|DM3PPFF3DEC9799:EE_
X-MS-Office365-Filtering-Correlation-Id: bc0236dd-be6e-4191-bcbb-08deb1d7effe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|20046099003|11063799003|4143699003|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ub+B4vt8SlUQ4DI03sD42xfi+l30WfenoFH+SiUYolRE/N57QP7JLfy5fD8yjS0mHU9AtCcnXFy5RXIIu6ALNHa6sfmddyrBVVoH5Q7uioYY8vHqf6iJaqzyIGh0CyosqWHYR9l2a6Tv1V/yqvvmyglEB4B0Les8GCz0Y0ZSaKFi7vHMHei0DSjqbHH99ekN+ULgFVjBdRLHYc/TZo1hi8tsoymNDdAKsz71InyKsP1KEps9wPhTe10MpfhBP2SspxYuWqdcf7difdLAG+1/9MZ31Kq1d4K2YhqkSY2RPuepUUW2I4Cbpi/CYCqAgzhh4d/Z4S48PB3wQYusHA2a1r9UmNhuJG1Hw0jCbT2uCiRo9zfqspqAPeZfjBm6fw+zbr5+L0F1C8kXs3xlBzoXr1OLas5hxCQQHL2lOyA+MGjdfo5d7vt9CEFkeLwu9uky9zOgks86R+cv9LO/icsvYvuo+BTCreaA+Ie1Dxkyipb12gyv8oe6ZA2/bfACcrpbQF8oJZJX9R366qMv6yuAhL+6S6NJkHb2Nmn6c9GkqSDOdjFSVLmlilDB9DrcED0W+yR78D09Zh1v0T4dgtYsF/Q1AztzKzpCMgAzZv9bOXKZIEfhD8138j1m7HcG9wcjMscxoykwJPZBlhcI3iXObtorbVqxC/WpT9s6FuWW32zMGFPSMwmen/VvtLV96wIj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(20046099003)(11063799003)(4143699003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGJpZzNGcnEvZlZITld3eXYyS3NLWk5VSU1TR0YzZkwrcmZKMWI0U3dhQ012?=
 =?utf-8?B?ZmJQbDRxQVVyQi8xTWYxS3Z4bzN1Z3d0NUFCTUdiTGJqMnVCdHEwSDhZc0k1?=
 =?utf-8?B?TmI3a1RvRUNHSG9OaTRrRW93OUxDYXRtcWEwd3hpYmZERFJzWjc1NkZrQ1dR?=
 =?utf-8?B?WmlMem8ySkY2bTZxWEZZYTFwTmxsZGhWMERUV1JTT2VmbG4xZ1JXYmZiMkU3?=
 =?utf-8?B?YmliSE4zRjY3Zmg1S2FnY2p1NkJURlpxZm8vVjBvbmJRTTNBMExpVWVpbk1j?=
 =?utf-8?B?b1N2UkxjL1AvYmIvbG9STGwvTmwxckJVRm5HeStjZkJxcllqZVlCMkJuS0Q3?=
 =?utf-8?B?ZFIvMEdLa1dDOW1YWG9seWtOa2M1MU9KRmg4Rkhqdm1mV3hMeUNQUnF6NjV6?=
 =?utf-8?B?RDZpRGZxMXY0bUFUcTNPZmxybWdNYVYrNG5FTkdkU0pRZ2svYWFmSHQ2bVNp?=
 =?utf-8?B?Wldzemp0UFpKejhQUm9KNERNZ29hek5FeDkyeGVnRHBQNndEajJEOE9HbkxP?=
 =?utf-8?B?OXNWdnBCTUdHUGdhTWNxbzU2WXFMbm1BeFM4bnBXbmxtbG9HT2hNaTJldnJ3?=
 =?utf-8?B?ZnVLV3lxQ3Q2cUNSdVpLLzd3K3UxZmJUYU45Ymg3c0dDR3NXZnJZbkZ1K2s4?=
 =?utf-8?B?V0hhTmRJZDJicTVVYVNKZ2RQaXN6ZnVKU2FhQTR5MXJ5M3JiWG96Q0JGdDV2?=
 =?utf-8?B?UGtkTUNzMGhCbWNvbWwyZHlVZ1pxVUVXamhhakRyajJvb3JJT2VXZm1qR0tY?=
 =?utf-8?B?ZDJLaFBoZG1QQ1lHcDhTU2gyNnNUR1ZVNDNqYVpKOW5OWTNvcUdDTzlNT3RI?=
 =?utf-8?B?Zk1pUTN0U1VPeWUxUjJCSnNSbnd0blhldS9XVEJKREJxUjd5aGNaQmlqTW9s?=
 =?utf-8?B?MUZyenQvRUNkQmk4Q3M0Sko5YmU1YWxWMFdzcFprb0RyMUlLcnNwTGFEMFE5?=
 =?utf-8?B?dVpNMy9JdHZ3SjYrNjBkeVJ2QXREakRubTIvNWcveTliYUg4clQ1TW9oaFlo?=
 =?utf-8?B?cE1UWFl0Y3V0ZHU3bHgxQkdMWFlpVjNpWkFRWTMwSkJZQllRdmx0NWU4NVg1?=
 =?utf-8?B?T0g4U3ZUWWw0bzdVUk8vcFNFYlAzY09PMkxyVXVDNUFraVkzdGhLS2kvN05F?=
 =?utf-8?B?ci9VY2ZjUmQraVJOalBRYkpsNFNLQXg0cE12NW5IejNaZVh3SFZSbmZocURy?=
 =?utf-8?B?T3M4ZjJQU0QrOUxoZ3BuQllTR2N6VW8yN1RSUXN1bUNsSjRmVlZNL0puZUxt?=
 =?utf-8?B?Tm9wWGNYOU4yYjJqUTJWczRWWjJFa0RVMjlVR0ZjOHYvMFMzMUVqakFpYm11?=
 =?utf-8?B?N0tQUTdMQTRGbGZud01tN21DUEw0SmdoVFJmS3dhMWdJSXVQeHBROHQ3ajNi?=
 =?utf-8?B?TW90TFV6cW4yaS85NXFIbkdnRHVhSk5VelJVVWVLbnpFcjdubWxvNjE4QkhG?=
 =?utf-8?B?TzdERC9nTXJvM2RVK2d6SWV4YnRRODdNQm9kSVdncUlxcXRkZzMzWXR5MU5F?=
 =?utf-8?B?WXgvM1pSUklWVzdTZzBoemxRV2s0S3lYTjlkaFJvZGQ1RGw4SUdXSEcxTmx2?=
 =?utf-8?B?cTFaRDFZSXNGSWZWbkxpVlEwdlptc2M2K3RXMWdnaVlQbEJHSWkzV0E3Z21x?=
 =?utf-8?B?SW15cWpnMG1rdHluS0lORHltSUR5ZENET0pvcUR4dm9ucld6ZVFmYW1SNHRm?=
 =?utf-8?B?blJ2OG5PNzl0eU9OUkRMQ1NGemZHTHJaaUdlc0gvVVJMc2JYbzVDbnRiV2Z4?=
 =?utf-8?B?Yk9UMVNpNlZ6aTRudFJvQnU3Z2FjQnBjNlVrUWd1cWNWRGRkcUtwWVlLZzgz?=
 =?utf-8?B?YUJhYzRKbnZjYStoby9PRldZWEROMExncjBybnlSVVU3K1lhTGM5K2FqbVdK?=
 =?utf-8?B?Wi8vNXkzNjV4RGxVd25VaVN2YmlsdjJtQWM4ZHp6cXlpU3pON0VBbkJNRHVV?=
 =?utf-8?B?QWdqOWsyTFJuVFNiZDZVbFVvdExZaE1SNG56eE5aZkpuR2xYK1BKQWF1OW5z?=
 =?utf-8?B?Q0xvSEpOcHhhQVdlL05oUGZKVXdRdys3dUl1c0ZQRUNMQ09WMkVGaEJMQ2dk?=
 =?utf-8?B?bnkrTnRrc1JoRVJVaXZVa2IrNkdjSWNFRk5HU25qQ2VSYTZoaFZuNDRmSFlP?=
 =?utf-8?B?blJTb0FCMi8wTDVRNGZpL281d1V2MlgrNlduVW42aXdNRlhvRlJUUnppbDE5?=
 =?utf-8?B?UjdkTWl1ZWxqMnZkZFFrTmdRUmZZU3ZqUUJFWUtPK0piS2pDY3diWVBKQjJT?=
 =?utf-8?B?Z0RhaDdnTG43emMrSmpFUzIveWVpWlRnbEtXRXYyQ3RvRnUvR2d0citzYi9D?=
 =?utf-8?B?SWxKYy9SaXFPdVE4SU0yTk95L3M0L0dVSjBzY08rL1ZGUVVFdEsvM0lXcFBL?=
 =?utf-8?Q?fKvvmrx52P3PdUE8=3D?=
X-Exchange-RoutingPolicyChecked: thEyP2vb9HjIbvfAEc3wXamiFAgVB9UMUKHVJVpmkvF32UO3WMNhN5Fe+QpNG7Y2/oTlw00KTLFQAwiGa4CJfrisulBIvfniOfgUMk6WvBnVBi0qZ149qvXv00M295KLxyoFAfZJ3WAD/S99hvy0hJ/N7g/AkVAH3gfHyHd9tGFhU2rw+ENkGx1e/QzMG5MZtJiyt8g3AMgeFf8cWyn9i5IMmwYLa4atIKZL2zaHsYB23zadVILz+OSGO8MNXupG1kusqfZi3xtw9n4lOW+wpKYgfdMjVxyWxCAEC76JoLMVQCwXqIAITB7nPvVGLyZsk0C/VDYJXbbNu3b8/ag8lA==
X-MS-Exchange-CrossTenant-Network-Message-Id: bc0236dd-be6e-4191-bcbb-08deb1d7effe
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 16:43:33.8410 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1U/J5Ks76TWOZHFbppbEidCetsOG7e8YKWPM0F9MraTzIMG9+K1lsCx/s7GXlD+DofzbAfh0wnoc5aarV8154GEkpzyQmBBe0bBsbCcHmNs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFF3DEC9799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778777023; x=1810313023;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cafjRY5hoAWUy13xukSi/27nxFKK25VuBZksf15+qKo=;
 b=P32KrxUlBcCCoNYOG1wpYWDyfG1ng4DfonD/tzi+O1RLYA8epHmlXDxO
 gRabeoM3IaziBM1KxQD77OBXNRBMHD0e/BhqEfvRn97szbpTeteb0N02W
 +QOLLhassDF1cyw+LihjEEcAFP5Ay9OTJWbbr8uY36qKwJ79gS3p5opPM
 dXA4/xbRZzygORekgzx0FsOlAH2fUSCNS0525bZzyeOg1iiYKwTlMAiFQ
 NOQOfGSXpQl0qRh0rDddfYJ5Lk/zF0b5VBH75mMMCyFTWX0NqLSx9x8m/
 tg6JKqhYiBqiDJvZRtwLjrp78jDDmGya4/jkYf1K1qnlp5WbRxkzhgQm0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P32KrxUl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due
 to extraneous page flip
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
X-Rspamd-Queue-Id: 8C398544E1B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,cs.stanford.edu];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,stanford.edu:email]
X-Rspamd-Action: no action

On 5/14/2026 3:01 AM, David Laight wrote:
> On Wed, 13 May 2026 21:47:11 -0700
> John Ousterhout <ouster@cs.stanford.edu> wrote:
> 
>> On Wed, May 13, 2026 at 1:49 PM David Laight
>> <david.laight.linux@gmail.com> wrote:
>>>
>>> On Wed, 13 May 2026 09:28:40 -0700
>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
>>>  
>>>> On Wed, May 13, 2026 at 2:07 AM David Laight
>>>> <david.laight.linux@gmail.com> wrote:  
>>>>>
>>>>> On Tue, 12 May 2026 11:19:53 -0700
>>>>> John Ousterhout <ouster@cs.stanford.edu> wrote:
>>>>>  
>>>>>> Consider the following sequence of events:
>>>>>> * The bottom half of a buffer page is filled with data from
>>>>>>   packet A. The page has a net reference count (reference count
>>>>>>   - bias) of 1. The page is returned to the NIC, flipped to
>>>>>>   use the top half.
>>>>>> * Before the reference on the page is released, the NIC returns
>>>>>>   the page with no data in it ('size' is zero in ice_clean_rx_irq).
>>>>>>   In this case the bias does not get decremented. The page still
>>>>>>   has a net reference count of 1, so it gets returned to the NIC.
>>>>>>   However, ice_put_rx_mbuf flipped the page so that the bottom
>>>>>>   half is active.
>>>>>> * If the NIC stores another packet in the page before packet A
>>>>>>   has released its reference, the data in packet A will be
>>>>>>   overwritten with data from the new packet.
>>>>>> * Unfortunately zero-length buffers occur frequently: they seem
>>>>>>   to occur whenever a packet uses every available byte in a
>>>>>>   buffer, ending precisely at the end of the buffer. When this
>>>>>>   happens the NIC seems to generate an extra zero-length
>>>>>>   buffer.
>>>>>> The fix is for ice_put_rx_mbuf not to flip pages that have a
>>>>>> size of 0.  
>>>>>
>>>>> How is this different from packet B (in the top half) being
>>>>> freed before packet A (in the bottom half)?  
>>>>
>>>> I'm not sure exactly what you're referring to here. Are you asking
>>>> about a situation where both halves of the page get filled with packet
>>>> data and then the second half to be filled is the first to be freed? I
>>>> believe that the ICE driver abandons a page if both halves are ever
>>>> occupied simultaneously; the page will be returned to the system once
>>>> both halves have dropped their references. Thus it doesn't matter
>>>> which half is freed first.  
>>>
>>> That is what I was thinking, seems like the logic is over complicated.
>>>
>>> If you need to put 4k pages into some kind of iommu rather than 2k buffers
>>> (to contain 1536 byte ethernet packets) then I'd have thought you'd
>>> initially put both halves into adjacent tx ring entries.
>>> If a rx buffer is discarded (eg a zero length fragment or a CRC error,
>>> or even 'copy break' for short packets) then, as an optimisation,
>>> you could reuse the buffer for another receive.
>>> The same could be done if the page is freed by an application.
>>>
>>> However it sounds like it doesn't use the 2nd half until the first
>>> completes - otherwise you'd never 'flip' to make the other half
>>> active.
>>>
>>> Thinks...
>>> By only putting half of each 4k 'page' into the rx ring the code
>>> will usually save (expensive) iommu setup in the (probably) normal
>>> case where the buffers are freed 'reasonably quickly'.
>>> But that really requires a 'free/with_nic/busy' state for each half
>>> rather then trying to guess from a reference count.
>>>
>>> But if the low-level code is recycling the rx buffer (for any reason)
>>> it wants to use the same buffer.
>>>
>>> The ethernet driver I wrote (a long time ago, early 90s) allocated
>>> 64k as 128 512byte buffers and did an aligned word-sized copy of
>>> every receive frame - most frames were in contiguous memory.
>>> The simplicity of it made up for the cost of the copy, especially
>>> since that was an iommu system.  
>>
>> I'm not here to defend the logic (and it has been replaced with
>> something that is probably simpler and more efficient); I'm just
>> suggesting a bug fix for the stable releases that still have this
>> logic.

Right. We definitely want a fix for the possible data corruption in
stable. Ideally one as simple as possible.

> 
> You've forced me to look at all of the function :-)
> I've noticed a few things:
> - If ice_add_xdp_frag() fails (because there are too many fragments)
>   then the rest of the fragments are left in the tx ring (instead
>   of being discarded) - so are likely to be treated as a full packet
>   later on.
> - Frames with status errors (crc, framing etc) are discarded after
>   the skb is built - surely that should happen before the xdp 'program'
>   is called.
> - If the remote system send a very very long frame (traditionally the PHY's
>   'jabber detect' didn't always work) you can end up with all of the rx
>   ring being full of a single partial packet.
> 
> I think you need to avoid calling ice_add_xdp_frag() when 'size == 0'.
> Then in ice_put_rx_mbuf() unconditionally call ice_put_rx_buf() for
> zero length fragments.
> The comment would be 'zero length fragments can always be reused'.
> 

That seems correct.

> The zero length fragments almost certainly exist because the mac hardware
> advances the the new buffer expecting more data - but only gets the 
> 4 byte CRC. So the zero length buffer contains the receive status.
> 

That matches my understanding.
