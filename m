Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2508E803366
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 13:52:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 350CC40482;
	Mon,  4 Dec 2023 12:52:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 350CC40482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701694369;
	bh=2Yu5aeonzG3Cqyt8ef73rMlpZm9X2SXf0p4XsWzZeuI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K22XnVZNw1TC5vHMtQPoNLryNpR/pYdWX6L2wH+dcct4Q14IKTgunxxZxylaeH0hn
	 15eZd+t7IPsa2EOcfagcwVygwEbUyF+oFAlGE9uR+vlOyRfUwtk/+Wmu8c60afFnm4
	 +AtYPz8Jcg8ciBlaUAcapbSbXHSYxctu8We9q4n61L9UknqPdJkOK2Nlw8Np6YA50G
	 RsntSYYd2CV4PaLU7WGt4nEOnfkSJD29HJXGy4pw/bg6AJVCkTs9AJVkGWiJyJFGRJ
	 d0h8p3UWFj7YnKVXlK0gzu8Sx9D+szcESrC3kcylvimTCl9IH19ZFZ+4730v/WGydj
	 TCzkP7p9d3Sqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ba6toXVIP2Vk; Mon,  4 Dec 2023 12:52:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9546540168;
	Mon,  4 Dec 2023 12:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9546540168
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08BD51BF349
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 12:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF45A41575
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 12:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF45A41575
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JTT2PJHcfZJa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 12:52:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03D7241553
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 12:52:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03D7241553
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="625871"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="scan'208";a="625871"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 04:52:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="943870475"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="943870475"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 04:52:39 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 04:52:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 04:52:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 04:52:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 04:52:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0YOzXFLcccYW82e7sqrUbLOWsXJYg5GtUkJzmNGgBzpz7G1494IxChUv2q7ulG6lHNzob9wexbUd5jjZ5DVBMJ+AMBzaLG0JtH9PlDHKuoKBAnYEhn832na358u3Chqy6R/f77BhnltP/9vkpeOL1nW6M1hHkIxYGWsiQy586wos/fo24H8yDzf/5QOgJ25FYnaIXk5HZytRPY15G/6pcApviqeovYeRTrDuBxQH91mIA4dCzt8jwJd8Bv5cmd7P/CxEI9UkGM+AUYyx39GTUZdPKvVdrZBOcF6+EXsPwuuH6zlt0maC6n6LvM+/qk9hgmj6fnbjwo98U1xUBvGCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DS5R1P4/Vr026XbYa6wJWHNs0WjEo9AVXZZiXCtEsjk=;
 b=GUOPcUGG1/vKZf1sN+cF+H7z8f/DJhJB293qKdBFZEegtm/r5F0KClzR7zolXIhnps7e8FEQG6X0/kKuNQAwjK8ASyva6RcnFJRvDfyoSO2u5hYXh9jp+5p4PTcKibGwRt35no5tVF9FpNPXyKTz0Sw+pYWMYkizPd3ON/+zALBpckr7PWGgV9hnzbToQ5Q46TbZp4nH7ZebDmhGEuVnR2/RvQZ1ZsdFS3yvtexOErCAG0JffQ40ww7seRHBFyyrflhTagTgbQyKmGKhQCx2e2K8mtM9cMMO6//KK/2jkstWGDzLSrpFZpXYSJaakk67nH2PA3fJ5s6jmwPcK9qblQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB4975.namprd11.prod.outlook.com (2603:10b6:a03:2d0::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.32; Mon, 4 Dec
 2023 12:52:34 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 12:52:34 +0000
Message-ID: <81dbf657-6513-4a8c-a0a9-5a98951c8356@intel.com>
Date: Mon, 4 Dec 2023 13:51:11 +0100
User-Agent: Mozilla Thunderbird
To: Kunwu Chan <chentao@kylinos.cn>
References: <20231204014455.2444734-1-chentao@kylinos.cn>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231204014455.2444734-1-chentao@kylinos.cn>
X-ClientProxiedBy: FR4P281CA0086.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB4975:EE_
X-MS-Office365-Filtering-Correlation-Id: 928c74f2-8758-4b08-62a3-08dbf4c7e2cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b/Hkhig3j3kBRVkW9DQtY4ly5Z/HY2lzu9eRznfVCT3d+YdzGkL7RGNRY7LmCKwADY/C0Rs7lTfUkIieXRWeeMVo+fEd0OMHJPEsy0nLsSBnoxFsmfjUl/HmBmflWcJdVMoCCms7d1nKFfjoBmtOEofiOCg+WRQN0joiSFBa5qbhAwlKseHhDUK3wk0xpBlVgbl/2d/yvw6uf74hwOol6x3JbZS3kxBnLvO/4qR4jRSderorhEvBuJX9KtbmpIu+YgjxB8buzm0S9CltzuqS8dB4TxUbi5gxwY1C6F6kY5kZN6EpcpfKQ1gf2G0lZSFiSHr9EQg2os87urhDlKVmIkZ7+ahL69NlUixmvBhsSI1xo9Bj9uO4bH0xzfGT1apfjriLTH5Ft689bwjMQB0YkMBXTfeBe+05GtyjpTDg1rEQiYQLWE9+WZT2KfFZ+wnQsICkFvI/G6S4B4L2SvzdxGnoN29i+FS24SWSfwzU9S8r13D7sFvP6UTyDMD42XlB0UGKZ7yvVk4NrjF1vqfcOgnj2xPfKui+LKvXVf/9fDiXwkYj+0jajfrfnhs/GsKzhxRM23K1IvmB7veWh7AO8XLNfU8S81VRs/q3SLbPdwKTZ0tvHIdoeUL7OpLcZ84GtUnJ9qtie26oQ1PUyGqzsg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(136003)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(31686004)(41300700001)(2906002)(7416002)(5660300002)(8676002)(8936002)(6486002)(83380400001)(478600001)(6916009)(316002)(36756003)(38100700002)(66556008)(66946007)(66476007)(6512007)(2616005)(6666004)(6506007)(4326008)(86362001)(26005)(31696002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0w5ZnViNjQ1Wm5BcU1ZamdOU1JJWnZSczdTYzhodmFtdnlLbFhqalZaQnRQ?=
 =?utf-8?B?M2dtSExKU3F3dy92bUw4Zld4UkhQRDE3OWtqRXNESXpNdVMxMS9naXl2NVU5?=
 =?utf-8?B?c0pBcndXRVJzTEQwalI4K0d4UDlPem1NMHVKMjVIQVJaWDJvbnlJYXRidGdX?=
 =?utf-8?B?SGpzeEx4Zm9zMWcvZkFQRGJqRTd5ZmJ6RmpZd3JIdXQvTTR5UnpONEhGK3V3?=
 =?utf-8?B?eVJ1VWVIZDlaVVdJNEt2bFMzVVhOdlRSK2RzM2VybVc5SXBQd0l3TDhxUnFJ?=
 =?utf-8?B?ZUhVZVVYNHRTVFNuczdyY1VaL2d3cENnRWlCL1lIcWxtN25VQjJQWWZ1SHNz?=
 =?utf-8?B?TG5ra01wNUNNNU5HaWZ6c1dCZGt2WXVFZjBnNGJQQnhQS0hKclVSaEdQek1y?=
 =?utf-8?B?USszM2EwTTlEeXowU3FNZmVocHdCRTNzc0NxUWFma1JFem05NUNlU3Y4aFRK?=
 =?utf-8?B?TkQreUwvMzlwRHZzRm5Wdm5wTHlOTG9uek1rQlVubUxhampscjlhQytNQU5F?=
 =?utf-8?B?N1VEbXU1SlZZNTl3eVIxMmJEb0NsSFNORGF5Zjl5VGN2NHNSUW1DbGNzLzl2?=
 =?utf-8?B?cmFHZUxSTmM1U1ZaYkU1eDJvelpneTd6WE40bVg1NklBaGhyQllINXBEZWVG?=
 =?utf-8?B?TG1ZMHpVL0ZZajlON2k1UjJ4b2lEL3dyNG1Pd2huc3dYb3k2UUFnWS9CSUtM?=
 =?utf-8?B?T2VFVTFBSnJjc3dRVDNONUlFSWZLUzVQWHd3ODJGMzlJK2hkWDZmQm83aEpV?=
 =?utf-8?B?b3pPdWU3dmhTL1N5SDhJQlZzTWc3d0F3Rm9JV1JaREU5S244cUtMWllpbVhG?=
 =?utf-8?B?b1BEODNTZ3FnNmsrY3hiY2liWW1mZTVDZWNBTWlIck50TVI5Q2NkalhnMWw2?=
 =?utf-8?B?a09hWGN2NGhVVEdSQXZFdXVwMzNnempDdXJ4Z2FSMXNEcFVwRys3eWpLUFZw?=
 =?utf-8?B?RTJIcUNseHFmOStpRnRHWHJWTVhNRUZhdFdiZkYzWWVyTEk2TFM4Zi9yS05H?=
 =?utf-8?B?L0tQMnhxWDBJSjI5bGdmMTRCdkt1OXBhVWJKRUgwc2s5N2VmTVRpcXhZb05q?=
 =?utf-8?B?byt2M2tOcUN3UU9NRWdiQmhhSTBoTERYSEJncXJYUmFpY3loVU1MKzdLMnZ6?=
 =?utf-8?B?QTBVL3ByYjBua2p6S1RPRVN0dE1SVUprYzlSYXczM3QzR3ZyamdyNUJZbTBz?=
 =?utf-8?B?WTNSK2QyY0VJVXNKcW1MWUVuaURrUFNoNnp1RXFBRE9HNjg2NGVnNzRkQ3dQ?=
 =?utf-8?B?enRtRURHeitZU0N6VEV5eW8wOS9xaUlyOTIvVFllNStNd2ZJUkNrdThpQVZ2?=
 =?utf-8?B?YWlrZ2k4bTkyazdWSnNUV01TbEFEV2lpZGFpVEJDNmN3Z1YxSldBb1Z0VmhO?=
 =?utf-8?B?VVRZSjBxbDk4L3kwSU1JU1BxVWVCVnY3TGZRVnJxZHprNkFHdUwyaU8wbktB?=
 =?utf-8?B?akNRR3VleVhBM3BnaEdGSWxrZE50bytrRVYxWjRPUTVuS3BERUY1RXp6RS9t?=
 =?utf-8?B?Y2FZekgyQzU1d0YreUdhWDBZM0hWTkpHUDBKNWIvUGhnRXNXRW1nVmR2SUVu?=
 =?utf-8?B?eXI4Z3ZRNFRqUDFxMVFhMHZXeFAxZktGOHVxTWVzT0w3R3QzTWZnRE0zQXBI?=
 =?utf-8?B?ZVZVZEFkcDV0ditGYVNLdEpJcVN5QVJxMlJ3SWZWcERWNG5sWVRLY0xJUjJS?=
 =?utf-8?B?d29KZTl2dnhpbnhXZWtsUWdwSk5ONERPaTVHZHlON0ZPdnpweExPeGhFR1VN?=
 =?utf-8?B?MS9uaGh1VVE1b2d0OXVNQVY4czUrS0VYcUxJY2E2MXgyNkRRS2xra3pEemQv?=
 =?utf-8?B?cHFNUGMvN3V2UWl5S2VCNTIyWU9ZQXV3YkNJM2lVWk1pRWQ5aTdiNGM0MjMr?=
 =?utf-8?B?emVTMEV5YjJNQWNxbFVsKzlJQnBYSFVZVlJWTUtYVWVON2pUa3ppVERManJu?=
 =?utf-8?B?anpJT3Y2Q09CUDNSQUJ2N0xQK0xMc1lHMjkwMzZtVmpacG1YSy9XRmJoUEdv?=
 =?utf-8?B?UVNHNklvNGpiZFhBK1A5Z01kcmpnL1pvRkxuSUR5NGpBbGpIaFFEOFg1di9W?=
 =?utf-8?B?aTU3d0ZJOHRTMHAzaWRXU3dUUldlcE9FL1k4UFlOeXZBbTdFQnh0T3Frdkdm?=
 =?utf-8?B?R1hWUG5MZHFrZkVxemhVVm1ON0xjZHJyYVduMThMTHRxRnc2Y1JydGkrRHl3?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 928c74f2-8758-4b08-62a3-08dbf4c7e2cc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2023 12:52:34.5968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: McrZvvtAPQDoG4w2Qsllhu/Owg2Yaz4/Irkw7kFvQgrgWr4p+laJ6zLx2cl2s+xq8kWAIu5VinmLANlkDhMD01X8ae5IQkooN15l/9OFwrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4975
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701694361; x=1733230361;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F9XsEyt3USxNwphpSAzEaeWM0LyluWMIscPHOaMZMgY=;
 b=JP7FEVf5gqDwdjoseje01ljj8ayQpYrGyhgQ3WGKX+/yvGruXPZf5EWQ
 z9VsOqyZRanF9/Wo0uxUqgPdA9sQOXA43LVqwAww2u6Ws/gOuS2UFnlkm
 xMzG3g34AZCEOnCJVh/iLyzuhH803PxL2iIyVOECTbr3nS3fce98KKmdN
 +ac4omTR+YtITcWSqcFBObbkLPTClMZi6dT0ApA6Hwxhx9uRisBvFsjmR
 xNzovTP34Zyyl/3d/FmJQ48jARKS5yRC1n8iksltZLQLUckReLc4ivmhQ
 ELhgxCUCXrAQgCfBgxZxwdGZKwQx6IlJBClPKpzOob13Ar/3MSIdoiioI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JP7FEVf5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] i40e: Use correct buffer
 size in i40e_dbg_command_read
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
Cc: kunwu.chan@hotmail.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, jeffrey.t.kirsher@intel.com,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kunwu Chan <chentao@kylinos.cn>
Date: Mon, 4 Dec 2023 09:44:55 +0800

> The size of "i40e_dbg_command_buf" is 256, the size of "name"
> depends on "IFNAMSIZ", plus a null character and format size,
> the total size is more than 256.
> 
> Improve readability and maintainability by replacing a hardcoded string
> allocation and formatting by the use of the kasprintf() helper.
> 
> Fixes: 02e9c290814c ("i40e: debugfs interface")
> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> Suggested-by: Simon Horman <horms@kernel.org>
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
> v2
>    - Update the size calculation with IFNAMSIZ and sizeof(i40e_dbg_command_buf)
> v3
>    - Use kasprintf to improve readability and maintainability
> ---
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index 88240571721a..a176de89de9c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -72,23 +72,22 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
>  {
>  	struct i40e_pf *pf = filp->private_data;
>  	int bytes_not_copied;
> -	int buf_size = 256;
> -	char *buf;
> +	char *buf = NULL;

This is unneeded.

>  	int len;
>  
>  	/* don't allow partial reads */
>  	if (*ppos != 0)
>  		return 0;
> -	if (count < buf_size)
> -		return -ENOSPC;
>  
> -	buf = kzalloc(buf_size, GFP_KERNEL);
> +	buf = kasprintf(GFP_KERNEL, "%s: %s\n",
> +			pf->vsi[pf->lan_vsi]->netdev->name,
> +			i40e_dbg_command_buf);
>  	if (!buf)
>  		return -ENOSPC;
>  
> -	len = snprintf(buf, buf_size, "%s: %s\n",
> -		       pf->vsi[pf->lan_vsi]->netdev->name,
> -		       i40e_dbg_command_buf);
> +	len = strlen(buf);

strlen() doesn't include the terminating '\0', but you need to copy it
as well. Hence `strlen(buf) + 1`.

> +	if (count < len)
> +		return -ENOSPC;

Here you have memory leak in case the condition is true.

>  
>  	bytes_not_copied = copy_to_user(buffer, buf, len);
>  	kfree(buf);

Taking the above two into account, I'd suggest doing something like:

	if (!buf)
		return -ENOSPC;

	len = strlen(buf) + 1;

	if (count < len)
		bytes_not_copied = -ENOSPC;
	elseif (copy_to_user(buffer, buf, len))
		bytes_not_copied = -EFAULT;
	else
		bytes_not_copied = 0;

	kfree(buf);

	if (bytes_not_copied)
		return bytes_not_copied;

	*ppos = len;

	return len;
}

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
