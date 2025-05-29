Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FABAC7989
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:20:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B440040D4B;
	Thu, 29 May 2025 07:20:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wBlHMQ6xHfnD; Thu, 29 May 2025 07:20:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DDED40D3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748503252;
	bh=YV0USUjI/t1RTBgCXJkITn1F8gBmtnjFhfGZVqs+gFo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HwB52t3zm5epgR3QB2ARfAr1ybDlRCssj/eAsF2SK6GLaZyF6a+BR2K+Sx8JLAby0
	 UpOBYmQV+BuCYD+rA17Ut+CQByG7g2FdVUNcZRjFT1103ryazNxohczbnv9Q47Ouzo
	 vkNFzvM/mrBYfj6qnIDQQzWjgT8QL7z45JCM+pgXd8JfyyXUYlI2ew7AZ2rwBADLvG
	 C3jcnnvNGbNlm0U4IGiWb+6gDTUZkeMmhfkvvpBw73CcsLaY70WvwEXBuepaZB0Gkh
	 X5qAoMQjzIcroYhSv/BBAzkYh74LzD/FTWCnlOjcdL0cB7yDm9SoYkjc0MQ8+krXS7
	 8VolRE6I9GLNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DDED40D3D;
	Thu, 29 May 2025 07:20:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D7DC714F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C98B46067A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LQPSFTQI2hdV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:20:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 19E15610AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19E15610AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19E15610AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:20:48 +0000 (UTC)
X-CSE-ConnectionGUID: TcZAzHcIRSKkzF13Wgs78A==
X-CSE-MsgGUID: PyC0xkHoRIW0MZI+XUw8Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50704280"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="50704280"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:20:49 -0700
X-CSE-ConnectionGUID: KvdbzQWoRqWqzAMFJEl+7Q==
X-CSE-MsgGUID: CRk+4LvZRDaylFDzhCsSwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="143813918"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:20:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:20:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:20:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.63)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:20:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DMAe3uapVqqVg/NGXRQnAU7c8oBm00lLr/Z/zhkWz3veNGo4XNWBfyE/AbXlkPV0uaNQGFvYvBeykspIhgx0Kb9lZyCqeP0aOq6hAubWkQqp+tFChHycpeme6bZu2AE9Ij+LnnBTzw4rYk2ilqXLKWC+s+IxJWqlU3aUVQ2GLLrFqVJsgELKKoTKy82wW6/KXp94KBW/SIq/S2PbVUC5U/oTp9AIigRqrxdmrUOBzvgiPpu3JbBFoSYXqXXp1R1/D3mf0Gb1bahmqGnNYoDoQkJ/EzuJZiGxThSCUnOBEky/iSgcH9q8KYv+7AEkFzMeMN0r5SqhvrgcyCRRi0uQgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YV0USUjI/t1RTBgCXJkITn1F8gBmtnjFhfGZVqs+gFo=;
 b=CD8Jfa5d78Fxe/BJiOp3DHn5pwfJIV5AXGCeOoPjPA8f8KFGzlPQlDvwF1et0SYqTtcUQQNuhBNyooQp/wUZpmCF4+9coOpycSwuHpr1Q9ZDiakjc9kLF0PXE2tCb3e9aTau20c5WzX7fqEqWnpdnHf1GnueTf/oiUdKb1H7ywguDWk1vnecGTBXP7HaT6PrNmpeBpR5qaZpzjmve5EphlfL0934vBJhriOmmvyIUoTDuOB/px/ev0g5BX+Bon2giJtIBFqror4LDLKtSU4VzF50h3cUMJFcD4RGW/yRIhmFEiFZQWB+S9HDOQD+Alwnqn72douWpGgXLej6l/q0Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Thu, 29 May
 2025 07:20:16 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:20:16 +0000
Message-ID: <3b6bf120-44a3-4b08-bfe4-ee7cbe6a2a86@intel.com>
Date: Thu, 29 May 2025 10:20:09 +0300
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-4-faizal.abdul.rahim@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250519071911.2748406-4-faizal.abdul.rahim@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0023.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::12) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SJ0PR11MB6696:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d135a73-9ee5-4564-827a-08dd9e81428d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDlHaW92VDI5bXBPcXpTVmtDZU5KSmpZWmJBRGxWN2lHaXZ2eUFRd2huc08w?=
 =?utf-8?B?VGNpVzMrRHpqYk9OVnl4N2NpV0xITmtTZFNXVTZBNUZnaFFEZUJmRzZXL01t?=
 =?utf-8?B?N3lzK3F3V29zdnhmeE9JemJ2TTU3b2J1WGpEZWd2UHBqRHBweG9rRHhBbWo3?=
 =?utf-8?B?a25OdG83VW51VDh0bGZRUi9WR1lJdXJKVDR5enhIT2x6blVMc3VHT1JSVjA1?=
 =?utf-8?B?MGJKWTlIUDE1WlhrMXlUNExWOXNzZ0UwUzdVK295ZURzRlJ6bGFkd0dOTEYw?=
 =?utf-8?B?RlA1YTJKVHZFQ25LWm1nelBwNk9YSjJyZDRoMXI2aHNpKytmRUlZVVJUdStz?=
 =?utf-8?B?YTRJazZIYTdKZnBpM1ViUHF2aDRVQ29BSUQzK1JpcS8vZlVlaFFDb3dXOE4z?=
 =?utf-8?B?VFRnRitDcGxnb2VoZkoxSlEvbmczam84UjNPN1VxTXc2cVRDVlhKZ1R0OTNp?=
 =?utf-8?B?d256b2NTOCt6dDRPNW43TWdwcGdUWVRGaGdzdTVyOFZCYm1xbExyWlJUTUQ3?=
 =?utf-8?B?Q0h3SnBSOXNrZGZFYThvU1VmbU9XRW9uZmdTZ2xMM1cxTE45RmpDN0pia1M5?=
 =?utf-8?B?cU5pOGFtMG83UkdPZDJ2YUVvSktseDZXQitTeWdEMUJhT05icG1UZDIzVWdU?=
 =?utf-8?B?KzUwci9KeXRwcTd6YmoyU1Q5YTkydU5SN3BtTkp6ZjRSVkprdWFFNXQ0eW9R?=
 =?utf-8?B?Vk9FRWdtbmswSGt4YmZybmRtdCtNMENYYnptTU1FNVVGTHZXaTVLcjNzZUV5?=
 =?utf-8?B?cHNjK1Z1S1pIdlJTbFVnai8vdjE1RGZzRlFLM3MrdHhsTDBTUUMxTXhGMkp3?=
 =?utf-8?B?VFNZYWZ0aXQ3SlRXWW5JdUtZMVdmQm9oa0x4S3NIang3eisxdWZvdEVQVnZK?=
 =?utf-8?B?TGVIVFlxajdWTjArZ2lhRU1FeU5DQlRSQmFHUW0wcWQrR0VPK1lOMWFtRDVZ?=
 =?utf-8?B?R1RyWUt0Z293TkwrNW5nbTQwaU40RWgzdG8wWHhVVkpRZ1BQSUxsTmx2VUpY?=
 =?utf-8?B?NmhxcWN3enUwbTdNdTZ2OVRyL1FCREUySDZsR2crMkNqNFk3enZSZkROMmtr?=
 =?utf-8?B?R1NxSDM1azFJTnpzTzJiMUxsYzYrL1YvL1krdW5PM1cyR3NuVzNaY0ptWHJn?=
 =?utf-8?B?TnF2R2lUaGp4emNnWlJhbUVnQ0VXcTZ1UUtpajExQU56eWMzVnpqSERwUTY2?=
 =?utf-8?B?Q3NQQmpiNmdaQzlBVUVZNU9ObGhUZVpjV3VEaVVxeFVFUUVuOS9PVEZQT25F?=
 =?utf-8?B?SW1PTVdXVi9hMFl6VzloYlNXSEFCS3hzR1NMVGlxL2VwRXdKcHg5Z0N3RC83?=
 =?utf-8?B?d2syVTlCZVNmclUvenIreitWNklnRkRidWRQajVtZVJVK25xU1BSNnlZdSsw?=
 =?utf-8?B?ZlVsWGdwNFRnb1hERzhaZGxTV2ViUWQvenUyclorb2NuV1h5TWhjK1VqekJI?=
 =?utf-8?B?Z0MvWUdadjJsYm5POC9ZdnY4YkdlSEFJdFh1NisvRGk5dmk0aXgyOEdyejZ3?=
 =?utf-8?B?YVdXcU5zOVIyZW85N2RqdVJQU2t4b0E3WndGSGY5R1crTkd6WHNYUS9QbTMy?=
 =?utf-8?B?R25VNzh3cXRsVTJsbHhPOU56dTVxTlJGQUhUbFphQXdycVdGcnZTcVpCT0w0?=
 =?utf-8?B?V1lLaUU3blprYU83NTRKS3l0Zk4wS1FXSHB0OThKVlE2anFPV0hZbDVlQ3Ez?=
 =?utf-8?B?V1ZiM2YwSWRvM3dHVjJFSUFnREs4dmhHMlRNVDdpTnEyTytMVUcwSXN1UzVv?=
 =?utf-8?B?WlROekI0R2tSb3BZZlFGNHBvWFY4OGczV3FCYnBwR2UvelNFRSsydDJoVDBB?=
 =?utf-8?B?clQrSGM0dEZnT3RHaFdsZ2pHWUFFMWlscFFjWWFGd25ldW43S3d2dTNoS3ha?=
 =?utf-8?B?UWRJWHdSak5XYzJRV0pJbGZiSHpGZ0pTd092US9nYS8zVWtONC9jTlNGN29H?=
 =?utf-8?B?OGRFaVBBN0lOaHNraDZCUDdNWXZsRktESTNRYTFJZ1dZNVpyWHdzb1Nra0ZM?=
 =?utf-8?B?Q2IyNHhoS3hRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmgrOUZ2SG1GYUFJeUk1S25UbVhqLzh4cDVMZ2tXbHpLU2pEVGdzd2loeGpv?=
 =?utf-8?B?R2ZKSWFmbDJkTy9TdURMaFZ3US85R2ZvclAxdndWNmFsRXd1cjBteVFsTi9B?=
 =?utf-8?B?SFlwRzZCbkVHZ0Q2T3pua0Q0bWVEWWo0YlByeXBZaXY1Ty9JR1pZSDhtbWlr?=
 =?utf-8?B?MnZlbTNCUnlSTzlFVnd2bllCN0xUckU1REpuRU5Tc2Q3dGMxMnZHRFhpTXYx?=
 =?utf-8?B?RXhSK3UwTmZ1aGtnVmQ0ckxseFRObUthNDArWDBJaHIvTVlXNERsZmkvK3ha?=
 =?utf-8?B?KzZGQm9GU05WUDBnN2RDamltbzlQQWJjVHBZakdTTytOUjNmNjVPc0ZuMVhX?=
 =?utf-8?B?K0tYVmczZVVHN0dXZVJubmVNT2JvaFBHOWQ4M1Mxdm9HSkdqS0pRWjB1OHY0?=
 =?utf-8?B?NE9BMDlaTTdXdVBjaHdoellQU0Q0Zjl5citlOXR1QVIreG9ndS9jYWN3cys3?=
 =?utf-8?B?NzRBMTBmMjJqdFZYY2ZUb0pmL09TUTArZmFaMVBjZmpIL1lKUzc1aWE2ZkNh?=
 =?utf-8?B?b1grWkw3dUZZSk5JbTNaKzU3cjBScW1yM2xseUFBeFZBR3R3N2tKbEZsczli?=
 =?utf-8?B?ZGJZNU5vd3VPL2JHZ1ZwN3J0c0ZHMzhyUFNmNXBiVllyWW5EaVVXVXZRQkhG?=
 =?utf-8?B?c0YybHpxcndTcG1GY3JhVnpQM3ZQb3JsVWxGWHprK1djMXFwZTFxQlVCcFov?=
 =?utf-8?B?M2Vmc3lKNS8wZktHVEdlMUdtemxkTXgzckxtVWxxaUxmM2JZNVV4WDJYRGkr?=
 =?utf-8?B?blR6VEs0b29iL010LzBSWWRyUEwvL2VHaCtlcEc1K1hlaW9aQmZVUStiSGVB?=
 =?utf-8?B?QkpWcmxWOVFqSVRLMlVZK1FaT3lvUUs1dnFDbFhoU3FIZHRIRXp3dExwRkNU?=
 =?utf-8?B?MlZQRjFQbkNuYzJIcWhoMHJnQ25GQVg5U0ExWXNoUXlleFBmazl0Vml6bjky?=
 =?utf-8?B?K3NvazZXS2JTQitoWWsxcmtYWTIxWWdxbDkyeFkrNVA2eUtPMmZ6UHdqL0hm?=
 =?utf-8?B?SzZ0aERsYUpWVW5WRGFWNlVZNGZCWTBTSG5QdDZpNG03cG1abnk1VUN1R2Y1?=
 =?utf-8?B?OGRwUzFpSjFEOERvTWNmZ1ByeXVoejkrbW0yV1QyMVNnT1cxdW1zaXBsYVRW?=
 =?utf-8?B?bHlIaHdMZ1hhZEdaM3AzblQ0N0cyenBxb0hEUWFDVkFITmNld0k2R211c3Iw?=
 =?utf-8?B?RzJEaHZDQWp5bG1hQXYxdit5MXltM2hnQk9oeEtCMndTUm5VRThxdTdWSUkr?=
 =?utf-8?B?SkcyWDQxaUk4MGZtQ3pjYklIR3hMQ2wyY0MrT092S0lDVG9RWjlHTk1VdC9W?=
 =?utf-8?B?U1U5d3V6RG45MEpHQWw5REgraVZuZmMrQ09tV2tZdXRULzBmTEJwTUxxL2t1?=
 =?utf-8?B?Uk1NRmd0U1N3ZFBMdjJIZ2p0eXhBSzRpQkMzVlU0TWFKdnptaXBOeUR5MkdJ?=
 =?utf-8?B?d3RZS3F0cVpqZXdxZVVETkxZdTlwOTNFNGFJOW05dml2K3pGdDhZb0NTWGZC?=
 =?utf-8?B?WEVYQ21wNDdrMTZJZWx6Q0Nmd1YwbXlmL1pLZFhzaGtHL0NDTkFlWmRTRVZw?=
 =?utf-8?B?R2pYekZNbVBDemQ4R2g4SEpyei9COWNwaHl5NDhrTmxCR1VMTk45VldTYnZB?=
 =?utf-8?B?MVh2K0REUStKSjEzQVVHbzBJSmNzbEZ1WEVpZVNNME80TDkreEJKMndwd0M1?=
 =?utf-8?B?ak41VzhPa3NNNURDdVJvQkRveVVmektRS3NaSnRCVmVBSWJFZHFvUVJETEZy?=
 =?utf-8?B?RDE2Q1NPQXBLNGVrMFgrUTcxMjUreFlremxRK2cwd051T1N4WVk4NGhKK2xP?=
 =?utf-8?B?SC9pYmwvU1ZTbkpEQ2VZclpwcGdTQ2djMkhHN1FBdGNXVTJGdHp2em9nM3Bj?=
 =?utf-8?B?SWFjaWY3bUNSUlU0RVQwVjU3SXRpenlQT0JLQjRTN1lXMTkydGhySEQvZmpx?=
 =?utf-8?B?cGdpa3ZRWDdKY3FraTVrdFNPaG9wRTFnalpHbSs0VzRIWDNvUVJTa2kwaXpO?=
 =?utf-8?B?NEhOWTNEZDF3SS9KZTEwTU1QazgyQTRPbVphaThGNG1nbnB3cWJXNGF5bFRy?=
 =?utf-8?B?SnZJOGcxekFuSElQOWNmQS9WcW9nVjBmSDJlMno1TWs5eDF0di91UzdRN05X?=
 =?utf-8?B?MzJkZE1nbDlya2YyV05QWEgwUDhxb1pVUUUvWk1tTTQ1RnVNYmtTZUlHOTRI?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d135a73-9ee5-4564-827a-08dd9e81428d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:20:16.3940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dR675Eb58WfFALLGEL33Uv554Isi81j6L/nhbujh6+KT7FJo9riCp2zvwj/f6CysueF17mz9gOyXGkx85FelCctTEX2bL2irrky3qfuYvgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748503249; x=1780039249;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6b+aAwGp/DzNqRobtq8MPU9oSyqxFn+AaykMHRVozHU=;
 b=iNPOL6d76c0WvKdQ3kERdDG9tpGDzzs7gwGn4W3BV0nLwLH8BfAcaslu
 8PN8Y3E9p6C/opghbKZ1hAhtNNpPcdj4pXhVTXMBtUmNXbeC0U7uvNy0H
 52FlGWk+pDAAmlVR6/AJpW79b8EZ86Tn7UvlJBJ+zJKcyvWoTp8OkzT7Y
 zxbUwJPCQkuK3KJU+um/fF9NGC+hDvwwTOHiPbPvlEvSeoZcDnai4lXc4
 j2bLvQ27BlrxZBLxPrGOChXcnUIw3ScLFj4aC2sP4MX5OAARBf4RY4Ydq
 Nhsjt7tAhsvsZo/cLKDjox6oVkGulyTJTn9+hkA8jz9uHMERNwSMzl+dB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iNPOL6d7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/7] igc: refactor TXDCTL
 macros to use FIELD_PREP and GEN_MASK
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

On 19/05/2025 10:19, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Refactor TXDCTL macro handling to use FIELD_PREP and GENMASK macros.
> This prepares the code for adding a new TXDCTL priority field in an
> upcoming patch.
> 
> Verified that the macro values remain unchanged before and after
> refactoring.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 15 ++++++++++-----
>   drivers/net/ethernet/intel/igc/igc_main.c |  6 ++----
>   2 files changed, 12 insertions(+), 9 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
