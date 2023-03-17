Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EEC6BEF61
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Mar 2023 18:17:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4CD261AFE;
	Fri, 17 Mar 2023 17:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4CD261AFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679073476;
	bh=4KsMhCSC6rQZwwXFqVaWNGWgdlGyroeE2+YQsc3YGHQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i2dSK1lCa1nqD6b6AXI+bStKAgPQoPkkymxOiQQ5fFtMIYw1ph870DSsIfqRTVkpD
	 vzbeA49CoNrgeG0JVfp0ubQPt+jwnJMOlxr+iiFXMxPvRYcFzAgxWhOssZtgJZ3Kmk
	 SA+fuaeUAwHhrlhfDYlQr4OaWnj0Kknfy5CKFhhM0/twg8djhAaCalZoxaweODvDqK
	 BsPUw8iHPIpburGhKUFeRyrm1Ko/pJATO9g8nkaXoH/EA/hU9sAUC6vyBfhpj4X7iL
	 QMHHOVWWaRBCRYakfjklCYBd7UN7mQWQSXGsZPnY+4R7RH0fLEf09N4ppAzq/KeqGt
	 8kzT8+9tJBEHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nv_IJ_gBZ7Vu; Fri, 17 Mar 2023 17:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E3B261AF8;
	Fri, 17 Mar 2023 17:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E3B261AF8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73E571BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58EE1400F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58EE1400F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OoyDNDGxoD9J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Mar 2023 17:17:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 761CA40025
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 761CA40025
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:17:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400896299"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="400896299"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 10:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="769429671"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="769429671"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Mar 2023 10:17:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 10:17:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 10:17:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 10:17:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BogpQxQDC3mnSzWoHb8fOKkzgsT3WLnyoiSMpW1iOg5EtvM6juHyggYfwhoey+791KgJFzpBwUKRdy1HL4/PkFEDSiEnYPZXDcraCoX0LnWpPxdYn9oqxHZuVU2+tiuX9mIJsjnvbyRTUyoJ2YM3wnv4lnfNNG/j2QMnMniScuCNwd3YXAG8gkOvZfI1V7L3/Vt3HzrR//Fl6IEDAj3EX3CySrKLp61lUO+06BmRAYklN5wtNFjITV+2v8NbVGUh9tiVpkw7Rnk1puTEZZ+zg5uyaWfWq/oOfCpl1lDaj2LJ/zBDoUVUhvIQ31Vg3hOkFpykgfH79RzPS00+0SvW6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/nJH1zbdFG9DgtxcpTgvSEbHoNPdNde5FMm6OI9f0ns=;
 b=dAKOqnicc089K+P89ORr72L9Y6/VOxwGMAX8lY/nTb8w5VxtQbXgSUxCFn50rybg0x97hSB2kfbelFs38m2GICS8/aPxNHUv4CqwbD2HqENifa8/6nbzuAWxOqHb1DUmyhQgwA7BpSi0FGDw2/p1oihZnnVA9M4/d2lC1Y/btGkTvw0rU4PvuhgdpUE7weJ2M6D0zmCk0l/n4Apn2baMLcK1IvuOlecfy5osFlLYewiBIC4At3Z9+6zoL+DZjdBI3+4cKwusxCAVr2remxrY4VZS6wax+3SjiCL3JqdxgL7ofT2CoSUBPgC2r13k4tb19GSfcJYk4CQa+gYu3c8Atg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7570.namprd11.prod.outlook.com (2603:10b6:510:27a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Fri, 17 Mar
 2023 17:17:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6178.035; Fri, 17 Mar 2023
 17:17:40 +0000
Message-ID: <a57f2fd4-e412-9643-953d-a41a690a55d9@intel.com>
Date: Fri, 17 Mar 2023 10:17:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-4-michal.wilczynski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230314102514.46636-4-michal.wilczynski@intel.com>
X-ClientProxiedBy: BY5PR13CA0020.namprd13.prod.outlook.com
 (2603:10b6:a03:180::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7570:EE_
X-MS-Office365-Filtering-Correlation-Id: 85b65c39-dd29-4294-ce6d-08db270b8369
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7gQc71zLYJEsK76x5vZbfLot0TbrTFdXwitnOw4NkEGuqyOgoNRVfRP+tPh+gvKAxdKm6vsSVxV4AxsB82feD6mEekPj5JNwm3q4wRHBX1zS4GR8rDC8OazeVr5vXAWMa7E6ub3qEmpjNYnhglbLlaeTcjMExUyn+Hsfj+woI2otvfj+bxjo96NRDh5UhaPaUrpw3xZtNjyC1ZLU73B2dfx0W3UzMF6Dx2Cthe0/Yf8o6kxQ0ET5c8GGNZgZxLS8LUxiAejQ5wANknKSnmuwwHb1G6haNrpAK+jRj53EUleTCYEFaBbeu5AumZTnDzm+2bI4ePcO9DhkS4nYsIu2DtWEt89Y6LCB0RW5zdIbsAfiOKO/3O5s+awmen4KwevxDvuexctqN3bmFNcgrOGnFCfK1IrH+hZu8p9wzXyKGBdFYf1venIywpnBB6gd28YcpTqov7/DaNLXLSLxHGEM2D0cNde6+x/M+BzR6XiP7L/UZ2jeAIUcNA9xm3ljGFdu+uwL6x1lYsC/tyhpZWmn+OfRZ+L5GTnsgmiwVfrG9/P9xyAfFbzNZyw5wXz+oZffeZUWzaYoSyb4qLAFDiGRvnT8h0CM+nIJMK4LY6KVH/pcE/edkfPrSew+LDREKqHMWibG4+2stdW0Ps6vTj+Em/3Z5Qz+WJjlwp7DVHpKJ/UWoydoxOcpu2QUqj2nAqZ5TNk61HF8DLDN+sPPKO4CaBjJdKjkOCrzyh5f1vbO4cg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199018)(2616005)(186003)(6486002)(83380400001)(478600001)(316002)(66946007)(66556008)(66476007)(31686004)(6506007)(6512007)(26005)(8676002)(53546011)(41300700001)(5660300002)(8936002)(38100700002)(82960400001)(2906002)(86362001)(31696002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzBLRlFwS1crV2xDUWo0U3pGOU83RFBtbDdIOHJNQ3NRSFB2a3U4Y09jbE10?=
 =?utf-8?B?T0cwN0xLQllseWhvZW1YdGNQZGp6VFB1R0xDV2FDdy85L0hVSmRpK2xaUWt1?=
 =?utf-8?B?cVQ4bXM0VnJHTkZTV3hkTzVzcnZGUzNLd29wWFRPN2dtNmZXZWNta0h0UGph?=
 =?utf-8?B?OXJTWWRBY003UitOckZxK1N3R20rcVNreWNLYno2VS9FcldvSjZuMmpXdWFL?=
 =?utf-8?B?U1dMWGlNbnVaQVpKTmgxU2hzU2Z0THJkU1pjdlV2ZzlGa3ZXcDdIVUNURGd0?=
 =?utf-8?B?K1kyT2hwNndKL21pdnFtVzNVMzJnM3d3bUYxSTlyaUc0ekVVQWJDQzNpUXQ4?=
 =?utf-8?B?M20rMTk5aWtkVm1QZUxINDdwdWxqUzlYTXE2U3dYMWpjYTh0SDBtaVhCZms1?=
 =?utf-8?B?NHRmd1BMbmZmWi8rNkVYY3kyclR6WnIyRkIwd0Y2UTRSTW0wK1grVmtkejgz?=
 =?utf-8?B?RmlDSlloUlFLUytTTEt5T0wrMHVCTTRkZjMweTU3ZEltS3NVNDFibU5lZXhE?=
 =?utf-8?B?b0U2OVRqWnVnRVN3ODFFY2gxTXh3MHNzTEd0Nmxobkh6K3JrUnNtSWE2a0Qz?=
 =?utf-8?B?U2ZzVEJwNEZlMGNpRk9DSmFadlI0V21BdFpDdGsweWdndGVlendEUnNYZWJp?=
 =?utf-8?B?Q2MzalRWVDN0SkdBSHlEMWRxcy9rN2RjY1l4Y0tCSUF1ZHVkMjMrbEJ4bUNG?=
 =?utf-8?B?blFENVRIWlU0QnVFdVprM1VQUkpmUnduejRuSE1LTEQxc2hGbXN1VVBxS1JO?=
 =?utf-8?B?MWFtOE5FYWYybUgzMFdDYUJUZ1I1eVpEVzNncUZmZ3ViWmJoWUNlZVRRSVB5?=
 =?utf-8?B?MXRxUVQvS09od2Z6VTFtb1ZhUCt5N1ZlRGRBMnV1V3BiSExKZFV3QW5GZ1Fh?=
 =?utf-8?B?Sm5YdmxCL251Y094WllwejBoek5mL0VkWjMyYlREUHJaOUxMRktrRU9Gdkdt?=
 =?utf-8?B?c05hejBWT1VKeVhOWjhkSG5IVmRHbzZxTHM1QTlaTGNNZXlDN0FQdHFPc1FC?=
 =?utf-8?B?UmhvSE9PMG13dkZUUW9EWFdIVGdnbWxXS1hBRjVvRkZ3RG1WVVk4ZE5jVmJj?=
 =?utf-8?B?NFBzVUdjMHJ5QTBIM2dwMUg5TlJzbU1waktRRWlITWNENjQvbTMrbC9GU0l2?=
 =?utf-8?B?SWRxMDc3SDYzMktzT3pVaHBwN2FMakNzR2tZc3l5dGdLTE5kOXllYk01VFVp?=
 =?utf-8?B?RHRqNFF2REMwd3V4WWNWM3hPK29HNnJjVXppOHR6ZkUyYVB6S2FCQ2VlZHJN?=
 =?utf-8?B?TUU2OGRyL1g3Zlc4MGY3amI2L0lFMGRZR1pENzNTTW41TEQxMm5nWWJGcjk5?=
 =?utf-8?B?dEs2MXQwandaa2tpajNYNVZnQjRxODF2Z1liNVNST1N3aVZrd3hRNXhJWExH?=
 =?utf-8?B?NnNUUXBOa09WT2hXMENXc09aSk15Y1FXSmtHekZQWGxWRXRqejBMMkFEWkNi?=
 =?utf-8?B?ckFFSW1yM3RKaFVLN0IwZGZHMFFHT2NEZzlVb2w3ZTRGaGdjQ1RsWFUrNDlv?=
 =?utf-8?B?dUd3UDV5SkkzOXk2dCtTRG9USFZqbjcrazZ6cndpdE96SndqVUY4cEV0em1u?=
 =?utf-8?B?ZnA1bGhrZGNaMjFZa1FsRnNuU0JDbUJWQXFjRG81N0tUS2E2R0VUT1FwQ2ZS?=
 =?utf-8?B?OGtrMlpjUEo1aHVlQjNueVNaVUJ5T0FpSW1iUjJ1TytqNldWa2tTVnNmcFNv?=
 =?utf-8?B?Ui9UTHdVN3QvVnQrYWRQMGsyQkpML0YrUW5hYVozTVRiMVkxLy8xQWxQdUxH?=
 =?utf-8?B?VjNRSmQzYS9TZGZaOUhPd1JxUURnUHRNczZWTkkwZFlzcVI1TEZmK2tRL2pm?=
 =?utf-8?B?bnRwMGVSVVo4YllSSmlpeEtFUnFjVzJGWnJJbFVXZUJiaXNQN1p1T3VsVTlr?=
 =?utf-8?B?S21FcU1SeHkvRTdOYWZoYzhSRVFwM0tPb2xCS1dZV0w5Y2VtYm5GQjczTVNo?=
 =?utf-8?B?RVV5WGlUWTRYTUdlaHFQNUZKZVNNS2xxU2tETmNWRmZWcUpRNnJJM1JEcFVn?=
 =?utf-8?B?aWlRTnZHWVNkU0JjL0Ricy9OL3pKNjFUYlMvQ1FrRk1FNTV6NXB5TGJhU1Q5?=
 =?utf-8?B?TzM0a0RTbms3dlhISXpVempmWlVOUVFWQ2JkekRFMUYwRjlRbjFqSnNyUlNh?=
 =?utf-8?B?NmRVanlEZ1VWWFNJNjkzTDUrcE8zaHVidmlSLzNucThWWEI1RGZkeUIyeDg2?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85b65c39-dd29-4294-ce6d-08db270b8369
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 17:17:40.8742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JZniM9Sr1q7cTFMvew7NJaL2xuYlWHZo7d7nGRPkzH0XodhllE8iLnW/N+i3yd7cKGvde8WNZm+JlihdAYIKNDG+BmLG9RFil/CZ1BPHzxQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679073470; x=1710609470;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DM8xHv6XmElY3Rfz0Atwa00lGJVReAe2Qtaf0XFvuj0=;
 b=Lghu120NfqdhipooFcw81QPxwC5GpvYq9c2RARrLGzLyPqnrF5Hh8rId
 xwRC0RaAjPQXJcC/VSo9wFq2yeQiCB93UNxwmUVHG48GKQjSTfEkKrfdv
 nDltciS7ClRimO9eoaq3uD14c2vVuuMbYHKkIExO/UX6I/xG6931Fy1tx
 OqL1yoqWAuKgzmnCBgS7orBZF7SeziC7BLW6CgD/wQISWOqHcRNStVoKv
 JFP4eUGT4d8UB+p7PM1+I1N4w3/QESiuyiOmmfYmurmrdjPlQRz2AMJuz
 CjCX19JXWqlRTrHWy9DX9IwUs622HwqayeZ7QZ3zclo0W965m4G0ZdWQ9
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lghu120N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 3/5] ice: Enable
 switching default tx scheduler topology
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

On 3/14/2023 3:25 AM, Michal Wilczynski wrote:
> Introduce support for tx scheduler topology change, based on user
> selection, from default 9-layer to 5-layer. In order for switch to be
> successful there is a new NVM(version 3.20 or older) and DDP package(OS
> Package 1.3.29 or older).
> 
> Enable 5-layer topology switch in init path of the driver. To accomplish
> that upload of the DDP package needs to be delayed, until change in Tx
> topology is finished. To trigger the Tx change user selection should be
> changed in NVM using devlink. Then the platform should be rebooted.
> 
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c |   2 +
>   drivers/net/ethernet/intel/ice/ice_ddp.c    |   3 +-
>   drivers/net/ethernet/intel/ice/ice_main.c   | 104 ++++++++++++++++----
>   3 files changed, 89 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 477a6b15100f..37f27b147122 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1696,6 +1696,8 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
>   	case ice_aqc_opc_set_port_params:
>   	case ice_aqc_opc_get_vlan_mode_parameters:
>   	case ice_aqc_opc_set_vlan_mode_parameters:
> +	case ice_aqc_opc_set_tx_topo:
> +	case ice_aqc_opc_get_tx_topo:

Seems like this should be in patch 1?

>   	case ice_aqc_opc_add_recipe:
>   	case ice_aqc_opc_recipe_to_profile:
>   	case ice_aqc_opc_get_recipe:

[...]

> +/**
> + * ice_init_ddp_config - DDP related configuration
> + * @hw: pointer to the hardware structure
> + * @pf: pointer to pf structure
> + *
> + * This function loads DDP file from the disk, then initializes Tx
> + * topology. At the end DDP package is loaded on the card.
> + */
> +static int ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
> +{
> +	struct device *dev = ice_pf_to_dev(pf);
> +	const struct firmware *firmware = NULL;
> +	int err;
> +
> +	err = ice_request_fw(pf, &firmware);
> +	if (err)
> +		return err;
> +
> +	err = ice_init_tx_topology(hw, firmware);
>   	if (err) {
> -		dev_err(dev, "The DDP package file was not found or could not be read. Entering Safe Mode\n");
> -		return;
> +		dev_err(dev, "ice_init_hw during change of tx topology failed: %d\n",
> +			err);
> +		release_firmware(firmware);
> +		return err;
>   	}
>   
> -	/* request for firmware was successful. Download to device */
> +	/* Download firmware to device */
>   	ice_load_pkg(firmware, pf);
>   	release_firmware(firmware);
> +
> +	return err;
>   }
>   
>   /**
> @@ -4726,9 +4792,9 @@ static int ice_init_dev(struct ice_pf *pf)
>   
>   	ice_init_feature_support(pf);
>   
> -	ice_request_fw(pf);
> +	ice_init_ddp_config(hw, pf);

This function returns a value, but it's not being used/checked. Should 
it be void or be used for the check below? I think former sounds better 
as checking safe mode, to set safe mode caps sounds safer :)

>   
> -	/* if ice_request_fw fails, ICE_FLAG_ADV_FEATURES bit won't be
> +	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
>   	 * set in pf->state, which will cause ice_is_safe_mode to return
>   	 * true
>   	 */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
