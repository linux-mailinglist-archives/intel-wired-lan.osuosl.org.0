Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 226D367D5C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 20:55:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F89F41A50;
	Thu, 26 Jan 2023 19:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F89F41A50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674762939;
	bh=nhb/51jEgfBhMHy0+D3DuIDSSzkLAjnYJyzIH18iFv0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1SvrIC/vbjCTdt+S2i45EOFY32nBQOKSkBq9LwnNSPzTyqtlTVhyld8Jj9DzmdePl
	 KxFxgYxGSxbX2oNjDHj5TT1iBFv7IGk1FlszopmX6XOUqT8mLiZT0U87KER8ZwNwU2
	 t9v2bntzvYgx3MOvTe9cLGEoRhIqSBiQZr548MYCNle9JFgu+nW0U8Iq8ZnLJgkpjd
	 l2fbX2Q7vZ4TVpfNE/VNRI+5lr2I3ePeHSbLV7287ctRRwfVMAzWOFsK6CV9wHk55Z
	 z5egimVXi/Wm/rG4RWQK893E9K+X3BDwehrE+ObiHACGm1eAW7b2rknR0pUv6ijZEW
	 vF1MT68GiQ40Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eMir1a0MM5C6; Thu, 26 Jan 2023 19:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA6AC41926;
	Thu, 26 Jan 2023 19:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA6AC41926
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 104051BF427
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCBEE41695
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:55:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCBEE41695
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlmmhC_2iG3E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 19:55:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ECA440383
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0ECA440383
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:55:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="329028972"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="329028972"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 11:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908376269"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="908376269"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jan 2023 11:55:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 11:55:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 11:55:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 11:55:22 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 11:55:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmcRw70u4OyHYAudhRjjl210YhnpMcn38a5qAEqS6dMAQcbi6A8fkKtnZ3MDrbB3mX+qdYWR9UfZIOFKoG8OFs+r681z4aotjOgRPrLz5b9B6Caw8Mu2XU2wDQGEQRslpG19M802B9x57GsRHXeJ0vwdtyrMLr3VFAqwNHwGS6Pck31LreOcjy6G5vLu8KrPRyLyEvUw6PcjlIGqcgSYZ/VA5KzNMJMF9veas5zq4VRpplwkE4CGzJkFMPyoINeZ/ofMwJZRTN9SIWpNJ72LGLa3BDLjEg+kxMoM/hHAUT9mqYObywTDTLVoFnXfZDMKIezlq58RUJk+imVZcvPwyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZRy4cGyAzDBhYid0dvRv93xjKbcID5eMh1MPcNjyxQ=;
 b=J3Aqyoz9rbE2JC2iIqZD7l9/5PEit7SD2uDM601lBlLo5GPEVTJkqKxnPhJ98kI5uzTaWZr1/gCyLuGt4zGv9yadbXCeKZa3abES2W79ySFXmn7QTQm68CtjuX8+TtzqXcwLCSI+5rDk1iD3lbtIhW/rImd/bMpRaISK4rwfmFzGqciyz3LAX9sti5lKPga897TUOl9upKCO+1VMPnB6KrhLECiVfWyHCheoHE9KJ8AQjo1B/qMWxxK9aGHDrCsQpGyRdbeKfthirhMNduemAeld7Ic8bDj6rVAV7+Zqz2NGZ9mmt7E/NGv3RBwWhPtnLA4scjcqQg6WJCZGsBHtNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CH3PR11MB8210.namprd11.prod.outlook.com (2603:10b6:610:163::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 19:55:20 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 19:55:20 +0000
Message-ID: <a23c80c4-933c-9be0-6d36-4d4238b13f23@intel.com>
Date: Thu, 26 Jan 2023 11:55:18 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Natalia Petrova <n.petrova@fintech.ru>, <stable@vger.kernel.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
References: <20230126135555.11407-1-n.petrova@fintech.ru>
 <20230126135555.11407-2-n.petrova@fintech.ru>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230126135555.11407-2-n.petrova@fintech.ru>
X-ClientProxiedBy: MW4PR04CA0313.namprd04.prod.outlook.com
 (2603:10b6:303:82::18) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CH3PR11MB8210:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aa88719-7838-4540-2d94-08daffd74151
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xATvsUb9f9Vc2u2POdJVi21awA/jAjUQmqjB3Bd/mikvYSrc6qqdTk8wD9jSKF8IPE76ZbRSUORxhswQMlFvSgqUcaBolYct3uh1C7BNUZTNx587zh/GfzzLbly27Eu6mHTQjh9p4KgZb6NJ0hhWMMa+b2zImhyIUK7LQjN5bLSexPnfId9L4ZTFMxhpzRW+Ksq7TYsX8eqYzmrDB7AxufXt1zfGqn+6dbP8+8xuxrzMpzRazEOs7CJ3G5Xl6IYWmoZUdorh/OzuHHLM7ajoYbIBGdbUZqJP9pfHGQ6Bze9QRYtxBgH8fcZLPP7xgNjr/zevKLlc69qYRYFTipDCzS4J+0rD92L2Z5qlbfmqCnA9riquTZZvSAqaBnG3ndt+SOvJb5Rr3c42AMzWYWN5NdHen+hu/76zjJkYUqnVL4kQUSmPVGwkFgPYPJHtgdLFzGgvH7LCsJ7mCfDLHDsEoIXuBvA2C6dDkEiL1WJwGeeBPYklddNIeA+wxpamBCoc2lMBtx64LpPXWCKck/rPM2Yt8ZSzPIpbgMcVDn7/+5XQuqW4Wdi5UX1VufVWvaxw/vaPU+dWLFUP7pU29zO7tPkkpRIbq42wyZFPQB4VEbyVJWYGoePZd/dAXrRm4UHoQ2R3SLGFISCAJCxYfICCgJXNrADMmV9fn7ntZAAQtBrhZj0bONO3gH8O1iLg6ELCI5Z+Uy0im+KzItn64XU8fVpicewEYO0wNP9FEocyAqE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(366004)(396003)(39860400002)(136003)(451199018)(316002)(54906003)(38100700002)(41300700001)(8676002)(66476007)(66556008)(31696002)(5660300002)(7416002)(86362001)(36756003)(8936002)(4326008)(66946007)(44832011)(2906002)(6506007)(82960400001)(53546011)(110136005)(26005)(6512007)(186003)(31686004)(478600001)(6486002)(83380400001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cE1sTWJtWE5Jd3ZtbDcxbDBORUJ6VnpQck1OcmY1enNYeDJJMml3c01HZUcz?=
 =?utf-8?B?dXJodHZablI4SkptY3RKZEVtc1dLM2RCb1c0UUR5TmdkbGUyUDVqbWRJd0R0?=
 =?utf-8?B?Y0JIaUE0dldRMjZWVktuQTYreUVzb1pleE8ySXBZTEhVZXIxL3RORXNzRzJ2?=
 =?utf-8?B?TktKTFhwbCs3RDdGcTNUemV4bkpJNCswY0hQM3FXZy80d0xLUm9FSC9RTkpv?=
 =?utf-8?B?V293UkF5bkttaWU3TjlpbGhDSGZkRjhydTlqNHZ3NXc5SU83VkVUMzFuQ0lY?=
 =?utf-8?B?Ly9RQWFkdW50MzlrT29IMER1M09XUndPcWJGcnp0a0cyNUhONDF1dTdUcGts?=
 =?utf-8?B?bGs5bWNaRW9MbHFMRjU4VXhwVnhWY0E4Q2lsbDd2UzdLdUt3M2VCcHlubmVt?=
 =?utf-8?B?ZVh3bm1GVE5pRm5mVjBUUlBjU21EZEpMSENpYWprTm5sdHZPWG5TWlRrM2wr?=
 =?utf-8?B?TnV2ZlNkMUllVVRLSmZhZUc3VXFRelVpZ3FLdmlzMkdzZk1RbzIrSkhiQVVh?=
 =?utf-8?B?MnJJVlBVc3l6a0FSY2lLOVJhbU1BWDRYT2ZlYVVSbGdpL1A3UGU4SThXNjEy?=
 =?utf-8?B?YlE3WjZOMUozS3lkbmsrNW1Hd09WblZMbzhkaTdZNDZDUGRvendnQXl6NTRq?=
 =?utf-8?B?SWxWMWpnYzF2Z2hGS0xZK2VrQ1EwQ3NDeFo2dk9rREtJZTJ0RXN2Qnh3bXVp?=
 =?utf-8?B?enR1ZEtBSkwvUVpJRXhGSzR1cGVPZUlVVkdkSUl6QlE3M0ZjaU1sNjhOR29Q?=
 =?utf-8?B?UnZWQlB0a3Y2VDIzVCtpOGhmUEdZVGZKb2U4YXRqQ3N4OXBUVEVDOHdYYVlC?=
 =?utf-8?B?MzY2Rkk5aWpCbCtTNDBtSFZpMkV6cThQSGdrNU81NVAzZUhCSmNaZnJJVncr?=
 =?utf-8?B?TUpBaERCMmd5MWRvWFpBcVZYbTZ5Zi92OUVrWFYyNTRaQ2lRWnZZY2RuTDZG?=
 =?utf-8?B?aXBBUDdKWWtFTGkybjM2VGVYdjJodnE3cStwSVZRSUowU3h4UG9saG92dzZQ?=
 =?utf-8?B?L2NpdmV1VjIxV1FvVkZXYjdnZGw1dENaUmUyeXhyN2hvTWMyNlBEbHlHUkR0?=
 =?utf-8?B?cjREd09ndTl4dDZCbGJCWUloT1pjMU9mdWtZVmFlakxCNlR3RElWRmZXUnpv?=
 =?utf-8?B?eVdvQVdJZlgwY1lmOHkrMjZJT1RCczNiUEtEdDVxZzgwb2JsUEs3R1l4N3R4?=
 =?utf-8?B?VDFIaVB5SlBaMklEa0Q5dVlpRXFxUUprMkFkYnc1TGpvb3lFRlpDY3U0REtj?=
 =?utf-8?B?Wjh6RFloL21naEg0S1hvdmpjaUxVZGtHQjllWG9oRzV0K1pnd29LcGZiTXZM?=
 =?utf-8?B?b0UyODI5TCtZdW1pUmkrVlhTZjZ2WWttWHB5ZGxFcTJyNnZOMVpiOWJrSmpK?=
 =?utf-8?B?akpNL2tMa2gzbytSTnEveDBUblFqVnN6R1lkc2tYQTVFMzlBWVViSzJkYmUr?=
 =?utf-8?B?eG5CdlRyZWN2Vjc2VkdNQXd6TDFyMUJXVHB5bUE3S29HZGJsRng1L0swWGtJ?=
 =?utf-8?B?bTErdk00ZjRMemlSZVZBMlVtU0FvNzc1SXlMSmk5bmpVU2lndDJUVnNEaHBy?=
 =?utf-8?B?NHd3YUZpNzVaR1YvbGlzeXp5MzZEVm1GZkhhdXZKNWx6Uk5laGhleDNteFZZ?=
 =?utf-8?B?VmtCZjJFU3hOdWtOV3FJSjV1d25hOW9SakcyM3R4ZnlIS0FmN0xRYld2NHJV?=
 =?utf-8?B?ZlFsY2NEZWwwYlBSQ3g1eEJ4U0I1TzdmTzhQb2lXSmhXbFpMV3ptVTNIR01J?=
 =?utf-8?B?VjlMaklGcXc4ais3QUJuZTdycVNmeG5wVzNmMnBUaWYzcDFHQXRHUXhvWEpX?=
 =?utf-8?B?WU9VQzVPc2FPcW0yODFTQmdFNlpEWkNFeE9vZnBnN0VvVy9nYkJZY3VWZ1RE?=
 =?utf-8?B?ZytoRnd3b3ZVY0Zram5MVk10dklLTXMxQWVUZHdMOFpJVzZJN2xFQWMxUThE?=
 =?utf-8?B?bkJ4eW5xZ0NWQjFhN3Q5QWxmeW01V0pWTmVUOStPUGRPd0xFSHFBeFRGaWt2?=
 =?utf-8?B?SXVBZGhrUmJtcURBUUh2bmdjNjhOMmliK0VaRHB1WTVnT1llclMwQmhFbFVz?=
 =?utf-8?B?enduWldqWUJEc3J2ZmYwaCtkUFo2OTNLcDRBL2tMNmF3aWNRbVZxSmtQMTFG?=
 =?utf-8?B?STA5Mi9XZHpGbERiNzFCQ2xuRkpNMkljaFZWcDcrcUVxVVZ1bzNvWUQrck03?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa88719-7838-4540-2d94-08daffd74151
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 19:55:20.6643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cIaMkxswm/CLYj/YGH+cqSsWJdhvQQ/hDJY/LXuYbhOUWNhJAlpMTY97nQqmWswn5SCPWphJfaG2v6ItMOltd8bDTwgxedxK9qOot2RWTzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8210
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674762932; x=1706298932;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZcEh3J82cdf49eNGrExLLGwSmNTTRLaju90uGMkg8T8=;
 b=NrMs/HgG8qVE4Z0oABV+jaXu9MxBO1393dEHgReEMV5wy3u8abIdBK2U
 rEtokPjxv2GayY4V3I8CsvihWmsBKJHQ7pxnyJo4VLTZSoTsLLXnsn6Pj
 8pnqPoIlAJeLa4ItaneHAFqCLSVskVfBZWfVbU0dKYLuvnmyNnVg8zE8y
 ezDJqWLdBmgc4J3PVaHe7nKfX8in0CnQDERD86vgOGwoMKbvcReSCUFCd
 ZbugrRyIs8YZfasHvpASdGHhNBwiWTJgVFX5mbg/76OyT3nMwsXV4TIYZ
 V+iQ0QGHfqNAxNEvLUJnXG3r34OyHZtE+li6l6I5FN8mSJfNcGb7zwpD5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NrMs/HgG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 5.10 1/1] i40e: Add checking for null
 for nlmsg_find_attr()
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
Cc: lvc-project@linuxtesting.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/26/2023 5:55 AM, Natalia Petrova wrote:
> The result of nlmsg_find_attr() 'br_spec' is dereferenced in
> nla_for_each_nested(), but it can take null value in nla_find() function,
> which will result in an error.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 51616018dd1b ("i40e: Add support for getlink, setlink ndo ops")
> Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 53d0083e35da..4626d2a1af91 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13167,6 +13167,8 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
>   	}
>   
>   	br_spec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
> +	if (!br_spec)
> +		return -EINVAL;
>   
>   	nla_for_each_nested(attr, br_spec, rem) {
>   		__u16 mode;

Makes sense to me. Thanks.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
