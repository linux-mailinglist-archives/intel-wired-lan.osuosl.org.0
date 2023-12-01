Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A517F800512
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 08:53:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38E2F4207C;
	Fri,  1 Dec 2023 07:53:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38E2F4207C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701417228;
	bh=sbOo2p9oEOUW+FsVo9eUvP4ms/gadDQOoBrkaR+fijs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SQYEmTtqQ+bXSvel72q9wT/TvEUqcInOceNR/kEBW/n8oPzJHpSm1rKjPgU7Nq7ci
	 oX3aEnJynxdEPyiHV4vukwt16k6ox4t/BSVlezFN5xwcMF01spcXQSWJ9aTyGMWwWf
	 fEXmLnX9q03iS0E9lnHSfHSRc3dwziHsYs3HGoNBTD43MeGcXlwZZcoKdbYw17U5+6
	 lxggZySfRzFzTk553+doyB4bz/f8qTYcFKJ6TIX85ah82KQMkJ23biyWNWjgH9U36D
	 RKsFgOSnnbr2bzFejhx9XaTc1c1Z7m7kH4wBcRvUr1vqoXoArSIECO18tErZhu1Wzd
	 hrpi2LQDaWsZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wc5uzBuVGILB; Fri,  1 Dec 2023 07:53:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0753C41E0D;
	Fri,  1 Dec 2023 07:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0753C41E0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E04131BF98D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB33060B3B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB33060B3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5atjVGzD65U for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 07:53:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF01260AC2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF01260AC2
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="15002798"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="15002798"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 23:52:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="773343576"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="773343576"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 23:52:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 23:52:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 23:52:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 23:52:38 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 23:52:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/o4FJjeKwYG4F/Iv9SRjfiQFZLBtTw8Rn5Nr6KO19kwvOcerv+GqDTvIlSIZammfypYlEUB5qoL9QpUou6LkT2YbHa88nIImYUL6dESCQXihEhIfgSSBRLdSZWABWnAozenmgBIosRA36TVj5hcYFL9Ksh0+l//e8YRmYDo2Qr/SZkmCMv/ZRH7suBa9DHw+MGDK2v5z2k4l+Di7Uhf7xcXTao6/Jqgxur2TsiV42CRzPLgzi9H24VpegLZafb+xnuZBXBVDRjXgfcC1Hs3sRYbSVKvFEf7X+4gmST8IIJlnxdt580/h8s1F+KCAG29yK9QlheR2xvl947EiG54lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPFt8t9/JF60hgIuqFtZMDweWRQfINabgYK+47JjDJs=;
 b=m8FIDv7TO/bfxdC0qgJoxlozM2GLNu6dkKL0Xa3K7I8XLzs61Fng/K1+FcxYyj28fzkBHq3QpE/T9Hq9/+RtjvR1nz95kdxr5PwVkHFf6cK3k308SBPrmXjcYXahPXcBgO1VqbDlQtHshrRj7A/LkcDwDAtxVxY6dCoGc80d6F4jcQcOpkzdzp/Lve6Fp2KDkfJONG0mSBO22GM3aivrD9oqnTGv9wrxwR/HlYgGmafSytQ74G9KhKBkJ77+9zR1M2nqEreBHd3xAUHW7oeyy3U5f33QV6U+3KQLks+CtZABh7Hm1BofD8RT1dCQSvkqetgFbflh9tKDuBvfgTP4rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SJ2PR11MB8402.namprd11.prod.outlook.com (2603:10b6:a03:545::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Fri, 1 Dec
 2023 07:52:30 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7046.024; Fri, 1 Dec 2023
 07:52:30 +0000
Message-ID: <266d7d7a-06a2-6d76-e17a-70d37abb04c9@intel.com>
Date: Fri, 1 Dec 2023 08:52:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231130214511.647586-1-jesse.brandeburg@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231130214511.647586-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: FR2P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::18) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SJ2PR11MB8402:EE_
X-MS-Office365-Filtering-Correlation-Id: 3298bf01-6cc1-4f61-ac74-08dbf2427851
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wnZRRcm3vJrpbRD0gc06iLU9yq9kdK80RW+WYPv84G4ATyNDr91B4MhALDUYNxeM5VIDf0XjyGzY4WByoriBEUFgGfZipml+6RwYne/++4+LYEIgE9UqiN6oeB8QYRu1CI3jnaeibqys77aqW84IKrnazn5tY67ae/TCJoBMVwjXJViV0hP8/KFDePsomvbomXGIsKY7Eip0b6Je63Ey2IoUZlU57LrD3eUbdGLMgpKB0GQTA07q2LSeSJcguX1X9QFzXh13qMO/EtfsbZlObLDyy8TuGRo/9ADXZNM2XnTwj350Mta/0dDRK10kGvObX8GWpHspV5yFRO7Q4OUTVEwRQuOi7GnQqyE4Xnoxg5gkpFAcAT9G7IinxQBevNW/Rb5rGdzmcnpxCRQ8NcT1yEzoJV3HNzMKB9f4Kz/+i/9j49QnMJPf7GsiZmzJvgd1kZI4NvRnXZa85kQmNWXXwn1sya7uQC/eRKbuVATiWQr+wMca3kejrKksm+Xn+LDSy93aFVyg68VGORKdatXRfGTmXtgWcUgc3Q1sJXwqdFpIqOyD6/b3Q4kO9AUPe13vcBnEo6OTUeIcX8HEgbbdDohVUXUsi7i5J25nnLz1MZOPmK3xTMOaxxEr4PtF4wvxry7GioPe15BTqzCfXdNSjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(346002)(366004)(396003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(26005)(31686004)(38100700002)(82960400001)(4744005)(5660300002)(2906002)(6666004)(6506007)(53546011)(83380400001)(2616005)(107886003)(6512007)(36756003)(41300700001)(478600001)(86362001)(4326008)(6486002)(66946007)(8676002)(66556008)(316002)(66476007)(8936002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWduSjFsSkRCK2xoUk8ycWYrNU1nUE81Z0dRZDJ2a2dqNXZ4TllmdVVrWWtQ?=
 =?utf-8?B?cW03MjhJR2ZlcDB5T01KSTV0SjZ0YVAzdlo2NGd5WTBDZDJqQWdyS05LQ1pk?=
 =?utf-8?B?Ni9RNUxOWFlZZGhyeUxKRXlRa082U0V1QWpPVWg3dnZtVkpTc2I5QUJJOFQ1?=
 =?utf-8?B?MGs5Z2VPMUhKNXZnRmF4NFNva2ZDQUtSSVd3L2JrSW5nRnppeDVYZGVrRWRF?=
 =?utf-8?B?Ti80TGNweGxJWk1kSG1HWElVWE5pL0pQOEZWSlBsVVZHNysxbThJVXI0Z21X?=
 =?utf-8?B?bnV4dXNFTWg0MEJFQXMzMWY5NEJNWXRNWXYweXhuQlRXRmdWSE0wNCtIa3BO?=
 =?utf-8?B?eFcrT1QyRTdEOVoxNzA4RzR0dUQydkc1aGROdnJxZm5HbFJ2ckNLS1FMeitZ?=
 =?utf-8?B?QU1NaWdvWXQ5UFl1ZWkxWXpNdXZHT2hTbUgwaXRXS3Uxc2tFSlFsdEpZajE4?=
 =?utf-8?B?aXV1UkhRRHFGUXdudjQ0WE5sZTdEbllYUjZaWXpZN3ZQTHdqYlRraWMrdWpl?=
 =?utf-8?B?T2cycXc0dG9hcG9oakFUcWgzSjBMZ0o2dU9NeEl4bXFRL2ZzYjVHTmNWS29M?=
 =?utf-8?B?MU5CcHRQQit4MDQ0bk1zUUpuN29iaWJtOWdnK0F2OHIrYk5VOHBtSDl0L0pL?=
 =?utf-8?B?NUJ4WTdtYWNhRkpMa0J6WWlZbkV4TEliRDJvR2E4WlkvNTVRR25ud1ZyOHVR?=
 =?utf-8?B?V29INGtoTHdKNlg0RkZ1UnRCRU9pdnNrSUtNb21DQjdrdFFHdzRGaWxWSkdJ?=
 =?utf-8?B?cXJISFZzZGNxNGpVSXBvVjMwK2hhTjhmeno3SlBGNnExOE84WDJXeHljOTd3?=
 =?utf-8?B?N2xYRjRUWmxUOG1BUG5kSkw1UnQyUWtvRk93YzY0QXhqYXZ6RUZ6dHplak5R?=
 =?utf-8?B?MWVyTVlLNnZNQzFvVG5VKzVtQUVnZEFCUU1tT1pWRWR6dTQzbDUxZGxsd3BN?=
 =?utf-8?B?c1J6aTZGR21aTlVWQVpCQTZIeHdaNVpxbythd3JBUjYzNkVaT1l1dzNEb1pR?=
 =?utf-8?B?d24zK3BQV2RhMnN2bFZzNHpVbUFmM0lON09yU01KeWc0VWZHOGxaSUYzOXdv?=
 =?utf-8?B?dVFKOEg5TUVwa1BleXkyb3k2cFlFQStRbDV3eUF0eDlVYTIzMG03NU4wOEpr?=
 =?utf-8?B?ejBXTzNMdW00RW5xMDFDSEJmd2FaS29FTVpVL0l6U2d5OGYzcDBrRjFKTWxa?=
 =?utf-8?B?Z2pVbmVjdjAwQ1hQOG9KakhvYnpTeXl5VWdwdXdwVWNKTEdkaldnVkdoaklG?=
 =?utf-8?B?T29WTjZrUkF3UmVQeVFVTGZBRS85dklyVjVOVTlDRkNlYmtxazkwejd3VDFw?=
 =?utf-8?B?WFFhUFN3Wmp6djY4TFZQeHVjZFZZYUp3TTlzb2dwS295NFRqUk80MVNYekw0?=
 =?utf-8?B?ZkplWS84Q3FvRExoTzFWZVROSkF3K24rdml5OUxaWW4wYWtISXhyb0pxNFBa?=
 =?utf-8?B?d25MZ0JTcDdPVFEyVlA3T0JkeXRUQjZqd0p1ekNMaTdGMjhVN3JwVXNpOVdB?=
 =?utf-8?B?Ky9uOGZWSW95cmhSblZ4NHRJT2lNMUtldlFNV3BrdHo5cW92YUxjSFkwQnNx?=
 =?utf-8?B?ZjZZUjJoODk4cFAzTjVZUVYvU3ZRK1FueXdINFZudHdKMGp1QkV0Q3IwMGNr?=
 =?utf-8?B?cjlhUWdVWElzbkQ4K0xMSDRLR3JMOFkzOVNxSGVKWWpQU1l2NDlzbERBc0pm?=
 =?utf-8?B?YnB0bXh4M0NoN0tXTTgrUVkrM0plTDcvbGdYRFYwMTFyTTYyc1dSSllQYXRj?=
 =?utf-8?B?cnBwcXlhMzJWK2ZjbEg3VmxMeWkyRFg2TEwybi9WYndHSEpSZ253amZ2M2g4?=
 =?utf-8?B?VFdIM2NEYWlDakgyYmp6TU9EMElsOEVVcy9Xd1BkQnZUbkxhZDExQVBMbDdE?=
 =?utf-8?B?cmpKRUJ2ZUptMkQvekZ5Sm5mMG5hQVZLV3hWRHRNTU5aZ2F5VE9hZmwxaWtx?=
 =?utf-8?B?VFJDcDJxWlRWV0krWitYdmxDSlNUdjhHWTNTTW45SEFpQkRMUGl5aVRKbTJi?=
 =?utf-8?B?ZWtGVnZBU3orZ1YrUU5TYk9KeXNaMTZjazdoTW4zSmcvWUhHZ1FOaVl5dlkz?=
 =?utf-8?B?WTRBU0EyNmRqUmlUd2hyVE04ZG4xVGdudzMyVmpWQVZMWHdTa3AyYmtkUDBs?=
 =?utf-8?B?NzFGRzJuSS9wY1YwY294cm5ONEplNzNibXRJSTdscmd5dXRVOTVva29VSlZ4?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3298bf01-6cc1-4f61-ac74-08dbf2427851
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 07:52:30.5818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p01GpMv+a19s15NKmmaEC3Zxm8hR4ajAZkafqfSiSFGp1LbWUladW0uEP4ZtKA4eHxQXjXs5LXUbpO7zWqXU0LqpHwe+szBkXNXAMav0nE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8402
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701417221; x=1732953221;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CGJu70902JcGJGLjnKMKELdudgqAa2OWtOSoLw7fSlg=;
 b=OJe6tW66vHcpi3+1x7Kzsb/++WaBotS9H2IPN8JOzXuWPqjIN+/fqLTu
 VEuE1pZ+IYia958BpeyulHLaxid3jx9+2JivG8ucAnWH1RWH94i8icUG5
 /lpRd0aIuSFUhJ4ssTfrRDBBvDop0EFJCk1YfsnlYygbfFL5dLR49rhRo
 aoGIFH8o+BiZtjx2MZhJrZSWIwfexMl8DAlxhSpeGBSR2gdB0wIpZKFV3
 3LCBXXq04+4Lu6ZF+8i/GXLK7rUJtzWFHYsZ9gNx+gsRlWumnfpD/kFJM
 o3LMhNQfP65gIeyl7zAa0C2MOAnU+ORy9FLXJoQYKrzS04YAxWds2rD5H
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OJe6tW66
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: refactor some
 missing field get/prep conversions
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/30/23 22:45, Jesse Brandeburg wrote:
> Most of idpf correctly uses FIELD_GET and FIELD_PREP, but a couple spots
> were missed so fix those.
> 
> This conversion was automated via a coccinelle script as posted with the
> previous series.

[1]

> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> This patch should be applied after the larger FIELD_PREP/FIELD_GET
> conversion series for the Intel drivers.

or at the end of,
so [1] would be self-explanatory

> ---
>   .../ethernet/intel/idpf/idpf_singleq_txrx.c    |  7 +++----
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c    | 18 ++++++++----------
>   2 files changed, 11 insertions(+), 14 deletions(-)
> 

Anyway,
it is better code so,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
