Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9B7CB50A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 23:09:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A82174172F;
	Mon, 16 Oct 2023 21:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A82174172F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697490561;
	bh=0ivLXcML9rh8gaDCV6knTzn9ESM0Mgb7joWf3+Omi5A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pM8WN4VqJ6MpZGDyQjyHqEnFxJSrqpGTo33KuS7PNA87ATW29tsGfP3rQXQvk10zF
	 xo1w9aATheFrIvRN0cyA5CLHYax+lXH1pcLNa67BbPvipwC5nWTaLE8aQvMXu4NTzy
	 4uqiUhmZEBLZJGSRCwLV5+ySsyl8pKPxwPVqGN/bikU8c1mkI6aniVIgEq4SzgYMW2
	 f42yU3jMEN4yFELp88aL9jbGKweZ13mtiffMG+8KM6SNbXBis39SDfdr0XnVWTNrgg
	 Rb/Se5QjzKLzbEJxlMkyTxIkYjOu6boaGebYnsVFebvQtsPgUBsEh+obTZg6wjfbUg
	 6I7qhQvR87Nww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wDMS4hPDDCh; Mon, 16 Oct 2023 21:09:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2603441723;
	Mon, 16 Oct 2023 21:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2603441723
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35AFE1BF341
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 21:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19C02416D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 21:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19C02416D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEc1lVpCvRur for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 21:09:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E531F4172F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 21:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E531F4172F
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="449858233"
X-IronPort-AV: E=Sophos;i="6.03,230,1694761200"; d="scan'208";a="449858233"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 14:09:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="790953507"
X-IronPort-AV: E=Sophos;i="6.03,230,1694761200"; d="scan'208";a="790953507"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 14:09:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 14:09:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 14:09:07 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 14:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVFfYW999+2CcfZJgHk4qfT0M+aKKhG71zwmPpRRJNHENjkyVlzLpLtsK7alTfHQRaqGI/bv1nSbYQp50ZnmIFll074yTGXPUDHCdFhM62Hs/QVRDWZb1Luey5CC824zbChuu4+wGOK+PN2qn1qR9IDGg679n5h+QGMBmX8YJL36zm9WE1Ea50EKzajN+VrQ/8HLFVEAV3c5ImlX8GKbO5J8y8inPkIbkycdRw+hxiwEsPsmRuJNuciOp+cYmmIZz4/1+47ocYR92yyJvOBvQVEzy5qWUbBnBx48opgWWNDAaMnNgAooyQOaZRzYLw0bps/4/LYqpDjX4ODp1eyfDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7yD1udvURDvEJDfR6IMSvNHfRpcBhYko0WkVfuQ8+s=;
 b=k+GH9gqB6+yAf+U1RCqWh7BJSbaJQHdzSsGlY0f47xulytsZNm6vhh3lyJu55U6ZBtyARWpnp1uuXEZ5t5sOBts353/u3G9Vn72z73Q0VhmJ6/3xQ7Z2+wg85l7VZ8rCkZqEIvNwRxeRGA5SglA8n1qZ4+s262V601qoXNWqnWBVtzP33/2BgCJt17Dd/gpu4GVQxfIXXZVNjJJ0IMtsCmmH2FcElj/B2t6I0AtPxRpc/pXJE5HVri+HBazKBoNdgfYVKkSsH7v+E9mFPMOYeDomIynIb9fyQiXv4N1IY2uja+C0n8eZv3+00G/+LMmSv1BWc9KgDqFzx+K8as2+Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MW4PR11MB6863.namprd11.prod.outlook.com (2603:10b6:303:222::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 21:09:05 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 21:09:05 +0000
Message-ID: <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
Date: Mon, 16 Oct 2023 15:08:56 -0600
User-Agent: Mozilla Thunderbird
To: Alexander H Duyck <alexander.duyck@gmail.com>, <netdev@vger.kernel.org>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
X-ClientProxiedBy: DUZPR01CA0104.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::17) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MW4PR11MB6863:EE_
X-MS-Office365-Filtering-Correlation-Id: bf5da3f8-b33d-4b44-0e78-08dbce8c20fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hGun5meRa6o72qRmCXkX0+p9zhn+rI9KZ+wqb8g35yqbbw/FpQOn0PKpo6laxzPSrA9Q3S7tW5l9N8f3poh3lIk2Pr/86zm+qTL+08SZEod9ox56c56MkXSoC1wOEqR+rez+u+SeI7SvYJt/BdNmJ0HbBHRbR0TalRCuZfQizfohTlsWfAHugyQyXUgD7JoZDIaoS5qYdHjAUawg3kW2G4n0xqjSHsFlxYB3ZpmVfoYo5l4nSr9T80/RqK7mVhpHKxroL98L9tEvTah2laAhm6RLEtjDeolxXStH4xT8k1hinJyV/ycsudv9k9mL9v00qT66xC9nCOyUWJCX4pQE8RDs78zE7HQLXK00w9GT+LXkGl6uzv5lpm1tiVdaUHtdfBXmcmhOLyTlyUrXu9q8YMrBsSCDAvXJMcSFZBA63G9LfBFNau9taZMCBL2P8f1TZtm2Kbm6Ed4JzjJ4uCu8pCogH4B8tQI9JP4lDVlWBrcIBf4wLuXzB8b4ROZ1JQ22LnIsY+lGbe1mUOnkxoyIrjjuVwTLb18pdQZ4dJkNPZpWc+LUiPJejV4UeDvIMOom5dNPR3fqMWDmYDQHCvprkwfDFNm0/xJGNaVpvrVO//Oypi7P5VXqd3qNetW+xPm8zCuz/l4QF85y7bEWWQL0Y21y9L3e5r3LTMGUq0zyRXY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(53546011)(6506007)(5660300002)(44832011)(2906002)(26005)(36756003)(2616005)(4001150100001)(107886003)(6666004)(83380400001)(82960400001)(38100700002)(86362001)(31696002)(6512007)(7416002)(6486002)(41300700001)(316002)(66476007)(66946007)(66556008)(31686004)(8676002)(4326008)(8936002)(478600001)(21314003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG50NVN5MVFOSXAwTXppMXd2cTJuZTBGSnplZ0JkSE9TbUNPaEV0eVFKRU44?=
 =?utf-8?B?eUVRN3Y1M0NiTE44d0srR3pEWm9PVHZDYkF2OE1MbEJEUGhIL0tRTTBTVTQv?=
 =?utf-8?B?dGMvYzZFb1FCN0RudTV5dHpCM0NSWWVFQzJDV05PVjZ0WVNaU2FvN2JTWEdZ?=
 =?utf-8?B?cCs3bTI3c1JraUJ0U2RBSU4rSTRxV0VmM2hoK0d0OXlDYTJlS20zd3RaNjFs?=
 =?utf-8?B?STVqbGEzYmtJRUJXeWdYenhncVp2UE5ja0c4SUNzQ1VUdkE5Vk0vMUdOdVRq?=
 =?utf-8?B?aDBnNWJoSHRheUVXdElyK25tSUdsVEtVTjdWNVJ6RUc2bDBDQ3U1SVIvSWZD?=
 =?utf-8?B?QnByVkpuVEdQM2htcURNOW55eFZkUUM3MWErTkNDU2NZcDlEOEpoWjJlMVF6?=
 =?utf-8?B?K0FCZ0pJUHd3ZityMmlHeTlESHFrOGowTU9VTzJRMEZmQ0xrWHZIT244N1dV?=
 =?utf-8?B?VkJHQ2ZpdFBoZGJpMTcvYitZcXZrc3J2cWZNUFJoTnJhZmc4QWhteUwvc08y?=
 =?utf-8?B?OFIwM2VjN2RhWWxrWWVuVVR4MVNPcDJ3R3lzcG9DVVN3TytOYklRUytjZk4w?=
 =?utf-8?B?UTgyWkl0REwrOExzd0JzQ3ZlM3lRMFRzMytvWTJ0M3p1KzFvQnRZeFljZmdx?=
 =?utf-8?B?MzRqNnNsMkk3c29kR0dETThsZ3BpMGpKRFA0OTVwRzFYOUhxSWtoV205QXBi?=
 =?utf-8?B?OTk0Yi9rT1VkcFZwU0MzamdsUzlNc2ZQcERtY3hGeXNFU2psNDJacWFCa0Rx?=
 =?utf-8?B?MThTNGs2bit4MXI4VmdZcm43TXlaZVFpNUZ6RlM0WVFNVnNXNFBzZFpmN294?=
 =?utf-8?B?STZIeDVJK3o4RVVrT2R5K0hSdkV2VFp4bDNvRGRpL1JQK051dXVoenAvUFMr?=
 =?utf-8?B?SFJSNklJVGJQQWRBSkI0NjdRQWYwaVhuZ0o1MzR1OHpZZ1JGY04vMU8vNDZp?=
 =?utf-8?B?MGluTzRYSHJQQURPTXE2NXJqa3YrWit0N292NWxNOWFhSlFzUTc2cFFoaTFh?=
 =?utf-8?B?Vm9iaHNwb0l4RHcwUWJmdUdpTUpGaS85QmxYcGI4S0VJQ0gwcXh5ZmVXYlFL?=
 =?utf-8?B?dkNUNndBRURRS0o3QVZTeFRPZGFWQWZvY05lMDRFSVg3QkIxK09sQU0zZWRB?=
 =?utf-8?B?Q0VsR1piR1k2Nks3SjJPTlJGUC94NmNvTCt4VElOMXNPM3JNUGxRQzdIbmRy?=
 =?utf-8?B?T0F2bTFQOHlyVDZCWVNpTFZLYTVMdEh2WFUyNzZ0SGNrdmhEYVYzbmo4aVRD?=
 =?utf-8?B?YjNDdzJjY3M3MmNYNkU0RHo2dlEySElaeHNUenY2Q01lMkVZVVNyUzBkV2dD?=
 =?utf-8?B?eFV6czRNT1hEWXk3THc4alMveGorQ29IUjlqSG1idmVhYnNQejZWSGtENTN3?=
 =?utf-8?B?U0RlRmQzV0p6bCtWUTJaN0NrVUR0TDNEZ2xzNzR3TTM4eTgyTldNK2FYbDM4?=
 =?utf-8?B?RDdxQ2lmOFpYc2ZFRkFLSmpqVC80cU1UaUMrTVdOVWJoZld0UnlRb21IV1VV?=
 =?utf-8?B?cStQZEJCdkF1SHROUlNhNStEMGU2NkhESFNrdzQzUkw3T0NMZ0tGcGJXNHFN?=
 =?utf-8?B?NUdRN2RLaTZuM1pZcUhpWm0zRmFLZVByWjdWaktpQXhURDMxL3lrbWV6UXBV?=
 =?utf-8?B?UGxXQXJwQm5vbjB6UHpLdWtRVGp2NTdoSSt2aWNnTDhBU2psUW14U1RRUkxC?=
 =?utf-8?B?YTZ0eUhMN0ZGbmVsa0twYVJIc1VGUXF4MGl0bTNveDlITUJFWEMyZkI4blZJ?=
 =?utf-8?B?T1NoN2U4N25ZMHNBdXBMbzQxZDdrM3Nna0VUbXBMdXhPdmJ3SFNHeTZvR3VU?=
 =?utf-8?B?MWNlZlhqN1N5aHRIMGVqZ2ZXR0hIY05udjZOb1dMeUVCdlBqVmNMbzl1V3Rp?=
 =?utf-8?B?SkpuVFdGRDJ5NSszSS9YZnBVSU9jbFBDUExlUGw3WHg5SUg5QmVYWmtSRXk2?=
 =?utf-8?B?c3BCdTRFREgxOXdzMnBXYWpGU3BFMGtISGVuaHBERXBFZ2V4UVRoZmh0Tlpm?=
 =?utf-8?B?RzZ4QUZORmErQ0JZb1l1NjJTckZ4YzR0dERpQm8reUoxQ2VlVFZpM1BvRVlK?=
 =?utf-8?B?UUhieU81NlFKN2UvWUdUdE9iWmNYSXB2R3J1ZGFxNEMxMVhoY0FCVUM5QU5K?=
 =?utf-8?Q?0cBV3XJ8LKyAevX3IpKE3nZof?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf5da3f8-b33d-4b44-0e78-08dbce8c20fc
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 21:09:04.9465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0B7X1yuvduBXOsDEiERjfyfiNgE7tiKpHO/rQhxFhdNsuwFeLlixGzEQnYuqC96ON+zXqfmRwLKO9l7C0FRGCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697490553; x=1729026553;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DpqzRQs5vhroyYvlyUkKRpDO4FCDnt3SUAiaSIxfB0Y=;
 b=KwiWt4LibAAsbtJFOoREfzuB0BDetcrDeEo8u4R17IlVay20zdYE/pQX
 q7LDiNYXdylutlmm8lGyLshvBAQUsHoS7XKDVhDxp5wWqPASuTnXKLz22
 vKXtbGesTH4XGxODQy3qGoSF921HxypsfCgnguCFHajRshUjgYtD4hEpx
 4Zgb9aEjx9Y6XDkAGlH+FA5oV2ir7s7OmCBfg2NL4Nl7y4IKR4pEuCFAG
 1GeEKEdubeEtFWuBfgMLEo8rboHR3IbSpDlDBV9NaoPjBifXxfefKY58d
 YJpWY2V4CrUCl4RPPEbKLrqyT2DKxymSjPI0oDnJAD9NdT2VxtZSw7Lp/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KwiWt4Li
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 vladimir.oltean@nxp.com, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMDIzLTEwLTE2IDE0OjE3LCBBbGV4YW5kZXIgSCBEdXljayB3cm90ZToKPiBPbiBNb24s
IDIwMjMtMTAtMTYgYXQgMDk6NDkgLTA2MDAsIEFobWVkIFpha2kgd3JvdGU6Cj4+IFN5bW1ldHJp
YyBSU1MgaGFzaCBmdW5jdGlvbnMgYXJlIGJlbmVmaWNpYWwgaW4gYXBwbGljYXRpb25zIHRoYXQg
bW9uaXRvcgo+PiBib3RoIFR4IGFuZCBSeCBwYWNrZXRzIG9mIHRoZSBzYW1lIGZsb3cgKElEUywg
c29mdHdhcmUgZmlyZXdhbGxzLCAuLmV0YykuCj4+IEdldHRpbmcgYWxsIHRyYWZmaWMgb2YgdGhl
IHNhbWUgZmxvdyBvbiB0aGUgc2FtZSBSWCBxdWV1ZSByZXN1bHRzIGluCj4+IGhpZ2hlciBDUFUg
Y2FjaGUgZWZmaWNpZW5jeS4KPj4KPj4gQSBOSUMgdGhhdCBzdXBwb3J0cyAic3ltbWV0cmljLXhv
ciIgY2FuIGFjaGlldmUgdGhpcyBSU1MgaGFzaCBzeW1tZXRyeQo+PiBieSBYT1JpbmcgdGhlIHNv
dXJjZSBhbmQgZGVzdGluYXRpb24gZmllbGRzIGFuZCBwYXNzIHRoZSB2YWx1ZXMgdG8gdGhlCj4+
IFJTUyBoYXNoIGFsZ29yaXRobS4KPj4KPj4gT25seSBmaWVsZHMgdGhhdCBoYXMgY291bnRlcnBh
cnRzIGluIHRoZSBvdGhlciBkaXJlY3Rpb24gY2FuIGJlCj4+IGFjY2VwdGVkOyBJUCBzcmMvZHN0
IGFuZCBMNCBzcmMvZHN0IHBvcnRzLgo+Pgo+PiBUaGUgdXNlciBtYXkgcmVxdWVzdCBSU1MgaGFz
aCBzeW1tZXRyeSBmb3IgYSBzcGVjaWZpYyBmbG93IHR5cGUsIHZpYToKPj4KPj4gICAgICAjIGV0
aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4gc3xkfGZ8biBzeW1tZXRy
aWMteG9yCj4+Cj4+IG9yIHR1cm4gc3ltbWV0cnkgb2ZmIChhc3ltbWV0cmljKSBieToKPj4KPj4g
ICAgICAjIGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4gc3xkfGZ8
bgo+Pgo+PiBSZXZpZXdlZC1ieTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50
ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNv
bT4KPj4gLS0tCj4+ICAgRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0IHwgIDYg
KysrKysrCj4+ICAgaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCAgICAgICAgIHwgMjEgKysr
KysrKysrKysrKy0tLS0tLS0tCj4+ICAgbmV0L2V0aHRvb2wvaW9jdGwuYyAgICAgICAgICAgICAg
ICAgIHwgMTEgKysrKysrKysrKysKPj4gICAzIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldHdv
cmtpbmcvc2NhbGluZy5yc3QgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5yc3QK
Pj4gaW5kZXggOTJjOWZiNDZkNmEyLi42NGYzZDc1NjY0MDcgMTAwNjQ0Cj4+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL25l
dHdvcmtpbmcvc2NhbGluZy5yc3QKPj4gQEAgLTQ0LDYgKzQ0LDEyIEBAIGJ5IG1hc2tpbmcgb3V0
IHRoZSBsb3cgb3JkZXIgc2V2ZW4gYml0cyBvZiB0aGUgY29tcHV0ZWQgaGFzaCBmb3IgdGhlCj4+
ICAgcGFja2V0ICh1c3VhbGx5IGEgVG9lcGxpdHogaGFzaCksIHRha2luZyB0aGlzIG51bWJlciBh
cyBhIGtleSBpbnRvIHRoZQo+PiAgIGluZGlyZWN0aW9uIHRhYmxlIGFuZCByZWFkaW5nIHRoZSBj
b3JyZXNwb25kaW5nIHZhbHVlLgo+PiAgIAo+PiArU29tZSBOSUNzIHN1cHBvcnQgc3ltbWV0cmlj
IFJTUyBoYXNoaW5nIHdoZXJlLCBpZiB0aGUgSVAgKHNvdXJjZSBhZGRyZXNzLAo+PiArZGVzdGlu
YXRpb24gYWRkcmVzcykgYW5kIFRDUC9VRFAgKHNvdXJjZSBwb3J0LCBkZXN0aW5hdGlvbiBwb3J0
KSB0dXBsZXMKPj4gK2FyZSBzd2FwcGVkLCB0aGUgY29tcHV0ZWQgaGFzaCBpcyB0aGUgc2FtZS4g
VGhpcyBpcyBiZW5lZmljaWFsIGluIHNvbWUKPj4gK2FwcGxpY2F0aW9ucyB0aGF0IG1vbml0b3Ig
VENQL0lQIGZsb3dzIChJRFMsIGZpcmV3YWxscywgLi4uZXRjKSBhbmQgbmVlZAo+PiArYm90aCBk
aXJlY3Rpb25zIG9mIHRoZSBmbG93IHRvIGxhbmQgb24gdGhlIHNhbWUgUnggcXVldWUgKGFuZCBD
UFUpLgo+PiArCj4+ICAgU29tZSBhZHZhbmNlZCBOSUNzIGFsbG93IHN0ZWVyaW5nIHBhY2tldHMg
dG8gcXVldWVzIGJhc2VkIG9uCj4+ICAgcHJvZ3JhbW1hYmxlIGZpbHRlcnMuIEZvciBleGFtcGxl
LCB3ZWJzZXJ2ZXIgYm91bmQgVENQIHBvcnQgODAgcGFja2V0cwo+PiAgIGNhbiBiZSBkaXJlY3Rl
ZCB0byB0aGVpciBvd24gcmVjZWl2ZSBxdWV1ZS4gU3VjaCDigJxuLXR1cGxl4oCdIGZpbHRlcnMg
Y2FuCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oIGIvaW5jbHVk
ZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+PiBpbmRleCBmN2ZiYTBkYzg3ZTUuLjRlOGQzOGZiNTVj
ZSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+PiArKysgYi9p
bmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCj4+IEBAIC0yMDE4LDE0ICsyMDE4LDE5IEBAIHN0
YXRpYyBpbmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9fdTggZHVwbGV4KQo+PiAg
ICNkZWZpbmUJRkxPV19SU1MJMHgyMDAwMDAwMAo+PiAgIAo+PiAgIC8qIEwzLUw0IG5ldHdvcmsg
dHJhZmZpYyBmbG93IGhhc2ggb3B0aW9ucyAqLwo+PiAtI2RlZmluZQlSWEhfTDJEQQkoMSA8PCAx
KQo+PiAtI2RlZmluZQlSWEhfVkxBTgkoMSA8PCAyKQo+PiAtI2RlZmluZQlSWEhfTDNfUFJPVE8J
KDEgPDwgMykKPj4gLSNkZWZpbmUJUlhIX0lQX1NSQwkoMSA8PCA0KQo+PiAtI2RlZmluZQlSWEhf
SVBfRFNUCSgxIDw8IDUpCj4+IC0jZGVmaW5lCVJYSF9MNF9CXzBfMQkoMSA8PCA2KSAvKiBzcmMg
cG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwo+PiAtI2RlZmluZQlSWEhfTDRfQl8yXzMJ
KDEgPDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPj4gLSNkZWZp
bmUJUlhIX0RJU0NBUkQJKDEgPDwgMzEpCj4+ICsjZGVmaW5lCVJYSF9MMkRBCQkoMSA8PCAxKQo+
PiArI2RlZmluZQlSWEhfVkxBTgkJKDEgPDwgMikKPj4gKyNkZWZpbmUJUlhIX0wzX1BST1RPCQko
MSA8PCAzKQo+PiArI2RlZmluZQlSWEhfSVBfU1JDCQkoMSA8PCA0KQo+PiArI2RlZmluZQlSWEhf
SVBfRFNUCQkoMSA8PCA1KQo+PiArI2RlZmluZQlSWEhfTDRfQl8wXzEJCSgxIDw8IDYpIC8qIHNy
YyBwb3J0IGluIGNhc2Ugb2YgVENQL1VEUC9TQ1RQICovCj4+ICsjZGVmaW5lCVJYSF9MNF9CXzJf
MwkJKDEgPDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPj4gKy8q
IFhPUiB0aGUgY29ycmVzcG9uZGluZyBzb3VyY2UgYW5kIGRlc3RpbmF0aW9uIGZpZWxkcyBvZiBl
YWNoIHNwZWNpZmllZAo+PiArICogcHJvdG9jb2wuIEJvdGggY29waWVzIG9mIHRoZSBYT1InZWQg
ZmllbGRzIGFyZSBmZWQgaW50byB0aGUgUlNTIGFuZCBSWEhBU0gKPj4gKyAqIGNhbGN1bGF0aW9u
Lgo+PiArICovCj4+ICsjZGVmaW5lCVJYSF9TWU1NRVRSSUNfWE9SCSgxIDw8IDMwKQo+PiArI2Rl
ZmluZQlSWEhfRElTQ0FSRAkJKDEgPDwgMzEpCj4gCj4gSSBndWVzcyB0aGlzIGhhcyBhbHJlYWR5
IGJlZW4gZGlzY3Vzc2VkIGJ1dCBJIGFtIG5vdCBhIGZhbiBvZiBsb25nCj4gbmFtZXMgZm9yIGRl
ZmluZXMuIEkgd291bGQgcHJlZmVyIHRvIHNlZSB0aGlzIGp1c3QgYmUgc29tZXRoaW5nIGxpa2UK
PiBSWEhfU1lNTUVUUklDIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuIFRoZSBYT1IgaXMganVzdCBh
biBpbXBsZW1lbnRhdGlvbgo+IGRldGFpbC4gSSBoYXZlIHNlZW4gdGhlIHNhbWUgdGhpbmcgYWNj
b21wbGlzaGVkIGJ5IGp1c3QgcmVvcmRlcmluZyB0aGUKPiBmaWVsZHMgYnkgbWluL21heCBhcHBy
b2FjaGVzLgoKQ29ycmVjdC4gV2UgZGlzY3Vzc2VkIHRoaXMgYW5kIHRoZSBjb25zZW5zdXMgd2Fz
IHRoYXQgdGhlIHVzZXIgbmVlZHMgdG8gCmhhdmUgY29tcGxldGUgY29udHJvbCBvbiB3aGljaCBp
bXBsZW1lbnRhdGlvbi9hbGdvcml0aG0gaXMgdXNlZCB0byAKcHJvdmlkZSB0aGlzIHN5bW1ldHJ5
LCBiZWNhdXNlIGVhY2ggd2lsbCB5aWVsZCBkaWZmZXJlbnQgaGFzaCBhbmQgbWF5IGJlIApkaWZm
ZXJlbnQgcGVyZm9ybWFuY2UuCgoKPiAKPj4gICAKPj4gICAjZGVmaW5lCVJYX0NMU19GTE9XX0RJ
U0MJMHhmZmZmZmZmZmZmZmZmZmZmVUxMCj4+ICAgI2RlZmluZSBSWF9DTFNfRkxPV19XQUtFCTB4
ZmZmZmZmZmZmZmZmZmZmZVVMTAo+PiBkaWZmIC0tZ2l0IGEvbmV0L2V0aHRvb2wvaW9jdGwuYyBi
L25ldC9ldGh0b29sL2lvY3RsLmMKPj4gaW5kZXggMGIwY2U0ZjgxYzAxLi5iMWJkMGQ0YjQ4ZTgg
MTAwNjQ0Cj4+IC0tLSBhL25ldC9ldGh0b29sL2lvY3RsLmMKPj4gKysrIGIvbmV0L2V0aHRvb2wv
aW9jdGwuYwo+PiBAQCAtOTgwLDYgKzk4MCwxNyBAQCBzdGF0aWMgbm9pbmxpbmVfZm9yX3N0YWNr
IGludCBldGh0b29sX3NldF9yeG5mYyhzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+PiAgIAlpZiAo
cmMpCj4+ICAgCQlyZXR1cm4gcmM7Cj4+ICAgCj4+ICsJLyogSWYgYSBzeW1tZXRyaWMgaGFzaCBp
cyByZXF1ZXN0ZWQsIHRoZW46Cj4+ICsJICogMSAtIG5vIG90aGVyIGZpZWxkcyBiZXNpZGVzIElQ
IHNyYy9kc3QgYW5kL29yIEw0IHNyYy9kc3QKPj4gKwkgKiAyIC0gSWYgc3JjIGlzIHNldCwgZHN0
IG11c3QgYWxzbyBiZSBzZXQKPj4gKwkgKi8KPj4gKwlpZiAoKGluZm8uZGF0YSAmIFJYSF9TWU1N
RVRSSUNfWE9SKSAmJgo+PiArCSAgICAoKGluZm8uZGF0YSAmIH4oUlhIX1NZTU1FVFJJQ19YT1Ig
fCBSWEhfSVBfU1JDIHwgUlhIX0lQX0RTVCB8Cj4+ICsJICAgICAgUlhIX0w0X0JfMF8xIHwgUlhI
X0w0X0JfMl8zKSkgfHwKPj4gKwkgICAgICghIShpbmZvLmRhdGEgJiBSWEhfSVBfU1JDKSBeICEh
KGluZm8uZGF0YSAmIFJYSF9JUF9EU1QpKSB8fAo+PiArCSAgICAgKCEhKGluZm8uZGF0YSAmIFJY
SF9MNF9CXzBfMSkgXiAhIShpbmZvLmRhdGEgJiBSWEhfTDRfQl8yXzMpKSkpCj4+ICsJCXJldHVy
biAtRUlOVkFMOwo+PiArCj4+ICAgCXJjID0gZGV2LT5ldGh0b29sX29wcy0+c2V0X3J4bmZjKGRl
diwgJmluZm8pOwo+PiAgIAlpZiAocmMpCj4+ICAgCQlyZXR1cm4gcmM7Cj4gCj4gWW91IGFyZSBw
dXNoaW5nIGltcGxlbWVudGF0aW9uIGZyb20geW91ciBkZXZpY2UgaW50byB0aGUgaW50ZXJmYWNl
Cj4gZGVzaWduIGhlcmUuIFlvdSBzaG91bGQgcHJvYmFibHkgcHVzaCB0aGVzZSByZXF1aXJlbWVu
dHMgZG93biBpbnRvIHRoZQo+IGRyaXZlciByYXRoZXIgdGhhbiBtYWtpbmcgaXQgYSBwYXJ0IG9m
IHRoZSBnZW5lcmljIGltcGxlbWVudGF0aW9uLgoKVGhpcyBpcyB0aGUgbW9zdCBiYXNpYyBjaGVj
ayBhbmQgc2hvdWxkIGJlIGFwcGxpZWQgaW4gYW55IHN5bW1ldHJpYyBSU1MgCmltcGxlbWVudGF0
aW9uLiBOb3RoaW5nIHNwZWNpZmljIHRvIHRoZSBYT1IgbWV0aG9kLiBJdCBjYW4gYWxzbyBiZSAK
ZXh0ZW5kZWQgdG8gaW5jbHVkZSBvdGhlciAiUlhIX1NZTU1FVFJJQ19YWFgiIGluIHRoZSBmdXR1
cmUuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
