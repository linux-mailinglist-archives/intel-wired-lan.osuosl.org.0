Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC1E730912
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 22:18:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB62E4189E;
	Wed, 14 Jun 2023 20:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB62E4189E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686773907;
	bh=QvFybUtIlv/+hvH/JvFfgXarF7pMZTnvoLYB1CfFMKY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eEU0/cnOXxL00ElzMZc/ko4skojDZnU+fiuIlBRjTbsmpEcOEPbKEn0yrApHm52mW
	 LjbyftNOOu9bPnvJSCizY3vCV/6p1G4VYKjWNMdQCfoDYQvQ+T0NH9Cgdsrhhg/P48
	 Q5cBHAuRc0si0ZBsMmdusQARvKe9bLRLrqFo68T1vWI4kKZV7MT+TJLE1N5IRNpnVJ
	 0+ijvU4o3p+WcCATLlThm9uES6+WSQRccpDwfQTNVLhBAD5759gKIGJIFHoOiTu60M
	 euCNfaNnM90o9+z4rZZiwNDn54tXQUwVSXfZNoY4WW8zBYRIyc/851HOt+uohksqN7
	 b5ODSI8DRa1nA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHKqKtAQFGkC; Wed, 14 Jun 2023 20:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 971E24189F;
	Wed, 14 Jun 2023 20:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 971E24189F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5DB41BF370
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 20:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86AF8403C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 20:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86AF8403C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOCwWRQH88U5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 20:18:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A4CA409EA
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A4CA409EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 20:18:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="445097198"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="445097198"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 13:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="662535613"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="662535613"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2023 13:18:19 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 13:18:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 13:18:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 13:18:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iPF3Ka6HAm+dp5PkGM4woN+rMUXIBDXlb686ALiTdvDYvehExGfa/F5fZpzZ1S4G/sphYDrrWeCRMjABMnJjuvx3CLtHf2xWw8q1n+mybfG7yfOerm4ar/yJNHtEDX8HqJKaHBOHz6RkMtBGCsd1JIIcjKEdcTvIH97jj3ayvHKERE0KyotFUa6A55bYrzL0MdVAV7MjlwahcKZFUH7jpj/KYTzgSF8WBRqDjMNMyA6y6owPpSVE9ceAH/rkfI/qHKzkAHlq1Ekx1l69ZuY8x9pxXMWw+jy46yQoYcnkv7tk0yJYDjDz/Jjq1x19OUM/8IrVQ5SQs+TMk+58rIM0wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B2AJ7jx7xtFr+Qh3Fti7MVfaBL2fZneisX4rnshAYyo=;
 b=ejB5EDHOYCDQMF7CoapTDt3CfGwlC8xdTC8xOzOYPt1R4WSRyJEJPzIcf3khWxmB/DCXvn/NpUYSjq/kVQu52nOZRolT0HIAum9j0WEe2D6l0S6mEMaRZOVRleULOekJOWan2Ik4R4zKOuES8uWLnXqjbtNR3ddDEU5SLfRg3fZQB50V4LrNfKH7soUOevPx7j8tjexKKx1W27n7RU6Kqtds6ZNd3fm9rngasl4ZPDEyhJhUCdrtzqtoz3V38WW5EkFDpNGurvFKKWLy3/2TCo7cgEyQV4/WJ1OpWc1Km6g/MFvfpMjXmIogP7fzyacIL2revOuZAHz2v5s39ols9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH3PR11MB8316.namprd11.prod.outlook.com (2603:10b6:610:17b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 14 Jun
 2023 20:18:14 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 20:18:14 +0000
Message-ID: <b4e07414-8ca7-fda1-2f67-528ba4123e94@intel.com>
Date: Wed, 14 Jun 2023 13:18:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Shekhar Deb <shekhar.deb@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230614043700.2424299-1-shekhar.deb@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230614043700.2424299-1-shekhar.deb@intel.com>
X-ClientProxiedBy: BY5PR04CA0016.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CH3PR11MB8316:EE_
X-MS-Office365-Filtering-Correlation-Id: cd294bd6-ca93-41a8-ad89-08db6d147b54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vBErQtnju97Hb2jlwzc0xXJJXnIXVjhA7aLChnPgB1dbD9UKJ+jtZHMT4z+iIW4nvHk6DazN/5ezcq3Bfc3JMs+B+Cfi3ADKpp/26WW3RQft2IT9vI2SDQ3lHXEaEEmAvB+H4Ku9LMxXIPnz/KDB0iscjzzurCcNz5F/7x0OBGikdNKY2gz1WQElfB/ad5VhHz9grGOjNEECIF1AWMTgg3GQ7rhscCovIHZjS+qKwTqRJ2OKjzcfSYS9S0HB2tRvI4ChbLGquvvN9FQN2+pKPlQxVZLHoFLOrxMVCVFFEVv1a+yG32TaLSm0gillTaQJPQlJx5/Zp0l7wCfzi636jDy61GXYHYPkjfQ2gWJw5gVf6OPyORs8wT7fgVB9Yhsx9KXiKt1zrLlejFE69jFYVnwM9vzIveUWsadjSI7/ZcyOEhHCLSM6RxAt/vP/hf4D0gIO2JBYsArZpFojQkrdx9ZIB4KRvW/5hoetPF8/pIO21KgcHmDkgnM0ObsJEWx3mbszDTgEWb7cYFHHWs2B9wxrmYxWBYlDb/mbTwXclsmUF9iMJijS+UFxNbIhSZjS+DcIsu2Lhdnv6+bPVBttLTDL6av2Z3XMjRDtDlWkkwefx2asymXcngCmgzcpwbb45TNx92s51zCRWprML6oAVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199021)(26005)(53546011)(6506007)(6512007)(186003)(31686004)(966005)(83380400001)(2616005)(66476007)(6666004)(82960400001)(66946007)(4744005)(66556008)(2906002)(41300700001)(6486002)(8936002)(8676002)(36756003)(38100700002)(86362001)(5660300002)(478600001)(316002)(31696002)(15650500001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGcraVZTcnVJMVNtU0VvWDVUc2JjT2VHdzhrOUEvNVROUkZRZWYvT2tObnJ3?=
 =?utf-8?B?ZGV0VVZCZTYzcHQwSWQ4RW1JQ0JLd2NmUDljSVdwWWQ1Q0RMT3NOMHNXQmJs?=
 =?utf-8?B?RGQ2c0kxendFUFBWU3lQd2R1Y214UmxidGo1bnN6dE1Sc1kzQ25aVUZ6Zk16?=
 =?utf-8?B?Y1Z5MFNZOTRTQWtIWHhadUVxUG1MU0Z0ZXpTdXdZZ0Zzd1FVNFNzTnBkdUZv?=
 =?utf-8?B?UHQ2RFBEMC9rMFNEdjUzQ1drT2l3ek1RQmxQNVgxTUhqV0EzMEs3NFJBZlNi?=
 =?utf-8?B?WlB2aXVZczZIdTRoK25HWDRGdnkxR3JBRyt0K0RPdi85eVBjdjM4eStUUWNI?=
 =?utf-8?B?aXEwWTV2bmMxMHRsV2pTbjFSZDkza0d1MFBNLzk5U2hDWnFtdjVuYnN2amlj?=
 =?utf-8?B?cFlrWk8vMmRyVTBPQzhPRFhHR2I2TXBTS1c5OU9hSTZlVzYyNlZQVS9kUjdO?=
 =?utf-8?B?ZEswQjV5TTNlMzI1VDZNWFBOTFA4SjdmRnBZYjhmWWQrZGpKSFlQTFhrcmlv?=
 =?utf-8?B?M1VRVG5BaHU1NC9jRCtMZjVFWUpKWmx5VUcrSGpGdmNWVzZFR21BZHBFdUpy?=
 =?utf-8?B?RjB0NlE2UFFyN0NFUlV6K3JrTS9vZGNEV21RMTA1bnNxYVh6bndzdEcrSXFW?=
 =?utf-8?B?OExKRlNPYnQ1dWxjbUtKV2c3MktzNFhIalJiTlFGNVgramVFb2hpbWlGTmJu?=
 =?utf-8?B?Q0dhSHh6Nzhsbkljb21rVlVOdGY3bERSZEI3SUE2SUxYUmFxYUFnclc2QVBW?=
 =?utf-8?B?VU1ZdEEwdUlicUd2bDdiSWxXOHpJQStyMVlhQ0g2bGFnVnpDekZacWRVU09H?=
 =?utf-8?B?cjRsM09xeno1MHMrbVF1elBQc3c2ejZBYm1iSisyOTh2OVpJTzZsZGZTamdO?=
 =?utf-8?B?Vy90ek9TdmxmZDRkWktoODlmbnRHRzNaMUlacnZscS9ITDcvRTBzd0RhOGl5?=
 =?utf-8?B?aS9jSkorVU5IYTg5UzZpN1l4aE5MUnZqdjA1dk1XNVJQWldmTXBkcDBQV2Y3?=
 =?utf-8?B?aEdEK0dVU21rNTBlUGVxdll2a0s5Y1pqSEhYclJpRXhobXQwQ2doemhLVVV4?=
 =?utf-8?B?bkp5enpQWWd0aTNBeVQ4VXIyRHhXWVNyNjc2cGFVNTlZVlI5UFB3bC9UY25q?=
 =?utf-8?B?TFVEcytod1BBcWtSOUt6dEdQWEdqZXNmVDg4Nk8raG5FV3RzS2dFNTZMbUpK?=
 =?utf-8?B?T2x1blRQMStOMmNzd1VERzA0NmN5RzQ1QWttSDVUVFF0Qm5QMmN6dExSaWFU?=
 =?utf-8?B?cW1yVS91TWtTNlYrZFB3K0oyZ2w3WTJ4VlRpMkowUDgvRHF3VGxEbmNZZzJK?=
 =?utf-8?B?MDFkY2QzbzRwYThkK3UrSWMwMldodXNHRlZ6MnU3Y0l4akpxd2V2eWhVTFpz?=
 =?utf-8?B?c1J0TWYwRjhoUWxGWUVSOEhkcDNKQXl6dEJjbG5DN2RKLzRtTGMvQm1FSEtX?=
 =?utf-8?B?ZVZ4eW1sczNYK3lzT0VvaHhKOWhyNU1BQmZCQ1BHRGpvYmFoTTZMWG9zN3Ro?=
 =?utf-8?B?MWU4OGp0VlFjRWF3ZGJYNTlpVG05UzZ6V016SkdQT2hUa0FSc0tmbHZGYXpq?=
 =?utf-8?B?SmhPQThxazRDcDVrUC9QelhDbUlQdFFqa0tWZmtJL2ZZUzNpWUxiNzBnWVhG?=
 =?utf-8?B?ak9nam0vL0FWK1Eyd1lOWWlKWG9MVHF1aWVyMmx0TjY4Zm9TRml3UUpZRHpl?=
 =?utf-8?B?VWNRSThjSVB1UDUrZm4xakNRemJtZU9VYTlQQlMwa3NiL2xzTSs2QnMyeUFJ?=
 =?utf-8?B?RHExUjM4Rzh6QXA5REg0M3E2ZGRGUTYvZjJsU2pGOG9mNWJaNjI0Y2hhRHNm?=
 =?utf-8?B?enB2dzlWYmJLcDQzalpiRWFhR2U3UjBBaDBsWS9pWVZVN1JHTjhvMFd3TDQv?=
 =?utf-8?B?TzJhYWRaT0ZWWmlabHBIWUdGQURDaGl0N1lwa21NN1pKQWpnMzVNbmQrVVc4?=
 =?utf-8?B?US9TUmJvVWNiQVpNeHdRUVAxc2lNTGpRRDBKaDlKa3VaNDRJemNNV0JwL0dl?=
 =?utf-8?B?K05Bb1NBRXVRWWZMUE9LZmFKc25DWmVEODNHSHd2UjFZSFdoY0NvbVcxeU5X?=
 =?utf-8?B?ek1oKzNRdVpVMHJLbmdPQ0lxUVAvVzN3SkpmMVhPTkVmNjV4WmtXY21kdVYw?=
 =?utf-8?B?aHdkQlpPRXBlR0tLVFBHQXJBbG5KMFdTYmpkTkp4SHQrNTRZUDgzKzcxdnNw?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd294bd6-ca93-41a8-ad89-08db6d147b54
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 20:18:14.1606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NxU2KegqX1pGEsfTODTcPDjaUStb+vVakmB+kpkT8qFq98FSVfcZd12hBmE1dK3BKU/WGPi7HL8/s3MgFgAue4yJyfEyfq87h8mowt5AkrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8316
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686773900; x=1718309900;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uGECWl6gHaVvVkmMbXy8X1GbTz0M32NHNTrFEZj9r4c=;
 b=an6fTHDwDr1Rb0OBQehx7L8WnVu1yQlGhjruYvl8I6sUvuRbHaWuasGH
 Use7lKZgn/9GKHDAoUQQkpqyhtKViz9eGuoOcMO1tFZYWT3wDU35BTWPg
 NdL6D70ZEXeEooRb0Aht7LMCvdm1QdDC3EZ86kknIzIxgvEd5dJjWEcVV
 feFEazpeO6knopb/WxPSGk2fmDfKr574ebuMy56u8nUd6kX4bua56ay+n
 mZRV7lh68Rnq3moSFgdUp067Wj8Zm9cJ60x03L6i5yIQ8P/8Gzid4PsOR
 Z9raQ5k/cs8IIhA9ac0g6B4UfQOgGM+CRjm+v50Q4ybOGhDOZCJpLRxO3
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=an6fTHDw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 wireless_edge package to 1.3.10.0
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

Shouldn't this be a v2 [1]...

On 6/13/2023 9:37 PM, Shekhar Deb wrote:
> Update ice DDP wireless_edge package file to the latest version: 1.3.10.0
> 
> Highlight of changes since 1.3.7.0:
> 
> - Provide Separate IP Fragment Packet Type Groups for Receive Side Scaling (RSS)
> - Add support to allow Receive Side Scaling (RSS) and Flow Director (FD) on Multicast packets
> 
> Signed-off-by: Shekhar Deb <shekhar.deb@intel.com>
> ---

... with changelog?

>   WHENCE                                        |   2 +-
>   ...7.0.pkg => ice_wireless_edge-1.3.10.0.pkg} | Bin 717176 -> 725428 bytes
>   2 files changed, 1 insertion(+), 1 deletion(-)
>   rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.7.0.pkg => ice_wireless_edge-1.3.10.0.pkg} (77%)

https://lore.kernel.org/intel-wired-lan/20230607074824.2090720-1-shekhar.deb@intel.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
