Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DADB687248
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 01:26:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8616D40499;
	Thu,  2 Feb 2023 00:26:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8616D40499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675297582;
	bh=8kIR32Ms+saGLaOXrrEMs5K/Kc5LyEZvvR5OtqNS5n4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XlRt7rp6/1293YyAe0QSqpQ20yGQfEOMFunGQjriiOF1BCSsna5ZmQi9d7wxGhGGU
	 mJRTDAfULdJdNFCHJVJcyZcFqVsuS4/1iCwc0bLr+6Vgs7UhcZdBgYrFhsPbvGIIpD
	 WjDrilxqtghiH+RDN3OMFae/N6MRa0v1C+bJmi4Qqjko9AI+Nkm85cvvoX41WAJxFB
	 XEES384Y0yjKXrLY/36wWaIv4/nNctAnr+7HDLepZeo5BLieA7cyJo1AiN5Uug3oR9
	 +r6JvJw9nyDLO3e4EnC2JgBLd8goW2lxwCYYxinmNvAhy40jJXy0kdgXFw4e9DduKc
	 q7tTyHGbRLs4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YksDQEq7ocRx; Thu,  2 Feb 2023 00:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AE2340382;
	Thu,  2 Feb 2023 00:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AE2340382
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 066DB1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 00:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF3BF8100D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 00:26:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF3BF8100D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W3dMfV8CBXZA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 00:26:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED20480FBA
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED20480FBA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 00:26:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="328325005"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="328325005"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 16:26:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="615052026"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="615052026"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 01 Feb 2023 16:25:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 16:25:52 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 16:25:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 16:25:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 16:25:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dw2TtcAacubkluC6kzj/j0OaGWBr8NMWfSed5XFYtDrUmy6CG64vdAslS3k3YievJ8SPoVcPGY40FIL1rErfqMUnkZze/bTpqCIlfZQGUGGxTxO3Y7/WBqp6hxtvHCKdOTtgMg3/NnQCm4QJsQ2t4eVaUktjqiWZHvzbu7JQJwg0hhUow3ySfleQe0iKZbmPhAP1cvvZ7/sasi+kx+9R4DPPFzRYVoqpArPw+qcRqN+gs7xlduIbREVnt2tsVEIWcRmDyg3Q1PPY+ThyByOo4uCEclGLTs8OyFzAiY4jJqhp79hOVEp+g3y9EmcTcAI0Ga/QCF3NKA9y3FJ/MX86pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KNA+oRJ9xqauH3e5rgTf3wih9PIQtNVn44vuqXbwp1E=;
 b=jK4neznLqTDWoNhVuqSeLamEsngaVM4oHtqo13Oq/PO1h/9zDqzSWcMl1ISTp6Eq2zGS0VAhBPas3ElVWezuyTVZKG7qGZLl36cDX7qmfccOamkjf229h3ARN3kOykNJ0iO09GxLkJxd7c4uot9xxL08EuTJqp0MShX11IelMYTNIKCRbiXXmzuwhn5G/gJOXtLitORCoQhPHi1Okh9A6JgebvvCiaSp3DnHHYDCFvS9QjeGX7LzY+c1szATGrVOiSnrsR800gVgTsLWtoBD9ZPrqAeb78hdvWGbv7Pz3UGf3tOjSO5+RBnJPdu3pq9rx2iAes/1fxv8KlJZL4UhCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.24; Thu, 2 Feb 2023 00:25:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%6]) with mapi id 15.20.6064.025; Thu, 2 Feb 2023
 00:25:48 +0000
Message-ID: <b15d2ca1-2fb8-190f-4d0d-1649f4f5d3e0@intel.com>
Date: Wed, 1 Feb 2023 16:25:36 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Miroslav Lichvar <mlichvar@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230201143643.2624559-1-mlichvar@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230201143643.2624559-1-mlichvar@redhat.com>
X-ClientProxiedBy: BY3PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB6019:EE_
X-MS-Office365-Filtering-Correlation-Id: 821c0771-4804-4d18-11ed-08db04b40828
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G6ArBCPz3CqyNwNyyUEwhcCvwQ1NIan6Q4g1ps2iHt2N1V7lKPViBQeQSllVq9iLRyqh1Nzmsc/qO6cWiHJCV+yopXdO51K6x/4l0oDkcShFrVMTmZNe/MvchD6fjadm/kSUlRnYd+iqM3EtUUeu/Ru+D5X6k3FbM48SJVV3kccgCp5kLPvOvkKf99XsFqfEOZ9iU8OeUb2yKv5JPwMN7DRV+slJ0cORV52VRD8V6cye3jGaHAhqaQvuL+dNZNnelXeDUXnAToaoB80lam4FfM4LjSDvnYvltHQM9OVpzPWa5LUjRkZF+c+MFfhT73VXoN3zcsZPjHbIW4rcjcrRe1FPtSFpUo2lfTc++z+ODImjYbSBZxYJLQzOhppGQjte7whxDrpiLmU6msDu+q2pVCK7jkYbfqZL6vleK0ORaxe/OXNmdpv6R6Isi7iRFQKpHe87RIob97eRHpgWvXBZ3vGr6/KFKn+giycjaCPtHoWeRlYYu3E1TUWMqdVAuSf3qI6GM8hOoMNuIkSUmg+dEfINH4+/02XmcwXwiKJLym6ZlSrWzE+rK7sXiWW5uZMkkoUXrg9jorOHmHE3aXmY0sV+TSUGp/KySRDUj6jShLNbTdbGs3T4iqNFROT3Hvy6WiBpJ0I+gNZH9Uv461AoYW9FRh/9vJmQ0EURMYVj8xJGJHCmFL5aIBlNbjh/w/Zwo4Kf3b7EE7c02+j38vefHj4SUzQTfFjejUfDJjj7Zvs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(366004)(39860400002)(396003)(346002)(451199018)(31696002)(6486002)(86362001)(478600001)(5660300002)(83380400001)(36756003)(2906002)(82960400001)(316002)(31686004)(4326008)(6506007)(53546011)(66556008)(66476007)(6512007)(26005)(186003)(66946007)(38100700002)(41300700001)(2616005)(8676002)(8936002)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHl0KzErSldHeXNxbGovRnR2OS9zMzBWSG54amNmc0JCd2k0dHU4L0g3VW9m?=
 =?utf-8?B?VXNKVStZMUI4aGJUQXpGOFlvWDNqMlloSXdpd2kyYjZ4RHB0OFo2ekR3eGxL?=
 =?utf-8?B?YXBUK1g4a0kvejcraENXV0xpQ0lFdVFXaS9tN0t4ZUlDRlE3RmM2VlViMTBj?=
 =?utf-8?B?dmp4NU5aUHpJSkdPNXQrUlBGTFFILzZldkFOV1RyVlJQVmRqWktETjNYbFhm?=
 =?utf-8?B?b3U3NHJFQnRsRFc1WE9Dd3FoYTlyRXhPbVNsMDBiWkhZWU1SY012WWJMMkg2?=
 =?utf-8?B?bDB0cCtCSkhITnRsRmpDa2psWC9sMFNncHdjZnZHbGJsY21Za0tJelRERTJB?=
 =?utf-8?B?dUEyRENra1g1MWlSRVg2aXJqNTd6bGFoRWdJQU9MVXdlcGJmbHNjSFZOWXF3?=
 =?utf-8?B?MkFiS2k0YVE2L2ZQNXNGOEFQcXVoMXMvY2ZudkZncFQ2VGNORUYyWnI0c1NQ?=
 =?utf-8?B?aGZkNjE3VmdxclBkcCtwcnp2a3M2U3pOS3pxTkJZUDEvdjQ5Mno5bkYyY1Z2?=
 =?utf-8?B?S1pBVEZWOEV0VDRSNWMvaXpkcGFRWEpTamh1RjVJWUdoQ1EybFYrcStiOWJv?=
 =?utf-8?B?VHB5eFY1Vm9salBhN1FnTGNTK2oyTkFtVjQzSjBoZ2ZWakpudHcrTVIvaVlO?=
 =?utf-8?B?Slk5TjVibVZvVExtaGUzNlQ2dkJQSEtQTk5lK3M2Tng1WkRabGFLM0ZZSUZP?=
 =?utf-8?B?UmI5eE9SNzJ6S0JmWFJPSDMxOUVKYXd2QXErNEJQdnpxSGQ1ZUNZYVRLZkNi?=
 =?utf-8?B?SHhXNm9ITTNmdmNHVG9IekY1bXVsYS9ENmtIbXVWL2VwNXdmVEp6ZHN0RFlp?=
 =?utf-8?B?QVpMWFdmaUZnWTIwZHkrSURYNlR1MlMzcjBQcXpTRUQyb2VITUNFbndROVhy?=
 =?utf-8?B?M29ZOElYdUR1R21KZWFUMnRQUStveEtWVEdqZnVqM3ExQVRSSTRLVTRCSHNz?=
 =?utf-8?B?SExvS3cwYlEydWsrV0FJZDEveWRiM0p0R0hia1JHYnhUemZMWWhacGcrZC9U?=
 =?utf-8?B?SVRNQWw4cTRHdjZDeFlLdkkyMGs1V1I5Smt4NUtJaVc5VStVelZDZTF2UWZH?=
 =?utf-8?B?VnN4N3Fvd1huYmRkaDVVZEtOQWlRcExJTUludGNLZUdjNWg1YmlXZmx1Q2wr?=
 =?utf-8?B?eStObmVPNGpFcEdSWlB3QTVxM0lNUW1FRjFaYzdGOXMyamJ2d3BESjlOcmYr?=
 =?utf-8?B?b2VTMTBud2VsN2lUV2VhZ3RtOW8rNXFrT09jNm9FT1E1SUF1bDVhNDlYeE1o?=
 =?utf-8?B?cWNiSVJvTWU1Z1ZsU090VmlPaFpHcGZod3pxOGg1OHZtWFRtUWl3S0R4ay8r?=
 =?utf-8?B?emZBQ012WTN3K2ZPOElxdVBTUTFyTUMzOW5MYXBuSTFLNWQ2TkFqdEtkd1BU?=
 =?utf-8?B?M3NDZ2dqdllxY3BPMjJ5UUNobTRTSFdzcW1FbHN5a254TG5EQkprZUNEQkJD?=
 =?utf-8?B?djFVL3B1MXlwYTBBYWQ2TFpwUUg4UGpRL1VvQTlIYlpjeEIvdG5PNlByS2tY?=
 =?utf-8?B?eHZzbWJ2emxkZ0R2ODdGU0tJWWlGNjV0dEJRSmNTYUh4ZWQ4OUJOZWkzeXdt?=
 =?utf-8?B?NUp1YXNqL3pzYWRzTW80RjBMdDF6ZVNZazZsLzZieUhTcWVmNCswVTJIWm5M?=
 =?utf-8?B?ems4RVVTelBHK1hTTmlnZnhESnBrTWpsRTFYclBsZXZHTnJSTkYrVlFyeHBo?=
 =?utf-8?B?S0txWFVVQktocGpYcWZ1MWV2MVpDWjFNWWZHSXpwQ1hWeWcwUXFsbldzdGJp?=
 =?utf-8?B?R0JuQ0h5Wk11SW1oMUdjK0MxM3VnMUtET0x1VjJmekpTSW9KamU3Uk1kTmZn?=
 =?utf-8?B?S0pEUFhOT2tDYysrRWROcGxTc1g1eTBxRkJqL2lrVFJIb25FS3J2QXNGUXUz?=
 =?utf-8?B?Y0hQZ3RUNFY2aDVSclZSU0psdzAxYUNhM3RacEw3QWQvL21GaVJ4ZnI5OUVr?=
 =?utf-8?B?cnRrS3BiR1g5RjB6bEpQTEhpVGtId3ZRa0RyZk9LM2hDL2JiemNxNTZHcklj?=
 =?utf-8?B?TzhDdmJaSzB5QzFTdVBBSW5BN21aWHorc0lrR2Rua3ByeUtLempjMDZFL1pM?=
 =?utf-8?B?c1NhQ2RxY2tWMDhGMkk2ajRNd25QaDBpSy9QYTg1a0JoNjdWY3hENm4yWEds?=
 =?utf-8?B?MFFUZFVxRVRKTFAwQThkaGthckVrS1U5U0hUbEJwcUR6VzJxMEJiWllobGFr?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 821c0771-4804-4d18-11ed-08db04b40828
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 00:25:48.3024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HajX451/GlYLZiaxflIRb4Om7JOBeoUoVZHQrpIWaZ2p5dKTEW2At78ezkQ3XauOjA8fMiZlnP1WODXiFqN6y5mGTpC9qXuAVEEnMihWXz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675297574; x=1706833574;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GV+GYrti4RdYQqxjTEfbMgPWe5qrl2hMkyQa2OzZT7k=;
 b=Gd5VwGma6FD/qQZcyckEfD5XSXr+uj6qbFINuL7lT+T/nIcYUJybcHFH
 7/6siGHzbBLPQAFq6h8xGlQqoKthYaWJzq5fvh6Ziw38HCc4iFhNEXQKG
 e0lxLrD4kRC82V2LC5/HnipIgEbunjFBspCRQviNdEOmJXMhp6A6C9LO3
 lV3WDjw8n7fzbuboyU3DOjnJI1E2h3UjYoU9QB2fzcdlVsvpn/p7eXY0j
 yV3dY80bp1MuUkciCqOh/eOZqbBqXHweh0C+hmZst0lNqZLYEC3cYmJN6
 HHjcErXqym7+1l2AA7YU0bLVK7FymcugW4wFqvFHrCi7VXsRY9ilRMHNT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gd5VwGma
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igb: Fix PPS input and
 output using 3rd and 4th SDP
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
Cc: Matt Corallo <ntp-lists@mattcorallo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/1/2023 6:36 AM, Miroslav Lichvar wrote:
> Fix handling of the tsync interrupt to compare the pin number with
> IGB_N_SDP instead of IGB_N_EXTTS/IGB_N_PEROUT and fix the indexing to
> the perout array.
> 
> Fixes: cf99c1dd7b77 ("igb: move PEROUT and EXTTS isr logic to separate functions")
> Reported-by: Matt Corallo <ntp-lists@mattcorallo.com>
> Cc: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Miroslav Lichvar <mlichvar@redhat.com>
> ---

Makes sense, the pins are separate from the functions.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> The fix of PPS output was not tested.
> 
>  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index c56b991fa610..04f06b396e92 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6789,7 +6789,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>  	struct timespec64 ts;
>  	u32 tsauxc;
>  
> -	if (pin < 0 || pin >= IGB_N_PEROUT)
> +	if (pin < 0 || pin >= IGB_N_SDP)
>  		return;
>  
>  	spin_lock(&adapter->tmreg_lock);
> @@ -6797,7 +6797,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>  	if (hw->mac.type == e1000_82580 ||
>  	    hw->mac.type == e1000_i354 ||
>  	    hw->mac.type == e1000_i350) {
> -		s64 ns = timespec64_to_ns(&adapter->perout[pin].period);
> +		s64 ns = timespec64_to_ns(&adapter->perout[tsintr_tt].period);
>  		u32 systiml, systimh, level_mask, level, rem;
>  		u64 systim, now;
>  
> @@ -6845,8 +6845,8 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>  		ts.tv_nsec = (u32)systim;
>  		ts.tv_sec  = ((u32)(systim >> 32)) & 0xFF;
>  	} else {
> -		ts = timespec64_add(adapter->perout[pin].start,
> -				    adapter->perout[pin].period);
> +		ts = timespec64_add(adapter->perout[tsintr_tt].start,
> +				    adapter->perout[tsintr_tt].period);
>  	}
>  
>  	/* u32 conversion of tv_sec is safe until y2106 */
> @@ -6855,7 +6855,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>  	tsauxc = rd32(E1000_TSAUXC);
>  	tsauxc |= TSAUXC_EN_TT0;
>  	wr32(E1000_TSAUXC, tsauxc);
> -	adapter->perout[pin].start = ts;
> +	adapter->perout[tsintr_tt].start = ts;
>  
>  	spin_unlock(&adapter->tmreg_lock);
>  }
> @@ -6869,7 +6869,7 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
>  	struct ptp_clock_event event;
>  	struct timespec64 ts;
>  
> -	if (pin < 0 || pin >= IGB_N_EXTTS)
> +	if (pin < 0 || pin >= IGB_N_SDP)
>  		return;
>  
>  	if (hw->mac.type == e1000_82580 ||
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
