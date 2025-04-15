Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E8FA8A74C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 20:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D947483A3C;
	Tue, 15 Apr 2025 18:54:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qz2viLxPFP2h; Tue, 15 Apr 2025 18:54:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4577983A3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744743296;
	bh=/NGnVqa2p6fty2zNnT40OHnChmABvK59OZd6yvnQBLc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GuLdkBXxTrl25UkSElt6r4+54XS+aSIGQDVM6I0T965uo3SGwb1Sk5Ju+vL5mUki8
	 UMmmACE5GWFSe2BJ+vNqFa74Kj2xoUXaYcmu/a15rSVKeiqOp9U0dXKFk4F5I4ogil
	 I+pT+C1gCeBwk6WSk5baqIaZ8QDaInz0r/ItO1SRl34PJpomu+rlYR59E7I5iYvC6t
	 m14ZYpR0RPNOrD7YZjKPSikwnUE3KDR+ddbvTQPcHlg7+9g0D9lNyOdMf8psQ9QSGw
	 klbhzwEhdigM/6HpSqFxUeUh638r0kWd+TGtWwS3xWglvksLNyCi/ariwlrs3/l8X+
	 3n+KPJ4n+qf4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4577983A3F;
	Tue, 15 Apr 2025 18:54:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 976F7200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88B648179D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b8tBPzzNLoE1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 18:54:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD6CD81EF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD6CD81EF3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD6CD81EF3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:52 +0000 (UTC)
X-CSE-ConnectionGUID: ljFuovJ0Qn2Q69hg+hQGKQ==
X-CSE-MsgGUID: 82p+A8VkSP2z9Wm7oL8d5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46357986"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="46357986"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:54:52 -0700
X-CSE-ConnectionGUID: hI7W1DpgR7GwFnZPNRs4wQ==
X-CSE-MsgGUID: y305j7J0SGqoViHT3RrDPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="135053213"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:54:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 11:54:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 11:54:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 11:54:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v8vtEXbrHXzoVe3prC63vZcszc0dztvNtFd2IM+1DtQiJ/C4LLRqcf+QfPLHtCMNZHSNfX5OQJRv1gVZOUosWHzCJ1puierimnSiVZ4iMhDFW+U9UVZr5VcQxXwvyvVMl/u1eAH8RHwBJv+gp8kcOgmbSw+KDOtp7UpC5UAUILAR42/UbtK8jhcUt/jWFsgBqb19K71i/edVYyub9UhzRVRxMtb2Bly8/yhfo/RXzCHS5domPYcusJXrbgZYu3kouC6rREVE/T1U9dmDWM52bIFLBstVwzFJAS+D0CrG8n+RrcyD9gESButsiOFZ7fPq53EkneL2GDxGEwb14X/MYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/NGnVqa2p6fty2zNnT40OHnChmABvK59OZd6yvnQBLc=;
 b=B4AX2+J334UK7/jHx5/y465HIqcjVoUq/p2I9QGraBThZERyVjPfCABlrC/u2o4Jsjv6GISRTaFCI5HFkomQN/NHozwKdc9505UoyejyjqSGGcL7jLmcc3iqaAmNshWydWXlrSz2orNLc4DroKxN6FOHkuKO35EkB7sXaphZDrKt48UKgTpqUkhWxelFAb1/NEySZu/4l8c6GyYRrH8Ow5W8ybV1JjctI5xZAKAWZXjb4FKf2Ip52ELjkAHfEVrbQEa739iD9lh9SffecHfD+sGEwfkfZxzT0gXs+YGB9XnbfZ9cl47fBE7AS6nF93X7YB85w/tZyBmarmmpp8DSuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW4PR11MB7006.namprd11.prod.outlook.com (2603:10b6:303:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Tue, 15 Apr
 2025 18:54:48 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 18:54:47 +0000
Message-ID: <d397e5c5-e05b-4ec3-bbd6-14f06b33db49@intel.com>
Date: Tue, 15 Apr 2025 11:54:41 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Lee Trager" <lee@trager.us>, Madhavan
 Srinivasan <maddy@linux.ibm.com>, "Sridhar Samudrala"
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki
 <ahmed.zaki@intel.com>, <netdev@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, Emil Tantilov
 <emil.s.tantilov@intel.com>, Madhu Chittim <madhu.chittim@intel.com>, "Josh
 Hay" <joshua.a.hay@intel.com>, Milena Olech <milena.olech@intel.com>,
 <pavan.kumar.linga@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-15-larysa.zaremba@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250408124816.11584-15-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW4PR11MB7006:EE_
X-MS-Office365-Filtering-Correlation-Id: 64f3331b-6d1a-4a1a-a51a-08dd7c4efe83
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVdmYTJrMkNTT1IzVEE1ZVBTdVNwbnRQVUJ2eGpnRGhGM3g2ZzdwSGlPM0N5?=
 =?utf-8?B?eDV4Nzl2alJDRlpESUpZQ2hZd1Vmejk1YjlqZE16U3lqVGRJVmJ6eDRNTGpI?=
 =?utf-8?B?YXVCeFVGdmJZOUg2N0RNM2xKdEZFckp1SExyMytKZXQzVEpqZlgyNUxpWnhJ?=
 =?utf-8?B?OTlqM0JQMFFueWZCZitLVzcxb0hDTmNDaWlyQVlDam11MTNSY3c5VFZ3TEUw?=
 =?utf-8?B?dUJYNFJkS240b2F4UlRJcHZvcHRZSXJYd0hDd0NFeno0bXltR3Q2VFVrZmRQ?=
 =?utf-8?B?TDgvcmtNRFlMSE1kVGlNcHZqeVBpOG5pRnZQSzVlaTFtU3VQU0VJemdwTE9B?=
 =?utf-8?B?UzF1TVNxMVh6WFhNYmFybUtobFJnU2h0azcwOTY2dHc4d05LZzBPKzREMngw?=
 =?utf-8?B?ZGtOYnhSRE5oRkFMUFFneUIyNzlsVGJxVzh3NDdoQnMweE1GcXdmeU55OUZL?=
 =?utf-8?B?WjZGcFYvUXkzRVFMZGhydVE1dE1CS0pZNzRLR2tRbzN6aEM0YTBuaFhOWUho?=
 =?utf-8?B?aXlaaTlqT2pSYjEvZTZKL3JZaGZxQTBBYjREYmZCOWhneVBLUVJlYm1rSEox?=
 =?utf-8?B?c0hlVEY4U0RSMDJjaGtScFlWcWlaeVBGaUh5ZE1rWEpaK3hBa1dzRlcyaVJY?=
 =?utf-8?B?V21ONXFOQitnajFNSkxCM2MxYWIrQ0F1S0ZTUVVxTHdIcE10ZkdhMWROS3k5?=
 =?utf-8?B?Um1jY1F0UlIvRmxnN2s1M0tPcEtxL21TZGtHcGdQeTRZSmZzK2pPdnk1eVRL?=
 =?utf-8?B?YUVnWU4yeEdvb0lnNmxiZFFFY1Z3c2xKRVg2Z2xGbm1MV1FDd1dpWFFLdGxT?=
 =?utf-8?B?eUZydU83ZUorOFRhK2FaTENSeU93ZElwVWNMb3hLcEhHUHBLL1Y4VEE5Uisz?=
 =?utf-8?B?UlhZcTBpK2diUEM4TFlESllRVTNGTWFIVVhDS01WazdEdGJDNjE2aHdYWEta?=
 =?utf-8?B?blV1WVBXa2ZYdUdFdDFnNDdhd25kZUdXUi9IOXJVTkY1MmE4ekxLNjlSVzV1?=
 =?utf-8?B?ZFJZMUJNempEai9tQ3NvckMzaHh2V0NrSHdKZmcxT1RwL0s2TlhEZFYweGQy?=
 =?utf-8?B?T0VnajlCd2tCb3pnOWNJLytwdERYa3V2Z0o4VjBPVTlQOFJqQU1JdmVSTXk4?=
 =?utf-8?B?Y1dESmI0QjgzUGZhaFR1Y29hSHA2bDRuTk1hSnFtK3lKNXFKaW1CRGlrb212?=
 =?utf-8?B?NmRuNlU1RFlvYzQvTGl3b284OXhObkh5bGlHMjA1QTJMamtYeUV2bGUvS081?=
 =?utf-8?B?WjlZZ3FkNU81Y2Y4TWRwS1pGOGNLMDZ3WjV4WjNpOGdXMDdkN1FJTmhjQ00y?=
 =?utf-8?B?Z055OTZ4MHpIeXNLRnE4ay9OMnBiTWF0eTZtR25XSmwvNFBUclV3WWIyL2sy?=
 =?utf-8?B?Yzk1SGIrMVVoTGl4Q2VWRSsxMElzb05SSzFQZHNrM2dEZC8xajh1dEIvTUdp?=
 =?utf-8?B?L2crMEpOamRwK0drdnZEekpyeXJpQVo3VnltMW83Vy8vNUpuZ1g0ZXN2ZmpK?=
 =?utf-8?B?OVR3Wi9GTmN1SE1BRE1rR3lQM2dtb0phQisrdngvQkRoZHlYLzNBekFtZ0Rk?=
 =?utf-8?B?dEk2ZkRSZ3kzclZDaWw3V2xPOFcwd3l6eW5lNm4yZ0lZN2dTYWVHaVpaUVd6?=
 =?utf-8?B?cTBxSU1jWmVBVnByL3I4eTIzbG1KYmRZZGlyNE1rY3NxNmFLUnk5T05GSS8z?=
 =?utf-8?B?KzNUcDI1LzJoajh3cWNoTkpibE1LdG5YSVVkcGowZDMzZHZ6Z0QxVko3azVN?=
 =?utf-8?B?TVZieWJpZ2c5M012d2dsd01QRyt5cGEwenh3Y0NialEzWFNuRXZPT3J4STdE?=
 =?utf-8?B?bXdlZHM2NDlWTU5RNHR6VFlZQmMycGcyVC8zcThleERQM0cxMklvYVVjVE01?=
 =?utf-8?B?UHQ5b1E2NDltYUZ4SzV6dzNkb3drMWZEbmRsV0NvdWhralE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0lMZnY5amU2U0MzUDV6aUd5cDBURFpiRVJMZnZ0ODdzd0Ywd05iUk1UWGdh?=
 =?utf-8?B?eWpEOEd4L0E5WVFDdVBjSXduTHI3Q3hWSGY1M01aMVB6amE0MENYc2J1L2dJ?=
 =?utf-8?B?L095YyttMGtwcCtNVkFaQmZWbFlmMEw2d3hBSGg1UVRvaHZETzd2WjNta1lj?=
 =?utf-8?B?bis5RWxseUtOc2dtQ2hzQTRFbXpEKzVCSmFQU1FpT3ZGWDNJMWNic3FYZzVB?=
 =?utf-8?B?Y1FsQ1ZRYVc1a0RZcUdiNzZidTNjeUdqdDBhN01GYm11VVRXYTNiZ1pDQlJU?=
 =?utf-8?B?WEs1ME1JZ0w0cHBtUXFiUUpWazNuWFRNMStvV0gzMjllSUhlRmRrQzZiRHg4?=
 =?utf-8?B?L2JpcEMvbW9vbjZnK2l1UzVVMUc1RnBpNW5EQUpqVGRiQ3NTaTNwbE5UcWlX?=
 =?utf-8?B?WjU4TDNVUk9ZSlkwajZ6Q0ZVMGcvdGRLQUdTUnlHdUkrRGNrVWJ3ZE53NjRr?=
 =?utf-8?B?UXdIYjVISVA1bm5HYTNWaTlHS3h5Q0VpSGJHZ3M2ejVnUTB3ZFZLcmxYV1N2?=
 =?utf-8?B?YnVua0Y5OW1BejF0K3ExdTQva0t3a2IveHJOZjBzMURDaTNhdE9qaFEwM3Fq?=
 =?utf-8?B?QlVjZk1UVWc5ZmVldE8xVVpMVFhDUE5RQmNndmNrNEZ5dWppZGhoQVhSRWVY?=
 =?utf-8?B?UjRtdzh0QyttNE12Q3lFc085WDJaQUhieE9mZjRhcDIxM3R0UjVoRW5PeVRr?=
 =?utf-8?B?ZmpRQkpmSE1yNTBRVlVjU3RaZTlEVEJtWDlXbTZQQmN2bHdseXNqRXF5RWU2?=
 =?utf-8?B?YkluZk42T1ErcW1HSDRmZjdoR05MMnBjQ2l6ZFJWVW1YUGdFK2daM0JZeGpu?=
 =?utf-8?B?VmlOQlpQdWNTb1FxWWRNeG1Od01zTFlzbjRsNzQxUGpGUW5lZ0RLZFl0VDM1?=
 =?utf-8?B?ZXMvVFB1VnRoZThBa3FtSnNiZjJzQmZlU3l6QXd1SEJYWXRSZXJ5cmgrSUV4?=
 =?utf-8?B?Y0FSZ3I0TVMyckFSUnFJUWpnOUpJMVJabGE3Q0FBdklzTk5pQnFQY09HbjJM?=
 =?utf-8?B?c0JzY1UzMGFOeGYzbk5saEZzaTh5Qi9JZXRQTE5RVkd3TXU5OHRPMGJBRHNq?=
 =?utf-8?B?eDAyUnFraEVOYTBjSitBZXRXTGhMRmpFNFlGengxRHAxN2ZmZThkODg1NlBu?=
 =?utf-8?B?bmRBS2NlZ0hoNDU3Rkp0bWZFMWZBdzlmODRPOW1PTUlPV0U5eG5GSFlXbEpI?=
 =?utf-8?B?TmNQallsR0M3NDZMVVo0NzlXK0xsQWVDaG95UXFkU2d0aDhmemNVQjBUUzdr?=
 =?utf-8?B?QVh1UnJ0Q0MvWGFpNW5RQTlhOVZKY3VkS2p5MEtDVzVnSzVsZVFVbzRjTGNj?=
 =?utf-8?B?VDlUWUYwK1BVRjZnelFFMThqbjJ6M09ROFl1ekJiQ3Byck80M1NteVdLWGcw?=
 =?utf-8?B?SWdIcW1PbHdzQ1dNaGwzdm93Mk1ja1h4RkgvSm9rT0RDUE5uelB1blBaam9l?=
 =?utf-8?B?ajZTR1BMTGZDa3dCWmtvVG1ZU1grbDZHQTZ4bWJMbWxLQyt3b1NWbU8zWkJJ?=
 =?utf-8?B?Z01leEpPczhYSWwwa2ZzT3dkMGlxb0szSzZVdlVIdGx0NFhlQWgvNTVTamZ0?=
 =?utf-8?B?TnpDN1Y3eDRuOTBYbGhXMnIvMk9yTktjdEZPVmk5MDNkOFp6V05MVmh2NmNv?=
 =?utf-8?B?elVhU2tpT0ZqS2RyQ3pjUVJtVCtiL2VzUnBMNG8vclpCdDFtS2dYa1JOVXQ1?=
 =?utf-8?B?Q0ZFREZORHZPNXp0dnhVM1NSUGs3NVZyVjl3WXRGMWVURUNRY2lRWWRJWnRx?=
 =?utf-8?B?UVFsR1l1ZW9jSyt0MEd1SlNtbDBKRlljWGhtRVVDdXUwdThOV2hzTWw2NjIv?=
 =?utf-8?B?cklRdlB3cXVadyt2d01ieDE3QTM1MUhuekFnQmpRMUowTFhNSm9ndUZMN01v?=
 =?utf-8?B?WVpQbHhXL3VDbGJUMWEyZ3ltSFNMaTBzdHNDeG0xMEgzMVhzUEJNNWZReXMy?=
 =?utf-8?B?OE5OeEgzdTRwRWNLWXB4OWowRCsxQ0pKR3h5emRLVWM0TlZMY1dULzFVQ3ZB?=
 =?utf-8?B?TDcrR3B4UEhpcDNDS1hHaUdaeVRQVWVwNyt4cDF0WWI5K21KZk9reS9uaU1u?=
 =?utf-8?B?OXlvSzB0Sithdi81KzNWSm80ZjUrN1g2RklEemt2WGN5MnBZM2tlbkQzWkto?=
 =?utf-8?B?OXovRk1VN2FkN3hwZndJZ0N6M3QrVGNyNVp4Q1M0MitvY282RnB6SWJBVklp?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64f3331b-6d1a-4a1a-a51a-08dd7c4efe83
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 18:54:47.7768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hOa6yy0eK7Nv+SoztdgppNfLgPha7JpKkjFrS0wyNLxWP1TcrrA/klPuRAOd6dNicRJG9DvNQpojUkgwhSpMmJq6e4HgWecZhW0kPn16E6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7006
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744743293; x=1776279293;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UyWKqKxmdLlsR317msnhBNcOJbiuQMbOalNMQVC+Lyo=;
 b=JXapmcKNizLYpG7uRo3dNqOSMGEq+ba2Na/k/02arW0qRPDpzneH+B5W
 3BiQIllsuz4OeZTaYZFgMW+Q2Ok5w8u0uRJVvVhvT9CNZynlFkBWJiC+D
 ZIHD9TPXOsQlGPaLROFL10kzCxQTfVX2COrwkdvtUiekdNyRdAZAfl9SY
 5R9zALp6R6cHyQYWM3caHPhuysWB/FFhWKmdntl6U4s7o5KYUti31VGrO
 RsbZObDw8/WLzHtggCduc+oh/RfFMjA7L8XLZVlmKdkYhNWz8XvjXDu9D
 ygLFRstO3HNkYhkyS2bjJ5MZtasSoDKfdTy4nn4AMGGVbS9i5MVbgYTO+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JXapmcKN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 14/14] ixd: add devlink
 support
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



On 4/8/2025 5:48 AM, Larysa Zaremba wrote:
> From: Amritha Nambiar <amritha.nambiar@intel.com>
> 
> Enable initial support for the devlink interface with the ixd
> driver. The ixd hardware is a single function PCIe device. So, the
> PCIe adapter gets its own devlink instance to manage device-wide
> resources or configuration.
> 
> $ devlink dev show
> pci/0000:83:00.6
> 
> $ devlink dev info pci/0000:83:00.6
> pci/0000:83:00.6:
>    driver ixd
>    serial_number 00-a0-c9-ff-ff-23-45-67
>    versions:
>        fixed:
>          device.type MEV
>        running:
>          cp 0.0
>          virtchnl 2.0
> 
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   Documentation/networking/devlink/ixd.rst     |  35 +++++++
>   drivers/net/ethernet/intel/ixd/Kconfig       |   1 +
>   drivers/net/ethernet/intel/ixd/Makefile      |   1 +
>   drivers/net/ethernet/intel/ixd/ixd_devlink.c | 105 +++++++++++++++++++
>   drivers/net/ethernet/intel/ixd/ixd_devlink.h |  44 ++++++++
>   drivers/net/ethernet/intel/ixd/ixd_main.c    |  13 ++-
>   6 files changed, 196 insertions(+), 3 deletions(-)
>   create mode 100644 Documentation/networking/devlink/ixd.rst
>   create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
>   create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h
> 
> diff --git a/Documentation/networking/devlink/ixd.rst b/Documentation/networking/devlink/ixd.rst
> new file mode 100644
> index 000000000000..81b28ffb00f6
> --- /dev/null
> +++ b/Documentation/networking/devlink/ixd.rst

The index needs to be updated as well:

Documentation/networking/devlink/ixd.rst: WARNING: document isn't 
included in any toctree

Thanks,
Tony

> @@ -0,0 +1,35 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +===================
> +ixd devlink support
> +===================
> +
> +This document describes the devlink features implemented by the ``ixd``
> +device driver.
> +
> +Info versions

