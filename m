Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F4057726021
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 14:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C97841726;
	Wed,  7 Jun 2023 12:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C97841726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686142633;
	bh=s31CaWWZS2FvQO0C/kB7rPYfdixStKLWNeyEi5+eXhw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DvVl0zK59jQZiSgVLalFZjepyOpYQ5y664/sSYt0mUrVBVVuitM9Sf1ibdqrXM1gI
	 S2ByIfYBuSmgIeSXy1iD9T/alY0CHTILFmTc/ktXc9F7LrkXUPgfgRBpLwr+I1wFKo
	 np8/4sv0vGlJTgai3G6a3P/wMIFIt7gZHIQoHb6G8Ax7Nh6RwccRWQVWsykpFS+0u1
	 /q26P8l2np0ZA53sSlUBtl3j4jA5eNcxHp/kqK4/uB2jB00+U3skCxVL/pzy+NH9mX
	 ZQkgTT7FdI4QB6UT8UXze2/zgNT0jeVb6QtahzuJS5LJ5xhsAdqDLTNEwhrA8BxYy1
	 eRCZqvsfi/vLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2sultVbynxAb; Wed,  7 Jun 2023 12:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 300C14173E;
	Wed,  7 Jun 2023 12:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 300C14173E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4361D1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 12:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10C4A41DB8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 12:57:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10C4A41DB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1NeHg5ilG9Is for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 12:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4363C41D6A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4363C41D6A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 12:57:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443343832"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="443343832"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 05:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="779431784"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="779431784"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 07 Jun 2023 05:56:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 05:56:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 05:56:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 05:56:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gMQzVTLoaGoSqZ5Mz+nwm93uJLXI+Uj1eqowz1NmT9/1CEJiLVAMpr6C8JwWrQFPUD9jCXaprHcnNnhuIwUFvs2nYheD7vNc1u91o7SQfXpiX3HTyOXfVBXfLZwuok0PqS6W6lOT0Xnlm+hvD6OSTTNKtvGNaB0BncgKtmnsgK/kpDqiudHlzACBdsuXlPuJgIctvCg6YxeUgvHT2a8JahRV3fJR4OQKp5Nc5Jvo+Wk7qVn//aVBvmu0L8pYwAui8CTVEVhV5B1RAkcRFfnW9NBdxNJ/9Tkn/XpKdFz5RnZMtzuFvjkciAHpKlXotIAmUwsAbHN6D3UKkUsoGete+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pBHdbtXGe8xt+MmdEBpozoyc2ZKX3cRNsl78ReRb82I=;
 b=bX7pKUvgW3v2acoVdj07rdQnwps3ezqf9sMzdIUhWYw6m9x4EITaRjueqqf5emmtP9gCZiGMO62uY/YE0kjzPTFnlSBbxkhOGufH7eIcGlgQXeksBEQ+Fb8WYQfV1/fOT4hV9vMza9lMexxGg848cCm3lebTOWNjul7T/Z02MeiNbEhvsKzcG+9AItOYhaYNCi8eaRF6P3vSpoMILjfGzhothlp389fgQjvgkqVQRHEVVxuuAzRNdihDOG0kXO0i7Tzz+6iUWclDJ4USgGpLPqEds1f0T0kcXVL7JnJnegaNhgaZU8w89oPhCgmUo/QqIhi9NO+7eCL35DOzNgJG9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.31; Wed, 7 Jun
 2023 12:56:54 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 12:56:54 +0000
Message-ID: <5eb058d0-753e-c91a-c014-a33ca249d1d5@intel.com>
Date: Wed, 7 Jun 2023 14:56:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230606111149.33890-1-przemyslaw.kitszel@intel.com>
 <1bd64ee9-4004-ddc8-6bff-6d8fc75c30c1@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <1bd64ee9-4004-ddc8-6bff-6d8fc75c30c1@intel.com>
X-ClientProxiedBy: FR3P281CA0201.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::13) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CY5PR11MB6366:EE_
X-MS-Office365-Filtering-Correlation-Id: 698817da-ceef-4ca6-d0a0-08db6756ab41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: je6s9QkOz1+7/HXXS0OW07J1l47kTqwnAqwkN7kNPW13PEbDtCLZ1B/DhYMd+WEJz1uuQh4LXL37FJGOKAXGYCqbYOqAvfaW0KHFjHllJxx8oD2wOw4KeitWiVDYInjul5j5zp1cXwIxJ2jpPQ1EaMZu0RsXyM9IwzSXRBB3AnsqavJ/mV7i6ldb5bgeVPNYfKBj6NuLAyTRyYDwHgETcwWlexYZvqiOp+HoyLCDRpoM1SK9/N7y9CZ9mrAnuSbIL/RN2KhwyvzCqkbfrAcPve1bukv27ZY3DtD64Llb9D8mM7FQCCpO4IOMDvQ1Q6M8PT/kr+CEg0wuzg8hCSj69VkSs4Yy/mqEousF4Pf8J6avOEZpVFLR2H9lWx4sxvYOsVRwrpsT0cyel5Ctg0EcoTl3zPj52jJyBpMWNL9ykwMHhq37CDKo++STIUozwvSP9Qo0qOTCR2OJNN5tUAzi80jNkeAPkt0nxuVh2FEw1CgOYADnoF67vJhUUvsmyaMvxIeDDk0U0LRFPHkgCBF622hsZBwLF82SKkHvYIiovRKhg8JZp7snKq9jnTpDLQmintfpM536F/cu1teVAZNOkPD79dZQs5sA5NGoHfU/OZnH4TayLzADvxkfAsfcyNwXEh/euHDu5fqF2BMXnB7TGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(136003)(396003)(366004)(451199021)(41300700001)(38100700002)(8676002)(8936002)(82960400001)(6636002)(5660300002)(6862004)(66556008)(4326008)(66946007)(66476007)(37006003)(54906003)(316002)(31686004)(478600001)(83380400001)(2906002)(31696002)(2616005)(966005)(86362001)(6666004)(6512007)(36756003)(6486002)(186003)(6506007)(26005)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dG1rUFZhaVR4bnpjaHhlRFlLSVpHWUwrL2tQYUVLOFdDQVF3VjBUeHV3YjEy?=
 =?utf-8?B?K0IxMjdmbnk1b1p0ZVhNeTFNU3lGSlE0L2ZHQjVGRzVjbXJDNk01eE5Qcmc0?=
 =?utf-8?B?cmJzSEo3MnlIWlRaK3Y1ZFlKQ2hSRTNkMmc2cC9CVElpMTAwTE1lR3R1UjhC?=
 =?utf-8?B?cDRVUHBSait4NnM5TjZQQ0lpRmZaQ2o0ZFhRVGpyMERhZmdQV2tJVzU4Wjhn?=
 =?utf-8?B?czBOK2VkamhGYmtkWFR4UU5WR0E0Rzh3OVZBY2dQMndwdU9veXlsbWQxSSsr?=
 =?utf-8?B?RzNLa2N5NEV2eTBlYUpnY1FOWllsTjNydFpPSWdsYXBmeDlndW1BM3NBemdk?=
 =?utf-8?B?VnM2ZFNDbXNKb2xrV2FGZzFyc0Q1Skx4cy92VUVMZTBnKzFldzhtcTluTkNB?=
 =?utf-8?B?ZkErMytKZWdic1JoQ1BnZjBxTW1FUXV2ODRnQXpNbnd2eWVEMGE3a2t5ZURI?=
 =?utf-8?B?eG9sUml1OVF6WkM1Z2hpZ0RLK1k0WmtHUzlJc29VQlRjK0xxbkJ3QlNZVjln?=
 =?utf-8?B?cDk0eGFWbEw1RzJXNHltSlhDUEYvbVRyWU9qUUVNWXV3aHQ3Y1ZwU09wdmlB?=
 =?utf-8?B?MFBtVXdBbFBJWm50SnRJRU5RNDZwam14a2l2YjUzeGcrMzVtdUJCcHdQUHFN?=
 =?utf-8?B?RHB4VWNhbUZEUnlJREdyU1N1cHNwODg4WGxNdGpobG8zREwrSkswOFgwemlp?=
 =?utf-8?B?OGNVMURJM3pyODFKaTlRNTVNemtaTGxHeUN6YTNOSXFGNng5OWwxWDFVVm02?=
 =?utf-8?B?b0U2NTlQVVhySTFlTXM1dHo2UXBEd3NXckgzQlhrck9XZlVwWStqam8zWkVv?=
 =?utf-8?B?YW94c21nVFVobkR0Q28xZ25HRjR5c254NHVvcXpFY1p6ViswTGxOa1lqVUM4?=
 =?utf-8?B?N2pZdmJqanRzbmltSStDSlBWc1RuUmtEc0szczRCL3h6Z1ltZ1RGUGNkSit2?=
 =?utf-8?B?Yy9XeUEyU0F1R245MjZjdjJuQStGYVpGaGRCM21LQS9rMGN4Mjl1VUJHdW5G?=
 =?utf-8?B?dGsweUkrQ1RkTlBDS1NTUXZjRlY3QzZGdUNib2JDQ1NxWEZxVjVzb0prWGho?=
 =?utf-8?B?TVIyczRISXBPdTE2cll6N3loRHJZTDE2YTN2a2NaQUNvMkI1QWdQb1RVZEdm?=
 =?utf-8?B?cVJYNFFGdjYvRTFTLzZZak85OXVyaXpuN1BxNTNkMWwwaEhmVHZ5eEVOTWpm?=
 =?utf-8?B?YnVxa1pXVk81Nll3WnJFemFqRTZneGRPUjNYL3hkQXpFODVITVBscGNkejZN?=
 =?utf-8?B?NWNyMzFrUVNOSGwzNjlvNWV6K3Y4OVBNNkZGdjk1Nm9LbjBYcy9iQzhWMFc4?=
 =?utf-8?B?NG9Tdm5sSjRVV2RURFJzT3NWaDRUT3o4RFZ0QzFaazFXQW5uMTJtMTNIUm5z?=
 =?utf-8?B?TVJzV1hzTHd5OERNTTd2akluZHdnQytjQXVoRHplZnoxY0x2cWhNVXpsMHpv?=
 =?utf-8?B?QysyY2dyelVmSWxpOURQbU5oa05qVUg4NjdSQnVIb1ZLcDdQdnN4bUc0MnRl?=
 =?utf-8?B?VVVsWWU5cWQ1bTBZK0dMdkMvOTVIM3Z2ZTVaRC9KK244dTMyYlVkdXZLTzBk?=
 =?utf-8?B?M2QwaHhVWkQwYWplUCt0c3IvM21wdVBXM2tWWkFvblQ5NmpTTXNGREtBUXpS?=
 =?utf-8?B?OU1ueURiTmJ0Z1JBR0ZDZEF0ZitiUHpSSkVOcndVV2MwYXJFSWlBNWtQbDVR?=
 =?utf-8?B?eW1GbEltV0NXY0I4ZnBvaFRFU1NlR1NKSjBnb1djRFhLOCtDQVZLZDBycm16?=
 =?utf-8?B?cTZiWGc2WVZKdzZ6YnowYTVRc3Y4WWdaWUx6bllSNmlRbEFnNVhlbnRRUmZP?=
 =?utf-8?B?RG9LVzAwei9oS2w2NzQvZmdONytJU2pJWFhuL1pGNzFpYjNONXhzTFFqZ210?=
 =?utf-8?B?eUY0dzVrTEVVWVkwQkRFRGRYdjZRS283T0Uxc280QUZna3hNVHlSaE5FMzFq?=
 =?utf-8?B?ZVY3SkRXcVJMSUxncTdMZjFEMGRWOHBzZnhJY25BNGxTeFl5dHB1N203N1dF?=
 =?utf-8?B?SEp0VElBN05UYmdac0RIL28vdlE5STZKRlVDUXk4VnUxL00wSElMckJpRFE2?=
 =?utf-8?B?bDJUNWRuc2dDY1JmY1dGdHpFanZJZGJENnptVmE3aTV0M0MrK1Z1ODd1RUk0?=
 =?utf-8?B?NWRiSTJqNURXR2xybkVFemtONW9US0RBYmdKUkNOZWFwaWNTUHZyZlBiYVVi?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 698817da-ceef-4ca6-d0a0-08db6756ab41
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 12:56:54.4554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bcFphtKDsWlGNwfM59PlVk9bl6VFiT2kWxn7imUnv4sP8laocLjYq3cjyrPTsc65lWEpP9DPzijflxwHAhz0MEr9AxSwF9XeRfuk0eVjDbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6366
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686142624; x=1717678624;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4OF1cN07IFGo5iiLAMSxOVB/pRALQJRHdN3aLaHSP5M=;
 b=c4jySbqWWnBgrkzkiK3RaS7anobcgtFGvRFgXgoX/295Gi4jKS4m3ry7
 GnaTwMYdfOAD/LzMaS5GFyYTTd9jWbjD4M+kJihYzQ+x0qQqoxHhv4f7z
 rVsNwTyoHpxtizpRTcHicJiquAmBt1Z3Afa3dHO7OVrhvxo5uaFpMjLOA
 BeShEO1ipDP+MIbzyM8RVpLT6yvCAtbcadfK+K1jnMxOkBdNhGOmQMyLj
 cFe7symfI+UvgIHJ655BBV+MRL+0CGQBuCsCmhVIL1yKJxkzrnAi5fo4n
 yRrMnZJs8rVD54rO3TNgwRs856/SFDLaTBa82+UTtlxqwaJSTOzKdrxbR
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c4jySbqW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/6/23 15:31, Alexander Lobakin wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Tue, 6 Jun 2023 13:11:49 +0200
> 
>> Refactor __ice_aq_get_set_rss_lut() to improve reader experience and limit
>> misuse scenarios (undesired LUT size for given LUT type).
> 
> [...]
> 
> <related block begin>
> 
>> +	opcode = set ? ice_aqc_opc_set_rss_lut : ice_aqc_opc_get_rss_lut;
>> +	ice_fill_dflt_direct_cmd_desc(&desc, opcode);
>> +	if (set)
>> +		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>>   
>> -	lut_size = params->lut_size;
>> -	lut_type = params->lut_type;
>> -	glob_lut_idx = params->global_lut_id;
>> +	desc_params = &desc.params.get_set_rss_lut;
>>   	vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
>> +	desc_params->vsi_id = cpu_to_le16(vsi_id | ICE_AQC_RSS_VSI_VALID);
>>   
>> -	cmd_resp = &desc.params.get_set_rss_lut;
>> +	if (lut_type == ICE_LUT_GLOBAL)
>> +		glob_lut_idx = FIELD_PREP(ICE_AQC_LUT_GLOBAL_IDX,
>> +					  params->global_lut_id);
>>   
>> -	if (set) {
>> -		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_rss_lut);
>> -		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>> -	} else {
>> -		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_rss_lut);
>> -	}
>> +	flags = lut_type | glob_lut_idx | ice_lut_size_to_flag(lut_size);
>> +	desc_params->flags = cpu_to_le16(flags);
> 
> </related block end>
> 
> Now the tricky part much harder to discover than FIELD_*(): you have
> 
> {u,__be,__le}{8,16,32,64}_{get,encode,replace}_bits()
> 
> macros for such cases :D
> They aren't described in any kdoc and the indexers are not able to index
> them (clangd however can IIRC), you even need some brain processing in
> order to realize they exist. See [0].
> 
> I'm not saying they're perfectly applicable for this particular case,
> just FYI.
> 
>>   
>> -	cmd_resp->vsi_id = cpu_to_le16(((vsi_id <<
>> -					 ICE_AQC_GSET_RSS_LUT_VSI_ID_S) &
>> -					ICE_AQC_GSET_RSS_LUT_VSI_ID_M) |
>> -				       ICE_AQC_GSET_RSS_LUT_VSI_VALID);
> 
> [...]
> 
> [0]
> https://elixir.bootlin.com/linux/v6.4-rc5/source/include/linux/bitfield.h#L174
> 
> Thanks,
> Olek

Thank you for the mention :) I will keep that in mind, but for now I 
will leave the code with cpu_to_le16(), as the scope of changes is 
reaching single-patch size limits ;P

PK
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
