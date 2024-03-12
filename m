Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCD3879E31
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 23:08:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BE2C40A61;
	Tue, 12 Mar 2024 22:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HQXmBDDHPGQz; Tue, 12 Mar 2024 22:08:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80AC040A55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710281287;
	bh=i1RDG4D/XlHVMv+mEfzFmvp51TSpVKiYUxBMJTkXxDA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=632o1CSqMmVC8kS9Zxv/DFkEODm6612VMMfLWmHTOCCf+8HTE63zo/mCpa4H3QemW
	 Y66QWZF11H0SE4Zk1O+7fEOpdOxUeFkM/RjmKf5577/mOsDGMxt/pmAllyyd3zuTqQ
	 Wja0VZN6acwyedoy+7PUpgbgVCTAHc7S+Jy4YZGvv7oNuX/P09n1ns/bnn5i3Zim2D
	 qEuSUiGFM2gJNLsZPUUqVWGnqCAAozl80xCr4Y7w5mtqzaOh88T1nFF01EiQhDaJFL
	 kJCkSFS+TubnhXQ3lxy2nEi4hfcBF3BriI/G1Sj4paA10AfOODF6Mjp+bN1jJllQNC
	 HsKxNfQ8U20Kw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80AC040A55;
	Tue, 12 Mar 2024 22:08:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC8CA1BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 22:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1E3660844
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 22:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i91Z6Kh4zAOQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 22:08:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F221608DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F221608DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F221608DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 22:08:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8794933"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8794933"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 15:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16278644"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 15:07:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 15:07:56 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 15:07:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 15:07:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 15:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KS9DQAc2KMkVLTDmZgIHId4kIzEetvokvurPnIJpRStCVWIXpJ0JDPQUzwlKEZ3jVYGPoMy2VdeK0bTrEhZw+u45HYuzyAEYHKbLHZZzUH2Be1802b/VZq/+Fb7f13DofEcTR8RP8v8ypZEoOkiBenp6UoP3jOX7SPP+lEhDx5tkCIYVSbdHQpm3FUBTXuop9ogpQwyXiWUCO6fdYaYtwX9Q0F0CsBO8M1jPB8l8v8s2Ag+C8yERyNIOfkKnuIiYEP6u/vLB8ePTkYf8k/MarZrrwHUM5TY3o6hcQ2ZCPxCd3uzCt7/W0b2rwgWCNlXLWRPKHkL3NirnIMvZ4uyv7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1RDG4D/XlHVMv+mEfzFmvp51TSpVKiYUxBMJTkXxDA=;
 b=RhaweDVdqBh6xLezXgDwIJJ/32i2Jg8BB9jLMLAUEVY6DVIjmuFfjxc1uPyxDUQIkPKOrpjhMHH4vG06xJZetcxA/lf/Tj/Yjor/9bv5VwUf859lklMOPvWD8uirqSvN5wNWV8jlyzYJ3KeoQbgIS5TRje9I+3fs/Sjq/0LalgPbRFouW4SDd4KIR4CyF9/pp2QvW5vA/r4QPfAARiMjDO0uOI//RDZdZpq6F0Uxoko2dCyGqrET3s+lgD/qzbn7T8FYrja2ipWN19BWyc34ZYvcxYP5kku/05e2Oimj38YU7MV0ZlVndn7r3521QqVF2JKYYS/vl622UvtTNKzE1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB6995.namprd11.prod.outlook.com (2603:10b6:806:2ae::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Tue, 12 Mar
 2024 22:07:47 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7362.019; Tue, 12 Mar 2024
 22:07:47 +0000
Message-ID: <c35ee088-9502-41e4-b47d-c42ad9c5fb24@intel.com>
Date: Tue, 12 Mar 2024 15:07:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Erwan Velu <erwanaliasr1@gmail.com>, Paolo Abeni <pabeni@redhat.com>
References: <20240312094259.770554-1-e.velu@criteo.com>
 <7169b33e1e4487370a530fb60d97dc096a24acfc.camel@redhat.com>
 <CAL2JzuxA1h=L=0cr+Q6CZ9UDbHB6ptbzCQ7gZddZLi2JumdLQQ@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CAL2JzuxA1h=L=0cr+Q6CZ9UDbHB6ptbzCQ7gZddZLi2JumdLQQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0019.namprd06.prod.outlook.com
 (2603:10b6:303:2a::24) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB6995:EE_
X-MS-Office365-Filtering-Correlation-Id: 98d18c3e-8e31-4ca7-f471-08dc42e0d9e8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OIuDcpIcYnoj4Lnd2DsKnNOmCeoE53BPXdLSqliYSbYheY8aT5vkG92+VI3FTg/CqppSR6Lz1WKMU+zm9UMJTC55kGZawpAxwYKUoXlFI3dKt64wtcIpXfyqa9TRj/Lpt0wu9SmE6KLI8ABKyA8q8QTFFCHxWdR1WL6MSvMT9bCBTofUNjAkTbvKY8Wckuvoj2yLKEXkQJLD9DqbUGw5C1z+04BPWAnYynzIFXZw1Lp9A3/srPx5bxzBEDTrai139ygkPauJ+N+i7S8hT7f02l+xBk1/F5Dd9PgHp9vp7PaUCLnB5stK2A4OGqOAePe961G1xvxIwn/fkZ23WkmEyedBNryUySrlNowO/nxDx02PYs5RvViklEa/HK8IRzig0tL8L+wANRnkrbiSn36As7Oy+bKm2fkpWelTo9a6yclbCkW1qkBwu4q+cucas+CxGY24QoSmb3rund89vQA2FY0o30vsVxWB0AGAiPf/pe2hCTQuTA2ErqGdHoKcBSR0zm0+rBrBv9kQY9JsjVpMP0oEDze6cvutWDAISyMkIoSH44XI+GNi9qGVjY4MJOizCEtoyyJno0z8ZLGp45CM4CVI7sMYTn0l9sv3HhoHHcyOkcMW5HBfiNZz1pXKBBUUw5Gfhcip5XPyyhvZ02vLDvyEOEgUA8MgUieGfl9HXvw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHBUS25aWTVIYjBDOFFWcVdUcnJGMjQxaTdXdm5rU1pjbUFJT1pXOHNMclps?=
 =?utf-8?B?TnBoZTRLeGRXL2JkUWp6ZUhreG1rWGRQNTFwelN4ZWZDc0ZTcEdSbXFqVHU0?=
 =?utf-8?B?RVpPVHlVK0hNdWxTcGlQcUtUVGswdFdzTW1GRUNiZ1J5aVlpVVI0QW54UU9y?=
 =?utf-8?B?a000cy9XdEVIYTl1c3F1Qkc3dTdrZlZUWlgwK0FlU3lrSFkvZTU3dWlXNW91?=
 =?utf-8?B?K2NxdXRQRzBvQmd4SEMyRGRERk5XZ1REZlVwNTZWVElVQTlzUmtUOG10Ujkv?=
 =?utf-8?B?Q2pVMnNld0lRR1BSSDRMejhKb25VdVdLYllvdGZRU0xPc1lyUmpVbW9uWlFh?=
 =?utf-8?B?Z3VqZmhNU2hoRnA1bW9nRUpWT09VeHVqL0xmVThlRi9WUE9SRWtQVUgyOHVC?=
 =?utf-8?B?SHZzUUtSNkFFaVY5VWhtUHBIcHZmZDlCSGpzY2RZVWdUM3hIQllyVmcxUWND?=
 =?utf-8?B?K1IrRHN4cUtndXYzYmJvYlViQzJRRVUxbmFiOGlsdzBqeHZZbVdNaTE0Qlo5?=
 =?utf-8?B?NzRDU0VCMloyNTNkSWRvQndyNjFLTVhIR3VrcW1SeTc4OGZlSVljZ2c0NTdS?=
 =?utf-8?B?d09KL3R5WXkzbDhzV1U4ZldkcmZ3RUdoTXUzTTNocDNORHJLRDFLNWZSSVo4?=
 =?utf-8?B?ek9OdWZja3pNNTRvZHVYZm93SWMwVzBseXhQR2ozV29YYkd4dFBpOWFBdHJO?=
 =?utf-8?B?S2xBZkJnZlp3cWFsWEhCNSsvQkh1anlhZ0Y3ekxXN2JTWmIvcGZOeWVZNUlk?=
 =?utf-8?B?RTBxOVYxOXY1VkE5ckF0bEFxbGd6d0p0UEE3MDZqL01ZamdSSS9YYncrYWti?=
 =?utf-8?B?TEpYSUozZnpJMFJidFkreDlLRitHTjlod3FiRHRyZ1ViYVdZZHVGZTZHTDBQ?=
 =?utf-8?B?YzlFN2NkNmF5cG8yemJBZERoR3lEcXU1YkF0VEo4UGNNLzcvd2tCQW1aVzB6?=
 =?utf-8?B?Y0F3NVpuZk5tUUVGYmtFZ1I4dERaLzZwMDJjajBEc1JTeUI1c2czVzA3dG9H?=
 =?utf-8?B?MkR6U0VLTlBpTys2Ny9Yclh3UWwzNmZCclp0eklPK1IyZ0t4cjNPZW0xemc5?=
 =?utf-8?B?Ui9BdUlJSzU4Skl0MU42L2FLVFdkM2svN29WMDZDWVlLNnZOOFJyY2lIaVhG?=
 =?utf-8?B?VzM2VkQzM2JnRWZZYTNISURXeDFLN3JOSmpVOWRlc0ZzVTNMZXdWeVRyZWoz?=
 =?utf-8?B?QzM4bFUvbmdzTkUrNkFLRk4xc1kvVlU4YnpGSG16U25icTJUOU1YckhKc1pO?=
 =?utf-8?B?cnR1RDl5Q3BEWnRPSUwzVWVKZmNpS0RHVnc4L2kwRGpBTjJtWTczV2RNV0xQ?=
 =?utf-8?B?YklWdkhtSEw1dTdBdzhpS3F5b1d3clpIQkVQdEFXV1lCczYxNmlQRldHZ1lz?=
 =?utf-8?B?QVRoWjY4TnNVbzB4MG1aeUhOUGNIU0ZxeFgzQ0IwL2tjNWgwMVJsTDk2QkpQ?=
 =?utf-8?B?UnFNbmlhZ1A4LzJ5eE0xVHdGYzZORUNHWGxmc0Joc25qcHJLSXpXRi9uMWRH?=
 =?utf-8?B?VlhOckhNVVY5UWxmd0FIeDdoTXhFTGlxMGJIdFA2UHJBcFYwdkZZMDg0RXR1?=
 =?utf-8?B?aFlOS0xrR0taOW1oYjZJbXQxWW45L0RPNnJGM3JnZmR2OTkwVWtWYUoxZ0tK?=
 =?utf-8?B?eDhGMzdGTVZyYTgxTjVIaGkyZzVlcnRNMHJuT2NpcCs4WGdzYU9YRURlTWFN?=
 =?utf-8?B?aHlleE43TUh6N0VVQ3FJbXB1R25vUGRrTkNmY1BnMEFDc3ZRRFAwdDNwb2h0?=
 =?utf-8?B?Vk56N0lDaGNIdmNnbEkyTlVYeWlNdE82ejJJQkliM2owZ1d1RkZvcUVTRGsw?=
 =?utf-8?B?ZkpSUkRWZ3hKL1RRNGs5b0pGcHpzOWZsWHVscXdoNHpTMngvUGVKdnFsVXVW?=
 =?utf-8?B?ZU9haE9MeXlQdmZsSk1WOXVRNnBUUENFUDZCYjc3UGE1TVdxYmFYTmtweXFj?=
 =?utf-8?B?R1JNOXNqUVU2VGpNQ1JMa2o0YzI1Q0ZSUWV5cWJpRkc2ZUlONDZOTXppRGwy?=
 =?utf-8?B?RWszUTJYZWRMTnlFd3Q1eWxqc0ZpTk9RM0VvZnJtQmszRTdrR3VSQmQ3cC8x?=
 =?utf-8?B?QkNxOHY4YW1NSGtuZ2x5ZWlXLzlmNGlJdGg0aS9rbWpvVUw5RmFWV0xIWGM3?=
 =?utf-8?B?L1VzekpMMkF6OS9uTGVtdUdKdEtHTE11SXZWMTVxazJzOHZvdmxEL0Q3SUtH?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98d18c3e-8e31-4ca7-f471-08dc42e0d9e8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 22:07:47.7654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g4V3Bhm5eUHUGlJwQT66rqJGu2wcj6VPNUNPu4KnF6IWKzROBpO275w2hz+OtmauW3lVmm4U53kJ0wlPvwYs4rK3MEdl3s/LLTnShIO11Hc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6995
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710281283; x=1741817283;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HrRJr1Ld7Hk98FguZoNNwqLQlpTUpzkgk0f6yVTZIis=;
 b=M40PT0iS4xf/4yP5TdN0KwqUnSfVcrhEJ3qc5MBG2hBNckFx2Y/bVrLr
 59pd7pbt3ckcoTS+nBIkj1lzFoIkNfwTq6Efzt62lIVBmKf6TmQFryWfW
 oAAG1S9ut0HDcvcPwy7Y6mtfe0HlnrhV1/4lmOAMgVRtJ0gXPJ2x/7Dje
 tnd26pHuG/wC+D8gM7cDY6kooOXeGBreIo3j8oRdeac9JRMyvCwQpIt2B
 ycYLVskkoYW60w3ezQAdbHauFPkOzoYvAhIaKmHUVMTTtBUZdnMAebksc
 RmbfRWxa9JCFuQM73zSIRoMpsyXmgnj7knW3dIUPuwjOVfgBVptVcuPOf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M40PT0iS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] i40e: Prevent setting MTU if
 greater than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/12/2024 3:29 AM, Erwan Velu wrote:
>> On Tue, 2024-03-12 at 10:42 +0100, Erwan Velu wrote:
> 
>> This looks like a legit fix that should target the 'net' tree, @Tony:
>> do you agree?
>> If so, Erwan, please include a suitable fixes tag in the next revision.
>> Please include into the subj prefix a suitable target tree. I think
>> this should go first via the intel tree for testing, so 'iwl-net'
>> should fit.
> Oh I didn't knew that part, thx. I'll wait @Tony to see what target I
> should use.

I agree with both parts, so 'iwl-net' would be best.

Thanks,
Tony

> 
>> In any case please respect the 24h grace period when posting on netdev:
> Yeah sorry for the v3 ... I shouldn't have done that way, that fast.
