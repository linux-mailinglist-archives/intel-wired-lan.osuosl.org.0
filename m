Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0CC7A8E77
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 23:30:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C6E660807;
	Wed, 20 Sep 2023 21:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C6E660807
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695245447;
	bh=lkOXZbUFWadCvW7SIabneOgBGiSYL07fr4LyiKCvKdQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5/n8EjbIQQgy6bHRLOX+4N5IOISaRWfJYsiAfW7jgm/eiPKn9a6kQno9LaPjA4MDi
	 0p4Bs/AfAz/rDQi+Z3tKNTMhQ2uhcG6Qkk9broSa/3D1Pg/g1+LRYqlLnev0PXxVI+
	 yZ8xnxOPwcVjNt68OzepvEtSWEdH6frgPaF5zD3ASFKaQMw7Xj9v/OEYTYhGkvY8vd
	 M6MznqmcS9EB0GKrTLHWrKT27KiHbCuUPWlOMm7A3dXkWJjRxtkZ1q9KNCRQNZmXCe
	 opqArsJqNa8VTN0SxfgNQwCpdt9+6C5O/Wp/CSw+f8RBm61Mpem+9XFi7cowK4247C
	 7LaLzUlpg0Ciw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SD9z_aLWDBf; Wed, 20 Sep 2023 21:30:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D01260586;
	Wed, 20 Sep 2023 21:30:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D01260586
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F4791BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DBBCE83B3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:30:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBBCE83B3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zB2q1vvFn09j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 21:30:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E7A483B22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:30:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E7A483B22
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359728852"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359728852"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 14:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="776160173"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="776160173"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 14:30:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 14:30:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 14:30:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 14:30:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccG0YrVvirL9x1X103HMu3MXdE5W6sOosCSrbzPaM5919I/v6uZjGq7UqO1ClK2L0ciXYUzu3cevhLdaW777NVjU+mDVkFocwHRAFNG3l7jHQkd/U0f5TJVb/y4DuQmgNIEGmin59Imvkdxxr6NGkA13MhdGG/p7nu7N26OW2yf7xbgsq++LZCrPeLVjXrETUAqAdJ2sR6Mxsc2476E0iqvRFzjJOd7PExmDXQN+Q4cV4ACc68mqCMCojtiHc7ZTFZdA3kfHtB7HmdRkCbVK6S5kNgKqdMkEBFbKeenS4bgMt5pyerfsKkhH0e125kIIWSEfDqTqfvMlRfuGwKUHeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B8/uR8Fy9J4pN/AJm+FUVUyD6AJb50sIlrwsPxf/Yj4=;
 b=FBvaBmDWXcmb9l77Z3AexEih9Rl7axBK7P4VdZUGsLc8w/1/RKy3Krxpxg+6wFNk8WjQuh6JXPLkr1ykbtEp86PBx4qTlXJ+NNogmr+nM+B5vrCj+5RlY6+vhAD1azNsG3MJ5SWo3nQukY+PwRyjs80RLdHaWJ5dL9k/+a9WeuVNbyubFRAeXUybceqnTp9wWy5lrnH5MZ3mSiDSYgIj3Tl57NHGKFp2SZ3LiHj0xZVV0brWCsR4VpkY7U/w8hukmYjMEAUw8FYbl78zfT2fN4j0EL1/5L+uKcF6G9Jwrm8kMjofJOdNSrpednj5aPPTNc0ehrwyxjehN+QzzmJcCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5168.namprd11.prod.outlook.com (2603:10b6:a03:2dc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 20 Sep
 2023 21:30:24 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 21:30:24 +0000
Message-ID: <aaa0a1e7-39ef-2a38-c981-9f8449c7c4f5@intel.com>
Date: Wed, 20 Sep 2023 14:30:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230920115439.61172-1-mschmidt@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230920115439.61172-1-mschmidt@redhat.com>
X-ClientProxiedBy: MW4PR04CA0358.namprd04.prod.outlook.com
 (2603:10b6:303:8a::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5168:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f73e73b-92fe-4c0e-3cf2-08dbba20ccb9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kYuW6/rW2mk0Z7Gdo5oFcA9HeC+ehgbHbfXeRdfnuE7FT+mjIc41LGynpy9VWnRGIETGXVrCeFmRRrJp+E0hifbYHHxQb5Z+9lRlmuKcJbEbIiJloh9wDVPdrlsGnjAUeijQ46sTXS63uhBJWeiy8E2HFvY98DH3Wi2Xrko+EdN22Ik25xvqiIo0DHeFjOAQtpB28lAVs0OPRAsWd0cesS0ixp0ofb8uiBP4iYAg9NTNZcSg4tNbTn90ZS53YqlAfTWGOQi17vCNh8z9sQb4djbVLGlNayarfZPiCPrv5eyDDEf3qq12uONp7ex38RlZAmMVL3rhDXX5VNp1O5pW1dmSjtsjsZurnmi+vbBA3nDySz+Ryb7seqgXEUSvbKesPbt0JfWwfxB2DBe+8I3mRxdt6WISWpdBskuYD85HktJRjrfCtkVk7oplWbmC8K/LbH+mTmyNX+D7PoAG6Swyc8pyJIdG9nces89KC53S8ZpLIDNn66ZeM+kcJAydYUWx9S79q+vEPcdadizTb6cbu9IjiDyA2RmZ38WnRd07YrmL/KJnGIwZoJHBi6wF/2IPI82iLeaysfScvcJ9TJZqxkiddL9IaGE9OauLkUZywy3qoypr22lR4gq7UuURl3CMI4R9zqksQyedQfVV927arw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(136003)(396003)(346002)(186009)(451199024)(1800799009)(6666004)(6506007)(53546011)(6512007)(6486002)(83380400001)(478600001)(26005)(2616005)(2906002)(41300700001)(54906003)(66946007)(316002)(66476007)(66556008)(8936002)(8676002)(5660300002)(4326008)(38100700002)(82960400001)(86362001)(36756003)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ui8vUFlSVkRLSS9EV1ByMG0xbSthbDVkc0V4RVpabzZWcXo1dU9FKzBrL2Iv?=
 =?utf-8?B?L2wwVnpRRTFCUW1IUTVWN3NZMnNpcDlINmZGSDNOM2gxU3NDQmpvcGt5c2Zo?=
 =?utf-8?B?VXBTTnplL0RCdnZaOGtTQytjMWZLaVJMY3lNNncrTUdjWkh3R0RlQUpaNmRF?=
 =?utf-8?B?WjVrcEJwVkNSYzVuNmdsN2p4dEpmQXpPT3dESGFUOTB3NlFYdE9uZGM1TCtN?=
 =?utf-8?B?NzR3OGpienJmOXpydlk4amtZaDd5aEI1WHYwaWV1SnUwaEczMlRGUlZGWU9x?=
 =?utf-8?B?WGJIdzZJUUZwcTEwZHkzMjl1VFdqZHJqOERFYlVhNWlMeXdTUEMzbXZjWjNV?=
 =?utf-8?B?OWhHc0JSbXFoR3gyTTFIYWo5clNxcjlDbDZnam1JOVNFZWRVNDRxeXhubE9Z?=
 =?utf-8?B?WWcrTWY3NFZucTF1WlNBNnRwMkgrN2lvQ1ZUZG9NUjdVUWdOWmdaS1BnWThs?=
 =?utf-8?B?Nnd3Ly9DVWRjRDFoSGNRWkdVTlV0d0JnMlljeXJrd0htU3ArOWhzdEVOSWsz?=
 =?utf-8?B?aWVmdEkxdkcxdVRPRHRmQXI5ckpGNkdZaDlMOWYzYWJuNzMwNDFDNVRCZ3Rr?=
 =?utf-8?B?YnFxVEh2MHNyc3p2RUI4dk9KYWN3L2laQllnVXZvN0FqSXdhRVd4d1pFWGVC?=
 =?utf-8?B?QytPQU1XZ1ZHMUp2aEVnMHE4M2F1cG9wcC9wcTA5YkhJUTZScTZKOXBoZUI1?=
 =?utf-8?B?L1dXVjRydVR5Y0JoeUE5b0lMZHRKTElpYnhVN203cTEyYyt2dHBxMmZHMmF5?=
 =?utf-8?B?QUNiUEQ1bm5LcHBHRmVvekJrRk12Y2c3Y0Jkd3JvR1NaMml4OUJwTG15TE5U?=
 =?utf-8?B?MC9zdFU4N282OTBNdDVZQVNnVG40bmR4bGRBZjRVZGlZNEw4RXdhN1VzdnpO?=
 =?utf-8?B?TmpudzY4SnVnNUJQRDg2SmovVTRsK3JVRXkrSEIxUy9aaTBQdS8wWFoydmtQ?=
 =?utf-8?B?TUt2LzBqcmhxeFZmWGdldkUxdWUrVXFKRTZXY0YvaW5OeXQvai9WRjIzaU5P?=
 =?utf-8?B?SEtWOGJ6ajhSTFBPZzFKQ2FVMm50ZkFKMVRnb1RFbTNjQkhEZ0VGVWFwTkd5?=
 =?utf-8?B?YjdWV1F6RVphTEV6eGNqblFwZ2xwU3JseVJZLzdkWXorcGw0b1B2amdoSkRn?=
 =?utf-8?B?cXhwZlIzQWJrYmZEKzZVOXJyZTF5MnB6elMwZHczVStYcnFHaE9ZTEMxNHdo?=
 =?utf-8?B?VnZQS09sS1dyaDA5a29Cc0hweWVGNnYxM2NXM25VNnNJWFBmc3poeTZUUm81?=
 =?utf-8?B?TzJLaUFRWkFtc1g1SzNTY25CZUIwS3VTTGZscVRXM2gwSkd0RTJFWmJIUXRn?=
 =?utf-8?B?SUFXVE9MLzVjMjJxN2hVa2VsdHg0VTRUdVVRakk1UndmTWZKREdWeTN3cjJI?=
 =?utf-8?B?bGt0bW92cUIwWmhXWDVWN0JJeWVEK0pIQ2YvN3BBL0VWQjM4d0lzckt2UjVQ?=
 =?utf-8?B?OEZWV3N1dkNPNkw5TVhDemtCR1QzSU95Z09QdWtxR1FjUks2UkEwcWpzQnor?=
 =?utf-8?B?NUxJZHNmQnRRMGx2eE5PSCs5V2RabExzN1BNT0IybmlEcUZlYXdyaVVaaXgr?=
 =?utf-8?B?bFluemFzWm9qNjZjVzlzdW90V0hJdE43Q2xQd0NTblNTd1lKb0hrMk9yNnZB?=
 =?utf-8?B?dStYanJqVks0bmorSlJERVRLWi9ScFJvMHhiVHI5dzUwY1Nobmt3Wmd0UnJX?=
 =?utf-8?B?UG9hSDdtQXpLdjIxaGhYNTB3aGRhYUYwYWFaNjFPZ0lkbTRaWmhKV09QTWwv?=
 =?utf-8?B?dlhCZlhSMGVlRWFLeGZta04wRmdwbDB2VnpybzJZbTcrUW1DOEd2REt1UjBL?=
 =?utf-8?B?WlJKUkgvaTE2Vm1CVW5aWmVLZEkwem5xb0Z6S0FyMWpJMDZuMllCQTlaLzlE?=
 =?utf-8?B?WURSSDdCV21jWlFwNGpsNnZ5QTc0NGR4VFo2NnEySmFZeDRCbDJLQ3hpZVJL?=
 =?utf-8?B?ZDZUTnBXSWxwZHNUa3FCeXhnVktIS2pSSlBsLzlHR1BrTVBxR28wcVQ3WFBo?=
 =?utf-8?B?Y3RUNTVzclBlSzY2OWxpVU40KzErajZRbWdQYk13TkJPZ1o1Sk5aSDJjQW15?=
 =?utf-8?B?QzRiZ1JNQml5V3dHZmx5Ymo2ZktSN3pRNmY0VHBKNDhBMjNRdm5NSW1uK0Nx?=
 =?utf-8?B?RnVOVnFVMGRtWTVyYVFIQnYvZk5pU29VYkhBcDE1aW1HbGpUSWRmcjhxaUxQ?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f73e73b-92fe-4c0e-3cf2-08dbba20ccb9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 21:30:24.0910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aXJVu06lmXBLLk8o/mIJeAt6+28ctyM/tIcq2mDz7+64Prkf2v6yb56oUXuh9FrPuPpuYpi/8Isp/Yi+sgZ0HBfHb13UqZ7TntZRAvxFiL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5168
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695245439; x=1726781439;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5uWxYtXx5nVsRm1qlwQLU1XPxt9lHNDG2VJ/bD95XR0=;
 b=lW6HAEf8oqVhuRmVJgd/wwvZq3FNEdJf+FNh6F89KVCQ8zfIkO8sV9ME
 Cv9pYl17W5TaxbO4EbkhP+9H5IQA0vKzEmWbiOMyJuEO0IiikKlh/4NTx
 0TsJ1Ht3R72RIo6ZZ4s8ICgEspw+TCm1Pdu7DFlWnU3mbLBpkwIUA1Rqi
 4DIfEmbCkpsEv6X6+1SMb6BPhsNP4jYo/GQ3RgEi76cC1oeLEtuIS/dr+
 sk60xm7IMUN0TFOIApY5rJcydbYsETP6D3hbiR5zaH0RQG4rW/SAZuGqA
 +Sh68BztUoWSH5ki8LtFs80p6H4L7AVMxT2Xg0NfK95UsyI5IZxAAj7Jg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lW6HAEf8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: always add legacy 32byte
 RXDID in supported_rxdids
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Leyi Rong <leyi.rong@intel.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/20/2023 4:54 AM, Michal Schmidt wrote:
> When the PF and VF drivers both support flexible rx descriptors and have
> negotiated the VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC capability, the VF driver
> queries the PF for the list of supported descriptor formats
> (VIRTCHNL_OP_GET_SUPPORTED_RXDIDS). The PF driver is supposed to set the
> supported_rxdids bits that correspond to the descriptor formats the
> firmware implements. The legacy 32-byte rx desc format is always
> supported, even though it is not expressed in GLFLXP_RXDID_FLAGS.
> 
> The ice driver does not advertise the legacy 32-byte rx desc support,
> which leads to this failure to bring up the VF using the Intel
> out-of-tree iavf driver:
>  iavf 0000:41:01.0: PF does not list support for default Rx descriptor format
>  ...
>  iavf 0000:41:01.0: PF returned error -5 (VIRTCHNL_STATUS_ERR_PARAM) to our request 6
> 
> The in-tree iavf driver does not expose this bug, because it does not
> yet implement VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC.
> 
> The ice driver must always set the ICE_RXDID_LEGACY_1 bit in
> supported_rxdids. The Intel out-of-tree ice driver and the ice driver in
> DPDK both do this.
> 
> I copied this piece of the code and the comment text from the Intel
> out-of-tree driver.
> 
> Fixes: e753df8fbca5 ("ice: Add support Flex RXD")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Yep, this happens because of the way the feature interacts with
VIRTHCNL_VF_OFFLOAD_RX_FLEX_DESC and how that wasn't enabled in upstream
yet. Not sure how this got missed with the mentioned fixed commit but
probably a gap because the upstream iAVF didn't implement changing
descriptor format.

Thanks for fixing this!

-Jake

> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index b03426ac932b..db97353efd06 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -2617,12 +2617,14 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
>  		goto err;
>  	}
>  
> -	/* Read flexiflag registers to determine whether the
> -	 * corresponding RXDID is configured and supported or not.
> -	 * Since Legacy 16byte descriptor format is not supported,
> -	 * start from Legacy 32byte descriptor.
> +	/* RXDIDs supported by DDP package can be read from the register
> +	 * to get the supported RXDID bitmap. But the legacy 32byte RXDID
> +	 * is not listed in DDP package, add it in the bitmap manually.
> +	 * Legacy 16byte descriptor is not supported.
>  	 */
> -	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
> +	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
> +
> +	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
>  		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
>  		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
>  			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
