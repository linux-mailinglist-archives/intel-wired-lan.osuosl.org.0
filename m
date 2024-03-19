Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D13288048E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 19:16:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD36840C1F;
	Tue, 19 Mar 2024 18:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2HORReYqRWad; Tue, 19 Mar 2024 18:16:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3F91403A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710872214;
	bh=MqJe0OqgbeN94JsRgGkYGbkiku73stPgTPssbUscqpQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oXuhkN6xto1bsL+FZxGlypCuLjlENp8uS160TKJEP5GAG+4jPmDkRATv6+f3flsZA
	 ce58Kocy6tylp2Z23818jfTdiLrqCtz4Cf2I+/IDfu/6FTIguH3tpE85RuCo6lUSxA
	 3EHUiGvNV7CVW+CEZ2bbna2WmrL70nhpO3JAXFJexztqiL83cUCZ35uhunrZnwbyzy
	 1RuNe+xucnaiB1SPWtnS3xdU2KUwC2a/RJWBeYzs2wXX0p6wIbC35v+A8STjXy/0P1
	 tObr6buVSKsQ6ABki/DySTaYZFkQa7vjCOwxlIdH+LPqPakMY4zXlbcTFbxRMqokQ4
	 BU+9RUOdANivQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3F91403A5;
	Tue, 19 Mar 2024 18:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D40441BF28A
 for <intel-wired-lan@osuosl.org>; Tue, 19 Mar 2024 18:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF7AB40C1F
 for <intel-wired-lan@osuosl.org>; Tue, 19 Mar 2024 18:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4dlGywG9j8G for <intel-wired-lan@osuosl.org>;
 Tue, 19 Mar 2024 18:16:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=pawel.kaminski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4C10C403A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C10C403A5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C10C403A5
 for <intel-wired-lan@osuosl.org>; Tue, 19 Mar 2024 18:16:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5641364"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5641364"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:16:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="14293387"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 11:16:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 11:16:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 11:16:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 11:16:47 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 11:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JkdaYd55vIhAttAmXaQQQimfx6xJUfQHJjoTv+wWlhKK6fIrdVLZ0yMzoklD4pLmq3z2V/rvDtBKuzeQE2cQ282rjzGhmAt4CyTFmwJ4bYEvA1RdijTuf9bM8A73Bx7R4JI2hP8hnFJ9Dov2xZ5XZeMP8c7kJAwDOlf/nrhnx0w7oRGOjZPXPpHUCb5jWsyRWUvyfQBiBPK/GriYURqpuJkQ2tHgNB4ttfJr9J/LpBf5Y38BvA++6pN96dTQXC69Wab2+IOSLlMgxb0BvoZNVZFJEdtaik8WyLItNkRnJfk96oVkG6q0v9XZJpSR1vhT140mP8H5ea73Qgjd9XE3Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqJe0OqgbeN94JsRgGkYGbkiku73stPgTPssbUscqpQ=;
 b=PGK59/sDI3amBbTAKO6mHNHf9exVIMCqN3Zo+GZHUOEVwfUOWkPGyOlY+edcGwb9nTN4/wZUU5vK368Todu5MFAczUjP5Ks7fe4JIcLBln0owLoozAH1fBORzTeskKusPABhVc1zkpOAlHEM+FY5k3AwWmFU+lC8mBcSl4UIF8Tp/F9iRbxfIMj9NrsA8lkVNk2DOq/k105BtX6jUQFcDYAqZoWeRYwfCfjxhUwJnltGmCUMT7bAmLXQ2i/e1OwQq2GWSr8Ry2aeHBwqqO88b4OSPC4JDWIe+8sGsXz5jmEKPBQ1wlgcaYyNOSZ2aGw7QtcG/k9u9H5u8huYlV+dFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4117.namprd11.prod.outlook.com (2603:10b6:a03:18a::11)
 by CYXPR11MB8661.namprd11.prod.outlook.com (2603:10b6:930:e4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Tue, 19 Mar
 2024 18:16:45 +0000
Received: from BY5PR11MB4117.namprd11.prod.outlook.com
 ([fe80::2380:cd24:7891:c62a]) by BY5PR11MB4117.namprd11.prod.outlook.com
 ([fe80::2380:cd24:7891:c62a%6]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 18:16:44 +0000
Message-ID: <17a96082-a9f1-4bfa-8af1-3eb25b978a3d@intel.com>
Date: Tue, 19 Mar 2024 13:16:42 -0500
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20231208004227.195801-1-pawel.kaminski@intel.com>
 <ZdyMvu7HTFL8pRfi@nanopsycho>
Content-Language: en-US
From: "Kaminski, Pawel" <pawel.kaminski@intel.com>
In-Reply-To: <ZdyMvu7HTFL8pRfi@nanopsycho>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0049.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::24) To BY5PR11MB4117.namprd11.prod.outlook.com
 (2603:10b6:a03:18a::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4117:EE_|CYXPR11MB8661:EE_
X-MS-Office365-Filtering-Correlation-Id: 33462785-2bb8-48dd-8c11-08dc4840bbdd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7dxE4HphvcSlQxe7pNqB6Rli1tea6mba6y49xA6nILXFxLanig5hKvVX6EBqCBnufH+mIQ8VktZvploE72RkATU4NXCALU64FDReWhjy/+9bB11sjovECgXmiiqZzfKX70pYlShahFw9yM23YQjWNPyadI1nfghPKINSzwvVHcYZD9ezc5cJ50omMQ2yiEK29OnoT0NHFd0Jh88E3hfMdBTgaoQlUaCWz0hQd0xOStCoZ0BXUK0VQn8KDET1eirbQFr64J1UyFLwL1OQQJK3qbSUyZDAheJM0WLVVagSNdpbGEJqEMDXjvWgD/8UCJ6hsdjv3udabGIYjikCZ5Kb3EFWF0oJU4jAW024kU5nZFrc+7gk5y+8LrSA1BJOPxCjP74DVVLN18wHBjcu4t+7kTZs6FxfkVhSd6A+bHYJ69ax74h0warNz7OEj+lxrHuzSlEH10y8qGD21ia86Ej4yUx0vOBljkH06SruHLqrUoMIsu8Ztytk6y7B+g6tRauVg95NXaJBVHS1rHYoDRFcCamiTv6AQFg/8b0rHDm6FIiq52ptS9FW7WEzbu3ap6ovMlE48W5V/Tz677SEU/SvZoD6ZJPB4RzZzk87MWD2uNfesyDcOQZjz18s1giWVPtSUHt/XyGDtB0cngYDOpBSOolBelkbE08Zkk6Bu4m+lfI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2EzWkFCSzcrS2lqbWo5OG1zNzRCa1NzbTVjRExsOWplcjUrckhwRGhUOVNj?=
 =?utf-8?B?Um0zRk5XWERmeE04L2tqNS9JcHI5Rmh3bDFFR1phV290dGZqWERNQm15VGNN?=
 =?utf-8?B?blpWU2pER01MRVIvYXprcVFhRFd0RHpieFpidTB4eURZZFZqc0N2TmpwcWNv?=
 =?utf-8?B?N2ZmQXV2NnN5dWduV3d2OHptUjBEMnduQk1ITDJMQ2dJU0RVS2lzUXJXVy9F?=
 =?utf-8?B?U3dWWHo5YU9sbXNGbk91ekVBM2E2T3Bxa0ZQakpJQU5JbTlCM05PZStyVXRt?=
 =?utf-8?B?Z25kV2ZiRERMRDdYMnJKK1lmakNrby9zcWY1VnlJQThqU1YwbjJJR0R2S2RU?=
 =?utf-8?B?TmNUYXlkb1FnZHhDaVZ0d0pHOG52WXJSamtXZG9NNkV4aWNKNXlBWWhzZG9o?=
 =?utf-8?B?dkZWYkRNdzJHTkV3Zk9GZDUyUTE0ZXB4dkNaYXJhelN0VVpYVWhQZStNa3Rl?=
 =?utf-8?B?YjI4MlNtOU1CY3ZXcjU3a0ZZZWVjM2E1N2FKSE14UmEwbFplN2xQUGRsUXpO?=
 =?utf-8?B?WVcwY1ZSSVJRMm03TkVnVnFsdUlFcGxPZmljRlNXTU9tb3NqcjBJeVNwR3pQ?=
 =?utf-8?B?cm1EanR1KzBNSnFhb0J5Y2UrNGNHTVFjYTZCYW1sSUhLVE1LWUxHN2F0WDVs?=
 =?utf-8?B?bnN5ZVl6YWw2VnRNck1heVNDUVV5SWcyU1BmT3hLYm9ZeDdYbDl2WEpRTTI2?=
 =?utf-8?B?NzJ6SUlDNXlBZ0FyUGY3UDlQektENzNtallEeFZiMk5ZV2t5N0VDNFpmeTV2?=
 =?utf-8?B?cDZXVW5ZUjhrMWhHUEVCMDdkT3dMRUlvSnhJRTFCTTllTXhFYWFWSkovOHdp?=
 =?utf-8?B?KzN6OUovZ1FtL1B6OUtsZzJPTUdaY3pWWEt1dmxScjNHSjhOaURpMzN3WWVR?=
 =?utf-8?B?WCszUE1rUU5lZE9Kb3dkTlBsSWNTVUVzV0MzaTJWUDN1aWFlMEdwWG9tTmVF?=
 =?utf-8?B?K2ZCbzlUYkJKR2tvbXRXdUc3TTJxUFNJWHhncTk0TWNJQUd4TS91ZUora1gv?=
 =?utf-8?B?cjJlb2hDV1lHQ0U1YWdYMW5VOXNPUGc2dGlTMG02MHJTb3BDWndNdkJJWkZ0?=
 =?utf-8?B?L2tUOFBGRzdEa0NjNmgwZzRPVjhWSVBOYlpzZmgxZUMzRVhIdlRIdEszVVNQ?=
 =?utf-8?B?MVphQUhYV2dKVkZFWDhQM2JxYjZUdFBTdlZqdWJkSHVPRWVWcVZoMUVqREVq?=
 =?utf-8?B?SXFnQUh0VWFlVkVVaFBVZXNtQzJJMUtHcU1BZWZPQjEwUVlhUlR3YWxZRTFj?=
 =?utf-8?B?UFBtY2c1eWFRbnZlb0pwVzV6YlB2UnZBZjBWbXhsN2EyU0xhbnJoTU15aWpM?=
 =?utf-8?B?eVFTRXJMSHFTZnR6TFVlWjNNRXdsVndENGg2T3dNckhXREZoNm5TdW9qdzBC?=
 =?utf-8?B?d3NrWHI4M3RGRnVuczFtZzFuang5N3R4ZEFRekZhVWZjL1JnSEsxY3Fwa0FI?=
 =?utf-8?B?andyNkhXekVHTkhNblhVSjZ1QlU0WkdVcEdoU2xwUkR1aFFNZ3pRZHJpb29m?=
 =?utf-8?B?M3I3S3NyYzRFR21IWVB6VkhPcTh1ODJKS3FJVDNlc2pvUENJK0Vmd1VRcmMr?=
 =?utf-8?B?UVU0S2VrV2k4WXJnSUd5cGw0MGszN1VrN05JOEs4bWdhR0d1ZkRqV0VOL1cw?=
 =?utf-8?B?RGhzZ2wxY1hqeGtnY0sxNFV1VGxMcG1sdTIzd0UwODduRURDODA2NVVYNFB0?=
 =?utf-8?B?MU5UZkRGVXJWMzdDczlPVlpiQ3YrUGJNaEh2V29aRGZFSHpwTTNub2NYbnpR?=
 =?utf-8?B?eGNieW9JWXBNOUFMZWdnSjBxZGowUUppazhxUnRNUjR3YU1EWGNDcXRJcmZw?=
 =?utf-8?B?R1NJbDBjcWdLa0hjK3RQWEdUeVIzL1ZtTTQ5cFJFcm04ZXNOQlZaZUlndGMw?=
 =?utf-8?B?RnRCajFVNlZuSjNLYzU0QytxRmxjQ21SOXRCekwrM2F1cUZEb0xpYVVNckhR?=
 =?utf-8?B?QUlHSXp5MjM5Rm82SjhtdW1vOVpaOXk2TXVDeVd4UlZBSEJZY1JKWXd6WWtU?=
 =?utf-8?B?bzVhZDI4cGFRUEFBMEtaVmZzZWhRWEZXVzJ4OU44VnJONGM0QjlZUlZRU2RC?=
 =?utf-8?B?Yzg2OHlVT0lGTjVSdTZSS0E1YUk1NkhPZE9KRGxDRzlESUhMN1NBdDRZZjBD?=
 =?utf-8?B?YnhnUEF2M1ZZOTdCdWwxSmxkbnR5WXVFUGt5aFdwcDNJYkdhanpqem9McFlT?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33462785-2bb8-48dd-8c11-08dc4840bbdd
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 18:16:44.8850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iWTID/jBfBe+/T3E4sDdFeBfDcqWdfF8iisCYfBvs83RP8GI9Zg3SGLQdPQNQsI8wJnoL5sdRrqM/8/rAh4Z0oQSylcJCltfhtI7ZsFa4O4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8661
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710872210; x=1742408210;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QbAr6zPzN3AN6XO/OUUPrzL7mbw26qIuCBRUhlylD2Y=;
 b=dNWlaGA5b/smnhZPauLjxctUyaH4wUu0P45dBkKe62TEZNFkbYIUUbEo
 F0N5iPzWHpzQD7u/nekNoaXuZZXjmCTVBggV+4o0Bqj1KzRcToyfbAtxp
 DiAueKVLdxt9rjJ8+ATxq/PEvi07ejgqb104fZLc60tTZl2p3xSAbBfBS
 ch0VNZUr89inAi092k+FIp5UtWTvUyJrN0LFVU7qS7yOe32ObWTSKDc6v
 vFKvvNtWAQLXNxjzdqIMGh6VKt4oDnLeq/LMH7BZp3Ap2iF1zZ/tmpEwl
 TdbwbwOdX3z/hc4RYJGZWgwvkDZaSaBrB8yYXTrYjjeuz2d1JuJMykWFh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dNWlaGA5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 devlink loopback param.
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, intel-wired-lan@osuosl.org,
 Michal Wilczynski <michal.wilczynski@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-02-26 07:06, Jiri Pirko wrote:
>> In previous generations of Intel NICs the trasmit scheduler was only
>> limited by PCIe bandwidth when scheduling/assigning hairpin-badwidth
>> between VFs. Changes to E810 HW design introduced scheduler limitation,
>> so that available hairpin-bandwidth is bound to external port speed.
>> In order to address this limitation and enable NFV services such as
>> "service chaining" a knob to adjust the scheduler config was created.
>> Driver can send a configuration message to the FW over admin queue and
>> internal FW logic will reconfigure HW to prioritize and add more BW to
>> VF to VF traffic. As end result for example 10G port will no longer limit
>> hairpin-badwith to 10G and much higher speeds can be achieved.
>>
>> Devlink loopback param set to "prioritized" enables higher
> 
> What's the downside of having this always on? > How is this different to "enabled"? See more below.
FW reconfigures HW scheduler to use unallocated/unused resources to 
support higher BW on loopback traffic. So if every PF has this option 
set to prioritized it may not improve BW as there will be no extra 
resources for specific port to utilize, but the exact number will vary 
depending on supported port speeds, how many ports are enabled etc.

> 
>> hairpin-badwitdh on related PFs. Configuration is applicable only to
>> 8x10G and 4x25G cards.
>>
>> Changing loopback configuration will trigger CORER reset in order to take
>> effect.
>>
>> Example command to change current value:
>> devlink dev param set pci/0000:b2:00.3 name loopback value prioritized \
> 
> The name is misleading (IIU what the know is about). Could you think
> about naming it differently?
> 
Not sure I get this one. We support 3 loopback modes/settings and refer 
to them as such.
Could you elaborate how it is misleading?  What name would you suggest?


>> +     - Controls loopback behavior by tuning scheduler bandwidth.
>> +       Supported values are ``enabled``, ``disabled``, ``prioritized``.
>> +       The latter allows for bandwidth higher than external port speed
>> +       when looping back traffic between VFs. Works with 8x10G and 4x25G
> 
> Sorry, this is insufficient documentation. Does not tell me anything
> about what the know is and how the values change the behaviour of that.

What would you like to see here? More elaborative explanation similar to 
commit description or something else? This is fairly condensed 
description of what the knob does. "Enabled/Disabled" should not need 
much of a description.

