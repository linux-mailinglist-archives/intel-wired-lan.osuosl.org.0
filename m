Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5806785EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 20:15:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B298981FB2;
	Mon, 23 Jan 2023 19:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B298981FB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674501318;
	bh=0B/wgLgI6gz3mn6lluG7kpPas9rvKnOzImB6HAc7fco=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wyU8NM45AyjYkDaOExZMdteUrwhe4+QPLSUvj0JULsR50isULE2CqPr2UmnkMvFZH
	 4yXmNPJx5lIZbuLAFn+Fssnf+F0JGV3WLvGyMO9XsY9lnKQ9VdI/DB8dzug8EsFvev
	 02fTS5kfPeW2Lb7Fp/Mb3Pn3VO74sL4Tsbkb1B580xxzjQIay/7E9Rp9HUMjuLOf28
	 O600JnYSbXXDOi/wZk2L1J9HhXkCz0a2H+TRXiXka6MjCOkTrxHiGDKPm7gpaSsKzv
	 7IIa8s9F0hbPNQvBixRI/Qgs3xFFa6up1RRhAK2QBX8NRxqxwmm8Zq1B1sfjCVR4ru
	 U1E7xS0Hr4vdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUzvc0AQS2HS; Mon, 23 Jan 2023 19:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFF6581EC3;
	Mon, 23 Jan 2023 19:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFF6581EC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 435B21BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 19:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CC4C60C2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 19:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CC4C60C2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cnIW3uh0oiiV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 19:15:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD96960AC0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD96960AC0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 19:15:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="390629547"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="390629547"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 11:15:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="804318242"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="804318242"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jan 2023 11:15:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 11:15:08 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 11:15:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 11:15:07 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 11:15:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0V0luxoQb91U48suPrgTICn2odR1InWaAWO7PRPk0ucLuaVrHMiJ18Zq3Vh2zlq5mxixYyevrZ0V8M5IfAl0zyqLqNvxLH/9KOPgxcL96rTpo6PkC7sDmDHzb4R9ux0GqcbQhz+fTrj2lPOpKIC+JMRpFBgnz6jlF2MKekHM9LZPw5idbDkuDcVXRO+inxVien0WTkjv0R9A4UxuXgSKs+Eo3Lf3TwEsL8VvduOAZMAIQRb2VUhipAxa3wikW8r5/v4mXTomMjFQ7w/BRMyAyjdto0ynlNO1drrA0mnyRH8jAZvgul4hfXzEfTpBGurZP67JAAqFWShu1JyEeh0IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BunUHHQf4OH8nDbfrfAzV2dpTTPTF73VtxlZPJJRo1k=;
 b=oHpAy1Mn0rt/QiZM6FMYzG5BRFGtLP+QiTHLYl2qaZg0mc8dhZGDYAETkoCAukT4N+XeLbmdk9jkgdG+TZavI3p2I71Y9o2HsKs8Qtv7jpehHs6ov8pyFDFkdUTUCoffNaOA5nc5DspCPRA8IdH0my7O9TJpMzChRYFJhCmTM3hwdTwYj9Chxxy78y1X0aSHVHeDqh6DzmdVDTRc81axVZKNmQorb/RI4/9a3TlGkcwFmETZ9xe2qnuvO4GKV7VGAfk8ASv3ZIP1TWY1gj9lBmS+f4LywMwRUAfLu61Mb2wFxLDYYXxHnRmbIZm/CLj1NCad+K5Y+GveOtRjUjPhGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6680.namprd11.prod.outlook.com (2603:10b6:806:268::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 19:15:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 19:15:06 +0000
Message-ID: <db713b6b-cee4-5163-c081-4d7c0c4ebd4b@intel.com>
Date: Mon, 23 Jan 2023 11:15:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Daniel Vacek <neelx@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Richard
 Cochran" <richardcochran@gmail.com>
References: <20230117181533.2350335-1-neelx@redhat.com>
 <20230119202317.2741092-1-neelx@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230119202317.2741092-1-neelx@redhat.com>
X-ClientProxiedBy: SJ0PR03CA0211.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB6680:EE_
X-MS-Office365-Filtering-Correlation-Id: 4451a2e3-900f-4968-2d74-08dafd7622dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b4wDC6OdIuP2rB8VX5yWiGXoukfJemyc2pjYDXlTqMEbQHrQjo2FdPx2izUB/oy1X3sKe2k3i4SMXAzKCHL/rOlDxFjHH/AKpDZHMWRR5Y0rs/1GS3dpCx50NNYN8NhV/HiN7qA914zML7jyLHZK3w54W2liPz2PO91QarhNaKTm3ZWKOy3b9UvSdDezJRi1phCJvVlcxwVKdWcyhnsElQLsG5wyYcTpmZN7byKCcnfCgWdFV54T3lLvuS6+zn2rrYouHGasz9fyWJFeGzQkjc3OOGUpgPGyHcltXdD3CAZu+Ezee6lUfOmffhT5f9/NmIUgzoj4UJdo2NZs4ODZZ8eF54Azbwf8Wliwpr5hzfDh9s58kfyfwftBhObV9xFBjcftDStIkIiyMk32cV64pHnkmP/SUl0HPaH60pNW9Z+cqULCUu/gvpapoDDz1OBXpAx4bJb5k0BEcC++QxvXdNjlSW1O/x11xDorxWnqSWvM631DrN2gq2n1d7COX8JvEFDOdQZ6mniKVW0eRe0LD07F17nbVW9bRkdOEql/IZZFGTWs+h0ePHNaTGvi7RQ5hZwQFuWuXTtizEiwNw3S2B4KCnxUo1m6n+smgoe+KVw5cj+R8d2sJiWZVKsOVgjNvV3kM8EJIwp+lTGaYwHFY1oQ7c1RF3kPTHKeFina4GBcX9uw51GISen0OL2Y2ABzFqh5zrmJ9LIk7x2FTy5LEDqdmullnNRAniuEbcBUiIs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(376002)(136003)(39860400002)(451199015)(38100700002)(83380400001)(82960400001)(41300700001)(86362001)(2906002)(8936002)(5660300002)(4326008)(6512007)(26005)(8676002)(53546011)(186003)(6506007)(66476007)(66556008)(316002)(2616005)(66946007)(478600001)(110136005)(6486002)(31686004)(31696002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1h5UStOL24rdGFZUm56STNzUjJNY0lUSUl0M3I0cHFTYTA4YlRWeHBQRkgx?=
 =?utf-8?B?K0R0YTNRcDJFdGx6ajR5d09uWU9ScHZTSlhhckVjU2xMV3pob2lpK2VGRDdv?=
 =?utf-8?B?anVTc0swcG1VcGNxV1N6ZWVLNU1vWmM5Y3NWT0wybUdwUGJPaldaK2pwMzEr?=
 =?utf-8?B?eHhNdVVMVjBkaWNwVDdoM1pJcFNOMmkvbDRnZzgzZ2RlRXZTdHFXTUlTQ3lr?=
 =?utf-8?B?TGZIUzVqcis3SUZIK1QrTjBRczJQOUZPY2hMODFpUldMOElybnVwc1VOM1FD?=
 =?utf-8?B?UTN5blhySmpHWllKSHc1R0lKWEtvNlpoN2RZTGRUK0hLSHhZVjJOdlhwVyty?=
 =?utf-8?B?VmZEZTVwcnFZSjdYMzNjdWE2MUZNWW9FQWpxUmtlc3BETDJaVFNhS2NVc2pS?=
 =?utf-8?B?aXgrSGF6THlyV1ZFc1JYNUdoS2pua2xZNWY5UzIyWUpidGFqNXdkTG45bDB4?=
 =?utf-8?B?eUFJY2NjVE5JNlZLa1RYV3d6WGxzL2RtK3B4cFZqY2dFcWQ5K05xejNNRFAx?=
 =?utf-8?B?cXMxUWxIWmcxTTdaNHA5YWQ4MnhvNGZvYytYZDdvMzVqNFRLNFE0VkZuZzZa?=
 =?utf-8?B?dlFxdmVKc1d2bzNLRFpqckJTVEZkU0RCMlF0T250WVlxSDBlS3hBN0NrYzlx?=
 =?utf-8?B?NjhWcjlQTVlZeTZLOFVZNkhTQldaUTdaTGJQQmQzUzhKdjZtRnAzOVM2YWxZ?=
 =?utf-8?B?TTlPUithWWs0eDVuMEF4cXJEdFJxUXVIQnRoNG5DSTdTN1Vla3BJK1FqaTVm?=
 =?utf-8?B?YWFnY0pIZ2gvK0c4b1JlZ1A2SmRCRllySmE3a0Z0c3pIMko5SzR1Rmg3dDJu?=
 =?utf-8?B?cUVLd1A1a1JkbERLQkxRUDZWbFYyZCtpL2lQV090UXAyaElXQ256czhwbnIw?=
 =?utf-8?B?WUxJNy9DbEZ1UDVqa3VUSkw5Yk5WUnBQeWE1dDF3Rk5pbG5icjFYLzVyeW4v?=
 =?utf-8?B?MG1SOEhSUWozTTBCQlFMbHdjMmREdEEwa2tadlhiZDVTS1lnQVZoN3JBMjl2?=
 =?utf-8?B?dlo0TDZSSVFVaWhTNjV1UUVZdS9mSFc0U21nMzkxdTIyY2d6WjlDT05TOEdj?=
 =?utf-8?B?TGQ2cUx6RnVKZTM5L004a2NjNzlhWTlxUnYwSExBS0dET2phRnZlMklHT3pL?=
 =?utf-8?B?TGl3KzVrbGt3SUV3TzJ2YW54dlZLVWF2UmIyb21uc0F3ZEhyRmZaL1V0dXdU?=
 =?utf-8?B?THFZZlI2b3BFTTVETEFCbWdKZHB5UXRxck1JVUE5anJkZldZcmk0d0huSnNh?=
 =?utf-8?B?bnlJSExCSEFmWFRJa1B1UTRWLzR0cFpFblljTjJ3WlVjc1lZZ0hKNlplTkNX?=
 =?utf-8?B?bFQ5M3kvVWxGUVcwSHdndVFXZ1RtNVdnaFA3YW95OGdlN2Y1U0xwVFZYNGJL?=
 =?utf-8?B?MU1sWGoyaE5zRWk3S1dhZHZ1N1lQYjRjc2R4bTV4UTVVV2VQTVhYMlhjWWlG?=
 =?utf-8?B?MXJvL1JOS1RETmxaN0JndjR2eG93bndpSGU4SExvQXJFUXdkQlVLVVZRUVBT?=
 =?utf-8?B?YWNJVjVRNkVDb0oxMFZRQzRDM09lM3RqREQwajdVT1d4d0U3d21SNC95cFRQ?=
 =?utf-8?B?Z3N0Qlh4RkJvV0dPdHhYWHpZb0pnVUQrVXdReSt5OVhDenBvR0xQS3R4RUVP?=
 =?utf-8?B?bmkyOXE1b3hNdFg0d1RpN01QU25wRCt2QytIUE1RNGl5SE83eXc5dWd1NmtM?=
 =?utf-8?B?VVhQQVRPRFBWTTMybFQ1UmxHVUtvTkhTY21pOTNXWFZQVTFxdXI5c09pUDgz?=
 =?utf-8?B?S0tqekJOd1lsU29xTE95K0k0WnJ4bDc0QnZ3c1F1REV5MlY2NVlwa21Hc05k?=
 =?utf-8?B?SE8xWERkZWJ1dGNndHJYRUlFU3UvU1lZUCs2Ri9zc29pUXJKek41RDdCdExJ?=
 =?utf-8?B?UjJRZWtLUDF3TE81VEMvUDRYekhONUI2Sk9ZYTV0T3ZqT2g2aEtyMC9zcWJI?=
 =?utf-8?B?UHF2TVVyazVQTkVreTlHczk0SytNVEozOFdXc09ucEJ6c1lvSzlmQXd2aVU4?=
 =?utf-8?B?aHpYM0VOU08wdTJaMFJSbWR0R0tVaW5RMTZ3TVFpSjFQQmlFOVdlY2hIb1pi?=
 =?utf-8?B?SVd0dDZSU0J2L2JxYWc5VGtzV0xsRlh4RVVBbktrRmkreEZ3bkVDdHFJY0NL?=
 =?utf-8?B?WS9CMzF5OVhTNGxJN3IrOVB2eFIzcWFqMzhKUUdvNE9rSWowMjQrQk1nODF5?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4451a2e3-900f-4968-2d74-08dafd7622dc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 19:15:06.0589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iXYb20im5NEI7E3aa1iIJGRHGrUX0ZaqTHD/ps79EC3V5rFcIKOn3UsB4ECXNkTXE0sLH0UJZSjoJs/IeIF/B1hhMu8cSwP5gwCCbpD1LNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6680
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674501310; x=1706037310;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dFnS36AtmQqhgQjTr5xlkFT6o8usjSkNnMbF1SAev6U=;
 b=fA3HeYBtZxdSdootGo8j4H6HF/sSoXdu8MvPizn8hiSAlG1qvbIvjlFZ
 bnI913etLQO832lZaM3FynTY411vdv/BbaNEHeDe/Qyd3KEjOjfmfiWrM
 jF9wkl6h6qVJsuVwRYTcu0hI+C+xx6Iqf/63vIoLaYdFANrFvP1DWE6A9
 Nol7Eiejc/1Ohbko5mHYUCxKF0lmEIv/3jvbZ//IJ3+5cKXO12nlcb9oy
 wef1BhjNY7Gl0qQcmaxpCUe0rQJ8vSf3b7ynZFIRtlpj1XVJLfAlUNygB
 DcMXCruHcx0E110YGqqUX5/9Tcwu/857W6TJWdSGnNWvN59aYxgum8m19
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fA3HeYBt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] ice/ptp: fix the PTP worker
 retrying indefinitely if the link went down
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/19/2023 12:23 PM, Daniel Vacek wrote:
> When the link goes down the ice_ptp_tx_tstamp() may loop re-trying to
> process the packets till the 2 seconds timeout finally drops them.
> In such a case it makes sense to just drop them right away.
> 
> Signed-off-by: Daniel Vacek <neelx@redhat.com>

This version looks fine to me, thanks for responding to feedback.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index d63161d73eb16..3c39ae3ed2426 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -680,6 +680,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  	struct ice_pf *pf;
>  	struct ice_hw *hw;
>  	u64 tstamp_ready;
> +	bool link_up;
>  	int err;
>  	u8 idx;
>  
> @@ -695,11 +696,14 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  	if (err)
>  		return false;
>  
> +	/* Drop packets if the link went down */
> +	link_up = ptp_port->link_up;
> +
>  	for_each_set_bit(idx, tx->in_use, tx->len) {
>  		struct skb_shared_hwtstamps shhwtstamps = {};
>  		u8 phy_idx = idx + tx->offset;
>  		u64 raw_tstamp = 0, tstamp;
> -		bool drop_ts = false;
> +		bool drop_ts = !link_up;
>  		struct sk_buff *skb;
>  
>  		/* Drop packets which have waited for more than 2 seconds */
> @@ -728,7 +732,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
>  
>  		err = ice_read_phy_tstamp(hw, tx->block, phy_idx, &raw_tstamp);
> -		if (err)
> +		if (err && !drop_ts)
>  			continue;
>  
>  		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
