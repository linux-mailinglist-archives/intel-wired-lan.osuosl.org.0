Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BB28607F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 02:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12926419F4;
	Fri, 23 Feb 2024 01:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9frsoyUC4_Od; Fri, 23 Feb 2024 01:04:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10D814013C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708650273;
	bh=Y4RliGnO5F/8fVzcawBfe4HPmAwOxEVHjUBuNGZRL5Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=trMNnKZd3ysvkXAx9Ic9+QBsjuRWktodoUgBODDl5w/360xjAUhtv1JY3GBARFQJd
	 S95KWTZanwnvj0Xz25KyxQqboH4ExkTCOCLdMZLHDl0ZXJgdFxIjrrykOYaj0GYQPu
	 w4dcg6Fm4a82YcqQ7jKom4AScjIndhUeCEjR3TG8mkVUOsk3m1WqelslWqDoqe6hPW
	 Sj0A/1z5ok0OeLz0MMGb2xBbT0PAQzXLxjwwHwM46WsIEOV01wUA93Jp4y+jCKMgSs
	 DUGzCHunqHvopxjq0iK8trbTU2NI4HshI40byNvaFUIbWGIkoCCrgpLC0zCXxdtBWe
	 WVgRXYMVUVqHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10D814013C;
	Fri, 23 Feb 2024 01:04:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A67C31BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 01:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DA4C41DDE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 01:04:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0cQG0jWa5hTh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 01:04:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DF70E41DDD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF70E41DDD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF70E41DDD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 01:04:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="6758597"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6758597"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 17:04:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5615912"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 17:04:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 17:04:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 17:04:27 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 17:04:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SnTUs3k5r/k3M5AvsEwdjHW+OpI497AWAlo8xpCPpn79c0RRFZoAGH0Gjt6SueCti+ShupwXcfnhO7xwTr8dyIioU8+yt04uKUUjfa7vyXpOWkaz7dGiFFPRt5RRfwvNi23GWvAj+y3Ar4M01W47JBnHDomZtEwOWKZA4HJXe7oJhqsXL5RFf5lopxU6yQCRgIn8bQPpHZE9i8P9vJ/Li5yPMNd5HwQqFydhfnbKgDQ2nAadGZiZ0S9EGsaGFiFgQ89LEagTfaKPjNrZBWKpYbej+msJ4LevKiZj8Foia1w2+4ZbPFL5o8QYJ/g8KsJeN3sDr0brNMXTMrfKtmpYVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y4RliGnO5F/8fVzcawBfe4HPmAwOxEVHjUBuNGZRL5Q=;
 b=g7iyckYSZTwq3FkfdintUt9Ywe/lptu6wh9dUx28LUtPWAfzvFG89MN+MHkcjSvtJt0A0biyawH66jjHMK/SN9HaksYfdIHg/SBkgTmep3qvBcwUHJnQ/ODCTOZX9NurRIu47KiqXKCnBvtvYpiromvQBcPWYr+6KmiaGw9EkMYtjLjhag1PWxv63tVkP7/LyhOdZOa5Tcypg4KZg8qFNj6yTxYr5EjIhm3gGPG+z3P2+h0l920Tgj1q/d3xt/rAgsRMDNo7kHFUo4u0xzhjcCoxa793DYzox9GQJarnFAfqwkb/d2zrbV0g08gXRWhYyI6Yaq/EkTQyaDz5ryS0jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.34; Fri, 23 Feb
 2024 01:04:24 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50%3]) with mapi id 15.20.7339.007; Fri, 23 Feb 2024
 01:04:24 +0000
Message-ID: <4bf0c575-8059-46b9-8677-2c0de18ffcf6@intel.com>
Date: Thu, 22 Feb 2024 17:04:21 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <20240220231720.14836-1-jesse.brandeburg@intel.com>
 <481ea432-154a-b3c3-73ad-4a5ab6fe25ba@intel.com>
 <CO1PR11MB5089BAE82D6B60BACF3AF94FD6562@CO1PR11MB5089.namprd11.prod.outlook.com>
 <cd289ca9-0689-5cbc-a088-72f8efa8cb8e@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <cd289ca9-0689-5cbc-a088-72f8efa8cb8e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0191.namprd04.prod.outlook.com
 (2603:10b6:303:86::16) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|IA1PR11MB6193:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dca274b-d221-40f1-c9ec-08dc340b604f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vR6o+At7B809i7kBlRWIbVnhzTrMdrTfJlPZ/p5sOtAUEzbZHGESaLaHi/HB+8/E0+2eWDNc5cJsxK5n9F9Bc+fOtBCYblDcszGjnLMAQg768mfR7PQr1c6LYAdmAJIEsi+19ROyFtlY+wxwWNcGR/VlIm7c5VlVUo9btJsFsvcqd4xPeO5KO3s8njkvISTJ2Kjj8N3lg2vTl3C0d9GOZ0/akKfAnpGDE+pEKzeu/dne9KjLg3ICbm5UKA0z3X+bVeTqQO3QkQM9Eo6djW6jRUM11aHsTge11FR6uiO70RsmKaiYFAkPhJ0+g5YZbCZuxJjllj/9Wn86lyw0ag4dar+bN30FHGKLN6tMs86gLdhaHjI291jeFlhjf1Kvyszpq8foympjlurwlgWhXdEpH0A4tBb/b7jS9ip40/0O4ZjgOu8tmjWPaiNCLxVU+4Rw/nxIbdfk0YysSZLNDoNY2GYTGudAM3MYSxClc7B5PqDr6JvN+y/sLS+wjDr757QgiA+DOcaJ4AHGu7XGNwLyv/rkUrz1TAIN5BIB07Y4/EM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG9yVDM3akJ1TGNsVm1QdW9rOG1HQUdBN21wNVc4eDhINzc0QWZwVURnc3VX?=
 =?utf-8?B?MEtVemRtTldYTEVVVzV1eGpxYk1vUTczNnB5YUQ3KzRrT3ZpTmVoaUd4SlhB?=
 =?utf-8?B?UGtzTGdQOGlZaFJPRzdpOHJWRFJyUE1vaFFjSnlpSGdLeFpuZGt0anppYVlP?=
 =?utf-8?B?TzQ0WlJrQUFPa3B3c0dEWEpkYUcwalFCd0xRV2hGc3V4aHJESjhWZjR3bTJj?=
 =?utf-8?B?LzlPenhtUnVWcFliNFd3L1ExSjVIM2VKOFVIeEE2SE1TNjA4NTkrUjQ3amFq?=
 =?utf-8?B?cHB1NVNEZGl1TGltdGpkTy8zUDlNMFcvaTUyd0UyYVRkZEFQMUVxa1QwdW8x?=
 =?utf-8?B?UEhla3ZYTjhiTEVyQlgrLzE0MVdidmpJZWNMWUV3MEdyU2lVMFkvMk50eGx0?=
 =?utf-8?B?SCtyYVlVdko0akkvc2g2di8zL09PYWVmcEd2T1FiUlJNcG4yb1JXSEpoaTM0?=
 =?utf-8?B?WFZ1TllkVGorcldoS0VucEozd095VkJTL1NZdkI1VFpmWEQyaUMrczIyVXpL?=
 =?utf-8?B?UFVXNDRtdHk1Ym1HODJDaWdJc25LajBTQTJ5aHB3SFNaNTkvUk1ONDlCaVE1?=
 =?utf-8?B?QlRoQytUcEFjQmEzS0dQYVRkeVJTR1ZZaEZwRDQydkxtNFRWTWl5VE14V3l6?=
 =?utf-8?B?ZGMyVjl5ZndOMGhCaXp6OEFveU5iR0RWcFhkaTNsLzhQYjlicmE0SExSdzFz?=
 =?utf-8?B?NE4wMkc1SHcvbFNsZ1BSZmd5OTgvdlpDajFyZGhrVUtuUVhvVEdPdzd6WlZF?=
 =?utf-8?B?ayt0bXZSK04xbngxc09EV2hWMllxaUNIeFpUTFJTSzhQeTY2UXdWRWVOcGxY?=
 =?utf-8?B?Vm5FK05mWWZvNG9VQVlvVGFjVlpDU1dZRzJoSkJ4K1VXb3VYdGNpL2hOazg0?=
 =?utf-8?B?aThhZ1hiMzNLaS92UkphQTh3UFVqejBBYURKMGgzNTJpRlBST0Q4a0Y3Qklt?=
 =?utf-8?B?WUgrb3lNeXp1MGpweXFXRFZjMHNXbzFlK0FlTlVXRzJMb3B1dGZhNnk2czJ2?=
 =?utf-8?B?eE42Zmd6L2l5eDJaTXhrTFEvUUFVMTZtNk05SkdCZFlUNEd3MjdwNEFVQ0V0?=
 =?utf-8?B?TGhraTRMYnlSMmNiUkgwQmtISm5EeWxSZ0JtanpTY1lJYmJKMmVQRmJmOUlE?=
 =?utf-8?B?Z0NHbVhkbDZVN3BZeGhGZ2lUNkdzZHQ4US9qL1BpeUlTd21MTUptYlBqYTdT?=
 =?utf-8?B?RWFocVB5RFFIZmwvYXgzWUtKejBYSDN5bUhIUUZ0UzBwdGR0eFl4eGlBTVVC?=
 =?utf-8?B?U2tzdGNnVXA1UzFjVnhnaWRyRXhLcE96Z1l6WklsNXpjVVBISXhLRk5NMGVk?=
 =?utf-8?B?Ym0yMjN6WC9CT08rMWxHV1JRZTN6dnQrb3BWTlpGbDQrV1ZiY2NjczZuZmlJ?=
 =?utf-8?B?Q3JvL0VMc055ZXpRTDVjOHpRQnZoMGpQSmpIUGI0Z05naFhhWTQ4Y1MxQ0hW?=
 =?utf-8?B?MkxCdGJ6dEFBQm16d1Bkd29BMFJ2Z3dZcDFkTkVwSmdCcmJsczNPTTJnbGR5?=
 =?utf-8?B?cFVLVFhVT3RCbmRHTUE4VXRCRlF2U3ZJem00SUpLdnRldURLOXNVZHdCMlRp?=
 =?utf-8?B?dmMwcW0vQ3pUUHpvTVY1amFFbHRzUmZ4VnNFUjl4RG84YXV1WnFWckxZcTVK?=
 =?utf-8?B?Y3ZEWXNsSzl6UDZJR2F6RTVwTkFVdGZXYXJ1ejVlMnpINy9iMGw4L2laOFRV?=
 =?utf-8?B?WHplZ0dZZXNpMDNzaDBMMUpTRnRwSHhtdW4wR0IzM090T0crdVNUdUFWSXY2?=
 =?utf-8?B?OFduQlN2eGFXNUdIT0htb2F4VFROVWorUnNjM05IL2d0TXYrUkQ0QXR2eWpj?=
 =?utf-8?B?V3hIRDN5bVVHc0x6TTBuQTRIamx1WXo0c2JQZWJNV2ZvWFp2bDB3eDU1K3ps?=
 =?utf-8?B?MnJEL280Y2srK0lydWluMmNUVHBSYjJxY0xjWDNsLzFZKzN4cmN2Sk5xNUor?=
 =?utf-8?B?NUEvZ0tpL01PK2dXaFdiY3dIN2EzSHpiaDhacXYwVnduMk5kRjhRaHpOYzlB?=
 =?utf-8?B?d1BlRmp2S2pCZDVzdnVlcGp1VHJ2NmQrWi95WllhQ3FrZDJWZnl1VFYrbm51?=
 =?utf-8?B?SExERyt6YjBQeUtyWGppV0JjcUJzNVBISUYvbDlkazNQVUtocS92YnVITm9x?=
 =?utf-8?B?SS9HaTBreGtTR0tDSkhvd2F1bXFETXEwYXB6dFhXZGNiRWx3VDlNMXB3a1JD?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dca274b-d221-40f1-c9ec-08dc340b604f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 01:04:24.5794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /oFeJAoVeJfimrUo5doAw5yjrlemLclZVQ5T0hC4ozvE2j6hBkec4OohNGemGXj8gqQEeCvEJDnLFTVvcetNYZRogrviRLQRCCaB7bYUpKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708650270; x=1740186270;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=85FtOvG1/MsqW0S6DYHi7LfAAeyK5F0XuYCqwH0lA3Q=;
 b=Vrz+BQ3dNjCOfFYNT0PntIEnUrAYrQo1/fbMCFnYQ6nmfh2J/PZf60HM
 nAfjOc8JCRIrIFM1zCAO2bn00ukW5aB7XufQaPbp61Y2CsIRyeu3TDGwA
 PWbWRzDGOgQpmIzUHlp0u+6S9zBeOPIaz1oxTUHWmAZM5TIOIpQ0CJx4L
 VPbsc7seSXmW+sLwMWxsy2Wvn130jNPF3Bo4GWJJbui2J9FIWW7nWNKTx
 AaKeIOZHF8/8s5+0m5WGLsovdZmPfYne/ZdLnXc+V0k8PFJZnTSdnpaK3
 YExLf2k+V1NQ1GYJGIMKPt5L0j5dRjI22anDF/TVud5jO56Ry6+MA6SnM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vrz+BQ3d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix NULL pointer
 access during resume
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, "Elliott, Rob" <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/22/2024 2:25 PM, Tony Nguyen wrote:

>> I think he means that the tests won't pass without Amritha's patch 
>> because we'll hit the ASSERT_RTNL in the suspend flow otherwise.
> 
> Got it. Anyways, this doesn't apply to net-queue, could we rebase or 
> base it off of that tree?

Ok, will send v2 off -net.



