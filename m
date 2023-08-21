Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DC07829CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 15:01:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 827BD40250;
	Mon, 21 Aug 2023 13:01:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 827BD40250
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692622890;
	bh=BeATvpFN+NXdd9Xv3o3M3akdph1JMs8uesixJ5nduOM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aeSiEaUngId2M/RJFeu8zvSk0CBzBc9+71UMB/knJpEasgXiZSuuIw04yZkdFNZF0
	 noPcGlj+4EfYN08FNcIpfMvGMkiy6GOoFjQ0mExKNWeTDrgrvf7tI1ycmJiIT33K45
	 cl7pWk8HEabCut+68zWD8u+LLX/VmAGIcSDbGMZNZP7rsFEaIFjmtmlqRU6M7CBb/O
	 eC7rmFZAqZL5/LhD4VIn2dpU5Q1xMOpUi0XJuv6f30JIfBzgSFbz1bs+BV/CGEX7w3
	 JkJ2MiX8hDEPSr9ehswkSRTQxdY5qxGuMQ6GTYs4kq6OXdpM/dBiiMITTEPi6uv5hg
	 HIZ4I+pzMOkUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5IB60nmKOUw; Mon, 21 Aug 2023 13:01:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A93940028;
	Mon, 21 Aug 2023 13:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A93940028
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE5D91BF388
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8162E610B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8162E610B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2t_PaGKP5SzL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 13:01:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97E606059B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97E606059B
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="439955406"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="439955406"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 06:01:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850168152"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="850168152"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2023 06:01:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 06:01:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 06:01:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 06:01:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGn3LBTskFUkLDYl/sG7kz7uGH39u+r9MYZ0y1DFaelHfHG5vSy84FWVlNoPjuoz33Ntqgf7YJAslWecx/rr0f7OvDkXhd7Oq8k5ZSaAEQBcROZ2YuuwOT82wVRMrr8qLHZcOz4n9cNDmyM1FAfM/8M12KonxNHlBOczLdw68IBKz4FLH8CFU4Pebb90espROc1xaF9BZ/G5MGCQlMvnU6vkctsuM/dWeA+E51yOxhbmDl4t70grOkN9DS4CozsbOrLeShzuuKEcdnuZ9g8dP0gnjpEfjJRhLxTb09yHidg+RLm1D1Ip60OkQB/X7Ry36OYi+jIfgLl/6cl1eaH9Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mAvHjfF0Vt0twLqezf4UmBXWIN+qQve4bi3kp0KdQhA=;
 b=J2eYMnFNrw6Th6kjQIwx5JdbfFIphEmU39n1F9/rio+8kWIazklKOmJOjaCB09x7H0MNpSPIsU7c4AM7ESFdfjJyENBPbunTkBoMoRP4ZS1FdzA6M55b6m041im3QzkyQ9fYkFJnOIQD3k9XfdlZunRWtVqXRD8aJURDq8/vvkQVr/VxsisqGcfHNf75GIj/TDZM9DsUwsjgZs7czC3qpos6ajNs2vC+xKdSmzuSf1aRsmU5AVzvMEc/5E0CP0NtF+hiAzsAxQr631KN+vcBDOMKq7Ph+6wqSSHVepwOCZ2TpeMJUS767O+krSEU54ZQiaXQBHdL18NHMNzZrPnt9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH7PR11MB6721.namprd11.prod.outlook.com (2603:10b6:510:1ad::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 13:01:17 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Mon, 21 Aug 2023
 13:01:17 +0000
Message-ID: <0ac644c4-e14e-8f41-3e7c-472ec7f7e4a7@intel.com>
Date: Mon, 21 Aug 2023 15:00:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230819093941.15163-1-paul.greenwalt@intel.com>
X-ClientProxiedBy: DB9PR06CA0018.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::23) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH7PR11MB6721:EE_
X-MS-Office365-Filtering-Correlation-Id: 25fc35c8-357b-432a-07b4-08dba246b4ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dSGNCbYkbDthhXxYgnwwwqdUJqwbdX8vxAv6X+pzXtGqgCd1pZ5r9einVxSsYWIGynt8oZViGuPrDwjp+LvrM4HMbghQQ/7D/3sB4sYyWp6CuYxw3sy1rB6FwelG0tIRLa4Rn3VI9b3XSj25mvb7fPb9Qm/9S1ssC5csl41ji04cGKDEvZLMK6L3oYcZg5I8Ki5YdT82tDDeM49YG6jXeqURhpHNAAQ1/x9i19qQ6qp4hjig43lUKHht2hkoGJKvwRX5fYGqopnVLjZLdP/pVGlS99AjUD/RGltbjhxUdKzYgsg3kbA0zIg+nKhtY+Mot5Usq3J/gjb8JNHqHicZOU3f5FdgmUlFiZWfo5qqN8H8svsvGlvRSvjSnILnpOr+z9nWzeB/vfN3qbhVSneHMwdesfquw1/ibkmdcMx1iDFrZmJcsBFrrh6OaeHvIfy4mCiSAjiFZc1xSGzeoX+0Z9OTQFp2E/LiBQA9kNgwbL9/0/jNNocFA0NS0Z+y4pSzlUUJWR6zLBIj8I+HUM2DFK3eF3q5XdReUzVuWWwn/5mclvgOgNjFfGiRUgW7F/CdEJQSeepAB34UDXfd/pkgYQbQe/TyA2rWrfWWvvCq5qowsVM887lUmEU/gPvHT3qxEJ0spfbSU3EM75GO7HcB6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(38100700002)(6506007)(6486002)(83380400001)(5660300002)(26005)(86362001)(31686004)(31696002)(8676002)(2616005)(8936002)(6862004)(4326008)(316002)(66946007)(6512007)(6636002)(66556008)(66476007)(37006003)(82960400001)(478600001)(6666004)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1IvTmxIK2o4ZjE2cVdUMGthV3dNMkdsZGlVQTBra3pEYy9WZmN6WDhnYzU4?=
 =?utf-8?B?eGM4R1ppRjdwMjNhOWxkT2xicnlvT0M3bzJEcTFtekhkakJ0clY2Wm5jMlJy?=
 =?utf-8?B?WXZZbmpUS3dmOFYvZnBnUlIrNkY2WkhWdWlCS2NDTGNXYUxxbGRPd3FwejFI?=
 =?utf-8?B?TitpQm5mL2VadTRFTy9qNlBVVnpNVytDUGhaVDNid1U4NjJiZGEyT2lPNmwv?=
 =?utf-8?B?R2hiZ0dmWjJrT0M3OEtVblNFamcvMVFjVkJBZEFWcHdnZFl5dHNqNExpNTQ4?=
 =?utf-8?B?azdEZEJFR2hzNFlvdVFPbjQ2ZE1OWEJ0NUZsdmRUSHVPTnM2RTNaN3lhblE5?=
 =?utf-8?B?blVwNjUzd25TaDF1eXhqZFlWUGhjRlZhcE9KeEN2WXFwWFgvNTBBTWhqSWp6?=
 =?utf-8?B?a2pxY3VEVnV4OUxZcExKMU9iV2JaZFNkTHJJWEJHZUtQRG93SW1weUZjT1Fa?=
 =?utf-8?B?RWZLaW8xcDNzT3pSUkM2cG1NZHdjcUJuUkppTi9Fc2pOcTNOSk1QQVlZVHVk?=
 =?utf-8?B?UzhIZ0ZRUlVZL2R4Y2hYUUpQQWxmV3dNUDkwdXp6SGs2a205TlhtcG9aaWYy?=
 =?utf-8?B?WDFlZEZKKzNqZjVtNXpEL3g3dGZob000V1h2eGZ0S2JQdCs3dGNJQnh0WDNv?=
 =?utf-8?B?akIvWURZU2xQeFZsYWdxYW00ankwS3pwMGNHNGxSSGlvcTdKN1FrbUZUWnky?=
 =?utf-8?B?dVp6R3VxUG9BTVFNdGR4Q2ozNTlZNDdzMks4Yksvai9jaVF2UHRQWklhV0Vp?=
 =?utf-8?B?dG4wbmE5NVk3NDFMM1ptZ3ZBa0NUaDdRRjN1NlpmNXd1YmdMdGpIOEo3T21W?=
 =?utf-8?B?Z09nUkk3VUVVR291WXVNd2dKWDBhenFZbG4wS3pjZHREd2hDbkI3bGIzZUpU?=
 =?utf-8?B?dHdPeU43WWVMemVKT3MrZUxTK1JXSnRuNXhuSFRYYjRLb25ZZHUycWJEbXF1?=
 =?utf-8?B?NnFxWmlSVHFzT2FYN2FQdTZGTS8zdElmaVFCUkI1UnVCdENBSGJTWmxLdUR3?=
 =?utf-8?B?a0pmTWVzVEhqelZGZFdnakI0UzgvL3pTaVBDR0NJNjR5R2hCd2pPUUtWbUQ3?=
 =?utf-8?B?b0gzb1NBWmN0S2plOW5SYXovOGhHbmlVSTVoTUNjUUhwTWtZWXpHUkY4NFFq?=
 =?utf-8?B?NVpTbU1JU0VTZWo3dHpmcmdycTFhS2NYQ1BmdmkyRytvYTBLd215QWdycHNP?=
 =?utf-8?B?T0lHeThGMlJZZTR6QU5mU2R4OExOQzFsRkdsTHRLWHBubjlYQXN6SjF4aFgr?=
 =?utf-8?B?ZmMwZy82MHE4YmVycFN5T3JYZ1dRUFJabDYyZndVMi9YNUZqL1lhTzhocWUv?=
 =?utf-8?B?S1Z6eVZPNk9aRTl0S25MSzY5dHcyZkxSS2hqdldiUHVMbkNTSldONmNLT2Uz?=
 =?utf-8?B?Mm1qaDhaSGsyZllTMll4ZUtNajRvKzdUNUhuNDBxTVdESnEwNXo2dklvWUdR?=
 =?utf-8?B?NlY2NzV5djdWZE5QWUhuSG5KZkFKTUgxbUF2TXhYMm1PWG03aDVPRnBCNHNs?=
 =?utf-8?B?WVVmbE5wbXB2UHk3TTZzNHpXQmczeVRYOVpsUVRQQXRBalJJZFFiQzVXMnll?=
 =?utf-8?B?Mm1JNk9KVWlmWkoxYk0wQUM3dk42Mlpsb0hnSU0rZjkzaTh1M1hKaFhBejdr?=
 =?utf-8?B?YVJNY0NVb2o0QXU5OXlVVG8xeTRrSGdnbVhmVVlnT2VoUzY0akRPZjlWRVA2?=
 =?utf-8?B?cUlleDFJakUrY3RvZzI5bUY4ekFMajFLZDZDdXpaVCtiWjBWdmxLTDNjNTVv?=
 =?utf-8?B?Vit3cm9iUXRqTS9XeWJMek8xNGJuNEo4ZzM3cys4SDQvaGZEQzlYSHp2OUZz?=
 =?utf-8?B?eFEzbGYyR0VoNGExeitjbkxJSWZEa04zdWdOdWtjSE15Y0hBWVJSOVIyVlA1?=
 =?utf-8?B?OVA3ZFVXMXdNdGdUb0grOThOeFhlUmJiYWw0bzk3YUNvMldlUjIxcW15UHZ1?=
 =?utf-8?B?emxkQjRDSmZOU2k2S3U2TFZtdHZNaVF6UUtDQy82UkloYVd0OEpvRVZTZWZO?=
 =?utf-8?B?OHQ3SEhzcmhJalZwa1RXVlRPNHJwSGltNGg5ODAvK09YNXh6UUdnY3B6MFNn?=
 =?utf-8?B?bTdFZ042b1c0VnJEL2tLWFpsTWdkemdtMGNMbEZGQitpdzFWZDVvc014dStC?=
 =?utf-8?B?TGxQVzNqNXNvSFRidVNMNlMzMjFzUnFzbjg4MzhkZDR3TUtDaFFyOXErVHJ1?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25fc35c8-357b-432a-07b4-08dba246b4ea
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 13:01:17.2122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /dN9CjPOXQR5nCXW+tP7j1UWcCahyiQlmFxbZnlVl2BQ+5VHm/k4C4wfKZRHSnbYyZRB2Xqb8uhQaMK+DRH0ApPRwFFU9sM9aCesGqEclAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6721
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692622882; x=1724158882;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RHBPGgDJmzIYSt3hqKJIVPwUDaCPXOTvOTBPqfM8y4I=;
 b=BOiuOx+1JdtMEGXy28y64EUCqpQnnfIEEzXqCIBYw9modT3h3uRyfF1g
 L/KHs8QuUadrAgHNrcqFcU/vTYR7TS4En7dXgxIjBdX2FysgtY6IbGD8X
 OvFKK0gaDsZCpu3V9e0YHtZQTwxNgu7y7CmP6hZHQurtQM+pUkXWXCfTI
 PeRwY3Xq+4iei30ZA053qExjpiWfNbRMINZZ9eBaeoXpxY7Q5LqRMA2qg
 SR+Zflm0hIsfRZtVbZGKE2OgDxmpfI5GUKYZH6LxjSwakJ6KyQRqVF2L9
 emCXKecm6SSePAoStylnOTLLrROXoo9WmNswSpNxggfuTL4oc7L4CRrtl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BOiuOx+1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, andrew@lunn.ch, intel-wired-lan@lists.osuosl.org,
 manishc@marvell.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Sat, 19 Aug 2023 02:39:41 -0700

> The need to map Ethtool forced speeds to  Ethtool supported link modes is
> common among drivers. To support this move the supported link modes maps
> implementation from the qede driver. This is an efficient solution
> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
> maps on module init") for qede driver.

[...]

> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index 62b61527bcc4..245fd4a8d85b 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -1052,4 +1052,78 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
>   * next string.
>   */
>  extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
> +
> +/* Link mode to forced speed capabilities maps */
> +struct ethtool_forced_speed_map {
> +	u32		speed;
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
> +
> +	const u32	*cap_arr;
> +	u32		arr_size;

Please re-layout this as follows:

1. caps;
2. cap_arr;
3. arr_size;
4. speed.

Or in any other way that wouldn't provoke holes on 64-bit systems.
I wasn't really familiar with that when initially adding these
definitions :D

> +};
> +
> +#define ETHTOOL_FORCED_SPEED_MAP(value)					\
> +{									\
> +	.speed		= SPEED_##value,				\
> +	.cap_arr	= ethtool_forced_speed_##value,			\
> +	.arr_size	= ARRAY_SIZE(ethtool_forced_speed_##value),	\
> +}
> +
> +static const u32 ethtool_forced_speed_1000[] __initconst = {

2 reasons I don't like this:

1. static const in a header file.
   This implies code duplication -- every object file will have its own
   copy. If we want to reuse them, they should be declared global in one
   place (somewhere in net/ethtool), without __initconst unfortunately.
2. __initconst in a header file.
   I can refer to that declaration somewhere not in the initialization
   code and catch modpost or section reference issues. If we want to
   make those global and accessible from the drivers, it should not have
   any non-standard section placement.

> +	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
> +	ETHTOOL_LINK_MODE_1000baseX_Full_BIT,

BTW, can't we share the target bitmaps instead? I mean, why not
initialize those somewhere in net/ethtool and export them, instead of
exporting the source of initialization?

> +};
> +
> +static const u32 ethtool_forced_speed_10000[] __initconst = {
> +	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseR_FEC_BIT,
> +	ETHTOOL_LINK_MODE_10000baseCR_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT,
> +};
> +
> +static const u32 ethtool_forced_speed_20000[] __initconst = {
> +	ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT,
> +};
> +
> +static const u32 ethtool_forced_speed_25000[] __initconst = {
> +	ETHTOOL_LINK_MODE_25000baseKR_Full_BIT,
> +	ETHTOOL_LINK_MODE_25000baseCR_Full_BIT,
> +	ETHTOOL_LINK_MODE_25000baseSR_Full_BIT,
> +};
> +
> +static const u32 ethtool_forced_speed_40000[] __initconst = {
> +	ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT,
> +};
> +
> +static const u32 ethtool_forced_speed_50000[] __initconst = {
> +	ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
> +	ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT,
> +	ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT,
> +};
> +
> +static const u32 ethtool_forced_speed_100000[] __initconst = {
> +	ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
> +};
> +
> +/**
> + * ethtool_forced_speed_maps_init
> + * @maps: Pointer to an array of Ethtool forced speed map
> + * @size: Array size
> + *
> + * Initialize an array of Ethtool forced speed map to Ethtool link modes. This
> + * should be called during driver module init.
> + */
> +void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> +				    u32 size);
>  #endif /* _LINUX_ETHTOOL_H */
> diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
> index 0b0ce4f81c01..ac1fdd636bc1 100644
> --- a/net/ethtool/ioctl.c
> +++ b/net/ethtool/ioctl.c
> @@ -3388,3 +3388,18 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
>  	kfree(flow);
>  }
>  EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
> +
> +void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> +				    u32 size)

Alternatively, to avoid passing size here, you can just terminate @maps
array with zeroed element and treat it as the array end.

> +{
> +	u32 i;
> +
> +	for (i = 0; i < size; i++) {

	for (u32 i = 0 ...

> +		struct ethtool_forced_speed_map *map = &maps[i];
> +
> +		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
> +		map->cap_arr = NULL;
> +		map->arr_size = 0;

These two are needed only if your @map really refer to
__initdata/__initconst variables.

> +	}
> +}
> +EXPORT_SYMBOL(ethtool_forced_speed_maps_init);

Not sure ioctl.c in the best place for that.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
