Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECEF6E0027
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 22:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 998F941E18;
	Wed, 12 Apr 2023 20:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 998F941E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681332553;
	bh=m4zM+tVEgnQowiEMlEkTtxzAouMrZzhXKihmJLBcC0o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v7QRktyunFLdF8lxoVgJ3/q49PjLydgpPK+KMv+BvMlFvVspyAEAE4zBKJfyiq+Ik
	 7oFJLnod4I7TAmvLDpJGBd4I3pdWce/cbbkJ6sRwHxI4T4+2QQUnswojlszXkNc0BJ
	 WZQiRreZypZomxxkq/08C4NXyuyclWVjzet5hC88jRr6xzgGCuHxPISAQYv6+Fyp1L
	 /+OKr+WwiBkk+efbKAuDSHeLBuNwq2iKKfVeDFaqSFMebiDmxpSUK2AscRvZYufRod
	 M16gPic9ImwsOHATta/H9DMOKJn0sSFhfc0iAXwLIQVF0cuIM5SCcSITlgvp4k28r2
	 Y/Z/av0IOgFpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTGvcpaMNfRP; Wed, 12 Apr 2023 20:49:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 849E340A8A;
	Wed, 12 Apr 2023 20:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 849E340A8A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B7991C3D40
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1104683B1E
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1104683B1E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v38rkABKfM0o for <intel-wired-lan@osuosl.org>;
 Wed, 12 Apr 2023 20:49:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A24C83B1D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A24C83B1D
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:49:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="430306301"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="430306301"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 13:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="689047326"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="689047326"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 12 Apr 2023 13:49:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 13:49:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 13:49:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 13:49:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPvjoeZi73E8OedOP81HUSNNdgO/5vx2HXJpShoJS5ELOOy7GhCnsYwq/0aqWJIJPtEiRht49kPgGqRHjyHY9OK9yDuOI0eIlRVUEmxvQ3Z92+cv1MvTtHkEHqXyPPAONe9U4+QH8GaFtI+zbAl4QDI0FfTy6gCuvTi5uKRvQE/2rx8gYBbe46UPYtQan6Gec4bmKfjdz29IiQhGk3NPD6MCYdI/MyDy/Dl8ff7JEXUi67tvMwMB2nQMXPNkntv3D1zFrxdIqxkmaq2d/L+VaX/RkBeCDHfoI2cmAFPKi6e6GQkll1xfG/qywGwnJVhwIle5tAKPob7w48rtCjrjiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tA9q4m6+ASJMX4qGc04f8Q0vsvHoUyh8xIqVAtacrno=;
 b=mJcO8aseVidPKT/C8YwKCrQhwKzzKAQeUhaXctovPcgIoVrdNSPPe/RI2Vs4HOk0k0un0fFHj5KZ4Xg1aGVOd+Imw/9vMq5j33GtQgTPiigw0D0rUuiDcEKeC8eVd7OsS/I1hDHeFgUKNX5htCcmHh8gBtkakFdVc8udrlCHrvBKcQcHBbdivJTU1ZWQIERY0y/+iN/oS0UaLR2YYdk1woKwNDlTEUHngBEDlIqB+pCRHFZR9uwJuXwKfJKvLs9d4KK58e2ZfDB6AxutnGNO97aaddOUifRIb+XjM6e6cMo6cYDknkT0YyKbNJAMYw678wRVRMrON3q7EhUzE/LxKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Wed, 12 Apr
 2023 20:49:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 20:49:04 +0000
Message-ID: <4fda4ffe-7217-2d1e-06d7-99b7275b65a0@intel.com>
Date: Wed, 12 Apr 2023 13:49:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <168132888942.340624.2449617439220153267.stgit@firesoul>
 <168132893562.340624.12779118462402031248.stgit@firesoul>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <168132893562.340624.12779118462402031248.stgit@firesoul>
X-ClientProxiedBy: BYAPR06CA0016.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4878:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a358e83-7f16-47f3-dc46-08db3b975a17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T26o+6jD21Hp3g/Bung+IYtXURCBeM30C/njZjMT00RsiQEhh2CF9ouH8Zt8V2xZM7yKsVTf2/soY9pSc0dv7uQeJ3oJltdq7OnhPkqvktceXxYLJiNQaJdAFomxrhupLxchxivBo3loR8i4yOookZofDL2eFW9ahXssTWZW9wXrWamDn+TEdAmAZiRf6qxGB3fzSzW19zoC381FXjTqDYhwHDvRr9G1kAi/SAeG5tzXOocdCIQ8Z0SjvZMjFwvp3D+m724nqnUXSuftOzhEGbuFlyWXFz7ht5qnPxxPYQ78l2Hd999AXAYxuA+RdR/LX5GPmX2ac8TBBr5cP3pvYKzLAj4D6BiHzQgZSHgP4JzJjm1QdowgBXiEJxQpj5xtSLn5PFKqeEEMQm8fCkuw6FyIQEIhyaVfKLxqbpeEFFvbuLjXpQ7o3b7S42pGcJxyEzUlFmIG0bF2akv+kY3i2zYqoQImeKa/EgaPhUl33YUw4xnKjYiJkQHpetOZAwrU3Nui32TGFMg+s4vWYGxWJ6oQG2b8QAdYFkzN2PEbPmhNG5/O+nclA9sGas3WNU4ZMspr0KyfPCcEOUWGpomxn2kLX5L6ZCBGMH8ZavvHQnM4y7UrTpimbg25i7jbjGhBcCbreHAPS1Qeb1wu7jTCFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199021)(31686004)(66574015)(6506007)(2616005)(83380400001)(478600001)(6486002)(6666004)(53546011)(26005)(186003)(6512007)(2906002)(4744005)(36756003)(316002)(5660300002)(38100700002)(66476007)(66556008)(66946007)(82960400001)(41300700001)(31696002)(8936002)(8676002)(6916009)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXR3cWcyZzJHMjJZK3Nrb1lRTDBIVFZQbXR0WFBnMDFwRUs5MExYc3BmeG52?=
 =?utf-8?B?YjNUKy93L1p1MjFHODh1WDA4V01XUmQ4cXhXRHBxeUJzdjFnblhtNDZ5Qmw4?=
 =?utf-8?B?R2Q4aFI0T2ptOTczcWlnOVBaaXV4eVBBT2RTc1NBU1ZZRmY0VGxmZ29pY25L?=
 =?utf-8?B?eEIxN043aEVYTVp1cUovUi9jWFI5Q1dXR1JEcGZsZVNSWjk0d0M5VFk0YnQ4?=
 =?utf-8?B?TXZUVVkvZXVlTzJ2eno2eUk4VDdQTyttRDlZVkZHSWlwVUJlTm1JbExRUXZJ?=
 =?utf-8?B?YVJrb3hEVWxlZlNHZ3diMllHY1BUcHZLQUVmODZtQm84SFUwT0tMeEhmWEN4?=
 =?utf-8?B?L1JQMnpDanNYVmQzTlF5UUVQZHc0cVVDSnNyLzJ1cjlML25jR1NFYjNSVkJl?=
 =?utf-8?B?UkRvL3oyM0NsM1hSMHcrTTcwK0R5SGN3RzZxdWxXQVFkUkdxaGFFSjRrNDJu?=
 =?utf-8?B?YVZiQ2o2cVpXYy9aR05jNlNvbnRZbzdNaUhrZWlxbGJLdjBXUWdwZzVIYXhY?=
 =?utf-8?B?d2szSk01OXEzOEg4SFhEbEI1SFpXbi91VWYxNGMzYjN0THNVVUdWb2R4TWRv?=
 =?utf-8?B?K1pPRmtCYTAvUmpDd0pob01PbDhqWVNvQjYwbGVPR3RETkJjc3NaOUlCV0Mr?=
 =?utf-8?B?Q1A0b0tpYVhQazhIUm4xZGRTQXR1UkdSNHNsTHVYNVl1SmhVMHlqaXhrdk9N?=
 =?utf-8?B?TXB2TmRnQTMrY2ErN21FS0t2ZVNGRy9CVE8zbVJKdHdrRHdRZmsxcUxIN3Za?=
 =?utf-8?B?QjYrZGxkOUFUZ3hmTmNCK3R0OFFJR09qN1h3a01nNy83T3JzcHY1NjRmL1dC?=
 =?utf-8?B?K1pmMGtsbVlFUzRvM1h4V3VYVE9pUlVOYTlUM1ljbEVjNk9Dbm1NREh5Y1Fv?=
 =?utf-8?B?OTdYZkh2aEwxd1E0VzU2SVpLUmxHUjRPbDhSRTVsTEl3dXFXdmlWUnJlc3NW?=
 =?utf-8?B?Q2lYQWVoL01BbUlnV1dMRGFiU2hobmsxL05pbVMzUkcyWStiUm9DY0dIVExW?=
 =?utf-8?B?d2ovSTVoam8zT3lJV2xhY3J2SDgzaVpPRU1wSlNaRURjc2FIWW9KeStiM0tG?=
 =?utf-8?B?Y3FUY3J5S05CRFZhRjQycFRDTjhCTHFDQm1BaVRjek5JaGFnY2ZPY0g2cHJu?=
 =?utf-8?B?MUE1bnhJanpTeWw3aVduQkQzcnZYK2xBT2RjODgwTHRxT0lEaHAyQ21JcjUw?=
 =?utf-8?B?NmtXa3lDcEx5VnFHblp5Y2lyRHFHR1gxUHA5NjRBbXJ4WXNmVEVFWEJDQWhl?=
 =?utf-8?B?bHNCMmhFaXF3eFJtMzVZaFFSTjRNYytRZFg2STlQNDhjN3BPYm5FWEp4TjlI?=
 =?utf-8?B?VjUybk1uUG9FWVBuVDVEeW80cTgxR2laUzIrWDQrb2NXeDNvVWU4cWZzWURW?=
 =?utf-8?B?ckN6WXlPQ2xhRjR1RGR0QzRpSko3ZUd4S0JHU2hqbDlsVmdTNDU3eitvbDVl?=
 =?utf-8?B?Ukp2NWg4Tk5IUGJwa2FoQ0xESWU2K2EyMzg0MFJCWTlsUUJhQmRNNGxFTGFO?=
 =?utf-8?B?eWFGTEU2RTE4ZGI5b0RlN25pTm1QN0oraUtEaGdhL0VPRGhldWtQcHpteHZL?=
 =?utf-8?B?S0EvMyszMVoyYm9DNnhLdTN6Sis0NEdVQ2MyVGZ2Zmpwb3FnZXpIU1Boaldn?=
 =?utf-8?B?em0veHFFTEVEYlluQytnNFJ2Tm9wMlA5d2U4U0g2S014elBRa0dJOHVFWFRY?=
 =?utf-8?B?WHlxRnJLak41Z1R6dEhZNlI5UWVRbDU1aEU1a2N5TGZ1a2ExMEtIVXFzaW9C?=
 =?utf-8?B?cTROaXkvWU9GZkRIcWQ2STNLNm5pODVXWUNjWERzSTB0UVAzNDFHbXFJQUxn?=
 =?utf-8?B?dDAyRUF6TEYxTjhwTkJRNWMzaXdyWlZmekhlVXBsYzVBcC8yT0hLc0ZuTHFl?=
 =?utf-8?B?dkVOeTFLQTRhbXRGNTVPUyszWXFER3Q4dlI1NVNGMHZOeVpYZmZST2UxeU9U?=
 =?utf-8?B?SERGMmFoRmZQOGxobnMvRm9yZlZUcytqaGJyQkgraG5jN0txRFJ0cWxSY1cz?=
 =?utf-8?B?YkRlRjEvYTlLS1FER2g5SytHdjNvTG1LUnZ3bklybmJNUkFOazhpRzBoL0xv?=
 =?utf-8?B?ZHNBOUl1NGZRdW8xNkZKYTJyVlBtMmpwcnhQbWR2WVYvUWM2YTNZaFY1VkU1?=
 =?utf-8?B?VDROc1VGVlhQUkpxa1Q2NWF4ZmVJZEFWaFpmczl2dDJzN1FjM3VTVklzQUtY?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a358e83-7f16-47f3-dc46-08db3b975a17
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 20:49:04.3107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S26vlfHY1goGJWLJX3gigLYn7xf1iaC7qVhbEL81ETxW+62s0kAkzJeOx3W71YTK6h1lfDAq+joba/mephAeFilD7AiWxDvtmi96QdFBNvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681332547; x=1712868547;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QQfIuJWqcFRL3pLRizro2nEmUSZOSQcB7vxYvrKX6FU=;
 b=dhAj0NLnlM9FdgPE6uVQV8hnpOIDfHZartJ9mO6fgJSCyEvJXiUCwda/
 AkkXqaenerUEPWvQmijSREAO47CLfgrwmkzlXxFacTlGIrR2lXpIMRa2p
 v20Rj7gKfOtzxQFF+Jz37+W8RPbEgu7Ln/glwWhczmcXOtTd0sjhQ4tSw
 dhvtuDCRaC3C1+MyCM2YhEWroZtp8A6n9pM8IATQGMuZjm39kMLgIz+8p
 D9wFHneY8h4MURMbvfNpdbyhljcbt3eDa9aeiJFXx+2qr2xOlMY1N3Eod
 tv8XHW1NYMub1dfgbdFg+qrzORaa0be7g7osWDvLk+XO8Xpo9MPgRfy57
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dhAj0NLn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf V10 5/6] mlx4:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEyLzIwMjMgMTI6NDggUE0sIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4g
VXBkYXRlIEFQSSBmb3IgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgd2l0aCBhcmcgZm9yIHhk
cCByc3MgaGFzaCB0eXBlCj4gdmlhIG1hdGNoaW5nIGluZGl2aWR1YWwgQ29tcGxldGlvbiBRdWV1
ZSBFbnRyeSAoQ1FFKSBzdGF0dXMgYml0cy4KPiAKPiBGaXhlczogYWI0NjE4MmQwZGNiICgibmV0
L21seDRfZW46IFN1cHBvcnQgUlggWERQIG1ldGFkYXRhIikKPiBTaWduZWQtb2ZmLWJ5OiBKZXNw
ZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KPiBBY2tlZC1ieTogVG9rZSBI
w7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4gQWNrZWQtYnk6IFN0YW5pc2xh
diBGb21pY2hldiA8c2RmQGdvb2dsZS5jb20+Cj4gLS0tCgpSZXZpZXdlZC1ieTogSmFjb2IgS2Vs
bGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
