Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FE9643949
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 00:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6842860D55;
	Mon,  5 Dec 2022 23:10:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6842860D55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670281812;
	bh=AgLfQVPmNOUIpPsU/CAPKq6RuKLPWd1tAtgv4cpu84M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e+QnqotG7fkeuvere8ohXh/NNQtiGkMWGRt9ET1ZiH7fk0GVYujVYiBNyVZzYiCu3
	 mpiMC++LPIlsYGoDUXezFpUGWW/Ovm1KGmkcmSQxs2Zcrwoca5XpQ3KfX/9YquZiGV
	 FXoHj1Bmlanr+CV831VJYVv8dTjbOnYYbLmd+jOBWSigRqmKjsOgTpfRTT4g9MT7qV
	 cdM5VYHPc0dvCcNxuxnUta8KRdhatOqpoBUsEJg9UncD9kg8XNItxIXoHBwND8WVph
	 u8m1of3x66pizhBk6UOU5Lsdu8YGeANiazACCFMccuZdmHE80gA7GK11EMZglax+NM
	 2mUE5c8A6rlew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQB_EamolZgo; Mon,  5 Dec 2022 23:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B76A606AA;
	Mon,  5 Dec 2022 23:10:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B76A606AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 818871BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 23:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52305404DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 23:10:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52305404DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9wMGH0A5sZsa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 23:10:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AA4F40199
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AA4F40199
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 23:10:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317628180"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317628180"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 15:10:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="974859851"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="974859851"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 05 Dec 2022 15:09:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 15:09:46 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 15:09:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 15:09:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 15:09:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JkG8NAoeB/HsCNUYE1YFbIWpka9VroKazcWn95O4V/U54M8FC1PhxKNXk5ag8v+FVtsPU/2Prv2e0bd2Xz5cWi1KXkag1Sx0LA2RaYj5FUXluvq2kRsz4BVQPNC+F24CWWbKLqxriGakT/oghGsC1C/gp52q1MLK4cowiTk+/yVMh+QUDfPQ+5dyrDiQin+fck/qFZB99jrL+CH/qqPa6sxe+hMl00tr1SzvfudB2q+kbrbpa3S+suPhjj8f0b9tJKNERnRkHNeTWf7yyDPQ5sC7wBReZ2VzfCkj6QXTYqcqYVhoFGTR78NRM6wofhEGyvPrjW00ZFn6rbW7eSY29A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rjAc0xauke5YbNykaOX02wyOYTtmaCRK5yfvG/+IYfM=;
 b=jSlrpHR4ykftjvg6sFryzR9I8rvhaqPKV4yrsbVqpXFSpiEBsaQpYGO9DgoD8sF6sTd1Ey4g+2iFd8yzji0E7mPmZHlN9XZubyQWxJfCBBrqCfq+qdd/cUwsdRiB1ihPfKUqzIcLEjgKBgrMXYnDCbYwwXLew8A3oV1Fp3AhEjGwRdD+5iVqd5S6V0OBnt8/QrkwXg68N6hyiXgzR87QTIK+6B71Ul4NmnOHgrHcVnzldfcAI+TqZS1MEh4FTa0GN/4noCFo+sTW7Q+fq52gtcOQixmf9GXTctyoqU/cp95uA5gP1bekEWjhH8FpZXatpfq/qfIArTryZYhrXh9IAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Mon, 5 Dec
 2022 23:09:44 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 23:09:44 +0000
Message-ID: <68320104-0a05-782e-f083-575f43428aa8@intel.com>
Date: Mon, 5 Dec 2022 15:09:41 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, <bjorn@kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>
References: <20221205123932.470119-1-mateusz.palczewski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221205123932.470119-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: MW4P221CA0009.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA2PR11MB4889:EE_
X-MS-Office365-Filtering-Correlation-Id: e4faf565-16ce-4783-90b6-08dad715cbe3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: igO1WF2Zy+rdHR2qKemQzpeggwJM+7RfcnD/Q0eA6Wx0oIatJjikptu/b4wvuRxigYboKjOwQbVZr8CVeeMuz1o6vUiUoDrdkU7dnlrsP7Seg0CzMobJde437jmXdp8DHO/OmA5o+2GHMECoUBmzGG0WNNqus/Pq6OnQFJrJ7hccMSK/830HtqKIb2G1pzJsNbs3LvCDuZCWtYw9dz139z+tyNHx0l5Yd2/x5Rnq5lgrsPZTSemzyukmwCoj5i2YB819uF26F5wiPO4v7JuOLeJos+9wuG9WxLUuTSLb6d7dTJ6fErqlnHL6cQ0v+Xxb3nm/mlSDcZzKGkyxWX4ghZ8MSS0ayoNCoybOeOXVkQ85PDJ/nrcTOX1cimFSXdz/uaIDHc6ge0jmiYe2CTbCDeoUlV/Yak3ED0NhTUph5G1TCerFREsooeLTAH/9oDE0ZinHnCbOsnHYuoiMwZq7fb1F8Z1pfbP+NpJHwBg2LEHEwCfnZqIE8x/DQcovl4ZC4NW9Y/IgehSZbgsB/U4gg2UEsed81482olAjqES/Ic0HjJ01htyGakhdi73vA1nNAtn4jcNsylZV/ovjQinGIzjrj60PpaRGpj8cM4HafICnzZ+skjtqfi4gxRacPfAnXMKMj5tc2QiYXHyiGhllWdTcmkZgK7HomBUw+83E3jxON4G4BOiDm1cjpP47L9AC3MwF6fF/r5/t0RzZsd58YBpVXlwJWCmyabLC909UoZ5LWqRlzo8LRRoe0gafuz7SJ0vgZ4KERkj5hu1uKGuWaQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199015)(6666004)(107886003)(53546011)(6506007)(26005)(186003)(83380400001)(2616005)(6486002)(66556008)(38100700002)(41300700001)(86362001)(66476007)(8676002)(4326008)(66946007)(8936002)(110136005)(966005)(316002)(82960400001)(5660300002)(478600001)(31686004)(6512007)(6636002)(31696002)(36756003)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEJUdWt2VzQ2UTJ5S1gyL3BSdk1CcTA5bGRXbGpUT1NLc3gya0FheEllMTZm?=
 =?utf-8?B?aEo0RitYQ1RBN2xsWnFSTmxzbnNpVnRoZ2dCWjY3NjZzMFB6bEk0d1IxR1N2?=
 =?utf-8?B?VmZTcDI1YWJLbCswNStmbExubG10MW1HNzRLNWFKY25SdTVXejhKekZCcVNB?=
 =?utf-8?B?SCtnc1VoUWl6TDRKdUxNaVBIaVpvZDNaaGhNWlBNbkxXSXFQbVRJR0FYM0Nm?=
 =?utf-8?B?SUZ6dlBML2h2NGJscmsvQlJpZ0tJenBkQWYwUXF3SEplNDBUYlRaRTA5Kytr?=
 =?utf-8?B?WWRacHVRTnhFRVdSMWg4SmdoV0lsNE92c3ZLenNBMFg2dFZhalNVT1c2dXpv?=
 =?utf-8?B?RWlZMUJLM0JjYTNiSGJycjB0ekVBWmNOaG5tVHUyTytKdXdqVWMwSUlFVDds?=
 =?utf-8?B?LzNQb0owc2t1MGpkZ0t0eWhad3AxNXE1T0NFRDVBSXVSaDFMVnRxWFRvL1dz?=
 =?utf-8?B?ZGJmSXRMMHBrTEgzYzVNbjU0N05IYnY4UFUyVno1YzZ1UFp2T1F1SHIzdWNl?=
 =?utf-8?B?ZmRQMVRkVVp2YjBKRk9TZEZxWU51Q0hUd3V0QnZqblR6M3dDeis1bzVSN3dK?=
 =?utf-8?B?WGZDRkE5TkxrU2pQZGpzUFZuWmpZZkE5anJ6YTFFSEhlS2E2QVhWd1FLdkNv?=
 =?utf-8?B?ZUFuMmNSNVFQVE50bVEra2ZXYTVpclBJd1UyVVBuenlmWGNtZzNNS1A2MHpn?=
 =?utf-8?B?SHBHejJkcGJ0cnJ4eC9vdVZlY3ZYQm5meksxUStod0RRRFQvamkrM2ZScW95?=
 =?utf-8?B?TnA3UXRHTDd4SWN3Y3N0QTU1VDRyTTk4QUdMLzQxZU0wMmdmSWo0cENlUkg5?=
 =?utf-8?B?MVRCVHU2bG4xd1pvLzExS25iNEdPUzROdUxsUU16LzArS1NOa3JmRVFPdjds?=
 =?utf-8?B?dkhKbWUwVFZEVit1RTNIZ3RoKzBQWGVUNnlRWkNPa2t0SmptSGdtOVdoOVB3?=
 =?utf-8?B?U2NXRmFnM2x0ZkhNSFFLK2o2L1RCSnNCSGxweTBRekJRN0Q3SzVFNHM5dXZi?=
 =?utf-8?B?NWpZMmZDZzNVUmVYK0M1ZFgxM0M4UjNEWHlNc0s1VUxBcGEyV21ybC9tNDZx?=
 =?utf-8?B?RFBGYXNlVFkzU3JFMGJSTGtJMDlTOE93T1ZZTmdrcHBMc1ZKS2NtRTEvOVJM?=
 =?utf-8?B?a3RKbmttYUdqdWhia2pYNHA5SkllbnZQRVFuWkhTYXZRT3VmSjNadWhIeGRR?=
 =?utf-8?B?a3RraW5sWFR6YmtFOVMzOW90bHoyUlpKeE9KTWl6S3F6czAzc2tLVGhNZzM5?=
 =?utf-8?B?VVFtMlBNditjT3daelZPbkJ4cW9QU25zL0NIL2JTcjlQTGs0dllLZGJnZjg5?=
 =?utf-8?B?SFR5TGRFT0lYemZKVStFTE5CTGtLcVh3Uzk5TzBMUUlPS2lReXJzc1psaEJ2?=
 =?utf-8?B?WjdteDh1c2FUYlIyRHE0STV4aDk2M1QvS0NjRnFOTE5BYkZZVHI5SElNSzR2?=
 =?utf-8?B?ZkRkcW1PZWd2TUFBT0d4TDdTam1DWWFEZGhiTUptb1RNcjlnbFowR21wVlU0?=
 =?utf-8?B?ZHlWNll6ZmxFRXFqVGhVNEZhRHZ0WjN3ZVQrc04vZ2JDa01XNnRJSDZMRzg1?=
 =?utf-8?B?ZjhJNGlhdGFMUllXTGVDeS85ejFvdzA5MEdaaSt2UVhUOHRYWUxlMTFhTnZ6?=
 =?utf-8?B?eTNna3FSaEYvUFUxNjN3TC9JaU9TV2REWisrdTlMSDVGZnY5T1FKZmtCc3lm?=
 =?utf-8?B?MVl2dGlsclpLQjlKeGV1UElTRWU2eDJHK1NDOFpRRHQvRStVV0NnMWV5L0xl?=
 =?utf-8?B?WVZsVTFYMnIzZ3dMemNJWW5LZm1TRnJWT1FDaUJDYzgwT2tFeSt5Q2tselhZ?=
 =?utf-8?B?K1VGK0NqU1FJemE1L1ovNy9Fb0tTeUdRRWJCRVl1TnRyWWhjVzVHTkJrb1dI?=
 =?utf-8?B?MDVjb3hTRmZzQkpOaloybGVWenZDSVNUWVhXWklSdWVkRTkrSm0wVFhXenQx?=
 =?utf-8?B?anFSYVh1V0lYU1M4K2paTmpVdlJ1K2xveUNlWC84Y0daSGVRY05HYkt1cU8z?=
 =?utf-8?B?YnpXeXIvWklpV3dRMmoxUUN1Y1lqekVxVHhKSGIyeXJncWxwOE44U1RqWW94?=
 =?utf-8?B?T3VZbFlsTTc3K2tnVFM2QnM0YWU5M21FRElvWUJHWmNpcGtLL2M5RlRCNmdu?=
 =?utf-8?B?T3pSSExxYVUxdkd0RWVoUlAyMkF1bkNieTd5c05uOFgwUGJQS2w2cnlUMFpl?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4faf565-16ce-4783-90b6-08dad715cbe3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 23:09:44.3038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gkwomRRitSSLmKAkXnXg6TkDmn+n//DXndtFUqRaFwN79CR3aS3KVzNA8Wy1FLFcpJ2GhFFLBfWbluydt7+KA+bOm2k7aQdEkguWbPySXL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4889
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670281805; x=1701817805;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FlEXjWywoyQOvtEdkqqSIq0GjtWVegQT14sbDYzRp90=;
 b=jgKMkEwr0o3J5Tq+21hdwF83BokdENP53sdCtNIAOkBGVJSP3WcOtoqQ
 cwgS2CYCDIUTObf7/sRXrn0CvpFT7wR6qJkvU4TUr69ntbo7LhP6CLe+D
 uZkS4sLjRcW4OM07X4B8wNulu+2DyKKtW2grxN4S7d+r+Hga5sJcnFI69
 JtACRl3GRt2ZTswESvdV7OQzs3nb/yMf+kYyEIf7LaIueLIM7335YfiOF
 5Mg3xoDSgO0WMGbpZE/e9WENjbbOg1jwztSrJCLDoayyVrn7K8QYI6+Q2
 4fscyP9S4KZwwYB9oD3A4o2I1XYaI9zFNEdwt+GfEuuzwApg27gEaoC4P
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jgKMkEwr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix the inability to
 attach XDP program on downed interface
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
Cc: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Maciej, Bjorn, and Magnus as I presume this is the update to this patch

https://lore.kernel.org/netdev/Y3OFmgLa56rwVQ4j@boxer/


On 12/5/2022 4:39 AM, Mateusz Palczewski wrote:
> From: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>

This is incorrect; first name then last name, no 'X'.

> Whenever interface was down, function
> i40e_xdp was passing vsi->rx_buf_len field
> to i40e_xdp_setup() which was equal 0.
> i40e_open() calls i40e_vsi_configure_rx()
> which configures that field, but that only
> happens when interface is up. When it is
> down, i40e_open() is not being called, thus
> vsi->rx_buf_len is not set.
> 
> Solution for this is calculate buffer length
> in newly created function - i40e_calculate_vsi_rx_buf_len()
> that return actual buffer length. Buffer length is
> being calculated based on the same rules applied previously in
> i40e_vsi_configure_rx() function.
> 
> Fixes: 613142b0bb88 ("i40e: Log error for oversized MTU on device")
> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> Signed-off-by: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   v2: Fixed commit title and message, this patch is only for a case of
>       fresh start so I believe there is no need for rx_buf_len clearance
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 42 +++++++++++++++------
>   1 file changed, 30 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b5dcd15ced36..2fec0cff282c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3693,6 +3693,30 @@ static int i40e_vsi_configure_tx(struct i40e_vsi *vsi)
>   	return err;
>   }
>   
> +/**
> + * i40e_calculate_vsi_rx_buf_len - Calculates buffer length
> + *
> + * @vsi: VSI to calculate rx_buf_len from
> + */
> +static u16 i40e_calculate_vsi_rx_buf_len(struct i40e_vsi *vsi)
> +{
> +	u16 ret;
> +
> +	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
> +		ret = I40E_RXBUFFER_2048;
> +#if (PAGE_SIZE < 8192)
> +	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
> +		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
> +		ret = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
> +#endif
> +	} else {
> +		ret = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
> +					   I40E_RXBUFFER_2048;
> +	}
> +
> +	return ret;
> +}
> +
>   /**
>    * i40e_vsi_configure_rx - Configure the VSI for Rx
>    * @vsi: the VSI being configured
> @@ -3704,20 +3728,14 @@ static int i40e_vsi_configure_rx(struct i40e_vsi *vsi)
>   	int err = 0;
>   	u16 i;
>   
> -	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
> -		vsi->max_frame = I40E_MAX_RXBUFFER;
> -		vsi->rx_buf_len = I40E_RXBUFFER_2048;
> +	vsi->max_frame = I40E_MAX_RXBUFFER;
> +	vsi->rx_buf_len = i40e_calculate_vsi_rx_buf_len(vsi);
> +
>   #if (PAGE_SIZE < 8192)
> -	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
> -		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
> +	if (vsi->netdev && !I40E_2K_TOO_SMALL_WITH_PADDING &&
> +	    vsi->netdev->mtu <= ETH_DATA_LEN)
>   		vsi->max_frame = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
> -		vsi->rx_buf_len = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
>   #endif
> -	} else {
> -		vsi->max_frame = I40E_MAX_RXBUFFER;
> -		vsi->rx_buf_len = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
> -						       I40E_RXBUFFER_2048;
> -	}
>   
>   	/* set up individual rings */
>   	for (i = 0; i < vsi->num_queue_pairs && !err; i++)
> @@ -13265,7 +13283,7 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>   	int i;
>   
>   	/* Don't allow frames that span over multiple buffers */
> -	if (frame_size > vsi->rx_buf_len) {
> +	if (frame_size > i40e_calculate_vsi_rx_buf_len(vsi)) {
>   		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
>   		return -EINVAL;
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
