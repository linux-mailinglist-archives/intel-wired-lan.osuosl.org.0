Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 418A3563B51
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 23:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBD3D418E0;
	Fri,  1 Jul 2022 21:03:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBD3D418E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656709388;
	bh=S1JLY35eh2fIDCtc6hbL0/hGZWnfeJ/tpVewxjS+eAg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6hOlaYI7RmdGFVX6RJ7UygxDQ8KMs8dM0wvvGqm86JTjturDF+8e9asB7gCkY+/XU
	 oXiGrsaGzboNcVKej/isyuJZYhJFg0Oqgj5DGT5F+zsDvbG/s8u+d1xFyXt9RQk2rl
	 hQxvIQpBXx5voLdniRVNDNzJruYHxWlN7Qgce3Xsx5R+MY5/lFwWzFGq8B4p3j96+u
	 G+ZAFd+iroIZiKxNsFlM6mBUMn7x9+ywLqnNAIlEkzWCjI1rSMyaTp108hEdk75rf+
	 71ex9PWwn7Q1uf9wtlJ4eor7v5oqrrTrOUwQtbMabNydICnpI9JSfb2HvX6z8YQ+AN
	 BDVSsu2wNKPlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpcS5D08XyWr; Fri,  1 Jul 2022 21:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 955BD408D9;
	Fri,  1 Jul 2022 21:03:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 955BD408D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C634B1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 21:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C13C4089A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 21:03:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C13C4089A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJEhbH_gL7fQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 21:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19E4B40891
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19E4B40891
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 21:03:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="344428288"
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="344428288"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 14:02:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="838184073"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 01 Jul 2022 14:02:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 14:02:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 14:02:48 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 14:02:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U9z8Aa8gsO2B3/Gw4XPxkok5nU3dTkY+SsILIdnA6pmYko/U0t52dHYmQuZclhiZAuBbbdCUZo0L+v7bDRNSbmc9+yd+8v1XMIlw9I2ech5c/WxIkGOB2QQizKhHKXVACuocA1224bOwR+x776i26nH7FyJUuiD+d5Sb1GD8umprm9yVdGLQOZe+kVjgOGJrC2U/hIC94won6k8kP3ExPtMveQbVrIM20vEm3XMr/l6gEAIL4fnD9TtV+8fbGRIUnnI4UiIsAu3SLSsEQgLAOa8f2y/2aXPDXKA5HKkmkyve6/Og3dRVoYpHfjY9kvY+keF+3NTQnf6ix+DoNCc/og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RinqHOFRkTyjuB15r486lZiveHsuIyOUdPzOvAmzU94=;
 b=SnV9GjvoOx2js3gB1QHZBkgPkJ/ZKzWOtexynK6U3NayEIF4AmD9EPHYi841CEe0fw1qxgxKrzKv5HE707tq6RSRVAyCiLlr5yXFZtZJELzQDW2S1T4kIiSsY7VWH5Kx8WDwUyg94WRL5kNgCBq/wWWpryYrNZlPefaN/qHdruFLAhcCwDwE7/d8E0DEgGOUxQ/LUNA7hAAFvMfWdrQgNZhr5KoDAid/4ZMBa6JAc6zqYpz/z1nSVTz8ybaZVT8G+3+Eh/NtPHkE2v4BHhV7v39vcSLQKl2zvWb7UsY+8b0tN/qvqG2SFd2j8XaGa1MJ3hFBOAPB5jpsFIcGJUahWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS7PR11MB6077.namprd11.prod.outlook.com (2603:10b6:8:87::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 1 Jul
 2022 21:02:43 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5395.017; Fri, 1 Jul 2022
 21:02:43 +0000
Message-ID: <cd159af9-1536-5c0a-7eb4-0c94a71d0ca5@intel.com>
Date: Fri, 1 Jul 2022 14:02:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220701130657.2431130-1-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220701130657.2431130-1-michal.wilczynski@intel.com>
X-ClientProxiedBy: MWHPR22CA0012.namprd22.prod.outlook.com
 (2603:10b6:300:ef::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4c46b676-cc07-4bba-56a4-08da5ba50a8c
X-MS-TrafficTypeDiagnostic: DS7PR11MB6077:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bT6CzocmCzYf0hIbifX53LQ41iYouolV2FdNEK6GoBTmvcBmVn9L9SDg/mi9CV29JIg54wcYHm5NSBNdGjlAMG/ap/pBH52MVL/Nhhsp4A6zZRakbYcfJJWxjc3FJk9utxGBdI6Rx//yF8B2qWJBRovJi3gqZRTa5DXBqIc0/YLT/+EAZAMvkmjtU5vPiOVPmV+V3LjiIGS7DMYnYwejZyJZer9JoJxZhorvwLoNhO8KD0pWCGTRM1InyfBv1J+1KNwG7BFNpK7scT7B3PuE7978u17iG8MM+0wsD32TkbLi05TWFxOm4TlueAQQlb9hbVe0MUAB/HT86BFPI0Lj9JZAQE3tKRWZbmzhywQip9lFn0m0J7gpabGIWdZkiKAU2l4O8GU/2oqDFp/l31jf1p9fiaBN5AMdquYXL3ypaEr7de5z+If/J9wdEIt5BMIIeOOczPZh7DFIcVa4RdAR+Q/rY8zq1jTkasJXmyUfJUXUy9SNWKh1vmpW11NjkQsTIBpbhAr9sULw2W6Ny5mltV1WC5iUXOhHFreHyOWSkdXN5XEqTyIk4QA/EzZp1sjwhmQBqwwD5Rsqr07rAGJLWWUvAshPGp8F29Nr8b4PY+4l0wl57jAtbNrTCAPRppc6bU3qAkaiuyiv/JleMN/yEHqF8hRfz4cuRC3pHPI2402selOoyrlRhYl5qT6tvtUYdrfrPQTMUqC3L4y4swIakcn+4UgBEoaRARhKiEEJHYWN68ScBSXdNstTAtU6ZH62RJDVFfZo6FBX86lsHZGJeVNHCKybjeMh2OvQmLtzLFe1oNCJjd1czPg+hZFC5LAPJI+M4d5XrC/TToNL5hbHmF4V4S085kT7ax62zbGPpBo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(346002)(396003)(376002)(2906002)(31696002)(41300700001)(86362001)(8676002)(66556008)(66946007)(38100700002)(82960400001)(316002)(66476007)(83380400001)(478600001)(5660300002)(8936002)(2616005)(4744005)(186003)(6486002)(6512007)(53546011)(36756003)(31686004)(26005)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmZQU3VWODRzdWNMY3U2RGV2MmhULzAxemtoTm0vMDNoelBNNzhLenRMaktY?=
 =?utf-8?B?akxtTm9ONHFBRE96dEtQSm51NklCelpzRHhXaUdVd0QyRTVBZ3lqVVQ0UVFK?=
 =?utf-8?B?eXBTTWtwRm1Zc2tlc1lKYWVkWlBNMkRxMzhNWEF1Y0p6d3d0blBRK0JhOXJF?=
 =?utf-8?B?RFdhSE9rWDdGWmRoL04xb21iZTZlVyt5c1RJbU5XZmUyNkMyTU5BL1ZIYzhk?=
 =?utf-8?B?cmhCTWVQa0ovdlNNZHBPRk9Ic1pSc0plSWpNNmJoZE13cHM2cE1ZZDJsLytu?=
 =?utf-8?B?WTBLbExNYmRpMGUzVVdzUUdhNEtqdktIdmZGVW1RaE1pZXMxQTVvWW9pRVpU?=
 =?utf-8?B?QWNjTGxZOGk0M3Jtc0JlWkhadzA4R0tMRzA1UmtValIzejZSc2l6alhtVURE?=
 =?utf-8?B?TjhKYmRQM1hnVGVVY0NBRUMrQzhFUkkvU0dNcVFGUTRhY21oVnAxYnhxUkFw?=
 =?utf-8?B?cVhuQjJmR0hrYXBON05aZHI2ZGJGc2NuQ1cvOWZKclRKcnpUcklhRFhQVkhU?=
 =?utf-8?B?WFBCVElkRFR1cnI5Vkh2Y0piaVIwRElnZmZaVElQY1pxZy9vZ3dwSUJwMytm?=
 =?utf-8?B?UDdVejZLS2F3WnBHd3krcmZSalJYbjdwbG5OcW5VT1RLdTRITWxCYi9PNUFw?=
 =?utf-8?B?MzhHNTdROXlnYkk3bTdrV2pNTklWRGo1SytrMkRWNTA0b2d4bS9UdHk4S3F6?=
 =?utf-8?B?OWk2bC9kT2owTUFLT0Vyc1lmMWhPQjJaVXhnMnVjOUxRRUt1MzF1Y0c3UVhG?=
 =?utf-8?B?S09xcTRxMXEyWVAySzRoK01lUkF2Y092aU9MYm1uWHhzZDZUWmIyQng4d1pF?=
 =?utf-8?B?eHFXb1MxOTU2ejR3cncxRWdzUTlTQjNMclhxRTFDRHMxN2h4eU9pa3F6MFlW?=
 =?utf-8?B?RVowMVJzcE5BNCsvNk1KZXN5VEhOU21Ea25sT2JJcWc5YlJ2QVY2SVlmK3Jw?=
 =?utf-8?B?U1l4MmRlWHJ3RjF1RDdZbldMZm1UQzNEempBbmVtK1JZMDVFNXhBTTYrRENG?=
 =?utf-8?B?em1tako4NWk4aVlxbG82UTZZOURkVVZQZlVzdHlaL1dqZE9zbzV1Y1p0R0Rq?=
 =?utf-8?B?S3h3TWRaMWR1TTVEc0Z4eWFiTFZQQ09vOU00NldMeXltQkxqd1NpemcvZ29E?=
 =?utf-8?B?ajBKUzU1S2Mzd1JjYUQydzN1MHExUkpSMm5mQlJqUEYwb0luWjg2RlpsRFlQ?=
 =?utf-8?B?YXNMb05CcU51L3pkUlZyeW03NzhQbngrT0J3MithMjUwaEg5STJOWDl3TTY2?=
 =?utf-8?B?R3dSQWhjemJ1a3Z1T0dFQi9vZUM2QWIwU0VBY0JLMGozU01ZUk1ZMmF5VnE5?=
 =?utf-8?B?MkhjRzZmNktDZ1BtZzBvY3VGRkVieDlwblBzQXNNcng1VUtxcW9ndkdHNUVx?=
 =?utf-8?B?eTdXKzB5ZkFPeGI0RGtBZlhYL0VBVEk4KzM2QmxOOTNPSGJMWFNTbTJiaFdF?=
 =?utf-8?B?SlFYNkhjK0RRVFFQdElrMWwxNFJTNGRRcG1WUGJKeTd3ZVlXaFVFZm1yVk03?=
 =?utf-8?B?cXcvOTZKRnJia1JXQmlnWUJsL01Ecy9nZllsQmpubHB0VDZGWTE1K3BCZVVD?=
 =?utf-8?B?M1ZvSUN0RkJOZFhNMUQ3aDlPZXlwZXdsWGJpMTM2VThxOFN6d0pJc29SUVpM?=
 =?utf-8?B?WW02V3U4TTNnNTdJNU03SnBOaWxsQmxMNmgrYUc1MmtXZ3dNdU5iQU5udU9n?=
 =?utf-8?B?eEUyUnNxRFhaZEU0Y1dTdmh5VVFHSHYxU0ZnaVF0N1RWNEtiVkdOTXl2MnJB?=
 =?utf-8?B?NW9KbHphdFA5SnU0K1MvTmlPVUIyY1ZNMVpJSXlLazB4Y3dHL3ZvbS9xWU5K?=
 =?utf-8?B?VFNyVmcvYWhCWkdscHNlUXRvMnFnYUFISlU1eFRtanEvVmdVU29uc2lSK29q?=
 =?utf-8?B?NytDaml6dkVwQjBQa1VobFN5WG5maTREb05aTjJqU0Nod3VCVVhJSVNaTU9O?=
 =?utf-8?B?UlpNN1J1Y1RhUk9lbG5pQ1Q4OC9zcVRVakxxQmc1NXcwOVhRQklTcGFXam1B?=
 =?utf-8?B?cEJwR0cxNitHQzA3MGlsS1JON0RsQ2pCa3VTc2pGU1RQUFdmWEJIWHg2VCs5?=
 =?utf-8?B?MFV2VUlvMDR0aDcrTEh1NUh6Y3lxSkx1RlU2NTJzeDFJeXcvNmZhbG5NS0ZQ?=
 =?utf-8?B?V1ZXakNmYmVIZmxCakNCdVRJeG5kYTIra3lGWitKNEsyS1E5RmVraHk3RFBZ?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c46b676-cc07-4bba-56a4-08da5ba50a8c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2022 21:02:43.2765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QSg/2SoHHApsIx1DY90dUQlLK/eRfzO0g8X1MbmWbTW5S1myPkF9sbpyzOZcy/9gosYywCHa+fbhbXEXLGEYrnCc3HyNJyIHmpxALBRPN5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6077
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656709381; x=1688245381;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hLiCQ1F/XWs6YAoG+PIPTnzF8n9CzMFhoG7iESgW2cE=;
 b=h2ye+7TJBMQbtv4YlezKDih1+jJ6S3rOKWcYDAyaDT4j1+hIvjNKFsDv
 1L4Vwg+Z9JPtr8Rx/BEq3AaGE73lONncRHdg/TFVzlFs6pJmgXHNLxmkq
 lYFogJnjHjU41sUBzBlyBkz9ivOj7+v7BMEzMo4COsJ8oYZeadszWk82I
 tlrIYU3c9B4XfgwYqXAZrqZan3A0WrdBZ+V1YCjY4nTxuZHhzCxGpFFrs
 qVFJg8BJeaA9J1hW0rAF7NBssGKmx/yEuLkdUoe/u9vDrhP6SKsaEwDho
 isgrkPdAclMewJDlDsxdLzGe9Q4F+GpLYYvvKA/+Aii5DRmMfBJ/nGqk1
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h2ye+7TJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/3] ice: Support 5 layer
 tx scheduler topology
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



On 7/1/2022 6:06 AM, Michal Wilczynski wrote:
> For performance reasons there is a need to have support for selectable
> tx scheduler topology. Currently firmware supports only the default
> 9-layer and 5-layer topology. This patch series enables switch from
> default to 5-layer topology, if user decides to opt-in.

This series does not apply. Please make sure your tree is updated and 
resend. Thanks.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
