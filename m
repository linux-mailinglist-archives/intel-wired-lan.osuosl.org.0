Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8D07083CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 16:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 187EF844B7;
	Thu, 18 May 2023 14:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 187EF844B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684419410;
	bh=kJRKFOAS9VVIz7jbz2tYcrI3j7SYwaMrpILaY88phZk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uGCUQZ3ODm8iE1dVdaGcKL74ms5ARCmMFgOsKnomdf+zTYhEgxpZzPZe5wmBPfnr2
	 0HPvVLInCiHvkrUNnbPoSAGHUHVdIbr0s5pC1XOAdNJZcFLA45tv4jcgrIrGSmmoa+
	 STx//UuAnxN0f1TC81smyVPL8vATB7l4CRYEhVvQAuk6UmqwLtcD1hzEevgw1NKTH0
	 zPG5N0E9AOFZQQtOu0X7qPCTjZuU0KUigjCamGSnqJy3D7XMlQgnVwW4P17xRjH8/p
	 7hlKY7SVeYie6nxayz2Uau9AF9xRJk5LLHc/hLJkY/SF/uXQS02+8s09nP92ihj8yw
	 VLIFC5K/OMF5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vr7P-jXti8bO; Thu, 18 May 2023 14:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D57B6844B6;
	Thu, 18 May 2023 14:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D57B6844B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C7211BF59C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 41BFB42979
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41BFB42979
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id to-vAoQCmWoh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 14:16:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E5A942978
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E5A942978
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 14:16:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="336657012"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="336657012"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 06:54:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="705198250"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="705198250"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 18 May 2023 06:54:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:54:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 06:54:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 06:54:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 06:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8ge6Dgcbs6AK8hIBrbvdF+ztMbq1ODOjxjDJ7hhmShba4iEWNKH/InQWUHl2+f6G+T+A5O/kt8VaCPqi2obs8VFyzMRHMK+nqpig8+LofedJ0l7nrI1sT7mR2BkR0Wr0+CDfLrY0/NYF6FZCcZTNnovMjZ65i2b453/ZsvPoK8b8WaQ8oiIYMt20kDZ6WnYbbZSY5JT5Cv6gily4oV1m1MtJy+gGuvWC+00xbhIj9S2EtHHy5oT561hozNJdmTn+U26mfxk7GR7UvEaCTtcheKVSGtApOqbohBkiNp8ZFzsWiGBp+zqWp+rfuM/c0HuLSwF6w9wOxY55kyW94iZpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4UzGWrgXzto4QN7DC4NBCawQf4kG/8PNvb4J6i/oPmw=;
 b=itTjXYvGYPwfT2r8inYnQfhR3zO/a1VmeoMEtY2v4t3dWS9c+vx/dfLAJpzEJ97O/fNJrH1+7jRGGcNTAXUzrxb+j2OT+oxSeqWjwmpPzEwjZS8xtf1YSlSvbVibZJTe4Yqg/ncNmztOsSqkBF60IzZCN/9m9yleaQBeKf6bRphau6cnj8cy4uS7UUxQfo9UyxNwS2RokFshRJlmP3qG05wQZ/gdgMF6QT8lYmbexvwmFTau6iYdgAVCliV6SVsWqx4PEOsiAp0lG+L9CO6v4GaUBNbgGwk7Kc2L+j1DdrIIjeRwzNrBo1mbE6uFkBxYTBndJMOQzKYfB8tHv9oN4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MN0PR11MB6110.namprd11.prod.outlook.com (2603:10b6:208:3ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.20; Thu, 18 May
 2023 13:54:43 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 13:54:43 +0000
Message-ID: <b19f43b8-f973-2627-3ef1-ce53007ece0f@intel.com>
Date: Thu, 18 May 2023 15:53:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-8-aleksander.lobakin@intel.com>
 <20230517211211.1d1bbd0b@kernel.org> <ZGXNzX77/5cXqAhe@hera>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ZGXNzX77/5cXqAhe@hera>
X-ClientProxiedBy: FR2P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::16) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MN0PR11MB6110:EE_
X-MS-Office365-Filtering-Correlation-Id: 35bddc70-9349-483e-dc44-08db57a76e55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 88VtLl5VKMLyIgffc8RFQwHETSmRXF6z1txpgoIbvMLptTQp7GSgDPHjeXjVciIgZeE65AjywO1oElhDU6LqxphyMmw4L17tl9PliXJ2Y+YNUhcEryMOXRP7c5zJlXhsD6OulgHzlvBXWkcem9QaY+MpzKH/XOF3aVqIlH0n6xpQsfJ9w4eUg/AWWw6s7tJSeF4Ms6X6JRONVgsHrc+WPAEKfgo+ficS6JCTrf+mBzfQFx4HViVLvkKu4ohUwafyEOaAM+kJjZRt4hyjlItr+IMnLwtVYnxvud8PcB+dMpwtjHF661HIf7F9RzN8C07sPi9oVk228Jh82LG8wQg5hnDo+QUkD4oDhqp25wdZe8jVP1hFQA5nHEmEDPcfXgQ4cAj6hZvy+TVUvoelBRt5NSOHbrO/IpNgMqhWvlPYLqz9OCNYuRvccOhhWhWYqFPU65OxIUGeEBu0ZgJWIPV7aYje00WXBnv9y7re6/Zm2EKBaVoINdNGXIJkgX1C29fZdHgyeBEEttdjlc0NAUmTSQgS+Ugjl0z9YNkMI8XvDMbAMxQxkT0uACQuO6iygROb6XLleE5h73mKO4vUvouRYeTIsF9dSnDgbeWIWL92FHRBPpaxaPsLio50yfYNYxHkOeSAazH80eFsQkqSF7fp6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199021)(38100700002)(82960400001)(31696002)(36756003)(86362001)(31686004)(8676002)(8936002)(5660300002)(7416002)(478600001)(6506007)(6512007)(26005)(186003)(2616005)(2906002)(83380400001)(41300700001)(6486002)(316002)(66946007)(54906003)(66476007)(66556008)(6916009)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djZFMjF6NGxwb0pkRnlEbDY2ckFSaDNucEUrTFdMWHZDUDJqNTc2TUErazRZ?=
 =?utf-8?B?dUEyRXRHbEFsTXB3WDY3NHZXTWFYQ1ZpWjBBRXUrTmhRbjdiVlFWS2VmQ1pZ?=
 =?utf-8?B?OE05VlgwOWFyWUpkSDFuWVRBTWhoRDdrR1plT3d5Mlk4MHN2b2FnMU42SHNI?=
 =?utf-8?B?NWNsc3ZCY2pjcUpSREkzMmQ3NEg4Q1dVQ3pHYUxwUXBJK0VqbWVKMVg4YWxP?=
 =?utf-8?B?eUFSMi9wQ2M4ZE9aYmVMOHVCNHBzMlZ5QjJFamVreWFudnVjTGNaWGo0Y3Zy?=
 =?utf-8?B?WU1HM1ZLNHJ3SWRFR3VkcDJWN251RmJOR28yb0tzK1E5U1FWTDFXa3VEOEM5?=
 =?utf-8?B?bWF1bVJGQnpWRTd4dElpby9iRUp2S0tQZWJDbkV2WldDZlVqV1BTdmk2RzRu?=
 =?utf-8?B?QlJnejFLajBlWTZDWXo5YmFpN2NmSHVrSGxvN0RxQjVOb0Y3NjZkMXV5QTQw?=
 =?utf-8?B?TUJMeEFsR0lGRGVtS20xcjFEclFMaCsrR2ZVYmZyTWxoMHhXWUdvUEJNWWVJ?=
 =?utf-8?B?YUJWbmF2SU1KSDZxWnIyUDhZZlVIR1BtdndaNlBua2RMaTBldEhxUGpkbDdw?=
 =?utf-8?B?WjVSeWRjZTZqc2o3dU9qY2RwM2FEWW9NSUR0LzRnVERJQ2o0UHlQZ1pQczhm?=
 =?utf-8?B?SG1icGRaT3l1aWhnVGR6R3J0YTlSUnpQQm9oN3pCZGdUd28vY2hEUDlqZDFW?=
 =?utf-8?B?YjNtR0pvVlB1YVpFdkVjeWptOUFPS2NQbmJIemd2T20rYkZLdVowelNBN1Nt?=
 =?utf-8?B?YngzTzAxR044Q212RkN4VTh5YnNDV00wbUpNUzRxOWRSb1VGaUc5cWdWUFFn?=
 =?utf-8?B?R3NsUGZNSmdvcEtsT0swcE5TL1BERzRLQWdHZ2VqY29IVEZOWklUNkIwdllM?=
 =?utf-8?B?SlhkU2V5elluc1NNU1pxMkhqZzYwV09SQnc0QkY1YnBpZndjQlFkdDh2RXFj?=
 =?utf-8?B?NDNaT3M0dVRETHN0UzJvY0VqWVNwSnM4d1NwV1l5NUM2a05mK2o2WC9pbG9l?=
 =?utf-8?B?bDNKcVhBcXBjZHI5QXBiMGgwYTJ2SkZnZVU5NERMWXlaY3J6YTVLbEpmMjdr?=
 =?utf-8?B?M1RHbWdTRWt5UEJUMFFGMHZLY1poRkRYNFJBeVFzYnFkbFk5d2J0c1lIbjZy?=
 =?utf-8?B?USsweG9aYUZJb2c1bUNpUjZqTGhpU1ZhMHhGRGF1MmJ3VEJ5YTBNM1ZYL0Rx?=
 =?utf-8?B?NTBjVS91MDUyYktkNFZWdmZxa0F4cGlVZEx3LzVmc29ESkFXYW53WUZkajRh?=
 =?utf-8?B?WDdvWGhQSE0zWFBtVnhmUmJnV0s3dzhZUjhyV1ArcmRkVzNBNGNNTUlPUURq?=
 =?utf-8?B?YnROcHNOTmdhNmVEcW1NeVg1RkNJenhWdlNiUXBvengzN2hLa1EyOU9qb3VJ?=
 =?utf-8?B?YjVJWCtzRzhpSzBEajJoZDZ3dllRczFXS0NCRG5BSHdhcnFyMk9NMmc1RGVR?=
 =?utf-8?B?cTBQTFZFUTNid1JOOEx6WCtQNWsxTTNMSFVzbjVQeXl3Ky9ycXh2c1JIZ1ps?=
 =?utf-8?B?ajdRdUlKMnZqZTFZa2JYSEN1S1pSV3ZOWHV1ZmFHcFl5UnZ4OUFJUk4vQTdD?=
 =?utf-8?B?NUZNc3lDeHdXVUkxcnl6WldhVDlMdHdwRUcwaE9kYThOM2FVKzE1a3V3dGZm?=
 =?utf-8?B?V1FsYkFCNVoyaGpBSWtONHBNNmliWTVzTE1mUE5kdks3T3c4QnFkVXp6dHB6?=
 =?utf-8?B?OHdpS2hMUzEyT01PNWZuK0l3SGUrRkRmeEgwQjZwM1BIdVdYRytkT1RLMGpk?=
 =?utf-8?B?bGVVRHluWTRoSjZMcXlKNWNvSXgxWnd0d1Z6eFVhTThUdjBPK1FRT0MyVldZ?=
 =?utf-8?B?NGxmUUtKRGJVYkpKNnN0NjZzMW9sRFJ4elZaSk1vMmRCMTFrTStxYS9uRENh?=
 =?utf-8?B?Zmc3Um5ueVRuSjJMODlVNTlMVnEvMjMxNVRmaGNLcll3NGZIZmRzeXV2RGFN?=
 =?utf-8?B?S0xSSk95YzdsYlI2Rm41dnJtRXErY2M1ZVM2V2hTOGJwNWpYUXRUNmUxTWY1?=
 =?utf-8?B?S1VQazI1V2o4T3M0VkdYZnhzaktseGwvTXZNSzVRVmhmaW50a3NhYXl5aldF?=
 =?utf-8?B?ckVMSVRSZDhoemx6dXFOcUtRN0w4aVRXZ2Q0ZVNRQTgraVpyRlowdEJ3em1m?=
 =?utf-8?B?UlRQVkNPZWtCaE1iSWJkMDE5L2h6WGM0TGxvbEdRUG1oZ3Y2YmdNSWR5azhz?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35bddc70-9349-483e-dc44-08db57a76e55
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 13:54:42.9372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PzbNMX2pvTKzWyIDnHRdUR1+eQUrT0b/ccSZpqk2Ee5vNAgvxZUoIg90kHh2kmfcFWZ1MKMril40EipIamLbITO4CP9WU2Y3VO+biG6v3Kw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6110
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684419403; x=1715955403;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ABAJGcI+DFn/cObUZ+5rZI8LNDqikIU7Ii3UfKq7JgQ=;
 b=m748T3F55LO4BAAUvXfd/PN0PEva2m0Ep/cDRhXz5/AJenlk9CJmRNqw
 3nXqIByqCRprerjFcQklaX3D3Zo10iJCe7vMdjESUvvP0qJqtp9w9q2e/
 oFfV4dlnQl5Yy89F+PFw+V4NehcEpr4T4nnSHKnFmts9nooQ7G6P6k8uW
 ks6O7gbMWHSnJkpqSot3PVQVrE2RBLykAuZe7F19DGfeDiwMttPT1ecc+
 Tsw3uMXpnhNsqLG63JY5G+ZBqWSKbpw4zG6GEPJ4QftRQi4/uAcXjxXkD
 EQTPqODFctaSNjaKIA46/8TlZMS+JpgpJUMSk+ES40FFWrn40itk7YvXl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m748T3F5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/11] net: page_pool: add
 DMA-sync-for-CPU inline helpers
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, Larysa
 Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Thu, 18 May 2023 10:03:41 +0300

> Hi all,
> 
>> On Wed, May 17, 2023 at 09:12:11PM -0700, Jakub Kicinski wrote:
>> On Tue, 16 May 2023 18:18:37 +0200 Alexander Lobakin wrote:
>>> Each driver is responsible for syncing buffers written by HW for CPU
>>> before accessing them. Almost each PP-enabled driver uses the same
>>> pattern, which could be shorthanded into a static inline to make driver
>>> code a little bit more compact.

[...]

>>> +	dma_sync_single_range_for_cpu(pool->p.dev,
>>> +				      page_pool_get_dma_addr(page),
>>> +				      pool->p.offset, dma_sync_size,
>>> +				      page_pool_get_dma_dir(pool));
>>
>> Likely a dumb question but why does this exist?
>> Is there a case where the "maybe" version is not safe?
>>
> 
> I got similar concerns here.  Syncing for the cpu is currently a
> responsibility for the driver.  The reason for having an automated DMA sync
> is that we know when we allocate buffers for the NIC to consume so we can
> safely sync them accordingly.  I am fine having a page pool version for the
> cpu sync, but do we really have to check the pp flags for that?  IOW if you
> are at the point that you need to sync a buffer for the cpu *someone*
> already mapped it for you.  Regardsless of who mapped it the sync is
> identical

The flag in the "maybe" version is the continuation of the shortcut from
6/11. If the flag is not set, but you asked PP to do syncs, that means
it enabled the shortcut to not go through function call ladders for
nothing. The ladder is basically the same for sync-for-CPU as the one
described in 6/11 for sync-for-dev.
I could place that in the driver, but I feel like it's better to have
that one level up to reduce boilerplating.

> 
>>> +}
>>> +
>>> +/**
>>> + * page_pool_dma_maybe_sync_for_cpu - sync Rx page for CPU if needed
>>> + * @pool: page_pool which this page belongs to
>>> + * @page: page to sync
>>> + * @dma_sync_size: size of the data written to the page
>>> + *
>>> + * Performs DMA sync for CPU, but only when required (swiotlb, IOMMU etc.).
>>> + */
>>> +static inline void
>>> +page_pool_dma_maybe_sync_for_cpu(const struct page_pool *pool,
>>> +				 const struct page *page, u32 dma_sync_size)
>>> +{
>>> +	if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
>>> +		page_pool_dma_sync_for_cpu(pool, page, dma_sync_size);
>>> +}
> 
> Thanks
> /Ilias

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
