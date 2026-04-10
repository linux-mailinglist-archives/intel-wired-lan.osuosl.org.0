Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HwZA/n42Gm1kQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 15:19:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B0A3D80C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 15:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 524DD410DB;
	Fri, 10 Apr 2026 13:19:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CqkrRJa9LR37; Fri, 10 Apr 2026 13:19:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E0ED410DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775827187;
	bh=p47Gn4bIHQyfMpllVKYUXdD8PnbjMRaJ10VFmV8X+BA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3kSjmi93WQF3AGOl9fudXAeu2aeQSvMp24ayLwJnDCDauNeQQEZrBiBlgAsblaCWI
	 uHxvjDSGhU1bF3aaqhcU8VJ22n+k6xks9R7c53arHA4FXbNsRIDu4P9wb/BJpgWoTZ
	 R1Pcok1NuY1FC+y9lnA4cxcjwYcGgoI5nYaSSRWs/j+VcyHW03CzoHttgl6t/MnL8O
	 C6NoVuwa4RQ6t/yHeIR3TGVHsc1vZbWEgmRL4H14NesHtWw7mIo9x3e2V88EhWjVXy
	 eSzrbRmPOMDzcdPbzI9pfngsZhsWzv4JRYhYiEOvzAkO4JTJTD3Tu9qInwdnjpD9cv
	 iRYEcI98beEyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E0ED410DF;
	Fri, 10 Apr 2026 13:19:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CC8B194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 13:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4D0E410D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 13:19:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id txdc562YsPKK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 13:19:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CBC864107C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBC864107C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBC864107C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 13:19:43 +0000 (UTC)
X-CSE-ConnectionGUID: +TDl0qU1TQ2+nvI/2plgQw==
X-CSE-MsgGUID: Fjrj2Uf/QzKm4p5fiI2OFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="76723574"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76723574"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 06:19:43 -0700
X-CSE-ConnectionGUID: EnHieW76SGSoTYVourglNQ==
X-CSE-MsgGUID: tVxLm4a9TsqlNto06SnKXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="230807026"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 06:19:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 06:19:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 06:19:42 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 06:19:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NwjAifvAAc7Y/TL0qi1OdgwD6A12gn/KDbwrtDiEvcik7L/3bPlbg7qTjjiM4/KS8ZQi3dsEU2EpurVpRMn5jpOI2hjCCOspJmJBL2bGGtqQ+blPFe1sC1CT2wuSf5rRzH6JpUqWGymA1HpGKuqvfDH/vvTC0qHuT/shJAoYVIvErbYN5INQhGjVMYPTrx5KYkvmKCEsKFh8HB6wegmslY/VUgUaY/IGJ8VO77sRHONIcFXnf4m5M6ql8bz7tAb2K1cONKKlyuY3qmQP1HXIOsyDRux9KFFpcjKz5akKHcucIESTMRftcnYdr7gSsdESwFqbpCK0VMEIgvEcHd5cTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p47Gn4bIHQyfMpllVKYUXdD8PnbjMRaJ10VFmV8X+BA=;
 b=cTHpU6TvF4jD8AsRaG5dKQ3cQB4ZqK3MvxnWrXee3+St9uOyvLI/us5MCzCFyVfw+196uAyL3mbyLRiKsUJkon1RmmESX7tkgytHxiHqej4zH4BPWjn2Xuc+VJvfhfAdd5MPW5w8r07Em/3/6aoO/XWXR39l7efw9lyeCPKaOKoPZ9lGU8NvuRi664REyjnzKBuDEQQisavjStAE7D+h8Ca8d1kvyIBXxgMByF6Rowl4Xnf/GTWDawws4NDBtVfESEe6eCsiGkAxhDZKIPt5wWxycTsZfvexebu4M48FVmAXWrMoUxhXv3cRPwXfwWF12A4+l01OsIEe/BNDTBaVXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB4824.namprd11.prod.outlook.com (2603:10b6:510:38::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.42; Fri, 10 Apr
 2026 13:19:40 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9791.032; Fri, 10 Apr 2026
 13:19:39 +0000
Message-ID: <30d48647-8c1d-4683-ae9d-becb33cf8d4f@intel.com>
Date: Fri, 10 Apr 2026 15:19:34 +0200
User-Agent: Mozilla Thunderbird
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
CC: <netdev@vger.kernel.org>, <stable@vger.kernel.org>, <edumazet@google.com>, 
 <anthony.l.nguyen@intel.com>, <kuba@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
References: <20260407165206.1121317-1-jtornosm@redhat.com>
 <20260407165206.1121317-4-jtornosm@redhat.com>
 <89bfd605-1877-4d40-95e1-bfeae6624168@intel.com>
Content-Language: en-US
In-Reply-To: <89bfd605-1877-4d40-95e1-bfeae6624168@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0053.eurprd04.prod.outlook.com
 (2603:10a6:10:234::28) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB4824:EE_
X-MS-Office365-Filtering-Correlation-Id: fdf80093-723d-4510-c828-08de9703d1f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 41pXlk0XzmoMW3fCCmEKvhBo9roBcSINnPZsaYqByGe7CoPYxjssF2VmEOiFMrktr5jMN0l4XkTUycJx0mRDKV4DSF4SiPSQHfNnZzSn9jUt1Gly8DqigUtg1P+4zLsihEmkQECODA+bB8xP+1ml422IBZtg6fL9IjdC/71NLICLh4+9XDcPnzEGsdCQOi/GJLjApEZAMc31z7FYQpw4hdl7tGmXrV9h9xF5fGKeF41bPHpyftyt5QD5+oeWarGuHf0Qd+1WS96+x6FFZ5yvPqmF1vS6IMSxYQ4HmQAuaZAUZIsr8xIW0F8i3E+CZAQEaDsC8pSwQRYhPzaZOENYWyDtTqQSZhZjNZ0LlXelbXRrQ+cFfDm7An3vK/7dukO3QiU587XFhTHSUxhfQMZXUSPBwim76Z+8YN2ArWI7ZAp2eHoKA3fqcMV8TJYxZywEQzg6P98FjDJS4197Cc3yYLq/GFeJNU6NrYshccFduXDpTd6LJL3RuYmd+jZShLDn2Dhq8pr+c9ALWcES5/epVDG9O/Ua3YJL+FEDeiM+0VaKfgB17KQZjudb/cb9LTaFJDVL7LZEq8NfOW+UOpn5GGJeHo4EU2gU6W7TO0h3/I0trRwtRo+sIdmPrzc3ugZZxQZ+SMOuzpjWeBaJ0QHECu7MuWvGyM1VSEa5K+wuN9wWIJ2cQneK3bst+GZAf1fkj9Kufr3LEJW/ssBjKaeg0uFVwziOSKDD/Ht/5oa6f7s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3VlWUZqaHVmeDVDMVZJOXBrTnVyRVBEY3Jjc3ZSK28rQUVEaDdjSnFWYmFm?=
 =?utf-8?B?Nm41cGZGZU15VjluSGJ5LzNBcXVUcWQ0ZVJRSTNxTEVWejd2LzA2ZFI4VU1I?=
 =?utf-8?B?akhLZnZYdEdtSXlmTVZLcFR0Nml2NE5Hazc1SWZ6L29qRVhtODZYaEhaV1dr?=
 =?utf-8?B?S3plNmFNTlRvdjFIdEZjcjZFRmlmMXlQUWhSRzJRcmo3M3ZTQXJHbDFiNDZl?=
 =?utf-8?B?NlZpS1ZMelJyNEV5cnFOWHBqSmhEVi9hVTNYL2VpdEZtbUV2aDZVMW56RzU3?=
 =?utf-8?B?TnJ4K1ptQWNtWmhFVG1MTFVSLzRVdUtmS2VkZm8zelFuUkFzM0JUN1dISGZr?=
 =?utf-8?B?MDBOMnNaeGoxYkZoc3l5SEhuV2JLalAvQUNaNlpDUzE3ZTZKVWo5RFZ5TWtH?=
 =?utf-8?B?NC8xYU9tV25FVHU0Nm5mbk0xL2UvcHgwN2l2VHBUaUJpbEZEY1MxREJqVEp0?=
 =?utf-8?B?dTdzSGVMekY0T1JkU3NWTW9WYjl6cmxNYm9OcVd1QnBFYkVDdU1kUnloRyti?=
 =?utf-8?B?QzhCaVFqaEd6TzA1M2hhMkVaa3B3VDZ0eTFEWGZCcDdpTUFMQnJLT3hTMGls?=
 =?utf-8?B?c3BEVG5qMjR5QnNpNVVucnEzb0lPeUZvcHgzdHE2LzM4L0hmWDJzb2U3UU04?=
 =?utf-8?B?UUZ6OXNrWE8rUWRrRE81bDNFRnRGT1gzNzc2WFo0bUpBS1M1TExLMHQyTWVW?=
 =?utf-8?B?WmtDMHl6dFpxVkVCSlptcmNqOEdXR3pCT3lHU1l5Um1tODZxeDRjNlluQXFy?=
 =?utf-8?B?ZlFHVFhUWmF2YlYwbWl0eGZkbzY3SEV6T0loTmVmYlV2Z25sdUZoWW9DaXU1?=
 =?utf-8?B?WGN0cklBZ2lDVE1icElRdFNHQzNLdENsV3dTU1dCN0N6NFJtTmU2eEZDOVVh?=
 =?utf-8?B?UGpla2dsWkdIMXI0NGV5MVA5bmltL0FXSkJhUENGM1JJcTIrQy9qbEJwQnVi?=
 =?utf-8?B?dzRhQmhHcWF1NEgyVjhZS0p5SkxhK3QydHJGUi9kL0FLTjV4aCtlZGVKRCt1?=
 =?utf-8?B?R3BRV2s1Tk8yUDZBUHEzZG8xcCtJRFhuMHkwV1hWSW9BbENOUlNnWUljUmVy?=
 =?utf-8?B?cGlHM0REeFgwU1N3UmJpRXVSWHJhWVBNc0RGSk54bTBWWGFrUnJWc1gvd2l5?=
 =?utf-8?B?NzZZbHhUbkpmdGhMWk5XOG94OERSbzdnanZoUVhER2pRRythdGxkY1FOOTh5?=
 =?utf-8?B?anhNQ0FyRDFPdDlkRzhlSi83cGo5REtSZTNXa3J6ZXdYaGxkdTc4TG9FSlU2?=
 =?utf-8?B?Tlc0RExpY0ZLMXJWMXJLTzFYQW1uSFJVZ25kaHFFdjRQa2JiTExHYWRuNmtE?=
 =?utf-8?B?L2lRMmp2elI3Ymc4eFFtdjhzWEZxckV1WWpiTjNIUmVLZEE5ODd4OVNxbTR4?=
 =?utf-8?B?R1c5WUU2Z2FBVS9Balc1QW5ibE9DNTE2WldKQzhYMEZUWWJvczdUZEFtR0Q2?=
 =?utf-8?B?RVhVWGJ1TSt5WitPWTVwbTlaVnVDRUw1VTMyMFcrOHZ2eC9yK2FWTlZWTkNI?=
 =?utf-8?B?MC9sVUpkdVYyYUdaaUcxZVBGc1JOZXJqbTk3QklvQnJ3SC8vVTh6TGVhT1JM?=
 =?utf-8?B?b0FBUjZqN0gvUy81bnczU1NQSzRUeVJFSXJlenJzbnFFZk1oN3NDdEluL1Vi?=
 =?utf-8?B?eVJVNW1aa1NEUFhiSUNBQTh3bkxNNTIxSUFjR0w5N3dFM29odUJ5ODltSTVa?=
 =?utf-8?B?L3lNbzJSV2huNnRvdXJwRTFQZXZvZzVJM1plb2RrMUY1SU1XdmcxOUY3Rm5o?=
 =?utf-8?B?UjVNbU43MlgyU1VuT2tuQXQvWjYxQ1MwSUZBQklRNEFPMkkwRTVpaS95dEM4?=
 =?utf-8?B?NWtQb0xBeEM1ckhmWUtja3M3NkYwR0FkTE5aNTFXdThXWVJpRGVYTXU4RjA4?=
 =?utf-8?B?VHVWVTJIU3dLVzFJb3Q3NmpZY3dRaFc4U1dnZWc4a0U0bUdQTHRSRTV3V0Rw?=
 =?utf-8?B?bytjTmdlYnBvOThRR0htVUpmUEJjZEZLdGhUMkNxMXh1WXpCM0tCcEd3VFpJ?=
 =?utf-8?B?TUY0aGxZeWN6UU1BMEtOU0JMUVlJWFgxQWtiQmNwbU1naU9YZVJYRFIzYjMv?=
 =?utf-8?B?d2hGT1YrU0V2czl3K3dtL1pUM3hyVWtWdlZCazBZRnRZT0wwQkdYY1JmMElo?=
 =?utf-8?B?M01kTU14RUh2K2JUNFdKYWg5UkdpdHNReWhKeUQ1SWlsbUhJbVZldG8vckFj?=
 =?utf-8?B?ekREeGdZRXJxN1ZxM0NZck9QYVAxa1dNQ3k2WWNPU3BESjdoS2FiUXUzZUhk?=
 =?utf-8?B?eFBwRTc0N3NYNCswOFZKTXhHR3RxaDFDajJRcUx4SU9nYlpwcnJuV3RBSXgr?=
 =?utf-8?B?VGxWTGpLV1hSL3FidEFNcG95WUsvTHdSWWo4N0JLNXlLcndSNVlINVU2Y0tC?=
 =?utf-8?Q?+ZA57Nt0yrzDByW4=3D?=
X-Exchange-RoutingPolicyChecked: Jx5zuvthcrBHDm0piZAGnem4EhzEj87DUqkeMH3J7RU0YpjoIkQyaX+1qxJz9ro58rQzv9N6eQsAXSVsdfCc9Ai8MVVM0J9r4EB2Xsb+VJMbh7utTsEBKs8DeYxyBhXEZjwZO6StsVG8aKG8/cjh21uFumf8gLSZYSXNro4xq3KrGhWtmVhtpLJigEuOtimQRttwu98Q2tm2HpZA/A7rzAECO4SzZHayF9NEHSB5gv6M9JPI0ZjttZ1ZuxcrWEp0QbBy5Kp9FFFSm1UnuOGVO+KW70orv4HmlBO69LhdBCdS4lQ/sM2OPqLS+owkvk3SCykmWzUXAiZe70s5VUZQig==
X-MS-Exchange-CrossTenant-Network-Message-Id: fdf80093-723d-4510-c828-08de9703d1f3
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 13:19:39.8433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EUHzaBoyf1FmldBiV4oV+jvsXV42BBGDhqEYw1gehXNUPzySx0tcSnjwFzL4Q2qZdyaEWc4tkEAXTpDgGfz7k6bej4DQa78jf2/p494n2UQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775827184; x=1807363184;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7pnGKDNd3j+eHJvi7lZ2sCgswYu8IAzahNatqToothw=;
 b=YC9AmIBk0L+iDTY8lCaUF7GDh/S3SA0ezSTUKu6+XymlzYsWMW6gkWMM
 qcejegbQ+jRKzL3FHUv5ODxdg85uUQ7vmVEJt0miGEZ9ycfkBbhaOwNu6
 XlXYQkeXJdRz5jsJze4lfWKXfsxHK5wvvqja1Ws2blz79EOj7d7qud7qm
 GSJhslgTEbffD2qkfz6OXQj0lhdS7h9XgDVSUEW8tAB9TIH6tFkNzxtIF
 WyNL9n5sv2OkrAC5mm9W3Ql+5AObypEO+HWwCE/B3+OvHrD0lfjETw9yW
 CfkPlq0a7cbbmCKV3NCfoxq2NSi/muCUbXy4SBiLM0mP6WEHo7+rQQza4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YC9AmIBk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/4] iavf: send MAC change
 request synchronously
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:jacob.e.keller@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:kohei.enju@gmail.com,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,intel.com,kernel.org,lists.osuosl.org,redhat.com,davemloft.net,gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B2B0A3D80C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I believe this is a move in right direction,
please also find some more comments

>> +/**
>> + * iavf_poll_virtchnl_response - Poll admin queue for virtchnl response
>> + * @adapter: board private structure
>> + * @condition: callback to check if desired response received
>> + * @cond_data: context data passed to condition callback
>> + * @timeout_ms: maximum time to wait in milliseconds
>> + *
>> + * Polls admin queue and processes all messages until condition 
>> returns true
>> + * or timeout expires. Caller must hold netdev_lock. This can sleep 
>> for up to
>> + * timeout_ms while polling hardware.
>> + *
>> + * Returns 0 on success (condition met), -EAGAIN on timeout or error

kdoc requires "Return:"

>> + */
>> +static int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,

please move it to iavf_virtchnl.[ch], could be useful for other also,
not need to move it then and loose your authorship in default blame view

one more thing is that this could be perhaps integrated with existing
iavf_poll_virtchnl_msg(), which does not call
iavf_virtchnl_completion(), but likely could

>> +                       bool (*condition)(struct iavf_adapter *, void *),
>> +                       void *cond_data,
> 
> this could be const, then no cast on the callsite
> 
>> +                       unsigned int timeout_ms)
>> +{
>> +    struct iavf_hw *hw = &adapter->hw;
>> +    struct iavf_arq_event_info event;
>> +    enum virtchnl_ops v_op;
>> +    enum iavf_status v_ret;
>> +    unsigned long timeout;
>> +    int ret;
>> +
>> +    netdev_assert_locked(adapter->netdev);
>> +
>> +    event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
>> +    event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
>> +    if (!event.msg_buf)
>> +        return -ENOMEM;
>> +
>> +    timeout = jiffies + msecs_to_jiffies(timeout_ms);
>> +    while (time_before(jiffies, timeout)) {

please consider do-while (after the rest of changes could be better)

>> +        if (condition(adapter, cond_data)) {
> 
> if condition is met, but timed out, there should be no error
> 
>> +            ret = 0;
>> +            goto out;
>> +        }
>> +
>> +        ret = iavf_clean_arq_element(hw, &event, NULL);

instead of NULL pass "pending" param, if not zero you could omit
next sleep

>> +        if (!ret) {
>> +            v_op = (enum 
>> virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
>> +            v_ret = (enum 
>> iavf_status)le32_to_cpu(event.desc.cookie_low);
>> +
>> +            iavf_virtchnl_completion(adapter, v_op, v_ret,
>> +                         event.msg_buf, event.msg_len);
>> +
>> +            memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
>> +        }
>> +
>> +        usleep_range(1000, 2000);

very old commit 9e3f23f44f32 ("i40e: reduce wait time for adminq command
completion") said that 50usec is right amount to sleep between checks

> 
> no sleep after message received (ok to do on empty queue)
> 
>> +    }
>> +
>> +    ret = -EAGAIN;
>> +out:
>> +    kfree(event.msg_buf);
>> +    return ret;
>> +}
>> +
>> +/**
>> + * iavf_mac_change_done - Check if MAC change completed
>> + * @adapter: board private structure
>> + * @data: MAC address being checked (as void *)
>> + *
>> + * Callback for iavf_poll_virtchnl_response() to check if MAC change 
>> completed.
>> + *
>> + * Returns true if MAC change completed, false otherwise
>> + */
>> +static bool iavf_mac_change_done(struct iavf_adapter *adapter, void 
>> *data)
>> +{
>> +    const u8 *addr = data;
>> +
>> +    return iavf_is_mac_set_handled(adapter->netdev, addr);
>> +}
>> +
>> +/**
>> + * iavf_set_mac_sync - Synchronously change MAC address
>> + * @adapter: board private structure
>> + * @addr: MAC address to set
>> + *
>> + * Sends MAC change request to PF and polls admin queue for response.
>> + * Caller must hold netdev_lock. This can sleep for up to 2.5 seconds.
>> + *
>> + * Returns 0 on success or error
>> + */
>> +static int iavf_set_mac_sync(struct iavf_adapter *adapter, const u8 
>> *addr)
>> +{
>> +    int ret;
>> +
>> +    netdev_assert_locked(adapter->netdev);
>> +
>> +    ret = iavf_add_ether_addrs(adapter);
>> +    if (ret)
>> +        return ret;
>> +
>> +    return iavf_poll_virtchnl_response(adapter, iavf_mac_change_done,
>> +                       (void *)addr, 2500);
> 
> this function looks elegant, thank you
> 
> I'm a little affraid that this model (if applied to other things than
> setting MAC) will skip some of our "much needed" logic in the watchdog.
> 
> I have not thinked about much yet.
> 
> unrelated: callback looks elegant, but for virtchnl, it is almost always
> the case that we wait for some VC OPCODE to come back, and this is just
> a number. It could be easily coded as a callback too, passing wanted
> value masked in pointer, but I would say that just passing a normal u32
> param will be most clean
> 
> 

