Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B949E780BAC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 14:21:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27F9440327;
	Fri, 18 Aug 2023 12:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27F9440327
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692361279;
	bh=Egqcc8kzpKQGMviVS/eEsw0j2qC9yZaMYcBD5a43CEw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pkWQcGDvVYH/GE2f7Jvp6ytmKCfHpDYH/Ny7DI5vQ/gnbLxZdlqsuxES8/e+dOHGI
	 IC8AJXntDhMcCg30WMWDPMu0yJf2rXtJ9TA4Zw9O5EG76BQ2XS0LnuzJfNE2wKWtI4
	 5Q358QZ63aTe2MvheatiokyoBZPCT44JN5WWDpWR2ITnQYHEONIP5RIkRIDDFguTtE
	 3n3jopV1M+3hVyK0bX0AhnQDESx9Gll6P+xAVd4mdFdTNjr1Z3r5PSH0bI2KD1YhLH
	 CcbabjIa6X2Bb0OyyYRRm8KKwFngb8hhJxgyYFWh8uBRMW7mLz2p6cZFBynncM5pRw
	 OMkFSsE5ZmIww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v044oz6IPMG7; Fri, 18 Aug 2023 12:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97988402D7;
	Fri, 18 Aug 2023 12:21:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97988402D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD61B1BF362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 12:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82960402D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 12:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82960402D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u74P5m02E6oP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 12:21:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A93B14011D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 12:21:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A93B14011D
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="375869287"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="375869287"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 05:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="684882896"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="684882896"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 18 Aug 2023 05:21:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 05:21:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 05:21:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 05:21:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 05:21:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZKRPDGcivWOe76EBugtel8Ws8papXYZ+AdyOdUwws2HVGpMGczyDwIpHztk8w9s4jl2qakSoaWce+z+/pPxpDs5Ib/kUj88isIWeZxikJGeLiSGKWzFVsuiE0clVnf6mpEtMV8prDxD5fufLbFKJZ92NejjJIJPkOhKsHWlm5VsrJybsEQP15jdTaD0Wglu405tFPnddNpFIYFAOq5kY6a3RxaMcjF3JaU6W8HWxYVxS80K7oIEjzlOP9dSkyjhpmvcqo8MoFj5zbf2aBBTaeCWERSNkBKyOOS/GlzaMOMfxqvRSp9QaUjgHCO9PLRrlNDJIV8tqI07339ZPDhSztA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20Lpt9wBLQdJmhnkjOHzriC+CrXQh4bP4MaoKHV1WmY=;
 b=FnjQAcY3+RfggPKtMpMk+mCnUADTJonKKNoOMTfGPRxgWhBW89pqWn3zjdMRo+SjiWvMKg6TrdGiiYnX56GgIOYj6QpM8PSO1c/eBAuv8P5KW4xHv/dy7GDlT58j/p5vfe77T/5q48Hv1Q3YPeicgFOTmGklETaF1MvYXXzc23jlh7qEBvkOLEr+z0qzC9P4ZCNKWflvlAMW8ET1rbiBuhOhq+qjXuwfrRRXtZcjeSf1xYQDJN1YfiqmWagFqolt4NPL+mgkBD16HM1vx2/cvmARv/8Mto9oMuSqJvEMID2sx+qlCwRTnwsEIzfmpG1ss1bl0jKcALW45ZVaKZPPow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SN7PR11MB7066.namprd11.prod.outlook.com (2603:10b6:806:299::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Fri, 18 Aug
 2023 12:21:01 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6678.031; Fri, 18 Aug 2023
 12:21:00 +0000
Message-ID: <c1f65aa1-3e20-9e21-1994-1190bf0086b7@intel.com>
Date: Fri, 18 Aug 2023 14:20:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
 <20230816143148.GX22185@unreal>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230816143148.GX22185@unreal>
X-ClientProxiedBy: FR2P281CA0159.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::8) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SN7PR11MB7066:EE_
X-MS-Office365-Filtering-Correlation-Id: e445eeeb-60e3-411f-a1ee-08db9fe5952b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mzY4wXw/OktwptKBMo4h43HyKjcTx7DQNPy7mXmdc+ZP8mYS2spDIwReMeOw8wt+lUv8No4PJQOQrjzi8IRoj04KwR1FPRPn4D1W/UcWZKwLRKESAE0WlaUJ8xQ+OuIEB0XpuT6cjuXdEqs+PqAkyHqJLqxadVRTxVwW9y/dm/ie21D2vj48wveo6F+yJvEdDy0WcvlKJO1PnjyqqDomn8dpcNWHshdWV2tg0cyetWkWR5cch1ECoI4lbixayb7nmCeGITUobdiHepVPmwe0WV7fr3NvW5O+IWW/x0Oci9cRB+GUcb4blXvModw9svDrvJXnz6PIe0xjvnQWfFq+lofFKbHS6kJ8wop5+WXtCGGXXEuRO02zsELY0woV+YWsVO/D7uO+Mx14+UyQvcCeMfz2g20NDOSg5o28oMUxgKIyYxeBEN9tiXpcKg77uIMS0Orq44jxtfjg/7ELRWWgEongu6/N4VY2xZhC0YN8U7GJLU0j3uZITOOdweViDcxrsXOH34TIzQ4IwU5oWXMgbL/QtyYDaJ57bYehMGZ7D22/jLcOD0kqWt/L2fc5BJCp/P7Mmi2D/3UFEoGbz7lODX4uvawdLZBVB5cKO3R930XMLr/NLtDEQr0WUkq9cKKwjRLH/hE+no/l3d+zW309Yg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(346002)(39860400002)(396003)(186009)(451199024)(1800799009)(31696002)(2906002)(83380400001)(26005)(86362001)(478600001)(6506007)(6666004)(107886003)(6486002)(2616005)(6512007)(53546011)(36756003)(5660300002)(41300700001)(6636002)(54906003)(66476007)(66946007)(66556008)(316002)(110136005)(31686004)(4326008)(8936002)(8676002)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkFrQ3lQTUh2c3NPT25IQlh6OXYrY1NwVUFDYlRyTDYxK3pZZHFxRS81Z1U2?=
 =?utf-8?B?N1VmZGJqa05ieDVnbUtBMUg5R1N4aG9KOUk2cVVLNzlmYlNibFVyQ28va1Qy?=
 =?utf-8?B?UXdVVWxHK09IRmFlbEZhZUNuZlJ2blM5Um9QUEJGSXkvNWpHVkJkcFBEdDdq?=
 =?utf-8?B?K1N0cExRa0F6dnlQMld1VWt0NmJxaTFsWE1vempaQ2RsMnI3TCt1eFJ0NU8x?=
 =?utf-8?B?TTRnODhQdmZuQUZ3cy9xck5TQnRjUFhML0I1aFRPUkxDcWFCOUFkMWlFbFE1?=
 =?utf-8?B?ZnZUTFNtdnFTaWt3WTlPNjRvWXByaWJpTXMyTXdmRThxTER0ZTZOZ2lPbW96?=
 =?utf-8?B?alBrMWt1c3JLQnZFbVVDRFI3T0k0QzZHblVqNmlmYVRGSGt5QWduV09CV1Ey?=
 =?utf-8?B?RGlDcTJ5d0o2d2M1dXpNcmhuWnViUUxSdENFRERSVUFXd1hwOUVLT2NZUkdB?=
 =?utf-8?B?WXlIUWJJOGpNSWlmTFFPMzdmZ3VBNlFXQndWeTh3T05Xdk9PNmpYOW5wSzl0?=
 =?utf-8?B?UG9HNWM5MG5hd0tXZ1RNTzN2TUJDRlBsYUxrRHZBRzBIUElWc2xLMHdwUHVO?=
 =?utf-8?B?clNQeW1yOU0xNlMvWDVMWFpWVG9YbmlFRVg2V2xXVy9pM0tUcEdnY2ZsdjZY?=
 =?utf-8?B?Qk5jVVhNYWtvWGt1Z2pGVXNnYWs0MHdYdFUwenQ1VUhPOExLdkhoeWdyWjBJ?=
 =?utf-8?B?anpwcUNwbllmRVFhMERydjl1TXpWVlhsSUZJQ0xPY0kxaW1tL2tDOSt0QXNR?=
 =?utf-8?B?Z0EwM3B4SEpPY2Z3VjBoNzJTQ3ZuMHgvdXBHaWd6cENQSDVEV2Fvd1hUOVRh?=
 =?utf-8?B?Rk5EYU4wY1RBSVgwYjFYZ3hQaU90bnMvUXlDMDl1UnA3TlpLNC9idHNVWEUz?=
 =?utf-8?B?dmMrODVyZGFzNWZCWTUrQkNOemN1N2tMMkh1UFR6dFlJU2JHQU5iM1RRM0x4?=
 =?utf-8?B?MkR3WDR5TVJ1ZmJadUhVTFBEQWovVzNCeGJkVlMra01od2s5aEZ4dUJkQ1l1?=
 =?utf-8?B?VmJIcFlOMlpVd3YvTkhYdVByUXdNSmhmRGZXWUR6WUh2SHZLSS93N0h3RUth?=
 =?utf-8?B?a0VVczVDajc2WHh3aDR6cTB2WlpranJWekgyZE9mcmx0KzB4RnFSeVkzek1U?=
 =?utf-8?B?emN5bXVlcTJyNXZTWUJwcHNONEZjbnk5Zm52Ymx4YTVOWHVMRlVuTi8wMEFx?=
 =?utf-8?B?bk00dHZYYmF5bU9Zak1sMFVjWllKVmg4ZjY0Umhjb0p5V25qVFRtQ0dVUmlj?=
 =?utf-8?B?MUNqaDY2KzE2NTlXZko3dmxPZmdWRGZNR1FGZGFva0ZpdFZkSXNXNW5nc0w0?=
 =?utf-8?B?YkY5OEFZY2ErTWwvWURrbDd2TS9vUGlFTThzN2xyWkRtRDdTYmt3aGJWYXZx?=
 =?utf-8?B?MEgrWXdla3d2QmptemY0Ym8rYStuSmlWczBNSVJOWDF3dU16bUZCM3hzc3B2?=
 =?utf-8?B?OXFsWS85azNTNldIRUNsVkFVN1dLNGdTZGJMb21TbXVWYmt2K0Y1TFZyMnZh?=
 =?utf-8?B?OXRadTNjT082U0lhMm80OGZZdWRzRDVoWjhuSEYzOUs3N2g1UUVZeU1iVGhk?=
 =?utf-8?B?WVlualA3bjI2cHFDYWlNZ0dQUjZxZmtlY2swWVFHV3NMTWhNbEdVVDJUaFZo?=
 =?utf-8?B?VjhrZEpVZUJaZy83OVMreXF5WTUwZWtsb0ErQVVMbkZsQ3FCRGlZQmpOSkcx?=
 =?utf-8?B?cU95eVdpRlhrR3BBOFA2NjlDWU5xS2ZpUkZlMGFJQjNaaWRXQm5hcUk4VjJj?=
 =?utf-8?B?dklNbUFESHd5dEFLZk5jRDJHMWxHK3dkWmRaMGZqTzRxK3p5WVZiUHVLbzFP?=
 =?utf-8?B?aGcrWkYraHFPZUlDZjVWenNja1hwbzM0QkpBWmxUeUxQcFpKTTFZWFRNNWZi?=
 =?utf-8?B?QTBUSnZLdlBTck9MTjB1bWlKSVhGa2FFbmdralZrVmtMV1RlblVydk4wMHhn?=
 =?utf-8?B?VUhLZXFSQmNpaXlpRUwrMEQvK2gwSVZyL3RTbGJoUENVS1BRUzNqaFRwd0Rq?=
 =?utf-8?B?ZHM0T2RVKy84YmEzTUhkR2FzNGxEdDAvYWEwYTBoY2c3L2NBMDk1VWtjUUJq?=
 =?utf-8?B?ZlVESzBtTENpdXdDUjdkUDl3TTdwQXpWVER6M050NTg1L2hIbVpsV2FEdDBp?=
 =?utf-8?B?L1F6ay90V25VL0laZDNZdFFQUy9kR2cwOFJncjVhWlcxL29DUC92RThvRXMz?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e445eeeb-60e3-411f-a1ee-08db9fe5952b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 12:21:00.5292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KnmvuBz3NoaoeSwO/v6Chz06K4h+t8lf+kZu80zHZE+0AMRmYMUIUKywDNG/7y0Gj2Eb3Hv0lLhH945FWlfenMBbiwy1wpGLKDCIdwusa6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692361270; x=1723897270;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=95Tq9RrAgN0Vggz/TFp25ro8tqxuN7IhL4OOizto/I8=;
 b=fiTjhMUKjEQsHe2amCm8BQytFtOq0q9FwCMya04gGQ5wxHSqBJrwRdRM
 oDt67gfBZmNmicDW7YTamgSMcmJmz0MXI/Q1rRqC4Ria89Y6wHu87QmhP
 JdsKpsAH5rGDddFKMzGvSjKqjxOoWi4niEI5l9lMQQ3qiEQYBTVXH/KzS
 QFiS6k9qJTTavvJW3d6SzLWyRZ1bK2vTqHIf12Eg1qTw9PU6g6jLmzKkB
 h4CjZIZbGcfP5BLx+9o8OwNGw2kydKJ4SylGdRKhbe8F8MsnZbjLtPKKM
 vYX3FqZk5BiWnSGsouiGMkrmXgfpwEuU+LTqCgvMy2AJ+bafHiP8ikcid
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fiTjhMUK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: store VF's pci_dev ptr
 in ice_vf
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, Mateusz
 Polchlopek <mateusz.polchlopek@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/16/23 16:31, Leon Romanovsky wrote:
> On Wed, Aug 16, 2023 at 04:54:54AM -0400, Przemek Kitszel wrote:
>> Extend struct ice_vf by vfdev.
>> Calculation of vfdev falls more nicely into ice_create_vf_entries().
>>
>> Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().
> 
> I see that old code had access to pci_dev * of VF without any locking
> from concurrent PCI core access. How is it protected? How do you make
> sure that vfdev is valid?
> 
> Generally speaking, it is rarely good idea to cache VF pci_dev pointers
> inside driver.
> 
> Thanks

Overall, I do agree that ice driver, as a whole, has room for 
improvement in terms of synchronization, objects lifetime, and similar.

In this particular case, I don't see any reason of PCI reconfiguration 
during VF lifetime, but likely I'm missing something?

Other thing is that I've forgot to call pci_dev_put(vfdev),
thus this pointer will remain valid forever :~/
Assuming proper refcount balancing in v2, what could go wrong here?

> 
>>
>> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> add/remove: 0/0 grow/shrink: 2/1 up/down: 157/-130 (27)
>> Function                                     old     new   delta
>> ice_sriov_configure                         1712    1866    +154
>> ice_pci_err_resume                           168     171      +3
>> ice_restore_all_vfs_msi_state                200      70    -130
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
>>   drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 +++++++++------------
>>   drivers/net/ethernet/intel/ice/ice_sriov.h  |  4 +--
>>   drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
>>   4 files changed, 21 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index a6dd336d2500..d04498c2fd6d 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -5561,7 +5561,7 @@ static void ice_pci_err_resume(struct pci_dev *pdev)
>>   		return;
>>   	}
>>   
>> -	ice_restore_all_vfs_msi_state(pdev);
>> +	ice_restore_all_vfs_msi_state(pf);
>>   
>>   	ice_do_reset(pf, ICE_RESET_PFR);
>>   	ice_service_task_restart(pf);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
>> index 31314e7540f8..48bc8ea55265 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
>> @@ -789,14 +789,19 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
>>    */
>>   static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
>>   {
>> +	struct pci_dev *pdev = pf->pdev;
>>   	struct ice_vfs *vfs = &pf->vfs;
>> +	struct pci_dev *vfdev = NULL;
>>   	struct ice_vf *vf;
>> -	u16 vf_id;
>> -	int err;
>> +	u16 vf_pdev_id;
>> +	int err, pos;
>>   
>>   	lockdep_assert_held(&vfs->table_lock);
>>   
>> -	for (vf_id = 0; vf_id < num_vfs; vf_id++) {
>> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
>> +	pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_pdev_id);
>> +
>> +	for (u16 vf_id = 0; vf_id < num_vfs; vf_id++) {
>>   		vf = kzalloc(sizeof(*vf), GFP_KERNEL);
>>   		if (!vf) {
>>   			err = -ENOMEM;
>> @@ -812,6 +817,10 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
>>   
>>   		ice_initialize_vf_entry(vf);
>>   
>> +		do {
>> +			vfdev = pci_get_device(pdev->vendor, vf_pdev_id, vfdev);
>> +		} while (vfdev && vfdev->physfn != pdev);
>> +		vf->vfdev = vfdev;
>>   		vf->vf_sw_id = pf->first_sw;
>>   
>>   		hash_add_rcu(vfs->table, &vf->entry, vf_id);
>> @@ -1714,26 +1723,11 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
>>    * Called when recovering from a PF FLR to restore interrupt capability to
>>    * the VFs.
>>    */
>> -void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
>> +void ice_restore_all_vfs_msi_state(struct ice_pf *pf)
>>   {
>> -	u16 vf_id;
>> -	int pos;
>> -
>> -	if (!pci_num_vf(pdev))
>> -		return;
>> +	struct ice_vf *vf;
>> +	u32 bkt;
>>   
>> -	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
>> -	if (pos) {
>> -		struct pci_dev *vfdev;
>> -
>> -		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID,
>> -				     &vf_id);
>> -		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
>> -		while (vfdev) {
>> -			if (vfdev->is_virtfn && vfdev->physfn == pdev)
>> -				pci_restore_msi_state(vfdev);
>> -			vfdev = pci_get_device(pdev->vendor, vf_id,
>> -					       vfdev);
>> -		}
>> -	}
>> +	ice_for_each_vf(pf, bkt, vf)
>> +		pci_restore_msi_state(vf->vfdev);
>>   }
>> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
>> index 346cb2666f3a..06829443d540 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
>> @@ -33,7 +33,7 @@ int
>>   ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
>>   
>>   void ice_free_vfs(struct ice_pf *pf);
>> -void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
>> +void ice_restore_all_vfs_msi_state(struct ice_pf *pf);
>>   
>>   int
>>   ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
>> @@ -67,7 +67,7 @@ static inline
>>   void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
>>   static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
>>   static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
>> -static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
>> +static inline void ice_restore_all_vfs_msi_state(struct ice_pf *pf) { }
>>   
>>   static inline int
>>   ice_sriov_configure(struct pci_dev __always_unused *pdev,
>> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> index 48fea6fa0362..57c36e4ccf91 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> @@ -82,7 +82,7 @@ struct ice_vf {
>>   	struct rcu_head rcu;
>>   	struct kref refcnt;
>>   	struct ice_pf *pf;
>> -
>> +	struct pci_dev *vfdev;
>>   	/* Used during virtchnl message handling and NDO ops against the VF
>>   	 * that will trigger a VFR
>>   	 */
>>
>> base-commit: 0ad204c4acb8ba1ed99564b001609e62547bc79d
>> -- 
>> 2.40.1
>>
>>
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
