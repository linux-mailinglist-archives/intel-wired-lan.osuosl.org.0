Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE18788540
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 12:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A6B68302F;
	Fri, 25 Aug 2023 10:54:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A6B68302F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692960867;
	bh=W5lzoRsIwQGsSV0Ivc0b6OLF0MYLh/l6KTcUuY7O42A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NIzD9IOz1aY44oAUwHfHpdo4ZvgkGluNINrUhFgfmAd67p/Yoo0ngr+bXEowQLQld
	 76MFt7ZN1w6EXuCyU/azobClQlyIGw9yTUsuDxii3oVm7RXLNv97p86SBf+h/Lu+We
	 bNKsEdqetRbyETp+UISv1SxyQ7n7PSLtTcu2ZC89sYmKm9qVmq3NctCdIXgH2KurtL
	 LIo+K6zDtdPGsiwS5HQ2gdWKV/LUqDRrZ5uniD6ZvqplEPoJdYFA9sRaKlOXDlimhh
	 UvB1nMOSrTj9qPqYXOqUGkyGKUvVITasAscaW+vv5aaULlFP0GLPLFPu5LCp6nNENi
	 Dwiv+vwiI0XAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8VRVeOEhC1kR; Fri, 25 Aug 2023 10:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D34BA83005;
	Fri, 25 Aug 2023 10:54:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D34BA83005
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC4C1BF846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 10:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56BE741EE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 10:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56BE741EE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AKiHN3OD5QiI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 10:54:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BDF341ECE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 10:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BDF341ECE
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="355016951"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="355016951"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 03:54:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="772448144"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="772448144"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 25 Aug 2023 03:54:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 03:54:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 03:54:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 03:54:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RXp4TGdD43PbH8lVHt16FR2ToxB8pX2hi0Xj3IsSDBkh2bGqBTDVJkxpsSdSLNA2pq6n3Mc4C0cetczxy67G/JgFGd9nTPmfnnJ8v3dAFETZUmd/tNf1ErRHtbRJWtvgD3EG79cXRdR7bPckfuJx/nPF0gBYpZFiiRczdLouC6sK3Omn+B9yClQ1cCmURq5za2+I8+ibYMjzDymPdkSW2sxAvaQ6dbPD3Zo/SE67D+3XsrZpUxhZX89I6N8oEUKZj4cVaQN00R5o1zJgA3HDPkrVjonjnHwfDUoRTyfwiSHI474YqFt6KaR+sRnNiPBBuBm0c6AGj0j6OHiC6RgIZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83nBSXyfAdlwymfIR8XPAZ55nqU98yTNzkXRIqsxhOE=;
 b=O/M6PfpVECVDX264duDithfgiGGNmqM/IZJegxvAoG3dOOkCQkkxMjRA2y7jXeYVddGOMsQmjYD0jiccGFbFsOzAQByH8sA9zIXIw0egMDgk/H8HYs+JxwVa9z0aI+cdIjmXJAsDhpdPsfFWpuNRnIyrBdy7djYK4H3PNuCBHLGT70FeDYCu15rO+8AbQScLzd8/S0vW7N6r1ZLQ94ZXarlIC5NhKq9ushpcwuAZcyn7kNSsAKNrICx+wy0/8nphNLmih4QsgHLjmOHN91KScYFLPRhQ8HMtyBUY0robg6RRP/tAliyHiFuiA6ZLpTbkiH8fjfZlXqtUTmOOSzv2cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ2PR11MB8323.namprd11.prod.outlook.com (2603:10b6:a03:53f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 10:54:10 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Fri, 25 Aug 2023
 10:54:10 +0000
Message-ID: <dbdc320e-bd4a-eb49-5c6d-8f861602046f@intel.com>
Date: Fri, 25 Aug 2023 12:52:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
 <20230824075500.1735790-1-junfeng.guo@intel.com>
 <20230824082039.22901063@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230824082039.22901063@kernel.org>
X-ClientProxiedBy: BE1P281CA0395.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:80::15) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ2PR11MB8323:EE_
X-MS-Office365-Filtering-Correlation-Id: f0baa2d1-bc74-49a8-0053-08dba5599c88
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bIpqdq7Br1ja1I0kxAShtr3RfGc5E/+r3p9QLlYZKTAhxLlRck27AXe763/9N1mNgMYzkbW/UIb1FIXCgrt1o4Gf0SNuP3cUe5jIHX925lnc2ATSNUscO1M/acu1IPFc32n0Gg/HSRzVTAxaKxoblr4LQe1RVFVxNm7z++6HvP2a391R2xJTrp3ZlTd3Qigh1Y55zl/HEIyz9uCLKHAtY8+yia+7utAm4sNfDHUOt3m9CjKa+F08V5xluExE45rgWrg41uIXaYU5jqBMuX+/4mKVFO49OAVYNyoku/FzCrE4MiJEp2jWs0nxid8GwuDVF7HtzkeKTAgLDm7JBQRTneFivng7vHcvPPX6vXncGQnE9p2tt5D3nOHcmFHpG4a0DGxqc2DalWg3URyH8uobfqiNw/pj/8tOTpJHFPvaUvLMxJG2YHqr59jpEGdZYasQ8DgEjTFfUDRnt2NTISY1tiYx8ZATwZzHb8zoXwoHh3t3d6dHLxOIyujvXdXlnf74O3qZoPRTXg78w+rc69FrIJu/8eVBCAnxy0lE5NRyofhy40WK5HHis2dNXZNrQP8d9HzsoqJX+o7hzDxQl1hsfgRK75uZF1hfyizKjfapAlyHQbgpPXe9IudZUsEXksFVTOmm6MgZ1kgD4s/oDECd5g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(396003)(136003)(366004)(186009)(1800799009)(451199024)(2616005)(5660300002)(4326008)(8676002)(8936002)(36756003)(83380400001)(26005)(38100700002)(6666004)(82960400001)(66556008)(66946007)(6916009)(66476007)(316002)(478600001)(31686004)(41300700001)(6512007)(6506007)(2906002)(86362001)(6486002)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGlKNlExd0JscmhjZ0p2TGNjOGJvSUMrQ3J1dFNNVlNvMHltU3IwajNNWkl5?=
 =?utf-8?B?N3g2ekJGcVBJVzlDbE5CcUhBV3JramtSWmVuZy9ZT2VmMHdnNzNLVHJXT0o5?=
 =?utf-8?B?T3FQdlBIUWV2N3VEeTEzeTRtWFNTeGF0Mk5mR1pTc0l6YkJhTlBsMW1ScGlI?=
 =?utf-8?B?OFZiZ2kxWGRyeEZWQ040Y1dXMVJkQ0pVc3RjRUtSMit3SFVwUmVSL3pEVGdM?=
 =?utf-8?B?WHIzNHlKb3pOUlp2VzVjb21rdHBsNEc3VzMyeFlRUEEySmRGMEJwWXc1SlpF?=
 =?utf-8?B?TnBhdHRJTkVhTUNYa21vL3RobXVjT3BiSlFkTFlPdVRDZE9OQ0txcDUySFNK?=
 =?utf-8?B?TDNzdzRCdytvbkx6cUZlNHV0aVN3dVBuTWJiVkM0c1JiaS9xN3I2MzVZamxq?=
 =?utf-8?B?d1FCVWJQSlViUkFjdjRYQWh4c1VTZ0k5aXc1TGt6SUhpM2pyZGs0MExZL1cw?=
 =?utf-8?B?Q2RzY1VaWWxLWXVyRDE5MzNmdkZhdlRiNEt6UGE2NUV3aTZRVjEydmZUdzNC?=
 =?utf-8?B?R3FvSUFEWTlXN0V5amN4elQrc0kzb25XelR4Tkt6dWplYnFMWW1GVzNXM2Ir?=
 =?utf-8?B?aGQ2QkxYN2haOTA0d050QzlkdVR1ZWdUdXd3Q0huaGF0VEhndnhKdk85TURw?=
 =?utf-8?B?TTJtZDBYZGo1ekM4akpRbUlKWEp5N3pJdlc0YWMrRC9zWVdEa1hldUJBMmVv?=
 =?utf-8?B?cmFMQ25mMjV6YXlrMllSbnIxVVVLemo4Sy9VSmtsdS9wbHRWRFdISjA5V1Jn?=
 =?utf-8?B?K3JxMXluMzVybEVjVURmR0RIMlNDUENHMW9PWE03NjFvRzdQVmJMMVkwdmZo?=
 =?utf-8?B?TDJQVG13RzRjS21nM2hWaGxWdmtEVHIzSEV5SUE3TWMzNTNBWjdGWnpKd1J0?=
 =?utf-8?B?TDA4SVZtdlFPSVJpUkxBSlVSU1lNcFYvNU9mcjJ0Z216V3YybjRYZGRNenJh?=
 =?utf-8?B?ZFNKVDA2Wjd5WkVBTmdOS29MZlRWdjFvbllrN09QVXNJQVNFemI4bjJNZW1Z?=
 =?utf-8?B?Sk52OWxKL0dxcHJrYU1HbERTRjZweUtoR3poVVBkdXJPeDZFdVBlNStOR3pr?=
 =?utf-8?B?aldOSVdPTjRGRWtpdE1HaTdSMkxZRkpKc281b2VwRVB4VzRZSldvWVE2bnQr?=
 =?utf-8?B?VnhuMVZZeXpWYmJVL0FVUjYxZEhZbDM5ZnQ5RDA2Wm1JdkVWOUE1KzdUb0tr?=
 =?utf-8?B?ZlBEZlF1STEzTThQT2E0WDFJZHJNRzJxcXhWdHZKWHdzdlN6bmUzSndtQXc1?=
 =?utf-8?B?dFA4YnVBN085VWs4bkowa1pBZ2xBSEZFMVpGUFVaUXVHRkZ4NUgwM1hTSFVN?=
 =?utf-8?B?U2gzd2YvVEl6QURVcHQxaXVyNUdIZlFMaUlLNTFsamxvSmlFL2prVHgzSnd3?=
 =?utf-8?B?Mkk4Q0JOMDdXbkRZZlhmQUdSV1J2bmdWb0t3Q09ZbkpOU3MzMCtXemZuS2xs?=
 =?utf-8?B?K2s0UWN1MzMvVnZ1U3JhYmg4Yzd1cS9NNHBSK2VHajRWT2VZSHlJMUowd2tw?=
 =?utf-8?B?NkF5ZFlWNGptSUNsMHNPd3hzOHFZL1VxZm1aSGQ4UmVRUWVpWWJPRWpPeGY3?=
 =?utf-8?B?M2ErMzdjY05zeU13M1hSbDY2S1RWbE1hc3dXc2hMZ2hoUlBScGpMWmZZUzNx?=
 =?utf-8?B?QkQyVmtnSC9nRjhib2Jub3dCT1lsajVIV005b2tHcVJGMVhWbjZPTEs3Zytt?=
 =?utf-8?B?NWRwVnVlKyt6N0Z5ZnVNdXVZejlzV3ZYb2ZpNytKbzR0dnZUWnVPaDV0YStF?=
 =?utf-8?B?ajVVeXoyTkdjV1JVbmIvVHVvdUhkTHQwWWxzWE9EbW95NmdEaGVkS1U2NDBI?=
 =?utf-8?B?Skt5dEZRY2FMdzhGWXhDenVXNWVuUTZ4OVZjMEVxSTdxZGpHVFl3V1FneHpY?=
 =?utf-8?B?SjlvajdDamdrWDhFSURyTFN1VmFzR2ovdVJmMEJkWG9ZZnRUejcxdHBTQi9G?=
 =?utf-8?B?TEdGcU1qcEh2eXloVnRnSUlwVzNORHlKcXA1Y2lGNlhqWHI0VUhKdk1nQmY5?=
 =?utf-8?B?YXM3ZUdBSTd3eVFHWnpYbCtGdzZQa2ZKandINEZValhLYWQrRnhLVFY2VjNW?=
 =?utf-8?B?bHNJT25pc0hSWk5XUENQSFE3MjZKeTl2QUFkdkF6RS9Pa1VXZnYrS1N2emlm?=
 =?utf-8?B?bStnVmJvbUNmOC9hM1Yyc3dXcExIdXVmNCtWU0Y1WFBDRFptZjBMSzlPcUJV?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0baa2d1-bc74-49a8-0053-08dba5599c88
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 10:54:10.3720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AdptY4f33n5SRsr00DhY81RAhGGYQsXVQpkNeeuhGjIFJN13VMz03zXQu0DiM6Z6is9N3bJ1g3LsFQ1oI1PU0DXcXHMj55pkjBXkEgiMoV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8323
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692960859; x=1724496859;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kyfIaGCVFJ/kCcLDpzizQ4q5CcFilK+SmkcAQ1OGJfw=;
 b=LAxFbK7SsKDySNv/Uyw7mi8ltxdoLLLv7jZVBL2FpQdPaIXaUGM2ffp4
 urfZciUJBXgQluyfIT6ixHMbBwD0W42Dc+vgcPhAgCkN4xhfOdvkurEZR
 7oIpbJP27DiktYOgE3TObAgmtuZJ5MaYFJtM0sS1ETq2mK+smSiDW/w2B
 KNGaYotL+qsVc5d0GqldqSpI67wFys341PV8JtUBPlDtRP66jts/vRQR2
 tQqN8Xd6yGyhrB/TLGwOHqT8PRbPETcmjvQbbldOH6efxP2+0+GJB4OZ4
 UbM3QDrAMcJfLrvC6Jo3FIdmrGBaWMRbPi6dpGSMG/wLEhy5mw2mcYAt3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LAxFbK7S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Thu, 24 Aug 2023 08:20:39 -0700

> On Thu, 24 Aug 2023 15:54:45 +0800 Junfeng Guo wrote:
>> Current software architecture for flow filtering offloading limited
>> the capability of Intel Ethernet 800 Series Dynamic Device
>> Personalization (DDP) Package. The flow filtering offloading in the
>> driver is enabled based on the naming parsers, each flow pattern is
>> represented by a protocol header stack. And there are multiple layers
>> (e.g., virtchnl) to maintain their own enum/macro/structure
>> to represent a protocol header (IP, TCP, UDP ...), thus the extra
>> parsers to verify if a pattern is supported by hardware or not as
>> well as the extra converters that to translate represents between
>> different layers. Every time a new protocol/field is requested to be
>> supported, the corresponding logic for the parsers and the converters
>> needs to be modified accordingly. Thus, huge & redundant efforts are
>> required to support the increasing flow filtering offloading features,
>> especially for the tunnel types flow filtering.
> 
> You keep breaking the posting guidelines :(
> I already complained to people at Intel about you.
> 
> The only way to push back that I can think of is to start handing out
> posting suspensions for all @intel.com addresses on netdev. Please

Ah, that collective responsibility :D

> don't make us stoop that low.

But seriously, please don't. Intel is huge and we physically can't keep
an eye on every developer or patch. I personally don't even know what
team the submitter is from. Spending 8 hrs a day on tracking every
@intel.com submission on netdev is also not something I'd like to do at
work (I mean, I'd probably like reviewing every line coming out of my
org, had I 120-150 hrs a day...).
I know that sounds cheap, but that's how I see it :z

> 
> 

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
