Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52965AAD95B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 May 2025 10:02:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B82FC80F04;
	Wed,  7 May 2025 08:02:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oV2_LIgAoF3Q; Wed,  7 May 2025 08:02:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02D9E80F64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746604926;
	bh=P+MsKXunPw8hb8jUhhayQoBQQHPvT1QetgmG0pBTejo=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ws7KzEhBKdzaWolCe2ZRQwuPUcDP0hFg0MKdFk7O+HGEm75uZWPoEQUYQ4PUesvEt
	 rhEJ25O0SMfRDvQXoSQFloumyRCz/pZsEtlGVwqPRrqcolaKyxw0894ay89y9AfOta
	 70LLnjRr6o2MthMDkNmecvYCYOZfSipJ5Q/st8jMtbQOY0vR5t7p8Y5ltrcM34NOMg
	 GkWtXbiRX4j89zEBve+qUMBH8H6DUPRclbU4xo3s+eBRtxmewQAWHDR8ulwvm063C8
	 QWxq/b01z+8T2jKEgfnk0bZ3E6DDdc8+ftKtrGp4s89d3J5HxHPWXb5aEm++WPc0Sy
	 nKvmx0B7C65Yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02D9E80F64;
	Wed,  7 May 2025 08:02:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2138CCD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 08:02:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A624F406AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 08:02:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0j37BeOwvDt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 May 2025 08:02:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C6357405D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6357405D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6357405D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 08:01:58 +0000 (UTC)
X-CSE-ConnectionGUID: DIWFmPStQXOhZQ+YhIU+0Q==
X-CSE-MsgGUID: ohosZyyBRG6pbYgDMjGjVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59716068"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="59716068"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:01:48 -0700
X-CSE-ConnectionGUID: Tya5FZLbTLKAqsLTZfyD1Q==
X-CSE-MsgGUID: 89FYUEgsTWy3WHRjm04BDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="136815940"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:01:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 01:01:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 01:01:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 01:01:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mf8hBubxA700Fh1bPaikN7fjruFDwGuwxSfr/pJ5EC7NzsBz4LXE1EFIkUWbdxuxoPghJiokr00fMy50Pzsr34oea/PA6yFFDTMhUJBDLyWZhxaxLVusNcBArSGMdIi+EUYr8zRthIlgFj2QDbz6dkhZIuVfZpbiHLUa/4QYV2YWSZsjxOJcrOqnFDxLshrPrS9QW4bwItTpjjf9yGq9KTjfEmcdFVyQ/Aszm/V8B+ZPdYn/GSDfGtRhSZMa9xt3T/CjXaofVjOX9o1pHRHTIkSHN4QeFIC0ie73TCZhrmZxgiKdGsfOCvuADv3BUc6Gf49V/Ag5mWin90DOpb+Dfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P+MsKXunPw8hb8jUhhayQoBQQHPvT1QetgmG0pBTejo=;
 b=DqfBYHMimfUpaItphHUin41DyHCmDs32AgllJZykoZM0itR88Nmv7mzUG7oBlfQ3zKWY1NmiutLXc9qIUa09icKulyBo/ZGGvC4jjJKrWUAhJkvcI0zd23txv846ZRJDQvE1P84fnmMHF8ekrk7jrMchv60kYwl+ndb4Kz8+QZUYar0jbtZwOKtuf7tlJ1IWuRx+SJpLQyD9rIriHJK+WvW7rwri554JW5IRj1F0y8Jo2AkiW+fvZgj5x76TRHZYpTxlBpyqavy3ZvNNqIMZ1DDoXiy5SA7ELwaoYW7sHyuv5dRqpJHBPxs7AG9batqcI1K7Z1PmlI9X7u0UqSwM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 DM3PR11MB8669.namprd11.prod.outlook.com (2603:10b6:0:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.26; Wed, 7 May 2025 08:01:11 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 08:01:11 +0000
Date: Wed, 7 May 2025 10:00:59 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <przemyslaw.kitszel@intel.com>,
 <dawid.osuchowski@linux.intel.com>, <jacob.e.keller@intel.com>,
 <netdev@vger.kernel.org>, <kernel-team@cloudflare.com>
Message-ID: <aBsTO4_LZoNniFS5@localhost.localdomain>
References: <20250422153659.284868-1-michal.kubiak@intel.com>
 <b36a7cb6-582b-422d-82ce-98dc8985fd0d@cloudflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b36a7cb6-582b-422d-82ce-98dc8985fd0d@cloudflare.com>
X-ClientProxiedBy: VI1PR06CA0185.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::42) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|DM3PR11MB8669:EE_
X-MS-Office365-Filtering-Correlation-Id: a989e84e-04fb-4836-9162-08dd8d3d54a3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+9YWs6gIgZB0bP7k5PE8nsmaedCdwlCh35hK8chyO90aASSEw1YrtgOQhE7u?=
 =?us-ascii?Q?1lpw0gAAbE4ZOxVYFhdKrMhr0alSFlToxcU92h1gvmWN0zzacd6HhNsuv2De?=
 =?us-ascii?Q?cFlMnkI1Dkj1PtmBpSKKIjxRlsgDlr+RBsCbDJf9KHhQ2EfRzoWKcwWrNHId?=
 =?us-ascii?Q?UM5BqsCnQsDU0RjyyRt1U37gCGGdVBWQnK34IGIbhniFkdVYlAXCS+mJubnU?=
 =?us-ascii?Q?oS1+L+On/iyRhH2Rc7Qq5xvKs++6CCdPe2M2yFvF6cwFSX/hvC+RGmqVnqH2?=
 =?us-ascii?Q?3DW4cWbB4Y+y+9TZtIVDZnySBmYysDFsxd1+TQDtXJXi/ygwJfqL5dzqhN4K?=
 =?us-ascii?Q?6v3wv8QYmz7HXMKBFvrHZqwJAKVwrTHLFsLNzzsnwrPrAUaHkRPi2IkBRtBD?=
 =?us-ascii?Q?JN5IAnVsLKCnSGBqZFjLGkO5g5piz6yeAGg+ksuPbynVODqRNKYi9KwSJLtw?=
 =?us-ascii?Q?bJNxFTGs4pUmw7QQ3fsyPysiXhZwgfl28xOc5DCvZbO21d6fTED6umx6LLCB?=
 =?us-ascii?Q?ZhqII924BEYCmuDCgwY7y4MxTyfHejCekJMmObeqRZDCdhrPvPSR77sysEXP?=
 =?us-ascii?Q?UB+GsBgH3zvd+8FwlM8Rhil/gaBuwi+p+JQh9q0kQ/EInMtPthMput6k2zeC?=
 =?us-ascii?Q?OSFq+XmAIzjCkIJD5KkaISKhECvoKkBH3y/hOBMxVQvcwctjxx/A49WWvD2c?=
 =?us-ascii?Q?2a5TpmKOMEOmYFjGvgvI5MtZcWXDnHVmAY8EPPt/OyFzPgXY4Ip2+LniZKSe?=
 =?us-ascii?Q?ZwC8wEadgN7orIFqvLOuJSF4UiYOHy8umDD8s8vF8bDRf7AdlFmIIFn3dPuE?=
 =?us-ascii?Q?84GDbT/C4SatJUfz1a/rU9ZKSEerExL4XKzxutqd9w0wSPfHeC2Tr8yfBAeZ?=
 =?us-ascii?Q?KH8VgDsm0yApJmJ+wnV0p5rPhRZkN49dA4T2WPQuyslILpV2MIVP3go1Pe8E?=
 =?us-ascii?Q?RlC9aqAX9IvnzpElraCEtnnyEhKq2/vauuU8i74+GKATcvc4qsGoVA6Xdi9N?=
 =?us-ascii?Q?UyCx4qBNM2x/FGf9x6JD7B8MZfLT7MPvYDxapR2qCwXjJDes0lapcCBTPpWq?=
 =?us-ascii?Q?mzF54MGGWIqR+ut0ZCcXY9ONu+9hPjUFTIAKI+We6S6XRCD+5HTn+SicCD3s?=
 =?us-ascii?Q?awLJw70aLI+YCqWNul7+VBMGkMMW72S3gAIkqgkfN7t/fB9q5nITgMMCqI2K?=
 =?us-ascii?Q?YnbC6JSKJqOsaJkWjUfv073Cme5th/COR2S3lV+2L5mURtD/CUTvyXCE9CL2?=
 =?us-ascii?Q?ERmYSyejkMOP0Oc3SwbpBrSzX8r8VKc9Kn9fpyA/GGfvyX92svrAOP8BLW/F?=
 =?us-ascii?Q?nR0l6a85novd7Bb5vfc1mrxbY2phdBQJUXeAZx5I5pdTud53FN5KP8oS+DGX?=
 =?us-ascii?Q?+dOhPgtCcIGJaFMD1lrNT2YtM5Yp54gBFFxOmUjuE5dDyRTpk11zz7HNU1AB?=
 =?us-ascii?Q?QHcaoeEBlug=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nDUgrOT/8Cr59ZcEZlvaOvIdcVvfdQUgIVf+zNgI6rZEyt3aPqqGqMWIs6BF?=
 =?us-ascii?Q?M3oY5DX/PgGpIMYv4yLnyyhWLg7sdCZ9w12w/wHQ0OpBDKNqoROz2DlbkI2e?=
 =?us-ascii?Q?ub+HMynCrL0x1zMAEDGE2jRGOwVlUIdRi8WWSVv2fa4VhhVM37hfW2eKN0sA?=
 =?us-ascii?Q?toXZ4uvQGBymVZLgmEivNnEdSaIJUY4gz7cxxgY7AlE737B4A1YpoNZgD/XA?=
 =?us-ascii?Q?pRWCVCkmJ8uyzu8Ams1K2hJ1HJaabe3A32MlAi00GwcxubqUWhJPG1For9QL?=
 =?us-ascii?Q?LqE60li/d8OBclM3TXQRe69xW8yWxXijntB74CvfjAjQB4x2ZUo14boNt8NO?=
 =?us-ascii?Q?QQu1Yaa5NfZ6Lxq9ziWrptvioJH5+MIoGz5sxeQxpryRsCXTHNs+8K9lwVfu?=
 =?us-ascii?Q?AANwp46KJHKeu+1kHjvaGSg8aoOqyLbdxI3Qa5SZUMwD6KJ/qwvKtsWV7xxj?=
 =?us-ascii?Q?Mlo+B+6hRHNtyoyXYkf8x4MiJOeZBSdV5VUHoDJ11utt/zo6VQT1J7z1l0ND?=
 =?us-ascii?Q?OAy94Uc2HNKAK6l4ZR/HPy0gqz6E/++u+z043eTXNLmngxC4rnt3o/ICFBBZ?=
 =?us-ascii?Q?mhzEi27JRhiQdAobd/r67QIQB7H0BWBoJ96Qvw6i8AzRyEzJgWyd015MuEB7?=
 =?us-ascii?Q?Gxfkf0x+zwYuKj/gI9twnuCgdx2udaPXynm1UWgBpB3fzM8J1gpO1X8QuTVs?=
 =?us-ascii?Q?UoZjdefGIvcal5fIylQH3LSkL/y3uaa6yPrLe3Alo1NlR3YJqWpp5Hh8abyf?=
 =?us-ascii?Q?W5R5+MBiYpP00sB8lJ3e1YAyahDOllQ2XfPZ+VIASEcA07Hpma4K1CgNu1cM?=
 =?us-ascii?Q?v0VFxt0rKAuBniMDvITkwaUwtJ+OAsQY7aTqnxHJFdGM+hFpG88ysvrsvt3/?=
 =?us-ascii?Q?Zw8KNXmPRforWv2U8dlhtn2LZn5Gs84Du8klmR92nblz5PzvHFNeXVlTgkiS?=
 =?us-ascii?Q?BmL/p7ALE4hg8W35fLFDnk8LRo4SnFOcsZ52pOjP9bS0XrN6zYDTyyJYzOM/?=
 =?us-ascii?Q?NIiRJzV1+u7IOkZge6EEIdmYJ9jvAaAclEjflatBKPbSXcSstR6v3rET5CCM?=
 =?us-ascii?Q?oHy17wftWrtTKEBJpqv2wnPjbgYy3SIU5wzH0QKkMRs34J6X+G4wLc2nrkc8?=
 =?us-ascii?Q?fh5jHq6yes26c6FWt+Z/WF6MD+hBivoJrQNqzaWSse+9PS+rkq31K3xfvc8Y?=
 =?us-ascii?Q?Tu8FvU3HZUH/6OU56ElCwEQ5XcEmH6soX6cMij/RgpEtXiRbhbK27Px7e8J/?=
 =?us-ascii?Q?Ff6+Awit/0DStC1fZf0Togd4zTV2mywkViaHvtDd9RABNsNLOfIzFcrRG7KW?=
 =?us-ascii?Q?mmEdu2fn50Esfn0AScpMXjOxr2AL5PngA3Lb89sIKJQZZ4fGKc6H1c5L1K2M?=
 =?us-ascii?Q?WoGiQucyGXiD8vJ+ER74PGrqWq4xs4wq/MHZV6YUq2Urqqn0Inn2W9ZIHvV4?=
 =?us-ascii?Q?q9EVnyN59ue3/sL+ZGr7kTSgZboab5etrnMqJ1uLPUtGxKHjOWN5/iW87T5x?=
 =?us-ascii?Q?LLFS8GYOPerxFQS4SPt4K+3BrFi8QHWAn91VeyKSmsfGPKMh+Hpf2SB7MWY4?=
 =?us-ascii?Q?wg5xB6PoTdB8KKRvTN2QanT0toGGKNqyGIqXP/mkNGrdjCFZU4t0sL9I3+jf?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a989e84e-04fb-4836-9162-08dd8d3d54a3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 08:01:11.0741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sC0Hgpr7XHvOw/8qwP59QUcPFpl1LeXdsO/kxJEPST/mZKyquuNgFFM09eEebGbrc8F1XD+1s+T3jcXt/TfV+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8669
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746604921; x=1778140921;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IAkOyI6CK6MDPH9mxP92pzbcLeA++EZPe8sGHk2DU/I=;
 b=DOFaz1yCiX1yRTabpjCfC7cXIX1iN0f3lvZhI0y+LuoTlD69P0ZHNTqU
 BN2fre0qDhzQZlX5pvVaV4o2G1shaXupSOGcI/jdqJSZo/B+2b7Gk/nn/
 NnpFafHGA/WhHn2IwjSAfPIuK9DH2ULOgkzN7mpF6ek/8RSP4PKPmruSN
 uFe8A6nnx5M+LaV2m1dy3QoFLw3tlVc1xd8RmOy0UwKe/1KlsjTMDxpAJ
 LIJugVHvoHxaOB7qqYlFDc7iEzIiNv2mYxAXJcVECVoE+07G5yOY8aMDV
 YSNkG0mayOyM+l/i4FZNFtYlXh1TnS8zyBBBcDf1+XHF1bUUjvz+xmnx/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DOFaz1yC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] Fix XDP loading on
 machines with many CPUs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 06, 2025 at 10:31:59PM -0700, Jesse Brandeburg wrote:
> On 4/22/25 8:36 AM, Michal Kubiak wrote:
> > Hi,
> > 
> > Some of our customers have reported a crash problem when trying to load
> > the XDP program on machines with a large number of CPU cores. After
> > extensive debugging, it became clear that the root cause of the problem
> > lies in the Tx scheduler implementation, which does not seem to be able
> > to handle the creation of a large number of Tx queues (even though this
> > number does not exceed the number of available queues reported by the
> > FW).
> > This series addresses this problem.
> 
> 
> Hi Michal,
> 
> Unfortunately this version of the series seems to reintroduce the original
> problem error: -22.

Hi Jesse,

Thanks for testing and reporting!

I will take a look at the problem and try to reproduce it locally. I would also
have a few questions inline.

First, was your original problem not the failure with error: -5? Or did you have
both (-5 and -22), depending on the scenario/environment?
I am asking because it seems that these two errors occurred at different
initialization stages of the tx scheduler. Of course, the series
was intended to address both of these issues.

> 
> I double checked the patches, they looked like they were applied in our test
> version 2025.5.8 build which contained a 6.12.26 kernel with this series
> applied (all 3)
> 
> Our setup is saying max 252 combined queues, but running 384 CPUs by
> default, loads an XDP program, then reduces the number of queues using
> ethtool, to 192. After that we get the error -22 and link is down.
> 

To be honest, I did not test the scenario in which the number of queues is
reduced while the XDP program is running. This is the first thing I will check.

Can you please confirm that you did that step on both the current
and the draft version of the series?
It would also be interesting to check what happens if the queue number is reduced
before loading the XDP program.

> Sorry to bring some bad news, and I know it took a while, it is a bit of a
> process to test this in our lab.
> 
> The original version you had sent us was working fine when we tested it, so
> the problem seems to be between those two versions. I suppose it could be
> possible (but unlikely because I used git to apply the patches) that there
> was something wrong with the source code, but I sincerely doubt it as the
> patches had applied cleanly.

The current series contains mostly some cosmetic fixes, but the potential
regression is still possible, so I will take a look at the diff.

> 
> We are only able to test 6.12.y or 6.6.y stable variants of the kernel if
> you want to make a test version of a fixed series for us to try.
> 
> Thanks,
> 
> Jesse
> 

I will keep you updated on my findings.

Thanks,
Michal
