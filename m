Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5F463CA7C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 22:28:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA88141718;
	Tue, 29 Nov 2022 21:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA88141718
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669757328;
	bh=qBY6uUdoowVRJfuXkOj+6FwMiB1p2xDjgktuVf5HeeE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FCIVEdhgY0kSZG9LFEjb8cD58m85m9/S8FcZaSY2DYZBGM4Jjew8mAEXTBFeKZQga
	 OZVxbNmMkAM34tidMZWqwYIWAhOkRLjrIILVEbpV8Sn4PN9/l6U11lA/bChq5syGWI
	 dtB7GTkKsx0uNk9sGW5oHh0Ury5PGHvH8KpiKxFzaKqlCALTC1wZrlbfY5Yq80vuaH
	 7Hg/r7r0u7fI/TTZ/FOujmNar8inprcm8XbN6LIwwEkp7dSNXgeNqL6Z5qyynysB0I
	 /1+6g6XJHrI5gG6k6UNhE/5B/GBsi6atwyMclIPcHaiMqKb97Y4Tp/5QOCXJvoM30j
	 mpsWITRm64QzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EdBvDHSWJ3-g; Tue, 29 Nov 2022 21:28:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD22740309;
	Tue, 29 Nov 2022 21:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD22740309
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 676411BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BA0040347
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BA0040347
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yVgp4VfqHbk4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 21:28:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 787D2400DD
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 787D2400DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:28:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="379519092"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="379519092"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 13:28:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="637754525"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="637754525"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 29 Nov 2022 13:28:35 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:28:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:28:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 13:28:34 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 13:28:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IFokXewqfLKOT7ZSaCJb7rdFzsiObMbitrdehaLB1qZKZXN6O9NpmjJ29McF4MH0CwvaXtdbovD3I0PcaizOBTv8LY3lw2JksRM4hJDq1gIbMy2fOBih/zaaC/nLV0f6oltBhzCloV+3hJ+KEze1O84r6LpCRryR9PIvj11P7UKyncnlwdnEbDIIOKYimrI2vRjXc2wgWDCMFq2gRfJInZ+Fd/uFNijMfAsZJzPnbCkzzx84PPASbXJ8tvBvcknWJonf8/MPFP72ds1huy/Ytn27J6v1WLYNyZwjSiplpE6AkCrPlkhxRQ0duCp1NaetJS3iDCScf0ysqYIgoPYTzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUUg7XFIjL1Erx+2WPoVnkfStphfRYuYoolxcODm7fk=;
 b=fgJLU+SIwbUKUKay2jKbIOlS3M0K5XwuEYOArJvCkTwrRO6vElZK3WvASvEyhqrqw+wY1WXyGX6MeYwOtPiDA27IfFYkUVKGBhsOS9rcV7BOkKJ2YIo9tvPEiu1Hpn+3DR1FKDRmQkbttR0GyCZBDc3yfFh82j6KTtn/pyMUygyD7FuJyD87tkPk7yfcI6oqQAcg3y3jJhrBuakOMSvTt6GDhKgi2pd1Jv+hcTY3gUNLP2znZZVXyojeSNfXlHvSJJyHPeoWT2a/iwIyI2cAWtVTXh+saDPv1i9ytqXy9AnYYKKRJno/chl+sq+PKa05RQ2+EoqyQ9Ht5uXgjQvKlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by BL1PR11MB5381.namprd11.prod.outlook.com (2603:10b6:208:308::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 21:28:31 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::d9e:bd1:43b5:e27]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::d9e:bd1:43b5:e27%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 21:28:31 +0000
Message-ID: <56771e46-5f07-2e83-55cb-35bbddbcf49d@intel.com>
Date: Tue, 29 Nov 2022 13:28:27 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-6-paul.m.stillwell.jr@intel.com>
 <e309ba9e-c908-5e09-c00a-a5dbf3c59f02@molgen.mpg.de>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <e309ba9e-c908-5e09-c00a-a5dbf3c59f02@molgen.mpg.de>
X-ClientProxiedBy: SJ0PR13CA0084.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::29) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|BL1PR11MB5381:EE_
X-MS-Office365-Filtering-Correlation-Id: 53713c65-bbd4-4f92-ecf8-08dad250a8ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gTMqFJlnNeTNeI1Vb71YtUkDO/bYMHw9Kc8UlBPzR0W6gmGcWmq2d50QzPeIq+HCHRaAINlbwIXQZHFt5XZm56XVaeuPH7xPimvniwfR3wUXCMX0TUnncdxciDH5HQgT1Y0mXqQRZfnSF/nPIHp4O0n0T9wUcOvpCuJz0Mc/bTYGq5AsEiRo1Dr1unvWRPYmSH6gYiYWN0H1594fhWd2nCmq3TZBAAurYxNpi5ASvrv4btq9myo0bg1mSm6+D3Wky+Wah5Q3UaK8SKBkhiOhJG2v9ItHZAAeRZcY8XEeu9sn9JXrpDWKXKgoVtFjGPq+1qsMdcmJ305AliKhLAG2lIV4voKkF9mWjwzrW3RHOh8JnaKx/07J6wfNLWND2kMM3M2CRQwNGn6k1T9RsbKRqt4Gfhr5EMJu8qt7xGjDNeLM2HNj3IgwLfSsBUfStep3GnSlfgNKD7/mPQeOo9mWYX60CHRh/1nG05dKY58gSp9iUGV+fa0wLub29dFuQQ4ouZ5HOWBesuCGFpVlVd6VZdMYBvt+yK1DFSlb9taWfACX2WNz+JfoVFU3mX/uTdbOKs9zukBgqeC93w+SGwnNa3Kv8fWdTnH1FYa99oXJKVzyTscgDZmX3K+4DV+wqaG+OfnIaD1FRt3k+UolJBnVTclXd56RlxQz/uY3s0zp6smgHfUrSUBjTyE6tTYWGaS/10isabbCKeku+OSJ+JYpsXh5i5Hk4etZDu9LiDty9LE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199015)(316002)(2906002)(478600001)(36756003)(6486002)(6916009)(66946007)(6666004)(83380400001)(82960400001)(38100700002)(26005)(6506007)(86362001)(6512007)(53546011)(31696002)(2616005)(186003)(5660300002)(41300700001)(8936002)(8676002)(66556008)(66476007)(4326008)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlFlcmV3Tjl4WWo1Z0xpRHFmRThoL2NzakJrcU1US2lLVHRQbFdVdmo3Yjk4?=
 =?utf-8?B?eWpJdXB0YkZjNFhWeHdXZmxoZWhKNXZtT3dDVGNiaWphdy90SkFDNWJwZDla?=
 =?utf-8?B?MkF3TGFSS1YzeklaNmI2ai9mMFRnSTNXWTZ2Sm9ISVdpOVBEZm1oSjF3WVcr?=
 =?utf-8?B?U2FPdTNKVjlIYXora0VxQTdub3FCQ0ZxMjZ6Vk10andlNmJlOVhGYzN4dmVm?=
 =?utf-8?B?ZS9XbHBXdGtacHlUbmdFNFBMRmgvWk5xb1FKVTdQNHhrcXVCZEhOLzBNaSs4?=
 =?utf-8?B?YVJTcEhOVDl3b201Rnp4TmpwazFkZEFoK2ZsaDloNFJTcDdTbmt5d3BSZ1lr?=
 =?utf-8?B?cExtL01VYWRXSUhDSEswQlArZXBuSlJMZVl5SG9yRGx5Y3VRTmI2M2hpZ1ZY?=
 =?utf-8?B?amNxbnp2em5iZWtiTzRHOW90aHk3MkFkR2tsbHlFV1diZFhsaUdhNGxaVUd1?=
 =?utf-8?B?U0I0bDZOSEJibTNOLzZ0WEpkcUZlQ2ovNjE1RTBBRFUrY0s3Y2VhMTBYSnVM?=
 =?utf-8?B?bHNJUjQyT2xLdGsvTStoU0R1blJzUEYrcXh6aEhVMFdZV1QxbGk4UkQvYmRJ?=
 =?utf-8?B?UmE0MmlGQ0V1Y1VVSzk0cWV3TUpiaFBxYnJoMGZLNUt1NXJnMDZwSS9HVmFF?=
 =?utf-8?B?M3RxRVJyTjNBZXRVc0J5VUF0bUJLSmlMUUtFVFI4WjBzd054WEh2S2JmNEp1?=
 =?utf-8?B?UENYZG84SUZvK2hZRFVlNEh2WGFNN3c2RytpbXFlNk5GOFhNbU51NkRnejNT?=
 =?utf-8?B?ek5BQ2srK3JVd3dncWYyNXZCUVYxM3R0UnlKNGNrOFU5QXpWUHFWUGJLek4x?=
 =?utf-8?B?VmdMbUtobWxQVnNvaEFDRzVwbXhyZDQwK0N6ZkpMcExnR3lTajIvbUtybzBO?=
 =?utf-8?B?RmhZM2I5dVNkUVQvN1dObkgvUUpDZGMvWVExL2svUGxoOC9PN0RQMjlQWmMv?=
 =?utf-8?B?Z0IrMmZMNVlwOUNEZVUyQjdUVzhPbnlRSUFZckJlRE1pOVcxRGxGK0c5dDht?=
 =?utf-8?B?NklFSWowbXgzVHdlTldWdXFseU9nTGFFUnJnV3pGL2RtcVB6WC8vejhudUVo?=
 =?utf-8?B?Z1dGMHpsRDMxY3Q4WjQwQTVKaUhhbVF4d2Z5YSswM1dpUzFtdFRiampiZldy?=
 =?utf-8?B?dE9jelBKTCsreitOSWFjT3lqT0ViRXYvMUZLU0lFb1lLWnNRUE91aUo0UDRl?=
 =?utf-8?B?ejFnRTN5NHNycGE5b042UDc5ZnFWbXhNcTVSVzBNYkRQQUpBYzF1bzJYeFpK?=
 =?utf-8?B?bzEvZnFzVm9DakZ1K0dBU1VTV3FIYWxIWHpsR3dnNWR4L2dDcUxTNVY4dUEx?=
 =?utf-8?B?blNlKzBsQkpOMlNockwxNlM0K2pzT0paY3FLRUoxR0ZlRWVtekdianpjSlIr?=
 =?utf-8?B?S2NucGt3dHdwWnpSbzNXeFpucVhXZndpWjlKdnJROWRMNlFjVU0wK1NtcG5X?=
 =?utf-8?B?NENibXZVWDlzN0J1S0J1YXlNd3BoSjdjRDU0ZEJkRmZlWkJ6Z0V5VXBQQUhr?=
 =?utf-8?B?SExqS2lRZ1F3LzlabVo4dU5aYy9UOTJ2dG5sb0Ewc3V0SGRNQ2trQmZNRCs0?=
 =?utf-8?B?TytGQXhjdHZQdDI3UFFjM2dCRitFNkY0OUlZZzhNenpFbWk3S25aSURxOVgr?=
 =?utf-8?B?R2RCbzBmREx4UForSDN2eUxLT3VldlJHS2tBS1Axb1B2Q3AvOE1Hd3RZQjdo?=
 =?utf-8?B?V2xCUlZZUzhuNzFyc2UzN2hJTEc5L2NqV3NEZVZkWTVWRmFHRGdsWmRBak9z?=
 =?utf-8?B?UEtFUEpSeXJxd1ptNUxZRjBPWEI4M2JTUkFUMGlXSmJ1Z25ZYW0vMjJrVjgy?=
 =?utf-8?B?SkhVNXJ0OEdRaVd0NW0xdHIyRStYSU9tbGp5N05sQTBPVEdISHJkWXVFcVc0?=
 =?utf-8?B?c1JFVWtsOUJSZzVPSmViNkxrWHVTRzcrZm85b3piMVpqb2xBaERaUmFnRGJl?=
 =?utf-8?B?TFcyZEtTOFNBWTFwYlBETldyakpscGlXYmxjMmRDNzQ2SzBLbG5Dbm01T1o0?=
 =?utf-8?B?cGJnR2NtN0RNbjQyT200aHBKblJadU0xOVh2WlZCT2FMUjFUclFjT3lORkN2?=
 =?utf-8?B?TXdzUVM1ZFBwZU5FYkJGQWd4UzFtbThjUFhxVXYxcFBDTC92ckF1azJZcjY0?=
 =?utf-8?B?TSs1ZW5kYWdob290eUNnM0VCU3VMck45U0t1d29kendra055c2lNZkI5M2xQ?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53713c65-bbd4-4f92-ecf8-08dad250a8ed
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 21:28:31.3777 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /AhlBVOoN8OCkZRV/EAefojrJ5mg914pbjxboPx8gJED/MK8yXX6nHWtwSWCb3ABJasJQm8uN1X+0JarNjlyTdMyT+ONFpBU1L04177UZ4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5381
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669757319; x=1701293319;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k1YG7E6wV7B5vKMRMDdR7aXyRsgDFCOxe+CkX7LAp9s=;
 b=MDyWLenS+I4JbZjMTzpZUq/zfygEzvWVF2GbSg8aMyBI11VVmYFj6kkn
 mbK8ajp9cLpkfe7iIS3l+dpPpiAhITMPk/Mg4OHHJAUjvpZBzsD12oLR3
 1/D6gAAAguNKaoRTP0wO0LDRMcN9ukR0H6GEpCSdCwd7EVdqRmjVSkDsW
 URx5tG+1BpfVo78BD0zydTgPgwusKHxRKsUoIePfAotdEG0msjFUBIwc0
 1SBQC/yCe3nvOwG1Njv75WicauqCYB7LHS75YLutpGC9omJhsJprRf/xX
 DHPeXtQGrhIJfxeFxApoMzAz9D8w+v/3KlAPJFbrnKdrhA4dvWRkO3Sqo
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MDyWLenS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] ice: use debugfs to
 output FW log data
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMjkvMjAyMiA1OjUzIEFNLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFBhdWwsCj4g
Cj4gCj4gQW0gMjguMTEuMjIgdW0gMjI6NDcgc2NocmllYiBQYXVsIE0gU3RpbGx3ZWxsIEpyOgo+
PiBUaGUgRlcgbG9nIGRhdGEgY2FuIGJlIHF1aXRlIGxhcmdlIHNvIHdlIGRvbid0IHdhbnQgdG8g
dXNlIHN5c2xvZy4KPj4gSW5zdGVhZCB0YWtlIGFkdmFudGFnZSBvZiBkZWJ1Z2ZzIHRvIHdyaXRl
IHRoZSBkYXRhIHRvLgo+Pgo+PiBBbHNvLCBhIHByZXZpb3VzIHBhdGNoIGFkZGRlZCBjb2RkZSB0
byBkaXNhYmxlIEZXIGxvZ2dpbmcgd2hlbgo+IAo+IGFkZGVkIGNvZGUKPiAKCkdvb2QgY2F0Y2gs
IHdpbGwgZml4LgoKPj4gdGhlIGRyaXZlciB3YXMgdW5sb2FkZWQuIFRoZSBjb2RlIHdhcyBhZGRl
ZCB0bwo+PiBpY2VfZGV2bGlua191bnJlZ2lzdGVyKCksIHdoaWNoIGRpZG4ndCBzZWVtIGNvcnJl
Y3Qgc28gbW92ZSB0aGUKPj4gZGlzYWJsaW5nIG9mIEZXIGxvZ2dpbmcgb24gZHJpdmVyIHVubG9h
ZCB0byBhIGJldHRlciBwbGFjZS4KPiAKPiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IGFkZGVkIGV4
YW1wbGVzLCBob3cgdG8gZ2V0IHRoZSBsb2cgZnJvbSBkZWJ1Z2ZzLCAKPiBhbmQgZGVjb2RlKD8p
IGl0Lgo+IAoKV2lsbCBkbwoKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAo+IAo+IAo+PiBT
aWduZWQtb2ZmLWJ5OiBQYXVsIE0gU3RpbGx3ZWxsIEpyIDxwYXVsLm0uc3RpbGx3ZWxsLmpyQGlu
dGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9NYWtl
ZmlsZcKgwqDCoMKgwqDCoCB8wqDCoCAzICstCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2UuaMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMjQgKysrKwo+PiDCoCAuLi4vbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5owqDCoCB8wqDCoCAyICsKPj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZWJ1Z2ZzLmPCoCB8IDEwOSArKysr
KysrKysrKysrKysrKysKPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9k
ZXZsaW5rLmPCoCB8wqAgMjAgLS0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX21haW4uY8KgwqDCoMKgIHzCoCA5OCArKysrKysrKysrKysrKysrCj4+IMKgIDYgZmls
ZXMgY2hhbmdlZCwgMjM1IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZWJ1Z2Zz
LmMKPiAKPiBb4oCmXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
