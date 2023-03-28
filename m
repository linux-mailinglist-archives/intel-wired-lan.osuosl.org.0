Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 789EF6CCD4B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 00:36:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0892B60EC6;
	Tue, 28 Mar 2023 22:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0892B60EC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680042993;
	bh=8AvEA0pd4fHVlAjP7a45viylntgnL7vyDECPPy4Ukng=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BGowSzDlrdGSIQioswTZO+81ODt0vkHnBX6LxWTdnYVLFZudPqo9T1oSNMRHjdczG
	 G4XfQ0hnpRlTdI5Ylbl3S8nZgN9Y4A4gltw8gIccLpE8Msgzwx3CJkrC0HboGxIlmc
	 EYnXZvCmE2ASX6iW7mWI3CyEjNHuW6nDKrFTSSRrkNuJzUTYxL+vvELrupL10gg9de
	 GkozK8GyubNFm1QidaUdagZtxG00YVV1XS0SEii0Wo2fDpjD60KSr2WX7SgLkIgh+i
	 SO62LRCx7j6ul3wYnsFYZ1N3WuoocagIeJy0M+gKIlfKDIAmprWPduG5FNtNHXaaPL
	 sPe8aFRv/iPzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57IpAV6fBhrV; Tue, 28 Mar 2023 22:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8EBB60E43;
	Tue, 28 Mar 2023 22:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8EBB60E43
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD35C1BF392
 for <intel-wired-lan@osuosl.org>; Tue, 28 Mar 2023 22:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B46F83EF3
 for <intel-wired-lan@osuosl.org>; Tue, 28 Mar 2023 22:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B46F83EF3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xJ2LDGunq95c for <intel-wired-lan@osuosl.org>;
 Tue, 28 Mar 2023 22:36:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67B7D83EE2
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67B7D83EE2
 for <intel-wired-lan@osuosl.org>; Tue, 28 Mar 2023 22:36:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="405654221"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="405654221"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 15:36:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="827648531"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="827648531"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 28 Mar 2023 15:36:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 15:36:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 15:36:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 15:36:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=URO19QlWdxzWezP9dMZeDJVj3fQxkkCf3HFOTWCjIbE5hMC1jeveIEYsqHKg9w49akFwnhZTmTjjW4GMgNgDyhDca7JuFmlbxwI1I8GHPkBLaCakPltS5AQMwTnWFBW1UMGke/pHmT6HhgDPDPSkwn6QiYyXehyq2n9cdlQmKGIs725oOUCmD4p0UDvnC2YDLoUMZqro6lF1lz8vp0972HUdnMLZrprUhwVodsVmMMCQaWvE8nmUr0z7o8ZCiIanZjqDsBBEpz7GsRjmYacTzgMJhU3pm8TTp5mUw3BAV1xuoltuhPLRFOFDUtFiMdsjDdEAr5ukHU856/sxFuL6aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nyuoeBBeaPeieBvNUm3pExFtVs732nYafT+Y+u3tV5M=;
 b=EAyF+jFibE0l0bWM6jnBICKTDgGkj1nj9q2XrgWeHNiPphTRxgLrRoJHh375mLA11QXk4I8DHaSBsaQg9XhBG41xxSW5XErWMih1PEdgwtd2754G03cP2SRDbkx/L5lvIasMqg6X8cDM04efhC5b/bJkwEmO6XgMn10qS4Mr5J/7K+lkoFNw2klLePfCpMjQvf0tKQEgGVxttzjuVmnPT1BsMtUgu2tOZ91Ikd5a181pChJj4beCOlWHOQBRk0KmFttFk9T9fbSIKQb38EaRu7WyYOIQVFibPV8tiKzoQj5YK6Rs43i5mPc6vA+Vg9Qv8xYaIWT1A9naiIdCGzmZqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW4PR11MB5870.namprd11.prod.outlook.com (2603:10b6:303:187::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Tue, 28 Mar
 2023 22:36:10 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6222.030; Tue, 28 Mar 2023
 22:36:10 +0000
Message-ID: <c240a513-ac0b-d5e8-6912-a87ebf6c498b@intel.com>
Date: Tue, 28 Mar 2023 15:36:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <mailman.20365.1680016409.50374.intel-wired-lan@osuosl.org>
 <SJ1PR11MB6180193A19142B25543200CFB8889@SJ1PR11MB6180.namprd11.prod.outlook.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <SJ1PR11MB6180193A19142B25543200CFB8889@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR01CA0060.prod.exchangelabs.com (2603:10b6:a03:94::37)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW4PR11MB5870:EE_
X-MS-Office365-Filtering-Correlation-Id: e84fc4a5-f45b-4614-d03e-08db2fdcd3fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O3ZI1IKFcOAQAstofeJKSh1/J+vjra64XbMlwgcgXgE1rxa/bu/5Ay/2vTiYvYaQ7YAeYBKi5ql9JxplaYcdR6df7AL+vhuEHc32GnV7JqL5KJXVJEeElFy+xdcVUr/dfOZuk5uLmCznzLFYMT/zeofcwrVgvqPmAjMDddDL0DPeDxl6PKkSs/YMJC17Ub4dvx86rBJK6/2CyMfNeNwlMZUXbH2J3bdU4oqa3mZjc57g/BOA4inddhemV4vOnTXBHafxG/fOPSmZoej+yRNQLCGcSlaJD0NVE9eo8oSKy46FI7RHL33MfIvWizvC9d/krppNIQmbzQpHCQJA5avaopbGZCBRWFX5ERvT2+7ZN41X3XwZKvlmL9s8zv/z2r5ypI7aamEwPpBXFAtIswK53gQaL059wEGbOVc6/gx/Y1Z0Ui6NQsZk0BQE2lULit90Ue4kjSUQTjFZ/isq33VRVHweBzphJGeejnvR4ndd+oyW0vHSCLHZl32zXobT67Y/2LEXMxwIZwmQ0nLtDnqnboEG1DfaQ/7ZKIMW/XwyBD9cgjpPKn7641TMMqCJ3nnot6jHze3aAtnkVwoZM+grF4Yl5qMOcIvFsr/EeINHueCQych5hRVSw9yy/BnYr6o3igXH/Ax6jayJMWzzq2xqmw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199021)(66556008)(66476007)(5660300002)(66946007)(53546011)(4744005)(6512007)(2906002)(31686004)(8676002)(6666004)(82960400001)(41300700001)(2616005)(38100700002)(31696002)(478600001)(36756003)(6486002)(186003)(26005)(6506007)(316002)(110136005)(86362001)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0gybTAxRTc0WWNGTWpYVmRpRVZQZUZ5K25TMEY2Q3hNVC9BWkZqR29xcmpX?=
 =?utf-8?B?TnBEaUxaVUtEMXNibDE3VEJRMW1TRHlCaGV6SERzUko5WkRPWHppWDk1TE5w?=
 =?utf-8?B?NTMyVnJpNHVyd051czVxR3o5M3FrNWRXWXdlaExVVTB1NkZYQU5VSXNhaXI5?=
 =?utf-8?B?TFU1NUxXOURWbUx3Y0xKNi9Tc0c0TTdIOGlTNEJQZ2FEZDlGTlVMOGFGbkVP?=
 =?utf-8?B?eU5PVmlXbGhxOWd1cEg1QzdPblZBQ2Z4dWJGTUZvYmlxdldvcXN5ZE54dXpz?=
 =?utf-8?B?YURGNDBOem05MzlpQ0hOc0xkOUMxUHpOeWlJbGNUTVo5MkxOaG1hbTBCc1ZQ?=
 =?utf-8?B?Z3BZd3NOL3V2dXFxT3REdy9sVnlDbGU4UisyYTU4aWFTUVRXZk5Bb1lUQVhW?=
 =?utf-8?B?UG03WGVjSE12VWdHQ2FMQWJqd2pqUVNOMlMxM1BSM3c1TmxBMlNOdTAxYnVm?=
 =?utf-8?B?M1lCNURKSEhrR1huektlYWQ1M2FjVnAzZTRLR2tVeXJqbC9hSlZtRVR4blVP?=
 =?utf-8?B?TnpRaCsxS215MlBMMEdvWXRYY09yQ0UzSUJ5b1VoWVAwa0RUdlVQWWk1WGVW?=
 =?utf-8?B?dzZTaDVkbDJ1QUQ3cDF6WGpqRGJnTmY4cHV6SlYreDR0K1UyMVBLYVBHQ04v?=
 =?utf-8?B?eEpJQ2o0RU40d1F3SXd5b1FXSnZ5Nm1sS3VNbCt0djRsalVhRHlrdTVNK1hk?=
 =?utf-8?B?R29zRkJqOWNRY0IrdXZtdUQwYzllc3doNFh1aUdBbzNtK0tiQ3A5SFA4YUh2?=
 =?utf-8?B?SnVYMmVSNWlaQmx2QUpnbGRJdHhFWEc0Z0FzMXVqTEZvRGs3QXlSNUZ5WXNO?=
 =?utf-8?B?Z2NhSE8xRnZPc3dYR2h6TW5QQU5wZnB4b2xpNW1tOHFhUmpMQ0VySEhZM3ZL?=
 =?utf-8?B?ZkZQMk96ODljemNTSTZuLzFWNkVRQzlBa0l4T3gxN1BJZCt3dFI4YVEremJJ?=
 =?utf-8?B?WlAxdHlsNUdJTmVJTStVcGYzdjNCcU9DN1lwVnRYeWk2UUp2di94RlBEOFV2?=
 =?utf-8?B?RFVVMDMvYlJVblFNeC9tM2RaMGxOcHg1elMzZlc2cktLb3dycVdhR0g5YjFK?=
 =?utf-8?B?eGt6NXQ2MGM4YzFNbGRpWmNJWkdnajQ3eC8xdFhBaDRJT3BSUUEzWDRYL24w?=
 =?utf-8?B?Rmo4d0FjcDcwVmFOTU5iN1lDVnZPaXh5M0tUOFN0RDZrUFhobjJiTG83Wnpl?=
 =?utf-8?B?NytiLzlaK2FpZjhncGxoUmh1Y1dUWTlrbU84OW1JemJseUV0aXJ2QVpyUnpi?=
 =?utf-8?B?U3lsVWc4YThTbEpOeGw5ditzTzN5dzhSZm9GSy9aOTZwVytpSEUzZnNzRkMy?=
 =?utf-8?B?bFVpRk82eDFxY25ZVDlidWl4YXU3ZkVNTnpiTkJ1VitZUnBGMExhZmJLREN6?=
 =?utf-8?B?aklkZDZsYnE0UmNaWFoxbzNNd25wZWlwVkJYeUI3ZW1WdFRUMWNvTjlOZysx?=
 =?utf-8?B?MytlSktsT3A0V2FLNTVaL1N1eG5tTE9sa1NSYWkyOEwwN2IrZjJKMFBCYVlQ?=
 =?utf-8?B?MDNFL2FoaWFZSnRvRUFBc0J0Y2JEWlg1bGF4STRseWF0OUFCZEo0VzgxNlJS?=
 =?utf-8?B?dGljQlZJb0pPMmVTK3Q2RUV5Wm85T3ZjcEl0VGV1T29SSUN3cllKcWliVmJC?=
 =?utf-8?B?RS90d3pCTi9Tc1BRd1NEMG9ydVE0dHBrbzJQaVR0cVBMWkJ4TnVnN0x0UG9z?=
 =?utf-8?B?TU9CdzZIU01raUJPU0VIZzVpT0daMWRXc3lQelNMWDNtaENKcjFuKzJrQnpu?=
 =?utf-8?B?QnRvblIvSE9zQ3pzMS8vbTdWMGl6L2JKWHk2aC9oOW9OMS8zWVJHbjloVHNv?=
 =?utf-8?B?VWxvSXE5N1RaT3Z0d0RKMlkwWUNhengzcUJhLy9abUtDZFpPTGxZZVJjeDNj?=
 =?utf-8?B?dlFlQ3BZa1BPaWxRVFY3ZzcySnJCWjZLUmhKZUJ5VU9DclhJVE1xU3BKcERM?=
 =?utf-8?B?UmF1UkZpWTdwSWYwZUcycWtBL2M0K2RCMmFTZGRxU082aVF4Z05wRVhSNFl3?=
 =?utf-8?B?YW9pbjhnOFNJdU5ZLzdFdzh3NnNsUnhkQzlYMCtKWnNvcG4wb0FEV1hISXRN?=
 =?utf-8?B?Wlh3WWJWWlFtUEljb3Yzd3FZUTdMbFVzaGZlOWNkTlZST0N5aDJCZ0x3cldK?=
 =?utf-8?B?bWNJcWNhc2JaaFlLVHVTQWVaYWxuQnBTd0x3b0puUWtLOUkxRlg1NGVtc1Vo?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e84fc4a5-f45b-4614-d03e-08db2fdcd3fa
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2023 22:36:10.2532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TcO8pTXi0aX/qq2ElLP8ABe9BcSANXR0+zNaORIHn2haSYC8XH+vhx04FunRM8W7gxiD8EL2y69J3IhBtSIdgGOMC7yBaRU4E5+hPDtRx38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5870
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680042984; x=1711578984;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mdvxTmP1UdbyVUGclpJnSenHihaNZ9/HEOU93VUE6qc=;
 b=ShJBXCAeVkxUmZWH7ws+oKUeRITaa8omH0kAcI3v4xlZmVqhSs2m8rUp
 eg4sMynDWQLKFUxRWNoTed6uI/4a5Qu3JGnm08XRI3BJoNjIyroFPMB/g
 RIbUhIwMwdv+zafZiMJpH8ob6SLDcmGI+dk/mgVmlKz7JOQMl1slAA1Jt
 Ni4O2Rkw9iwofdvDDg7v7vlbEY9u/4ncJZvRwPJ6uD1+rtG7NgRp99Gza
 EBpNOTquqOwKVvit3Mz0XKZDPV3td9GSw5jsbT/G/boZ/ht9L4CRTJrvm
 Pg+Y4ELdui+Mox7DXpJ8aVekxwQ50/bM4R3kpvSNQgTnz0bZ3FQxzAGtE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ShJBXCAe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 416, Issue 5
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/28/2023 8:39 AM, Zulkifli, Muhammad Husaini wrote:

[...]

> Could you try with disabling the TX and RX checksum offload?
> You may run with "ethtool -K $IFACE rx-checksumming off tx-checksumming off"
> on both DUT and HOST setup (if you are running back-2-back connection).
> 
> Does it still happen if you run above command?

Please do not reply to the digest email. If you want to ask a question 
and/or comment on an email, reply to it directly.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
