Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D987DCF59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 15:40:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB45542E93;
	Tue, 31 Oct 2023 14:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB45542E93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698763249;
	bh=4wf9SMcdUpQTC02SDwEA0K/uCNgzipctw/ApSTShjho=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qRSCWYhPGcAyYy2jLca7jnY7vA7N1wDb7kcIgy7+kcl92eWpR4XJ3TYCKZQDpkoCn
	 DDHPzHfZhlMzn8jE7IDehy85KBMiyhD6uyPuNKS3v7Kl5tccFlYaBDZ4VKjG6Ug4g1
	 nciSwIQkSq5tbiCF+xKqMfIvA92DGrLQm4jvEx1N8jRU4pSFNSywO1opVeljydUdv+
	 WEf14WLS6CAzHF6DPG0c/Lkwr1n9HOjyhSBsqB8zNkD5DQhtAzfqTuiAzUaDHLm3iq
	 XBCkRxlF1lBWIKSOKYrZcc8hF0qgkv2bWlvDR8jsk8dhFslOptt3ZjBZoA+CvJHyag
	 L84yzjpnwafAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQaULD1oX0vV; Tue, 31 Oct 2023 14:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 641EC42E60;
	Tue, 31 Oct 2023 14:40:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 641EC42E60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FB801BF30E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 14:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1665383C14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 14:40:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1665383C14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cc3PkqXpATfD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 14:40:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E785383C13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 14:40:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E785383C13
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="387188037"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="387188037"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 07:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="934133326"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="934133326"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 07:40:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 07:40:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 07:40:17 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 07:40:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVKZ2xfebmDI9xI3Odigi+PBg67sn72fHUAlqwhDnvh4k5gRqPQJMlavsnkn+c+fm0jhF80JfS6W+kz5gNVKQUH/xGU29A1ZmEuugeAzbAFczqgQAlhbQEw0Jc55O5lssNnS3BJZns8DF9luP6P5lt7rEDHGZdCj1NAMJQg31pgmid2m4Y3WONVAnW8pvMVPM6Oet0J7jGL3H+GhctpA+VFPgpULx+DBmPQ7j3cVaNbIw8UufbYLTH57o69QhFIeVvkSD/eFgTciseyG15Ad+zWi39/NEPGAtRmXKuee7RzBmhL9BO6aUEFy5LHB0qkYOfICxj6I5nvSBaxQHtkh5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJklk9aokwrkqRpccHhQEssilVpk3X9fFyUEKuQ6bno=;
 b=C0+SFH+0+OG1BKzKxEngMD8edfVAsovaUtQfsrOFQcI8ImPsCFNqb0EpcO1st+OlkpRqAiv0JiB2yw6/gDUCGO3XGJtsa2hHRTvQgyXZ5FjIEjZUlGp/hWexuvNZt2Rv3LrEItF8wNY2628AZ+lSqv1ZdnrDGAP13mg/g1EMNKeTy2iA5TUkA0TrxBmnrdIpcg8uNx7NJ3i2wHTdvSWL7EAyZa0CAUjBfLEM23jH7vfjMftnGOhxWeWTJWdSGSVG8b98uWgejNOTGHMMnoZBLsi0Pt31JNBBrxEU1hKKnipz6Alg5MjoNOtTy7yoaVdPwJWOdTTgu+zJgQYJrDvU0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Tue, 31 Oct
 2023 14:40:15 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6933.024; Tue, 31 Oct 2023
 14:40:15 +0000
Message-ID: <aa1dd347-a16c-44f8-95ad-5d50bcba8f34@intel.com>
Date: Tue, 31 Oct 2023 08:40:06 -0600
User-Agent: Mozilla Thunderbird
To: Gal Pressman <gal@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "Alexander H Duyck" <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
 <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
 <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
 <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
 <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
X-ClientProxiedBy: FR4P281CA0065.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ce::8) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DM6PR11MB4707:EE_
X-MS-Office365-Filtering-Correlation-Id: 24852447-9376-4346-65c2-08dbda1f4b71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SPUKLf117h7+t1GwkZ+2fMyxPIdC6YaghSQyiEhUHAmHHWgIQ2qbP9V5UivZ2xYF4vf55gqXJrk5wYQKIfUYvMUhDHs5IBZ0zSvQA8Xco0ZEoF8kxfM+eq04L0SPfTTmhKYa9ZLTrdn7LFW2OmnXphqA+/vSM9dmJZWu/ob5qhPhGWK8V+k06TX428e697Ck+2E58LtgKysHHqg4mhHKFp0i/20CbgKBNyxcdV2P9EH70KKldiEcD94D1GNYPvstwvmn8MvSbyIzfsjfFG2YoA4C61Vur4bbBDxZgncfLSrsq1k60E7dOKBmnIt1VjIBfORczU1mnU2IRdcDiIW56eT2Mg/nMSUP8Opk5PvDkAE+2JIqCHxhfXxT966Tv99VfG6w0QRauUhfuwyz9ZNq509NpfknFUoxapQ2QBjaxvrJucL7M92ymcQYOclckGADL5RXQ2uhGsWDJOnE+Ow9Mxc39+YJsyfvmkchw1E254L1miexRkO9I2IojqI5rz+5bhKElVxvSB9KoCOBU5Lzj06yWin4LlLstV5RMyqFhylP6NLIyunxYFRJHfZAyV1GWScPZW5FMYbq9o0P3/ucvKwdbDVriNvTo/KRp/n/tt7OjVwl4jF1edn9p+MpnqThnuibzrqSsscjfiOP5YVG/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(346002)(376002)(39860400002)(396003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(83380400001)(53546011)(6666004)(6512007)(6506007)(2616005)(26005)(38100700002)(82960400001)(86362001)(36756003)(31696002)(2906002)(4001150100001)(41300700001)(5660300002)(7416002)(6486002)(966005)(478600001)(4326008)(8936002)(44832011)(8676002)(110136005)(316002)(66946007)(66476007)(54906003)(66556008)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cThOZDlNam8rWGFSQmtmbzU4aEtWaVdzS1dycFlkaUEzYVZib1UwaGpwbU9z?=
 =?utf-8?B?czVPR2k1QzUwMU1MaTFmSkd0S0NtSjlWUXhXWlVMRHlmYm9PanVMMld6Witz?=
 =?utf-8?B?eWFRMWZldFZHalc2dFhOMWRFZitJclE1MHpOQnBiazJobi9mKzRQNlhEMCtN?=
 =?utf-8?B?ZEJiU2ZNckd5Q1cwZE14MEFNUlBEbHFPWXl5ZmpmOU5IWGxCdGxhYkFGbUZU?=
 =?utf-8?B?K3VkWm9iT0o5S1VtZHZ6S2paNFhRQzYyRWY1VkVubTdsU2tGUHJhNG1KczQ3?=
 =?utf-8?B?MnBEeGo3QXNobVJQQlhzSUVETlNsc1NDcVMzMDlldjB6VTlYYnk2SWVQQVlq?=
 =?utf-8?B?UFkyZ3p4NzJ0MGVUUjYxY1ZZd3dzVy9kVmxvY05penFCU29yclBJQk9oUEN0?=
 =?utf-8?B?M1BFakZhaFprZXJxNnNOTEVSb3JrQzBsV0JVVHo0eVVKaG0zMTdSMVZ3czBa?=
 =?utf-8?B?UjF5WDFncWsrMHVWT2FkVDBlOSt3cUp3MjljeXNRTTY1YjFzS2pqTFhKdkVK?=
 =?utf-8?B?TkhpeEVhSmJLSTI5V3dTRndDbmlOVFVoTXNHSDlUakRYaWV1ajlBNWFCam1U?=
 =?utf-8?B?RW1RZzhmbEMrUVpVemM1eE1pTkVzU2o5b0dSNmxVbDVhaGVhRFJxSW00cUI5?=
 =?utf-8?B?QW80V1FYK1pKSUYwZ0RhdDdISXF2dHgwaFIza2lFdU9wd28rMTNLeCtON0Zl?=
 =?utf-8?B?U3k1NzZZUmRSTTQrWjYrbGplbU9iUHVjVURVRVRPaGN5WGVCUUltVTIwc0xW?=
 =?utf-8?B?ajJTc1Rnak12WmRFWVZqWjU4NlVEL2ZhcWlkTW5EcDI3TUFJZE9salhObGE1?=
 =?utf-8?B?VjVUeVVVMjFpamJYakkrUVAzdDg4bFNLQ3g3cUw2cFBiQVY4VEhzdHBZMGVV?=
 =?utf-8?B?QU0yYVdIK3JmU3RBbEVPTWVwSS9oZHhJbHJiSS92TlgwRWJuMXNzV05UL2hX?=
 =?utf-8?B?TnpwbjFnUHJscGtCWW1PakEyVkE1UDNvRzhDbjlYQ3NkU0ErcjVhNVYzYXNJ?=
 =?utf-8?B?VUw3aTRvY1VRMXpFN0xqQmJ2UEhQbXN3RkNlWUo1N0tsRTcxcmxnT1ZYNTFG?=
 =?utf-8?B?UTFsZE1sM3dxQnl3OFdKaDB1RXpYWmpIbmtCbjlsakwzUmxaTnNTT043V2xR?=
 =?utf-8?B?UllqL2ZyWUROOGxqM0JncG9Zb0dscTRQeDZ6bkV4QnB4SDl0RkZpVi8yUHZs?=
 =?utf-8?B?dDRxRnA1YklzWWRNZHkxeDJZVGFTMld6ZDB3bWozUDV6RzVSRkp3UXdpQXN0?=
 =?utf-8?B?K1ZJcGt0Q21kOHhkWVB3ZTZOd2d6dzZQenRMQ2J5VlVhVGpFZnE5blR0Yzlo?=
 =?utf-8?B?dm5xc1NSK0NUTnllOE51SEQ0ZEdhWklXQ3BwU0pBTk8xS3dQSXc1dFF0WHM5?=
 =?utf-8?B?R2dTSHR6dlZtbVJJdTBNaEZUZjJKK2dNT0Q1c2MzUmZVMWhqTzltNGlVNC8y?=
 =?utf-8?B?RnYyN0YzNXU5Zzh1STBoREVKRmpTWVBVeXhyNHdreTBMZUhyYnhtY3ZYaEIw?=
 =?utf-8?B?Znh1MVJXQ0xOSDZkc2hsbzNXUytuUndFSzJNaHYvaGFCazIyRndSOTdZL2dU?=
 =?utf-8?B?L0plbnNBSzhZRXZMMnJ4Z2N0aWZSWHVVL2lxMUswbHl1SGExQUlpYkhRa2th?=
 =?utf-8?B?Q09BMmY3V0lPaVdQbFYzdlQwR2ZOOW9pRHgvQklybEJ2YjFYZ2w3TjcxQmpH?=
 =?utf-8?B?T0dtcW5La0VJZUhDN1d3dVNQdUxGL3Y2TmF2WTlmWWk3K1NVSUJNQjVmM0M2?=
 =?utf-8?B?SzhybkVNc3d3STh3Zm8vN0VyWUt2c0V2N21CcGYwUzVRQ1VncWNncGdKaFlY?=
 =?utf-8?B?OU1FK1ZWTWNZVEIzbXM3WmFOd0ZFczhPWmdZYnk1VTNqNys0TXNSOGRGQkpS?=
 =?utf-8?B?VUJ5SDRDOXpzaklaWnFpRFNVZ3NKVjBuQjVFcTZsby9NZHljY1ZCN09DdWkw?=
 =?utf-8?B?bUpuQ2o5SytDOGMxMjgxSjFLOWFjby9iNHFpRDFFbkxHZ1E3aFowL0tjTlBm?=
 =?utf-8?B?ZjhBL1RjY2dTbzZXNGkvZituUHZwNHdJWjhyc1dDMk1rU1U0VE1GcHVZalhR?=
 =?utf-8?B?dzdOaUtPZTJNbDVOUTBROS9FZGQ3cHJQU2lzZHpjcjRqOG5hWFREM3M0TldH?=
 =?utf-8?Q?DiHwodrpXODs/c9gLoONIgo4h?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24852447-9376-4346-65c2-08dbda1f4b71
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 14:40:14.9916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C1tN7rr6PKt2mhF5LMW9PA+BX+4oQVcnDwX50TiONO2xJiFva+l8Rx8yzYgA01rYaR2sPDc1UUjnkyFDf1lqgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698763240; x=1730299240;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p1L/nnVscxXgvNMn3MJ44t0e5nShHdlmqkNbCb6uvBM=;
 b=FBGxaEq4OCo3Ws0VpjAGPx9wJ6n4WG/oogK3E5CE1YsZ+u1q1h3HsU/l
 xWWa1iCN/5/3B5C7RffV7L2TRdYxU4nyha/XJonPYHi6fmO/pfwV5VJ0h
 tGQXiVZf18s8nW0zuEctA6Q4sRjgJ7ki2zt4+dX9ZVSH0TvgvhwRVl87A
 Jxt/nlHAi1ANVfP/hPX/WyRvdVni5haCE7xKbD7xipuA+9+L4wgCbO/MO
 Z6EfjkV6Xq7KSU0jjYnzANWMynFS0/gVsZohxT6VAkA2yqmrROTrnpLH4
 +YFmU6j2M1t7h3Nh9RN2SBz6VNbNwFG3xrlzbN3nfVSFadaIwIWw6HhR2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FBGxaEq4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-31 06:00, Gal Pressman wrote:
> On 29/10/2023 18:59, Ahmed Zaki wrote:
>>
>>
>> On 2023-10-29 06:48, Gal Pressman wrote:
>>> On 29/10/2023 14:42, Ahmed Zaki wrote:
>>>>
>>>>
>>>> On 2023-10-29 06:25, Gal Pressman wrote:
>>>>> On 21/10/2023 3:00, Ahmed Zaki wrote:
>>>>>>
>>>>>>
>>>>>> On 2023-10-20 17:49, Jakub Kicinski wrote:
>>>>>>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>>>>>>> I replied to that here:
>>>>>>>>
>>>>>>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>>>>>>
>>>>>>>> I am kind of confused now so please bear with me. ethtool either
>>>>>>>> sends
>>>>>>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the
>>>>>>>> interface
>>>>>>>> for "ethtool -X" which is used to set the RSS algorithm. But we
>>>>>>>> kind of
>>>>>>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>>>>>>>> "ethtool_rxnfc" (as implemented in this series).
>>>>>>>
>>>>>>> I have no strong preference. Sounds like Alex prefers to keep it
>>>>>>> closer
>>>>>>> to algo, which is "ethtool_rxfh".
>>>>>>>
>>>>>>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would
>>>>>>>> that work on the ethtool user interface?
>>>>>>>
>>>>>>> I don't know what you're asking of us. If you find the code to
>>>>>>> confusing
>>>>>>> maybe someone at Intel can help you :|
>>>>>>
>>>>>> The code is straightforward. I am confused by the requirements: don't
>>>>>> add a new algorithm but use "ethtool_rxfh".
>>>>>>
>>>>>> I'll see if I can get more help, may be I am missing something.
>>>>>>
>>>>>
>>>>> What was the decision here?
>>>>> Is this going to be exposed through ethtool -N or -X?
>>>>
>>>> I am working on a new version that uses "ethtool_rxfh" to set the
>>>> symmetric-xor. The user will set per-device via:
>>>>
>>>> ethtool -X eth0 hfunc toeplitz symmetric-xor
>>>>
>>>> then specify the per-flow type RSS fields as usual:
>>>>
>>>> ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n
>>>>
>>>> The downside is that all flow-types will have to be either symmetric or
>>>> asymmetric.
>>>
>>> Why are we making the interface less flexible than it can be with -N?
>>
>> Alexander Duyck prefers to implement the "symmetric-xor" interface as an
>> algorithm or extension (please refer to previous messages), but ethtool
>> does not provide flowtype/RSS fields setting via "-X". The above was the
>> best solution that we (at Intel) could think of.
> 
> OK, it's a weird we're deliberately limiting our interface, given
> there's already hardware that supports controlling symmetric hashing per
> flow type.
> 
> I saw you mentioned the way ice hardware implements symmetric-xor
> somewhere, it definitely needs to be added somewhere in our
> documentation to prevent confusion.
> mlx5 hardware also does symmetric hashing with xor, but not exactly as
> you described, we need the algorithm to be clear.

Sure. I will add more ice-specific doc in:
Documentation/networking/device_drivers/ethernet/intel/ice.rst
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
