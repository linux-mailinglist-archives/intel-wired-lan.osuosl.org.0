Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C62675728E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 23:57:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AC58612CE;
	Tue, 12 Jul 2022 21:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AC58612CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657663058;
	bh=Ps6wP8+oK+4gKu2YMJiomG1KuI6KLKSUiFVsogeYwOk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FB9X0sEn87Qd+FkStc340yquHPdI/5vFNkXFsFQ2Q5n+536ghLFCJg6XAkK67BJCs
	 ENT1Mk6Gzc2CMkZ8fBCb1CWmWctdEilqb5AiEdRbl+bgJL/W+ZkX4MdTQC3jy65DTd
	 Ngv/Vd0YxSjvyJ/DrhaUGyVD7hj4uIzwztFCxXLEuEO9NdoYnYQ4fHfp57R4o9kLEl
	 dZs7Ty/QCtisHhqt/Nq5sgJDlHhQ4JUr3gCsTxSkruZQ+OmPlDv77BtrIS92gwDjxh
	 kYNpvCBQY1Ja4Vcwy0xTCwkLXVFOJFdcmmgGyRQDjholm/kVpNtLJFFlGHW1JAYxF/
	 bo4Ntg9kz92zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sqYU7B1vI_CT; Tue, 12 Jul 2022 21:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F4C760FD2;
	Tue, 12 Jul 2022 21:57:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F4C760FD2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 726751BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 21:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B16981448
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 21:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B16981448
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k5RxgA2kXrUK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 21:57:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6303A81435
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6303A81435
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 21:57:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="285078515"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="285078515"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 14:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="595443825"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 12 Jul 2022 14:57:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 14:57:30 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 14:57:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 14:57:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 14:57:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYzgT149VHVSAcd4BQQumlpnY2I7ruwWFz7THY5Z9MjyHo/rghJoFyp3mrACP+wxxkwm95HzOLeVf/iA/N8+K9ViJPCAp/IUkklwcfiW7KRYsRHUngyDF6QbkvPsGITF+sGcOOgcpo5rbO7WH6cMPdlqGP9OOieYTKv7HWYmoy/GKZ8kqPVTiNF0Ag7fbnt48RrLccjjd5fcyN/Jnyx7GhdO4eAzgYCCUw4EZf84yPp4+apWrhmHe+ju5w+F0vd7+5calFpslabpJaqat7axAApO6UkblOQ69Fl95NQ8D0+XeKiZlOL/4sGilbwostpDziDp0nAXmCOy1sz3flDhoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k2gY/3Mx6VLjthQytl3YoWiajGN1qRg2DaCEjoCJl8E=;
 b=Q7XlRW3a7laqM9r+mI7VIlDtIKOTXE52NKNiTv+mtwF8g/iyP9zpnc8k74Py+5VCyGy/qaW+gkK0J9ep9EzST5ch4uR/f92wnRMFbhFgxZDRfg2+npc4AD9p4k0UwPp2KgYvtzlcByVIMM+xkXyIIZcZJzZ5hiM4QfaJBuKVca4uQ1lA06DPt06Sgigp+q3G7JLb3cd2Y3FloFxyNEmNF4gvr/dBc4cPzUXseH/QIzydZI8ZiloZ6TcgcQJWac9SRIS7xiAHQpA0JcJNh1iyfFQ56JyAXqf/Wo3hKk57uWsfxSy8kMl+PAnm+NAgRZw8Re7JVmdD8VaKSKgP8SAajQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1980.namprd11.prod.outlook.com (2603:10b6:3:10c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.21; Tue, 12 Jul
 2022 21:57:28 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 21:57:28 +0000
Message-ID: <90677c77-f94a-72bc-b515-ea7b65f1ef00@intel.com>
Date: Tue, 12 Jul 2022 14:57:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220701151750.2441885-1-michal.wilczynski@intel.com>
 <04c3c622-29d9-b538-2ce3-2864a43ee5fa@intel.com>
 <af311e64-7509-ba37-e288-32158ac13d60@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <af311e64-7509-ba37-e288-32158ac13d60@intel.com>
X-ClientProxiedBy: BY5PR20CA0007.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: babd7f0f-3fe6-4a1b-6244-08da6451831e
X-MS-TrafficTypeDiagnostic: DM5PR11MB1980:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IHlKVT8JACm35EDbPbza29UGpLjlne37P0ckwOW2KqRGPsMmH/MaUBI2/SSenhpNeNLzQHNMoBMpOZEBr09d8+HoADOB4u4eEra8ZtecIqDdRiensTb7o0ckCRbxfU4aIZyP5GVrEBo/MWXmxXnwGvs2wufLUMRLuVfYfmoWrd0UqsoStslNtdmIs9i0MmI7cOB/5o6/kKogDyDIg0yKdl0vpg0HrR+3rRCf5OlLrwDdGXNR2Jigd8xReJ9QQZeSZXWH5Y8S9sqCDggD7GUJLiU8MayIO/Aj9qLLGRGdnx9IwW9r39X7zvp0ZMMS1AElRLXcq20jDd22LgRj5hBwNlyTlanWg3NG9eCkjjFdaQuV7CA3G2Rh8j3EoYC4boGTJN4MSpoDpjFDS5ZYY0UFR2ZG/lBO19/AmQSvTb4dbtPPr3j1irgURzCqOYA3BYv5igHmNCxM8ukkpePRCwn+lbse3MMnzVNjzBFJJLN+qfiyfmCm5TTR6ElSJ3FOvxeGnnoH0JqFJyoyDMw0FzDLCONzQN763dkasAEVDXig/3KCAxyEkepGIvqiK658g7X6SwH6+GhZJVuWfwkOrT0j2yLjMnQc/qdXk4/SBorBbsYt6/z/eLMQnLJbXoXaoGlerNOdi8PnpJvlt7Qysjm0qT/h0Nw634rSsf+liGJHwJkEEVZSC/XAIizc3OL82SmS80z5hfTVBWC91oAVbhZJjVmKpUPq9QdiZ5TmhRZkQ1oGnJKyS7bjsGCARv6P9xXfz6BlPfSQes/4LSD/fdZUlpbq2gl+Q91aQ6jNxN/KE9nBc6nxtF1GPaSw1JaeZdJtcYP67Ztn8bxWeUzb5RbHPpdZZxlLC688toBeBBtT8RRMflTq/bEzRpqgYN4XlKwu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(376002)(136003)(346002)(316002)(31686004)(2906002)(82960400001)(38100700002)(31696002)(83380400001)(5660300002)(6666004)(6512007)(186003)(8676002)(86362001)(2616005)(478600001)(66556008)(66476007)(66946007)(36756003)(6506007)(6486002)(8936002)(41300700001)(53546011)(966005)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWxDTU1OUFRZVnlPVWJ6LzZ5VVkwVkFMNHc4bEpreWpvdlZ0M1NBTFZEeWVn?=
 =?utf-8?B?ZEZnNjBtOXQrbjNrZUNCZG5mRzFUS1VUMTZzVm4vSWJsSTkzYTlpQXJiYnpR?=
 =?utf-8?B?dW4ydUYxSmJLY0JQL1dTQlhOclJ4SE41aFRhY3N1L0RSQlBmN2NQMHhQekVy?=
 =?utf-8?B?elAyZWtrNnFWMmpGVHJ3a1hqdkZnQzlza3FkdlUyTmoxMFBCdUg0K2dhd25F?=
 =?utf-8?B?SG1JQStKWW14M0JzZ2VCVGpUMlBQK2x1UlZlcFlXT1RrMFg3dEh5RG9jbHpl?=
 =?utf-8?B?OWRpbm40YkR1ai9tTWJTY0FBUGtQanRDMGFnYzFmQnJTM2JxU0dpdXNHK09T?=
 =?utf-8?B?N21EUkhpNjZzbnZPK0RqeDVVWUJRK3ZhMUR4SWlsWDdDbGVHS1dHU3pVdUZ5?=
 =?utf-8?B?bk9zZ3BOY2I2RlNCS3g0bmtoc2VGTFEyTTdqZEhSUGZUUVFrRDVjT3c1Uzhu?=
 =?utf-8?B?MmpkQkpCZzZRZ3dxOVJDVHlhaTkvZmM4b1BhZ1pDaXZMZ2RJUnd5dml5Z1Rz?=
 =?utf-8?B?Wi8wZEdwUEFvdndJd1hCaGNEZjFDVFFSNVNuamZYYlVKbFRVWGw0SEIrMGZU?=
 =?utf-8?B?c3I1cklicDlsNnppNkFEMTc4RGJuUmppbVRROWRyRDdhRUU4akorVURNZWh5?=
 =?utf-8?B?QzBqUVYzYVFzNU1GQSszdDhqMnJrZW9wYmJqQ0M4cHBlcGt5ZG9oMml6ekhu?=
 =?utf-8?B?L1ZUQ1Vsd0R6VTRVTEFSc1dqNHVEaXppSkN0OG9hVXFBRmpIOTd1bStYelhY?=
 =?utf-8?B?L2RoMEJYa0lZaEQ2NURaNk1JSmJoL2MwRmRjRlRvTy8yTkdPWVhzSlFBNGRK?=
 =?utf-8?B?UktzdHBDdUUwYk1KYW5DNE5qSU5ocFdET2kyYkZFSjRkV2k3M29pRXN1YTRM?=
 =?utf-8?B?VDBUVy9BQU43Uzl0VHBoSEZSbXludkNHN055Y0tHanBNemIwdjl4eDg3Vko0?=
 =?utf-8?B?UmtHY2JEMnFra0g3bnlCS1FNM01sSHEyMkJrMThMRVJRa3pPaDhqemp6bzFa?=
 =?utf-8?B?WUtnNDVSN0EwZXJFd2hFeDdXNTZGbHVLTVc5VjkxQmd6bHgxd09BTUdXY3N4?=
 =?utf-8?B?NEV2U3A1UGpjNUJKYXIreTdTb3NIZzY0M2RZVUwxaDcxREozMVU2NzVIYnRo?=
 =?utf-8?B?MElkbDU1V2hITDhYTjRHSFVraDVsTXlKZ1N3WWI3a2YwWUxQdXFPWUdjU2Fx?=
 =?utf-8?B?d2JjVlVhd2ExT1BscUduNmdCMG84UkVRakRMbmg4Q0R5QmNkWlVSYWEzbXg5?=
 =?utf-8?B?WDh5Smh6M3UxSDhFcTh0U29KcXhTbEpkL1M1T2xiNmVhS08xaWluS2tseVI5?=
 =?utf-8?B?cmw1Sm1PYzB6T2FCOWJtRDh1Nzc2MXEwK1U2Nk0zaEhWMFp6QXphSTVNMkM0?=
 =?utf-8?B?ZWNTcTVRcWYwanZMSXVSaHREWHphUHFXcVlMN2RUYVV1dVgzbDk1M0NoT0NI?=
 =?utf-8?B?Ri95TzN2T0hreHFHVWF3d2ROKzNwWkIzODF6dHJyZVdqTnoydVVTTTRLSDdL?=
 =?utf-8?B?TFRteU15amdDRDZDcU1xR0p1RmxKZHBzS1orQmRGYnJaRk9KYTlrZkdtUThG?=
 =?utf-8?B?NGpBemhWM2UzcXp4M3FKOFZCbDFJU3krUjB6RkxRQnpNMFYvcUpaeS9LWnNl?=
 =?utf-8?B?OEtoSFR5eVZWTE00Umk3Z1lWZ21hMzlRV0ZFYmFOVDdQdWZJZGxxUGc1Z0dF?=
 =?utf-8?B?b2VTTldzQlhoSjVMRjRaOTc1TlVRNUo2VWNzNjJUQ3ViZms2VjJtZHZ3TG1S?=
 =?utf-8?B?aDVpd0R2UENVaURiaW9YVEcvTjB2RmgvYW9ybGxieXNhMVdVc2xHYnZuSEdD?=
 =?utf-8?B?MkpySGN2eGJobGpqOVRZME9vM2lmdi9waE5BNnFDRXh3SUh3YlZzTUt3K0Ev?=
 =?utf-8?B?emlpRk5nV3RTcmF4aHdKWWNZVVc2bzRqOEtqcnFGQ2FCY2dIY1ZzMnpIbC9v?=
 =?utf-8?B?aCtUb1IzZXQ2UjM0bnMvMXhWUHY0VFh6Y0JDblVPR3RwOUxRNlp1Q2Y5elhh?=
 =?utf-8?B?V285a0FYeVluOVE4b3AwcnZDK21rQkgxUXVkNnJFcVpNakNPeHhqUUhBT3Ew?=
 =?utf-8?B?ZTIrbUVqeUZnL2lqSmJHd0UrOWw4bXY5UGhYcjZpNWEvZ0pjRjVkeXYxaXhu?=
 =?utf-8?B?SnVQWjY1VlZXWElzZHhnejlOSHE1ZE1RaGN4THpwTmxrQkxqY01SVDRsd0Iv?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: babd7f0f-3fe6-4a1b-6244-08da6451831e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 21:57:28.3312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dNA7ro8hotoOeNIRPMpBjNU6kkcGqXgxX8+m6rwXe/dWkpWz060SRwfP2HZBPSSGP94fqp/atcJmuDVfVGCJNp9GGJNXMJcqEVo87+Y4W9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1980
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657663051; x=1689199051;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=y/2pdhOCnTf7o1JvEjtp/fKLqKc51dVjLWogyjxE9VU=;
 b=DAGfHYjOQt9wxK37myyp3axF6hemxyMhoX8pgy4oC5tsdVbaw+SxgCE9
 BPr/S3eZtbilUqFSkQx4Qh/uLjXYtffpG3aqfUz/yNVrmMHKAAhYvMKS+
 MncNtrNiUh2ECs2gw0CmhZMzGW1HtEh3VGEiH2MURe25Uxiphv9ZIV5VE
 nUYm46pP/j6wvd5AjUACbAa37Q2AE+E5Itip+tTwQDEniw5O97oijl2ZC
 nK3RcuxJfFT3g6z2FtTa7UtQDkoCgGWcCv9DwjBUY1eo7Gq8o1y1jeySo
 cw7ewaG1e3g93rCBKejWZCEQBK5qoKVsjUhdPwuYPeCayLu4fZZgFmwX5
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DAGfHYjO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] Improvements for default
 VSI filter handling
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



On 7/4/2022 4:23 AM, Wilczynski, Michal wrote:
> On 7/1/2022 11:01 PM, Tony Nguyen wrote:
>>
>>
>> On 7/1/2022 8:17 AM, Michal Wilczynski wrote:
>>> Currently when vf-true-promisc-support private flag is set to false, 
>>> default VSI
>>> switch filter is used instead of a proper promiscuous one. 
>>> Unfortunately flow for
>>> default VSI is a bit different, which leads to improper behavior like 
>>> not being
>>> able to enable promisc mode on multiple VF's, or filter not being 
>>> removed in
>>> 'trust off' flow.
>>>
>>> v2:
>>> - Changed net-next to net, since this can be treated as a bug fixes
>>
>> I think I may have been unclear on my previous question regarding 
>> this. Patch 1 looks like improvement for handling so net-next seems 
>> the right target for it. Patch 2 seems like it's resolving a bug which 
>> is why I was asking why that wasn't going to net.
>>
>> Also, for future reference, if the patch is going to net, you need to 
>> add a Fixes: tag [1] to the patch(es).
>>
>> [1] 
>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes 
>>
> 
> 
> Hi, my understanding was that a patchset has to go either to net or 
> net-next, I would have to split this patch series to two patches, one 
> for net, one for net-next.

Yes, this is what I had in mind...

> But I'm not really willing to to that, cause 
> they are kind of close together and both of those patches actually fix 
> bugs.
> 
> I was under impression that those changes were a bit too much code 
> changes for net, that's why I chose net-next.

As a series, I agree, this is to large for net. If they have to go 
together, then net-next would be the better choice. I'll go ahead and 
apply this to next-queue then.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
