Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DA5782A10
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 15:12:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8AF74098D;
	Mon, 21 Aug 2023 13:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8AF74098D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692623534;
	bh=z2oGzVvPg6xkgrQasTepgSXPY0Ig4dUfoja1bdBydfc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rvscM4RheofFKQBAs2FdUW051XMTSEZJanv5WJFts54aNHBioIyx4s/llc/iPScYi
	 sVFDmwh2T7vfBhAJlhBF9Ynq9QwXh7cRxAFz1AF/5BiVlWfAr9fcW1RHGUVpWKuC4z
	 97NY0XBVc5a68MTDRJu/2+Czu/XEI4slochUrSpzyH/LW2laFLa0NhTi5Rfwooreoi
	 4IRswCSAxYFkoHMzpcxwte72+07st7Ul8OVt6TgcYCqti5OLGhO6UuxsJS+rucj/f4
	 ip3lskGi6WBnrrwAxud7SD8Bhkh48lWGiC561yWm8iCerxif1/rXJrCazc+mISgNlP
	 MLv/LsjvWXjFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EacOF0blbSSn; Mon, 21 Aug 2023 13:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 446E8409A4;
	Mon, 21 Aug 2023 13:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 446E8409A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 101EF1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0B96610C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0B96610C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQ7hXgehP1YP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 13:11:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 099E0610F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:11:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 099E0610F6
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="459952945"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="459952945"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 06:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="685651140"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="685651140"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2023 06:11:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 06:11:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 06:11:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 06:11:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m3r5fFgdu8qCPuyOnv3O0ozkKwmsWmpQ2QrXrQDiGIXRVFAY348DoieJKOY2Khu3SiP3GUr9u3H2oWA1k5GrVKAdh+z4RZUkjtl2hGkHEdSYKYmSmSndrYIlRSytPLuhYVMf9AXD+TY3ROeVPjmGcp9Xx7aA62djU3UNxuhLOaDTS3A720BeOHylsDG9BOaUVJUgOQl6TQzjpZ3hyHPcVT/xN0wp4v9muyplBtY6ZoINgC+nivoqdDDWR1DC+KYZKbuDHHOR7w5x3Rv4Z/5Aqp88wo7p2nPUuTgJvVhXKxXoziMccUUc5ycJRYi4kUjsIpTNNX5S97l5RGiNCPhgOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fi2hqG9hz/ISAvprJ+43Fm5sxKB1E5QiKtbXPUXH2nU=;
 b=R1yyc2+HpA0w9NJGpU+zGoJrGIdaPU4hKbl8tXmnFjcEILvuTcYIHi52OCR/UJ9F8k7hpw/bOte5rJHO4k3RHdyVTlhcxxAK2vxa79CutjCMuBmIgijNlW0cPFp2doFjXCoqXHwQPFKSH/LMlC/mVrLRBzPHpFI+3asHwhSN4zn6kRqtwCuhwY5Xmn7Ce2tLkr6Wt5wbP2HxFPNFJtMv6+3vmlDknmQ8kX5gP9w3LlnjN7I9BOnoHZnDMC9jXXAHJvd8XyPvWg7TtBhjIELbI3ejfij4H8AB+TjWUgtLdb/kdJTfH3pWdxE2U7tbib/1PuGX6mIyRY9Nk3z9w+0aVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CO1PR11MB5025.namprd11.prod.outlook.com (2603:10b6:303:9e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 13:11:09 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Mon, 21 Aug 2023
 13:11:09 +0000
Message-ID: <86ba753a-f4a3-3d0f-1924-2b31666c3346@intel.com>
Date: Mon, 21 Aug 2023 15:10:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20230819094239.15304-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230819094239.15304-1-paul.greenwalt@intel.com>
X-ClientProxiedBy: DU2P250CA0029.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::34) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CO1PR11MB5025:EE_
X-MS-Office365-Filtering-Correlation-Id: e46c4ab0-73f9-40b2-4894-08dba24815bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jiT0AFpUzMbfI2sjYU8FpO9PgUMF2lwE/5ytzLOC4AB/LVfBHQAo4qAt26JxaBGsxlwZSO47Y8XsKbL5/4XKZnG+lkz80ZKb0t2eGxx3CH2cYJ6h3jV10/n9CSjrIsUrhDjJ+xsvHmISJxrYGbAC/WBZt5FH7t3ExyBP9/3QI/x7lnN63eEzsdCl3COZd8zZBH+SGpqlY641bN4kJ4SH6idNgRE3bawcyoEWkPs6EaBSNcLbmElyvS2Fafva5rVCPQYdXFdkVMB1oAc3g01A+wXk3lyVwQTEpScWNJqx+jR0BoY0NCPdfovjyhSsidxvTf8eD1jvIBPTp2ESP8Qv8yD1e6GD83antvjKxXMlxl2ONIlh1Qe8IFUSstbWhCC/LjA5uKr69hq19FNWGbTyO4/T8nAREBibp+wLNRisSWSAoLgC8PrYH8Tj6/U7XyIuXHIdLqubBep0i6e2cHIlNOx3JHPyYVVcdM4wpnth7ExEP+sAsLwG8QcC4ASR18X9m5Q14JaEOr29bE+C8qpKtucpmb5mUJa//4gYNnzMYmIL/YdsecUcdYTcZSGkT+wXqsW+ZUr0KslZcooQs/EYJHx0bD1YmdA1i6ACYKdwYycO/N2tbSP7RLpYyO9WLNGoDy1AZgdTeO6TMjhNA8UYXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(38100700002)(6506007)(6486002)(83380400001)(5660300002)(26005)(86362001)(31686004)(31696002)(8676002)(2616005)(8936002)(107886003)(6862004)(4326008)(316002)(66946007)(6512007)(6636002)(66556008)(66476007)(37006003)(82960400001)(478600001)(6666004)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1prcTBzQTIyUEFORHRwMmhJZUlHR1RsUVI2Q29NNU44NXZGQ3dIZnJGQVhX?=
 =?utf-8?B?aFZhTEZpKzNoRHluUmtqRmN2RG96VlZwS0I4ZDBlM1ZKMVpTTEo5Qmc1ZTlr?=
 =?utf-8?B?bFpiRjV0LzlpRzFLUnFjY251UU1GRWpra3RxVml1dUQ3emJTMktHZDNOSTAz?=
 =?utf-8?B?RjZhNUFuQUE3M0JXdll5WE12M2FRYlZYNGc5Qi9kVWZPa0Vhb0RqZEwyWmN5?=
 =?utf-8?B?SlYwNW5TbTlyQXBlNFBmYjVVc0RTcmZOaGw3TE9EYkROWCs3OHc0S3ViNEt3?=
 =?utf-8?B?dWZ0ck1RUGxoczQ0aUJmdE9RQnJZL2NKZjNNZ211TDk4a25EcTVLUkErN01x?=
 =?utf-8?B?L1dVNUpsZm5ndDlueGQySHFPMkdOTG9yZHdsOHRKUWFHZjk1ZW9ZdkVGLzAz?=
 =?utf-8?B?YkwyWkRNcFFnT2M3UGd4NGpGbExaeG5EcWI1SXZ4UzJzc004ZmRPcHFuMTFW?=
 =?utf-8?B?ZmZWTVBPNWxYbCsyaXB5bVRkanNMdyt0d3lhZXNxQUpTYitWK045NDJoWFNT?=
 =?utf-8?B?TE1XS2xuUTRqZ0tIaWdrNk54SUVRYUJ2OVBpZm56UmZWU0xtZkZoZnVkdVhI?=
 =?utf-8?B?S3h1MkJLQ1JOTjZRbmhaS1VWWDdlSE1waUIreW54bVY3M0tPRndUaGdXNFVl?=
 =?utf-8?B?eFUwMUNpbUpCeUVUR3ZXeTRURlhLV0owVGlEdGx3TlU2SUVCa1FXYXArck93?=
 =?utf-8?B?czg5bkVOcStaUkVyTWFSQktqSGl1Y0pPeGQ5MkdCL0w4c0xVejdFZ21QVU1y?=
 =?utf-8?B?UUUxQ0Fhd25GRkZCTHdIL3UzQjE2Z1NGSk5lNW5lTVIvN3k3bzdRRGErZkt3?=
 =?utf-8?B?T2grc01taTJTcm80clhiSC9tQU9SWStRYklaUFdqdGtNLzFNQ1QxZXFaYTlW?=
 =?utf-8?B?WGptMjJjR0xLQXlhd2NISWRET3Zsb3FqWUJaakl5Zkk2TjdRTWlXZDdGOGZ1?=
 =?utf-8?B?dk4wZFV2REo2RCsva2NQanhtODZzL2h0ci9jQnlrWmIwc2RhWEJ2c3hkWkJP?=
 =?utf-8?B?NHRxRXZYZ1JPWlBJNVdLTTJSc3ZmQUtxbVRzaThEYmpPbUlmWmtJVklBcXVy?=
 =?utf-8?B?dDYxdUZsOSsycEpDZlNGcStFODN2dFh3RnpONk12enlsT05BNzVmbHlDclVT?=
 =?utf-8?B?S3kzNEo5akdJeUI5UEdPaVdRYnBoYnhTV3NjOElwM0F4MktnWHBJdE42SWdV?=
 =?utf-8?B?WnVHTkc1ZndXU1FIeHJxK2x3SzYzbXJGZW5PbXVCeFVRVGlQTmQzUFdDRXJY?=
 =?utf-8?B?c0cyR1FVLzhaeHZjRGZ4ckR4aHFOd08yRU5BODVWZFFvTmVMRFlFcm9pZ0k5?=
 =?utf-8?B?dUFjNVY5YlRIbXZiRkpLVGY5QkdwN1BXcDYzam1ZNzVtRGxaNmRZWGQzUitr?=
 =?utf-8?B?NmFvV0RYdlJjRDBVcW00U3hwZ0pDelI3eVVVUVhuTCs1NVg4LzliZUVtdHlH?=
 =?utf-8?B?a2ZWYVFrWHVpK3FpeWYrWmxiaWVzbjJmM3RWRkhrUnhwQ3VIM3pSSEU3SnFW?=
 =?utf-8?B?a25FQ2l1aURlaFdYZTl5U3dTWUxWLzQrVzVrc0pTSkhyTG05VFZKV0tpelRO?=
 =?utf-8?B?NnNJNFNpdjRhakV6d3BLZFlmVUpNTkFPUktiMTFLdUNqNFRRUjBiZ1RkOHZF?=
 =?utf-8?B?bk8xdkhPcFRGTEV0eHRxZkp1WFU0dHRPMXpnQkY0N1FCc29yVG1ISlJSQXNM?=
 =?utf-8?B?eXI4cjUzWE5hRXNpZGppS2JOL2RBenV6RWVZSkpyQWVJa0E1TzV4eGlJdW80?=
 =?utf-8?B?VkNGbDFaNE9xaVoreGJMZVppYk93T1dKbGF2dFhRL0Evdi9zNlhnNkkxclFw?=
 =?utf-8?B?dnUvQTU0aS9DWjNpdnRFY1NrZHRlZ0RpbmpQdlp1QzRzaU4vS295SlAwRHJQ?=
 =?utf-8?B?UG1mRWM4YjBNbkg1M3lHMnF5NFIyNE8vaVF0cmYxd3ZPNXFRVk12S0dtTTE3?=
 =?utf-8?B?UTR5MXlOcU1wZ3JyUWkwTVBnTXMzZFpnS3pjSkIzWU1zKzg3RUVwVjB0ckth?=
 =?utf-8?B?MG9icDdQckd2R29SV0JkbzNIdkY1SEJkTy9HQTRSTktrTVpjYURrQm12YkU0?=
 =?utf-8?B?eE1NUXQ1emhpUGFKL2xiOVAxUTA1Ujc4by9MVjJwTkt5SWJRQU5YZEJ3RVQx?=
 =?utf-8?B?MXdWMkZ6WTVuOXFrSEtuMUJFZW1XeUQzRGhQeXorY3JzYWpPN054UHc2cFlT?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e46c4ab0-73f9-40b2-4894-08dba24815bd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 13:11:09.1374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h6HWt0dQEE8aWyQBUP5kGMPeiH7JPBHYgTjK1uAs9H5A9AMRZY3QBiEwWdhOrHdaI/dZJ+b2XS08CpPhW93LPW1CwiB6Iww0XVPFRvq/B60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5025
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692623494; x=1724159494;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JtHm4FjX5Vihc+8ECmsbkSnw1Z+g52sZQoimkB9+jRw=;
 b=dbH5OvoZxmNZjFdQn06yExvPOWpsdRFcNv9LO/PAw4ZKM+3X7C7kOXzQ
 Q7YpA96nkzZpgOyhfdhODJgtbQsdCEN56ga9Tw7iEXUxygwbi5YcIGmPS
 Vzwrj1PmSKfbpJhLysI5M6YnhbV1FFr2y3tu9/q/XDourSfUShIFt03JU
 rOZccJWITi53Amm5FFbN0QqMAET621+phkwbcxA8pkHt7qTgDw0nSLPYS
 W2jl9dskmMh6eAuMCUvHg4OnAfD4tIRsiBuB2dYfJhwgmSFzjpCh8Gpjr
 O8j+EMMvWQgpk05i5dMXBSUN42uc3qlnN221F9V7dgj6YR3CMDmJyK2+v
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dbH5OvoZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 8/9] ice: Remove redundant
 zeroing of the fields.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, Jesse
 Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Sat, 19 Aug 2023 02:42:39 -0700

> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
> 
> Remove zeroing of the fields, as all the fields are in fact initialized
> with zeros automatically
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 52 +++++++++++------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index ffed5543a5aa..d6715a89ec78 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5605,32 +5605,32 @@ static void ice_pci_err_reset_done(struct pci_dev *pdev)
>   *   Class, Class Mask, private data (not used) }
>   */
>  static const struct pci_device_id ice_pci_tbl[] = {
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_BACKPLANE), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_BACKPLANE), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_QSFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_SFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_BACKPLANE), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_QSFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_10G_BASE_T), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SGMII), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_BACKPLANE), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_QSFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_10G_BASE_T), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SGMII), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_BACKPLANE), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_10G_BASE_T), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SGMII), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_BACKPLANE), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_SFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP), 0 },
> -	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT), 0 },
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_BACKPLANE)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_BACKPLANE)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_QSFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_SFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_BACKPLANE)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_QSFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_10G_BASE_T)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SGMII)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_BACKPLANE)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_QSFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_10G_BASE_T)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SGMII)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_BACKPLANE)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_10G_BASE_T)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SGMII)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_BACKPLANE)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_SFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP)},
> +	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT)},

If you want to remove them, please keep the code style consistent. If
you have a space after the opening brace (which is correct), leave a
space before the closing one:

	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT) },

>  	/* required last entry */
>  	{ 0, }

Why wasn't this one addressed? :D

	/* required last entry */
	{ }

or (saves 1 line):

	{ /* required last entry */ }

>  };

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
