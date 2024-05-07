Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7918BDB4B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 08:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54CCB407A0;
	Tue,  7 May 2024 06:22:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gO5fcBkcFNz8; Tue,  7 May 2024 06:22:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1EC2407A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715062931;
	bh=+WZK6upsQ/DqzpgV+ZPUscDAvAKieDA2uobvkXAyYq0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ktVw+g57UXdKeRlROapI0kkaAC/8OeOLm3tqyw0eSxXJVJpXpJg4OMZZkDz7nwD2T
	 /XNvT+UTNJiay742ZyGC5wYmKZcYyGOJJ8xPCJr8iXd+dQOYEEIFtcLfP69aVjy6lY
	 CkExkycX2I8LtBrqno7NtweoO8W0GmkDlhILjdfZowzVX5DgCAlHTRIshXf4Cdvycq
	 h/ZWHjFGx6xo5359ptZCPrTaVuJuNVQ5sNdioMUbVCN1ujiOobNSA99nXBVN9bP1DC
	 3KDzD88HEkO4RSGyK3qBPAonUXAV59iYfSq8HiWFLIIYpHqTAvl+qS+K9ozv/eYAO4
	 ul6jPYh/ZnUJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1EC2407A6;
	Tue,  7 May 2024 06:22:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B4C71BF34F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51D3C823CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r9h3v2MGB4Zk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 06:22:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 76E578238D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76E578238D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76E578238D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:22:04 +0000 (UTC)
X-CSE-ConnectionGUID: 89UJjMe5TNapWRl4yfMvqQ==
X-CSE-MsgGUID: oERDhMHAQJW+aBtC+2Yzng==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="28309142"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28309142"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 23:22:03 -0700
X-CSE-ConnectionGUID: mJLRYvNpQ6e8aU1luetxqQ==
X-CSE-MsgGUID: ogs3pKWUTx6J3CabdFdB5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28400121"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 23:22:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 23:22:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 23:22:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 23:22:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 23:22:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KVcVE+cP+REVBbzh9VU60hMLJCAUkOTFd9VvKPVtrSapc8SLt4sVUqhjdojRpflJLrpPIYMkXw/xVZiEfd/MNob4mbCki2vNMRvy3W75yD7hazMYdbvOggI0p6Qm5ciey6VQ4GyuNksV1z55vkTZLOETreybAvGB9ld3kDFvfi430wUcaSU5Wn3m8duIghaLKfTuUKbvXtk5kXFzEaZNFee80XAv8WpUMGRcY/0LfO2pZ7fJJGnrz3M8+JuJ6gBE31lFT979qPdeZ4CkSqBRNO8DTZP8lvBmdpY3/N+arcCmhdhxEfjHJgrX/pQ3rN7pwQKr25qObKuhWmEpl7e64Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+WZK6upsQ/DqzpgV+ZPUscDAvAKieDA2uobvkXAyYq0=;
 b=V/9K7UlqGKnhXFQqF5aFqIfU0Dzcj+an5Zjp9MI0nFixmJkxBhC1avSgfjS7SLoNbZkn2vBQeet+fXrptQUXycn9Q5Frnx64RcnGPAXKYReRFrU+AHo6FGdCtMYGO0jFwH3Y5v7O0WlpjeEIrxs59JB4PP7Z6K6sCZyaNelabaGW3TJYszHF1xluhY6K+8Bf08gcKB64+SINAO00GQ1uAYb0/fCDs5H413wL176W+aI3y0H3Yhy5FDB6ZaW4zMSRkMYK+UfuPMcLnt3QhtW9LiXLwTobY5pBg4ZuCCZfIOQFdi/ckXC/Xp4rCeqDkKN1PvkumeFKL5f1aIBBI6kedQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6280.namprd11.prod.outlook.com (2603:10b6:208:3c0::15)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Tue, 7 May
 2024 06:22:00 +0000
Received: from MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::3f63:c727:6606:c089]) by MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::3f63:c727:6606:c089%4]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 06:21:59 +0000
Message-ID: <d2d9c0a8-6d4f-4aff-84f3-35fc2bff49b7@intel.com>
Date: Tue, 7 May 2024 09:21:53 +0300
User-Agent: Mozilla Thunderbird
To: En-Wei WU <en-wei.wu@canonical.com>, Sasha Neftin <sasha.neftin@intel.com>
References: <20240503101824.32717-1-en-wei.wu@canonical.com>
 <7f533913-fba9-4a29-86a5-d3b32ac44632@intel.com>
 <CAMqyJG1Fyt1pZJqEjQN_kqXwfJ+HnqvW1PnAOEEpzoS9f37KBg@mail.gmail.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <CAMqyJG1Fyt1pZJqEjQN_kqXwfJ+HnqvW1PnAOEEpzoS9f37KBg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::9)
 To MN0PR11MB6280.namprd11.prod.outlook.com
 (2603:10b6:208:3c0::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6280:EE_|CY8PR11MB7108:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d3ce0fd-9c04-4819-088e-08dc6e5e0000
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1Z1RUs4OGFYbzA2ZmJoUWR5R2VkcXd1b3RzNUVPeUZCUVhYaENFZmkzMUhW?=
 =?utf-8?B?Q0RyNGhBVW9YeEY4OVpFV3RINUhsMTVUZW8vUlRTdS9jRk9jWDFwSHcyVHky?=
 =?utf-8?B?N2RmRkVYRTFIazdhREQwU2ZUaFI3RGV3a2ppZlZMbGxaRXZPK3Q3VTdTQU9B?=
 =?utf-8?B?cU9xZStmVXhKd1ZIMHBjcExDSUFEblJoc3ljaUh2eWtLQlFOWlRmRWpoVnZv?=
 =?utf-8?B?bXFVcFdhakxjeWtFaXJpMEVqcGNLbVhBYUlGNUhMYkUxUGpPOTlsUlpQbVll?=
 =?utf-8?B?KzdLdHZ5Z0QzMkMzTHl3V1kxVDdNRnd1WFNPTVZWYU1nbmI4eENBUDgvczVY?=
 =?utf-8?B?dE1kOTl5VDRybktRa1FjdyszVEl2bFhZS01ISlpRMHlETmIxWDhuNkd6OEpq?=
 =?utf-8?B?V0pwS25rNVlPUWxibUhKVlRlOGZYTzdDMGJvNlZ2TWRrdkFtdzZtV2FqTEpF?=
 =?utf-8?B?WEpES2hocmErZHlEalZUa1NqaDVhakZlM0prM3J2QnNkak1pYThra0xUS1NW?=
 =?utf-8?B?NmxkWlZCZmFBOTFMOFZHbFE2NldXajI1M3VFYm5tT3BKMXhSbkdENzAzajJC?=
 =?utf-8?B?QU94MmVRMitSZWEwRVRjczJEbVNTTlNMdVVGNHlBczJWaUE1cUFnbTgvbStS?=
 =?utf-8?B?WHNEcjlyL2VzRngwN2tMbEMyMkc1d0N3UDBHdy93VVRBNGxGa1pzZ2Zzd20w?=
 =?utf-8?B?dWxqbHNnWWljSWd1TXdoUnlhVERBZUh0NEMvNVh4NEdiZmdNZElmb2R0WEtY?=
 =?utf-8?B?blFqeTY1YTVITmpwd0Fja2dpZThMa0plc3JyMDFUT3oxaWRocEU0NC9wb0Nu?=
 =?utf-8?B?cVZVVlNOVldmLy9mQzRLL09kK2NiRXZGNkVTcU9aY1IzSGtTTTQ4NFc0bHph?=
 =?utf-8?B?aWc1QUxwSGJqaS9Mcy80a25WVHNIbWxZNEI4cDl2UU5BTTRQSEM1SXMyb1Qr?=
 =?utf-8?B?OVgzVzBVUzZTdlVZTXBtZkJDazZvK2xJK2lpWmJTaDdBdjNGRDErQ2ltdmxB?=
 =?utf-8?B?TkhSQmt0ajZkR2w1UUgzemhUZ3ZOMlRRRmRYWmZ2amVlLzVaNDZ3M3JLTlJC?=
 =?utf-8?B?d0FzQWVYWEFERVpabTRacFh5RkRhMWpKSlo0UEFCaVBDd1VvdHl1UDd1M2kz?=
 =?utf-8?B?UE1PVm9TQzZwQnBndHZCNjZvL05WZDZQTVhGc2VLOW1mMjJWcUI0U2w5ME5V?=
 =?utf-8?B?V25wTlM3SUloR2VxMW82eW1JUUpLTnlNRXFCVk15UW1MdW9NeG5TYVpDTzFs?=
 =?utf-8?B?a0lSRk9WdDludEtYenRkSHVmVnZGK2VGWkVZWm5zSHE5d1FBVURyOGtiQ3lZ?=
 =?utf-8?B?b1ZaWVZQOWcyT2xiK2xZWTBDSzNzRHlMbHUxcFdTVE9qT2NDRzIwTENETlRn?=
 =?utf-8?B?Y3l2L0VnYUVkOGJRUm9EZ21MM2I3UFdJZ0s0RmZkQ2pzMVA4ZnRWTGRNM2lO?=
 =?utf-8?B?MFZJYXZxcllpWmxDTTljTVQ5UHdZTnlKenRLTm5GcWpyRzRxRDV0cEJpbG9k?=
 =?utf-8?B?UFRMT0l6ZlJOMGliR2xmOVJGaVl6UWZ1M2VXUitTV0dibEhkQUJzcW9kUmVU?=
 =?utf-8?B?QmxiQy9BZnNJTk8wMXVKUmwweTJmbDJBYmFxdzg4ZUcrNTNwYUF1OVhid0xP?=
 =?utf-8?Q?WyH5mDUwJf4MEWKaCA/X5ussDb3o28aDEev4qijwfwJo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djd5UFNUeG90d2Q3cjRFMXZjTlVjakNUeFc5d2k5bmlIYU1ZUHBETnR3SWZa?=
 =?utf-8?B?VFB4WURHVlkvSGZ6RWNzN20vMXI0WlF3V3V1NVZFdkwzWk9BWHJEeVlGTFdC?=
 =?utf-8?B?MzMvOXBnRk90eUNOUEtKQll2ZzQ2NDZRNnpDRDFkYzVxam9xVTUzZFlMZW9M?=
 =?utf-8?B?S2hDRUNxWWZSWjZpTno3ZFZkMlN1V1VZTnQ5NHZBRmp0RXpFSlRiTlEwWThY?=
 =?utf-8?B?Z2lGL0NKS1dXRHFJemxRN01Hdy9qNkxKTHNHTG1GMjRxZzZ0S2VrbnhKLzBs?=
 =?utf-8?B?UllJQmpmaEY5SFlTZjVwYnhMTS9icDB1MGM5WG5nRDNoSytrM2JPSEVobHYz?=
 =?utf-8?B?UEIzUjBEM0xGTzlaQTlpMkdvNDNvVkgyU2d1N3J3WVRDcVdGMmUxMDFxaytq?=
 =?utf-8?B?K2JEUGtNaHora2ViSGtzaWl0bExWdTM2S0ZVTzFYT0FhREpmdXp2dEJxQzN4?=
 =?utf-8?B?K09za3U0RUdQcUcvN3FYVVdrRmJ1UnBPZDFLclNMckkvbjU3YU12RExCU0Vk?=
 =?utf-8?B?aXQvUWtiajdPTG1waCtzMnBHK3dXVy9nTjlDVGtadkxaSTRHZEFrRkdoRnpt?=
 =?utf-8?B?cUhtT2lHNEVUUEtnMnBwOU5jN2NFcnd6Qk1kSmN1dUpHNysxOHJHRW9CVEJk?=
 =?utf-8?B?OE5MRU56WEJ2OWlIYW9OeVdUY3Q1ZlJNVTVmWHNtamFQTmYwSXdRdUtoellK?=
 =?utf-8?B?NFpnTlZWcFo1OWphMmJuTjYvenBxTmllb3VPM09zOUF6OGFSeTB4bExLRGND?=
 =?utf-8?B?Z1JTVllBZW9wVG1hQmtNVGsyQWFpQ2kzaXJTVDdyMDlhVkhGcHRXU0hVWE1m?=
 =?utf-8?B?NW1MVmpvUlRSbXEwNGFyVmV1Y3hPRnZxenBDd3ltQ0t6VzhDUVFubjNzRjY2?=
 =?utf-8?B?RUkrWDYzOXFZdnR4ZHVzdnpiNHF1R2Z3YVo0cjhSVXJYN0hUZVcwVlJlK0Vr?=
 =?utf-8?B?V2U0QWpOYld3aXFyLzlMU24zRi80Z0hTY3phZVU0MHFldlNvV3RNK2o0SGhE?=
 =?utf-8?B?bDlEQzU3SGJuSHVlVjJXdExjNGlGWkdmbEU4S0hSRFJVN3BzT3N4eUt4Q2RS?=
 =?utf-8?B?VXZxUWlGYmZlUDd1dUhFMXZmQ0tVM3B4RmJhWk1IdjkwUjZBODR5R1d1elZK?=
 =?utf-8?B?NXVqK01wa21wc2QxUEJ4eVRtbS9scXpzUWwxVGkxN3FORXFKczdsY2ZpVWFy?=
 =?utf-8?B?WlJaSVVCTGRhTTByU0NNa1VNN3dvbU1BcFRZOWNnbUNleFM5VndaYkgwOFU4?=
 =?utf-8?B?dGFhTTNNd1RoenpXSlppbk5nWEdDTlYweXFrU1E3RmJNWVdIWUREem9ORG1p?=
 =?utf-8?B?UVNyRCtHYTVPS3hxUlB3eHJkeVNvZkJQNlR1VEdqak5kVXUzc3hlT2g5VzRa?=
 =?utf-8?B?NXN0N2pUYUYxbnZkQkN0OG5OMDc5emN4dTVONnVIVThZaFdjVVJMQXdBek9n?=
 =?utf-8?B?a2ZxVm5ZbElINzFSNGFtR2t4ZVo4YVQ1SytFdGhmUWRPMkd4YWtjN1haanlE?=
 =?utf-8?B?Zm9FVGdrUHJYSTArVlBpZ1lGKzh2OFZvdWVlNkFJUzJMelBrUWxlYXR2dG8r?=
 =?utf-8?B?VWpJaUU0UTA3ZDVFZDcwa1JXclpKdXJ0UVBXdE9oVENldTkydlBBMzZscVUw?=
 =?utf-8?B?cWhJNWh1MEtYQmVmNE01SllFdEh5dUh4SVM2Wk51dkRDdHNyV0IyeXJzdmxR?=
 =?utf-8?B?cnhBcVVkMmdlS2NkR2NkRytBaldLRDIrWEt3Qm9jQVBaWXFCSUEvZmd2Wi9n?=
 =?utf-8?B?MkRnL2gzTlZaVDlFRTF5ejNhcHhCT0Q2ZGRvYlJEYnhwaUNOSlVKbUFzVC9r?=
 =?utf-8?B?N0V3eFNLbm1VQzNIUE9KRjBDTmE2d2tZMlNTRjRpb0pMWnk4MEpMd0ZSWjVh?=
 =?utf-8?B?SnRKWGRSZmN5ckx1aWFsb2J2VlYwb05KRVlvU2x5VWdBek0zbHV1VjFMbVJ0?=
 =?utf-8?B?SGFaeDMxVlJQTXA3aS9nd3JrRzF1N2JTYTl6WjcyelhWOXBhNjhYTDYrL0tR?=
 =?utf-8?B?eXFSK0lrS3VkeVpGSTM0QUdFbmx0WGRmMHp3SHh5bVQ5aDlTMHRlVnoxWWVl?=
 =?utf-8?B?a1Q2NkE5UGVicFdqYU9aNGsyTWp0WnpCT0RuQS9PaUV0ZEdneG1qV0ZJMmg1?=
 =?utf-8?B?RzJqRXhycjA0QjE0by9jYXpBdVZpOEUyWkc5TkZJZ3NxaDFaTGVBTmdhTHhC?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d3ce0fd-9c04-4819-088e-08dc6e5e0000
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 06:21:58.8096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bJ7LfFtQFYDDk9CmoY/AGuSkFgwXwaDDqYTMTuViZVqOPrbd3YKAkAe1t07jCU4x5v2sai3+7tia7JgHX+0uqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715062925; x=1746598925;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9l/uDptEKp6D8ESE9xXVMmYUQZsv2O2XH5zJfp3aO2g=;
 b=VQLX4jLn4eipvZplVHLIYGdH6rXPnwy8DiqcczF39cRcA294HrLYf5ZF
 ZGp98v3V9acV0iphJQJ/QnfLsAd59+RWIEV1ECNrp3F4UYNG/IGkMqV4R
 4i77RqdwHNlkBRAjbJFJosN2ZOhepAO8SXYN63RYUGBBtpMRxdV+VoMKj
 j65mgnbeAuLUlPHgch6BkJIedP/TqJJo6+RjMVwi7iY/SGXRsdORBuyTw
 SqVnvDnlSFQTmbNIAv7biDwlVCZx3RS4SDTRDtGk0mi8+S2ysi2KnewpO
 9YpeIl23cEV1V/wXaopZ4gNe3VyMfK7ojxcpBQfJ4bJdFCdY0+MH6+Cwr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VQLX4jLn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] e1000e: let the sleep codes
 run every time
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06/05/2024 19:46, En-Wei WU wrote:
> Thank you for your time.
> 
> Originally, sleep codes would only be executed if the first read fails
> or the link status that is read is down. Some circumstances like the
> [v2,2/2] "e1000e: fix link fluctuations problem" would need a delay
> before first reading/accessing the PHY IEEE register, so that it won't
> read the instability of the link status bit in the PHY status
> register.
> 
> I've realized that this approach isn't good enough since the purpose
> is only to fix the problem in another patch and it also changes the
> behavior.
> 
> Here is the modification of the patch [v2,2/2] "e1000e: fix link
> fluctuations problem":
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1428,7 +1428,17 @@  static s32
> e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
> - ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
> /* comments */
> + ret_val = e1000e_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT,
> 100000, &link);
> 
> Do you think we can just add a msleep/usleep_range in front of the
> e1000e_phy_has_link_generic() instead of modifying the sleep codes in
> e1000e_phy_has_link_generic()?
> 
> Thanks.
> 
> On Mon, 6 May 2024 at 23:53, Sasha Neftin <sasha.neftin@intel.com> wrote:
>>
>> On 03/05/2024 13:18, Ricky Wu wrote:
>>> Originally, the sleep codes being moved forward only
>>> ran if we met some conditions (e.g. BMSR_LSTATUS bit
>>> not set in phy_status). Moving these sleep codes forward
>>> makes the usec_interval take effect every time.
>>>
>>> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
>>> ---
>>>
>>> In v2:
>>> * Split the sleep codes into this patch
>>>
>>>    drivers/net/ethernet/intel/e1000e/phy.c | 9 +++++----
>>>    1 file changed, 5 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
>>> index 93544f1cc2a5..4a58d56679c9 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/phy.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
>>> @@ -1777,6 +1777,11 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
>>>
>>>        *success = false;
>>>        for (i = 0; i < iterations; i++) {
>>> +             if (usec_interval >= 1000)
>>> +                     msleep(usec_interval / 1000);
>>> +             else
>>> +                     udelay(usec_interval);
>>> +
>>
>> I do not understand this approach. Why wait before first
>> reading/accessing the PHY IEEE register?
>>
>> For further discussion, I would like to introduce Dima Ruinskiy (architect)
>>
>>>                /* Some PHYs require the MII_BMSR register to be read
>>>                 * twice due to the link bit being sticky.  No harm doing
>>>                 * it across the board.
>>> @@ -1799,10 +1804,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
>>>                        *success = true;
>>>                        break;
>>>                }
>>> -             if (usec_interval >= 1000)
>>> -                     msleep(usec_interval / 1000);
>>> -             else
>>> -                     udelay(usec_interval);
>>>        }
>>>
>>>        return ret_val;
>>

Regarding the usage of sleep/sleep_range functions - they can only be 
used if this code will never be called from an atomic context. I do not 
know if such a guarantee exists.

In general I have quite a few questions and concerns regarding this 
patch series. The comment in patch 2/2 states that it is designed to 
work around a link flap issue with the average time between link up and 
down is 3-4ms, and yet the code waits a whole 100ms before reading the 
PHY bit the first time. Why so long?

Furthermore, if I am reading this right, it appears that, with the 
proposed change, e1000e_phy_has_link_generic will poll the PHY link up 
to 10 times, with 100ms delay between each iteration - until the link is 
up. Won't it lead to wasting all this time, if the link is actually down?

Looking at https://bugzilla.kernel.org/show_bug.cgi?id=218642, at the 
problem this commit series is trying to solve - I wonder:
(1) How serious this problem is. It is normal for link establishment to 
take a few seconds from plugging the cable (due to PHY 
auto-negotiation), and I can accept some link instability during that time.
(2) Assuming the problem is considered serious - have we root-caused it 
correctly.

