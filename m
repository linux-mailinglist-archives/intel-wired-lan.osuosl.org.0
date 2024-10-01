Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D54B98BD24
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 15:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9740A405A3;
	Tue,  1 Oct 2024 13:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YwZLtpwBNc5X; Tue,  1 Oct 2024 13:14:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FC254059A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727788462;
	bh=DAQbUY2Bd1jT35CzyTH88JiKJVdEsGZPzr2vCqXT4yU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IwwLyLMl2NpZAQYUL09K3E2e/jgNy6eqgxjjwn6FJf3SXvm3yfLMcw8wrqdvPOCpb
	 p3Giv9wenizM7DkdTbgjMGvY7JOODwkxNLK8yMoW4iocAYFcAXobVsmTm6oln1ri8u
	 cv8GG0NbRpG93bmAZHSDiHOaPRgS9b9W6ePYd0xSBbByo9EFc3RZTf2czJq1yCOOFC
	 sVjaW9jINLzc9x97TcO/eiXmD8BWjbku0ZJ61klAOASQwLh87xgc/X25dNH8Z+UqpB
	 68AIdkji8bZIf7weTLZ8S8yZUR3vAQhBEFrUPKsvh3EQ31CJlanzmDNbmDEiXnezXC
	 2av3y6mtoTkfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FC254059A;
	Tue,  1 Oct 2024 13:14:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4341A1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 13:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 309EC812CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 13:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxIXsEyB7nOs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 13:14:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 247C3811AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 247C3811AE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 247C3811AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 13:14:18 +0000 (UTC)
X-CSE-ConnectionGUID: OEPTj+7PT0uIBlXhjx+ESw==
X-CSE-MsgGUID: 3rWpd4SyRNOdm8nXlZOcLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="29804230"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="29804230"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:14:18 -0700
X-CSE-ConnectionGUID: EenqO2ycT06MKRcs/AKGEw==
X-CSE-MsgGUID: D5gssNTxQaqwalxubos0qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73324207"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 06:14:19 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 06:14:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 06:14:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 06:14:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 06:14:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hRCeZAuz5+meLuS43H4F+QVHAmsn2kIS0nbJeMFG7x1N55NGwh3HDugBwlhE/+DfkCb1/bk690FzjT/0Yqum6o7tr3IZ8yvpNegwDhduR39SHGW23sZUkGBlO5YoexNXMzGJbfrjUtAAuVkiwFMvNNh/wZ7+eIvo71yfdnAIrgEjS1LzlmJbHct42NXDltHUpSUYwDKmv9gn8d6Mu062BEou7gTXOa7aJKtqecmFifsQ5kFODPi5mbvoP/RpLHW5RTpwsz/eAl9K5HQoQ+JxUvHn9yxnIZEQ3/HXrtOvL/mvhmdikt5AmuYoiZ/8vCdzxiMaKEiBlMQ0d9mF0+lSLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DAQbUY2Bd1jT35CzyTH88JiKJVdEsGZPzr2vCqXT4yU=;
 b=Kka3FgIvfNokSCNbqFD4IA7KIiu7Y4hXP8+HAOqcdb3CLnNjlogRMXs/gpNy4V7Yr3eTY6oai40v2LJ5kPutob8Q629khDjDVVFtOlKKyUoopmbJXFbXp3yM/ly+n22BFGFg9kk7fAwN59YByWYztuChj6/4VfhE/v9O9r05xkBiKi34KrxOnNmRZ9ZKdfxD9iP/cxdBVhQ/hfx38zTK+NI1vinCZpbWDuOl8tY0z5fHGqLqlT1ehyiQuP12veirnYlexemXUOwiqfnQRkyJgpnmBZENwbQ4T9URHBHcv8Jj6BOQMF6c30lrokev7RbskZQg9+t52hCAPGbcpxYUXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6884.namprd11.prod.outlook.com (2603:10b6:510:203::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Tue, 1 Oct
 2024 13:14:12 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8026.014; Tue, 1 Oct 2024
 13:14:12 +0000
Message-ID: <a2d7ef07-a3a8-4427-857f-3477eb48af11@intel.com>
Date: Tue, 1 Oct 2024 15:14:07 +0200
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>
References: <20240925180017.82891-1-jdamato@fastly.com>
 <20240925180017.82891-2-jdamato@fastly.com>
 <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
 <c32620a8-2497-432a-8958-b9b59b769498@intel.com>
 <9f86b27c-8d5c-4df9-8d8c-91edb01b0b79@intel.com>
 <Zvsjitl-SANM81Mk@LQ3V64L9R2>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <Zvsjitl-SANM81Mk@LQ3V64L9R2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0113.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::6) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6884:EE_
X-MS-Office365-Filtering-Correlation-Id: d2886b72-3c8c-49e1-539e-08dce21af113
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1p4L1EwSjY3elJOQXNETk9FUGd1T3Blak8yTXVsNVh3UnM3RnhIbGxVVlhL?=
 =?utf-8?B?MXBzY2MrMms5Z3RNZkY4NlZHU2NYVm5TcFJqTEsreVB2N2REZ2hvWUV6VkJs?=
 =?utf-8?B?bjN1Rk5mZXdrRWQzdWtaTWlqakJ4ZWtSaStVeDhaLzNrbW1SRXFybkdIVkxG?=
 =?utf-8?B?VnRObU1nYVhsQUlnZjNHa0VGbFZwaEQ3U0l0NXpMV01kOGlYdWwvZzI0WkJ4?=
 =?utf-8?B?cWk3TEtNbDFod0tvZFRPOGY2VXpKaGdudXJzQmx4VTdWeVVEZG1uSTJkTmNQ?=
 =?utf-8?B?aUtyamV4RkxXUVJXWEE2b3hXMlZoL2djREFXck1TTTNYemJSUkF6WExiWnRo?=
 =?utf-8?B?VTJZY1lFb1M3c1E1QnlQOEQxNkpLU3pWc3cxbUNHMU1wY2lLQWVCaHFoVnpG?=
 =?utf-8?B?aWdnRlRsTlVHTTNQY2t6L1lEeEpkS0k2MGt3VDlkb3FVbm9sR0djQzFZbWhp?=
 =?utf-8?B?RW9maTNoWDVEMng3dXJML0hTTkNDNGw5VEVReGNVYmdkZHY0RGNWRDZMZXVP?=
 =?utf-8?B?dmswT1Z6ZW5EeWpEdG1BUDJjY0lyNUYwanQ2NjJBNHhqN2lBODBRb3VNUVZj?=
 =?utf-8?B?Z28wWHdFYWdxT0FWTDU5VExvRnd6emZlUXJQTDNLbzRobkxJYnUxZ1lJMlRQ?=
 =?utf-8?B?RndRLzRtVGhJaFFPOGQwN3hseU1OTGxxYUt6MVFGVUd5QUlocTBrYk12K3lX?=
 =?utf-8?B?SlVEeGp4SFhkcEtZSy8zc1NzYVMwLzA3cEdTQmNUd0ZabzREbzVWNlo1MjRm?=
 =?utf-8?B?NE5mclUwWDhqRUFqUTBDdWc1Z0pYNnQ3SXFZSHU2ME80TnlhSzFyYmRpM0tV?=
 =?utf-8?B?RWVPUm1MTGtVVEFOVThseXVBbkVzOStZbHVQTzloT1dCYWNEZXVRUGxRdXh6?=
 =?utf-8?B?Zi8xS2laaXJ5TUpiMVdhb0hSQlJLczFwckJ4cTdXNDBUVTZ5bDVwNzFNbUxG?=
 =?utf-8?B?TlhTUGRsei9BN2tqUUF2MlJ6bDcrVFl5MzRjWkg1R3MrRGFtcXJ4d3VTZ3RB?=
 =?utf-8?B?U1Y0d1BSN1F2Rko2dVc4d0laRHJYRm54LzIwTHNmUzV1RTdKYUU4UnVQZFVy?=
 =?utf-8?B?ZWxQcDhpd0hYUWVKaS90WnpUVnY4SUNXMkZtcFFnOGovSG1jT1g0TEE4elFO?=
 =?utf-8?B?OHFzMGZ3Z2JBTjFNaDJnaW5BaXc1LzFsdW1HYzdscWhCZWpZNXdMRUFoVjRF?=
 =?utf-8?B?bElMZjFiZWo4emlva3BaQ2NZQXU0TFpUbG04VXdTNW5ZU0xkMVY2MnNIWENw?=
 =?utf-8?B?cmV4WEoxNk9qZ3BFeGxaRWVrS0NtcW02UGZ2a0g0bFdkN2xQcENZTEpoRXpk?=
 =?utf-8?B?cU5CM3lFK2tnL0I2T29IMmNKeGVyd1VqUUtmTXRscUJ6ekFHNEVvZVRiMjgw?=
 =?utf-8?B?VzlUQ3dIbTg0ZXgycEEybldiYzdLZDlzQnMzMDd5U0dVSTJRZ3kwU25XeHVC?=
 =?utf-8?B?dlFuM3lIK0w4M3FGUmlQQXRGYjBwcW5ZSmc2R2NTc1BwdDJoYWJTU0E0aDVD?=
 =?utf-8?B?UU51RE5nM0FQN3RiaTgrdzVuRGltRU1tekRUai9oRmo3eDZramo2VFBPdStp?=
 =?utf-8?B?T0pNMFlmZnRFSWdSUGw1QURRN04rZ29VWHRwcWJmbkR3YmJVTEovWkFrTTBi?=
 =?utf-8?B?ZXhaUUQ2aFJNWGt2bDBIRVZnWUo1Mm1ncFlvRy9KQjhBdmxJVHNlbDQrUlBZ?=
 =?utf-8?B?VGtXbytndVBWQTErUkkvUjZxQVlZdUlwai9NYjdldmFXRGhRNjIxb3d3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmoreG0vUnBDcXd5UjFpUVRCWXRIT0FjRkR2d1ZtL0dvZm43UnZHVkw0RndW?=
 =?utf-8?B?TDRIcm05Zlp6bEVZbUFDMHpJdXJ3Q1JBMjg0YWJDMi8vTjhHSGVjS1ZSZjVo?=
 =?utf-8?B?K0k4eU9tV1c2Y1VnVDBsT3lrdGxYYjR6dWNxU1JYK0lvMHN3azBueVhFdmxP?=
 =?utf-8?B?cDJNYzZzbGsxNnFTZDJWSk1kRkprSCsxR1VWQ3FCUTVDOFBybjdrS0dhVEFa?=
 =?utf-8?B?Smp1KzhmM2VFVnRvLzlnR3R0NGZrVkVtVStuR3h5UURzSEl5VXFIMUZUeTk3?=
 =?utf-8?B?NWJpUndyZldkSFovZHZpN0MwcFhQMTIwc3M0L1RsYmd0WWpyYURoREZpMm9k?=
 =?utf-8?B?Y0hoeEcxallmNmxwU0cvOFMxMzlFc2toSTBVeEU2UW9abko5ZGxxbktWNzFT?=
 =?utf-8?B?Z0Q0NXFqV3BUd2lydWpMbFZUVkpJQ210b0ZEK0g4L1ZvZHpSSFBVTGcxSlVl?=
 =?utf-8?B?KzF6RitWT1dUUWM1SFVIcjJCTGc5c1kzeE5BdkszdGZmeWZUSGh4V1ZWU3Ja?=
 =?utf-8?B?eFBSc0J0bkhuR0RON3haNVVLa1dKeHJYVEtJVFQ5WFdxMnBkYUhwU0xpM2Vx?=
 =?utf-8?B?eENiQkNvQnk1OHdQcTNraGlLSUJRdk9IcDlaMFBjb1oydkVxQkpyMG5UVlNV?=
 =?utf-8?B?d1gybDA3U1FBalhkUDlRNUJDa3VJNFZMdlNXVEs2L2RZU2FxSmFVSUVQSVZr?=
 =?utf-8?B?NWFPR1RnWkhkd3BEc3NOL2FseXFxK0pZMTU4ZDJTSmZjcURSQjNCcDVpUXhu?=
 =?utf-8?B?ZXcwVU50a1NZTE1XTEd0RUw2dHVjeVBKUlI5NTl4SGxDVEw5L1J4dlRlZXEy?=
 =?utf-8?B?MERqamN3eUwzcFZNQ2dIRHdXV0VFbkx5MnhFang0REoxaFNUV2xkSzJWWnZm?=
 =?utf-8?B?MVJiMlBXYkxOckVuKzdoSkpCZHdDREhRVzVKUFoyZEtrOEcwNGViYVFvdk15?=
 =?utf-8?B?dVlnM1kyTDNmWCtoQ1FIQThvQTIyZFgvNmoyVnI0b1kyZjZqaFVUcGZ0NGRE?=
 =?utf-8?B?Sm01aWwwNkdMdEVlajMrUUZlTTdJb1htbWNRZlR3Ymk0VCtwNmpVcG1hWERN?=
 =?utf-8?B?NUJaY1dQTW1lM1hUY2VZUFRGZFZIdytyQTBodjJ2MUc2RmQwLyt6V2JDcEdD?=
 =?utf-8?B?Y3QrTm1Dejl4VUxYQjhaZktzUDdOOVJoSW1iWlE1dkxwUUpDbS85RGh3U3BW?=
 =?utf-8?B?U0JrdzE4WnUwYU9uSUtnS0QzaGVITE9mMUJkQzY1bk1CS3B4OURiU3UvVFJZ?=
 =?utf-8?B?Um11TTcyRnpaWWVySmx1K1RKVTN5RnBXNzlaUTZmMk5NaWRGMTNPLytpYkdP?=
 =?utf-8?B?bEpGRUxYanpsVXpKSmh3YVhkcWhjcmFPdmM5a0MwWXV4NFpTUXVyR3BNTGVQ?=
 =?utf-8?B?NkQzYWx5ZWlWOTVLWUxJc1JkRERCNE1YWmg4eTZyTGJLNlVMRjV2UDE3V1Vo?=
 =?utf-8?B?MTNBRWoxOWRDdXkxVlJXZjN1SU5HVERBMjZQNkJjelVyTkJlb2srKy9FU0l4?=
 =?utf-8?B?NzI2b0lpY0h5M05paWtpbUUrMHdGelFqUmJyczlUUGFOK1JyUGV2TUFBQTlK?=
 =?utf-8?B?V3RWSnFNQ0Zya0ZXbTAwZ2piM2xxYUMvck14WS9jL0Yyc2ZmcFM1alJ6TTNM?=
 =?utf-8?B?NHVFWjZNZFpyU0ltTWErNzcrbm43ME5MZGhJMWZ3Y2Y2aFppU3ZJcDhPTUll?=
 =?utf-8?B?aEdpOGI2WW5EZEhPNzNaYUxGUmJrSWJPQW5FVGFlRTVzREErY0tQRCtGRHN5?=
 =?utf-8?B?R2IvVjhSNUxwU1pSUW9wZkVXVFliK05kSWNJcTRDV0paYzJPaGVLNm9hQldZ?=
 =?utf-8?B?RTVoNmNNZWNPcU1FT045T3VJY21jK2ZFandzcWJtYUdVMWx5WVFHQ1dhNHZR?=
 =?utf-8?B?dEgrTUsrbTE5OS9SM20rYVhRbFdrMVp0RG9FWHJzNTdiNkVNMjR4RTlpWTF0?=
 =?utf-8?B?SWszTFhueFFvM2R4S0ZjK1BtYnk2NmVIcTNFb0ZzcGU5d2krYkJ1U2tCRmVn?=
 =?utf-8?B?NmtlYjhTMnVZMEdJR1RmcUFvM3NhdHBvUFhCVG9CZ1Vhc1hZWUVqUytqYnZw?=
 =?utf-8?B?K1NDR3pERzVQNGFVYmJzUWJuWUM2RjJoQ0oxTTgvajB5MmxUNFQ0MjBiMnN5?=
 =?utf-8?B?RGtmUWQ1WXg0cGwyVU5UVkkwbTh4bHhGQVRvWVQ1S1U0dXY2ZG5oQWJnYy8v?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2886b72-3c8c-49e1-539e-08dce21af113
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 13:14:12.2581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /6I5l0qAz05ZU2rhEEx5PxtyOabUlsFCZBloeF4oUXxRyywdRA9l7THen9Ro8KkfLzzv8+dWe9ZUxbk5Mog4+gOSHuXm1UAs2ax4uKhnvXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6884
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727788459; x=1759324459;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tTq9MT8vhQE/Ynv3U7Ggj8rZXz3QE3865rtWP1HVFL4=;
 b=Jbd+MaLOWKNFTpwFl5/LrsEnji5mBbxxFBpYIqDIyZQgWXeT9mVZB/21
 OK8LXPEWcNeo/70sQljvqaRWFYhb+FshlDG8UVTPhbYFekHD1U/C7TXBG
 wmYQR3nycp/MhXX7g16oLGyPUmVUmmCxr0qIixCYDlPO4hD4Yu8rNv+d7
 tgq5qCV4in/L/xCX0AFF2ji48uHR+zPN1O/DqzoOab8R/yqClYxXUMorg
 sNf8emJvRF8mJxODGCBzM7SVJQeq4KqxWRxtBCW9vJxXXoM32AeaFNOqa
 2cL5SwG/dNGu8QLGm2jXQfAWyWeTybDK0mw64rW6R54D1SPzcsQSWIuKq
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jbd+MaLO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joe Damato <jdamato@fastly.com>
Date: Mon, 30 Sep 2024 15:17:46 -0700

> On Mon, Sep 30, 2024 at 03:10:41PM +0200, Przemek Kitszel wrote:
>> On 9/30/24 14:38, Alexander Lobakin wrote:
>>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> Date: Mon, 30 Sep 2024 14:33:45 +0200
>>>
>>>> From: Joe Damato <jdamato@fastly.com>
>>>> Date: Wed, 25 Sep 2024 18:00:17 +0000
>>
>>> struct napi_struct doesn't have any such fields and doesn't depend on
>>> the kernel configuration, that's why it's hardcoded.
>>> Please don't change that, just adjust the hardcoded values when needed.
>>
>> This is the crucial point, and I agree with Olek.
>>
>> If you will find it more readable/future proof, feel free to add
>> comments like /* napi_struct */ near their "400" part in the hardcode.
>>
>> Side note: you could just run this as a part of your netdev series,
>> given you will properly CC.
> 
> I've already sent the official patch because I didn't hear back on
> this RFC.
> 
> Sorry, but I respectfully disagree with you both on this; I don't
> think it makes sense to have code that will break if fields are
> added to napi_struct thereby requiring anyone who works on the core
> to update this code over and over again.
> 
> I understand that the sizeofs are "meaningless" because of your
> desire to optimize cachelines, but IMHO and, again, respectfully, it
> seems strange that any adjustments to core should require a change
> to this code.

But if you change any core API, let's say rename a field used in several
drivers, you anyway need to adjust the affected drivers.
It's a common practice that some core changes require touching drivers.
Moreover, sizeof(struct napi_struct) doesn't get changed often, so I
don't see any issue in adjusting one line in idpf by just increasing one
value there by sizeof(your_new_field).

If you do that, then:
+ you get notified that you may affect the performance of different
  drivers (napi_struct is usually embedded into perf-critical
  structures in drivers);
+ I get notified (Cced) that someone's change will affect idpf, so I'll
  be aware of it and review the change;
- you need to adjust one line in idpf.

Is it just me or these '+'s easily outweight that sole '-'?

> 
> I really do not want to include a patch to change the size of
> napi_struct in idpf as part of my RFC which is totally unrelated to
> idpf and will detract from the review of my core changes.

One line won't distract anyone. The kernel tree contains let's say one
patch from me where I needed to modify around 20 drivers within one
commit due to core code structure change -- the number of locs I changed
in the drivers was way bigger than the number of locs I changed in the
core. And there's a ton of such commits in there. Again, it's a common
practice.

> 
> Perhaps my change is unacceptable, but there should be a way to deal
> with this that doesn't require everyone working on core networking
> code to update idpf, right?

We can't isolate the core code from the drivers up to the point that you
wouldn't require to touch the drivers at all when working on the core
changes, we're not Windows. The drivers and the core are inside one
tree, so that such changes can be made easily and no code inside the
whole tree is ABI (excl uAPI).

Thanks,
Olek
