Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEP/ACDS/Wm+jgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:08:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F894F61B6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 14:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 493B3811E3;
	Fri,  8 May 2026 12:07:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 76zpggwVSDfm; Fri,  8 May 2026 12:07:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3C348124D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778242076;
	bh=bQDaSqOe5eiO2CMoSKQCJc/fp8qEK5azey7hxM14PWs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fX12uQPDPsUbFRjLAaAtu5zKyRh5cty8HkzzIIm29iITTKCbbqJ4u4NLtp2pdyuAl
	 Jk4Bc0VC1ax1wVcAjREdU0znzkme621jS/jW5KkmsTaiDB9/kJxfaGIa/JSxPGi3xR
	 /kwdO4I+FWVYFXiS3n2Ol19FI2WYIzmarT2vYtTLNRYmJyQxAPfvxRMIkSFOCg9xrZ
	 mIX8LgqoKN3P0iE2u0FTPeXYfBA2cDlTXq3CXvMnxhBLguu9OZvwwOEcCL+O2WoyMQ
	 NUrwA7ih4cXjYETsvyYMaPO0hdeG3Q48oRt5rNnmDHYditeHjnfUOlj1x3F9XntxpC
	 Hx8RuHLl8kOGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3C348124D;
	Fri,  8 May 2026 12:07:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 913E9317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76D3B41B26
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:07:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X3Iqy4iK1Nhj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 12:07:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB1C541AAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB1C541AAC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB1C541AAC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:07:53 +0000 (UTC)
X-CSE-ConnectionGUID: nIekMORbQ9CBIZTBova8cQ==
X-CSE-MsgGUID: bk4WsbCLS+mn5gQLjZsXew==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="104667328"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="104667328"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:07:53 -0700
X-CSE-ConnectionGUID: rEKRAtJfQJaK0eWYmQT65A==
X-CSE-MsgGUID: lHhixdo+TJ2GCCMtpvJLjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="235917620"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:07:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:07:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 05:07:51 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:07:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PJRnWhCxX+bvdq892yM1/dkMTEnQLycSiUqv08NcUWdOrNY5mo0+uo4Q58MwHxZLw3PjzQbxYwxPdwuiJKspMnviufDWv6PavUJneSGKSiCHqMhekLGy/UUy3ceK4CkYfjH+QwHninqsyeq9+rP1/qmAUu0vbSv2JSig0Aip6g5PLTN8LLl/k5CvO6V3zXqzpGx6ar4AJTg9oQgYFiqJKgFZ31El0nhllSs7V5HnjSfU2yUQtpGwogqMDvNbA9jTW5n3hKxD2sV7RykPbkJfm7pJ3XB1liXRCAUh/f71oBw7Ugz17BuKWMGW2vV5vcPq4hoVIWS+PJpJeuUQolcwWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQDaSqOe5eiO2CMoSKQCJc/fp8qEK5azey7hxM14PWs=;
 b=UUoSt6f8ymyHm4Xcj1kF9q86Rn1wj/YPF9huw9vH8YTOHkYyjzvxaI4IErmVKFyjTSPnXsrTE6DEtvfHcUQe2I4wAAfdqmQkFljLiBO9As13n1jQmEGRD1d+8vF1VKpxr5hYFFmb1DSx+Lydar0IijHzsMyfOJIG+fGx9NyTCTBSCFLqiFJHAJFB4cEtftHbcJ4Cc/LgtO1TdwbnWLnLC8gDnqHj/6enzPbj7dtLBiPmCyRDXH7MxErLCxsrjAXDdtiB4m4zYvjn1CdPEMQAG1u16v5XyplrjoOVu2jUXCTRlq+F2l3GchrTia6G0zgyUaHUSgJQVqhZ49yhKvgNJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB5141.namprd11.prod.outlook.com (2603:10b6:510:3c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Fri, 8 May
 2026 12:07:47 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 12:07:47 +0000
Message-ID: <e4ea6fad-81e9-4ec1-91ae-61a6309f8a2f@intel.com>
Date: Fri, 8 May 2026 14:06:17 +0200
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@lists.osuosl.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Kohei Enju <kohei@enjuk.jp>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260505152923.1040589-1-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20260505152923.1040589-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB5141:EE_
X-MS-Office365-Filtering-Correlation-Id: f9746b27-9664-4156-6d19-08deacfa6b3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: UCJfbg2ZFOXmwistPZeH1RP9xTfCJl6ypdu647TrK/ldjCdfzpyx5ep4p5ZLzH3WmT5FVnoxAJ+Atzl7aaTJDLmihKB+PGmDpFKtOyCAgR3kJJZ8S6hBRQ5l29NDkZ2B2W4vzX4tg3pMpBe/qxKtv34FrtxGe3+ymx3j4Na6r19ln2PTILnhjJSCwTOAJOoE0b1pPZvU0wXw8F6iEw2xQJLzBiox3YxV19RCMEOxCQlpf0gge1Gpd6MuFFRbzWmUmDNWMBL8kUpkVBdyP7c9o07OmD876QdEDgQpmR0fIsnkCP6krbzpx3glVPZDRUzrHDXOMqwMdvJ2TGxEBrTuv9sIHYPItj70bTn3pqhgCePnUiDO22jsRVcVvjai0lgMLOgNFIJWQ5QS78WSMWwxZ28BkOcvAI6n68VxLfsa8SqwmGw0yfmmMP+D9Fw6/mFGzCNG1/dd/OwteBtO4wLE4nuIG9M/1lg7Pj1BlJhPpoY2X3LQgknKjn43VmaPGjQOHWRDeBNsWTSzkXKSrks+XPMlnycmOKI6mc4qj1ySn/cBsrI+hMrmVgvLSQVuZDiOBvyf0v2yCpmuVwZZjWDznAeKtds1qIjl3qJJzUERBJNM9KPLw8t1WemEDrjKmhXIeh7rviyAOvNvkbW9F+mAW5TUKkNDH0520rp5aiEZ8wVK1Ax4N4UHp9VTWbyqoC2t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm8ydGdkU01BWnM1STlPZUVuMUFBeDRnYTRTWnVvbHYwazBucGZqamkxTEdz?=
 =?utf-8?B?Yi9GK3BabEZFTUNQV2wvNFZOUUpQVlhXQW9ZME02VTh1U3l6blZmdFdLMmt0?=
 =?utf-8?B?VzVPb1c5eTQxR1BzWTgwTE1lcDBFaHM0UzNrUUJxTVl2bjFyR1ViZmhFd3RD?=
 =?utf-8?B?Zk1YbHNPRmY5Njhad3ltRWJRa0NuV3V4SlJUM1o5UnE2SG5CdE1rTUxMcnNm?=
 =?utf-8?B?SUZiaDRGWXMwQzhUNEVSUmk4OVNQZkhuY2NrWDBEMFBvS2pPL3Y2dk1KM2lp?=
 =?utf-8?B?Qjlqdk5VeHJDR0ZWOGR0aFBEVkF4K3FrRGpBaFFpOW1rQkVFMEI2dlc5YnIx?=
 =?utf-8?B?cUIzVDVnMlBnaUpDcmk4R2xtcmJHVmY1cDlkMW82aVB6bUQ3SW9aSkIzYzly?=
 =?utf-8?B?MDJpd0hFU2Y4aStGVlBBbHdlSGtmWXFLb2w1Y3d3Z3lYOTJjRll3REptNjh1?=
 =?utf-8?B?UDVzclBWZnVhOHBxUmJ0MVFuZ1dVa0MzazA2bzE5Qyt4R3hNL0d5b2lMTlhu?=
 =?utf-8?B?LytxRzJJQUx1eXNsVzZ3dlJmSkhCNW9IYm91U2QwaUlPaGdSRk43M0V1ZzlE?=
 =?utf-8?B?NTI3a0s1dkdNR3pCbHoyVW9Pd3I2c3pKYncyM2xldTJKRjM4cG5wZUUwNXh3?=
 =?utf-8?B?TnZkYmJVK2k0Q1lEMmNrakpkODdJaTlpNURudzNPa1piYi9EOEJqcmF6WlNG?=
 =?utf-8?B?Ukl3ZEFpSWg4RGZCVUZZbHJ0TkN5Q0pucTMyWnRNRWZiaGpjaDhQKzVYcnp3?=
 =?utf-8?B?VUtYVHBXMUVVMGF5M1lvbmdzZ2JYS2xPK3RTZlBZZVpIeDhFdzRQR1R4Ly9o?=
 =?utf-8?B?UlFXYitVL014K1hYcGppYjhBcXRYN3djeitSc0RTUGJJZkNrSTVWZmw1eG9H?=
 =?utf-8?B?dk9nOGdGNTdUNW1MRUx1WDQxS0xCS1czQjl0T0pWYkVCeWV1NFQ5TkVDd2Nq?=
 =?utf-8?B?amtJck1iTlB2Yk5Qa1hYMUVlYUI3Nk9ub2N3ZUZoeWwzaFV5eDA4T3ozN2N0?=
 =?utf-8?B?czRGMnkwd2VzRnBtdFluU1BjVjFmR1lxaFFKVGYwN3hhZWNsQzBXYmJVR2Nt?=
 =?utf-8?B?Z1dDL1UyVTBsN3oyWDNtZDQ3OGYyenpIYnNMRVJpTEFOMkp2VkE4U2VySkov?=
 =?utf-8?B?S09PdEhJZUFkYTQ4aTFnWm01S0M1Q0NMQVdVNE8vdDEvVitrdk5GelhXbUlP?=
 =?utf-8?B?R213Kzl6azJ1a2NmSTl4Q0Z6ekhMbVdJS0NmNERlZXgrdGExVTB6Q295U3FK?=
 =?utf-8?B?Y1VVenlvOXM1Z1AvY0lPR1pKTDcwTzc2MjJaUkpOWUpoZnBhbmxudVA3UTlV?=
 =?utf-8?B?cUpJVE9tSTRxcUVBOUl2M1RCQk84Q3oyOHl1L1BPYW5kS3p3QUN4VGJkcVdE?=
 =?utf-8?B?STFKSnVOdEtFWTVCRmpjbjIyYTFteXhPMTdhSnR0blVCdlNyUUhDMVk1NnUv?=
 =?utf-8?B?NDMvTTZQcGN0bWlRWFBFdkRCVXo1Q2gzTlIvMmpianE2WC9uZkZkWjM3VlVW?=
 =?utf-8?B?Y2xzQ0xHK1dENk5OSFVIZnBVZEZMSVB0NFp0Z2RuQ3pDN1BRU0RDMzVCK1hW?=
 =?utf-8?B?ZlRGUGJhTzFRSGxHeFJIT2JHWWMvdkFpSzkvV2ZJVCs3c3RleEtZYnJmaTA5?=
 =?utf-8?B?cmx2Vkpydjl0SytTNHV0Q3p3UmhqTlpDTlI1ZXpoTFJBMmZHNkk4bFE2SHE2?=
 =?utf-8?B?Y2h4NmZ4UXprVkdCQ2ZUZmxnWGlxcnJmV3VzVHlCc2lsdm0wM1J4MXdzWElj?=
 =?utf-8?B?aDFCS2NIOUdTYkhDRzNDSWRianlNT1U0OFJBOUpDUUlLc0hxMnNPK1kvWXpx?=
 =?utf-8?B?T29MQnVpMGFFd0dBRnNrN1ZiSjNKWUdaUmM3S0NEWmJINXFoTXFobmNyTmEw?=
 =?utf-8?B?Ky9qMy91Ri9YWkFvSDdDSUo1MnN5anYxMitJOXFqblBDMGNCZUFmWEFEdHd1?=
 =?utf-8?B?aElKWjBLWnhteFhlR2Nod25STGdIRXdHU2hjOWxuOFZxaXIwWWpxUEdoR2g4?=
 =?utf-8?B?cnRFaDR3OThEYkNyTjlpNTBxQkV1dTJTNmx6TUdlVUpZMnBlTUFzS2o3aWV2?=
 =?utf-8?B?T1ZVVFFZVTZBazYwRW54MzhGcHU2emFRR3llU0I5T0RncldJMkdSZXBOU0h2?=
 =?utf-8?B?RlBlOFNUU0F3cGNlQXFLQzh2bHpwYjQySmczYUdROEtVYy9PQXBEeUNTQ3M4?=
 =?utf-8?B?NTNYT2ErNHhDVU9QVEw0cjVUSjJhTSt6M2s5OEF1T3dXdUZ1NXlkc2VsZ3NW?=
 =?utf-8?B?UERUT3NDTUxMSTVWcUlKR1MzVGRVbHNPWTJZaTdIR0NKTnFVMVBML2hVZ0Nr?=
 =?utf-8?B?MUF3SDJXS2MzSGZHU1pjVkk3cDZlUUZjRUh2M2R6RFlwUXdWTksrYUtNWlhY?=
 =?utf-8?Q?/UciNqiI1TqvIDss=3D?=
X-Exchange-RoutingPolicyChecked: BlTar4a3FqMZNCxMR2FqMZi6cf4OBrj0CjtaH+CKHbNyxfhPesPZE/j9r0aGdm3V9KAOT0VAe7Je5c/Hvbx8Pw9Bs/0vcwrwm9uxtXYdeVzc5pTHKAFdP2+aMrEkyZKlwHI4W/k9tvr4kYv/35ljtsfCy4OHu9UId1ssaIiLPIgU7LTMpK5U9f6HJh8M78X13ElsL2NQgmjrfhNcQH7cTjPVnZ0yVAxhL7fZXD1If0SndzAEt6PYpzrKI1YxY/FV3JufsPZo7PaCF58468GKjYuurkrVurK4SWYTS1xMSOAj/HKNAUNWvlh+pfVT2cW4vzH2801RLpE4zXECe1P7zw==
X-MS-Exchange-CrossTenant-Network-Message-Id: f9746b27-9664-4156-6d19-08deacfa6b3d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 12:07:47.7628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mBinYPpsRD5urRY/qGvQLtIRRCTPuA0ufMnhYtjzWnuEcxpSQAg4SSkQH0te99ujfBw8FFWpw2eozzhlL3rsisQx0GZnfZnKbW5ELn03XJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778242075; x=1809778075;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gqYcSurgeGo6sChppx+QFDA3R9pYZ56aG0TjY+caMKg=;
 b=JWGfDtMHD8694644+E+2nXzKYrZjliSJF/WaP5S0gAlGoZ7G45oNIhTZ
 ul/v6i9o44NbAz438KcUTaeC/YbFOT36dzCQA6xSFmSIK0OK1C6UPbdBi
 GYKDOOjJZRFE6kzaXAl42ETKErpcsd23tS28y3a9A2q1td3iM2ilnX2UT
 MxRtnPsLghfeBEvDPdeWhkwaa7tFbiuLaw9e9a0pSma5jpAFGPYghmub5
 56ancKQhbqMQLm8KB2trPDUmSjOzA+ibnKg/2G1xNRl8wh0vtZ/s/EYSv
 d0JMg6Hwf+IaAme/TL6ATofhcB75p2vgwwAfCO7AdgHeLuSwuMulfvwJE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JWGfDtMH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 0/5] ice: add support for
 devmem/io_uring Rx and Tx
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
X-Rspamd-Queue-Id: A9F894F61B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Action: no action

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 5 May 2026 17:29:18 +0200

> Now that ice uses libeth for managing Rx buffers and supports
> configurable header split, it's ready to get support for sending
> and receiving packets with unreadable (to the kernel) frags.
> 
> Extend libeth just a little bit to allow creating PPs with custom
> memory providers and make sure ice works correctly with the netdev
> ops locking. Then add the full set of queue_mgmt_ops and don't
> unmap unreadable frags on Tx completion.
> No perf regressions for the regular flows and no code duplication
> implied.
> 
> Credits to the fbnic developers, whose code helped me understand
> the memory providers and queue_mgmt_ops logics and served as
> a reference.

Hi,

A week ago .ndo_set_rx_mode_async() was introduced.
I didn't know that it's mandatory to switch to it when converting to
netdev_ops lock.
So I guess I'll need a new respin :c

Thanks,
Olek
