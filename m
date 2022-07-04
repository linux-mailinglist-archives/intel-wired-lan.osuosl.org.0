Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077A9565580
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 14:34:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97B42405D4;
	Mon,  4 Jul 2022 12:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97B42405D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656938091;
	bh=3uErR4n6VSs5ggF+95jUZAiwHg9IBDfv5R9UOOM5eBM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mtegMKgWV3OrNE25CyDYfsNQPGo8VOGWDsl5Lb7eTUKtdpKecjTfHR74D0p/GFhAm
	 n9+CCo7p+WF8/DAfr9Jp38mQmzHKXNQKuk9MNfY9Qrziz3JgRt/+UVPnxSuFubJ5Xa
	 GvrpJl/SU8eux1r8ycUNgelTYFUaa3BZAXYiTtylQ1YOTmYx1M+tmHS9SNcZuRBvyi
	 RQ//d+lL+FXX4AIi2e7YdUrLwkuRltMRm33DJzrdnQdelJGY7aGv5SBC3+dVU0XrxY
	 7FawUY2/+5yRAcikqutB+dUycpmQu7I9LGnJxxir/b4F/kM3skJHFJzmAgADboAPvv
	 qe6knQ3bRZYOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJ8ppxlXH6nl; Mon,  4 Jul 2022 12:34:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BA8D4049F;
	Mon,  4 Jul 2022 12:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BA8D4049F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A67D11BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F0D160E51
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F0D160E51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oa3xIbRqa4xb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 12:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77D1F60E09
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77D1F60E09
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="262911944"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="262911944"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 05:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="838802191"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jul 2022 05:34:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 05:34:42 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 05:34:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Jul 2022 05:34:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Jul 2022 05:34:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YprCToMBkIiK0ac9h/MOppYCBncEkImt23RYbtOXnTf4y7peoRoU/eSvos/9qmgWCDlBoXY9ro6phGriJHlHV7jDMshe3wKofFpJg5nF8QgfNJF+03D7YG10Z/zpIKI4j9yf0+tSWyfAr6oOlp1LaskKn1ZFj7hm3w9wZQlW6tqnjiKD73jRbG+ieFePYiqivHyDVZUFo8fTnUVi7OuPbfRxll9bmz5+XAXuQno0qFn110IlC3kIZHN1DECag5jFumPOCVTqeUoLYLeGIocXYdYRdr8XluOheH1HMfQK6Z5MIAlJhCDVCkVGsFzuvhob1ZrqVsU+Zx0V1LY8iG3KkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RlYT7jUzU24bSLxwVcoqVJ8Aq+Kx/QQbg/VoMuMNxMk=;
 b=C9mBbMQjOY2qVOHqmEWN9d5KNz0fCXRHq1l16dC/D+QlVR/hvFUo7pz7mceRVrrR8icAtFuyPxwzHyidO0Z7Hf671X9lYFW5CGb1TxdzPBoR0cTTFJoY/e5FjAyodirjizp3bP+++SwKdqgaQAIhhfK5ZxN9Jcw7etzmVL68rf3WlQ+dkvYCrlL69l0ymv3kzLyAFSbELeBWGuIsCmFBzdXckqqIbyOYjxxDKGSGgmgY9bA5LYaGUq+QhmUJuqneA9ov3Qz6PZsj8dEe0gEVnG/sNVQVaFgcRIHUKsfpJVTjGUtweZLuCBPrfhxW+lesSumhSRQfS746EJsPGRvkVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by BYAPR11MB2583.namprd11.prod.outlook.com (2603:10b6:a02:c6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Mon, 4 Jul
 2022 12:34:40 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3%7]) with mapi id 15.20.5395.021; Mon, 4 Jul 2022
 12:34:40 +0000
Message-ID: <d1457439-fc13-c088-fd10-5a6ff0f1b4e4@intel.com>
Date: Mon, 4 Jul 2022 14:34:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220701130657.2431130-1-michal.wilczynski@intel.com>
 <cd159af9-1536-5c0a-7eb4-0c94a71d0ca5@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <cd159af9-1536-5c0a-7eb4-0c94a71d0ca5@intel.com>
X-ClientProxiedBy: AM6P195CA0101.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::42) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e629038-ea79-4fb6-042e-08da5db99050
X-MS-TrafficTypeDiagnostic: BYAPR11MB2583:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K4yOJ6us0dX8FRQthMXZtwHo1wQtfeNlB+E1xZ3ZgweA4LmaDlBUbOTwyKwV94NWkjt+2g9vp7hkVd4+pU7NmuspyMoKzryVR98ss2aHb2F0L9pmsxqD6xHwDYwSnjUvcguYTy3C7b7tPGxHZ856FaGmz6Yay/iJzZXRFminJT7ZCQ4PR2cvYwSXx4Mj+FWgQgSiwew/3ILMEpXLIhA/pjyMjQcOrLM6HFthJ8pjAu1XqMB5ERWFEBQuVmSuOdRo1TMWUmpuhyvPB4V2QSDlomqbm2I0oVWiLYA+zwiH62C8LAkatiymG1DAtVtswnXO9ymTJSAkgQi5qMzC+E/0TEkFffafGAJKfXafGTlGuIEeF61zglASNg7Rg1Ub3kOjuDFi+wscKE5Mb1Y8jcpjhGUvdMIdaQnLzatcsGdqmqAJi47E90rbcIRXlFpNIOZE8Jt1l4Gq57XHzCQ3wXhzzHiFeHHBlQeC02xozeRxgJ7eFZC8FMfAgNHWKXKWdhWVspHFy7OVZ4vRpW0rzuHuxl2BSrEuCDDep6Y+pwur8mbG8z6pMAnHSrFBZNWsB2MX80X/Wh9Z/5s1ppR497vNZQ/OlMl+bYbwRhAstx/K8QKr5ifJ0n9MoArqHtCJhupygPkJ5+obdQ/NJFkZtJLl5Dd7UAEdn2Rnybixd3OeL0lkj41kjUvsophm+IdRor7Lc9QC7A1YCcdaWRhWcL5kayPa6d/ycKUQAbjRIykNwrqarWI5Uv2K9lCr5ilsDTdtOD1XRaVBAtJXxf6DDexeQubjr1RIftYeBccYkdMmgwcDw/NxO3Ee7CoijSsYNymplhzzJlr4wCHeAQq/SCZDgdybfyxMiam3XjnawC98AJs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(136003)(39860400002)(396003)(346002)(6486002)(478600001)(2906002)(8936002)(4744005)(31696002)(5660300002)(86362001)(26005)(6512007)(83380400001)(2616005)(186003)(316002)(82960400001)(41300700001)(53546011)(6506007)(6666004)(66946007)(66556008)(38100700002)(66476007)(31686004)(36756003)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW9xQVRMdTFjamFIbUgrSmRRYnQ0WGs5NmpyT3R4S0JiNFJOU1dxbmZDeDJH?=
 =?utf-8?B?b1R5ZHd0WnRielI2VE1qY09sMTFRUmtoclcvS01XOEl2L2dCSlRGRExKWGdu?=
 =?utf-8?B?TE9GMkw5dmJic1lDQTNMTXRKSGdxWmdhb3RsaGNpOUJVc21lSDZNdnpHRHE5?=
 =?utf-8?B?NVQ0QlhjdWkxTjEyM0ZrQTRJYlMraXN2WjZGUDIvSHQ4bzUrVE54b0hoVUxP?=
 =?utf-8?B?eXhyMmU0Z0wrdlB1ekhhVmdVeFY1TnFmRVk3N1dDd2JidDFzU2daVnhVQUdj?=
 =?utf-8?B?bC8ydVF6WkVVMWc2eTFnaEp4L1REV1hQWG9QL2FqSEovc0lzM1F4MkdrRFF1?=
 =?utf-8?B?ZHJScm5wU25RSHphQVloUithQTQ3MG1BU0UrZXhvb0dTS010djBjSnZHTDYv?=
 =?utf-8?B?S2NJazEycWZ6U0dMVGt6UzA4c3lCNDBYaVAzWVZQbGs5a3AvbmRCVHBXNTFw?=
 =?utf-8?B?UUFab01leE1kTnc5K0ZjZUNUTmtzcWx4LythR2FweVJkdU9UOXZOV0Q3WmFu?=
 =?utf-8?B?OXYwUktaZGc1U3F0UXdUQ0JESGFueEtXcWIxTXA5RU55VjMyQ2pOWFprV0x3?=
 =?utf-8?B?ZExVbDNUSmMzSllaSHJER255czVzSVMwR0RDT09LQ2NURGtNZFlJenh6Y3NZ?=
 =?utf-8?B?T3pzeHNCMVJFTmF3cCt2Z1BiSlZXYUtGK3AzdEJFbXBvenZORDF5MDF4N1Jx?=
 =?utf-8?B?RkhKNmREMExkTTdEcHVzWU1ZUXI5bjNBMWFob3JOMlR1dkNzaEZLZzlWcWFl?=
 =?utf-8?B?aTZhdzZWckNLM2xZL0RPVGVkdXh0Q2k1RnUyVzNKRVVPYU9tY25DVzFXa2FT?=
 =?utf-8?B?dGJNQVhxaktEcEJjVzlCS2JKNll4cFNDM2tLcE91eUE0aDRpNFJCeXRxbGt4?=
 =?utf-8?B?Y0xiWnFOY0xZT1BvZjVGZFVJMW9yVHhLN3lwdnM5RngxYXRJZnhndG5OTVNo?=
 =?utf-8?B?cUJBaXBXVUNXSHQwaUlvVktXaVg5eVdwWkRLQU1tS3RMejFRY0h6dHpLWmE2?=
 =?utf-8?B?czRKNFBCZTFyYldMcDlyWHAyWmNKdFpBK1ErWkk5V3NmSGpLbzdScFBlS2Q5?=
 =?utf-8?B?b29qY0lhdXIzMU8zRFMwRTI3UG9uK2tSZ3RuMFBZRVRLR2tyMDA4N3RBRmpQ?=
 =?utf-8?B?VTZQTDNqWDcyWlR3UFpHZktDUXMzVTZvM0FJcDF4aWNTMTdUQXI0eWZIbEx3?=
 =?utf-8?B?Q0FsTEdsZW05MGdHd0tROTh6RGVYN2lpNzhiZ2IyN1BWdjNZUDVybERXa0JB?=
 =?utf-8?B?N0wybU1SaDA4ZUZzVmZUa3BuRVE0dVExQjEyREhXMzlPWlhYdWdVQ1Jnb0lo?=
 =?utf-8?B?T2VMM2ZtL2ZaN0RiMm9aK09kT0hiRXhMQ2ZZRUdLWDk2UGxqdVhBTkc0SzBQ?=
 =?utf-8?B?aXUwVUhJZEY5bXpaeHdEV1JFL29QMmd1OE9PL1BpS2NZWXBKeHl4VHVodnFC?=
 =?utf-8?B?Tkc3NzcrVFBDYytjRGZQVS9jaC8vdmh2L0ZsWW1rT2xyZVlmME9GenMzVllF?=
 =?utf-8?B?UkFub1ljOHkwY20yLzUwVURjYzJHSGhBVjNEdzZsdndUL1ZXWlF1OGRoOEpE?=
 =?utf-8?B?bXdaTGlOSnE2cUc4U2hHTk80REl6KzhFMi9ZbmNvOWJoalZUa1hjemlrUVho?=
 =?utf-8?B?Vm81VzU4M0VGa292NGM3VzJjL2NQRnVYVnFPMWx6UVJkYUVUdTREQ25RSWE5?=
 =?utf-8?B?aDlMSm5QK2JqSGprTnJJdTkyZ2hYcFhPcWNrd1BQdUFCdWx3V3lVaUtnYnZO?=
 =?utf-8?B?bXZqeUF3N0RuUk43dXNKemFTN0FaQWlRcm80QUlwTEZ0clBqSDlxR2V5dnpD?=
 =?utf-8?B?SDA0RHZ3bGF0QXhNZlJDcXV5dmxnT3h2empiUlpYZjZEQ1hPYWZUaVdhQ2Z4?=
 =?utf-8?B?bi9lVnZDeTZXYTE0ZE54SWxNVE52cHFKMkRoV2xEbWxXQitCdkR6ZWV5eWZ3?=
 =?utf-8?B?T3RwbWZ3MGtLQW9wRElTOHR2N3dYdXgxK2orZnd5R21RMlkwd0VWYThTVUhT?=
 =?utf-8?B?MGJ3Y3VMcC9BS3Nmd0tHcURGc0pZTDF6ck9Gd2g4a3pQbkp0L00rNHVFbDUy?=
 =?utf-8?B?M0YrZTJUdXk1UHQ4VTQyWS9ZczdzVUxRaEc2bUhyS0VVVklhM1hPY0puTENB?=
 =?utf-8?B?ZWVaZDcydFErOERWR2FsbC9INC9jVUJzVzh6RzZ3dUZaZFJqZWVBeHhOM3Qx?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e629038-ea79-4fb6-042e-08da5db99050
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 12:34:40.4037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bC/fdBQo5b9qgpc7WLmjrABa6SH89Mu/bvVu9ed16K+tivHCFel7CXvNPqh+mGxrnRdnhvut0YCzJw8EsPBOIj6s3Dd6sPHRod/o4M77j5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2583
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656938084; x=1688474084;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SoZm8TWlhQpvwAbvfpH2BETBL8xoDG+Pfi3Jhsr9YBQ=;
 b=RCnkBAwr15gNX5GTZZwJ6xOoS3GLX258HXDzWhxD/3PIqc/fWptW5j+O
 7RATqTNptXAnD0EXD8fmuf4ITOHYT3I79wC+/FOCKQbGrabHB6UAO23eM
 4E3la8CX6W8wHEUovhVcIf5AiiQ0biM3k7q+L188tCTD7ltyRn2Rf2jgU
 IPcZj2eRGoZ+q2GmNs569KTrV0+VaLSq1+nnqqzXGjbsmP1e1YEcDYm/C
 8JqMMjCU2ux25eNaLEwuRLk0bNQcjWC0e/4gnQX2+G+Q9YvNnao7myGN4
 TWMUP7rdBmKAiGpFCmn5Ltu3YmIaLQcrn5kCvYVeBdkW3bYPkVaWdhC1k
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RCnkBAwr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/3] ice: Support 5 layer
 tx scheduler topology
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzLAoKUmViYXNlZCBhIHBhdGNoLCBhbmQgc2VuZCB2NAoKQlIsCgpNaWNoYcWCCgpPbiA3
LzEvMjAyMiAxMTowMiBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4KPgo+IE9uIDcvMS8yMDIyIDY6
MDYgQU0sIE1pY2hhbCBXaWxjenluc2tpIHdyb3RlOgo+PiBGb3IgcGVyZm9ybWFuY2UgcmVhc29u
cyB0aGVyZSBpcyBhIG5lZWQgdG8gaGF2ZSBzdXBwb3J0IGZvciBzZWxlY3RhYmxlCj4+IHR4IHNj
aGVkdWxlciB0b3BvbG9neS4gQ3VycmVudGx5IGZpcm13YXJlIHN1cHBvcnRzIG9ubHkgdGhlIGRl
ZmF1bHQKPj4gOS1sYXllciBhbmQgNS1sYXllciB0b3BvbG9neS4gVGhpcyBwYXRjaCBzZXJpZXMg
ZW5hYmxlcyBzd2l0Y2ggZnJvbQo+PiBkZWZhdWx0IHRvIDUtbGF5ZXIgdG9wb2xvZ3ksIGlmIHVz
ZXIgZGVjaWRlcyB0byBvcHQtaW4uCj4KPiBUaGlzIHNlcmllcyBkb2VzIG5vdCBhcHBseS4gUGxl
YXNlIG1ha2Ugc3VyZSB5b3VyIHRyZWUgaXMgdXBkYXRlZCBhbmQgCj4gcmVzZW5kLiBUaGFua3Mu
Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
