Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0BF557FB1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jun 2022 18:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6083424FB;
	Thu, 23 Jun 2022 16:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6083424FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656001483;
	bh=wfouYG40+fi2mXxZO6O0fm+IKwiyIXSXBw6BRZr54v0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nI4MObFh0MIZ8ScMLfX9Ds+hBeNJXjZO18isVl/36CPXyf6JXIUKwkzYXYSsUmcBc
	 ipU/CmwTJ/WE7sI7mRM+aIm5kOqqt8n0s3N4f6dOuahhU1TZVt+dG5iRDgJQkRf9MP
	 sd6uot3y5ya4fpE6rIDJ244djslHuTKeZ0+URh9Yo4PmXl99xQ4Pe+A1UusqdDOfEb
	 Mf1YXoieOo9gCoojxju1w+EBYTgRcvGRi7fdpb4+mvMcaI1Gbu7MRZ+wMBcUbC2lTd
	 UtIV4vjMg1hlYtE0CMKhM+wHtOuN6IgbnSZHh2tLLQ7pdWt8z6PjW7cb53wifxZdqe
	 AqkDJnimNpcjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5biKs6-132Ap; Thu, 23 Jun 2022 16:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FC82417E7;
	Thu, 23 Jun 2022 16:24:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FC82417E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 808261BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 16:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 555CC61411
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 16:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 555CC61411
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32soH0h2zW-L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jun 2022 16:24:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 626F961407
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 626F961407
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 16:24:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="261199532"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="261199532"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 09:24:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="592779477"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jun 2022 09:24:35 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 09:24:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 09:24:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 23 Jun 2022 09:24:34 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 23 Jun 2022 09:24:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kvu6T1DGuD0qhCQDdmKh8mOwji5cJY5SZn4iyhtOxF0yhxDSz9vyj33m0w0VmuqqiIKoOuh9jrAulMxgpBZrFqKcOHG11cXxKQGNdWyoqsOAztbCltAnx5E9ddS/VTYsU98Lri6VH4FzLcZ76zBkp2mK+cGWeWx/fVCuvrQ3SblcudRBoDxBIvfdr0k17xeQRp2Cru0DRcX+1vj6H6Vi0PaowzHlNRplkmKMnEpJKvH65b3rib6uroOCdYWCb6mTK/fq9XnX24KNB/8Aek9yAaIJui5l3nrvNM09EgG4cPdCo9o7ZZm5Da0xASPl9QdvPcVPTC1sCET3udINblW1WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tRWmen4KCB+Z00ebTCp4lqaxpozOtBMd1TDawcpvyCY=;
 b=HJJMiEOIxputa3mb+k2sPgV5RR4P8mpt5Hwg7YpminwvjbOuuwWcB5INfIcHZe9+vy/bzgIBMXHEuA/aDR4byiL3othnlrs2pEFcCxxYpXC3drXuYPLrAG3X8WIs19djBrIM3RFl8W9x0HzkUqaTkdPQ12lDItGevazZ0nvP/biX06VNryUqUV0vNmFpTafbrcSCOEMWULwH3t7vRlT52IdNNjUGo9hn+WxtsfmBfM4UoW8f3YHK3Yl+ZzMCeS2Mo8QmqhTQyfQjO/RYmS/RDr4EEgYkqiXUQhBQVK9VeHoHziMVUA1EwP4X2qM7Knw4pmr2Up6YmiaV541HgJkxbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Thu, 23 Jun
 2022 16:24:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5353.022; Thu, 23 Jun 2022
 16:24:33 +0000
Message-ID: <fcef8b1b-9610-3927-b37c-d24253705fd3@intel.com>
Date: Thu, 23 Jun 2022 09:24:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220623134102.166331-1-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220623134102.166331-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW3PR06CA0003.namprd06.prod.outlook.com
 (2603:10b6:303:2a::8) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec20f46e-ddc5-4dde-f524-08da5534db25
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iF6oM70HRytYMKtOtkejWUv8YI+C/NsniEb8Hv2Qn79uxD80Pe/Ar4MPWE/BjoUGDFA68y4RUtI6xy3mlwp2+VoUQHASekGsC2mUINNy8CcjH7zJvTpEJhAITyOkgWvJ2eG89uywIxmuZYQ2SABv7MPRetq1YtS91ia8h2ffsXO+2g1LfivzsoYNbB0xh1FTvplVSxAB6xfpgY063OADIgbg2eAkaizcd7hCtkHBklUDTTLBKca+z+V5lRrWyXCGj0U9pt+rLeuGmt+CVwpn6MmWDcdXfmaDtqyMNiiipLggwTnrBFoZZghouOUdZ3gj+f9TNoU6fpEQ9oHBJ1L+iBX7afcxW79tBb9ZI4DulU/R1W/NshG9keCQosoJ5C1mQ1zY5fHtq+7Z8zMpQJDkKYUi8u265GSePYq8PmDKYRwdqzj19gHD+xUN+Y2lLG3NmnF0SKkRKa7sKf/WdDAwKAmJr+ygds408BsIuSq9uQtAgP416vt3iCfnM3z6XE+YlfLzYTKTMip0fvX99GpFzKpI9fDD7wOkdxD5BpOEJZItyVF6FX9B+Ljm+ihmicOsODleQTlKrV67njClsS38IFYZ+Lt+gAcLV1GVBZ+5QHv3Oj+WpM1vrzMFh51FGzWqIo8cMDDwzSAgDFGevvJYE8X5ZpZMOpsMfKPC6nG+2UrOeMhvpvuUygt0esRwPWzcQ83gFBsFJs6jVMbm9t21XVCP09/FVuBARKcc6uVX8BrFWUUC3Okbg+0fV4Vovs88+HQPN1RKehiOJdR6JP+xwEXJ0XKfk93RALe9UScspUrtw6YQUocZsi1kL+FGsnpUhs1siDts2w8Y5BvdsFVgjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(396003)(366004)(376002)(39860400002)(36756003)(2906002)(66946007)(8676002)(66476007)(31686004)(6512007)(41300700001)(478600001)(6486002)(53546011)(316002)(8936002)(66556008)(5660300002)(6506007)(83380400001)(26005)(38100700002)(2616005)(186003)(86362001)(31696002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUZZMGpJUUk5ZDBhMnN6YlErNmZOYVgxUHhUMGhrK1pMOCtuTjB5S3pLN21v?=
 =?utf-8?B?N3o3ZUo4a3A2dk5PQnl1T3hJaTdUOVVkTlYrc1BnWm0xZExXbUJpUk5FOC90?=
 =?utf-8?B?aEhLb0grWVZlREtIWW9Wa1N3MFpoQ0VTOGVBNEl6NnJJTFJhd1p1T0xMdTli?=
 =?utf-8?B?Mmh1SUJVblNsQTU4N2pTYkVXNGZKekkzcnpsbWRYREEwdmVaNFRzVlBNZU4x?=
 =?utf-8?B?bDlyZitvZXNBVWJOeGttREcrcDZMa21nUVhsRVdIVzg2dlRZVU9JTm1ZSm5a?=
 =?utf-8?B?UlRnQmZLd2dwdXNPbW90WWg0TFV4OUFmRE5GdWF3OWIwTlVHdGhJTDNGSUtw?=
 =?utf-8?B?ci92eTRvc2kwMUw3V1E2enRqaE1hc2hDOE1CTFB5akF5UGVDREFRYy96WGxh?=
 =?utf-8?B?MUgvS3ZkTW9lRWtSZW0wNkJDbm91bEZ6Z2gzRVEzQlFvdkFaUjZpUjlzVHBq?=
 =?utf-8?B?VEVBQ1YvaUppcHpJUStzbElXclYzT1FERkxyb09FUEdNb1p2UWhLOThKZzF1?=
 =?utf-8?B?REpVazNvbFdmZTlneHROdTRySmpPMExkN1k1L1pQTnBybm0yZ3pGclVBRDJl?=
 =?utf-8?B?TEhEc202VmF5Z0xKd1FQY0dvNTJmZkhsK09GOTF3WW9BTWZuRUZmT0dCSm1y?=
 =?utf-8?B?NElieFM0S2dYMVZqdTBsZWZaN2hIcUhmTlBnb2hRYkx5M1ViNTBlS1VXeEZy?=
 =?utf-8?B?WUN4OVNwNHlxb2dJUmhKU2M2bFYxZFNvOUdqSnZIM0pKVjJjMnM2clNyKy9o?=
 =?utf-8?B?ay83RmRhN0hOa2QvcVQ1VTJUYldvRmxSbjVPai9VL0VwRXcrZWZsUWxDMFBo?=
 =?utf-8?B?UFZQRUJHMjJQWkxGMUVESTBINmpQMjB0VjgxN3NjellnSWE0SkZ3ekQ1NURL?=
 =?utf-8?B?UHVPM3hZTUlVdS9hMWljeTJ2dmFGM3NXSzVubkowK0hMZGVYdHRGWC93L1V0?=
 =?utf-8?B?MmgyU2dkMUoyZEFwcHYxZGRkbnlZYXRWOEp0VC9LbnBEZ0trSXY0OWdBK003?=
 =?utf-8?B?eWtBUzhvY0hrbEN3emN3VThLVzUrL21KZm9ORjdqTXIzOFlkWFpSNzN0a25w?=
 =?utf-8?B?N0ZxSVhDVnNoWDZUT3N0UmNWQVJ3ZXdCT2JJYUZEY3B3TThuSWlXd0RZQTdh?=
 =?utf-8?B?NjF4cUhYLzZQWEhVU0RDenR4ZTZqWTJjOThNMmNEUUprSlV2ZndMUjgwLzVo?=
 =?utf-8?B?RnArQytoMjdnK1ltWjFRTm1wU0FiWm84NjUvbEJzYU5MZ2FQb0hkTHFublFq?=
 =?utf-8?B?bWIwOGVWUXY0bVJCMUJYNkZFbFFYZENMVDJTSkJrbThTazMzYWNoaHBPQ3hk?=
 =?utf-8?B?czNZWHVDY3YvSHdLZU5nU05HS1JjdG1JSExrTlg3ejFvN1I2ZnZWY1RLZ3Ry?=
 =?utf-8?B?cHFXWlNrVUNWcHNTK1hzRXBqQmk5VGhTUGhNNUVZUEYyQm9paXVkVG01RDBt?=
 =?utf-8?B?QU1jdThJaUxOdFRkV3dQYVphSndaTXVOU3hCdU5XdXYxN2FFNzNHQ2tITkFh?=
 =?utf-8?B?NVlqSnp3cUdsUDZTU05rMVZZQ25tWWVJanEzQkUzZ1RhdkJDcFU4QlNFemlh?=
 =?utf-8?B?TTZ3SnRIKy9TZlREWWVEV2QwamZ2Y3Z2c0ZzbWd1MWNkUXlHbXdWWDBmVTJS?=
 =?utf-8?B?UERoZVk5OU53SGxLM2p6Z1p0RG1lamhmcVlIWVNhL21KbWd1RTVpcUZ2OS9I?=
 =?utf-8?B?QjJkdFpPa3RjVWFLZ3VwYmNwOVUzcWE3Q3ZWcnBERzJsUFhpYkNwSE9DSC9P?=
 =?utf-8?B?bi80NEFFQ2VyWUpEMi81TE9GNW5NYStUYUhuckV0cVBJRHpiRjdUakZQaVJG?=
 =?utf-8?B?c3lrY29WdWxIRG5TeFI5djZNT2dFanV2VFliWHRMVEplbGx5NGkzOVZId0t5?=
 =?utf-8?B?UjRPMjg5dk9JeGtNczhFWkphUVZrRS93TTZnNytuWWRBR2ViWnBOMi9yYUdn?=
 =?utf-8?B?ZGVNN0lhM3plL2xLQVdoaVVyQUE2clFmdHUycTYxU1BwQVlPc2xwM0xCYXQr?=
 =?utf-8?B?UldRaW1WNkhPODQ5NElrZGo5aTdiUitnSmViUlNzbDQ5YWwzUDBrZTZDQW1J?=
 =?utf-8?B?OSt6ZFlnVkV6MXB2anVSWUkxUW5tN3BxZ2sxMnBBMnFaaGlWNDllR3Q4UU03?=
 =?utf-8?B?VlRycTBFK1d3a2drbm5VNXpFZkJzT2tjVkNHcUFpaUR2R1dJbGc0cDR3QzU1?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec20f46e-ddc5-4dde-f524-08da5534db25
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 16:24:33.1267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rz+XuBHMrnsihqAD3a/FELp52Goh7EtgJ8khSWiHMMG0xMj08Ik36jXAxftWitluwmGAOBKyhAOrcuO8AToBKEYZchuLXFt9UQCmHD7omuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5776
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656001476; x=1687537476;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qI8a+n+WMMv1PUO4lPOExxOBNJth+hXYgd3Oox8lVdk=;
 b=mrjmJFn50sdbusQY8SwW92ZMP9syyCCYK9RiYim6joGZB/yIAMWo4pCC
 OYNrUtM92aBpTZjomcIJq5lHNRlNyPz6l7u65C6Wm8fVwLxKF0EdkspA9
 U2Ai8AipgwCriUNGSoqRo22WTGehGL9blq33Rc9Le70ZbMTJynsn5bNhz
 Muv7bU4da4+bjl+si2D3sOTH7GDUawbSC+p+WJGZcCfjyvmtL85nXhQf1
 OYGnw7qyuPB/t4kZw69ypptAm6rZe+YKKNplkbAOTuGf2E9GaUv6Df8Ra
 4voDV6t0B+/QeUYkLohSb7A2r106X/7GPh1LSwJaaCtC4TeTki9j0MC8v
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mrjmJFn5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next 1/2] ice: add i2c write
 command
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA2LzIzLzIwMjIgNjo0MSBBTSwgS2Fyb2wgS29sYWNpbnNraSB3cm90ZToKCjxzbmlwPgoK
PiArLyoqCj4gKyAqIGljZV9hcV93cml0ZV9pMmMKPiArICogQGh3OiBwb2ludGVyIHRvIHRoZSBo
dyBzdHJ1Y3QKPiArICogQHRvcG9fYWRkcjogdG9wb2xvZ3kgYWRkcmVzcyBmb3IgYSBkZXZpY2Ug
dG8gY29tbXVuaWNhdGUgd2l0aAo+ICsgKiBAYnVzX2FkZHI6IDctYml0IEkyQyBidXMgYWRkcmVz
cwo+ICsgKiBAYWRkcjogSTJDIG1lbW9yeSBhZGRyZXNzIChJMkMgb2Zmc2V0KSB3aXRoIHVwIHRv
IDE2IGJpdHMKPiArICogQHBhcmFtczogSTJDIHBhcmFtZXRlcnM6IGJpdCBbNF0gLSBJMkMgYWRk
cmVzcyB0eXBlLCBiaXRzIFszOjBdIC0gZGF0YSBzaXplIHRvIHdyaXRlICgwLTcgYnl0ZXMpCj4g
KyAqIEBkYXRhOiBwb2ludGVyIHRvIGRhdGEgKDAgdG8gNCBieXRlcykgdG8gYmUgd3JpdHRlbiB0
byB0aGUgSTJDIGRldmljZQo+ICsgKiBAY2Q6IHBvaW50ZXIgdG8gY29tbWFuZCBkZXRhaWxzIHN0
cnVjdHVyZSBvciBOVUxMCj4gKyAqCj4gKyAqIFdyaXRlIEkyQyAoMHgwNkUzKQo+ICsgKgo+ICsg
KiAqIFJldHVybjoKPiArICogKiAwICAgICAgICAgICAgIC0gU3VjY2Vzc2Z1bCB3cml0ZSB0byB0
aGUgaTJjIGRldmljZQo+ICsgKiAqIC1FSU5WQUwgICAgICAgLSBEYXRhIHNpemUgZ3JlYXRlciB0
aGFuIDQgYnl0ZXMKPiArICogKiAtRUlPICAgICAgICAgIC0gRlcgZXJyb3IKPiArICovCj4gK2lu
dAo+ICtpY2VfYXFfd3JpdGVfaTJjKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNlX2FxY19s
aW5rX3RvcG9fYWRkciB0b3BvX2FkZHIsCj4gKwkJIHUxNiBidXNfYWRkciwgX19sZTE2IGFkZHIs
IHU4IHBhcmFtcywgdTggKmRhdGEsCj4gKwkJIHN0cnVjdCBpY2Vfc3FfY2QgKmNkKQo+ICt7Cj4g
KwlzdHJ1Y3QgaWNlX2FxX2Rlc2MgZGVzYyA9IHsgMCB9Owo+ICsJc3RydWN0IGljZV9hcWNfaTJj
ICpjbWQ7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfY29tbW9uLmM6IEluIGZ1bmN0aW9uIArigJhpY2VfYXFfd3JpdGVfaTJj4oCZOgou
Li9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jOjQ4ODU6MTU6IHdh
cm5pbmc6IHVudXNlZCAKdmFyaWFibGUg4oCYaeKAmSBbLVd1bnVzZWQtdmFyaWFibGVdCiAgIHVu
c2lnbmVkIGludCBpOwoKPiArCXU4IGRhdGFfc2l6ZTsKPiArCj4gKwlpY2VfZmlsbF9kZmx0X2Rp
cmVjdF9jbWRfZGVzYygmZGVzYywgaWNlX2FxY19vcGNfd3JpdGVfaTJjKTsKPiArCWNtZCA9ICZk
ZXNjLnBhcmFtcy5yZWFkX3dyaXRlX2kyYzsKPiArCj4gKwlkYXRhX3NpemUgPSBGSUVMRF9HRVQo
SUNFX0FRQ19JMkNfREFUQV9TSVpFX00sIHBhcmFtcyk7Cj4gKwo+ICsJLyogZGF0YV9zaXplIGxp
bWl0ZWQgdG8gNCAqLwo+ICsJaWYgKGRhdGFfc2l6ZSA+IDQpCj4gKwkJcmV0dXJuIC1FSU5WQUw7
Cj4gKwo+ICsJY21kLT5pMmNfYnVzX2FkZHIgPSBjcHVfdG9fbGUxNihidXNfYWRkcik7Cj4gKwlj
bWQtPnRvcG9fYWRkciA9IHRvcG9fYWRkcjsKPiArCWNtZC0+aTJjX3BhcmFtcyA9IHBhcmFtczsK
PiArCWNtZC0+aTJjX2FkZHIgPSBhZGRyOwo+ICsKPiArCW1lbWNweShjbWQtPmkyY19kYXRhLCBk
YXRhLCBkYXRhX3NpemUpOwo+ICsKPiArCXJldHVybiBpY2VfYXFfc2VuZF9jbWQoaHcsICZkZXNj
LCBOVUxMLCAwLCBjZCk7Cj4gK30KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
