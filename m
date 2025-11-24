Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4531AC81DD5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 18:18:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9014180CB2;
	Mon, 24 Nov 2025 17:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u-q2LF9cTdYj; Mon, 24 Nov 2025 17:18:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0248A80C5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764004691;
	bh=Qlch5yKtapCJe0tqTJA6kWR9WdJoj2i+5c/tmycBHJY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FPn+3zuIZFhewdKKgGO7Tndnxllmw/23/hweRlSRDivB33KFvdRUxJG6ulUYUv+gg
	 /PSna8HmFo+wncghBnyj2c7mc6a2HZORRj+ROS+J5Elh+JYvkAPOv8zFFjtdKbyM7N
	 lEklHn5ZuLsmPsG+8YOwZ/fMhC6fIIXjXWsC98kDBl8730T4Nj+6Kxzo7HxCI3ZrC1
	 YaA5fHmrHsdpPtnjSe6kGsZi6hEvDE47zLZNzqAJvW5GhiT+YeAXzvAZcAEz4vkSck
	 9adJ2w0IxGgtToiKtyzbtsM0xnE6LC7DSq50M1IDEi3yH6RyCfhoWd8lGbSCDpJzpy
	 0CIU+C2ahg+ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0248A80C5B;
	Mon, 24 Nov 2025 17:18:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8096134E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 17:18:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6643680C4A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 17:18:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EWQXeRKJFsjX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 17:18:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 807CB80C36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 807CB80C36
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 807CB80C36
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 17:18:08 +0000 (UTC)
X-CSE-ConnectionGUID: dhuBmWZHSC2IPnA+GNEufg==
X-CSE-MsgGUID: LroyUy1GQZqDJGnVAW0Wyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65892046"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="65892046"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 09:18:07 -0800
X-CSE-ConnectionGUID: 5XslqXZBQT2htwOCgvCNNg==
X-CSE-MsgGUID: PA5V2g0mSACOW5UQ6NSEqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="229677332"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 09:18:08 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 09:18:07 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 09:18:07 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 09:18:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VihBfHl0gQReEOk9BmRo/07l5jQsc5fBNzfurxPOtal0jbMNGYVkshfdlF8adbytuIRFjetSqOEdYNLy3XeboeMDUFdjCJQIasInyw2xKh15xsaM02oIEPeFad5aYnM22FO0MX/HRPz5YocP6J2mtJY5fV/GKqnvS2Iubc7codtZSmQfxZcAJ+ITcy2iP7ZPeGGRps54R6G4AJGoyl4Fc6XxyiU1CQMcESEuE02L7psREcglc1xxLizIJBm4wt9Zqiy4K5XxG6SZSrvPi+vlujYlh2SYqQSgA5XssjZyMjnuTxZhuqp21S7DR+HwqNGGyZDhrSigIGqHZmXXNrE43Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qlch5yKtapCJe0tqTJA6kWR9WdJoj2i+5c/tmycBHJY=;
 b=bZ6N+2KtKqPkx6i8DfaNGZUaXexhf1GlUmNqcujZAEdQXNV5UN/iz0aW5bYzyHBJslO52JlmB09gK8qEsQPPGLElhqKNP5r2Tu1nvIjybbRwQp3N2Zj6HXa2r7inKbnGnvcH6dg0oadk5x/S/lcgto3I5lI/NO+BHosbMlsmDNHw5sJCzmFcOZfXs9gkWbbHhNvAfxDZUtJBgb0xP+HPD83+EYIRfm/ArR8g7Cyxl0hY3zc/Y57CgCkHJTG98040NSKt6L3/QlQxNYhLXsr9+oBnJPWRE6JGUgGDq1EA9L0DO5u2S3akY/GaxMPy6qNSaNeGQvgjrOKdzqKwHPMgfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5917.namprd11.prod.outlook.com (2603:10b6:a03:42b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 17:18:04 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 17:18:04 +0000
Message-ID: <c7bd3f03-fa2f-495c-94cb-8e310608cee6@intel.com>
Date: Mon, 24 Nov 2025 18:17:56 +0100
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jakub Slepecki <jakub.slepecki@intel.com>,
 <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5917:EE_
X-MS-Office365-Filtering-Correlation-Id: a669c498-29cb-42b5-8776-08de2b7d6d6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVg1bXJRSXNPWnBpeUhDc2pBRlVIN3k4R2VMZWpGSTNRQTFuZXEzRHcwWFpD?=
 =?utf-8?B?VnhSZThyeGxQUksrZWJRTVNXRFFwSEtPUjYzb3NnN01mNkxEUUJ6UlB4azN1?=
 =?utf-8?B?SDdZTUl6OVdNcnQ3Q1Y1a0dodklSRk1ldjQ2NVJwZEhkK3NOdFplTDd1WnVR?=
 =?utf-8?B?ekVLODRXeGJiRXVCRFJoTEdhWUtuSE83Y1NMMXNsZ2RVbjF0VjRUYTNobmdE?=
 =?utf-8?B?cDVzdks5ampjWHpZMEd5SGZERGtWMDZodTVsQXc0TVVKdERFNGEySWlZNFZz?=
 =?utf-8?B?M2g2L3YzaGhKMXVTYTlXZEZXMjYwUG41eGFqZ2k5YzdlWWJLNTVhMktJZXVV?=
 =?utf-8?B?N01sblMwdGJUems3UWFkY0wvRC82YUEzSkJCQ29ORWdWZDFRZ0FQMnFsZVMx?=
 =?utf-8?B?S1pqOEt3QnVESGRNSUZBWVlBdEo1L2RJUFJDczNtRzJZdmFrZG0wcDBTcENn?=
 =?utf-8?B?Q0ZiOTNJM29hYzgzazdEcXQ4eVFaTTMwMGYwZkxueTBEczJNNFRzRnF5akY0?=
 =?utf-8?B?R2JwdmQ5VVBrVUNxcFE3VkRsdTVCMVRqcmtYY292Q1BXU0ZnZFBtWTdsQVh6?=
 =?utf-8?B?WjdidzNzNm14SmdvMXFuMkJ6VDd6MzNhN1h2NUFKL3pkVVA4ZmxBZ2dteEJS?=
 =?utf-8?B?Z3lDZHhaWHBLTEZ3SDNkN0tKaDM3WVA1MDRPeVB1K3UvdHd0d0NPYmRtc2NC?=
 =?utf-8?B?UG0rcmVvSnlwS2lGelM2blYwalVYMjRMUkw0ZUhuQ3VPN3orNmcvTjEyYzBa?=
 =?utf-8?B?Z2xXclN3Q3FKcTd4RFhjcUFUcUFMQ0lRQ3dJeUpONlJUczhRMEk2bThERVVh?=
 =?utf-8?B?bjhnUGczUHFOZnJjUVh4Z0QzS2NaSE80aWNSd1ZqN3lqOERURERSd01kUjhn?=
 =?utf-8?B?ZTlBK0NPcG5lSGVaR1YrQWJTM0pTckNBSXpqUHhmMjJDc3hWc2ozMnpKSzIv?=
 =?utf-8?B?VGN4TmRWelNDWTVqdFpPU0lueW11ZndudG05SzAzR1AyaGdqVHRFbUZSZG9C?=
 =?utf-8?B?NHFHL1NiNHdLYnlFNjBUTFFFcGxCYVZDczZ0QmRJRHIwZGtRMkZ3S2tWbWpw?=
 =?utf-8?B?YW5ENi9oWjg3c1BxenZ0SVpUMmNtZ1ZuVXVQRGxnRnB5clN5YVVWZitkM0xn?=
 =?utf-8?B?VkhQcTY4RHI4WmpRamNmTmZtRzNHcm9IaFlIaTFqTmRpZE1HYXRBUjkzVW9Y?=
 =?utf-8?B?WlFrVHp3clQ2QkwwRlhjRlg0QnBZVSszQzZXQ2p2YVRZcStaRjRWZGFxOVdL?=
 =?utf-8?B?ZUxYb2lXMHRuNzNJT0FBMi9NcFlWMGxLcU4zTlZlVUJrN2lBa0V6NjlVOEJo?=
 =?utf-8?B?MmQ4Ulc1dEo4UWJ1S2taZjVkcjlsdk9xUnZ1Z0RmYjJIUVBtWDdqVVRjL3RV?=
 =?utf-8?B?WjNuVDdwKzdtQWdjZjV1ekdOWDRHQmJpeU84ZDlBcDJHL2dRaXpuUjBBZmcr?=
 =?utf-8?B?UzNabU93eXRsY3pveWtHcEVEV1orOU1lOUMrM2lOUGpidGhjaXJVNCtmQmVB?=
 =?utf-8?B?QnNSR0Q3OVJrVnRRWW1GakY2T1RXLzNSdXE2N0Q2MzFDempVdmFaRDNKRnBk?=
 =?utf-8?B?dUcycjZPdGZSVDE4aVZFcGNGMDJLVFN6amcvcWVFekgxTTRjTThYU014eERo?=
 =?utf-8?B?TTJkNE40QkpkZlcxV1dHcEg1VmlIcW13RkpCMDdITTZZNTNPL3I1M3BYRzRq?=
 =?utf-8?B?dEVZSlgxeEF3aDRJc1BKZHJ6dXMvRTMxT21TcDQwR2pCL0dlVlpOTTRUWkFW?=
 =?utf-8?B?OU5EMThlZ2lVRlRCYmNIK0doUk1mYlRTYUFqRXBTbk1wLzNMakNvOG1QT0dy?=
 =?utf-8?B?R2pWbm12L1dacGlIbkh4VzNkREsrcVMzMGdaWDg1ajMvc3IwUVBsQTdqZzhL?=
 =?utf-8?B?bGdsOGpEVXpjYWFIMElXcVdKYkhJazIxOENNOXE1c1VPK1p5MWZ6bWdpWllJ?=
 =?utf-8?Q?9SrwGNbr323J4InxucRI3m2PF5E5bTWw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHpkSzVMMThKZHlxK1luTlRQbzRib0g4Ymp4Vm1BSFRObytVMDNQckc4dGQ1?=
 =?utf-8?B?SEpFWitkL081dFhxRHdEZUs1clkyMFFDaVNHNU1vN2ZpQlhhN2IzOEJadjc4?=
 =?utf-8?B?Rlp5Y1I4bjlVZGg2WHBDRTBnS0tJd243RGRpNDRVRTZRT2pVZkQvbnNaLy9V?=
 =?utf-8?B?MkpCcXQwR0hOZjVCSVBTSnU4RG9Yd1UvbXZFNEFBM1dUR01NWnlVQkxuS3pR?=
 =?utf-8?B?SEdrREEvc3Mzem1Rd2gwU0dFRksvQkMzUEhBN1dNdUxUbHdTcnVqaGo2RjNC?=
 =?utf-8?B?VkhmcnZTaStkYStDdFFMM3l6OElkS2V3TEU3aHgwUHd1dW1paktDQkpWM3Z1?=
 =?utf-8?B?MDZma0t3N1VRSVB2TE8weDJ3TnBHUkovaFlQSjFwRENUQ2NQUGdnQis4d1Jo?=
 =?utf-8?B?Qmw3Tk1hdDhlZnMwbHlmVFpmdDhrYUd1VjBDNFh5c3R4aVdTaE01Q1RUR0dn?=
 =?utf-8?B?R041clN2ek5tdWlINmYyM2ZoNzVhbFJvSWFQUWhhUFRUWlFxWFZQSFpZeitr?=
 =?utf-8?B?dGdYTzZzRkdMdjUrdndBd1o2SEVDM3NETDZLZ1RKcUhSejhDL0IyVi9iUjd0?=
 =?utf-8?B?aWtER1lhSkRsb0xyRU50ZjNCVDhOUHlOa0hLWFQ5ZE8xY01qZDArdDB0QVBU?=
 =?utf-8?B?KzM2eC9ONWlhR2sxOE05dDMvMkp5cHhlSi8wd0o4MzE4NUxUUGRmZ3YyTXZV?=
 =?utf-8?B?cDB0SkJsdTczVjM3bS9CSkR6NmxqMThpbnAyT0JsLzV5VlRMdEVjS0lTU0J3?=
 =?utf-8?B?RXk3OEdDZXFON2cvOFAyQ3BBVnpWTUV4dlZOclBFNHB3anc5dFFCcnBkN243?=
 =?utf-8?B?eUpNN0JEQ0FMQ0U2UW9kNEZORUtXcU9OdHZiSHQ0VG5EVzdURjcxZDFHV1hX?=
 =?utf-8?B?WGE0M3pkNEZRVGhiZW9sbStqaklYdUllQ0NzVWNHeTlaZTNpUG9pOEQ2NHcw?=
 =?utf-8?B?Z1VZMXZwUDZlZElST0w2NVNkT1hSeDNOVTdtNC9TbmY3Q2JwZ0lHTi94R0tY?=
 =?utf-8?B?OE5SRXBmY2p2czdFQXo1L096OEdMc1dxbXFucm1lNGJROExYdlFCZVZBN1hM?=
 =?utf-8?B?N21GRVdta2dVOGJQdDlGbzlubWZWY3RrQlR2eWNNNjYwQktxWTl4OG9HS2l0?=
 =?utf-8?B?cXo1UlhlcmJEaXdDOFZtalVXR2w5S0EyZWs1ZW9hK21OR1RwQ0JSc0lMMDYv?=
 =?utf-8?B?RythajM3OHdubjBWcDFKdkJOUEJWSDF2alZlTFdlYk9LNWZzNDBaRGM4T3M3?=
 =?utf-8?B?YTQ5djlpUTd1TkRQQkZDUmlwK0c4dGZzbFJIV0RmYW5mUkQ1dlFWajZqblZ6?=
 =?utf-8?B?MHNjNTJCQmhNdE5CNjVZZVYwUU9raXVnRDZHcnRzcGR4V3hGTjFCSElhc0hZ?=
 =?utf-8?B?c3lmWjlsODdERkswTkQzVWM1VEw3QldPakJudlVGYksweDFRWEdSenRNbWQz?=
 =?utf-8?B?d3UxMFVwMEd3MGliVy81NjduWTFoa014TFBUS3h1ZHVkRmlnbzdLV29hOWll?=
 =?utf-8?B?Yi90RllHRFpMbzgrTnhQbHJhcjY5d2I4WlN1Z0pEYjhRdEQxZUdlaWdrQlEr?=
 =?utf-8?B?ZnZER1hhL2szdU4vWDNxQ2tFNy9pSWJFaGJUYlFSOTBPUWE1NmVYblVwWTA1?=
 =?utf-8?B?L2VDdm9mM3RTYXd5VmRHMjVxK2FRLzBKR1ZjR0x6alJwd2hmcGdzZmkzdlVs?=
 =?utf-8?B?Sk1GTDhGT2lCaDFKSVNpODdhdXUyT2NIV2VjOHdYYUl1THU3UEUvc0dnTVk3?=
 =?utf-8?B?Q29raHNwMVZYeFFyNUE2MEV3K2MyanNBSkVEQ3FERWFPRmZ5TFpPRGJGZ0VQ?=
 =?utf-8?B?djJRYWVodTZjMjlWNGdIYnpHSVUwQ3BzcnpYZ1l3R04zalJFZzdVZS9TbUVH?=
 =?utf-8?B?b01EcCtEOCt4UWlWSUxtSTYzaW9PeHhrQStVblJIVXZETEdpY1dYU0dlVzRN?=
 =?utf-8?B?cUJyK09pYTZpWHJvaE9jNTZwZ3FmVCttTWRuUUtaNzNyb2U1amRBRzBSZjY5?=
 =?utf-8?B?SnhQK29yWjJVdWwrZWJpbFBmQ1VROGRob1YvbDlKUlRaVkpxTWNBQ1E5cTFl?=
 =?utf-8?B?dW5BK2xLa1JLWHgyOUN3cmluaUZhUDNCSmZ1b3VtZzZ4ejRJWnNETjhjQm1K?=
 =?utf-8?B?dXdMSkpidHhjMmQrUXJmK1FhS2lza1BGaVNZTzUybjhyclFyTEpZTHVhbzlk?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a669c498-29cb-42b5-8776-08de2b7d6d6b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 17:18:04.2640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: itf2V4GS/l35vxQV8WT65A8H3twP+wU6BbJpNIT2a40NMHUKvnriSklU8sdsC1JzDz4L/ch1Rnb1BLSKdJLgxHJGmzs8KBRAJ/b2u8w5Krs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764004688; x=1795540688;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WMIjo14BhP9f1zJGi0pkX4YlnoJ7pphu4zWQw+OdWxA=;
 b=btVV5XHA4MMngje6NVNkn7/zy73WkmwAg9Ic8vb/3mo4zLzjLZfGmIhV
 w9JQOwz+7qCXjhOIAO1DRaFBBj9cjp3l7WoxDeAT0HysWGC18nrSV3+Uz
 gDaDdNjnRNMx6qP5OGDi7MQDHQshR0XvEARmb3q2BmU1CxuTnW1EMw0Iy
 zKSYnt/ThHrFlBWtqnrO9DEUyDdMb0VJ2qzKyCBkqTMSQRssMtaut5nHB
 y6NZZNu90EnRaMxGsKbekDUkPhvHB2XStYEJ8iXqVCnLTwWq4bdSK57HN
 V0D2xaJ03bAe2UVVmsb34mGk6jRMBX8cfEMtfPxOFDeJ/F09SDvGbtOCj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=btVV5XHA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix broken Rx on VFs
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Mon, 24 Nov 2025 18:07:35 +0100

Ooops, missed a tag, sorry...

> Since the tagged commit, ice stopped respecting Rx buffer length
> passed from VFs.
> At that point, the buffer length was hardcoded in ice, so VFs still
> worked up to some point (until, for example, a VF wanted an MTU
> larger than its PF).
> The next commit 93f53db9f9dc ("ice: switch to Page Pool"), broke
> Rx on VFs completely since ice started accounting per-queue buffer
> lengths again, but now VF queues always had their length zeroed, as
> ice was already ignoring what iavf was passing to it.
> 
> Restore the line that initializes the buffer length on VF queues
> basing on the virtchnl messages.
> 
> Fixes: 3a4f419f7509 ("ice: drop page splitting and recycling")
> Reported-by: Jakub Slepecki <jakub.slepecki@intel.com>

Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
> I'd like this to go directly to net-next to quickly unbreak VFs
> (the related commits are not in the mainline yet).
Thanks,
Olek
