Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079B88748B8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 08:32:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BF824036A;
	Thu,  7 Mar 2024 07:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U2EIbbrHbw3S; Thu,  7 Mar 2024 07:32:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B4CC408CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709796739;
	bh=perWuT71+y7QPRgaQmVXp67FWzxus8lUzms3Vcfiuys=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=plMe1qyxMpZ2pAVqpJLlK8aRbrYaWRJMMHq1D1I31FVXKbDDykSMjpjh+DWx+ADiP
	 jtJGE6ZVOcSzbDGXsaRcJfPfQopJSrbXSM1NztTgn4rKE7vCd4QxCWhAVtWdirSC10
	 OJtkx/d6e3B4CqFgsKJg2ZRVA3cEE3dAvn07nNKq4PLkZCDCzSZXvUiWkLXKniNRkI
	 nuGKBX8dnFZn2SvhVv7kzhgw5unbLbNk3GDSfPOhVATJ3kichOk2y/9racIZcwSreA
	 IbllyXzH+CZj0YnF+9EUg1jmuMZKF3xaLzAmmEbJldnnRdJae3YJ2Zitc2mXnsA9ls
	 R5B+3bHo5U9Wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B4CC408CA;
	Thu,  7 Mar 2024 07:32:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D3801BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 07:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75C1482321
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 07:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P2ZkzoqCFk1H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 07:32:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5F1548231E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F1548231E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F1548231E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 07:32:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="15591157"
X-IronPort-AV: E=Sophos;i="6.06,210,1705392000"; d="scan'208";a="15591157"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 23:32:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,210,1705392000"; d="scan'208";a="10572116"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 23:32:14 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 23:32:12 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 23:32:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 23:32:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 23:32:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxZnGi/N5kSORf/7SSfhk0dvFR1HY7a67Pd6EgMClXrD7ga3jotDWO73w4Xxw7n4WH8aLCJQnxBSHMlpXyV59xdfD7dqSFPW127mqTVa6JcItE+MF+p0/uJGUR7W1i4GGZFbRSbYDrpXVuiaJhR/xxwGrjTxD9u3HJKOCUxqFwQSU3tibT+mP0Z0KQ/6ZSy+ctd3cfw2PHZmic4v3B3ibPcr4MkbZ8yoWqC5s+1odJf42B7qIq8EvNB4nqjlitGBNLHQAnCz6ULZafsxxD7Bj+9N3kjuwlQemzH5wCbXNq8rGIhjg+Knxl4SN+RjMezbFHSfsXn8Kq8/0gl7UmXzEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=perWuT71+y7QPRgaQmVXp67FWzxus8lUzms3Vcfiuys=;
 b=lcgar6G7kNQ/YrN10P7cJONYcPdwrBUbsUTkCWu1AQqp2YfPhz47g+t9G/I38Swl/cspVCB2uIqTDT5iTTsO9KO7eEbYHidxEuJLyOW3zDIoNo1B3GrtncKDp+ncGjLFJ276+CSP54jtdaP8RuYVfz30+kpNn23iCedSoy821kLSc2d0u/DgT3kqqiaJd8XMNGCG75GYXuRKh5HuKNmtXNZFxL6KsYvWhm70EJWBu6nZFfpRsslC09aFkVqFsP87dwOn6qYdbtTJMtizJ7pe4ZD8GOCZ9b3Z/YoSZ6gmm3o5u3JRNifRzRMTUklyHB2shyvZnGVv3CSsZ54g47kkFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB6218.namprd11.prod.outlook.com (2603:10b6:208:3ea::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Thu, 7 Mar
 2024 07:32:09 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.005; Thu, 7 Mar 2024
 07:32:09 +0000
Message-ID: <5f248615-7276-403e-8dc5-7db15de35128@intel.com>
Date: Thu, 7 Mar 2024 08:32:00 +0100
User-Agent: Mozilla Thunderbird
To: Kees Cook <keescook@chromium.org>
References: <20240306235128.it.933-kees@kernel.org>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240306235128.it.933-kees@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0248.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f5::14) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB6218:EE_
X-MS-Office365-Filtering-Correlation-Id: 3abb6fff-f8cb-465a-7273-08dc3e78b28a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hTMZzVlufCKpdo55Ea7aQ/c1+u6dbGVFeqzad2TaXvGxnyQ/D7mBu+Df9M2IJRVRn8OREpKzs34/VW6EM2qVn6crecoKDILossAGQLxccnlx3zeTQNO6uBIaRuGhapQwz84RXX0G9NAUM1cCVTIq9gpqkAQ67UXUJT8EUFwXPpgImEJz0vKKaJifoGcniMKbWq2EUpItWThy91zWHIOeSTjUSkW563OQR/BBspTrWPEsQnUkXx3XuH2vJZu64icjIA14am7Btxv4OsAfv5p/BRo0l5wFpfc4kVcbV74resM98GcIKa+q2euh5gE7XY16jxy60ErlCtRTALkWnYrUA1BKGDVRW+Jjv+diWjngpn/EboqO6OJFWwqxmHaNGwgYeV4vw5/HIhg6iW0u45p4myNsoACK/yH4f1lyfnUR21A0Qxd1v6QPzHJhwa0FERLFwkwenOjMZAoL+v47ZdQKSk0h0zG1MnMTsh9lyYQnhzTiOmDK2jdpK/PVMiMNUPeRNjnDg7FzRaIRvV3mHBanDgVo5zvrjn+VFV+Tv03vUaof1wJhi04A22oz1EV4EkeeGddGvoOyhfWnrsfk/q7VJrn3PgO2nVLL+31XITNvx74=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVlhRFgxQ2x5cGRETEZoKytsMktnSnhjeHg4K09KWEZISEFTclhZcHN4Uyts?=
 =?utf-8?B?WkFnR0VvSEVScmFXYXhQYWRqSlg5QWp2Uks2aVVJVnhrcFNPV2hCK2hyNm9q?=
 =?utf-8?B?V1kySHhnSkllQkhVekMzK3Bld09ad1BmVU9SdWdLZ2h1ZE11aXpsa3M1c211?=
 =?utf-8?B?Q2RuR3l6Vk1ScmRFMVBpcWlDd3hNQ294TlM0MjkyWXVDMi9yMDhCWUtyeDlv?=
 =?utf-8?B?T05Ea3dJcG5FbmU3dXVnTVdlKzVZd2wzYkZ0bjlsM1NSVUUwUUo1Vmc0Y0dv?=
 =?utf-8?B?S29hQWk4SFZMVTc5K3FCYjJIRVZBMVNzN0xmbzZsUkY5ZmllZ3dNZFNLOHRR?=
 =?utf-8?B?OHd3K2FWaDFFaDZ4NW5JVUZlOXFyS0dHSXprb3RIR0R1d0FIZzIrU0JialZZ?=
 =?utf-8?B?NW4wUEZveTRndWZEeU1ET0pSVXczVTUvWTJ2RERhcXRpRnFxOGIxRTlYS3hl?=
 =?utf-8?B?VEFOTmhPWE9QaDQ4UlZQVGQ3Q0pqSkdkUllENUtFS3RLZFJCYUVIUzgxRlNM?=
 =?utf-8?B?YXZIaVhySU13cFpNTFhTaXcvSTREWHk2VWhTdm5TMXJWMXc2NU5YWC9yVmNU?=
 =?utf-8?B?WHR3YmFpOCtBaWU0UzNwaVpUZEwyb3BaVVQ3S2JoYjlldHNEK3c3dHBNdDhx?=
 =?utf-8?B?dVJ6clJhdEJqcmZkbDNMRzV0NUxZUTNmdDliKzJOdXB1emVCYzdXNTVlcnVV?=
 =?utf-8?B?RlN4aEs5TzRMQTMxajBJdUs2dEZMbnRRdmw4QzhoN3YyK0R2RTBlRkNsa3kz?=
 =?utf-8?B?Z0piaFdNVEx4TWh1T3lMdHpDcE1JbFRta1BKTFZGaU1nWGhiamo5OG02ZHF1?=
 =?utf-8?B?R2JkTmFqM0xmc04wZHhxbVlUakNHa042SnhxZUN0UDcvSWI0bGdiejU1eTht?=
 =?utf-8?B?azZlV0JvR1lDcm16b1JGdENKbTdGNitnM01JOG5hT2ZnaEYwSit0bmdnUVBa?=
 =?utf-8?B?b3RhOU9DcFMzazJCSGdCRGcwcVR1WGVxa04wc1dYRnU4SUFjNGZvSFFTWWlG?=
 =?utf-8?B?VjdpZ1FWdXJKay96UGwwR2lBVkxnL0I0eGUyYmZVNWE3aTByM2JmV1BZbnpE?=
 =?utf-8?B?TENucDY0dlZFQ2x6M3dvQytJU0xrM3krZU9oZ1dwMDdRZ2V0YjZTUWNxN1Y4?=
 =?utf-8?B?SnNxbE9oUnozdExCanpLckErdDJXRGRuK2RTS3RudnhwQ0RlVUIrYnpOZnlN?=
 =?utf-8?B?ZGE3UVlVU2xjeDloY09DbWJLOWdKc2xYNHNTSFdGQm1EREZjWUszTU5rVjZh?=
 =?utf-8?B?VWlMcEk5ai9NQXpGZ2Z0V20rdEo0dURiWnhPWXZlZFQ2NjNrenFqbXpvdVA2?=
 =?utf-8?B?RjJiQlYzY0w2TlVDOFJvOHFPdkJGZ2tKWEV5b0xOVnc1a2JDQm52RjVEQ2ow?=
 =?utf-8?B?bGtGS2NER0JnRm5qbDJaTEJrVmVjd1N5cDRVdGlzTitKdmtzdStCRXd5V0NN?=
 =?utf-8?B?VTI4dEJCTkJYZUFjbjNoazJRYWZocEtxV09tUkRHM29ZRk8zcDhidkZTZFB5?=
 =?utf-8?B?L21DekcwT0hBZFpjdHdmczRKc296d1BETFNiZTlFZCs4MFZGdnZXcjNNRU5R?=
 =?utf-8?B?cGpTcjBERGI5VngvcU9ROHR1NjBxcGZtY0NkSDAyN2RyNUZMNkNLWVA3bXhR?=
 =?utf-8?B?d2IxRnh1bHVxbmhzYmV6Q05CSHJBWkJ2NXZtNFU2MVB5dmU5ZjRLSnp3VlJG?=
 =?utf-8?B?ck9EL21aTHd6ZXF2VkFBZTJxMTVMaEtnTENhdTVhSDNva2x6RjNiN2M2S3Y3?=
 =?utf-8?B?NTFvQ0UzWXFrVUVUYXJYV2o1Y1lnRW82K2ZLME93UXBwWVNITmgyOWEwZ0w1?=
 =?utf-8?B?K0FraUx4NlRWVksxd1FsZG9YOXJ4UmliYllJWHBEMEdQNzF1ZW9aSjU4ZEFN?=
 =?utf-8?B?MmRpcXdpZFpsK3dDeEx6azA0REV3NkIvOWhiSE9FdTcvUzVGbUY3NUQzS1VS?=
 =?utf-8?B?bkdTejBMczM0alBwRW5wNnpBdkFPL3RZYUxHNGJwNW40eWRHT2J0WmkyeVlu?=
 =?utf-8?B?ODdxQ2R6ZkY4UEpKa0xLWDhaVWhvcXdxTUw5eDlLTmNBWUJvaEhrZ0s5Z0NZ?=
 =?utf-8?B?MlVTL3IwK3ZXa3YzSkljREZwNmNqNDQvVVNhanJoUlNpRUlMdjNUMW1CbjNU?=
 =?utf-8?B?WkxGUUE2Q0FlclBZMlU4ZWduNkxkNVRIY3Z3cXJPQm9sWUhyV2VubllzOUlU?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3abb6fff-f8cb-465a-7273-08dc3e78b28a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 07:32:09.3287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hVP/zN3MTfuUwu+qQMG+OGWOK0UDSwMsL4OP/mDqAjr49HsggAnsFbLDqwk8gsWr4vimjB/IMNH8wY4c/kQEwR0cBHnDBXF8U2HnKy/jxHo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6218
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709796735; x=1741332735;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uH/2FSOvwXvhzKXCSDSrRXqBoGKDSecyWoBX8JduFec=;
 b=PEGCdn2cQUc2tP4O1pa2cTBlfMXALPtxYq+k00UX26yOcQK7dkJCG7pX
 hUs86QzWr34tDRS4c5NhHHdw6cUaCy4YYxjJENSStDq/rhjnNAHWhrbL4
 KUIynrtoK1fQlwuLkN/fIOWsVOwtEWVs+Dgd0za/Vo5Vxm2nGDRKakgQc
 L/OhP9B3/qY/M5qu84L/1lAiL2nXljx5T5zOSq7YjyRPDA+OTSLDeEMMV
 PwSPycHKYDUM4JJrrxY7yYuV3mCYy2XoEzMfT58TUBjQT5MxhjAytnD2L
 rQIKNgGGWckPmGrpMMbilvTnevfW4fdYZqM7vG2pQHN8lKY/B2HxxiTT2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PEGCdn2c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] overflow: Change DEFINE_FLEX to
 take __counted_by member
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
Cc: intel-wired-lan@lists.osuosl.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/7/24 00:51, Kees Cook wrote:
> The norm should be flexible array structures with __counted_by
> annotations, so DEFINE_FLEX() is updated to expect that. Rename
> the non-annotated version to DEFINE_RAW_FLEX(), and update the
> few existing users.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Cc: linux-hardening@vger.kernel.org
>   v2: swap member/counter args
>   v1: https://lore.kernel.org/lkml/20240306010746.work.678-kees@kernel.org/
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c |  4 +--
>   drivers/net/ethernet/intel/ice/ice_ddp.c    |  8 +++---
>   drivers/net/ethernet/intel/ice/ice_lag.c    |  6 ++---
>   drivers/net/ethernet/intel/ice/ice_lib.c    |  4 +--
>   drivers/net/ethernet/intel/ice/ice_sched.c  |  4 +--
>   drivers/net/ethernet/intel/ice/ice_switch.c | 10 ++++----
>   drivers/net/ethernet/intel/ice/ice_xsk.c    |  2 +-
>   include/linux/overflow.h                    | 27 +++++++++++++++++----
>   lib/overflow_kunit.c                        | 19 +++++++++++++++
>   9 files changed, 60 insertions(+), 24 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
