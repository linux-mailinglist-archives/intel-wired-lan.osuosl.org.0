Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8D76B8713
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 01:39:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4966C8175E;
	Tue, 14 Mar 2023 00:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4966C8175E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678754369;
	bh=uVarkT4TrCh5WyfudFyu5Sm6kypB2WVjxufZfXtJiVE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9jxWHCWIDvVilUEcFYV/NWNe0ExXeculdYHtTm8L6zjRaq1mSGSvGL5sogQf/ZoT1
	 a/KIsQgsKfCizG3t0TLOWtI+rWsx7Y6GvcS8NkVAFH0MUlkFi93Uti9TPnRf13Kyjj
	 r8cUe1/j8hXhaagIWoZu5xALybby30ir2Z9PwstFqFfvT7uM4EWRAs1YGwH7n2z5gm
	 sXJFDkLCdRrx8CugEAxjCyIwUNVcAdqnXHe14gw0WrKl7Ryl8gC+yZhtwxKRH207zI
	 w4peaCwMIjpVFgUJL7/uwdc7UFcCQtRnRVcjqjJzoPVeCPOyIn+ehx9R2cngsPkETZ
	 QI+9cITCCLTyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHYBBEDJbrmf; Tue, 14 Mar 2023 00:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A5B281450;
	Tue, 14 Mar 2023 00:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A5B281450
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51F4A1BF951
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 00:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A4314176C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 00:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A4314176C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sn94RpD9dnWQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 00:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF1A941765
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF1A941765
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 00:39:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="399885169"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; 
 d="scan'208,217";a="399885169"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 17:39:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="802650455"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; 
 d="scan'208,217";a="802650455"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 13 Mar 2023 17:39:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 17:39:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 17:39:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 17:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMryG4otFyj/eYBNxQAvwLnMH6PFYlBg+HbmfqbE5+Q1jC2I5sDP9bR7NkDmCkKQhcd7YvfCUhubvjMbfuS0WoSU4U/J8ofoftZ1M/hIJBPR9S5GFA4peWuSWBdJbo9KudT/R2+RxUrpFz236r/A32+iPv57w5wKINf0pNK3m2Ak2R7a61kvC9PFiDoW5STdXP++x+YdhkekbrucSLn0FovSPAMe2QDadcGQTrAP+t6ZjuBfdXMvOlXMvWvLO1ijV8TdabzsRUzEN8P95rasjuGTtPO/oeEZuihisJaARGJKCA7iXOb9ODr78rXw+dV4R3/PYSSBQZYQZ9/5qzgCPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x7SAfJJ9OOEb/QFQEsuavQaPaJNoKjwdN9bnymI68DI=;
 b=UNqbKg/H9vAGdoH5KNyUuvSo4EJ73jfu5Vw07WcUszez+LOjk47h+/dYtirIYfMw/xjPQqEhJOklGH9Wmc++/5jpgfMyL9kn34AtEuNlKFvodwXDwKDXB93+o4VX3CuACUWMsn4jD4VHE0DglmMQ6hESUGI2NN+zqWfY7sDF802rjoKZYIk6/xP3O9Ycd8YOxzsZ0HRTah2F2YHGadLOrCimu6YVbaCqa3LfytQzKMHcN4XEYmnv4BTjDfEeTlLbDXidEGu0iZ38eT6Cr7TXRNsW+dCrFYxdTnBvLPNngIFEoxWgm6AvYoi9IviEVMO16d/iajzp/TOXL60itCzKCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3047.namprd11.prod.outlook.com (2603:10b6:a03:8b::32)
 by DM4PR11MB6456.namprd11.prod.outlook.com (2603:10b6:8:bc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 14 Mar
 2023 00:39:16 +0000
Received: from BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::84ef:8559:d3c5:6d0d]) by BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::84ef:8559:d3c5:6d0d%4]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 00:39:16 +0000
Message-ID: <92a590c8-89d9-76f9-e7fa-5046699fbfe0@intel.com>
Date: Tue, 14 Mar 2023 08:39:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230309024934.151120-1-lingyu.liu@intel.com>
 <ZAsEM+P7D/AfreLY@localhost.localdomain>
From: "Liu, Lingyu" <lingyu.liu@intel.com>
In-Reply-To: <ZAsEM+P7D/AfreLY@localhost.localdomain>
X-ClientProxiedBy: SG2PR06CA0194.apcprd06.prod.outlook.com (2603:1096:4:1::26)
 To BYAPR11MB3047.namprd11.prod.outlook.com
 (2603:10b6:a03:8b::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3047:EE_|DM4PR11MB6456:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a97d683-7923-44d5-effd-08db242489e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jjvxt/z8k7jTuf+w1Ny0Tu1NessVbk0xNKe5lnQ5mHAbvmDNnF+3EUgxGbJ182HffQXKffp+E7QbIBnN0tDJ+joEJuMfWrIWrClJIw2en72tV8emtq9pfEbiQ46ybzmGvP5Dwg7LZLIOJMoC200vKSlAcLURgSMKnq942VpVjg8Am0faUhmAkNBduYXkuqta89vMARm8CUut1LtgAplcvGWv+pgtz9bnzbGHo2ZLGT6JnKdM3V3HhOEXPUDY0t6fam4SzRC4zl8x7T09D56SHuGYsdiLHQXuMKekydu6gB7qVdwiTy6VkPi/3Ezxwm/UZ488MxdCF/wkI/MeVsIMOEqkdju3KuNPuztPZWRPdltM0bUOo967SqyDCRemrp4s6J6ZSdXvJsWhMyk3N67yRW02zyvgD0cQXnw19EJdYxGmSosRjDTxEFcPO5HGZGRPsfPUdH+12b4+dIPu+HhmO8eod5KAR6NEOht0DFMRENX66ChmIXYcbktU/W1YuUA2Xuf6EDiDCgAa0tnF2/N/1eoZ4pQ+pj/9nbNMvQPuoEZQZQuFy1zd1PgmBrEWZYvka/9w+otXkJZUca5CckrPXVoroeo4QwUnT/SmVJqtauihM7IyartUEAUsshJF06CCO1+LHRGw77RwlUkPt05ZBPFPYYKHqM4HTr4yDr6iuEJI+a1rdGPa8Xy5f4nXFuEUOR62J/fyfLGomnk98RhIOGL3YCN83GX9SavEgifsW8I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3047.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(136003)(346002)(39860400002)(366004)(451199018)(31686004)(316002)(478600001)(4326008)(31696002)(36756003)(38100700002)(41300700001)(6916009)(2906002)(8936002)(8676002)(66556008)(66946007)(5660300002)(86362001)(82960400001)(166002)(66476007)(966005)(6666004)(6512007)(186003)(6486002)(2616005)(83380400001)(6506007)(26005)(33964004)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjZ6V2F3WXdsbHVqVmQ0YXVWVGl4R2pTRHhkZVBVME5tbnV3UVVwbGRQZzZR?=
 =?utf-8?B?Tk14S3dINnpwNVhSQkFXVU1sb0dWZ1VoeWd6ZVgvWU1MSk92ajJUNjdjOWRl?=
 =?utf-8?B?SXJYQWhwWExCeFJDVEFseFhjZWlWVHdOVXJFakhFNmpNU1dnSWdVcWJNR2hz?=
 =?utf-8?B?djRYMFlwZ1h1QXpIc2JzNTdSaElYQjhwQWhlbVpqc3NvSDE0TmNzSlMxTnBC?=
 =?utf-8?B?Y1B2MStsUE1MeFNOWHIxVmJ4VkNPa211ZWc1NXkxblVRVGpDYStkVW5qclJS?=
 =?utf-8?B?dDdMbWtMZkdaaDF6VGcyZE1OcEtBN2xBUjhya3BuMno2SmVleEI3ZlVzQjJZ?=
 =?utf-8?B?U2Q4S2grTWt1L2RrQjFHZGw1NVNSWERqcEFWSjlGbC90TFJIRk5kWWZ1S04y?=
 =?utf-8?B?L2tYNUpGTFRoVEpGelRiKzVLMjJQS0IySXZ1L3B2cDFEdldPd0pWQUMvWW5p?=
 =?utf-8?B?Z25YQjZQUmloTGFsdFBrbjJWWkkyUDk0KzV5UFF5Smxvd2VJMnBtK3U4NlN6?=
 =?utf-8?B?eTVvN0ZLNXdQY0hpdVJRV3pQVXYxSGxKbW1wYXhSYzUydXh6bWdDNW41eGlB?=
 =?utf-8?B?ckJ4SCt2bmJJT0FDanljSjJSUzBMU0Y0d3o2T1hHWlgvTklnYjRQdDE4KzZa?=
 =?utf-8?B?TGxmdnY3TnhTa2ViOEc0bjZGUWZGTTczRm8vcDZFTlV0Z01KbExUQzFCWkxr?=
 =?utf-8?B?WjQzZUMyTlYzdklwdTFmSWJKZFcvOU5LNW9mVXRkUTlJdndTNnQ5OWNpMWJG?=
 =?utf-8?B?TlZQRDVDQnBXZHRiUktRdDN4TzJPL3RuZDFkYi9wYzNOTjJHaFRMdGlvcmhE?=
 =?utf-8?B?Ri9aeEM5NmhkdGllYXZUd1dJemNzTkZmMjAzY2c1MjNRTUdGMlFNN3RyU2Fv?=
 =?utf-8?B?Q1NHN0psbjJIK3VQTDFIQUE5SkZGTVlEdjhNVm1PUks1cEpzbWh3ZkNPNVBI?=
 =?utf-8?B?SWxIS09GQzZrcXVKelpEd1owM2YwNXdzNzFnUUVHNU5wUEN0SDB6NnkwZmlx?=
 =?utf-8?B?NVU0eVVvZkp6QitLSkRZWnREczlPOEJsNzZJNE5KamtQSlArM3M1RzlwNlE4?=
 =?utf-8?B?eWdGdVBZa2poL2FUZThneXZUZWYvRmxBVThPZkVxN3c0Mk5mK05tZXdqT1Fw?=
 =?utf-8?B?NUFYY3l5TU95a1p6Z1hmQVlFVW1CNmtZUHJWQm5qMHl3YUtNbTU1QzRtNEVK?=
 =?utf-8?B?MFJtVlE2L2hFZUxQMzhibnIxa0VpVVZDeEZlbE9ZeTdjREdabHY0dHJFeVBn?=
 =?utf-8?B?TVZjUytHZ0M3NS94RlBzQ0U4SHZHbDZjWnA0V1RBSVJGVDN3UkZiaWVRTVZh?=
 =?utf-8?B?TE0xanJiSEt6Wml2QW5yZTg1YlpGS0lSd3hLMVIveEpXd1Z0Z1ZocUJUb1R0?=
 =?utf-8?B?Y3VwL0ZyYTB5Tnl4U2txOVVqbG5vRFkrUjQvcmQwWldYUnl1UUJOelJjaE0x?=
 =?utf-8?B?RFplOXdBWUZza2x0Y0k4N1hVQm1RRWV0VTI1ODJNdjU4TnRFVDRaK1ZDYW1Y?=
 =?utf-8?B?VWZuT29qbTFMRDJYK3kyM1JUUDJIWVVlOVR6UWRkN2gxUnNhNk9saEVKL20x?=
 =?utf-8?B?azdyTHYxR2hibksvN2NCUXFGaDRWdDJ4U1F4T0dKNHByN0diUHh2N3d3TzJs?=
 =?utf-8?B?cS9LSE1Wb1I4ZGNYNnRpQTJJeVFoaDhOT0VXN3JZamtMVWVYazFvSVJia0RX?=
 =?utf-8?B?bXVvcWg4S1loR0hmSUt5MGlmN21DQkEzS3RKVi8vODVkY09XYisyQ0hkUWU2?=
 =?utf-8?B?WDNMS0JxTE9VMGRDZ3kyeHQ4ZzY2STZWMS9qZkxaK2k3MUVFRFFrS2pUVnZS?=
 =?utf-8?B?RERrcjNOR2d5bjE0cDRpSnh0clREaE9RZ0tES2wrbmVrVVl3bDNFd2c2NVBE?=
 =?utf-8?B?V0pKWlE0S1FJM1hmMzVWNjJvZHp4U3U4MTEyYnhPd01lVkoyNVRRSHZEMzZG?=
 =?utf-8?B?VU1iK0RiUktzbnUwaU4ra2lvbUZ0YmVjNk5XWi9KYlpVUDlUbUkrOWlsdFBO?=
 =?utf-8?B?L3Fya1NkZUhMeWM1U3YxekIyemFsTk5iTFpNdnNpQ1pHVUhnMHFocmR3anR4?=
 =?utf-8?B?dDBjS3ZpbngzS0dSSVB0a3lKdFJmVzhBNW82WVZmeC8wUXpFM1F6eitZRGQy?=
 =?utf-8?B?VUFteHJRanBiSWcwYzZzZGZUeHErclMxOTBJSmZrMmZnVEFZUlQyRWVmYXBS?=
 =?utf-8?B?Tmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a97d683-7923-44d5-effd-08db242489e6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3047.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 00:39:15.7530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sa0upk7bwbN0HUjL9hGDiiT8C4d8+ifYCDEadglqIq9XppbXgZZ4lsrJ00vF5EoK5+e5Y/NRGuPyTgc9/nx7HA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6456
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678754359; x=1710290359;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=o940hUZ6inmghxKhd+D3P41TDDsq4/vrUP9WU/bYpdc=;
 b=dCkXCvnmTEuyF2C5zHuLRd5uiNcZ89E1AFWcFn7jT+LBJtmzt2cHgLas
 d0IMJPjYo1vwH6yWERVnUuL9sFHUDVSSdmM6s1mzKlKZDbhwmbSA9+oPx
 Jce2FaWKYTPxflKpZa50TMSBdeIK/goqnOP0DaIBwCYjrexU0M9iGE0Ni
 87Wo8lFjZs7YsCT6GcxY/XYPfcDfOrjIpTm+hVTppJBzE4CU7M3GEBV8A
 rgHSQrx/kkA4VorutyD7KY2QGtqtO69P2Rkyp6XrNq98A12JeWL7Rju/g
 MHF7JoHeXAOGLjaav5gQsF/hwb6i3i+O451lAi2CK5oKOy/VS36N1CK8Q
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dCkXCvnm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: add FDIR counter reset in
 FDIR init stage
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============1185249473377858322=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1185249473377858322==
Content-Type: multipart/alternative;
	boundary="------------7F3RdUoU1DXqTYe8uHA7elM6"
Content-Language: en-US

--------------7F3RdUoU1DXqTYe8uHA7elM6
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 3/10/2023 6:19 PM, Michal Swiatkowski wrote:
> On Thu, Mar 09, 2023 at 02:49:34AM +0000, Lingyu Liu wrote:
>> From: Junfeng Guo<junfeng.guo@intel.com>
>>
>> This patch added the missing FDIR counters reset process when
>> FDIR inits. Without this patch, when VF initializes or resets,
>> all the FDIR counters will not be cleaned, which may cause
>> unexpected behaviors for future FDIR rule create (e.g., rule
>> conflict).
>>
>> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
>> Signed-off-by: Junfeng Guo<junfeng.guo@intel.com>
>> Signed-off-by: Lingyu Liu<lingyu.liu@intel.com>
>> ---
>> v2: change commit message to apply more to a kernel use
>> ---
>>   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 15 +++++++++++++++
>>   1 file changed, 15 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> index e6ef6b303222..60c9da4aac1d 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> @@ -541,6 +541,20 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
>>   	}
>>   }
>>   
>> +/**
>> + * ice_vc_fdir_reset_cnt_all - reset all FDIR counters for this VF FDIR
>> + * @fdir: pointer to the VF FDIR structure
>> + */
>> +static void ice_vc_fdir_reset_cnt_all(struct ice_vf_fdir *fdir)
>> +{
>> +	enum ice_fltr_ptype flow = ICE_FLTR_PTYPE_NONF_NONE;
>> +
>> +	for (; flow < ICE_FLTR_PTYPE_MAX; flow++) {
>> +		fdir->fdir_fltr_cnt[flow][0] = 0;
>> +		fdir->fdir_fltr_cnt[flow][1] = 0;
>> +	}
>> +}
>> +
>>   /**
>>    * ice_vc_fdir_write_flow_prof
>>    * @vf: pointer to the VF structure
>> @@ -1924,6 +1938,7 @@ void ice_vf_fdir_init(struct ice_vf *vf)
>>   	spin_lock_init(&fdir->ctx_lock);
>>   	fdir->ctx_irq.flags = 0;
>>   	fdir->ctx_done.flags = 0;
>> +	ice_vc_fdir_reset_cnt_all(fdir);
> I am fine with this change, however, maybe the better place for
> resetting counters will be when the flows are removed? Or maybe
> the flow are removed only by hw?

The flows are removed in ice_vf_fdir_exit(). When VF resets,
ice_vf_fdir_init() and ice_vf_fdir_exit() is called in pairs.
While ice_vf_fdir_init() is called when vf entry initializes,
where these counters should be initialized.

>>   }
>>   
>>   /**
>> -- 
>> 2.25.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
--------------7F3RdUoU1DXqTYe8uHA7elM6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 3/10/2023 6:19 PM, Michal
      Swiatkowski wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ZAsEM+P7D%2FAfreLY@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">On Thu, Mar 09, 2023 at 02:49:34AM +0000, Lingyu Liu wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">From: Junfeng Guo <a class="moz-txt-link-rfc2396E" href="mailto:junfeng.guo@intel.com">&lt;junfeng.guo@intel.com&gt;</a>

This patch added the missing FDIR counters reset process when
FDIR inits. Without this patch, when VF initializes or resets,
all the FDIR counters will not be cleaned, which may cause
unexpected behaviors for future FDIR rule create (e.g., rule
conflict).

Fixes: 1f7ea1cd6a37 (&quot;ice: Enable FDIR Configure for AVF&quot;)
Signed-off-by: Junfeng Guo <a class="moz-txt-link-rfc2396E" href="mailto:junfeng.guo@intel.com">&lt;junfeng.guo@intel.com&gt;</a>
Signed-off-by: Lingyu Liu <a class="moz-txt-link-rfc2396E" href="mailto:lingyu.liu@intel.com">&lt;lingyu.liu@intel.com&gt;</a>
---
v2: change commit message to apply more to a kernel use
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index e6ef6b303222..60c9da4aac1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -541,6 +541,20 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
 	}
 }
 
+/**
+ * ice_vc_fdir_reset_cnt_all - reset all FDIR counters for this VF FDIR
+ * @fdir: pointer to the VF FDIR structure
+ */
+static void ice_vc_fdir_reset_cnt_all(struct ice_vf_fdir *fdir)
+{
+	enum ice_fltr_ptype flow = ICE_FLTR_PTYPE_NONF_NONE;
+
+	for (; flow &lt; ICE_FLTR_PTYPE_MAX; flow++) {
+		fdir-&gt;fdir_fltr_cnt[flow][0] = 0;
+		fdir-&gt;fdir_fltr_cnt[flow][1] = 0;
+	}
+}
+
 /**
  * ice_vc_fdir_write_flow_prof
  * @vf: pointer to the VF structure
@@ -1924,6 +1938,7 @@ void ice_vf_fdir_init(struct ice_vf *vf)
 	spin_lock_init(&amp;fdir-&gt;ctx_lock);
 	fdir-&gt;ctx_irq.flags = 0;
 	fdir-&gt;ctx_done.flags = 0;
+	ice_vc_fdir_reset_cnt_all(fdir);
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">I am fine with this change, however, maybe the better place for
resetting counters will be when the flows are removed? Or maybe
the flow are removed only by hw?
</pre>
    </blockquote>
    <pre>The flows are removed in ice_vf_fdir_exit(). When VF resets, 
ice_vf_fdir_init() and ice_vf_fdir_exit() is called in pairs. 
While ice_vf_fdir_init() is called when vf entry initializes, 
where these counters should be initialized.
</pre>
    <blockquote type="cite" cite="mid:ZAsEM+P7D%2FAfreLY@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap=""> }
 
 /**
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Intel-wired-lan@osuosl.org">Intel-wired-lan@osuosl.org</a>
<a class="moz-txt-link-freetext" href="https://lists.osuosl.org/mailman/listinfo/intel-wired-lan">https://lists.osuosl.org/mailman/listinfo/intel-wired-lan</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------7F3RdUoU1DXqTYe8uHA7elM6--

--===============1185249473377858322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1185249473377858322==--
