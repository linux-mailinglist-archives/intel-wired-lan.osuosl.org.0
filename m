Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E026E39D0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 17:29:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E07B141DBF;
	Sun, 16 Apr 2023 15:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E07B141DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681658993;
	bh=St5AI2B4de7OonNbDKN5c2Tq+TjQfm2THlsX2+q8h9E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ec/hcDeAD9F56bNDbL2hNEUROYTtp8MoMjDuaMCb0CWpAG9WLiCIrWvr5aiBtPbLw
	 2KIdOjvEUtVGs3+0BQCeCfutkhHK6AIcHuH58HON8kjlKLk7qML3zv0e5Of7ocQjD8
	 DHd386eLtJYhIzcNOehSqvYV99LocOfxbSD++sg9ODuJUT9kXOA4PQhN5I2lcLF0GV
	 OM8ZofEfc8kDYCH8c9BmtAegiVoGPUoPtjfR5/q9dEsJbqbj4YdlddcEDngGIDChqK
	 Me05rPs6rMHJnDlbzgJ3LN+9BzLocFIik5DH9qBIYAjRaLzmfE8dx97bySLBEI5KNV
	 a5S/NLSkyGnuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xo9VKybXJixt; Sun, 16 Apr 2023 15:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E72EE41D7A;
	Sun, 16 Apr 2023 15:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E72EE41D7A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 502BC1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 15:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26BBB60C2A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 15:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26BBB60C2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zBhv5K6ljs2K for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Apr 2023 15:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 247BB60BF5
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 247BB60BF5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 15:29:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="324366434"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="324366434"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 08:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="755044131"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="755044131"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 16 Apr 2023 08:29:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 16 Apr 2023 08:29:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 16 Apr 2023 08:29:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 16 Apr 2023 08:29:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AOSQG/pV12GSOKvKl2zBA7UKpP5OGc0ElDKjEhFnyk4WhYgBma6oU6f5IuPHdVe5bDryWmIX900yyv4lWSpoYoo37doPtqNmN6Z6/4VXFqONvGBCxA34qv5l00xqSrkFu/VaxbJz6o2BQgtO80ofYuR3Ira2IYKB+Be5dShnHXvXQeSwNJI9mEzZ0y8G0wypi/zR/ZTakW2Kg50NqBC9MQg/dxlPGK3HaMZYsmR53rZLFDMx9RgAmBbf2lhPMIO/S0iBgnDJFGajMocZpiLaooydZNghw5ktngHYZ1YMVlSe9aBZ1Mq1ga/5Ro6WVEqzoyK444+AnAf7y6hyHw2NOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f8dDQw2F4C6c7IRoTjC+wRCRYprn4fHfXt3OR3vXoqk=;
 b=VF4EzLOwrLc6HRiJmpMtpGFA1AelOoNyKv4aypMwX/yx7gjJ4d758f8mkDoUYtVz5+14/UZZaQZ/p7C/wxVeiASUfHeL9sA8sfD4bmDnzsnsui9Sx0RVO6j3ELQpF4u+vwuf699weNcXNjTVAMjAA53CvhLCfRB3FbBSF06oCLZxeoTYRaCA1mqPxXR3hmZLtOUww7IEyGQeAIPm3YUN8AGdRLeaI2xJaEYhTkmvcCS1voGq2xXMQDrODcBSJAPKzOpYGbPhfRBR6B9e/3FGwZa0elUCOuhHltBBnypVB+d1yyTS4KHKj2DhsNqwMgaS6JsLjrdePsZ4Evcs1ch7yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by DS0PR11MB7532.namprd11.prod.outlook.com (2603:10b6:8:147::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Sun, 16 Apr
 2023 15:29:40 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::922:4817:b4f2:c7b3]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::922:4817:b4f2:c7b3%5]) with mapi id 15.20.6298.045; Sun, 16 Apr 2023
 15:29:40 +0000
Message-ID: <6a477f53-1b63-4e85-0c81-b60aff5fab0c@intel.com>
Date: Sun, 16 Apr 2023 10:29:36 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230415054855.9293-1-jdamato@fastly.com>
 <20230415054855.9293-3-jdamato@fastly.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20230415054855.9293-3-jdamato@fastly.com>
X-ClientProxiedBy: SJ0PR03CA0270.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::35) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|DS0PR11MB7532:EE_
X-MS-Office365-Filtering-Correlation-Id: 718452d3-ab86-4fbe-70ef-08db3e8f64c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 93qX3xeuCkpRHpvhh9E5w0Gz3A7ms0vLzT1Il4/o+GwWfB9fH4Fw0/QWfIi7RFbHPror19yjRAbkH5PWIJFA4dADFqoeKmUHyOzBexKPJBZJaWuBcMjIvp6pXv+q9Vyr2oNjM8iphIyEjPPYSw0pchywE6bwILp47ojE86Jot/UI6uxsLf5JPejGo4+RjxEt7Q2mL6BLXAZ2omFE/bEDIc5bAEr8N3+lblHeDbxav7w5572oJBBE5M80xTLVYGH2+s3HW1jAiuhMccsmgqqGNjow94uhirkgOI5zYWFXhIj6C1BtSONwzODC5zp8QzHHrLoh+2uFg2DukEMnUZHXQMA9OT1bwV3DB4BjrDtJMnOTCRbOipgeoBc0rwJRtfn2cjv1yiwXdQpvFgGKNuDjd4miG+sOQ0hMBYFfeKNfEXwsqYp8eUJH1BjfpxrhjPoUn4tdy0qFcrkSOXJwjaBa5hEV8I9JgFqE1+7LYP7yosWKNBnIQCsvLiv/IfpBXik2RvMFW+oyIY9uAQmCZ25yLbRN1pAi6EaQ3P2vqYMmiZVZU3VWgd9yXIpdHxV9Y8e5+BReMhTSTgm/AS914w2Jlol3IA61wVoG8Srgdh9gEX5el2LNMvmkcjgxf8qVtFlSjZEP0t8j67iFKGjFsVsYPQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(376002)(346002)(366004)(451199021)(478600001)(26005)(6506007)(31686004)(53546011)(31696002)(6512007)(82960400001)(66946007)(4326008)(66476007)(66556008)(6486002)(6666004)(316002)(86362001)(186003)(8936002)(41300700001)(8676002)(83380400001)(36756003)(5660300002)(2616005)(2906002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0FVVFRjdm5rZ3hkY3BmZzF4NEVrS01tdkdvRVEvWkpVYVI2MVc1YzhsSXAw?=
 =?utf-8?B?eEVnb1M4b0lobnRsTmYrUmRqSGZZMjN5bnRzZ1hlS1RDWVIvZFpSS0JHVzFP?=
 =?utf-8?B?WFdxUzljeFJmOVdKMUpjczZMTEkxRnpmVGhKS2RXWFlCVk1qV2R4U0c4LzF1?=
 =?utf-8?B?OFp5TkNReit4MzZNWEdub3oxb2JxUjhybmhqanRjcm8wTUoxK3JEdjAxdkwr?=
 =?utf-8?B?ZDZSSDZueWhub1AyWjVxY0JGMHlJWnBQRG9DRWJQMlNIS0FZZlZDYVBsK01E?=
 =?utf-8?B?VWthVFljemFHeFpjRGljd01aaEJac0lxN3IyUlNkcEp3aHE0a1dESkQ5TllU?=
 =?utf-8?B?Q1p6bTVjYW53SEZwWldZaUhKY2dBSXFSckQ5eDdKbXJsdHRyT0E1bmtnL0c4?=
 =?utf-8?B?ZGY1RHRhU0NkQVRidlF6VDdnZEdEU2t6ZDhRaVhFbmcwRitXMWtXTjhZVnV3?=
 =?utf-8?B?QXUwMmtQTVduSTdESzFNN083UEJyRTQxUFJDYlMraHY0c2xJYzRtVURFbVJl?=
 =?utf-8?B?cGU2QUNiVUdzWERmMWdad1FzUm1tc0VCVEdDT1NwRm56RjFIaXBmL0h6VDRi?=
 =?utf-8?B?YStVZ0dtYUowZXVKbGdHR0JPakJ1cmEwSVZqcHJEcVdxMTdKeXJZeUxuc3FX?=
 =?utf-8?B?c1NabWxUSTY0SkorTFNRak4zM3d6YXVMWVVUZ1BwZ2gybzd2SC8xS3RxTDNa?=
 =?utf-8?B?eW5YRjIwOUFEUk1zYnlUWEVTZkxxNW1WdUF4VGNRUFF4VTFTUURmT3NkcjVL?=
 =?utf-8?B?empnYzVVcHFZZDZqVGM0Wmg2M3Qxc0pZeTZRdVo5K09ZQVVqQi9ob0RKOUpC?=
 =?utf-8?B?Rk5RYUxBM2FCR0laeFVWSHJqM21yWXhsZDJLalhxVDZjcXNBcW1xbitWOGJs?=
 =?utf-8?B?YmxoeExxbGdhOTNmNmgzaU1jeUdvWGgxVHB2SUpTc2NwaGtDTkowSDBOOGZj?=
 =?utf-8?B?a1JOZWNSb1Bpc1F3YUZZMndnNGFlTEVLdkdhVnlrSFlJajZDb0x1V0dXSUNE?=
 =?utf-8?B?U2FrdTFaWlhsUCtvNXg2eVJCTjdCeUtnSE9jZXhPbzhCVUVnK1NxWWhpUnpn?=
 =?utf-8?B?NDBSb0xjYzBKVWNLek1Zb0VON3RkTkhKRjUyR0Z0S1c2dnJBVFR3bzY5VWcy?=
 =?utf-8?B?YUxES1JsYUxCcWZLYmJqU0puMVlUemxaVnhnT0phUWJKTE95VEgwMXpvYXo0?=
 =?utf-8?B?RHRra3JVQk9LeXhubFFyTnpDU2hWaXdWSUVtNzVnM1NpQklFTURiM2thM3N1?=
 =?utf-8?B?OGd1ZEgyTjErRHoyOWUrSCtjc0tyUTkxNm45SjNCbWJkVVZIZWRURDRnRUI5?=
 =?utf-8?B?WllNdUZmakNYYXZlZ0swSkNYM3NoRWxNYUo1V3NhOUtxYkYyOGJYR1BYSy9E?=
 =?utf-8?B?eTJqd3IyV0NYZWc0TFY4M0xJWk9OZnBIYlVETGhUR3ZQWGZrek5NYXl5M1Nw?=
 =?utf-8?B?Vml5WVAyWk8yWDdFd1RsME5rNnpjTVNCb1I4ZTFrbXFMMkJCOUxXTDJ6UjVD?=
 =?utf-8?B?ZHFXU1VscnVBNDNyTGRMSEJjVTZnU2M5c05XdEJHZ2RVdHlqb1luUjFWOU9q?=
 =?utf-8?B?c3RoZ2c3RnJmTmtFZ2VTVVFwZ1VsV1c5SVMxdG95MnJubG1rZUhVdUFXd2tl?=
 =?utf-8?B?bFA0NDJaMzlyTHgrRkRpQ0xoRERFeDk4UG5DYlhITytPaTA5SEVSUjFWZWtp?=
 =?utf-8?B?Z0lQUExTVjdpNjRuU3RuNGpDZ0tyV2tHWURUYjhXU0xLME9sY0ZMMHczcisw?=
 =?utf-8?B?K2VMUmZ5U0k3ZVg5MHRpcUUvRlowL1hWbUJJOEpWZEJBQTJIdWx4OS9JUkh0?=
 =?utf-8?B?dGdNNFJrd1ZPMUxaS1ZTREUvRVBNcEhldTJhaHBrYXIxVDBKcTlxK1RkaXl3?=
 =?utf-8?B?YkplTkRGLzc0NzUydU01WituUmpuelFrQ0RMaUwrai9kMGJZWEhXYVNUMGFW?=
 =?utf-8?B?TWFtWG8zY3ErbHZ0MWVUay9RTGFKUm1lRnNBRzJ6ZzZXajBjVERidFg3RTU4?=
 =?utf-8?B?azZydEgwV3FIdVB2MWlsOUlucmU0WTZmVnpnMzRaTEdjcjk0T3EyTlA5Y3Mz?=
 =?utf-8?B?aFA0bkJRNUhwVGdXZTliZzNpMTdlUkh3OG9hQXRITG5LK3F0WmcvNEdFMC9n?=
 =?utf-8?B?WHBVcVZlWDVYUGlmNU8rSk5KNjJvS1EzbDFINVNXTmxhSVNDOGdHbUpLNEJ0?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 718452d3-ab86-4fbe-70ef-08db3e8f64c0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2023 15:29:39.8065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sjvYFkWzDZ1xoElG361OZew9D7eO44OsKdfAN2wroh7sO1lRC9zzD/GbarMX3cS6YNjIQKjPxL05V/qPtYBWA/r0lj5vlzmauG1QM1SvfJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681658985; x=1713194985;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xSdj+Uy1qO8aL8cTFu5AOVpz4t/w0vrHji5IYfRoo5g=;
 b=JRAgu0TBiPiWaqYrqaJgICyzojluTxZXBNR+mzJn8NpRZpvjm0j1MSzV
 kfst8S6cTpFl/7d/F5thc9xhh72n8mF7OjvcYmrzYrdS0uYaNzvVcXbmS
 7WFIZTZ9gVXUyKeA8qaUtHlEVFnhLHJ/iC8nZDCXmihK95bLTac5ammic
 /5GAjPmgxdpHUHRFYqeFN71BGE/qbCtk8YHLCMUa2yQAFMCGjDtt3GZRM
 O35q8F8w8teIsKFgP1IkU7WqqDJt6rxO+0/BV8gQgqOq9TtGtLftFWxVG
 RtisKp137h499PiD0sDDsujS+2MlgbVW/C6iUVgYN2L5E+APIO6w6uCaN
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JRAgu0TB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] ixgbe: Allow ixgbe to reset
 default flow hash
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, kuba@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/15/2023 12:48 AM, Joe Damato wrote:
> ethtool uses `ETHTOOL_GRXRINGS` to compute how many queues are supported
> by RSS. The driver should return the smaller of either:
>    - The maximum number of RSS queues the device supports, OR
>    - The number of RX queues configured
> 
> Prior to this change, running `ethtool -X $iface default` fails if the
> number of queues configured is larger than the number supported by RSS,
> even though changing the queue count correctly resets the flowhash to
> use all supported queues.
> 
> Other drivers (for example, i40e) will succeed but the flow hash will
> reset to support the maximum number of queues supported by RSS, even if
> that amount is smaller than the configured amount.
> 
> Prior to this change:
> 
> $ sudo ethtool -L eth1 combined 20
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 20 RX ring(s):
>      0:      0     1     2     3     4     5     6     7
>      8:      8     9    10    11    12    13    14    15
>     16:      0     1     2     3     4     5     6     7
>     24:      8     9    10    11    12    13    14    15
>     32:      0     1     2     3     4     5     6     7
> ...
> 
> You can see that the flowhash was correctly set to use the maximum
> number of queues supported by the driver (16).
> 
> However, asking the NIC to reset to "default" fails:
> 
> $ sudo ethtool -X eth1 default
> Cannot set RX flow hash configuration: Invalid argument
> 
> After this change, the flowhash can be reset to default which will use
> all of the available RSS queues (16) or the configured queue count,
> whichever is smaller.
> 
> Starting with eth1 which has 10 queues and a flowhash distributing to
> all 10 queues:
> 
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 10 RX ring(s):
>      0:      0     1     2     3     4     5     6     7
>      8:      8     9     0     1     2     3     4     5
>     16:      6     7     8     9     0     1     2     3
> ...
> 
> Increasing the queue count to 48 resets the flowhash to distribute to 16
> queues, as it did before this patch:
> 
> $ sudo ethtool -L eth1 combined 48
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>      0:      0     1     2     3     4     5     6     7
>      8:      8     9    10    11    12    13    14    15
>     16:      0     1     2     3     4     5     6     7
> ...
> 
> Due to the other bugfix in this series, the flowhash can be set to use
> queues 0-5:
> 
> $ sudo ethtool -X eth1 equal 5
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>      0:      0     1     2     3     4     0     1     2
>      8:      3     4     0     1     2     3     4     0
>     16:      1     2     3     4     0     1     2     3
> ...
> 
> Due to this bugfix, the flowhash can be reset to default and use 16
> queues:
> 
> $ sudo ethtool -X eth1 default
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>      0:      0     1     2     3     4     5     6     7
>      8:      8     9    10    11    12    13    14    15
>     16:      0     1     2     3     4     5     6     7
> ...
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Thanks for the detailed commit message and steps to reproduce
and validate the issue.

Would suggest changing the title to indicate that this fix is enabling
setting the RSS indirection table to default value.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>

> ---
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 19 ++++++++++---------
>   1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 821dfd323fa9..0bbad4a5cc2f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -2665,6 +2665,14 @@ static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
>   	return 0;
>   }
>   
> +static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
> +{
> +	if (adapter->hw.mac.type < ixgbe_mac_X550)
> +		return 16;
> +	else
> +		return 64;
> +}
> +
>   static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
>   			   u32 *rule_locs)
>   {
> @@ -2673,7 +2681,8 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
>   
>   	switch (cmd->cmd) {
>   	case ETHTOOL_GRXRINGS:
> -		cmd->data = adapter->num_rx_queues;
> +		cmd->data = min_t(int, adapter->num_rx_queues,
> +				  ixgbe_rss_indir_tbl_max(adapter));
>   		ret = 0;
>   		break;
>   	case ETHTOOL_GRXCLSRLCNT:
> @@ -3075,14 +3084,6 @@ static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
>   	return ret;
>   }
>   
> -static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
> -{
> -	if (adapter->hw.mac.type < ixgbe_mac_X550)
> -		return 16;
> -	else
> -		return 64;
> -}
> -
>   static u32 ixgbe_get_rxfh_key_size(struct net_device *netdev)
>   {
>   	return IXGBE_RSS_KEY_SIZE;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
