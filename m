Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B87C7D728E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 19:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F3AF81F0E;
	Wed, 25 Oct 2023 17:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F3AF81F0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698255863;
	bh=Hf/MvvYe3Vd+sEpSsdXxxW/rOdzgUD6KMNj6EoQP8LE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m9LaPDxK4SbgRJHXfA6tesnTaFdZR3wEgoLt+p7QEJ7ybleKgrDOqz/zBo0NrTZJ/
	 lzMiXB5pPfAaskYI+e3n5rWkHEPLFg9sqLK/HatajMipRZ0I6eypRDWr+QChG6Mm5T
	 ZZFDy7yUazHbtYzK53IEOg/f7Rp6VoE8q8TqaiPWZuzUuDIUoY6GOyQS4Vl3kxmYQH
	 Gv5rC8trJ95HqzgXck01vIJJV2d8+j62tiqnK87DSdpPLyJaneqU5MfgA5Axybjxnx
	 MEHXE2Qp2w4Laqk17YULkNpyXj9Hbg6BII8r+1Bh+He7vDJCt90X0NUPPfe06HFBAN
	 IypKLbBBnRbug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bms-6CzMNUOB; Wed, 25 Oct 2023 17:44:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47B4C81EE1;
	Wed, 25 Oct 2023 17:44:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47B4C81EE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D438F1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 17:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6D81409E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 17:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6D81409E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vkzQCfrB3niE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 17:44:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3AD604093B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 17:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AD604093B
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="377730061"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="377730061"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 10:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="1090298175"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="1090298175"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 10:44:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 10:44:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 10:44:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 25 Oct 2023 10:44:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 10:44:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gKjRF5w7io/iS4pK4SIxy2Vf0GpvzyzlQWlBO4EOJYt1uKOqJtwEJEA1d5EIv5irdUYzSh7KlYG7xndWPjOF9Pn1UOCNRpSDB0UUqBUDCyYIxfoNQSauN89hOcYEkEs8X9Vk4S2+KIIU7Y/xdfwUCtoJdaTcp1s+YtnYdxmLBcTHf3D2rh1N2BvniIbHBba48MiIQ0lZzdu0CbSnIshvy2ZX1RkHYMyv0tsUM1lTANj5CN6fNCr57srrvrDv/YJBisu3bxAUEbuKPdlach8jorwTLrXT/SLKUDtTAzrkKIEfyetjdihCYDIM3PkDvx9UXzMvMmHgMeIsdmXZ3lG8jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ai8nHKyavG0P4dQYBRpKAkUjGblFrBV/rFJakgn/6+c=;
 b=VUFm4q1kgIqFbfasfO4bInku/U7dfHTl8Dhilr+mxG60VtJODJhjl/LZDdpHk++9fXnB434ccSLnMGGVtgA0HUnmcApHTkOUl9Yi74ZEj2OHid+QJrZBHGlBvhmX81PihYtovBhQVfRW5o6k1unUeTs33bb6FlK2WXXOTWGGR+5yL27fkF+C6NVsOatBlkftKcb5bfJAp2LX9SIbfFpqQ4sL3WvK3XJMv+D1ETYa5UIaHaxKn27LDESV8gxEv7L3lwNRJPZNktfzs33ULsiO4Ejgs/IYHKBmDM2l+Rl1761dcLuahPse0v+HXDPajeIrKugZfzEbOGlxRHcLrddd/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6038.namprd11.prod.outlook.com (2603:10b6:8:75::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.33; Wed, 25 Oct 2023 17:44:08 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1%4]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 17:44:08 +0000
Message-ID: <022960b9-dfd1-4ed8-9b46-9cc11ba060e2@intel.com>
Date: Wed, 25 Oct 2023 10:44:07 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, Wojciech Drewek
 <wojciech.drewek@intel.com>, <netdev@vger.kernel.org>
References: <20231025103315.1149589-1-ivecera@redhat.com>
 <20231025103315.1149589-2-ivecera@redhat.com>
 <8a8f54a8-1a18-4797-a592-b57bc6fc45c1@intel.com>
 <cbb2e9f4-03f8-4a46-99e4-e952bb754a2f@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <cbb2e9f4-03f8-4a46-99e4-e952bb754a2f@redhat.com>
X-ClientProxiedBy: MW4PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:303:b6::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6038:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ca96753-b06b-47e7-39e4-08dbd581fd70
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fv1lqqqQpGY93qS8AXotloe+U2dBk1DXMvzjf6an6OtuH87a6e5B7BKAfmv1DNTImntyDcwBgnfEYVhUGJFq/Lmxuihi5w2/qQTGpyQT/e56QTX4smKjuk63CCGBZRqMTUGfky0uecVbovbkZHJWwLo2LN06yynQgBqLDYhtApTgwI3j7v/kPBcYGdVjNtYhhouQsKBLxiTrP1orRa5kOXnZAgqEyKWdzuj1ChRhiZnnX/bWanHFat3VnUz8Dl3jRGxLcD2RQ72AtwCSgZtJUQOsqhLClWiq1P395AwgQG9WfLtO6HQI2067/ifmnJLs+bsPXfU4/MbWnuPG+rrwObbf3PlaesbIzZf5QVb+FVi9EaG2DEVEWrBlWj6XduQUdvq1QITJ2GYYPeRLxfKClpcdSH7buGLfxxy8ufm8Amm1ckSO9AuYKQs63kEGnK8+2sOoXp/OTo3pRMAP5R66FN6vzTxprz0DIXOJPzNM5gBLoDHxgDkQBnSO68BH3kQmmiOzCgGZxIKPgMeXzwxBrErSq8T99JvQzmFpdmxEIE7/wu+xoOeZBpblqPO/H/2Og+Z95VHKAwrkT90Vj8hlS/aFb8eGvFrszfVDTXOWzM7wlg7lpM/z/uA+uXAb81tPmqjJPfePLhMT3RN7dMMFkw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(6486002)(6512007)(6506007)(53546011)(478600001)(8676002)(4326008)(8936002)(41300700001)(82960400001)(31696002)(86362001)(31686004)(36756003)(2616005)(26005)(38100700002)(83380400001)(54906003)(66946007)(66556008)(66476007)(316002)(5660300002)(110136005)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnMyL1NDTnAwTG1UUnFITE1SSHg0YzZTKzUzVzVDSHgzazFHVjlwd05JQmNj?=
 =?utf-8?B?djFGSVltQWtCZG1NTlNIdVdPbGxpRFMvYzJxaUgzUUxJVmc5MXZLOWdzVkVI?=
 =?utf-8?B?ajg2aWxvenV6dk1VZXNybi9BSGh0ZUVRclpzWmk0UzhFTG1zMmFiUXM3OTNV?=
 =?utf-8?B?M2svYjNWQ1FkZ0ZYM0VkLzBuWVNaWkVUY3plSjFmQzdLTHBGdW1zMmk0T3JU?=
 =?utf-8?B?ZWdWaXkvTFlZUmpGQ09NRzVsRWxLMGx0TmpjcGdwUkZPM2pQNVAvT3YxUGI4?=
 =?utf-8?B?NGJxcDQ0WDBSWW9PR0lEdlkxOEMybzNKS2dwU1Z2VVA0MHBsNi90VEIrVklT?=
 =?utf-8?B?dUVwSUc0eFVQTnBkZWZDUkZnYzZ1bHpFdmh2dVlmdWo2OFJoU0xJS1huaG1y?=
 =?utf-8?B?SU5RSi9YK1NXMnlrSTkzRzlGRzZmWEdrc2MxbTVPRnZ6WkltV2oydm0wMzMz?=
 =?utf-8?B?dnRKUmE2RkJoZGYzTDg5TDhjc2VxZ2YxaFFNY3VzQWVhRGlpT1lvYTlqdW1K?=
 =?utf-8?B?U3NFNHZjNEFCQzRwMGU2a3M5ZFJOSGRVMHpuZmFYSGNNa0ZZVTZYT1kxZEgv?=
 =?utf-8?B?MTlCZGJGREU5VmFBN0ErQnBDZFUzeThQb0d5SXYzZ2JNZzBpckgwcHN5dlNu?=
 =?utf-8?B?MXBlMHJESVFCbXVXbC9BU2xUdm1pbE45cTNENlNiVXRqUHRPc0xueEkyT1Fx?=
 =?utf-8?B?UCs2Y2RwTVdFUFNNNVc0TGVMbXVUQlRvelAzMW5DelNKbGU5V00vbVRrS1FU?=
 =?utf-8?B?ODZKUmZzY0FMNEpHV1NGQk1rdkdtMm8xbjd3ZkpkM0UzSUR1aTVKSGVoT2lZ?=
 =?utf-8?B?NTIyc3loN0d5K2NkVlRTNFZIOEJCVXIyR1pRaFFtZHdFZEQrQ3dzNEdpM3Qr?=
 =?utf-8?B?eTY2ckFiMkxlVkRseVVzZ3dxcDd2S1VuNndsN01rd0VtWXlrWkMrUWlJcExl?=
 =?utf-8?B?aC9oMGdSKzh4RnpsN3BoU0tLb0swRU44c1RKNWZ2a3JrUGZCcVNRK2lXdk1I?=
 =?utf-8?B?a3JnNGIxTmlwZzhSdHlYWlk4emJnOS9CTnYyRm5jYzhGQk9tL1FUU1RPd1pi?=
 =?utf-8?B?ZDVwVkNBTU9iSE0zVzhIWEQ3Mjc1bU1IRm9qeDMyRHIyOWc1WVZlQWpqY0lZ?=
 =?utf-8?B?RExSUUpNSm9kcXA4T0liUXBEeXQwVFFJRW8wT05ENDVhYThMUEo2ekIrK3NG?=
 =?utf-8?B?UEtEMU03M0Q2Y0ljcGZqR0hwVUw5djkxc2JITEFQOXFyMEk0eW1jNzI1R1lD?=
 =?utf-8?B?TkxUNllDM2dDWm9BUndmQ3VZKzV0cEpLOG13bnl2T3BwQ3QrK0J5WFpacWZh?=
 =?utf-8?B?ZS80OHNzdk13bkNxZ2VrTW9MWC9PZ3ZNTjl1eGVSNXdSKzhlRU53RlhtY1Ey?=
 =?utf-8?B?eUZiZ1A3TGgrOFNzZTJvWVZBSGswditWemV6anVueGhpV1krbVMvNTladW9l?=
 =?utf-8?B?NC9aVjZzY1BIVDAzQ0JPZ0x6REtlRi9qZnBVcEpYS2ZtYnZTSG1YeWdUNUkv?=
 =?utf-8?B?TVFVa0RTU2RRTjAvcDd5WVcwZHRzNWRGcVgyZzhmUXE1cEk5R29oY20zZTlr?=
 =?utf-8?B?YkI3K2RTYytvL0JGZStsMVYvejQ3NG5SZlk2Z2lyemNHZ1hVeDVnSU94VEpV?=
 =?utf-8?B?Q0pyUWo2T3RQVHN3Y21qYWd1dVpRczIxL0ZDZ0xyZGpjYTVLU0p4dzV1dkV2?=
 =?utf-8?B?VXNzQzMySTZDenNTWE9OMnlXb0RLc0d4dzd6Yk1qdS9kNmhqQlpGMCt6aHl1?=
 =?utf-8?B?RnZtMTFhTWsvckxmTVJUdmFFQkdEeGpYVWU2MWxqUllqcG1XV2dYenBwVXQr?=
 =?utf-8?B?R25kUXBLOHE3QUNRaCtFYUNORnowbThaYnc2dzVPdlBGOFhveDdZYlFCU0dr?=
 =?utf-8?B?ZmxRNmtCK21GL0pXWTlpWE1GRGJwZlpoekZjTGc1MGZNc2ZadWNzdVl0VThB?=
 =?utf-8?B?VG1qbkpWMWVXeUpWY2RHeFdyc2k5N0xBVnpBUDBsOXZKOFdCMkMwTVJ3STZ4?=
 =?utf-8?B?djlSQ1pYeXFZRlMvOEsya1EwYk1udzJyNFppRlFMYlZwK1ZHai9jNkI2VWNJ?=
 =?utf-8?B?djlidk1XUysvMVdTcDBibEljbkV2YWk1VEpKSGRXWlRseUI2MTZVTnUyNHlG?=
 =?utf-8?B?ckNTSzNPWlNwb3VlUy9jV0RUY2dsZXNPVWJrdGlJVzlJeGVmMDJVOHc1eDlM?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ca96753-b06b-47e7-39e4-08dbd581fd70
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 17:44:08.3665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +3qxKq9e0wSevBC+k/kD6Mya/3WA2Z0uuIJHNxT88ZYJtgu+QhMGzG+Hw/IyfqXeufbgbKCc4GoSg+cVeQqhs8JAfJWkg1OHAhNV5d0B5QA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698255855; x=1729791855;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t16+fRWOJOxyNhsHaAp4Ts+gfVfPJchkKdMWSoRS+Rw=;
 b=gFQI0hoDuhSDBhjK05u0noQCfwWYZGYx8J2/egcH0IzKLy5p3QbfMmLV
 PKM6UtJayBmbmtlXkSSHsY25dYt07ihhESgbdZP48eo9IQmM4ULZbiPAW
 s1LbkCcWkNMD+8LcPgvYUZKqQLm+qGRY+mrgwyiq4+1jCBcbQHvzhjJBC
 g5ZVM6gQ9Q4AtyU7iHUHqpg1EPvGLxa6gctveLLNOElVGe7SWbPCMUBe+
 AAhpQCCYIpzuJZnsVG4T5zGLXvMaysw5JcfDAI+Q3PBk6577gbQJQlTc/
 8osOEzvofuE9E6Pi5FSD3RUHFOJnRyYPxM33qVSotuQmWdcV/d2e7M8pR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gFQI0hoD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: Remove VF MAC types
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/25/2023 7:39 AM, Ivan Vecera wrote:
> 
> 
> On 25. 10. 23 12:48, Wojciech Drewek wrote:
>>
>> On 25.10.2023 12:33, Ivan Vecera wrote:
>>> The i40e_hw.mac.type cannot to be equal to I40E_MAC_VF or
>>> I40E_MAC_X722_VF so remove helper i40e_is_vf(), simplify
>>> i40e_adminq_init_regs() and remove enums for these VF MAC types.
>>>
>>> Signed-off-by: Ivan Vecera<ivecera@redhat.com>
>>> ---
>>>   drivers/net/ethernet/intel/i40e/i40e_adminq.c | 33 ++++++-------------
>>>   drivers/net/ethernet/intel/i40e/i40e_type.h   |  8 -----
>>>   2 files changed, 10 insertions(+), 31 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>> index 29fc46abf690..896c43905309 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>> @@ -17,29 +17,16 @@ static void i40e_resume_aq(struct i40e_hw *hw);
>>>   static void i40e_adminq_init_regs(struct i40e_hw *hw)
>>>   {
>>>   	/* set head and tail registers in our local struct */
>>> -	if (i40e_is_vf(hw)) {
>>> -		hw->aq.asq.tail = I40E_VF_ATQT1;
>>> -		hw->aq.asq.head = I40E_VF_ATQH1;
>>> -		hw->aq.asq.len  = I40E_VF_ATQLEN1;
>>> -		hw->aq.asq.bal  = I40E_VF_ATQBAL1;
>>> -		hw->aq.asq.bah  = I40E_VF_ATQBAH1;
>>> -		hw->aq.arq.tail = I40E_VF_ARQT1;
>>> -		hw->aq.arq.head = I40E_VF_ARQH1;
>>> -		hw->aq.arq.len  = I40E_VF_ARQLEN1;
>>> -		hw->aq.arq.bal  = I40E_VF_ARQBAL1;
>>> -		hw->aq.arq.bah  = I40E_VF_ARQBAH1;
>> What about removing those I40E_VF_* defines?
>> This is their only usage here, right?
> 
> Yes, do you want to remove them in this patch? Or follow-up is sufficient?
> 
> Ivan
> 
> 

I'm fine with a follow up.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
