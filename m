Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE75E6889C8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 23:30:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4980D61203;
	Thu,  2 Feb 2023 22:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4980D61203
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675377052;
	bh=IilqfBKGeEtrzKkPTBxAyEYI4g7mqD4RiLVBGnEA3ME=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eMzht/Mzq6awg/PYYaac2FZIPmMynWrtGC4BoAJFG25BCo4NgkLle1yI4eHZogkIx
	 Agp/P0z7W6PIz6eh+7ynKROLDaGiHzVtpaE2KmL1acUJ7yZk/25Uodyta7cNvPYzTS
	 84GzDQ6jF4zel03zGuVOoo/MahxMXvaNI2vJ/BDAZMzjYPY0L6FUFaiYyAHYz0JJ7Z
	 FOqb2ocmqptcD/M7tldlc5ElMRTMCbCOjqAfLhrl/81p5r3yWxDtXQsoMAt078h4DY
	 h1N3FoOv0pmPG+ooyLnFVYDtc+61HoUDV8zgU1phCQti1MMsQcWa9Mr47/F5HbEJuB
	 gbn109ninLiRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZV5h7PF3Hm9i; Thu,  2 Feb 2023 22:30:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B460B611F6;
	Thu,  2 Feb 2023 22:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B460B611F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 632741BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 22:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47E96405F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 22:30:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47E96405F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHUBob9xPz-u for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 22:30:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD31740192
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD31740192
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 22:30:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="326286111"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="326286111"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 14:30:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="789449606"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="789449606"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 02 Feb 2023 14:30:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 14:30:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 14:30:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 14:30:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iU17Ylj4EOB4N3ec3bt/Wfzl5x+Jt5+yHMFRZMDhiZtxB7WcmO8vB1RbNujSdDlqsQRl8BIN4RZBw1aZCVAFqb73olIENRiphqk3xjsxHdsVaSYGZR+zLs6yMBkc7cFKtQmxJ7avovcvXwBHEcJgqVrMLhzRcWV8CfI4WV2VxbEON/uvxrIFVqK3KvGUX970VPkY/lW6/K9H58bAUUbj+wgv/SrHa35hWtGF81k3KeUXu7JEdUiV7hgSAVAJn7K1m/bNQ36gUY+GwPr5BttUSbZuqBc2wjIANFvAQI6C1yzuD46UnjHmLOFvLt9ts/BcVvRPq4+k3spdgxADqqaHhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pJjdNoGL8TglqCyAAzCIlKD35m/AvYPKk6+Iylh18C8=;
 b=jNVh0CqsLCELXuyAW1nxqSyPu99YJfTCqXng7rUiU+Opsf7rA8VWiG1ORNpq3DyoTBqRp9VKwp+W3MXUtnfe46oWGJhrZozP7n56vOxo2dU8MNSHYHpem2wS+0yNt62OvpRBeFBzWeSXKhCAeT7kfj9WTuFjkabOBFpSOqmkS3qQBkYDS4gYeqpbBDSF+9BXxPqtyEOV/8hU2doy4Okydm0065veIT7z1MHSt9y4LDHc0c2yMfhojmtWJIyS1mkF0YIfx6cr+IUD/LzFIjpZXC/Mz4rWbcl12vP5LoUgTMMCGdFBXXxAnK4Fkm6W5mjmA7rzjexN4mGJly9gXbhe+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5545.namprd11.prod.outlook.com (2603:10b6:408:102::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24; Thu, 2 Feb
 2023 22:30:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6064.023; Thu, 2 Feb 2023
 22:30:34 +0000
Message-ID: <54675451-1b90-901b-a2a0-c3c8e2376f31@intel.com>
Date: Thu, 2 Feb 2023 14:30:29 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230131074951.2664690-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230131074951.2664690-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0041.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::16) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5545:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a678103-8b48-42f0-30c6-08db056d1991
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cRneDxuGbCkEQ4yvDnuMNkc3H21JfRkEEQi9hyFVm6iBrfsEC5Ye1NyftS/e8020cLmXFFT+NZ0C+FXK1rvHa7479YenaSTR6F8/FeRrW9d3Sj6FM/xJFcmQUjTY8wuNx0aehv+3PXtN7NNEyMe0ta29h5YdGBm/EcxfSjdyiGjiy/v1GWmAdmDFDSrqydxTSq90wgAaoe1TVhYjUNO8MfiP6Km2aj6OxCRdb6GybRjMRKwnva9jjTsNgqhOvKb9w7/EkVN/y2leJbQiO7qQGly7aQdjU1KGistF5rB+pzo+3wpju1DHuA7I0vXZsBTGUGZDf8AhK4FKxxG3Ls2O34X4wOixPnAEWj+mn1Z3uJS5+UhbnXa44JMH9ZwJ/SWGkqHiVBfbCVHfr5bAB2/Z5vpBRhEZfjM3J19EPkcy9kklGsoV7jGTceKO8dTk4Xjmh+++GNbNobm3nAOJl/5bYw4PtoYVBxQnAHFvMIENsXKuoE9xHXfymQ++aAvACl662i4Rkoh2vWHX2oXwdqzvDK+1mp/vm300Tcjuh8Z/Zm/pcUwLYlhvUlhJWDhBSrznlgBX6x7t883oFuk/dn3XptfG5qgoIX+a38uTsoQWmh1z/n+ZpTKLUrlvskxZfLKunBjdS52260Jxpq+oKIpFFFJToHOkGbbRMz7Td+DhUMxx2e4IG5B46zH6A9O5knptyZmYl/911N0+oeo9pLMzfxN7ixpYWnReq6aBjbN5TAY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199018)(66946007)(4326008)(6486002)(66556008)(66476007)(107886003)(41300700001)(8676002)(8936002)(31696002)(6666004)(83380400001)(54906003)(5660300002)(53546011)(82960400001)(478600001)(38100700002)(86362001)(31686004)(316002)(2906002)(6506007)(36756003)(2616005)(6512007)(26005)(186003)(30864003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFNPczVxT3pydTFQVE9YL1hKczBrSlFZc2NYRFVadHpQc05SK2ZYajZ0MWsr?=
 =?utf-8?B?S2RmS3c1QzdtcnhOVjBaeVpubU94cjVJQXJ0OU81NDhBYlJCV1F6WEdWeXUr?=
 =?utf-8?B?UWFqU1pydlVOaDJNcFpNSWV0eWxYUitVOFdPSk5wQlVBWUNRbnA0dC9Fdm1l?=
 =?utf-8?B?TkRRc2xnckw4N1lNVngvWEFzVGYrUkFPcGpxb1hObHdvT2xKMkJiTkJldE4y?=
 =?utf-8?B?ZGNMNUFtSitWZDVFVnQvSDhwT2RBTWpKYkkwRmFkaDFycC9uT1BXTlI4bzZ1?=
 =?utf-8?B?SXkzUDFNQmJrdFFVaXczMFlqSzFiQURna1ltaFJsT2tqN01YbWRldGJGWXM3?=
 =?utf-8?B?ZFU0clpUemhEUkNHdnpmZENKeTllekFzdFZIa0RGajd2MkVkZGxOeHRvRWhy?=
 =?utf-8?B?ODJtZ0dxeFZpRUNpTldYNzhxcDlIeEVEVnZmdWZEd0ZoR210dVpkSVdmS0V3?=
 =?utf-8?B?cmpCdXZWbUtieVRrSGs0SGZ5MktSdW4wZXNWY21yazdGaTY3TDJrVzNRemR0?=
 =?utf-8?B?VUtMcnZvQjVldFNMUThKd0VoTldqZTUwQ0JRSU1WOUJLRTVvalExQy93dTJH?=
 =?utf-8?B?ckxNemtteUtzamVEbXNFS2xFbmU4Rk5oMnJPaEZUTGZrdjd2OUVSNGk1Vk1M?=
 =?utf-8?B?WFVHN2xvbXJWWFdpUXhRUTk0UTVRWVM2amJYZ2NiZ3NWanB6OS90b0ZQSWZq?=
 =?utf-8?B?OWZoSWtIeFVvSW9rcGtUS2czT3NRZjBaTkxMTGxaTHM5UHN2cWxDV2tTbWVH?=
 =?utf-8?B?Qm5TM09KQUlNK2lrYnNFN1ZtakhRY1F1NDlPbTZIUjdqNW1KQUExRlRuOTBE?=
 =?utf-8?B?Z28yMlRFSCtOejkxS1UwRVdnLzVEZE5rb0JsaVkzUjdmQmQvMlVWQ1E1alNa?=
 =?utf-8?B?Szl1U0owNmlTRFBBREdGV2dMbEx0Q3BGOEdIdkt4SnhvNTIxZFQyNnJPZjBC?=
 =?utf-8?B?M0E5TGFhZE1mUUx1bmFCS2Fvc1ZjQVhuM2dscUlqOS9KNXQ1c1dTWHlwM0ND?=
 =?utf-8?B?WUdIaFNMa3FTVWQrTFgrS3VhQ1NzNldiU2lzazNXVHBWSDVyTXEyQTdici8w?=
 =?utf-8?B?Q2R4OWFVUjZWT2FuMllOcHdFcWtZTjVPVllFUDl0dDd2c2U2MUlpSjBXV3Mx?=
 =?utf-8?B?UmZEU3FMaGhBMDNwcnBKM0twazdGQ1Y0dzh0ZkVkSmgrenVJa3p1UW1WSWZB?=
 =?utf-8?B?K0tOK3ptN2ozNzRQSFNsaTBrbEVzWUM2bTJpU1VHSmd6THo1alNqS0M1bUg1?=
 =?utf-8?B?bldJajJNQk80K2tWcDZyRHgxaGJ2MkF4aGxNNVhKc1E0QmhjYjFRYy9VVnNX?=
 =?utf-8?B?Sk82a0NaVlJFTyt2dVcvOEVwcTBQMGNXd0t0YmRaVnAvSS9VbUlYcGhQNVZB?=
 =?utf-8?B?QXdkY0NuT2FYWFZzekRrbldHSklWOGtiVWxla2FZMHN3YzFlaGtVNkcvY3pu?=
 =?utf-8?B?bWIxOVYvTUJncC9LQ2I5ZUJ2Nkl2MmZlemEvRFN6TlVNN3N3VUtsbllHWWhs?=
 =?utf-8?B?TXRpUlVSYWYzdW9qaGVaTS93dnlWT1FaNXBNSEpPaFFONlJWeEZSVnFhcjJm?=
 =?utf-8?B?d3ZldTM0RVNrcURna0R1ampwVFFHbWRUekUrWU9qQndLTFdpNi90WFR3TGFI?=
 =?utf-8?B?S2loL2djRFNFc0xncXRIRjAxZXNXMUNhUTBIK2FMMUE0MSt6cENmMUxOYURF?=
 =?utf-8?B?d1J0MVcyS2RZN2FWTnFXRTNIUk42NGdTaXY0TFVRUDNZMXZ1NmR3aFdsWDFt?=
 =?utf-8?B?QlU5bDZ1cnBtS05naElpektYRDB2ZExvM0hmcFBkS1l3RXZyMFpSb0pIUElO?=
 =?utf-8?B?dTExUkFkdVhmcmVjQlJPdXRlVkUrUzR0V1dwR0ZDWHk1TEcvUXdISnRhWUxh?=
 =?utf-8?B?WmpYdENKckRWRXk3MVJ2QWNpOCs2NWhRbGlScVVCK2diTmE2SGhJRDJmU3o4?=
 =?utf-8?B?Wjl4cVhHcE1SWHZKeEFmS0F1RXF0U2YrTmxMM1FRWEVYOTl0MkdKQ2NuOWZV?=
 =?utf-8?B?MndnQlJrWWlNMzlKa1k4ejdKbFV5Si91M2JUUjlYeCtzT1ZDZk9LR2xjaHNs?=
 =?utf-8?B?ancrVk5zK05PNi94dm55b0Vvb3d0dkx3d1ZJVW1FQ0x1MUVBOXBpNEsyc08z?=
 =?utf-8?B?V1JyODh3OVk1MVVjMWk3NUQrS3VYaVM4UG4ySkEyY1g2RVM0KytDOXQ5UTlJ?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a678103-8b48-42f0-30c6-08db056d1991
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 22:30:34.3451 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +eojcV5XLePCFJKomnMl1dK8u1oCDFbrocNOC07UPFw1XAeiTTP8cEVJhnNthCi5j050zkhZejztLcwI65BNOL7JhJNNrj9iuROzvG1ctf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675377043; x=1706913043;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7T88EmZrD+M3T7Z+iNraETmafEqCP2p7ty9wzwwKziQ=;
 b=YUXdD1p7c8f9LO5RpD6/4712IHpbFmcl09jRdtoFFcuHhcCFig7g9mCP
 gJxZsG+ko5HyPawRD7tXw1c4gnBv1Nn19VRJGDzaTbc7FRbB+LFhVYmQH
 p1qZU+OYjyYjBFqoo0WRm0IGtTy/Ss6EDYkT5buq3ba8FFfj1ZRt44S51
 m/qFQ2Z6x5rFoQEbujFIel7fJCzU7p5lec5hiMHAqqIgip5M9yMMeNPaR
 agdS356XMfaTPNoMiryvXYdqF9CbkIk2w3//+jYZByw65slhUkPS16Vu9
 YqXCQFhFqKNU8DscOd7HxzL0h0oeZuwMk5vmdYDlAZjd87mpL2sM+gOt1
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YUXdD1p7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] i40e: Add ability to
 change VFs default MAC address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/30/2023 11:49 PM, Jan Sokolowski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Currently there is no way for a VF driver to specify if it wants to
> change it's hardware address. Although new bits were added to virtchnl.h
> in struct virtchnl_ether_addr to allow the VF to correctly
> communicate this information, legacy VF drivers that don't
> support the new virtchnl.h bits still need to be supported.
> This patch makes a best effort attempt at saving the VF's
> primary/device address in the legacy case and depends on the
> VIRTCHNL_ETHER_ADDR_PRIMARY type for the new case.
> 
> Legacy case - If a unicast MAC is being added and the
> default_lan_addr.addr is empty, then populate it. This assumes that the
> address is the VF's hardware address. If unicast MAC is being deleted
> and it matches the default_lan_addr.addr save the time when it happened
> and replace it with the last MAC address on the MAC filter list.
> If a unicast MAC is being added and the default_lan_addr.addr is not
> empty,
> then check if default MAC address was deleted shortly before adding
> if yes then update the default_lan_addr.addr.
> This is done because we cannot guarantee the order of
> VIRTCHNL_OP_ADD_ETH_ADDR and VIRTCHNL_OP_DEL_ETH_ADDR.
> 
> New case - If a unicast MAC is being added and it's specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
> default_lan_addr.addr. If a unicast MAC is being deleted and it's type
> is specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
> hw_lan_addr.addr.
> 
> Untrusted VFs - Only allow above legacy/new changes to their
> hardware address if the PF has not set it administratively via
> iproute2.
> 
> Trusted VFs - Always allow above legacy/new changes to their
> hardware address even if the PF has administratively set it via
> iproute2.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Co-developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v2: previous version had been reported to not build under
> some kernel configuration.
> v3: fixed minor kerneldoc misspelling
> v4: Rebased to newest head. Fixed compilation errors due
> to some methods being defined in a wrong patch.
> ---
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 294 ++++++++++++++----
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  18 ++
>   2 files changed, 260 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index e04b1c2ced7a..f6b5d61cc9a7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1045,6 +1045,46 @@ static void i40e_disable_vf_mappings(struct i40e_vf *vf)
>   	i40e_flush(hw);
>   }
>   
> +/**
> + * i40e_add_vmmac_to_list
> + * @vf: pointer to the VF info
> + * @macaddr: pointer to the MAC address
> + *
> + * add MAC address into the MAC list for VM
> + **/
> +static int i40e_add_vmmac_to_list(struct i40e_vf *vf, const u8 *macaddr)
> +{
> +	struct i40e_vm_mac *mac_elem;
> +
> +	mac_elem = kzalloc(sizeof(*mac_elem), GFP_ATOMIC);
> +	if (!mac_elem)
> +		return -ENOMEM;
> +	ether_addr_copy(mac_elem->macaddr, macaddr);
> +	INIT_LIST_HEAD(&mac_elem->list);
> +	list_add(&mac_elem->list, &vf->vm_mac_list);
> +	return 0;
> +}
> +
> +/**
> + * i40e_del_vmmac_from_list
> + * @vf: pointer to the VF info
> + * @macaddr: pointer to the MAC address
> + *
> + * delete MAC address from the MAC list for VM
> + **/
> +static void i40e_del_vmmac_from_list(struct i40e_vf *vf, const u8 *macaddr)
> +{
> +	struct i40e_vm_mac *entry, *tmp;
> +
> +	list_for_each_entry_safe(entry, tmp, &vf->vm_mac_list, list) {
> +		if (ether_addr_equal(macaddr, entry->macaddr)) {
> +			list_del(&entry->list);
> +			kfree(entry);
> +			break;
> +		}
> +	}
> +}
> +
>   /**
>    * i40e_free_vf_res
>    * @vf: pointer to the VF info
> @@ -2975,27 +3015,111 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>   }
>   
>   /**
> - * i40e_vc_add_mac_addr_msg
> + * i40e_vc_ether_addr_type - get type of virtchnl_ether_addr
> + * @vc_ether_addr: used to extract the type
> + **/
> +static u8
> +i40e_vc_ether_addr_type(struct virtchnl_ether_addr *vc_ether_addr)
> +{
> +	return vc_ether_addr->type & VIRTCHNL_ETHER_ADDR_TYPE_MASK;
> +}
> +
> +/**
> + * i40e_is_vc_addr_legacy
> + * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
> + *
> + * check if the MAC address is from an older VF
> + **/
> +static bool
> +i40e_is_vc_addr_legacy(struct virtchnl_ether_addr __maybe_unused *vc_ether_addr)

__maybe_unused?

> +{
> +	return i40e_vc_ether_addr_type(vc_ether_addr) ==
> +		VIRTCHNL_ETHER_ADDR_LEGACY;
> +}
> +
> +/**
> + * i40e_is_vc_addr_primary
> + * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
> + *
> + * check if the MAC address is the VF's primary MAC
> + * This function should only be called when the MAC address in
> + * virtchnl_ether_addr is a valid unicast MAC
> + **/
> +static bool
> +i40e_is_vc_addr_primary(struct virtchnl_ether_addr *vc_ether_addr)
> +{
> +	return i40e_vc_ether_addr_type(vc_ether_addr) ==
> +		VIRTCHNL_ETHER_ADDR_PRIMARY;
> +}
> +
> +/**
> + * i40e_is_legacy_umac_expired
> + * @time_last_added_umac: time since the last delete of VFs default MAC
> + *
> + * check if last added legacy unicast MAC expired
> + **/
> +static bool
> +i40e_is_legacy_umac_expired(unsigned long time_last_added_umac)
> +{
> +#define I40E_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME  msecs_to_jiffies(3000)

Please have defines outside the function

> +	return time_is_before_jiffies(time_last_added_umac +
> +		I40E_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME);
> +}
> +
> +/**
> + * i40e_update_vf_mac_addr
> + * @vf: VF to update
> + * @vc_ether_addr: structure from VIRTCHNL with MAC to add
> + *
> + * update the VF's cached hardware MAC if allowed
> + **/
> +static void
> +i40e_update_vf_mac_addr(struct i40e_vf *vf,
> +			struct virtchnl_ether_addr *vc_ether_addr)
> +{
> +	u8 *mac_addr = vc_ether_addr->addr;
> +
> +	if (!is_valid_ether_addr(mac_addr))
> +		return;
> +
> +	/* if request to add MAC filter is a primary request
> +	 * update its default MAC address with the requested one
> +	 *
> +	 * if it is a legacy request then check if current default is empty
> +	 * if so update the default MAC
> +	 * otherwise save it in case it is followed by a delete request
> +	 * meaning VF wants to change its default MAC which will be updated
> +	 * in the delete path
> +	 */

This doesn't seem to match the commit message (also why the odd line 
break here and in the above comment?):

Legacy case - ...
If a unicast MAC is being added and the default_lan_addr.addr is not
empty,
then check if default MAC address was deleted shortly before adding
if yes then update the default_lan_addr.addr.

> +	if (i40e_is_vc_addr_primary(vc_ether_addr)) {

What happens with a 'VIRTCHNL_ETHER_ADDR_EXTRA' request?

> +		ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
> +	} else {
> +		if (is_zero_ether_addr(vf->default_lan_addr.addr)) {
> +			ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
> +		} else {
> +			ether_addr_copy(vf->legacy_last_added_umac.addr,
> +					mac_addr);
> +			vf->legacy_last_added_umac.time_modified = jiffies;
> +		}
> +	}
> +}
> +
> +/**
> + * i40e_add_vf_mac_filters
>    * @vf: pointer to the VF info
> - * @msg: pointer to the msg buffer
> + * @is_quiet: set true for printing msg without opcode info, false otherwise
> + * @al: pointer to the address list of MACs to add
>    *
>    * add guest mac address filter
>    **/
> -static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
> +static int i40e_add_vf_mac_filters(struct i40e_vf *vf, bool *is_quiet,
> +				   struct virtchnl_ether_addr_list *al)
>   {
> -	struct virtchnl_ether_addr_list *al =
> -	    (struct virtchnl_ether_addr_list *)msg;
>   	struct i40e_pf *pf = vf->pf;
>   	struct i40e_vsi *vsi = NULL;
>   	int ret = 0;
>   	int i;
>   
> -	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
> -	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
> -		ret = -EINVAL;
> -		goto error_param;
> -	}
> -
>   	vsi = pf->vsi[vf->lan_vsi_idx];
>   
>   	/* Lock once, because all function inside for loop accesses VSI's
> @@ -3016,7 +3140,6 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   		f = i40e_find_mac(vsi, al->list[i].addr);
>   		if (!f) {
>   			f = i40e_add_mac_filter(vsi, al->list[i].addr);
> -
>   			if (!f) {
>   				dev_err(&pf->pdev->dev,
>   					"Unable to add MAC filter %pM for VF %d\n",
> @@ -3025,11 +3148,15 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   				spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   				goto error_param;
>   			}
> -			if (is_valid_ether_addr(al->list[i].addr) &&
> -			    is_zero_ether_addr(vf->default_lan_addr.addr))
> -				ether_addr_copy(vf->default_lan_addr.addr,
> -						al->list[i].addr);
> +
> +			ret = i40e_add_vmmac_to_list(vf, al->list[i].addr);
> +			if (ret) {
> +				spin_unlock_bh(&vsi->mac_filter_hash_lock);
> +				goto error_param;
> +			}
>   		}
> +
> +		i40e_update_vf_mac_addr(vf, &al->list[i]);
>   	}
>   	spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   
> @@ -3038,29 +3165,23 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   	if (ret)
>   		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
>   			vf->vf_id, ret);
> -
>   error_param:
> -	/* send the response to the VF */
> -	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
> -				      ret, NULL, 0);
> +	return ret;
>   }
>   
>   /**
> - * i40e_vc_del_mac_addr_msg
> + * i40e_vc_add_mac_addr_msg
>    * @vf: pointer to the VF info
>    * @msg: pointer to the msg buffer
>    *
> - * remove guest mac address filter
> + * add guest mac address filter
>    **/
> -static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
> +static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   {
>   	struct virtchnl_ether_addr_list *al =
>   	    (struct virtchnl_ether_addr_list *)msg;
> -	bool was_unimac_deleted = false;
> -	struct i40e_pf *pf = vf->pf;
> -	struct i40e_vsi *vsi = NULL;
> +	bool is_quiet = false;
>   	int ret = 0;
> -	int i;
>   
>   	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
>   	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
> @@ -3068,52 +3189,121 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   		goto error_param;
>   	}
>   
> -	for (i = 0; i < al->num_elements; i++) {
> -		if (is_broadcast_ether_addr(al->list[i].addr) ||
> -		    is_zero_ether_addr(al->list[i].addr)) {
> -			dev_err(&pf->pdev->dev, "Invalid MAC addr %pM for VF %d\n",
> -				al->list[i].addr, vf->vf_id);
> -			ret = -EINVAL;
> -			goto error_param;
> +	ret = i40e_add_vf_mac_filters(vf, &is_quiet, al);
> +
> +error_param:
> +	/* send the response to the VF */
> +	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
> +					 ret, NULL, 0);
> +}
> +
> +/**
> + * i40e_vf_clear_default_mac_addr
> + * @vf: pointer to the VF info
> + * @is_legacy_unimac: is request to delete a legacy request
> + *
> + * clear VFs default MAC address
> + **/
> +static void i40e_vf_clear_default_mac_addr(struct i40e_vf *vf,
> +					   bool is_legacy_unimac)
> +{
> +	eth_zero_addr(vf->default_lan_addr.addr);
> +
> +	if (is_legacy_unimac) {
> +		unsigned long time_added =
> +			vf->legacy_last_added_umac.time_modified;
> +
> +		if (!i40e_is_legacy_umac_expired(time_added)) {
> +			ether_addr_copy(vf->default_lan_addr.addr,
> +					vf->legacy_last_added_umac.addr);
>   		}

Again, this doesn't seem to match the commit message:

Legacy case -

...

If unicast MAC is being deleted and it matches the default_lan_addr.addr 
save the time when it happened and replace it with the last MAC address 
on the MAC filter list.

Also, if this doesn't change, this is single statement, no braces needed.


> -		if (ether_addr_equal(al->list[i].addr, vf->default_lan_addr.addr))
> -			was_unimac_deleted = true;
>   	}
> +}
> +
> +/**
> + * i40e_del_vf_mac_filters
> + * @vf: pointer to the VF info
> + * @al: pointer to the address list of MACs to delete
> + *
> + * remove guest mac address filters
> + **/
> +static int i40e_del_vf_mac_filters(struct i40e_vf *vf,
> +				   struct virtchnl_ether_addr_list *al)
> +{
> +	bool was_unimac_deleted = false;
> +	bool is_legacy_unimac = false;
> +	struct i40e_pf *pf = vf->pf;
> +	struct i40e_vsi *vsi = NULL;
> +	int ret = 0;
> +	int i;
> +
>   	vsi = pf->vsi[vf->lan_vsi_idx];
>   
>   	spin_lock_bh(&vsi->mac_filter_hash_lock);
>   	/* delete addresses from the list */
> -	for (i = 0; i < al->num_elements; i++)
> -		if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
> +	for (i = 0; i < al->num_elements; i++) {
> +		if (ether_addr_equal(al->list[i].addr,
> +				     vf->default_lan_addr.addr)) {
> +			if (!(vf->trusted || !vf->pf_set_mac)) {
> +				dev_err(&pf->pdev->dev,
> +					"VF attempting to override administratively set MAC address\n");
> +				ret = -EPERM;
> +				spin_unlock_bh(&vsi->mac_filter_hash_lock);
> +				goto error_param;
> +			} else {
> +				was_unimac_deleted = true;
> +				is_legacy_unimac =
> +					i40e_is_vc_addr_legacy(&al->list[i]);
> +			}
> +		}
> +
> +		if (is_broadcast_ether_addr(al->list[i].addr) ||
> +		    is_zero_ether_addr(al->list[i].addr) ||
> +		    i40e_del_mac_filter(vsi, al->list[i].addr)) {

Seems like i40e_del_mac_filter() should be split off and have a 
different/unique error message. Also, would it make sense to do the 
other checks earlier?

> +			dev_err(&pf->pdev->dev, "Invalid MAC addr %pM for VF %d\n",
> +				al->list[i].addr, vf->vf_id);
>   			ret = -EINVAL;
>   			spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   			goto error_param;
>   		}
>   
> +		i40e_del_vmmac_from_list(vf, al->list[i].addr);
> +	}
>   	spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   
> +	if (was_unimac_deleted)
> +		i40e_vf_clear_default_mac_addr(vf, is_legacy_unimac);
> +
>   	/* program the updated filter list */
>   	ret = i40e_sync_vsi_filters(vsi);
>   	if (ret)
>   		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
>   			vf->vf_id, ret);
> +error_param:
> +	return ret;
> +}
>   
> -	if (vf->trusted && was_unimac_deleted) {
> -		struct i40e_mac_filter *f;
> -		struct hlist_node *h;
> -		u8 *macaddr = NULL;
> -		int bkt;
> +/**
> + * i40e_vc_del_mac_addr_msg
> + * @vf: pointer to the VF info
> + * @msg: pointer to the msg buffer
> + *
> + * remove guest mac address filter
> + **/
> +static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
> +{
> +	struct virtchnl_ether_addr_list *al =
> +	    (struct virtchnl_ether_addr_list *)msg;
> +	int ret = 0;
>   
> -		/* set last unicast mac address as default */
> -		spin_lock_bh(&vsi->mac_filter_hash_lock);
> -		hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
> -			if (is_valid_ether_addr(f->macaddr))
> -				macaddr = f->macaddr;
> -		}
> -		if (macaddr)
> -			ether_addr_copy(vf->default_lan_addr.addr, macaddr);
> -		spin_unlock_bh(&vsi->mac_filter_hash_lock);
> +	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
> +	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
> +		ret = -EINVAL;
> +		goto error_param;
>   	}
> +
> +	ret = i40e_del_vf_mac_filters(vf, al);
> +
>   error_param:
>   	/* send the response to the VF */
>   	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR, ret);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 755f29cb0131..f0e67a0d4ecf 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -62,6 +62,17 @@ struct i40evf_channel {
>   	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
>   };
>   
> +struct i40e_time_mac {
> +	unsigned long time_modified;
> +	u8 addr[ETH_ALEN];
> +};
> +
> +/* used for MAC list 'vm_mac_list' to recognize MACs added by VM */
> +struct i40e_vm_mac {
> +	struct list_head list;
> +	u8 macaddr[ETH_ALEN];
> +};
> +
>   /* VF information structure */
>   struct i40e_vf {
>   	struct i40e_pf *pf;
> @@ -77,6 +88,10 @@ struct i40e_vf {
>   	u16 stag;
>   
>   	struct virtchnl_ether_addr default_lan_addr;
> +
> +	/* keeps last added MAC address */
> +	struct i40e_time_mac legacy_last_added_umac;
> +
>   	u16 port_vlan_id;
>   	bool pf_set_mac;	/* The VMM admin set the VF MAC address */
>   	bool trusted;
> @@ -102,6 +117,9 @@ struct i40e_vf {
>   	bool spoofchk;
>   	u16 num_vlan;
>   
> +	/* MAC list created by VM */
> +	struct list_head vm_mac_list;
> +
>   	/* ADq related variables */
>   	bool adq_enabled; /* flag to enable adq */
>   	u8 num_tc;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
