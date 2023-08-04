Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D59770796
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 20:09:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81D3240B74;
	Fri,  4 Aug 2023 18:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81D3240B74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691172562;
	bh=Q3ZhIDvVlWj2b0mXbfEyjnvlKMoRiLf1OLwlH+vmhg4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tAoFQydTsTxMgJCe2msi0FmKBt0oG3O2pc0prCjwpT7tyCleiX7+p5rjZ1BZiXefB
	 KutmbLZMk9HauHkA6Wia26S4tuBh38EK3gaq9bPfPagxy4ahEYX4BPVXryA4lAUaYO
	 LKeleyyXQMnqW4gk9O36WjFCNkZvuJBCDT5+aICJDkSJbgWVmrFFCw67SAbQNy9b89
	 OPVjtSNVgiwvXIUCzHvpBN5iF1IsSQCDjG0GLBuC/WXALT3eNp9NxKjhtM1V09H+VL
	 AkFLYN2nAlHQhuzs+ypjjxughWSW0kdLIHgsYLb7v5y8iysaVpoU5yqVd2NG+Qr/1y
	 5iMfUdsHjJuDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtKCzKthh9rl; Fri,  4 Aug 2023 18:09:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50C7640901;
	Fri,  4 Aug 2023 18:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50C7640901
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37AF91BF46D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 18:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BEEC41EF0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 18:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BEEC41EF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spWFd3PvSAYn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 18:09:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDE6E41B39
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 18:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE6E41B39
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="369110915"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="369110915"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 11:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="844169763"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="844169763"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 04 Aug 2023 11:09:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 11:09:09 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 11:09:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 11:09:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 11:09:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WmcUdu/Jga2VXtgUtdzBth9Jspd4O2QNp5RYO7qpF2x7BnKJn2XpZwlLr/3upg1lGgCh+BWjfW8AaQoxxqyKCgY9gtjnjHj/lbBCbgVUO3Hv23KTiQ/JgEWij0MJ+2SWO7kerViA5xrRd+n0+v15p9L41fy+P8klkVvGIrXGPK5dWZYg6V42SYmKFwvw8aGkPZt3pgWKn0+AFPuRMxPk7MsJKdAszRKXdpG+wC4piNDS6kk29V1+edVEbjYC5eFEJQGNmZwmWVXUSXnpDara/wEnmK7NMZXQpTD/H/aJd9lt1iwsSkFubBH51+fUzGzRewx2rQoF6oV6+/3KpU7PAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3RFE7oPhd6XHP29t5JA1iNU9ENFvbSeIhHJEjvEQ1FE=;
 b=L/qBIgJZHvH8dyQdUd/coNZhm1ayr/HAACk3DdujpNWAJ3r1QgsSg6lcX828WOYgHAJzCxHzlywxt7CgkRTtKfJ/bRvikin8HRIN2Cjb84H7XBHR4+R+cqtNs1Xy3Ab3Y/ojBRm4TpYEiNcsSgB0sKVhQs2DES19mu+5iBpnmlzqUkkX5A6y3nq7JN2PSzbNdVGfdS1W2FM+c3KArZ38IvuYXdUuZAuIDl02aBeX3r/6VPSDnDLQksLdyyiWMjRaWANgU5SWfF2FmveW1zoB6VCK7HRLhYoYcSpkbfj7zhrZ40AJh0HiQnYnjBMoHKh5Xgu+5gHzjvg+4Mjnr2DbjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.20; Fri, 4 Aug
 2023 18:09:07 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 18:09:07 +0000
Message-ID: <bbf73a71-7ef3-3c43-18aa-bcdeb470a125@intel.com>
Date: Fri, 4 Aug 2023 20:09:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <88dce445-180c-72d9-c7a5-f0a18a18c747@intel.com>
 <2e163fb1-492e-8a1f-9df1-270c652e9799@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <2e163fb1-492e-8a1f-9df1-270c652e9799@intel.com>
X-ClientProxiedBy: FR0P281CA0115.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CO1PR11MB5042:EE_
X-MS-Office365-Filtering-Correlation-Id: bf9c4798-738d-452e-f2b2-08db9515e4c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bXA1G9boFjLM9YuN9CTB4FH6WfrNmGUHG812qrEte1VYdesH3owzZ6xAR2/SIWH4LUos/e32KNy3OdvMpsA2Y0VKbeaGfjD72FzUz5Fj2iAAIFJ6qGGQ7LieHYRA388O/1SlOO8gz0E8aKylStG6PbeQGKfQlNcpXt/sZFGCy1xQWf8713AtOAKzS5qDES6HTFIlwd5kT7eJKlpr94sH3OjvgcCR/38pdx7tODfT6ZWiXluU+etote/98cec9LM0BXcx9I4PlBIX6GI1WW3HflCsSeoBUA2Peh0P2z52fp4jbEE86jLVhvnEI1gdNhQq9bx3B0PwqhK/pFPyeGt44vLho0yyoZoRf/9rqsYWe0vdeRRy0cUWZ4J+es90nsTr/MwlYc8xW/G0HcRzR6Wi6MS3czZjHGS0vdCvnQnkz18GO6M/Vw/zCt4fsIHGiF2QcU6y4H3ZuSG/POQWiuOExqiCAKqUqmRYV6TXAKudeThEiISadhRz+OJreSXvm5E7+PBwutX1Q8PsqRnO56UcPvbmSt2rHP9Skr7U8KniVK8CuSDKks7ZmJSkh3W36CVrAeaAK23/YxnA9OtOVmt/JjA0t0TSicKkiRb9llK/NXYESzLiX3NmPKr6QQkN6LUlK0P/r2Iw+DTX9uhiNYquHA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(366004)(376002)(396003)(451199021)(1800799003)(186006)(83380400001)(2616005)(53546011)(26005)(6506007)(8676002)(316002)(2906002)(66556008)(6636002)(5660300002)(66946007)(66476007)(4326008)(7416002)(41300700001)(8936002)(6486002)(6512007)(6666004)(6862004)(37006003)(54906003)(478600001)(38100700002)(82960400001)(36756003)(31696002)(86362001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTlTUjdaYW9YWE5LS1JnQkdONVdaT1piQXp1ajcyVkpyQ01lbDhRNUllcnIx?=
 =?utf-8?B?dTRVcVo3V2J2TlVHOWFXak9NQVlxZ0FlaHhYdnNWVFdSVHJRRTRXWUYyVmpY?=
 =?utf-8?B?V0lqMlMwb2p6M0ZzN0hEUVBPOTVpN24xVkJnczRKNmdBLzNDUHZyNnJUU1Rs?=
 =?utf-8?B?TlZ6MytnRFB5cUQ2cENoSFdMbXB4T2loM3pHK0xtRGtCWGlOOTg3eFZzQ1Bn?=
 =?utf-8?B?WGt0RjQ3SGtldnMySTFJTUJBT1dnVEpZemZRNVpKY29Jc2VXTmZZMFkrQjlx?=
 =?utf-8?B?dVNSeDh0ZVJaSGtOL2lSVzhwSURIdzl6U0twdG94RjVDOTVma2R4a3BJOXNt?=
 =?utf-8?B?b0pWQkpvM0VCSE9NVEVlWllMSUQ4SkJ6eW1GQXFWNFQxVWl6RmNGeUlna21O?=
 =?utf-8?B?MFZjeHNLK3lCWjA0L2pud0tYMGZDN1Z1T2lXNm9Xdk0rYzZRdkhVZG1TeEdl?=
 =?utf-8?B?WitGU0oxcFI3TkVpTzVzSG5XMjVkbzZ6TGUxWVpma3Zrd2ovNDFWcnd1NGJ4?=
 =?utf-8?B?Q1N1aXNCcXJISjdDZk1PYjdqREc5d1AwNFZWa3FldFRGdlFFRy9uOFJIa3Mr?=
 =?utf-8?B?a3RRU0ltRjVHQzJQUWdHTjZYaXI5NzAyV2h3cjRCQU51a0xJc1lGQm51dThk?=
 =?utf-8?B?WE5SZnEzZ20rSnEvbHNlZXVCS09TMkF4QTdKUFNEVjF6OVBLeGdMbnoxWHBI?=
 =?utf-8?B?Y1UrTjRwbzZVS2xVOHRsdDIzWWRjYkFhUnNORmw3V0ZLdUdWWkFJWHoycENV?=
 =?utf-8?B?ek5JUUp1eFNNTExucUlNWUduMTRUaGdWRXY5NXR4bVMvbWpiRk5PTUpET3h5?=
 =?utf-8?B?WVE5cVdTMWNEeEVkZmlWRHpTZTVFYmUvSGR3UVVzRXE0QklCd3BtZy9rRDFu?=
 =?utf-8?B?ZWMwKzh0OFdhUUZ1aWNEbHcxZVUzSFB3S2NQV1diMGlCL0QzT2FXdVRPeGZJ?=
 =?utf-8?B?ejM2QnQ4RlRiU2MvZS9qdDdGYVJSTzJ1OUhZTGRTS0s0Q2lHOGN2UTdneDBj?=
 =?utf-8?B?Q0psVVpBL2tIeXUrdjQ5OXpzem5TTUxPVENRL0dNNzhZZ0FDUTFkTVV1Qmpv?=
 =?utf-8?B?VWFNNHZhV1pBNE9tM0JoMTYzUVd1MzlodzBMUStKSUNXTVQvZkp3cXlLVmFT?=
 =?utf-8?B?NjVMSUR5enJOV2JzclR4blNIY2dxYldWbURTaW95cjJ6enNqdjN3b0U5aXFo?=
 =?utf-8?B?eGJoMFAwZHY3NjV0bjRsb2pGTE5WRnVnWkNJK1JGb3Bwek1XTXZKVUsyblB0?=
 =?utf-8?B?K1ZyZkg4eU91WUFSNFAvMmlBbk9HRmNLNHhmUEdvcUErNkpqQzRndzJldjJY?=
 =?utf-8?B?bkN0eXZONHVGS1d5UENkVVFQUTNGY21uOHdTZjA0UlRQaTNkdlJTREtXMk5T?=
 =?utf-8?B?SXBsbDBpU2lpVVlFck5pRWE1THhLbFYydEZ1MFpDSm9JcTUyQTlpeEVLMnNo?=
 =?utf-8?B?UlhzQ25CSzRVSkpUbjdvZ0lPaVNFQWZpckVNUlJxRDlFN05ZdnV4K3A3cjFR?=
 =?utf-8?B?NDZ2RXEzdmJ4dmVCNmlKV2M2c3lrOU9RSFBZWGJWWkR0SmNzdVNMMEFMSnkx?=
 =?utf-8?B?RlQ2aXh4Q0pFb2kxNTdaNUZmaHNmaDJuQThhNFB1TXRFblF3WGJnR09sSkRN?=
 =?utf-8?B?dmtPMTV2QnNsaGYwNXJaVmlUTzFMNk9qbWFRV1V0bkJWeURTbmdHbWZzVVlU?=
 =?utf-8?B?VlQ2SEtpanJJdkZhZ0VtK0V2RGF0a0VnaVdWdkcrby9QcHlmZFpSVXJvTzkv?=
 =?utf-8?B?WlpBaGgyN2V3OE1GcndWZE0zN0dWM2ZmNDFGdS90WWh6MzQraW5ZbWFqV281?=
 =?utf-8?B?Rm45bnZzZExvRVdKcXk1OXI0WHIxTjZpZFRsaGt2NGJDV2s1T3cvS2lncTFr?=
 =?utf-8?B?Vjc4ZE5XS1NNV2Z6akZiamQ3Y2NaVTBTYldvN20zV0ZLUzdCVVZ2eTZDTmNZ?=
 =?utf-8?B?cW5BRkJmS3B4Y3ZJRVl0NkNRNEpnSjc2QU9XTFRkZTJ6amJwZ2I2N0ZUY0to?=
 =?utf-8?B?NnRIZFl3V2ptNUN4TXBRTWJoT2pYOEZtMjVtZ0FtcjlNNm9CVjZTM1FkemE5?=
 =?utf-8?B?eUJpNEhOTGNsamdpR2ZCRFBOOWRHdTMwejVGZEhoa1J1M0VzMmZXVFhtSk1u?=
 =?utf-8?B?MERUa0dVV2U2cHpGTm56RVNPVjVnRHBnd25iTm9Zd1laQ3NBWWUyNUFPcTNV?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf9c4798-738d-452e-f2b2-08db9515e4c5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 18:09:07.0419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +UadK2P0G1JTB11+e5/cj411rip7eYi44dC92WGXj6Eip9uKb+o3b6Wnwdb4bL42gm5blOwQHoxdfgyJO3b43UAjCBHCyZ9VFh9W7puOyCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5042
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691172550; x=1722708550;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JYbJI31cwo+RigUWawBNvS2aigw53NUE36nekyyrrfw=;
 b=g+4PJxX8zSwKt6llScIKm2i6VNl+pCZiFtvmgsVe901O4ZZetPUI0v2v
 oUcIQwbDsJyVe0nKE5PJkh07ZnKSYKjSwRzxO6/6aNkLbeDBpRp6efBpa
 Z3JFs/4pG6a7VDnnK0AOr2vaJ3JKYsYHVWMUKlsuDp3kbY5T4SUwjyhJy
 p/eeDasfX3wmK0Z8N7QBVR0yrfPzXwVFWxm38Ks4eZhp09KnwNKkfrBBR
 qNHaa5H+L2hsWLevpvZO+4CMkZFWrMLxc73vCjkk2uMGHMajkZ9DZJ2+Z
 Kd9SRAZe8u55SMitpyd3PDN7QJmSaGkhXNytGAVf4hTbY7uK2+qagFFTG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g+4PJxX8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] virtchnl: fix fake
 1-elem arrays
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
 Kees Cook <keescook@chromium.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPgpEYXRlOiBGcmks
IDQgQXVnIDIwMjMgMTE6MDc6MTQgLTA3MDAKCj4gT24gOC80LzIwMjMgOTozOCBBTSwgQWxleGFu
ZGVyIExvYmFraW4gd3JvdGU6Cj4+IEZyb206IEFsZXhhbmRlciBMb2Jha2luIDxhbGVrc2FuZGVy
LmxvYmFraW5AaW50ZWwuY29tPgo+PiBEYXRlOiBGcmksIDI4IEp1bCAyMDIzIDE3OjUyOjA0ICsw
MjAwCj4+Cj4+PiA2LjUtcmMxIHN0YXJ0ZWQgc3BpdHRpbmcgd2FybmluZyBzcGxhdHMgd2hlbiBj
b21wb3NpbmcgdmlydGNobmwKPj4+IG1lc3NhZ2VzLCBwcmVjaXNlbHkgb24gdmlydGNobmxfcnNz
X2tleSBhbmQgdmlydGNobmxfbHV0Ogo+Pj4KPj4+IFvCoMKgIDg0LjE2NzcwOV0gbWVtY3B5OiBk
ZXRlY3RlZCBmaWVsZC1zcGFubmluZyB3cml0ZSAoc2l6ZSA1Mikgb2Ygc2luZ2xlCj4+PiBmaWVs
ZCAidnJrLT5rZXkiIGF0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0
Y2hubC5jOjEwOTUKPj4+IChzaXplIDEpCj4+PiBbwqDCoCA4NC4xNjk5MTVdIFdBUk5JTkc6IENQ
VTogMyBQSUQ6IDExIGF0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsLwo+Pj4gaWF2Zi9pYXZm
X3ZpcnRjaG5sLmM6MTA5NSBpYXZmX3NldF9yc3Nfa2V5KzB4MTIzLzB4MTQwIFtpYXZmXQo+Pgo+
PiBbLi4uXQo+Pgo+Pj4gwqAgLi4uL2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9w
Zi5jwqDCoMKgIHzCoMKgIDkgKy0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lh
dmYvaWF2Zi5owqDCoMKgwqDCoMKgwqAgfMKgwqAgNiArLQo+Pj4gwqAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2NsaWVudC5jIHzCoMKgIDQgKy0KPj4+IMKgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9jbGllbnQuaCB8wqDCoCAyICstCj4+PiDCoCAu
Li4vbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jwqDCoCB8wqAgNzUgKysr
KystLS0tLS0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNo
bmwuYyB8wqDCoCAyICstCj4+PiDCoCBpbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5owqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEyNyArKysrKysrKysrKy0tLS0tLS0KPj4+
IMKgIDcgZmlsZXMgY2hhbmdlZCwgMTI0IGluc2VydGlvbnMoKyksIDEwMSBkZWxldGlvbnMoLSkK
Pj4+Cj4+Cj4+IFRvbnksIGNvdWxkIHlvdSBwbGVhc2UgdGFrZSBpdCB2aWEgeW91ciBuZXh0IHRy
ZWU/IEknZCBsaWtlIHRoZQo+PiB2YWxpZGF0aW9uIHRvIG1ha2Ugc3VyZSBtb3JlIGRpZmZlcmVu
dCBob3N0IDwtPiBndWVzdCBwYWlycyB3b3JrLgo+Pgo+PiAod2l0aCBLZWVzJyB0YWdzLCBhc3N1
bWluZyBoZSByZXZpZXdlZCBhbmQgYXBwcm92ZWQgdGhlIHdob2xlIHNlcmllcywgSQo+PiDCoCBh
c2tlZCBhYm91dCAjMiBhbHJlYWR5KQo+Pgo+PiBUaGFua3MsCj4+IE9sZWsKPiAKPiBPaywgd2ls
bCBhcHBseSBpdCB0b2RheS4gRm9yIHRoZSBmdXR1cmUgaWYgeW91IHdhbnQgaXQgdGhyb3VnaCBJ
V0wsIGNhbgoKR3JlYXQsIHRoYW5rcyEKCj4geW91IHRhZyBpdCB3aXRoIHRoZSBpd2wtKiB0YXJn
ZXQgKGFuZCBoYXZlIElXTCBpbiB0aGUgVG8pPyBTaW5jZSB0aGlzCj4gaGFkICduZXQtbmV4dCcg
YW5kIHdhcyAnVG8nIG5ldGRldiBtYWludGFpbmVycywgSSB0b29rIGl0IHRoYXQgeW91Cj4gd2Fu
dGVkIGl0IHRha2VuIHRocm91Z2ggbmV0ZGV2LgoKU3VyZSwgSSBrbm93LCBqdXN0IGZvciBzb21l
IHJlYXNvbiB0YXJnZXRlZCB0aGlzIGRpcmVjdGx5IHRvIG5ldCBhdApmaXJzdCwgYnV0IHRoZW4g
cmVhbGl6ZWQgaXQgd291bGQgYmUgYmV0dGVyIGZvciB0aGlzIHRvIGdvIHZpYSBJV0wKOmNsb3du
ZmFjZToKCj4gCj4gVGhhbmtzLAo+IFRvbnkKClRoYW5rcywKT2xlawpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
