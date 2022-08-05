Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD96F58ADEF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 18:14:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57F5F834AE;
	Fri,  5 Aug 2022 16:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57F5F834AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659716055;
	bh=BMZMKydqsggCxu8ar3ikSYR0BboFI8m8fvKqAdh1mp8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d9rxjGMqPLpxKKya8NjVHIhiSjWr190q85KHjA92MvbXiVY9aAgIRrZ3WN/RbS11G
	 Z4fihTY2fK/ecvD+knPjl9g++3dYkoLu56O8hAMUE7AAqSYMT08cFZLaj/nUKlJu3H
	 wnMdciCiAPsKmlnwNbpEQ3hpzwlxYgUmVKZSiAaioM/od826EYiHGB9ECkZHxOHJkl
	 G9y2QA36Uej+9vD4j3Kzsz6cAQ3iOTVJU5e78PRmE/cEr+uR1RZCYBgOuBCoRM+6cK
	 t91h83HJ7R8Ocw5SDtpUTi90+FzpLU416jpj+V8Ph4GISfqG6XmriVXZANcKyFkgLM
	 ifn0y5slZwW6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46pMtrR8WHoB; Fri,  5 Aug 2022 16:14:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DDA5829FD;
	Fri,  5 Aug 2022 16:14:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DDA5829FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50F591BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29DBC828F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:14:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29DBC828F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2696ISYIyapy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 16:14:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 723B9827FB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 723B9827FB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:14:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="376528656"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="376528656"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 09:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="931279256"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 05 Aug 2022 09:14:08 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 09:14:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 09:14:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 09:14:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 09:14:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kM6JgakUzvj1fKD37hTKegX3/NB5uiV8p4VxWmicf+5Waw5NncyKRcaEAwvy31dGWUbmRzQk9beXzxZEynamKsMEH9B5WJxwzhTuMBd5twHObDOXQRo0utKietgE7CnctWfpKBOXcdLrEn+9/vzbGG0cywhPfMYoipwKwjbecjsNgZzePJQXtkPhzzyn7EmjDyT8sbuy8Lb5UIaNeJhNLLiUmA5i/Y8HK+C53AjHzg7+fbOg2NCCm+Yle6SIO3rsmUBA2RbmK2huv3XCY/7p5sb5/N5PSB8Rhpg3mRGrRXGCjsSrDeC8jFIL7YiczJ5wYB0/n7ZTAhWwXIjQLXTqpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ovbij2cVgKmkCRwFlyFfVSWCx+hyBLW+tYg3aqJSrUg=;
 b=fqg1v5NdAm8/vDn4G+NEMQYz8kOts2qosZHaX8EO0dslZ6qhDrMez9ucpEO7dqtHSk0S1xkUB+VHwvwJgJWpoeGYMMMqeM10NoPEgze+3vZp51Elu6KAykx4X23xt1xaMmbcJZ81Ymzxdyp8ydyy+66Vig+hWHRfQufaERXJTI7gPYKc5OWBEhYywJbWpdMjp3y4R0mgYxwK5H7HN5uIqXFbqtuUVFK395jI1XvlPborXITM43+CtF/j0fxaFf58RqaStinnxOWxC+6ULp2dwAdrwvBsiAqTMOll4iUagTvjAGn7VVNthtMTodNNrxOdapRVb/LW2f1cHofi+RCNDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB1616.namprd11.prod.outlook.com (2603:10b6:301:d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Fri, 5 Aug
 2022 16:14:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 16:14:05 +0000
Message-ID: <c3c24532-93ed-6a9f-f644-4be4e5dfff0a@intel.com>
Date: Fri, 5 Aug 2022 09:13:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220803163821.229317-1-aleksandr.loktionov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220803163821.229317-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: SJ0PR03CA0159.namprd03.prod.outlook.com
 (2603:10b6:a03:338::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 461641ff-fc0b-43ca-d1ff-08da76fd84bd
X-MS-TrafficTypeDiagnostic: MWHPR11MB1616:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BhodHs/kD/UuQ5VZRY7lyur24NmYUlKu4IT9ov0WbWfJdTOdhS60w4rxKOScLXAONIPAcVLQby6viAQgkZ1geKDnLorhQuA+BVVBDYqfyak3rHa3r5KV8Pqv5x3kpj3M7lpffvCyNvtWlZqtQlOTRZXyZxXVmD3hVkKfLU+XxpinC/qwkkC0Bya0iP04SH7Tf0cUCAumM0j/wqib9Qu8M+JjfoRNkkw8Z83dX0qbpcDbC3h8xR+7lE6AuWUDJT7QxTLoJA7WNDKgqUCZ1JCEsAerVAOz/ADLomtdWFduBL5MLzNutTIOd0zxbroRl1taUndvZ4Ts47ffQQohMAO95jSiehoQ8+antX/qEjLcjvW7IGM3J/lYLPd9WqD8/ufFmgKK925nC7AO4bgjQIovp7jGvY8q8AAP5fu/mZwVjYniNDUCqQbBBosY8DjOX5S0C34tzsI5Wm1onHAhVc3b3baThGP7VoCd4tjEy3Rq8Ag83atOO15417LB5ZiL47Ov/cYQzoZdkqVl8c2+Bp6km7Mj/2dj1rG0d2k5H1LtHBiE6fxb8F+YujAU03qyKvcVtVUk6wxUV2t5bhblZsrZMjcn85ELaBTgMpu7vCXrzshMnaeDlmU9tzGQyCaYGQRuVbNkbFtV9ipcJ2pqNYWBrKVN2VWdzgRwwW+rlPrtQEf+tP8l2wynNtdM4UH9tAPD1GkFhMFjt9HxkJdCeyzOaD4Tb/okkf7/UvJ+BE+m2lg4Iale1evMA7YUy0cQ2HsPZaZ9TkVWGEIPa3ITiG2xP9pBNBX4Kp/Zf2RquPBBFp/XmwDx47UVVd7GP7hn4p03P0L7N0uOj7hOUrhGIABZxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(366004)(396003)(39860400002)(478600001)(6486002)(82960400001)(41300700001)(38100700002)(316002)(6506007)(26005)(186003)(83380400001)(6512007)(53546011)(6666004)(31686004)(2616005)(36756003)(4326008)(107886003)(8676002)(66946007)(66556008)(5660300002)(66476007)(8936002)(4744005)(86362001)(2906002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nld1UmIySnBBV2c4SE90S3owSkR6ZjhJRXB6RFMwbDNlWGcwMEtFenRWUFZt?=
 =?utf-8?B?NFhsaXR1VmFSMkhYRmQ3OUZjR01jaUJqb1BsbmFSMHlUZlNvbnNUblRUKzBW?=
 =?utf-8?B?Ylhib3FmYjA5UndYVXhHbGV2NXZ6WjJub2pGd3RzK2E1V3NzZTV4TjdxZDlP?=
 =?utf-8?B?YU1GQ215UUsyRGhVWFA3aEpwSy9MSXo1eE9vYzBQR3o5QmVreDRJRDZnL0tk?=
 =?utf-8?B?dlpDT2padDZoZWFUd2RtUmxGRk85VmtsN0Y1Ujc5Q1NjUURYaEIwUkJPaU1I?=
 =?utf-8?B?ci81VUNRTmk3aW1SUVZDdmFIc2RIQzZZVTZaOXRGTkpvUko2bk1RbVhKWjZr?=
 =?utf-8?B?a09BeE1rWkxmTW5YQ1RaZGg4ZUJPRm8xZ2wyTG5mN01CdENwaUhzcHI0YStt?=
 =?utf-8?B?aVZ5WmpIVHhjVUs5WjlTR0FvUS9GdW5oMEJFam55QmtMNWFxTU5zRWtuTGhZ?=
 =?utf-8?B?dHM1eG1HekdSS08zWEloSnRnTXZRRzVaVkY4Y05STDZnS2UvSTBGU0x2U0c1?=
 =?utf-8?B?UHRKeUNBVVI0aUpQWkRyalF6ejJySnRzZUc0UlJEYjN6T1lkeTllNVN5VHV5?=
 =?utf-8?B?YjNjRlBheHpib3VsYktxQVdYZ0pTanhsVG9hK2c5Q3BPT3djd3JnTGQyNWg4?=
 =?utf-8?B?T2Q3VVl2WmlWQzcyc25QWm1tQlJDR2ZRbmkwaVlpTHVmblo2MzA1em83VVpW?=
 =?utf-8?B?OFNwVDRsRmtGQ08ySHN6OFo4MTdReXFZakNXNzFJNjZXRmMveC9OQVNhWE9n?=
 =?utf-8?B?L1FMVTM3aytiek9pV3Y1VXhORkZESWxTYTNKNGlVZ2diTUcvcU5Ic000ckli?=
 =?utf-8?B?ZXpvc2gvN1pCYnVPRGRocjU2aVZzZUVUUGlVOFJ3UWZ2UXFxZXJkd2oya0t6?=
 =?utf-8?B?Rkp4YjMyeGpxRFdsS0VKWTNMQjdGcGt0MjZ2LzJEQlJIdTk3MDdweEQxVjhE?=
 =?utf-8?B?TzJGalNVN1pEL0U5UmFOM3h5TEw2ZWFoS0pwVXZFMFYxWXgxd3FReC95Q0lZ?=
 =?utf-8?B?eUc3MEhVRTVXMDZxZVVsNE4reEJlcDNKZHZicjgyRU1VNXRmeklDVW5ibndo?=
 =?utf-8?B?VXlCWjJSaE5rOEEzMXFTUzB0clpjQUlVMllROTI0TUI5TytRa04zSjhFYWdl?=
 =?utf-8?B?c2RZOG9TVlFwUTFkOUgxL0NNZmZzS3RyUDU5Y3UzZmFGQ2lBZzFmQUxhczF4?=
 =?utf-8?B?aEJIbFVaQ1JXNHNzUFh4WGVhcWttaWpaQnVDSitLVzdYMVpoVkxFdHJUdzY5?=
 =?utf-8?B?dWZmTnBMZENBcjJEY0NRM2dDWlQzWTlWd1ZNRHB3bzdkWi9XMVN4aThZT2NN?=
 =?utf-8?B?MThIWEZqb2QwUmF2d0xVbGdqbXNxQ1ZGT2toYlR6Q2ZHT3YzbCt6TEMzVjV0?=
 =?utf-8?B?Y25kcmZzNjNoMnYxcExOMHFWNW5nN0JxemtnSmRWVVkzUGJ1RE5kUGUwVzJ2?=
 =?utf-8?B?cWsyL0owcXY3N2wraU8wb2VjWURjaDVIS0NOMDJwSjk4dnZMcEFMem5ONkNt?=
 =?utf-8?B?L2VLU0oxcWNHSzkxeWxrVEk5TDNHWHVsamozcWNVVVNSdmxnZ28wT2VYZFNz?=
 =?utf-8?B?TEkzd04wQm9qVGtQYk4veU5TbUNSYXBDRmp2RHVDSkJKcTFOTG0xN0s1V3Rn?=
 =?utf-8?B?em1rQkRXZmoyL3Y0dGlJdE9DbStmT09nc2VaQkRTY2ZRejVzdlY5Y3lyZmsy?=
 =?utf-8?B?MEFsSmlwSVFTUWV0OVp0SllsSENtdEpLRmhteFlxWWJFcXMrNzU2WFhQMkZp?=
 =?utf-8?B?VTRkcFI4b0V4RjBkbHFLY2hYRVFETE8rN0dDVUpDSTduMisxWmJvRXd6Z3Bl?=
 =?utf-8?B?bUJoc3VCb1NJd01ibVU2a3haYjZHM0p1OVpES09LZmZmdWNIeTVuc3gzcnNV?=
 =?utf-8?B?b1Y1T0hMekZoSlVxWCtJNzZNeFN5WUhsNVo4QzVtN2p0Z1BmckFVcVZ2aEFZ?=
 =?utf-8?B?TUxqd1EyNk1ncEtrVEFXOXBTTEg0WkEvUzI2YjVoOEdSM0x6R3FLeUluYXph?=
 =?utf-8?B?b0xiUkl2YklPQnM1dDhPNEo4UkVVQkttcFNGM1BrWVN1QSt3YllsNDVFa2JP?=
 =?utf-8?B?bnB4WjNISEhoY04zQ05XVGFVMVhUZzNGZE8yN0JxWHRzT0pwMktkNy8vOFdY?=
 =?utf-8?B?eEFXU0pUVXh4YUFsdG9LaTRyS25lRVpacG4xOEFlODZVOHlkZDR2VHRHY3Qr?=
 =?utf-8?B?ekE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 461641ff-fc0b-43ca-d1ff-08da76fd84bd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 16:14:05.4682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SRcnMBD0zWbm8q7JP7i8OjHDbFv1PV3vxN6sNJaaCgdoVKTmd7XZIGsVhiwg0NdjcvRwLMd1U4KPku9A+7lT00/cgdLfA9STkoQDdAx0s0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1616
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659716049; x=1691252049;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u8ZmjNTFDIHqkWKQRP1/WUMTvHnFNf0UNWW87lKSF5g=;
 b=MeILKTyOZmOtYX62Q5fY+n/XoLzqm0CGy6jpafHyASu4SGQ4DI4B2q5w
 HozqdbvLaEYfdlhsSZDq5jLrkwA3WRZSiu3rfYp912pY4+hr8T2eGf7W9
 XXTOSJuGWFCVGlXP3Czk7paVJLqRKiO6ohdB11Tx1Yu6OokKHws6Y4kFi
 I12252heZmOi926pKFhkTW9L6um3Iaek12GFZassbX8e+sKQ/u0H9HReI
 R5xuE+cjEr0Vx13b7+gRBTOTHKhvT8CS06rvZZ+oykNZDlr+F2GJVXfwI
 QDlgSm5WDh/wcw4k7SXYX1cN7DJwIC7r8uCY/ocxczW1GzpZHVLdCLvAj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MeILKTyO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] i40e: Add source-pruning
 flag
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/3/2022 9:38 AM, Loktionov, Aleksandr wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> Add source-pruning flag to meet UI requirements for command names.
> 
> Source-pruning flag have opposite value to disable-source-pruning.

Private flags is an area to tread lightly. As we already have an 
existing flag (disable-source-pruning) that controls this, I don't see a 
need add another one to update the naming. Nak'ing this.

> Signed-off-by: Michal Jaron michalx.jaron@intel.com
> Signed-off-by: Aleksandr Loktionov aleksandr.loktionov@intel.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
