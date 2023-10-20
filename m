Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A867D17FF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 23:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38639802CA;
	Fri, 20 Oct 2023 21:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38639802CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697837085;
	bh=efH/QYfmDAHa94jFyPL7bRSHksz1BAKZBObikYOHXb8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j8xLEx/XXK8wTHfTh9v3+tvLlnogAOSYnilEJxtYgXwW7dv574AepptCO6R4DEauy
	 x3B07ph1XX3tVpzuB1WbTF8TCNmZw+KsMT2CUXFYR98eH0ds4RdPJ/qu3zZUmmoOCg
	 s0WX14iQYuiboaMQ1CESj+nmSOMO/meR86nRdeBB8UQACW0vbj7LykHNzubOi4EiRC
	 lb3G5knNnyy3fMtrjDcsdsARx5jiw1qjtKwfFnc5lDf0hq5XPQvS4XWfQJCVmoezr2
	 XE9EP2zROI2twZmXKF29jh7YsHlQMO1W6Erbfvd5QDBsVuE2trFB3uw0lspfC4E5cm
	 tTGu57xdih1NA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uP9fwtWNos4K; Fri, 20 Oct 2023 21:24:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2620984D55;
	Fri, 20 Oct 2023 21:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2620984D55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 565871BF352
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 21:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D4E7611A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 21:24:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D4E7611A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kq0_l6sXLn7j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 21:24:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE4C560E77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 21:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE4C560E77
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="366805743"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="366805743"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 14:24:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="1088858029"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="1088858029"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 14:24:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 14:24:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 14:24:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 14:24:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9rDY89roZH/ajX4auyJCeG4cqKq6ZDVvUICEn/Qil0U0QVlh4VS4VQa8yPvjNE0Cs6sZRoqvQZs+Vt42pQgU69VFsPEvuEfleu5nH/uEVSRnjRvY4ARiN72uK/DQkRIszvWAiztt/O0maN8ykWo0EErrQLxPSt+9TJcKc8QmjIZhPtJt0CrsMo7r6IMziPkI43KD4jVXthLH00tejIumcHD4vQM3MdXaRYQhd8RyWRC8IVmlVF8CH9FbFOOKt+JmlmqtpWXpQw/oZaiFZTgINb0+1B9I6viOm6AF5DcDjZucQn1eYlZTUIaTbTH69Pb1qk0HF8qU+koRmv9BRBerQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NMnWuNVXvnCZm7Fyb1faBMMhJhAbVgpagVeska7vPmY=;
 b=TtiaCqtp/WuTUj/IvS82bNsLjqJJrJ1tltTrm+QGQgg454Vh+lUyUdbvladdt5d/kvXqBWSoomhS0c/Sxl5fqMKAExijn1ZnKFh+d3qPQyCD7pQxehO3pgyYT5LumbBcu2SdJT7rJktFxZVBmb8RV3BMFkcsXI+A8dgMptJJoKlnk6MbBYy9CksEMWlr7Q9gAy4PTyA2Nd2tNWB5MbwhCYSeAS2vuaNfQ7+5kaw5wH0d5H0k4L+YW2wD6YWr3Y2YOp6KVKOBJDLIKWGQcA2wEvIehAR+AvQ4k9AMLE81aNIBz8nySg+TBJH8W58Nw7y3VEcwIatKqHxawEpVcMxM8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 21:24:11 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 21:24:11 +0000
Message-ID: <02bc1b64-d53b-4dad-a1b6-d992f03ba4b6@intel.com>
Date: Fri, 20 Oct 2023 14:24:09 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231020193746.2274379-1-ivecera@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231020193746.2274379-1-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR04CA0165.namprd04.prod.outlook.com
 (2603:10b6:303:85::20) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4539:EE_
X-MS-Office365-Filtering-Correlation-Id: 283985eb-34ea-46ac-9302-08dbd1b2e6b3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 96i+8ZLIUybEirdIyNAGm/ZGT3jEcTlY3gcvqiiJx0vX/zlpuyBvgL0VaF7sfqoGBnh4KT94HEu3IZhpL5NnR+9YEO+Ivtll5+dpWmeNvK/8plAnciSmn1Jd3p81uVNElKVTVpKJTR5aq0LipbV6LbEuFvNqSZnJ/JP6uKOuDwi13KeJ6Be58QM27OtT6o84qVtTjKkE/bI/ghPgkqihWUKZLCWkknVYPhQ4XNbjs6Y4UIYRi+9oYmHrbcKEiIZNpAKb0PLEePRI/z+uA5fbFXG3Py+hrhtt17kaB9ANeTKKEpGno/9rRGEtCK+orCkti9U2X4ugjb9uQ4TNGN6e0jMy5eR68y98Gl6g3JzCYuYpI5qTPjOjuygdnAQqh9InU2DtehyFJIu13ErP4w+5LfJNtThi5PUgbcvUG7GhT75y84Xqed9sXx5IvqZ5/hFR/TmSORpJb4y9ee3zlCMvvcsL8TybXxMpfmx2NiBcZzNB/fUmWtzJcHU7JHC1TK9JDgT0AoJsip7MoFFmNNzhFKyFexbeTfpUacc1JKMmk55Ft66yjt0VeYQbPUvqYPA6JJAB7sr4M1Q00sS5FEzyonBUXKQXe0eR5j1r7qVRu10n8pfjLFCdT41kvtlBuhP0qTPaoaT+dc9N3Lc6dez3DQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(39860400002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(66946007)(31696002)(86362001)(41300700001)(66476007)(54906003)(66556008)(316002)(478600001)(5660300002)(82960400001)(6486002)(4326008)(2906002)(36756003)(8676002)(2616005)(38100700002)(53546011)(8936002)(7416002)(6512007)(6506007)(26005)(4744005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2Jjd3l4dGRnQkpNRzZLQmI1aVZDc2VleExsNEUyYlZldXhCMlE4a0RETnNT?=
 =?utf-8?B?R2JjUUpmcFZpUDAvZXNmYk44WXVoVnRiSi9Bc0RhMXJITFB2RzUrdEVzajRn?=
 =?utf-8?B?RHpJYU9sVnFqWWU4V2xyTWt3VnRzbVRQdXlYVnhkdkdCcjRscTlQK2xtVVlo?=
 =?utf-8?B?amw2em0zcEtiTUZjZEFneUV0MzFwbnVwcTBOLzkvbUFDcG02dERTMTA4QWhJ?=
 =?utf-8?B?TDY5SWFaVWlKSnVXeDJKeUc3dGYvcythKzlLSjNzVzlWRURVVk9zSHZrcWk3?=
 =?utf-8?B?bVBlNU1NbElJSXNkUW5ldytUWEtTUys0NVl5YkFaMTROaW1pOXBJVnRRb0c0?=
 =?utf-8?B?ZjJRUkhMVjZpT2hXc0EvUHZwazJOQ1Vvc0s5OFhZMW5hUktXM1FoSS9mTDVm?=
 =?utf-8?B?aEsydXFsRlRlZzdpVmliSSszVFV0MnhzdXZ6dnJtaWoyTTM3cUpQdGNOS3FO?=
 =?utf-8?B?ellOc3lUS0ZGczJTVGYyU2kzVmhhVzhFbHhZZDIvSGhxMXdScFdaSHZJZ0Za?=
 =?utf-8?B?djRlTk9zSlUrVXV5b1p0QmRhVXVvOUxCYkE2cVk0ZzNjMFA0clFpTXdPUk5v?=
 =?utf-8?B?YVJ6NUoxZ0Y5NmNTOW45emdQdERXaHNsVi9STnFJa3UrMGxoYm1qSkhmcSt0?=
 =?utf-8?B?WTlBZGdSSFAwSE1iYnhvRE5NZXdhQy9MZTcwbE1pd0FMSTBRaTRFbkJ2d0hD?=
 =?utf-8?B?UDNWQ01iaW5Ucko3WlpLU2wvdDJEZzN3U0RhMGl2TUFCb3ErNVRWa0ZmaEVu?=
 =?utf-8?B?cC9lYVFnRTRSOWdDRmlGeXVEUk1HZW5seDQrbFdTVU1CVVlpcVduOExwc3hz?=
 =?utf-8?B?SXp0OFZEb2FrM04xVmZkVHVUaUlhTC9VZzVkNVdiQVVwNTZJV3hjS29QU0hM?=
 =?utf-8?B?R2dSMXRDUmpYN01hTHU3MW53dDlRa0tJRnZxaGRHRHFwQ2pDZXd5RWVtOGEw?=
 =?utf-8?B?NWhtdWlocWpSTUtQY0NDUlNWZkRkbVd5aXhFcGorS21XQjBSSlZXbjloZjRO?=
 =?utf-8?B?dytvaHo2d2VCS1V1M0RoV2hrcEY0cncxSVpNNzd3REJwakIwV043KzhRTjVC?=
 =?utf-8?B?WWtMQzJhWTl2SVg2TDB0ZEswUTRTZ3oyTDNLcmZwaitkMzdhMzVKYmVQd20v?=
 =?utf-8?B?V0JLOC9xZlZEMDJXdTBPbnhqVmRKcXdsUU5DV0JoN2x4aGlySzFDS21rK3g3?=
 =?utf-8?B?Tmh0MmtBT2YxUDdUZEd1ZjJtNjUvcmZSSUFNd1VDKzE2Y0lOcHcySEFLSjlX?=
 =?utf-8?B?WDlCOE5rZGZHVzkyMEpZbC9KL0d3akJEbEcxTFRqZFBCVllqZG1Ecm9seE43?=
 =?utf-8?B?cjE1N2EvZmM2MnpIRlhGMlJqRmZJOVBjWmQ4TWI5emx1QVllM1NNQkpNOW9F?=
 =?utf-8?B?STNFcEVuOFc0bUhGZHhvRVpIVnVySG5jK1ZxdWVLUlZyOHNrWHppMzF6NnFj?=
 =?utf-8?B?cnF0dFA4VUx1MWp3U0dyVnB4U1dCZmJzWmRQOHhsbEJOa2tlc25FWFQxU292?=
 =?utf-8?B?N2dsOTdsM2pPdmZITkFPaVhtbkZrSFNWTk4vNlpoeHo1SkdzcVR3ek5obks3?=
 =?utf-8?B?UmdoS3o0cDR4bkx0M29sTUtKUWhPOTFLQWt1V0ZSdWp0WUZmVUI0RnpPQUpE?=
 =?utf-8?B?MG1od051dFZCdzBkRjBOVFhFMlVlWnhkS2VTMnlwaCttMEttdGJUSE04dHJT?=
 =?utf-8?B?aVRuN0x1N3BLM2pxZ0xGK0lUSlRkS1pVRnMxdDN5WGdrckhCcVF1WmYwN2lq?=
 =?utf-8?B?eGhoTzd4YlFvYjBycnBRekhnSW44ajY0SHI4K1dUcHd1TlIyd0cxdGp5M09P?=
 =?utf-8?B?UTUzdWpuanFaODZUZ2tla1VBNFhXRU1rNFl6YnpBSno2TGNxR2hENkRBSm14?=
 =?utf-8?B?TEdaZnNXa3E0YUtFWWhkUkZHazRRS01ERVhaUkdyOUFIaS84V0dFK3k0MkFm?=
 =?utf-8?B?OUg5S0hCRm10NkhPK1d0M3R4WE9UVUw0eVpXYndVcDVHYmNaQm5UeWhmTkJM?=
 =?utf-8?B?TDJMMXRkT1did2hjT2s0cGVtOTNOM1JkZ3FiMlNINUM1bWpHc3V2U1dBSkhq?=
 =?utf-8?B?a0lRdEp1NmsyalcwUks0Y0E5aldpRHRqRkhFSnd5a0F6cjk4bHBKNDIzbmNW?=
 =?utf-8?B?alppUW5WdEY3WnhjblV1S2FpRjVCY1BIN21QeHB2Q1ZIQXNpVzc4Z1I1YklF?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 283985eb-34ea-46ac-9302-08dbd1b2e6b3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 21:24:10.9232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FxGTVBmVM/X6i3/Ukx7bdOzv9eunhGY0+Nh8f8Z89OCLF4qBGTsQmce4sqB87sFtaO/xmcY1Pnlv/77nzE0FXhQpl7mm2OS+bMEE7MjROCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697837077; x=1729373077;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wgBx3veuMHtogtCsEyeGzwqDfXvAcel0WZFwxaOs3t4=;
 b=PJUpATlEhxvjcrlhUq5OJ+mDVBtdEdlRsdBa6kvZ4zlwEcNJq5/n5cxV
 toG43dodeXoMbbniiwjlvdK4gFGxEzcvxsV+1rM2wOISnVSwBbgIBEYFk
 kolbCAfCDTQp4k34PC2ZwOwKUxT2+yXHtpLjBQHI9Rcbk0XKcjSughXpe
 g5NcZ/B0e68XbZaYUCoxt3nQPlJcsa9zqUljmqp1wX3BWj7vCQL5fVtr9
 5ePH+D3E0CjFYMWTvTbsyoqAnP1y00JknKZebHS8R8lxmqYC6wIyDOmjy
 psClcZGq5jnMpRjzZ1xlKd8pQP42QBgfv4GTBCWIM9E/U7vipUhzxF4R7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PJUpATlE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/6] i40e: Remove unused flags
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
Cc: Eric Dumazet <edumazet@google.com>, dacampbe@redhat.com, Jesse
 Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/20/2023 12:37 PM, Ivan Vecera wrote:
> The flag I40E_FLAG_RX_CSUM_ENABLED and I40E_HW_FLAG_DROP_MODE are
> set and never read. Remove them.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---

In case others are interested, both of these were literally never used
in the driver besides setting:

I40E_HW_FLAG_DROP was introduced in commit d802c760ab87 ("i40e: Add drop
mode parameter to set mac config") (v5.4) and was never used.

I40E_RX_CSUM_ENABLED was introduced in commit 41c445ff0f48 ("i40e: main
driver core") (v3.12) and was never used.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
