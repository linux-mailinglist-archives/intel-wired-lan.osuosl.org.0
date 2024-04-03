Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421F3897014
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8812141713;
	Wed,  3 Apr 2024 13:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kP4B7_Enrrj1; Wed,  3 Apr 2024 13:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0808B4172A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712150344;
	bh=v2C/+UGrs5cviYpqReX31fzO0UqRLmok4uSGDpQTjZo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JAPJ5KYpwqt1HaY9BFeSzNGRZo5c3HsuTiix27TTxbQFXqgQyX0p/pDwIZ9U+KMen
	 98nK9+IGram6v2tnJf7sLrzAfEz4KAbKDYIybVK+fs+PBPPmt0VbwfpuPJrm8iD+y+
	 NUIneBehy8ytAcJXmQRYTR2h2DOg7dGdqsdKWjTdrtkdhsWRBHWQucwAg+JbRP1nfu
	 biUR1hDpL5ZMVNY1uOVXPVsBfFiL7Z/M4CkhoFi4vuq4hidFvRA8Ws4aLF6kQZ7P0d
	 /vch8UODZVUFwki3k5lSgZ2beOA3O/VikfKCw8t2KjBgDnqCSfjNWmW3p5xOeir8je
	 ds/uhUj5qiq3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0808B4172A;
	Wed,  3 Apr 2024 13:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B46B1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E747160E7A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:19:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EzEAROGI4_So for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:18:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8C05F6063C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C05F6063C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C05F6063C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:18:58 +0000 (UTC)
X-CSE-ConnectionGUID: IVz5n8nqQx2/LMEqeXvPhw==
X-CSE-MsgGUID: BFnBWn22RJ63/UWUhrMFaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="24833890"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24833890"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:18:54 -0700
X-CSE-ConnectionGUID: G/hNiWuVTuqledtB8HlWkg==
X-CSE-MsgGUID: H24USYPrT0y9e34UgScm9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18393947"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 06:18:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 06:18:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 06:18:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 06:18:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oA0yb4QxuzBcpOo8ViPbZPRhGfNb0ngyKcQst4gjhy/3nczaQj3oOd2skMQAHywDlboY4tV17k9gV3G8F3tmoK98uXXMGHz6/34Qv7RSRiThQzGxjLbbH7hyCVmcutVgJGOM9EtVn7HQQe7dZCp4YNYguJUejdRpwh5DqwJs15LbnM6W0Jpvtq3xrwFtDBZC5GmSfpTeHkode4JyVxQClpkDfKlJOYDDOGGn10Kf8fiZ9dR9t+9Jw8NAJ7TgpgAQRVn7zT+OC2QD7K8AkjlPL9ScW366v2oerZQEDHJR2+dyxDb/x1XWuG2X0NsfpxCZx8NHqycYgVgkgfRnX3iPjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2C/+UGrs5cviYpqReX31fzO0UqRLmok4uSGDpQTjZo=;
 b=GSxZIOxKjvPeJMLe32SZwrnqO937QnWluus3s151TB+Tgy6y7E/FBJMfYfgR/Tehrgh39K3625BVUKwVZSBFvPcbbhu5vkRb/wlrbhkiUzkwdchgUMKzrlMDNVhISxWt0hilJIZLortP7niDzfhePrvSbEzhXm4ORtq7sgFG4bC+efciqDoH6JFIpVT6ewHmPKtFRnsgw7zTQzTnQJZHL9c7pLQmz+3xhI96hoj7naxxiUUQcos56cE7a/6I/BLQajzrELRhyNdjvu/IO9UmkHjBA+jcKHQrJXEF92RcvJAJ5m7oRoRvkQLkOG+UCIfwmeMLiV/9q2ZkdldsrHJc6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MW6PR11MB8366.namprd11.prod.outlook.com (2603:10b6:303:24c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 3 Apr
 2024 13:18:50 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 13:18:50 +0000
Message-ID: <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
Date: Wed, 3 Apr 2024 15:18:44 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0011.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::23) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|MW6PR11MB8366:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0zUPHtPtixLSySU6We475w7IBxxzJNKnbGRrv0TuOWNjEvWByFHVNMmnLf95S66p7Lcb1s/9dQu+JBX/WzFa1SoB4xeQ5VdhKGWyGXuInY80BqzHFMG5F2le0JFiTPaZMeFSOKkvLb5jNKuJu7gmJ8Zs+c0VUSO1QZ92ZCifH+6IR+onJTxkOOY8IhEBjY9MteUwfn/CCDA/6IZ04+YCwzAq/9NvTtegQ5GHamlgX1VTjphFeZjyddRXkv2zaq98BPlIID8URqMjTuwWwuMUoU3r4AZ2vQtfG+9omCvEu0MXgUbfeLMcdKEqVFTnIJc0EUUYzSvQyQ3zc7i9SmEUnJu8gddT0kVr//CsS2eUTxV4hLsn0VAAIVmnMyfHf5jjjjr7rjn/zllXUAeAdm6tTgTA0VJOotksDJRXwTwqMDCbhMmwPlaf1JzzNKTOYQN/i5ehTbEWcIFoOHj0KSjpJjLnNQevbgvyGglZTShf0y4TidYR6/yXre5fXPM407//lO08f5YNXFhdwGUiPdfoktSwsVviYzWtodiRduDr6mjEgHMLl6O918XsuM65ad/+ss3DdAEzcfdIptPT6ohlTzFJaioXtHF83X406nPkX+s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUJ6UmhMVmhIY2N6d0djejZyY216WmZadCtWRmpzQUpoRHVOMmRNLzhlTXJZ?=
 =?utf-8?B?WTBSSWoxRXk3K0VKalNiTUxzTkhUKy81VGoyclMvWXIvYXZaVXF4SGRoOHhh?=
 =?utf-8?B?QW9FbjRtMWhFWlExanlnUkdRYnhFNVY0T2ZTRTc2dVRqdU9HY1U1STlyTXFo?=
 =?utf-8?B?azlZZlBUM2dGakpwVW03WGt0bEFRZzB3TDNzS0k1QmFOUTd1VkovWU1iZTJG?=
 =?utf-8?B?U05GZk8xaDdPS2lBUGVtZWFJSnEyS2hVaTFQdDJ0REdqcVUxODVpQkZ1Ui9K?=
 =?utf-8?B?SFAxNjZNWGNBK3lMQTU2WTNhVG5WT3dkZHExZWlUUFdVYWlpSXExVVQzMUZy?=
 =?utf-8?B?bUtGNGV4WjNNT2gxNURhMzhpSk1obzFHUnhXRmwxNWFIN2NKQlFJM1M0MDFF?=
 =?utf-8?B?a00wTUMwMDNLMEw1Znh4aDRGSUVkS0VCOWpkQVdHVmZCb0I4cmxUOE9qKytu?=
 =?utf-8?B?MzlQeUYxS3l2VGZ0L2ZuUEZrSDJoVnk1ZEpaYmFKaThCQm9PVjQ1bCtwWnY3?=
 =?utf-8?B?ZHJYdE1vdUpqS2Zac01kZENLZkNsOWMwQkFNRnNwMDNMZEJ5YUNSTTRRVkJy?=
 =?utf-8?B?SHF0d0xsemg3aTlOaE41UzFRZ1YrQjdVdk94UFAyQ1RTWEdpZktUS2JCU1hB?=
 =?utf-8?B?SGJoa2wvcGdUUEVSY1NTSVNkYXNBeUhMZGwvVEJhbVgrbTh4UkQ3STlNZVBF?=
 =?utf-8?B?a1NIbmRmeE5INmxLT3ZpZ1NaRmhRNkMzdzBhdGFsallYdkY0ZVptUDkxVER5?=
 =?utf-8?B?VGJwSDBEaW1MWWJFWUhYaFRyVzBkSFhrWmhjY1pKQVV2WlR6T1JZQ1RvNCtZ?=
 =?utf-8?B?OUc0bmV0Mm1RV3FMTFJ0V2xWdDUyMVVqMzFQZWJTRWZTYUNjc1ZKV0dJaXdV?=
 =?utf-8?B?ZkQwRkhTeVJnZ3BTdnBKcW9nTWV1elZFODJuRCtiWDAxRVFlM2k4K1A3L0xo?=
 =?utf-8?B?RUZaS1p1bEpHb2FxRVZabm5NYksrOVM1RnN3YVJ4WEQ0ZWdIL0lVWHY0RTdM?=
 =?utf-8?B?eUNpOEpYZTVvL3NJdzhLMkVyRlVlV002YzhnK1pJbWo4Wm5odHliZE4yTnZB?=
 =?utf-8?B?cDQwUHFORFJLMFRUb1g4RE51encrY2h0Z3ZqeE12dDd1MXliQy91TGdVUy90?=
 =?utf-8?B?SU5XMEkxNDZ2eWdiazZTOE9hT2JuOGxGcHdob2dZa3ppNnJlTVpaV2M0NGhQ?=
 =?utf-8?B?QjdNWGhrZDlILzlEaEFyTmtRWEdJRi9DcmM5YmphYmlvMDJCaDdjZC91ZmNn?=
 =?utf-8?B?M24xT1pFbHk0cWp4TVNVeHV2MWVCZFowdWxDNTdiT05xT1ZQQ1FPZGE5NXBQ?=
 =?utf-8?B?OVdBZWN5c2ZPMFJqbENieEVwY3I1aG5kdVQ1OE50d3IrNEtJVEpwRWNFQWxV?=
 =?utf-8?B?dFZwRVhnd1hmNWNGZTdpbGNmdVM1dlg1SWVFVG8rWlF5ZzhpS3dkcndhbU1N?=
 =?utf-8?B?YmE1SHJpb1grbnF6K1I1OEI2R2xObDcrUVErZk05QVp6L0pPNHZkNTMxcG1x?=
 =?utf-8?B?WEp6Y1J2TCtwTHB6V2E0N0swT201anhzNFR6UTZNQjZJNE13TytNTDlvZnAr?=
 =?utf-8?B?N3N2KzMwZjFsZHNYT04wYUhMQ1BsZWRpL201cHNxR1RJZ3c3ZDlYaE55SG1V?=
 =?utf-8?B?WmVYYUdMTlpFNjROZFVwTnk4Nm9KN0gyTkpzM1lUUVk4RG8vci9WY2ptQUZp?=
 =?utf-8?B?dzRFMU9iNWZaUVllb0h4MDhvcUMyQnc4QnRMUnMwcllIcDFuNHg3eWphRG8w?=
 =?utf-8?B?a0RjODB4NlJ2VkVZNTQ5aWM3WHBhQVJoQ2czWUZVbjVQZ3F2S0FiY01PRlpq?=
 =?utf-8?B?TkFsNi9Ed0dzNUg1SXVCQUJUVTlZeXJuSlZWZ00vaGZwN2pHeFNlb2VMbXZD?=
 =?utf-8?B?SUpMRUNVNDY1Vmt1Z2J2NTVHd1ZxM0U1RSsvK3NCTHZPN3ZrcTcyeUQ3YWEz?=
 =?utf-8?B?Tlk0YjNPbnFEMFNUcUlZRFNqUW02Uis3dW43Zit3Y0M3SlBwNW1oRUlSMjYz?=
 =?utf-8?B?ZXh2ZllpMlRTWStmc2FUQkVtMGF0dmp3SFlScFZiN3YvMU9ER0RJSDdaRm5M?=
 =?utf-8?B?dzhqdmNYdGVmL09pM1dDY3FKd0RYYWJUU2RTa3Z4OW53eXVzYmF0aFRYR243?=
 =?utf-8?B?WEo1Q0h0YlM5TXZIeEduVmNTSTRVVkIrS2tHMVdOQzhCc1gyZ2kyeVFCWFFW?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc035e87-8ba3-4473-436a-08dc53e099c4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 13:18:50.0732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y5Iwac/4wUd3BGRgXJUYVqPg0GbhQrgjaoQwxq1CxB0idlO0bI8o0fmo+H/h+tWwWXR0nwTsxzLgeWMNPcbv0EIjGXxsQUscwB1a+E9h6rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8366
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150339; x=1743686339;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bDhopsS3uhH+PdjliQxnLc+wPm0/ZAdJlbbgysemq54=;
 b=jFQjMyaYIFcYHyXOJIWv/QzxUhG52kVEk01U+nXb8RtrIL+Fys3egxSc
 tagTIbMGZrPcdr3OTDFB5UsrTdDLirHl5TzXxUp2zq2XHSXb/cf9tBmbp
 m/H3W3wOVn2s37dP+ZGOhYLgfDdblvxuNu5cC+m2+iCGb3P+4pnL/8G7T
 kR+UOvv1TFldaQVWiiTEFxxeywTH7j+TJeZ/K6zUpYhygBRZKoA1Vn6x8
 LHOHA0SI8cu4wE+AOoEu37hh8vgRN4NtTR3hRDnP2l9gaxLAcy6G5byOl
 pcaxbbyqA1QC0LopUFLM45DuRYHy3G2m4Nepupf+l+1c2bELYUIypKGH9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jFQjMyaY
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 02.04.2024 16:46, Andrew Lunn wrote:
> On Tue, Apr 02, 2024 at 01:38:59PM +0200, Wojciech Drewek wrote:
>>
>>
>> On 30.03.2024 22:57, Andrew Lunn wrote:
>>> On Fri, Mar 29, 2024 at 10:23:18AM +0100, Wojciech Drewek wrote:
>>>> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
>>>> module implementation to support new attributes that will allow user
>>>> to change maximum power. Rename structures and functions to be more
>>>> generic. Introduce an example of the new API in ice driver.
>>>>
>>>> Ethtool examples:
>>>> $ ethtool --show-module enp1s0f0np0
>>>> Module parameters for enp1s0f0np0:
>>>> power-min-allowed: 1000 mW
>>>> power-max-allowed: 3000 mW
>>>> power-max-set: 1500 mW
>>>>
>>>> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
>>>
>>> We have had a device tree property for a long time:
>>>
>>>   maximum-power-milliwatt:
>>>     minimum: 1000
>>>     default: 1000
>>>     description:
>>>       Maximum module power consumption Specifies the maximum power consumption
>>>       allowable by a module in the slot, in milli-Watts. Presently, modules can
>>>       be up to 1W, 1.5W or 2W.
>>>
>>> Could you flip the name around to be consistent with DT?
>>
>> Yea, I'm open to any name suggestion although I don't like the unit in the parameter name :) 
> 
> That is a DT thing. Helps make the units of an ABI obvious. However,
> milliwatts is pretty standard with the kernel of user APIs, e.g. all
> hwmon calls use milliwatts.
> 
>>>> minimum-power-allowed: 1000 mW
>>>> maximum-power-allowed: 3000 mW
>>>> maximum-power-set: 1500 mW
>>>
>>> Also, what does minimum-power-allowed actually tell us? Do you imagine
>>> it will ever be below 1W because of bad board design? Do you have a
>>> bad board design which does not allow 1W?
>>
>> Yes. in case of QSFP we don't support 1W, 1.5W is the minimum.
> 
> So if i plug in a 1W QSFP device, it will let the magic smoke out
> because it is force fed 1.5W?
> 
> Looking at
> https://www.optcore.net/wp-content/uploads/2017/04/QSFP-MSA.pdf table
> 7 it indicates different power budget classifications. Power level 1
> is a Maximum power of 1.5W. So does your parameter represent this?  It
> is the minimum maximum power? And your other parameter is the maximum
> maximum power?

Exactly as you described, minimum-power-allowed is in fact minimum value
which maximum-power-set can be set to (so minimum maximum). the other
parameter is maximim maximum.

> 
> I agree with Jakub here, there needs to be documentation added
> explaining in detail what these parameters mean, and ideally,
> references to the specification.

I completely agree, I'll include documentation in the next version.
I see now that those parameters might look confusing, minimum-power-allowed
is not true minimum in fact. We can try to came up with better names
but it might get silly (minimum-maximum-power) XD.

> 
> Does
> 
> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
> 
> actually talk to the SFP module and tell it the maximum power it can
> consume. So in this case, it is not the cage, but the module?

It does not work that way in ice example.

> 
> Or is it talking to some entity which is managing the overall power
> consumption of a number of cages, and asking it to allocate a maximum
> of 4W to this cage. It might return an error message saying there is
> no power budget left?

That's right, we talk to firmware to set those restrictions.
In the ice implementation, the driver is responsible for checking if the
overall board budget is not exceeded.

> 
> Or is it doing both?
> 
> Sorry to be picky, but at some point, somebody is going to want to
> implement this in the Linux SFP driver, and we want a consistent
> implementation cross different implementations.

No problem, I see that your points are totally valid.

> 
> 	Andrew
