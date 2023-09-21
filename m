Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E48797AA081
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 22:39:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C56D42123;
	Thu, 21 Sep 2023 20:39:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C56D42123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695328753;
	bh=Y2M+feJbUuCj9ThMQcZnPfaihRTuE6NOEIIwQC9cwwo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CF7ZnmttZVsn/8dx5q9MubI6ytYQ8fJQEcxGh3yO1tkSMaBuRoe8s8uQeQEN2i/kB
	 D7NWchP1DVAQg24uhHQG7FoZtJgmB+SwvY8UcoWS00dLPPWfECdLuc1NwgNIfn5OK3
	 EVD+XLtZy7gsdSyrEwEIK546JBJMT9uW7NIPdc8919VEXXHdMUpuej7NnqCRnmA5Dw
	 RHTVElGGfzV3HXOKzm5xf884TY0Pene3AA8unDNhGRX+Ev97cssV4LBNLhn04F7k0a
	 0i9a1Q5qc9V6SQ3sh7AypWSUgZEVX/ZCPhkvNlzlQFG0u2kY6EreH4SEjZsXNF6TAL
	 iyDcgRgEwh8Uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G0qx6fByxcxV; Thu, 21 Sep 2023 20:39:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B84E4192F;
	Thu, 21 Sep 2023 20:39:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B84E4192F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B82C21BF2B8
 for <intel-wired-lan@osuosl.org>; Thu, 21 Sep 2023 20:39:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CC0683CA1
 for <intel-wired-lan@osuosl.org>; Thu, 21 Sep 2023 20:39:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CC0683CA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aoza9FW6l7Bf for <intel-wired-lan@osuosl.org>;
 Thu, 21 Sep 2023 20:39:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 588EC83C9C
 for <intel-wired-lan@osuosl.org>; Thu, 21 Sep 2023 20:39:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 588EC83C9C
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379533900"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379533900"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 13:39:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="837447216"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="837447216"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 13:39:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 13:39:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 13:39:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 13:39:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HBLAIDuAvpQWbpzjFIJuC9HHvphcJhN1gf6Z5BmuSpHpMx5tFKdynhJlkCfp/A7TPREl7U5wbf5e+tgAjNWg8egcKJ6ITo9KElcyf5jpJDXPRnWDnKCoj5f9BfVhG1GP5f/EzpYcXkfyJor2Gt3dCttbuyGmvcytIPyHw+8W0LMor5AO4nHeBiySevBEHVoNFmOcjV7o2ja0yEP9IpL0Ot+MGawa61TfoiYjfe49hTFEcDUGJ9jhZFNtPvWMqxrf538oIsFSXRZ0JErdJnvplHjOPXeFxguZAvUWUKQpnyE4ZlN5l1t7fVThzkjL9SY9uZYg3QvSRU2M+DVX1wmJGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5yW5UTeIQVLOshw7xToCEXJwrh//8eZjA183ejd+j2k=;
 b=BpKROU5IQXyh/zdaNTG8wxzGJRi9/xspB8ziGG3n5ReIFUdjaFeL9/L4GLpRmupYMjh/fljmXPlBZ+NroAx/SLCWXpVP8CjhQcNvwGJD2Kb2pqsnBG1H8JChnTP0Nuha/DisFeG3FUNGIeUAbtUvzJPi8og1VAhomcFeHIsoQnEr1VVmm1uSWzykd41pZNy+wL9LK3InJf9/LLKQvmzXxPGV0xZIyN4Z+AINBsU98hYfsVdNa+DbzBdrZpmpIgMcXlSKab6KaLLw3v3mtXzoSrPt71Zj9FxZwB5m1HJfgbTvy6mFDsc3QQJ4MHnf2bSl25C1zCvJTer5Qd1ao+7oPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB8666.namprd11.prod.outlook.com (2603:10b6:8:1bd::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Thu, 21 Sep
 2023 20:39:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Thu, 21 Sep 2023
 20:39:02 +0000
Message-ID: <cb1a9fb1-8ef6-802d-fdf9-abc1b7dd1be8@intel.com>
Date: Thu, 21 Sep 2023 13:38:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230921135140.1134153-1-pawel.chmielewski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230921135140.1134153-1-pawel.chmielewski@intel.com>
X-ClientProxiedBy: MW4PR04CA0243.namprd04.prod.outlook.com
 (2603:10b6:303:88::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB8666:EE_
X-MS-Office365-Filtering-Correlation-Id: c04954a6-9b2e-409f-1df7-08dbbae2ca7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vswGmsN0HS8+UKfwF+VHUE6UOPkKBCEGWok/P1fOcPK0Tdp3uXQVx8FqWTReWJvtmWwNqAOXbDSKzUtejwyC3rlpT+FJY32oTnF/mAd1yttAJbfCGnrSZpg51pPkyk9OkN4kV2zFF62tm06CqkpQb1/51BV8yfultkO5g1Tnqj0go3JS2mVKY0CXRrXej3d+nFbdPVPz07UAO8OwD0Dzaid2y2QqdyRB38X706mq5Mvl969kR+Xidx1FtHSJqllqN7/W5Pmt6w84fLvXDTEM1J9jnJnbqsz66v7UqtVhO2AMKoBl9qJEKp5wgeXBpln7SLRwiNbOWm7kAiDLQs7bcOjGXLgF/IsL5RdJypjQMe2bK/1+Y0W9hNrmO3bvnFxSDrmr+aSumyOUtEJKa7bKB10Mva+xmNaOMlKEn9N5IgRsfMT5phz7DVbedElgqd6s9gd8ZwkhYs7mbx39QiR9wxMrIVO3lR9xIxc/6X7GZMCYDQuuCBaUpE0rfHpa8GcBNehPYljZPdrrpu8/cTViyuIiWyQgoHIcgH9Kyd4CjNa2t4xdoJKe0TtNygaaH5TXifPLM059JpeoQjCWKKSXcd/wxxSlk9ewjdXc2hwL8a+mZtxhVZV5g65voXLaO36j7SVUThPD71feql0j0ngO2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(346002)(366004)(1800799009)(451199024)(186009)(53546011)(31686004)(316002)(6916009)(66946007)(66556008)(66476007)(83380400001)(6512007)(6486002)(6506007)(6666004)(2616005)(26005)(36756003)(478600001)(966005)(82960400001)(5660300002)(31696002)(2906002)(8936002)(8676002)(38100700002)(86362001)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVRKbFZGM1lvK0tnM2RmRi9pQUtRTU1kKzJQR2hZcldoNno1SHlGSTBob0l1?=
 =?utf-8?B?TkJ3TWlYN1Y2K0xWTDh4S0VGUytSZlpaM2Jid0JWeUszQmZMN3l2dzdaalJO?=
 =?utf-8?B?STBWS3RPRUFuRnNWblBkdDVjU2RCWkdBZG5TU2MwR2hXc1JDRWRDd0FJQytB?=
 =?utf-8?B?MmN3cTJsUTdjMm85SkYzS2RKSHpRZUJrSElGWW1RKzNzRnQxck9TMFFFY0RY?=
 =?utf-8?B?czEwbS93NUxmaFIxaXpNQzUrdG0xSkZtcDZBV1NzMnpvMW01ZGJMQ0FVZ1NU?=
 =?utf-8?B?S2NLNGxxejdDVGN3ZFBPSlhHUW9zdnhsdUdPTjZHanJDUS9xSkxRRUxraUpp?=
 =?utf-8?B?OU5nT2IxZzJpamhOeWNZMGNpUEJVVWhFMEcya1hYSUFzclpkMEJEL3RZL3Bt?=
 =?utf-8?B?ZnRKaEFTZmZVRjZrQjNlTG82aUl3YU93S1prMUdlZHIzcklSZ3JoQnc0MXhj?=
 =?utf-8?B?YTJiYVVzU1ZjWFE5V1QxWEM3K1IwVERqVE1Ocm9SRVJLbHZHTUdZTW5vVzl0?=
 =?utf-8?B?U3RkcnBMZkRHVGVCcTd1MXpTaWNPeXN6enN4NzZMd2JXbFY0TG9XRVoxMkNl?=
 =?utf-8?B?dTU0ZS9rVXpMdlhGb3hFRko4K1cvUHhhMUxLclJLSlQyOTNZWDU4NjlUV1Zs?=
 =?utf-8?B?dTE4d3BnUTkwVklSdWU4SkNQZEFHdE1rZnA3a0VIY3Z3VWNkY0YyY2Jqc2U0?=
 =?utf-8?B?ckVxejZZRzFlcmgxLzdlZlhldWVoYUtiL0xNWmhhVzFabEE0VEM4UDAyY1kv?=
 =?utf-8?B?a2d1QTl4RVBUSytobWw2dUVyVS9nb0RRcmVyVy9VUWdCMEoyemNyNkNiRkxD?=
 =?utf-8?B?UTdHVFo5TWxzY1lyQ1lSL01iMDhkTW4yL3lPTEt5bmJEODFyZUFEOExod04r?=
 =?utf-8?B?OE1EL3BZMmRZYXh4a3h1eXl3UEVkVjlhRmhhekpVUzhoRVMxZ2JsVDF3V1Zy?=
 =?utf-8?B?SGNQYzlHQWJrdkZ4Umw2aTZOY0hnRUNLWDlXYzJTazVPTzJleXNwVnZ4Wm9u?=
 =?utf-8?B?NlVWSFlMSTNVUkVKeHpDS29uQXFLUTU2WlVYa1pWUWxZZC85ajZFRUk2ZGhq?=
 =?utf-8?B?cko2ZjlxMVJaaXpFUjFZcDJRR0FtYVBpRzVkbmw5K2hNbzJPa0IwWERSeS90?=
 =?utf-8?B?TkJWaWRHOFo5TjI2RDBVbFY4WmR2NnRtaklEeVIvTkpGeG9zcG9jdDMva21S?=
 =?utf-8?B?RjlWRnVMcHZqenhoODgvMGxodENYWlgwWTRWckJBU2NTZ04weWJPTzBYZkhz?=
 =?utf-8?B?cEp4c2JwcnhTUzhZNmVySFNEazFTdEY2dG1hNDhmdHJKdXVSYWczK2ljM3B3?=
 =?utf-8?B?WVh6UkVUbmRLOGpvcGtiL2J5Y2RFSlV2K0J2ZkF3ZFlIOVF4VHBwTUxWUWkr?=
 =?utf-8?B?NXhOS1RrSlNtVFZqMEVrTnArS053OWZTNE04cC9QenZWRXhiM2JZK1hZdDZJ?=
 =?utf-8?B?WHVZaHVIZjFTSTk0VzFUNW1aay9iOXdaaXpOckZRUkh6MUdlV1c5aUlqTmM1?=
 =?utf-8?B?K0ZzRmRTWm5wYm84bjVTTWZ5aWFYcFdhcm9KdjV4VUhFeDZLa3ZtcWk0ZVJv?=
 =?utf-8?B?TFllbEE1V0JhUUI4WGcrNFRqdW1GeGlQekVQR2kyM0MvQXdpZVZKYmNlUVg1?=
 =?utf-8?B?THdMbmluNWd1Y3RwOFVJT2FRNkoyN002ZkNEL0xoLzY5cG1TRHZ0SjI2ODVq?=
 =?utf-8?B?Q1dmUTZNVzFGVXA2ek1oS1JrQXEwMHMvczRZczNTbkIzdE5CYWV1S3BqZzI2?=
 =?utf-8?B?MlZNRk5qdkJPM292Q3VGeUpvbDRieU5rbDJJTGZZaE1aQk12eTdqb1FhdS9O?=
 =?utf-8?B?M2c0c2k4YVh3YzBZdHJMcTVrbkJ4ZFpoL0xIRHhxOEsvYzhvdFpXMUJ6SCtQ?=
 =?utf-8?B?TTVPdmMva0FPTzg0SUlBTy9sdENERVhzZUoxaS9lNklueGx3MCtOUkNMNTls?=
 =?utf-8?B?TUpYaVd6VXhrbnN1dTV4Qmc0cWlkRjBHRE94OEhTODZXbG1QR01GRlJsOUEx?=
 =?utf-8?B?dHhDa0kzUkRUbHQ0NldwdVY5RllrS0xUWEhJVlNDZ1lXamR2MzN3RjY0RnpL?=
 =?utf-8?B?SjBnQVJjT0pXT2RkQm4zZER2d3NxSXVDTE1ncEJETmhnMHNRdVZic0dEK1Jv?=
 =?utf-8?B?Q0NzUmZLcHlQVm1wQmNsZmNqVW52R0Z0bis5dXVjREk3ZGlCT2xTczNHcWpw?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c04954a6-9b2e-409f-1df7-08dbbae2ca7f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 20:39:02.6517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xy57mYLUk4z8KL2rOtzZW/WBxIdPKPpmNZ6DVTlnmg+tTxqWQhXe/HuQJqKuqUj1KWO2TLcW9SMfCxRZ9h7QiphWOksn2BDvMgjr5Shvrvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695328745; x=1726864745;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YczhcIGUPW4ebgCTfnofkyrLoPf5Arf8RLKntwQjlgc=;
 b=cLvWog6D69pRSXF+duIGXCEbniPqwieyZUpJaFJ25Ni1NoH95kIevCRZ
 VIB4KSZqLV+ZAIrf+sETSMFTp/u1nuuGEreCqcfJTr1uKTocd+1s7+6PZ
 /89uawYJDCSxnCdumQUkvuesGNWgNEUDdFAfnNj8Q3Qld0EC2kY391bS0
 xqON1F46zguQqBGk/kSfdzbVWPFzo8csCdoKjdLFY5SEDj5L9J/R6r9CM
 3k6kL9k59J+ytfNkbxiXV84KtYlY6BMDXNiFmKCR/oollRp5Z5P6ctNHd
 i5v9Cof4pFnCzgWqLYGbdixNSkKpH6KaV5wdI7inpJu0YSVcfgDp8egYJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cLvWog6D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/2] ethtool: Add link mode
 maps for forced speeds
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



On 9/21/2023 6:51 AM, Pawel Chmielewski wrote:
> The following patch set was initially a part of [1]. As the purpose of
> the original series was to add the support of the new hardware to the
> intel ice driver, the refactoring of advertised link modes mapping was
> extracted to a new set.
> The patch set adds a common mechanism for mapping Ethtool forced speeds
> with Ethtool supported link modes, which can be used in drivers code.
> 
> [1] https://lore.kernel.org/netdev/20230823180633.2450617-1-pawel.chmielewski@intel.com
> 
> Changelog:
> v1->v2:
> Fixed formatting, typo, moved declaration of iterator to loop line.
> 
> Paul Greenwalt (1):
>   ethtool: Add forced speed to supported link modes maps
> 
> Pawel Chmielewski (1):
>   ice: Refactor finding advertised link speed
> 


Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 201 ++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
>  .../net/ethernet/qlogic/qede/qede_ethtool.c   |  24 +--
>  include/linux/ethtool.h                       |  20 ++
>  net/ethtool/ioctl.c                           |  15 ++
>  6 files changed, 178 insertions(+), 85 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
