Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 039C47FA205
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 15:09:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CB224056E;
	Mon, 27 Nov 2023 14:09:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CB224056E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701094141;
	bh=nWjxp7o7styjV+EuwpIC5I29hHEzDHw0yRcdWg+760Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TZmxvPLF+tawkbnLEVIvk+pQ4Ngrwj/TBdkLQqgT0pyGRLuzkWXYoptyny84BuOf8
	 XPYHmXWdfAwh5asm0WcKRqMQJGbUjEJ0v1QB5Jo9PWhletT5+hsfE+BAjWJfzhdF5x
	 pX4VsPw7PxQLdf39vxSAx06XEWvFrZ4anVukxLrLUy0ebOnlgaeXFB23d/zZ7e3DcM
	 AYBKSd1+HY8MY0jBHo8EABdJSpKEi0s1ThmheAKDSrWtN/mPuibwmU2XU8JK8KhOZz
	 yH4zLgHLKR1+dKs/EscvD58jqX2/vDEmzVEVKSmwyvLm6P2ELwSfP3gIWDFqDTzBh8
	 FTTo8OJDJ5PUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kJH8xJ1JQXPb; Mon, 27 Nov 2023 14:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03AFC40562;
	Mon, 27 Nov 2023 14:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03AFC40562
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F185C1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D51E240232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D51E240232
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zgn7I8gfmnfw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 14:08:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE05B40206
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE05B40206
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="391587216"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="391587216"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:08:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="16297284"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 06:08:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 06:08:38 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 06:08:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 06:08:37 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 06:08:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3gKloD2udnFh9xyMNtfs+d/SdordmgCuF9Br55BodTp0zb0gkWnWu9fqZqb2XNrO2FLFKEae+Us0NRyGCEoT69qtAK8jCL7K6rTvOCrmxrrWD+zcJW8g/dE29d98QV8+0XnNfBZXhQFrPNEzGL50tsm1eY/KYJ6oFk1nhhFx9sIL9LMxQCRFcP+cOotyHcXNgIw5gwhXE0zdAG9oewQj8S66/ssycgBU0/WZRQEQBnWhvRFMMQ7yno4teitvBd5GZUmdu8BXWcxqp+GIV4pVvow1KAVfFfzo6z8l97fofYtTDKir+9JLgLr4YP7/Te/jUaDZTG74NowkabYc0jVOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwlE/ORpTc1Grdkfh61Dxagc8D5P5tWpuW1ImBs31ZI=;
 b=h1IS+5i4nZt86cIB5Oc+6LvBFro1XWZ0gAJWvqsgSZN3VP3qnw+h2YzmFq+rvqaF8JoBidUtuG7/aLLP73MRQnYy4ZrzR1VB3SvtG/PQN1P6auJz3JGgDHx4KucilgYZSS/RpUqLvEjS9kLyJxc1daTkqKat7R6Tb1mNG0oVItSC+gevh8Rlc4zwgZ0RjQhs9gdsnb8AXzBRT4RiPnikw6X4TZpWarYKZnCVVHURfu/BxrMihfJ6aQ5v9pho8+H+mAdzRFJTRGEhb5ZkHQjCN29WgpHgKaE8d8EyqmDXM0dRdXFlaxycyiPxxR4UVLwNcqRuc82aa0IpUiPYqa3TGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CO6PR11MB5570.namprd11.prod.outlook.com (2603:10b6:303:138::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.28; Mon, 27 Nov
 2023 14:08:36 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 14:08:35 +0000
Message-ID: <5e6859d3-d3e7-44c1-acee-2c4ec568615d@intel.com>
Date: Mon, 27 Nov 2023 15:08:07 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yunsheng Lin <linyunsheng@huawei.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-2-aleksander.lobakin@intel.com>
 <9902d1c4-5e51-551a-3b66-c078c217c5ad@huawei.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <9902d1c4-5e51-551a-3b66-c078c217c5ad@huawei.com>
X-ClientProxiedBy: SN6PR2101CA0023.namprd21.prod.outlook.com
 (2603:10b6:805:106::33) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CO6PR11MB5570:EE_
X-MS-Office365-Filtering-Correlation-Id: dd4d57c9-b2ec-4d14-cd18-08dbef525891
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ISdKQiBszRMsX8rdbNZLmQYSZ5xOQ2ovnVAJWKNm++oTfXAxEyQnOYcjB+IcOlPMmmxGrjZgsUcxKbX1/xlu2lCXviVl40qIokfox3Nza/44u7UQTjo8K8PSDin6ew2jBMDcalsK1TJgwEiKyxdX56pH6zFfE+aYL1Kmpss5qF+V/Xrj08EcDDFY33p8N3NphNFOuZj8KbbDxOtKQGJhwUDQRSopsjC9/KTWF1cE1/pcTA1lBGJfLhSWrWLqDG++ZJovFQoHEEw1Q6UAjtecbh3qHuznvKYqtZplA3A7bClVlL66Q+kGIDoZFNLEksPz+03Xinc4iEtngcsCY6k94cS8uxTDwHrLp9J9n85xG+la8EtObnv30DEMQq2p4BUS2FNuRhi0hTeewu6TW2vwTUEYGKe22EYOOeWZ0VtJ3KiG4FSEeYAftkPJ/51YjTl1FgIVRt2FEUVvzISD+l5wATAiT593C06zIPyv3SfiYzAInQtsR8aVlT65rwOQFvirjvjdAHVo8NYqMH3q3aArQNSKIKYo4xiWFY2cFk3LGYcnnpHjySoKCX5r8sLY2U0wkKHoLYrPCjZiI5JFIuuBf74GbBMlFtVLCjNRyvTA+oH9E0yCi9Ck3ZhNkypa206rMpT4lpxusdfViNJPmwjGQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(376002)(346002)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(6666004)(4326008)(31696002)(8936002)(8676002)(6512007)(53546011)(6506007)(6916009)(54906003)(66946007)(66556008)(66476007)(316002)(6486002)(478600001)(36756003)(38100700002)(41300700001)(31686004)(86362001)(26005)(2906002)(2616005)(83380400001)(5660300002)(82960400001)(7416002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bG04Si9TdUZhVjZua1hXanNpdG9ZL2ROaThxUVNnQlJhVmlUQkNXVE83aXEv?=
 =?utf-8?B?a3I2UjFhMHNDSTFFYnY5ZnAxZHhCUFo0dDVHVVFldWdCMHN3NUw1MG80T3hD?=
 =?utf-8?B?cE9RSmlxTlM0R09kM2w1YlFUblNlUWFLeFlkV1hITWk1OHJ0RmpvZDQ2QXlX?=
 =?utf-8?B?eXNFMUcxNHpJNGJERzg0OGpkT2k0U2l3T3RsV3hZcUs0SWxQV2o1ZTVLbHAr?=
 =?utf-8?B?dXpVSzFhbitqcERRbFpNOVBoUFNTSFo0ZW1leTk2Z09pWG1OZlhlRjFPZkJH?=
 =?utf-8?B?Y25SV0lsWHdKcnc3MUxPT3V4ZDNnK0ZRQmJXVUFRNDBFdVJ3UkZ2NnJUS3Vk?=
 =?utf-8?B?T3E0VUs3SUhITWVCaytyNGMzdlNkaVRwZHYrRkljSno2UlgrR1NRampNYStW?=
 =?utf-8?B?dHJ1TFVKR1dzMkt2UEdnQXdpNkR0d0I1dlZWdkxTVE4xbWxGVzZRNW85VE1u?=
 =?utf-8?B?TFVxWmlXK0hvUjBUdnBlZXdBTTBvZTF5eGNJWFpmR0NrN1Q3eGwrQm81MEdu?=
 =?utf-8?B?ZThPdVVjY2Z4MVcrUzI1eldBTFlzOTlDek5TdVNVb01NK1hkTnRqL3BjVktK?=
 =?utf-8?B?ck91WUlOMTFnYTgwc1c5dGlON3Y3aXFyUlVjYnc3VGhhaXNmZyt2ZUFsSlJ4?=
 =?utf-8?B?NjJKZHkyVFRQL2hxczBCYTJDSm45elcxc3NzZDR6NlFlOHRpRXBLK2xBaUg2?=
 =?utf-8?B?c2ZyVlI4TjNjcGNVSE9xS2h6ejlvOGJONmVtamUraVZMbGczMXJXV2Vjb3VD?=
 =?utf-8?B?dStuT3YxUXFQS2VSaGVqRjMxVE8xZzIxQm1UUlQwZUsyU05nZVdaOUhOOGZJ?=
 =?utf-8?B?cEtkQ2lmOFNlZFQyVzJxV29ZTHNDVmNFczlpNjNDWGZDc0U3eDNpMkd6Y1k0?=
 =?utf-8?B?ckpZZlEzbzFlcmdxS1owVm9WekVPbFFIbHZrcU5QVjBpTVBydERhbXJGbFJO?=
 =?utf-8?B?dGtCdk51cU41KzBSUmZNWWNGdXdycVNHc0RwdzRjZ3lUdEowWldTUDVyeWVq?=
 =?utf-8?B?dzd1citIM1VvTzRCZ0pONmd4eTRJbHNjYXBPVGZsSkdINlk0N0xRUXRONHhO?=
 =?utf-8?B?a0dJeVZGU0xBeEswNjlOQTJ2M25HN2dtclpSUG9EanhpbVpLUU44NGZTbDUz?=
 =?utf-8?B?NXJQcTF2VTRNL0lScTJXaXNNVzB3WHRkR2g0WHBxb2hBN3JzcjNHdGdWUHRO?=
 =?utf-8?B?d1ZEMU8wSjNxamVqVGRqZXIvamtVVVNvMUkyWGNJdXlVNUd2NmdQSEhTc2Fy?=
 =?utf-8?B?KzE5amdXeHk5TGJnMFphbDJiaCtra2U3UmV2dkxNQytoSmx6aVE5VzgwMVRr?=
 =?utf-8?B?VjFEbnpZRncwWGdMZHdNd2FjTmdpLzh1Mld0alZBMlB0b0FKUmVIYUM1S1gx?=
 =?utf-8?B?VytheitNV0NLdmxKOFFGaFF1Wlp2Rm5GQU1XbU5GU3VsMVdRZldEV3dBaFRG?=
 =?utf-8?B?T1h1VFN1bDZvL2xiRHl1azVxSldIc0FCWWFHYzloSkJFOHZrMEYvTmJuMjcr?=
 =?utf-8?B?UmlIeFRuTGNiMmhNQ2pOOFhZUVg1VjZQOE9Zdjc0MnFtUGdkRStQWjlPRDhj?=
 =?utf-8?B?S2U4T0RtU0dzY2c3NmlxbGNHNUZic3R2NXBiN0hPTENpV3BhcUdGTmVJVDgy?=
 =?utf-8?B?M3p3K3M0K1kvL1RxRG42RVl3NkNvWDNnWk4zZitIblFhVUpabHpMTUlwa0Ev?=
 =?utf-8?B?dFhiQlYxUzNrRkRSRDlyUFRpdUNjMVphT0hPVTZySERSalo0MTM1UENSdnFN?=
 =?utf-8?B?ZnNxSlVQODlWS1lHdzNhRUhZakJ4aU11VnZzNXdXbmgrS3hMUzk1TnE0akVH?=
 =?utf-8?B?SzV1blBuYnh3SjZmNVVHSGZpTldHb0l2NHFzQWpyWjBFVWFDK3lLYldwQ1Ix?=
 =?utf-8?B?dlViY2xTdjdQNDFXdlVrdkd6RExEaTNyVU5EWGVGUXpUZjFMUk84SU54cmdl?=
 =?utf-8?B?ZlZ4L3NwcGpMdHdtZ21uUGp3dmlKT2hZdVV4ME8wZHo1VkpMenA5S3ZvQ1Mz?=
 =?utf-8?B?aGMyQTVvSWJpU0k4a3hHOTlvL0RFRUJITXBZc2EwdFV2ZWpaeU5HQnY0Zitn?=
 =?utf-8?B?RXlwQVU4bnpaUWU5NzNicmFKYldoaTZRc0RXNlZWZjFMTkRVV29oc0h4WmRT?=
 =?utf-8?B?b3JoZkpCbit4UlFQS2drSldkTmE0ZGx3WVgyM2REOHkrZWFqTTVjUVdZTzVl?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd4d57c9-b2ec-4d14-cd18-08dbef525891
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 14:08:35.7464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g6fm9WiaZnO6D9/oxdl21trncAURBFH/O8L69yXfETkw8xBZBSUb22Tge6jNyuw+EJx7tP/DjbsC/TKLtJBtMs+l63dwaO5F0p3DS93tv0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701094133; x=1732630133;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TvUtAm8rJxJMc5YnCuAFzmHJYOcg1xCB0fCtJzI1TwA=;
 b=ZGR/Gf7M99bzv+Kw5zZMqayjaHfEf7H2SfYgpj0QFNbbJtKCM5NRslWS
 XX+yX2sLPu0T8Q3jix7EYU8pbDfWDeimAFheq8rtqQafqQG8IW8L1cwg+
 1dMlPk7YmclYEFr2ZAwa6N8hBjBsa6/XI7ckXTcEw/CuVeV9OYofmoy4a
 Sm5HsFn8YAUd5d9JBLun5yqOFilliprZDg2AgYdfeNC/szgZFimIdHMkm
 fAz+44Rb34DBNSLotCl2XMjPK/Ni6v1LsdArLwfXTv21imaajSbx8YdaM
 zlMtRkhzNa4LV6GLuJ9hlv8bJoOUv6TzjZ5+8t1Ch+4ESWNL4TmWv4G1X
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZGR/Gf7M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/14] page_pool: make
 sure frag API fields don't span between cachelines
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yunsheng Lin <linyunsheng@huawei.com>
Date: Sat, 25 Nov 2023 20:29:22 +0800

> On 2023/11/24 23:47, Alexander Lobakin wrote:
>> After commit 5027ec19f104 ("net: page_pool: split the page_pool_params
>> into fast and slow") that made &page_pool contain only "hot" params at
>> the start, cacheline boundary chops frag API fields group in the middle
>> again.
>> To not bother with this each time fast params get expanded or shrunk,
>> let's just align them to `4 * sizeof(long)`, the closest upper pow-2 to
>> their actual size (2 longs + 2 ints). This ensures 16-byte alignment for
>> the 32-bit architectures and 32-byte alignment for the 64-bit ones,
>> excluding unnecessary false-sharing.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>  include/net/page_pool/types.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
>> index e1bb92c192de..989d07b831fc 100644
>> --- a/include/net/page_pool/types.h
>> +++ b/include/net/page_pool/types.h
>> @@ -127,7 +127,7 @@ struct page_pool {
>>  
>>  	bool has_init_callback;
> 
> It seems odd to have only a slow field between tow fast
> field group, isn't it better to move it to the end of
> page_pool or where is more appropriate?

1. There will be more in the subsequent patches.
2. ::has_init_callback happens each new page allocation, it's not slow.
   Jakub did put it here for purpose.

> 
>>  
>> -	long frag_users;
>> +	long frag_users __aligned(4 * sizeof(long));
> 
> If we need that, why not just use '____cacheline_aligned_in_smp'?

It can be an overkill. We don't need a full cacheline, but only these
fields to stay within one, no matter whether they are in the beginning
of it or at the end.

> 
>>  	struct page *frag_page;
>>  	unsigned int frag_offset;
>>  	u32 pages_state_hold_cnt;
>>

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
