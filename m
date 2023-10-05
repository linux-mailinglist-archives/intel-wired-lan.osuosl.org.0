Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 113747BAA89
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 21:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95FDC4223D;
	Thu,  5 Oct 2023 19:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95FDC4223D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696535047;
	bh=Tjgnxuc9V62xD/HkvFeC8MwCH3KIFnwIk+bIzu1cn9I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Laj072Cx00320ywS5y9uCjZKe6LqsGCl4i38fm+SjOiNh5diVTx0HEBNwVQil7BZT
	 Aufvq09ubTCjNcV1n5IhUeGN2yrWa17DgWpA/EkheRJ3JTuqSYHMADbZH1btlzFUrq
	 zklkjHt1jizudVH8qNwatnPHPe+0LS0mIFywcssSByolJUYtwt54yET7zBBafszQwo
	 1jM+f+0YGXk9Bicvcf0Qx2Xzb053fdBGynFvBuj7uX96lxze/TlXJ9zCzem2v5kFMx
	 LyU6gY1xgnoSvdL9mZ8Zv/Zyw7OjKqRpTEyXzMsAXfsVfCb5xYmJJeqOjBuAY7jkXI
	 rvz8IWeFYZUEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3z3Bnx-SzUKl; Thu,  5 Oct 2023 19:44:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D4BD42202;
	Thu,  5 Oct 2023 19:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D4BD42202
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D5E3B1BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 19:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA27983ACB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 19:44:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA27983ACB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kf6Ws1AGsNrx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 19:43:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 816C783AAE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 19:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 816C783AAE
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386430640"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="386430640"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 12:43:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="755598186"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="755598186"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 12:43:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 12:43:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 12:43:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 12:43:57 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 12:43:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQM0CABLIZPB7E6Xusc7uhZOhuaWr45IWJ229CHEdf6MWi1/fI6sqU1ExXHVxl1IflIEJG7PgkZlGJHRlRz6lDD7SVzK0aP5rCr3uNri8AlHyFptb2rttc3hOAlgPI2fGUfYd8kgg6kGCYbjLQ51LUEtdIEaMJoJUxoJY82QZNTTkOX2N3X/MQBp+0M/IsL6L/+YGCH6guS6lh9akS3ryh69t73qEP1HI0jvPIE+t3EbDkM61yd8Wb7GokiUVokYBMpl4cdEDBf9/pyFzx2myZYIOkVG1H2faAcxLiBElV0AklQycJ92k0BuCPoPSS2RRSwCl2LzUw5nZsYaqe141w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Y4+CCAKIJ8SxHHnFZjY8iS69qLERKsgm4TFgO7quvw=;
 b=QBdRKYWGn6TcYgyBsC965XQlt2z72K+AjiLUtRBTnZnLATLzGNntp/SsaPkDh2cdJSrFriirOlp7PW4uBfA1CTLk4d/vZqmELUkGLEEVkRSVHFTF8dIvCSnOo8RD41pBqIU8GrzhSwKmUdUyygslFn7SlanvgKfzaQeE/KhwCuB7DZy1Qs8fpevaEz60Du1btGNEcLBgYsnHkg5M7ZNoD2RjQzkTGfOPQthwwRBhKBkKMRY1XHg1CgRYFy0rQ7mKPblh4n6RVn1lo5+OvXX6ltIvSLY1/EBCi4qaGXeb5zxoHsiTrU0W+lbDmc2g+OpKUYbQATcx3rL2eaUZDnok1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2599.namprd11.prod.outlook.com (2603:10b6:a02:c6::20)
 by SJ0PR11MB4959.namprd11.prod.outlook.com (2603:10b6:a03:2de::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Thu, 5 Oct
 2023 19:43:56 +0000
Received: from BYAPR11MB2599.namprd11.prod.outlook.com
 ([fe80::7167:18b4:ee0:8f0f]) by BYAPR11MB2599.namprd11.prod.outlook.com
 ([fe80::7167:18b4:ee0:8f0f%7]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 19:43:56 +0000
Message-ID: <b47e3897-0f94-5233-1b67-e0a8e4831e95@intel.com>
Date: Thu, 5 Oct 2023 12:43:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231004220610.41979-1-pavan.kumar.linga@intel.com>
 <cb0fc0a9-8065-1ece-33c4-b3e80d152df7@intel.com>
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <cb0fc0a9-8065-1ece-33c4-b3e80d152df7@intel.com>
X-ClientProxiedBy: MW4PR04CA0086.namprd04.prod.outlook.com
 (2603:10b6:303:6b::31) To BYAPR11MB2599.namprd11.prod.outlook.com
 (2603:10b6:a02:c6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2599:EE_|SJ0PR11MB4959:EE_
X-MS-Office365-Filtering-Correlation-Id: c9f98f53-a9c9-4255-f6d1-08dbc5db6961
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O1QIglvQOZQVva8Gdc40QnIeVUMRWmYnNc6PoWA/sYTUD5D22dKMt820IBHnA0uam0WM9kteboVxNzrI3QVcFLvO03Mlqrvsu0uCTDsAsu+CJ2EeVDIqdSGgFqPRkE0vkJTbEQPEk+NwdENMuiSZn596tZCLNx2fgyb4Qj00GskCyq6KLNYmN/WTqYBBI/VZWLX7cETTPsxRuZ/ElOp/9NEXEimxtbnb+pFuNcQJXOTbe465lcA4Oc6s0dKlMQ/RyOQPpjE9dlgPyMY3fe4bJIA6Wnntn/Jfzvp4ESK7ctrTQBTGowHmXXyGO0YuhGZo9HFwY1K4KplzAkrLD8J7hOmKxM2qneJWkrLdX14DJTKGhKCSckIU8usCjl74VSI0vKg8s/VR3ZeNsGtPkdskMeri5ELCUon2sM01qQlSVzYDZj3AsndY3Rzm4akcaRdF/LgUUJFMkYCx2h9rT8UDAzgECilHKfSmiwGTBfPM1fXzaopHN2Ef2NLfkSM3FChn9ojdHNGvn3XXmx9IeX11vKLK0sXZWDhGhBiLWp3buVJs+R5+B2sPaAPxmuPCExti7RbSdfQok6FsUsRMvbw1hECfTvSsGhL1eWT/aHpnuRgl02uHejq3TuzpgjVmnNEfs3Sx5ZXy25qp72B/FZIAJg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2599.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(136003)(39860400002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(53546011)(66556008)(66476007)(66946007)(316002)(41300700001)(6506007)(107886003)(6512007)(26005)(36756003)(6666004)(478600001)(6486002)(38100700002)(82960400001)(31696002)(86362001)(83380400001)(2616005)(15650500001)(2906002)(31686004)(8936002)(4326008)(8676002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGZ5VVhWK1NHVHM2WXppVVVRNlRkWUx0YkFHbGVBSmFGMVRjcUpMSFVMeXcw?=
 =?utf-8?B?Z2dsU0FxSnJMd2Y2MW9GT2VVOHZaQ3NnYThhaWgvMmd6R3BZbmErVVdRbHZi?=
 =?utf-8?B?L2ZFK1Nyb0VWVnpxVFZQNG9EWERza0tyMHkxcHQwVWgrZUIzanJvK1ovakIv?=
 =?utf-8?B?WU8yd2FmeU5hT1ZURWRzbFJuQjJxUHhidkhLMXhnVlBaUE1FbURZd0J3ZUVq?=
 =?utf-8?B?L2lSUER3ZXpkZmdhenlzd0tQeXk5dzkyZzRyVkpBcHNkNGo1Z296QlN6Zm9v?=
 =?utf-8?B?UDNVUkV2dnFDUkx0M1ppcGFtUmM4S3JNNjhuTW9OTHhYcGtTdVV4b2U1N1kz?=
 =?utf-8?B?eVVka0RKbG9QSEY1MmdRMnUzRXdlOE9xQkFzZktTODcyWlN4R2JBMTM2Y3Jy?=
 =?utf-8?B?c2FTU25HRmZ1VDh2dGJRVS8vU3VXRGhvTkJJL0pQOFBKNjgvenNpTENTMElh?=
 =?utf-8?B?SThvSE1MQkJXR2dDcEVTenhYQ0ozR2pSeHhzK3pyOUFrSzBJZ1lVWndOMURJ?=
 =?utf-8?B?UFROT2Y0MnRqN0tiQWtabGlNOXc3eWh5bmh5OCtrUW1yQ1EvUGxFaDhwdEs4?=
 =?utf-8?B?SW1mV29hTGMwbGxsd3hkK3Q0QldmVDZhcGMwS3ZuUm1naVpvMDJSaHFxaTdJ?=
 =?utf-8?B?STladGdPMVkrTmN2ZTFyZUNzd0tYUFBLL3BWckd5Uk51TkZocTE2ejZZNXli?=
 =?utf-8?B?b0Q2Q2ZrdktBYnYxbUcxckQ5VWxOVkp1WDZYKzJOZ2RaQ1JhQVNVMFV1d0M3?=
 =?utf-8?B?TitHcEJOSHdEZ3dZS1F5SzU3eUl0NGFRRFk2MGJFTHYwbG00QjRIUGdSbGtv?=
 =?utf-8?B?ZzBJMm5ObkMrZmVsZURZL2RCWnlKZGxuS3c0MU1STGREa3F1eG9SUmNKNVJp?=
 =?utf-8?B?NDY1YW5vZ1hvWldkWGtacEM5TG9CQzRhclFSQXR5NHBra0V6VDlTblcrV0NP?=
 =?utf-8?B?SXAzaG1kZXJMWGVjeU91UnZDb1c0QnNDM0I0SlVHLzQzN2NGMlptdzc3MWxi?=
 =?utf-8?B?Zzd6Z1BuQjNWSlVQaThQNm5LVlE5QW9zNTMyTlZLZHJncHNoellxaHprUkdr?=
 =?utf-8?B?QmNONXNrdXhkMGNUR3BtN1creWN2azQvYVk0K20vUUc0cHlmZTJwQWVsejRa?=
 =?utf-8?B?YzNZNEhRelBDVU43b2ZMbHVWbWd3Ym41RDJ4V0VlWVh6L3BLZk9UbitOT2Vs?=
 =?utf-8?B?UHJMRFlvZFRHRUJRbDNOVFFzK1hNWmY5REFnTm5iTXIwbDJnNFhJcGdod2o3?=
 =?utf-8?B?UXhoRHZjbUJGLzJzbGM3ck92MzlNSktYV1RpQTRuZUkyT1dGajA5YU9pNkpY?=
 =?utf-8?B?a1VZMzlnTGNiV2FydWhVSjh6YS9Tc1poUWpxcm9rODR4VWxxWXdOK2ZqQWIz?=
 =?utf-8?B?S3lWVVJxVjRMcGNaeWoxanhaekNXTXMxaGEzajVJbFQ0djlXbko2MnRCMHZa?=
 =?utf-8?B?TXl3RUs2dkJuN2dqSlVVdmVBSEpMTnUxR0VGYWR0emtYTzlKL1M5MGRuV3dj?=
 =?utf-8?B?ekNMK1cwRzkwUUlXK2JiSXJoUnVKeTEvV00rTDRtUlJxQVVXTDFRUHlVdnZl?=
 =?utf-8?B?M1pjUzJQU2dFc0s2NGFWYVNJcnJzME16dkx3cVVSTkg4V2l4cm91cGhtcUNq?=
 =?utf-8?B?bWY5cnd6NHF4YU04SzF2RjZGM0pkdDByR0wyNm40ZzNIQi91Y2hpN0ZBRHNt?=
 =?utf-8?B?YjFpSCtZNGc5N0kvMXF6Rk16REo5QU9KQXAxa3NjRHNiRHZucm8vSExtOUpZ?=
 =?utf-8?B?KytiU1JaVklDS1N4aUo4a0YwWVNnaVhWRmpGUnFZNitiUWNqUEJ1NUhLdkoz?=
 =?utf-8?B?bVdTOVIrL1lqdHEzOWR3M283ak91RlkweENFeCtUZERac09MOVlVMm8wUDJN?=
 =?utf-8?B?ejg2SnhnU3p2Q0FqeVBXS3dLOEZveDg4VDNHOVVOeWpodVBhSEpXbWRNOXNT?=
 =?utf-8?B?ODlXMXVKQ0Rua2xzV0pVUkJLTlFKQUd4RE1tc1dIZmpyU2tWbFdOL0lENFp5?=
 =?utf-8?B?cTUvb0o1ZzQ3SXdxTnlkT0lVbCtBNmRkM1AzZDBCczFpblh6Zk9oc0ZZdXd3?=
 =?utf-8?B?ZElWT2loRkl2WjAxOHJXVC9Ea0VtNFpwMmNITk4wdmpzdXIvRTlVUjc0dmtP?=
 =?utf-8?B?cFlRK3kwT3ZkQmpqanFEYldEbU9xSzNwNWxoeWt2Y05aSE52RVlKTVp4RG9n?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9f98f53-a9c9-4255-f6d1-08dbc5db6961
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2599.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 19:43:56.1243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FsT7sMTPocaM+bQ9zwR0KDD/JOrVI1wbjtk/NjqDEpahrmZVl4R6iG0zCRYe5TlQjpaJQF0AFK8nYF2vvJs3h0NvvkL/QY/plbmM0FWY5OE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4959
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696535039; x=1728071039;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fODcT6yoCxG65DEhWYrHTQJxMGH41A35ZYS+5J4VJNw=;
 b=Pg9BfM8Hu+W5k+CioRMXUCAtk/IXxdKGqCk7ocCfrCSt6FRoZzhA4pdu
 EpgxeDaJZ3T1LCELzHxsxz8RCRa45irhoMblYCZZ+TbpMBYz36Y0v7+1z
 c38GfG0wpE2ZW9/bXzGGFQSxdZJiUsH+df72Cw8H3VYhK6uAaLtYBXTSV
 M6Kx863rUG9sQXXcOlv7iPDfnMe8S0EV1/RJvXv0gFn3WxZ/2G9jSHQnf
 tSv0hR9T6EfzGuisXpxVHhuespoxyvW6qQNA54SklxuK8JOyFM7B9Khob
 vjTw8T5Q1RtYTYFw76nA6j3dfOFe6sb71tQip+ATnWLOLkcDcl/1yBI9U
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pg9BfM8H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: cancel mailbox work
 in error path
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
Cc: wojciech.drewek@intel.com, emil.s.tantilov@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC81LzIwMjMgMTA6MjUgQU0sIFRvbnkgTmd1eWVuIHdyb3RlOgo+IAo+IAo+IE9uIDEw
LzQvMjAyMyAzOjA2IFBNLCBQYXZhbiBLdW1hciBMaW5nYSB3cm90ZToKPj4gSW4gaWRwZl92Y19j
b3JlX2luaXQsIHRoZSBtYWlsYm94IHdvcmsgaXMgcXVldWVkCj4+IG9uIGEgbWFpbGJveCB3b3Jr
cXVldWUgYnV0IGl0IGlzIG5vdCBjYW5jZWxsZWQgb24gZXJyb3IuCj4+IFRoaXMgcmVzdWx0cyBp
biBhIGNhbGwgdHJhY2Ugd2hlbiBpZHBmX21ieF90YXNrIHRyaWVzCj4+IHRvIGFjY2VzcyB0aGUg
ZnJlZWQgbWFpbGJveCBxdWV1ZSBwb2ludGVyLiBGaXggaXQgYnkKPj4gY2FuY2VsbGluZyB0aGUg
bWFpbGJveCB3b3JrIGluIHRoZSBlcnJvciBwYXRoLgo+IAo+IFNlZW1zIGxpa2UgdGhpcyBpcyBh
IGJ1ZyBmaXg7IGl0IHNob3VsZCBzdGlsbCBoYXZlIGEgRml4ZXM6IGV2ZW4gaWYgaXQncyAKPiBn
b2luZyB0byAtbmV4dC4KPiAKCkZpeGVkIGl0IGluIHYyLgoKVGhhbmtzLApQYXZhbgoKPj4gUmV2
aWV3ZWQtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4KPj4g
U2lnbmVkLW9mZi1ieTogUGF2YW4gS3VtYXIgTGluZ2EgPHBhdmFuLmt1bWFyLmxpbmdhQGludGVs
LmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl92
aXJ0Y2hubC5jIHwgMSArCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3ZpcnRj
aG5sLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3ZpcnRjaG5s
LmMKPj4gaW5kZXggOWJjODViMmYxNzA5Li5jYmIzZjEwNGY4OTkgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jCj4+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jCj4+IEBAIC0zMTQw
LDYgKzMxNDAsNyBAQCBpbnQgaWRwZl92Y19jb3JlX2luaXQoc3RydWN0IGlkcGZfYWRhcHRlciAq
YWRhcHRlcikKPj4gwqAgZXJyX2ludHJfcmVxOgo+PiDCoMKgwqDCoMKgIGNhbmNlbF9kZWxheWVk
X3dvcmtfc3luYygmYWRhcHRlci0+c2Vydl90YXNrKTsKPj4gK8KgwqDCoCBjYW5jZWxfZGVsYXll
ZF93b3JrX3N5bmMoJmFkYXB0ZXItPm1ieF90YXNrKTsKPj4gwqDCoMKgwqDCoCBpZHBmX3Zwb3J0
X3BhcmFtc19idWZfcmVsKGFkYXB0ZXIpOwo+PiDCoCBlcnJfbmV0ZGV2X2FsbG9jOgo+PiDCoMKg
wqDCoMKgIGtmcmVlKGFkYXB0ZXItPnZwb3J0cyk7Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
