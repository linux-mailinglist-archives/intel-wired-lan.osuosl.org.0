Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F586E4FC1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 19:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C333417D5;
	Mon, 17 Apr 2023 17:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C333417D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681754364;
	bh=nT1gRchrceeD/+vdcdEtwOL99Ja76HLPk3InYd/Ap3E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bs9bykU+5YDkHNUIMG2xj8icU/PA+EuWhbZQukVKUYUkXTYyZIu+b21mUB7+s5llf
	 pJs37YRGv9YYX39+x7D9cf0cxJlIKVnpCIsh2ju+G2TSHA2EidlS1LeYIDol6KQVWS
	 Ht42CgHgsBDRT97S8JObxUH7UKnDo8HCsH//9CVOIxhC9hK5BjZTC5FpSt3Hjl8g+6
	 yWVTSk9mF4soKOXXDO8tKw80CKeqscBpRw7sT/LrSTtivLf5rZg93UfnoFy/8GcwB2
	 CCG7lUMppWCHRedFub61hp/tT4zVEyKiO2VtPt7yIPB+fRJKVwG6RKXgbLNGcmBCd2
	 rUwFOACXO5ZXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ph-dLTq9NhlK; Mon, 17 Apr 2023 17:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E37824150E;
	Mon, 17 Apr 2023 17:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E37824150E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59DFA1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C44F82094
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C44F82094
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmnItKzAPhbx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 17:59:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E27281FF3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E27281FF3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:59:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="342461192"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="342461192"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 10:59:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="693306745"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="693306745"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 17 Apr 2023 10:59:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 10:59:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 10:59:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 10:59:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QkFcOCbAEIpJ1dX0YDCwDPBYT7ALyYfo3+colMeDPPphpnjIhwAbcjpHd9n9YVeknGzaC4tlhoJSBMPVK85Zn66cj4cg96RjYUZ+Ma9PKtVZ8s4CU2iLtH+3BJDxQqso3z2bRjm7YGGOgf9kv0f67gAihIkhQX7TbtK7qc5QYZBuPNusZkcNUhsKr1AfmCGRt5pWRZU793titGcMAbAu5m8U7u7Tt4+OiWP+n8oaEbw2DZ6IoidPcoxQj0F5rLp3yACph860A/VmNlP8toI5QGvqs8u8nuPdynUDIV9bC6bRUAy+ZDxtIpbBEYfLVieWjVMeoitqssgKfe/5ESybyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kkHvozY8ApHV05iGAHvUCCBTPR5O4/DGVUKKPp3cn/8=;
 b=Kg5P8NZULzR2pDqIPUkxP14QA3COs1Wavc4CXxhS3kgR8HcMR5qk2jOas/hGx/OSXKTCoMAvyJmRDfU61EfU+12BkKr1NND5ty1tcINbBh4ZZnlT07ULWchbpJRsVm++QyAkuZ40RtLldIanV+HOD5Ef6daSpKJix+9k/6dWy/4h0Fd6EUf3c7ZHb9LmDctJ07QqhQJmBBMOgy0l+22r7j10z2lOMw4A03ktwqWwsXA/6nBz5r3pPzvr91Rbew0E1/1Yi0AHR+1zsjI+AKfM1hPP4TkLVo2TOoAgUZqePoFI/8fNIDAEJyNkLP6FLuYROJhLu+zOFuAk9RUMK3auVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 17:59:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 17:59:13 +0000
Message-ID: <259847bc-0e29-d347-dbb8-2a1a758f9f40@intel.com>
Date: Mon, 17 Apr 2023 10:59:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Kamil Maziarz
 <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230417113200.152404-1-kamil.maziarz@intel.com>
 <23ac62bb-67c3-4685-4648-476c648dde98@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <23ac62bb-67c3-4685-4648-476c648dde98@intel.com>
X-ClientProxiedBy: SJ0PR03CA0150.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::35) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6760:EE_
X-MS-Office365-Filtering-Correlation-Id: 62929b28-154f-489d-d585-08db3f6d739e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fB4CH5XUtL8KWdHsSXkXF57zhamNVZuSNTkQKaaIZUQ8x+i7iwHqPnCJQdEwT+pB5DLOyLGgIdeIhKWbq8pLZxGS4f6dkWVzXc8eAxykyutTxz8qWSSJD0pWBYkoAl/XMeWemp7tqzGMONvxjnsfuP3rfsArscW2oOYXtbLSStiXKfH8bjjOyN9r0AejHY4UX8GdA1O98utg6Cy+ogNOYUZX7W8SeLF5iXaybbSGmkXOf0MThn/NyFq+X86coUNx6ybBi3VaKWx0Jz6U2VeHcJ891Xly06jetDgKwtWhcZZbtFAwNwtLEYHumyAoPRP5ZK9sNHqmEYg+9vy+c3mrpMvnNSW1kqmcnnVe/mUNDXnBW4XThLdeueHsQ5WtqDA2clxKTLRJagYGUSMJnYfXqUr25X8hIgypWOin37zxlqjuao9xCY8uI0fAInj7XzUOfcWO6vPvtv4u2ZRl/AfZk80aGxd9kivOSJIWaOW2NJOAGnZE2RH2aazW6bZTLiuGPIKuvyZ3p1Tk3Uec49RarsCwDXdK9d722XuBCW5H7Glx5DcGLbcu1tcCBtNye0f/+h4Oiq1JW64mrpiHzjtnA/5YGbBIU3Gxd5fnLgsvHEsFiSa0/HsSbiGSUgSaSSF83fmI5un16z3s5PF7OyjH+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(136003)(376002)(39860400002)(451199021)(86362001)(6506007)(31696002)(83380400001)(53546011)(6512007)(26005)(36756003)(186003)(2906002)(107886003)(31686004)(2616005)(6486002)(5660300002)(38100700002)(8936002)(8676002)(478600001)(110136005)(82960400001)(41300700001)(316002)(66946007)(66556008)(4326008)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUpqQTJaNmlxdWppL3NNdU82YU5XaDFHRVVOZDQ5ZzVPSDhWZzZwZjk5RExr?=
 =?utf-8?B?ek5Pdm0xWnFQNWcyUVF4d1pteGI4b0tCZ2lUeUdDK0NZbjQ4N1J1aHJhMm9N?=
 =?utf-8?B?Y0ovcC9XV1RZWlVIYXA4N1hVQ1pnaFNOZWJiSXdLOGFlTkRLeFVwMXY0YXNl?=
 =?utf-8?B?VDVBQ3pKS3FXMng3QUJRYWNpc2ovNXFKTTNwcXRGbUJ3Q1NYazZRakIxMExH?=
 =?utf-8?B?MEZod0FCWG0xOE5aelBFb3l3NnZuSkllaVA1ZG9YU3pSYzRiK254ZWQ3bWFX?=
 =?utf-8?B?SjZ6eDVJNURpQnlCM3Z3ZHVZL2dRNlhmOVdLYWtEeG40RHAwZzhyWEhXVXNx?=
 =?utf-8?B?Rm9aWWR4UmdUc3E2aUhIV3BpbGVvVUtCM3doNWpqOTdDM1VGMjNKQm10azBz?=
 =?utf-8?B?a2dlUTRqMkUySFBnelhESzJobEg1VERFQ2QyOGFDNkN5eUl3TCtxNDZpUkMw?=
 =?utf-8?B?UDZCaGZ4Q0p5MWJDMmhPMkV2M1VDQWV2ZE5FZkZzcFE3S05wRnIwSHNSb3FO?=
 =?utf-8?B?by91SjVBSzc3bFNMeCt5bWx3WmhPZ0twL3N1TmdhMVhiVzM4YXM3c0hmY3I3?=
 =?utf-8?B?NWlpbWRtZCtBYWJiQ0dZNXEvcWNRSW9ITUc0QUp6Q2I5Mkc4MTFEVm9zWHBM?=
 =?utf-8?B?R0RQQ0diRDR0T2xhanUwUmNiVm9IblZyRUhoNm5kZnkzWVVhaWZzQTZGWE1N?=
 =?utf-8?B?TWQ4UHNmUmdDVDNLY2ZwKzV3VURDYVNNOVA4aVFyamRpSC92ai9UY0xBMVFW?=
 =?utf-8?B?VU9DVEYxbGk3UWdRTlQyWFE3OUovV2xJN242T3Jod0ZpYW0xMDM3SlpjV3ZN?=
 =?utf-8?B?blRFSHRHTGdMWUZ0eC9uN2NoVjhHRnFDZ2FBU0c3MEhOdDN5ZWVVdytVTHVi?=
 =?utf-8?B?ZjVTUlh5SXFobkhKeVdwZncrTlhxamxjeDBYcWpWU2pNUkhBeG5JNUpSREwr?=
 =?utf-8?B?dXRBSFo2d215eng5TDdhZjR5M3c4cjI1My9FRU9Kb09pU1ppOWEvTFQrdll5?=
 =?utf-8?B?NGdBak53WlJmeks5cjE5T3dkcGFEa0ttRUtnVEVPQTQzNVBLampWOGc4ZFBr?=
 =?utf-8?B?MFNpWUk4MzNxeU5YTlMxQ2Jlb3AvQW1UWWlZcXRlZW9EKytXSG1HbjUxbndW?=
 =?utf-8?B?bWErUW9rajlhdDBSVWVQblpTb2gwKzcrc29MeHlpcDlyNFRlVGxmaU90OWE5?=
 =?utf-8?B?ZFJCZEFLZ0hGNEswN2VIa01tNW9kbzgzMmlYenJTQkQ1akNHYzJ2OUswVW5i?=
 =?utf-8?B?Qnl2RlNxSnhZRU9jZ3FIT1kyWWJzWHFCVG5LV05MUnJNM1U3TTRhaDN4amZF?=
 =?utf-8?B?MGtLYTZNWHVTSkxnQlZkUS9tWG82ZEsyYVRPNVdDb1JTRFVJSi9PbWkyc1pE?=
 =?utf-8?B?ZFd2Z041ZlAyQkpsd1U0ZmNnTXBqWE9FNzdSYnYzdUJLNWlnUnNWM1ZwSDM0?=
 =?utf-8?B?c1dlMmlQMG5JdllrZDdBckY1QmlXNFFpSHRsa3o2WnR6V1FWZ2FPS1ZvNUFt?=
 =?utf-8?B?N2Iwc292KzdFSWthRDlOeTFTVHdsQ0pkUlZWL3dtejd0YUJWSnMwSzAxM3pI?=
 =?utf-8?B?NW8zR3lsbkJMakxCZ0hJclpsZE1XWDhPelFBdXRpeGNYbEdwTjdmZ2FYTUw2?=
 =?utf-8?B?UU9BUmx2OEtkaGpxeGhvNHVpTDNsaGZ6MUVUaDZJelFzRHFiTXMwUE5zMEU5?=
 =?utf-8?B?NG9vSEx1Sk81WjhnK3JmcWJXRE1BQXVHVWtnRTZSZUt5YnAwSkVYWitsTTNn?=
 =?utf-8?B?bzNyYWRqMG9OMjRnVFBVZllqRFhaZU90VDdYdmtBdW9mQTBXZEZCMVBudlJt?=
 =?utf-8?B?ckxxd1F4dDhTN3d2eFJPcXlnVzNvRU5tUkZuRVRpS2I4UndjbXFPZ1IxSlFI?=
 =?utf-8?B?d2ltZUdLQmxaTmdVOFppQWJ6Y0ZuTnVHNEVhMncxZ2h1SzVMWmxuTGFDYkl1?=
 =?utf-8?B?d2hsdE81N0tOSXNCdGE4UlJFQlV6OFFjMEUzc3JFVEJJZ256U1g1bDl5b1Er?=
 =?utf-8?B?L3pGMkNHL05kRFp4YXUybXBCZzVIWUVDYk5jdi9Gb210V3NId3I4a3NDM1NC?=
 =?utf-8?B?SFRST2Q3SG1oUmZVSDZvaEZSd0pRR2dmUzlET1JhaDcvKzZYSmRzUGZMQW5F?=
 =?utf-8?Q?coeHIq/8JTMuZisBHGkjqc0I3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62929b28-154f-489d-d585-08db3f6d739e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2023 17:59:12.9576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fw/BRsa+aD1qsvpuq4WnXHAxMgtq1FT8a2mW7QDp8t+d5Egs7Wfuhaj9GQaNCH31pFOjsqgS4dVfICWOu1/MOCbJGiFtY5tqVs+zqjl2ajQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681754357; x=1713290357;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FOnjckmbTA3OgAtr6jd9Jq7p2ua5vRU6OLF9c0Gvj4A=;
 b=WYpv8rsSxAEFne4HRXWlN3FarvqyvPGUeGXMbcYcvs9EJ4fW8Jf0tz5F
 UtacyyqdQHCIOpVNjccgsYn9rNkwL7pFakEQehcGip1C5ci0kP1wZwGja
 Cvq+aCqXWB4yvdIIxmfU7Z/kn40EN5l+WAnEpgPRZzXhqdQh0URRenF00
 vQy/cNThGfi9xIqNQlCZkSZTcKU77hTdsNa/Kms6yx155lUVmd2SfXo7v
 sbvlUyeFTwGDJo6pjEVOTHtp5QselXrMb4ZzRaZ/1ZRpZJXA2woW9PIML
 JM3q4Cd+IKG+UEY3fCfL54vN8aXg/naxZSvw4MzXY346wMQw9yqglh7bw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WYpv8rsS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix ice VF reset during
 iavf initialization
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/17/2023 10:56 AM, Tony Nguyen wrote:
> On 4/17/2023 4:32 AM, Kamil Maziarz wrote:
>> From: Dawid Wesierski <dawidx.wesierski@intel.com>
>>
>> Fix the current implementation that causes ice_trigger_vf_reset()
>> to start resetting the VF even when the VF is still resetting itself
>> and initializing adminq. This leads to a series of -53 errors
>> (failed to init adminq) from the IAVF.
>>
>> Change the state of the vf_state field to be not active when the IAVF
>> asks for a reset. To avoid issues caused by the VF being reset too
>> early, make sure to wait until receiving the message on the message
>> box to know the exact state of the IAVF driver.
>>
>> Fixes: 109aba47ca9b ("ice: introduce ice_vf_lib.c, ice_vf_lib.h, and ice_vf_lib_private.h")
> 
> This commit seems to just move stuff around. Is this really the 
> offending commit? I believe Jake suggested c54d209c78b8 ("ice: Wait for 
> VF to be reset/ready before configuration").

Yes I am pretty sure the fixes tag is wrong because that commit just
moves code out of the ice_pf_virtchnl.c file into ice_vf_lib.c

The offending code still existed and I think the one we mentioned here
is more accurate.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
