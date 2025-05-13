Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8E9AB57C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 16:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 868E182117;
	Tue, 13 May 2025 14:59:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dKq4O1JBmTqE; Tue, 13 May 2025 14:59:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C104E8210B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747148364;
	bh=a2kyzruiWYPH2xu8sVAfiFSAoYXhnKzCxRTxptp/Umk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=58XhWf+ksHSffogZDaK4jrN8BNcCXNZXflGLvSlIpz4KnMqqd5zyq59ezdQl4blxy
	 Jwr4Th4JVhRXg52/XSvhvPbfI7sFhJBWmNqmZAoh4opPHiKH9w+h9N4Y6cCd8WQ4D8
	 br8+ueSM1mkbUIyM5ddwln3oPYqNMs+TPTn8O766MHPDVCgl0acErWn4Dj1Is4W2KG
	 AzAHep2r5DJxpyHcXdMLM1wGtSUfwZHSIAJQ5O+2OVycnu+huE/rfD9pFwn55+qPxu
	 cYX+/B6T0YEkPToxvKWjhX+A5DMUBNjkMSQzlOBl7Po6QIw8A+O8Cf8gYUC02oy1Kn
	 0pUXJMsJEopHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C104E8210B;
	Tue, 13 May 2025 14:59:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E3B5153
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 14:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2388060A97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 14:59:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9qUT2F4ZVOJW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 14:59:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2A78360A7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A78360A7F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A78360A7F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 14:59:21 +0000 (UTC)
X-CSE-ConnectionGUID: iWXqjhAzQTWTLz6w2HqwVw==
X-CSE-MsgGUID: nuH5M0/9RteaxyE+B4/yYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="49149362"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="49149362"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 07:59:20 -0700
X-CSE-ConnectionGUID: mXTIOYl7T26847Dma3U3Xg==
X-CSE-MsgGUID: aMCL7o2KSU6gfNL69i6nvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="137469774"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 07:59:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 13 May 2025 07:59:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 13 May 2025 07:59:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 13 May 2025 07:59:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b5y6ovEmesauGqDVNuw3dmanlMWG8VUlcX6PUWgmbrQB6Yj6AnBxyAQBBdGBBA1d/q+zOkVQYzaP8CzqBiD6n4wRytiqkVhuQaKxndH9DmFo0o+bqqt7IcKUig3OA++w0FFatCcUixskLUxLk5ARrn+3U7I+VQvqgDyAAl9OObCd6Y3G5oBBiS9va5eo6IBadtRQdC9O6j9rI2af6Fi+I6N+rZQG/4zVOEWPSa/0EWtdWdJNV33RUsl3OrfoGW/hEdspqE9HrHbl8Jr9RblQlRShuBk+0VBgedylCEMtGvOXcFgz5KwMRssJBEGoa/UTcZAxZbQqjjl9T08kCSUSpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a2kyzruiWYPH2xu8sVAfiFSAoYXhnKzCxRTxptp/Umk=;
 b=shK9V084XJOo0fB4QcW+VHYMa9SnQgCe/XKCYUQgyTsRE24T/E2+Y2WJZu0ZWXCzbq7+ouYs5aEZkwaZn2eCgVR6dN5Q2vC30E406J+pRA5YKDpkvDZpHwpovI8EiHSRTdxTsaW0I++685af3TBad+sBoyHsVXn9KwaJLssmNdEjnrPtlaQNdt77FFwgqw32Z8af2G4xFmelRRmZbF/jDxg5Qn09068mc2zx2keuKSu0epWb5XxbG+OFb6En29s1X+gu8rFzch5/PSuXK+lK7sEFJgb8Q+HJud2ZXppQLuVE5Y4+Nogsc29xdirntDv6QJX8zjkX0gAjPtiQ2OXXTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS7PR11MB6176.namprd11.prod.outlook.com (2603:10b6:8:98::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.29; Tue, 13 May 2025 14:59:02 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8699.024; Tue, 13 May 2025
 14:59:01 +0000
Message-ID: <25e39e3f-7a3d-4902-b000-0d7f969089c5@intel.com>
Date: Tue, 13 May 2025 16:58:46 +0200
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
 <20250415172825.3731091-4-aleksander.lobakin@intel.com>
 <aAozJ5Twq7GidhHr@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <aAozJ5Twq7GidhHr@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0090.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::31) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS7PR11MB6176:EE_
X-MS-Office365-Filtering-Correlation-Id: bbc18169-f09c-47fc-55f4-08dd922eb215
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U2NabGRIYkthTGVFTjI0cFVmMkFSTHBDSlMwNVVkZGhiTTlPUHl5Q2lpTkJi?=
 =?utf-8?B?NHpXOHJMNnlHZDZjdGN1cWFhZklRRlpUM3N0ZVdSRVNqTW9nZkNFQm5NNGE1?=
 =?utf-8?B?aDdnc0lNT2FHYytBNG1tTGMxeVV5TnRKemc3SThiZW5iLzdnYlV1UWQ5R2Z6?=
 =?utf-8?B?Zmw5WERYTmloNGF6ejdGMU1hVWpCVnh2N0lKckZmaVR1RTRYSWJqaytEYk9P?=
 =?utf-8?B?UDJOOGtZQWR3VFdwdUN4QU9TNG1TRWZoLzR4UkovRHI3OE1kZ0R5TEJzWWZa?=
 =?utf-8?B?V01SU0I4dlp3QTNOalpvZXpqZnh3VjJoajloY2p1OGUyWWl0N1IxMW5oZFBV?=
 =?utf-8?B?UlB5S2wwemxidnhYRUNVZEdxakxycVM4YUZVMVA5SHh2UmhxK1J2TDU4bkRJ?=
 =?utf-8?B?dGZqNnhtRkliRGxuQjNuaWtEWmFtNlhYSkVCSk1tRXZEaUR6SldNOEIyWHQy?=
 =?utf-8?B?U2VuSkZqNjFzUVI0THZUWkdvOW5Ydk1qUnZreEdCT0Q4VjRZUWxSMXJpdGJU?=
 =?utf-8?B?MkdDTE9heURxWUlCMUJ0MGx2NFNMWk1OVk5lQ2s4T2x2M0hERG9tNzhLYWo2?=
 =?utf-8?B?Q2s2cmFzUXJxbzZJaFNneDZTYjFhRnRjVDVQRXhseGRhdkhzc1dpenNDbnVj?=
 =?utf-8?B?NzZqSWRNUktUMlhKT2pZVXJ0K2xjbkpRbnMzaUpiazVSV1E3WUEwRnE1eWlu?=
 =?utf-8?B?SWlKM2U5ZllqdWpGZVF0d2xVV1VrcVJpSVNlU09sVWVtUXV3MFZISElDbkJn?=
 =?utf-8?B?Sy9BRkdoenJBVi9GYXJpSVMxdEQzOEFiVTNxNkdsbXQ1cThIOTVueS9JNkk5?=
 =?utf-8?B?SmJaTDk4MDBEbEZ6TzZQVjJ2Z0hJeTNYVmsvNm9hS2MyWWhkQkMyS1h5Rk5V?=
 =?utf-8?B?eXpuWUx2MkxtOTJhRUxPcWJsQ1czNEc3azFyMHlDbzdSWFNNZjZtT2RqNW5q?=
 =?utf-8?B?N1VkbVZTVHBxVm9DQWROOEc0aEdPbjR6YktDYzZHb1JBay9pcllmcU9jMDdp?=
 =?utf-8?B?OFBOT1BqQnh2WkVZZVFtanBXeEEwNnVFby9TMmtPK3BtbTdqNHpqejd0NDBv?=
 =?utf-8?B?bCtDRzY4WUhWSlRGUG1yWFJ4L0g0bGp3cXR6eGZaOXo1dDdmSVN4dDlyZk9r?=
 =?utf-8?B?bC9KRXV5RmNqL3VpTW5MSGI5Y3Z4aVZoZkVGcWtRUktvbEZ5OVNpb0JGNWxz?=
 =?utf-8?B?WkppZi9FY2dqaVZ5ZjFZZ0Z1YVZwVDcvNmIxRzBLNHVtaXc1TTVSQjdMT2ZL?=
 =?utf-8?B?cEVMcmc0d0JyUG1xUjZ5azFkVzBHcnhtQkhsTzB2QkkwTktWR0tpWnpYcjRm?=
 =?utf-8?B?UEptUlJGVTJGeU91U3pjbVhnbDRWeW95VkxWT0x1clZaOXJ0UUhXcWRlbzN1?=
 =?utf-8?B?dFVPS2pkYlhUck55SlNHb0xKSGZHNWJJOE1aeG85NVZzUS9nR2tSeWxXM2gz?=
 =?utf-8?B?ODd1cTU1QXJlbE9ab1dncXdSWHVocEk3TmpCRXc0U2VhSU9iMktJbDYzT3B2?=
 =?utf-8?B?U0x6ZnF0bkJyc3FCWnFKY2g1YmRaemZiWHJDT3h2c09veVFFMXBuWUtxUUQ5?=
 =?utf-8?B?ZmRUL081R1E1US8ycE9oVWlWcXYxRk9Gb1hDV1ZKSDByNlFZVDhMZ1EwYW92?=
 =?utf-8?B?NjBNckpIc21EVTVPZ1o2b3dCQnFYTzcvT2hta1VVYkhrRmFibXo1UTJIcWZZ?=
 =?utf-8?B?YlpLY1lpYXcwSDJWUGN6V2hmODZBbjB5ZDk1OTM1MjNXQ044ZnZzRWl6cjYz?=
 =?utf-8?B?RHVRb2l0Q0QzeHIxSnNIRldQQ3R4OEZFcnlqejJtRWFJYVhkaWVsb0I3bks3?=
 =?utf-8?B?RCtYanpGMXpTVXlJV2ZXb1lQMzNqejJhdUhxM2V1VWQ3WWsxdEJLeHNLUXNq?=
 =?utf-8?B?bUxkdHc5a1lJKzI2djZ3NWM5MHVrNWFVQmpXaFhPZEVrS0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2RhMUxQNFA1Sk5peDZqOXk1S3MvTEJBUW5SYnJGNjM0b1Z2aTdsN3hUd0gr?=
 =?utf-8?B?cCtBNHhmdCtkOHh3dnVmTm4xMEtybEkycUwwNm5JeUxZQ3J5dXNlYlFuSktP?=
 =?utf-8?B?VUxtcVpObFdISUdXMjYxbWVZMVFwQno5RmhYcERjamNrWTJ4V0hZTmZSeVpQ?=
 =?utf-8?B?UFZzUHJlTG1aUTcvdmZRUDFZSUI5dHM4cFFJZ2cwTDRtL3lseEZZRVNWR1FF?=
 =?utf-8?B?a0RpaXRaRHdNNEk5U1YzS2dLcFdvaGM2V1lLYkZ1UVRXcWs3NFBMVjdySktk?=
 =?utf-8?B?b242bW9hMktXSmI4ZnJlZXhaa1oxSytLN0hsMVMvMkxnNEtxb0hOdmZrN1FK?=
 =?utf-8?B?QVFzWkYzZ21WcnllTmVnWEcwamVwRzY0K0ExNVlQK2NHdUhucHhpWjQ1NjZN?=
 =?utf-8?B?Z2JsMFJqWDFYVjV2b05mMGtOZnJjVkxZS29DYmlXZHJNenpFa3hGMlF5NnB5?=
 =?utf-8?B?eFloVnNpdVpweDZHY1ljaEVrRGpIa0xNeGZyVG1IcnVocDJGSWZJMzdSSnNY?=
 =?utf-8?B?MjAxa3d0MEdkMW9wWkdjZ0plRnRJQ2l4SWRCTzlOQWZ2TmlCeitVUFQyVnlR?=
 =?utf-8?B?QjVXazg2SUV6akZxb0VudDM4OGwyQk52RS9ydjh4SUZpQkdkL3A2YkFvQ0hk?=
 =?utf-8?B?TE4vTnVIdUluVTdPS2h6Nzh1NlkzdXBuMXBVTVdORDc1WUJCMXFGY1VmUlcz?=
 =?utf-8?B?Vk9kdGIwdFRpRWdaaGVNZDlMUWZhQmIxb2NyS1JNRmxHdk1VZitkSFdFSXQ3?=
 =?utf-8?B?RzlmY3NVd0tNc2hDY0lUbFVJTUQ1RHVxc0YvUnM4Y1dtZWZjTGtlbjZKTTJO?=
 =?utf-8?B?M3pYVE1CZXJpalcyUUEzVlU4U1NGZmowKzlKRWdQVEFBZis3eVM4Z2pFb0pD?=
 =?utf-8?B?Q2dPUVVXZDQwZnE4N0VaU01wL1ZtZmwvRzJmdFk4UlBDMlZkQStQRWVzdnlT?=
 =?utf-8?B?ZzQyWUFyd00rQnJJcnFGYWdGcHdEa2ZwclJyMTBuSS90RDUxV0pPQ01XS01s?=
 =?utf-8?B?LzZSenczN3N3T2poRmVHY3R0cjI0WWVPOEZSV0ZyVEFDcndHWUtDYmF5YWRI?=
 =?utf-8?B?aE1mTThMSi9taWRCZG9oMFI1WFI5djNnOGo4dXI3UnA0YkdQbmQ0NmtEa0Ez?=
 =?utf-8?B?OGNSMnp2TGRVUkpyUFVpdHdaQXlXZk9yN2NuamdMcjdYZUNSVXRuRzVjSVlX?=
 =?utf-8?B?QTU1VmY3bDNmeWpEUm1odkRsQU01UG02TE1kVDROOWRpZXhzUUNhc0k5cEYw?=
 =?utf-8?B?cXlpbVcrQXJ6Y2tmQlVGR3gzUnorVytXeWNXSit2SEVMSjYxVDlROW1aVUhk?=
 =?utf-8?B?NDBnNUF0ZTJIenhENTdoT0twTTVpZkh0UTB5dHJHK3hOby9wVTFGMEdxTUFV?=
 =?utf-8?B?RFJCOUJGYWVpTHNQVk5PUTR4V0JpYjFrQzFmRlYzRmx4dWlVNS8yUHloN0xL?=
 =?utf-8?B?ZlBUMEkwVkdGWi9ldU01blg0K2hYS3QxOFhTM0pVQ0pZYU1ZMDVPUGsvVXcr?=
 =?utf-8?B?aHZhU21iZHpkb1phdnJFWlVGMldoQS9QYXJyV0VKZnlSVTd1eUF1NVVxVGhm?=
 =?utf-8?B?QkVoOWkxczFOWkJqSWxiVitRaDRQWTlkUTFnemxha0lObnFWZlBvSngzRmp1?=
 =?utf-8?B?Vkd2WUFOSnNiRHVnRUZxQ0lZNUNIM01vQkRkOExNMHBqOHN5WVFibzM5aGkz?=
 =?utf-8?B?YWNqWWpLMXc4Y3F6ZTk0ZXB4RkErUGdlb0o3b0J4QmdPeEg1UXFnUnNPc3Z0?=
 =?utf-8?B?dCtMMjBnSmNUNmNib3NCbnRKZmplaHl3TmRJaWtPRUx0d0k3aGxpbTcyNnM5?=
 =?utf-8?B?Q3VseGcvcndIcHZ5a0FxcWF3bmpvQTBDSVZ5QlE0bVBVMHZia3NkMTVmb1Nk?=
 =?utf-8?B?UEtFK1VRbFh4VUNDbnhqdHVRKzhIelZTa1dGYkZsMXV0YUxzcGFrdmV0V1F3?=
 =?utf-8?B?MXVZUG5WdXdYNGVnTW44VFZxK1RwZ3BkeC9zcEw5a1VEbnZTOU90K3hHQUFi?=
 =?utf-8?B?MWlsUk5DcXFvcGJ2K05kVkU5aEZpUXZ2dWpvYjlIQ0RwQVBFMGlDWnBFMG9F?=
 =?utf-8?B?S0Z1dmcrSkJBR1ZqTVFoc2ZHRDZ6WTJIM0Y5MUFJU0FlZ3BBUEFuWk54WkRU?=
 =?utf-8?B?cGY0d21rdzFONjh3b0J3bmwxZUFxNURLVHpwV3Q4dkMyQmpUTUV4cjRheU1D?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbc18169-f09c-47fc-55f4-08dd922eb215
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 14:59:01.6153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s5kZuaThKN550q0fUdLSZubDqWEndl9cnvNrrCR0uWrATtWowakAQV/n4VdZPh6dn9Q1KforF1mcZ8T40BBWpVia1LVrto5R1u0s2lyFYjg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6176
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747148362; x=1778684362;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aFSjZ0CZTPigteIWr6HOSTMz8/4usK2PmLYia3qGMT4=;
 b=MCQ9PXLyojIJTgRuHYNxps69CYviAhndT2t55VGgKypJlHJ0onyonZAD
 Dh+IMI5kcCWNdPqnOVy9RIGEvbMLKxWua1vV3Y7ExfVPDhx/wSBU5eY7W
 75YtWVwgukWAGA9KHGi0RE3xzM0SbEL2JmhvCyV1mZT5Ho9oh/Je6aP99
 2Et5JO+6lMmEJCf2iW5MfxVKFKsWTgWr8auWSOjm7GJO87lDdjONuwXkC
 ppyYOdCOYPghd5CMc+xc/mkBJEwv+PwD6WbmmJmk4Nn9OKF5oujIj1+Pk
 3F+5md1I80V+H4g/Vm1SIt/KgmM9pceACKfSYZAd8nZ5gh/rHKiDSqb3X
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MCQ9PXLy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 03/16] libeth: xdp: add
 XDP_TX buffers sending
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 24 Apr 2025 14:48:39 +0200

> On Tue, Apr 15, 2025 at 07:28:12PM +0200, Alexander Lobakin wrote:
>> Start adding XDP-specific code to libeth, namely handling XDP_TX buffers
>> (only sending).

[...]

>> +static __always_inline u32
>> +libeth_xdp_tx_xmit_bulk(const struct libeth_xdp_tx_frame *bulk, void *xdpsq,
>> +			u32 n, bool unroll, u64 priv,
>> +			u32 (*prep)(void *xdpsq, struct libeth_xdpsq *sq),
>> +			struct libeth_xdp_tx_desc
>> +			(*fill)(struct libeth_xdp_tx_frame frm, u32 i,
>> +				const struct libeth_xdpsq *sq, u64 priv),
>> +			void (*xmit)(struct libeth_xdp_tx_desc desc, u32 i,
>> +				     const struct libeth_xdpsq *sq, u64 priv))
>> +{
>> +	u32 this, batched, off = 0;
>> +	struct libeth_xdpsq sq;
>> +	u32 ntu, i = 0;
>> +
>> +	n = min(n, prep(xdpsq, &sq));
>> +	if (unlikely(!n))
>> +		return 0;
>> +
>> +	ntu = *sq.ntu;
>> +
>> +	this = sq.count - ntu;
> 
> maybe something more self-descriptive than 'this'? :)
> this is available space in sq, right?

'this' means "this batch", IOW what we'll send for sure this iteration.

> 
>> +	if (likely(this > n))
>> +		this = n;
>> +
>> +again:
>> +	if (!unroll)
> 
> who takes this decision? a caller or is this dependent on some constraints
> of underlying system? when would you like to not unroll?

XDP_TX, ndo_xdp_xmit, XSk XDP_TX wrappers pass `false` here, only XSk
xmit passes `true`. In cases other than XSk xmit, I had no positive
impact, while the object code bloat was huge -- XSk xmit doesn't fill
&libeth_sqe, only a Tx descriptor, while all the rest do.

> 
>> +		goto linear;
>> +
>> +	batched = ALIGN_DOWN(this, LIBETH_XDP_TX_BATCH);
>> +
>> +	for ( ; i < off + batched; i += LIBETH_XDP_TX_BATCH) {
>> +		u32 base = ntu + i - off;
>> +
>> +		unrolled_count(LIBETH_XDP_TX_BATCH)
>> +		for (u32 j = 0; j < LIBETH_XDP_TX_BATCH; j++)
>> +			xmit(fill(bulk[i + j], base + j, &sq, priv),
>> +			     base + j, &sq, priv);
>> +	}
>> +
>> +	if (batched < this) {
>> +linear:
>> +		for ( ; i < off + this; i++)
>> +			xmit(fill(bulk[i], ntu + i - off, &sq, priv),
>> +			     ntu + i - off, &sq, priv);
>> +	}
>> +
>> +	ntu += this;
>> +	if (likely(ntu < sq.count))
>> +		goto out;
>> +
>> +	ntu = 0;
>> +
>> +	if (i < n) {
>> +		this = n - i;
>> +		off = i;
>> +
>> +		goto again;
>> +	}
>> +
>> +out:
>> +	*sq.ntu = ntu;
>> +	*sq.pending += n;
>> +	if (sq.xdp_tx)
>> +		*sq.xdp_tx += n;
>> +
>> +	return n;
>> +}

[...]

>> +/**
>> + * __libeth_xdp_tx_flush_bulk - internal helper to flush one XDP Tx bulk
>> + * @bq: bulk to flush
>> + * @flags: XDP TX flags
>> + * @prep: driver-specific callback to prepare the queue for sending
>> + * @fill: libeth_xdp callback to fill &libeth_sqe and &libeth_xdp_tx_desc
> 
> Could you explain why this has to be implemented as a callback? for now
> this might just be directly called within libeth_xdp_tx_xmit_bulk() ?
> 
> What I currently understand is this is not something that driver would
> provide. If its libeth internal routine then call this directly and
> simplify the code.

XSk XDP_TX passes a different callback here :> Anyway, all callbacks
within libeth_xdp get inlined or (sometimes) converted to direct calls,
no indirections.

> 
> Besides, thanks a lot for this series and split up! I think we're on a
> good path.

Thanks,
Olek
