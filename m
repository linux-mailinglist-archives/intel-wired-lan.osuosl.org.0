Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B476EB258
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 21:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F014070005;
	Fri, 21 Apr 2023 19:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F014070005
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682105976;
	bh=9WMl/YwFTw5S0vyG+A0Id6CpSdS76LT11g2FnbFjM0I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0hVJznmWrAXlix7rms50/w9kwZGiMgex9zPHlwjTqT0+2tpU8OL6hhy2T1tvDh+3c
	 PsDCvA4ac19TDMdfDCAYu8/8DMOAJ7YA0GmMN2qbWUF4BR+eaSRkjjhUnDK3wEow/f
	 FMEqlW7GqffOrcicT9tfNw9hGeUFr0uRowgQ//vIkExQHchxIvyeDqV0Qn9285Tz1E
	 VsLjUFV55b0cCN85Ye78I6gCbVwSEmTbW7DIiVL3v80o5UwNLDgeS7uxmQglm50v5f
	 cUQZOj4hZcZOCnwxmMfPvjxyr5MtP+qcVtESU9VY1Gost7rsrDcW49MKau+8miwNm6
	 jEJmvoUF0u7eQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZE_5WjRipqZ9; Fri, 21 Apr 2023 19:39:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9286360BFF;
	Fri, 21 Apr 2023 19:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9286360BFF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CA411BF348
 for <intel-wired-lan@osuosl.org>; Fri, 21 Apr 2023 19:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04086841F8
 for <intel-wired-lan@osuosl.org>; Fri, 21 Apr 2023 19:39:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04086841F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9c0nHZ0ooBRB for <intel-wired-lan@osuosl.org>;
 Fri, 21 Apr 2023 19:39:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12205841F3
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12205841F3
 for <intel-wired-lan@osuosl.org>; Fri, 21 Apr 2023 19:39:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="326396447"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="326396447"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 12:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="685812470"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="685812470"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 21 Apr 2023 12:38:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 12:38:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 12:38:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 12:38:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUBuvzHh+TmygxgXhfBElR2MetUTTdQxouRVXkneEl5hxsAXQSihar7vQQAuyg0jeoTs8TFYN7AN9MmkMSge8l/uTFJEUzK3GqdzGHwdEpUDbzpCSTvwnOKlxbOE5ctZtvhUynAcCHeNqluTc+1MgBpC9ay20MSHaq0BLiUnQMt5pOziOkPdBGShsmCX1Hg30pVvzA9WqC7lrBi9pGDYX9JaBJxET2WUtowIz3pDj+98O0XYzL1Zvb2f8ohuS1nSgiX0Lrhp0caw5Z4JNapjD6Ixe/P5Rhuo7sLN275f3PzZyNeO3jdIIq3MQ7O4QsIzZeKaBkP1+2XXFoXoPm1clg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AHlGEfQvObbOaDqTtrbm/y2BINZUKSaUCmUah+ckTW8=;
 b=XRcnCbhSjWo0CxLGb91dM6wKgudGG8rGBQ8OLAvRMC2K8cClyUnXY5J2fthjES8TyMtoJfDFoOx7tYyWkd1L5SULB7V12ozXrUSi5hN4FHViw3DnUPCrI/uvBI+31PSkGzM0rHW6r0HTrTZk68fTJgN2KCA2mRZubFcIn5FVXjlHFTeHB2FwmEoj8z14VF+A7uYWhA1l3VEMXHlJPclJPaq3tMGJpIX3SZZQ841AkLjQ3ncHIra+BdFljc669QRnDbDJQpjD6vIQKJRlj+Dx1+rVJp4SSJanF63srxaSC+eG4kN1EYYX3QovY6TVJrthNOte2x9O1SqKl2lW80H84Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5343.namprd11.prod.outlook.com (2603:10b6:5:392::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 19:38:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3c6f:a70d:414b:98f7]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3c6f:a70d:414b:98f7%4]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 19:38:32 +0000
Message-ID: <c73eb493-d3fb-1f12-ddf9-d721a469bcc0@intel.com>
Date: Fri, 21 Apr 2023 12:38:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: <intel-wired-lan@osuosl.org>
References: <20230420130810.214307-1-kamil.maziarz@intel.com>
 <20230420130810.214307-3-kamil.maziarz@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230420130810.214307-3-kamil.maziarz@intel.com>
X-ClientProxiedBy: SJ0PR03CA0039.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB5343:EE_
X-MS-Office365-Filtering-Correlation-Id: 045f4958-f90f-44ac-9410-08db429ffd02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1Z9uj5JitjpxxK8DStMBiEBWmMoaemBtpgzthZfDykE5hAexMnMY3eZykYZQngvCqYTNl3QRvvFEajS85Zrgxof6cbCu3GFDwuDsrABAohNi+Z1mSKXiKIQ0KNbV33jGrSCOxLJKy9Z69tzeeUC9hzqTb5wOy6/pkWvq6X+TGlhhMzTVZM6tETu/5R73/w3tIZcB4NnhoSCUEnPVjL0Fl1s5becnO9GQoa7NBbJm/gmnCHgdFRurr1oWUR9akq1zhvd2nWr5yK87xcsZQ/B5cNerDMoY6225ycoQtMKFhZEkppIrOmjZVvW3iZXihwcul7RUg77NgOl9Ndk9FE6RMBZj1E/pEO93EBRY2MdpRAvu08JXN9F6OEgXcx00KmtU5MHv5Ti5GCbGpWszSH+mYdCtkUXuIXUTpdc0rqGkvY1fWMD+ouoJxAUDMl82HQ8xhaTHFSQkV8UoFX7bvld24vEcejUdfRlZcbbuZxd2yM3WBQpvhWdVaSAuUFYw64bBGpbEQOfOsbAiG9a0DcnqQlkUVaopdfDULUY8zvrk5hdAEBfW36Q1ekS9aguiUMa2rXw5JRS2ULm90U8h4efCSbII1PlW5pJ3cNSlKKLYqerwMj3XVT0GF3ltGMeoZJe0yUtrKFXERKkhtA0cSsLqlQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(366004)(346002)(136003)(451199021)(5660300002)(6916009)(66476007)(66946007)(66556008)(2906002)(4744005)(8936002)(316002)(8676002)(41300700001)(31686004)(83380400001)(478600001)(6486002)(6666004)(26005)(186003)(6512007)(6506007)(36756003)(53546011)(2616005)(31696002)(82960400001)(38100700002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUtBNHpoSFJqNWlxK2VsbGh6cHZuT1EzNFRCMEtTWXh2MUh3Ti9mVGlSWUN0?=
 =?utf-8?B?MWtkNVExdjVFRS90YmcvaU93N0V4UGh1UHE1OXVwWVhQazJ6QytnMWJMSDVr?=
 =?utf-8?B?SmtRaTNrckNlSlpURTFnZVgvM2FEZFUrUnJPa2VBVEdsMktvSUI4dzlQY0Rz?=
 =?utf-8?B?dXc0RDBmbWJRSEI5U043dUUzYkdOdlpwYjZTYTBXS2F0dEZhejRnSGF5KzQ1?=
 =?utf-8?B?Vm12bTFZdHNwVFlKSkxVSkl5MTVPcWkwVlN2OTZTcE9jeXdySlZLUHFtNnox?=
 =?utf-8?B?NmFma29ZcjVWUlZ1aG5xVGN0NGhncFZydGdnai8reUdycFBaWUhqM1Y2ajVu?=
 =?utf-8?B?NFY2NzZjWEYvL3JHT2lydE82MmZNL0tSNDgxM0c0OUU3YkpSbmJ1dWkyb3Vh?=
 =?utf-8?B?UXhIVjJlc0VITzlpMDNhNmpDdzFBeHFycEFZZnV2bFQyMFNES3dFNGY0YWlX?=
 =?utf-8?B?YW0wWTNvck5KUmpCVm5rQXlWRnl5ZWVSWFViQ3ZTYlN0YXhwSVJhUW56SnU2?=
 =?utf-8?B?bEphUjkzeGRFU2IwNjdScnRITFVNOC9TUlFoaXlLWk82dkhTbDJmMWV6anQ4?=
 =?utf-8?B?Wkx1VUlIcjRYY1VEWVdOKzJ6cXE5eW54VHUwSHU4MFFSd1VaMlpkZ29iaytS?=
 =?utf-8?B?SUNHQkZtSXBobHdodlhBV3pyMkl1SU9GUm96NnkwdjErQk5BTEJqZVM1QlFm?=
 =?utf-8?B?WFo4OVlFaXU5L2dhQUZ0aGd4L3FwdVZUTDFHZmRMTURESjJoNjhSZ2hQREkx?=
 =?utf-8?B?blRtVGZJR2hNNzJ0WjZoVElJZ0RTVEJudHNzUklsODNJcWZvSUJJd0gwSnVN?=
 =?utf-8?B?MmZibzc4SzJDWnljbC9RdkNMWnZCUjUwTWRralc4VXBvU0hHRDFKL0dUYlZn?=
 =?utf-8?B?WHZHcFBZbjJlVlhienduc1FVQXpwNUZRVHNKenBuanhNMys2K3hUcHV4OWEr?=
 =?utf-8?B?RmpkdmVYUE4vK2E0SnVrS1UyZmNtSzU4QUVJNmRibXZLK25jM2xYNEE1OHN5?=
 =?utf-8?B?TEp4OFFjQWh4MnNQUmtLWnBmbS9TeHBhUEVFb1U5MHRjYzFuWkJ5QmVtRUYr?=
 =?utf-8?B?K2l3UlQxWnJwTlZ0QzZUT0lBYjFDMzZjVFhQMWJ5NENpdGtKeWxmV2N1UXp6?=
 =?utf-8?B?TzRJWHN5b3huU1JacUVqVzQwMTdzWWZmNllUZ1ZMT3NvT3Z0SCtPcWJFSGRF?=
 =?utf-8?B?a2oyLzF5ZTlUQXZJVGk4WUJmaXAxR1pRbFk3RTRicnBzWHdsTVA2Vk1zN3ha?=
 =?utf-8?B?NmVOQkZYa1docG9vc2c2K3FsRm1XaHFKWURVckJHdTA4ZUg5NytBU3gvZ0Ew?=
 =?utf-8?B?ZW1ENytpVGhkdVYydkk3NFc4eEM4WlUvMlhYTG9QTm1Ub25FMXh2TTdYTFkv?=
 =?utf-8?B?ZHNXOWtKV1k4WmpYMDZXb1ZKb002Uk16Zk5ZZHNKczhaUWk1cmlqVE1NZlN6?=
 =?utf-8?B?aTIvMzNPYlZDNXNlTDZoeGZieFFYamxmUkcwbzcwdWc1dzF1WDlhaUFpNnV1?=
 =?utf-8?B?QkROUkwzalVpM0poYWt5cWlWaFdYZFVFQmRybFpJQ0xadm1CeG5mNnkrUzB5?=
 =?utf-8?B?T1Bub1dtQXppOWY0SEN0VTBUNHJ2am5JYSsvZU02TkI0WlZJQWdNbjZHVjkv?=
 =?utf-8?B?NEpLRkNEMWkyU1M2VWc4SXV0c3hKcHptT0MwalVZSmpDSW9rdXA1OTRETVhF?=
 =?utf-8?B?QmNHWGwzMStLRTJWKy9EZ3dTR1JCUnNPRm9ESWQyQXM1aTN0K1ljNUM4TUx1?=
 =?utf-8?B?NGJuTFpSS1ZyNSsxRTI0ZVFvKzlsNVRMRUhyMXNmUE03K2tnczJKN3A3NjFt?=
 =?utf-8?B?VjZMa3hyNlZMbGkvaVRLVWcxMDlDZW4xWTJ3VnhnMGkvdlQvN2pMeVZQUENG?=
 =?utf-8?B?OFVqTVV0cDlqREdYWGJLd1UwOGErSTlyZDJVcThINzhhaDBRZlJsOWtIWnY5?=
 =?utf-8?B?L0tpWVNydnorREIrc3dqaks1TFZxcTArenp3bm5XMi8xMHhvN2cxSVBSNDJu?=
 =?utf-8?B?MllNUE45Z1NNNXA5dTcwUStWYTR5VGpEZFp0UWN1bDVKcjdiQnNGTjZiN2pL?=
 =?utf-8?B?NzBNcU1qazJBZU9NNko4ck5uMXBsa0YrbnFoL1BBMTBhTEg2NHhPODZPWlpx?=
 =?utf-8?B?MWxsQW5RM1BJYXFPRzdKSmx6d21IR3M3OWNoZTBYT2hIOS9PWFhqZ0Rrdmtm?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 045f4958-f90f-44ac-9410-08db429ffd02
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 19:38:32.1768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uBj7wnOm8722KRvH9dtEO97lRh2AEX0YPD7NB6RyDnKkvIyYySiigLOrrcu1BIAC/nZcAG6WWw7iuxUwz+D8ZW3ADfxr02AkG3M5OAddyrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5343
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682105969; x=1713641969;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+0M+ZDWUk/gvdHeD9oeFUiQMsLvxBA5FdAByPPp/jdg=;
 b=Sy+G6zcTdGkgVOHdF8MjalDBNXpGQZ3dCzkJyzJb+T8Ha1CrNkDIQlv4
 Q1e4ZDN396y1Yhl5U50pujIJrI/AkBJdPT+QnAMDG9j0lFZqSR7enElWH
 5pKuB875djhqrB5txz9+UXwfalP4YU6fCwHnVH8tEvOZOc0TH7hIvYBti
 bOm7GX9QuM0ChZ+aQPzsjorJb7Osf9kf6g2aNva+iiStZzxYU17dqrTr0
 Ecvb3VVOWeari0aX59ftxsHFLdPrUg+5TqvJzb/Yu9/02q20uG8cNHE6Z
 OZbs30RESHdWpqP+39OgcofuIbv7VvybSwzAlj5DpM/17EV5fiiZUFnda
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sy+G6zcT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/4] iavf: Don't lock rtnl_lock
 twice in reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/20/2023 6:08 AM, Kamil Maziarz wrote:
>  
> +/**
> + * iavf_delayed_set_interrupt_capability - schedule the update of the netdev
> + * @work: pointer to work_struct containing our data
> + **/
> +static void iavf_delayed_set_interrupt_capability(struct work_struct *work)
> +{
> +	struct iavf_adapter *adapter = container_of(work, struct iavf_adapter,
> +				       set_interrupt_capability);
> +	int pairs = adapter->num_active_queues;
> +
> +	if (rtnl_trylock()) {
> +		netif_set_real_num_rx_queues(adapter->netdev, pairs);
> +		netif_set_real_num_tx_queues(adapter->netdev, pairs);
> +		rtnl_unlock();
> +	} else {
> +		queue_work(adapter->wq, &adapter->set_interrupt_capability);
> +	}
> +}
> +

This function still requeues itself instead of just rtnl_lock(). I'd at
least like a justification as to why.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
