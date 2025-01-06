Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 184FEA02FE8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 19:44:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8B57607C1;
	Mon,  6 Jan 2025 18:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SpTwnYkkclgY; Mon,  6 Jan 2025 18:44:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 054E9607D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736189077;
	bh=INZmTcCXmCqel3QoQQOOdtq7mUiO8NTE9FuSnIyfpj4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oXG70zigfYsk5ETvD+mkxx1bhcKWjP9Qnt6uF+dF9O1ZmShHqnCpKOsm9DOu+iC6p
	 dFk6Iv6r3++DxjwnxYBhZsQ1uokgeudHtwrHcF3z3TH+sTUZ4Am+ce1gPPzn8jdo25
	 xcobhE3xE69p01eKqzkWxN+Qb6gFjdg6v9Rq6JxPCrWqWZZYMG3f465pRA/M0v2PvK
	 mgZWvPs4kLTZ/IBoFFZcEJvTVYSjPXuSr7bw4e/If85cKhH32Sj0Vl0rXW9cjnGFvI
	 FouPGq5ys261GSHyjsdoZ44JKPeC4CfAROl9o5uaF4VDqBWhtbHTvLgSJiFUMWUcx5
	 IVOEK97PFWMFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 054E9607D5;
	Mon,  6 Jan 2025 18:44:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C220CF1E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 18:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC735607C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 18:44:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BlKtppUKDY62 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 18:44:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0254F6062A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0254F6062A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0254F6062A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 18:44:34 +0000 (UTC)
X-CSE-ConnectionGUID: A6K3Opi9S8OCxyoh6k9ywQ==
X-CSE-MsgGUID: Abv0zk0HRsC0lwbRlLMJ1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36510486"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="36510486"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 10:44:33 -0800
X-CSE-ConnectionGUID: cPsbToHVTTeKoF7sCMZEuw==
X-CSE-MsgGUID: 3mvIE+3XSvOLXlI8Ddu8Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="102407804"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jan 2025 10:44:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 6 Jan 2025 10:44:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 6 Jan 2025 10:44:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 6 Jan 2025 10:44:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KehTIr6sG591qBagYgJa2KvHk2bJI5EMVZsOV44bfAvP9tUWq7C0EXGjioEM5DcdpdihySOFC4rDa9DBkSs9fEXEzWTqM4aNngxEK247YDDEKXcbT/zwpvAyOtNLaJIcYC2gRHlYhvr/yxw/Ekhkmzl05DPqXbjfDJZdHI49UT5qcTCfa6gCohLUDyxStrDZGE/CCDrvM1clM3ZNg+OW+ReUO7+vfzKBD4lBn4dK0XfHCzjeeRcTrL1mWTq4mFrBIg+cCu1yGholaZVEk4AMeMbkKGYBBV2HdsKGJOZPLngBNWe5IP/qU33effeyx+IgEaEDluRcALY1Rla2UNQMQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=INZmTcCXmCqel3QoQQOOdtq7mUiO8NTE9FuSnIyfpj4=;
 b=o+83bSwxeWqUHfHuUvDPtkBrFPHDBLK61TkOk1VFdWc0JTJQIRi0AWbzHRLk2UlY0OUCVCvYEQ+3VfNqnBymmtyM361ci58+KJbInn/Vd+7DhF8fUapnLjYd75b/6dimWSKQrLUMcknDRxgF+hY3lsDQUQOtWmv9AhyV2JA4jqC9MktZDmsxLtIWtu+YJZO2RH6c6vTL+dIlIcZgQaCCsZi0+RXLCcbxdlpOvZIlqUWKVyKsjExV4oxaFCeMjmwaAsJhBnufpThZJaFzge6d9+RX0A99dD7iiPyviOvEa/qziIcHpcieUu6TtGC41oF/PeETDDcZFXauancpkLnYUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Mon, 6 Jan
 2025 18:44:26 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8314.015; Mon, 6 Jan 2025
 18:44:26 +0000
Message-ID: <0db46279-483f-4ce2-b7cd-5cdb31ddc50e@intel.com>
Date: Mon, 6 Jan 2025 10:44:22 -0800
User-Agent: Mozilla Thunderbird
To: <linux@treblig.org>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250102174142.200700-1-linux@treblig.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250102174142.200700-1-linux@treblig.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0068.namprd07.prod.outlook.com
 (2603:10b6:a03:60::45) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN0PR11MB6086:EE_
X-MS-Office365-Filtering-Correlation-Id: a077816f-4da8-4054-e677-08dd2e8224fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yld2QWwwb1NTbkROd3ZPTVRqSzZneXVCcE0rYllGWkJCWlg0OVBIeVhBbDFZ?=
 =?utf-8?B?Z0J2MWJWQ256ZUQvOWRiTEZrOFhvbC85ZFFuUEJXNWhSd2dSQ2xmSlZURlpY?=
 =?utf-8?B?MVQ4Y0RuVnpyS2tqRE1ZVUZzTlQ3Qk1ndlRJaWZIZG5XVzdlaWJuMjg3ckRT?=
 =?utf-8?B?UmV3a2xqMEtWYzdmNXgrQjhwZEhmc2tJdE5yanNxS1pTNWw1ZVZXd0plcFAv?=
 =?utf-8?B?bTZleU1WbC9PYnRYbU9qSVhJSWl2eEN0OE1vb3J5K01VaHd0UHZKWXZlY0I3?=
 =?utf-8?B?eC8ydVNLOXdNV1NocUxsQzg2OCt3U2ZXaktXWXdEbTFYNGV1SkxHNGhncGZq?=
 =?utf-8?B?eDcxR0hhZnVXVlpNS0NBa3YxVjQxakNqTndsdTNvbkRjQmZiMEdzelUxUHhm?=
 =?utf-8?B?ZnRTTVBWais0YzZBZDRySkF1K2Nua2NVOWxQck1wRmRWV2ZVcENQdDFEcFN5?=
 =?utf-8?B?Q2pmUXQ3ZnFiU2c0Vjh1VFBMR20wckNsNVQ2dlMxZEErTU5QZjlsZi9sZXlx?=
 =?utf-8?B?YjUxSm5OS0tYWFdYWm5ONTB2YWlJWWdsVFB6a2U3cXpHT255eG1nNFVkVnl4?=
 =?utf-8?B?YWwyS2FLcWM4YjViaG9VOUYrSGYzVk8xQVIxYWtrdk9PUytMQ0dHM3lKSld2?=
 =?utf-8?B?ZmFEYUwzWFA0UVJQNUgwNVVyMG4vanZSY0NwMHEwbjYxOTYrL2hTc3N5RWU3?=
 =?utf-8?B?bzdpYUZZVVcrT0hXYVEzOG9MUDluRDV1WXJpcVhIQ1BuUllDRjMxMFVTZzRv?=
 =?utf-8?B?R3JteWRzb2FyeDRSdnlVZUlLclVYTFFMQlZqUGZTUUdKVGgydDI5dXcxenhY?=
 =?utf-8?B?NlMvZllhUlNlUXNJK01Ma2VWaWN4NXVvS1dzaEgrc2R3Yi9LMjJHSlQ4RWpE?=
 =?utf-8?B?WE5jN0R6NllFT3VOVE9aVVlnSmFkQmFOTlI3TnJoeHM2VWYwTUd2aGxIOU83?=
 =?utf-8?B?VFBEL2VqQUVhU0NPa2dmNU5hbHdkNmJTS3lLV3JuUWpJalNsdDNsSUtIUjJn?=
 =?utf-8?B?SkNPM0llUHBqeWp2R0pQYTB4MEl2WEF1Mm9VUDM3d1hrMS93R05HckNwTy9p?=
 =?utf-8?B?Q3hFUEdUTXJOTENwZXJ0ajF2R3IvOG9haWdPeStzSElISWhVb0txajNFaVRV?=
 =?utf-8?B?UTFKQk1BQlN3RWEyOXBBa1dhcU9wM2pFbWt4U3NkVG1jcFNJWENocnFjOUlr?=
 =?utf-8?B?cFRpNG43cytSQVRaM0JPeUlXQWQ0NXBEZFNWN3BjdXZDZnpnV3I3OVNtVDRo?=
 =?utf-8?B?eE40ZUhQaHF3aGZmd1Z5UzBKcDBJc0xLbU1uY3hoRGNadXAwWXZkdlJFcFE4?=
 =?utf-8?B?MXVQUmU1bEdHRlUvbnpnT3JhMGYySU12NGxKZEZLdE9jYk00VEVzMHlRZ2sv?=
 =?utf-8?B?ak9pNnJ0N01Vb015U1hLZEZGYnR5WGFrV2Y1ZjVsU0xhdW1oc1o0dTZBQzJk?=
 =?utf-8?B?VmpBV00yUkg0c2xGek9Gc04yYTVZbGxXeHl0N2psM01Fa1F2NVlNeWZBbjZW?=
 =?utf-8?B?eU12dHdKQ0lDYUNBQ2hsUzBRR2tyMDNHU0FQaHhnSmxrYVZucEhPTlNNaUtQ?=
 =?utf-8?B?eGxtWkIrN0xrT0RMNHg2Q3IzS1lhQWhKVGpCRWpyazkrczFGN0hmMWVNc0h0?=
 =?utf-8?B?YXRoSW40RUVQT2t0SjlOaUVMaEhCTHNFYUJrWG5VMHJJVnFWMGljeEZFR29Q?=
 =?utf-8?B?MlVlWkpBSmFyVWxBZnlyRUZSM1F4TzNBMFR3cS9uNTQzclUxbVRWd3JlRzl2?=
 =?utf-8?B?VG5YTFQyMzA0aDBaMVUyVThxUjA2c1JFZXdjQTEwZDF2eE82VXFiSkFBdkxG?=
 =?utf-8?B?dVVvL3kxMEowTWlXcFBoa1BrUjF2Z0tZanBTVDBHY3Vvb2tPbWNBZGlxVlUw?=
 =?utf-8?Q?v/aLr5PCbp4T5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzFPdEhWSTFlandlMmxUVi9lYUFFT3pSVUw4VlF2OFdXZTBXVE9hKzhvdmpI?=
 =?utf-8?B?WFNQT1NreXBlYklXY1M4L1J3WkZxeE1TVWVuSEVQLy9NRTVUZFBZQWNzQ3Zw?=
 =?utf-8?B?UVp2UmJLWWxRWitabk15WW1WLzB4VlJteEZRdXgyK3NrZS9BTDNrMlJkZ0th?=
 =?utf-8?B?VmIvbFdBOWUwM05iYWZ0bTRpOG5RS1dSVU52Vk1WYjRneE01ZVJzWXdjQks4?=
 =?utf-8?B?UlVpTXB0eE8zdmFRcldYV2JFQWZsQXdHUFd2cDNpTkI4aUUxT1AxNjB3c081?=
 =?utf-8?B?aGNQYkhTaDlraEtPYjl6aHBLMkxPekEwK0l2eHlZcGdLbys4QnJlS25hZTZp?=
 =?utf-8?B?djRLY29MSGRqZllBdzR4d3Y5L0FXQWpNZVpudlVWRnd2ZkhwVHBkYjJBS0t3?=
 =?utf-8?B?Q3cxbGdEY0RRbkx2ODhDT0dxQit2TjdNRHFIcVZZY0tUbUxwZjV5OFJKQ1ds?=
 =?utf-8?B?dlpRNnlodm9LWGVBOEVnRGlhNGNwN0orNzlVeEdxWTRKczgyUVYwdDhCcDJV?=
 =?utf-8?B?TWlUMzBnZzBsRWJJeDIvQ1p3MnlJNGJLckpCOU4wZlFrcWZPRVZ0UXZjRFRk?=
 =?utf-8?B?bnpQcnhQbzVnR0libGhBckU0OW1jOEhaV2kxU1NRN0FRbDFuSDNBTTcwNnpZ?=
 =?utf-8?B?Vzh6d2ladTVvR1BFdDZsQlBSNDgwRGNSVG95STgrZlJtNW9jaWFWV2F5blZt?=
 =?utf-8?B?UmczdlJqQnpuaStwUERURXNOaFZiUkZQaWFuaXNPaUUzS2JtZUZUR0xCL3VK?=
 =?utf-8?B?YTI1Y3FPSHR5Yk5qc09IaVVIWUp5enJzVG5CREpCWk9xNXNla0tKU3d2NGUx?=
 =?utf-8?B?VDNGdTVMU1FtV3NTWEZPcmpnSU5IdmxwL1dMekpEWGI2SnFkS0xVWW4yMDNi?=
 =?utf-8?B?VngxUFhNaGRKcEwxWVE4WldmbGlYZFcwa0JmbUk5dXZTajdRMFJsN2VDZlZm?=
 =?utf-8?B?UVV5L3VRV0kwbnFFTHRxa213eURKdkE0T1NYMWczSjBBcUNUaXhlVXhBa2sw?=
 =?utf-8?B?MUN6c29BVmtvU2pkL2VwbEdyVFlBTVVGUHZvSzFNYytjaTlyZStjSDZwY0Jl?=
 =?utf-8?B?ZnFpUXlNaXZPQzlyN3lRcUQrSzRsRGRJSXM4SE1Qb2VPYkcrdThtbXJpLzBR?=
 =?utf-8?B?NDR5OWNPc0xsNUhWVnNydVZ1ejZQRnI5N1MvUk1rVGpCU0FUUW5IZHhabWNI?=
 =?utf-8?B?TU90a0RxQUY1aWhrNWtQS2U4Qjd3VjRuTGtRRlhKQVF1THdBMmZmczNaK2F6?=
 =?utf-8?B?N3ltY215TDQ5cG1LMnZBTWZPMWRxNE1CSFR5N1RUcngwWk85OXdUS1pGN212?=
 =?utf-8?B?Z1ZHYlV1eVdERnJ2d0NiTHd1L25RaTlKYit0TDgycURMQmJZK0FXQWNOYTlk?=
 =?utf-8?B?WmF6OHFkcTZxelBJV0dRVU5kbGh3NFE0d3RacnIra0hWZ05oS3hVR0VodVR2?=
 =?utf-8?B?OTZHbElyRU9CWXdnSlRzZVBZWFViUExGN05zQi90K21XcWxtQU5yWHJldGIv?=
 =?utf-8?B?WkxuN1haN0NGMEZjZnlsS1VSUXZ3RTNlOVYwR1hiSmkvb0VMd01odklmMGdB?=
 =?utf-8?B?S0hyeGE0NC93T000RnQ4ZjdVNCszNmk5VXlIbU45Y0NpZ0hIZ3U0KzRWdDhs?=
 =?utf-8?B?SEVNNHM0dnNMN0JXRUNJWWhYQXFHMUt5RGppK05lL2Z2aUdxV2p1alkvREVq?=
 =?utf-8?B?cHNoQmhkaTVFTWdZZW95VWFic2dQZ1FJRThXMTM2QVFsL0RGbEFSUy9RUlMr?=
 =?utf-8?B?eE9KcUVVQkpHTzRPZWhsRVN6Um1iUUEyd29yV3YxSFl4Y2UxeVkxWXMxTzQx?=
 =?utf-8?B?U3ZnOXpFdjAxUDd6ZVJKbE9jNjNydHRoVWpyb3pHZEhrZXY4SzgxVnp0Y3ZY?=
 =?utf-8?B?RzVZSngyUlNSRnkveStMcXJRb2RlaUYxU1llZHpYeldlWCt4YysrY1pzbVQv?=
 =?utf-8?B?MUNGZlRTK1NoYjlZUnpqWnhhd3FUVHRGNG9PcmVwcTduMmlvYno5WEg1Z2Yy?=
 =?utf-8?B?a21rbU1iSFhiUHRsWko5T1VyVmJ0bzlXYjcraVhOei90a01YSGJJaVBkbGp1?=
 =?utf-8?B?djNyS25mdncyWEZISkl4bFhMclp5SFBocmRhejJJZFgrcGhzT0hwem9iaGpG?=
 =?utf-8?B?VjYyQTBuNXhoRE5SOU1BWmVsWTFXM2NtN0p2NHZDNFhyZFNVNmU3Y2k0RVBV?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a077816f-4da8-4054-e677-08dd2e8224fb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2025 18:44:25.9386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2gM2onXiWwQUP89hgKbeIv4FpNsbFxioUUP2gXUmRMcvGTyPQ4yoeGu6HQMJCp5ertr6A3WJCBjF6Pn4P9oIWMwaFNrhwOtkFDRE31fl6jM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736189075; x=1767725075;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DLhjnptXAE5SA9XVj6bB5lma7GWRsWzv8BcP/UFkS6E=;
 b=Dhf0XotPOexG9ocVMfCPw05qWZUCltorXD5nE4jSOOs0BRVA6dvOuMgT
 NvkodEWIbued/m4hYKeb5YyEC/o/J8dlS9xFxRXUgsWszCF59aTgI3hdW
 Z4iaN+c64yBxJOqObRs1Bax2wySiAwd4t+CKv75DJlVeXkQgtwJRvrmcj
 lbT8o4qTpEb8hUUaEnRs/PYIeqRahK7xdokDICCw9ihpM8YH56meqUUnM
 ubI6JOT06duX9OZAxzi7YmnbpdOjVoXpc8XBfMgJH5qOdcV0Pg+be9csq
 GIsKLbkVTE0m7E8zoSPHiROZPA3bqd1Gb/bHaYmpTID9KM47g5tea/3QW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Dhf0XotP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] igc deadcoding
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



On 1/2/2025 9:41 AM, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> Hi,
>    This set removes some functions that are entirely unused
> and have been since ~2018.
> 
> Build tested.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> (Repost now netdev is open)

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> Dr. David Alan Gilbert (3):
>    igc: Remove unused igc_acquire/release_nvm
>    igc: Remove unused igc_read/write_pci_cfg wrappers
>    igc: Remove unused igc_read/write_pcie_cap_reg
> 
>   drivers/net/ethernet/intel/igc/igc_hw.h   |  5 ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 39 ------------------
>   drivers/net/ethernet/intel/igc/igc_nvm.c  | 50 -----------------------
>   drivers/net/ethernet/intel/igc/igc_nvm.h  |  2 -
>   4 files changed, 96 deletions(-)
> 

