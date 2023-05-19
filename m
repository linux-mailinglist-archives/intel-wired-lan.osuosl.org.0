Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 156F3709CC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 18:48:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3479542663;
	Fri, 19 May 2023 16:48:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3479542663
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684514883;
	bh=L78+weJrMeNYiuvjLCbJG2YUW48p09IRygT17nyLl7Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uPHWRh4R6O6vY+jc8GNOMWjTUd0PGAjjXUBs/JRQin4YM/6nqHp5r7l4m9eKfQ5BJ
	 WdHRuDNQh6kftR39ABNZE3rYDZ6LBsTa49lQ9DXRGSvkS8nHTn2h1khyG57myMYoJd
	 +FLhoQQZFhNr8DnHFW782XJz+kjnR3gfl1CK+3ud1xIpa4d6C3MebMs1KT/DaMVAVg
	 oniSpRtVdVVlbAqEPg5vWuhccH77dGAgFIqPTIgi+LK8HXclxQN8jG+IbHHGJT4LqD
	 S6zsjksiMhdHi1TVLC//Gn/49RIb0BXvtFlc3w9flYV4BgLuN6IO8cAQChW08K/OD+
	 5ocsWdcX6Wm7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4lEJ-P-l4RF7; Fri, 19 May 2023 16:48:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF5FA4265B;
	Fri, 19 May 2023 16:48:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF5FA4265B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7BF1BF362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 361124038D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:47:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 361124038D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dC1DwkouYcZW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 16:47:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6218240190
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6218240190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:47:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="332785566"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="332785566"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 09:47:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="814799646"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="814799646"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 19 May 2023 09:47:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 09:47:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 09:47:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 19 May 2023 09:47:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 19 May 2023 09:47:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rk0307cpfa9/fYWd+/yziUN2uUBBx3Xt+FOrZrip5ZSx006Xcv45MzX7i7rIwy8nzxzxs4zuEJCszQm3hJgJfXzasmeXVhrerpLlLDBFPKQR7l2th4eXxMKWgEU4XSJMyWvr53dWANOTkEspqg2pneY9f6mivUwnqKmG2apPD1dT422V6nz5fFdDH61j3nPY9QyisvMGcHqOGBp2bL9t2uYT/3LllxooOcuKdyD1FrK9oD8oazZlx3rl/4CU4zeYFTC6BhhbwKNNa9Sd4atenzAaaU9c1LtXDaZrw74OWwfs0ekdI9EBYy9paBSbopJYayh4QMgf1N7o4hCi7qm/vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uIzDZjxsWo79fZruEBi9AEVg+LKCY0Temb5tuyt/Dwc=;
 b=nkM9wijoMugCeVGtC+l8ZLsrHJxXqj5ilJJd0dvJYh9O7PMx3ftL6T99JvV3fu80bYJgy9VZT+7c+4DT8PzShaxBw15+Kl4Ydp5y8aQFWEtgZainhVe0s/fSffOo0+h/SUfTxjvJjjX+rP6i7JXT6HkaYa9kSmV32vEPpUvG4C9qpuFR8hMl2IFGtfRVm2oX3XufoQFFMD4AnJHFQoC9eRYetFh67+1DXA6Q/j4hm0vnLckOMLN3AP2+qOvEhZprdo1lYHy4WZ9YiUfQ0MxjsOsdKVnqOOnRBJeXlcAfZCrEv+FS6WPyJF4V+K7DlZ3/nJvIiDxV7LIk532Faf8ZJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ2PR11MB7503.namprd11.prod.outlook.com (2603:10b6:a03:4c8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Fri, 19 May
 2023 16:47:42 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 16:47:42 +0000
Message-ID: <0c40b366-cdb5-f868-00c3-d8f485452cce@intel.com>
Date: Fri, 19 May 2023 18:46:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Larysa Zaremba <larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-2-larysa.zaremba@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230512152607.992209-2-larysa.zaremba@intel.com>
X-ClientProxiedBy: LO4P123CA0090.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:190::23) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ2PR11MB7503:EE_
X-MS-Office365-Filtering-Correlation-Id: f92ac774-65ee-47bf-8add-08db5888c328
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XV/klGizS/jl/dgc/7SlYqIpNIBISqtRnovxroyQyAUyJ/58F1N8uKYGw+m9RSwXkixLMGQvFdvO1gu4nzC3RDCg0XjuhU/VJwmL+doj0V0dfMR8/62w06FTlYg90WedRznpjzcxoN0V3FsnEoJuRH8UbI2KNcj7NXooJ8bJkOPL+asaOVmmNKL5ZnSgjUuQDBuCcTvozg7zoxKIkjTkcz+ERHl62Oa0TDtEPdaxrFYQwtDNJvCdOa2lC+8xnS941PdnIx6HZ76RkoBxH3z8UfyNvary9lXjUdLZayLeHUYb14wTFJS1R11AympLAfuPWtroGOKycLM58elWooJNYGax9d1hgWL/3DfrearlPV5njDZyvxgWnEL1nCRIuXfwkJrDwSevstBprzgWaC9+B/AG6n5rQHTaivquqS5/q1tDeMb9f9cPx+lzJ/r2DNfdMXtFNFPNJ/TuTRvohckHPtATYRW4OQgbNUUX4o1bHFi/ZD/adO0LCgkGLn5TvSyLAgzt4jZ4a/WdqkKaEEHjDnJM8v771y+mflc58VKWW+1DvDAXqDbmN/hTHkGIS60b/w5OKPMEu/Nk23G5OOCShHaJnB+6rfOk+AZypmNZIkFly6oVw8YjJksz+j7/s7GOREtxiu8Rhg8LRGQf2ssrCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(396003)(346002)(376002)(451199021)(83380400001)(36756003)(478600001)(66946007)(37006003)(54906003)(6636002)(66476007)(6486002)(66556008)(4326008)(86362001)(316002)(82960400001)(2906002)(5660300002)(6666004)(2616005)(8676002)(7416002)(31696002)(6862004)(38100700002)(41300700001)(8936002)(26005)(186003)(6512007)(6506007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHZQSDBqaVh0MzlDT1l0N1dKTzBwVy9zcEZTRkE5dnFKcG5rcTJzUU9aUW9T?=
 =?utf-8?B?TTArN2NPSlpGUkxkTktPUDh6eGlic3U3OFBhR1JhUVRyNEk2c3Q5ckRlWHNM?=
 =?utf-8?B?VlliVVBFL2VLVUE3TjJ6Y09Cdm1PYUVFZ3k3aTkrT0dmd05UZHIxQlNCcWdp?=
 =?utf-8?B?MVp4MnFFdVlFTUFCb0pnOG1DemxNMGp0WVI1L01zaG5YdnpSK25ScDNjV1Av?=
 =?utf-8?B?ZFlmR0NxdXpjbkt1SU5iRG80SmoreE9JcGxLdFdpOFdvKzJsQ2x6Ukd3NzBa?=
 =?utf-8?B?a08zL28yb1Irb1dLR0JjWXI0T1VqSUlvd1dINW5sRHFYbFZtbmI5RjV5dEFK?=
 =?utf-8?B?a0pZQ1EzNlJmU3EvbWg2Mkk3S0U5d2pTWEJZREp2VEludFlacEp4U1pSQkNI?=
 =?utf-8?B?OVNkaFpHZDBMV3pDNy9qdE9YbVN4UnNFRy9BdkRSUnp4ck40RjdIMWFjaUdY?=
 =?utf-8?B?bGtoSU42UERDdE93OUFDSlF4NXhvak8xeUVXdm9vU2FxN3dLY1M0KzVQM2Ez?=
 =?utf-8?B?RlRLQkluZk80VFlKK2xtYWxxS2w3dU1wTFA1RGxuZjgzQkZFcHVsRTZDbkhy?=
 =?utf-8?B?dEhjOTNwWjNGTit6UU1VdU9SM2FseXljQmd3eGpqampJK2JqRDAzTHVhbmll?=
 =?utf-8?B?bWIvV1ExcUZtazUwYzB1b25lYlcxRTF1RG9kZW1NL1NMU0h6RWQrS1doeXYv?=
 =?utf-8?B?UUJYNittQXpIdUVheE1YaDN3L1FsOXBoTkJWTmlYSFd4d1llWjZSenIrcElj?=
 =?utf-8?B?dzRuWTVvVlh3ZVN1aHRaRC85NWhQUlNKeSs5MzV2ZEl0c3VZU1Z0MFduZ3Jl?=
 =?utf-8?B?WThjYzZud1MwQUZvTzVrR2FVSFluUUhMbVYvbjBFWVZXZUdvbUNiYzVTUjZZ?=
 =?utf-8?B?eDRBRWFVNERoWU9hUWJiZmpjWFAwR2ZXY0NndWFiaWZ5WlhqNlVlMElaTkNH?=
 =?utf-8?B?cUQ2YXFTVEplTzZodDdUM1VwTU8yQy8zdkdNbUoxeHJBT2pFZmhndnpENXFi?=
 =?utf-8?B?TFpCRG0ySitxS2NYaGNDUHRwVHNDUGVheTE3bDNvMW12NG85Rmhjak9jMnEw?=
 =?utf-8?B?NG0zOXJLL3ZTOVEyYmdDVmo0dkZ5dGRQOHBabTRpRjlHVkgwanBnc09Bb3Yx?=
 =?utf-8?B?THE1VkdIL3FhcHBscU1ObWQxQjlSajVxWFJnZXZMTWJGTDZ3YVpnVFpHLzZj?=
 =?utf-8?B?dkorVXZ2am9pUjUxZkowaC93VVNHeHdCMlR6Z3EwUkJEY0FXNEM0eWsxTkds?=
 =?utf-8?B?ekIzMmYwR2JjM2lFQ3k2WFJQV09tQTlmWllFU0VQSTQ3OGgzTjJzWWkrc3FI?=
 =?utf-8?B?L0h6M2xwTEV5SkxDSzNiaEhpSXlVMGFWbExsZXJiQWgrV2hzdi85bmoyY25Y?=
 =?utf-8?B?UjhkN1RaNzVzaURVakFWWTh2aU5XUHN3ZXoydGhYaXA4VEFPVlVBYVRyc3BY?=
 =?utf-8?B?a25oUExIMSt6UE9rUEt6Y1N4V1FPN3Rna2toWTJCdnVFN0ZRMzRoS3hIMjV1?=
 =?utf-8?B?TmNZUVR6MXBOc3Qra2M3dXFJS3B1d2RGQ3VGLzg0am5Lc01wc01qSUdPZURN?=
 =?utf-8?B?VFBVSFhUTzJ0NU1JT3ZTaTV0VzlQelFLdWRLdFpLNkpiSjZ5SFJhTysvWFd3?=
 =?utf-8?B?b1pIdlR0dnJhcUIrRWNTUWxDcXdYTURKSmE3WVdxRHBKYTVrNVgwczRZeTZy?=
 =?utf-8?B?WXlRTzZxMnJnNHZveXV0aTRzUlVYUXJvZVJBTEswV1NjdzAycEJhZE1lMGhP?=
 =?utf-8?B?UUxUK1ord2ZlZXBQdXFtdDFNR1RIZlo1bUVtTDJEVEk5c2JGZFAvdW9ybzB3?=
 =?utf-8?B?Ny9WellBNlowWERPempCcnlOc0swWHdvcEZ1RHpyK1VGZGIyaDFJRDB6OGhx?=
 =?utf-8?B?L29NbVhRRXpJVWt2a2RydGJucUJtQWE4ZXZ6VnBUMEZXM1lJRGFURGhIZTcz?=
 =?utf-8?B?WE5SaG1xaVkrSGVGM3hjKzNhd1poMGliWEdaZCsrNCs4cktmd0UxaFV0MXN3?=
 =?utf-8?B?UXUwVVlUeWxTbGRqa0o3eHFCQXV4Y0xuQnFkaGlCYjlxRkN6RmtFajBuUmNM?=
 =?utf-8?B?dVdTdkJiajJ2TTVNRVlDOXFscGR4SEJrQlVIcWlBZUR6QjJGVjdaQnpsemhB?=
 =?utf-8?B?T1l0RlF1SnBJWERQb1JXQm5Bd0ZLQU5yNFVYeUxjRTVVeGRQQ3M2UStpckU3?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f92ac774-65ee-47bf-8add-08db5888c328
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 16:47:42.0325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pTYl3gW/ui6YEkuqOf2KJ6NIGAOqZn7x2KzEwR3GzdNW6JlQqxpJSbZvyE9UMJA6tbv+iDyqrUPOo73Bi/V5lmQ62FMhIU5BlffPyqUZ9Hg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7503
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684514875; x=1716050875;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=me5phO3lA/mXbO/Cxd7g/Mk0g+Rlz9K/uhgHAMUEuBk=;
 b=d6Ak/J2w7Mo8NeuI7DGtr0lIjsc9pOaFfUHzZLNzuiFABo87tzVGUf7B
 ZgIUqYh12aEBtqvNYNOJi9LKS0RsD3lGX6+tnJZ3DV1gM/eUMgoNtGUo8
 jku1en4iNoPTUbfRBYPtuDE4Z9l7sJ9W0fhAvmLmXu3VP9DCQBrJ1TSJF
 x/xSdiDyHxjUBhNFvwpuwuV/W04NrUY9OAKjm6uX/nZf1sTYyMeFIEXkD
 BuDIXUPg9wgjp2/eMsKKoeTMsZFmY1W/LSowLFkYVsjetJMntbLIcamr+
 3VlT9ZUL1YbcpmW7rk+HK6yyuojtQEbbgWF+8GwPY4t+tB5gLN3XuHzrS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d6Ak/J2w
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 01/15] ice: make RX
 hash reading code more reusable
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>, Alexei
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Larysa Zaremba <larysa.zaremba@intel.com>
Date: Fri, 12 May 2023 17:25:53 +0200

> Previously, we only needed RX hash in skb path,
> hence all related code was written with skb in mind.
> But with the addition of XDP hints via kfuncs to the ice driver,
> the same logic will be needed in .xmo_() callbacks.
> 
> Separate generic process of reading RX hash from a descriptor
> into a separate function.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 38 +++++++++++++------
>  1 file changed, 27 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index c8322fb6f2b3..fc67bbf600af 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -63,28 +63,44 @@ static enum pkt_hash_types ice_ptype_to_htype(u16 ptype)
>  }
>  
>  /**
> - * ice_rx_hash - set the hash value in the skb
> + * ice_copy_rx_hash_from_desc - copy hash value from descriptor to address
> + * @rx_desc: specific descriptor
> + * @dst: address to copy hash value to
> + *
> + * Returns true, if valid hash has been copied into the destination address.
> + */
> +static bool
> +ice_copy_rx_hash_from_desc(union ice_32b_rx_flex_desc *rx_desc, u32 *dst)

@rx_desc can be const.

I'm also unsure about the naming. Why not name this one ice_rx_hash()
and the one which sets it in skb ice_rx_hash_skb()?

> +{
> +	struct ice_32b_rx_flex_desc_nic *nic_mdid;

Also const. I thought you'll pick most of my optimizations from the
related commit :D

> +
> +	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
> +		return false;
> +
> +	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> +	*dst = le32_to_cpu(nic_mdid->rss_hash);
> +	return true;

You can just return the hash. `hash == 0` means there's no hash, so it
basically means `false`, while non-zero is `true`.

> +}
> +
> +/**
> + * ice_rx_hash_to_skb - set the hash value in the skb
>   * @rx_ring: descriptor ring
>   * @rx_desc: specific descriptor
>   * @skb: pointer to current skb
>   * @rx_ptype: the ptype value from the descriptor
>   */
>  static void
> -ice_rx_hash(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
> -	    struct sk_buff *skb, u16 rx_ptype)
> +ice_rx_hash_to_skb(struct ice_rx_ring *rx_ring,
> +		   union ice_32b_rx_flex_desc *rx_desc,
> +		   struct sk_buff *skb, u16 rx_ptype)
>  {
> -	struct ice_32b_rx_flex_desc_nic *nic_mdid;
>  	u32 hash;
>  
>  	if (!(rx_ring->netdev->features & NETIF_F_RXHASH))
>  		return;
>  
> -	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
> -		return;
> -
> -	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> -	hash = le32_to_cpu(nic_mdid->rss_hash);
> -	skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
> +	if (ice_copy_rx_hash_from_desc(rx_desc, &hash))

likely()? I wouldn't care about zero-hashed frames, their perf is not
critical anyway.

> +		skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
>  }
>  
>  /**
> @@ -186,7 +202,7 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
>  		       union ice_32b_rx_flex_desc *rx_desc,
>  		       struct sk_buff *skb, u16 ptype)
>  {
> -	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
> +	ice_rx_hash_to_skb(rx_ring, rx_desc, skb, ptype);
>  
>  	/* modifies the skb - consumes the enet header */
>  	skb->protocol = eth_type_trans(skb, rx_ring->netdev);

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
