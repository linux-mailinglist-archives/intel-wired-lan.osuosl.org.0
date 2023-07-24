Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C6975F9E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 16:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADA47408AF;
	Mon, 24 Jul 2023 14:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADA47408AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690209019;
	bh=CHlWu+gmhh43GeW1AT1ugeS98BCBqSnFnYrLbrMTmO0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xLLcVEU3c2vv+okkDVoJiVY/xaHv+/fWB85HJrt73hBYe/J+KcMIUOBUr8UUqZsgv
	 bRNNcjORnO85LXO+iYqFRjR+2yUtG+1hmATZ3ESXoKnt2JllZLHbFHYf2CFeiUeRl/
	 BxAcrt1ZXdUDfdz8gMZp0nRMuc7GMsVOIT474wq4qD4i+JY5cCQGTLd4Ewc2QyctXl
	 Ih6ZFZ4TypG/4iM1vEDykFiBR7NQUFqPMirJNGI/CMNLQcY8/C7P9PraJ/yRDWbWOm
	 fvgfjGpoCrLzb8O1NOZTnQXjpmQeXocHq+6UmbjQ8N/C83CqgaaY+7FyMfz25gvKWD
	 ZLKOsHdqgvqsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRqZInZXUfaI; Mon, 24 Jul 2023 14:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEB1F40233;
	Mon, 24 Jul 2023 14:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEB1F40233
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47E021BF95C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 14:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 283C860FE9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 14:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 283C860FE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qisQEeaS8mN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 14:30:11 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 14:30:10 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4B7F60B22
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4B7F60B22
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 14:30:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="357452166"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="357452166"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 07:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="755319102"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="755319102"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 24 Jul 2023 07:23:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 24 Jul 2023 07:23:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 24 Jul 2023 07:23:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 24 Jul 2023 07:23:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLoUUoiGyAjdnebuWMwuJWB23SCfR3PTSDu9OkYrK9lr2dTl6RRH3XkZzd7UOqQ6Hw8E/otn50WF7HkvEANCBPjw9H7cyDULR2nd+Hbyv616SkAy7nLyy2Nz4nYHjkedxt1NyI2nxRjUkW431CcKNHLAY3k2OdksNubhbBLmkM6cYUVxnLAYPFHNk0TtvrFOOI8Kd9hA8wxmuR68GjdpKBnmcLnSxaWrb7ASqwFD4xbECOGFUGIWKIX5Ww59BKlzgKSiyxKeOjNiWY3ICrvzFo+Tp0pFhaWFz54R4jfr3KomnHfeOw+Nj5epbXtZB2J1KP5XCVh9Dgm+hYts51G2kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xDs0XzZglfzUlFZde3xryU+5dx57KcZQO3xV3rmq3Rw=;
 b=HK+C8EXgbhDbgGARu1pAJGJttOJakWL2jtHHZIIL4g6k1KvCtrhehq2yQ7EeDSbC8RCHEkM7T97bz/cKEXkLsiqGleOM6skbEiWc3/777nOiYt3rEYoIno8+Fv6VIemjYAZmHXiXpICCZxKiTdk/ZKd1PCNx+Fr/sGsoTJyPruJUs6N+C0DnOcHPXvM5qKdYp4JChTbF4eoNCh0xDsQU4DicwAMyDhBP3R/S+0w1cLW/3++DTFClv8yMACvB2HP19qjvy37f0Gud+7Nv7QwUpopAJj7ZHwoXBriy+7oOKW33GWvZ/XlCcbeDTRi0ejn3bNpRwuSRlQL8FFbNsF/x4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Mon, 24 Jul
 2023 14:23:00 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6609.031; Mon, 24 Jul 2023
 14:23:00 +0000
Message-ID: <42a51ef3-9fa7-36e6-77c6-475ad795df3a@intel.com>
Date: Mon, 24 Jul 2023 16:21:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Andy Shevchenko <andy@kernel.org>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-2-marcin.szycik@linux.intel.com>
 <ZLqUfwKkRH85uPlT@smile.fi.intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ZLqUfwKkRH85uPlT@smile.fi.intel.com>
X-ClientProxiedBy: BE1P281CA0232.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8c::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c8838f5-54de-470e-1da1-08db8c517beb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ijVvXB7JqvSntJWFj6ZKukdfhJFYNBcnknqufL1QbYogF21GDL//noekW9vJ3JDKNoxp8/NF/oadK8yd/vNsIkKQC7BrwEnDeg605GxkH/pyVJ+4nmymRccAKUOg9lGYipCE1CAfe+Xh7OuTk7wmQpnvJre1CIzkgdTEclzJXu2b9v0Ysi+gkwISyRY2VhSRdkTQAN/pN469sX54qgrgXh3kKdhZ859Cc2TiIx7uEQMBsw0fCr5U3WHlbqWUhsYPZvkeNe093Jz4Zh1rNbSz92fDDPlUlGzkAl9KLPjKe6uHWYikL9F5jerCJHAvdfa6VDfzTxap2frgHkO1b5fHD3ztcXos15GNGc/vda8CX0jSahJTX6/2wGNZaiEQqclv7J4QI3MaKNX8uhIliycQeg2FPzIm9Bf1S1IH/gfA4aZI69g+hJi0IVe0N1pS6Kmjj95uj6GgsmX6kuIXyX+36nkKfCp2+6vKApQDlRkMuKNIkjUN77csyCAPjZuGpJ15lzsgMCkHglbkeggJ014OsRTIFtoyhEie+YI/6OW+04JlNBaCl7nkrnZhtMyNHL3lyU2Vq8lOJCwe6cZz2jOaabP3+2BvWp6BqaLmzzphHK1249rzsDYb5RqTLsuPBUH9/mBtDRsZQVnfyjT5SpwBAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(39860400002)(136003)(396003)(451199021)(38100700002)(36756003)(2616005)(7416002)(8676002)(8936002)(5660300002)(478600001)(6916009)(4326008)(66556008)(66476007)(316002)(66946007)(41300700001)(26005)(186003)(6506007)(6512007)(6486002)(6666004)(2906002)(31696002)(31686004)(86362001)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmpKV3ZheWxPeEIyZ2wvZkRtSVloUTJJeU5UOSsyOXRsZmlxa1lqbjZFalRQ?=
 =?utf-8?B?WTZJUjcxMlRtT2U0SFpyTlM1aUVPdEFCb3BubG8weVdFSXJQTENpL3lKbjFR?=
 =?utf-8?B?YkVYV2ZYNncrd3QvOTVyYVRWUnhQT25Ra1V3eE9Oelo1YVJ1VWM2aDJYRTdv?=
 =?utf-8?B?Ymg0K21Mb1Vvano4bDBTSEt5ODMrTm9iOGc5VlZzbmw4THhRWUVXeDVlbS9Z?=
 =?utf-8?B?ZVNlZml5NkFMbEtCSm9WeEJmcGtwMHhCNFVTWWQ2V0hUS2pDajlrYmx4VjV0?=
 =?utf-8?B?TkRrL0Q0bk9nYkZvc2dURXA1ZmV2RVIxV3NYZU9DZm1tUjVtQ1RDU2lyL2Rs?=
 =?utf-8?B?Z0ExY0tlbjJyVExtbG5pN0xOaFdDbmdCNC9udVdtQzFnZjFxNnNzSGt3Ykhj?=
 =?utf-8?B?bmFkYUg1bFJHWFRPbGlEcnZocUtSTFk2S0pNcmdjbjBoTGpaNDRTL255elZT?=
 =?utf-8?B?anNYVGNxeWdZZkdwY1pUeFoyKzJjK2d4OTNhVFlBQk84OWFhN09vUUNoZ3pP?=
 =?utf-8?B?dlBWOFYvR3lxblVyaVhpcUJ6SzBZSHROOWg0NytkUURXdXhNNkdzMGRzWC95?=
 =?utf-8?B?SERDSGFyaTdFcVVrM0ZqN0lLQm9VUWF4bGRpVGphS25wK2s0bVpmOTZGV0I5?=
 =?utf-8?B?Q2VtV3pzUmIwbEZBMHBBSlhlUU5CUnZKYnIxbjBVVEF0YXZKODBpb0VaUXIx?=
 =?utf-8?B?OFFCU0lIMklNNlMxQUhwNTUrT2FEcExYVFdiZGk4SXVXVnozUVBFaU00bFc1?=
 =?utf-8?B?ckEyQWJoY25XUUpwUnhxUTFKWTNWM0NwT0tSQUQzRzhsOU41emRyTTFSSzBJ?=
 =?utf-8?B?NnB1dTRtN0dXRnh2OUZPN3ROenFlSTZlYk1kZHJkQkNOZ1hvdlZmZ3QrOVpC?=
 =?utf-8?B?d3p0NkdkL044a1h1TE12OU9DTSszcWFEVlJqYVBqMkxUajZhbTY1YXEyVzB2?=
 =?utf-8?B?QWdWYUxFQXgwOHZvZnJpVFpWSEpiZW81Nnh5TE90MWE0OE8zWGFLY2IvT2tm?=
 =?utf-8?B?UnIzOHh1aVYxK0poT2ErMzVyWUNMOTAxZ3IrR0JrekNqOS9Ga0R3cVAyVTFJ?=
 =?utf-8?B?bjhOemtoaTF4M1JHMW9VeUJDMjVSRmwyNkJDMDFjWVdlcXhMSVg5N1JIb3pB?=
 =?utf-8?B?LzVIZkJpdkc2eXZaajJGSW1kRWVCYjVUK0NyQXFCYmZlODBpSGxpclo2UHBD?=
 =?utf-8?B?RnM2R0ozdUFtMithRTVWb2o1dmdYeEtadVkyYTg4eHZjV25PdW02ajdHZDhL?=
 =?utf-8?B?eG9vVEdvNGlhSmtOUk82Qm1oUWNvZlJXUGc4T0JWOGVhdkZyTnN5c0cxVUFC?=
 =?utf-8?B?RFdCVXN0QkpHMG45Tk5LWExwREk2S0RkZVUyQnhOblFuNFhhait0czlVUEJY?=
 =?utf-8?B?dnVJenhsYkZzeUM0YTFGekRGZW43cFl1MUdnLzVCMndDVFBRYkdsSGY3UzRm?=
 =?utf-8?B?TjFyS25iQzYreFRSNDJDYVMzcGQvdDNhckNaNGY5Wk5zV1hxUzV6bHFkUk1x?=
 =?utf-8?B?Y2hjYmNncTNWNWpldDBlM29wd3F5eHVHYWYzTzAzUlBQMThOSXRmYWdWNStt?=
 =?utf-8?B?TjR1RjVrRkp4UUR5MC9WR2NiVUFJc3VUai9RYVhJb1NtNVhDd0pSeGNYUzd5?=
 =?utf-8?B?T2U5MjBhSEIyL0RNNjl0TFBFZTJQQjVPL3htdS9aOXNjd09LaEdaSHlvcVpB?=
 =?utf-8?B?VTZmOWJEQ1RwMDlwMmdGOGppYWFONjlKbjlJWmlZM05CQ3dHVmJLNmx0Z2Rs?=
 =?utf-8?B?S0VKUVNoelNZVXFTZE91bUxrREhzQklCNUR0alcxazYzL3BoVG1kNENJQzBh?=
 =?utf-8?B?RWJxTjJOUzJjQXJMT1RvQ3p1U2VReFFncFUwSS94ZDJQMjcydklOZ250dEVL?=
 =?utf-8?B?ZkxZRit1amFEcWJtOEdIN1crY0lTV1k5cnZLcGFQVEg4TlNoUUxNYWxnc2pp?=
 =?utf-8?B?UjFtcFZWeHdxZlFWaStaaGdZNmtOWTcrcklqeWZrMytuZVJvSnVLTG1aNE1J?=
 =?utf-8?B?Sy9GamNwOGRUUElJUGl4dmlFT1MxWjJjajRuT29hc1FGYVpPN0VBKzhqTDlC?=
 =?utf-8?B?aDdGdkh3ajNvV1JrblJodzl1VzNCUkRMd04yVVNIaC81MWplVllQamMvMjZD?=
 =?utf-8?B?UTdUT2NKdHZCSXpnVHJmRnI3Q2JqS3ZRWS9Xak9RazMyckNSWThaTUdMYThw?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c8838f5-54de-470e-1da1-08db8c517beb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2023 14:23:00.5136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LbrgXmY5xllEyC9kgU/43bVMNuUXm5x2NccT9ZChhEFe8U7RVfXjTeYbpJ1TDbfZBs8PbaeZ/ZXnV/WbHkYoKua+syk2A75VnPTmnURBjuo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690209010; x=1721745010;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wx8k/pgwz8Mdl7WYH5f4EV8924BffXza+/BORHlfAXo=;
 b=O4s6xjomudNvMR/zkx1DLoL8JMbLrYThf4HOijjyepQOcw1u7fA7TFSp
 QTG5zXVReRneL8rUJmRcuXRz8y+4NUSF0p+C+hkq4vUKFVGvBzsccXPnd
 7/8vq75N6ott3BTuZ4pUrwQdoEdsGNevUHpSPeWYPp/LaCoh/tVIbE7x0
 MbN28pirAPVnzaqWhlatLuEiF34Hv7wiPigbuMWz44ZJwIbnSouLrW+2Z
 0iAuAM25TD+h5KOByGcwwdRNswYdIe5uqbxuCTnavnHsV9c8YEJ65bk+M
 P5iBY/RmBJ7f7SvrkDe7Ys25ZXCQ9TWMqgOkMmzsOi/MdsZmtufOsoayA
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O4s6xjom
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/6] ip_tunnel: use a
 separate struct to store tunnel params in the kernel
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andy Shevchenko <andy@kernel.org>
Date: Fri, 21 Jul 2023 17:21:51 +0300

> On Fri, Jul 21, 2023 at 09:15:27AM +0200, Marcin Szycik wrote:
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>>
>> Unlike IPv6 tunnels which use purely-kernel __ip6_tnl_parm structure
>> to store params inside the kernel, IPv4 tunnel code uses the same
>> ip_tunnel_parm which is being used to talk with the userspace.
>> This makes it difficult to alter or add any fields or use a
>> different format for whatever data.
>> Define struct ip_tunnel_parm_kern, a 1:1 copy of ip_tunnel_parm for
>> now, and use it throughout the code. The two places where the latter
>> is used to interact with the userspace, now do a conversion from one
>> type to another, with manual field-by-field assignments.
>> Must be done at once, since ip_tunnel::parms is being used in most
>> of those places.
> 
> ...
> 
>> +	strscpy(kp.name, p.name, sizeof(kp.name));
>> +	kp.link = p.link;
>> +	kp.i_flags = p.i_flags;
>> +	kp.o_flags = p.o_flags;
>> +	kp.i_key = p.i_key;
>> +	kp.o_key = p.o_key;
>> +	memcpy(&kp.iph, &p.iph, min(sizeof(kp.iph), sizeof(p.iph)));
>> +
>> +	err = dev->netdev_ops->ndo_tunnel_ctl(dev, &kp, cmd);
>> +	if (err)
>> +		return err;
>> +
>> +	strscpy(p.name, kp.name, sizeof(p.name));
>> +	p.link = kp.link;
>> +	p.i_flags = kp.i_flags;
>> +	p.o_flags = kp.o_flags;
>> +	p.i_key = kp.i_key;
>> +	p.o_key = kp.o_key;
>> +	memcpy(&p.iph, &kp.iph, min(sizeof(p.iph), sizeof(kp.iph)));
> 
>> +		strscpy(kp.name, p.name, sizeof(kp.name));
>> +		kp.link = p.link;
>> +		kp.i_flags = p.i_flags;
>> +		kp.o_flags = p.o_flags;
>> +		kp.i_key = p.i_key;
>> +		kp.o_key = p.o_key;
>> +		memcpy(&kp.iph, &p.iph, min(sizeof(p.iph), sizeof(kp.iph)));
> 
> Seems to me these two deserves separate helpers to avoid such a duplication(s).
> 

Sounds reasonable, thanks!

Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
