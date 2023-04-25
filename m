Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C814F6EE5F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 18:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6500C80D41;
	Tue, 25 Apr 2023 16:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6500C80D41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682441014;
	bh=en7VMgmC9jiRTC7l7kZC8mvG6y9LOJllT4E7cBZleX4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NcTqzRn6zls/IeeMwSq6SYzccFTv5wy5Nbdx3PhM0w+3elxX9e6JXkM9cpBXUYb0t
	 i1uR02nLSoTuDmy6w0egvLas2HlQVrMoyu1dkLdz5tnCbr2LaTmkp2FqGrFAt/v2O0
	 +t7D/w7TALyMvk5asOKeMTjqvjNLVnwtWODKp1HxfH+5jFAyEQZzwrIlRVoXZWFDmc
	 Ei9svy0BBE5+P8Z84TBsHLJgQ2d/YnDGhCAZkBKLmEll6mYPus6d7JH9pUX2+J+k4T
	 czFjyTaSRFWJ/f4+YhitLQMJGJItH/6WXrqo7geR2uwu1hxlWs6HC7p5GO4QaAhVcE
	 AHDFgdKyMZsOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K53GqEICmDMn; Tue, 25 Apr 2023 16:43:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56D3180C2E;
	Tue, 25 Apr 2023 16:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56D3180C2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19A821BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 16:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D867F401C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 16:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D867F401C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UnZFdlMJ2eVI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 16:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B7AC40226
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B7AC40226
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 16:43:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="433093794"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="433093794"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 09:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="762938353"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="762938353"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 25 Apr 2023 09:42:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 09:42:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 09:42:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 09:42:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 09:42:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l/cvR9EFk2AQckQc2CG4EEMbXgXwpg3tjDN9KiK5a49znqZP3wZwusIxRDc7fLpYL4u6vbg9ZzwkDxdLePiviBObT0+3MacWBGgCrlrljQySUGLEEVi27PVr80JIPYXng2rSY5HOCO57CfpCrWRRZRFSt3ulTwqtuoIKmgk/ySZ0cWMI0YM7As+5is+wqlS5DzjUEAOJyh9HgwfNPzzpo7WzuRgk0SQ9xuWxNPfm2IgrruSQR3RH0pQCMVgOPbia4xT6iSOIi9sArD+v9f4756MvqZ/IW7t9cQUmZCPT0xBtooLtMJ7BDZBTZHqe2kErvQSohQmhwOaZII9c44sA9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IbQLoAXww9uHwGW6zCVgyNIL8mCEZqD6n26whvB0NB0=;
 b=iIWfS+DotEHAv1c6Sl6NYOs94mBMXDSUOe3sKTx8Z+0Ap8v9YC1qQ0oVuIuXnO/kqplrAv3GnJsqpWAMhuBISQcNjUayWpO2I3TfK33QrVJrc3pRKRRAzITY48C7wZiGk9B1I7kKKNpvLgBd1Q75XQBnNcDmyC5ZUGKY4/qh9zNmjfrmpPgL/NM5CxEqZgHmtt6ldYwZdC2+NGYswiP/sGXf657NiVl5uU4Eq6pS47U8n4J7gQ0k9LDFvnlASslwbkfsNS5oKWsT5ZNfem2hD8fepChl9zHw3m+WwSavOfg7LXCqf1HMnky+qhpAFcmCFvL0MHZu2cIWPHnxwnWWiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by SA2PR11MB5098.namprd11.prod.outlook.com (2603:10b6:806:11c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Tue, 25 Apr
 2023 16:42:49 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::f9b5:f23:f078:a90]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::f9b5:f23:f078:a90%6]) with mapi id 15.20.6319.034; Tue, 25 Apr 2023
 16:42:49 +0000
Message-ID: <9e55b632-ee3c-8873-5a94-804de4919907@intel.com>
Date: Tue, 25 Apr 2023 18:42:43 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Ding Hui <dinghui@sangfor.com.cn>, <anthony.l.nguyen@intel.com>,
 <mateusz.palczewski@intel.com>
References: <20230420061142.31798-1-dinghui@sangfor.com.cn>
From: "Gardocki, PiotrX" <piotrx.gardocki@intel.com>
In-Reply-To: <20230420061142.31798-1-dinghui@sangfor.com.cn>
X-ClientProxiedBy: LO2P123CA0050.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1::14) To BY5PR11MB4451.namprd11.prod.outlook.com
 (2603:10b6:a03:1cb::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4451:EE_|SA2PR11MB5098:EE_
X-MS-Office365-Filtering-Correlation-Id: 14f8f29b-a153-4187-649a-08db45ac1aff
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I9GvXyTlAanuD399hxptxJE9c3QogiwL0oKq80eGj7mZcF98qgzDu6QIghJtXrXPqGXmJHfBZDoZMkZVtFptypzRHM/BT+vAbaYfE+PZk3ncaJNYZDzvsuw/HHoiArQP7k9wWGKQoBYR63wiGqS10cy2WcFV1QydyieH7zfAyBy36qIyaKDPrWnHW3i4sYGF0ENWQ7Y5234i1/r2wGJ4+iGVdItM60UXDPxr6qW6dOK539l2nOeYnMebaCuyxeO0ToGgTZdeJM1hLxrId/i18G+Vf0tw/G5iAqWRzZ0ifkji5DlCliOrAWCB6efP9Gh5BbQM03Ilky5vF4mHJNk4H6yrEMu5RlnzkaysUON7jnudej6jjCPJeesqQ/dK1tUVTCcMhQz6nb7mb+qLsSNHVdKfHBTrNuR4zjEwEiWReD2Mf7GwILBlVVJXkUQg2wc9DlT/1jdqVpLH4Alne7cM836kNsZpGwMcbtOB7eShS7Y4cdG0zrd+VC5Y3Rvb23/Apt6kMKaFIOR82wbTTDe/05f4xvtByzOhHaBdovBh+w/LdR+VXa8GLaADekSnftKrmLSHQqPYwlrxboznQrx2c9lzHDMZE5P7Y/ItWBYP71+BZb99pxzYgwCB0A5XnlUJI1V410QYOLBKNiyx6VN69g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4451.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(396003)(136003)(346002)(451199021)(478600001)(38100700002)(6666004)(6486002)(6512007)(26005)(186003)(82960400001)(6636002)(83380400001)(31686004)(6506007)(2616005)(5660300002)(8936002)(8676002)(41300700001)(2906002)(316002)(4326008)(66476007)(66556008)(66946007)(31696002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUVtdnprOW1iNDJTejlkaHUwMWJuRXZnZnoxcTc5MmI2Qy9XM20zRGFFUVdP?=
 =?utf-8?B?T3BySzZnRkdyVWgzQ3g2YVdBbkY3VzNiTlVlUDRZaWxYUHFhMTdQNzVlRk10?=
 =?utf-8?B?eFRVU0ltb3hwa1puNm9rRzRBVHhsRENiN2EzcTY2WGhLM2pMbXphbmZLSisx?=
 =?utf-8?B?SkROR1JqbnpuQmhHT09mREJrbU1QcklRMm1WVFdON3pmeHlvVHRqWnpsc1d4?=
 =?utf-8?B?OUx6MDV1ZnNRcGtuUW0wUUtTOFZ2d1kzSlZyUGFDeHgyRnNBVFQ5cGNxYUZL?=
 =?utf-8?B?UzJqdFBtdTZDVUU1WWd6Sk5aNzVTTVV4QnBJWUFsY1N0SnJ5eVRLOFdMVkZQ?=
 =?utf-8?B?MmNmRVBuM1M1WEN4bzVMelIyclNFWHdZV0IzLzVua3pFWHVwaG5BT0lNNnNr?=
 =?utf-8?B?bVl0TDEzVmNMTTRWeVUweExoM3A1Vm9odWtjWFdBZTJJdVJlU0VPemI0Wmkv?=
 =?utf-8?B?dVE1c0RoWUlydGNhRDlMSG82S2JybTR3UVBKZ3I4Q1QzT21UR0NXeWtoalhz?=
 =?utf-8?B?V2NHVWY2cGNocnpIbWdLeGgyNmtBajNlblo4RlNXUjBTdWRBVWFIaVVaR1Zz?=
 =?utf-8?B?MktxSjJGeUhteHB0akc4eUlkbVBXT24xaVJSV2NTL0Y5VUJMQmFUYStVajB2?=
 =?utf-8?B?eVg4U3FCaTZBaGh3WFg3c0V4Nk1TK2UvWEFid2JYUnRSV1d3bHAwbUs5Z3ZJ?=
 =?utf-8?B?SXpMV0JUdzJXYlJ6RkRERXEzSGkxY1d1L2h5VXdFSFJMcUNlL2FuZFRDWDFX?=
 =?utf-8?B?NEJ3QmJ4RTdmVjNrR2tnaTJ2R3FhdEJXODJXVUdkY0s2K3dZT2g3SmRTZWc3?=
 =?utf-8?B?NGg3Zi93amhhWCtHTG9JQlN1cS9zYlZmRitJMXorRWIvZUFvK1RQUDBqTm5R?=
 =?utf-8?B?QVhMRFYzOGt5a3NiSDFBeGNDMm0ycVhKbWk3akF3dGJaalgvUHdldWEyOVFY?=
 =?utf-8?B?R1Q3eEMxWHVGOWhzMFF6NHZ3UmJyZVozRkplS0lWejR2aURVZFlsQ0hYYUxj?=
 =?utf-8?B?OXNjZmNkbVA2dnNUVzFGam5zekVtRDg0c2NjMGVxVXJxRENHQWZ6NEFnYnVa?=
 =?utf-8?B?QkZNTmdrVlJXNmtWdC9RN05VeXh2OUszNlA2ZWJ6RzE1YzVGTTZxQk5sYS96?=
 =?utf-8?B?Y09QYUxYQXBGQzhNc1ZoRktDZllQcllibTVjL1VDdGlPUVZEUkxWMGMzUjlt?=
 =?utf-8?B?MkJISlM5bUtmejloN08wZkhRS1dqTXlwY1FxcG94M1UxOEgzc1hWRzJEZkg1?=
 =?utf-8?B?K1pRYzQ3Zlh5VGNieGdZR2EzUGdaVWcxeVdXdEpETzZSN213UjFLSDBxeVpl?=
 =?utf-8?B?SnE2U0UvQzk4T1VwMnhmcDNRK3RnMlJOZlN6SEFwMitPVVQrNjdOMVVkM3Qr?=
 =?utf-8?B?b01KWmUycnNGWlpkMVBxaFRLVjFCWXZIaHNpdDFlaTdtakY5S1RBbHQ2UUNN?=
 =?utf-8?B?Wk1pd25EbzZhQmx6T1dBaUtPbjBaNnFYVEhWRVlyb2U2b0J4Nmh6cUJwcy9z?=
 =?utf-8?B?czJDc1pVaTdaRmJUV1c3RVJLRXdDc0M3OUpQaEdqODZCbzBGK290aTFYS0h5?=
 =?utf-8?B?a3VBOHh5WjFzS3JWMkREcHNQaTlSM0EvZVZtK1BHbkN2TWlmaUVxbGVsN28v?=
 =?utf-8?B?dFUwbjRUVUh3NkRFUkRreWxsSitPdE82NFdWR3pQVG5qSEdFREpaQnRFTHov?=
 =?utf-8?B?aXo1YkcyQXlCT0t0QVRWeUo4QzFqRURVbG9mTGhJa0NvYXVqRnQvN204UXJ4?=
 =?utf-8?B?cTFpdUREVWJLWC81NjNheWtrU2l0amNrWVVZUkRScFN3RnRPalUvZUkxcUgx?=
 =?utf-8?B?akR0NG45U09iNUUyL1JBams1QnhQYnk4SUxka3lGaXRad1lxaEpLWGtkdTB4?=
 =?utf-8?B?dW1DVldDTjVNdmZYT2hxTWhXbkhhNHJMUTRZREZTVTg4VUpsTE94YTVXbDA4?=
 =?utf-8?B?R0VsTGorQ0xiRFpoRlF1bVJIQXlScE80M3NCcEpmZlQ3dTRzQzJ3YjIyZUNk?=
 =?utf-8?B?TUg4OUpTb1pLUE9sSVE0TmI4c0ZtbHExUXQ4aWpmSmJqTDFzRTU4QkNHN3Fo?=
 =?utf-8?B?a1poN29rTmIzc08zUzRjSTdsQXVmQ21Yanp2ZmE4eFcyZlVXandRVGk2UWpo?=
 =?utf-8?B?ZWc2ZjZ1a01wZXlZckhUaFJmNlQxQkdWWWZLUzdOeG8wSHFzZ0xqOU5lM0Za?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14f8f29b-a153-4187-649a-08db45ac1aff
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 16:42:49.6709 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gh+iIU/ekaSVaGGCzYQ62OAfcaVDXoVWn/Vqe59vnA/TFhzNCoALoqMG+sELwqTujgUfOrx7TKNhOZ4rUepAPkFMSvIxW5lHUNoBFC3S+rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682441006; x=1713977006;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jU2vfYwLrcB77knq+EG8tz1Tm2Wh/MKHbDIbGns5/H0=;
 b=Nk2IIkHfg/LAvOcqf5m8ykQtxxVy7napkg47IM9ZwHB7To+eOaMloGK+
 Q6sSNHpNcTU79WeFsPr1hwPvA4aJTxLm2hiCbv8DQW/86DXul4IYhbHpg
 EipFLKk36pA0oJnl6hRMPok2TigAC2h64Oj8lSsHfyvJeAeY80FgK3YD4
 upceW4qYInk4P2HeDjmZ5It52Mjhddoaxif3UmWkWyywPtUHfONqQz9BR
 ahOKW/veNQMs5KvjVGRiIGM8rlWrHq18rrKJtzRUe7aPo+SBvkNLwnJPY
 zxp27F6gkcZCo4TKADVqa71poHRnS5CPK9W0OSsG/DpPXqq0zMUK4Mfph
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nk2IIkHf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net v2] iavf: Fix lost VF MAC when
 repeatedly set same MAC
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Ding,

Thanks for the report. Intel is already aware of this issue and the fix 
should be available in the next release. The way we fixed that is that 
we're checking whether request from kernel is to change MAC address to 
the same address that's already applied. This way we're limiting the 
number of virtchnl calls.
I think your patch is also valid, but one minor problem with it is that 
IAVF_FLAG_AQ_DEL_MAC_FILTER flag in aq_required is not being cleared. 
I'm pasting below our solution. We also have a plan to send this code to 
upstream, so the final solution might change if community will raise any 
concerns.

diff --git a/iavf_main.c b/iavf_main.c
index 51267049..60e32746 100644
--- a/iavf_main.c
+++ b/iavf_main.c
@@ -1190,6 +1190,9 @@ int iavf_replace_primary_mac(struct iavf_adapter 
*adapter,
         struct iavf_hw *hw = &adapter->hw;
         struct iavf_mac_filter *new_f;

+       if (ether_addr_equal(new_mac, hw->mac.addr))
+               return 0;
+
         spin_lock_bh(&adapter->mac_vlan_list_lock);

         new_f = iavf_add_filter(adapter, new_mac);

Regards,
Piotr

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
