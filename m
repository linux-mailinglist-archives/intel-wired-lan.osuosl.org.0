Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FA6731490
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 11:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5460B418ED;
	Thu, 15 Jun 2023 09:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5460B418ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686822819;
	bh=/jkXdLg0SQBAtIRZCWc2q49lNeZqS3OCFF1sBJtWyzs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j1weCp61x+IRmIy97Lx6BGQBI2zwmxbsbcLkxPsyUxdtPAq2eQGNWl4sbnzANEVmr
	 RLfK423zmFZCmgeFnsdcsjv9Mm3bE2X4R4tQu9zC1IJMrIc4L5hyOmn5KEdVLGzMb1
	 QjX0G8JSF/UyM7z4V4jPu56V9lCvoHs9aItlX2gsv5VE1qZSBieMR5OnkbTJoN1YmG
	 v6YNAYeo/n6rM+BnCRO05nvYIAwuq04dBsawXx85QdGlykBuMwmg3NNoHfgon++vmT
	 alTN+i0ypZ5pLzY5/I9+bObwMcOpo8U9JXNcpqk4x+/0W59XJkumu5DR/4McDVECqW
	 bp5hb+aJ0OHwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mU53fiBsPi57; Thu, 15 Jun 2023 09:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 359CF401B7;
	Thu, 15 Jun 2023 09:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 359CF401B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5C8F1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 09:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 870D3404F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 09:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 870D3404F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DjsM0xT0kAf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 09:53:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 154F5404F4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 154F5404F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 09:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="343568784"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="343568784"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 02:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="715566809"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="715566809"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 15 Jun 2023 02:53:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 02:53:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 02:53:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 02:53:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ATaH2v5Jkrx2G+QqNipcGJGMYDu/+c8YzFv4HYx/90oPEwt+rOs0K88DSzSxN8KU+jbEqNjkoz0cROg6b9EXovtyXANAYlKArc6CVVRkb+kwehDsRZRSJTr1BFK83lBht6qkwp3c6xZ4OzbySAoU2e7I5DCggsyl7tGxC7/FJpUf+Ig7bpo0gqo1JtMFrMQ3iWa3SaNMbYAQysi2GwDTMJXkG/BTElJInpvR06eI78Q84CHD6WfU4brhzhOPfe/zoZfRlxwzzCTgzkE67kOZkqaaZniiDl6ZRrnf0Vk+TAwZ8q65BpIQNAreoLDo+JnY3VwZD/dOTDK+Dslqs/708g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJiYtFjLvvrEdL83r1lqr9Aa+/FJtBpCogxhRzpl00k=;
 b=f38nFyNa5C+OdBKHwNrOfqwkiHm0DVd59vZKcfh2wQuOIIlI05Zsp6WD4KQby4vHET2z+WU5QwYkRHYPXF+5DvcU63H1XWKYFeTrhCdrs+QvcweLUIN44d5m1H+HP3UJ0cWIxS5TGsb2a3YOdeOb/DDm0pxYUX8rzDQrHjvZAS+Nn+/YeBUXMzoF4YfRIbHLnwXnD0z8WNCKW0KBKYOeE/gr3vOWSRN0x59I6q4W/r9ztmhchHn37/7bIBK+8rUbp6RUL9N8vlXto4AVpi8OigV/hlGWy7eQC6eUq+gp0t1Qr5BuzWLTd153HmbFzMB5YzV1JNN9GCH2xroPmQnRxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by LV3PR11MB8460.namprd11.prod.outlook.com (2603:10b6:408:1b4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Thu, 15 Jun
 2023 09:53:27 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Thu, 15 Jun 2023
 09:53:26 +0000
Message-ID: <a7a4091b-01fa-9c91-1371-e3e703f2d4f3@intel.com>
Date: Thu, 15 Jun 2023 11:53:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230613141253.57811-1-przemyslaw.kitszel@intel.com>
 <cb2b26e2-a716-eddd-c182-744437591d66@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <cb2b26e2-a716-eddd-c182-744437591d66@intel.com>
X-ClientProxiedBy: ZR2P278CA0051.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::6) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|LV3PR11MB8460:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f927dea-b987-46d0-2007-08db6d865d6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cw79tl3b9EHEe9kfn2Pp3iV1il59CpZVK6kRaivf5njeAj+X3/xnBCjUz4kVD5yMgt4AXwUGuFeSUEt6eRlOemAmc4ad1d9ihOQm5fqmzyBNWuS8Xjkfy7Lo5u5ogp0k+2euutnr6q876c69oyVMqPl+iHKY1zmodHKYZF//zgrSndP5zRiJp9GHYJfgmYR0raNtL3cgRpkPLlYh7mLwJ69Q8PmUUMP8/PslSVIGsD3qerrNn9iNLdQZWDg4jGYL4me0GKzW0CYvDRyEksZFy7QXHmqYCNJySYNtetZgHqeLNpwIyQLrTgjYZVMZpHOvt7fJsfmifcrGlexMAZ5uhUO3v2OXsBKAJuqLlfvWc+qYnBe5MyUEnII9VRgc8Bp2+CQ7esEAIFhpHEjGQ3kvYr4KJ2W9G8sYrmhfmqYgptUi1GsjgA7qgobFwP+cJlhWMmc5PPFGwJh845u6Y+7TSeGV2qc5pOcTX6SjPrXO3AIwbj8AttXE88niiPg5Lzf8b78vK8v340ifZPB7nbXfs2+kABKmVWQXZWxjZx3YvU3jsNMwr+cMoQeWaqJh43glEWhASzLrobZZJNwqH+HwKVAgDbNeNNRDQP5pUCJTL//Y0eES2dEKS8j9aTbiEbnK+gqEkMFmRaMtvsaLuQ+W6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199021)(5660300002)(478600001)(31686004)(54906003)(8936002)(41300700001)(316002)(107886003)(8676002)(6486002)(6506007)(186003)(4326008)(66946007)(66556008)(66476007)(6666004)(53546011)(6512007)(26005)(2616005)(83380400001)(4744005)(2906002)(38100700002)(82960400001)(86362001)(31696002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTI3RVhSYW8yWGJDT3JNU3dHRkhTeVdlc2hoVnc4VzNpZUQ0eHdnNGxCUEtE?=
 =?utf-8?B?elJub1M0b1pVTWxwMXBENWwxY3VVOUJ0cEpEbkJEMi9OTnk0VG04ckRnaVRz?=
 =?utf-8?B?K0xMdklDK1RKUm05Q0t2V3ZmNVBaRUtuQ2kwNVVuT2Z5NStrNFNtSW1LZXJh?=
 =?utf-8?B?a1UzM1AvMmVyNE80N3g5STYwZlBBQW9jK2lob3dHTVRsRXhia0dNaCt6OTJi?=
 =?utf-8?B?MTJMSG9ZZHBvaGx4OWZ6K0s2bnV4Q0F0b2NvZUt6V2RTUkhpS0ZvU1FDL2w4?=
 =?utf-8?B?a0lvSnRkRGg2UEFIM3VONTdNRlF1My95dXRaRkhFUHFRWVVFbVQyR0FnUWhH?=
 =?utf-8?B?eEdkQ2pyOW9ZbEllQUwzdEJ6R1dqOGtZTVBFdGFUSTVacDZKNndJajVLQXpL?=
 =?utf-8?B?bzZJM052S3JEbmtIa3hacUlISWV1U2o0SmdXbTNCMHIrWlBaM3NsSGZzeGZY?=
 =?utf-8?B?MGJzbG5hTStBaXlYNm9QN3hSRXU4ZkFmb3phM3ZDVXVGYm9WVHNhblZxTVFZ?=
 =?utf-8?B?UFVkdEpNWWlQc0RHZ2lvUjJ3aWlGZHk3eFpuTkx6RXYxMHZMU3VZTzJmTFc3?=
 =?utf-8?B?STZYdlpDVXNkQlo0NVFKWmowcHdCOTRBNTM5OTB1U2Q5blZoUmI5Z0pFaFFs?=
 =?utf-8?B?MUJXWVZjbHA4Q015TFBTTUQ3bHQwVWQwTDIrYkFVZHNmTDhzMUxYMlBjbVUv?=
 =?utf-8?B?blpxcGlCQ1ZiVkN3Wmh4VkU4YWg5ajFrV3lYY3M5UENscFpqQ2xESXlJREdG?=
 =?utf-8?B?K2tXblpVamk1QVgxOXRaV1lhQ2hSUG5sSGxJVVlkVjNzamQ0emwwUjZPbzcw?=
 =?utf-8?B?dGsvZUVoQjBtN2lTQ2s3WEVHdVA5am1SL2FEODBZNGs2bDlEZFM3b2Ywa1NV?=
 =?utf-8?B?b3hYakVLT2t5eEdWNnA1dzJXZGNhNE1Nb2V2bVdKa3psU3NUdDhkYVhKZU9E?=
 =?utf-8?B?cEpXNlRPOGlHckhic2FjYmNKMW0rNkVCU054ZWlITStEREFkQmJ6SEpzeGls?=
 =?utf-8?B?UWhMa3ZxdHE5MUNHaDhOekh4clVQR0pZNCtUbDI5OUF3UXcwQUlLSUtYV3Jn?=
 =?utf-8?B?MFNpVnY0VVQ4NWozSTdKNzRnVXljQ0xmMllHNWVhMDJMcCt4UWVjRGFOOE5k?=
 =?utf-8?B?YTNhY29UQ3ZMdUhZYmtaUzhTNVNXZUo0dWlteFdSME1kL0FxMndaQzdOTGFX?=
 =?utf-8?B?cnNJeU9xcmVVNmcveDFuOFRxYkMvNnNFd0tDMXVxd0pQOVBzcE5idm5MSE8w?=
 =?utf-8?B?dzFyT0lCWVB0bDVGUkJWaFF5M2c5UDd3ZmJNQlo3VlpwUUtNZHZNNTVnYzVx?=
 =?utf-8?B?SVV3c2oyRkdrZHZqSHNSL3hjQWFYSUE3RDliZ2dwUUppTnNtbzR2TDRkTnRQ?=
 =?utf-8?B?MVBFU0dYQ3hibVp2QlV3UnN3eXhhbWsvOGx6eHkvbWFzc3E2TkVWTFR6Nklu?=
 =?utf-8?B?eS8wYmtSWGNLeFFmcVVSc0xqVHBuTkw5dlkvNnFzM1h6c0ZUblM1YjBYckhI?=
 =?utf-8?B?UlA0OENwZ0doWm5lSVI0S2VxbFRrYkUxWHpQbnF3dS9WRVZXYmhnaGpjQXlp?=
 =?utf-8?B?VEtUOHhEbkNCZ3ZEOExDR2dXTVhLUFhIUTV0bFVGb0ZOd05GSUV5ang0NWgx?=
 =?utf-8?B?RzhLMFkyUFh2b0F1RElrMlE4YmQyaHp3RDhpUmdDenNyV25LcS94aUlTRFhr?=
 =?utf-8?B?RlNsbldVbDJPVFVBampFSitIVGExMUJuM3ZVSk1BNW10eUZ4YXNWSXUxTjdY?=
 =?utf-8?B?UHdCU3c1YUpmek43bEpacnUxdHpCUldENk8vSStJQkQ5RmNtNWp2Q0RteEpL?=
 =?utf-8?B?d1J6dTUyRnNad2EwK3RYdEdjbjNVcFBjcjcxRHhtMS9BTHdMMDFNcS8rNDJF?=
 =?utf-8?B?UHdNZTBIcFA3R1B5RC9EQ05OazFKejlqL2FmSWdiSjVLTVFmNm56RE51RUpa?=
 =?utf-8?B?N1J4ZlREaHJyRFhoM3hJOE1IUzE1eEpmMFJEUUFpVEtJdVBaZ3dmMURRNWdr?=
 =?utf-8?B?L1JadnFkays3ZTJvY3hBWDB6dkpYUmg4UjczK2YxQStDcFA4Qmd1YmhvT1V0?=
 =?utf-8?B?MEV2cFIzWCsrMnNFbitIUE5iWTRQd0ZNbmV3a3N6cy9oclA0d292ekFGWkRx?=
 =?utf-8?B?NWpkWi9SeDlaZGJMWlN6YW9IcTJ5VDhMaHpyd3RPMlNMbFJuRXF6L0tDNVFk?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f927dea-b987-46d0-2007-08db6d865d6f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 09:53:26.7020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a4ktKKHtD/EelSX/0RDJOE49MrEigi+cPayBZV9sztEyPSXupektoNfXwl/MyjC7FBkBn83O5waI7FOaidUaZLAS15UeNYibaQaeugaKZFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8460
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686822811; x=1718358811;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fLwOt+Gx+jatYQRhOZwM77RK2G8nGd7LFFSzy27GH5w=;
 b=Abkw5+JdSwcc3Y9q/wuxloIdpwb3rtBchuS5NskNUd9KgOHZPOheZswY
 HT0pec85t9bDnTZjBFVr/BCho5A8xa7OAeDHqdyBkmCa+Bvzt0gqUzhie
 uoS7rnLUdi6VEq89gog8ZvshAouOk24/9QAFkeVo/+WRjd3Eo99KWu8Mp
 9gTccHzUCBB+rpkyKO6X3PKYa8qvZfkO1G4+EeQmw872MNesJHu0xMG4N
 tF0kQF/apThjtCJh3vmgHSh0p02rPoHAmGIk2McWlmOZgiV4RcsuGIjSl
 +7zCOQHbOXigDr0ltt3v6SPps6j+LEZsvLGPzQIklqdP48+DC45pP5TlY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Abkw5+Jd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/2] iavf: make some
 functions static
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
Cc: netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8xNC8yMyAxOToyNywgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gNi8xMy8yMDIzIDc6MTIg
QU0sIFByemVtZWsgS2l0c3plbCB3cm90ZToKPj4gTWFrZSBzdGF0aWMgZnVuY3Rpb25zIHRoYXQg
YXJlIHVzZWQgaW4ganVzdCBvbmUgdHJhbnNsYXRpb24gdW5pdC4KPj4gUmVtb3ZlIGFsbCB1bnVz
ZWQgYW5kIHVuZXhwb3J0ZWQgZnVuY3Rpb25zLgo+IAo+IFRoaXMgZG9lc24ndCBhcHBseS4KCklu
ZGVlZCBpdCBkb2VzIG5vdCwgSSB3aWxsIHJlcG9zdCBtZW50aW9uaW5nIHByZXJlcSBjb21taXRz
IGZvcm0geW91cnMgCmRldi1xdWV1ZQoKCj4gCj4+IFByemVtZWsgS2l0c3plbCAoMik6Cj4+IMKg
wqAgaWF2ZjogcmVtb3ZlIHNvbWUgdW51c2VkIGZ1bmN0aW9ucyBhbmQgcG9pbnRsZXNzIHdyYXBw
ZXJzCj4+IMKgwqAgaWF2ZjogbWFrZSBmdW5jdGlvbnMgc3RhdGljIHdoZXJlIHBvc3NpYmxlCj4+
Cj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5owqDCoMKgwqDCoMKg
wqAgfCAxMCAtLS0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
YWxsb2MuaMKgIHzCoCAzICstCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYv
aWF2Zl9jb21tb24uYyB8IDQ1IC0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uY8KgwqAgfCAzNCArKysrKystLS0tLS0tLQo+
PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfb3NkZXAuaMKgIHzCoCA5
IC0tLS0KPj4gwqAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfcHJvdG90eXBlLmjC
oCB8wqAgNSAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4
cnguY8KgwqAgfCA0MyArKysrKysrKystLS0tLS0tLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cnguaMKgwqAgfMKgIDQgLS0KPj4gwqAgOCBmaWxlcyBjaGFu
Z2VkLCAzNSBpbnNlcnRpb25zKCspLCAxMTggZGVsZXRpb25zKC0pCj4+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
