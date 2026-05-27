Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBbOKVFdF2qpCggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 23:08:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E50465EA547
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 23:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A44CB4243F;
	Wed, 27 May 2026 21:08:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xw21YnvSQT9F; Wed, 27 May 2026 21:08:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBA334243D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779916108;
	bh=inUnDTkHOKZD40LQNbSMAtxv3Ffc3TqarR1kJWTl8x0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UNbTBIJ50yRuMNkDnE9Xem8sGJc2iUP6ExxuIWd+TURrdVPmMCf8VbQ50fQYnTcZD
	 /ecQsYkZGlv8D0fDYV1HqDgqF25/zNC3fEItWRmOgAACshhlf7uGTLQtWDyGH0Rfvc
	 VxGdcZta0IcYs9uqe91Dj62jYQ2gAkk7A55T7ugIZX+pZ1Mxlc15csgqF6vMhHGzU4
	 nkStGIWALxaUjCz5zTrlp5Sj1xdwR/g8ac8XpTkFVJCPwPazzVvL+3OP2X6QBrn7yt
	 Pan8zb91ViBL5KJSc/rnr0MOn7hGc82SsLZBUtuDG9e/vjCVdHSyz0mgylbjFlYhWg
	 3Y/6kzq6ES+iA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBA334243D;
	Wed, 27 May 2026 21:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 01E29288
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 21:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E496B845D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 21:08:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iICQCZq5ZEZC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 21:08:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 05584845D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05584845D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05584845D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 21:08:25 +0000 (UTC)
X-CSE-ConnectionGUID: f3r+wmkyRJuOHqYsnsMCqg==
X-CSE-MsgGUID: RzbqAV2pTFqVOH5TQyi9hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91867337"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="91867337"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 14:08:25 -0700
X-CSE-ConnectionGUID: N67NoqEhQY2iKo4fO+rXmg==
X-CSE-MsgGUID: m8TulGIiTsit9RMTX3S/8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="266231505"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 14:08:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 14:08:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 14:08:24 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 14:08:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MlcYfOr6/24EDTD+PAuEkLHvC4fFZYubNPuRlRyz4hzMGXFzxQ4hf4cv0M+vR59kxhJ6G3FGgSmid2RsQLxse0Yw7x+pzs+9hJp5FOG9K0s6BF4I4kuUHnJJH2ab3+R+n6AiSRLiF8D769kbeiATUA1NOmE+9XFYyfOduwhxJBuet5B+pM53t1z4j+B9pwqq8dxgUiYPd7b9QwyQrxiAbk6Y/fxTxMN04GGl8K4bq4uf4PTtommfQRL3052C2e4Z4o7lNMmHnUrrp7KVyZGYNnNO8yDe+Cht1QCmVBl/8GsBqFPrHv6U3YsPoFblQ0xUEI7IrVg35qR4/B7v2rn6fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=inUnDTkHOKZD40LQNbSMAtxv3Ffc3TqarR1kJWTl8x0=;
 b=EJq52SOVBSctKEAz0Z2XlbMgohiLABL7CxwIkwoXQRrpK0W8qDGJvKARz90V3qtXkJ1czd782/oSaBNC6Q9BDwFFAm7/yhhvAIMtNPS9NjGVAMNTiPQiu9WXrPZJhJ04JMCrSyBy8Rt/b+ZGBbpEGTvPJCowK6Ap5dkR0jeJbqhi2KFAb3BcXCCyfSsac0RwKpXpHzVTkR74PVtQNexaQNO1+VDoaM9RxVTE5WnUs0uB0Te7POGmVOCfx8O/Wrin8Da9pMcCDAdCah/gzgkSOEmzCdvg92vYnDEBruvnVLD+ewykNCJ0lpvx+9kgr5eikhcWTZYXD/J+YKRN7V4Uaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by SN7PR11MB7996.namprd11.prod.outlook.com (2603:10b6:806:2e3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Wed, 27 May
 2026 21:08:21 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 21:08:20 +0000
Message-ID: <5cab6dde-5286-4cfa-9109-e4d464c8e34d@intel.com>
Date: Wed, 27 May 2026 14:08:17 -0700
User-Agent: Mozilla Thunderbird
To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>, <kuba@kernel.org>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20260526074744.36315-1-kshitiz.bartariya@zohomail.in>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260526074744.36315-1-kshitiz.bartariya@zohomail.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0090.namprd03.prod.outlook.com
 (2603:10b6:303:b6::35) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|SN7PR11MB7996:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bdcd023-7410-4253-7f0e-08debc3414df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|6133799003|11063799006|56012099006|5023799004;
X-Microsoft-Antispam-Message-Info: qifZjknnuwX4+I67VjKID9cEFtmzoDzWUTMnsco3o3NNhv35Pdy7bTNapa68Fo4t0aM7Vp2MSnFY4nJyInURn3RyoqNwTyfPv4XcY64kWX+FZktCJ1hK+sjVaw8d6MSYYF/OwjtiyIB0PT4eQ1uv+OjbO/2/8FZKhYI8+PyARyRdyZnVLLhl23i815hqPrL7ahwkmSldie8PqQvakEoyK8S+CfjUwm/GmasOEjtHhHEqQ8/KBkuOPWefYWl3DudgSrSDZKyY6Uf8BTgQ0JZSWMA4KuKMIHuAwyODrDLIWfSWYlm8ivkDmkw7v35ob98AswM2LusCE4nfuc9FFE/J3jECJRYyKQZKLhRbo7gaKKhpvT2B0FVIgu8+cf048dIGe4ajUf6sQ58WpmFASy2c+tb1Hj7qN0cBCdBeO9YwN4e+AVND5qUUsLvEmz6PFVOnsWY9SbV83ToYuHPXcGx3q6LwHGqHrFws5hwUfZwD0k5IfKLMU5toGXXHKMR7CGkd/UCWEi7XlNft56MqgbwbB8fzfc4vYhjqp/cCWQNCnkqACEhEapT6Y1HYW67Zu/DdagY8/a51npqmPQ3ga7SMczHb7hdpFcvij9y3uMcbQQ3JA6ebdW7k/Tt3GkXIKw+7aRAP6WEUxHz+9Pv0qJYuPBseQ/jLkHgFHslpmwxm9IUN11wHcfvSReJjNwW/RzBmYgIxK5JpLR/mLckezsXAuw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(6133799003)(11063799006)(56012099006)(5023799004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXVFVEVGM1lONjJPU0RQQksvaVpCUnZsVlRjZmZpbTA5NUpBYnNRblRVY09L?=
 =?utf-8?B?UnMreFZQbVJ2NGhDWXFyRjFmUHBnQisveUFabWc3dW9obDlma2lYNE9jMGJP?=
 =?utf-8?B?Nk1mcnpYOXIrWjdLak5RbDUvM2ZSNlRTTmw1a3VCMWVQNVJpRmlGVG1ML1la?=
 =?utf-8?B?ZldVK1d5eGN1bUNLZVcyM2IyWkVFYWw3eXpOMVN2NkdpdktYRUFSazhlUXBD?=
 =?utf-8?B?dUZ5NzdHeEs3b1JZTVh3SWxtekNBMzRUMlpySUg0YzRBQnpGQUk2MTZXdHpL?=
 =?utf-8?B?SjNNUHpGZjVyb3ovdWNUdVlLRkQxUzlCWFNPb2FvTG9XUytVU1VIY3NkSmhu?=
 =?utf-8?B?YmF1UEozMWFYTS8xK2pBNUYwZ05mVExKY3ZySDMvbjU0SUcrazlsNStxUW1U?=
 =?utf-8?B?RWtOVU8wU1U1ZnloL2pUVzZuMThiTGtlMUdmT3NWNEVVVlZYUmRUZE9OZFlr?=
 =?utf-8?B?KzI3c2hIMFEwMnpFaEF3enlyZlFUY1JNaHA1eVdZQmE0Tk5qT2Y5YnU2MkZO?=
 =?utf-8?B?ZEd3RytOQlRvck03RW9kKzk2K3Nrdml2d3pDTU9Zemp3ZnJ0b0tXMmRiWWt3?=
 =?utf-8?B?aGtrTjFOemp0SFJDcmhVUVlBYzU2ZEtuN0NEdFd1ZHFCbDZ2OE9hNDB2TTMy?=
 =?utf-8?B?SnJKcVNrcGQ5SzhWemdBTzZyamdJZVA5VlR1cUhVSlFnUXNyODlTZ1JvK3Ey?=
 =?utf-8?B?aGlnM243MU9UTnZTOFY2dnFITFg1VFpOenNTQzhTSW5ZNXNUbm1TVVJJakpX?=
 =?utf-8?B?QTZJY1FkMkhTdVk4T240UFZhY25JRUo2UlBpVlZMU0xPMmpXaS90a2toanZO?=
 =?utf-8?B?T1hrd1NQT0pTV1gwS0hRL045cEV6a2t5NDFtVitPZmlkSS9tcFZpUmdNSmw0?=
 =?utf-8?B?U1JDMWhaVlpEbnlva0RMTUdUaFE0OEM0OHdZVjN0Nk9CcTluZU5IcjRrb0dS?=
 =?utf-8?B?MVJNNW1salN1Wm91TVNyT0kxNDQ3eWNYYmM0ZTMxaERaT1pFNzB6TlE2bjZO?=
 =?utf-8?B?VFdJRWREdklBS3FvTEtrZUFtSXVGbFhXV2doZVVIbUtFMnFmVzNpWnc4YTFv?=
 =?utf-8?B?aU45eTBEd2djZStIbjFhNVp0Wm5UbEVvZGwrTFgrM0NrQnNTRjRzK0tWZnpt?=
 =?utf-8?B?aGVIK3FyZ0I5ZEJWM1F1cVM5elAzWTlNLzk3RVBVQzZXLzd0a294WTNRcXdj?=
 =?utf-8?B?VXlwOWVXbFVocFF5dEdtMDZSOEQ3UFZrejBNSlBDdG5vSUowUGw5WHQ5WkFt?=
 =?utf-8?B?RmtwVFAwSW9JcVNLT2k2dmtLMW5GdFlhb2ZCeDhjZVl0dnFQZjI1cnU5b20w?=
 =?utf-8?B?VkYyMjZrbUgwSDkzM1RHTEp6c3dWeitXeXIweTBBejVBK1lFN0EyUkpZNzFh?=
 =?utf-8?B?S1BZU0g0cnEzMnMzL1hLa1hwcnFLL01zQXBQUzVFS3RNTm1Ra2xmZ29TazFP?=
 =?utf-8?B?b3BSTjlFODZkaXd1M2pOZjhPVUthZFkyY0NwamY3WTcvVGZTMW9uNlZ2THBx?=
 =?utf-8?B?RE5GU2kza1lOdFNGWmhIeGErL1pyT0NvMmlwdS9TM3kzZHFOTjhVRFlBUVVL?=
 =?utf-8?B?dTQvYlQxVUxPRllpTFJ5UExDOFBOMHBJdVh4WFpVUkl0UVBrazBENVRJbDFZ?=
 =?utf-8?B?S010QTdsR0JrSmpPRzY2SkVmYXUxVnZPdXdlcW12V3JYWkJHVHBpVXNxbUMz?=
 =?utf-8?B?d2FJbXQvUncwbXkwaUNsSHNlazJKYVRZM2dUcFV1ZURLTGk4U0d1R3phTzBV?=
 =?utf-8?B?MHN5QVJ4VXRKZmV6SXlMVStGUlQyY2sxZGNUWWdXL1FZaldLWUVnTXIzRjJ0?=
 =?utf-8?B?aUVDazA3ZmxyZ1NEMXZCanRIRnZNT0xnRnhHUXBOdXpvZmNqQS9jRXdrdWZI?=
 =?utf-8?B?bUIxa3A3Q09HYktJVWRKWWtzRUJ3Ym5VRklEVFRDVnhXdy90MVZ6eHZ1cVY3?=
 =?utf-8?B?MmM1cC9ZQlRSUTk0OVc0YUt2bGY5K2U4dEt4TWNCbEtwRFpPUFdrY2JRR0Nk?=
 =?utf-8?B?dGkvR1JOcVduSzhwYkhNVGgxMDQrdWFKMFNJYlBKQnV5T295N0dSZG5GMUgr?=
 =?utf-8?B?UkpLcVEzVUxKMkxQcUxabGNubDNocHNCRWkraUdnNDB6WEhReldPZEsxVGVR?=
 =?utf-8?B?NHVBVWNYVzhjQ1NzOXg4b0VReUdvamp6aHlhUUhtWHdhSnQ0clFGL2plWkhl?=
 =?utf-8?B?R3F1TDQwSGRBdG82WDBSeW56KzhYWU15QnllRkRLWVlLVnBQVE1zSW4vb2Zt?=
 =?utf-8?B?N1pwUUI0UFNXcDdySUJKNzNjQ0Q1bUVFMzlMMnlMS2hpVkJMT2J6UDBzYkVv?=
 =?utf-8?B?ZUZiQVBXd2lvMnF0eDZDSVdVNVJoZzFmVzlyaUZoSVp6NkhNSGFFdz09?=
X-Exchange-RoutingPolicyChecked: VpRtjgne8tFru/ZgQj+S4j2mbtutkrpR5/7zR/FylWIYPGgpsugl1IxM6wEGLL5J3rnpI5L9tNeI6+g4AKw9iQd5r3XwJjXjUxW1chiAtcr/aZdkh2uYxYofrHYFfo9OFKotMZ0yauqqZrycfyVw01yh7iBGtHbhdspId4q/FdcD5KcYjQP937thNLn3Lt+08XWpnhhsiZGnYeN2HHqFB2AHwWro3wU2J1ap0GKmq9/hTKurvFyO3VGh53y8YCuPRTPIllZL4OHNDMgkkFuAGHf+c27CTiFamz6yNLCgUrSd3sWfRGNJz3LCuFBj43UQ1XKJ9q7sAUQIjV8CBKaycw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bdcd023-7410-4253-7f0e-08debc3414df
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 21:08:20.8973 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1dpRKd+sttObwnVYkZhvAjRVvgx42u4D+CW6qxJMiK+RlDTqosMDXmhIeBHezXmRGYVHSr/AMnKIE3bEJ7tDSvzJhvuQkcL40yKw7/VucUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779916107; x=1811452107;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ja9JL/lkYrefkLvi8CZkZa8rBaFwe5c8B/YmRU/+eeA=;
 b=AaPs1UlI6IkOqsKXNlXsJi4zYc4R9cggtjelYIT2KCfnsEuRxkvBqTTa
 9cXem38psm16GMJ1kCQKKJ6+Rs+b6nIOdOwRbaQvrLOPxn8g/z8W3vXat
 EQRmmOEUJVbqr1Cq3h2dS+wyDZ7j9bGy5gR+6wotq1OQ5z47OsOnqDX8f
 qCr0I3AJtMHAdrFHhPU5IC3ShcZ1+RJFdJns5DjG7iQppyhPYh7A8NM5W
 YrRUvVOv1RgR9fCJxEf63a5kUgjS3KRzKQyEFKZTKukEQGXRT9Ke2HHKf
 8v3a7cN7l7D9oBWpBB3pbDiss9f6flInTJ28EEx7+XQygctwGzQuBw8TQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AaPs1UlI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: implement
 get_queue_stats_rx
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kshitiz.bartariya@zohomail.in,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zohomail.in:email,intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: E50465EA547
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/26/2026 12:47 AM, Kshitiz Bartariya wrote:
> Hook into the netdev_stat_ops interface to expose per RX queue
> statistics through the netdev generic netlink API.
> 
> The following counters are filled:
> 
>  - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed
> 
>  - csum_bad: maps directly to csum_err, which is incremented for both
>    IP header and L4 checksum errors in ixgbe_rx_checksum().
> 
> Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>

This probably should target net-next since its not a regression but a
new feature implementation. For future contributions, you should check
the guidelines at Documentation/process/maintainer-netdev.rst,
particularly the section describing the differences between the net and
net-next trees. Intel networking patches do also have their own mailing
list (Intel Wired LAN) which we use to have our validation team do
explicit testing on patches before we submit to netdev. Not being a long
standing contributor, its quite understandable you might not be aware of
that.

The implementation seems fine, and this is a nice improvement to get the
driver supporting the more modern stat interfaces. Thanks!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
> v2:
>  - Removed setting of hw_gro counters as ixgbe doesn't advertise it
>  - Removed idx and ring checks as they are already checked against 
>    real_num_rx_queues
> Thanks Jakub Kicinski for the review comments.
> 
> v1: https://lore.kernel.org/lkml/20260523144022.36484-1-kshitiz.bartariya@zohomail.in/
> 
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 2646ee6f295f..2184213727c7 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -9740,6 +9740,21 @@ static void ixgbe_get_stats64(struct net_device *netdev,
>  	stats->rx_missed_errors	= netdev->stats.rx_missed_errors;
>  }
>  
> +static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
> +				     struct netdev_queue_stats_rx *stats)
> +{
> +	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
> +	struct ixgbe_ring *ring = adapter->rx_ring[idx];
> +
> +	stats->alloc_fail = ring->rx_stats.alloc_rx_page_failed +
> +			    ring->rx_stats.alloc_rx_buff_failed;
> +	stats->csum_bad = ring->rx_stats.csum_err;
> +}
> +
> +static const struct netdev_stat_ops ixgbe_stat_ops = {
> +	.get_queue_stats_rx	= ixgbe_get_queue_stats_rx,
> +};
> +
>  static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
>  				  struct ifla_vf_stats *vf_stats)
>  {
> @@ -11643,6 +11658,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	hw->phy.mdio.mdio_write = ixgbe_mdio_write;
>  
>  	netdev->netdev_ops = &ixgbe_netdev_ops;
> +	netdev->stat_ops   = &ixgbe_stat_ops;
>  	ixgbe_set_ethtool_ops(netdev);
>  	netdev->watchdog_timeo = 5 * HZ;
>  	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));

