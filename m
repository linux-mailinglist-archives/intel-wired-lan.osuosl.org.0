Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E02570EED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 02:25:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DD4E40B72;
	Tue, 12 Jul 2022 00:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DD4E40B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657585528;
	bh=yhfDZtAY4psOVP/qxt2d1EEoknYWLLeoAMjqLKZ1aMc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SRRHRByw6oY4qXOBIr87w4QdhTXWMvBeyfgaLZ6x0KrMEZ/AVwUSLKf1+2D3Vq+93
	 mv9C0LWnl2DYez7dsWfgTtascvYR4tZymrbfZ/9BaYJmfJNHGTxxCUQkB+pg3aW/oX
	 ZAURoZDZZZ079l8vQglbyWDJUa6LaSsbqBgcMrNv54ZS+bRFHZfWvSYbynH4rJE+Om
	 EpT0Ah0+VB/RdUgZH69E9d0mKIxnPWUVL5/tqBMrMjvrG7U+NWZJU2pssTxhJg7OcS
	 pAgmhDRxaexfpKLJWsybsFZXTvwquhvXsVRMDyGdZtt3r3MuJOqpQH0FsETXenD6GO
	 CBdfmKWPkvaBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yiUPyjUiy0LG; Tue, 12 Jul 2022 00:25:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54E7F40B61;
	Tue, 12 Jul 2022 00:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54E7F40B61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73FDC1BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 00:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FF3040B61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 00:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FF3040B61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id icS_jCcBLcUK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 00:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0879B404CA
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0879B404CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 00:25:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="282354546"
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="282354546"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 17:25:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="545220272"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 11 Jul 2022 17:25:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 17:25:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 17:25:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 17:25:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 17:25:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iJuHtYmBnjObqfmnDHg3bvogUNvgiRRovioQqwpTpyEBYWMs/YJHS4TGTzlhLHw2A14nRr/hDyhAWtzUNoBW4CDv7/vVAQDE3A12twgbFGRctTnD6ywfNdppsNN0/z1qAfMcajL7dP4I+A5rU3wpSP+SaF75dhy4KTxO+knnh/qDeRtdfzGxewRG9cgDjwqWJuJQ5zTNRg+CdEPiZZNZq5guoZg56VRHgvxEjaFMMRAPjK3UzllbRMgmX45rOEtmlTYWcn/8qLE52rFiHC0kOkCMCF+lJeRAx3STOIOgLLonOldFp397fyql2TtmBgwcZTNxzVV4HGVlWNkfdQtlFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hh91ZEkLNURwAXBPCyL9W0DgKMQJTUT3FkbAAhe6f48=;
 b=mxIvjpENwVLbYYjHiah8Ii4XBJzHLhmoCRIQHyI6KgRKDXr0p9nHCdFFlntNu9t4IyWNuNYy7aqkvEC1w4BE9oBt6+7wrajMYQLwU12o/UpQmn3lZSmKjEUHkItBFsqcOqNy1qrSiYFSL3LQWIG9Y9bA03Ma4CF70KrKODMHxSBD6YAQHlwdrlnxmerdsDFycY+2w2Cl+aq6olvtYPkR/OCSGGTAlJQNPbBCQKLmi+ivV+J63DaIAjcmJWWrTRW6XMZRGJttraxioK2uFta+98njkqXsx/GWhFRauZjnX7qrXAjiirxIiEPkRSlGU4Bx0YWIkTMwtVFpBjIoXvXAPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB2048.namprd11.prod.outlook.com (2603:10b6:300:27::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Tue, 12 Jul
 2022 00:25:17 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 00:25:17 +0000
Message-ID: <5b566477-85d5-d319-a81b-4b7cb064f9d5@intel.com>
Date: Mon, 11 Jul 2022 17:25:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220704123252.2962020-1-michal.wilczynski@intel.com>
 <20220704123252.2962020-4-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220704123252.2962020-4-michal.wilczynski@intel.com>
X-ClientProxiedBy: BYAPR11CA0040.namprd11.prod.outlook.com
 (2603:10b6:a03:80::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 401f1950-162d-465b-e97a-08da639cfee7
X-MS-TrafficTypeDiagnostic: MWHPR11MB2048:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KSi5QjLktF8F/tQksmk1mJpdPtSiKh2plPfB6q7wD2T/ppoi5MyAC7r6FA7KXx2Zte5prbXQPJmYW+UYTns8BEEYriY5u41WdXpsdkXs0buzw+LW7aUiEVvrKQs6CWsCTRsa1nPc/dn1PzMO3qcGcqzoXZCFUcMt0KVq/Y0tzsR7urB/wS2HXQhGBJipM69Vhy6t0m551v8ud5sQSGtHvEhI+AB4bXvqK50Ar+940uet5fUrpUAaDi9Gt105D7SVrKQV1w+m5GmFKphp8YmkJDJwRE2XHFutV/jRZmjeSkwFi94GOwh7u9uvOoCElEdkOb7g1FmOdGdj9Krt3/lY1Yx3+pjMFXaly+QLnzf2jlnJ0j9oEaFe1viucO0tOE2YtiTPCPuz3M2PasvIAQcGytEV22dIQS3e4MMp5xc1rs5B12CvZqB/XMuZ8Jrd5nsSg046z7TOSnBJ7gYjGeAJlBicrCTq3MrfmC/l+S/3Rat1cMTdNcyPk2L3eRNCbmYEXoyDXAgBs16dn45DNHyHAaqliRriO0M2BJ4bOz6duPdAczP+5ia+PfQ+W4+N+iw2nUySuDsY74+rsPKKkAfjjArvT1G24naf/oUdW86rjUrq8sn2oTfQ7cd4CW7kClSX1vvw5h/bCnEJnVTihJMWv8PWdtxKL6EjUeSWfSylUJqwGCwUwaf9+x2+7+bpFxdt1p+5Ubm2tYUoBBOl+aOceY3ebhGhc8zdAyftbBVrMCQYAd6TqxVJRqh6GORlmAahT2Ybkr6JHs2/SeilHk85ItM9vBTkpoCrnQ3dstr3tYPfnrqLbAW3M7j+0HjfTd4BcbKPzsO0ZtEh3QQF/GXo6jGasufAZIUIdQ92cIyPz24=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(396003)(346002)(376002)(366004)(8676002)(316002)(66946007)(83380400001)(36756003)(38100700002)(5660300002)(6486002)(66476007)(31686004)(478600001)(66556008)(8936002)(6666004)(53546011)(6512007)(41300700001)(26005)(6506007)(82960400001)(86362001)(31696002)(2616005)(2906002)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDVtWFIwN3JYSCs0aUlQTGxXSFB2Y0dVRDE5SzBHekVZL1ZMbS9oSHJXM1FE?=
 =?utf-8?B?NFJkL2h1Yi9tUjluTnpxNExpaWUxMXVxWCtWWTQxbXNYK2FzOWJhUkRIRm1N?=
 =?utf-8?B?Mm53RkhiZXRmSW9jZUdGejJKVEQ0ZVRJQ2xWZnZIQ3dyOFZmRHpFdEU0bmtO?=
 =?utf-8?B?L2J6QUlaQXhyTTNoUm5FTU55K2JJRDJKcmh0OWY4NG5nTXFaVklSS3MySVNm?=
 =?utf-8?B?YVJTQ3NocVNxMHR6bTlJN2d4NFFEZGQ1ckJFWkE2Z2tFeFB0Mndwd1Q5b0lN?=
 =?utf-8?B?WUJrcjVRd1ZxZVVjSm1tSXBNQ2hJbG03OU9QZWRLVTJRbVUvOWtQSFpoYWhE?=
 =?utf-8?B?K2xPYS9mRUpXaWk4bmc3WFpRMWdRL3R6UFBWb2hUbkZ3a1hiTFFDTi9NU0M2?=
 =?utf-8?B?YVlSU1ZzQkU2bzRqMERFQk5LQmFXbmM5dGQvdTNEdkd2SlFRTWIzUTR0ZCtr?=
 =?utf-8?B?dXAvUW4zZnc5ZmJaQ2RrY0RSOFNkM3Q2STBaZi9ScnJhR3cxMjJmZVJnZm5p?=
 =?utf-8?B?VHIvRTZhYVJhS2JKVGZ0TEk1eHVOb1NqMG9MZkRIM3JrZ2RyV3QrY212RE04?=
 =?utf-8?B?YTBQYlBiTmlpdVh3dlh4ZWtvSlJjU2JBbkZOTVpqU3JWQm1laUF1MjNKR1FK?=
 =?utf-8?B?THFvK0dncnpjRGFuSUowSTZneGtscWR0RlVxTCtZcUpuWGIxTG9WbStLUFdD?=
 =?utf-8?B?cm16M3E5N0tkSU1wM0Z3YUlESG1GUVIwdTBaUjZXQkkrQWorWTJjZXZCMjVE?=
 =?utf-8?B?TFkydWhFQUlrZWN6UnRjemgxdVRCc2lhVEhjYW5Gek50UWxrRFJTaUM4K0pW?=
 =?utf-8?B?VDRRU2NDZjQ2UnV2US84NFZFN25jcjBuSGhZcWhCdzNuK1c3WFkwNGdhdENQ?=
 =?utf-8?B?MFloeW9QS3paU3U3bldEMEpRVmNlemtGRGY0VThhNzF2MHBneEMxY05GRDZw?=
 =?utf-8?B?aW1QUDBZUHBub09RYU1SRnA2YWJ3RGlYbzExNHBNTWtHV1FndWxYcFhQMFdt?=
 =?utf-8?B?ejZORjlTMG9SVHpvSDF4MW1QaEVCZTRvZmNNK1pzaVY3eDdZSmxvR3k4VHZH?=
 =?utf-8?B?dkF0bVFxUUxJQ3pkR1BOL0l4Yyt5dWhKbFFEVGZYSTIwZFlVTTNnYlNwL2s3?=
 =?utf-8?B?UzZseDZCSWV2cmc4K0F0Z0dLYkpMWUZ4Z2hBS040RXZOU1hzRWZodFQ3YkJC?=
 =?utf-8?B?Uk5hOVlabXhkZFJzNnBiUkM5N05SNXRnOHBYRUlra3AwMlQzeW5VYmJvM2pv?=
 =?utf-8?B?NlNXMS93bjNBa2xjVGpSeEtHM0M0SFM4ZnJFcFpxZnZQUzdYbmZwTng1SDIx?=
 =?utf-8?B?MHFWZjJ4am1UYk9pL1pxaFpoRFpWTEZSL1ZmZUQ5Ym5YT0d0eFdBelo2SG9D?=
 =?utf-8?B?Mm9DOUVzcFNJd1l0UUJaRy9tYkJNdDhicTJvN01DL0dNazl4LzVudUFqUFUw?=
 =?utf-8?B?OURTUGNHaWx2VjlucnhFbWJBaTg2WjZyUzFKenpENHhacFkwRmRCYlNFQjE4?=
 =?utf-8?B?aFpKYlNiUkw1UXNydG9VNDBhcERGVkFnZGlvRTZPTlpiZUJGR1JpdnhyeElC?=
 =?utf-8?B?d01zR3M3ZHJpQ3V3bXIrclcvdGJRdUVDeGtCZXZtQzRMV2VFcWNRamtTWnNs?=
 =?utf-8?B?R25KZnczUU1LV0xhTXJyZHdka2Iwb0ZkajRzYjlJc1NYQ1RXZHF3NDZBcHBQ?=
 =?utf-8?B?akhuc2tUVmdGOURKbytua2ZDQTFMdGdEdlQ3UC9PUUNoMFRIT0RFaXJpZjls?=
 =?utf-8?B?Y1N2UXQ2OEQwbURBZkVlZWVaUFVCck1kR3hON3JpaWUrU2hScnZqME5MRGRt?=
 =?utf-8?B?enVudzlXTUJRTnBTNW5XdnRmeXIzQmtoNG1jVHcvTXJkT2JjOVhzcThUcXZP?=
 =?utf-8?B?TFpvaVJBU0xKTUROQ3dwb2hhTnNCc2djQmhiamJrSEdYRk9LOGd0SHBmQ1Fo?=
 =?utf-8?B?M2R4NjdWVUNIUnFMaURkenBxMTdsbFM5WnVaalhUZXRsbytLSlhaNWNxQldt?=
 =?utf-8?B?R2YyeW9pc1VkaEt6aTI4OE43bDhTV3haWkJCWGpFMW9SaVlHRjRqaXM3N21V?=
 =?utf-8?B?RGwrUXY4OFczeXplejNRZUN2bW1qYy9tdkdBL1hyVU1NUDhtYVpGK2FTaFJs?=
 =?utf-8?B?ZUpJUkpKQTI4QSszbSt2VzJDTmZrMDVSVFU3eS9WSGtqZEVCUU03dHo2MlZm?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 401f1950-162d-465b-e97a-08da639cfee7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 00:25:17.0568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aPuuknj00X9nSX7pFHN8dgTyzudaQRoGvYVEIPAPgFNbJrzhL3vwraxEj3cnCet/IlogkaDyla1vsfi73EkUyhsTLj+vUuboGmek8VjXdo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2048
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657585521; x=1689121521;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LYTD0tOrDBSTG0VPRxt0911W/nKwquA2tvORbEnyE3E=;
 b=AArIqTpgyXRs9pZqneMG+BXfxlRhpreP5PMeNRj9nT9DE1MxE1uBOEuZ
 Rvjs/0LDja9Zoiv6O2e7NpwdxZc0KDBheCcIm+UZvM7prDo9q2xEb5l8k
 MZTbmim94LIy+LOpBRgEZQeUJf5UfA0GXIoSuweETU1+TNx+hINFC1cQZ
 JWVGAgc2u+F4r0RQQ4eFz145f+qr4rOgpmkiQBhnGkO8NPN81AbLCfn59
 L137WXwPngyrKvmPJYgTnI5xzHfZJ8XYkBqm6DrsN9R84BFTLjVQk1cd7
 Mw8QiGTqeTMGT/FTvITAJorP3glOE5o97XgHNb6+ptl+4QdxctFH3CRjZ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AArIqTpg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: Enable switching
 default tx scheduler topology
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



On 7/4/2022 5:32 AM, Michal Wilczynski wrote:
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
> Example way of switching NVM settings in devlink:
> 
> Show:
> devlink dev param show pci/0000:4b:00.0
>    name txbalancing type driver-specific
>      values:
>        cmode permanent value true
> 
> Set:
> devlink dev param set pci/0000:4b:00.0 name txbalancing value true cmode
> permanent

Did I miss the devlink implementation?

> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---

<snip>


> +static int ice_init_tx_topology(struct ice_hw *hw,
> +				const struct firmware *firmware)
> +{
> +	u8 num_tx_sched_layers = hw->num_tx_sched_layers;
> +	struct ice_pf *pf = hw->back;
> +	struct device *dev;
> +	u8 *buf_copy;
> +	int err;
> +
> +	dev = ice_pf_to_dev(pf);
> +	/* ice_cfg_tx_topo buf argument is not a constant,
> +	 * so we have to make a copy
> +	 */
> +	buf_copy = kmemdup(firmware->data, firmware->size, GFP_KERNEL);
> +
> +	err = ice_cfg_tx_topo(hw, buf_copy, firmware->size);
> +	if (!err) {
> +		if (hw->num_tx_sched_layers > num_tx_sched_layers)
> +			dev_info(dev, "Transmit balancing feature disabled\n");
> +		else
> +			dev_info(dev, "Transmit balancing feature enabled\n");
> +
> +		/* if there was a change in topology ice_cfg_tx_topo triggered
> +		 * a CORER and we need to re-init hw.
> +		 */
> +		ice_deinit_hw(hw);
> +		err = ice_init_hw(hw);
> +
> +		/* in this case we're not allowing safe mode */
> +		devm_kfree(ice_hw_to_dev(hw), buf_copy);

		This should be a kfree now.

> +
> +		return err;
> +
> +	} else if (err == -EIO) {
> +		dev_info(dev, "DDP package does not support transmit balancing feature - please update to the latest DDP package and try again\n");
> +	}
> +
> +	kfree(buf_copy);
> +
> +	return 0;
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
