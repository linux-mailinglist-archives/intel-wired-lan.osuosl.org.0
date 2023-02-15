Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 372C869846A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 20:23:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB2E381F33;
	Wed, 15 Feb 2023 19:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB2E381F33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676489005;
	bh=bZcIZnoDspadPpapQuI0HOhsOsOXvssmOaMThqQiiXs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kcMJGwuvNXSz+D5IMZiZX441pB1ks0vjwYonXsxh1hi1OrVIx+T5tYyRZ0cC7uUwJ
	 P1pYcxOm7JdxJvLUoCz1HJR9dlqBjXdXBotlEkxdz4BbE15wdPSnvWFMpBozC9yTdv
	 NUo+w3rF0N2xQWWtfmXJQs+YXwHMp8XY01RFVY7lEU7ursOKsPJB1RSD+9RyfMsGT1
	 vdbwtjJKSOKwcTNcw15cWGGrkrTDYXOKQRQcMkj1AqZQ9r39MG24mHHGLfs6/gPb48
	 hyBtnj5WlbIQbkLF7EvN97Dsfxo+1z15xO/dZ0HHqIQbXc9SAXhRgkl2ib9C2boFnE
	 6SuD8cAOIiJxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lb1hiSYUjFz8; Wed, 15 Feb 2023 19:23:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A01F781448;
	Wed, 15 Feb 2023 19:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A01F781448
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC9A71BF396
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 19:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 93A106100D
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 19:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93A106100D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lo7Ivw4m6j4Y for <intel-wired-lan@osuosl.org>;
 Wed, 15 Feb 2023 19:23:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 388BC60D95
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 388BC60D95
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 19:23:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="329242829"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="329242829"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 11:23:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="779000527"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="779000527"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 15 Feb 2023 11:23:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 11:23:13 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 11:23:13 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 11:23:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BDmFuofqDi6KtZwAzlWkRgO8Vh10F73pNA4A6LUWQgD+znoYUAgiyMytLC7hNNIjfuyz3W0xBmztRrBxX2CFSJU5IvaFcReWNMlyeTTMVwK3MFMceJcgnpOm9iITv6MKWSK2JfCUhfIDs91ghUs/b3JHnTKY1gBxZ2uNOaoahlGek20JZMApNCL1E/Qs+RDpAsE262I05vSyzez/jsxhq4KDhofpd3TvvTshSeJvfGFws5cj8CYoHj3LT1BADmKFHn/t8G7BpC5dFFi115wE3sBNaN6eb9dINg2gCw/skcnmjUuT5LpMrDD4HjnglRIXKc8FxKBV76JGlbAKc8cPiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qMgr4KzM4e9m0vPJPeZPwNGt+3nBLGllIho/GAxhJl8=;
 b=apZFnUGVN28qtp0w4nf2iYbjJjdPIETK/0mxKIsCO8nR66gBQc1I8SN8/NGWBPfYqFOxJzs0LkZLlLhERgNwF0xUYle66sEIz6+aeaRFJI4bhHtRvZzHnQJO7I3rxDyStB+nE/cvGp9YqteIUrJ9bPyJElimijNkpOSvtSwEKZABGs9IM+hqdPsn3WEdlsCO3N6LOq7qi8P1Tpq8+mCgPf9j1kaBy+8nlxzTE+ZyJySttmGMS9JlHgg8cYtcn66a/MagJoUaF1RUSIt9WETVKOmzqXnDkINvAb0admYxNWKnUCYF+UhWy+W7phdOVyjtzHwpmby7g1j2YlRUmfuSuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Wed, 15 Feb
 2023 19:23:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 19:23:11 +0000
Message-ID: <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
Date: Wed, 15 Feb 2023 11:23:07 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, <vinicius.gomes@intel.com>
References: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::10) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY5PR11MB6163:EE_
X-MS-Office365-Filtering-Correlation-Id: 04b807e8-b2dc-48b3-b6aa-08db0f8a135a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7ixDd8vPuSVYjvENh/JDmIuLmtWTYLSCtGpWhBnSQ28Rop4gw4i+5BMuqoipRhbURMBbsSY/nKQiyFeGQ/g8BHwdoC0ldBbJ+lWAWCCvKF5a2vj63Gwib5mmI0OmZFcNJI22p35k5U9aqMe/3V9CdGOIdFc4csX4KBlV2rKiUM3gA3ZGyS9wPb7RCg3iLqDSliZxJCFXlFj4yawRsNrzqudavM7B3n9Pm3BoYieamBYpkwBZE3mZcC5OTv6YNRswUUDxdLN+4UDKYSyrexPd0hIX79VIaRWdMQfAYkHG8Rs2OGn8m57KDTCBX9ZAelX+zQnT/BKJmRRUWUqdNEtYbsy7esOi69vqdoX9yy9/1YCc/+om5j5PDPofHC0A24HKO6+x79pdd7KUw2K8PGwwyfnww/AIGfvw3jQjwyyuEclgsF3rsaxmGnzaQpAlUClCVcdWzRW1ei/EeiW74u/b9xxsXDuqlVEbbXtUotarvQlC6yZVb4LwlqjOFPyXaWiUarfKe7to0H3EPFNjUNhImCSMRtL6daGADqkbIcNEzv3fk50nraDNVvCEtOFCkr/R8Xk5k0B67aL5WFRijEX/gSe4J2rbzo580CJV3tK0F+zswqRTYYlD2wpOR+KoUxAgaoUa1pFAtsOG9jg5jZQ5I/EklwGoRL2bGLRv23+hmnoH4cAXYSlLjhMX0y7/wcVpY9OujaUFIv9+OlSEMFnLLaguVwWpGdEaHf7nTz3JhdQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(39860400002)(346002)(136003)(376002)(451199018)(6636002)(4326008)(66476007)(8936002)(316002)(6486002)(2906002)(66556008)(478600001)(41300700001)(66946007)(31686004)(8676002)(6666004)(53546011)(186003)(6512007)(26005)(2616005)(83380400001)(6506007)(38100700002)(82960400001)(31696002)(5660300002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkJRV1hsL1hrbFgxd1BXdGt2akpyajQ3b01UMFhha3RQaTdjb1c4MnM1QTBH?=
 =?utf-8?B?K1hFZWZzRXJLMmVDMGtrUkx0Vmk3eXN6bEQ4MXp4VmpFZ3F2NEpjdUF0VzhD?=
 =?utf-8?B?U2tsWlRRa1FydkdUVGt5NnprdmxmYTk2d3FRd1RZTGdPOHFDdjZXUlluTlov?=
 =?utf-8?B?OXg0V1BPOU1tUnVnTjlXR3dKQU52TjVhNW5aaFhNbEZUWlJrTHVMOVRLUWdq?=
 =?utf-8?B?dmIxaGF0UmR1VXN4RUdrSjY4azd2WUQyUXFxbU1pd1lwVk5CYjBrWDc1OVVD?=
 =?utf-8?B?eEVBcUMvMFNNb3R4QWs1RE5LZDJKRlpIa2lvSVl2ek5EOXNXRHYrSVdRSlRj?=
 =?utf-8?B?NEV1L0twdWl5K2FQekk2ZWJDZ01xRUxTNnZubFlINUN4dUIyWkRCSW1XdkJK?=
 =?utf-8?B?cmZYSmM1TzVQelo2QUl1TXhjemFvWFBEbGZaOHVLMW81VGV2YzlPdlBpVHA0?=
 =?utf-8?B?MTdWRm5mNUloYmh6TnJDR25tSVY2UUdlemkrRzYyczJXYllURGpSQ1ozRXpH?=
 =?utf-8?B?WTlhQ1ZXM2xXOHp6Z1FIRjZzai9RbEdBOThPckRsLytpOTdneEx1U1I3MS9C?=
 =?utf-8?B?WUUycTRYSGx4SFRiNWh5OHdSKzQrbHJJT0U4Y0NLOUdXR0xjVDNQeUpHTCtS?=
 =?utf-8?B?bFBXd0MvSmJRWWJJWTdHMWtkUmY5Z0JrQUNLZ1AzdHZxNEVoTDFGMXRwOEox?=
 =?utf-8?B?Lzk4di9Nb0tkU0EzVndoRzJ4ZDJmektHN3dLYkpIUFk1QmJGK1hjQXFxalAz?=
 =?utf-8?B?enpjMnhCNS9SeWU1SnpJZXBFejFralNvZlhKQmRlWTVqYzFwN1pEMzc4enB2?=
 =?utf-8?B?dkNjY1I4RnlDSmswaFBsejFJek5rWUhuYzE3YWdiOEcxd2RERjRaR3QwYThy?=
 =?utf-8?B?dFAwV2x3ZzhTZVRBQ1V1TmYxWFFBVkd3Q1RpbmlSM3I1b3F0RzVHODBIVC8x?=
 =?utf-8?B?Lzl6SWZFRDZXTk5aaml5RzZteStsd2tqZm1zSFl5OUN4UXdqelVRb2d2aGEz?=
 =?utf-8?B?TlRPQnlNOFpWTVdiSUkrRTY5aFAzS21URlprbmJ1SDB6N1JXM1FpRWZZY3Vm?=
 =?utf-8?B?OTZIZkxLN0NFeHlnbUUwcjJ1UHpyTmlUM0RVYXR2TWxQcTQ1U2hQdzJXRmhT?=
 =?utf-8?B?ZmhvNW5WYmVielQ3ajRSaU1QUnpYeGNhckFPZEppcFdTd3RSR0ZVejZNbjQ5?=
 =?utf-8?B?bDk2cW52VEVmVWhVR1MrMzhTaVRXNnFPTlQ4Z3EwN2ZzRU5aWkViUTB2VFoz?=
 =?utf-8?B?eTBQTlEvMTJtbVFQRVF3WVdLUmN3ZEFrcS9admhyWDZNSWhRTnd1ejhwcmRT?=
 =?utf-8?B?S1p2dGJ0K3lUOFlpYXZZbDVWb0dXbGduQVVFQ1BtbUM4MjFNNS9GRE5pSWVU?=
 =?utf-8?B?dzZ2NlBBU21Pb2Q3SzlLMVFXOHM3dklobjhXSHd4aHIrcWFHcXhmT3lWZCt1?=
 =?utf-8?B?YWNJaGNTanIrMi9Gd25xZG8rSGdrdVRxaU9QaFRmUnp2UGR4RHJYOGQwOTE2?=
 =?utf-8?B?YlI4TW9vbFNQYVhJWFMvV1pYK2w2cmhQaUlPYlVRcUxqaTRBSUtjVll0VzRs?=
 =?utf-8?B?UHB1Z1Z4aVhSVXJJa1liYm9RNlk3NnppQTFjTWNXQnpCaURYeE1tblNxdFZr?=
 =?utf-8?B?ck5nOUlaRWs0YkRyRUFEOW5WZEc2N3JNRVBkbWptSG5WVzRITkNBNjhaa0Yy?=
 =?utf-8?B?Mkp5NTF6aUhoMUJxVmdCNzRaQyt2TnlYUFZQSzczK1ozZXJsemZBbkhhdXF4?=
 =?utf-8?B?K3JSd0phWDhzdnVJb1Y0M2RZK3orOGxaeU1uMTI4ZFVKU2lYam5qbWlrbTRL?=
 =?utf-8?B?dEo4bzBtTDdybmlHSng5VXNsZUdnSE14Ly9TakxYbG1kQnRacW8rczlQeFNK?=
 =?utf-8?B?WUdBRFhycjNJSXArZ2plYkpaTzZCV3krNElnSGkwdnYxUy95Y1B2WWtjUjF2?=
 =?utf-8?B?d2NSanZscFo3a21qTXg3eEp0cDZOTUZkR1BOMjkwYlNKdStyNGw2bDZ0NEVj?=
 =?utf-8?B?RzluT2QrMllxdjd6R0dDdW1LaU53Zk9CUnJja3VMVU00YVpEbHowN205MFlG?=
 =?utf-8?B?T0h1VmNqOG5SNzJSUUtzTFZuOCsyVHZ5YXg0REc2aHNjY1N3NE9ZMUlZbkZH?=
 =?utf-8?B?NXZvWjBlL1FoZFhRRTA0V0FwNFhTeWo5RlBtdmRibUg5ZVFCbVQ1TGE0STJH?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04b807e8-b2dc-48b3-b6aa-08db0f8a135a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2023 19:23:10.9703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KJXjvl/LMduiWOcBJYYk/OogKzzNgWQgitCUyb2SipHVsWpBbnPq3/xbFltUkeqiJHAa9LcdKiMsBSAGnh1gHTIOfg1DTRzIH16yrUXHHEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676488998; x=1708024998;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=puRu3ENPApDpzWYLVf7ZnhmUjqcQNWtJeXmmNI703oE=;
 b=Yj65+zyiD9wiFagrAWbsHMEY250ccTd5p6bG93YhCe6yfET0o0fle3zW
 LRDy8x/zZ0QBszrxrAtRbzEwhS0oAGiTwB7qrXbZLF15B8NnNw7wkAVin
 pG+W7oODyV/rH1iBse2rvtfyB0MFrA/nT4Fc6Mi2UvfBAqL+UbDCI2WID
 mm9MtmU4hQ/6joTO3eF761rgdkwWBICh4cRhHhnhWdkhP2oes9JCgMmPk
 HMuYwts+EIx4ZDWD8c2Fbe1yGNmzk/3oG8PrfOYuu7W/aWFlvPWqfINs7
 lRlmQWGRNgQFF/BkGpVq05liBxTT4NKQ+PlLNFKipRmy9IJW3tKxT0aAp
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yj65+zyi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/7/2023 8:45 PM, Muhammad Husaini Zulkifli wrote:
> Add transmission overrun counter as per defined by IEEE 802.1Q Bridges.
> The Intel Discrete I225/6 does not have HW counters that can determine
> whether a packet is still being transmitted after the gate has been closed.
> But I225/I226 have a mechanism to not transmit a packets if the gate
> open time is insufficient for the packet transmission by setting the
> Strict_End bit. Software counters have been created for each queues in
> response to the IEEE specification. Thus, we can assume that overrun
> counter is always "0" when setting this bit.

Can you explain why this is needed? It doesn't seem to make sense to add 
a driver counter to always report 0. If it's needed for spec or tools, I 
would think it should be added to something higher like netdev stats, 
not driver specific stats.

> User can get this counter by using below command:
> "ethtool -S <interface> | grep qbv_tx_overrun"
> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
