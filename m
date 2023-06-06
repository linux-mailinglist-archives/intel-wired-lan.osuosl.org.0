Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BF87242F7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 14:50:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5080B415AE;
	Tue,  6 Jun 2023 12:50:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5080B415AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686055800;
	bh=YmSvsyBn0QSjqCDalbuSxR8z1CTKeyB5GR83swLBpXs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rO7QUjuPM9qsKEvPq2b70YOrbrq9A56IjDdSQRavl+geVwgB/7EuufX6aJyGm3YPx
	 PhIs7mhi+wRp3S+T2mKP9PR05YKQqbNJskCW6dLNO08YdkP7RMimhrc3x02pX5ZTSl
	 iIlmLezFhx+z4RJoZe01/IbXHxxl/wignozKaQVbzbPVyPJTxeseElIWNLJLt7iPps
	 wfKtwAHj4hYPHGvwIgqzDb6Fr6nG1D94JeEpAPZ1o/ixNz0pmhoPlRMlEABK03bxR6
	 NJv0zhH7Y59FwTQn7HtnWG6O2PX2KTnFhUhekv6NJWxBJI/IbGX79jDYZ+5isLDacu
	 QMYM02gG3yJ3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMRI5KyjhkJn; Tue,  6 Jun 2023 12:49:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3E5740470;
	Tue,  6 Jun 2023 12:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3E5740470
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A81791BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 12:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BA1260BB1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 12:49:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BA1260BB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pqj7KzaLxSCw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 12:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A93060B43
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A93060B43
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 12:49:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="384970880"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="384970880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 05:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778986489"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="778986489"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2023 05:49:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 05:49:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 05:49:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 05:49:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 05:49:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fI/XF6CJiKg0r0d+RLoIhhZ+SUAwhM9DQSDzK8igIqK77vt5X7/dQSP7GgVGME/L6SDj9KFVuhZ2QGu7IzakynWemwqM0j2gRdo2plPbvm3JdJMq1mwS/6ALQVGdaF8/6ov04uxa/Y7QUtY/XOokxiWEd6tohp3KPKUJWLxrYvyYha8qPCtutaKMAmdyuNLdMP0GwK/j1bsLhBGqQn/S8LiPBC2fyD9HvgQ6+UfDZLgva69qTgEHKhRyAHaiQtVlQIEFyWLKrGrYWAqF+tQ1AnlSnQxHJqLdggyHa4rzZFR9e3E72Vs3rz/ewAcivUVLcl09i8pGtIrSDABHHY7SaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z/0tOYm2uwlDrY9w/hrqoZX14bBttiL91m2VNuO+sOE=;
 b=dqfEnXRRYkEC8S7kLSzL/rx2BhdUJu12yEV+Lq6a0Ci80r3QzQ9l29OdjKjRYb5RcsxSwBRPs/5cAGQ7Cpa/xF0n2upcgFaM+vmhN+2GbtSgYgYj2CiH1Maklbsn7LCFCgFV8mUBoatnCViLZan5Ud7o8zsntP23mFBZOHeRQTVECeL1v4nPFNrDF1nPvT8eCANakd6P60uzzCc81TlTbI7+IlFyB5WoIr4z1C4vVCVkgUVAO8zj4z69oFzC9MAArliR2BzeTNuLmj9Gq5pjFYnZ9Ay8AZjBzOo/4KOW21DTIY4dQSQSS2BES/ogBD2r+inI+nwRLY0TqIeC7ypGjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SN7PR11MB6678.namprd11.prod.outlook.com (2603:10b6:806:26a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 12:49:47 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 12:49:47 +0000
Message-ID: <5aac6822-6fe5-e182-935e-7aa86f1e820d@intel.com>
Date: Tue, 6 Jun 2023 14:47:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-4-aleksander.lobakin@intel.com>
 <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
 <cb7d3479-63a5-31b4-355d-b12a7e1b2878@intel.com>
 <CAKgT0Ud204CiJeB-5zcTKdrv7ODrfP09t73CqRhps7g3qhWU5w@mail.gmail.com>
 <d375fef9-43c4-9f2a-41c9-5247fcb3aa1e@intel.com>
 <CAKgT0Uc4UQ=PpVtjUAP=hjTDrWWkc79PeSwp39T6MSpo1ZyOag@mail.gmail.com>
 <cd88ac7e-fe82-fdc0-3410-0decf57d3c43@intel.com>
 <CAKgT0UeEz2Gqb62sn0pP3_yBMc-LpR0Twmv5_HTREvHBLpCsNw@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0UeEz2Gqb62sn0pP3_yBMc-LpR0Twmv5_HTREvHBLpCsNw@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0113.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SN7PR11MB6678:EE_
X-MS-Office365-Filtering-Correlation-Id: 20a86b44-ac24-4419-5fea-08db668c8216
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0ckCGM8/lKLiOmECP7EIeFvdONer3ISzsLmAbjP83RWf238FHEECsDwpcG7SzSmWBuZ+GTzMjwKwEothsxguwpOf+mMeB3cmw5y8o9YjLshrabbxG8BU2vtV2MM4cDA9IOnQ/DnTly5VF4FZu5FkwUnltQvqdDe4/0sRb2cxI9cXncT1n3AqBcwdZMJisS9OMGxmda9f5Od17hJkYkz4fkv4Wb7PqNgR6TZJYUk7KTN1HUkfgQhOsgZRx2bonCjaGBq9JaS+FCnUA38tCEzwlh4Mu8qlrMHfafNrjtIjlXj70ZNWVqA0VsZvh27yxGJ51HN9APtURWxGlFoXXOOBUL818BHllYCuGQgMyYCB38ezrCC3Ax/DOkOmipBEb5gaTd9lRIierWrCADknCEFWTXJLo7ZNwHy/2uvI1Lvu7HxPubmgk72A5RgCgdc/DapO59+NXYlo2cUEkRxrjXYNnvKkH4C3BJe6odyFiM07caWYIkolPk/c2tiknQm+hiAikcEkiqMDqH9uCo0WDxTwdbakdUw60WELh9qRbSVqUcmpedqA9QVIJwZ/FcUKSuslwYsTZ0rfYuIMusSVahsJTLP6tsScbZAedCoj3myA9yGTFbnWIGvVEMffDLBswAcR16ABpDZuv87JuitxTEuQhg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199021)(8676002)(5660300002)(316002)(2906002)(7416002)(6916009)(66946007)(66476007)(4326008)(66556008)(8936002)(41300700001)(6486002)(54906003)(6666004)(6512007)(53546011)(6506007)(26005)(31686004)(186003)(107886003)(36756003)(2616005)(83380400001)(478600001)(82960400001)(38100700002)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGFwUEdLbzhjRVcvM2trbHRSQVA4cEFIMmF3UlZYdUY5Nzc0NU5OZk9qVVBM?=
 =?utf-8?B?d2FuYmRkS2Zuamc1c01ic0FCOGlkbXp3OWhwOU45UVZhaXNJVjUrTlZBRFEr?=
 =?utf-8?B?R24zZlE4a2ZkQmRmTmREMnE5TUpWejI2bTFYcDM0eEpEM09LRUJkTjFnd0Vi?=
 =?utf-8?B?SWN2VXBHcjBVRGR6UmFQWllFMmhIbHJDWERkck10MmQ0RzZKMWtSRjJsUGRx?=
 =?utf-8?B?V1B4QW1QbW9ERno3c0dQV1lCZVc3UndqWXRBanBZdFUvc0tLU2wrdkJDd1My?=
 =?utf-8?B?TFp1dEpsdE1Zei9ZdmxIQ2pMS1Z2NmtGRmJwWkU1anZoS056TFEvcWk3Qi8r?=
 =?utf-8?B?ZVVvRUtpVURpdUtac2VDanRTcmpiSkloMmRkV0FpbFNyS29md2pQbUV4Nysv?=
 =?utf-8?B?amdTY09rWW5iVCtKUWxtZUZUNWNLczR0emR3ZFlEQlNJVzZpNEQ4MklBUHow?=
 =?utf-8?B?ODBVYzV6VUMyTFkxeEI1dTB3OTl3ZGZnS0JFWjJZYTNiM1ZaQ3lWZDRBS0sz?=
 =?utf-8?B?a2R4MlY1ZHhYOUJlTWJoRG1YeWNqaW1BR1lIaGdYSnlUdHZ5Ky9MZy82NDYy?=
 =?utf-8?B?ekdlYmVveGNOOXUrQUx6OElsTUM2aWRFamxlajQ3SU44Uld0a0U5d0lHNnJ2?=
 =?utf-8?B?VGFvZkQzM0MyRXp0Zk9XK1oxb1FqSzdGdjR6NVdwdnVzUWEyL3dycVl2S3la?=
 =?utf-8?B?enJGaFhmYUhES3N1dDZkQTdpRDJlZXkrWDhPdWxQbXRBdFpqUlpZNUJVMXlH?=
 =?utf-8?B?UWpmbmVMZXVBbTVDYXFjTUJyb1U5RUM3dmd2QTFlV084K3kwZ2ZMakJHbThT?=
 =?utf-8?B?Uk5kdWJNck1RMmFCNW9wZUZhaERmNmFacWMwUXBGNURtZzFhcnpVS3krQkRv?=
 =?utf-8?B?TVdGdnZxNEVyVGhZL215clB4eHhONU1EZDllendBUFkzbVZSdVYxMXV1RHdz?=
 =?utf-8?B?KzcwYUQwdDhUNUNrcVgwZUJBdjFmYXdnSTBOT2h3SFZmbGMwZXg3dkE4Mm9s?=
 =?utf-8?B?RDRWdUExdG1IajJ6RGRLa3NvaFZZVURudmNZSVJpN3JUUFFGMUptLy91ZkNO?=
 =?utf-8?B?blEwaGRLR0syVXRNdjVUSzQwT284RHlrcm9qSFM0MGQ4TlZJWUhnMTE1L2Fl?=
 =?utf-8?B?M2djYnREZENzSG5sTkwvMWRtM2czSFFWUWI2QlV6ZUNxYTVMTWpuK1BnMElw?=
 =?utf-8?B?YU1aelFjaGR4Qjlnb2Z0YkxFM3RBWHgzUVUwTWxKeTN3d0c3RlVMZTJpblUv?=
 =?utf-8?B?Zk9NWTVBbG55U0hxYTF3dmNENFVOQjUrSXN4aldKWmo5eHBFWGVFTVpuTmlk?=
 =?utf-8?B?Um10Nkwra3Q0R1dURTdyZk5HaEo3WFlaZjZDOEtJdE50MXE1dWljZGxrZmla?=
 =?utf-8?B?bFlqUjdSUktucFhlSDVvQ3pjMVoxZTlhWDErOW5NQzAzYUJkRC9zUHhEbjlj?=
 =?utf-8?B?TGxMVWFRVTdscFNWMy8zbktraVRPZWcvYkFqSTcxemRURldqNm1qS1NUOE5U?=
 =?utf-8?B?ODRXRGgrK1JJWmpkYnJIOXdTeVBocnRac1BRRG5sbVFrcDlhT2Z2RDl1ZUd1?=
 =?utf-8?B?MGhDYTloaUNCY0s4eGRpTndoRkZLTjdDa3FhckpvaVdaQlRySjZ0WGRna2RN?=
 =?utf-8?B?K2hMejZoNjRVQTEzaWQ3NzBqTEcxZ2dIMmpocWtJakEyb3kxeENDVDVlcnlL?=
 =?utf-8?B?VjVSYTdiRVdTWG1EeUxvWlRQYXdjUTU2SG92QVQxRHBrN2Zwa0hxWW1HYkhE?=
 =?utf-8?B?OW9aKzVlb1dxVlFxNFNXN2dIMG44ZmNrUGJMYTZlTWxSVDVySUJXSTQ4RTZV?=
 =?utf-8?B?MzQ0UTVBRkpPcCs2ZlhLUWdlcHpLWnRIekJ5NTYzUEFPUHdRSFl2OXU5ZXRY?=
 =?utf-8?B?emduSWhPTUVKL2VqQ09aQTZZU1dMNVlaUWM1aWhVOHVSWGN4SzA2QjE2OWdn?=
 =?utf-8?B?LzRLUWxraEVyd3M4OEhPeVpISm9qVWdqSlRpbjVNWG5IVU10L1hONEVFb0RK?=
 =?utf-8?B?djAvS3BEQUFuN2g4NVB4SmI5eVBuSEUwNmt5cWNmRFV5cmhhT3FUZ3ZQVnR5?=
 =?utf-8?B?RUJhTWwwUzM5VVMxZk53eVNzUmR1SmErWWhRMTJsNzdNM2F0WlN1WDFjL1pZ?=
 =?utf-8?B?SWVyZ3VxZTdBZm5XUzA4VnM1ZUJWcWdHNFdHaFo1YkpXck9HQWVxRlduemRZ?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a86b44-ac24-4419-5fea-08db668c8216
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 12:49:47.1130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mnYUYLElIwXKq5GcUoZja7svRqMIb8Fbln37qvq4G+F01ydEU6opLpBk8HuLmM6YUklTzI7s4uxFxyNCrXCH/11hgh5Yf5l5SAYQdsbKXbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686055792; x=1717591792;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sn0oHPLVUPQNMV8adkovLgL2+xyrkHyvfizzUaRL3Fo=;
 b=LP7u41X5VLWPcwWzogty02y4zLcXQTYxHC0BzcW3mjsfVl4Q793bjh3/
 oWQ5bBxbplaDxzTGyK0uhOzb3QpXlrSTDKGoDUsdWo1T851QPlP+AdjbM
 bMVJpKkHwdWq56xbUQiMSoZd4E+uQ1X0L//mGg5HcMmtSGcr9Io984Udm
 tK4gcv2aXz1leeZUXg0bN3ndXYTmyCjAOahKeDi54/08A886Xy2o+dRQB
 NFp5tcNb5O/t/9+Tqjnk02YnliUJzLHzdNl/F52g0lqNdXq1dY32qdhj1
 +DE76H8qLwmTFu/HB3HjuVDdaC2Apb8uNUN+q8t02CwHH5l6JiWtCuh/H
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LP7u41X5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] iavf: optimize Rx
 buffer allocation a bunch
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgpEYXRlOiBG
cmksIDIgSnVuIDIwMjMgMTA6NTA6MDIgLTA3MDAKClNvcnJ5IGZvciB0aGUgc2lsZW5jZSwgaGFk
IHNvcnRhIGxvbmcgd2Vla2VuZCA6cAoKPiBPbiBGcmksIEp1biAyLCAyMDIzIGF0IDk6MTbigK9B
TSBBbGV4YW5kZXIgTG9iYWtpbgo+IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPiB3cm90
ZToKClsuLi5dCgo+PiBPaywgbWF5YmUgSSBwaHJhc2VkIGl0IGJhZGx5Lgo+PiBJZiB3ZSBkb24n
dCBzdG9wIHRoZSBsb29wIHVudGlsIHNrYiBpcyBwYXNzZWQgdXAgdGhlIHN0YWNrLCBob3cgd2Ug
Y2FuCj4+IGdvIG91dCBvZiB0aGUgbG9vcCB3aXRoIGFuIHVuZmluaXNoZWQgc2tiPyBQcmV2aW91
c2x5LCBJIHRob3VnaHQgbG90cyBvZgo+PiBkcml2ZXJzIGRvIHRoYXQsIGFzIHlvdSBtYXkgZXho
YXVzdCB5b3VyIGJ1ZGdldCBwcmlvciB0byByZWFjaGluZyB0aGUKPj4gbGFzdCBmcmFnbWVudCwg
c28geW91J2xsIGdldCBiYWNrIHRvIHRoZSBza2Igb24gdGhlIG5leHQgcG9sbC4KPj4gQnV0IGlm
IHdlIGNvdW50IDEgc2tiIGFzIGJ1ZGdldCB1bml0LCBub3QgZGVzY3JpcHRvciwgaG93IHdlIGNh
biBlbmQgdXAKPj4gYnJlYWtpbmcgdGhlIGxvb3AgcHJpb3IgdG8gZmluaXNoaW5nIHRoZSBza2I/
IEkgY2FuIGltYWdpbmUgb25seSBvbmUKPj4gc2l0dWF0aW9uOiBIVyBnYXZlIHVzIHNvbWUgYnVm
ZmVycywgYnV0IHN0aWxsIHByb2Nlc3NlcyB0aGUgRU9QIGJ1ZmZlciwKPj4gc28gd2UgZG9uJ3Qg
aGF2ZSBhbnkgbW9yZSBkZXNjcmlwdG9ycyB0byBwcm9jZXNzLCBidXQgdGhlIHNrYiBpcyBzdGls
bAo+PiB1bmZpbmlzaGVkLiBCdXQgc291bmRzIHdlaXJkIFRCSCwgSSB0aG91Z2h0IEhXIHByb2Nl
c3NlcyBmcmFtZXMKPj4gImF0b21pY2FsbHkiLCBpLmUuIGl0IGRvZXNuJ3QgZ2l2ZSB5b3UgYnVm
ZmVycyB1bnRpbCB0aGV5IGhvbGQgdGhlIHdob2xlCj4+IGZyYW1lIDpECj4gCj4gVGhlIHByb2Js
ZW0gaXMgdGhlIGZyYW1lcyBhcmVuJ3QgbmVjZXNzYXJpbHkgd3JpdHRlbiBiYWNrIGF0b21pY2Fs
bHkuCj4gT25lIGJpZyBpc3N1ZSBpcyBkZXNjcmlwdG9yIHdyaXRlIGJhY2suIFRoZSBoYXJkd2Fy
ZSB3aWxsIHRyeSB0byBjYWNoZQo+IGxpbmUgb3B0aW1pemUgdGhpbmdzIGluIG9yZGVyIHRvIGlt
cHJvdmUgcGVyZm9ybWFuY2UuIEl0IGlzIHBvc3NpYmxlCj4gZm9yIGEgc2luZ2xlIGZyYW1lIHRv
IHN0cmFkZGxlIGVpdGhlciBzaWRlIG9mIGEgY2FjaGUgbGluZS4gQXMgYQo+IHJlc3VsdCB0aGUg
Zmlyc3QgaGFsZiBtYXkgYmUgd3JpdHRlbiBiYWNrLCB0aGUgZHJpdmVyIHRoZW4gcHJvY2Vzc2Vz
Cj4gdGhhdCBjYWNoZSBsaW5lLCBhbmQgZmluZHMgdGhlIG5leHQgb25lIGlzbid0IHBvcHVsYXRl
ZCB3aGlsZSB0aGUKPiBoYXJkd2FyZSBpcyBjb2xsZWN0aW5nIGVub3VnaCBkZXNjcmlwdG9ycyB0
byB3cml0ZSBiYWNrIHRoZSBuZXh0IG9uZS4KCkFoIG9rYXksIHRoYXQncyB3YXMgSSB3YXMgc3Vz
cGVjdGluZy4gU28gaXQncyBub3QgYXRvbWljIGFuZApza2IveGRwX2J1ZmYgaXMgc3RvcmVkIG9u
IHRoZSByaW5nIHRvIGhhbmRsZSBzdWNoIGNhc2VzLCBub3QgYnVkZ2V0CmV4aGF1c3RpbmcuClRo
YW5rcyBmb3IgdGhlIGRldGFpbGVkIGV4cGxhbmF0aW9uLiBJIGZlZWwgMSBza2IgPSAxIHVuaXQg
bW9yZSBsb2dpY2FsCm9wdGltYWwgdG8gbWUgbm93IDpECgo+IAo+IEl0IGlzIGFsc28gb25lIG9m
IHRoZSByZWFzb25zIHdoeSBJIHdlbnQgdG8gc28gbXVjaCBlZmZvcnQgdG8gcHJldmVudAo+IHVz
IGZyb20gd3JpdGluZyB0byB0aGUgZGVzY3JpcHRvciByaW5nIGluIHRoZSBjbGVhbnVwIHBhdGhz
LiBZb3UgbmV2ZXIKPiBrbm93IHdoZW4geW91IG1pZ2h0IGJlIHByb2Nlc3NpbmcgYW4gZWFybGll
ciBmcmFtZSBhbmQgYWNjaWRlbnRseQo+IHdhbmRlciBpbnRvIGEgc2VjdGlvbiB0aGF0IGlzIGlu
IHRoZSBwcm9jZXNzIG9mIGJlaW5nIHdyaXR0ZW4uIEkgdGhpbmsKPiB0aGF0IGlzIGFkZHJlc3Nl
ZCBub3cgbW9zdGx5IHRocm91Z2ggdGhlIHVzZSBvZiBjb21wbGV0aW9uIHF1ZXVlcwo+IGluc3Rl
YWQgb2YgdGhlIHNpbmdsZSByaW5nIHRoYXQgdXNlZCB0byBwcm9jZXNzIGJvdGggd29yayBhbmQK
PiBjb21wbGV0aW9ucy4KCkNvbXBsZXRpb24gcmluZ3MgYXJlIG5lYXQsIHlvdSB0b3RhbGx5IGF2
b2lkIHdyaXRpbmcgYW55dGhpbmcgdG8gSFcgb24KUnggcG9sbGluZyBhbmQgdmljZSB2ZXJzYSwg
bm8gZGVzY3JpcHRvciByZWFkIG9uIHJlZmlsbGluZy4gTXkKcHJlZmVyZW5jZSBpcyB0byBub3Qg
cmVmaWxsIGFueXRoaW5nIG9uIE5BUEkgYW5kIGRvIGEgc2VwYXJhdGUgd29ya3F1ZXVlCmZvciB0
aGF0LCBlc3AuIGdpdmVuIHRoYXQgbW9zdCBOSUNzIG5vd2FkYXlzIGhhdmUgInJlZmlsbCBtZSBw
bGVhc2UiCmludGVycnVwdC4KUGxlYXNlIGRvbid0IGxvb2sgYXQgdGhlIGlkcGYgY29kZSwgSUlS
QyBmcm9tIHdoYXQgSSd2ZSBiZWVuIHRvbGQgdGhleQpkbyBpdCB0aGUgIm9sZCIgd2F5IGFuZCB0
b3VjaCBib3RoIHJlY2VpdmUgYW5kIHJlZmlsbCBxdWV1ZXMgb24gUngKcG9sbGluZyA6cyA6RAoK
Pj4gaWNlIGhhcyB4ZHBfYnVmZiBvbiB0aGUgcmluZyBmb3IgWERQIG11bHRpLWJ1ZmZlci4gSXQn
cyBtb3JlIGxpZ2h0d2VpZ2h0Cj4+IHRoYW4gc2tiLCBidXQgYWxzbyBjYXJyaWVzIHRoZSBmcmFn
cywgc2luY2UgZnJhZ3MgaXMgYSBwYXJ0IG9mIHNoaW5mbywKPj4gbm90IHNrYi4KPj4gSXQncyB0
b3RhbGx5IGZpbmUgYW5kIHdlJ2xsIGVuZCB1cCBkb2luZyB0aGUgc2FtZSBoZXJlLCBteSBxdWVz
dGlvbiB3YXMKPj4gYXMgSSBleHBsYWluZWQgYmVsb3cuCj4gCj4gT2theS4gSSBoYXZlbid0IGxv
b2tlZCBhdCBpY2UgdGhhdCBjbG9zZWx5IHNvIEkgd2Fzbid0IGF3YXJlIG9mIHRoYXQuCgpObyBw
cm9iLCBqdXN0IEZZSS4gVGhpcyBtb3ZlcyB1cyBvbmUgc3RlcCBjbG9zZXIgdG8gcGFzc2luZyBz
b21ldGhpbmcKbW9yZSBsaWdodHdlaWdodCB0aGFuIHNrYiB1cCB0aGUgc3RhY2sgaW4gbm9uLWV4
dHJlbWUgY2FzZXMsIHNvIHRoYXQgdGhlCnN0YWNrIHdpbGwgdGFrZSBjYXJlIG9mIGl0IHdoZW4g
R1JPaW5nIDopCgo+Pj4gWWVwLCBub3cgdGhlIHF1ZXN0aW9uIGlzIGhvdyBtYW55IGRyaXZlcnMg
Y2FuIGJlIHB1bGxlZCBpbnRvIHVzaW5nCj4+PiB0aGlzIGxpYnJhcnkuIFRoZSBpc3N1ZSBpcyBn
b2luZyB0byBiZSBhbGwgdGhlIGV4dHJhIGZlYXR1cmVzIGFuZAo+Pj4gd29ya2Fyb3VuZHMgb3V0
c2lkZSBvZiB5b3VyIGJhc2ljIFR4L1J4IHdpbGwgY29tcGxpY2F0ZSB0aGUgY29kZSBzaW5jZQo+
Pj4gYWxsIHRoZSBkcml2ZXJzIGltcGxlbWVudCB0aGVtIGEgYml0IGRpZmZlcmVudGx5LiBPbmUg
b2YgdGhlIHJlYXNvbnMKPj4+IGZvciBub3QgY29uc29saWRhdGluZyB0aGVtIHdhcyB0byBhbGxv
dyBmb3IgcGVyZm9ybWFuY2Ugb3B0aW1pemluZyBmb3IKPj4+IGVhY2ggZHJpdmVyLiBCeSBjb21i
aW5pbmcgdGhlbSB5b3UgYXJlIGdvaW5nIHRvIGxpa2VseSBuZWVkIHRvIGFkZCBhCj4+PiBudW1i
ZXIgb2YgbmV3IGNvbmRpdGlvbmFsIHBhdGhzIHRvIHRoZSBmYXN0IHBhdGguCj4+Cj4+IFdoZW4g
SSB3YXMgY291bnRpbmcgdGhlIG51bWJlciBvZiBzcG90cyBpbiB0aGUgUnggcG9sbGluZyBmdW5j
dGlvbiB0aGF0Cj4+IG5lZWQgdG8gaGF2ZSBzd2l0Y2gtY2FzZXMvaWZzIGluIG9yZGVyIHRvIGJl
IGFibGUgdG8gbWVyZ2UgdGhlIGNvZGUKPj4gKGUuZy4gcGFyc2luZyB0aGUgZGVzY3JpcHRvcnMp
LCBpdCB3YXMgc29tZXRoaW5nIGFyb3VuZCA0LTUgKHBlcgo+PiBwYWNrZXQpLiBTbyBpdCBjYW4g
b25seSBiZSBmaWd1cmVkIG91dCBkdXJpbmcgdGhlIHRlc3Rpbmcgd2hldGhlciBhZGRpbmcKPj4g
bmV3IGJyYW5jaGVzIGFjdHVhbGx5IGh1cnRzIHRoZXJlLgo+IAo+IFRoZSBvdGhlciB0aGluZyBp
cyB5b3UgbWF5IHdhbnQgdG8gZG91YmxlIGNoZWNrIENQVShzKSB5b3UgYXJlCj4gZXhwZWN0ZWQg
dG8gc3VwcG9ydCBhcyBsYXN0IEkga25ldyBzd2l0Y2ggc3RhdGVtZW50cyB3ZXJlIHN0aWxsCj4g
ZXhwZW5zaXZlIGR1ZSB0byBhbGwgdGhlIG9sZCBzcGVjdHJlL21lbHRkb3duIHdvcmthcm91bmRz
LgpXYWl0LCBhcmUgc3dpdGNoLWNhc2VzIGFsc28gYWZmZWN0ZWQ/IEkgd2Fzbid0IGF3YXJlIG9m
IHRoYXQuIEZvciBzdXJlIEkKZGlkbid0IGV2ZW4gY29uc2lkZXIgdXNpbmcgb3BzL2luZGlyZWN0
IGNhbGxzLCBidXQgc3dpdGNoLWNhc2VzLi4uIEkgc2F3CmxvdHMgbyd0aW1lcyBwZW9wbGUgcmVw
bGFjaW5nIGluZGlyZWN0aW9ucyB3aXRoIHN3aXRjaC1jYXNlcywgd2hhdCdzIHRoZQpwb2ludCBv
dGhlcndpc2UgOkQKClRoYW5rcywKT2xlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
