Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB77385C1AF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 17:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7615A41605;
	Tue, 20 Feb 2024 16:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWjGTqtGIaJs; Tue, 20 Feb 2024 16:48:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD0C7415D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708447718;
	bh=vanvrWGFbmQr2cRXzxyWrBrrZEWhBgu4rSzsacF3vHo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4awcFPX+70PbZ+uhsiHjUSt3yOKTnq4QbCZ2kQFbJ84NP65idUqqKjx+bjfYBxnuq
	 +9z7lioTWDu3jFGJm76YqptlB11cOzAkTJaB4Jkrj8q3ArHzgKBe60rt1V0OxmTL7+
	 82q4LFgd/knVmnjaTull/b8xfauWzMpaVA94I33ZUA9toIxbzEdp/yCcwUkg6/xY+H
	 rwcMWpY9sGE2TSsP3F0VmxRlP1I5i2d5NoOzei4g+PXyK1VTZuyW0zuZLio9OG5dWi
	 mz7EH0vZ+pzes0KQKWb5EccamUJIHZyfOlyhRQ1eo6gMTGwgXp0NPyYQQmneSSX+7W
	 w8a+XtDYrZgBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD0C7415D6;
	Tue, 20 Feb 2024 16:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E8E61BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 16:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49FB2415E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 16:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eq8nbFWlj5YL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 16:48:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77868415D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77868415D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77868415D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 16:48:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2432934"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2432934"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 08:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="5053767"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2024 08:48:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 08:48:32 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 20 Feb 2024 08:48:32 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 20 Feb 2024 08:48:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bPi+Fs5maFpzdjjvHdKGocPKAfS7kgt+HXiJXNerUWyviQs0gPwleeaTiWwyaEJ972DVzixbuuCOZrz6xHGuk6aJuCaNl4VK7aFM5zHpyOkEY/Fg/ceZnzGV7N6X8+Ej28WH82pyFSdFXnO59FXzQZFeBLI3RRhpHPOm2+jP+w8FUCTDE9sxOjhEepNRBzq22v/+KKQ524wRlQysj4GJyjMitrpkV4aHF7JHmrF69RxX8wauu4kZlMT1BpF+DmdCQ49t0yNgqn/C7hgLH2t9jJ8DPLLMj/0/KZAS1vo53d88sPkvQqy7isbaohw/VUxk6DfqZ/EGPdbOd/2jlu4lqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vanvrWGFbmQr2cRXzxyWrBrrZEWhBgu4rSzsacF3vHo=;
 b=frgitYgOq+SWtlZsH7bCRnc07rrp72HuNmFaCjJDGlhkzF1SOki7XdP8ap/GhmU1XG8YQnaMHL8dG5cFoyg3bUiGlNUWAWZhaQP0H8om7y76G774agE969VEYNoY1nmCmsIa9fE7TrbbdJXtI4w42fQxRcG2hsJpop9dwUJ42oYRq/z31yKUMABTrEh48KK/LXBJRwWFW5NJGP+urOtXV9evh5lHVewB5pcjHxeQJi0rmfLtnTzeeCBwfMiPEAw70/zF7vRi3LkjIu/veDuthuA0uSnFoIuTYeeJKpRcSGW0C89QXTiuVBKe0XW1FLgwhOXm6wEo0C/kKZYJq46oBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SJ2PR11MB7574.namprd11.prod.outlook.com (2603:10b6:a03:4ca::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Tue, 20 Feb
 2024 16:48:30 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::50f4:1fc8:bfc1:706c]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::50f4:1fc8:bfc1:706c%2]) with mapi id 15.20.7292.036; Tue, 20 Feb 2024
 16:48:30 +0000
Message-ID: <823fdfe2-7c8c-4440-bc6a-3896c542f0e4@intel.com>
Date: Tue, 20 Feb 2024 08:48:28 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
 <20240210220109.3179408-2-jesse.brandeburg@intel.com>
 <20240219091542.GS40273@kernel.org>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <20240219091542.GS40273@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0345.namprd04.prod.outlook.com
 (2603:10b6:303:8a::20) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SJ2PR11MB7574:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e9d1adf-4927-4256-679b-08dc3233c4a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CTfeXTU5ZiVr3vHVmLVl3oi9a89deSPWVEBnHs85hwMPgr0xFlWAehcH4qB+h0YB4n9B5t4ntQb5f8WqTND27aoGOGjLz4KXDtT+hqx/a3ir3GWLSjI/hQdUq9qxhp1YFduGtwoXK0ijnShy340ui3gQkAlJsR8ySqppFqTSMwuGs0m1b4YpaiNUQNPeYUgIy49vkZSx10z1Jwdqe5+m7hiGdkk/5fvwznjUACbG4kjfvJPzS+iQtFz6PT6xD4RGeCWmC2KAL6g96imSRaqcgljUTwF59Em+HY3Ri1xKpkz8Nwkgkv+dpjipFYEqrlBH0C8NKdGNE28e/LKy40FlRkynJkW6os4D4wcPYr7/uSYp0VKtOsJdXbcRTpSt8JASkva9l+NBGWpnjaBPXyuIznhJ9VyT9qqz4GFUOes4mKl0LJsehvTnCY6VBb2xwLRRwZNt6r4vCdlGw9TiARS08wF7qYKnG0OMbOt/XZ/NUbtdSmcRdxgd0jKs7ziLS2m19Vb6TmiYOKWB2D1tgZKfkKgOpHCPMOIuwbxhz+00z2Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mk9DeFU0MW5vL1c1bmpWd1J3bk1VTU1NUnViT2d4Vm5hbmtXNndyeHJ1M25n?=
 =?utf-8?B?OE5uUk1IRndIRTU5K0ttS1RheDErTEZkNG1UUlhkSzArUHRWcWRCYi9naElZ?=
 =?utf-8?B?dUt2bVZVM0pOcFZrRzgxR1hSbXdHYkJXQ0RGZWlmTGlUTU5ZSFZ2N25LOS90?=
 =?utf-8?B?VUpHUEZFY1lHT2lMM0dwYUgyVnNOMHpDamZ6RTQ1N0Fic0RvRzVIY0RoYzgr?=
 =?utf-8?B?NFFiNHVIUTQ0M0hMU0tBejNXZ0NRa1gyeU1aTHBtaGFRbVdNcmJ2MEVxYmlh?=
 =?utf-8?B?ekxsdFBXeDdFcGFTdFN5eEVPZll2a3RXVjJmUi9yN3lDS1hTVlJKTU1yVm9I?=
 =?utf-8?B?bjk5NUhTYjQrMkFXRkI5M3g2WUpEekk2NkFlZWxuRnFIY3lyeUZIN3hhNW94?=
 =?utf-8?B?TTlicFF6TUE4ZjhHNTVnMG4xY0hSY1JMWUJNdGZNK0NJNzJjaVBKYjRMOHB1?=
 =?utf-8?B?ZDVkaDhrL3B0SEtYbDdGaHdUMDJLamhFeWNldWt4R21LM1dUMGJGcnAyVzJ3?=
 =?utf-8?B?Ry9iTnlKbUJqOUN5cXhZQVZIdGkyZzdRa1dVSVhxaVdYVWFUbmtFdWNVRTRS?=
 =?utf-8?B?RThqcWdTbmZTNzJhVEFXRWdEM21rbTcramdQTnpEMnlLY1kwc0JURjlYVnAw?=
 =?utf-8?B?bklkeHZ5OER2VDUyUWllVGxIMG11TFdMd0dVakx1Y3A1QWRvZjdEWEN0a3lE?=
 =?utf-8?B?WVFhTEZZOGNxQkszNE5qaUtzYmNnOW80SFlSWTl0L25EaENFcENMSVg5TFg1?=
 =?utf-8?B?ZnRUTE9oZStka2VNWjM3V0VVOG8rVEJmYVdzS3N4R3VLakNEeWUzSjcrT0l4?=
 =?utf-8?B?cGJWY285U3F2RXZRajV1a2hSQUlNMUpBV1FibnEwMHE1U25YMzJReWlJSjVX?=
 =?utf-8?B?QWpNa2JYM2V2RXdqNzJLNy9XZ0YxN1pDV2FqMWc4TFhyekMxcnVoSElYSlph?=
 =?utf-8?B?a3Fqa1RtZTRkcGlSK2dBbUp0cUx1eWFoeE5RY2NtMUgzSHlKQTZHeTZkdDlQ?=
 =?utf-8?B?WXpaclZBQUMxbkQ5RitybHFBOFVmR25zdGExQ05ZQUpXRXhPM2hWUzE4NzVX?=
 =?utf-8?B?ZHg2ZUNWbnNJOWRBRXZJVXlTQm01WWUyUTNpK3p2L2xiWldkRytMUTBmRjRr?=
 =?utf-8?B?cmxlZGJ5OFc0Y2tYbThXMWRhTFVCWmNwQWRpTUVJUlkvOHVDWWdQZDlINkJs?=
 =?utf-8?B?TFNHdUxKZWZMeW5tYWdJSlZPdTFZWDVSL1JTUHJLNDgxZDg2Ymk1SDdjeXZp?=
 =?utf-8?B?ZmZlUld2dW0yY3VDSmlKdHRGZU9GaDNrYW9YdnFiVlE4cmUwRFRNNHJqU2J6?=
 =?utf-8?B?Vnl5YzJiNjVGRS9FOTY2cWQyQ0g4M1JnbTBrSW03RkxBT001dXI0ZjcrU284?=
 =?utf-8?B?ZjducFp6YW9SWHQyVWFUdEx2ZTZta204c0NGNTdHUzZ0V1VreDZEQUl3cHBj?=
 =?utf-8?B?WEFOU240ZnJIU3JqcUwrS2tuWXAvWjR6Rk45Q20rQUxPZGNrMENrRkxBU0JF?=
 =?utf-8?B?bEMxK1ZrelgzQTNYQWZkWVl1ZGlPTElzUUViVFUwYnY1bGRPdFhDblBubjVJ?=
 =?utf-8?B?VXA3NHRXR0ZVNCtCdWZrajZJMEFleW0wcndpQ0JnSmxxR3RxTlY2SW1vWEE0?=
 =?utf-8?B?aTJHUXlaMlhFV1V5dWpDQ3dVZnArM01uT2tKM3BxWG9XYWFrK0x5c3BYYzFh?=
 =?utf-8?B?MnlBOEF2cWlLT0pYaXdNcEtXclFjZVZxVkhFU2p6YkdOd0QvL2pkRm16K2Ny?=
 =?utf-8?B?TGNTWUp6UTl3bWM4T0FNeGs0ZkkvUGFBcEhBNEtyZkdwWFYwSmpMVktLbzRI?=
 =?utf-8?B?bi9zY1JoeVhOWWVsM003dkNHR1pYS3R3TzZiblVQdGFwSnJDRjB1S09XdnMr?=
 =?utf-8?B?ZEU4SitYVngrczV3SjJFMktNbHR1djFmWEVwWWNsamg2ZDZhUE0wR25sUkJ6?=
 =?utf-8?B?Y01kU3NYb1ZkZUdHVVlyQ0lldnBpMmk2K2QyRXloSUN5bzRDY0RZQU1DTkh2?=
 =?utf-8?B?MnkrZzliSFlieDRRdUNpU2ZqZTRJM0JxNGtkTEk3dkI3UXVJTnpHMDFVa0hE?=
 =?utf-8?B?ZEF3eWUvbHBnc05JRVEvRWZSaHJhYUp2ZUtXNDJ2ZzBhQXdxb0FwVFJ6aVFK?=
 =?utf-8?B?WUFyTHQ5WmVrUU85Qm1haXZBWUhpQlhqVFRhcytERGlMcS95UWxvSUllT3lY?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e9d1adf-4927-4256-679b-08dc3233c4a6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 16:48:30.4700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 02oNdJuOghn/Zu7GP+qFjBeoZ2NV0JHd1So4efQ1iXPwi11uPOAE13Hfb4Yo7QYp9gKDPF00HG+wrDfth8yt8iiRogo0qL4PJTYAvKxgjz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7574
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708447716; x=1739983716;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BIb77ijXhShpUaEwMcsnySsSevZtjBfuySvaiD3TU34=;
 b=BOu2mMtNGfFrmhN1XIA6zvtvTjlB11vNHXnfpLt5vJn9EWXdAqD8CZGQ
 kSZLmMgogpyfpfPA1AT0F6KDVsA2HcZBMONxgAnAKvBcwibqvyEgMgGWu
 EAHOm3bgMO23h/+TZomoMZN9jgq0h4XROQYCvjW4sabNjgQdw7/0vTf1W
 /LQ7AWyldnT/45S5LnHqlZNqmtNgqVUePkwsZUexzuDNgML7tJOaFJw55
 O/Bot2bXOv10IdcGcDNLNGuetKmF/FBSKn+bnVooUMrMUzaljq98+Wz1Y
 f+0rFXb+YqUD6bTx90LkwwWDzDqBfukaY/aChA/ElKE7Mx28NrFBVmtZ4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BOu2mMtN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: simplify pci ops
 declaration
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/19/2024 1:15 AM, Simon Horman wrote:
> On Sat, Feb 10, 2024 at 02:01:08PM -0800, Jesse Brandeburg wrote:
>> The igb driver was pre-declaring tons of functions just so that it could
>> have an early declaration of the pci_driver struct.
>>
>> Delete a bunch of the declarations and move the struct to the bottom of the
>> file, after all the functions are declared.
>>
>> Reviewed-by: Alan Brady <alan.brady@intel.com>
>> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

>> -	.probe    = igb_probe,
>> -	.remove   = igb_remove,
>> -#ifdef CONFIG_PM
>> -	.driver.pm = &igb_pm_ops,
>> -#endif
>> -	.shutdown = igb_shutdown,


>> +	.probe    = igb_probe,
>> +	.remove   = igb_remove,
>> +	.driver.pm = &igb_pm_ops,
> 
> Hi Jesse,
> 
> the line above causes a build failure if CONFIG_PM is not set.

Hi Simon, thanks!

Yeah I missed that, but do we care since patch 2/2 then fixes it?


