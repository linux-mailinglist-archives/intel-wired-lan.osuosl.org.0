Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C227EE0C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 13:37:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2264341948;
	Thu, 16 Nov 2023 12:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2264341948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700138258;
	bh=e18jocWJ5nxD3yctwToqWD4dbAMGqO7ITV2JHTVr3rM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jkIejAbm7lY2C4i0KMaF6tUK32GI55GmqJFbHSrtlyX1jxhR6h34EFqqh8gIn+58k
	 R1gweMDHA+GnqZ9MrAmExBMR4KQZYyTukqAlfR5lOddZQ3iywn9P1aolqCKUuHezzO
	 dT7OSnf2m58kexPLcqqJr1oZgpPdaQjEuRP7o+PWhmXfUR3KIIW97K0zqad6eJ1k5Z
	 fajXO0Gnf28s6hfV42jkOuokdtzhJ4auJVbSe09QhBsQMNWnAGuf6SutNxytU8W945
	 Jvp3btcWuNgFrdm9tIrTenoQ8NjGD8TUPMURIxCYAKg4asW0e0bqoCQvSQezZgt/R4
	 JOAFK6Q+ocK4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jdfYA1xkCPBg; Thu, 16 Nov 2023 12:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82C1B40A5C;
	Thu, 16 Nov 2023 12:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82C1B40A5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 635341BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 12:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3401F61072
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 12:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3401F61072
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qoFun65yCzSl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 12:37:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61FCE6106D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 12:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61FCE6106D
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="370437466"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="370437466"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 04:37:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="1096772843"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="1096772843"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 04:37:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 04:37:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 04:37:27 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 04:37:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LxgQg7cgvEwnecyg7569ABan6xSijN9PSPQRxZt6r8Sqsbhp1mH2DTkwq1qxUrWiK+wWAp7YoeECkNLRlDkqoPRk2eJtWCeMvtPFQ/h8QkpW1OCO9wv68d8STJmBHFMJJtwOuoVdo5YdQFIoKFhtdR2k25X5ikI6jjviqbjgO4CFI8us7Y6j3X4LpUTUP7546GU4F7mzntW8zwSAPkuI0T5X/I896QGnyjpoDgURTqpqK+sihNoynrwz2LilWIhS03UYbY658zJwJL+7gEMlvBzkALg1hpR6ESDbbMJzYS2dX3BBHSpcuTQdzwW/Ti3F5kpn5UrtfNwJdFSr4IqYUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TX75N3m5w/aLHtlU5Hxw777ooOex88bFKYI0j/JoRHA=;
 b=m0JpIrm0wsqFi3mwm0MZmhQscUpezGfstrf758ksBMIow7RHZEveTvLO4DxQzxULFqmdA9+dWE/xo+QyPLVFDPSkNerZyxOPS1sygYl8Z2vrkBMNTM6VEBkeKEylRv93SMjvDUOx4NOonaf5ZFEsDYMVQru7asx91DCRF4i9qfrt7WreVxikjvmSPGDuDJCZ5vk3CZcb2SS6u8veMqZtbc5FjLKDmOBISEznW/lwMvW1TKszQOf0bWt/ywTRiobkkbuEtBDdnwxxcHc8aPKOP0lbxD89vFLBvPp1yKT2JcPKvPwxTQWfeTaIDsbN9VIfE7DS/ZA4r5er9ppNvHFo0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MW4PR11MB6571.namprd11.prod.outlook.com (2603:10b6:303:1e2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 12:37:19 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::49fc:ba56:787e:1fb3]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::49fc:ba56:787e:1fb3%7]) with mapi id 15.20.7002.015; Thu, 16 Nov 2023
 12:37:18 +0000
Message-ID: <72250942-17af-4f8d-b11f-ba902fbe2b58@intel.com>
Date: Thu, 16 Nov 2023 13:37:12 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231113125856.346047-1-ivecera@redhat.com>
 <20231113125856.346047-4-ivecera@redhat.com>
 <3c640be7-8f1e-4f9e-8556-3aac92644dec@intel.com>
 <36889885-71c7-46f7-8c21-e5791986ad5a@redhat.com>
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <36889885-71c7-46f7-8c21-e5791986ad5a@redhat.com>
X-ClientProxiedBy: FR4P281CA0379.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f7::11) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|MW4PR11MB6571:EE_
X-MS-Office365-Filtering-Correlation-Id: 57e51bd3-16e7-4da2-875e-08dbe6a0c589
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jKSFS/E5QFfKGkQMFJEWXbxRcux3J4dvySUYX/97pkhmN5lCl84DetdS2ugmdTa/+L/Irxp0ZFAZVi5UqQfCcKCVZaD8ihm/WbCf/kfwNpNo69NQ/B6oCrjk+BGIeZdzAfN5zYGy3AqbpQU6xwd8kQLsI8LLNhHR25pVohKD+6SSvhQzqRQM2IJOl7JbyVWXVhknDzKbij8ti/7d+U80xgmc2k2HzkSmX9EY89M8sgs/pKEmcRZ3hJKygk6xcHwoI2xi16q1xEsSNN64FAw3n9BNP5ujTXYGC2mN1UiXXpjSqi+Nf7Z18JMH25nozMS9M6uu3vxLPWIgV+ymNFC78Z00cT2P1HB1Bhq/XFttIaHuKmKkdj2R0VNskmSXP03J2+biz2cqONKYLW4UBbUPMeP1hOOzrrO/GAVmIFqttGRsBLh10/T8uvQnIMYcmCdEXEef5YD9Dh9HsTv7omUoU9MZNkK0nrck/5lenrMNp3fyDR8Lg9zq76NzJqsDam60JEA78DaNrHxZan7bddECrJS9Umk9D6vDJzx+mTT9OiPiH9Nr1yo3XsCmo8WQMoyZpWynqJULkWt45nwbgxFBbiJDEoigA7klsEV8E3J9XpVeMHEsDeLy1FsVctkztXBwbegebujNHjM9dIHSzmZTJV/KvhWlSYvIk0w9otDRSPk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(366004)(136003)(39860400002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(54906003)(6512007)(36756003)(316002)(66946007)(66556008)(66476007)(26005)(2616005)(6486002)(478600001)(6506007)(53546011)(6666004)(31696002)(7416002)(5660300002)(86362001)(82960400001)(38100700002)(31686004)(2906002)(83380400001)(41300700001)(8676002)(8936002)(44832011)(4326008)(37363002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2hYbkdmVWVpenB3SkRhUlNqYjFrN3pVRWxsNXVTOWxPYlVrN0F2YTZpbVAx?=
 =?utf-8?B?K0t5MGpKbWg3VUdaK2EyY0t6dnJsVjVsSzJJQ1g0VHFBQ2F3cWlVUzRVV0pT?=
 =?utf-8?B?bjY1RTBHSDVndTBQMnE5YWJ4ZDZqY0JURGIrakpNTFZqY2lQL3drWDRRUFE0?=
 =?utf-8?B?ZTRVWldFSXVMbGI4V1BnSDFNUDYzVFFmbDJIK1J4U0ZiTXFuRkowWTkyUnY0?=
 =?utf-8?B?TTZic001WjU1NExrRFF3eWhNaVBGc1NJeVZQRUY5UXZKNnJpdVBPNDZoMEsw?=
 =?utf-8?B?WVdlN013eHdnQzFnUC9rM29kVEx3MWxvZk9JWTVQU0twYTg3VHVGa3hGeE0w?=
 =?utf-8?B?eHI4NTFSb0Z6ZkZJSVIrMEhmNU9yZFdja1czUFh5UVU0L0VJeWFsV0ZBR0Q4?=
 =?utf-8?B?ektEV0trQXM2bVREbTZVWnNKSTRqckU1MDJxbUozdDE4bWYzNURYazVOK3lR?=
 =?utf-8?B?RmVweXFMWS9pK01uS3AvdE8wNXRMRkJNZUpKVU9ad0VSaFhpMUlFM3hma1Ja?=
 =?utf-8?B?elZ1ZkR2UGREd0lrSG9KMWY4amZQNVBYV1l1WEUzZWhTVUZ5TGpHM0NBajR5?=
 =?utf-8?B?S1V1MFZrTkpESnNVODJUemprRjlCWTczcVRWOWZhRHhNSzROSVNxc3JxbFJV?=
 =?utf-8?B?NE9sdUlpVGEvczV0NUpra2hzZjV3UmZUbGtxT2VGZjJDUUxVNmxWMHVRUW5E?=
 =?utf-8?B?SHlLU2FjYkc1VTRiMXZiZGlyeDlEU3hBY0JQb3pVYysxS0IzeUQ4dDNiTHhJ?=
 =?utf-8?B?VGpaUzZ6TlBwYlpaM0srUGp1SFYvdFc0ay9XenJjdWlTbElKbVFxWm1xTmkv?=
 =?utf-8?B?a29DTnpOMFNoSDQ5UTdzQWpsWkk1OTlVUy8xK0hGbFB5c1pSZ3VnTHBiUUdy?=
 =?utf-8?B?dTJiQzVvQ09SOUVudnJUc1lIdjNrRitKQmRwWXY5OHVDWC90Y1Fpci96OVZB?=
 =?utf-8?B?MVU2K2xZbllHUU9pei9NMzFITHh6OW5xaVBQcEw3Q0JWYW1HNVg4Q3A0VFF0?=
 =?utf-8?B?OFEyUXN1aE40NHBxa3IvWnJyQk45ZWNINjh4ZW50U1VVRTI3Z3pRenlTdzlu?=
 =?utf-8?B?blpDeEhTL2gzR0RDV3lBLzJWMkdKdnErM1hZdGszYldDQ1BBSVZEdWZ6WFFD?=
 =?utf-8?B?VG8yRnE0ajBuNGxTbzRkRmZIWnhsYWViMzByWllHVmdSaHdKdjJlTG9EV0h6?=
 =?utf-8?B?TU1vbUhYWHJxd0F5c0xScVp0Q1ZoS2pXRXNwR1hFUmVBaUlXbDdUM2lSbUpL?=
 =?utf-8?B?eGdjV1FhYmw3VGJDcEtwS0JnTE1xYnloc1hMVFF4ZWh5SWUrTnhEdTRYS2FG?=
 =?utf-8?B?Y2lad3Jpb3VlU2R5N1hSZlU4NHZ2ejNMSyt4dnJERHJkV3AyYlBycmJYOHcx?=
 =?utf-8?B?YkFEM2pySWxRc0hCemhqQTdlN0NyN3Byd2RCWk80ajU1Mm1WYzlhME44dEI3?=
 =?utf-8?B?OFg4ajdFV2krcjd1SlRkbUdxdTlhNWJXSW1TSFRGdGE2QWdqVm5BcUE4a2JD?=
 =?utf-8?B?cGJKLzQrNVdPcURkeFJEVTlzWFRaNHJDdE43QTArcHZMZ1VvTCt1NFdGOEpU?=
 =?utf-8?B?eGowUkxoTXZ2a0FkM3BVcWJuN1B3Vms4dmNIMGJ2Wk4yY0lXajdYVGllUzQ5?=
 =?utf-8?B?czQ1bDRMcS9qSzNMamZwVEkvdEpBQnRJcVhIWWJDVnBxQVJaVUMyNDJuVE9r?=
 =?utf-8?B?cGJYQi91UmNtUFVuc3JLL25xeWJXMVh6MVgzWit4NWlBMkI4UGJsbUFhcXc0?=
 =?utf-8?B?TVdHWEtnOUIrU2wvTk90SVhKUFhFbmFYTVRtYjBTc1lqQzNtYnZhNTA3Ritw?=
 =?utf-8?B?SFp3d0I3Q0hXWGF5RG85eDJtMFIyV0UvVStSN0ZOWlNMcGtaRXMwL3M0MUxZ?=
 =?utf-8?B?K1hBVlkxai9WYjZIK0s4c2RkUjdsRlJRM3dNRTNUNzFqc1pOUnZlWEhieXJz?=
 =?utf-8?B?aEpSdHNJVUkzenV2Vmd0YitUaTR5OWQzVW5STEZ6R3EwQW1ZK0pJRi92eTVw?=
 =?utf-8?B?a3lodG9KR3lpMTkzdGVkaWFqY1ZrS1RDNm9DcU1Vbm1jcHZHTmpHWk13eHdR?=
 =?utf-8?B?UHZyWVJRK2RzcCs5Y1dLL0FBQnQvekl1NGRDU3QyYkxxemFMbm5oWlZxTHF0?=
 =?utf-8?B?LzJWR3ZHdGpmV2NWSUpId1Y3aWxoSThEZkZVRE5mMHJrcVZoS2lSb0lzL3Js?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57e51bd3-16e7-4da2-875e-08dbe6a0c589
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 12:37:18.8882 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /BurzLGhDLg65QyP3u6PgSJp8N5YmVVRCPHYCIq2pZJizonYXWG3IgH6LuCrV2rLXEsKlCMIAMJnSpl/ewIg/cHPCOUx9BxKDXLvRXwHagM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700138249; x=1731674249;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fFBogTCyM70rwCUlyLHT9DRWuq/T0uQW+pogtaY4H74=;
 b=nphFD6l+IWHU9S0JgNdI3xbrEvavyDgbq54QqHlhgkxPev/dBESORKc3
 3MLnYySNEGTYtxME8KUbovnoT79fOhZliSrZ2lE/9AzcCyf/dwB9OlMX0
 08QI6WmCaUvppb6T5Tt+8ySr3b6IHr6LxctYL83erwvdHAcMRR3kixDVR
 T5hcdyAqZD8FOirGsJjh+XiPnVhI7unCt82o0YBg9k63qImxtAz5Fv0Bv
 2oCBFPy1IAP9T/it83/WpdtnjZa6hdp3TQvHgp30e/KsUzAV4SHr4VjXa
 m1FnqcV3ioq6PCStSP2Udz8H9Qk1PuaNzNXlb4ADThYFFzJjxopAI+bfL
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nphFD6l+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] i40e: Add helpers to
 find VSI and VEB by SEID and use them
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
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxNS4xMS4yMDIzIDE4OjAxLCBJdmFuIFZlY2VyYSB3cm90ZToKPiAKPiBPbiAxMy4gMTEu
IDIzIDE0OjI3LCBXb2pjaWVjaCBEcmV3ZWsgd3JvdGU6Cj4+Cj4+IE9uIDEzLjExLjIwMjMgMTM6
NTgsIEl2YW4gVmVjZXJhIHdyb3RlOgo+Pj4gQWRkIHR3byBoZWxwZXJzIGk0MGVfKHZlYnx2c2kp
X2dldF9ieV9zZWlkKCkgdG8gZmluZCBjb3JyZXNwb25kaW5nCj4+PiBWRUIgb3IgVlNJIGJ5IHRo
ZWlyIFNFSUQgdmFsdWUgYW5kIHVzZSB0aGVzZSBoZWxwZXJzIHRvIHJlcGxhY2UKPj4+IGV4aXN0
aW5nIG9wZW4tY29kZWQgbG9vcHMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSXZhbiBWZWNlcmE8
aXZlY2VyYUByZWRoYXQuY29tPgo+Pj4gLS0tCj4+IE9ubHkgb25lIG5pdAo+PiBSZXZpZXdlZC1i
eTogV29qY2llY2ggRHJld2VrPHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+Cj4+Cj4+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaMKgwqDCoMKgwqDCoMKgIHwgMzQg
KysrKysrKysrCj4+PiDCoCAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2Zz
LmPCoMKgwqAgfCAzOCArKy0tLS0tLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfbWFpbi5jwqDCoCB8IDc2ICsrKysrKy0tLS0tLS0tLS0tLS0KPj4+IMKgIDMg
ZmlsZXMgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgODQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgKPj4+IGluZGV4IDFlOTI2NmRlMjcw
Yi4uMjIwYjVjZTMxNTE5IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlLmgKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZS5oCj4+PiBAQCAtMTM2MCw0ICsxMzYwLDM4IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGk0
MGVfcGYgKmk0MGVfaHdfdG9fcGYoc3RydWN0IGk0MGVfaHcgKmh3KQo+Pj4gwqAgwqAgc3RydWN0
IGRldmljZSAqaTQwZV9od190b19kZXYoc3RydWN0IGk0MGVfaHcgKmh3KTsKPj4+IMKgICsvKioK
Pj4+ICsgKiBpNDBlX3ZzaV9nZXRfYnlfc2VpZCAtIGZpbmQgVlNJIGJ5IFNFSUQKPj4+ICsgKiBA
cGY6IHBvaW50ZXIgdG8gYSBQRgo+Pj4gKyAqKi8KPj4+ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBp
NDBlX3ZzaSAqCj4+PiAraTQwZV92c2lfZ2V0X2J5X3NlaWQoc3RydWN0IGk0MGVfcGYgKnBmLCB1
MTYgc2VpZCkKPj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBpNDBlX3ZzaSAqdnNpOwo+Pj4gK8Kg
wqDCoCBpbnQgaTsKPj4+ICsKPj4+ICvCoMKgwqAgaTQwZV9wZl9mb3JfZWFjaF92c2kocGYsIGks
IHZzaSkKPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodnNpLT5zZWlkID09IHNlaWQpCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdnNpOwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4g
TlVMTDsKPj4+ICt9Cj4+PiArCj4+PiArLyoqCj4+PiArICogaTQwZV92ZWJfZ2V0X2J5X3NlaWQg
LSBmaW5kIFZFQiBieSBTRUlECj4+PiArICogQHBmOiBwb2ludGVyIHRvIGEgUEYKPj4+ICsgKiov
Cj4+PiArc3RhdGljIGlubGluZSBzdHJ1Y3QgaTQwZV92ZWIgKgo+Pj4gK2k0MGVfdmViX2dldF9i
eV9zZWlkKHN0cnVjdCBpNDBlX3BmICpwZiwgdTE2IHNlaWQpCj4+PiArewo+Pj4gK8KgwqDCoCBz
dHJ1Y3QgaTQwZV92ZWIgKnZlYjsKPj4+ICvCoMKgwqAgaW50IGk7Cj4+PiArCj4+PiArwqDCoMKg
IGk0MGVfcGZfZm9yX2VhY2hfdmViKHBmLCBpLCB2ZWIpCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KHZlYi0+c2VpZCA9PSBzZWlkKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHZl
YjsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIE5VTEw7Cj4+PiArfQo+PiBJIHdvdWxkIHByZWZl
ciBpNDBlX2dldF97dmVifHZzaX1fYnlfc2VpZCBidXQgaXQncyBteSBvcGluaW9uLgo+IAo+IEkn
ZCByYXRoZXIgdXNlIGk0MGVfcGZfIHByZWZpeC4uLgo+IAo+IFdoYXQgYWJvdXQgaTQwZV9wZl9n
ZXRfdnNpX2J5X3NlaWQoKSBhbmQgaTQwZV9wZl9nZXRfdmViX2J5X3NlaWQoKSA/CgpTb3VuZHMg
Z29vZCwgbXkgcG9pbnQgd2FzIHRoYXQgSSBwcmVmZXIgdG8gaGF2ZSAiZ2V0IiBiZWZvcmUgInt2
ZWJ8dnNpfSIKCj4gCj4gSXZhbgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
