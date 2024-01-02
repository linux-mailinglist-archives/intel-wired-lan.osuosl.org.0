Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5227E8220FA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jan 2024 19:29:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4581940959;
	Tue,  2 Jan 2024 18:29:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4581940959
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704220166;
	bh=U3CvarY1TvBnyLzYP1el8o8WWZ2mxdtxBIaKo3pg21E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sh6rpgOczQSFR2WXmG2CVjkqQm6IcDRq1zkcVsDX1sBoqTA9FocxGKjnORTqfFAoy
	 l9Qzg6OfdrmseQ59QMLLS3/OHRWLvbIIvKwu23aFxVMVN7mPdvUQ8kA32/Fpn4veDJ
	 PhRkeDaAZouNYMgopByCEEN/HucB8eh4NjqwV2j/9AtAYOL0PMhXGaI4ARrF7qkTIM
	 kQLCuMtNLMCa79y1uZtCLbQYRkF/sRZvXihe5uDQCfe9MFXOwAMOSYdzuBojsSl1ij
	 3ijml1rrYhaDAmGeyEH6eFb1oJcvaz2yDKktJEJ8kmewrqg+lL96J0PAGTjBFcX32E
	 PzocVERPatZ3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwO6INSHeCGr; Tue,  2 Jan 2024 18:29:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D48940967;
	Tue,  2 Jan 2024 18:29:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D48940967
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FCE41BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 18:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46AE58125B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 18:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46AE58125B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4y-4Y1YRkppr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jan 2024 18:29:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 26B43811E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 18:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26B43811E8
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="3720181"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; 
   d="scan'208";a="3720181"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 10:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="21556146"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2024 10:29:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Jan 2024 10:29:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Jan 2024 10:29:14 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Jan 2024 10:29:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSCM8y7M2+KxtnxqZik6etZ29+1GnsaSktZUywRSlhPGtBRRHVoYEDdQGXYi/9e0T3Zpj0PkwnDJt4iRZBTz/0vyi614XXyrVNpyNHfw9A8y3WO9eWSD+2Xr3ZteWNCYJcHY0zyCj+5LqbX8KRGzxULEweksrQa0I1d0N4GzGzmXC5+vTJsLyj8x6C5ldRX8hjlbmNjqyhrdLIJlL3KikYPFncxq/Hg11hb5nEEV6hhKsVpc9uiibQvG75iLvUdt+s+J/TcTqkvQ9pPgYW2OjjRQemm7S/fP2aQZf9MVZSP3HsaLhjZLzdxUnhjbs0zc/Xn/VChOjl/rW5WKLACgag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U3CvarY1TvBnyLzYP1el8o8WWZ2mxdtxBIaKo3pg21E=;
 b=ICtEx+wJdnKuWuTQJGPb1b+1lqAWvr+mhaE/D9Lwlx7xTGSDWy2pk3sEEawIxPIzEC3SyWUMDdHZXPklB1iJ13Ndws3Qt3A4hBO9wXliD9CEq5G7BPwu99jybjDYzKNS6Wn3Zsjy2yRHy4p+ksVo66JhdRu2cggkDQgPt8v/Ak4GmJW/afLvix6jjs3qOyc6n45m4lGWhmrjk1T4Gq3+oTpKhD0n+4pWIZy/eRaH7zCRPDEJ9zaV5hznesW39M3gziEF8iy+jXG8biggijv9jBNrNIn/j58RhaAtI0h1ltS8qc+7rFTX/g7uf2T15WwO52r5xURaaZm949e9/wNtwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB8066.namprd11.prod.outlook.com (2603:10b6:806:2df::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.24; Tue, 2 Jan
 2024 18:29:11 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7135.023; Tue, 2 Jan 2024
 18:29:11 +0000
Message-ID: <c8075c6d-ced3-b8ba-8c69-fc6ebdce6cc2@intel.com>
Date: Tue, 2 Jan 2024 10:29:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240102141409.4000776-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240102141409.4000776-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0165.namprd04.prod.outlook.com
 (2603:10b6:303:85::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB8066:EE_
X-MS-Office365-Filtering-Correlation-Id: a19ab01c-5f29-4e9b-4c7b-08dc0bc0b707
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ufO0fd68qxiPxoVXG3617Xp3Og7B/Noy2sHAwa4dBpKEk586s2Myg6rMURUNHcVFb/uGuPLU4eJ9qjZSWseSZwXcoc/XOvJmH5yX2qI3PzmU4dtq/XfGCLNhH9xAx/Ittpp2CCBLtpxgbO8RXY+7IqUH+LTix1JgFyqAYEjYPJoY7cwDhTTAWqOeKxNUejXOtq6Vn/5RcHC/PZ76a6FfZiJmJJ0XJ/9T/LBpvPJSOQsX0l0XboB/fcBmlZdDnYpsJqdSvwmyo7SK8af32FYuvx253wJd0++MtTTywMNmKRmRVdKorLP6JpGXFxtcP8V0TqlLDx/WxjF4ECHvlNXtS3JXYaUzR0HV2P2J75Ht1Rz3DZGFsMasmXqo+T/OCVbRjkO/iJD9PyeLN4zpm/EUHe3c+R4emZJ8qDDCIs99rO18L09LtSUWtkzir6gWeE5jkcCepvPgz/ymkcXCqywU6JRTC9mvZ/yor5QcZDGSKIsBHjcw0SyGuu2UcQ6PQq5+Yhph2kSTUDclIuDVn6EbeCepjRMSm1Exas6isz1ME0jezNw5/SIhl2kwdZt2wtKErlHfCBcf4ctYAQ1KRRqdMJbgG6pkM+LrSdo7Vnag6qJSyfmNnqPoBRxV81c3w01t1xksgj6v/pc9tWoferySeQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(366004)(346002)(396003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(31686004)(83380400001)(107886003)(26005)(31696002)(86362001)(6666004)(38100700002)(36756003)(82960400001)(4326008)(5660300002)(53546011)(2616005)(6506007)(6512007)(66946007)(8936002)(8676002)(66556008)(66476007)(316002)(966005)(2906002)(41300700001)(478600001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnJpS1BLZ2M1dVhTK2toemc5bCtnbmNNcnM3ellQSWhLcnI5ZUlNYUVtWjMz?=
 =?utf-8?B?WE05YXBJaTJIbVhtSUxCVmFJVSt1V3pLc2xRMWFTb0hTaWdLK0lOQll0N1Bo?=
 =?utf-8?B?SmlYcDlTaStRKzV4V1ZMSFdYUVB3TEdOUllCQXVWNHpxS0JNdWhsd1BRUC9s?=
 =?utf-8?B?VGV6bzNwVEZScGN0V2E3QWEwdzNHQTZzWmxvVWtUSVlENElYOTJETVNIWUdj?=
 =?utf-8?B?YmtlaDV3bEdPemdsbk45NStJdnFSdmc2bmoyUWNudG4xVkZqaWkwMDlkeEJN?=
 =?utf-8?B?OWlPbEhTZi9KQ1NqUFkxbXpLWWJRSXNuM3Y1bG1oQWt2a1VQVkF5ZHhTVk9D?=
 =?utf-8?B?b2M5RWoySjZGY2p5MllCK0MwM2pPNVFmQjhRYzVlR1o1K2IvbEFSMXZzbjkx?=
 =?utf-8?B?R3E3d0dGK1NjT2lFOFJLb3ZwL05WdHhSeUNDUkZ5UTFOWE1uemJIZFgxRTZF?=
 =?utf-8?B?RUk4RC81UlF6a0kvWG0rL2ZhZi82ZGxXdkNPMGdKQkxmN25Vd205eG5rQ0du?=
 =?utf-8?B?K3ZPSU5rNUdkSEN0UzVaaE1DZnNtMGhzOWdPSzR4NERsNnp2ZGY3eDluSkFL?=
 =?utf-8?B?TnlsaUlrMlZPcStOa3pmRzJjeFpzNHFwNDlsSTR6NTZmbllFc1hFSW1HM002?=
 =?utf-8?B?NUhoL1JpTFMvMHRleFZtU1ZDeG95clJ5Kzl5WThLNGNwMUM1YlhSWTA0Z2E3?=
 =?utf-8?B?NlhzazIzaU14SXZvWUI3T0l2TFRPa2xZZFJ1VElQSDZFZmtmZHVGT245VzNk?=
 =?utf-8?B?a0ladHorMWtJNjdrakNTaVRBKzNYVFFGR0k2OUEweU9DOGJYZGtySlQwKzhD?=
 =?utf-8?B?N0ZBTXJ2a0MzWTdHZTZtUU1BeGxDcEtXY2lYUXRCVVNuMm5mLzVZbzg3Mytz?=
 =?utf-8?B?RU1GSmN1MFQ0WHdINFJUR0hiZ0N2NXB6NHdMVzdIYzd1UEtITGZDTldVUWdK?=
 =?utf-8?B?alI1Mi84ZTVVdmp3anovNTFMdnJ1WmRtZVIrMTM5RUNGZUJNMERURUlNQmFZ?=
 =?utf-8?B?OUMrV0xPYlhjRVQrSE9rME1mRzAxTVFpOGlCY21MTThyZXNJa0U5YlpidzNn?=
 =?utf-8?B?ZDdUZm9oRkhkNEtwSmdtMmZhdlVRRlJjT2MyRzBLdlA0VEVTdjBEU1dWSmpO?=
 =?utf-8?B?Wk1lME1ZckpzNThqcUdOQStRTWM3WmMvV3FNQXRlN1A5ZWZCQjhiUDZMenZi?=
 =?utf-8?B?aG5jcmYyekZCMjlXeVRUbFplMWdRSU9ScmxYRzF6UHg3cUcrVGY2cCtsV0JX?=
 =?utf-8?B?ZEJreGU4NWF6aENnN09ielNtZ2Zqd1dML3p3MmNsWi9kV3k1c2g0ZVF1OHVu?=
 =?utf-8?B?RzAzc3RDNDl0R29CLzFyekdISk5QUVo2VW5YQzZMVUVQQUJkRWMxa0tQN0xV?=
 =?utf-8?B?UWMrWXJ5NHA2SXlPU2ptdFJwbjgrTWM5YU9WZXFUM3hSeTNqaWVYaW5wUzNB?=
 =?utf-8?B?VGZZMkZpTXQ2MFNFZy9POTQ1WUsxSjRQNU1wOU5rQStydjN6S1FFdEdJU3Nj?=
 =?utf-8?B?Rk12ZEFsTUxRaVBoT2Z1VU1wRTRlaFJqV0FlRDBvVkRtUERNWUZNOXljdFRB?=
 =?utf-8?B?MnhxSDNZVEVLQk4vdVRRcXhicnhMbXk0T3I5ZzEvQW1qZU1vQ2FTcFpWbk9r?=
 =?utf-8?B?dW1kRVRMalpBSWpMQkdQZyt0bGlsc1FPS2VXZTJZd3UxM2VYV01zblZlb0hr?=
 =?utf-8?B?V0ltSGhoZ0hFd3Zvd05mY0U2UWgyTkxoOE0wTWxSZC8vVDUxd1dySStoZktE?=
 =?utf-8?B?cGJGekY2bE1JQUE3bnEzZWJwVGxlVDdScENlYzk2OGhTMTg5S0M5ZEJIandn?=
 =?utf-8?B?VFpENWlxRU1yNEdsYnVlOE13YWVvckRvODJNQ2F6VmZyd2RnVG5jMDlWcEpR?=
 =?utf-8?B?L1krMnJ5NmxRbFJLVGVHOXRCckQwUkQ1QXh2WXZHUmxjWVhUcVZyMzJWdjNO?=
 =?utf-8?B?eXhTM1VGSzB2dzljZUJLM2psdXVLN0JBL09QZlhaelRFN2NvQXhMelNTSXNk?=
 =?utf-8?B?SlIvbm40S0xFUHhUSFUxRFpvZnhXM3U4NHRvblJMd0JtYmEvWVpmcHZPemh1?=
 =?utf-8?B?OHg4dmNmQkhuYWt1eWNLcldJOFJjMEd6a1dVRVlWRzNldjV4NTg2SjFlVFZi?=
 =?utf-8?B?UnZrYW9QQ256QUVzZU81b3E2T3Q2b0o2bFVaRm9qKzI2a0tWeGZSZkZoUzdo?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a19ab01c-5f29-4e9b-4c7b-08dc0bc0b707
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2024 18:29:11.3763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zK/qZRZbmRJtrXXsgxY1+UN0FliHbfnGhBgqnJzgAJDJiYJkOcIF917Uc1xIUbs62Z/LbmPpOMggCf8p4Ywr9uXmvOG0KFfJC1mSqQB1eJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704220159; x=1735756159;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UQn1+WOPD9iL2FgUIM+sXRN4T8c3A5As3C3l02NlrdE=;
 b=AhLuWctePqjpdaqF3w3WakZfs1K9D289jp2N64+IxPcX27GRE8LELCIu
 vWqyb7vA6KYNd1BDVQsh+QaLzNdyfQc20/C0lH96wdoeu4S26ImETHrCK
 jD+7+M49g0kIdFvhKi6EDSXEHbUcDXutWSDQlTwe1/fU4msT6huDc6vf3
 BEUhgqDdiElxPbgiwdsiY/MfAh7an2YQ+Px2Qp1FRKzC7DWgN+hfRPWb/
 edd5W5f1bYWHEBRgKkcRcs2r4MiMXHlnqlxIKZznP7C6vj/v3ykFqbdQQ
 D9091RNOL377nDlX0DJugyy2qMGVtH00DQS9vI1QaGn/jNE33UOMyI6rx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AhLuWcte
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix
 non-deterministic behavior in e1000_shutdown
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
Cc: david.m.ertman@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/2/2024 6:14 AM, Vitaly Lifshits wrote:
> A non-deterministic behavior was found in e1000_shutdown function.
> In it, the variable retval is being evaluated according to the
> configurations in the hardware. Sometimes, it might be validated
> for a previous assignment, where it is wrong.

retval looks to be initialized to 0 [1] and its only use, prior to this, 
is checked for error [2], so this value will only be 0 or the result of 
e1000_enable_ulp_lpt_lp(). The code looks to work correctly, however, 
this change does make it more readable. I'm ok with this going via 
iwl-next, with a different commit message, as I think it reads cleaner, 
but I don't believe there's a bug here.

Thanks,
Tony

> Therefore curly braces were added at that part of the code.
> 
> Fixes: 74f350ee08e2 ("e1000e: Feature Enable PHY Ultra Low Power Mode (ULP)")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index f536c856727c..e51d79d8a7d7 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6691,14 +6691,14 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>   	if (adapter->hw.phy.type == e1000_phy_igp_3) {
>   		e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
>   	} else if (hw->mac.type >= e1000_pch_lpt) {
> -		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))
> +		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC))) {
>   			/* ULP does not support wake from unicast, multicast
>   			 * or broadcast.
>   			 */
>   			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
> -
> -		if (retval)
> -			return retval;
> +			if (retval)
> +				return retval;
> +		}
>   	}
>   
>   	/* Ensure that the appropriate bits are set in LPI_CTRL

[1] 
https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/e1000e/netdev.c#L6628
[2] 
https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/e1000e/netdev.c#L6677
