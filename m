Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F1663E69D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 01:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B2CB81F7E;
	Thu,  1 Dec 2022 00:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B2CB81F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669855215;
	bh=1RtPTdosetUDs2yJ2AKCkeX9cP8OhYRq7kunQU5/aEQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HRjTKeh2/IC96uOFOhJ77KqXI2CJXrcUV67V7CedZ3cCMNuJlWHrD3ZGdtEqLavQf
	 84jDGIuoWYTafevVck98vv4T+/+L4xPOTFaaLCKb/TB1LJrDdPFGQNIkkTMYT1WpYI
	 JFOBRyyAxuA/CyyGX/oeFHgSqE3/OGWAUUJwgxPTxdnRjtP/hQGX+kwEdZVhVNYqEd
	 yfvwMAItTrDLH9vsgG1s4tdUZJm+1Ul+FOyVuHnUfEbXBbjMfINJmbA6sNLjDoAAdr
	 V+DKzcPrstW6QeLFFGGQdpd1ucrYrpiljoIufORhvJz/ZFZ7DkbnkpZnrE3W3+VMha
	 PSV5qqSvKQSTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDHD5DEr2yrj; Thu,  1 Dec 2022 00:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C99081F76;
	Thu,  1 Dec 2022 00:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C99081F76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2801BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3E37410E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3E37410E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AtrDti5pAbym for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 00:40:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7A4A408FB
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A7A4A408FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295243283"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="295243283"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:40:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="622089371"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="622089371"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2022 16:40:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:40:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 16:40:00 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 16:40:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nqs7cxrhYd/53p/OQJUVURQx+DvlWXEalZfJrDi6YCRRxV8eWm/Gy2XZfFPm7wLag5qCXthIFIwCsFVKAIuWCsCN+GO2aP/T3ZQARN91Dbcbaufe3nZxUnSolZWz0CnDH1aObiN740hAuPCINIset/u4WSC3hF4Tjn8Rm6NYZW0B3zZroypbUUWbFRfZfKhy4+YvAPhiXFq9k+2Fo49mVl63HwFcwB5fsVxU0/Nu5hSnSUP1jIWis1xhCcYLgdY3t3GMmRa3sgREGPObCNK3IxOsaQ+uULj9Bc5EIrR9bznzSqhp0r6TQzdiy7Wjfn6viFJs03jIB4bGhGjoh0QpUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xe0Smc5Opm/43B3wTxssYETkOsYh3wvs5aL/lIoi4do=;
 b=IkDbBejndY6ac/vJoBo5gSfU9baaH8IG3AhO7snN/1KxR7WP0kwNEtOVXYrkPsj538L7b94+KD3k8UQMt02qcI+LP3cPfD2JlP3C6jttc9W2oB7s93M9pIME3JIvEPB8eEfEPX4zr7pO2/SDki8LXBQPyyQgGl+DY9q1uWGz1jXn1ozOPgk35xzJ0yPTiJISivmRzh+fzNBWSa7ozINdx2B5RdTGYxTj8VRjuI97HNpK7UdeCtttLWeoZKaaAF169+foOr79XV5cTchuSqzyIkLg8X8EkK5eh52RHKt2vTiO/E3SHhoPwsp2tGhZNk7mhBAu8DFe09gUezZcADrtlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7430.namprd11.prod.outlook.com (2603:10b6:510:274::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 00:39:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 00:39:57 +0000
Message-ID: <b7626585-15e1-0458-5585-a85801c9d79e@intel.com>
Date: Wed, 30 Nov 2022 16:39:55 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-4-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221128214749.110-4-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR13CA0231.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7430:EE_
X-MS-Office365-Filtering-Correlation-Id: 19fd8482-d427-4170-5ab1-08dad3349239
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6YQ0cR/m+f0uaruCDMbAPUnu6qnFu/3mBaPT/f0VvMftBV/Q5NNqkHLIoHIG4uwrslF6nSYCRD17T4uDCXBSBo6jQK9GrzLVldiBa52EVTznkTscmGKPCpK6eTjEzba+QZx3Alq2wQ9zPsgL8nkp+e7GGXyCylFNMliTtQ4LpnbOh6+xmrnHTd83Cvywb6aC5kOd/VX6BzSrNRTel/3pGK6HnB4jWW2+eoAyh8ofKYpaLSJaE4p1dSS9A3ahN5sMQDyU/yXMJDQnGBgoGvcwsdB40daTzdx7F+VHgi7WXfu7cXJ9JORUKFKB70mXrfARA+7jIbAUZM9rS/1vXYwdSAuuKNjFN6ztQD1UpMr5dG2Yz/ACh7+on+JsOJL11AgR4yPlJP/Bas7yMHEK1U4wj6N0Nq9EyDla3kWFJdLmOEqISJFErUywQUm7p+St8CRgPidG8QsilUv/nWz4WCPQad6TSbb2voGUOLyx4lsbKVKTVPTT8wz5nGcHsay1niUcol0T9N6Kqbaq+TbnUCZm0qopaug8aE/QyEFukqkvPxU2zLsXQ3CzeMxZboFE2BfCHL7LEO/SVySd7wuJTh4SVJMuZiLOHSuPhXIz2q94Sphf0H0CFq6IFoy53S84/tPZINYI9SAHksp9lf7ZR9A6D8VuD0DZaUTwBX8+8ngeTy7mCkkkFOfUMbjjbuArldGLJ+NUfwBo5j9zXdj/I0jCKSWwe57mUJBBDWUcuQVdMUA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(366004)(39860400002)(396003)(451199015)(6506007)(2906002)(30864003)(31686004)(66476007)(41300700001)(66556008)(186003)(36756003)(316002)(8676002)(8936002)(5660300002)(478600001)(26005)(66946007)(6486002)(6512007)(2616005)(53546011)(31696002)(38100700002)(86362001)(82960400001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDhETHFwYW4rVThsWkd1VW85S2h3VlYxSk5FYnFrYUxZZVI5MDY5UmM5RTZG?=
 =?utf-8?B?bmhJeCtlSzd2RkIwTTgzV1prdTRpNjJDR01Fak9ENVRJdCtxV0JSWEY0VkZq?=
 =?utf-8?B?VzZBaE5vWjhmb0ZWcUs0U2Q0TXcvaGhObXhTTHZvZzdXMnM2dVBjRzQvd2li?=
 =?utf-8?B?Y01DOXAxdzFZYTBHdVFUU0pNU2c3TDdWdnFkOThxdGIrZURkUk01eDRXVWpz?=
 =?utf-8?B?ZnU5SDlXTzZQNm1uMEtOTjRteHhvYTNva2tWNUVVNWxUTzAzUWhlNUpKdWVv?=
 =?utf-8?B?bEZEWU0xdnFkdmRRSVVTMFVTUE5HZWlDVXhQTC9qUy83Q0Q0cFIxSUVJakNu?=
 =?utf-8?B?T3hSNC8zdktuMHlDZ1gwYmZvUngyRVZoYXZiSi9rcUowWk9yMUFnY1h4YjVT?=
 =?utf-8?B?YVdiTUZlMU9jMG5hejZLbUE0Z1dCbmxYaXJBckd5ZFRGTGdvUUhER1lUVi9N?=
 =?utf-8?B?STNBbUM0UG13V0x6OXVtejl5cWV1bis1QnBQOUNkWC9GZWxxajFqaTlFVWVi?=
 =?utf-8?B?OXlhdDdkdXRuT20yeDRzdUhiNTEwTUpmQ1VSM1hMcCtieGpzbng5OElnSVF5?=
 =?utf-8?B?bm4zRW8vNDBvK0VIUGV4b0JXVEcwVjJCN2hBUWhNdUtObUcxaEZWVzVPTVNi?=
 =?utf-8?B?YnBUVzByUDdZaUMwM3pZcTVlcjBUeFNyQTYxMWNKQU0vSDliNXBTUm5LUURx?=
 =?utf-8?B?VzBCdTJBbCt5dnBCUVJSYktpcGVGL1NnVVNDK1lSZXZ6M0E0VWl6QnI1R3Ez?=
 =?utf-8?B?dW9iSjlXNHVJQWZpMWZCQ0VnZmVzTlBlVy9BV2VWenVidmlldnlWVHZBd1VI?=
 =?utf-8?B?Y3cydmJRUWs0d29xMHpEOVVoZmhEZTFzVEFvZFFqcGRFWjdKNzIvRXpLOWN4?=
 =?utf-8?B?MTVpZmlEK3Vvd1VTZmVOTzF2Sy9wenlQTnltVmF4QXg0ZzJRYkNxMFF3b0ZC?=
 =?utf-8?B?ZU9pdWZZdjkzZzRBcDhpRWEvZjBHT01YczNnWFJZdG01NmJEWUs1dFNrZUV6?=
 =?utf-8?B?eWZrMFFGZHN2azZPRFQrYVVmZTJaM2RyQm1VdU5IOUhqSDlLOEZMTmFLZ2w1?=
 =?utf-8?B?QlJUcGtjWllrVzZ5Vy9sZ09WOUEzazJLSG95Q2xUbDhrNFRNemhsVkI3Z3Qw?=
 =?utf-8?B?MGdxanBYUnNXSVQ3N2g3bmhva1lkVzZSRFIzQWZ2RW1WUGNkWksvNEFrNnlu?=
 =?utf-8?B?aFd2UC8vdUR5M0s1Q0tjZjM1b3R4WUg3ODU3d29wT3k4T0h4UnNHNmZUSy9U?=
 =?utf-8?B?SENNNDJMMHR5WnZ6NWdPSjFMeTJScGJRUGo3N0YvZHdnM3crMm9Rd2pzV1Bu?=
 =?utf-8?B?a0d0Z2RvbFZjS20rdU1iMzd5dDdqblNLcjRsNFhyeWdwWXgwL2ZCci9ENUZZ?=
 =?utf-8?B?YlpDdGVwWHBxL3RLQ2k1L0w1eXpBMTl1TlBhSGRmQXZBVllhQlZ4S1gxRVFq?=
 =?utf-8?B?R1UrTjlMNTYxTXZjTEVtZGljSW55Uy9NcnNYcmpxeEdjSXloSS9oQTAvN2VK?=
 =?utf-8?B?N1ErYUNFNUV2V0Y1c1ZBc2tpZWQ5ejE3K3FxUTl5a1ljV05GdUU3K0NKQ1da?=
 =?utf-8?B?b0RLaDJEbFJ3azRSbThkQUNrNkFUODc3RWY5azVhVkNiSWFyNnVsbm10UDdP?=
 =?utf-8?B?WnJmcFoxQ0NDbGkzcFlVSEtNV1drUkVSMjZjUU1vVDgxS0VVUDNTTTYxL2JL?=
 =?utf-8?B?TkxYdFB6NXEvWlBoeWtVNlpJaU9mOGtnTmFreVVVenVMRVJrc1BweVlWdDlp?=
 =?utf-8?B?WVFqcVJnK21PdkdDdXZCMVU4dXZhY3h5ZzhBOHUycnhWUFdacDV3VUxHc0Y4?=
 =?utf-8?B?ekI5S3RkVEZId3k1WTdNWVZBdGRnb1RLLzZ3VGQ3OTZCYXYrSHZ6L3RGbDkw?=
 =?utf-8?B?S21LcDU2OXlmaWdjTmExTllVVjV0NlVTTlN6eWM2VU9tYUhVQVM0WVFiL3pw?=
 =?utf-8?B?RzlmNFRKaFpuWUJsMGNmRWJueE1MamlEWWNmK1VveGg2VVhBVXQyejNSemE2?=
 =?utf-8?B?cC85Z3lBQlI1M3BseTk1RjFNMXg5R3hTSVBJQW92d1BqamRubG15QWQ0bXFq?=
 =?utf-8?B?T0RLVGs3TlNKNDlOVmZtWkVITUMrMzI1Q1hTU3g2K1U2V1RzVmh3aGRoSzRL?=
 =?utf-8?B?amQyVm1VVXo5MnlpcTRtamp0VGNCWkdsSXdSQ2NkdGNFRGgzQkFLV3B0bnpL?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19fd8482-d427-4170-5ab1-08dad3349239
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 00:39:57.3057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E9eJGgnBkByEltUkppzoVdViLSc1HrXjeeQxLJofGNBIVs+RU2YyERGfn2ozbn+z8LORLSX2C0aFmpbSxO69PhEYtwmFVLpiU6uV/KT2ip0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669855204; x=1701391204;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DOIIovgRdoFE0rVcN09VktJcKvivZTdSIucYBUs4ghg=;
 b=jOEForhihGkOSFlrCuVBQLURQ55bALy98lL8bjv3lAVwHUvO3vDTVsHU
 /ts+G729giJu/RBn7YUpfy683pkG82wGOMPXyI9OAHJSbIPqSd/e8FED6
 fOJBllLdw3Vh6pMDxKnwqCm2rNSr1frPc4LWHB8n3v4kT64uCXUuRtpUM
 dqD25dtsNaNbGDl780nkh5WVI9NItaOwjV7ZvOEs05y6wnE31HHl9itXV
 atvPWfGh/YQH8t5o7keAroyDdA+Cn8PapIjOba7P5co0yGA78K4z03Cii
 EbxA8/GFO4FSNIufFfJdhuasgXfYtuwy/bZwXiktSTMo28sh9fJFhRYlO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jOEForhi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] ice: add ability to
 query/set FW log level and resolution
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

On 11/28/2022 1:47 PM, Paul M Stillwell Jr wrote:
> The E8xx has the ability to change the FW log level and
> the granularity at which the logs get output. Enable
> the ability to see what the current values are and to
> change them.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +
>   drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 142 ++++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c    | 277 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   6 files changed, 429 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index d0026161a2b4..8fa18bc5d441 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2406,7 +2406,11 @@ enum ice_adminq_opc {
>   
>   	/* Standalone Commands/Events */
>   	ice_aqc_opc_event_lan_overflow			= 0x1001,
> +	/* FW Logging Commands */

nit: As this seperator was removed from patch 1 and the first command in 
patch 2. This comment seems to fit better there. Also retaining the new 
line between the op and the FW logging group would be nice.

> +	ice_aqc_opc_fw_logs_config			= 0xFF30,
> +	ice_aqc_opc_fw_logs_register			= 0xFF31,
>   	ice_aqc_opc_fw_logs_query			= 0xFF32,
> +	ice_aqc_opc_fw_logs_event			= 0xFF33,
>   };
>   
>   #endif /* _ICE_ADMINQ_CMD_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ecdc1ebb45d5..0b3adac13c66 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -879,7 +879,9 @@ int ice_init_hw(struct ice_hw *hw)
>   	if (status)
>   		goto err_unroll_cqinit;
>   
> -	ice_fwlog_set_support_ena(hw);
> +	status = ice_fwlog_init(hw);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n", status);
>   
>   	status = ice_clear_pf_cfg(hw);
>   	if (status)
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 8843ff492f7f..ca67f2741f83 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1488,6 +1488,8 @@ enum ice_devlink_param_id {
>   	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>   	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>   	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
>   };
>   
>   static int
> @@ -1530,8 +1532,121 @@ static int
>   ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
>   			      struct devlink_param_gset_ctx *ctx)
>   {
> -	/* set operation is unsupported at this time */
> -	return -EOPNOTSUPP;
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct ice_hw *hw = &pf->hw;
> +	int status;
> +
> +	/* only support fw log commands on PF 0 */
> +	if (hw->bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (hw->fwlog_ena == ctx->val.vbool)
> +		return 0;
> +
> +	hw->fwlog_ena = ctx->val.vbool;
> +
> +	if (hw->fwlog_ena)
> +		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
> +	else
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +
> +	/* send the cfg to FW and register for events */
> +	status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +	if (status)
> +		return status;
> +
> +	if (hw->fwlog_ena) {
> +		status = ice_fwlog_register(hw);
> +		if (status)
> +			return status;
> +	} else {
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			return status;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_level_get(struct devlink *devlink, u32 id,
> +			    struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	/* all the log levels are the same so pick the first one */
> +	ctx->val.vu8 = pf->hw.fwlog_cfg.module_entries[0].log_level;

Since they are all the same, would it make sense to store it in the 
config and pull the value from there instead of duplicating it for each 
entry?

> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_level_set(struct devlink *devlink, u32 id,
> +			    struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct ice_fwlog_cfg *cfg;
> +	u8 i;
> +
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (ctx->val.vu8 >= ICE_FWLOG_LEVEL_INVALID) {
> +		dev_err(ice_pf_to_dev(pf), "Log level is greater than allowed! %d\n",
> +			ctx->val.vu8);
> +		return -EINVAL;
> +	}
> +
> +	cfg = &pf->hw.fwlog_cfg;
> +
> +	/* update the log level for all modules to the same thing. this gets
> +	 * written to the FW when the user says enable logging
> +	 */
> +	for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
> +		cfg->module_entries[i].log_level = ctx->val.vu8;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_resolution_get(struct devlink *devlink, u32 id,
> +				 struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	ctx->val.vu8 = pf->hw.fwlog_cfg.log_resolution;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_resolution_set(struct devlink *devlink, u32 id,
> +				 struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (ctx->val.vu8 < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
> +	    ctx->val.vu8 > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
> +		dev_err(ice_pf_to_dev(pf), "Log resolution is not allowed! Should be between 1 - 128: %d\n",
> +			ctx->val.vu8);
> +		return -EINVAL;
> +	}
> +
> +	pf->hw.fwlog_cfg.log_resolution = ctx->val.vu8;
> +
> +	return 0;
>   }
>   
>   static const struct devlink_param ice_devlink_params[] = {
> @@ -1562,6 +1677,18 @@ static const struct devlink_param ice_devlink_params[] = {
>   			     ice_devlink_fwlog_enabled_get,
>   			     ice_devlink_fwlog_enabled_set,
>   			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +			     "fwlog_level", DEVLINK_PARAM_TYPE_U8,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_level_get,
> +			     ice_devlink_fwlog_level_set,
> +			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> +			     "fwlog_resolution", DEVLINK_PARAM_TYPE_U8,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_resolution_get,
> +			     ice_devlink_fwlog_resolution_set,
> +			     NULL),
>   };
>   
>   static void ice_devlink_free(void *devlink_ptr)
> @@ -1662,11 +1789,20 @@ int ice_devlink_register_params(struct ice_pf *pf)
>   					   ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>   					   value);
>   
> -	value.vbool = false;

Is this on purpose?

>   	devlink_param_driverinit_value_set(devlink,
>   					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>   					   value);
>   
> +	value.vu8 = ICE_FWLOG_LEVEL_NORMAL;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +					   value);
> +
> +	/* set the default value for the FW to pack 10 messages per AQ event */
> +	value.vu8 = 10;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> +					   value);
>   	return 0;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index 67e670c62091..1174fd889307 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -4,6 +4,165 @@
>   #include "ice_common.h"
>   #include "ice_fwlog.h"
>   
> +/**
> + * cache_cfg - Cache FW logging config
> + * @hw: pointer to the HW structure
> + * @cfg: config to cache
> + */
> +static void cache_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	hw->fwlog_cfg = *cfg;
> +}
> +
> +/**
> + * valid_module_entries - validate all the module entry IDs and log levels
> + * @hw: pointer to the HW structure
> + * @entries: entries to validate
> + * @num_entries: number of entries to validate
> + */
> +static bool
> +valid_module_entries(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
> +		     u16 num_entries)
> +{
> +	u16 i;
> +
> +	if (!entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_module_entry array\n");
> +		return false;
> +	}
> +
> +	if (!num_entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "num_entries must be non-zero\n");
> +		return false;
> +	}
> +
> +	for (i = 0; i < num_entries; i++) {
> +		struct ice_fwlog_module_entry *entry = &entries[i];
> +
> +		if (entry->module_id >= ICE_AQC_FW_LOG_ID_MAX) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid module_id %u, max valid module_id is %u\n",
> +				  entry->module_id, ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +
> +		if (entry->log_level >= ICE_FWLOG_LEVEL_INVALID) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid log_level %u, max valid log_level is %u\n",
> +				  entry->log_level,
> +				  ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +/**
> + * valid_cfg - validate entire configuration
> + * @hw: pointer to the HW structure
> + * @cfg: config to validate
> + */
> +static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	if (!cfg) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_cfg\n");
> +		return false;
> +	}
> +
> +	if (cfg->log_resolution < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
> +	    cfg->log_resolution > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Unsupported log_resolution %u, must be between %u and %u\n",
> +			  cfg->log_resolution, ICE_AQC_FW_LOG_MIN_RESOLUTION,
> +			  ICE_AQC_FW_LOG_MAX_RESOLUTION);
> +		return false;
> +	}
> +
> +	if (!valid_module_entries(hw, cfg->module_entries,
> +				  ICE_AQC_FW_LOG_ID_MAX))
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * ice_fwlog_init - Initialize FW logging variables
> + * @hw: pointer to the HW structure
> + *
> + * This function should be called on driver initialization during
> + * ice_init_hw().
> + */
> +int ice_fwlog_init(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	ice_fwlog_set_support_ena(hw);
> +
> +	if (ice_fwlog_supported(hw)) {
> +		struct ice_fwlog_cfg *cfg;
> +
> +		cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
> +		if (!cfg)
> +			return -ENOMEM;
> +
> +		/* read the current config from the FW and store it */
> +		status = ice_fwlog_get(hw, cfg);
> +		if (status)
> +			return status;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
> + * @hw: pointer to the HW structure
> + * @entries: entries to configure
> + * @num_entries: number of @entries
> + * @options: options from ice_fwlog_cfg->options structure
> + * @log_resolution: logging resolution
> + */
> +static int
> +ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
> +		 u16 num_entries, u16 options, u16 log_resolution)
> +{
> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
> +	struct ice_aqc_fw_log *cmd;
> +	struct ice_aq_desc desc;
> +	int status;
> +	u16 i;
> +
> +	fw_modules = kcalloc(num_entries, sizeof(*fw_modules), GFP_KERNEL);
> +	if (!fw_modules)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < num_entries; i++) {
> +		fw_modules[i].module_identifier =
> +			cpu_to_le16(entries[i].module_id);
> +		fw_modules[i].log_level = entries[i].log_level;
> +	}
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_config);
> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +
> +	cmd = &desc.params.fw_log;
> +
> +	cmd->cmd_flags = ICE_AQC_FW_LOG_CONF_SET_VALID;
> +	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
> +	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
> +
> +	if (options & ICE_FWLOG_OPTION_ARQ_ENA)
> +		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_AQ_EN;
> +	if (options & ICE_FWLOG_OPTION_UART_ENA)
> +		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_UART_EN;
> +
> +	status = ice_aq_send_cmd(hw, &desc, fw_modules,
> +				 sizeof(*fw_modules) * num_entries,
> +				 NULL);
> +
> +	kfree(fw_modules);
> +
> +	return status;
> +}
> +
>   /**
>    * ice_fwlog_supported - Cached for whether FW supports FW logging or not
>    * @hw: pointer to the HW structure
> @@ -16,6 +175,99 @@ bool ice_fwlog_supported(struct ice_hw *hw)
>   	return hw->fwlog_support_ena;
>   }
>   
> +/**
> + * ice_fwlog_set - Set the firmware logging settings
> + * @hw: pointer to the HW structure
> + * @cfg: config used to set firmware logging
> + *
> + * This function should be called whenever the driver needs to set the firmware
> + * logging configuration. It can be called on initialization, reset, or during
> + * runtime.
> + *
> + * If the PF wishes to receive FW logging then it must register via
> + * ice_fwlog_register. Note, that ice_fwlog_register does not need to be called
> + * for init.
> + */
> +int
> +ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)

This can fit on one line...

> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!valid_cfg(hw, cfg))
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_set(hw, cfg->module_entries,
> +				  ICE_AQC_FW_LOG_ID_MAX, cfg->options,
> +				  cfg->log_resolution);
> +	if (!status)
> +		cache_cfg(hw, cfg);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
> + * @hw: pointer to the HW structure
> + * @reg: true to register and false to unregister
> + */
> +static int ice_aq_fwlog_register(struct ice_hw *hw, bool reg)
> +{
> +	struct ice_aq_desc desc;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_register);
> +
> +	if (reg)
> +		desc.params.fw_log.cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
> +
> +	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
> +}
> +
> +/**
> + * ice_fwlog_register - Register the PF for firmware logging
> + * @hw: pointer to the HW structure
> + *
> + * After this call the PF will start to receive firmware logging based on the
> + * configuration set in ice_fwlog_set.
> + */
> +int ice_fwlog_register(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	status = ice_aq_fwlog_register(hw, true);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to register for firmware logging events over ARQ\n");
> +	else
> +		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	return status;
> +}
> +
> +/**
> + * ice_fwlog_unregister - Unregister the PF from firmware logging
> + * @hw: pointer to the HW structure
> + */
> +int ice_fwlog_unregister(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	status = ice_aq_fwlog_register(hw, false);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to unregister from firmware logging events over ARQ\n");
> +	else
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	return status;
> +}
> +
>   /**
>    * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
>    * @hw: pointer to the HW structure
> @@ -115,3 +367,28 @@ void ice_fwlog_set_support_ena(struct ice_hw *hw)
>   
>   	kfree(cfg);
>   }
> +
> +/**
> + * ice_fwlog_get - Get the firmware logging settings
> + * @hw: pointer to the HW structure
> + * @cfg: config to populate based on current firmware logging settings
> + */
> +int
> +ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)

and this one. Can you check that all the others are pulled up properly 
as well?

> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!cfg)
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_get(hw, cfg);
> +	if (status)
> +		return status;
> +
> +	cache_cfg(hw, cfg);
> +
> +	return 0;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> index d7371253b8e5..66648c5ba92c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -48,4 +48,9 @@ struct ice_fwlog_cfg {
>   
>   void ice_fwlog_set_support_ena(struct ice_hw *hw);
>   bool ice_fwlog_supported(struct ice_hw *hw);
> +int ice_fwlog_init(struct ice_hw *hw);
> +int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
> +int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
> +int ice_fwlog_register(struct ice_hw *hw);
> +int ice_fwlog_unregister(struct ice_hw *hw);
>   #endif /* _ICE_FWLOG_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 10b78faf0a32..c524179e79f0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -861,6 +861,7 @@ struct ice_hw {
>   	u8 fw_patch;		/* firmware patch version */
>   	u32 fw_build;		/* firmware build number */
>   
> +	struct ice_fwlog_cfg fwlog_cfg;
>   	bool fwlog_support_ena; /* does hardware support FW logging? */
>   	bool fwlog_ena; /* currently logging? */
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
