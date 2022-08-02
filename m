Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D13658842F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Aug 2022 00:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32F6A40926;
	Tue,  2 Aug 2022 22:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32F6A40926
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659479132;
	bh=24HKEmv3LyD2/0EVNVFWSk3gBCeKV8xTv+ZiGl7q/+E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LLoNTGEEYWHkWNr2pg8+nMx7v8zJhzZRBniOQsh9PwPZZX0BMLaKwst+1/XG4klHu
	 d4DqMVMeP3+PsDtZh2OH5Bb2W7Y6mjdyxZkg5yEwnSeeY0GjCgm/bhugqlzm4kz3aW
	 cYbf/jQN1hQqPabenCBnwkT8JaiMeoJtjmse62d69Z5bsY48J5A73RcL9JWE+Nb28b
	 mEx8jVU/xtXCcFTfQU4XR34v4EfO4NYLMuyuaaUE6I8jNQ/MCcnFGixlBqVvD4SzPw
	 iWMgX1I77sOZ3gQy1WloDZJTfVqiuPX0rAGoG1jHIYSejYnyR9H5BuFCAg3iSVpF0F
	 81EA/ZZIspz4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGAX-h60Ar2H; Tue,  2 Aug 2022 22:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE0C84091E;
	Tue,  2 Aug 2022 22:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE0C84091E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A77F1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 22:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D3A740354
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 22:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D3A740354
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMyHs9jciceV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 22:25:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DE2A400AF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9DE2A400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 22:25:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="290746734"
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; d="scan'208";a="290746734"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 15:25:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; d="scan'208";a="705551317"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2022 15:25:23 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 15:25:23 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 15:25:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 15:25:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 15:25:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ML7bfl3rT1H3Xifpy36yEalXvh7T0O/ozsSFGbanKScD1alpouxx65Nc3Q6CKJdgh3BQpREW0218DA7b5nRstoSrU/QIz68tPlKFgunTWNSFbjvv/lIWDxQebbYNR96/BFnAXrqqCMTXxm+Lm9lWvJAQ3uYL7u1kcj20eXWDv7O+OfLhCWs7ri3ydn/ZtDKmE5Hj5G9ws3fI8ife0y77g/ygAYMAs6/2Lhr3V5yGQF6wSE5kPph7LaYuFejOj735ubkRILgtfvuF40UcSSwr3ayZswAxEP8+pX4JGy7caOD54qAiHtTIvuwkYNc2GS++WM+diXF+sKGAFyxbRk6d6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tLJbBGyPif+C8jKgA5IfyKBIseWns2dgYFz748HMEAg=;
 b=htAxp1AOdpwig43Y2yjnqq5mxWxh3yvbnKk6QQQ7zVKO+TuQnWN1OasVFEWwL4uhRBCtIQvFQVjCRe//pqYmq4/KxpxVMv7zkLNx9ddgDa2iHUmoMiuqqQtxK9TX2YSB6a/3OQFp89cFnvprp0dQRoe3iWIM0zB51keCZ3FTPQOsyv9j+nZFsDMJKilwZys49vxbSqY/8ru15MuRozY/J9Y7UbepoMYc5HYEEJTsl1uX9MEl2NkpxsScGslvnmTfLBOdkCzx6bY4/tgH9viTvXvAfDw9mP04NXvLuk5H7580oaBHoCLrQZ2upzESErK9/y9p/burwgHaVbybplq36g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN7PR11MB7114.namprd11.prod.outlook.com (2603:10b6:806:299::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 22:25:21 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5482.014; Tue, 2 Aug 2022
 22:25:21 +0000
Message-ID: <114a90f8-2992-5dba-0909-c136c39e4c9c@intel.com>
Date: Tue, 2 Aug 2022 15:25:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20220729113452.858783-1-kamil.maziarz@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220729113452.858783-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR11CA0041.namprd11.prod.outlook.com
 (2603:10b6:a03:80::18) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 977a3b33-406a-488c-d485-08da74d5e308
X-MS-TrafficTypeDiagnostic: SN7PR11MB7114:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5Bp0QkHZLic7ZmbtQpD7W7PQU0BwEg8JCXdXQCOUz1kloNPugLshGuXcro7hLHWLRRQQuydqK5KEyA0JIyoDXO9IKk7AZ7ieqNfF0VzzRDPD9GCrzIKVqpiKSkdszamx7TtWQdEjT7L10EHGnfUVGWoymv8FJlYxI6F08iVzY/P590ZnqbRa7kakHuy5qfinJXn6tbSbeSJFNWuxZYMrlGVeg57S7bwHQEVF7Cp9AHoTh8AlSecnRYkk7NaHCoV7jH47F/An9C0xKo46VntzQj4n/bikKJYxgllAAGG3uhlYRqDeOB1DyiZWptr583aIE96RtoYJ4HrLualBEiimjc9jiJRGYGmBiLoFZHSfcE/UgCnEDP+6KAXxrPHWKj+0Is4iZ/KLU/zzmBHUSgoyKy8BGkrbVXQV+EzmxfLLnuQv/Y+eS+25D1YRI07F21xpVMbxTmVXlkDzD4LJMHpR5OknzNgIu3s6T24YwK3z/1W5EDRGBH8GFMB4KQwiLaZSmAv4purkFb5hXVHH+/YsUXDSPFTkRdJ1/5KmQsa49Tkaw2uZ4rkfyuW4FiN1H9PXLrMqVMG0VO1iaZmKNaS/ILBhIbQpRPh+fwmI0c9wD6oVMDMYToyr6wCVbso+Hr1vfPgCV07JJSRUVICdDvddWM/5kuvYITbgcyudjsP/KRmAmJ0ewig6MFKE6RKW1XOJ9LWdKPIWR3IGVu91X8VkNGHowuEWXKfsq6q+M2mc7/1+bnjLB3yFoddwAcOevMilIxg6cZqM++Zdj2QwWhpX986GQUU9J8cNSGNUmgud2A+QfhtgGxB8eYldldQvAfqmdmV76oCV/D03HumlQClIdQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(346002)(366004)(396003)(376002)(6486002)(86362001)(5660300002)(31696002)(316002)(66946007)(66476007)(4326008)(8936002)(82960400001)(8676002)(6512007)(26005)(36756003)(107886003)(2616005)(53546011)(186003)(38100700002)(66556008)(478600001)(83380400001)(31686004)(6666004)(2906002)(6506007)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGZwaHRSR0dKTlVJMHFTa1VvRVVpTHdsWnIvcFMxczRkVkVrOFpJbzc1dGkr?=
 =?utf-8?B?V1AvM1NKVk5KeUpRTmVjcDZobkUwUDV4UHBFSW5mWGppYzNSVGhzSVdrblVm?=
 =?utf-8?B?U0o2S0J2VlZNQXFSb1kzWkp3QzZEK1JzZDZoTHhtNmlIcVc0WTVTU1IvVEJZ?=
 =?utf-8?B?clZpWEdkOG1zVHJka09vejNvcTgzS3RGVFFWaW5jeXNWNmRnYXQwT2svem10?=
 =?utf-8?B?bWxSL0xkNXVQRzZvcU12eXZNWlpTVWlKZmV0akxDWlI1SUd1eXpOaFJsSDhS?=
 =?utf-8?B?NGhEdDV0U3VqQll1eTNFbm4xOW5PWlg1cFlreml0OFZYbTkrSGNwWFEvRkpp?=
 =?utf-8?B?QStOdExQMkpjWi9vdWlXUHpzZW9JNENWc0ZaWGEvRHgwSlE5Q0cwN2lYOXJL?=
 =?utf-8?B?emdUdmkvbXMzODdTVWFXdytlQk1rRllzbzlINFVtU2FkSm1pNG9uRER1VnIw?=
 =?utf-8?B?Z0t6N1JaVDFabVhlbDI3WHlpbU43V2l6YzFZZ3ZPUW5QY2pGQ1BBbXhQSnc5?=
 =?utf-8?B?dkhXQ3lWNVE3Zk1vWVRwc3hPZjhqT0F1V2p0SU5XbmxMcTFxZmI4SDlNdi91?=
 =?utf-8?B?VHRCU2hEYUFlbWdsZnVockNKYTQ5WlZnekZkcVUwWVF4MHpFdHJMdk9HZzRI?=
 =?utf-8?B?U2N5NlUyNFBKSHRGS1kydDhWZzU2VzBoM1JwUW9KaGNSVXZ2dUJqL2xGd2VQ?=
 =?utf-8?B?VWdPTTNaSGxMbm9MZEJZZzZhL2lWd0hyWllGOVFLUS9zRHVmYVA0Njh0VTg2?=
 =?utf-8?B?M0xqbkQ3eUcyRjIreVVVWXJQR3B2Ym9vVEJFU0NQRC9lOVNtREF0V0J2UllQ?=
 =?utf-8?B?M29XazdHQjcyWkhwVGo2bEVIUDQ4Zjhha2dBVlU5WUNyYmMveDNwcWUreEs3?=
 =?utf-8?B?ZnZaem9nWXRQbEZDaFFyQkRPdnIwM0tqVHp6R3JlSU40akMxTlNCdm5rcHdY?=
 =?utf-8?B?ellvV21NZk1SK3JINU9kZnZ0bzY2R2R5MEp2YlhsWFVnd3VtUGIrRlo4VmJv?=
 =?utf-8?B?dk1kWjBrUFBxSzZmM0t2Q2xYN1dHNDFTVTJZOEFzMmMwMUNkTGUxK3ErRUVz?=
 =?utf-8?B?bXl2SzVhUDZaUk14cktrN0p2VFBTS1JCYlVLcGxlV25EWEYzTi8vM2RYUEh0?=
 =?utf-8?B?ZGtVcUo3UVJ0a2M0V3J1aStobHZaNlJ3TkdXUUl4YmwvU0Q2dG5jWm9lUkww?=
 =?utf-8?B?ZnRmQWtjTUpZOEhuTThnK0RLNW1sRVY3M1J4amJHVGk0cnBPWFhpT0xKczJO?=
 =?utf-8?B?YS9SZll5a1VENk16UGZyYjZBYUZEK0drLzlpV3R1L0duN0YxTTFZWitGeHVD?=
 =?utf-8?B?WmY1aHdPTzFWMUM0SGVWVzIxUURSVkhGUXZzanJHMEF3QTdIc2Z2Y3oyWnFR?=
 =?utf-8?B?eERxdFQ5K29NSzB5OEJIU0RtSTBCZEUrTVk4cGwvVzVjQk1GZ21OVUluaktp?=
 =?utf-8?B?OVFLZEtDNEhTSHJWMklibkpPbnl6RGk3ckpjUDRNR3JlRXZSOFlGQUp5d3Vv?=
 =?utf-8?B?WGZObzVCbU5RWENQcVJPSk1KMTRqNFlDMXZJZ0lGQ3F3Zkd3RWl4Z2craG1I?=
 =?utf-8?B?WjFGd2NXWWRqdm9SanZzQ2w1NEc4ZmV1eVJGZ3YwVUJwUDVmVEluOHp2UThn?=
 =?utf-8?B?ZldwY1Y4OW96ZVRGN0xaOHI4NmluRk05YmlNSjB4bU82MmovdEt6NGpGRkNt?=
 =?utf-8?B?enZFYkZRYVVBamc4Q1hOWUJBV3FpQlZTNWd5TkpXODFlNHljZUxGcEU1S0ZC?=
 =?utf-8?B?RUtOWDU4c2wyT1VQaEY5M1hqUDRlMmkwQ29jNUpnelF1dkYyeFZaRlZlU09a?=
 =?utf-8?B?UHJkZVFaeHcrUHpkU2pvTi92RWZQNmh6NkZZZ2dQblJETTZpV3orOEZrTVJt?=
 =?utf-8?B?c1plTGxKWERNSzY1NXh4NHI1dklxWDU2emMxVXh2Kyt0RWlLUVBydHJqMy8x?=
 =?utf-8?B?blh4cXg0ZCt3U2xlS0J3akkyYXpYdlBOSExEd0xsSmZ3SXN6dlZobSt3bWZT?=
 =?utf-8?B?NHpiTnBxMjVGaUlBNlk1ZFJwM25JWm9ycFNiWjJzZGZLS3FJOFhZdzdmRGtP?=
 =?utf-8?B?UDlRWjFyMVFuS25pV0c3ZEFOMURHUklOdkJNRURFTzhQSTJxRitSb0VCSGlq?=
 =?utf-8?B?Q0w0NWFybzRDZ0J2RjN2Rk5iejNwa2pEb2RuNkpLTDRzUUFQOWJNbXJHQ2ZY?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 977a3b33-406a-488c-d485-08da74d5e308
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 22:25:21.3615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gwxvgvsDnEeuY+A91Two20+hG9v1uZoH9cJ0SlAYgfFAqQPfUo4eFp/xvnlDUVMSMDKBpktn+efEuEOewm3pHI1kpdEi12Nx4KUvtQb1vW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7114
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659479124; x=1691015124;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OCMvN0Q9EBFMuHtgpoGVBhRXv2moQoZah9CI+IB/jl8=;
 b=VVFJIbwRRR20NI4lxWBJ6xKffcBw+5XcrfuIq9TiHAB/21vaLRYmmfLg
 eCZZKwio+SZ7z+4MnNQXP90Tn5NAWbzpGoopscwz718QnX3vLzzYY6AdU
 Ty0ZIRtyyK9nO8ku9BxJPexW428W4TIdRJxoUeWojb0XfGrIQVGcxKLo8
 JbchEK5gbfDu2Tgtd5oqDt1HBhImtaBM9xgX0McVh6GITRSX79ejKZMmk
 /OL0NDiNLerOU6Z13M/dqg0cE6N0lKQTbRcYJWNRpK7JKS0KPKArWHo2T
 BFtUjvLOrSEoC0QtvatZc6mDT+psY5tWRS134vd9cIp+WLXmCnxaEEwgB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VVFJIbwR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Disallow ip4 and
 ip6 l4_4_bytes
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/29/2022 4:34 AM, Kamil Maziarz wrote:
> Return -EOPNOTSUPP, when user requests l4_4_bytes for raw IP4 or
> IP6 flow director filters. Flow director does not support filtering
> on l4 bytes for PCTYPEs used by IP4 and IP6 filters.
> Without this patch, user could create filters with l4_4_bytes fields,
> which did not do any filtering on L4, but only on L3 fields.
> 

Is there a reason you're not targeting net with this?

> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Kamil Maziarz  <kamil.maziarz@intel.com>

I presume Przemyslaw is the author, in which case, you need to edit this 
to patch to reflect it. If you are the author, your name should be first.

Also, there is extra space between your name and email.

> ---
>   drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ++----------
>   1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 156e92c43780..6695dbe61a04 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -4447,11 +4447,7 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
>   			return -EOPNOTSUPP;
>   
>   		/* First 4 bytes of L4 header */
> -		if (usr_ip4_spec->l4_4_bytes == htonl(0xFFFFFFFF))
> -			new_mask |= I40E_L4_SRC_MASK | I40E_L4_DST_MASK;
> -		else if (!usr_ip4_spec->l4_4_bytes)
> -			new_mask &= ~(I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
> -		else
> +		if (usr_ip4_spec->l4_4_bytes)
>   			return -EOPNOTSUPP;
>   
>   		/* Filtering on Type of Service is not supported. */
> @@ -4490,11 +4486,7 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
>   		else
>   			return -EOPNOTSUPP;
>   
> -		if (usr_ip6_spec->l4_4_bytes == htonl(0xFFFFFFFF))
> -			new_mask |= I40E_L4_SRC_MASK | I40E_L4_DST_MASK;
> -		else if (!usr_ip6_spec->l4_4_bytes)
> -			new_mask &= ~(I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
> -		else
> +		if (usr_ip6_spec->l4_4_bytes)
>   			return -EOPNOTSUPP;
>   
>   		/* Filtering on Traffic class is not supported. */
 >
 > ---------------------------------------------------------------------
 > Intel Technology Poland sp. z o.o.

<snip>

Please remove the footer
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
