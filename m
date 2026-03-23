Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CMUKqjHwWlUWgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 00:07:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EBA2FEBFF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 00:07:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0AA340E4D;
	Mon, 23 Mar 2026 23:07:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1gqIg0oS7uxO; Mon, 23 Mar 2026 23:07:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 327DC40E50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774307238;
	bh=ISo5kD8XpmWHarf57eLpMlBMlnHkDMf1OInyAseXSFo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4LqduMArkDyHhSdbEBa03z4RrsUdcN79lH2XgllwQln5v0t4uk5UKCEcj+z5KD8T8
	 FkAyYYHVgNZTpwOP3Zvo0Hjkd7Msa4bz+tVClEKPOFlH9BnhP7Bpe3GDHuwcMG9HkT
	 J+DQE4Kd9+gMdeaUqZbYi1bAN2RfcM4uFjCVVuNRjPbqijD5ui9r/kaQ6d5xNE+18x
	 NDpoPbwSa2YMp5WM+27zEeg55nsfBTYEQhI9yztjVOVCKFRUfCGIpccrNyBBy4rbCm
	 Oo94uPszP2IgmI1UtjSFX3c+Ss8eLl0gYqZzV/solNRMqDIYiQxscphdj/p6UTmZDB
	 P/L/EptMmSzUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 327DC40E50;
	Mon, 23 Mar 2026 23:07:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CBF5D353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 23:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B10954054A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 23:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sNb9CwYBEIQM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 23:07:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E64C340541
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E64C340541
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E64C340541
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 23:07:14 +0000 (UTC)
X-CSE-ConnectionGUID: kPOhTTnCSNqFEldP5duFlw==
X-CSE-MsgGUID: czNeZiHnQxSfqUGwCrOABw==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75027408"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75027408"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 16:07:14 -0700
X-CSE-ConnectionGUID: oMj1I+3vSbCr8070AcR2rg==
X-CSE-MsgGUID: YGLk5JIZT5ao71jzuQn6mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="223363593"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 16:07:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 16:07:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 16:07:13 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.42) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 16:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dAixYlFseIcyZWot0EQXCyrDqVBsBiG0PloJHufOwDZSKUqzGMXuNslW6MS9u5U2mQY7lB0dldZ71JNt3nsZ1RkWs5US54UY5dPCrvAuhsLi7HMvLul/lH0U2b7zCmw9S9r4ByHvpsrH9ipsrvpCO4kBQV1MrDSp+5wxGuC05jI8X4PZUgI/Pukgb8eHXW4cxKn7LTAa2JEzhqRFeYYhto3oKk5scma+zBZV/RMCXPPOfzrfGXbucmyUqvw/zTi65dOIhPg8X/hDGTPPB/jLdhVUH6MYUa10fxeHCOmYDK2Ve1hByXVvVyISBz89X2SxgG6CuDfs2hSoHTnz7F/ilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ISo5kD8XpmWHarf57eLpMlBMlnHkDMf1OInyAseXSFo=;
 b=UXSLlyD4AaeJvQeU4u+qmEWu05VHBCmpZj5T5hAx0dBGClIFAxV+IqUVb0iT/l0f5Kc+SsbXS+otlaEHKKBOBIs/e68WAJZu9CtWs04RlCKiJ9FAOXEbuPREYFI6WC67w4M7pjbZumPvvS6X3a9/FbVr4ilwo42y+pdB6lxjkpjPpob5OQBhWSvCFTE5l3GOksa+UfNenT7m8qx/WqM86z1LwYxxIABDx1LMFayQHRHsE1R3Lb38xQVuo1OwFo7kh4uLJs6SBmZKA+rAa+spUcWnF8SbuqDTj86ET/MRKWBB1y9fIds7LbdeiLxEEHdr3fvgX9YfHEQnk5FteMcQlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 SA1PR11MB8523.namprd11.prod.outlook.com (2603:10b6:806:3b5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 23:07:06 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 23:07:06 +0000
Message-ID: <734bbc85-2209-4b6c-913e-e3637532e315@intel.com>
Date: Mon, 23 Mar 2026 16:07:02 -0700
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 <linux-kernel@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260323101558.1477593-1-poros@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260323101558.1477593-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0074.namprd04.prod.outlook.com
 (2603:10b6:303:6b::19) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|SA1PR11MB8523:EE_
X-MS-Office365-Filtering-Correlation-Id: ee895fce-7e5d-4384-3c84-08de8930e697
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: gkiHgA+x197Ddhr0E1uN9AMTf3C5F94xeMAILz32wrdEQhMeXxM+yhYPn4KC/b+EdK8l3BVB5MzHcFh7d+pKt3+L2lhCdsAzNTDtqDMCtQdzJRnsyetBKCFZBbJH2ST5KHAIYm37P0lhWUKSA+plPS/vU4OPzUHObBQWqt96UlT3PnZ0+coWxIAaBfp1a7E9NoECX87peiW256SgjeyL81t3uVBCb1CrMwuVher2k1BYUQ850R+mygtfJ+wWmjSsTBqMrjHMWUT7bC7Ox7nYEKW1XnDxYI2i0nUI9raZoXTEEhIt38XeNzd4STelNi6LroTQovJT05R6Hs1qvyYE8s38PgBGICyaZ+jB1AxI8ePC4uDbQc73X4slL9h6MQEvFEBmto/78uGY4bn3PJZNbu5Jdjl5M02pb/bKGLMuqQpsb23kmlE+UVnaF7iKwYtQCT4lWVkyb17xs91VINuicl0T5E8ZcsJMvXM4MNuOVoOJ7sSH4vcTvuNadLg292qLR+bkMqzlOqxcY1k8+ux+g+YsYUhtXCW9XRt9v0wLFRJKR1bdO5ndpKP0djToFvcCmTWeIUIDQGvI/s7vQWEB5WFAt6INBgXhBK+1g+aXagtpJ/2/FJFnV8dy8ruOWJ7EEov8KgwIH+4sytkW0YjVAB0o+tVs7RuF7cCrcRs1zBhUrIpUVake7A5MRLCQCuXNYhqeLE223wuxZED0Aju/wb1qNj1l3JVd4avbF7Se1gM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFAzZnprbDRxTEJCV0kvYVJmdnJoNHVNb3R6b1ZOemhXVUJwTzBBRHVJemYz?=
 =?utf-8?B?MHNpRDh2Zkt6SWRIOEFCRjNabGx3UG1NYjJUK1JJRXVSQnMxTXFwb3FUVDM4?=
 =?utf-8?B?bzRPcTNseWV5bkZ2TkRNa2ZxRkM4V1JmbEpaMStaT3Z5SmI1dHhRZXFnVmM1?=
 =?utf-8?B?SFRlMU1vM2dnaFdJZnQ4SzJ3b3NBdHM5SzB3RGlzTkwxREtOUEt3MDh1bm1D?=
 =?utf-8?B?YnFjaVhnWFN4aUZIZS9NbHJNYmtnSlRmNnlVQksvZHNCb0wxeDdnWFRzdjBU?=
 =?utf-8?B?TldXL1Nna2VhNnAxcmxJUlRZclVWbDhTRHdvTHdJVzRPRjNvbm04eUxUNjlF?=
 =?utf-8?B?NndUeVdqNThoZlBwcWltdGxjc1NQdkI2ZkpPRzJoUzZjMmxTejZXSitlcUdB?=
 =?utf-8?B?cHBMR2h5eVNERjJFMTAybmlkamFKZ2Vpazh4dnJ2S09FQnNUNkcyRHIrMk5h?=
 =?utf-8?B?eGR5N0lFKzM5aWk2QXg1QzlPN1FlZFlwZXoxb3ZNczhXTSsyZnZHTy9wVTdo?=
 =?utf-8?B?ZzdWR1VnSUtEVzh4N3ZnTEc1WncrLzlSeXZtNXdLTEpXbEYwNkljYjB1VUJH?=
 =?utf-8?B?V3pHcC9OM3FPcUFiOHdTQ3pPUURtR1c0ZUp2QWZBaGxmczMzZldpN2dmVE1Q?=
 =?utf-8?B?MGZWRXZDdlB4dEdweWpPMUFYdjRSZTNTNVdqaW1kWUNubnBqUW16Q25RenEy?=
 =?utf-8?B?T1ZOQXFESWg5d2NVWno1TGpwdlRlSnNwdy95NVAybm5lS1ZVSEM0aWZweXc5?=
 =?utf-8?B?UjVERk0rRDNtb0Y1WlpkRUJPS0hjeTA4ZVNNWmlncHl4WElZcFZ0UHpIVHdU?=
 =?utf-8?B?VFRydjJsOHgxQnc4SFNWUkdJY1JkSFo3VkE5ZFdyNGRXNkRGL1U1aEZSWmRP?=
 =?utf-8?B?OGp4UWwxTk9pM3EyMUdaZjBNblg0cVhXb3RnUk8xOWdkbmtJRmQxOUZLWTNj?=
 =?utf-8?B?QzdhK2JZUW05ZWowMW1wVGwwZXd6K0UzeTVBa2tsQzVGL011TE5uWkpRZjdT?=
 =?utf-8?B?dzl2RjhnL25IN2xoRUQwTVlEbGl1U0VOWEdLT01pSFRoWmJKWGM2R3YweEVN?=
 =?utf-8?B?QWwrbk1zZ2d5ZzZJcHdsYVB6UjhqMk9HVlFWVVBONlQrMmxObjk5MFV0TGxy?=
 =?utf-8?B?Ym9WYXdoQWRXQjd2bVJqRXVreFlzYjkxNlJVd2ZPQ0dQdGRLcE9LK1RabXBk?=
 =?utf-8?B?RU5nWFRhWjJyU0dYOUgxNDZINDZURWJNNU9yKzdldjNJUTNtMmR5QnIrS25p?=
 =?utf-8?B?VFlzTDBQMzdWc3lBWWFRcHhsVHlRNW5NKzFvNjltMFdnVEtEWkd6ZmdtUlNa?=
 =?utf-8?B?MVJDVUFDRWdZUkRKZDR2cTRMS3QzTk9NQ2VBd3ZEWEhjbDBoQXFNMEg3cTVs?=
 =?utf-8?B?OE9Sd1JVSWZRSkFoUThXY1VXQjJJMEJqci9vWGt2STlwT2ZCL0Y2SXFXSXVF?=
 =?utf-8?B?R2c3RXNxUW93SUNzdTVoSmNnQ0ZHdFZEeHhtMkdoTzQ4N1ZLRzkvaUM1c0hr?=
 =?utf-8?B?K3BCeGlMS3dVcjEwbytCRm1TZWtwSTFJaHRhZlBnS1UwRnpyU29KTkIyQlE0?=
 =?utf-8?B?Zy9ZbnVpVEdZd3BzVWNKVnFYTTFWVlNGMGNhKy91YTg3bGMzZFJlRzhBYWVX?=
 =?utf-8?B?VW9iZk5kbjd3TEhmVW5DeTFHaEswMHJPWnl3aE0rbHUxMms3N28zV3B6VnR4?=
 =?utf-8?B?NXFxSW9XZnlaZTBsemtOTmxHbkRYOWVDUEZyVUVzaDMxaXNETWZ4T0h0Wk9r?=
 =?utf-8?B?Y2VKNWR5dUg3MjYrQ1IrV21kTE9kY1VSY0F4NlNGb0pXL2VmV3hWVlF2RXJ2?=
 =?utf-8?B?Z1lXMlVIY1IwVXcxQXRacVJUT3l4TjZ4TDltVVZHT2NZTVN6Q1ROdG4vNjdS?=
 =?utf-8?B?OUVMOHhkMzlkVzc2b1AvOGJnUHJ4R3kwZm5HM1dCNjdlaHhSM3VDYVhXRjVW?=
 =?utf-8?B?TCtZMk1aNHBrZERkWXdSVytUNHpuc2s4L0VjZ2hWcFl4RmN0YWs1Tmc3YjhD?=
 =?utf-8?B?Tnhxc2JRWVBDdWJPOHNEWlgyVVVwZ1BObGtMcE1icFUyUUc1UERsUTJIT1M3?=
 =?utf-8?B?OG1oZWpOVHNCUVlWa0Voc3h0VHQ5U0ZUOTIzL0d6dGpsUmFBS1NTUXBZZDd2?=
 =?utf-8?B?bjNzTC9iTEprb1VPZkFnOFNMVy9ycHZNSEtXMmhrMlpUMmpGelB0WGhiVjB5?=
 =?utf-8?B?N2VvUlBYRVJYTjZHbUc0cWFrM2tlY3cxNVMwa04wT2dBcVJLM254MWtJZldH?=
 =?utf-8?B?WlJwQmxnOXJSUzJvcXNkQlNaZ1l3U2dxYzVZN3UxN0lxVHlTeXlnbDN0alpj?=
 =?utf-8?B?Tm90ektkSTZiWFRxWGh3Z2xQN1MzSklNbGMyMWkra3B3bEZSSXdWdz09?=
X-Exchange-RoutingPolicyChecked: IlSdfRSN+TpVkNbTMLTE6PK6/ZYj5Ah80Qon3pB17P7vL8SwLTwrUMVrATeO9ekvrKiKntGGGKU9xLf3l2qz+JOJ3u+p0cBxH7Y1pS4hxsRDXmNnzOUKoLa6x+zLvR/6jzqvxd0YD+mxztdWldOEH7mbAMsTmrHYzds4qBsNd/mHJT4kalyveqH4LoiMJtZmNSKUBDP4CRS1W3nQGar/JyrGKSu+AN0z7DsNxWLoTB16vdd3sqPQ/K1jKuGw9mQ8ai3GdloRYGXiPjxUpA+g1dfIOS2pEoxuhSNgg1oQ5MnarG4UVj7SI6j8FsC2BFe301x40xZzv8ZPP3pF2muJpg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ee895fce-7e5d-4384-3c84-08de8930e697
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2026 23:07:05.7577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N+/BienZU2MMvOz4PIrwLTaxdRuiTyeZCQTFHtguL/CC3hTfEl3yqE0ng8Fw8DI9D33b5AU7k3Eel/5M1qLWhhQHgsLnoj3AhgmVol/TGIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8523
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774307235; x=1805843235;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oI91wpH4mN7Lc3ZGiBFRN9/+LljYceAo3u6OJMbPkbo=;
 b=QIVb+O6KTLYvFFKEiAlDCtPhsYnM8lNVR0Slpi3M8OdSqWgt+As+v3Nr
 1VPIJBhARz6os6X8YEU9i4sLlCop22dV34CiLz9Q1PhbJlsgkCQBfvtLc
 FghVZ9/+EFkW3AgqeoB/3yBYxhkDPRJP/sF1ezzvMLXo5UjE+2YANOXSI
 xrXXZXz7GSsSngGbx+T2vz1RE6zcszPHR4j0QVmT4FMv1nBJTbrK3v42h
 YuwMEIRSQ/AdYIoJifZCBxo8zBXjdzolntIZ3I1FxXA+P68DS1Ol9NH6F
 Vyl2iWZBsYXrGqSkEBHoOWFpYaDl5O4p+G6jzrlJdO7xisivPOGyzILSv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QIVb+O6K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix wrong VLAN mask
 for legacy Rx descriptors L2TAG2
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:mateusz.polchlopek@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 08EBA2FEBFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/23/2026 3:15 AM, Petr Oros wrote:
> The reproducer requires legacy Rx descriptors. On modern ice + iavf
> with full PTP support, flex descriptors are always negotiated and the
> buggy legacy path is never reached. Flex descriptors require all of:
>  - CONFIG_PTP_1588_CLOCK enabled
>  - VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC granted by PF
>  - PTP capabilities negotiated (VIRTCHNL_VF_CAP_PTP)
>  - VIRTCHNL_1588_PTP_CAP_RX_TSTAMP supported
>  - VIRTCHNL_RXDID_2_FLEX_SQ_NIC present in DDP profile
> 
> If any condition is not met, iavf_select_rx_desc_format() falls back
> to legacy descriptors (RXDID=1) and the wrong L2TAG2 mask is hit.
> 

> Fixes: 2dc8e7c36d80 ("iavf: refactor iavf_clean_rx_irq to support legacy and flex descriptors")

Sure enough, this commit changed the legacy version to:
+/* Stripped S-TAG VLAN from the receive packet */
+#define IAVF_RXD_LEGACY_L2TAG2_M               GENMASK_ULL(63, 32)

I guess since we basically always negotiated flexible descriptors after
this that we never caught it.

Thanks for the fix.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Regards,
Jake
