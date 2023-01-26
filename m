Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B40DE67D5CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 20:59:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27D4E60E02;
	Thu, 26 Jan 2023 19:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27D4E60E02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674763192;
	bh=HhNYFFvSda/IxGGXJeRhl4d7dhC49NWCCoUOAkmLrec=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J68YoV9GGpU5CYWKNZoWNz31+b5pQEL6qbOWWBrWf6TR69VaeKKgoYGUEfOvI/g4h
	 YH/oBR9xV57TXsYp3qzqmK4Fapm3pZx7W6iJECfkHM2Zocs0UJAkB8CvshXZQm/lOB
	 2aXDglZOo2ZttgczzlJkOFqUBC+djN7DCW84IUKWptZtfR5CcN0gLZB4F21j4uUKo9
	 5+uH0aoXhrXUj0/va8LCl5n9CAOKW9/U+tTOJq5eS1jPjExFeVoVsxoG/UCzinldSb
	 yaMlbTreKCNWrxorY0HUO+SffiPEGbaRvS5xNoFdl7tmuD4Xl5QOBisvQMB3z1nJ+Q
	 y8nCFGO9gsCBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bW2z1mCDKwRg; Thu, 26 Jan 2023 19:59:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2666960BEE;
	Thu, 26 Jan 2023 19:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2666960BEE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52D461BF255
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27E4B81C56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27E4B81C56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdE6NX7AjuqK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 19:59:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18DA681C0A
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18DA681C0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:59:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="306580375"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="306580375"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 11:59:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="786968970"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="786968970"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 26 Jan 2023 11:59:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 11:59:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 11:59:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 11:59:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eueDvB6hb1PRiyz5QhrMxpAzbvG8DRgzuG7XihMr/nD+qxQLcHHnzjwQx/Bbd78X4bmGFKxxWaQgJ09L9+ESW8ZkpIXp9abNxByl+/HL8MbjEGmhTUExbIY07hVoHAUsNjyijj6S6MqZnJeOCEJo8bHL5sFr987cg4aoYcT62vfJ7PwNN5GA6GuFt1iHnDU4Pkas440PJTS3IEo1YdWIFiFLet94M9O1SzoW0PrwmowGFO2hZEdlWFrBD77C1jpLOMQz56NRclNCiwisWqj+dqpvXdI32glkctMf81XLjtKs864F5tplOCD9NFwSP3Rhnc4SZftKtwIQ4Z8Ropa3mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2NRk3zk319ICiEUhN5STYZrTK5ZxTH4g1mF3S60IHCc=;
 b=YBOoE1yNWOYuxMC/q8WbNWHZlrN+vuk2nf5vownzYaSHv1l0bNflKf3Sz5qxweAZ52d+TMv4Bh5vafnV08JHIR+emOIxNfHLgMEGMkSx5Dd3fylwanRiG5Wk35F+M33DMd03L8q+9bXN9mZ65oxu0xxhKaLukmzbx61ynRSBWjkxiFYXTWg1K8nd//YbBbuqkN8tTenM+Zh7tP8pH0XXyw16+MACc7Vj1X+PJ2A1vOLNYSRmG/6yfvSAmA5938SoW6+W+7ZQ0xOip+sPAmp6Ls/abwfqb/d/aNNONDUOA5HLv5zeYG0U1NF50jezO6OzCTqjoBT8QqTQiYq/XOV8SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MW4PR11MB7125.namprd11.prod.outlook.com (2603:10b6:303:219::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 19:59:39 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 19:59:39 +0000
Message-ID: <287458c5-3e56-8a0b-f993-92e2b6ba9adb@intel.com>
Date: Thu, 26 Jan 2023 11:59:37 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Natalia Petrova <n.petrova@fintech.ru>, <stable@vger.kernel.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
References: <20230126135555.11407-1-n.petrova@fintech.ru>
 <20230126135555.11407-2-n.petrova@fintech.ru>
 <a23c80c4-933c-9be0-6d36-4d4238b13f23@intel.com>
In-Reply-To: <a23c80c4-933c-9be0-6d36-4d4238b13f23@intel.com>
X-ClientProxiedBy: MW4PR03CA0116.namprd03.prod.outlook.com
 (2603:10b6:303:b7::31) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|MW4PR11MB7125:EE_
X-MS-Office365-Filtering-Correlation-Id: 504a9f8f-cc64-4b78-93d5-08daffd7db8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AUpQfHr9upVBKJjl4FeAIwEpGlZ1aZvy3azTQR1xWEkGJuKWBHfRFcfdkj7vqKombTgl7XhniGSVi5t864W7lHQC9eYftUu1v66kb4DkZ8w48GgULkmCoGGJTcO8UXg/2Z8yVFxUjTev23VYny5GIflGGs/8Az55cFP+zNEhHluePRtpmsYvM461gTB3gAweOxo/yH5O4tpRBlPl2VBlQji3JxTjUxb+ft5zip8eTiv4LqRhstxVBzIT7sn1CoLiy+BsJttv21aYPJJ8cdPisykeA7QVxsAxYklMC62b7aaZDWtRNPNPHmk21DjDKu+kCyxP5RiaIR/ogYENu1Ekh2N9hK1/8AJFoFjruP0RnwVXmPopnBlwaCf6e3+jprtC1UtyCD/lKyBY5/XswYSA3PAqE+ymEOTPMzFMXt2b0F1lbNAaGy+UR55z8bhN7/NmZFh+D3taIq7AtrjQmhjtc+ydVM3kloSElHcfVmVY6taLW8in2vxw+FotC8xacjJUuNTh8tkMPNEETyLX9vwqdl6vkdmTvyPeoJAYHRuTiyC9Or5TvDct6p0p70B82HqtURUYLnjaI/+kZeshWjiPjk+rkXFhx2CdGLtr7EBsWe4CFDOJUHahKih6UFD1COL6Mgm4VsfwraKfHeznlRD7f8kMdpE7j549vnPF0fmxmdB/861O93d/VzsFPEOihRzSvbMAw4FWupyfZXs9+9/9dJxzRCQHfSiPrsxo3r4UHvKq0Y0lSDRdJqh0oAUw4ILcUfl5cLolOzj4N83mYSSrKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(39860400002)(136003)(346002)(376002)(451199018)(41300700001)(66476007)(8936002)(36756003)(7416002)(5660300002)(44832011)(66556008)(2906002)(31686004)(66946007)(110136005)(8676002)(4326008)(54906003)(6486002)(478600001)(82960400001)(38100700002)(31696002)(86362001)(6506007)(83380400001)(316002)(2616005)(53546011)(186003)(6512007)(26005)(966005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXpBRS8zV1Zod3VRemZ0QVRuQzI0NDZCb2tIK2xiY1pxbWJ0YkFvRHYzdlhZ?=
 =?utf-8?B?K09GclIwNkQzcjFtMUZrN3g0a29Ld29MUysvclVTWjFYdUI0U0xyODExSXF5?=
 =?utf-8?B?NGwraHlIVWFUNFl2RGM3M2xkUkFpNVNJRTA5OU9vcG5tVEVJQjJ2Nldna1Na?=
 =?utf-8?B?U3BXT2lzNmx1d3ByZGFHenRuZzFwL3EvSW8rdVB6MEJXMkZ2NmEvd2hvS3kw?=
 =?utf-8?B?SUpWR0Raa2wzOG9uRVVnTUlEMFJMTUtjUk5lY1llUzZyRElvbFcyQjBPeDRt?=
 =?utf-8?B?Z3hIZmJqTEJLNWhvSERFdUFUWjZmUWFrbGhJdEk5K29heGEwQldkeC92UTVN?=
 =?utf-8?B?dVQ0VnI0alhOZVhhbkZvcTR5WHRYMnF3MkgyQkxMUWdwNnp5U29oTXVrVGZT?=
 =?utf-8?B?SHVxYVZzbTZsSlFFMEsxcm9IbzcyRC9rdEpRN0lwb0xycnJrMnVldTQ5UGFV?=
 =?utf-8?B?NlY1RE9YbnQ2ZWx4U1FCM0VRY0hlUjNPU0FYK1VUckdXTXZIZnlDMDF3a3Bh?=
 =?utf-8?B?T1A1bFgybG5LUFlrdjhWWm82Rmt3cm5GcG1KcTNmaENzWEp2ZlQxSjJDbFlw?=
 =?utf-8?B?Tm9CaDF3MW9xYWlIZWdtY2l0VHRJNG1ONUUxSkFxa1lOOER0NmFTUzZ4aHh3?=
 =?utf-8?B?NkVlMmRjZHMra2hxTUF1cVdxSGNxS2FwWDd1MDEyVytqRlhqQkNJdEViTFZv?=
 =?utf-8?B?cnMwZzQzK3pEMDdXeStOTml0Mzl0RUlyNDBYMmt0WnAwbVhJZ1oySlRWdGpO?=
 =?utf-8?B?aVpwVHJxOGt0dlcrWHovSGU0eUs3dld5RVpBaWdKbVdKSnBycnVSWTEyMTdP?=
 =?utf-8?B?akl6MDJwNnBNMGJ1djYxdk9xb3dHU0R2THFWRXB1SWFDaFhCSHZOQVB4eEZh?=
 =?utf-8?B?L3BkYVBHM2JjWW4zcGJMTnRMRlF2RGpQT1FVL1ZWNys2S0s3MVdRUjROamhr?=
 =?utf-8?B?Mk9IcmliQVB6UEFKWXp0U1dnTlVvSGxXb3VaUlFtckhrdmhlS0FReTFRMFNN?=
 =?utf-8?B?QXovZFRzMEhRa01CNDhtbWZxSFpEeXQxbi9oZWd6bTRSYXNWNEVYSkpZNThs?=
 =?utf-8?B?YUREVzJ5Nm10MnlZVGpCb0xGNnpIQndEVmFBakJsTUVFdWlQM2RDZnc4eUVi?=
 =?utf-8?B?aG82ZVozdUxLZHU3ZFhNR2lVdnBuQXJGTU9vdUh4UFZkaHRlS2VselpoeGdt?=
 =?utf-8?B?TnVOQVFQdzFHQzFZdFlqN3FzcUY5RkN3MGgvVXR4SGNBZUw2ekVwMHdwSTVO?=
 =?utf-8?B?VWs4WlowZm5uUDF6NGg4OVJLaDhHVFJkQ2tTR0FRWmoxSnAzbjVxcThOVlBk?=
 =?utf-8?B?UmlVSnBqc1pEY01kNkpzTnIrb29YL0lQR1p1cis4Q1c0ajNpZ21nTStDK0tv?=
 =?utf-8?B?dS8yTEUyOHVZVEZJMDZGK0tncFZOMkltRlc0RDQ3dk9TZVVnQWtFQWR6TFJh?=
 =?utf-8?B?SElQeGszOWl4SXdzTkluYnZSbng5M0szRVZtbGxKV2dUS3k4Z0d3TzBlT3Q4?=
 =?utf-8?B?eWhDTTU0eVZjSDh2NWxxNTV0YTRRU0QwWTBrNHd4VkdQQ2lWcTNLYWdWenpM?=
 =?utf-8?B?MEN3VnNVVkRKOUhWZFpTZ1g3cVFVRE0xOXFtZzNsWW0yMWtNTEQySGJIT1gr?=
 =?utf-8?B?YXVvc254MzdoY2htazI3RnM4Y0xFdVBzelNydkJWVGFlaHE5MkhqajFodjk2?=
 =?utf-8?B?MGoxMkNQRVZJZlloRWxiTzd4V0d6bTl2L0dPeUhKMHIzQU1tdmxTS2UvdFNL?=
 =?utf-8?B?SFFhRk5xeGtjSHZPd0VaY3BlS3p5S0xDemdadS9OQUpyS25lcmRCWnJUd0Y3?=
 =?utf-8?B?WW5OYXUwdTdteFFGWXM2YTJ3bTNGZnRRT2RLbE5iS09uWFhoV1psSDRRM2Jn?=
 =?utf-8?B?NnBKTUU0YS92bjNjS0RZTXlETHpJelRteGs2cko2ekVCcGJQVFhJcW1TYzhJ?=
 =?utf-8?B?L1A5QTZVMUdKMFhRcU45REdYUWlFaWZpNDdtRWFUR3ZKUkhFN3VkUUE4U1Z5?=
 =?utf-8?B?M0pGaTZtaUcyYk4zN0VsTHJVa3F6NzdlVHFodGFPZnZROWJoV0d1RS80TXFM?=
 =?utf-8?B?bzkrdUpvYmdxcXdPVWI2bytpYTVGMTFIYWljUzA0cHhGOEFCT0dyZzh5czBY?=
 =?utf-8?B?eEd5S1FoMjJhVWk0c1RXZHorNE5xTDFadHBHbmdDTUo0eklSYkxZcVVWL3RY?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 504a9f8f-cc64-4b78-93d5-08daffd7db8c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 19:59:39.3914 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mjl05x60V6VkNqxPYA8znfHTHI76LunafK8iDcAxChJ30bQOIhO9YkAcb+EFi3/22BMmaP31NnpACtqTmpxgyU+gnkuSFb+PPKKRdPigoYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7125
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674763185; x=1706299185;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ocG4UFZ2ksXiWrxqNI3LecrZnX5ChzRKBY00sQtirfg=;
 b=f62Y2rI0/H0J8MFfzS8sNXj6MGzf6NLIlvwY+qLwel0Vya5brpwbl94L
 MNMYFI872ONX74Ipto/ZKOd5/8yTYtAx10Mjpehk0RU5dESiXCR0ybw8o
 MO7sfLa4ONM9xGZZWTwHxYjdzSJOEmdk0yW4r2eZKkUzpWAjRMuj3Hq7l
 D0DW2F9L82YtYJ9aFfstuTrY24WoKmxQeAt10U9dgE3xWnKRM30ScUuK4
 389cEe+ncI5NZ6QfHqjIA/5bGpj2whQvfjLy41pn127Ywoypg82EBO04V
 4TixGYyxR/uMRtHnGn3k62c5PTWEEYkKzAyx2gwexJgSwr5YdGJSsuMg0
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f62Y2rI0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 5.10 1/1] i40e: Add checking for null
 for nlmsg_find_attr()
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
Cc: lvc-project@linuxtesting.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS8yNi8yMDIzIDExOjU1IEFNLCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOgo+IE9uIDEvMjYv
MjAyMyA1OjU1IEFNLCBOYXRhbGlhIFBldHJvdmEgd3JvdGU6Cj4+IFRoZSByZXN1bHQgb2Ygbmxt
c2dfZmluZF9hdHRyKCkgJ2JyX3NwZWMnIGlzIGRlcmVmZXJlbmNlZCBpbgo+PiBubGFfZm9yX2Vh
Y2hfbmVzdGVkKCksIGJ1dCBpdCBjYW4gdGFrZSBudWxsIHZhbHVlIGluIG5sYV9maW5kKCkgZnVu
Y3Rpb24sCj4+IHdoaWNoIHdpbGwgcmVzdWx0IGluIGFuIGVycm9yLgo+Pgo+PiBGb3VuZCBieSBM
aW51eCBWZXJpZmljYXRpb24gQ2VudGVyIChsaW51eHRlc3Rpbmcub3JnKSB3aXRoIFNWQUNFLgo+
Pgo+PiBGaXhlczogNTE2MTYwMThkZDFiICgiaTQwZTogQWRkIHN1cHBvcnQgZm9yIGdldGxpbmss
IHNldGxpbmsgbmRvIG9wcyIpCj4+IFNpZ25lZC1vZmYtYnk6IE5hdGFsaWEgUGV0cm92YSA8bi5w
ZXRyb3ZhQGZpbnRlY2gucnU+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfbWFpbi5jIHwgMiArKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfbWFpbi5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMKPj4gaW5kZXggNTNkMDA4M2UzNWRhLi40NjI2ZDJhMWFmOTEgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKPj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+PiBAQCAtMTMxNjcsNiAr
MTMxNjcsOCBAQCBzdGF0aWMgaW50IGk0MGVfbmRvX2JyaWRnZV9zZXRsaW5rKHN0cnVjdCAKPj4g
bmV0X2RldmljZSAqZGV2LAo+PiDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCBicl9zcGVjID0g
bmxtc2dfZmluZF9hdHRyKG5saCwgc2l6ZW9mKHN0cnVjdCBpZmluZm9tc2cpLCAKPj4gSUZMQV9B
Rl9TUEVDKTsKPj4gK8KgwqDCoCBpZiAoIWJyX3NwZWMpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1
cm4gLUVJTlZBTDsKPj4gwqDCoMKgwqDCoCBubGFfZm9yX2VhY2hfbmVzdGVkKGF0dHIsIGJyX3Nw
ZWMsIHJlbSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgX191MTYgbW9kZTsKPiAKPiBNYWtlcyBz
ZW5zZSB0byBtZS4gVGhhbmtzLgo+IAo+IFJldmlld2VkLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxq
ZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4KPiAKCkkgcHJlc3VtZSB0aGF0IHlvdSBtZWFudCB0
aGlzIHRvIGJlIHRhcmdldGVkIHRvIHRoZSAibmV0IiB0cmVlLCB3aGljaCAKeW91IHNob3VsZCBp
bmRpY2F0ZSB3aXRoIHRoZSBzdWJqZWN0IGxpbmU6CltQQVRDSCBuZXQgLi4uXQoKYXMgcGVyIHRo
ZSBuZXRkZXYgcnVsZXMgcHVibGlzaGVkIFsxXSwgYW5kIGdlbmVyYWxseSB5b3UgZG9uJ3QgbmVl
ZCBhIApjb3ZlciBsZXR0ZXIgZm9yIGEgc2luZ2xlIHBhdGNoLgoKWzFdIGh0dHBzOi8vd3d3Lmtl
cm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAvbmV0d29ya2luZy9uZXRkZXYtRkFRLmh0bWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
