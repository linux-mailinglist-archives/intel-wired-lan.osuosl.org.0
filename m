Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8768BC28C47
	for <lists+intel-wired-lan@lfdr.de>; Sun, 02 Nov 2025 09:43:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BC698528C;
	Sun,  2 Nov 2025 08:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wzZ5K1Ni1w8; Sun,  2 Nov 2025 08:43:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E49378528F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762073018;
	bh=ymQT8pKy3Srvhr25uBhcs6WrYWC0G6GBHmisRXPeels=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xdPXSc+3MJ/Tt1WX+3aFfjwZbamEUlahyUnCu3obn07ANanCdaAXrU4O6b2h0zhYq
	 P/SBz38JJq6Gx7JeqZvYyJLIHL2lei/Kl75N3xg/OesRSGPxiW1ekTdf06Yrc9g/eV
	 iEU7IQT9ocQyjFBZLPpFr20ULncInizhHhzl050Dhh7XMMrK4LVLAI9S8/AlE/oLYV
	 R5soakEA7XlqaLGmVYgNvOoaJa3vdrXl+qwNzZfu1awfI9Vhl+eeFEGb+5Tro4jZyh
	 oIfWMaeAJ+cBl9tp26MKDEZJJnc1TxA/AS+RfLJX3usmP31kmAmIWc0WhDjsX670Av
	 hw736BwI55ykQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E49378528F;
	Sun,  2 Nov 2025 08:43:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 770EA222
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 08:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68D4A40EA3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 08:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WdQjVfuOh1ld for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Nov 2025 08:43:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6067340D45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6067340D45
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6067340D45
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Nov 2025 08:43:36 +0000 (UTC)
X-CSE-ConnectionGUID: 8qIKic8lTUGeTP4u9sn2og==
X-CSE-MsgGUID: QpKzo/dIQTuGIKg8G+4+8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11600"; a="63872698"
X-IronPort-AV: E=Sophos;i="6.19,273,1754982000"; d="scan'208";a="63872698"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 01:43:36 -0700
X-CSE-ConnectionGUID: xgFYGJiPQsuChBq8/wZ49g==
X-CSE-MsgGUID: TJ3n4PxxR4ug3kaTtfsymA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,273,1754982000"; d="scan'208";a="185844864"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 01:43:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 2 Nov 2025 01:43:35 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 2 Nov 2025 01:43:35 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 2 Nov 2025 01:43:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JPbyOQWEURuQFy224Mpc7tjKCZyMs0/y5kSx3rxCKKpPCvxQpdUoNejnV0yC7tOWFDKkwwiiBIur6BeGRxlMsRTf2yT9Qnm9IThV274IPp8sRDVFMJxvwhyoA6Xbd6CJwXXQFkxiICMboJb1WxOJ8vzn7rBWni5oFwAaxRGZmPOy/1wTAfEBdzKBZn+jEUB/FVqqVprqXP42y3Xi6baehyttq/pwZOuQm1JcfWnWwA2E0ssgTNiLL83GbSQmlLPKJy1Afe7X7gU6iVknz+GpXFQ7+/r13hmCyVrMyhBag8znryCUq1sZmhmOe2RetlQOPm6yGSrRYPIX7TOZPtZ8fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ymQT8pKy3Srvhr25uBhcs6WrYWC0G6GBHmisRXPeels=;
 b=ir+tPC/mVIqt9ld+aw2vVYSFF0XNs2kLPTMVA2Nn5U1vQ2PeE8olEeIG6eMIEzi5EdyKkO7KCSzl/HBM69XI+iIxVlCT3XgL1ltSatWI23+xzZfJ/D1A9Idpu88xjDfysDTaTA4p05iicKp6wuW1zwZsu2rQ1lx7jnK+BWZJ3OUeNT/Abm9/JiiL52nYBzQpEa58lFeezBveLEtwvxoYjMWLAWSnByVvxRoKeyUtmuIuOzdpXZdl9ixRFN+jUAVkmsbgJSxfUse519atq7uT9eJepdXqdcjz2UDnMpDaWJabjDTZMSFDk4U+VuuJaU7gZTBq2u+HgSErb30rb84M+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by SJ2PR11MB7454.namprd11.prod.outlook.com (2603:10b6:a03:4cc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Sun, 2 Nov
 2025 08:43:32 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9275.013; Sun, 2 Nov 2025
 08:43:32 +0000
Message-ID: <6ac66205-4866-40be-87f2-e0b22bf94e2c@intel.com>
Date: Sun, 2 Nov 2025 10:43:26 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Kohei Enju <enjuk@amazon.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <kohei.enju@gmail.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-4-enjuk@amazon.com> <aQEHmm4YmzBHTIUb@horms.kernel.org>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <aQEHmm4YmzBHTIUb@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|SJ2PR11MB7454:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ed986ec-8bc9-4522-6b6d-08de19ebe717
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUg2ZktmVXFWSFZ5cG5WeUNWYjd5NEdnSEJtU2FyV2hJVlo5TlNuUTlES1Zv?=
 =?utf-8?B?S0c5Q1F3SUFxcG5xUExvM3lXT3JpV25TWnVBdWVkKy9SSmFyZk84eDZFT3dC?=
 =?utf-8?B?blovZEIzSnJLZXk5TlRrNE1yTXZMRHpOQ01NNnlobUFva0p5SVZGdHJpN3BL?=
 =?utf-8?B?WHRsdFViOHNhdTF4d3V5M0dTS1NpQWN3Mlo0QUdJZXQ2eWlFV0gzeUM5dXNS?=
 =?utf-8?B?VksxbGhyOUJPNEhYSTduNXFsclJ1SjMwQTZnY3V5VWwzVDFkdnpONHdZVzYx?=
 =?utf-8?B?TzJuK2lRNEJyL0NoWW5taXl2TW9hSzV0TWdUelp4aTNzc1FZK1FKNmhGb3li?=
 =?utf-8?B?Q0crZm1tUTVIMVhSdlkyOFdlS3AxTGxxTWlHN0JkUW9DVUZBTFZLV00zZDF3?=
 =?utf-8?B?dWJzbmpJTzVXMHIvdUllUThrVzBKSW9YZUJkeUM2bm44K1ZqVlUxeXlXQWc3?=
 =?utf-8?B?a05ZRTAzNkJZT3BvUUo2V1BMVTRIbG9hbWR5eFd3UGEzU0xXaUU3UkRlcGVa?=
 =?utf-8?B?NU5teGVHNmJSVjhTY1FEd2JMdTdiMktRTktvYUEyeGhqQ2tsdUZxMWhyMDY5?=
 =?utf-8?B?VTVXNHk0NmVweVJSMExxMWNOREl5bkloTUkxK29ycHJNN1FBR3V2YkQzV0dq?=
 =?utf-8?B?K2pWZDhjdUk5OHhvcXpTNEM5MDNOcDU2eU41ZjhXRXAxdjY1aDU4eVRCSlRl?=
 =?utf-8?B?bXhaNjhkMWt0QnNjWDRhR0FLTUZRejVKeXF3RFRBV3EvTXk2ejBTM3VQa0w0?=
 =?utf-8?B?K3FkWUlBMWQrWXN0L2xTN1FrMFBMWEJmU2l4WmxnOWZUTFhIRFk1MGVqdWpG?=
 =?utf-8?B?STQwb21ySUFLTmpibzMzWXdoYjFibU8wRVFwRnE1V3Vjam9hTG5nVzhUMC9r?=
 =?utf-8?B?dnFMME4weFVjNGQ4MWhubkhtaVF6MExvQ3BnZGt5QkYybUNVRlBHMUVSMWpN?=
 =?utf-8?B?YkE4b2FuaFdDeGFzbTY3eHprOUF1cHRlendXLzVRYjJTMFpMaUQ1YmhNZ3hL?=
 =?utf-8?B?cnk2RWw4bXVDSlUxaElXSEhUYlk4MWxWeGN6ZUE4Vm9uSHBENkRmS1Nla3R2?=
 =?utf-8?B?d1Yxbm5DYldnQVFibzRtQU9WdnVsaDJUYjVhWmVicEpWc1puZkl3aWxNNnpU?=
 =?utf-8?B?ZWU4cTFxUmpDdVNydEczSzV4bVovZHdBUlljSWEzRVlVUDQxYjh4YnFOd2Ex?=
 =?utf-8?B?RHJoVmY0UUwwa2NINVlseGdoeHNDZS8xbVRmSFBabU9SR2pXRFF0SHBKcmx0?=
 =?utf-8?B?VWJZK21uamJNajZrYmlBQ1dsOWJSajJhdU5pL2tKWi9xT2tsb2dkY3NNZ0F5?=
 =?utf-8?B?cjd4UDJ4bzc4Z0s4b29DZnM5STMyMmdFSTVpRnFOeno1VklPR1I4SkZTYmVh?=
 =?utf-8?B?ZDZXUHpPWXdLbk03NlkvbmV5Q3JET2ZHVXRLOXpmaFJuSVJ1Ym1MT3FkN1Zs?=
 =?utf-8?B?WFJXYkNMVFpOYXhwYndFRFpZYjFrQkVnUmFuS3Vja0U5ZHRYeVQwV0p1SGRI?=
 =?utf-8?B?UzBPWGxqYWorM0puTndXYTBoQ2N3ZG9vYkdDTTBESlQvSWkvczI5aEQ5K0R1?=
 =?utf-8?B?czYrdDMxQWViT25TQWRjRFo2ZlBobFVTT3JIbnN3a2hSMkUxTEk3OTZIQUxl?=
 =?utf-8?B?cjhhTCtCb25ZajNRNmpVREpybzBHZG8rZHlsZ2Z6WktZbkhCSzMwZ1lnWGw0?=
 =?utf-8?B?Zmg0aUZkR3hDVFVFU2dGNncrRUNqTmQyMVpXQ2pCNzA4VkRwcjFPcFJ0VHNW?=
 =?utf-8?B?RWlsTjJiNktFTzdWVzhhQlRpVnZpR3JEWGZJeTN6MlNFdVdKaGNTTmR3WkR6?=
 =?utf-8?B?aHcrakp2MEI3WjFLSnFOanNXZ1E5eXlPMHA3cFA5S21OR1ZzYzZ5a09Iamxj?=
 =?utf-8?B?YlAxMVhzMVpkajcxcGQ3K2hqU2hicldXVnMxMC8yUXVHQXJZNkg4Zk1Pency?=
 =?utf-8?Q?xMTmZtlsmkf6p1ltA1WJGNcf1hbHcFli?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkxJWG1TTW9wTXdaMENaNk1TcFpjTWI3VTIrNGZlQ0ptV0dBU3ZNQ2hOQzgx?=
 =?utf-8?B?djdxRloyRXRXRlFiN3AySnNvSU9JNUhub0Y4bGM5K2w3V2JleTVJZHNJYllS?=
 =?utf-8?B?eTdHLy9NUVVjME0rYzY0QnVRVmhCUjZ2Ujc1alhUOXB5b2pXU05OSWh0ZEFq?=
 =?utf-8?B?M1R5V2JIL092VmRFeEtrOEVJQXRadUtsUHU0ejFqeEVpQmxNMGd1emliQ3or?=
 =?utf-8?B?bGh0NFhnRHBraVVzRklaQzRIbXFYTjlvRjROUmlieGRPTXA2ZENqNk1Cd25E?=
 =?utf-8?B?T1lhZjNOUTV1QVIyQkoyNHJOYzVkaVFoaDdzK09vS0FqRkVrYnNlWWV5VHNK?=
 =?utf-8?B?c250R2hTbllvWFlIbU1NQzh4NktoZC9IMWNrU1pmVjBtT1gwS1oxbzNEMGQr?=
 =?utf-8?B?NHNNcVpUZFhVSkdrZUdxMzdTcFlML0NINkorOCtnREZWU0VTTEhsOXVUNy9C?=
 =?utf-8?B?QU5yeHNaaFk2WkQ2amc3NDhpaWZCYk85UUdKSUJTZzc5cUtHbVo0aUFvODFR?=
 =?utf-8?B?UmZJNk83QTdmeXhOV29VQjQxMHUyUng4ZWYzNU9uOUdwUDJ1MTJPUFczSk1W?=
 =?utf-8?B?ZFF1T1MzL21vNVdEZW9ZZ0hRZGprSEg1RmdiSG40OTBaTVN5UDU1ei91QlVQ?=
 =?utf-8?B?TmZqV0JnQXNCRFFhNi9veThONUtCYjhmMXMrUTM4V3hYSnhaazEyUlFlVWlB?=
 =?utf-8?B?NTR2RGRiZHdPME1OQUVDNlEvbkFTVThaZFNCVlJydDRpeExnRlo5aFR1b2tJ?=
 =?utf-8?B?RXlUUHBvUzRpL3NHdzF1aE01UmlxVVNWeTV5R2xLQWNCb3NMUDN0WS9NMCsy?=
 =?utf-8?B?czhXbmhWU0ViMnNmNWZMUVI5ZGcxOHl1SnZqcVdQYmxrVVJXSExWRzJYOVBr?=
 =?utf-8?B?M2FKa2tNK2NRZlVmc1R1eTd4MGJ1ZzFsZFJDR29SUVFITGFiSGFmRG81K1M5?=
 =?utf-8?B?RGlFcmM4RFU4NHlWbjZVRFIzdHQyTWFEd3pHek45bVNjWWE0OGxKL0dEemtu?=
 =?utf-8?B?aWVHQW1jQkprcEloLzN2OUcrV1ptRWwvdFdraUx3aGdMM2MvcVRWMFpnYmhF?=
 =?utf-8?B?UGMvY1UzQnl1RFA1ZEdud0tjSDUva1ZoVm1GNDNLd1gybWRYNldPL0sxZzFW?=
 =?utf-8?B?TTFtTm1hSUlzU3VlVEdtOVZ6Qys0akljQjB3VkZDRGlKTHo1alQ2enBjUmR1?=
 =?utf-8?B?RjN6LzRrYTU0dEZWZ3dWSW12akpLNm5sVFVHR25ZU2dXVmtXdjRaaUdJamFE?=
 =?utf-8?B?NVBzYlpkTXpON2hGUUUva2VrSUE2alNRK3RtQjl2UitNUDVRbjBVUUlVVFhH?=
 =?utf-8?B?MklWakp1QnM0QlZ0dG90N2Z1RUN0ai9LZjBpd0RpVGhabVdoWm1QQ3hRNWtk?=
 =?utf-8?B?clZQOGJOWEZaM2JLSFJOdGViWlNpK0NLWm5IbXhxQ2JrVTFlUlV6dklWd0dm?=
 =?utf-8?B?am01cGdWak0rVjBqM1crSzBoZzE1eGMwMzRBUWtoZ0Q4UXNWTWJEMFc0WkJF?=
 =?utf-8?B?bDN4YkFrNUVvdWxxY0t2YkhqMkpVY3RQOVNUMW1UMVIrQ3o5aWxuT3Z4WnBk?=
 =?utf-8?B?N0sxQ0JtT1Rtek5ldmc1TWtrM2hGZEV2WDRibEJxTzZUYndIU3FiVHkrNXJV?=
 =?utf-8?B?WVZDU3BmSHFITTh6aUFtNUEyV1ZPczFNOTZ2TXluSXlMeWpEdWYweGlKclgw?=
 =?utf-8?B?V0NXTHhGbDZZWDVPQlhCTm9HSHZUTUROd1dCRWQyVnRTNzdybzdERjFLL1B5?=
 =?utf-8?B?RzFBYWR4SFVsbUpNbE1hQ2xWZWdiSy9VZXlFcTZVeHhhK2xtSVVSWXhrRkFj?=
 =?utf-8?B?aTVKdzlCRmsvVVpqcjMvZkR6L0dKNXRLVGtiMmhGNGdRZlJDbHFWMU55NmxK?=
 =?utf-8?B?K09ENjgxTXM2ZVNiU2graXpuT0EzTWdsVk56WTJJSzQySXA4M2pDRzlZdENx?=
 =?utf-8?B?eGt2eW5wRzhkeG5LNWthV05OREovZFVIQ1RSUEhFRTNGS0RJdHJobXhIOXQw?=
 =?utf-8?B?L1FvOWd3T2E2S29VcnpCRXN1czVPb0tkNEY0M1FoUzE5YXNGcldvU2RNekZu?=
 =?utf-8?B?MzNJbmYyaXQ4MGtzcG1KK2UrR0lIem9TVzk1MlpUb1MzbnJYRndja253SWlC?=
 =?utf-8?B?ekVzTGtaRW9nU21qS3kzdmpZZndaZnR2bGg5UTJmTjZkMmVTOGZoZnR3Ky9w?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ed986ec-8bc9-4522-6b6d-08de19ebe717
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2025 08:43:32.0491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zq157cpSHhxBpiU5z5cnvXMDd80V87st4iYeBSmHifbI3p7CfMZ/79zbD4YKPOmbpVHgUMhf0lpZVCIzTO1uzVnTFLDWORjY2kQSQaQCryg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762073017; x=1793609017;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RUMcDac2lS7ZZNk1vW1d/xij4lH4bPt0m17pdNVRLKQ=;
 b=Xy1nfBMH/Txa3kVILcestlbZUKsnU8LlpfBrfIlpG11BUzZB+zPNhSK6
 LGjSsRwOuFgwYRNdusokGeCHTelnowsZZv9HO7guLX+G0tC7ldf4+OGoO
 O9ySPDeHtrdXvL0spFyeNStXLKf+aytpRI6fKcK+WQTq55vIcRqJDaiAT
 OmowZdUkLXpHCke3vSzw3GnbK+9ODvlj6hEQEiEwpbVX6mqTRYmTB6SaC
 AfHh2mdY3j70jG1NqT7pcIhAeOTbIvlmdSN8LAlySg2z/oPfpsXfOSRZr
 qSgen+0OntN0t/DsLAS0XQi90H/mUVlRW6Mr/Ypz2rT8h4BvC9+pcHXC7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xy1nfBMH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] igc: allow
 configuring RSS key via ethtool set_rxfh
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

On 10/28/2025 8:12 PM, Simon Horman wrote:
> On Sun, Oct 26, 2025 at 12:01:32AM +0900, Kohei Enju wrote:
>> Change igc_ethtool_set_rxfh() to accept and save a userspace-provided
>> RSS key. When a key is provided, store it in the adapter and write the
>> RSSRK registers accordingly.
>>
>> This can be tested using `ethtool -X <dev> hkey <key>`.
>>
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
