Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C25F8744A5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 00:44:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FBE081E7C;
	Wed,  6 Mar 2024 23:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lu8D3p2S9J5E; Wed,  6 Mar 2024 23:44:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 503DE820C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709768663;
	bh=f1qFCAwVbiscrhouwZvzrrlw+5TfdQWUkGuyZHdSCc4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=781Xyk4SqZQVPLMyx4okJ/A/53MzOM2a+irBDZDS3Gc+FtPOiZjAW+Slk/Sf4WpWH
	 78Fi/0pnKCrH70e1EU/A3Nxt1mcuxQiOKaPTVpFDIUasMx0l2uM8ZR5dLveyCqxn8l
	 iCUo80MhEwom/wEXrms3Zhy14LtKnhBGivDTblHUpq5RgU5IiIXr39N/jIVE/AJMhy
	 1I65rrlLDY5DHcYjDbFhCUdvaM9uL5mdQ0coNuAobUZxVFk/jCb8ri1jm+9ZsnfSdV
	 xidRpa7a8DG4Wff4I7uIY180QbHO0U8ph0TbGrT67Z+uZ2EZALVKvbOG65PhCOjJ3+
	 QG2aSJIAL5/0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 503DE820C4;
	Wed,  6 Mar 2024 23:44:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80D3B1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C59340385
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:44:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0SuxIovIuvl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 23:44:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CC081400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC081400D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC081400D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:44:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4582186"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="4582186"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 15:44:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="14480892"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 15:44:18 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 15:44:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 15:44:17 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 15:44:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VTUmicA/cwyd0qMchsDzlTgRqGwKcQr+doyNN/vhE7SZmjR8w1lHmm4fQQL9sXzy7kOUH6WtjJ1Y5sh3vveBAbuok1/ah3FE+M9aYhu09CUg+a7pGf5ZEzLC45iC0QKoWEG4r0QNLryS8BYAvmmmUrQB6EUgayBJkhsyMFNNspt+VfVhfvKMAA+Qk3atvXY6IWHP35jkbam0X+bIdTgm9y7quMvgLDPXGREp1A4/TdVyrskxDZ96GJOG36y3ouSIkBtX9MFLUDD01v1PNHnNhCkq5U+HuBrBkBdxlfbJEhySS5dD2MpE407KORCr2aEm8DqbG8U7KGiBcZX+wXyzjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f1qFCAwVbiscrhouwZvzrrlw+5TfdQWUkGuyZHdSCc4=;
 b=Q1fNPk5pqt9ReRybevk3nWXF4Iq7vhuOhG2aCTCwEIlMA/C4XPtavz8gEORMReB+R2keDlLqxoa+cWtk93f9xKDLzlFzJnk+1rkVBfyA0YfQrJe+TR0l7pwuyfWVbWsw3onFikl5fPQU6TQ7bLE+znByMA4aKLUvGKjmhsA/0W+kYhiJmMXMGVFacGw85MBsVTGp0ChhHtpO01B9sAQZnmC7cdHfy9QwyLb1No3pmyMryn1PFYSpbbZEy+A50od+pwLzsj3o/Rw4ecG9cjLFGzLPXVgO4ayTFydtOHWF09Vu8Qil7CfrqmJRjcIxTqyN5ZIuGiLQSBgtoaXpTRSEJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ1PR11MB6179.namprd11.prod.outlook.com (2603:10b6:a03:45a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 23:44:15 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 23:44:15 +0000
Message-ID: <713a5e32-d998-4510-a82f-cc3dc51c725c@intel.com>
Date: Wed, 6 Mar 2024 15:44:11 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <javi.merino@kernel.org>, <netdev@vger.kernel.org>
References: <20240301182810.9808-1-javi.merino@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240301182810.9808-1-javi.merino@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0199.namprd03.prod.outlook.com
 (2603:10b6:303:b8::24) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ1PR11MB6179:EE_
X-MS-Office365-Filtering-Correlation-Id: c4c31335-33c5-490b-f2d0-08dc3e3754e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g8KKvb50doDaSVHIgCnGf1ECRx/gt+H5dX5n0pq34XqSzFjuxn0nM7pqTWerht2g4ujo6dUmacy78Isgan60dD+oW8kFVzTgE2zXZJHyw/geS/rS7OZ+PAb2qjdp5n9zpXzp61xykDWhFJVofA3KIwwEO8fUVToHBtQIV/5h0jXrBmbvxfIGVWiRJJ+dPZ2JZDuSpNmd55hsJd6cpwOV9FmBcaGR13oso66soOd4zxvzVWc6q4CB/FzsrWsFxgYeohYIeT9f69tkqz8bF+aZMbhSWGR3qX0+gy4vq8Fwr8PE5WaM7hvRQKXCOw9S8Oa9pmtlad9Smkr84Ge+8ejelZTgym8q/nfd1+4boZEDDzeKHdMowKP2c2tZjQGnpGC4wVIy2BWZuturIMvvVvDY21aesr34MoQoGi3xPHaFH+46nFFnDuQ2dK6oOiT049yDb3NSPk4EkA6YD8e8rAJANPNpHWeCaIlGS4+YBdbocl2gvyILcsJuKxwWzLBzm4Jgg+33BN2a/QeDYxZ69I0JIfVDE/k6e2n/qTwzzPJgmUPmOZFrDA8b0lUA2VQkNUt+MyGNvZ0RdrgZtj5Zk44q7k90/smVypZy/nsVAW5MlRNzPJGCCaDjUSidrNW8nG4TtmJWwxl7JjwnC0IjIxgoiFg3/DM+pTyIMRWR4e5dwQI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVZKZmpFZ0xpTUVCNjhXL0hpcXBrbTFhL3ZHOWYwbW9zSFpjVzM2ekNlUS9l?=
 =?utf-8?B?dnozdit6aXNnQUdHRlRrOEdheHNBSHZTa1ltTFZsNlY2bUQ0OUpTT2V3V0Zk?=
 =?utf-8?B?MjNMeExIQ0QyZnZSaHYzZGlzYlNBOVBoYzlZUHVQaFlRYldiMm1wb2xlYXFJ?=
 =?utf-8?B?L0RTazI0VVpYZU52NDZoL2tadEtEdGJIenc3cFJQU1hqUXpoVjJvWVArQ3I1?=
 =?utf-8?B?OCsyNFRuWjR3UUhMK0FSaWoxdksvenROVUk3M1o0VzJ1K1VLZkx3Z1JzamFn?=
 =?utf-8?B?SDBSNEY1bUNRTE9hZFNoY1NOcXpiUmdvYzY1YUtpM0hhUGVuNGYvZEhMWnYx?=
 =?utf-8?B?N1hTTlp5ZUdYelRTelU0WHp6TmRRUXBwaGZKZTZ6NThaM0pQdFlmeFpPWXlY?=
 =?utf-8?B?aGQ3cWZvNzRqSVpjeTdkU2wybnNVUXA2TnBSZFk2U1ViYi9VaEpnZjhMd3pP?=
 =?utf-8?B?a3NFQy81aGtCWksrNmhQdWJmYUJVL0RsVFBUMGJ5NzhveWlEWGdwT1V4aFNT?=
 =?utf-8?B?UjRJcElOK0lRN1pTampyRFpTaEpaTGZjOWFLQ3Y3Q2dOY0VHKzB1dXZVaWU1?=
 =?utf-8?B?WXkzcVRiS05IN1RJbFpESkNEYnJya0xiSWJ3WXY1OE9SeDNuQjBYWHo1TmFS?=
 =?utf-8?B?L3JjaHRBQlRMSExqdVFrTnh4VmlkaUdISjRPMnUwc0lVNERUdVR3SkVmSUtS?=
 =?utf-8?B?L2g2SEFmemtoMXA5SEhHS1MzMXVpNEFzeWo4TllqZE8rL0l1MVRVK2t3VTF3?=
 =?utf-8?B?akpPeWgyYTlkTTZsdUtUMVM1NnpLTFE3bmlEb0NORS9kYk9PR1pKSGJoam9v?=
 =?utf-8?B?dE1EdDUwQndHNHRBTW9SS294TW5OQ290ZTlUUzZBQ3drcWNUUm93Lzk4NUNB?=
 =?utf-8?B?amxHZEl4NkMvRE44VVFkV2ZZWVMwNjBMMkpmRVZYbVYrcHo5cVI4TTZTamhG?=
 =?utf-8?B?MkhqMHpSR0NlM2VET0p6RWwwWjh3eUs2Mk42V3hZZFpxNGVQa21xd1N4Z1E5?=
 =?utf-8?B?bG9iN0ZFMnIrOS9xd2xBNXprU3R6TjBlQkwwQVJFMndacHhrdDdCdmZ4OUpt?=
 =?utf-8?B?ZDc1c0wveTFseDM2MkFTU25nVGNoajRLVnlNc3FxQmNwR0ZDZzJCcTR5eW1j?=
 =?utf-8?B?NjJzZmwzNmtFWHFPYnA3QXlibG41TndhZXNBWjJwaHFTazZUUTZHMEppSFF5?=
 =?utf-8?B?QmplUlpHSnMwSjJYdE1xMEJ6TXlXVjBEYVhEOHNUaW1rYVlhZjUvWk5JYkl1?=
 =?utf-8?B?R2piQ1JIV21WWjdKVzZoL2VNTXBKbUFXOGFjbzMzWkVtNEtnYXZRN1J6U09N?=
 =?utf-8?B?OWU4MnVYZ2ZFU1B6YWI3K2dwSzN1L0RZRGdqdGF1UHZ3aEQzcm0zdjI5TUU5?=
 =?utf-8?B?SGtRSCtaZEdTb0ZtN1FIUC83MnFQUzBaNzhCdFVMRit2TjdYVVE0YjhiY2Nl?=
 =?utf-8?B?YnZKNCsxbnNCdlE1SkVsN1lkOEVtNjVtNUlaeWUyeTlUdzl2MWlCa1N5YTkw?=
 =?utf-8?B?aHcrc1R1QU1RVzRHR2RRVkZUVWZWT0xVbjFhSzZPQTlOczdFSGdLM1ZFdXlk?=
 =?utf-8?B?SEJoUmQzQnBNL1hXays1WjBHMncybHl1elhLUkNHbWR3Q2x1bTh4aDhRRjI4?=
 =?utf-8?B?U0hmblV4dWdxSm4wSkJqa2hPbldzd0pTaWYxanoyM3BIdEVFdHFNcUV1eExR?=
 =?utf-8?B?aXBHSURJQTF0ZExZTHY2RGRZUEhJcFc2MmRBL2thYk90bVBoanY1ZlpzeEl5?=
 =?utf-8?B?dkdaeGdBVUdwL1lERnBpSzNocVJZR2Erb2M5UzhUWHBkYkxPZGNGUnZFeFV1?=
 =?utf-8?B?NEZuTjJDeDNhRFNGZm1OdlZETFlwVk4zNG9KTVpSb0ZaVWc2RWxwR3pnSE5Y?=
 =?utf-8?B?K3hDUGRuOEx2bXBNWXFqakY0R2xzNjdhQXhJOXhzek5Cd3RxZklFNlpKMHNC?=
 =?utf-8?B?VDZxQUJoNlNqYmpiR1V3WWYxVXpyM3hESzlVQWZtY1ZLU1p5U1pSRFVYbWV3?=
 =?utf-8?B?ZHRXYklpUWlRK1pHampRd1NtY01PYTVJWUxPSTFiSzBLN29ENlFTek80OC9o?=
 =?utf-8?B?Um1yMUg5eGxpeGlPM0ZQUTZtVGNSQTY0a1hPdTV1T2xkS203R2J3WjV3YmxV?=
 =?utf-8?B?dnA1U3BmQ0RzRS8zcWhDOVlOQk5QSWdpY05xcVduemx0bXJEQ3B5Z2JOTisz?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c31335-33c5-490b-f2d0-08dc3e3754e1
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 23:44:15.0088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NVbqlHL4Qv5Zfcvrp6Zoo3Xq9RhZJ9cwRWs/sJvwxFC8o7PWUefaN7GPOxhHQ0DfM1DLhIE4ic5SUgXz4fs1/8gTP2OZKYw1TT7LGgpLotk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6179
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709768659; x=1741304659;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QKLfosTpeiKmzWprSLJDyGXzEuD5KpQDVTcmww4TUEI=;
 b=TRe5lzz0zFCjfP8/uy3ewlN5CaL88ib9oJAx1tfcR1JLHkck2uA4lt53
 BRan2YanyZuaT7iBQBZWMe8xq4IIz2zimZn4Ide/2DWI8CIejT0BQ4CPn
 VLBzSY1MMCA7GupZZZphANP5M9y93Qf+HKMsl4r/rWF762K2DKSRGzn5D
 xAwZG3NB+6BqofeE+Dh/SLUjkNWY4FjbXxfYIY7Fo3e9rRU84uCaYWORp
 DqO9XU6olUBeC9c3+MDlu0LSQmp8V3tFsH4VBlbE/1/xf4y45MbTyaO3b
 Bek3DI46t15tvYTXX53sBVQ5Tih81dYBd/9nzNv2SUczOSeBfLAdnccTJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TRe5lzz0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix enabling SR-IOV with Xen
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
Cc: Ross Lagerwall <ross.lagerwall@citrix.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/1/2024 10:28 AM, javi.merino@kernel.org wrote:
> From: Ross Lagerwall <ross.lagerwall@citrix.com>
>
> I'm unsure about the error path if `pci_enable_sriov()` fails.  Do we
> have to undo what `ice_start_vfs()` has started?  I can see that
> `ice_start_vfs()` has a teardown at the end, so maybe we need the same
> code if `pci_enable_sriov()` fails?

Yes, we should teardown the ice_start_vfs() work if pci_enable_sriov() 
fails.

Thanks,
Tony
