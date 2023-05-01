Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB036F3309
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 May 2023 17:40:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E750C613D7;
	Mon,  1 May 2023 15:40:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E750C613D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682955621;
	bh=8brpEuEbjOeAQ7YC3CgagE1wpe7zXNEPVU8BlPDCPuM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sBMS0kBE7rOvjvQxq5dbd8+wm6gshObqkdfqSnn8XjU7/P7TCFARRhYpbKkkJDU/8
	 fMVfPy0QWB1D+1PXJHQLU5rcprNF9+jw8+kexKsW5s66SKPnPe+Lk33T8tomh8Py01
	 fA1tU4slpQI/4SMJt+PZ5BJIQQsoHGwzshGgghf9/6ixViXddEjjrH9dgD536xI7rb
	 CtyIjjHWJkqh7o6xoy7zaQhukPAFuHXbm17FGF9I6gRjurs1W0mCAERCQoz78gWDiV
	 dBZFQHbZmKvEL8ZaIskLhKFqPAVhzsSt9wR8QiAIcnJpvLEDAt0KK4IEEVSIC0rfd8
	 E452dOtbftS4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZUuPlf_f1kCZ; Mon,  1 May 2023 15:40:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2F43613CF;
	Mon,  1 May 2023 15:40:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2F43613CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5A581BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 15:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD1B14060E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 15:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD1B14060E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urLTP0Bkyjfd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 May 2023 15:40:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2028401CC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2028401CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 15:40:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="328531769"
X-IronPort-AV: E=Sophos;i="5.99,241,1677571200"; d="scan'208";a="328531769"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2023 08:40:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="785293038"
X-IronPort-AV: E=Sophos;i="5.99,241,1677571200"; d="scan'208";a="785293038"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 01 May 2023 08:40:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 1 May 2023 08:40:12 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 1 May 2023 08:40:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 1 May 2023 08:40:12 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 1 May 2023 08:40:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QArGrEpEp0j4KC63K1ilaIuAovgJSfYGC/K3gztNy3hNWgwwGwjZB++ghKOXEujxDonRfBisqFJb2xqf4Idig9dup1mTjIvqo/c3ecZ717X2gXrDZOP9t/5+OA+8el0LBSdY1r584YB97p4Ksn8qYbghQ3Ccv0NB6byTSvyGabEd/wmxf8Wxil7uNnRbujr+E7oMkWhXydHrtdO8CoTPjKWCufR/gkkq/P5cQ3+CVQ6V1eg0S+M1+7PceDeEj2BFiXksao+ryv+cSaZW+dfZtPIseXFdrlwr/pUZqZbXVG9JqgkE4XfmaaUcUIy2SdGkq6RaYbp9Hnqo7PU9haMDsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z6Wcb2PaVj9AOH6qIpafYckUjZmwx9tGgB2PnN/dHB4=;
 b=XdwW2xFpgooZJtCVXjZJxKWgsUYZTQOgcdVBYbW/gtJj86/+NBKgZXnFdWGi/77gbim1IKjsJHObdh3gbrod+TzvdK6D3kyrw/jnYW1JRvqQJVB+nfm5Ugle0S4hXL7HOVIsPfViiJh1y8MOSV8hg4ziHdq9/PO2RypqGcL+/lXYE/bLXQmhcakynroSMx2dD3w4YlRn3YuNM89GPxzh+LngIAEgS/fPBt49IMZBiETYQXsKzT6CI+e+hAZVToD0xvDPFpvpSICOn0tG39VFeZzY9NRk2C4VzIb6y7feMNNcn9YEwDuyWFQSnB7Ond/5R9Dl8p3p75pJvdhdQC65lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by PH7PR11MB7027.namprd11.prod.outlook.com (2603:10b6:510:20a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.30; Mon, 1 May
 2023 15:40:09 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c59:d19c:6c65:f4d6]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c59:d19c:6c65:f4d6%6]) with mapi id 15.20.6340.029; Mon, 1 May 2023
 15:40:09 +0000
Message-ID: <e433ed1e-c8b5-4238-5023-cbe0486d19ca@intel.com>
Date: Mon, 1 May 2023 08:40:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: James Dutton <james.dutton@gmail.com>, <intel-wired-lan@lists.osuosl.org>
References: <CAAMvbhG_gG8SMV+GDSadT3p2+mbX2_HZnrh8zCpi=xVODKmGvQ@mail.gmail.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <CAAMvbhG_gG8SMV+GDSadT3p2+mbX2_HZnrh8zCpi=xVODKmGvQ@mail.gmail.com>
X-ClientProxiedBy: SJ0PR13CA0125.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::10) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|PH7PR11MB7027:EE_
X-MS-Office365-Filtering-Correlation-Id: 27ebc113-4456-4f16-d73a-08db4a5a582b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FX2uxZUP/g+W+K9OMjuJqs1Ye3jkFqhvltxQQMC4rKCNJiDZzIUi4hIbOW1Ci37OJVBUoAc1q2jzpXz0Wb/2BDEZKBDMqz/jRsPNgQF3MS8JbDPiH47Pyd67DPL8lKNmZ8WS8O1KsQWBLN8ltRqtKOF7LA3rpmyCwuwenU0D0BQhUy+CHFBvq7PIhWErBYN2AUHpcOF0kBTuY0eR+14dIvMvaQx5UrIpq7pO2wTZQFhGCoDeOV5xl7Z9uRUgrJpEcmPz4aUMHfW2lwGZosCk8q3clf/ebPmyQOpW13m9Wg/jAxPP5kbmH4nXULbiu2+aWh0Z00ODUY7DngJ7fzEEwUL98GkpJs9N8R5o7lMoODork/f2G8Cd1Jh+jSTQj6y+59mn443FhWrkVd/+bnYFXFbx1nFGOWuVqNQFriKNQ+6CaLfrh6u28YYL2f8BX4K6QqejblO55TJrvF2J/NTGDSbcU5b/BK0Qe+e79prHaezI5oOgaldjHRp2fScwdyuNW1paMDRuuFhgUWetZuwQtquiaU4Z5l+0UKZ/m9PFLdfqpRS9Q55qk7XYK4wXl97StasOZrMmn0WanjSWXFbVCao/LzgAk0pf6HvCkpQcPDtH7X9vZPiglhFj8sCuQ1l9fiS1lKHhVSm8iExlPj9oRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(39850400004)(366004)(376002)(451199021)(31686004)(31696002)(86362001)(36756003)(82960400001)(38100700002)(2616005)(6512007)(6506007)(186003)(26005)(53546011)(83380400001)(6486002)(966005)(6666004)(478600001)(66556008)(66946007)(66476007)(41300700001)(8936002)(316002)(44832011)(5660300002)(8676002)(4744005)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkJTSmU5eFZ2WlJza3lISTg2eGpGanR6aVNWY2tzeGZZdVpLckVIbTNnck5s?=
 =?utf-8?B?MXVUYU4zaGg5MEl2VEtaOHJzZGNyUmRIQ0hSbkxaNXh2eUhJd3B1TFVuUGJV?=
 =?utf-8?B?K1V1K0FheEV0NDBscE12OExOc3VoUWxEcWdZWlFuK004bW1MMXJKRmQrWDdt?=
 =?utf-8?B?ZmpOeTR4NndNTFNQT2hEL1ZpM0htMVBTKzA5L0tUL080eGdud2dweXZ5VXZG?=
 =?utf-8?B?UWtpS3YyTjkxZVR6b3ZUVk5uUlA5SmpNcHRhbmVpb0JWVENLMXMzWW9XbHlU?=
 =?utf-8?B?a0FPdzhhV0dHRGpBUlExWlNxbGF5bVg5YW85TzZqS2YwRWJtakFIbEwxMkJG?=
 =?utf-8?B?U081M3FySndGNGt0V2Ryb1dwZW1YUHNDTTJhV0NsTjhYZ1YzM0QvTCtYbHZl?=
 =?utf-8?B?UzNnMVFub1RYZXE2NmJ3M29VU1lsNk5uK1lrRE51SXFqZUJDYTJhNjBGeFVV?=
 =?utf-8?B?TWpORGVtVnpJMlhsbnhNVmlHcE9nNjdsS0xvWXdXYjBWeC9DcG1KSEpRY2Vi?=
 =?utf-8?B?UUZVbXlsSGVBeGF3TEdKa294d0VtWmlhT1BKTVFRQ2NEMy83NnJFMmNRanFF?=
 =?utf-8?B?ZEJSUzBMbTdKdENEWmlXTFlZajBPak5rcjVzYnBQUE15MlRwcFlzK0w3dEJ6?=
 =?utf-8?B?ZnY2ek82elJFT1VPUEJZYTFZSDhLWDBkUmQzZGJiWlNSZVowYzNFbCtQeEN2?=
 =?utf-8?B?RWpWWXFxc01oblNrbnpueGx6SFJ1eUpldFZsaVBlelFNamVrRU1kWFloYUsx?=
 =?utf-8?B?eWdNN01mZ1M5cFVwdC9VNFR5ZkRjaWJ1MkZ6dEVsenl4c3lFTDdmZlFGWG1m?=
 =?utf-8?B?VUt3eDBIeVNSVzhvdHdEME5CVFIrYmE0TzYzV0hWdFhocGEzNEdFU3NjR2dP?=
 =?utf-8?B?V2VYeUdDQnNlR28yN0wzVWpLaTdWMTBuaXk4cDBEYldrdHkrUWZYbTl6OGgr?=
 =?utf-8?B?TUNScWFzdVlrTnBjckF0aEFnSWgyaVJmdC95WXJzVm4yK3Zvd1V2SjlFOWJY?=
 =?utf-8?B?ai9QcGNkTTlYS3BqVnd2WmVrZkRydXNab0dhYTJ6cSt5MmY4ZGRjbGFoaGIz?=
 =?utf-8?B?UndjKzRsR2lQbGh1OWpUQmxqbzFIbnpNczk0amZCZ2F3amJrSmFXQlltSWpn?=
 =?utf-8?B?ZzJTTk1VNGYvcWkvMmpCdHp6Z1Rod2s4bUhYQjhoY1BMUTljSk1DVHdtdG5q?=
 =?utf-8?B?OStNVTVKTjVrc2JxZ0dPWDJ4L1I5NldaL2JHL0RlaGlzNTVXSDBmTnVBc1V5?=
 =?utf-8?B?djBpZDI5V3dyR2Zmam5UV1pEK1ZDTGRXM2dsamRKd2IwRTRwcy8yK2RUZXlv?=
 =?utf-8?B?bitEWmFocm9Mb0FCZkN5d1ZVSjJlT285T00wcUZZUTJGUVRDT01Ha2lvZ2d0?=
 =?utf-8?B?ejBUSnBYbXVNbmZGYlF4a3BORFlIYnp6MGZVdVZtUkpjQnhHVC9wVVdYa1dP?=
 =?utf-8?B?TDQ4SE13a3kvMEUrcGRpVEZkYTdJeDdUUThpZGFIa2dlQzdOZzhpYnA1K1h6?=
 =?utf-8?B?VUY2SWc2SVUyaGRET1BHSFNHVGNOc2RybGlJQmo4MFlMbzYwMmFWUWtmTnFO?=
 =?utf-8?B?L3IvNFR5eVFsQitud2c0eVVwR3JGMjYzaEZKSDNCTS93MGV2K2FtVzZXU0hm?=
 =?utf-8?B?ZWZpT09oMXNuajZUUzNyeUR5allYTUFrRmxNaTAxNFlxWnlldmhRbXRmbTkz?=
 =?utf-8?B?bzdaVzhXQ1lrdXJUcDZnaW9sb2J3cHZjdUs1M2hZOVMrbG5HMEpKNS90MHhC?=
 =?utf-8?B?N2l5YUtQcjBOamxrUm9HYXRjMlk1TGRiMGxXMlJjbGY0MjZKMXcrVGEybzhB?=
 =?utf-8?B?czNFMWRpdE1iQ2kvUUErU2pTTFVjenUzd1dvQjlQeWFOUHFyZHV4ZFVZM05i?=
 =?utf-8?B?aU42MmFXSnlxY1lZL3pWeXhTeTZncER2Q3FzRkNWQ3R0QTZyVVcvR2NldFhm?=
 =?utf-8?B?cXpLeVZ2VnZnbzZaV1lmVmdnZEtaSzFySVBzbzFndWZCZkVSNnNGRHg2djAr?=
 =?utf-8?B?YkplazlDb01HQWZiQlVFN0JDNDdIRWNxNWFNQmltTzROek8yS1htWlk1YVN6?=
 =?utf-8?B?SGFWV09rcElHN2Z2K1J6Ykg4K3IzaWs1U04vSkc5QmIvazk5a0wrUFJ0L1Ux?=
 =?utf-8?B?MWNyamtoVUlMUDZXcUhKa1ZkOUhzU1Y5T0E1amVvTDF6bWpodmY2MVMwSzk1?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27ebc113-4456-4f16-d73a-08db4a5a582b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2023 15:40:09.2805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yq629KMELhZMqAS0dsLoJaLtz1v1vvtotdo+qei2+hoqplJMWEISbgEyLFnMwwU1bV/kayT0IPewxidjZHYPeocY6gMkf2jV3d8I4io4Qy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7027
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682955613; x=1714491613;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zGaOKFdWVvpCu61+IO7ogq5jw7J0cQBzalJNodrshCM=;
 b=fiXl4BsNe2kUgC+K7hexy20Ll97tlXFb8H2LlSlEDSORspexUNSelHUz
 bncBdLoip5/lQivcRQ7eeX2aAAZ3T7PydchG1FpDuqxDerwxpMfFaQ+XJ
 QhmrPYvAk2EsW7/lOPCAh+z21zTxRXmNvHO3Gm6WIMtw49Tk8jeYIHkhc
 wUkdOR7K9qaRM9N4ShT/83F73FBk0iFgW28mbOXYT3LuZpmS7dLB5xKw7
 NhBxi0orwto/L3rhLE/xXcSWaji/k192DWEsWl0D7yPtsffINWsbGeRjV
 +t5Ejt/VLv4zjoeqGGawrUPmEdEKE6cAbyqVx11ldaQ5gJ3ThAnF3+6Gy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fiXl4BsN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] firmware bug in Linux iwlwifi
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/1/2023 2:05 AM, James Dutton wrote:
> Hi,
> 
> Where should I report a bug in the firmware for a Intel Wifi ?
> Linux driver: iwlwifi
> Kernel: 6.3.0
> First line of error: iwlwifi 0000:00:12.3: Microcode SW error detected.
> Restarting 0x0.
> Symptom: Wifi stops working, manual stop/start wifi makes it work again.
> 
> I don't wish to spam here, so once I know where to raise the bug, I will
> put the full logs there.


Hi James,

The list archive is here: https://lore.kernel.org/linux-wireless/

email to linux-wireless at vger.kernel.org


Hope this helps!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
