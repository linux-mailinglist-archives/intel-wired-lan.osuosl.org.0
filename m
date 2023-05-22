Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C65DA70C261
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 17:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16D52836C8;
	Mon, 22 May 2023 15:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16D52836C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684769405;
	bh=M1piWl9fNe/n4LmT9QaSz0auQRcTlWEmzBVMGw+e0s0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3TwecAmMkB6AecH7J80HMczahyvfN5QspjWKRb1qfYrApiO7ESXlyit8BCTSEAe8B
	 3WDNlE4fzToqwNw/SIf9u+SZBs7A262v1NRl/JxEhKPc3f4MdGGjUpeB/OPUb9OSxZ
	 bwCooMnBIEkibfU1RgxCpYZLI6bjjLUJKe8X3sZ3o7XdOU+h6pt4zgy6jKDP+Fl42q
	 YxPlyWz4WU9yJavXuX35FfLAJcEryoqakNZa7T1Li2uRGJh79PofenvrotiYFTfA71
	 1TpJkWYJy9b5MIslZpcJkPPJBlN2hsHmvMlVg1ls6xFPU/Quxn8heyE20Wk8dVPHIW
	 LxmyEh5dYA07g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BNQ65nPGfwSA; Mon, 22 May 2023 15:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D11128202A;
	Mon, 22 May 2023 15:30:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D11128202A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C34241BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A47FD60F13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A47FD60F13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CuI9kOUYrOPu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 15:29:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB2B760EA1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB2B760EA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:29:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="351801017"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="351801017"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:29:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="1033657899"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="1033657899"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2023 08:29:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:29:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:29:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 08:29:55 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 08:29:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PPHvu8cjXNNENaqxx5z5pgwU8e/B+ElXd0355vMXDhOtLNQ5Rz/S4916mufWnpL4utvkENSCNcYZjK7BbmCvsu5TndLVhsq6gSrowOXzinL+qmoRE+Kyw0oPCmZo8vnQEx8I58/Knp3p2BFUTFUdf9QS5oTJqH/7ZSXhOXZPaLbSbv902z1mFkzTxWSX5AoCfD3gtVmL50RS2O36k8QMblz5pEhgDmWr9BYEHfhrG/OyoL1/pxDGK/zBuAQ19fAZcM3QyBnJg/i+u9IHYf73a+KCZDhsNZ+sTa3d2Qh+WH9MW7MxWhWPRvRII8BQKTc3171RXw09iMJWJSY6rJhAwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xriRpxwNZ7Pod7zmj/WfgoCLkOTXcmCoI3rY5jMuJWY=;
 b=nefh1lyb400gWO/Ui1e3lxKA0rbLdyO0aYA3O+M12a/qL6U+DQoW0w7WPxcH7iIiVsDBKfDIKLkHYdGno5x+pjm1NNHwepYPVoUK/G4IKrBJaKw9h6ggQLJkWfWz5+8HlV0ZNJ9CsSzSQW+ADSnkJrw6rv477nxBFbYZHiy48bqaRMvHacyEnZ9peSbxY3VbAVq1WeSInZFOKhNhX+ja65g4+H0RSHpHpLvwDG8tJay0YDQOv+B0iEWBxqcsAVkkEO1/nRGODQlbiziotZNyUlEFCuYL+bWyCLdRn7YAF6h6ZQ46B1iXYJ3T4bvNBj3H1DpP9l3rBQfVyIEXRjbmUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY5PR11MB6413.namprd11.prod.outlook.com (2603:10b6:930:37::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 15:29:52 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:29:49 +0000
Message-ID: <d53f0150-d74b-7cf6-8fe7-324131b43982@intel.com>
Date: Mon, 22 May 2023 17:28:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, Daniel Borkmann
 <daniel@iogearbox.net>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-15-larysa.zaremba@intel.com>
 <ee1ad4f2-34ab-4377-14d5-532cb0687180@redhat.com> <ZGJnFxzDTV2qE4zZ@lincoln>
 <b9a879b2-bb62-ba18-0bdd-5c126a1086a9@intel.com>
 <a37db72f-2e83-c838-7c81-8f01a5a0df32@redhat.com>
 <5b817d49-eefa-51c9-3b51-01f1dba17d42@intel.com>
 <fed6ef09-0f5b-8c3d-0484-bb0995d09282@redhat.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <fed6ef09-0f5b-8c3d-0484-bb0995d09282@redhat.com>
X-ClientProxiedBy: FR3P281CA0057.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::8) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY5PR11MB6413:EE_
X-MS-Office365-Filtering-Correlation-Id: 20d2f506-f26a-4980-4cbc-08db5ad96155
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PneZLpMmsPTGRPd/fqY17PwZp1X3nzpw4Y9FbDs79N2K2to6hhVa8JBLxTk1Kyv3GjsCI5iZtUAtFf3VeTJ1Sit0p7C1gGeNhbHAoFyGFiPwZhTU0USo+lCigkAm0YGk0VYrWWAMcPKo6lFx6AOfr2SkL5t3rzS4xoKvmSKl2bQQOkL3kG9vbQiQeztlkXrjfYs4kO6XysvdsHZbGLob/Jw3uUtHmDVaAFqVSYMga4BZX68ztU0O9WeKyJ2QLVj4sUMRi8QSukUb/RtbGy1YV9JjvcwV9VCnTWy2E9O8iRwlU1tqQK5KWtQfFpAR8CVMNJk+ljc/ej7VuqcfSYt2khz4iROsfgzyzPN9EfB/lQACYG50nPhYpWC8Tj1Ujm6cYIHzP36Hu3zzrb/fhIQsGcQhAWXJl9DR/H6vuP8Bi7zOpSAIcHppa5Yoi93mCWMXJiZF5+sGCWcxHOjkXbQsLI8FvG277aUfWYusLZl2kEH+MRhU7jwXBMEmTrRce/2dR8JKs3PmpFFXieCafPCn2tfQi4TTHUiTs5ct4EYX8priOAN9XJjMbxMJaWb/0/Z5MD1klTEhqIwzLgx811WkCGJtGseQa8bSzI9qw88x2StMLLlfUgNU0o57r3vYTKocLbRb/QgaIds3zVx/CW9MMw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(376002)(346002)(366004)(451199021)(7416002)(5660300002)(8676002)(36756003)(186003)(2906002)(83380400001)(86362001)(2616005)(82960400001)(38100700002)(31696002)(8936002)(26005)(6512007)(6506007)(41300700001)(478600001)(6666004)(316002)(4326008)(66476007)(66556008)(66946007)(31686004)(6486002)(54906003)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c25LMW5ZRDlTcFZzOFlxYW9qZ1psNW5PUkVvdi8xZWlUS0Zyb0NZdHp0bnEx?=
 =?utf-8?B?ZXJCY0JBejBsY1ZPRXFjYnNWVUxXVmtFWFZ6eXZxcUtoMEZmYlk3SW1nd00z?=
 =?utf-8?B?RDEyMFVKZytmald4ODZUZm8xSmJCTTVBaklSLzlJY2RQWjBpQW90V2NIaUly?=
 =?utf-8?B?KzNpd1VZalMvUG9NSXQ4MlNYSzNKaVJyRW5yZ1lPbDdwY2h0WHl1RnozSno5?=
 =?utf-8?B?aVZ3b1RHQk1ZNGFVR1huQUNVUFBiQ3lXN0JFdWJRSWJCY2xJU0YxM2NKbXJv?=
 =?utf-8?B?OW40aUR1QWpyRmh4U0RKWGUwR0VneHJtNVpqeXo4a2U2bEVpOFYweUo5TmJs?=
 =?utf-8?B?S1p4ZGZWRVZGT0JtQXdlRW1lNmF0M2UzZk1IbzVoRVc5bGFkcityQmtoR29T?=
 =?utf-8?B?MHR5L0dXZDZVdHFVajN3Rkd4alJhSUo2WE9icW14N0FnR0Z5NnFvek13TjZO?=
 =?utf-8?B?UGZuM2U2VWRCV1VsZis3K2xMelVndTIwR2pQNkpkeDRDVlZVdFZpZ1Z0NnhP?=
 =?utf-8?B?dWhsZGRsNnVEMXgzQUkzQTQzUUxvb1drYjNPL203U24yU054R3FsM3hzOHQr?=
 =?utf-8?B?SkoxamtjTmNJVlJQRlBiYmxDeUZTQnpFMGl6azlpaXRkWjdZanVvQXBzV2lR?=
 =?utf-8?B?N3RTQjRsb1pPM3B5ZnhYSGUrcHBJZUE4aVQ1VmFXdEN3NGY2NTBVSmxwVDBC?=
 =?utf-8?B?ZzBwY3oycFF5Y0ZFTU16YVFCcWRSTGVBY1RpUDAzNDFNaFllNjB4dUgvWVRS?=
 =?utf-8?B?d0puOURiRitBQU9XY0FTV25kMVAwR0U4dWhoM2hWNE9ZRzZkdkx6eWVHREI5?=
 =?utf-8?B?bFBLM2pnbm1VM2M1VEh0eUF0MGQvazZ4Z1NBTWsrbkdqVlhwOExPQm1tZm5n?=
 =?utf-8?B?UXpOMmZhRUlYWHIvb0R4WFpBWVRUc1ZWQW95U0FjWUtRZU5HRkZGVUIrY2px?=
 =?utf-8?B?YjdsYU1CbDRVbTdIazlmd3ZGMjNHU0xzb1ZwTWhlaWdhNUZhWW8vKzFDTm5h?=
 =?utf-8?B?UUFPRXNNRHRrbUozQ0VQRTdySzkxMG9tSlcycEluQmcvbW1iNHM0VUk3Z1hL?=
 =?utf-8?B?dGZ1cmhYQmdJTWRhdWlxZ2dIem9nUG9Id1VYSytkcEphWUUzakdhV0JjdHZW?=
 =?utf-8?B?UnhOWjVEYTNQNTJHUUFIKy9oRXZ4RUhhU29ZOFBocVhZeHA0aGk5Z2tmT2w3?=
 =?utf-8?B?MFpMYUJ3UXNLYTN0UVBjR3d6STluQlhUMkxCNjFqa3B2eTk2aUlkZ3MxZUQr?=
 =?utf-8?B?THJtM01LQUV5NFNVWTUzajFQWjVvTmN6WDgvM29IUlRrMUk1TG5vZ2tIMlFm?=
 =?utf-8?B?WjYrbGFDSzYyT3JYT3hGY3RzcTVDTmRSZmVSOG5XbmtsZjFYTVZiMm03SllX?=
 =?utf-8?B?MzFRcUZFL0VLdFVPTFhJTVc3c3QwQ3Q0THFwY3hONGZLU2JBeU9HdGxCYUZO?=
 =?utf-8?B?UzNIbytDYzVpaVBoZVB3V3J2TjRmLzY3djRpUVR6cUZOOWhjYVNubnVMQVNR?=
 =?utf-8?B?aVpyUDloRkRqZ1ZHbEcxc0lOYmQyL3dOejR5YUZ4S2lseFNFKzMwYU93eUQw?=
 =?utf-8?B?UUJOQ0FWeUZMQWNxTXFHakc4b2VPTDB6UkFwWEwweXRFNmxYWCsrbGc5cXo5?=
 =?utf-8?B?RFBJbFgwS2NDUlJIVFZUaFI2VDU5MHZmWEw3aDBQd2IrTkNLUHBwSHp2ZWRp?=
 =?utf-8?B?NGlnOEo2UHdOUVhuc1BuOUtCQlBSR0VIUjFmRXk2elREQXFvVVlOLytuWFhH?=
 =?utf-8?B?WC80VENSS1VyT1p6NjV5czBHU2hJbmpSa1NvbjFseTczZFBYYXpXU2d5bjcr?=
 =?utf-8?B?dVVFdUZURDhGVDVNcWVSZkxZNEc0NGNlQkxvajJWdzRXeXNyL09xWFpuSUdD?=
 =?utf-8?B?ZitPZmZrQzFVM29EVzRjVWZwby9FTHF4R0ZWMmRCZkFMc2hPU2hKUlJzNjZN?=
 =?utf-8?B?dUNOajFWcDNYNWpNSDRVZ2JpRXVGL3UrUXlpNndLU1FoUGkvZWt1aVZBQWVH?=
 =?utf-8?B?ZTZlZ3lwT04wY1crYnBNS3E4Mys4Q1pSS2MvaHpkNmtRU0Y1TVFBZk5saUJP?=
 =?utf-8?B?dnVIR1htSGNUZXVsU05mOElZRnRQOG44bzlQajIyODJJd21HZWE4Q3B5Rksr?=
 =?utf-8?B?S1JPM2ZOODdyRFdUOWlwc25UVHRLbU5qaTB3dVloSEYwWVhPRW1HN29sTWY0?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20d2f506-f26a-4980-4cbc-08db5ad96155
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 15:29:49.6054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0pSQlWBWt0AWsMIJUYB+1qeJTxPBFc8Nhpy5LNtZBJgSm5XZF5stgU8LEiiOu6PI3THnj6m2BmGENMhLEZC6Ttiz60DNQKF7/nqee5YmO6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6413
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684769398; x=1716305398;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nYM2QpiK9TnrpkFqjVVcsaUjUwidNLDJuLNFKat3ub0=;
 b=mh6njRNulqAWRavgKUNKrcpgYlaHNshRSP4yPzXbTmo2OXqm3c/F3Lxb
 7p8kxNpAoQzfEWuJ/heO6lg57uGgmlBRn2XuNJbG4oDWc05R+0lYpjRyp
 IZ0hLIu6UiKSdraWwq+oWG/tSAhD5Ufk/PSjXTfYQkt6drTZjypxTSL3n
 f1ucnL1PWwW1VXSeUdTHObMw3IapT/Dd9Fh76lAw6CSS0d8MZ4dXOQduS
 /28cNlTGDrDHYwcHuiCkA/EjJ5w4eus6vkxenTMfREKR09+pfzKmZO2QQ
 dS6zecvtFrxTUVJ4PPT2Z2rZ1P5gYRi4+RywQ9nfXq4G0hdWfhvZwEkyV
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mh6njRNu
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
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, Song
 Liu <song@kernel.org>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 Maryam Tahhan <mtahhan@redhat.com>, xdp-hints@xdp-project.net,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8amJyb3VlckByZWRoYXQuY29tPgpEYXRlOiBN
b24sIDIyIE1heSAyMDIzIDEzOjQxOjQzICswMjAwCgo+IAo+IAo+IE9uIDE5LzA1LzIwMjMgMTgu
MzUsIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+PiBGcm9tOiBKZXNwZXIgRGFuZ2FhcmQgQnJv
dWVyIDxqYnJvdWVyQHJlZGhhdC5jb20+Cj4+IERhdGU6IFR1ZSwgMTYgTWF5IDIwMjMgMTc6MzU6
MjcgKzAyMDAKClsuLi5dCgo+IE5vdCB0YWxraW5nIGFib3V0IHlvdXIgY2hhbmdlcyAoaW4gdGhp
cyBwYXRjaCkuCj4gCj4gSSdtIHJlYWxpemluZyB0aGF0IFNLQnMgdXNpbmcgbWV0YWRhdGEgYXJl
YSB3aWxsIGhhdmUgYSBwZXJmb3JtYW5jZSBoaXQKPiBkdWUgdG8gYWNjZXNzaW5nIGFub3RoZXIg
Y2FjaGVsaW5lICh0aGUgbWV0YV9sZW4gaW4gc2tiX3NoYXJlZF9pbmZvKS4KPiAKPiBJSVJDIERh
bmllbCBjb21wbGFpbmVkIGFib3V0IHRoaXMgcGVyZm9ybWFuY2UgaGl0IChpbiB0aGUgcGFzdCks
IEkgZ3Vlc3MKPiB0aGlzIGV4cGxhaW5zIGl0LsKgIElJUkMgQ2lsaXVtIGNoYW5nZWQgdG8gdXNl
IHBlcmNwdSB2YXJpYWJsZXMvZGF0YXN0b3JlCj4gdG8gd29ya2Fyb3VuZCB0aGlzLgoKV2h5IHNo
b3VsZCB3ZSBjb21wYXJlIG1ldGFkYXRhIG9mIHNrYnMgb24gR1JPIGFueXdheT8gSSB3YXMgZGlz
YWJsaW5nIGl0CnRoZSBvbGQgaGludHMgc2VyaWVzIChjb25kaXRpb25hbGx5LCBpZiBkcml2ZXIg
YXNrcyksIG1vcmVvdmVyLi4uCi4uLmlmIG1ldGFkYXRhIGNvbnRhaW5zIGZ1bGwgY2hlY2tzdW0s
IEdSTyB3aWxsIGJlIGJyb2tlbiBjb21wbGV0ZWx5IGR1ZQp0byB0aGlzIGNvbXBhcmlzb24gKG9y
IGFueSBvdGhlciBmcmFtZS11bmlxdWUgZmllbGRzLiBWTEFOIHRhZ3MgYW5kCmhhc2hlcyBhcmUg
b2theSkuCgo+IAo+IAo+PiBUaGUgd2hvbGUgeGRwX21ldGFsZW5faW52YWxpZCgpIGdldHMgZXhw
YW5kZWQgaW50bzoKPj4KPj4gwqDCoMKgwqByZXR1cm4gKG1ldGFsZW4gJSA0KSB8fCBtZXRhbGVu
ID4gMjU1Owo+Pgo+PiBhdCBjb21waWxlLXRpbWUuIEFsbCB0aG9zZSB0eXBlb2Ygc2hlbmFuaWdh
bnMgYXJlIG9ubHkgdG8gbm90IG9wZW4tY29kZQo+PiBtZXRhX2xlbidzIHR5cGUvc2l6ZS9tYXgu
Cj4+Cj4+Pgo+Pj4gQnV0IG9ubHkgdXNlIGZvciBTS0JzIHRoYXQgZ2V0cyBjcmVhdGVkIGZyb20g
eGRwIHdpdGggbWV0YWRhdGEsIHJpZ2h0Pwo+Pj4KPiAKPiBOb3JtYWwgbmV0c3RhY2sgcHJvY2Vz
c2luZyBhY3R1YWxseSBhY2Nlc3MgdGhpcyBza2Jfc2hpbmZvLT5tZXRhX2xlbiBpbgo+IGdyb19s
aXN0X3ByZXBhcmUoKS7CoCBBcyB0aGUgY2FsbGVyIGRldl9ncm9fcmVjZWl2ZSgpIGxhdGVyIGFj
Y2VzcyBvdGhlcgo+IG1lbW9yeSBpbiBza2Jfc2hhcmVkX2luZm8sIHRoZW4gdGhlIEdSTyBjb2Rl
IHBhdGggYWxyZWFkeSB0YWtlcyB0aGlzIGhpdAo+IHRvIGJlZ2luIHdpdGguCgpZb3UgYWNjZXNz
IHNrYl9zaGluZm8oKSBvZnRlbiBldmVuIGJlZm9yZSBydW5uaW5nIFhEUCBwcm9ncmFtLCBmb3IK
ZXhhbXBsZSwgd2hlbiBhIGZyYW1lIGlzIG11bHRpLWJ1ZmZlci4gUGx1cyBIVyB0aW1lc3RhbXBz
IGFyZSBhbHNvCnRoZXJlLCBhbmQgc28gb24uCgo+IAo+IC0tSmVzcGVyCj4gCgpUaGFua3MsCk9s
ZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
