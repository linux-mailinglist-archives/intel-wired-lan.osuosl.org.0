Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B631D7242EC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 14:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FCE3415AE;
	Tue,  6 Jun 2023 12:48:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FCE3415AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686055682;
	bh=ifveiCHPDF3F5mHBQIZ0d95qbcDB26bpYC5ZY/8fAuc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TeOlYmN+7BnqG3HA7J+y3JB5nQMv8bOlDXsT67yPWA4vIQtmk0lIjFqhI08Pj2Bgp
	 kTLQ9GmxfzjaNzXbxQbEoJfi/18HW+BQqMmmvkYNP/WltICeW/Mw7TqffxWO8IyjuL
	 cMsFix/eez6LLgh4ixYM6GukfZm5r8GGsLjDZd9l1hmZbeK7saj/dbTogfOwVl1S+q
	 GkEmOcI7eie84b840wZRHzhSLQOka3baHN92xjE9st6humfofiOTZ6chevbeDYgKkM
	 aYXaua7vFN0aD4+njAFak45TtiTGtez54kOHD1hiefBbFyzqGBQIkAF4fKad/zwVr/
	 A+o9/e92WGITw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0o-vmgRvJbDF; Tue,  6 Jun 2023 12:48:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF3BD40470;
	Tue,  6 Jun 2023 12:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF3BD40470
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0F461BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 12:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF59F81E74
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 12:47:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF59F81E74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u_WS50NTuKnx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 12:47:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E56A81970
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E56A81970
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 12:47:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="346257035"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="346257035"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 05:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="833211908"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="833211908"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 06 Jun 2023 05:47:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 05:47:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 05:47:32 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 05:47:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQbVrA7DB4qN+OaOVX4J29gBn/hH9LZKQQURBqqj7w2C7usOFHxeGYjfrFwyfzZ2W9jMas6UvKUFE2uW4B00bH5MQOHm+lPeouiqkesBPCmkRo8H3Nx3UrBv0eW9Fa3B01cEnIx5VY6qpiqDQC/rSG+CdPE8iuDHEwiWdp5xI6yFY0LVCebvNr3QjHNZRO9Rs0E6G2DNyBFSsCD/X0iTB0GfX4+i+2yBdSnscOZeAtpct0kz/zvQ+xBLMjlHan/bq4ALqU14RAlYeiSAdFwhOxEi+7adnFLI1ZkZCvQIpp4ZSgZr7o92IWdUNw/pT4ajWLTcEhrwZS2FLPj9wfLCRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HQESu2kqYqmMJIb3n1oi8iSv/9O8t1gJkj3tv3pNlU4=;
 b=F86nxhtjNmL8qWO7uF4p+27LoQLOGJnL5Lx3Y+NCm2cirkZAKtE22v1P2h41K8BtwsR9tqGOoeLj+W5XN1SSQ4tJbiFJ0okP3WA++N3AlJcgmaomABORcQy9IfizMLu3Qw1VJv/d1NRrSeVDSveazqFUbbqoeI8pPvN7J5BTe2QhFZrV9l8pNsP9B7sBaaqgxkpSgtqIsIE16nz9ktJfFFdBrBU80jh6fXQ8yUlUV9AGkYnBLGXeTIVRih3IATGFLHzOj32T3YlLgz9SNMc//FE/wo3F+cKPCfkKYG/XmvxxWyXAoj8dY5sSbm5/fTJTyA7QYYdL0RLt+jyI4GP88w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 12:47:30 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 12:47:30 +0000
Message-ID: <0a9223c1-702a-eff3-7cdc-340791a9dcf4@intel.com>
Date: Tue, 6 Jun 2023 14:47:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Tree Davies <tdavies@darkphysics.net>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
References: <ZHv7EDzikZPikoRh@oatmeal.darkphysics>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <ZHv7EDzikZPikoRh@oatmeal.darkphysics>
X-ClientProxiedBy: ZRAP278CA0012.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::22) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH8PR11MB6753:EE_
X-MS-Office365-Filtering-Correlation-Id: 799ef70e-e99a-47d5-df5a-08db668c3062
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zs3i3QSnpvNBleZ3rHvYxbGItWZ2e6QV5sAlJyvZRCf0IaxFPajUoR7ELMKHQCI1qCKxeYRjPF/GVs/N/FWQmYnB/HH5r+tk/lKTVfdT/aLniJxKGzoSnQ6eQb6vaLWCkuFGif2TKHSPRGlmwPw9Jm2aK+RDIoZOup/FmABuFZiesRa/pu63ks19CV6WVplNReKYI2C5NME0HA8kXV9CHcH08ImCYl1++jV/S/SWho5LUsdDvk5rffuouFCRg56FzrRM2VdmBOINPVonesfYKmSfsH2OZJeiBdFWA3u0ULd4ULPOq9fZc2WCUk+Z+sosxO7U4yE6GJc/vYknTFICAs8IEKi+/GrzGf4vEBEWq5c0kq+6J3+EPJT/1etiu9mXphb4XnXImScfSb5lVJC/mkixgwaeadCqFcfQ1xXovgZ0A+h2hmFvP0OkCK5lmrjUJcb8sVanaKoiGAcQmOtdW7j/4lcelUM3CzlG9QTEwUGHs08APmaBvS8F7l1pBX5pOIlzhaylXdiXUZO5DeGuQBP1+x+N2lBONapAsd8FpTakdM9cJW7SpW2r6PASYHSevrJQB23QvaTcW9P1OesPugaw0dkvDHkz+W3Vc/4cocwZ/U0ruzYjczL+KbkIxM7r
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199021)(478600001)(2616005)(6486002)(26005)(53546011)(6506007)(6512007)(6666004)(966005)(186003)(31686004)(83380400001)(82960400001)(41300700001)(316002)(38100700002)(5660300002)(8676002)(8936002)(66476007)(4326008)(66946007)(2906002)(4744005)(66556008)(31696002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3FZT3R0VENWUzJTRHlidmh6Ri9XYlhzNnBVeS9KS2lFS1JESUczQy9DL2M0?=
 =?utf-8?B?SWZ1blV4Nm5raWpPZVF5NnZuTE5UejFrVjBhS1RHa3lSWUtuV2Y5QWpnZkFz?=
 =?utf-8?B?Z2NUc3pMME9ON0V4UTJxQ3ZaVFNrQitjYmtLZkVQNHU2MTdidVNKVG5jWWdj?=
 =?utf-8?B?aG5KNjgxWERVYmNPYVhXbGxaUEpuSExHcUpNOUNGUU5BMVdVREJ1TCtwZVQy?=
 =?utf-8?B?elJxWmxWNFY2RzZ5bndQd0Z5QVZVNW5CbVVSY1lRTU5BTXp1YlpsYjUxSTBZ?=
 =?utf-8?B?WmRjamlXMmxwR1pOZmpSZU8xNHJwOEc1dmRocll2eEF2RnFySHYzb0ExLzNz?=
 =?utf-8?B?WnJUeUZVaVU2bWlHTnFJRng2SXFYRzJLeUFUTFJtVVpPZllURTQyYldqVmpR?=
 =?utf-8?B?Y21ONzJiRC9QSmZBNmJpcmJkNm5aak9rdDQ0RGl0RWFobm5ESnVTV2p6ZTJF?=
 =?utf-8?B?U3ZpaHdsUE5uc1dydjRmSjExWVQrL09NL0lhODdzUCtuRThxWnFOOW92T1pK?=
 =?utf-8?B?VDBsVnUvNEwyQXR6Nml5dmNjb3cyblNJK1Zndkl5ZDdRaUE4enVjYnRxNjZa?=
 =?utf-8?B?S1FzcmVMN3g0eHlxNUJQbXBiYTZhSnFRbktOcVVraFpRRDNWR1RGd2hUcGYv?=
 =?utf-8?B?Z3VFem91TFkzdG5BaFliNko0bEppMkx5VkZYYWlyQWpIc3RwNmRDcEdrYTVB?=
 =?utf-8?B?WHVZKytyRi95MVJLYVA3NFpyU3c3bmJmNzc3S0I4Y2ExeG02R1VLR2ZoalRT?=
 =?utf-8?B?cmM3UksyZkdDbUtvQmZnb3dMbjYreHFWM2NzMnZ4bWFPM0NhSGlkVysxTjNn?=
 =?utf-8?B?K2swMVNESjdnRTR2aFIrYThYZVRoSTNDNlRKT3dBdkE0TjZQV1ZHVGkxbEYz?=
 =?utf-8?B?YUFCcFJMV1V2L1o4QyttdGE2Q2FQS24ySE1UeXI0a1Q2eWhtUHlQRWZYdk51?=
 =?utf-8?B?c3FNRnk4YWs5d3Z2cEV3aDZtRjVHNVI2SEVNNUlxa3FxS2lYbFBZeDYzWGRi?=
 =?utf-8?B?K3pKQzFnQkFxRmhYQTNsYXpPcUx1UG9uR0M5dldOVlNYT09BR2hMbmIzc1FE?=
 =?utf-8?B?akNjOXV2djR6K243bHZxMnltTzV2aE9iT3pTcnRYM0hSR0dGY1F6cEc2Z28r?=
 =?utf-8?B?Yk5KQWdYTUs3N01kdkpqQXQ0b0IxRjBrN3FCek5tSCtHYkNORGx0dE5QY3Ur?=
 =?utf-8?B?NEVkOGkzalZGKzFNRnlZb0F5dGtCRHNIc1hPdHNZOXBENTl2R2Zycms1c09w?=
 =?utf-8?B?WjFqM3AyaHJTcmhuMEYzWmlPblhzS0dPMG1IckVnTlpWenBWSlI4NUxNRzdJ?=
 =?utf-8?B?WU5qRUMxaExXZTJqcFdKUS9waVJ4ZXV5U255TXU0dENKV0oybEdpM0htaHBq?=
 =?utf-8?B?Mk5UV0xiMmtiTklZNHhVSnNnampKV2djSHhhMnNWMnR2TzlwQWdtTVZQTlBB?=
 =?utf-8?B?RGZrdnZwNW02REp4T1djc2lkWFdGSzhQQXpiRzFIaXU0MlNXdUNscjZtdmF5?=
 =?utf-8?B?UFdHUVVDTGRpWDJ0Uk5valNlVStuN1dtQmUwTU9QNFg1dzBMRlNtSzlJUFNB?=
 =?utf-8?B?NlJwR3BGR2x0RWdyenZJMXhZRUZwdEVWS2E3cm8vRGMzQTk5V1Z5SnJXVDk4?=
 =?utf-8?B?TVhLV0NjNW9oYS8xa092aUVTODV6OFBZSWNlYnVIcThOKzl2TmFCM1RwZmZ4?=
 =?utf-8?B?ZkFrelFzaUxoSFlVSnk0TC9idmNVcWJYc0FQb0h1RVgrOTkrWWRZbVMwTWEw?=
 =?utf-8?B?cFN1NUVaYXJ5Sk5OYjJEK2VpaU9ETFNRaFRzWGpaQUZVdXo5YllLRG1DVXpT?=
 =?utf-8?B?WUFtajcwbG9DT1AwYkdzTnh6T2IzTDRMRCtBdEpWMnpHY2NhSk1SMDdIbWll?=
 =?utf-8?B?Yk5Mb2EyZ0Q0K3BFQW9tVld1eEIyanBDclF0cElyWVU1RnZJQ2lva2x1WklN?=
 =?utf-8?B?NVpWMXdWY2FVWGtGR0FCZWpsTDRRcnhOeXord2hDQVB1M0pqRGxHaTBxbm53?=
 =?utf-8?B?QW9OTnk4MVB4SG55ZmpLdWpxZUJjWUoyUjdiNEJSVEtQQ0twQkRSL0JsNk5W?=
 =?utf-8?B?SCtPRzhJTUJjcHlCMnpvUWwzRndYRUpWQzdPcVpzRnpDN2lEMHlNSEhzS2Mv?=
 =?utf-8?B?OWpHVjNTdS9BSXFrMk4yekZMZEZIMDVUbXI5ZUt6dTNyMVJNY2Z6QWNDQk5p?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 799ef70e-e99a-47d5-df5a-08db668c3062
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 12:47:29.9556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IP02BSBG8FUjIj3uH7rZ1/cljigJ7xu3uZ1aF/miHCgKKxR+5iKZhz9IfWaqVBOVcPY5hs1dQi56qytlnY1ozzRgsmHV0easHyEAOEg9Glo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6753
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686055674; x=1717591674;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gR36ITDDKQoqtYhYluzqHiQDyaA9y7i+CxIJmiFhGag=;
 b=jjVRjIG4wLLrPlz7jPnv3cTFZccKq04HY1Xly160VxSdp0sNdogRqBLh
 fXmZCXFPCN0N8W2NptDTEjkxIwSRODSdUnJikFUcAOrwe5XF9i9ehYKnh
 78IA42agpFkC4/Y1LRYci3BvFBrJi7/nXgB38m1IaWFxytSi+EHuAZWlP
 1DUUi43WgYjbMfZyw7OxTwvZKvCJsAXbe5U8CisgyKu6weKF/9BhOgWp/
 /vjjU32IpOAfiQgr80H0ZgA42kbWdgZKtqU+l+ICykJWU1JHiwNzYEjXW
 FWvaX+GaznoOTz4Xo/RIyoAOMTMfgrhvSrHq2j/fEMrXXYRpiBMIGoSuu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jjVRjIG4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [Patch] net/e1000: Fix extern warnings
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/4/23 04:46, Tree Davies wrote:
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Hi Tree,

next time please send your contributions (applies to all kernel related 
mailing lists) as text only/paste it into message.
That way it will greatly improve readers experience and give you more 
chance of not being ignored.

Considering just content of your patch, it is fine,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
