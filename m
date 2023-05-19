Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44609709C88
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 18:37:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EF9B42567;
	Fri, 19 May 2023 16:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EF9B42567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684514245;
	bh=cgtNbKMzk3mbgLd8LMG2e5S+M9tvngxtCh5Ydal1O2U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hhwc5GoF6pD5ErCJAZeI6bvlLJkD0iOB2/i7NeviZE0TVQcmodtXMzePQdiHFRCU3
	 DIVt61ccGVczdDj2YW83/DGr78XZj93JL41SSGQnEMEjgNSNncy7rMx2/RkZQOSndY
	 PghXsyiZwScsVoV7D0MFJloSZ7l3RR8I//Xk42nMYMM3oW+Hdq7C+NxT8lmvbA7URf
	 8yFlyIOrAimk3yCtcLYNxyQAiHcv+RjSmfbqS3PLGYCpBGi6AEvoR38M3xOMTdvdWg
	 ZhQ9R4q6fZKZg3Ys1mOIqL0LKNlgzWjUetEg6rNBCdQJCLCa80RYcMFg3XXxjT+yFb
	 yfC++E1he9IDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X2L97eYWncdG; Fri, 19 May 2023 16:37:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0BDD4250F;
	Fri, 19 May 2023 16:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0BDD4250F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8551BF362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EAD660F47
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:37:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EAD660F47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDyOOTSPVj53 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 16:37:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACF2960EFE
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACF2960EFE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:37:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="354774288"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="354774288"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 09:37:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="733357344"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="733357344"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 19 May 2023 09:37:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 09:37:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 19 May 2023 09:37:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 19 May 2023 09:37:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVHegnM5iDaYuqTDPep2PztU26gdcbqQJ0IBJDxlGboryrNyJu3PglzfncjbOyoEnl40r4hHDxeptFBuhCjqFUsJoTA8N00sXP/oUTPi7mcM1YEYkW8NlbRpFZH5OQv4hPxhMq/I9xJ5DFTYu236NEbxJLKfgrbvc6gDVAzsQltrh2HiUJaw95wUqk5x0PUE30VzaZeb6GkIRw7OO59POqcG8+uyiiSurOlotz0TbngZRZ2S/cU/BxQbPsURxls4oldrQfhGZFLhoRGo8tJ5+vKWcxrcPtIWwfH61n1BiZ6iN6vtcogNAKytr7yquP2etbopwIyb80TA4Fr0loW/2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gTf2u9h11Fwy4FTjWvptSzX9VI6pT+c6a3nau4ud3lQ=;
 b=bMJY64LW0DAmTLeQ3Hx6aPKCzNE0gO3LzreFLA3bK+IEkeKpmUM6NblzfW2lK+SkhBWoUdlP8898K08ShWU7mMnTwXVrfI4x6mx1+NP5VGvvq7kp4n3K8UJ9Cn4/x3nQf4SbZi6s0BN1/mO0CC2LtG8epJmAmB7CVtSxPx983ge7RtXisBAgeyvf0BDbr1V0y4EzcW7dsr93ggVkEvGeN1QtM5Uyi5ju1ms/fJSmnfOkm2kY46jAWkBteM4v/X5bPYwgICvKio0piDfop5YSYEpQzBLOjbOaAQo5072HZ7aTAsPNSMBdBA+wHh5e91l1A83eramwpW+iQLFkWhcFng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BY1PR11MB7981.namprd11.prod.outlook.com (2603:10b6:a03:52f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19; Fri, 19 May
 2023 16:36:56 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 16:36:56 +0000
Message-ID: <5b817d49-eefa-51c9-3b51-01f1dba17d42@intel.com>
Date: Fri, 19 May 2023 18:35:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-15-larysa.zaremba@intel.com>
 <ee1ad4f2-34ab-4377-14d5-532cb0687180@redhat.com> <ZGJnFxzDTV2qE4zZ@lincoln>
 <b9a879b2-bb62-ba18-0bdd-5c126a1086a9@intel.com>
 <a37db72f-2e83-c838-7c81-8f01a5a0df32@redhat.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <a37db72f-2e83-c838-7c81-8f01a5a0df32@redhat.com>
X-ClientProxiedBy: LO2P265CA0426.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::30) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BY1PR11MB7981:EE_
X-MS-Office365-Filtering-Correlation-Id: 55b8c19c-cd85-4ffb-6b86-08db588741f4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H2AhOgOrOI8Cq1cBjXY3lk6d7xIExUrkt1LyF2sJIwbtIlBDVmc4Q4Qupy32ssFm+D/IYRSTKzxBnELkpTZeqUCGKm5Df/i8KwR3dOr3FlTFIra2sgVPjyH+22HE1UvlyPwUFkOkh5yRNzWgYkwqcPaOwIGxZcOrjPYrzG0S/1r95fkUTUeUa5Nn3HpJZVAHPJrDKUQM4NnXL/ZJb/8BkUVgHL1JL4vyHn4IwdbZyPRz8dTIS9Lg5atfAKhFmw3BeYp5WjkFsgHgCmO4xlNPyRvMDdkBVYTVPT8UjpxcWvGje8WSAzw0bU7jgm5aFKpSp9R1/zhjirnzLqE4eE0A7/SKzVzKDjNZSKnkvIbtOb/y4YCChgU+Jj7KnvAzo9emcDh2RsmEQjnM52XVC/22J7DskzjQt+8jgc/vqd7gzEcgHo9taqr0uKYo4HnbHLy14NeNvYISCj+td5buUmDmlE/CUrEejJHi8PnD7XiiXWJedEe9Htblh9iH/V+srUsDrHKGB0nNDjK80JU4LtiKSO5aA/Em9Nsmt35t8+pI1yJvmDVPgkzEw1W39tzZ6MtpGEFR/aNzQKgCsGTv4gdBQ9QjXhGUCvEPiLloTsa3JON2rXtcVb5vsE24QDsCHS4wTj5SuKk8vwBAngrfLn0F/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199021)(6512007)(26005)(6506007)(36756003)(2616005)(31696002)(86362001)(83380400001)(38100700002)(186003)(82960400001)(6486002)(54906003)(7416002)(478600001)(316002)(31686004)(2906002)(4326008)(8936002)(6916009)(8676002)(41300700001)(5660300002)(66476007)(66556008)(66946007)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2MwNzNyejBkdWxWdm5jOS9qeDlVSmJtd3hzUnlOTUNFaytoMkRjcmxTcmJC?=
 =?utf-8?B?OWI0QTIzOWxnaWlNZTdIN2NmUEZJN2NqbjhFYXhWazZFWDUxbHFNY2RPd0dj?=
 =?utf-8?B?MUNzWW94L2h6N21lVUJ2aFQvL2g4OXByVDFvMlYrNEFRRVpGOXhWL2NEaWli?=
 =?utf-8?B?QmltRk5CYnhOY2NxeUlUTDdkWFNlZ3BuQW5Ja2hxOGN5Yk5lODVVZG0xa2RD?=
 =?utf-8?B?WGMxcXhERWswT0lONUs4Sk43NkRPSUd2a1FVdTgyZVRHM0hhNXpEKzBzTWhQ?=
 =?utf-8?B?T1lRc3BKSFAxRVZQRTBpRnJUTVhhd3RIeWxGK3pZNlQ4T3ZqMGt6OUd5TXho?=
 =?utf-8?B?MkJsVi83WC80K2xOMVZXZUQ3eTZneXBQOGhZTWRlNVZubS9yM0RhMEQxZEE1?=
 =?utf-8?B?K1R3SUh2N0pjN0E0bVJYS0t2QjlvTlQ4cFUvMHdhMDBpc2Nmbk9EeFptT0tX?=
 =?utf-8?B?Q0J0NFRpdXJnZklwT2I1UGUyTmtkc3V1dDdhTjhmdHdUUy9pamN1eGNkVnlu?=
 =?utf-8?B?OXZPQ1FaRXpDSmpFK3FxUGJTNGtLTEk1OVdoeTRXRG10bWc4Q0NKbTk1cGwv?=
 =?utf-8?B?RG1EcVQwektBVC9zamdMcmhGS0ZORGo0RlM4MjFZR1ZLRTA2YXdFWElRZG9y?=
 =?utf-8?B?TkRiNk1WWWVXZVl2UXpRYm81OHh1ZGszVGM2L3F6VHY4Ym5CVUhVL2kyaFcy?=
 =?utf-8?B?cWIxOUVwTEpsa1VnZjgybUFUZzlKU0l3SnRQK2pxTWZqOFVCMEZsazNGekhz?=
 =?utf-8?B?a3R6SmJjdHIvWXVxbkNiSm5VSFFDZTl4dWdsV3dDTklCdmMwd2x3dk8vcUdL?=
 =?utf-8?B?SDQzTDJZWnQ4cGRxK1lBbkFEaGRFQ0ZGeDlURHI3Mkh1RGQ2U3RQcG9wY29O?=
 =?utf-8?B?QmNKdlJIR1g3R2dFdUxGc01qenBFRDRhaHp5SVZQS3l2dzFRdmlubkVqWS9P?=
 =?utf-8?B?enVES2FYcWdzSHJCQjdRbkcxVUxOYW11NGJVcVF4ZCtScTd1NUFLbThtS0VI?=
 =?utf-8?B?TVhZb08rREN2RHpScld2YkZYLytJc3JxOGVOWHIrOEphc3Qzc1k0K2R2cjFJ?=
 =?utf-8?B?eXVNa2ZoQS9TM3hJaHVoUkZiSU1GdFoyS21HYU02RjFGcWF5OUZXRDJMOEIy?=
 =?utf-8?B?RWVWUXFReXQrdFUyTDJSRkQ4ZXNYdFp1aDhObjJTK29yby8zdms0ODRGMENi?=
 =?utf-8?B?dHVPMVlSV2RvUkhNbFdtaTJLd0pKUE1pQ0RUb2M4bEJTUXFDZWQvVzR5UTJ1?=
 =?utf-8?B?dGJwS2pmbkdNWDJIejl1TE5KUXM5UUs0VVdwalNQU3Q5bDQ3R3ZjdSt5TnJj?=
 =?utf-8?B?dmtNZnZiTlR4c3FNbGRQYUdNdXN5QnB5VnpUYktmTHhCRVVUdW44ZkV1VG9p?=
 =?utf-8?B?MXRNdVN2WE9nRnhQZ21iZjQvMk1vVXBadlpiVy8yTm55ajJQNUE1eDZvdzRY?=
 =?utf-8?B?enZmYUxiTVN5T3ZFVzRWd2F3MlNEc1dtL2RVV0I1OCtvU0hPdVUxRzR6MEp3?=
 =?utf-8?B?UGNlcUIvMkxqOEJDWE5CMUlNcDUzWllKUXR3Ums4TFVaNW5KN01ZYU9UNlRE?=
 =?utf-8?B?eGRGNWdEU28vU2IzTGRERXVZV21SckJWN1JYTXgvcGpaNzlIS2JOOHNIU1Jl?=
 =?utf-8?B?K0JJS2NUclhQZmZ0K2QvaE9uTHUwUUtvU3F6YXYrSHluV3VEWUFTUWRuTTFr?=
 =?utf-8?B?VllMaFphSlU4cE1Lak1pTGNGOEd0bGhIV1BmM3Q0RVNSUlVUTlJ0VWhyMjZN?=
 =?utf-8?B?L3lTTHBCSHdGQkRNSlBKeDNjMXFhamFWeE00SFptVTlxdVBocGViNS9kMUVq?=
 =?utf-8?B?UCtHL0VVdWxhcFhWdE1WWE8xRjVNSDVETG5DZ0RMbnpOYWFNSTViMnM5K2xI?=
 =?utf-8?B?K1VYVXAvbDRBcHo4NGF4N1Bmc0I4NVVIeWxMYXdlQnRSL3hOQWZwMVdJa244?=
 =?utf-8?B?dlpUUVp0eDdqVmpWTlQ4LzVCanlMakRoS1pPenhVSkNWZGFsVXZKd3VqbzBL?=
 =?utf-8?B?NnZ6VkowWFFpbDRtRU4waWQ5V2ZLM3ZFaU4vMnBrOTE0RG1GOWtSeW02TFBF?=
 =?utf-8?B?SWs0cVNhRWRpbnl6dFNGNGlXUC9CbXhzckNxaWlqbGdjNTJTUVhzTnBBMzcx?=
 =?utf-8?B?YWh2aXZWNTBibEZRMFpCVW9VN0s1T0d6QTJoYjJwMnRPL2xtWWk4T1Z2U3hB?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55b8c19c-cd85-4ffb-6b86-08db588741f4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 16:36:55.8372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MHNCpTHq3icYlnW9IxzWlOaXOQpm8744qj7BFK4KIYUwOazOwvBVBtVuhqemPG3fuxy3Vc5KX2It6vNQxnPuYjRrvXX9mL/KYH1/lDm8738=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7981
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684514236; x=1716050236;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CrHuy7/kg+MjhE4rcZsROuwkyTgzNozSyNjaMwGVlyQ=;
 b=E7UGxwVWt4q9y+fxgabH3tJ0CvDLYAVK/plaFgRKdptK22Y9hAw9yQJc
 H02zH/ABW6JSAksWdcu8dQyGSLXu9hA07Ea68gaLJItue0fZb0MNa5rnW
 SaIeByyY9X+shy1Gbt1gHOEmd8SgH4FYPa0qmEoDWAmGBzPgx9jNVymKF
 qqFmJraZQPyqGBr64jAQod/u2bHfFXdvz7YiJx2LlkwiyWUqUyqr5fT0l
 RQrOTIW1k1Vt54I5KYTEmdLJJ9UBlqZrxtgmh/ylDMh0N3tO7m2aBDgGz
 n2yBMLPOBGK2gWyyuk4W3j05PklwrvBXhRFeGbQDsfr9PNntctw6p1tW9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E7UGxwVW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 14/15] net,
 xdp: allow metadata > 32
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
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8amJyb3VlckByZWRoYXQuY29tPgpEYXRlOiBU
dWUsIDE2IE1heSAyMDIzIDE3OjM1OjI3ICswMjAwCgo+IAo+IAo+IE9uIDE2LzA1LzIwMjMgMTQu
MzcsIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+PiBGcm9tOiBMYXJ5c2EgWmFyZW1iYTxsYXJ5
c2EuemFyZW1iYUBpbnRlbC5jb20+Cj4+IERhdGU6IE1vbiwgMTUgTWF5IDIwMjMgMTk6MDg6Mzkg
KzAyMDAKPj4KPj4+IE9uIE1vbiwgTWF5IDE1LCAyMDIzIGF0IDA2OjE3OjAyUE0gKzAyMDAsIEpl
c3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4+Pj4KPj4+PiBPbiAxMi8wNS8yMDIzIDE3LjI2
LCBMYXJ5c2EgWmFyZW1iYSB3cm90ZToKPj4+Pj4gRnJvbTogQWxla3NhbmRlciBMb2Jha2luPGFs
ZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+Cj4+Pj4+Cj4+Pj4+IFdoZW4gdXNpbmcgWERQIGhp
bnRzLCBtZXRhZGF0YSBzb21ldGltZXMgaGFzIHRvIGJlIG11Y2ggYmlnZ2VyCj4+Pj4+IHRoYW4g
MzIgYnl0ZXMuIFJlbGF4IHRoZSByZXN0cmljdGlvbiwgYWxsb3cgbWV0YWRhdGEgbGFyZ2VyIHRo
YW4gMzIKPj4+Pj4gYnl0ZXMKPj4+Pj4gYW5kIG1ha2UgX19za2JfbWV0YWRhdGFfZGlmZmVycygp
IHdvcmsgd2l0aCBiaWdnZXIgbGVuZ3Rocy4KPj4+Pj4KPj4+Pj4gTm93IHNpemUgb2YgbWV0YWRh
dGEgaXMgb25seSBsaW1pdGVkIGJ5IHRoZSBmYWN0IGl0IGlzIHN0b3JlZCBhcyB1OAo+Pj4+PiBp
biBza2Jfc2hhcmVkX2luZm8sIHNvIG1heGltdW0gcG9zc2libGUgdmFsdWUgaXMgMjU1Lgo+Pj4+
Cj4+Pj4gSSdtIGNvbmZ1c2VkLCBJSVJDIHRoZSBtZXRhZGF0YSBhcmVhIGlzbid0IHN0b3JlZCAi
aW4gc2tiX3NoYXJlZF9pbmZvIi4KPj4+PiBUaGUgbWF4aW11bSBwb3NzaWJsZSBzaXplIGlzIGxp
bWl0ZWQgYnkgdGhlIFhEUCBoZWFkcm9vbSwgd2hpY2ggaXMgYWxzbwo+Pj4+IHNoYXJlZC9saW1p
dGVkIHdpdGgvYnkgeGRwX2ZyYW1lLsKgIEkgbXVzdCBiZSByZWFkaW5nIHRoZSBzZW50ZW5jZQo+
Pj4+IHdyb25nLAo+Pj4+IHNvbWVob3cuCj4+Cj4+IHNrYl9zaGFyZWRfaW5mbzo6bWV0YV9zaXpl
wqAgaXMgdTguIFNpbmNlIG1ldGFkYXRhIGdldHMgY2FycmllZCBmcm9tCj4+IHhkcF9idWZmIHRv
IHNrYiwgdGhpcyBjaGVjayBpcyBuZWVkZWQgKGl0J3MgY29tcGlsZS10aW1lIGNvbnN0YW50Cj4+
IGFueXdheSkuCj4+IENoZWNrIGZvciBoZWFkcm9vbSBpcyBkb25lIHNlcGFyYXRlbHkgYWxyZWFk
eSAodHdvIHNlbnRlbmNlcyBiZWxvdykuCj4+Cj4gCj4gRGFtbiwgYXJnaCwgZm9yIFNLQnMgdGhl
ICJtZXRhX2xlbiIgaXMgc3RvcmVkIGluIHNrYl9zaGFyZWRfaW5mbywgd2hpY2gKPiBpcyBsb2Nh
dGVkIG9uIGFub3RoZXIgY2FjaGVsaW5lLgo+IFRoYXQgaXMgYSBzdXJlIHdheSB0byBLSUxMIHBl
cmZvcm1hbmNlISA6LSgKCkhhdmUgeW91IHJlYWQgdGhlIGNvZGU/IEkgdXNlIHR5cGVfbWF4KHR5
cGVvZl9tZW1iZXIoc2hpbmZvLCBtZXRhX2xlbikpLAp3aGF0IHBlcmZvcm1hbmNlIGFyZSB5b3Ug
dGFsa2luZyBhYm91dD8KClRoZSB3aG9sZSB4ZHBfbWV0YWxlbl9pbnZhbGlkKCkgZ2V0cyBleHBh
bmRlZCBpbnRvOgoKCXJldHVybiAobWV0YWxlbiAlIDQpIHx8IG1ldGFsZW4gPiAyNTU7CgphdCBj
b21waWxlLXRpbWUuIEFsbCB0aG9zZSB0eXBlb2Ygc2hlbmFuaWdhbnMgYXJlIG9ubHkgdG8gbm90
IG9wZW4tY29kZQptZXRhX2xlbidzIHR5cGUvc2l6ZS9tYXguCgo+IAo+IEJ1dCBvbmx5IHVzZSBm
b3IgU0tCcyB0aGF0IGdldHMgY3JlYXRlZCBmcm9tIHhkcCB3aXRoIG1ldGFkYXRhLCByaWdodD8K
PiAKPiAKPiAKPj4+IEl0J3Mgbm90ICdtZXRhZGF0YSBpcyBzdG9yZWQgYXMgdTgnLCBpdCdzICdt
ZXRhZGF0YSBzaXplIGlzIHN0b3JlZCBhcwo+Pj4gdTgnIDopCj4+PiBNYXliZSBJIHNob3VsZCBy
ZXBocmFzZSBpdCBiZXR0ZXIgaW4gdjIuCj4gCj4gWWVzLCBhIHJlcGhyYXNlIHdpbGwgYmUgZ29v
ZC4KPiAKPiAtLUplc3Blcgo+IAo+IAo+IAo+IHN0YXRpYyBpbmxpbmUgdTggc2tiX21ldGFkYXRh
X2xlbihjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+IHsKPiDCoMKgwqDCoHJldHVybiBza2Jf
c2hpbmZvKHNrYiktPm1ldGFfbGVuOwo+IH0KPiAKClRoYW5rcywKT2xlawpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
