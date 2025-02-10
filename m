Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA6A2F0CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 16:05:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DCAE412CF;
	Mon, 10 Feb 2025 15:05:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PgJSSTJTZr4p; Mon, 10 Feb 2025 15:05:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84310412C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739199916;
	bh=3gNVIQk6AYuikKm7pxq0wAB6MLKJNr3zE76OHqyd4zo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QCyQaQDLW40Ub5UiTMqmapr6Bn5RRnz9ffF3j5Q3kzhcDF8jJZWMkvebEX+Tyjvet
	 tj8Gz7Tc7VwNioZxv6CHEbKcqyaO/BO65SnHOO8Y5ZNnPucuC06uzJcEx2ugcoTsPz
	 Ws4WY9VNQ/6tlVmVcTpxTAgV7nu5Vn6dNQvvuziATJTL/Wy95grmyyXTAF4Pz4R91H
	 MU0GX+m/FoXIdpHTvfuccSRQ3pRQ2J2NsKSnL/Alzsc+p/Outr4PEC/YDelkqti41B
	 Mm5pUX5NXdR+eUORHr/yqqpGXs2m0IV3gDenLfW/HGluI6h7lMBhG4htvJYeL/nfbo
	 CNlunijcOWbog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84310412C5;
	Mon, 10 Feb 2025 15:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DAF396C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 15:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEF6280C32
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 15:05:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tZb-ji3zDU97 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 15:05:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D631E80AAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D631E80AAB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D631E80AAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 15:05:12 +0000 (UTC)
X-CSE-ConnectionGUID: y9j9L6hyRoOCCUy8roa1DQ==
X-CSE-MsgGUID: RyvU9hrJSxWPsIuG5QiKnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39914069"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39914069"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 07:05:00 -0800
X-CSE-ConnectionGUID: BcVZHV8NSfavLbf53tkM9Q==
X-CSE-MsgGUID: qzPuHeU4Qt+UqumS9sX/mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112657446"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 07:05:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 07:04:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 07:04:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 07:04:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bubj3vp7nAW6qKgoT3xklwfU54boR/ilXUkOZ9dd7K4aB7GfsaNUzDXECeDCiUvey5g+6vQvjjoso3yVPxTDn62m+qw1pZYbTXQ9a6XhmZS5/UXfsjNC2EPmTFnJ5Q6SrlZGbRStcwjqwjluK7dTJ6a+/2MtFsOwd6yV+S51agY0nv2t34aoSnhRIUl6bzMPO5Tazvr6daQVcCJrzZySxIvdQYsUCRC2JMc86IebGj3W3vzL+ZrGO9Zzj+tX4VtXTn7k7fKCWPlPZp9PenOVGmtwdPbu6tjIldu5+JW49D9TyKB8b+vPhEd9MX7HDMTUplXvyV4lAW5vzUHJKqY4UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3gNVIQk6AYuikKm7pxq0wAB6MLKJNr3zE76OHqyd4zo=;
 b=iWrJqwExnU/iPuBGV/dg7LfltHuAG9A5ziF+QmY13v2RadvklOFT9UUrqiNQugf/aiwcaDq+ttcaCsGmp8RrikTMvpyO+tUoBGlBkjyR6WnQsosvTcwb39ti5l+Ab5GEdfjDVN/FYllp3fvfvs5g/2XmdKWLJom9ke5+vPnAXtk9Da02PVrMBrGLHoDCAVSyHXENPIFRB7Bn0nj0dPxXWSb4KMaSz+3wbnPVloFa/hTTz6H9efpqdfYEIFXpjqGDKERZCbNxVGJPe1KAWjCw93lTetEBgvL6ZRyhwkOd2qmJuG+FymtZC/AgLmkISZEYTwjz+0ntMMMGtWE0FczpDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CY8PR11MB6937.namprd11.prod.outlook.com (2603:10b6:930:5b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.14; Mon, 10 Feb
 2025 15:04:55 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.8422.015; Mon, 10 Feb 2025
 15:04:55 +0000
Message-ID: <760e3977-9f83-431b-b29b-f8ad1609b462@intel.com>
Date: Mon, 10 Feb 2025 08:04:43 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <horms@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>, David Arinzon <darinzon@amazon.com>
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
 <20250204220622.156061-2-ahmed.zaki@intel.com>
 <20250206182941.12705a4d@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250206182941.12705a4d@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0036.namprd04.prod.outlook.com
 (2603:10b6:303:6a::11) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CY8PR11MB6937:EE_
X-MS-Office365-Filtering-Correlation-Id: 96fefd4a-07be-462a-98a6-08dd49e4474e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nlc4UVMxVFU3TUJWWCsxT0w5WG53YkhvQTJYaW5LMHNFVWYzZlo5QmJRazVy?=
 =?utf-8?B?bnhqSlp3M0J5eFpNek1TMzRIcFVqWVE2bnYxdUNiTmZ3aGVTdVR4QmJ5Uzcv?=
 =?utf-8?B?SkZET2FMaGoxZVpTMXdnNUdPcU9Uck9VNUJwMUxxZStObGZEa1AxU3NUVTY3?=
 =?utf-8?B?bTErNm1CTXp4M0RDWktSY0oxem1nK2kxMkFTVml5bUdIZjFWcEJhOGtGeEJH?=
 =?utf-8?B?dllsUnJ1aVljZ1ZLRHFIUEJLTVRXYnI5MFhBTEwrV1ovMDFhNnQ2K09adnBm?=
 =?utf-8?B?ekRCOGZZT0pxeGxXZStDbllzQWVTaDNoVk5JblYzTTFnUXVlZ2FiVG9BV29o?=
 =?utf-8?B?RzNSNWNHblc2N1FwN3U1dit4M2pCbmlTYmhJa3NZR0VYTTJqZmZhR091R0JS?=
 =?utf-8?B?R2VHRTNuOHZkbWtMWk5GQ2xxbDlYMmc2T01KdUhZQ2p6dkdCczRyM0dJb2wx?=
 =?utf-8?B?SUo2RFljakVWSXBIbWxQYXhjY21VbjIwdUMvZzNwbVFPNy9GQjEwbGd4a1hY?=
 =?utf-8?B?dDI5dVBOV0ZDNVIzU0NhMWlMUlQ0MDZOUFFaTHVNclNkWTZSbmhQcGxwdHVx?=
 =?utf-8?B?eklvZ3hYTzBMRkh3MWtRRVJHamdFVkVBOUx4d3pXZE9RU0NSMW5wcERUZjlo?=
 =?utf-8?B?djZCOElDK05PVHM1aHhSSzFndnFIWlRjcEhxdVdMQU1sQm9YNXF3SmhkZzRl?=
 =?utf-8?B?dEMxUnJ6eUljaWZ5ZzhSSVltSngrbXZTRVB0K0R3N01uK1dIaWl4WEVvdElC?=
 =?utf-8?B?dVFNMlNhWmk4S1dnK0E0QTR0WmRnSE1MRDNaODFYODdUM2hJdzBLb0JIZS96?=
 =?utf-8?B?aDYvc25jbE1YNVU2Y0dRWkRNcndFdzk1bGxTVHdTZVZuRCtudXVOOXBHd2Fy?=
 =?utf-8?B?N2ZzVGtNanA5Y1JNZXBZSVIwaWVWbEQ0RTRwRTBPcFlNeE1aSkxuc2RhcVRK?=
 =?utf-8?B?RlF2eVFuTERMV2lIYWN6YW1TT3pCQ2JWYnQyUXBMbDZpeUgvUU43cG55cVgy?=
 =?utf-8?B?ZkY0MW8yODRvbGdzTE01WEJQaVVoY1diamRycTI4SFJXbEV2YTFJR2JLajhH?=
 =?utf-8?B?YlRqd3NoWW10WUJnbHRyeldnNDhSSDFYSk1iRVpqK2VMYTNUVXp4VzVUVFJC?=
 =?utf-8?B?SG9QSitaMzJJZjF6YisrZisyNDE0MHNXT3B4NHlaUm94a1pwZUlNbkZadVVN?=
 =?utf-8?B?RFZmZWwwVkxrNnZCdjI2ZC9NL1A1QjlqTkZPTC9HbWV2djVNUXptampVNjRP?=
 =?utf-8?B?ZlBxbkw1TXN2UzU2WGh6c1BsMTE5NE1yaWxrTkhCNXdrVEpjZWppNStUTk1Y?=
 =?utf-8?B?UWdLUGdSTjFSc21YdUVCM3YvOHM3eENkK0xPTEZNdUJMWk04R2ErbWp5LzRL?=
 =?utf-8?B?NDJIQ0hpNW9WR0UvRlQxSy83NDVmeHZsWVpEVWdmQXNDV0FLRi96NjZWeEFm?=
 =?utf-8?B?MnlDMFRWUmpsNGYzVFZYZHNmQ3N1Ny9pV1lIejQ1Ylc3UnVHcXB3VXgyUG5R?=
 =?utf-8?B?MFc1alJSTHZ0Yk52RXA3cnJmTUNaMExkYlJ2NWFwN2xiZ0hGQjg1TUZtaGRz?=
 =?utf-8?B?WFFMNFh3RmhEMWhsQUMzRlJoc0Rmc2FvL2M5SVowUDJBVzNFVTFJUkFVZEwy?=
 =?utf-8?B?VjNZWGdmVk0ycUlBbGxyV0FlcHhQSDNCVkt4K3gycDZpSS8vMFkwcWN0SzJ1?=
 =?utf-8?B?TnR1dExRcHRvczJWd2NYK3VxeTlJOHo4OHVlakVxZDV0UHRLNFNYTEY0UXpu?=
 =?utf-8?B?Sy94b1habnV6bUJoSGpNSGRVTitQZmg2bm9xazVhQktqM2V0N0tubVRWK0FJ?=
 =?utf-8?B?UHZJNXhHV1ExY1U4a0ZqRDgrRjJKRk1XUGRXcFF2a1p3WXo4TEFVSkFySi9F?=
 =?utf-8?Q?sHZYJGcFOzzuE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE1Ca09OdjdhRU5kNzM5UzZjYVYzY3NCZnY1YUI0YzNTSjRncFBjWFZmM0I5?=
 =?utf-8?B?SlpOaURabEkxWXk2RXk4QUJ3ODZRbzVOLzhVNGJlWDBZSnVBMjIwVFU4b0NM?=
 =?utf-8?B?MGhUNGp1UHpQU2dNVmhMUHliaVIwU3Zmay80UTdtVzBzaXlwVVZMMms4Mzcz?=
 =?utf-8?B?SkIybFFqd24vdktNWkhtTnJJSENKRnpqWlNHeWgvWHlPSDVIbFB6UGdMS3pN?=
 =?utf-8?B?NThxVHlWNklnZGRrcGVpMGRuZnZwNVIzQTZoVFkxR3c3NjdZaWlxOGtFcTRT?=
 =?utf-8?B?N0htY1ZZa2xzUDExRW8wY3hUQnBXRE5XYXVaRWxJZGRsZ2NPMHhQY3BZZGJE?=
 =?utf-8?B?NHJ5cjdZT3RMdmZwOXlDZ1FzWVhEblZwMkMrZENhYmtOUEFoNFEwbk9LbDQr?=
 =?utf-8?B?VlJQMnNXU0FSV3EzUkJHVWRTc05lZ05VOWhvQXB5RGVFUVVmOXZqM0hpbjQ4?=
 =?utf-8?B?eHJKbnF1MndLNUVYSUlwbUtFYld0RGdRZXJ2V0NhZnV3TDFFb1V3T3J2YUx2?=
 =?utf-8?B?ZlRWZnpiVEZXeFVKSCswZ09LYmlQNFFEajY0RE5IeHZhRVVFMjhyYThwU1NC?=
 =?utf-8?B?SThVb0xLWGRXOGxUYlE0M2c3eU56b3VGR1hyR3dYQ004M2d3TzR3SjdJVzNZ?=
 =?utf-8?B?OXFSaFFyVjhrUHl4ak5FMFhCNm5MRzBBT3FMa1lCQ2dFa2taSHRicEJyZE92?=
 =?utf-8?B?c3pTb0RMc3lZY1g1eXZidkZVK282S1E1c2o1dXVZRG1Rc0ZSdjMrZGxHeFFD?=
 =?utf-8?B?UjFBTXdvYTFVK3k4WlB1dE5lUTdvazY0NFhoMzZjRnFyNVpzbmswKzY4QXQ3?=
 =?utf-8?B?dlY5bDhZWGpwMTRYOFhNMXJQSGNGenRMN3V6ZHJCZWE3b2YyR1pvMnpBdkNQ?=
 =?utf-8?B?Ky92UWhDQUVaSmVCVlpwMm14U3p4Rlk0bzNrRCt0Q09EcWtmOGpnNjBCNEJo?=
 =?utf-8?B?djlOY3BmeHgvZzZSSEtVZmZtYTBNSmhUaWJ3d3F0U3lLUzhjSXhEaEFHRFZR?=
 =?utf-8?B?TEFRWHpiR3M3K29sTktYS0VYVWMyVTl4d2QyUTJKQkRXUWltWHRNVnNFeGR1?=
 =?utf-8?B?RkhLVzNnZFFWVmdESHkyRUhEdms4WEVLZ1dYSklNdHVaYTNrQkxpelJkZjVm?=
 =?utf-8?B?dHZwVUtYeGZyMjc5NEN0d1o3dSt1bHIzcSsvQlFISy9sYnQ3WWRJZ3VDV21Z?=
 =?utf-8?B?cGdPNU1rZkRLZ0pmVSsvd3FFbHNuci91c3pqbTV4RkZoTUxsNVFNUE1sNTFv?=
 =?utf-8?B?OC9DTXdEUGlYQUxha09XZFJnaVhBR1lWY2VWNVFlcTZjRkJ0OUlScXNBR2cv?=
 =?utf-8?B?aUZWQ2R1dlpENFdwdktRQU4xRU8yYzlrUjVOMlRRM1J1Tzl1Y3pqV1ZYcXVy?=
 =?utf-8?B?ZVBGQjgyRzJxeTgycjQxeStIV3V0NHF6dUgzTHRaQkZxY1JrL2tzV0FVSUJH?=
 =?utf-8?B?eFI4UXRkZ2ozYWtBeWNMbVdnMUtZdlNEK2N6RGlVMU4xdjh0eDhCcmRzZEdJ?=
 =?utf-8?B?eTVQOGRodW5ZdEpScEd4Wnl5U1RaSVgzUUFGQWdZdGY5K0txL25JMlBWTld5?=
 =?utf-8?B?Z2lKVU9XYWtNV1BrY0t4eTYwWGpQMWVrTUQ0a2I1QjMxSEkrN3A4NnAyWGIr?=
 =?utf-8?B?N1dmZklCYTBZTyttWjRxY2ZQVm1EaXVHK1BrcTh2QzBEZEtDWGp3eU12c3dZ?=
 =?utf-8?B?OGZEZ2IzckR3czU1b1JCeFMvc2Rkc1RMd3crR0dtSEJlMFRYdGM0YmZLUUY4?=
 =?utf-8?B?bEpNL2w4Tzh2R3pXRFRBRG9XM29pMzNTVUJoMFUyMWJ0Z1Yxb0VVdmlBdmxY?=
 =?utf-8?B?N1NBQXB3bWlCVDVKdEd1dlI4MnpaampDbDdoQzMyVnFaMENmWHptUlM5c0oy?=
 =?utf-8?B?dnZtMDFmakRPVzZ0UkZ5UXBuTll0WXBVQ01OS0ZQT0UzRDJnQ1pldDlVa3Rs?=
 =?utf-8?B?MEZWMVdRS1d2cXA0T3JJUHQ3eE5lcWEzbTRxUjRYSFBORi84SFZ2aWgwRUlG?=
 =?utf-8?B?SEN0ZFBzYzJJNXZpVnRINFZPc3JmNi9nWkNIWHNkcEtmU0p0bGNGblhHTVZ5?=
 =?utf-8?B?T1BESmF6czlnZ2NPc3E5bklMelByVGNaNlZMVUJIVFBia3pDMzllcVBpQ2JW?=
 =?utf-8?Q?+l4lSSZAofDX1pD1KyOckjyB5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96fefd4a-07be-462a-98a6-08dd49e4474e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2025 15:04:55.6675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F84KJF6BVvIFY/ZfQL4J1BFTMZMnqVtvAgckC9DkbFb0ZyEDWhfkDlipj5gDFd68VVRu/NZTJogYPYGyBREGGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6937
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739199913; x=1770735913;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RZB4OJDIqGeNa41XNFx/z2lAl6wWbd/y7IsBju9vqjQ=;
 b=Xpna3qhPQv9jIwl0YGVwOKlgti8rdDcd8/1nnmF+FcVWcMG2XpfaNS/w
 qnPcwudN5M3CPuz4Jmq7v4E9Z7VNGcaRKppi44IpzajNR4yfQsr4LF+wt
 58Wh+pMOscSV8k4fk6n28/Xx93Q9BWwIhz8Z/4j7aSo4iQHPKzMWLhk7d
 eMBMeV7m8drGmQF8urYdfvW9L6vffyx97RVKbtCzobGlXBTxUo+i+9K7u
 42spbVS991vLPSly3e+CRwhreN6vMIqpybV095T3xGL2Oy+2ryw2sD+uj
 ySCK1H+pKXzZzCoRYhd8aM4dnR3z08t9fh0kGYBsbcKY8fjchlFLCFAYb
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xpna3qhP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/5] net: move ARFS rmap
 management to core
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



On 2025-02-06 7:29 p.m., Jakub Kicinski wrote:

> Speaking of which, why do the auto-removal in napi_disable()
> rather than netif_napi_del() ? We don't reinstall on napi_enable()
> and doing a disable() + enable() is fairly common during driver
> reconfig.
> 

The patch does not re-install the notifiers in napi_add either, they are 
installed in set_irq() :

napi_add_config()  -> napi_set_irq()  -> napi_enable()

so napi_disable or napi_del seemed both OK to me.

However, I moved notifier auto-removal to npi_del() and did some testing 
on ice but it seems the driver does not delete napi on "ip link down" 
and that generates warnings on free_irq(). It only disables the napis.

So is this a bug? Do we need to ask drivers to disable __and__ delete 
napis before freeing the IRQs?

If not, then we have to keep notifier aut-removal in napi_diasable().


