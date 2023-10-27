Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B61FE7D9FC5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 20:21:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DF3E4ECFA;
	Fri, 27 Oct 2023 18:21:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DF3E4ECFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698430861;
	bh=UKH5Cc0Kt0Ed4mocJpzxf42e9cbVga2rsXke4quNScs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nc1Q8ANA0sqaVcFA6+nm90s8BAGUOobuzeBZqo6QI4ph9nDeRMZiD0aHfFAeLBX5o
	 rbjOMWDj7sMgZiAra/oDkG3ItKRDdN1VBbx2UeW9XjtA0p1TG7iDkgfs2OTbr+bM/u
	 qT9frzS6j6BEhQY9HUlowPHjk2MdHQ8X4wCnWAVEdZTunDZXNnPm0IT/oFG7EmNXtK
	 opH20qoNPZTuAKo/efqxinUW8YmOMJ6x0A+Cb9F2eQcJR8AESCo1Fk6ViO0xwao9l1
	 FOOZQY2gc4DlNzOCJxPZPbTbuq2IYpGzD4dtbfgiPzR/+uTy13uNcr/EKP6LkcsSZx
	 i5CTV1S2GZfzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yAOcw3mOk_3Y; Fri, 27 Oct 2023 18:21:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D1E24ECD5;
	Fri, 27 Oct 2023 18:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D1E24ECD5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA2B81BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 18:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD0D28502A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 18:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD0D28502A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id roBbrv-X59Dw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 18:20:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA09C85029
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 18:20:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA09C85029
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="474068107"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="474068107"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 11:20:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; 
   d="scan'208";a="7721378"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 11:20:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 11:20:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 11:20:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 11:20:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YKfmUK9ZvS7IRDlTR40c0VJVW1hgg+Rq+YEmHwD1DuSNtE54G4/HcDtEVIRJOUnT7KK/JpTugjhWw2Ku6dQy17KVEtRcWM/ZxHJCBmGF8GAtCMhl0eVk7YBPOosRpUFrK0ApNzT30fTTShOGW9Jelg510bZoTCCBGcJWZ0IGLdKJxlhSubJQazZFEogqj6hjL6TbUww2yKrp9Q7RwKjiWpUU72cjC/gOEtrJqzQ8jTD/40CMzsMtogD2zwnLLgLjQoC1g59Wtpk/jQ6niGDaRDRoXNupmrXL4YvqrdbDLuKeePOfYFEpu8Niek/qq2Oe0iL1KoHE9j1Nm7idW1U8hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgUTK5cHFUAh2AJRqZqyu5Ld5gQczbX9tPeVY4JS9HU=;
 b=j3quNP0XP5Zou4Yg4IVmpI2mbuusvxKXPXhUlK7p/W27h5cGZu6L3+mdRUdUny7ZkVTfShrlqkPEeTQXVBbRsGonWgdMXrcQm6BQN8b+nvYwjQ3+Ozjc697jzzQW/2p1Jch/Gd7TouBMLcDo1DDYtvEfsMU5w5gGkK7RefULCwJhi153ujSzu1XesEXpJjkh1juDhIs1dXmSrjfMOFBCdE+2AzBQa2oWobPwnhXlE5LtDY+NnNTs5Ombs3sTTPnPqA5LBpCoiwxPlVxL8BbhbN088h70W7bi9poRi4bWSiJENPPscGgvP4zjLkWpuc3+6tuWSSDiBGCSA9eRGkjRrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6609.namprd11.prod.outlook.com (2603:10b6:510:1cc::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Fri, 27 Oct
 2023 18:20:46 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa%6]) with mapi id 15.20.6933.024; Fri, 27 Oct 2023
 18:20:46 +0000
Message-ID: <418d7ca0-7838-42f3-ad2a-684ea234bdfc@intel.com>
Date: Fri, 27 Oct 2023 11:20:45 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231026105955.282546-1-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231026105955.282546-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB6609:EE_
X-MS-Office365-Filtering-Correlation-Id: c9eef226-bbbe-4b41-6f9e-08dbd719706d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7UOZT77kUjO8h502RDMmgHBv4pXdGve+Nsouk5k9rDghne8KnQyc4L6aBeVtTNpKJDzDqnd/CTafNrTOAwXZIFFc26GC3NvUFkh88utt4NXGNGBpXS99IjBrJ9K2U0fS/1XNy+EmTBl0EFYF0mskOIKUsYI2W39sDf0Appl6P0UdRfZxlAYd3GwR2qqhejw6Wk+7hXH1M5zxr9mFyxhroyabYi+tkM0Eq6p25qbKTS3EWC/qbpjqscD4l6Z1hpfUgLz4jIrNw3UiOiB6skvixZRkAKKd6ZQxSAvFxHui0MZul+9bxS65KO1vGmvODnGDOxq65Zx493GEcJKVzL2NFPxARk6HuEMBn54x73lPPs21/x0i4F+SkfBPIz96uNoiw0G7IJzzWyDG7FJkLA/7R6qD5iQrh9yrXfnvsBeSlMP7W1Okkm1HiTHcu7an5LoEd6X9oOB+/aQB4/jA+OwJGupaqKsckH6GhfZNBBHOO8W/1QjRTX7yxwzfZDLgvvLl6qlZUThSxYvFF5eLHjpw9/X2DrE1guInO2dIWoNeT4gYEBI4W5G0M4R2YD3lLthRpH49dggIqUjQKBWLHtmjyei9npDhtulcdT7fEdmWOPl3GrwhmlME1taCG5j6jgKCtqr3iL45ZvfJMkoiuTJ6kA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(136003)(366004)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(478600001)(4744005)(38100700002)(36756003)(2906002)(66556008)(6512007)(2616005)(66946007)(82960400001)(316002)(66476007)(107886003)(6506007)(6486002)(53546011)(83380400001)(4326008)(41300700001)(8676002)(31696002)(5660300002)(86362001)(8936002)(31686004)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2hlZVQ4aURNeFBNdVcvSWM0RmRDR3pBK3JxYUptaWlaQktaYzJndkcxRjhO?=
 =?utf-8?B?MnBtK3NMdVUxc3pTOVJmSG9WemZORVI2R0V2RzJBTi84S3F0UXJyMnVDL2d6?=
 =?utf-8?B?dVduSFYrTlRQQmNmdi8wTy9BZ2pRL3oxdWFGbkk0NzFEaHRDNFZyZis3SnlV?=
 =?utf-8?B?Yjg3RDRwb3hpNTRJMEZRbkw2aWx3NWV4UTIvOUxvYitXcFJVVitrYTVTNXpl?=
 =?utf-8?B?eXFGdnFuMTUrRVRGRjFaaUxyR3VFcHZRU3laTUtjbHpjQ1RTRFM3RDJoYmsw?=
 =?utf-8?B?Q1JaZ3JmU3Q1TTdNNnJsVFZzcEdDZk5BSTdyaWwwNEZkUCtkY0VieUlnMlFn?=
 =?utf-8?B?ak9YMU51N2pCdXBOMnFOYmRTUnpuRm9kS2dJeVdHSkpyZVZMTnQ5Sjd5TEJJ?=
 =?utf-8?B?ampmeFRmNkhQWnZibUgrZ1NSTkZsMmNuL0JCNnJ1bW5wN3hyWlZIZlc2UmRp?=
 =?utf-8?B?b0dKcTA4U0dNQzYvWVhORzB5V0tBRnJCZHRyTlpObk4vZTB5WllzZ3JvV1B3?=
 =?utf-8?B?YWwzeTlZTUJDSUVkRG53NmJXQ2lDQTV2UUV1blpubzhRLzVzb3ZnY2doM2RH?=
 =?utf-8?B?c1RFZThUb3BrSTVRRFpmSmw4MjZZLzFDcjlOMHRBNWN4R09SRnk1RmVjQzZi?=
 =?utf-8?B?YmNVTTRQc29YRWJ3aFJrM3lUbVczYyt6QitLSSsydmFHUjhCcy9sZUh2T1JC?=
 =?utf-8?B?TGZmWlNuOTZMNWJWYkJ4NU02dDV1OFVPWndGUEdPaWRWL05vVG5TYTMxdGlx?=
 =?utf-8?B?TnNLNkFvR0NqRnVzNE5kMkpkSzhpRThSY3Z4SzhJTUdCNkI1djAzcE5MaytP?=
 =?utf-8?B?em1lOTU3YnliSXdtd0YzdjNIUjJRUVNVVkt5NFdTeEJqdi9NVXUyejQ2Q0lQ?=
 =?utf-8?B?RmVkSXdpeEY3bThVendiaDNkcmJERkV3aWV5ZitoVW1SQkZ6dHMzYkV5TGhP?=
 =?utf-8?B?VjdJKzVjVHQ0dkp5M3MyRXhybHh0blU3Mll6dFVWWjlRNEc2cFVsaTJCSThN?=
 =?utf-8?B?Umt4UzJtSjZhNWw0YjJOZHRrc0ZvZTVVakpvNWJUNjBEdTJ3VG0vOExDelEz?=
 =?utf-8?B?MUl2NjVMMlhOaFdxTUkwdkVPK1VUN0d1NkhnSGFkNXl4QjIxWHMyVDhiMHU4?=
 =?utf-8?B?anVKb1RXaEM3OXVNZjZHU1pOSFl5TDNPdGd2cHhkMkkrTmlhdlZ2eXRnQ1Y4?=
 =?utf-8?B?QVU2Q252QUthZVZ2a1BwTThKR0w5MkJ4V0pPaktjU0REZ1pTdDVJNldLZEpm?=
 =?utf-8?B?S0ZBUjh0cEp2ZUROWVZDNm80M1c5aFNVZWV3Nnduc3JycEJ4ckRqOTE2SDhq?=
 =?utf-8?B?RnlBOFc5U3BaWGJYd3NHd0xtakxuZEsyaGNBcTk5dUZoOFlEL3BGN2RQWnNX?=
 =?utf-8?B?ZGVXaEtWVmliNlBCMXBJTlhCdUFnVFZvZEZjQkZXUDlhZjhHbi9pbXJWbUkz?=
 =?utf-8?B?VVZIQVd6T3JCci94UFdHZUtSbGJaZzNldGZyZjNveTg4SXJHWS9xMVAyK2RB?=
 =?utf-8?B?UjdKaDIrdUVoRUZoeks3aUw3Um5HaEplV0dtWTVnaHZKZ1QxVTR0TTFuTmFt?=
 =?utf-8?B?cFd0T0ZHL3lndkVyamI3a25oRjlKblIvaThla3Bvb2s3NFdrQlUzNHBad2l4?=
 =?utf-8?B?Qm00STJHc29nam9OUE43aDJkQVhudzlVa1pUdW42TVIrZEdwSjdLN3JIMFZi?=
 =?utf-8?B?Zi95aGtlNUtJUGdIU1JjZy82emloc3Q1dFBoY05WVW43a05vTzRhUlVTVjBr?=
 =?utf-8?B?cVN2d3FXOG9adUx3cjBTVFNNd1VGQkhTaEVFSUgrM1g5MG5VblBHZmNhb3hI?=
 =?utf-8?B?YTdDYlRnejUzdFpPdHZDTFNCcWNFcit4ZHFVZ2tidUVMMlZSeW55dnpQUU1H?=
 =?utf-8?B?Z21tbi8vSmhWdlJWQXZaU09GQVk1N2VWV1Y3azFjT1YwUWxVQWJmNlhMMGox?=
 =?utf-8?B?dldkaERUdUF1amFxM000bWlvWEdZRTdCOFc2SFFkT1d6WmpFRWV6dzh5dDBI?=
 =?utf-8?B?eUJFN2FGU1Q2YklFdTdtUkljVmZmMHNXY1p6aEZrUGgxQnVDY2lMU3pMOUZr?=
 =?utf-8?B?cXR5SDJHeVFaRXBIeDNKc0VKZlJ5Nk5OUWYxQzNySjdWOGxjV3VGWDNKT2NX?=
 =?utf-8?B?RU9QcDZuRk1KWG5xTkd5c0RJWmgwbnFkdDlhQkVzUU1DYkduajhUci92Nkhy?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9eef226-bbbe-4b41-6f9e-08dbd719706d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2023 18:20:46.4456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iPCWAOL0FngBHyr90v6jL07ZttFp6gLrasy5XTH+0MbYVZVvL89cbBtb+v2xeOa0ystCGohaJE6ZdeVGSBVW1aJp07Z3yVrKDSwGgQRJ2Lk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6609
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698430850; x=1729966850;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RexyViU1hmZVgK0hjHnOWOq4MUKuAL062kTIbxUuPVE=;
 b=YplJDevm2Tfun7E+F+uMSXvEdLxveVuZ19Awc4rPFIB2qlNjU7p/skBy
 v5SuoaB/zXQy5elm6HOjDrhoiucZxu+y/GE4GMTmH5Yycv8oykh4Vbyjw
 Wjgx8LQwBb3bN5mwxVS9O94K2jvCC8qFHCsG82fKDjpq1jBlRrkKo5dFe
 BMnGw88xXJei1S+2Ka25XRtOiXBrkYMIhQIeEZxGal5ETzlGBRpnjKaMT
 GMCTmM5QcnHJ0MnXMgQTyGEln6oHYc9epGm1hGo02uZvRi2OgJP7hHKb3
 F2OPBdJuVM/8syxcYSc6ykFORoXCUmuUfotPn91mrU7xKT4yWVNaZ4rr6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YplJDevm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove unnecessary
 discarding of timestamps
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/26/2023 3:59 AM, Karol Kolacinski wrote:
> -/**
> - * ice_ptp_flush_all_tx_tracker - Flush all timestamp trackers on this clock
> - * @pf: Board private structure
> - *
> - * Called by the clock owner to flush all the Tx timestamp trackers associated
> - * with the clock.
> - */
> -static void
> -ice_ptp_flush_all_tx_tracker(struct ice_pf *pf)
> -{
> -	struct ice_ptp_port *port;
> -
> -	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member)
> -		ice_ptp_flush_tx_tracker(ptp_port_to_pf(port), &port->tx);
> -}
> -

I think the removal of ice_ptp_flush_all_tx_tracker is likely an
accident possibly due to a merge conflict?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
