Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0797203E7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 16:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74B988442D;
	Fri,  2 Jun 2023 14:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74B988442D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685714414;
	bh=2/zi1y+LMwKuWT0ugG6JY0G7Nuqiim7KeL+sTzLmlEI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CRE6C0/6c/bNLV82DhSBxYkgnwVZcuAV27YxaBxh2N2XTvsjK1IUjLnlh8hjnqBqO
	 ikbIV9FLY53R4+P/5RM7b0l2ZQEDdXLl0tAkbc6c4IRRDxVQNdC48wI/uV7KZ0d6lq
	 Ut5uHGYGOCLXbgXsKXxxBhaRH2TftXGHoYaV3rdVsi823qN9KVChauPCfYAtqWfdwh
	 shI5qKVq22+FurGQ4Uwf/n2Q222TO0PLrOEl+s3zNiZ1SbOThxWaeOpV7O1SF+vaw0
	 rp+rHzk9+G8/Y4ArLi6q2JQTF2CCQnRkjJLpH0+SwdfM+7vv1Js5syZK1zw6KpecSj
	 4JVez4r3cpAFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFxbemT6Extq; Fri,  2 Jun 2023 14:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1B1384408;
	Fri,  2 Jun 2023 14:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1B1384408
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2271BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 14:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 647AC84441
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 14:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 647AC84441
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TiqPxrr_-n5m for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 14:00:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFA2D8442D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFA2D8442D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 14:00:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="419404590"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="419404590"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:00:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="797608920"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="797608920"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Jun 2023 07:00:01 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 07:00:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 07:00:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 06:59:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dqVAG/DJxkzuT3kMhODzpGqNGa2JDCQG2Ge+PRnXxe/LRqQTVlCx4nWChlhSF8E5KbVF+8CgZNxC/vZdfq05vGkCcVLmO00erYBjUR2pKSRo+3Q7H816Qk+HlHv663NyOzox9xKk7AuXG+uwmMFHbp/tSj1XOIIgd3HsS+g4muotbhLr+P9BHAuzjU490un7g6h9qS+1/AwM01Ntbx6kr6KTdG/PrxOHjaG35pSN+uA/oA7VmxyHUByFPavKWFHKyvNAuNPM8QSBqYBjGTTvWjekR/3uKyjve9AJw2GvkIj9iEg3cBggKcSpf6laWrUiM54zz9gFZqNvRjPgKk+LAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IE3dCj1Wf5hzf84GJQ4X6StcMYH5Z5jwnF81PsVjl/4=;
 b=htFEhUwHuF9DoOEbAFy7uRxTA3S17N5e85tCBeAAZl6xI1gexaMqZjSCNDemQWGJs+0HbdGtrnJd0Dh2FZgDAFF4HDEfHlhlGkl4Tohi/6T8l7i11wLFEVXyX8W//ifaXA+LQJIgPjkh9Ibq3GeCxy7eC1YoMpd00lQp70fx2smSmNpbI8xyrWqTL/bkTJ9dhojt+OL9MvJE+pSG8qMj13mvUjYNE6AhCBHp7IAdhH/WkLzAGPXlvPgkyEb6QJPAnzztj0EYnuo5VdYrP5e6EhfjOa9jmvkWLA5RVs1noPhe0mLNDFh1i50ZgbwFt5tEpXs3Ctj0nPTvM4GTI6FvpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.26; Fri, 2 Jun
 2023 13:59:58 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 13:59:58 +0000
Message-ID: <d375fef9-43c4-9f2a-41c9-5247fcb3aa1e@intel.com>
Date: Fri, 2 Jun 2023 15:58:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-4-aleksander.lobakin@intel.com>
 <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
 <cb7d3479-63a5-31b4-355d-b12a7e1b2878@intel.com>
 <CAKgT0Ud204CiJeB-5zcTKdrv7ODrfP09t73CqRhps7g3qhWU5w@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0Ud204CiJeB-5zcTKdrv7ODrfP09t73CqRhps7g3qhWU5w@mail.gmail.com>
X-ClientProxiedBy: FRYP281CA0013.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::23)
 To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM4PR11MB5295:EE_
X-MS-Office365-Filtering-Correlation-Id: d38403fb-7b27-49e5-2d15-08db6371a606
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/Ttw9Cczq5eG9Gfy5w56tPeBIoQbJhXXhl/KqTJNfF92DTjgCGLjSCgaKfwuhUelXpqL/0g1mYYT55EbOEgE9MIdWLEGer3zmxlcKx1ugd420oYBIw0JDe8/RGDLMzLizEjWgEdp0JvUu8RjMc5iHcww2O0a8Y/JG2lMQny2S/jN3kwTnNvuM89fuUHRbsz78C/vw2xjamawDHcC8lpt4oJMWdu4Rufq/YlD9neFGL9CvmTdyayr52BRuhSmEF94bQSpg5r+zfXByvb5SzlJH8q/1pNZl7Z1I99uYmrtocB218xSH35rrYapjxBDciYFXqaTTtyCOhxucGap32BvDHDMzCWU/V4FmM+9S2KQcI2mfRYhOjKlA8eq7WPFeS5pr53zx7PfGjLeWRhQ61X1yjA4F7q5Ln6HaNGfyH2LmqlORp4ukwt+CehSBv7DvPEov5FRNk0VRyC6ZL+ea7uS/1aXP9kczTzyScAwjuPMPPkoFbUZ7ZQrDEQpjs4JBlNW8Y37qbkULdvuodD8jV9V6ZJ7ojVQa+yhCC7wQJFrpWhXLtTv+EMR99HIsoWRm+nWkGZ6cG4R3VNwkix1lmFBVYMx+E6rFTWXzVInFC04Ln4xXwclCN8YIQrH0+bJbDBF9AqI7OfrWLXALckeBOIiA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(136003)(39860400002)(346002)(451199021)(107886003)(7416002)(54906003)(478600001)(41300700001)(316002)(6666004)(5660300002)(4326008)(66476007)(31686004)(6916009)(66946007)(66556008)(45080400002)(26005)(6506007)(6512007)(66899021)(53546011)(6486002)(8936002)(8676002)(186003)(2906002)(2616005)(83380400001)(38100700002)(82960400001)(31696002)(86362001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1Z3a3lCbVRCZWMwd1hwdllHK2pMSHJpRXNuOXlRL0RpblFtc0VBaEVNVVZa?=
 =?utf-8?B?dC9QU05uMTE4SU1NdTZlWVhRM2RQeWg1bnFaVC9DYXNBTFFTZVZtWDIvd0Fy?=
 =?utf-8?B?ZTdNdW16cjV5WTJoWTZiYlQ5QnU2UEVocnV3eDhqekhQRHM4bHJYczhFaStL?=
 =?utf-8?B?Sm9kQkRRaHJodjFKY2ttTjZub1NjdG1lYk1QYWRwN3dhZ2JObk5UQmxkVHVr?=
 =?utf-8?B?dEJvNGFmVGZHZFhmVGx0N2N2VHJOdjROaGQySzZ1TmwzNURibno4UFFLYmJt?=
 =?utf-8?B?YlRuT2dXanNiaXlLR21USkwzeUJpNnUxSnFsMTBwd0cwNVlDRDBZb1cvbWZ4?=
 =?utf-8?B?aFZNaXpmUzgwM3JqWFUvS0tWdzlpcmJsMFF1QVdqQ3lqak84VDFTVDBDWU9I?=
 =?utf-8?B?RG8wMENjVURkSnpFMUZnTXpPdTNsNHBteGFsNGV5Y28ybXNTcmVWSGJFRzE1?=
 =?utf-8?B?UTNsWEVJZ05zUTBBVmpXZWFXNEFpcmdFUEpadVl0bXFVd2ZnTnozb2RkSllx?=
 =?utf-8?B?akR2M0owYW4rU0JwM1RGeWdmMFR4amdhVUVBWTBFR3NUTi9ydTZULytCRnBz?=
 =?utf-8?B?NC9COENQanRJU2FkeFlIUkk2LzgzMXFGRHpsd05VMzIrcGNRejNRTXhtdnB1?=
 =?utf-8?B?bW9ma3hzMm9mZ3puck8vVTFNV2JnNEcyQ1hqd3gzUzU5WVJwZ0grVjBDQm9K?=
 =?utf-8?B?akZhS0VPeGlLYnd6L3AyMitiNVJCY0FlaWdCaDZPdVBKZ0UwelBmRmFBMXVr?=
 =?utf-8?B?aDZ3aGlpQXprSGQ5anhuSnBBdzV5bG1pSGNWd3pTTmQrZXZCNWdVNWRNcHd3?=
 =?utf-8?B?MmtQWm1rUW9sQitsMGkwWEpHNmpkMHpLOEhGaS9OOElYV0FyNVRDeDRIbEUw?=
 =?utf-8?B?WE5jOGVyQjUvWkt5ZFhSbHAybXJta2hQTGpFTXptVCtaVlg1T0pYdno5MURm?=
 =?utf-8?B?VzBYQldydjZoYlFOc2JUc1BwV3BIaFRteUNBejdHVSs5cFltbGh4bHJpVW1t?=
 =?utf-8?B?OHZsNDVzWGYvSFZud0ZLdVduRVh0UEo1OXU1ZDRZcWNlcVRFMU42R2d0K21F?=
 =?utf-8?B?TmpodUJHcHVHN3F1REx1dWNORDd0Wm1FNk1vZTNlTk1DNWNxM1R4ZXhYQ2h2?=
 =?utf-8?B?ekNic09scjZORGJ3SHNNMFdJMHJDZnk2V3FjQkFRa21TNjU1TndRaVo0Z1o5?=
 =?utf-8?B?WFVseHpHVi8xMlhoYWFjcXVINVNtbEhUekg2NG9oYno0WGJETmFkdTRnRmE2?=
 =?utf-8?B?elZZaHJpRzBsN0JqajZxbGc2alB6U1dSZ1NNYnRCTmMwNFlXZytNQ2JCUk1I?=
 =?utf-8?B?eEVzMklmV2hON2NkR3VyUjZXMzUwT3RQcGVSRG1WSk15cm5PdFVTcUl0U3U4?=
 =?utf-8?B?dmVqVW9uVXUwanA1cjVscVdtS3lZN3JpSkxqRzEyRldEQ21jeVNsbnM1VVJw?=
 =?utf-8?B?eTlxVmZ1amhrTTg2emZpQkJDbXpqTjQzaHhrRFhLYStLMjdYZG80Rm90TmIw?=
 =?utf-8?B?SkM4V3FYQ2dFemhZS3JpdjhWUkg4YlRvQ2JOYk1PVkNzWE82NXVOeHFkN1No?=
 =?utf-8?B?Z2lqV0hPYml0Lzg5SEs3MkNyWnY4MEFxdE5zVVVpbU5ObUhVZFRYVTBLQ05J?=
 =?utf-8?B?SkFpOGd1WEdlUm1mZWZRUmJ5ZWJGcCtmU2pnOWJ2WDFpMVNrNUI5Q0Jqd0E0?=
 =?utf-8?B?ZlNhRm1NZVd0NCtqdHhrUGFsNWh2SUE3a2hIbWhaRDNQVTZaTmtBRE1Pd3Nu?=
 =?utf-8?B?a2VydFQ4bTUzZ2ZKRklSTTdmOGFlY2VXeU9yVndNOFNHc1ltY2xiZ3BscHZ3?=
 =?utf-8?B?NGlqOXdPNFhPNXZSNVIxd3pkNmlZMTVIeC85c3U5RWo1NVRYUkgvV0ptVnhT?=
 =?utf-8?B?ZVJOU240b2xwRTZSS0pJWmhRQlpMQ3BkUmZGdE5yWTdvcUtHbVRKbHpXcU5U?=
 =?utf-8?B?Vkcybjd4Zjh0U0svRVh4OUY0b3ZrQ0dLRUtzdTlNNGhNeVAxb3paTVlmekhj?=
 =?utf-8?B?cHhoREVJSkZrcThhanpxSTNjN3QwMHFwVG5wMWZmQlUyN3FyL1F5cUhXR1FF?=
 =?utf-8?B?M1k1OWlyMkF1Y01ydU5JcWFDb1ArTzBlTi9qRURhaGNHMUNQSTJHaUN6Q1F1?=
 =?utf-8?B?RFVmR3NaRU9aTm1RQVdZNUlrSnBQMmlSV1Q0ektMbmRWbENoREp1Q0xTRVNK?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d38403fb-7b27-49e5-2d15-08db6371a606
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 13:59:57.5264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rXtwJB7gsy7Puzeor63NC2YoYKnvE7ryKYK4PRR0/oBKOiebtcWlVKwP28gR+cLAMiWxhE1M301n+/kfzDqtZHMRE0umc6DvFzMiK/Zw6ag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685714404; x=1717250404;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UljNFM7q/+tAFOmri6Z1er4uwJAW4uM8wmAhDUmAI9Q=;
 b=W8W3II/H1Ixm9xxZdhARR6Dx67pYFAeTW4XZS0KDYtKFgYQk8LlCriAu
 kM4Snp+AM39EilG8FyDyAB3XtypjAE0t6U8jz8VuKusxJO7+qxdjGGFNG
 JS9M12QFiAOko8Aukui/E0Ypbh/xaFGl8HcOzovkD7EFOZ9UT5jeLofT6
 qVqwVEXm7PK+WPttLFrZQAPlEDF/kSRtO5rewtG16p8m2FhGPNThj+5Oi
 j5xaK1qZ6V025dd0htUOc5u9tYPBfbO+0EpXiSvOWwHxI0ITR8c4EegYx
 h1Y8IvCvU0J+dwfD7AVNey3Bhvd3Mx2biGUn23B4BCiYsneBgzT/Jh/r6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W8W3II/H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] iavf: optimize Rx
 buffer allocation a bunch
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Christoph Hellwig <hch@lst.de>, Magnus
 Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgpEYXRlOiBX
ZWQsIDMxIE1heSAyMDIzIDEwOjIyOjE4IC0wNzAwCgo+IE9uIFdlZCwgTWF5IDMxLCAyMDIzIGF0
IDg6MTTigK9BTSBBbGV4YW5kZXIgTG9iYWtpbgo+IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwu
Y29tPiB3cm90ZToKClsuLi5dCgo+PiBCdXQgbm90IGFsbCBvZiB0aGVzZSB2YXJpYWJsZXMgYXJl
IHJlYWQtb25seS4gRS5nLiBOVEMgaXMgb2Z0ZW4KPj4gbW9kaWZpZWQuIFBhZ2Ugc2l6ZSB3YXMg
Y2FsY3VsYXRlZCBwZXIgZGVzY3JpcHRvciwgYnV0IGNvdWxkIGJlIG9uY2UgYQo+PiBwb2xsIGN5
Y2xlIHN0YXJ0cywgYW5kIHNvIG9uLgo+IAo+IFllYWgsIHRoZSBudGMgc2hvdWxkIGJlIGNhcnJp
ZWQgaW4gdGhlIHN0YWNrLiBUaGUgb25seSByZWFzb24gZm9yCj4gdXNpbmcgdGhlIHJpbmcgdmFy
aWFibGUgd2FzIGJlY2F1c2UgaW4gdGhlIGNhc2Ugb2YgaXhnYmUgd2UgaGFkIHRvIGRvCj4gc29t
ZSB0cmlja3Mgd2l0aCBpdCB0byBkZWFsIHdpdGggUlNDIGFzIHdlIHdlcmUgZWl0aGVyIGFjY2Vz
c2luZyBudGMKPiBvciB0aGUgYnVmZmVyIHBvaW50ZWQgdG8gYnkgdGhlIGRlc2NyaXB0b3IuIEkg
dGhpbmsgbW9zdCBvZiB0aGF0IGNvZGUKPiBoYXMgYmVlbiByZW1vdmVkIGZvciBpNDBlIHRob3Vn
aC4KCklBVkYgd2FzIGZvcmtlZCBvZmYgaXhnYmUgYXMgcGVyIEplc3NlJ3Mgc3RhdGVtZW50IDpE
CgpbLi4uXQoKPj4+IEFueSBzcGVjaWZpYyByZWFzb24gZm9yIHRoaXM/IEp1c3Qgd29uZGVyaW5n
IGlmIHRoaXMgaXMgbWVhbnQgdG8KPj4+IGFkZHJlc3Mgc29tZSBzb3J0IG9mIG1lbW9yeSBwcmVz
c3VyZSBpc3N1ZSBzaW5jZSBpdCBiYXNpY2FsbHkganVzdAo+Pj4gbWVhbnMgdGhlIGFsbG9jYXRp
b24gY2FuIGdvIG91dCBhbmQgdHJ5IHRvIGZyZWUgb3RoZXIgbWVtb3J5Lgo+Pgo+PiBZZXMsIEkn
bSBubyBNTSBleHBlcnQsIGJ1dCBJJ3ZlIHNlZW4gcGxlbnR5IG9mIHRpbWVzIG1lc3NhZ2VzIGZy
b20gdGhlCj4+IE1NIGZvbGtzIHRoYXQgQVRPTUlDIHNob3VsZG4ndCBiZSB1c2VkIGluIG5vbi1h
dG9taWMgY29udGV4dHMuIEF0b21pYwo+PiBhbGxvY2F0aW9uIGlzIGFibGUgdG8gZ3JhYiBtZW1v
cnkgZnJvbSBzb21lIHNvcnQgb2YgY3JpdGljYWwgcmVzZXJ2cyBhbmQKPj4gYWxsIHRoYXQsIGFu
ZCB0aGUgbGVzcyB3ZSB0b3VjaCB0aGVtLCB0aGUgYmV0dGVyLiBPdXRzaWRlIG9mIGF0b21pYwo+
PiBjb250ZXh0cyB0aGV5IHNob3VsZCBub3QgYmUgdG91Y2hlZC4KPiAKPiBGb3Igb3VyIHB1cnBv
c2VzIHRob3VnaCB0aGUgUnggcGF0aCBpcyBtb3JlLW9yLWxlc3MgYWx3YXlzIGluCj4gaW50ZXJy
dXB0IGNvbnRleHQuIFRoYXQgaXMgd2h5IGl0IGhhZCBkZWZhdWx0ZWQgdG8ganVzdCBhbHdheXMg
dXNpbmcKPiBHRlBfQVRPTUlDLiBGb3IgeW91ciBwdXJwb3NlcyB5b3UgY291bGQgcHJvYmFibHkg
bGVhdmUgaXQgdGhhdCB3YXkKPiBzaW5jZSB5b3UgYXJlIGdvaW5nIHRvIGJlIHB1bGxpbmcgb3V0
IG1vc3Qgb2YgdGhpcyBjb2RlIGFueXdheS4KClRoYXQncyBmb3IgUnggcGF0aCwgYnV0IGRvbid0
IGZvcmdldCB0aGF0IHRoZSBpbml0aWFsIGFsbG9jYXRpb24gb24gaWZ1cAppcyBkb25lIGluIHRo
ZSBwcm9jZXNzIGNvbnRleHQuIFRoYXQncyB3aGF0IHRoZSBtYWludGFpbmVycyBhbmQKcmV2aWV3
ZXJzIHVzdWFsbHkgd2FybiBhYm91dDogdG8gbm90IGFsbG9jYXRlIHdpdGggJUdGUF9BVE9NSUMg
b24gaWZ1cHMuCgpbLi4uXQoKPj4gVGhlIHBvaW50IG9mIGJ1ZGdldCBpcyB0byBsaW1pdCB0aGUg
YW1vdW50IG9mIHRpbWUgZHJpdmVycyBjYW4gc3BlbmQgb24KPj4gY2xlYW5pbmcgdGhlaXIgcmlu
Z3MuIE1ha2luZyBza2IgdGhlIHVuaXQgbWFrZXMgdGhlIHVuaXQgdmVyeSBsb2dpY2FsCj4+IGFu
ZCBmbGV4aWJsZSwgYnV0IEknZCBzYXkgaXQgc2hvdWxkIGFsd2F5cyBiZSBzb2xpZC4gSW1hZ2lu
ZSB5b3UgZ2V0IGEKPj4gZnJhbWUgd2hpY2ggZ290IHNwYW5uZWQgYWNyb3NzIDUgYnVmZmVycy4g
WW91IHNwZW5kIHg1IHRpbWUgKHJvdWdobHkpIHRvCj4+IGJ1aWxkIGFuIHNrYiBhbmQgcGFzcyBp
dCB1cCB0aGUgc3RhY2sgdnMgd2hlbiB5b3UgZ2V0IGEgbGluZWFyIGZyYW1lIGluCj4+IG9uZSBi
dWZmZXIsIGJ1dCBhY2NvcmRpbmcgdG8geW91ciBsb2dpY3MgYm90aCBvZiB0aGVzZSBjYXNlcyBj
b3VudCBhcyAxCj4+IHVuaXQsIHdoaWxlIHRoZSBhbW91bnQgb2YgdGltZSBzcGVudCBkaWZmZXJz
IHNpZ25pZmljYW50bHkuIEkgY2FuJ3Qgc2F5Cj4+IHRoYXQncyBmYWlyIGVub3VnaC4KPiAKPiBJ
IHdvdWxkIHNheSBpdCBpcy4gTGlrZSBJIHNhaWQgbW9zdCBvZiB0aGUgb3ZlcmhlYWQgaXMgdGhl
IHN0YWNrLCBub3QKPiB0aGUgZHJpdmVyLiBTbyBpZiB3ZSBhcmUgY2xlYW5pbmcgNSBkZXNjcmlw
dG9ycyBidXQgb25seSBwcm9jZXNzaW5nCj4gb25lIHNrYiB0aGVuIEkgd291bGQgc2F5IGl0IGlz
IG9ubHkgb25lIHVuaXQgaW4gdGVybXMgb2YgYnVkZ2V0LiBUaGlzCj4gaXMgb25lIG9mIHRoZSBy
ZWFzb25zIHdoeSB3ZSBkb24ndCBjaGFyZ2UgVHggdG8gdGhlIE5BUEkgYnVkZ2V0LiBUeAo+IGNs
ZWFuIHVwIGlzIGV4dHJlbWVseSBsaWdodHdlaWdodCBhcyBpdCBpcyBvbmx5IGZyZWVpbmcgbWVt
b3J5LCBhbmQgaW4KPiBjYXNlcyBvZiBUeCBhbmQgUnggYmVpbmcgbWl4ZWQgY2FuIGVzc2VudGlh
bGx5IGJlIGZvbGRlZCBpbiBhcyBUeAo+IGJ1ZmZlcnMgY291bGQgYmUgcmV1c2VkIGZvciBSeC4K
PiAKPiBJZiB3ZSBhcmUgd2FudGluZyB0byBpbmNyZWFzZSB0aGUgd29yayBiZWluZyBkb25lIHBl
ciBwb2xsIGl0IHdvdWxkCj4gbWFrZSBtb3JlIHNlbnNlIHRvIHN0aWNrIHRvIGludGVycnVwdHMg
YW5kIGZvcmNlIGl0IHRvIGJhY2tsb2cgbW9yZQo+IHBhY2tldHMgcGVyIGludGVycnVwdCBzbyB0
aGF0IGl0IGlzIHByb2Nlc3NpbmcgNjQgc2ticyBwZXIgY2FsbC4KCk9oLCBJIGZlZWwgbGlrZSBJ
J20gc3RhcnRpbmcgdG8gYWdyZWUgOkQgT0ssIHRoZW4gdGhlIGZvbGxvd2luZyBkb2Vzbid0CnJl
YWxseSBnZXQgb3V0IG9mIG15IGhlYWQ6IHdoeSBkbyB3ZSBzdG9yZSBza2IgcG9pbnRlciBvbiB0
aGUgcmluZyB0aGVuLAppZiB3ZSBjb3VudCAxIHNrYiBhcyAxIHVuaXQsIHNvIHRoYXQgd2Ugd29u
J3QgbGVhdmUgdGhlIGxvb3AgdW50aWwgdGhlCkVPUD8gT25seSB0byBoYW5kbGUgYWxsb2NhdGlv
biBmYWlsdXJlcz8gQnV0IHNrYiBpcyBhbHJlYWR5IGFsbG9jYXRlZCBhdAp0aGlzIHBvaW50Li4u
IDxjb25mdXNlZD4KClsuLi5dCgo+Pj4gV2hhdCBpcyB0aGUgdGVzdCB5b3Ugc2F3IHRoZSAyJSBw
ZXJmb3JtYW5jZSBpbXByb3ZlbWVudCBpbj8gSXMgaXQKPj4+IHNvbWV0aGluZyBYRFAgcmVsYXRl
ZCBvciBhIGZ1bGwgc3RhY2sgdGVzdD8KPj4KPj4gTm90IFhEUCwgaXQncyBub3QgcHJlc2VudCBp
biB0aGlzIGRyaXZlciBhdCB0aGlzIHBvaW50IDpECj4+IFN0YWNrIHRlc3QsIGJ1dCB3aXRob3V0
IHVzZXJjb3B5IG92ZXJoZWFkLiBUcmFmZ2VuIGJvbWJzIHRoZSBOSUMsIHRoZQo+PiBkcml2ZXIg
YnVpbGRzIHNrYnMgYW5kIHBhc3NlcyBpdCB1cCB0aGUgc3RhY2ssIHRoZSBzdGFjayBkb2VzIEdS
TyBldGMsCj4+IGFuZCB0aGVuIHRoZSBmcmFtZXMgZ2V0IGRyb3BwZWQgb24gSVAgaW5wdXQgYmVj
YXVzZSB0aGVyZSdzIG5vIHNvY2tldC4KPiAKPiBTbyBvbmUgdGhpbmcgeW91IG1pZ2h0IHdhbnQg
dG8gbG9vayBhdCB3b3VsZCBiZSBhIGZ1bGwgc3RhY2sgdGVzdCB3Lwo+IHNvbWV0aGluZyBzdWNo
IGFzIG5ldHBlcmYgdmVyc3VzIG9wdGltaXppbmcgZm9yIGEgZHJvcCBvbmx5IHRlc3QuCj4gT3Ro
ZXJ3aXNlIHRoYXQgY2FuIGxlYWQgdG8gb3B0aW1pemF0aW9ucyB0aGF0IHdpbGwgYWN0dWFsbHkg
aHVydAo+IGRyaXZlciBwZXJmb3JtYW5jZSBpbiB0aGUgbG9uZyBydW4uCgpJIHdhcyBkb2luZyBz
b21lIG5ldHBlcmYgKG9yIHRoYXQgTWljcm9zb2Z0J3MgdG9vbCwgZG9uJ3QgcmVtZW1iZXIgdGhl
Cm5hbWUpIHRlc3RzLCBidXQgdGhlIHByb2JsZW0gaXMgdGhhdCB1c2VyY29weSBpcyBzdWNoIGEg
Ym90dGxlbmVjaywgc28KdGhhdCB5b3UgZG9uJ3Qgbm90aWNlIGFueSBvcHRpbWl6YXRpb25zIG9y
IHJlZ3Jlc3Npb25zIG1vc3Qgb2YgdGltZS4KQWxzbywgdXNlcnNwYWNlIHRvb2xzIHVzdWFsbHkg
anVzdCBwYXNzIGh1Z2UgcGF5bG9hZCBjaHVua3MgYW5kIHRoZW4gdGhlCmRyaXZlcnMgR1NPIHRo
ZW0gaW50byBNVFUtc2l6ZWQgZnJhbWVzLCBzbyB5b3UgYWx3YXlzIGdldCBsaW5lIHJhdGUgYW5k
CnRoYXQncyBpdC4gU2hvcnQgZnJhbWVzIG9yIGludGVybGVhdmUvaW1peCAocmFuZG9tbHktbWl4
LXNpemVkKSBhcmUgdGhlCm1vc3Qgc3RyZXNzZnVsIGZyb20gbXkgZXhwZXJpZW5jZSBhbmQgYXJl
IGFibGUgdG8gc2hvdyBhY3R1YWwgb3V0Y29tZS4KCj4gCj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6
IEFsZXhhbmRlciBMb2Jha2luIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPgo+Pj4KPj4+
IEFsc28gb25lIHRoaW5nIEkgYW0gbm90IGEgaHVnZSBmYW4gb2YgaXMgYSBwYXRjaCB0aGF0IGlz
IHJlYWxseSBhCj4+PiBwYXRjaHNldCBvbnRvIGl0c2VsZi4gV2l0aCBhbGwgNiBpdGVtcyBjYWxs
ZWQgb3V0IGhlcmUgSSB3b3VsZCBoYXZlCj4+PiBwcmVmZXJyZWQgdG8gc2VlIHRoaXMgYXMgNiBw
YXRjaGVzIGFzIGl0IHdvdWxkIGhhdmUgYmVlbiBlYXNpZXIgdG8KPj4+IHJldmlldy4KPj4KPj4g
QWdyZWUgQlRXLCBJJ20gbm90IGEgZmFuIG9mIHRoaXMgcGF0Y2ggZWl0aGVyLiBJIHdhc24ndCBz
dXJlIHdoYXQgdG8gZG8KPj4gd2l0aCBpdCwgYXMgc3BsaXR0aW5nIGl0IGludG8gNiBleHBsb2Rl
cyB0aGUgc2VyaWVzIGludG8gYSBtb25zdGVyLCBidXQKPj4gcHJvY2VlZGluZyB3aXRob3V0IGl0
IGluY3JlYXNlcyBkaWZmc3RhdCBhbmQgY29tcGxpY2F0ZXMgdGhpbmdzIGxhdGVyCj4+IG9uLiBJ
J2xsIHRyeSB0aGUgbGF0dGVyLCBidXQgd2lsbCBzZWUuIDE3IHBhdGNoZXMgaXMgbm90IHRoZSBF
bmQgb2YgRGF5cwo+PiBhZnRlciBhbGwuCj4gCj4gT25lIHRoaW5nIHlvdSBtYXkgd2FudCB0byBj
b25zaWRlciB0byBjb25kZW5zZSBzb21lIG9mIHRoZXNlIHBhdGNoZXMKPiB3b3VsZCBiZSB0byBs
b29rIGF0IHBvc3NpYmx5IGNvbWJpbmluZyBwYXRjaGVzIDQgYW5kIDUgd2hpY2ggZGlzYWJsZQo+
IHJlY3ljbGluZyBhbmQgdXNlIGEgZnVsbCA0SyBwYWdlLiBJdCBzZWVtcyBsaWtlIG9mIHRob3Nl
IHBhdGNoZXMgb25lCj4gZW5kcyB1cCByZWRvaW5nIHRoZSBvdGhlciBzaW5jZSBzbyBtYW55IG9m
IHRoZSBkbWFfc3luYyBjYWxscyBhcmUKPiB1cGRhdGVkIGluIGJvdGguCgpPciBtYXliZSBJJ2xs
IG1vdmUgdGhpcyBvbmUgaW50byB0aGUgc3Vic2VxdWVudCBzZXJpZXMsIHNpbmNlIGl0J3Mgb25s
eQpwdC4gMSBvZiBSeCBvcHRpbWl6YXRpb25zLiBUaGVyZSdzIGFsc28gdGhlIHNlY29uZCBjb21t
aXQsIGJ1dCBpdCdzCnByb2JhYmx5IGFzIG1lc3N5IGFzIHRoaXMgb25lIGFuZCB0aGVzZSB0d28g
Y291bGQgYmUganVzdCBjb252ZXJ0ZWQgaW50bwphIHNlcmllcy4KClsuLi5dCgo+Pj4gSnVzdCBh
IG5pdC4gWW91IG1pZ2h0IHdhbnQgdG8gYnJlYWsgdGhpcyB1cCBpbnRvIHR3byBzdGF0ZW1lbnRz
IGxpa2UgSQo+Pj4gaGFkIGJlZm9yZS4gSSBrbm93IHNvbWUgcGVvcGxlIHdpdGhpbiBJbnRlbCB3
ZXJlbid0IGEgaHVnZSBmYW4gb2Ygd2hlbgo+Pj4gSSB1c2VkIHRvIGRvIHRoYXQga2luZCBvZiB0
aGluZyBhbGwgdGhlIHRpbWUgaW4gbG9vcHMgd2hlcmUgSSB3b3VsZCBkbwo+Pj4gdGhlIGRlY3Jl
bWVudCBhbmQgdGVzdCBpbiBvbmUgbGluZS4uIDopCj4+Cj4+IFNob3VsZCBJIHBsZWFzZSB0aGVt
IG9yIGRvIGl0IGFzIEkgd2FudCB0bz8gOkQgSSByZWFsaXplIGZyb20gdGhlCj4+IGNvbXBpbGVy
J3MgUG9WIGl0J3MgbW9zdCBsaWtlbHkgdGhlIHNhbWUsIGJ1dCBkdW5ubywgd2h5IG5vdC4KPiAK
PiBJZiBub2JvZHkgaW50ZXJuYWxseSBpcyBidWdnaW5nIHlvdSBhYm91dCBpdCB0aGVuIEkgYW0g
ZmluZSB3aXRoIGl0LiBJCj4ganVzdCBrbm93IGJhY2sgZHVyaW5nIG15IGVyYSBwZW9wbGUgd291
bGQgY29tcGxhaW4gYWJvdXQgdGhhdCBmcm9tIGEKPiBtYWludGFpbmFiaWxpdHkgcGVyc3BlY3Rp
dmUuIEkgZ3Vlc3MgSSBnb3QgdHJhaW5lZCB0byBjYXRjaCB0aG9zZSBraW5kCj4gb2YgdGhpbmdz
IGFzIGEgcmVzdWx0LgoKSGFoYSB1bmRlcnN0YW5kLiBJIHVzdWFsbHkgc2F5OiAicGxlYXNlIHNv
bWUgZ29vZCBhcmd1bWVudHMgb3IgSSBkaWRuJ3QKaGVhciB0aGlzIiwgbWF5YmUgdGhhdCdzIHdo
eSBub2JvZHkgY29tcGxhaW5lZCBvbiBgLS12YXJgIHlldCA6RAoKWy4uLl0KCj4+IFllcywgSSdt
IG9wdGltaXppbmcgYWxsIHRoaXMgb3V0IGxhdGVyIGluIHRoZSBzZXJpZXMuIEkgd2FzIHN1cnBy
aXNlZAo+PiBqdXN0IGFzIG11Y2ggYXMgeW91IHdoZW4gSSBzYXcgc2tiIGdldHRpbmcgcGFzc2Vk
IHRvIGRvIG5vdGhpbmcgLl8uCj4gCj4gVGhlIGZ1bm55IHBhcnQgZm9yIG1lIGlzIHRoYXQgaXQg
aXMgbGlrZSByZXZpZXdpbmcgY29kZSB3cml0dGVuIHZpYSBhCj4gZ2FtZSBvZiB0ZWxlcGhvbmUu
IEkgcmVjb2duaXplIHRoZSBjb2RlIGJ1dCBoYXZlIHRvIHRoaW5rIGFib3V0IGl0Cj4gc2luY2Ug
dGhlcmUgYXJlIGFsbCB0aGUgYml0cyBvZiBjaGFuZ2VzIGFuZCBzdWNoIGZyb20gdGhlIG9yaWdp
bmFsCj4gaXhnYmUuCgpMb3RzIG9mIHRoaW5ncyBhcmUgc3RpbGwgcmVjb2duaXphYmxlIGV2ZW4g
aW4gSURQRi4gVGhhdCdzIGhvdyB0aGlzCnNlcmllcyB3YXMgYm9ybi4uLiA6RAoKPiAKPj4gWy4u
Ll0KPj4KPj4gVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgcmV2aWV3cywgc3R1ZmYgdGhhdCBJbnRl
bCBvZnRlbiBsYWNrcyA6cyA6RAo+IAo+IE5vIHByb2JsZW0sIGl0IHdhcyB0aGUgbGVhc3QgSSBj
b3VsZCBkbyBzaW5jZSBJIGFtIHJlc3BvbnNpYmxlIGZvciBzbwo+IG11Y2ggb2YgdGhpcyBjb2Rl
IGluIHRoZSBlYXJsaWVyIGRyaXZlcnMgYW55d2F5LiBJZiBub3RoaW5nIGVsc2UgSQo+IGZpZ3Vy
ZWQgSSBjb3VsZCBwcm92aWRlIGEgYml0IG9mIGhpc3Rvcnkgb24gd2h5IHNvbWUgb2YgdGhpcyB3
YXMgdGhlCj4gd2F5IGl0IHdhcy4KVGhlc2UgaGlzdG9yeSBiaXRzIGFyZSBuaWNlIGFuZCBpbnRl
cmVzdGluZyB0byByZWFkIGFjdHVhbGx5ISBBbmQgYWxzbwp1c2VmdWwgc2luY2UgdGhleSBnaXZl
IHNvbWUgY29udGV4dCBhbmQgdW5kZXJzdGFuZGluZyBvZiB3aGF0IGlzCm9ic29sZXRlIGFuZCBj
YW4gYmUgcmVtb3ZlZC9jaGFuZ2VkLgoKVGhhbmtzLApPbGVrCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
