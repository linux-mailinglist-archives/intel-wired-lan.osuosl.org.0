Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 935C777050E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2680E60B55;
	Fri,  4 Aug 2023 15:42:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2680E60B55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691163760;
	bh=DlHE5ecwmSVmA8eRJF6ieRi/Pg/i9G6yAPavQPq1KrQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UI+9zD5g+8fCuPicW8KkspSK7HpkEM7D6zzztub3ak5JBlhfBJKp/QPW5+L/zfIa+
	 K9/16A9hOQ6s9PZsFfcBxQmnrA1T1wH5m5KryjK1rx+QUBacLiDdvx1X80FJggaW+s
	 gdx8+WSUqdUgFBEgrR0W8hzIIuVx18j4va0PQvh6Kg7bm4DdpHWqZXwJ0yWycFAcpv
	 rRcvicunadUtMFfumyqXfNqsrRtEGOqYACH/ddccyZU6vXzCRDEF1oC3guvHDCnuLK
	 z7/gOYvpYzxWqv6q0k8d3H3bFNtBCHeko/7xFbMHZUZBY0Gq39+ib45cBe9tTa7s1I
	 21i5NDsKdPIZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AysaAsgYgKkn; Fri,  4 Aug 2023 15:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DB1960B73;
	Fri,  4 Aug 2023 15:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DB1960B73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5018F1BF267
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34BFF60B38
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34BFF60B38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MGXdJ2wIpi90 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 15:42:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F311260AA4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F311260AA4
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="367642044"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="367642044"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:42:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="730103290"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="730103290"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 04 Aug 2023 08:42:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 08:42:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 08:42:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 08:42:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jg3kaO+LXuMYmEVavu1ezYxJUx4DapD+znddjHQT05yusIos9saSPUuIIRe2Vc7UhfoRIL2ya/8G9sKoyebnzd/L9J3DRITpX9tjS5ob6Oo+bAWDy5VSrxQeHjihQYJHp3waNDg6tib6UkopOdtiHdkBR+AW20H5XRO2OlIq6xD2r+cCOztfOoGwqeiouFJ31j5QvgDXdQeKT5XV5BgZ6Ew6RDd5zD5qYnWDUKNN7HDNCxQpWsyzwb6c/tmuM94RfJSizsxwH19o0vVEmCoC0ICBl4Bf6KWp3DhA5BuPkOXlUzyEOuiF44MMDp12YPe41/a2bKfo5gqxXqFqro2YsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z0WwAseUEtLJDpLBC4424JVwYfOYFwpbPb8knCHEJmA=;
 b=CID0KD+ZSitaD6g8H+Gevk11UMGavm2MGdN5y3So26SXPyrtiy4o1Dl0FlZdIqW2lyNBnaaDN74auV68yg+zoGR+Zp659ecYKD23zPf9GsRM8dfeigdFc0o/8Vq1tL246oQZkNskhXWl6pFD0m+U9ukgmbb7fPPGqLz1mZ0LivbZxJrdAVZVvVrdsZGH2Rg6fPR6Ps3pMYfaJXj64o99H7cNfXOopf0+dZ5n5TQYGb50WY2WdgLC+pXb7ToZB3/gwykb+Qd9tbNKq+5TMAfEv2FLeATD70eP3sy3t0R6RZ29Q7H3oPkd01jyQpDnUTx8RV0Jke6hmLrRinRxcOzlZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CH0PR11MB5537.namprd11.prod.outlook.com (2603:10b6:610:d4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 15:42:26 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 15:42:26 +0000
Message-ID: <49b0d7bd-2bc1-c994-7780-35554a399242@intel.com>
Date: Fri, 4 Aug 2023 17:42:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Kees Cook <keescook@chromium.org>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <20230728155207.10042-2-aleksander.lobakin@intel.com>
 <202308040126.ADDA993@keescook>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <202308040126.ADDA993@keescook>
X-ClientProxiedBy: BE1P281CA0218.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:88::8) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CH0PR11MB5537:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c7eb0f9-7f6b-4cc2-c7bc-08db9501675f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mYWXfavwbFgHSsSeVp/movRIWu7eSCavun1R2XOhzHyvQBe6SIbtZbA4t0CxW8iJapcnE/ur2EcXYOUcSEghsQf9CrUycjHAaDVN684wIYT50uazhZ0dmgpu/whBe43ry4X0IcY7eX6Dc5VwBjblAFSBkTn2So7/y/jkxZRgNN7xlAtZGy/fOZDrSq8ohqz5AQ5KEg+s4ko42a0MhiZOuwXWAvbhtNMPSnz+EqX66qCZ1XbNGO2mNkX7/fK2C9V+olRQJunPzK1a7NsaqV+fcj4TDVbdzbfEVDp8QQmdUKRQ0i7TbFL25/xWIRGLe19kZ3QKJCtX1jfISHAUupzAPTDw2/QfShropxyhv3HCtkxDD637XtY7fDlEg47iu26BP+QcIFZbE82K/s5Ng8uYwZb+6p53LLKhANtFmudfxUOkbj4L+/6LzLJZ6UmQppYQREpBJiACx6bea2OIxmQO4CMpygfN9TebFcrQmD1g6Ru+XN+EfqIphmetVzd0ha11hdKDrFYtPdaJvYfwCZSR01yNc5/CT0l6r46iqks3ZSwZRqCDbV3pv60yy7cfU4o3aBBljtYgGhYKUvVNZ7tPcPv15UiE8Xnac0n3Yta2BYPs59JO7E4cHkNbjU4N3gk4o2mR5M6Ot2EkSt1B4McTF7SHkJr7aL2gZCxA2aWRbzk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(366004)(396003)(39860400002)(186006)(451199021)(1800799003)(66476007)(66946007)(66556008)(4326008)(6916009)(2906002)(2616005)(38100700002)(82960400001)(6506007)(7416002)(83380400001)(54906003)(86362001)(6512007)(31696002)(26005)(478600001)(36756003)(6486002)(6666004)(8676002)(8936002)(5660300002)(41300700001)(31686004)(316002)(81973001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlpsVEhyS1ZRSGxBNW1ud1FaZENCZ0FtMDlhc1RLUmh6Wk5ENXdDTmlSL3hq?=
 =?utf-8?B?d08xUkJhMmVjemdob3ByelZBRysyZmlROU1HRGE0aWlYOGJkUEtaa0F3SUZu?=
 =?utf-8?B?QURNak9rQ2RUTkY2aGlDN3prUkYvZ1hrdWw0SGtpT2MxTnZZL1lzQ1Bhbzhv?=
 =?utf-8?B?MDIvOUxob2lzaUhueHErZFZPZHBxbGNWcUxBMUh3TkRpSWUrMyszMmZiaEdU?=
 =?utf-8?B?ZWpMVElCMllRSWMyL05EZ3RSYnRuUWFUNHJOdnRsVS9mUGZjL2gvbWp1QnZZ?=
 =?utf-8?B?QmdObmU3YUxqeGx6RDgrOUU3eTMrS3FzaFdxREhHYjdoay9FS1Y0OElVWTVs?=
 =?utf-8?B?UHMydVQ5OVhOWTJFOFEzeEY3aDI1dlNjS2RKVU51K0lhUzRYeVAvTkd2MU9w?=
 =?utf-8?B?R21hb1haanNUTWxTN3BpakQxcDJKQ0FCYVlTUnk2MjU2Ynd5TWZqckVrOURE?=
 =?utf-8?B?amh0cHZqWnozTnpQcFFtT0QycmVwdWlwaW5EK0VubmJSbHdCMFVod0hxdlZs?=
 =?utf-8?B?c1BsUXZqUFRubDVhdjF4SEI1T0F5Mk5KbUV4dkhiOVFmTFlPUFRDZm8xalRQ?=
 =?utf-8?B?a1huOW9XeG9JZ1FVdFlPV3BVQzR0YTFVOVB5eGlxUDJFdEZCa0I3TUJNdnA2?=
 =?utf-8?B?bUFrbU5EZTVwcmZCQUpEdm1LdTVCZ3l2aERPM0JtNXowdldqQVloUTErcEJI?=
 =?utf-8?B?L3Qzak9QVHpYclRMbVgyZkh1VEpwTERtMGxFOW9vemhNSWZPbS9IbmpGUGpY?=
 =?utf-8?B?aFdweFVLTi9NUjZLVFF6QVRySjgwNW83dFUwMkJxT1AzcUY5TWtzQk9HaEto?=
 =?utf-8?B?dDFKcTE3VzQrcmd3bmZma3VzMzF4a2h5TllpWmlRcXB1anBJeFdiU1FaSGNU?=
 =?utf-8?B?c2NXL2ZUVG9FL2VOMHBEQ2ZKTmdieEI2SGdYb05zQWRyTXBPb1RSTnJpNXAw?=
 =?utf-8?B?WURLdXVwTjlQdkE5RDNkR3lFVnFpMzFpclExMEo1QXg1b2dVMmRHL29lZDFB?=
 =?utf-8?B?MW5TaUEwSDhORmgyL1MzdXNMeXlXWitvczl5YmRBWGU5dTJ2bGNOQVBNQzYx?=
 =?utf-8?B?ejJQNVlHaklQcEcwT2hMSGNzK0xtbk9CMXZHcHBFY1FINkl0VGg4dmg3Ny9o?=
 =?utf-8?B?SVlmczYyTU9MNmcwQmxMZnQ5TC9ZZUZHZlFTYTVYcDJhWUZPKzBML0VyQ0tG?=
 =?utf-8?B?YlkvSkNTSUJyd2xQMHhYUTkzZlAweGdra1dJbkxQcEtyVGRTbldveXVzNHhE?=
 =?utf-8?B?UGVUL3FlSWFmOW5QTGdJNlIyUEQ5THdYR1FUZm9OTFFWWThDK2k2d01rT05V?=
 =?utf-8?B?WldtekhOWWgySjRROFAxTGk2REFSNE1XNmhtenZGa3QyMitCTXpvcDdpZVla?=
 =?utf-8?B?TFZmVW5kRlMyNzZXN282ZzZzRlhtSU1pcVNaNlFwTWRENmRHdDZLN3hKQzho?=
 =?utf-8?B?ZDlyTjBBYUVjczhFdG9DUUJwQXBaejRWMkRZd2d6eGlsSnZ3MlJhN1ZWTWJl?=
 =?utf-8?B?eHBENGNWUEFrU0tHaGV4eVl6YUQzUHNzK0FVNXUzT0drZUVoQ2Z0VEtnWGNa?=
 =?utf-8?B?Q0w5aWtFZHlBcEplU3ZHYlRmTVBVYTVBYzMzZDBGYUlENW9xZVZESm40Y0th?=
 =?utf-8?B?RE1JSmc1anFCN2U2VGZFRk1qN01DVTZQclU2NmRQODdMMFJDVTdyN0MrbmZy?=
 =?utf-8?B?eHdXVmVPWjBsTUxBaVJUbnAxTWNtSjlnVTRlczBwZWxLbnFkVzRLSzYzU20y?=
 =?utf-8?B?NGNCVlVuQ0dTWEpqVTcxZWYrakFKeHhYTmZzNnFuNXdSSm9yd28rOFphdFZl?=
 =?utf-8?B?azF2eUgyQkRrQVhjYnZTTDZUVHBLdXJzRWRsZXl0TlRKRi9tWWpTLzZrUUUy?=
 =?utf-8?B?eFpTZ1FyZFZwb1B1b3VMb1BrUGhQMEdrYm9jMTZBb0JIQWR1N2F2amhGVWNF?=
 =?utf-8?B?OHdTdy9Cb0VWd0pJNFVsMnRBdGlrRlQwamk1MStpTllVcjlZTlBhaXV3TmFv?=
 =?utf-8?B?cEdBbzZySVFHQ09KWHJGK2dpSm1wcndPOFBTYzl3VnlRRnlVV1VSRFcvMTBO?=
 =?utf-8?B?RUlPYjd2aVJRb1pkWXFLdjBpUWd6TTZRK3NBS0xabEJJOURxWFdleTNBZExL?=
 =?utf-8?B?MVoyaUM3TTQ5dEJUVW9VdC9pSEVubVY5a0pjd2xCY01xbFh0b2lEcEpTdlNi?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c7eb0f9-7f6b-4cc2-c7bc-08db9501675f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 15:42:26.8005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4htYhx3jv1n4H+HKcZ7iIXkAiAY5tpFeA2fRtVXRMHBxILMJw8r+MHwQbAJdQrebpjpVcLudTOJyrXvIKIiE6H9c3MS/lhVbYNT90q2fRGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5537
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691163751; x=1722699751;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wl7ZhTokouFjzqAMg3N5I18Dl8xaA9TisOaYCnetbqE=;
 b=ZoNnrPHK5nBZg+CK/cdwEWYWVACt1XXRXXQXR2l82VDUVHKJZrOQh2GV
 EHa8OMLEslFWAxjFgUD1EQG/1iYNqbPxWsQRZCQEO4tCt480EfdDrJFV1
 EPuzKleE9BVwYXVK6VzkG612jgJVLIK6Z23LxwMpGNoF9jqbS5RY4alHC
 IolzP7KMkn6c6cPJ1yh/HXqQub1f6JRsWb2DED5r7eQtcyxX4FWw+5pkb
 nNHC7rq6J0MjBvPFLB2nlXPrX6Ybowcb1cI9veWR+/EIBdTwJRvv861/T
 4lUgccLsgd0KAAwqo5Mb+avtoPJKj4P3i24pgoZraqODqkbB5pBKGnICA
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZoNnrPHK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] virtchnl: fix fake
 1-elem arrays in structs allocated as `nents + 1` - 1
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>
Date: Fri, 4 Aug 2023 01:27:02 -0700

> On Fri, Jul 28, 2023 at 05:52:05PM +0200, Alexander Lobakin wrote:
>> The two most problematic virtchnl structures are virtchnl_rss_key and
>> virtchnl_rss_lut. Their "flex" arrays have the type of u8, thus, when
>> allocating / checking, the actual size is calculated as `sizeof +
>> nents - 1 byte`. But their sizeof() is not 1 byte larger than the size
>> of such structure with proper flex array, it's two bytes larger due to
>> the padding. That said, their size is always 1 byte larger unless
>> there are no tail elements -- then it's +2 bytes.
>> Add virtchnl_struct_size() macro which will handle this case (and later
>> other cases as well). Make its calling conv the same as we call
>> struct_size() to allow it to be drop-in, even though it's unlikely to
>> become possible to switch to generic API. The macro will calculate a
>> proper size of a structure with a flex array at the end, so that it
>> becomes transparent for the compilers, but add the difference from the
>> old values, so that the real size of sorta-ABI-messages doesn't change.
>> Use it on the allocation side in IAVF and the receiving side (defined
>> as static inline in virtchnl.h) for the mentioned two structures.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> This is a novel approach to solving the ABI issues for a 1-elem
> conversion, but I have been convinced it's a workable approach here. :)
> Thanks for doing this conversion!
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 

Thanks a lot!
You gave Reviewed-by for patches #1 and #3, does it mean the whole
series or something is wrong with the patch #2? :D

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
