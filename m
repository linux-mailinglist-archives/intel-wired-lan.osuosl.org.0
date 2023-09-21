Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 187FC7A946B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 14:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D260838B6;
	Thu, 21 Sep 2023 12:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D260838B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695300820;
	bh=Y0HVADMs7QFHiwb6VexDxvmEflImgTOLRLrq5ITRpok=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6m/3uX11oJAfIGUSYLSzkykcTMdqh3EiMfNs56ea9Do1fFovVYg1JFFn+x7unZdms
	 wOTpNkz3UzuKLrvQ5LHWQU4xWwVj3j9EQ4eqN4o/GU/6isMm+k+47FZXJgOPZsdUAN
	 8MtGYw91JQvS2lyDlU+QtcxHXbJFVmmNdINN/UmnBH15suwvRUQvOQ8CNSVMtPXbmH
	 XU9+QDyss0gdrD3V7vy9elp72py5ixfG3DVskXqW45gQrp3Eqi1T0+xp1qvpy3j+r5
	 sqmmuXiPJrMARABQoa4JOuT9RfTz4DetZm8IP4YBRuOLBc7JW54JCIj9EOT4uwerz0
	 D5gwQ0KnRkCxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J65hR1O5bDY2; Thu, 21 Sep 2023 12:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CD4F813BE;
	Thu, 21 Sep 2023 12:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CD4F813BE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C94731BF3AD
 for <intel-wired-lan@osuosl.org>; Thu, 21 Sep 2023 12:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0423409BD
 for <intel-wired-lan@osuosl.org>; Thu, 21 Sep 2023 12:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0423409BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8JKo4XBN3ow for <intel-wired-lan@osuosl.org>;
 Thu, 21 Sep 2023 12:53:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91A3D4002B
 for <intel-wired-lan@osuosl.org>; Thu, 21 Sep 2023 12:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91A3D4002B
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="446980760"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="446980760"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="862454846"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="862454846"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 05:53:31 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 05:53:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 05:53:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 05:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDVQ3+ry/zPtK+bF6n9FvVBorNXudmUXrAwFirh4lnpXemFDOKSknojQKVrb3VyPgo9lQC/zaEjwRoCnMJ14qsRWXo9ZOuBgLNZQ21e68BBGvNuEY4uvNfcTs9CXBtrbnz2v9LqHgkdPzxCq+gPZ0+h389AX2g6dsnoEqe56vmuQqAmcqbZ9kH7o+Dulf0prwkTG9qs/xxV0jZJoPBaSccaJ2agLUmpxpN3yudK5jflnYxmitC//EO1mRy+kelYc6PA6aZtjH01l37w+sU4NoQUoCy/DnPZ38HfiVSw3XREmq5XP/NBs8d75wFJkMfJopw9UvAmkc6qLWk8BOC8eVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UamRNSURFFNr+ja02Xv0r/UOWuhwztgLYb1mLC/zn+k=;
 b=lxY/cJANp+Q41nQGdDHGbC6nDTLmrnwI+ctFKYb7VmJZp/k/Rzzg2CY0QsRtioe3AyAPqmhItx3EMKxZzT4gDIT4lxDv5C1bxYHPsfDS2E7ZewpFasR1R9S1+WXxd03tD9RGm2ocOwLEO7SYl9VEdxw77VBoSTJCCTw9vyxd+v0jf/gaRKp2WyRR6SfqJbJuDJOo/Ex/276kGfsY/MzMJyK7K1i4gxA1nhLd+Qu/v1u0eFPt4Dc7+Bwal1+LkkFL8gp1Sg80asYsTQ/CI+v79V7LrcXdmDoF7d2TRUp0hmdWVp43BSTSafacY+rSE9Z2sTnhzatD3YRCAjpSnhpRpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Thu, 21 Sep
 2023 12:53:29 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4%7]) with mapi id 15.20.6768.029; Thu, 21 Sep 2023
 12:53:29 +0000
Message-ID: <c3cca303-f22d-1168-8518-d636d5f12dd5@intel.com>
Date: Thu, 21 Sep 2023 14:52:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <f05c2a5b-d434-5edc-828f-4b87049d01fe@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <f05c2a5b-d434-5edc-828f-4b87049d01fe@intel.com>
X-ClientProxiedBy: FR0P281CA0108.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::8) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 396f7742-486f-4bb2-e7a9-08dbbaa1c0d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5mdCfN45zQtpOz8tn+vgEgnceziT/wJk6pLaYVrOYlG+FIJjvRVZGYWcWiT9VQqU59AYArPQraRPz70otD6hb1h2cmAkWfpeLco+sfHLKzt5VyUe80y5X6XZJiqfD3S1nnfvhfBNpwU3j+8yvdhtF0Mn7LXcnuuNSQpUbQyVsJcyvCakUlWRtf58gHAoOtcJnGTRHCvhNAJYQr1K1tX8bo+Tb54z/B1lNtFtNw9Zojj5Nz6LbD7+kaj3pLZkVnoCCpJGb14zu8IoBblx+0Vb6mu7qz+POjM909NhC/aa4SXzwdkh1i2lqZYBBdxmWrPTkDgzS/A8HmCTlvgifLg1SCPTbHC706dEp1BDXtFjth616k1yC0nw74CRZM7BuAz6CRVKh5rED6sfGarG7DsE2UIcF6xgVTnEF/VKWLYM+fxYCPHVrNT5hpQOzWVzNd3RuCyal0SufgZxVtEKTZ5UR1/QcSjYB6CK00i58QsqxIOTA3KaxzP/9e34PTl9Srnvo2vm4x9Fz/Ea88uAFGNSB4T0rsS9RKMCGGUYHf2jnvyH/luMs1jZEU14oUx51dOQkIJw0ixwuSInimp37k3zGeN0UJc7RjvcZibvN4BP5S9+KSBgSPFc66O3b125RUiBLCghCBVf07YIqmRmibeSQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(376002)(396003)(346002)(451199024)(186009)(1800799009)(38100700002)(31686004)(6486002)(53546011)(6506007)(36756003)(31696002)(86362001)(82960400001)(8676002)(6512007)(966005)(6666004)(478600001)(5660300002)(8936002)(37006003)(4326008)(41300700001)(6636002)(6862004)(316002)(83380400001)(66476007)(2616005)(26005)(2906002)(66556008)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2FHc056dEh0eURpS1k5Unlna1BTVjd0WW1MRzlUVWZEQyt0b1JTblI0cndG?=
 =?utf-8?B?U3pwMW1JSXJSeVUrZ0JmMGtVdlBZOXl0UkZGQzI0aWdTaTdnVFhjZ002cE1V?=
 =?utf-8?B?cW5JektYRXU5ZUpxT0oxczlkbWRGbU9CWksvak1NMTgxeDZocVduY2dDNGtQ?=
 =?utf-8?B?ajFBNzkyVmFTMHFDN0VKM3JuRVZXWjFNcmJ4VjhYa3owdUk4d0pVcWRXcEx4?=
 =?utf-8?B?ekJDM2tSUy9sYWY5M0o5QmV6MFBaK1EyMTZtWHM1cVcvSytsT3BwMnRjYnpP?=
 =?utf-8?B?TkNOeVk3cVZSdXdtczZob2R4bHR5Vng1N0lvWDVDb2F3cHRXdW5vQ1dDZFF6?=
 =?utf-8?B?R1V2OEcvWEVQVko3MWUvcllZM2drMWlBY1cyR1QzNmtXbmgxSjdjdVRXeEdY?=
 =?utf-8?B?VGpHN0IycjlSbVRjVlFBYVhxRkxpTDRKM2FpZ2MwT1lMdSs0Z2Y2dCtiL09j?=
 =?utf-8?B?ejFYSThNV0owdTRSdnJYQVhrQ2tkblh4clJTY1JOODlWOEFyTlQzQXF1dk1t?=
 =?utf-8?B?K0xsbWdLMXdCa3JWcUlYR3VsVjlYMWpuM1VGbWVkQ1RBV004d3crNzNHT29G?=
 =?utf-8?B?Y0k3VStsUFFOcllzTHpQaGluU0hzd2NPZno0SkdBd015Snk5TmR4VTcyc0Vz?=
 =?utf-8?B?QUljdWJLWUJBcklzbXFVc1EvTTJsTFlSVkFIZXUxa2lNbW9aOXVjMkhiQlRN?=
 =?utf-8?B?amRVTHNaKzlIeWRrRWdTa0dPQ3c0STdYVFhPdlBtMm9JQVlEZlpQQlZQcGlw?=
 =?utf-8?B?R0FRUXQrVTQwR3lHYUhYN1E1TSt1ODJOTnYzeE1MeVI3VFpSUW9aWS8rTHd3?=
 =?utf-8?B?RkxaMU9qSkdNa1ZuSHZWSjE0SFdXQ3NnL2dhMSszTnlRUzBDWVljcGZ6WUt3?=
 =?utf-8?B?L1F0aDhZNU1IMCt3eFdvNjh0c0MxOW83NXkvNkY5NTNvbHB6NitTQ2JnWWFQ?=
 =?utf-8?B?Y2x0RDRhQVVscXZSUDhFYVp0Qm5LYk1PdS80cS9uR3BkSlBMRFpkVCtpSit4?=
 =?utf-8?B?eWxmTmRKYTBKeEtWb0FjZzdqT2hKdGVMbS9Hd0d6ZHVGZ0R6Qk5qendTZllI?=
 =?utf-8?B?azBSOEJyMGtWVVNkemMwSlZyeHVzb0dFUDJSMGswdEQ4dW9rcmx2UkJxaWpS?=
 =?utf-8?B?Zi9QcmF4azV3MEtPY2J1T0lXb0JvY09COWZNMG5kUXIxSW5KdWdjOHdkSjdP?=
 =?utf-8?B?STRaQ09ENlFtODRlYU1vNXlqVHpBV1dBeTB1Ymx1SnFYaUdHcXkvN0xJSWZY?=
 =?utf-8?B?ZHk2YU11ZXpjMUQwQ0pldWtrOVpHTUdQUlVCZEhYaXZ2SjNDNEpwWVZoTE9j?=
 =?utf-8?B?MDRNM2dRek96UVdBdUltQnhTNlMxcm9hTmJXSCs3Y2FpVURBUWx4VVpGdXlh?=
 =?utf-8?B?RmxyNGNwbzltR3dMaitTeWdUWUhPeEVGMU51YkFsTUNXbEY4ZVVNSnhtSEhB?=
 =?utf-8?B?NDdDRWJPbGF0bitLTStzc1FHZzlLVStFaVJrQ25XSGpCYTlsMVV1UVJGcUZY?=
 =?utf-8?B?U1Y5MG81Mkt4WjNnK0h6ejd6eGdQMStEdk1wR0JNSUJPdjZIWUVxQ095amNC?=
 =?utf-8?B?QTMzRVAyOWRqenRwTWNlOTBoWnVVOEUxanBvbyt6WTlGam1yUmdLZkZzNEtW?=
 =?utf-8?B?RWpEcWNmTkxvQUFLR2pUZGdhY09EWFlicjBBTkYvZWZFblVkdDNrdUdDaDNL?=
 =?utf-8?B?S29RY25IajQwcllJcGFpZnkzWUYvbkRpelNHN1FUbjE3OXkxVXZYMXZ0eDRu?=
 =?utf-8?B?cjcrZ3I2T3h6UHljWGtjODBXdFY2Z05ONjZIZ2lKblk2ZFhrQ1VuOWU2OEl4?=
 =?utf-8?B?R3cwbDRLSUFwUm1uRUEyNlVYcGNQYU5EY0srRjE3TmlPZUZIbEwzN2FSdit2?=
 =?utf-8?B?YWQ2dXVqOG5wcFBVWFpuNEh4VmRJQ0JFUmd1MkV5bkE2K09DRHUyd3lvbXpI?=
 =?utf-8?B?bEwvWVFjbHdTZ2ZvbGFTd3hJaXFXLzY0WFJrdldTNUFCdWV0NzRFNDI4VkNj?=
 =?utf-8?B?dDB6ZGZtazArVnNLNlNaczZBWlB3c2czUFFzdjdwODBxeE5ISlV2dU5EVjBE?=
 =?utf-8?B?a0FpVjdNaDFlQWgyUUdUVVpRUGticHFoeXl6UCtUaU81d2owaTdSU1BabmNK?=
 =?utf-8?B?bG04WjRueTdLRmZtcUcvR2RkcVpsQmd4MFp3UkhXMU1kRFFRbGQxSHI4NXEw?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 396f7742-486f-4bb2-e7a9-08dbbaa1c0d2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 12:53:29.3342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R9yZ+P7WRvEEwUe+76jtCoDsEPXhV0MhyGsMg4MUxZgdJmkXru4jXvMlmu9203GOqk9zCN6zq412av/8uiiqpAmWI1KKDNUjyrS0z3t1QSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695300812; x=1726836812;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FwW5OAhLT59LPvu06ATwBnpAe+ozHReGgaVPw4CAkL8=;
 b=PD5/7cyJUc/zF8oPMzl5bcuuhdrUrMlzkB4izRXquKNWohH/Y3w4mKxx
 RPEMti5XJ3fQGe8ewqOBzO1NNkXqeLlAaOWxT5Ai6Tiei1xhMcoIWEo43
 2LUFvrr1kLAanRA9mnnFT6NdmfUDkPKDBfP/mHX8VGadtdZnwTPcnFCow
 36CFRCytmxJMjCMOzKTdUGzPEJc7kQ7Zxe4yyP4jDn3w063HPNScjxqka
 /BUuXfsLfOG60cdeekj3rCcNLJibZXW5tQ5a75s2QPle5BZ64IuXDyPU8
 xWwrq4Ek3LlpvUabKuf+0e3oiexbCBKQE+Sz/pKkmaFdtbPPSjZcLWwS5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PD5/7cyJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] net/intel: fix link-time
 undefined reference errors
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 20 Sep 2023 16:31:27 -0700

> 
> 
> On 9/20/2023 11:07 AM, Alexander Lobakin wrote:
>> Recently, several link-time issues were spotted in the ethernet/intel/
>> folder thanks to Kbuild bots and linux-next.
>> The fixes are pretty straightforward, just some stubs and CONFIG_*
>> guards, so resolve all of them in one shot and unbreak randconfig
>> builds.
>>
>> Alexander Lobakin (3):
>>   ice: fix undefined references to ice_is_*() when
>>     !CONFIG_PTP_1588_CLOCK
>>   ice: fix undefined references from DPLL code when
>>     !CONFIG_PTP_1588_CLOCK
>>   idpf: fix undefined reference to tcp_gro_complete() when !CONFIG_INET
>>
>>  drivers/net/ethernet/intel/ice/Makefile     |  5 ++---
>>  drivers/net/ethernet/intel/ice/ice_main.c   |  8 ++++---
>>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 25 ++++++++++++++++++++-
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c |  3 +++
>>  4 files changed, 34 insertions(+), 7 deletions(-)
>>
>> ---
>> Directly to netdev/net-next, build bots are not happy and the next
>> linux-next is approaching :s
> 
> I had alternative fixes for ice at:
> 
> https://lore.kernel.org/intel-wired-lan/20230919233435.518620-1-jacob.e.keller@intel.com/
> 
> that are slightly more invasive but bring things in line with changes I
> had proposed earlier before the DPLL code got merged. See:
> 
> https://lore.kernel.org/intel-wired-lan/20230919233435.518620-1-jacob.e.keller@intel.com/
> 
> I'd obviously prefer my version of the ice changes, but I understand if
> we prefer a simple more 'obvious' fix be merged now. I can spin my
> changes again to cleanup/refactor in a follow up if necessary.

Go forth with yours. You can take some of my pieces if you like them
more if you want. I just spotted both idpf and ice reports at the same
time and was ignorant enough to not look at our MLs (internal and IWL)
first.
I'm respinning IDPF solely.

> 
> Thanks,
> Jake
Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
