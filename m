Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1226189CB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:45:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 420386103C;
	Thu,  3 Nov 2022 20:45:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 420386103C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508341;
	bh=V5OOHrXiApB4Sv4rHaIjaLlls0WFHuiPe1gVSXHJGcg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dmqOQqcCU1q7m3ah/Zxnm2K/U5hHaaDvQ2tQu2e6UCGPSUFcSOw4+fVWDnCji77Z1
	 UFmzgK2tE2EzvTXxrUu+eOoi8NbUbocmZohBTlWrAIhjJSW+wfnvM+DtJG/6XyweJM
	 QzuVgNTHJY/gaTa9G8ZGOMbgsyF3dIwElVkJZG+AozTMmNFVPsoLRo/6bz72JAoQxT
	 8Z7hAqbwaMlZati83YuAT0nBkDt6Yzy1ySV/N/HaPzuZSBEOnPtolWkQUSD7D60wX9
	 qlJWs6yNF/w7zqeuv2QGKm2oCVtOsOoA17RAohrjCTX7EAbA88nJwrYHX+f/D3MHEJ
	 sQT1bjOhpdzuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M8rRz5DgEbCR; Thu,  3 Nov 2022 20:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2394360B09;
	Thu,  3 Nov 2022 20:45:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2394360B09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5A11BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7703260B09
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7703260B09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kFrUYwcvmLSJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7003C6102E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7003C6102E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="289518494"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="289518494"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:45:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="964082598"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="964082598"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 03 Nov 2022 13:45:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:45:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wq6FoQQFZBWlS5kG48P6qwyHlbDEROT2E4mHFSkKOn+tVwna8FwinSpGC39CQ6frI2Ln50Ohc45ziVb5EBLQjGic2pazM5snAmTpkJDahcB2ex+7PgSZrqyEVCluFD5+WBicD3irDIdaROa1ziq4JmdyZondPxvYY9vvxKrTPY62BPTZ0ZpLac4OvfoCv+gCnHHVm7nQ+NpfglFrB1qWfQTlPngtzt+Us7O7nKmlNo5jJidGbMptVM6zNbkZQ+kmhOFhMZEelwGx4CWv4bv9YXbkudZQQpkCkVn1XsfMXsjTb90ZxkDTyPwr1oDfz4GoI1gVHbx/rO8zZ4X5fLv+Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQW1aJjo6NNTV1z/GEvEOuA2xHdUdEzcuRihkTtpItI=;
 b=X31zQ+TWXyQPVET7/Tpk5WqBPZrMq2BTA5PeknuL7YsHupVaTdeAX+lXAR6staR5rpiUqdskYInzGdUEXM5kRJNWNgQYfza8x2sQfUBPdaCZnPPGRfrT4eJIdUazKLMmXVzxNlZuxlN/xYiUoTLGIXwdIONIrVb4Z+T2Y0NH1v8nVK4NzioV9sg6GdD25lXHWTGZe4FdTsMc6N5x92DrpYDgfQHlSzxmX05GJ54XVJTZeeaQ14YA0vSTlEvlqZovqQWmAxIsNWzedfh+gd+QukP1AkZtuyQTDoWCjZTeoHEXjQXrayIG9rfrJYqpqlLWaRE3own4Tz5uROxReVqGcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW5PR11MB5810.namprd11.prod.outlook.com (2603:10b6:303:192::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Thu, 3 Nov
 2022 20:45:08 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:45:08 +0000
Message-ID: <adc1c428-0b70-eb89-b6f9-d5db987f6ba0@intel.com>
Date: Thu, 3 Nov 2022 13:45:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-15-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221101225240.421525-15-jacob.e.keller@intel.com>
X-ClientProxiedBy: MW4P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::13) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW5PR11MB5810:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a35ac09-33bf-428e-1ff5-08dabddc4bab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1k1UhXzhQZKpzUBMpnsDYpIVLxIUXjR0vR9rBcytIrOnNyUCID97Vtf6N/PGiVT3YbqW4Ks0ki+kR3OhBClqfKC9FMed8d2matt5kmnUW/vsul6WKDQlg1sMm7QOsQEvIUhHqaLnU+i61/V2pgMr9LWyrucIlX7ihb4BZwuD2N/SnnD5KEpvC7hZgjzwo2MKJkyicEjZ9BN4TfkTyr/gRIQgBTq5o8cRfPZwIlpBKqbkUNVF++CY+zaQ2FSA2QDchNcueT3XX/77JbmfKRLPLVlhVOZs2l2ACHtoam0tklEe4OWZ0UKNvZ4to1mUIZ9pAMFMECltIq+7hF+mN1IEzNYc/ZjfTWOi00kkz3TMDMNT+lDBbzLQb7ziMVC41jOnraeiyfnKgRedIjR4YAWZMO51QMOu5Yu5XxKjpA8aA828rVCButbBpbxgZZLuNPPc70wSvRYsXTwKxQndosr0SxElwC5/1pqt1XUzomJiJ36TSdySEm7FQadYFEmO9r4wpK/71WxI63qVY+icEpD6ak1YUMZPyDbHf1nQjb+mMHeqfGmL3DVyOAIew0aZAW7m72szNlTzmU0ojWt67+ztXLPXbFXAtdCNritaCWjsl2GqPuer0NXsr/k/EG+hcmEqrQBgx9vmjbEWiW4nkhYBkcfu2q6hWMy9jlV4ihpQynk5xou+lvTAocjyd3blg2vT7Vg3TLmxKegTOmHN/kVBgVBdo58NCgrygJJPc8ODYScYjy6F9AGUk26/ufXkd+W5EjjoGiF66tw8Y6lRqqlQtWaDoQ85s25ZdtHpENEdebI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199015)(86362001)(36756003)(31696002)(31686004)(38100700002)(82960400001)(6506007)(2906002)(83380400001)(107886003)(478600001)(26005)(2616005)(53546011)(6512007)(186003)(6486002)(4326008)(316002)(8676002)(66476007)(5660300002)(66946007)(41300700001)(66556008)(8936002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2RYRURnNjlIZzRTcjcwMStySkRmRm8xY3hKN0p6VkNGYnlmVXpuY2hCU09L?=
 =?utf-8?B?R2F5aDN1NHVyRzh6b0UrVmI5b1prKzZvM1o1YmVHVHk3NWtUTXI0cDBzbVBj?=
 =?utf-8?B?ZStFeGtDR0VyUFZPOEtiOHdIZ1dCWFpFdnJXdHo1YlpPR1ZzTzg4aWl4TkZP?=
 =?utf-8?B?UlJEVFppNitXWklWZGQvY3NEWDBoSkt3U1pseUpMZ1grVTZpOGJIYVpZbUVm?=
 =?utf-8?B?WXdOVHFqeEt0cW1qeWV1TTVqK0VQRFZPeEZGbEZZaDlCb0s5OXVTUmNBOVo0?=
 =?utf-8?B?bHd6OFE1OG1YcXc4SnFWakxKbHJCdFBRTlcrRURzdVROTjV0dUxQM3l4WjJM?=
 =?utf-8?B?a1M1UDkrVjVpYU01ck1FSldiSHo0Y25QNlUyeDJnUFFnaWYwYUtjSTJKL3hh?=
 =?utf-8?B?S3pTc1RVVSt1QnFXSHFTcFAxZXZVN2tVbnMzengzdFdEQTd3RHF2VlJZY0k2?=
 =?utf-8?B?L1NxUjRtYWdjaHRnNFJxNUdqaFZ0bDV3UmE3NlpZaUFNWDd4ekQwSXlXZ0ZK?=
 =?utf-8?B?dEVCbkcwRnljVkUwMFJhTmtYMzRIQnIzM3lrYXo0Q0Z2TmhCMC9xWVlrQkUv?=
 =?utf-8?B?Ym5pL2kxV25OMXJaZVU1VlVhRGowSFVnTXkvRWFjTjFVM0pLQUlzcE5Kck9F?=
 =?utf-8?B?WGJ6SmRFMlNBVC8zQW5FQ1pBMjYvdS9KNVdPdkZlWFNmSlBKeE9jMEVKc0dD?=
 =?utf-8?B?aHBMTEVOcVMwSlpVMUs4aXZWZGtDbzNTcVBqM1JyYXU5YzFtL2ZzNDJEV0NX?=
 =?utf-8?B?dnlBZndaN2ZNakNMOTdtQURjd3d6Umh3WGtNK3pqMmF3ZFdyUDhiWkR6ZDgx?=
 =?utf-8?B?YmlRMzkzVVVtL1ZmZkEzSGVuWmtPRUxJL0xVKzk3Q0FvaGllNXVkTWZXczNp?=
 =?utf-8?B?eGQ5dzRCb0EzTkJtcklhMGZoZTlrbkxpaGN3bWNySnFTWmFIR0g0MUpZSkE0?=
 =?utf-8?B?SzBDRlg5aTd2UldnL0F2WFRseEhrcmtvMkdCcmN3ZXNGN2JuNFhNSnlDZWRv?=
 =?utf-8?B?RzJQbzlWbG9KQWVobVNNY3d3em9qMTY5dE1ybkVPSTE4TmZPNzFnd1FJS3Rk?=
 =?utf-8?B?RTRsWmRKUWJjRHM5SnFPRlVVQmdhUGZEYUhDckQrSGp4WTl6K1VGejFKUm02?=
 =?utf-8?B?YlNrWGdnMjVQajYrR2o2eGxtYzlETVRTekxjV1lXaWRQQUQ3ZWkvRjVaNkhJ?=
 =?utf-8?B?RFF5bGFQYW8yNUdQNTZBenpMT0JSWlNOZ3pFeHBnckFISDA3bERacFpva3Z4?=
 =?utf-8?B?MmJxNlRNQWYxSHpWand0eWRmbHhRbmVIRnpNb2l4c2s1R2Z5dCtjNFlVNUZN?=
 =?utf-8?B?cXNPOWV3WG1HMzkwNHpXYmRpU2hWWU9JeVV6cXpJU0xsZWVjbUJOdk1sVHlV?=
 =?utf-8?B?empYUEM0eDVMS2FndEcvOUdLY1JoL3g4NjR0SzRZUTRMdE5aYVZlSExtNnhv?=
 =?utf-8?B?WU1ZNmJXQ0k4cFYvdzlWMGZVY1ozTjA4eU5GN2RSdXozWWM4bXpZQ0J0VTBV?=
 =?utf-8?B?RDJoc2hBMDJaeEdURUo1VXNhc3FNTzAvbjJnR1Ayajh3Y0RnYWVoMmxkTkhR?=
 =?utf-8?B?LzZid25henJpUmZudnpDamViSzJvUXRabjN0SXpLbjVsYlV5SjhqSHpldzhN?=
 =?utf-8?B?cm93aG9rK1ByYnh1V2RUMnEwSzBXY3BhdzBYeURNeTYzcm50STRqVGVXaUZs?=
 =?utf-8?B?R3VOZm9FeHVUWnpLK0x0Q3JlWXZjSnNWOENOcVRCM25ZcVAxbDNldkFvYitQ?=
 =?utf-8?B?Wkw3R3h0UGRyRmZqNVV3VzRiQWh4aXBjRHdES2NPTFoxWUhFY1VKZFhIZzJj?=
 =?utf-8?B?cUxjUkdyWXlLZ1RZVG8xaXg4VUlNTDV0V0JHSElUQUhsUXYyNUxUWEdpdVc4?=
 =?utf-8?B?bEljNTBmdGdTVzZIK3BIT0tQc0dJM0JUdnZEb2RzK2JEYktlNUdwQ1prRHc0?=
 =?utf-8?B?M3hxaGxFeGZpcjZmZW5tYVZVRDI0STI1UUhuQ0dDU0F2RzNWT1BSQnZQcEZX?=
 =?utf-8?B?anI0SzFCRmdsYkNSU1dCQ0NET2toaXFJUkpwL0hwNy9SRlk5T1dGbi84ZllN?=
 =?utf-8?B?RHNHRjhWZURtQkZWMHJydm1rNi9CZDZKNC9USDlCQzlIcVh0QVJLNmNoUEpo?=
 =?utf-8?B?by9YT3hSUGZJbnVieFUwdFQxZElQSStWbXFPZmRraXZyelNpZ0hPVFd6TXc2?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a35ac09-33bf-428e-1ff5-08dabddc4bab
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:45:08.7713 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1LSFDFRPx7SABfm0jVRXK4a8abXSsazUGcdVTSH8HEXZr9ErsDzbQjLvVd+GxLtzsKGKebUk31sZ+wpYbXAfjZqmiiAWSq5q/jdau6G/jdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5810
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508333; x=1699044333;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B+zmSDKplOdpcLz4+BbcQifD18YgEFhdIAGnOCHxVr4=;
 b=Q6F9lCfrU/iJk7asb2K7n9GsbmScbZGAOorkQz2Ri3Y2lnEf4PUJx0QM
 jl4rnAp0NsceyfEjoIP5DyXOVR1PuKQ6FJwwncCUWoSFsZQYpa6PcClPX
 ibcSzqjJbaQUk4LC3j7lsJhy8lmPoklcQuMR959/A5gcE6cuRcn9E+ucB
 xuFXiGWGPr6BgT+TzKwf2ZAGvGO9LzkV+nMaY+w7QkXCrVgWubcvGN9v9
 LD8wq5CRMGlQuDcq9eUFc4RshSglf/M5Jgcf7feOMaUVvKYnNx91rwTuZ
 B6iBVzzkgkEA9zZv2stQNmEsKIZxCzZdQiZARxK+WSoJwxRDPXoO18aft
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q6F9lCfr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 14/15] ice: make Tx and Rx
 vernier offset calibration independent
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/1/2022 3:52 PM, Jacob Keller wrote:

<snip>

> @@ -1809,6 +1836,9 @@ static int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
>   	if (err)
>   		return err;
>   
> +	dev_info(ice_hw_to_dev(hw),
> +		 "Port=%d Tx vernier offset calibration complete\n", port);

nit: This can be one line

> +
>   	return 0;
>   }
>   
> @@ -2011,6 +2041,11 @@ ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
>    * measurements taken in hardware with some data about known fixed delay as
>    * well as adjusting for multi-lane alignment delay.
>    *
> + * This function will not return successfully until the Rx offset calculations
> + * have been completed, which requires waiting until at least one packet has
> + * been received by the device. It is safe to call this function periodically
> + * until calibration succeeds, as it will only program the offset once.
> + *
>    * This function must be called only after the offset registers are valid,
>    * i.e. after the Vernier calibration wait has passed, to ensure that the PHY
>    * has measured the offset.
> @@ -2019,13 +2054,38 @@ ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
>    * latency values, we use measurements in 1/100th of a nanosecond, and divide
>    * the TUs per second up front. This avoids overflow while allowing
>    * calculation of the adjustment using integer arithmetic.
> + *
> + * Returns zero on success, -EBUSY if the hardware vernier offset
> + * calibration has not completed, or another error code on failure.
>    */
> -static int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
> +int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
>   {
>   	enum ice_ptp_link_spd link_spd;
>   	enum ice_ptp_fec_mode fec_mode;
>   	u64 total_offset, pmd, val;
>   	int err;
> +	u32 reg;
> +
> +	/* Nothing to do if we've already programmed the offset */
> +	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OR, &reg);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OR for port %u, err %d\n",
> +			  port, err);
> +		return err;
> +	}
> +
> +	if (reg)
> +		return 0;
> +
> +	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OV_STATUS, &reg);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OV_STATUS for port %u, err %d\n",
> +			  port, err);
> +		return err;
> +	}
> +
> +	if (!(reg & P_REG_RX_OV_STATUS_OV_M))
> +		return -EBUSY;
>   
>   	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
>   	if (err)
> @@ -2086,6 +2146,9 @@ static int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
>   	if (err)
>   		return err;
>   
> +	dev_info(ice_hw_to_dev(hw),
> +		 "Port=%d Rx vernier offset calibration complete\n", port);

This one too.

> +
>   	return 0;
>   }
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
