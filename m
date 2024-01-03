Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B72823957
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 00:53:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BABBE41955;
	Wed,  3 Jan 2024 23:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BABBE41955
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704326005;
	bh=sYmG8K06H3Cb8Syn3nNWv/6bil1/1+B5MuD+Mamzdqs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fOxk7LUzgp3GliPM1dV5+v2+R4rOBi5kuK5WR/j3asDiXnicQTLhndSHB+A3Q9KMV
	 ZQ2p7ySDJIquqSsILeG9qp2yWjyg9qXJnQfdXGP5lzNX8+F551+y7r6af7xIyg+Dlf
	 aqS1ctgKRmQkDzk6rxqPvRvSez3nNucZ+KCBAAh6QV2BWX3dLxOkklw09HMXMEtmHi
	 5AmOPmQt+ic/IoirqvSZ/YxkENnHt1THuLZUd7f8quqUvQB/XlaH6YAmIbZiz3pT7J
	 Z5yxEw1f/2O6/h31RHupEqVj11lLsdgVHVo+toWfpbKloVUg6wk9nKPk//JXBFumWp
	 eaShS6McXXAww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aLqv3IzrzPw9; Wed,  3 Jan 2024 23:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9469341780;
	Wed,  3 Jan 2024 23:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9469341780
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4428A1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 23:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18567401F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 23:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18567401F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UlpR9IxWpNPW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 23:53:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFCB9401A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 23:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFCB9401A1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="394235460"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="394235460"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 15:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="1027220572"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="1027220572"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 15:53:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 15:53:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 15:53:06 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 15:53:06 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 15:53:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c6GmopY4TOwQD11pAfwbslnn79dFdGICPR8YsyvhhKDfeGd4fQmGxWDpNyaQEQVjinx1MxUDncbj/hXg4Cl3v79NSBFfat0+uFuOgj5vI+P7cp1SI7Kt2AYLhOAiJfa+OsWA483Uv8l/WsAoI6daRUZyUKm96/e6/ZUd1IUJ0eZDkHovySB4QlkOAFOM2/e6aCMM3dkAiD0mYwbZzxk0WAGDjRXfs1oHF0TUgpLeiJoSUXcGOp2XniDIMvbagbkw51NwJByJ2JrrCbqImZp0ZTVaPcMvNwR7qufKGUKk0NGRgPnVtpk2vsZJYPzIU3xGOpYNM7PvvJmfKdYSQIqpnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sYmG8K06H3Cb8Syn3nNWv/6bil1/1+B5MuD+Mamzdqs=;
 b=hsztKwl2e/uG2Iz1dfj9UCs0ttvoWRR/ZsmSpfi8+sjGB1GAaEmnl1M/yjUq7K/4cVEFxGjmFhIqlKTwB6DtowOv9FAp0ctVdI96jmzUA72uoK3+XsWNELJbjH22Cdgi9Ov3IlZ3pAiqNueJuSWIGpHw14qV1xnGy0wscgynFZEJaTILQHBDQoCHVoen+vJZlvib7QBgLzTQo90YcxJkIwYW4mtdOxiOP4cBaYafD3RyNGmXFmiuNDITSGVJQDghNqzs9X1OVSYWzmtGEsSCEmBEX0F2XFUR0OLsjjT0eEOz+5ZW3I8FQPMdjrZLIQNP7foZyhzI1ri8t7+GwnctDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW4PR11MB6911.namprd11.prod.outlook.com (2603:10b6:303:22d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 23:53:00 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7159.013; Wed, 3 Jan 2024
 23:53:00 +0000
Message-ID: <3ee242a3-4fc7-61d0-e6d7-7e56f389e2b4@intel.com>
Date: Wed, 3 Jan 2024 15:52:56 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231227103312.182542-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231227103312.182542-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0018.namprd02.prod.outlook.com
 (2603:10b6:303:16d::17) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW4PR11MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: 59308d2c-a05e-4414-0065-08dc0cb71de6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YiA2Aeh3y8AvKIcbiJ8kc4D7KqK2hoqPqjWURH4/f6RRzvy0EiP3rItaBgj+IA11Y4HtZneGlOAiF4MJqMfxIOo3v0yMNZroJ32JmSv3771+kDQsx7n821Bo94pCBG4UVBlPgrTVy+LuVfE8wNtBRP/nWMID/nPnsNHniwuDjbjm0yBad2mnchg+bb+Hde04smvB1ecy1jdtpb64Z58rJ9CbhuP3ouXoKcDgg4E3js87iwjiC9DIQRN29LbRraKU9OHF8yMxL0rKzyaM2A5KslE9YdF7NKgpp65HinLqXH+Z13pzY6TT5GiJiEEMYGeMWxNGDbb9nKntwXlheqgyP86OOp01Crz63LS5RYG9WkTGz8QRzosImvEDDl35aFdjqVugNMzoWiTku/Sj09PXO7ZR0iWP7OLzexc6PuwcInJP5JgCXT6I2mUXcN8kjtfCHVcHqtLnIdWJFCNa+H3mkDddRRYSvzsoNhKHO4F1LxGjmShZiDbUY7NbnL5JTB4dTfq1daCvWDkxu8kKPstvmFRkcPb1G3IyrwZy9YBnaJ3U7KPGF/ZErkKQb1lt80PEZKqH8vTJbFPa1R/7BtZJUhgMynsuv25faLYhsUSL7L37zamNcWIkX7QdQwvtYq8t/bcZeOfchNU+uaQw3x7T6g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(346002)(136003)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(2616005)(26005)(107886003)(82960400001)(83380400001)(38100700002)(66946007)(31696002)(66556008)(316002)(66476007)(54906003)(36756003)(6486002)(966005)(4326008)(478600001)(86362001)(2906002)(31686004)(8936002)(8676002)(5660300002)(6666004)(41300700001)(6506007)(6512007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tk9zZ0VJaU12ZHZmYmhXUlM0b2ZQT3hlMjVrWXRJckUrQjNlU0RjUlpMbFIx?=
 =?utf-8?B?cHc3Mzg0ZFpvbXBxc09PM2VnOUFPTXA0bndia3VKNUUzY2tzRGw4Mk5ZL3F0?=
 =?utf-8?B?WWt2Z3A0UHk3cnNtbkZEK1NHTXRKMVZ1N0E0dEpqVHlNV2tjbjVKaE51Vm10?=
 =?utf-8?B?NmlNUWxGN2pGcUJJZElheHJRQUZvRGRHZEo4K3BUYnhEZTZBcXNkL041cmJG?=
 =?utf-8?B?N2doOWhBb0hveTFVN0RtSFYydmtWZnBrTkpYYjNBRTJKQ1pLUlJJMmM2cEZL?=
 =?utf-8?B?bGFaZm5mQVFDV2E2enZGQnA5MURndmo5Q29YdW1QdW5ncTg5TC9JbmxlRjVz?=
 =?utf-8?B?VUxhNWhXdGw2WGc1TURzN213YjF1Rm04Rzd5NndRY0k2ZGk0T2RLSmROTDVL?=
 =?utf-8?B?MGI5R3o3bFZ3WDhnVHgwR2RyTGpGWTVhSXRMZFEzdGJNK2srdCt4azJTV3VV?=
 =?utf-8?B?ZlRnd042NG91aE10bDVrRmFkb2p5b29sZzV1ZzJmS2tHQ2t4MlROUGJDMzBx?=
 =?utf-8?B?Y3FEclkxTUJIYUJJU08xSVVqSkNIQ3phTWJkejltTGppN1hic04xbXdwT3pv?=
 =?utf-8?B?WmozdWhZNlF5OW9ZSFcwd21WV1MxSGwvOXBJTU5iRGEwVHhGL0hwVEJFTS94?=
 =?utf-8?B?ZmlodEZaaG9SdFBPV1BPRTBKT1NqZU9xQXJLek0wb2V2OXFtVnhxc09EN2tD?=
 =?utf-8?B?NFFWMVROby9NMWhDY1h1SGIxM25NeTBsUWM5QWdNd3pLN3h1bkFYVWE4MjZL?=
 =?utf-8?B?aTRKSmJHMThLb1VMTFVvSElNRVRHTmVWYmhwUjdDRDJJcThoK1pmdjFhY25p?=
 =?utf-8?B?eW05bWZYWWI5U21BQXBValZnZ1JJdU9lZ1NOZGErQ05nRy9CL3NLSUtQcEVh?=
 =?utf-8?B?RlptS1JFL1I2T3RXQWY2SGdNeEM2c0s4WjNTYjMxYmVGSVRTak9uenZwWndD?=
 =?utf-8?B?VSszbmI0SHN1T2dCbmdEZzhPTkp1c1NDZjBsaEd0VlAxaWFIdGpoeFg2aVlH?=
 =?utf-8?B?Z2l6UW9ITTVwcjJ6RkxvaVQyR0ZTTHZ1YzlxbUpCb2tVR3dMemh1VXpJcUF4?=
 =?utf-8?B?VUYzZDRIbDdyZGxxNytMWERaWEJPSlV0dWxUd2p2L0grMzgxY0RRenI4dXc0?=
 =?utf-8?B?YkV6TWlwbm9uaVhScHFLNFVLRkZOWFJ1TWtTV3o4R0Y0K1EwbVlpOTNOQVRa?=
 =?utf-8?B?aERsdkFwVnNHYWhSR2NUNWtEU1JHRElsbFhCWHpDU0tsbTNxOUgyb3krc3pQ?=
 =?utf-8?B?ampGM3FSbEQ1eFBFQUVYTW9TS3hqQnR1aXU4aEF3UDNsMHpnSXlKMkVSOVFN?=
 =?utf-8?B?bW9ML0NIQlhENHlJQzR2cWp3akRJVGFEaWhwaG1ZNWdmd3ZUQjRaWjM4dkVj?=
 =?utf-8?B?a21lRzdOd0FmRkZFUmdGZmZxME5CUXBLUzd4MnZHN3M1RVBiVFRlc3VXZ2Ir?=
 =?utf-8?B?eUY2UEJxakxUQzNkUUJOWVp0QjhLRWc0eUoyakY2RW1QTFFrNzB6K3o3dmNP?=
 =?utf-8?B?U0FVQUthMzNFMVRsVTdCNkZKT3pmU2dDaTFDdHdUWGtBbVM5dExycERiWUNz?=
 =?utf-8?B?NUEzTHVhNUxxeG5xSzZWdGRlUmJ4dTZIS2pLOVVlV0U4WXdNQkIyclVzbjBy?=
 =?utf-8?B?R0x0MStONWlCL0FDVVJ2eDNYNC9UanMyVlRGV3ZIZjlYSVRDb21vOUhBOWg4?=
 =?utf-8?B?OGFlNlhaR0pqVkFPMjdVSEpUM3R6Q1d4cHdHRjI4bmtxSjgzVVhucE1CN0ty?=
 =?utf-8?B?U0c5ZXZhU0U3YzZTS20ybGtPUzRMREVDOUxZb2JoZnVNYlM0Szc0R0t1UkZO?=
 =?utf-8?B?d0UxUWpuRUN0SCtDR0NpRUVlZERSOHo3cTFrMnFlMU4vMkkwNkQ2YXhwQ0tC?=
 =?utf-8?B?eUIwTUtjUUxPTlZCVkp0Vm1HRkJpakkreEtvUUs2eFNPYUZBeHozY3NVSVcz?=
 =?utf-8?B?M1FKK0UvSzhqUzRQbUdiNHdwM0NtdzVwTFRmRFYrcGJzOFJUZFpoY1UrOTlQ?=
 =?utf-8?B?MVhhRFBhZ2JHNm9CQ0RvNXlWWmtmWkYwLytJQkV3QmJwL2QvMkxsTzhja3Zv?=
 =?utf-8?B?dDVqRlFrRUhaaEx1WWRla05wcENza2VvRGkwN1kwWWgzY3RqUjdDUUZLdkZT?=
 =?utf-8?B?bkZxb2dNbkorUC9TYmN2MWVyc3VJZmdvM3FERVJSQzVkK0lxYkpTM21zRDFq?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59308d2c-a05e-4414-0065-08dc0cb71de6
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2024 23:53:00.1782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qB+Pg8oHC+cnDhxzMPEpw3yEilt8nVUx5pVGR07goYhtCWZr2CY8YBuI0WwE/of0l7lil41lAxApDQ9ZvN78rilxSWIuZeX+o3JuHBHLhRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6911
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704325998; x=1735861998;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hXo75rqQUA0PDWyWfz/GnJ8NCELRI5CcAsRR8jS3NNU=;
 b=f/fkd/544d7510A0kaw89JNarKyjGhGWrj11mQ1HQ4xR8wRGcJtK979B
 fzLAG0ztUqRHdjhwaD/f1SiGEI5b1EfNW5ie6Zq3HmYC0zMql2XUvikMQ
 sYb8HqeOyvnnpK0aMHUfMyhluX2thZd99HTuN/jKECkuzaZSSZ2SwVCWE
 ohOhkFEac1mQqq1ob+1aMAFPBlPITSgVGrDdzgUFSD3XbSPpaNf4OfIVJ
 LtrZ9pN0Dgfn8kTcbf9gYR9tUJz+gETHf8fLwyhbCVo+RsD8buCIw++Op
 2MNSf7eqjGHuu/bUVH994uI7tbw5z/cYQPDfuLc+8FSHxz66ScB8yDk/6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f/fkd/54
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/1] e1000e: Workaround for
 sporadic MDI error on Meteor Lake systems
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
Cc: Nir Efrati <nir.efrati@intel.com>,
 Nikolay Mushayev <nikolay.mushayev@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/27/2023 2:33 AM, Vitaly Lifshits wrote:
> On some Meteor Lake systems accessing the PHY via the MDIO interface may
> result in an MDI error. This issue happens sporadically and in most cases
> a second access to the PHY via the MDIO interface results in success.
> 
> As a workaround, introduce a retry counter which is set to 3 on Meteor
> Lake systems. The driver will only return an error if 3 consecutive PHY
> access attempts fail. The retry mechanism is disabled in specific flows,
> where MDI errors are expected.
> 
> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Suggested-by: Nikolay Mushayev <nikolay.mushayev@intel.com>
> Co-developed-by: Nir Efrati <nir.efrati@intel.com>
> Signed-off-by: Nir Efrati <nir.efrati@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v3: rebase to dev-queue branch
> v2: fix checkpatch errors
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/hw.h      |   2 +
>   drivers/net/ethernet/intel/e1000e/ich8lan.c |  33 ++++
>   drivers/net/ethernet/intel/e1000e/phy.c     | 186 ++++++++++++--------
>   drivers/net/ethernet/intel/e1000e/phy.h     |   2 +
>   4 files changed, 151 insertions(+), 72 deletions(-)

This patch conflicts with your other patch [1]. In these situations 
please either send the patches together as a series or wait until the 
first is applied before sending the other. I've applied the other patch; 
please rebase and re-send this.

Thanks,
Tony

[1] 
https://lore.kernel.org/intel-wired-lan/20231227103154.177094-1-vitaly.lifshits@intel.com/
