Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7366AA589
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 00:22:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EDE0409D6;
	Fri,  3 Mar 2023 23:22:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EDE0409D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677885764;
	bh=2gRl5j7d4QIEbEtPNLm1Klj6t5uCHYHs7my7asTrtuk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ElAQOhPPNdVkGu4luTwWGKouzMjvLeqD1fH8XCio5aLJIpJOa9yz0KMzHAj0kYGOx
	 FJ4r47OHXUdhpd5pAbxTJMmsrDNV2e6cWRMACMnp/JHKgisxwtoHjRqYp3j9a85tjr
	 98GH++LPF0lvptzo2LbhS/qbB9KfGdAO8zX0iTJ0wi0ZsZQUmr62IfUzAA2yPFoLj6
	 EFMybdyA4vipwFubdRqFSm23o10GqQ+HCqglV57mwnXB3FNamN3tKW4UIxzfsppN9h
	 e+245FwDDwyznxlS/Sm+vNFWYCsZcbxLS5r/qxFsXP6RCCeUKiv3HaZzVVgTxAivc+
	 qJ8MGcvyK7pJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ftUDfQ9EIr-J; Fri,  3 Mar 2023 23:22:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2373B40160;
	Fri,  3 Mar 2023 23:22:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2373B40160
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC92A1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF03841D33
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF03841D33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xAlxSExlSIIY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 23:22:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70F1541CF3
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70F1541CF3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:22:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="399998448"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="399998448"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 15:22:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="668817124"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="668817124"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 03 Mar 2023 15:22:36 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 15:22:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 3 Mar 2023 15:22:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 3 Mar 2023 15:22:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uo7sfiFsOvYEiqyz0Wk61CgcFMht9YS2j9T0qLah84ujYn9oa92DyF06A3aThcNkH0JeWtZiIFiDq2qDgtWJ7d+mmK1WheTs8leHdehKu8qgssAcYz3d3nUIdhI8Pe8LkxFr5f6UKFMgPSk1FeU+LoUFgZVe3+h7FoJusuuijVjkCmMX1301LV7NOAgb327IMkKVsZsm5ajeIkAvESp2MWByammcqUspAzQ+qYuHoHlywAaftHc48Moq3M4KfryyqZjnotjhnzEreonyMBzFfPfthuPEVxEEx9RVk4dk4POyN8B0ev8cA5WK+dU93hEKtl+UN/nGTfUzpNuPbBuibw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aXAtwUTC4yT1fZFJqiAVKND9ONMmXIeUOXUXa+/cQIQ=;
 b=FNfKFAvwirAoaNMg2xQIxk37fb66Fz4f+Z8KmHzlRuNlXga3YflvZASm9DmfoUNI5OrDu0UJELfiD/1Nf4vPJAVJCUzWoMgtLAkPohcFim8S6QNwckxvCj0dklNLma+beXoizJzHAHaEfhXlmIZATITXM5WXwbFcLAy00kWeBeUWXZbK1vVi/CKlKdnzTILp5cIAJDxHsA83oXJDW3YHBipUEqHGIm4b/EWdEFWQzrwoV3a8UlbudCglifUh+B7AtRHWw71zUTQhPnz3vDxt3LWes9rdCeDbcWG6N/75T8P4sqfRzxsKsjsaz4kTIm3l+B69F0AeONOWIjTDnhNGkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Fri, 3 Mar
 2023 23:22:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6134.029; Fri, 3 Mar 2023
 23:22:34 +0000
Message-ID: <b7a5e4b8-cbf6-04eb-017a-b8629429f763@intel.com>
Date: Fri, 3 Mar 2023 15:22:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-5-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230302215109.124-5-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR13CA0118.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB5598:EE_
X-MS-Office365-Filtering-Correlation-Id: f83644d5-ff15-476a-bcb7-08db1c3e2b02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GK7LUAlSVNlaOlnDvcFw6ps4h9O2AwGLsaWw1uSG/U58WTtKdrMSZuNEQ2sval0/FMynUZ8KzU4ZwQbwUCgJkFlnCcZVBVVipLjewyRUndFO+dB9hGX4xSK1NMZ7xoC/HuFQaggSMWLYM9XWvHmdb0cErb0N+V6Uk3wooaFC8/C66s7nTwCDF9ZrDli1pvNTvL3yuxKqs0Kq8/j/FxPBfpT/tls91EwLFQY6FCGJXrDLGLbV6mRqNB7HKWcYgHifM2FFk3lu9VhpZpYRnjh7+LsgBZT0gT3RhjtNTAzCjqrT67/8eOWvqXL0K2MU+N5oPr8g9uJQUe42AvpYGLXELnoBRDITqyX4CZ4xQm5MjG8XukNRj4Kvg3jevXYGLV3IytwrHXvEoO6lQdQCQieP9H1wdkUmalFa9g1k+XCIwBBmwB3uZgipJVZ1/jvO1zRHAOKMYywaUrdVB5NtSL6bAuGnaI7mxAWZOA+SH1CbFr3ozzaUU7buAlB8q1/b6C5nsS7E1pD47LwF7Vj7Lww4DGbCxGlpxy9y1clxJa4iAxuVFuulY4zOEfLkl+dIP3ajkZ0jho265ir6CM49pUCCiHuu69WnCZ+4RQfbZXogXWT0IU+aQCFs8H+Yy+pXGOlbZPGt0Js91tBKSoMSD/RssRXqpFRB8mLNNDWvX1c8TIpplI9TGnMA03gp2akfhmz8Maw1wjOAwCPs6Y+gXbVi3f6n9ZlEysA6zmTb9N49t+o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199018)(6666004)(2616005)(6512007)(478600001)(31686004)(107886003)(86362001)(36756003)(2906002)(31696002)(4326008)(8676002)(66476007)(66946007)(66556008)(316002)(6506007)(6486002)(186003)(53546011)(41300700001)(8936002)(4744005)(5660300002)(82960400001)(26005)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2hrTzZ0NG10enlISS94R1Z2NVdxa3c3OFdIVVpnUW12Z3Bwd0dPVUIxNlNW?=
 =?utf-8?B?ZmxSNytUSVJpZ2lFekMySWorVGcxUWhLZjZtMno0N0lPRVpVQkpxREIzT1BY?=
 =?utf-8?B?bDVKRXF0eGdzY2svTGU1QjJNUCt2RlFmOFYvdEliSzZRNHVCRXE0UVhjd05x?=
 =?utf-8?B?ZVExbjM0Ym5wNFMxYWFFUnRSdklldGQxM1ZEUG42K3B6SUpORWwxNzI2SDNQ?=
 =?utf-8?B?aTNBNkYzUERUUmk2SDNWbXIydFlRakhqR09Ka0NJYzI5cUVkWDRCK1c5MzF2?=
 =?utf-8?B?ODBqQWxNalh6MXU3c0lTTTFzTVhZdm5NQ3loVURXQ2RCZEdMSnVNbTkwa2Jo?=
 =?utf-8?B?NW5BdjFMb2NzaXhSajRyWlJKWmQrT3BScFY2YzgrVDYzRnhZQS9pbm1IWlR3?=
 =?utf-8?B?T0UrRUN4bHdLSU1YQVpvSlNSNjRUTlIyRmxIRVJpbW1KUU5FcXk3T1J2U3k0?=
 =?utf-8?B?NG5KcWJCZFF2eTJZVkhqSG5EcmVWa3ZuWE4yV3RRemRXa1lmM2pnMC9LYk1r?=
 =?utf-8?B?SmVoODRqNm10OVZkaTBTTGlsQUxzazZEVEtxZXBVeWFnSkYxNHdKU20vbUVV?=
 =?utf-8?B?NDd3aTlZQ2w3M1Y5ZmUwOFp2NnBsNVNudldRTjg5cUYyRmRlbEwwbUg1OXRw?=
 =?utf-8?B?aGF4RkMwN01jN1dvTDlvRnUvTWRLUSsyOUdJWjJkbFNMZEluRFZXQW9nWWdK?=
 =?utf-8?B?MlZRQWdmZmZ6WlJwT1B2U1MzYUs4SHlGMCtsaG5WdmlRN2N5RHExbHU2SGln?=
 =?utf-8?B?dis5SXR4Q3NBK1YweU4zNFhpckZUWExHY1hwRG9TSitwdmZHbitDUHYxaEU5?=
 =?utf-8?B?MTRJbVJCOHFkcU5Xc2JkMGp1VmwvbHJ4NXZGUEEwb25sUWFiQVJTSFdHeTNR?=
 =?utf-8?B?ZU1Ba1YwdW9NZThjdzJ4RXhsZVFFTzZBZzNZajlUb050YTl3dFN2Z0l6eUU0?=
 =?utf-8?B?ckVObTJuYTJxOTVqSnI1a1BwUXpxZ3hzY3JjRG5DbnF6RlZKN0NycWhpNHJK?=
 =?utf-8?B?UEhqcGlJbm5KZmI2TS9rR0NaeS9kWTNaMG81RkRVcG42bGYyRktlUXFpWmtU?=
 =?utf-8?B?N2tsTUhIY3VHeFEyaUVwQ3J0WTZPU3prQWxUME5RQ1pGZExoNWZIUHZveW1l?=
 =?utf-8?B?OG1WdUJ6emhxTE0xSGNDaUFZd1ViRE5NZzBBbS81TkNWMENqUTZVUklPUjNY?=
 =?utf-8?B?NHRrM1ZoNTFuOFFsWXJsekFkVDJPM3cwcDViMlBMd25UT0VOYm14bWxKemZX?=
 =?utf-8?B?cm1Ba2JCWTF6Z2dKcUF6cGFjenJLcjFLOTUxeE5xYVcvaVFwc1JtM29Xdk1K?=
 =?utf-8?B?MDdqRm11QmlCMUNHaFBuTHNvOVQrcjVqNnpTV1Y5bEhQVEUvL0xud3FQN1RI?=
 =?utf-8?B?UVcraTBiZ0EvZ3E0SE51QXpXLy9Ha3BXRU0rKzFnN01mR0JYWGJoOXRDa3ha?=
 =?utf-8?B?TWNXQUd4TThHdjlLanFPZW0xS1VDaXJkZllWMTFBbFNJZDJkSFZYWnlMekU0?=
 =?utf-8?B?bHlnTDJ0RVU2MnlYMmsyaEN6cFVCOFRjRXpDMkVoQVlnYVFvL2txdjhWMlpJ?=
 =?utf-8?B?V0VBd3J2aXZRZVhkcDJNVzJXUDE0L1RnRXgxYnI5d1VmUkNFZmNOYjNRbTBv?=
 =?utf-8?B?NjJpa3N3bEx5OS9zbllzRDd0bTl5L1ZlUFdqbDMzMCtXOUlaemtVSHlBcnAy?=
 =?utf-8?B?ZFcwSGtaZFR6VE93NXNCc3JMN1RWc0dxTm9rVE1iWk1JbmdZemhkMlVrVVpN?=
 =?utf-8?B?SkRiM2FIOWo2dE1sVEUwN3NTZHNBQzRwRU1VMzhmZ3dwcXpNbU9Yd2ZMSlBo?=
 =?utf-8?B?dmxUdWxXWlhXNUFHQXhuOU5DNWtyS0c4bXZ4SE44VVptTmtYcEtNc3ZqNVNX?=
 =?utf-8?B?NXlrMUJrS2lGdFA0WWl4dDRPNzl3eFhPVTVTRlpkbkl6WW9ZNHEzaHNyYTh6?=
 =?utf-8?B?QTZLN2VSRWRsR1ByR1NncTlqaUs2UXowNkJQRWJTN0ZGZmhyc1FMRUFrRkVo?=
 =?utf-8?B?TXBYZ0FpTUxZSFBwR0lIUjFHSFB0N3lVdmtVMitrSU1yZktsYy83ZEN6L3Zq?=
 =?utf-8?B?UzMyY2tuV1JWaFJxeThEamNodUJGMzNmRExRd2RIcXhKQVpid1NXaDNJR25H?=
 =?utf-8?B?ZXd5K2FicHJncjVtWFNPaE5DdlZtcWgrV09jNDdPdTB5RytRdStOMTdvUWN1?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f83644d5-ff15-476a-bcb7-08db1c3e2b02
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2023 23:22:34.0706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nSSdRu5fTBA/3D9fmXzF/7Zd23zwJksY4IVUpV3bb20Xv4Kbhg9MhnsYI02wT3Mx0MKp+fa0S3kVk5H3jjZCESw6Wo/eOxEtGr0kmNsKZms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677885757; x=1709421757;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PTNslmyiGc8uc1+DXUyw9fSm9Y/FLU/7dqyqS38e+1c=;
 b=fug1+tdgAqpQC6YlrXF1zbLLTBi7MRetp2JmnOgAWw/VDszxxLICsbR4
 Uuqwsjyv9/2WNnYDHhsFbmwhsuN1sEu/CG99ISHHXCkjYQeU4RvszjuBp
 a0B6fyPnlnUAjT937pud5TSfdVkZ02UKo8GERwt0frPH0h9risOdp4caO
 xUpt2XqxJQ2im4y0ugfwwLp0j2YrAT4V7E5brhyeCa23Nx9fckl4pEov7
 Kl5Ym4sA7fy0obwjRtw/lqTozAB07EWfRL+oFO+k0Lbf39ne8Ey52L7b8
 8afDDUWbfVS+L+cSaswkiSVP5NvLDlx2K5Wk4CeZf1eQIH/wMuBK7IzLA
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fug1+tdg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 4/5] ice: enable FW
 logging based on stored configuration
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/2/2023 1:51 PM, Paul M Stillwell Jr wrote:

[...]

> +int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!valid_cfg(hw, cfg))
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_set(hw, cfg->module_entries,
> +				  ICE_AQC_FW_LOG_ID_MAX, cfg->options,
> +				  cfg->log_resolution);

Return here, no need to assign to status

> +
> +	return status;
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
