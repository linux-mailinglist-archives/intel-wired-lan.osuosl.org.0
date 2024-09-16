Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9402697A009
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Sep 2024 13:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2E3C40A3B;
	Mon, 16 Sep 2024 11:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fSwY-5syPny1; Mon, 16 Sep 2024 11:09:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A7F140B1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726484978;
	bh=ICOofYaYLutqlMdEk8YuYzU4yh7NslRYdeDovfonGwE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hKL+0g70TSaRD5jdRKl5uC/xGzRl0PXar+nIAv0pPNuMrXuSRWILrePxzKRreqUZP
	 OWev9SzF+X2MgnkPFmGFo6/FGRcQjyLrF/Nc7Wmf48rRbfyOl09AP0/Oa0NbvEJfNt
	 KWQNib9jFqKi17d3FwdsH3yBGfmrvDaIDuz04zGJJzrcHd4ZHAeErjXRL/FLHpSIha
	 h41QpiNdYihqFlrbOgigXA6gvkZu36drB8F0SGHtVddcLAvIGLT4DO1wSCzTdB9o3x
	 +/6CNwdvm9oubNxVLFQzhN8YBdZl8qxmjg+PonXyGY5pDSXp209YWL4vcqw4yh5BlR
	 zNYHM1Ptdy8fg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A7F140B1E;
	Mon, 16 Sep 2024 11:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 760911BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 11:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6027140B28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 11:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aeU9v9A26xZL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Sep 2024 11:09:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3940040A3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3940040A3B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3940040A3B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 11:09:32 +0000 (UTC)
X-CSE-ConnectionGUID: ib/EDZsjTt2AV1kAbVOsrw==
X-CSE-MsgGUID: XG03DKb9SFSNVlfScfcotA==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="13542003"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="13542003"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 04:09:32 -0700
X-CSE-ConnectionGUID: cMX6Zm8lQdibWJmKz7vQNQ==
X-CSE-MsgGUID: g5kzeAgiQ7+1GYY8rlfy2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69603186"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 04:09:33 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 04:09:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 04:09:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 04:09:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SIBN85Q3A1e6laUfQZt4q86K/uE8vzYN8asIfW4gzwzcAPs2b3YYD3/YgOvjJChTFrP6hMucBSbyF0/EsNhRKAE72quoFRYP1Ku27Mf/bbtCmzaRNtk9P2gEgnDuTB/1sX6CBDkwtiTFGRYaruzDRtjGvStdDlCEUrZzKbyRYLu/XmHg5Y/pPxQdFjdXtMKuznooF5T0K9sh5w9aAlS761kxhsSjPosXtrUEc2CwoT3+oNPmDpDCgbfNDULcE9vkwptoeG/ee0ElRgVhMHhWqUs/A0Bc4zOyesxCNXnqXeFElvLBwfDhpxJxlEKuDl3n6mFkyMSXjzLhQVwC8Llfnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICOofYaYLutqlMdEk8YuYzU4yh7NslRYdeDovfonGwE=;
 b=jmB03DJUnvKNEELOOG7VqEMyxdcV7iOHsi7Bee1q+6OkohcpBGSseKEDCN9FfkvaAKY40QOz6T1Ete9DiakAH7l7k2oKDtmZcl0gz1fOfIUnRRSC+wUJDNJys25BsV6fYs6BecBR3GHfCAbrCd9FDg7IIp9GplUT7oC7rSW7Bk3/CvvzZ7HNsqzRRtcHn/kIAPXIs4GV/3BqnSlJeVw6i4w9tl3UNirPCqjmz6FclOEYxplbyCWpGm2gfHsPGM/EsHqFYWJYR26KzhzN04AAmwgq4e1cXwQUAHIUx5xK7C8tzw7k7tH13H1o/2rkpkJ/Uz2UfOQHpKRILoCSlsgt5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by PH7PR11MB5767.namprd11.prod.outlook.com (2603:10b6:510:13a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Mon, 16 Sep
 2024 11:09:27 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%7]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 11:09:26 +0000
Message-ID: <3547078e-acdf-4189-9a1d-98f581896706@intel.com>
Date: Mon, 16 Sep 2024 13:09:21 +0200
User-Agent: Mozilla Thunderbird
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Ben Greear <greearb@candelatech.com>
References: <9ac75ea7-84de-477c-b586-5115ce844dc7@candelatech.com>
 <b833aea6-b499-4b9c-90fe-aab31510544d@intel.com>
Content-Language: en-US
In-Reply-To: <b833aea6-b499-4b9c-90fe-aab31510544d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA0P291CA0005.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::13) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|PH7PR11MB5767:EE_
X-MS-Office365-Filtering-Correlation-Id: 884bee68-0cca-4df5-60e2-08dcd6400715
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVlEKzd2NlkvUjd0eDVGL25PUi83THFaRmtCL3J4NnpHK2pTODZGNXdPZmJp?=
 =?utf-8?B?c2E2WXRLRk94T3k5NVpEUERkRmZOQzVNcGJtMWVtbHU1b2QzWS9RWHJTcmlz?=
 =?utf-8?B?cGp1bWpYNjdVRC9UaXNYaE5xNHhMcGZtbkZKNThOSnk3RnJTOXBBeFJ1YzRj?=
 =?utf-8?B?V0RzeVpxMVBsN29aY240MW5DZ3F1WGc5QlI0Q1NvcUpoZk5HcHlHZXdhdk5W?=
 =?utf-8?B?NFZMKzNYb3hZaWd5RmM1SGZsTEVCcFZ2bllhYnNnRFBTeEdybDIzMDJZNDQ1?=
 =?utf-8?B?aWNVR1ZaY0NrNmI5UExtWGsrOVpzbTRSNmEySGxkNkxzRlNTTk1namVlYUUz?=
 =?utf-8?B?bUNjaU00WElJUjdOWm9UNE5lcnl4b1hjZXl5aUhBUzVBQXpsNnpQMTBJWkhT?=
 =?utf-8?B?c2t3Z2RWb3V4QktiYWQxbWNRTisxcUZyNUl6NjF1aHdLYmgwMHJsK29ZVGlW?=
 =?utf-8?B?cDlHZXNGUUNKOURTUlVmcW1URERMWnpuSkdXNWs0TlgyYk9mMTNkdWlEVDEz?=
 =?utf-8?B?dDM5MEcweE14dEM4K0hNS296Ykl0RDFJeDN4alViQ0xnQThQaG5CUGFFaUJ3?=
 =?utf-8?B?SGxiMG5Ec3BwUHZHc1UvSzUvYXlSYUZab3FMNzJ5bkFiblNBOUUzWUVKQWxv?=
 =?utf-8?B?Z0FlTS8wUE5iSUxuekhab0dzOUNRaDFkNjVraW9ZZWZieFBGbmZJZVFGdENj?=
 =?utf-8?B?aWFRTkpmSG5hd1JncExuUjFnKzZkYnlYUHRGV0RjekdQbUpxSGRaQXhuUVFV?=
 =?utf-8?B?K21UWUU2TmYyeTVsQWtRak9QdUZKTEtYU3JBMmJReExERDRKZWgvWFVadnRK?=
 =?utf-8?B?cUswRUY1OHcrUWNxU01FcmVQcGhZNlczK0hvOFJWQWkxYVRGc3NxRDh3cWRT?=
 =?utf-8?B?RDE3MXpYY2tERnFocTBJS2ZXcVFrNWlTU3pWRGg3THlMMlJjVVgxWWZGa014?=
 =?utf-8?B?UUFENSt6cENhNjN5S01RWk9IVnVuK2NzUitPMlAzbHBXc0U2YkQ0YWJCTmRR?=
 =?utf-8?B?Q0s2ZElhTG9pKzRaUHdKZnVYYjdHSUgxck5iK0podyt3bzZaQ25CcUFhWGQx?=
 =?utf-8?B?Q3JnamZHMTBuWndONG9haUxyZVZHVXpaUklaQjU5VnkzS3ptMlY5MXBteHRB?=
 =?utf-8?B?eHYvRElvbGFTUXJxQThmQWdOZUNwc1oxYUxoRXJYQVFYdmU3RkNxU3ZWVjlC?=
 =?utf-8?B?WVBlMWVwcGJzclhpdFJqNTV5SmYvR2RhYlp2U3c4dVZQYWZ5YzdzR2U4bkxK?=
 =?utf-8?B?MytnMDJ6RTF1enUwdUp3dkRRMzFTQldtWWJIRHhheVptSlpHekMxS3Z1ZFd5?=
 =?utf-8?B?ak5meTVWVUIwRFFXWVJDeUNPcjlrVDc3OFgzckJxTDQ0ZWJsWWZ1cjZ1SXph?=
 =?utf-8?B?cTcvRkxyYVlGMHRqTFZud0oybDlKUjVOTnlMaElNcHFsU3JjQzQ0dGJKdUgw?=
 =?utf-8?B?NHVKL2d3Um9qdGZQN2lheDVpaUt5SWhuYy9QZmFIbmtWZFhFK0JOcEhPVHdq?=
 =?utf-8?B?d3kvbmZkV3hZbVJuMEVyeHRDOEdhMUxUOXd4YTBjNkF0RGIxcFlxMW5VSHdE?=
 =?utf-8?B?WFNkZ0s3cnc1UHNqS2QwdnZzSFVaTEpGOHRjTXJFNDFralNlTjN2WVFPSGwz?=
 =?utf-8?B?ZDh6TGVHU050ckpNcVA3bktDSy9oQy9HTjVUdnRWL1cxWGhjSENjS1IvZ04z?=
 =?utf-8?B?NEt1eWltMnI2c1U4dS9MYmZWSWpOcE9yNG11WmJVOERyd003U3pTWU9kVi9j?=
 =?utf-8?B?SFdtODB0Nk9JLzJGUXRNV1hmWHRUNkxRS2tOY0NoVUdKWTJMRzFIaTcxTFJQ?=
 =?utf-8?B?MzRGb0RYNWxXMmEvMzg0Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFF0Y1dXUXR4RkxvQzl4RkFJdjh3Ym9qemJkdUplcFJJLzJBQ1BRWmVCN1Q5?=
 =?utf-8?B?TUdGZDhWVUdSZC9RdFVVVmZDQ1hDQmZjOURHeUZhN01BNm15NkhCQXhTQ3Yr?=
 =?utf-8?B?cGdNcjZpc1N5NkxzOXE1QjZlcTk1OSsvNzZ4SmVUVXl3VTJ1T1d0NFdTR2Rz?=
 =?utf-8?B?dVVoTEZrdG5OaThWdWFqRlRrTGlkWEwweUtNUCtsTFFEa1JUVE1rZHdPdnVR?=
 =?utf-8?B?WjdHLzVVb3ZkemdlN3pSS2VQcVpHVWVIZi96cDJzVkJ3eDAySTZtdlduUThq?=
 =?utf-8?B?UFNBK2VmT3BRTnM1YmFWaXNydUVPMXZJU0I0cC9GTVBoUkw5NCtoZXJCemdt?=
 =?utf-8?B?WmFGR2ZnQzF6NkRYdERraHY4S0kzdDUwQTFyelM2V1RFNmgwVVNLMTdFWTVq?=
 =?utf-8?B?ejU2aUVheHpGV0ZDbWRGNExaUE5xcGYxcXRWNkgyc0xhMzdSNEhTb1dqeC90?=
 =?utf-8?B?MEk4R3lBMDJUc21Lb01XZUZJVUpaeEMyaENYN1pNbHZ4L0VSNDVPUkQ5OFN3?=
 =?utf-8?B?WGhYeGpxbmVYMm5ZVzhGeW8reUo2QVVPVk0xTjZ2U01abXp3T2llMm5rcVZD?=
 =?utf-8?B?TFB5K1Y5Vmc5Ym9SZWJrVVBJK3A3cjJ2cy9oc0NiNnVRbnJYL2R5MHFjVWFL?=
 =?utf-8?B?L2JtbisvODBjYzl5cCtJdnI4UnUzdXF2LzRDS3VYblZoOHNXa2dWTy9PNG93?=
 =?utf-8?B?UzVPOG5ZZVJ2TjJjUllnREYxMlRNWHRtbE1jUXdvSWp2Zk5CcFZ5M0ZCSSsy?=
 =?utf-8?B?dTBOaGRsdHlubEhyZmFpRXhFM21hTktEamNCZ000QXRyaXMwSHc0MTZLTHM5?=
 =?utf-8?B?aHpsaHhWd0xHdGV6OGZueFZKQ1E3K0VDU3RibzMwbXRJcGJWcmhKUE9rMEdj?=
 =?utf-8?B?Z24vWTAyL013aEc1M0VKOU1pRlhWL3c0MGgvNDdOMm40MlhDeFRCTjdaV2Rv?=
 =?utf-8?B?MGJzdzdBbzJSNmJHbEZIZGQ2ZXdKeEpRTzlpVUhvOUk1WEZadS9sUnpPUE9v?=
 =?utf-8?B?VVVOb0NibzR6eHFlT1B2YXNyNkhzTUE2YTNOSzFtMFE4bmEzdm8zZEh1eU5D?=
 =?utf-8?B?Q3VWNTFLdkU5b1dnVmlhYlRPYVdJcDJvd0NtZmY2dkFoZm5hZmg0MzJYcDI2?=
 =?utf-8?B?K3piODhERFo4Rk1TKzMyVVY0K3JqM1B5MnNKdy81dVlaVkhFN2xubmdUck84?=
 =?utf-8?B?TzZvTU05VG1reTE3VHRnYWR4NFZ6WkF3c3Z5a3VFdGJhZWNmZlA3anMzVisx?=
 =?utf-8?B?TCtnUVpWYUxBdkdvWkZkdE5qT1lCcjdzcVBnL0IzSG5pV1MwNTk5SkFmTWpZ?=
 =?utf-8?B?NEpXSjBjRFl1NVdGWVVDSnY0eFM1dTBSWWZ3a0ZJWkZmaTRiTy8ra2JKNmJ6?=
 =?utf-8?B?ckRWZEJWQ0ZXaDUxS3FldzJlMnhkUTg5amVMRElaenBpem1jQTlPMnJsZ05Y?=
 =?utf-8?B?S3BMVEp0QXZqeHFjV1IxSEtsZEtuRnFtRTJpN1BQcWlEMlVwR0tOWnBjaCtm?=
 =?utf-8?B?SlB4ZHpqZks2eHpnYnBGVHNkY08xUGcxZDVoRENleFovT2F1WWVSUlc5RzJl?=
 =?utf-8?B?VFZnZEx1QWxmcGN4cWtmVWVaWUowc2c0bjdqejNRWHJuREQrdVpkV0NqeGlV?=
 =?utf-8?B?dEdBZEdiMjJCTExDN1RraFIyLzZkL3ZLSitGTW5pNG05K2kwWktXTFdGektv?=
 =?utf-8?B?U25BdXR4WlhReElPR2N2WXNZeVlEMzdHZTJVLzQ4ZUtGZFg5MjJURU40clpL?=
 =?utf-8?B?SDZlMnNsa2tPMkI5TmxNMHRrS0lzOSt0QlU0aU4xNDVDNzFEUkkzTEZBWnBk?=
 =?utf-8?B?NTNuN0VlcitNb0czQTJSZ3RtUWRPMkpmWmpFczB3Qm15U3d2ekpxSmJ1U3F1?=
 =?utf-8?B?QUUvcGVjN2Q0VkFYY2tqQ1o4QVpLM2ZnUjZmNFk2aHF5N0xJM1IyMG9vRGdO?=
 =?utf-8?B?ZGYwZDZoY0JYNFRscUhRNHlCLzlYN1dOZnpWNllxUFJBRy9FS21kUktzZElx?=
 =?utf-8?B?WkpJWDBUeHppdTFCbkZHaVJsYzJuZGkzZEp5VmJ4eUNSdXFoVUhHcTdteWFl?=
 =?utf-8?B?a2JvR2Jnc2tFUThEdDhRT295aFNIQTdIdFY5V05adGxXUXBOcWFtUkdzZ3Iz?=
 =?utf-8?B?eVJabmg3Q0tOZUl0enFWOVBTUVRYTDE4UzBaWWU4YS8vQmJuZzQ3b0Mxd2tN?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 884bee68-0cca-4df5-60e2-08dcd6400715
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 11:09:26.6321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: szjdJSlwnLbNsmTC+QzbLIfSZ008Y8Y1VNO2vmKnOGEE76JokQEMwkp93IUZJ0IoUEatoucIF0CGAIqn7eG8Qry1e1M77ad+SJfQ09/aFN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5767
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726484973; x=1758020973;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v4PInJV5RK7YAwyQFbJ0A/uiRaX0Z4oxSbyJB+K5Ufg=;
 b=QF4bat/BTW7XQOwe8xDT+33KCJj5DpH68dyeOQceUVOViU++ybbepAFZ
 36DJwmn5EQ+YjYILaOyzTUNllnICX+xSuLibViueESB5BbtXUnYSeJcKy
 NcqLym4uBAsRQAfhYhy/q6rb8/0RlVDV46zysfl6HZqE/Y2iKy6FmLaop
 zYEylPkmyAlQMQ1dkzvJJxN1QelolQSd+z9yAEeud4BZJfwSm/GSafWRm
 BkJ/B7ScSFaXwgS5lT7fUh4OwF1X4iYQPf/MgAUHejSuCY0j/6fw6RWSG
 koup0OKApga398dVCzUUZV0l37h7Y0PLoZi4RnOQTKGvtpQc9lF6VuyIa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QF4bat/B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] tcp_ack __list_del crash in 6.10.3+ hacks
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 netdev <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/16/24 12:32, Przemek Kitszel wrote:
> On 9/14/24 07:27, Ben Greear wrote:
>> Hello,
>>
>> We found this during a long duration network test where we are using
>> lots of wifi network devices in a single system, talking with
> 
> It will be really hard to repro for us. Still would like to help.
> 
>> an intel 10g
> 
> It's more likely to get Intel's help if you mail (also) to our IWL list
> (CCed, +Aleksandr for ixgbe expertise).
> 
> 
>> NIC in the same system (using vrfs and such).  The system ran around
>> 7 hours before it crashed.  Seems to be a null pointer in a list, but
>> I'm not having great luck understanding where exactly in the large 
>> tcp_ack
>> method this is happening.  Any suggestions for how to get more relevant
>> info out of gdb?

I would also enable kmemleak, lockdep, ubsan to get some easy helpers.

>>
>> BUG: kernel NULL pointer dereference, address: 0000000000000008^M
>> #PF: supervisor write access in kernel mode^M

could you share your virtualization config?

>> #PF: error_code(0x0002) - not-present page^M
>> PGD 115855067 P4D 115855067 PUD 283ed3067 PMD 0 ^M
>> Oops: Oops: 0002 [#1] PREEMPT SMP^M
>> CPU: 6 PID: 115673 Comm: btserver Tainted: G           O       6.10.3+ 

so, what hacks do you have? those are to aid debugging or to enable some
of the wifi devices?

I don't have any insightful comment unfortunately, sorry.

>> #57^M
>> Hardware name: Default string Default string/SKYBAY, BIOS 5.12 
>> 08/04/2020^M
>> RIP: 0010:tcp_ack+0x62e/0x1530^M
>> Code: 9c 24 80 05 00 00 0f 84 56 09 00 00 49 39 9c 24 50 06 00 00 0f 
>> 84 b2 04 00 00 48 8b 53 58 48 8b 43 60 48 89 df 48 8b 74 24 28 <48> 89 
>> 42 08 48 89 10 48 c7 43 60 00 00 00 00 48 c7 43 58 00 00 00^M
>> RSP: 0018:ffffc9000027c998 EFLAGS: 00010207^M
>> RAX: 0000000000000000 RBX: ffff8881226a8800 RCX: ffff8881226abe01^M
>> RDX: 0000000000000000 RSI: ffff888126a3d4c8 RDI: ffff8881226a8800^M
>> RBP: ffffc9000027ca28 R08: 000000000005edf6 R09: 0000000000000000^M
>> R10: 0000000000000008 R11: 0000000084d9074f R12: ffff888126a3d340^M
>> R13: 0000000000000004 R14: ffff8881226aac00 R15: 0000000000000000^M
>> FS:  00007efc82a2f7c0(0000) GS:ffff88845dd80000(0000) 
>> knlGS:0000000000000000^M
>> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033^M
>> CR2: 0000000000000008 CR3: 0000000125477006 CR4: 00000000003706f0^M
>> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000^M
>> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400^M
>> Call Trace:^M
>>   <IRQ>^M
>>   ? __die+0x1a/0x60^M
>>   ? page_fault_oops+0x150/0x500^M
>>   ? exc_page_fault+0x6f/0x160^M
>>   ? asm_exc_page_fault+0x22/0x30^M
>>   ? tcp_ack+0x62e/0x1530^M
>>   ? tcp_ack+0x5f1/0x1530^M
>>   ? tcp_schedule_loss_probe+0x101/0x1d0^M
>>   tcp_rcv_established+0x168/0x750^M
>>   tcp_v4_do_rcv+0x13f/0x270^M
>>   tcp_v4_rcv+0x1236/0x15f0^M
>>   ? udp_lib_lport_inuse+0x100/0x100^M
>>   ? raw_local_deliver+0xc8/0x250^M
>>   ip_protocol_deliver_rcu+0x1b/0x290^M
>>   ip_local_deliver_finish+0x6d/0x90^M
>>   ip_sublist_rcv_finish+0x2d/0x40^M
>>   ip_sublist_rcv+0x160/0x200^M
>>   ? __netif_receive_skb_core.constprop.0+0x30d/0xf80^M
>>   ip_list_rcv+0xca/0x120^M
>>   __netif_receive_skb_list_core+0x17f/0x1e0^M
>>   netif_receive_skb_list_internal+0x1c5/0x290^M
>>   napi_complete_done+0x69/0x180^M
>>   ixgbe_poll+0xd93/0x13d0 [ixgbe]^M
>>   __napi_poll+0x20/0x1a0^M
>>   net_rx_action+0x2af/0x310^M
>>   handle_softirqs+0xc8/0x2b0^M
>> __irq_exit_rcu+0x5f/0x80^M
>>   common_interrupt+0x81/0xa0^M
>>   </IRQ>^M
>>
>> (gdb) l *(tcp_ack+0x62e)
>> 0xffffffff81c8601e is in tcp_ack (/home/greearb/git/linux-6.10.dev.y/ 
>> include/linux/list.h:195).
>> 190     * This is only for internal list manipulation where we know
>> 191     * the prev/next entries already!
>> 192     */
>> 193    static inline void __list_del(struct list_head * prev, struct 
>> list_head * next)
>> 194    {
>> 195        next->prev = prev;
>> 196        WRITE_ONCE(prev->next, next);
>> 197    }
>> 198
>> 199    /*
>> (gdb) l *(tcp_rcv_established+0x168)
>> 0xffffffff81c88b88 is in tcp_rcv_established (/home/greearb/git/ 
>> linux-6.10.dev.y/net/ipv4/tcp_input.c:6209).
>> 6204
>> 6205        if (!tcp_validate_incoming(sk, skb, th, 1))
>> 6206            return;
>> 6207
>> 6208    step5:
>> 6209        reason = tcp_ack(sk, skb, FLAG_SLOWPATH | 
>> FLAG_UPDATE_TS_RECENT);
>> 6210        if ((int)reason < 0) {
>> 6211            reason = -reason;
>> 6212            goto discard;
>> 6213        }
>> (gdb)
>>
>> Thanks,
>> Ben
>>
> 
> 

