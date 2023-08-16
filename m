Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9FF77E167
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 14:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2D41416A7;
	Wed, 16 Aug 2023 12:23:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2D41416A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692188619;
	bh=pc1U0sA13je7/TCWstT65yHfkp29hMt6AFYL8vmMmK8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oyc6Jlzwq3OmcW0K1iKo6fwU1G3AHc4Qd2CEKW349cMvuQxUx4tgZe3fxgLTXH+NB
	 7dIFGqptWHxSSMnNBroq7QspnWoftMrUjnbyMNZpYsWiEPiWOC4wFBk29lRKFpLCDA
	 2kYXpq30q6AfgyQs5bZNFZjA0hOdnNNFFJGNTPGaMlpix+buDnXa1JMBvIipZSO0wz
	 7XeFaIljWL/kpcMJ8yrLrpxRpadDW1Lg7+2e631HTkDA6CBsPHn0ZDw0u5Rvt2ptHG
	 /Bxj2cPyFyfyKLWqTbyBVGKz2ohShNNZklz/PvG1qxTsVgNdErbAWP4KOHEbZNCHfJ
	 L7S3Zb7BRtFVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q5gxt2CdUejI; Wed, 16 Aug 2023 12:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9473F40B6E;
	Wed, 16 Aug 2023 12:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9473F40B6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 036CD1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 12:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCADD415B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 12:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCADD415B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AEN3kCE9QkdY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 12:23:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBB9D40B6E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 12:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBB9D40B6E
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="369987091"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="369987091"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 05:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="804205726"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="804205726"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2023 05:23:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 05:23:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 05:23:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 05:23:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P2dH4ofiUelmVGgKX3jn+qhoRuR3XZ3DNlTYNijG4EahaHymNX0Lfu730DphFAdd4FVQwGIpp21ypyZuEOoFjnGWaQy91dnXT1aEzNS0+ij5b5pdAo4s9ZOHrxwtguKLA32jix06JgrzXFBSpoVcEqJN/NAPEDE7r6dZa1/mtwqKCKBwuADhzPdwL3SKeyXeXmctpNOqnDW17P3aHaJpLHjeo+6vdr4jScV/pgedlHY/MP+YtbjeiMch3W4WsAH5H29FK5ZRcJamLN9QczPUVNZ57TIbV3/qw3udB2mwksqD9LeGuuMCDtiXGj8bLa0RxuwDRxsKUWn9aBqDIk/5Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=etG+imt39Io4f6bQWeLnN71+n7sYj0BY2bmVuBzR2mg=;
 b=lCUhfUTgpOABqmy7hOD69gcRbNEujPGURyGrjBF93biP4Sci8/kVvjT8XvJNg4BzNOmoJkN/ZqV7cSBomgbShbLTDIe0u8mO0iB4HyJSt+0Cej+6Xgmv1qOzY2UHk/52HPj6eWumlxsMhHSfu8gta/fI9iBuSZ2GJbwBfm4wRZmg1DcjxGpws+1TBaAacmVwngDl83pjZ51GLMLiXZRZXqF3V3jTcksOzsPVNhNtwRe7ZoCIKJ/p7M90PuxfttT/pkMpc4fDdiwBXjF2K1o7ljyxnPczQGgkLxlHJpP6Jf9RgJYwSkxHrz+FNVs3FCfN5Mj3IfZnuCm9ouFbe/gvJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY5PR11MB6260.namprd11.prod.outlook.com (2603:10b6:930:23::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.20; Wed, 16 Aug
 2023 12:23:26 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 12:23:26 +0000
Message-ID: <54ceed93-7d36-acf8-1aec-c07ba024c920@intel.com>
Date: Wed, 16 Aug 2023 14:23:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>
References: <20230810103509.163225-1-przemyslaw.kitszel@intel.com>
 <20230810103509.163225-2-przemyslaw.kitszel@intel.com>
 <e6565705-4867-c07f-5cc7-4e9155b5a4e9@intel.com>
 <202308101128.C4F0FA235@keescook>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <202308101128.C4F0FA235@keescook>
X-ClientProxiedBy: FR0P281CA0227.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b2::7) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY5PR11MB6260:EE_
X-MS-Office365-Filtering-Correlation-Id: c8ddac46-eb31-4131-5d06-08db9e539781
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7MaXZBWN3IL5pJ1QkotZu2EgZP8Zz07mvVVf/jWJ2rktF4Sw2qvCzRFNL2OVYko0230mhAng4UrrcYXM5a/g8EEJqhbzYFUAIB0Nh6GFheSkI/ALoX+tLSD4i+armRaMZB3i4Zo9QJowB1hvq6iXBfwqgvs3eK2zLp2qw9xWedCvLCJ7MrFQzAApxLVjngNz12O6ynWrJ05mGWVh/M3yYh/76icbCEXKDB2D0rN7f0OsbTwFYAeSSHLrkr0CWIO920OfUAo5RElsKPYEJmehyFrWQc6vqj+jSnPCNjtneYe2Nwzy+9ZeI4CDKXLUw7C2pz4XwDngUZUZGhwufSS0tCKXkZY7GxAWMSYWfXQEV48g5kpt3Bz/0vUksNtD1RbPlZHoZU30Ypg7/5cobu9D8f6Z7nXGetuv03BErrqGmW3M/qimywF97SscGg9Uq+8S17m+irY1Tv8nobzsi9z/ASbD232qfK9eMvqL6JEnPWZjqX5QWZXH7k9QhIYIW6L/OqrLjfw0SGmSZLbccJbtIj+ZnM8Zhy0OKRqvrQNP2cI2UxVFbSEk2nKL2phb31KEhUwbuqwpg/ito5GEV+XZD286DH6Fgw5lJr3j3SVyFWmBcZSnWOZJ6HLUvZutldLJtvvOTxC1J4CYmLUiL6Gglg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199024)(1800799009)(186009)(2906002)(86362001)(478600001)(31696002)(6506007)(107886003)(36756003)(6486002)(2616005)(6666004)(6512007)(26005)(5660300002)(41300700001)(54906003)(316002)(66946007)(66556008)(66476007)(6916009)(31686004)(8676002)(8936002)(4326008)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3k5RHVoZ3pDQjBiZTJZOGVJaXlmS0ZwaXM0WDduQ1F4YktsSi9GY1F2d0Zl?=
 =?utf-8?B?eXJ0STlYTXZPRWI5VTRNVVArR2JkSVlCNk1TNEMxNkt0UEdwZUpvMkRadjVp?=
 =?utf-8?B?WXZmczRIRVFyM3AvK0NCUVpTejhNcjN6NCt4cFp5d1pUWndwWUI5WW5WVmFK?=
 =?utf-8?B?ZjVTT3FhZGRNdmhjeUFXUzBISlFwSjliWTlIMkozaU5wRTVqUE9FTWdySldx?=
 =?utf-8?B?dWcxZ08yWVB1TGcyVGtTcDRyc2c1dnJNU1A1eFM0YnF4a0NpbngrWFJNcXJt?=
 =?utf-8?B?NVdxTEYydDhsT0RCa0ZGN09MZHp2TGFBZXpIa1lsUDJMQzNGSFAwcnpMbFIv?=
 =?utf-8?B?YnIrL1hxT0dkRVR0Vld3NVVaMEFMbFZkaThsVUpxQy9RdUMxTzh4TVl4c2VD?=
 =?utf-8?B?WmlTZXdFQk53M3c0b1ZHZGNDMWp5UU5IMkFaa3VjYzNFZHJoSzgzaXQ5RTNY?=
 =?utf-8?B?UklHMElhVzNhbkJ2MG85NDgwcU9MK1puM1ZaRS9MM3dNUFBDSmxURnFMMEg2?=
 =?utf-8?B?S21iWi9welhVS3RwUERWTHpOdFRVMTl2M3lwQUQxSVlMV09MSzNZVVVzcjVh?=
 =?utf-8?B?MU5aeE5GKzdDV1FJV2ZxUVQ1cUUxKzV5aGRXMXo1dzM5SkxCbHl6eGV2R21V?=
 =?utf-8?B?MmQ0elBPdmR0M2d3ZWh4QWs4eWJrL1pRQTNBL3NER0gvZURDTENKQXJ2eTlO?=
 =?utf-8?B?VlA4bFZnK2RBQmppd252UFo2NkE5WkZ6eTlkTDU3QlRXVVJNOUk4WHlkL1Bk?=
 =?utf-8?B?aGtNYjF1cERzS2VwZVlsUndJTnBpYnRiZXZReHFyRDZBZlI5eEpQN1p0K3lL?=
 =?utf-8?B?Mjh5S0EwSnQ3MWZQYmZpWDd1M1JDQlMwYkxxck1nOXVobE5RT0xDVEFRYUdY?=
 =?utf-8?B?MGc5QlFKbEhDcSs4UFd5bTNDNWxUUGFoQWRiUGkzTmE5aXg3aDFzVWxMUWpZ?=
 =?utf-8?B?Z3BaVDRkeGt6U1N6OXBmaHlPNnpERTNLeW1sbi9nSTJPRVlmOTJYOHZ0bnBH?=
 =?utf-8?B?eDlNL0ZhcFNXZnI0clJPeXk3RWc1SUtQZWlGMmRZdEVFbVVrbk90MEJvblN4?=
 =?utf-8?B?S09STml6RG9oMFVjbXZWc3RHcmVjVU5qV2EwOUx1Sy9NRlliUmdwZUZHcVM3?=
 =?utf-8?B?allaeU5iWDhNS0ZscUZRV2VEQU5XMGp6by81bkJNUWlTY3NIcXI0UVFrb2My?=
 =?utf-8?B?elpqWWNQL0RaeXBYNHJFeXd2dnFqcXd6eTVDYUpycEpJa0lXanl2aURFU0cr?=
 =?utf-8?B?KzFWS3VXMFphSHdkNEJPU1Vab01EU2lsNW9wdVhCYVpwakxPTXEvRXhwZGpE?=
 =?utf-8?B?NkFQeHVLTElTRndyR3RwelM5bXVMZTBWSnpJei93cHZpcjExc2hXaFYwTDRX?=
 =?utf-8?B?eW1aajdWdUdJbjZrOUI2Z0NXcC9YTkNsQy9HTkhaWUptNjluMjFvdW0xT3Q1?=
 =?utf-8?B?UkxLbFUyN3dhajRMcllHck52SEFGZURIRlprelQyZmIyZEdSMGVnNml4ajRw?=
 =?utf-8?B?S0Njc2pJeTNDNTRSN3NUVWZYY2dOblRXWUw3V1Izdmpuam0vbTFDNHpkMFhB?=
 =?utf-8?B?dmg5THBZbUxpeWh0cDRSYUZiYmpjRVgybHc5V3pHaVRnNldtTWgzdW9SQ0E4?=
 =?utf-8?B?TVQ4cnY4MVF2U3ovNG50T1JZakEycjBYZi9qUHhheDhDZDlBa2ZLNW5WeFRx?=
 =?utf-8?B?QnlueGxuTXRFaFhhNFhtK0xrNnM2UlAzRmhPaFZFNmViSkhWTDROM3NQeUhm?=
 =?utf-8?B?M2poQnlVc3lMYWpERmwvVElCVnludlFRVUNVUWZxTzR4MzR2VUZRUjhsVTdX?=
 =?utf-8?B?d0VxaSsvRStKaXlveHJLVlZIalRnMUFRMFI0dFVKUW5DRVppL0Y2aHBnRlNx?=
 =?utf-8?B?UHBCY0tWN0dZcFhTSE43ZUh3SHk1TlVwWHp5MGJaVzZIV1JpakFoUTVCS3VZ?=
 =?utf-8?B?enNVUjd3VTZYODJyVWl0YVRKY3BOL2s1MEZ5YVdwL283VllJODZBb0xJakN5?=
 =?utf-8?B?ZXVtb1l4VytHNEdLN0dOTHd2d2U0dEhWUG1rQTNvbVJkSmFCZEFJb3lqTFZZ?=
 =?utf-8?B?WWd2R3UxWWZFK0dVeTN5Z3ZqTmR2RnhUSnVkTmtVbExzVXg0T2xBeDZOY3dW?=
 =?utf-8?B?bkxsQkJjSTYyT1hLdDkzdWphaGQvb1N0M3BDWFRRaXEvSms2Q015d25WaUtw?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ddac46-eb31-4131-5d06-08db9e539781
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 12:23:26.6699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2s69HL/7RIIOU4xWeNXHLKF4mpKsDjDJcdeedfzWI7NgrFbMVXJAATWF1qNqwG2LWAulfoA11RxrP3TkBETrkdm7jD0Mb/xL+sSTrQxTOrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6260
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692188609; x=1723724609;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0uATWayMjw1m9ypy3pS2vK7LUNrTkDnrbZ1rajZxQ6g=;
 b=TPMdGQqnAztxOscN+xzki6DuN+Dwio0Jxk1G2YH3zqrfRdI8Rg1Li9o5
 WURoCsE0YtNYY2yT0QldR7MfAoE75nSVZ6YoQT5MiQqcZ7KQJzTKzRfKR
 SuEJkJCsXYcpunBJ7tOCCdQKd1aP7W7vQ9V3l5aQInQMAi5jgE2uMvp/m
 clkDI0IhMnodPGYOqDQRX82wLNU8oR1UR8I8QRwGaQ6EZ+uyfNZyVAEyW
 3JnV/4r/f6H/YU5XppzvLALko67flCWSDRKlpTMKz7mxI1HxCLI4s6HkM
 zZTqWyCRWWD3IRIGR242RfEAqggS8FJzKYNa4bjs+RI7RWaBhy7IRMEXg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TPMdGQqn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>
Date: Thu, 10 Aug 2023 11:31:45 -0700

> On Thu, Aug 10, 2023 at 06:24:47PM +0200, Alexander Lobakin wrote:
>> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Date: Thu, 10 Aug 2023 06:35:03 -0400
>>
>>> Add DEFINE_FLEX() macro for on-stack allocations of structs with
>>> flexible array member.
>>>
>>> Add also const_flex_size() macro, that reads size of structs
>>> allocated by DEFINE_FLEX().
>>>
>>> Using underlying array for on-stack storage lets us to declare
>>> known-at-compile-time structures without kzalloc().
>>>
>>> Actual usage for ice driver is in following patches of the series.
>>>
>>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>> v1: change macro name; add macro for size read;
>>>     accept struct type instead of ptr to it; change alignment;
>>> ---
>>>  include/linux/overflow.h | 27 +++++++++++++++++++++++++++
>>>  1 file changed, 27 insertions(+)
>>>
>>> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
>>> index f9b60313eaea..21a4410799eb 100644
>>> --- a/include/linux/overflow.h
>>> +++ b/include/linux/overflow.h
>>> @@ -309,4 +309,31 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
>>>  #define struct_size_t(type, member, count)					\
>>>  	struct_size((type *)NULL, member, count)
>>>  
>>> +/**
>>> + * DEFINE_FLEX() - Define a zeroed, on-stack, instance of @type structure with
>>> + * a trailing flexible array member.
>>> + *
>>> + * @type: structure type name, including "struct" keyword.
>>> + * @name: Name for a variable to define.
>>> + * @member: Name of the array member.
>>> + * @count: Number of elements in the array; must be compile-time const.
>>> + */
>>> +#define DEFINE_FLEX(type, name, member, count)					\
>>> +	union {									\
>>> +		u8 bytes[struct_size_t(type, member, count)];			\
>>> +		type obj;							\
>>> +	} name##_u __aligned(_Alignof(type)) = {};				\
>>
>> Hmm. Should we always zero it? The onstack variables are not zeroed
>> automatically.
>> I realize the onstack structures declared via this macro can't be
>> initialized on the same line via = { }, but OTOH memset() with const len
>> and for onstack structs usually gets expanded into static initialization.
>> The main reason why I'm asking is that sometimes we don't need zeroing
>> at all, for example for small structures when we then manually set all
>> the fields either way. I don't think hiding static initialization inside
>> the macro is a good move.
> 
> I strongly think this should be always zeroed. In the case where all
> members are initialized, the zeroing will be elided by the compiler
> during Dead Store Elimination optimization passes.
> 
> Additionally, padding, if present, would not get zeroed even if all
> members got initialized separately, and if any memcpy() of the structure
> was made, it would contain leaked memory contents.
> 
> Any redundant initializations will be avoided by the compiler, so let's
> be safe by default and init the whole thing to zero.

Sounds good, thanks for the explanation! Always nice to hear about some
compiler internals :)

> 
> -Kees
> 

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
