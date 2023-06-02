Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 292E371FB0C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 09:35:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A93DC426E8;
	Fri,  2 Jun 2023 07:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A93DC426E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685691301;
	bh=4QOVe2kSflryKH2qKTRyPyva8zJnSzpYPkp+zKE4974=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HfL+Kg4NdviR1fSUA2McUy6yu0TmPwQY47MD1z5Fx5zAWdZb/Luu8mE+Ze3NtjGZt
	 yRxqLjsVtwSSknSKMKGpf1VXaoqw+lBJAhHqqz2N7fKtVZ2MLw+XornjpPrSycnd+z
	 XEGkqJmLaj2IerRVKZnkAjI4yJIvO1+p1rsxE9E+/LX93qZGocj4YReSex/go80Z4+
	 en+SbpXlGvOeYHNKG9Ow/Q83uGmpUEpDRmOXQleDZGI0QSM68zMxxjxaMVkFZHGNh8
	 YdJ4lAItXsD2JNukDdwpSTN3ZRwz6EbL9cvNRjgfD4YCJVkKxPckHl8DBzdgF9iCfS
	 Yg53vDUtQr2/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEmu9sgFEzKy; Fri,  2 Jun 2023 07:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27AC041F74;
	Fri,  2 Jun 2023 07:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27AC041F74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6F641BF599
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE643826C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE643826C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIddaRq-Vawe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 07:34:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF98582640
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF98582640
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:34:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="359102340"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="359102340"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 00:34:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="954366238"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="954366238"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2023 00:34:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 00:34:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 00:34:22 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 00:34:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WCmlDD8+zzN0Q+N6OfT0Np+Vlg++QD74lq4FX8WbyYSDuKcVsWzh6g3Qqft5FWSivSj07UzYG7o3GmGigyPammrkSHMGeSaVsQwxaR3VTPPergqyyL3Uf8FJea2PzFLED/Npe8LEJgsx0/nI+GjDHMCtV1CnGIL+FBmCOPRnevhGx6L55QI0L+GvCxLCNoEgQ3NxrdpgTUfqbiwUs2PFf+G2stsbyE6NY36qfo0rvOzMr+9yLJ0ubU6IiFNJDScU3GjWUKSu6lb58BDrnGWrLyvQfhFZ1a81xSeQn5KXIVxO/wPu1urxA66cJnBPQoxSWo9QpYATZ4uDQRESS9vkeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DlfB5wut3iJ5JjDfOU/FeE5zvl8XRuAg/w73v0YNv8s=;
 b=ULMVhTFnry568hKVhFI1kAV94Jh9hPPfMv4o/EQnTjT8jYU9LgQ3BW4Grov4pKeObrZNRFfy51+z+1K3O0IstUMsSlF8NIzz5TACXdTHp00tGMZGgZs26lQnQ1QGITOXY87fVAbgmXPUty55Rd2F2i7puwLvzxyYc4mPv/oP+TerqpFJHJGTFK8aYbUEi6QB2FZFBZ2GkcfxaywUvay6HtIkbEyAyY15ifSjUcTYYkhhpiTCJz3LZssq5+ctxRpncaos5H45UNORHREuCg7ckdMoZvr9+jKVa+rAGAjGShXeF82A9Ht46GRKy3N5NjAEj8zTkHWTvIxLU0h4pUDRmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6725.namprd11.prod.outlook.com (2603:10b6:806:267::18)
 by DS0PR11MB6398.namprd11.prod.outlook.com (2603:10b6:8:c9::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.26; Fri, 2 Jun 2023 07:34:14 +0000
Received: from SN7PR11MB6725.namprd11.prod.outlook.com
 ([fe80::7947:dd13:d23b:b35f]) by SN7PR11MB6725.namprd11.prod.outlook.com
 ([fe80::7947:dd13:d23b:b35f%3]) with mapi id 15.20.6433.022; Fri, 2 Jun 2023
 07:34:14 +0000
Message-ID: <cbb5bf34-5082-13ec-45b8-590268279bae@intel.com>
Date: Fri, 2 Jun 2023 10:34:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
Content-Language: en-US
To: <prasad@arista.com>, <intel-wired-lan@lists.osuosl.org>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 naamax.meir <naamax.meir@linux.intel.com>, "Avivi, Amir"
 <amir.avivi@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <20230601185353.17012-1-prasad@arista.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230601185353.17012-1-prasad@arista.com>
X-ClientProxiedBy: FR0P281CA0163.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::17) To SN7PR11MB6725.namprd11.prod.outlook.com
 (2603:10b6:806:267::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB6725:EE_|DS0PR11MB6398:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d8b7fb7-194c-40aa-37bc-08db633bc388
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GAJZ0J6Crat7HLxmYHiwgx0JoHM0Gb1LKBNohpx1BiFgoA7o8/vE7n4+hkb9AgLwkYfxOrmHn4OTmSnxqxpiBHq0DzEMD8si0lJ7D+KxZqplbEYDRwxGxlL/REvdlu0GzUxT3MclK5g2gAxGHdF0ksL2CqW2kZwxZNxQBpgvxHgXsSth9Byn9hlgcGQuw3BPBL4OwKJqWCOzRYoQSda8YLEBFXoTo47jzidQ7Dr5vQWfnaNwWII9gszaq3Rf3QzDC1mbUi0ErhkKQTdDlcQhO1vSH99kgS0U3wTDKcJlMSY6bJf1ZJbnzGmXmMUmgYkRp09Rvzt/1LBaDbNTUntuRdwBywwjnTNdI1wubU6WZpwh9bBiA049Rfru6YKZZCpvCxNALnSY/KOUW0RqtCxKYilqjLo4K9hj4wX75qrSFKZRx3h8eHRkz8dbKwuE4Xe/rMaSdfVZ++J/DRNgJLrtlEpe5mMhtTNaVD/ti4nrVv5HV6RD5RR7LJbBMvQ0I3vyzXpVrzGjbCguoRWDy03SmEHto/x6I2ns6eXOOG0ohUQs2BxVYc6uAo4dzaGWtkC6WLwEJybCZGLQdMrM9Nc9FZWx88HxM9xi/0Y7YjymkvxWypUVDhoNnrCqxpPAo7KHuWLnUAfbtkHAZ6ePLr9VSd1A+wpbBsY631orV8krWPg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6725.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199021)(66946007)(66556008)(66476007)(6512007)(26005)(6666004)(6486002)(53546011)(6506007)(478600001)(110136005)(2616005)(186003)(86362001)(2906002)(8676002)(31696002)(5660300002)(8936002)(36756003)(4326008)(41300700001)(921005)(82960400001)(6636002)(316002)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkhNM1B6emUzN2NWdW9xSm40YlA0QnF5eUR3Vzl1dEc1d2JzNkJzUG5ocnAw?=
 =?utf-8?B?UlpNSFoxTWovRWs2ckFpdEhLcHdSMFR1djdnYjNMQkJYK0wvYzFBc1pEL3FC?=
 =?utf-8?B?b0VpdlVUUGFNU3k2SGQwWXE3bUhta2RSMGF4TkVETlN1ZWRjZktLU0JMOHV3?=
 =?utf-8?B?cmlWOHhMVmxIeHRZeENsbGdETlIra0tEeXdSMjluWFZ2Y3BjT0ZpcC90ZXB5?=
 =?utf-8?B?ckYva2w0NG4xRkhMZDAwZWVTd1djUVEzWGZaMkRPUi84Q2J6TDFOeVZxcGFB?=
 =?utf-8?B?aVVkTFpueXVLOWJBMnFUSFE0dHphWnd6UGRSWnRJQU9wbVcwN1RlYVg1QXlN?=
 =?utf-8?B?enQrOXRISFdydFp0dkFEb0lNb0h5OFVobTErOUNxa0ZMM3l3U3ZMRkZzWXJX?=
 =?utf-8?B?TjJIamZRbTlqcFhyVmh6S2c2N3R0MG1NdFFzbkJPMVRwODNwcU4rNUp6L3JM?=
 =?utf-8?B?dzVHdjZ3RjcwTkNGUzlmYjJvdk1kNjRlY1NLTG5GZzdSQlNlKzdTN1p1S21w?=
 =?utf-8?B?eFRPaE9EbHIzbkxENzQzUCtBenhJZlZxU2JubERIRmh1L3hPUFZYWlpTa1FD?=
 =?utf-8?B?YXpSREpxSitjWWx3MkkzeFhoUEkzM2YySFkxa1IyYmVvUnZIY0IxZUFsOFAy?=
 =?utf-8?B?ZHpDTFN6V0FmRmNLTk9Dc1EyWm9iai9QUm03Qk9NeUFINCs2d3ZZNUIzbXJr?=
 =?utf-8?B?TGIwcWFtbTAvYVdCYVcvSGp5bDBYUVEvN21VZ1VoRExwTDhNeG4wUG1NWHpC?=
 =?utf-8?B?cXNIVmhLdzJRSW1GcDNIZlRIYlRRVUhhWGQzNlA0V1lSdzZLZ0RTdjBaTzgx?=
 =?utf-8?B?dEpGTmlMWFhreFhVa1lyZ01YbFRXcm1pallybmp4R3RqSWVLa3FQQTRpUldi?=
 =?utf-8?B?TENsSFd3bmxXN1BBODlQb2d1K2hRU20yUlJVZGlQcWFkd3dNQlJyOWtnUGRi?=
 =?utf-8?B?SzkrSGFXRy9ZR2RmOE85VXJ3NDdXN2hCd0VXcTlFYStJUkFYVDd1K3pwOEpZ?=
 =?utf-8?B?S3RJMEtDQkx2WHJKMlZ0akhJYjE4MzhaVlVISkpkKzd3RVZRc1RzaG5IVnZr?=
 =?utf-8?B?TVRDMUhMUEpWc3lYemY0c3libURxSy9xSHkycWZuQVZzV1NnbDdzcVhsL0Y1?=
 =?utf-8?B?WW5ZSHBLMUJqSEFmSzBjNjBBY3kwemF1YjRzdTZvbkRRdzJkdlRSeHMvRGtv?=
 =?utf-8?B?a0MvQ2hiR25aSTlYUFZUb3JBeHdpRUthRnQyeTJaR0NVdFZScmVhaWd5UHlN?=
 =?utf-8?B?b1NmQUMrVmJBcktCaDNncGVCb2dhTXZuaHNFaWN2ZzhMNUpuR2ROV2Y5cDFh?=
 =?utf-8?B?ZEUydVg2Miszc0I4a1NLUlA2TU5vRnhGeTZzZGtoV2JGYUZRNVFEWTlLc1Jw?=
 =?utf-8?B?ZHRwS2x3ZmxHd0Nhdlp2aCtqbFNndzIvYkdJelRxc3REYUQ4eWZoZmUwUzh1?=
 =?utf-8?B?N3RCTnVSRzlFWUpadmpPclRjTGVkOWx0MXYyZ3BpY0k2MzlYWTZpTE9peUdO?=
 =?utf-8?B?bm9HYk1oQ04vWkNUODNkaW02QVJsVTJTMG9qRGhaWG5tTGU2aUl2V1kzeE9Q?=
 =?utf-8?B?YnBLb2RPQkdOUzNCZUlsMHBqb1dwa1V2TWNKVHhmaUdldXdlY2I3RmtNSFpy?=
 =?utf-8?B?eG5sVjhUMFBLd1hjRU11bnFTa0FrV081NWYvT0NRaXdmRGcwOFBEbGVNMk9L?=
 =?utf-8?B?Z0x3TXlrL3J1RUJrblpzKzRZRGZmTDFvQVVOMStBYlFQUVFlYkFtYTlkQ3Bj?=
 =?utf-8?B?cjgyK0prYUpsQzJFSHpUY0F4WXM3a01oNHN0ZFJNN0NUcmZRRzZlQ0ZRWG5x?=
 =?utf-8?B?QkVwZ3gwVjd3U3c0NTZtVkk0TmtGM04yYWZ6VVdwNkR4OUlhSlZ2K296T1Jy?=
 =?utf-8?B?cWs3Qk51VnZxYU1wMGJwdkhlQWpLWkdoQTh0M21RUkt3V3FNRThGQ0gzOXdR?=
 =?utf-8?B?ZWY3ZWtURzFwRDBhdndkY0tBVzhnL3lFQmhDYnJxT2tZR2E2N2pxWFBMcVF6?=
 =?utf-8?B?RFFyQ2VtSjhmYy9kNEJiSnlnWC9FSXVpQW1DNTY0OU1JWnNOb1lqNmt6cDRJ?=
 =?utf-8?B?YXVlT1FJMEErOVYwMXc4NmJKMExJZVNCV1cvNnczWEsrVWw5ZlJNQmdkc0RI?=
 =?utf-8?B?WDZPMzI3VUtFcFlIenJpOUZkQVNaTlJBUkFQckUwRWNNQTI5RFVJSG1TdmtM?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d8b7fb7-194c-40aa-37bc-08db633bc388
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6725.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 07:34:14.1510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S1S8DUf+vrdERYZvwXDQCP5C6Wls86gjEBNCUpnDdVR99lyRi4PO41Pt+E/MOfHxAnT9E3gMpeuoBwCLBzKwbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6398
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685691292; x=1717227292;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UMaa3v6+1FAeW4DjAUQGnuFxrbYLzZTbqs0rWBke8/w=;
 b=gCuUqu+00czCd1YSKjqfyleU8HhmXmVYMDpCwt1l3Tk6XrSXmIZCfDOS
 IPYsKYSObOrWu8VUBmpTqkDDFDSavMBUpdTM6P1RBNctpCHJaXC3oFFni
 GdcpPTXqbb1TdG1mf7Z5HAQAWSnmVMc9qPXeSN1KBf2uX0jitF1mghkpb
 j9fOWcvcKN6bJc+XxTyj9FB+51ckn5kr5omtXK0XojOlV2OSrcitrFb3C
 Bt1AmHaAEpitDj4OSkeAb72Uq6ruHFVZXN/hs7XWl81LG4UY6hbSDfk+g
 VuoEGNShAbJoEeEbzTq19HLnnr168hReRytvxR4bUQrWRp4OiHdRskQHL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gCuUqu+0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] intel-wired-lan: igc: set TP bit in
 ethtool_link_ksettings.supported field
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
Cc: gilligan@arista.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/1/2023 21:53, prasad@arista.com wrote:
> From: Prasad Koya <prasad@arista.com>
> 
> if the physical media is twisted pair copper, set the TP bit in the
> 'supported' field
> 
> Signed-off-by: Prasad Koya <prasad@arista.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 8cc077b712ad..7d197fa80d5d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   	/* twisted pair */
>   	cmd->base.port = PORT_TP;
>   	cmd->base.phy_address = hw->phy.addr;
> +	if (hw->phy.media_type == igc_media_type_copper)
Thank you Prasad. i225/6 parts supported only copper media type. We can 
drop the "if" condition.
> +		ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
Do you want to see: "Supported ports: [ TP ]"? That's right.
>   
>   	/* advertising link modes */
>   	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
