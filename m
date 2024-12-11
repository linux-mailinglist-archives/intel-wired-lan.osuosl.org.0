Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 340049ED203
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Dec 2024 17:33:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A80280D27;
	Wed, 11 Dec 2024 16:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k2808VMPquYi; Wed, 11 Dec 2024 16:33:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C2B581321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733934811;
	bh=68YAqs8+2jxTuHCdko27poj/2lR+v9JExGydyKnuwEc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pzvE64JM7Ag0afL5MHnT8XDX4xywlJwKn+9m0lqjcKjrZQbED84S33c3jCBU+f2p+
	 HsG0vEeUXJmAlgbNhyIxFxqoG13LfCeR/oV9s1hss2O/R1aFzEQJvNJUeWaYUz8eHP
	 fnZTwgvtd/1k8dwSemg8i+J/p4ZAKjoTA83uRKFdZYxCzDWyAmYfMrZu4IeAPfVGYa
	 nbgP/5wHnmqMT1YnzBUBNBx/9CWJxA77ZK8udeIDRvXQVU7YTE/t5zBJcRNXgEmXP5
	 6hcIkdWLQ9Uh776GYrmtCWmG39enwHpV2fIA3c7qiccJz9lWvvEStDMmSBmSXcS+BP
	 mj5boOTaihBMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C2B581321;
	Wed, 11 Dec 2024 16:33:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B9F2ED2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 16:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C80580D11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 16:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sV4-Y4m-7i-h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Dec 2024 16:33:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5122D80B23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5122D80B23
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5122D80B23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 16:33:27 +0000 (UTC)
X-CSE-ConnectionGUID: wocC+qKkQqGbZHX5lyluOQ==
X-CSE-MsgGUID: xphkZLV9Sdae8/gyhPF3eQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="33652965"
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208";a="33652965"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 08:33:26 -0800
X-CSE-ConnectionGUID: 11+R/D83RIqoGgRtm3VD7w==
X-CSE-MsgGUID: I8umq7vGQLaXvaClOWXC7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96314711"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 08:33:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Dec 2024 08:33:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Dec 2024 08:33:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 08:33:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RVJPqPPAhGLrcDiBfLpjOZSndSejmUJfYjS+PFHEqw3CBhjSRPMw/YlB72jPSB/ykAsOgHrEcKkL8QbpwBNQfHJgxtvcUmh+VWEXc7OEm5X3NJWOF6wgiJfgC/CPRIIdz/w//h+hGVlZ1MKDOqwoOGZxVJJFQGUbela+MevbrBlaJGoVGgJOW5RHgwi7OhUDvgWjIFrWbVPbweHVRp8ijzvZqa0Z5eKi68lKNnKbXzabBwAI5mJoxgAnzc/QMLMY6iTAnMsGNvJgTWC3ODg9rbLPHnQnPJkxNsvyMsi6SeU7K6pL9mSn9PzhLdDR7/cDhx78pKa8lNv4YJ/1decojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=68YAqs8+2jxTuHCdko27poj/2lR+v9JExGydyKnuwEc=;
 b=JTfktvJnUwHdRvtaub+GhfkgV9gm684bQAuUhMVR2Tj1K8N+ILERSUouoaSKQZqR4nmlnoHVPUgM2AoGL5em0R14vE6awIawrmlwbQOiiNbE1BRtzobn2ZW9sovinIaP9axCeHFd7CaR/EvX0775ovggqQ2sUhP4OezZVEzDHPIENIWC6JsVH8AjB6pNiQIWRH6nlxSXDG3WVrgug0kMSCMmWHdiUi6QaqkHWjkmzHzE6OUkcsy5j2zNj7T+ATy8N7QaEMZh1jU3r1kcIMg00IUz0CL0oIXoVB9oM8tHb6kimXOo/ZOoz1csSWr1XyPUCfpivuLxXnY/n8wczWIIlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MN6PR11MB8103.namprd11.prod.outlook.com (2603:10b6:208:473::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Wed, 11 Dec
 2024 16:33:23 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8230.016; Wed, 11 Dec 2024
 16:33:23 +0000
Message-ID: <d07c513c-a12a-4163-a582-a3d88bbbf4a3@intel.com>
Date: Wed, 11 Dec 2024 09:33:12 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <andrew+netdev@lunn.ch>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
 <20241210002626.366878-3-ahmed.zaki@intel.com> <Z1eZXKe58ncARD2N@LQ3V64L9R2>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <Z1eZXKe58ncARD2N@LQ3V64L9R2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0329.namprd04.prod.outlook.com
 (2603:10b6:303:82::34) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MN6PR11MB8103:EE_
X-MS-Office365-Filtering-Correlation-Id: cb4ce830-1b40-4bc1-ba63-08dd1a018772
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXpkSVdJaGZVaVNrMkZpQUJDbFZEeWhtOExiNFE2NU9uZmVyR1hEODUwV1VK?=
 =?utf-8?B?SWF5NFAxTlVPQ0Vpd2hCakFSUmlQYjdndjVVS2pKRUVvdTNMZEFkWEthUDMr?=
 =?utf-8?B?OXduK09KaGZpbWxYUXlmRUx6bkxmVElWdmFDT1VFZUVlbUNwTEw3ZDZZQS8w?=
 =?utf-8?B?clU5eVRyanBqNjdzcXVZNGppdHp4dDJzZFJRTUVGOGFkSWVEK3VSbjlhdWpy?=
 =?utf-8?B?V0hTU0FQZXNvUGtzVGtjL3VFTjVGbmttL3dhUXliZzJmVExUUW82K2xUR202?=
 =?utf-8?B?WEZicGVOTlo5ZGtyWWMrVnV2WlZZdWsyRk5uU29aWm9vV0QwM0FxYmZaaXdn?=
 =?utf-8?B?ejlmWnRYTzhjb2wza2RqOXlWR1I2SGhrQ3MyQ2FRRUVKeUtLS25LbXBPMDBj?=
 =?utf-8?B?V1hlcDFqckNjRzhUNnE5VElsVUM1L0FRaW1xcWcvdnRXek83OGVvTlFON3JO?=
 =?utf-8?B?Z0J6OUhrVXVSUWN5YzVudU5jMW9rdDZlMWtFeHhKMXg4a3ZwdWFZNlFURXg5?=
 =?utf-8?B?SC9KSHU5ZHRRV1hOOTBuUjA3ZHJqakYzSUNpZWZodVhtbnVGMXJhV1pvMVVh?=
 =?utf-8?B?cGdkellJN0JLK3R5blBJS202UHQxVFVhSEZuZUN1SUM3VldaTTF5bmZRS0xp?=
 =?utf-8?B?ampCQWFiZm5wR2RMTHNJTXRCUkozcWdGejVUcS9McWd3bzlKV2hlaVI5N3hk?=
 =?utf-8?B?RkxUVTQvbm9VTmZVeEQzSEd3d0gzMmdCZW1lN0FVVFZnZ3ZycE9jRjc5K1pD?=
 =?utf-8?B?WVZqcy9EQkd2ZlFoU1hseDdMOWpycHZqL1NueUY2NDlBMzVWb29kN3QwdUIw?=
 =?utf-8?B?SVVHK3BBRmJBZXpBd2k0VUVaL3ZiYjJmU1d6ZS9UVlllOFNoaVR5Q2VvMHJD?=
 =?utf-8?B?V0JodU1PZ1YvOTAwZU9UK1NLQXRLbUZjVDduREh5NTdTRDAvZTlOQUlLeC8r?=
 =?utf-8?B?eDk4VGRIbXRGZ1o3djY4Mzg5UUhDc1FiL0tPZWxUWWNKTDRBOFAySkJveE5M?=
 =?utf-8?B?VHMyKzFTblVvYXVNYTE3ekZCYTl2OGg0TThuZk92SnVPZlNibjVsK3crSDk3?=
 =?utf-8?B?WDUzSzRtU3oyQVZOZjZOR1Z5ZUkrK2poTkRXdk5USnM4VzRIUTE5NkFxR3R2?=
 =?utf-8?B?ME5FcVpxeStkbVNYVU4xcmpQOHJaY25BTncyRTQ0aE0yUEhHLzRTRDF2QXhQ?=
 =?utf-8?B?cmhGeU50YWVZOHBKYVlUTkR3YXR4SWp6TFc5elBVS2djSDNSWjRoNWVFcXg3?=
 =?utf-8?B?QWhiRGh3SGRzKytOK2dYVVZNZVdHamZMaWpqeXNSZWREN3VNQWo2elp2RytW?=
 =?utf-8?B?c0V2OElLN1hlWnYycmlaYkt2S3NDUHVNelRkLzlnK21ERHo5dkphZGFJd1ZJ?=
 =?utf-8?B?UnhtZDd2UVhCMXhmRkhJSE41UEcyTnM4UThkZTVBcGMrcDNsd1l4eWlmTTVh?=
 =?utf-8?B?R0s2RVp5aXZ3eS9mTEcwYzdKNUtzRzlzMUN2b2cvQmY5S3h6d0hwT1BhTnIy?=
 =?utf-8?B?ZTN4VDgrNklHUFc2WnNIUlp6c0lTTkRCbWQwK2k5ZnQweDhJWGJ5RE5sMHlW?=
 =?utf-8?B?TTJ5SVZ6QW1CcU1zTmdrbE5yeHRuS1NIS1pjWGtsMHV6eWhjblVPZng0QjYz?=
 =?utf-8?B?bEdhTWJCc2I5SG1Fa3AycmpWU3FzZkVicWthVHZxRFA2cFJic09yR0VHTXJM?=
 =?utf-8?B?WUtoZFZscERrbm5IQlVWdUIvSmtMUm5PN2Q4c3drQTdBRFE5TkIzbW52cVUw?=
 =?utf-8?B?d1VLb040MzR4bmpQcXloMFViR256SkZhYUw0UEtoWExNZ3dyQ3lNODkveGNV?=
 =?utf-8?B?TncySFQ0dER3S1h0cEZ6WEhSTWR0RnJNQ3crSHBnWi85M1VzdUhUWGZPd0FG?=
 =?utf-8?Q?w0vkxBkROgO/z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDdra2ZqRmxocFM4Zmd0Qk0yZ21HTkJWWE1KSjQzTTF6YjdYM1NCOHgzWm0w?=
 =?utf-8?B?NXk3RVVTWkh5dWRIdThKWlBxUWdZT0tpYkZISDFnK29aeTNtanNqa1B6OC9k?=
 =?utf-8?B?K0tvcENFVkhRamVZQThoaVY5ZmwrcGRhcVJOV1dkMkNEeG91ZGkxRUV2cGlR?=
 =?utf-8?B?TmRpdnVyZDBDUU1IN3g1aERGcDdIZ0lHSU5vRktQaS9VWmY1MzBaUmZvY25u?=
 =?utf-8?B?STNmNHdDd2V2dDh5OHRIZjkxVlVFSXJtYXZvTyt1OTA3Ym1HQ3lwSkgyWnAw?=
 =?utf-8?B?ZkVVMUlkVEljYm9uQk82Y0VEMG1PazgvYmI0YmJpVFpGZVBiZUsrT0NGOG1F?=
 =?utf-8?B?UUM4NGYrMkJxZmFnL3hzeEw4aVpkcWtTaDJIcThhaEVxNXBEZ2hPZmsyVDRn?=
 =?utf-8?B?SU9PZE9iWG10Q1FYWWFvRDhMZmZ4dXRhdlo1bWNtL1pKdVlKM1hydkxlV3Ba?=
 =?utf-8?B?ZVV3emJhN3E1QldKL1JaNnZISzAxU09wWDFzeGV1Ty9MektCRGFhcGxPcHdS?=
 =?utf-8?B?ekVYQWEyWGZnbHVIK3dXMEd3RTQxTS9LZjZSamdEQlhXTGs5ZW5zNHZBN0x2?=
 =?utf-8?B?emVOZmpSbGZoQk45a2FlZFBDZ0VRVUdjOFJjUm1CQkF5dGtnQlM3MGZoTHYx?=
 =?utf-8?B?ZkgxY0E4TTBhTnNvUGE0Ui92S0VkTmZKcFk1NEl0OTh2b3p3YVphYlAzenlR?=
 =?utf-8?B?RXB5MExIWVVRSFZSRXFTZC9zcWVYbE10eTlHZklnbVJGY0FycTF0d3dIYWVW?=
 =?utf-8?B?ZWVQMVovZUR1cDhDK1FydlhtUE1kVVI5anV3WDdhOGR4RTVqdmhBS3I1VWtN?=
 =?utf-8?B?VDFhUGZMT1VHZEFuUjI4RitoeVJKWGZWY2R3d2lSNnVwNk1vUG1zMlRDellE?=
 =?utf-8?B?ZEsxVUl1ZDdrZXVodDJ1T0NqNzYrUVE5dThrbk9uRTRYYkFSRlBqbUs4UG9Y?=
 =?utf-8?B?cmZJd0p6M3c4TkNmWFBhT2R5bzlvczg3WVdIK1NlS0djSDlobFVCaDQyb0NB?=
 =?utf-8?B?ZkhPSmVvZDF0dVdxeUFqdCtuQzdVTW41L3BJQjdkdVFtMDZlMzc2RERCUlpB?=
 =?utf-8?B?T1JzSjVuT0NVUlNBalYyZlhnRkdUckZVSG8yYVU3ak9wTCtoUmlxa01obFg5?=
 =?utf-8?B?R1pkeTU4dURjL3I1YngyMnh1anNvc0xnYXpKb2NzdTRVNlg0cHNsYzViWlRz?=
 =?utf-8?B?MjRIY0pHbkxnR0FuK1d5Uk1OSGNNand3aVBkQ3B0UmJlRk9QSkEwUU1QZmtV?=
 =?utf-8?B?R2VKdEM1c290VG84bHQ4bmsvc0pVeWdJUTFhcmxJYjQ2OGJyVUVuS01VYUVU?=
 =?utf-8?B?bTgvQkhtUzYyZUNPak1XUW81dlZmOTY5azdxbUFqWmVVYmlFUnlZSmhiMzRR?=
 =?utf-8?B?a0MyaGJGVGNTZ01BUkJFNzZTdkhXVklHd1dOTjFOdUFKZUU3Z29ZdXN3TUpt?=
 =?utf-8?B?VUdROVp3VkpYS1B0bzh4cktSeWpwN1hFUE5ZZjZXbmxFcUlMMWFOOTUrMkNp?=
 =?utf-8?B?Z2RZMVk1WFJKdk1pUjFvTk9sQ25FZkp4ZGZxdk1lYTVzaGpBSm9RL0ZRZGJY?=
 =?utf-8?B?RktvSEV0QzFiVzFjQkVFSHMzRFlGMXh0eG5wRW9MZThCbDBvcXB2eGY4Z1hG?=
 =?utf-8?B?U3cyNWZ1aHpxeEZVVjErMGFNM3lXMHVTZU8rNHVLc3JGaHJxS0k4ZCt4am1Q?=
 =?utf-8?B?SFlxdmdkZWRaSUlDNUIyS1llVE93ZjI4YVRTTlFlVGVZTmduK3pMaEswTnZR?=
 =?utf-8?B?TGsxRzdBVXd2WnJwazhxdytXOHA5VVpyYzJoVXNRU3dIRUZZU1dkRkpjc0N6?=
 =?utf-8?B?YjFlQjNCaTY3RjBJcTlJUktGUXpUTEZac25LNW40Znl6TjJRdGRHbUN6R21h?=
 =?utf-8?B?ZjFNT0ZwWjhPeWJGUENJSTVJbWtUTkV6WWFlRnRpZThBU2ZhZmpLcXZZWXFz?=
 =?utf-8?B?S3o1aVpvS1ViVmJnTGlzZnYxMU10eVF0WnBncTl4K2dZUjljMEM1VmhKamF1?=
 =?utf-8?B?blFpcDUrVmo1ZDdnYU5wa3RIS0tNSEMxWGt0STgxYWxmQUxkOElJNGFESGgx?=
 =?utf-8?B?T3dBRjhBUW85bXR5M000WnhPeUJnZmprZHRmSEpDQkNrVG9PamNlaWZIZ2VW?=
 =?utf-8?Q?5PTqO4KfIH3GJ/wGyVb1+6HC7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb4ce830-1b40-4bc1-ba63-08dd1a018772
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2024 16:33:22.9196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9nnlKVcevEgxUu7SP4Zwm3ip9odTANJRbo8B+2g1H5xcxmpYDL5NAhD0o7JUU4k9bbHHvoyY83tON/q+Ob6Taw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8103
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733934808; x=1765470808;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MN+fYduR78TFsZcAnVa9LUJZ2h1zvVwjmR+++9sz3+Q=;
 b=aASha9G5uL7pFADbMhqAmOvQCuWR+1aznVm1qh9M1k5L8cfbXn0Vp5YH
 l6RwkFHvDdhEBi/Ppjeitcn9V9KTnkYcRT7KeXtTGarJfpaL95dTeVhq5
 16m1w+tE+VZXSxF93Z1ANxe0KEET/aeao/h+nk9uC2eagJkFRSUAMsyD6
 1EZ22U8VYrH3vAdO1829sFztIB1YFPGxxn7TzFmPyVd+iaKA6+kvxYqQ5
 D+6TA2sJDm0CRQn3GtQ2ceIHt5xwzq7a6qIN6q6HtSQZ6gPQqHeb4EPQT
 C1nwp5Tflz98dfm3zqTcznldc2HcmUD2dYm17rBd83blFp3B++yYSlpZ0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aASha9G5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next 2/6] net: napi: add CPU
 affinity to napi->config
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



On 2024-12-09 6:29 p.m., Joe Damato wrote:
> On Mon, Dec 09, 2024 at 05:26:22PM -0700, Ahmed Zaki wrote:
>> A common task for most drivers is to remember the user's CPU affinity to
>> its IRQs. On each netdev reset, the driver must then re-assign the
>> user's setting to the IRQs.
>>
>> Add CPU affinity mask to napi->config. To delegate the CPU affinity
>> management to the core, drivers must:
>>   1 - add a persistent napi config:     netif_napi_add_config()
>>   2 - bind an IRQ to the napi instance: netif_napi_set_irq()
>>
>> the core will then make sure to use re-assign affinity to the napi's
>> IRQ.
>>
>> The default mask set to all IRQs is all online CPUs.
>>
>> Suggested-by: Jakub Kicinski <kuba@kernel.org>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
> 
> [...]
> 
>> diff --git a/net/core/dev.c b/net/core/dev.c
>> index 6ef9eb401fb2..778ba27d2b83 100644
>> --- a/net/core/dev.c
>> +++ b/net/core/dev.c
>> @@ -6699,11 +6699,35 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
>>   }
>>   EXPORT_SYMBOL(netif_queue_set_napi);
>>   
>> +static void
>> +netif_napi_affinity_notify(struct irq_affinity_notify *notify,
>> +			   const cpumask_t *mask)
>> +{
>> +	struct napi_struct *napi =
>> +		container_of(notify, struct napi_struct, affinity_notify);
>> +
>> +	if (napi->config)
>> +		cpumask_copy(&napi->config->affinity_mask, mask);
>> +}
>> +
>> +static void
>> +netif_napi_affinity_release(struct kref __always_unused *ref)
>> +{
>> +}
>> +
>>   static void napi_restore_config(struct napi_struct *n)
>>   {
>>   	n->defer_hard_irqs = n->config->defer_hard_irqs;
>>   	n->gro_flush_timeout = n->config->gro_flush_timeout;
>>   	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
>> +
>> +	if (n->irq > 0 && n->irq_flags & NAPIF_F_IRQ_AFFINITY) {
>> +		n->affinity_notify.notify = netif_napi_affinity_notify;
>> +		n->affinity_notify.release = netif_napi_affinity_release;
>> +		irq_set_affinity_notifier(n->irq, &n->affinity_notify);
>> +		irq_set_affinity(n->irq, &n->config->affinity_mask);
>> +	}
>> +
>>   	/* a NAPI ID might be stored in the config, if so use it. if not, use
>>   	 * napi_hash_add to generate one for us. It will be saved to the config
>>   	 * in napi_disable.
>> @@ -6720,6 +6744,8 @@ static void napi_save_config(struct napi_struct *n)
>>   	n->config->gro_flush_timeout = n->gro_flush_timeout;
>>   	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
>>   	n->config->napi_id = n->napi_id;
>> +	if (n->irq > 0 && n->irq_flags & NAPIF_F_IRQ_AFFINITY)
>> +		irq_set_affinity_notifier(n->irq, NULL);
> 
> My understanding when I attempted this was that using generic IRQ
> notifiers breaks ARFS [1], because IRQ notifiers only support a
> single notifier and so drivers with ARFS can't _also_ set their own
> notifiers for that.

Thank you for the review and reply. I was wondering why some drivers 
check for ARFS (in buggy ways) before setting affinity notifiers. I now 
have a better understanding.

> 
> Two ideas were proposed in the thread I mentioned:
>    1. Have multiple notifiers per IRQ so that having a generic core
>       based notifier wouldn't break ARFS.
>    2. Jakub mentioned calling cpu_rmap_update from the core so that a
>       generic solution wouldn't be blocked.
> 
> I don't know anything about option 1, so I looked at option 2.
> 
> At the time when I read the code, it seemed that cpu_rmap_update
> required some state be passed in (struct irq_glue), so in that case,
> the only way to call cpu_rmap_update from the core would be to
> maintain some state about ARFS in the core, too, so that drivers
> which support ARFS won't be broken by this change.
> 
> At that time there was no persistent per-NAPI config, but since
> there is now, there might be a way to solve this.
> 
> Just guessing here, but maybe one way to solve this would be to move
> ARFS into the core by:
>    - Adding a new bit in addition to NAPIF_F_IRQ_AFFINITY... I don't
>      know NAPIF_F_ARFS_AFFINITY or something? so that drivers
>      could express that they support ARFS.
>    - Remove the driver calls to irq_cpu_rmap_add and make sure to
>      pass the new bit in for drivers that support ARFS (in your
>      changeset, I believe that would be at least ice, mlx4, and
>      bnxt... possibly more?).
>    - In the generic core code, if the ARFS bit is set then you pass
>      in the state needed for ARFS to work, otherwise do what the
>      proposed code is doing now.
> 
> But, that's just a guess. Maybe there's a better way.

I will look into all of this and send a new version, but yes it is clear 
that the core needs to manage ARFS rmap creation and updates beside the 
affinity restoration.

Ahmed

