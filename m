Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 155075F7F66
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 23:02:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A643441829;
	Fri,  7 Oct 2022 21:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A643441829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665176524;
	bh=XRUlXofiZh7C/976uOS7HGYaJ9yEdyjlO5V/o+Dya+M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wbe8IXt2byTperjsYD/RK7XnjzCQx6f6NyMW39dzaD2xPgZxB9/bErb1xdqhx3ntE
	 H+5w8VWt97L+5HERiCaNAZIfpS3EnACKkZa54LlDztOw0UcHKyXIrYFIAOv6WUGnrm
	 pz44auxqURcL4CmcFJ0dUQc5hdS+fXEZiXtITcxAjvxyCwl8fAp6JSYQeKPToaBuUq
	 VMVzNS6J2WrG6v9zd/oa3AZIby2ODf+HJYpqhzVMYbN4vvGpq4mo1+LWz0GeN49+/d
	 FbiAkyQyDtBiJJHLm0thn8rXeaVf/eHTZ9Fzb1X4itomKiDKN09GTTXgyCi/pEZCN3
	 mUTuRJLtcfvcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IOx5-VR99KN1; Fri,  7 Oct 2022 21:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44EAF41824;
	Fri,  7 Oct 2022 21:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44EAF41824
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8CFB1BF350
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8285F8289B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:01:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8285F8289B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmUVNRnuygpF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 21:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BB9F828DA
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BB9F828DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:01:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="283557706"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="283557706"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 14:01:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="800434418"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="800434418"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 07 Oct 2022 14:01:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 14:01:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 14:01:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 14:01:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BuHybzy3AiQ9XuRR95i5ZUQ8ychQA1YNYgAb0PzpczrpaJHqtFtGg6IOUvdyGghdbJbRuNj/hPYFe1s9N5DkYCtW/MFLv747N6naDce9OjjYWXSo1mo2yo1NWutDCxYfl1H4GViBZlq1oLvJhVKuiGW5e3xlOB+ZjMNVpyVlkZ5+WrkpdwQcZQCzWEQQ12NyPxc76cgZ0ZYp+o0CIUOHV+dWR8dAUuGW7aaRg2KZOLvf53JOFjkOU7xDRFu6B2aNDGyeNaSh+6sgjEWQquE/jMjDaGiL0gM7AUKMwdm9Y5ROo//LZQgJffPijI6zX/6HhQb4BlLWrdBhL2FjeM63NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bDktN8mHc2+dZlbq1kFe+kLEai6STb0OLgy76LlmKd0=;
 b=bZ2RMVnnCDUB6oAwuAz37uW3+Hzin7oXsAVTftUONKn79Wtpt2LZPxuKPMG+Hs/rGZjjS82QeOPhhVAcZSt/xRID/b2C5Gqe2laCYPWUSXjZ9o8T4zLi0cBheIECsLJIINOdSekhongq8+KOCRWVl0/BM7qJ93kelKISm8KHDpgDofXpuPRmmQZAEOpXMHMlxMmBz288GB83NY1VH6kiRjd7bAUumTRfYC4vcK3HkthSeB/uMF3B6xCPaPF1rEsJCES2L5eMjDCskE78GGnIrRVKHYAoqkHOxoTXLucRBDP1fCzcPokNT9oHsS4xQxbiwzEQ0mOGRyOIJKR9xpm7VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17)
 by MW4PR11MB5869.namprd11.prod.outlook.com (2603:10b6:303:168::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Fri, 7 Oct
 2022 21:01:53 +0000
Received: from SJ0PR11MB4893.namprd11.prod.outlook.com
 ([fe80::3228:22db:a5d6:6550]) by SJ0PR11MB4893.namprd11.prod.outlook.com
 ([fe80::3228:22db:a5d6:6550%5]) with mapi id 15.20.5676.036; Fri, 7 Oct 2022
 21:01:53 +0000
Message-ID: <06378c1a-6f0f-989f-3cc5-3348baa11860@intel.com>
Date: Fri, 7 Oct 2022 16:01:50 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
References: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
 <25beff49-5564-dd48-c6db-d29b126677a0@intel.com>
 <20221007205548.GA49007@fastly.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20221007205548.GA49007@fastly.com>
X-ClientProxiedBy: SJ0PR13CA0069.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::14) To SJ0PR11MB4893.namprd11.prod.outlook.com
 (2603:10b6:a03:2ac::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4893:EE_|MW4PR11MB5869:EE_
X-MS-Office365-Filtering-Correlation-Id: e160253b-98c7-4a86-9fd8-08daa8a72933
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lVGAEcGncTRXgqD36r+4f/kj6mYJ3PNFF9JJO5kXhuyP7O2GKf/Y5Pa5Ll6QDpbwSSh+W1LsAtva53QpGFJgP+OUgRhfzuhsmj1U0fpQ/53raQpMwk7DzPZnOM8GwaXP2VQ3yM8kAZGeQ4BK5OHiTLfXjgtMy6jtfei9iNvYt3401poxdE3h0B5Gow7OB7+M6J3R6ldemrvbfcHgeVJfeXmM+ep0u3W1LevnPWbHF/BKSBSpB0P7jfOfqKjoO4e/NmonZw9cG/tX4bmE/+CUSUaMXoPSfiSwTNxh9pRZGmKX05NfZ7v8sWml1Ibo7PMsdO3oUVzuedxOZMLjdxSBHNdZIycbvspVst0zdpaXhW6Mafa5b9ho0npPGmOOErYZwD75BsnF0RzrPTUNkp1DdGHLfryyk0N6UVDPhbvRl3IpxOusBcm8w+YDmY6Dajds8IrGbNQhz0/f5gTOg3JLnnBmyWqQ55FtCU5JgysAgxVXayNMCJUSavG/gMoPonvnWcguiEd4GBAip3nDXfOUMGGsQ9nxwBgGQhsqKprWtgnvEX/99fsAvfp9g6ByY9W0vlD0sWWPS8LfMZoZa5jYutFmCvBkU8v8khHnG1EmJne7AodzeGOtuIX60ShdDKwo/k38PAL1m5kgxT7hgtxOHAhpc9bYXcW7lD8rz4FwDbNQ/wdoWRtccIYZPXPwZXyAepiZ38k2KF+Gxpc/6e52yuxl+2bf+Grfc2sRkicX7PzE1QlqxnDKTF1U1OXmHrFjGGAw7ZSDtiR4YJEbRaPf3OtazffSJrS9NwLh9qvwpMU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4893.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199015)(36756003)(31686004)(107886003)(86362001)(31696002)(82960400001)(38100700002)(83380400001)(2616005)(4326008)(5660300002)(6512007)(26005)(2906002)(6486002)(53546011)(6506007)(186003)(478600001)(41300700001)(8936002)(66556008)(66476007)(110136005)(8676002)(6636002)(66946007)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVFEUnM2bncrY1o0d0MvM1YyNThlazUxVEZvQmhKTWVIbU1UK2xRUzFSWGEr?=
 =?utf-8?B?RFZXam54bER0THNwUGhXc3BFcXAwaEJuRHRTSVNIa2NxSHZzeUl4SThaSjcv?=
 =?utf-8?B?aWljdEtYRlVMY1EwWUd3Z1ZlUWZJNlVVNk5kMkFQclpIQkN6K3RjMTRmUG4y?=
 =?utf-8?B?RjVPV25qbFh1MGdyQ0ErS1Rid2llY0NENVZ4dE1jTzNJUWppMFUyTDFpOUkr?=
 =?utf-8?B?Y3JPeWJ0Qlk2cmpuQTBxN3FrcGYwSmRxcFZRRVJJWnBJNWJZcDhRb1ZBZDRv?=
 =?utf-8?B?aFdHQjZQZ3U5ak5vbDY5eFhyRDc5bDR5eHRmUGZzbGFIQi8rNVphbnlrdURJ?=
 =?utf-8?B?b21UVHlyQ3FHU2QrTjFkdE9RVUNqWnNTdGhkZVV1WHpmOTlVWjF0eEVNYzZW?=
 =?utf-8?B?SXIycG1Xa0FiTlRSM2NWT3JocWFVREFhR3VXdkdhNmxNTFVYNTQ5YjVWbzZS?=
 =?utf-8?B?eW1OTzlSWFp5SDNHdWxjejJDMlhxcXdKbzZ6Z0JTWWpYdmlkems0UDBoYmF1?=
 =?utf-8?B?WVlmOWNjZWRIQlIyMzNZNFJZRmFDVmJWZ0o1MDZNY2dmUU4xMkV2bE5QSEMw?=
 =?utf-8?B?Y1QzRjdUZTQ3MVhScjNYbEFhTDk4WnZicUVDZ0pPb0ozbjZHa0ZodHJxR1Vu?=
 =?utf-8?B?ckFXMmZ4S29kaTc0bitEUjBmbWxDN2I4M3JSRm5WcDRhdWZKS01xMWttTUM5?=
 =?utf-8?B?TTFYWXBJbnZnSWY4RXM4TFY0VXZJWTh1TkpVY2ljVlphK05ZR3Z0WHRmNnBp?=
 =?utf-8?B?Z3M0WkhxUEJ0QlAydUwyYXdvMmYvTlBNN0FmMEhaelFDaTVOcmdMSXRIUnA3?=
 =?utf-8?B?dVN1WUduYXNCR3dCSGF5Um5laHVJdU1WMXRqai9VY3BrWHEvaG56T3NBRCs2?=
 =?utf-8?B?a0ZpRlo4YzFwVlYrNDNkQm9ZZkU2Nit6M0JJd3l5Q2ROblowTWluaitRNTdC?=
 =?utf-8?B?ZmEzYzBlVUxSVHJwNHBhRm1UbG1pajlwcUpQTkk1Uy96TEhCbnJ1cE90NWdW?=
 =?utf-8?B?WGhBSWl0MDAzODFmV2FwNzhZbnI4bENNRUlyQ0V6ZXRYejBzTzU2Tk1NV29k?=
 =?utf-8?B?Y2F5OUV2ZmlvaEJjVlJibHdtcEJnZDdxQXY0a29uVkFsQThVZ1hRVDE1THE3?=
 =?utf-8?B?elh0RlFVcWtsNHloMjE3TUNBUXBJQnhuVy9BS0w2SHNpYVJ5RTdDM1VpS0Nx?=
 =?utf-8?B?Y1l1TG51eWFSeGF5Si9ydG9ncHpPUkxJWU16N1kxaXlibTJ0Y25CS3VwckFU?=
 =?utf-8?B?UTlzR2hsRkNQQkFlUFNTQWNZOHFTbVhVRkhZY055Ull4SHBRWVB2MGVqeERX?=
 =?utf-8?B?M0EwVS9SRllkbmFBTHRKQWNtdStzbkZweWNNbmlKTlRJNUhZWGJUZytuY01q?=
 =?utf-8?B?OUJZc1dlKzVDMmxJVVNUd3NGNHNjYTYwaWhWU3hETG12ZXNGUUx0UlVaMWpD?=
 =?utf-8?B?aUxzRkNRZU1QRHZYTytMQ2Zab3EwSHIxN1FvL2lSdkR6UzVQZXh0RTB4Vy9m?=
 =?utf-8?B?bmEvb2I0emM3TUVPdlpZUFM4NmJlaVRnVURrMGhwbGdvYXJQdC9JMlVrdGN4?=
 =?utf-8?B?WENMTEJCN3hIcy96SEpJQnhHZU5rRzFxQWNvSmpVbnMwR3J4MlBPVTJLTzFX?=
 =?utf-8?B?V25PbFAzT2VVYnVia2kzYmtqQWJ6MWd4czFCN3NCLzhuZ2UrWThjalQ2UXRL?=
 =?utf-8?B?VFliUXFUQUV1YUdKd1VMMnFKYjFjaUZmeVdJa1BjenZZY0lXQ2N2bEdKZzk5?=
 =?utf-8?B?ZHMxdzlkM1VsRTE4T2w4S3pGNWEzZFVJR1BiV2I4cjlzSWFDYVErdEk5SW5x?=
 =?utf-8?B?Nis1M0x5RnNMY0FrRStMdDdCOXhMQUpDSy9CSmdXaHZHSkkxdys0Y3d2KzNB?=
 =?utf-8?B?elgvSVNpZjRacDVybmY3Zmtwb0NFdUZLVkZibXk3Vi9kZk1nTlBDUm1XQnJN?=
 =?utf-8?B?cHZXVERIQUU1OHVWckFSY25iZVVxRExLMTNpbjVUNkx2a0t6L0d6bmFRYnhC?=
 =?utf-8?B?Y1p1U3ZEenFXSTMrNGUvWWhDQWlKcThxTFRNU3d3alVJUEs2dTJndDhzekR4?=
 =?utf-8?B?RXJnTjI5R1gvRFE2cWJmeTc1K2FYUThBRE45OUF6a3g3WVBTK2tsU1Fyam5W?=
 =?utf-8?B?dnVGOVM4cXkyTWVkVXpwSzM2OHJCZ20yQ0hZL1lPOEIrTml1YWVodGJiK3lV?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e160253b-98c7-4a86-9fd8-08daa8a72933
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4893.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 21:01:53.1996 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R/Xrr4oRkvQHYTWe7NoUAyrQg1JEmmMNipPDuqeyGGD7/y7XYLwbhoGTbxNyQ1LsglbsImNkYC+/mPkDLP0yJbMzRGbNdL1k/G/VVPnEy4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5869
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665176516; x=1696712516;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bDktN8mHc2+dZlbq1kFe+kLEai6STb0OLgy76LlmKd0=;
 b=eWsofSbXzq7jVil2tUukG15XmBihB7QNsIjL8nK1d7PjlWj2gBXW10ly
 2lQzuHQLHeJ1YzmjPSAZxlIrfmO6s/nW2IB/PR76qkiIe2dwi8CGU431A
 4dlzvKYhC77aK4svlm5Obj209cAlhoK7q9qtfqkznHjei1CDRl3B/uKBY
 jv5JWcbb6QSXENvY7N2fCVFr+b/4WUGAnbmodhcD+7ewxLf5Ad63HiwEd
 Tw+/gX3SVkQassiydFwNmmh07H7J6GEwF8IIud5nlWvaGc0STlSbf+5wu
 eiwHL/4+9OCCXWfPbK+tcY7LwUYY4PAScmvT0B7iwa2tMZnyLNBQDIcFt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eWsofSbX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC,
 next-queue 0/4] i40e: Add a non-XDP i40e_napi_poll tracepoint
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvNy8yMDIyIDM6NTUgUE0sIEpvZSBEYW1hdG8gd3JvdGU6Cj4gT24gRnJpLCBPY3QgMDcs
IDIwMjIgYXQgMDE6MzY6MjBQTSAtMDcwMCwgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPj4gT24g
MTAvNy8yMDIyIDEwOjU3IEFNLCBKb2UgRGFtYXRvIHdyb3RlOgo+Pj4gR3JlZXRpbmdzOgo+Pj4K
Pj4+IFRoaXMgaXMgYW4gUkZDIHdoaWNoIGlzIHNpbWlsYXIgdG8gdGhlIHNlcmllcyB1cCBmb3Ig
cmV2aWV3LCBleGNlcHQgdGhhdAo+Pj4gdGhpcyBpbXBsZW1lbnRhdGlvbiBkb2VzIG5vdCB0b3Vj
aCBYRFAgYXQgYWxsIGFuZCBhZGRzIGEgY29uZGl0aW9uYWwgaW4KPj4+IGk0MGVfbmFwaV9wb2xs
IHRvIG9ubHkgZmlyZSB0aGUgdHJhY2Vwb2ludCB3aGVuIFhEUCBpcyBub3QgZW5hYmxlZC4KPj4+
Cj4+PiBUaGlzIHNob3VsZCBhdm9pZCB0aGUgaXNzdWVzIHRoYXQgTWFjaWVqIGhhcyB3aXRoIHRo
ZSBuYW1pbmcgb2Ygb3V0Cj4+PiBwYXJhbWV0ZXJzIChzaW5jZSBub25lIG9mIHRoYXQgY29kZSBp
cyB0b3VjaGVkIGluIHRoaXMgc2VyaWVzKSBhbmQgaXQKPj4+IGNsZWFycyB0aGUgd2F5IGZvciBN
YWNpZWosIFNyaWRoYXIsIGV0IGFsIHRvIGltcGxlbWVudCB0aGUgWERQIHRyYWNlcG9pbnQuCj4+
Pgo+Pj4gSSBhbSBzdWJtaXR0aW5nIHRoaXMgYW4gYWx0ZXJuYXRpdmUgdG8gd2hhdCdzIGFscmVh
ZHkgdXAgZm9yIHJldmlldy4KPj4+Cj4+PiBJZiB5b3UgcHJlZmVyIHRvIGFjY2VwdCB0aGlzIGNv
ZGUsIHBsZWFzZSBsZXQgbWUga25vdyB0aGF0IHlvdSB3YW50IHRoZQo+Pj4gbm9uLVhEUCB2ZXJz
aW9uIGFuZCBJJ2xsIHN1Ym1pdCBpdCBhcyB0aGUgJ3Y0Jy4KPj4gR2l2ZW4gdGhlIGRpc2N1c3Np
b24sIHRoaXMgaXMgdGhlIHNlcmllcyBJIHByZWZlci4gSSdtIHZlcnkgaGFwcHkgdG8gc2VlCj4+
IHNvbWUgbW9yZSBkZWJ1Z2dpbmcgaGVscGVycyBjb21pbmcgaW50byB0aGUgZHJpdmVyIHNvIHRo
YW5rcyBmb3IgeW91ciB3b3JrCj4+IG9uIHRoaXMgSm9lISBBcyBmb3IgdGhlIHJlc3Qgb2YgdGhl
IHRlYW0gdGhleSBzZWVtIHRvIGJlIGZpbmUgc3BlYWtpbmcgZm9yCj4+IHRoZW1zZWx2ZXMsIHNv
IEkgaW1hZ2luZSB0aGV5J2xsIGxldCB5b3Uga25vdyA6LSkKPj4KPj4gRm9yIHRoZSBzZXJpZXM6
Cj4+IEFja2VkLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNv
bT4KPiBPSywgdGhhbmtzIQo+Cj4gVGhlcmUncyBhIG1pbm9yIGJ1aWxkIGZhaWx1cmUgZm9yIGEg
Zm9ybWF0IHN0cmluZyAobHUgc2hvdWxkIGJlIHUpIGluIHRoZQo+IHRyYWNlcG9pbnQuCj4KPiBJ
J2xsIGZpeCB0aGF0IG5vdyBpbiB0aGlzIHNlcmllcyBhbmQgcmUtc2VuZCBpdCBhcyBhIHY0IHdp
dGggYSBwcm9wZXIKPiBjb3ZlciBsZXR0ZXIuCj4KPiBUaGFua3MgYWdhaW4gZm9yIHlvdXIgZGV0
YWlsZWQgZmVlZGJhY2sgYW5kIHJldmlldzsgSSBhcHByZWNpYXRlIHlvdXIgdGltZQo+IGFuZCBl
bmVyZ3kgb24gdGhpcy4KPgo+IFRoYW5rcywKPiBKb2UKClNvcnJ5IGZvciBhbGwgdGhlIGJhY2sg
YW5kIGZvcnRoIG9uIHRoaXMgc2VyaWVzLiBUaGUgdHJhY2Vwb2ludCBpdHNlbGYgaXMgZGVmaW5p
dGVseQp1c2VmdWwgYW5kIHRoaXMgc2VyaWVzIGxvb2tzIGdvb2QuCiDCoCBBY2tlZC1ieTogU3Jp
ZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
