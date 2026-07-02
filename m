Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fvMrJzJxRmqgVAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 16:09:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2906F8B87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 16:09:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=n7b3N8dY;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2101383A97;
	Thu,  2 Jul 2026 14:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkgLu6xpcO9G; Thu,  2 Jul 2026 14:09:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7278583A92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783001390;
	bh=ORYaRwCHgLgIuAKigiJNggJfGrTafulNDlye8ZO6FIg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n7b3N8dYYhSo+daNNibSeztR4z1dliRL0NWOY4u0PZ8WxlTEvjNQ+ukd02RS8cs0F
	 sbeWz6lbwT4w+nsSkno2zWOGF318R6QzKffI2SHMXgDDDWkdAADhX6SqiUJrU477Gj
	 LqCgNK0w34Pc2lfiq1dbc67psdcCQg1fcgbAt9048nkMy7+T6NTwrVcPpEPFJmBzRA
	 li99hRB1LMhb9FWR0JwwN4SJ5EY3N5H35dAVaUEpXptheVKGAexFIk4Q+tQRnMQ1UM
	 nUE9mnMVcmr8Iuq1Wx2kld/3I7wk630o4jzEh1UqbMLEYrgbjcmVOXQ8ofKLFdcKKo
	 fgMIUmynMiGbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7278583A92;
	Thu,  2 Jul 2026 14:09:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AF29E127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 14:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC03840EBF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 14:09:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vpX0ir4pPm0e for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 14:09:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E2C8F40EDD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2C8F40EDD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2C8F40EDD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 14:09:47 +0000 (UTC)
X-CSE-ConnectionGUID: JRxw3qiLQs23JgigZxStDQ==
X-CSE-MsgGUID: eN7ET/DdSlGgOtbR8XsLsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83788321"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83788321"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 07:09:47 -0700
X-CSE-ConnectionGUID: j+MMfd9fQO6yl18nV6ySmg==
X-CSE-MsgGUID: oF26m5GUT9md12wt7In0Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="277192138"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 07:09:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 07:09:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 07:09:46 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.58)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 07:09:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pAaCew7aN3Wb09j7lR2d+kFxwZx5voHn/MS5tScIxe/BQ2yyc7Ao0nBGzwSrwjuH55pqOC7bZiwYPPZCQmweuoEuyVi+ScreGX4poQIJ42PyxHw52aTy9xrHtUHuTZSjqtC/0aCh9T2saGhSRiOLh7OGVU89sUkUO+e9X37XrJ3TIWzVHqExe+Bl7pTdSTylj1s8pV6yLDkoIDl6ex1mjf9pzMgInBp4PKSsx8fFUrQqSlyabH5EmNLEmvoLUuW8+DzP6ZKi9RC1rtXfxK6dcYHqGfyuEIYZVi1gsxwvuCwOa+aoTPGhojlGTP93YS1Fiu+l2clS9QhCDvGzokPFZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ORYaRwCHgLgIuAKigiJNggJfGrTafulNDlye8ZO6FIg=;
 b=AdJq6vooa0LTVAWRliNq55ztZDnE41DKRf1Ka1p64gJI8WCT2iKCALDSi8TFhu18Q+mQMY0EmA8DRqqR5Vnd3KuvBnsKcpgE08ZAWL6Mu7UxBn5p37fdWL472/COxlCB5TDrpc0kuvmFCsIqDYmOqn1iprTMItWa97BIpFUdT+O9tBRGFGwkxYqFyhjd3cwol9gvX+NUICa91/fFoJfXTmha/oUxQ2CNJC57Yb1iJ4BW85JDzomMejSenX7aNCphOjxDEGVWIYhEwr8VJ3X/p5keYsHImZQMWL/Iy5/w1TPXyxpCtOG7nF/aU5LvSSObfIkEe+myM05Af7oRrP161g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by SN4PR11MB9941.namprd11.prod.outlook.com (2603:10b6:806:4ff::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 14:09:44 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 14:09:44 +0000
Message-ID: <fb6b1528-058b-4bc5-b97a-ca2c844e0608@intel.com>
Date: Thu, 2 Jul 2026 16:12:06 +0200
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@lists.osuosl.org>, Michal Schmidt <mschmidt@redhat.com>, 
 Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Jedrzej
 Jagielski" <jedrzej.jagielski@intel.com>, Piotr Kwapulinski
 <piotr.kwapulinski@intel.com>
References: <20260701104141.9740-1-przemyslaw.kitszel@intel.com>
 <20260701104141.9740-2-przemyslaw.kitszel@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260701104141.9740-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0024.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::26) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|SN4PR11MB9941:EE_
X-MS-Office365-Filtering-Correlation-Id: 49c8044f-2486-4b03-86c5-08ded8439149
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|22082099003|18002099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: gRBxcCsUM3jW2iZDlwG9IUjyXUh9daptGjQEuPOwXwCs0X+eTY0Bztl15sDMI3Kb7DX2TZBF0KYTQxBCKjY0yBc+r+TG1KAmDFHtwNNZg4EKPtYbpax5G2+a9jYdpXv5WXlBFoRDvxGQCax3RWQPB+nLgTwA/+xON0tU+3xLmSMgrCeEcX2J2bTqE4UCIRHwuxBrkSBgO9GEumVfM/YX24Pdpqi8H/kc5rrSf2fBbNkB4d5WUlMuej+1uS253E0eZMDYFeHS3nB9m8SCABJa48avOga/j3ZY8UapyMlIbEdojTHmf7HwoZZdpJRckmN3irt6VyzYWOpnA+Aabl+RDYH/3o8uqx8fJeK9t75jQHXuwhdIGyQ3zD6L28bE3Jrgl483VtPc0PhiyLHK5oI/TAMfC6YcZyhH/bKi6rTJgjW7Vyy28N1fewx/Jz4kVpvjl7SdX5q1T+vu6OY8qEKDEshKJ4mBlJmbTQ4uvWLPBRaLzozccMHhPawixTW3vfWtctSJJwNtHxm3LXsLunYpQNWtjQvPwkyKAyeEMqhxxb+kVX7JT4cZf5R6ZjBJ8aMl/R6f8pzbnpE03cCEjJSq91aKPnWulC3uMEDe3gOUeSw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azVnNzV3MGhXZU5vcDNwempndEZORVo5QzBKK1gwSXB0TFUyUW1zdGRpaW1j?=
 =?utf-8?B?Wm1uWElnV2VGQUhhcjJRZlJ5YjZHTUZUOUJ6UDJkVmhSYkwzOFJRSmNnOGFi?=
 =?utf-8?B?VFJ3elNJUER1cWV2U0N4SU5JQy93YjBleUh5TllzZ3ZhK0FnUTZFTWNFR1VM?=
 =?utf-8?B?K29peVBCRFMrMmMxR3VabUE5cTdDTzMzK1hoaFhuRWZ2cm00WU1aOW5yU0Fy?=
 =?utf-8?B?dDBjQU9VYWhPSDdnZkdJUjBvRnBVakEzUE1GWi9RemZkNEQvOUxHMUVmYzVp?=
 =?utf-8?B?U2xXOGxva3VXcW9KUXpVblZYdUM2ZmZGd0RQdVZscXVPVnhiZ2cvQU5FWVdX?=
 =?utf-8?B?S0xPVDNzdDVsQ3BkVVpoeXFBN0p2SktwUXNEclcvNVlkendqMmZjZjBUL2Vr?=
 =?utf-8?B?QmRPQ2U1aEdOTjNPNnJZNEFNMWk1SllRekx3LzQvVVdqcm5sYVJyOHI5S0lY?=
 =?utf-8?B?M2ViK0RnbFpnMUxHYjVMbDdNbE5wbGZUK2p1RzZSNFFxcS9hdDlIN040eHI5?=
 =?utf-8?B?UDBrQXZSY0lIWnpVV1QzcFVhbHF0UjlDTGN0M1hxcW5aVUpmQVlvRUhWUVZC?=
 =?utf-8?B?dStkdkozNjg4YW1MdzdLekk5M2I0UHNQcGtTWWlwcWRLOUw1OFpta2dDV0RP?=
 =?utf-8?B?M3RPeVQ0RElKTlJLSUNZMXI1dTVMeEZva0lXM3BtKy9QbFc1U3ZqTlJxUVBQ?=
 =?utf-8?B?ak95WWE0WkZsb3k5cTVXWUdVK1RhdjRCMWp5dGFJYlVsM2V0QlN0TEJWeGxX?=
 =?utf-8?B?dWxISnc4OUNLRXpGOU8yWG9BZkpHR0d0anUrcHlCTkxiOFp1N0d4L3RueHdH?=
 =?utf-8?B?MnFRMXMxMUpCYjcxeWlLUUJDMlNkVnZ4Q29FL1Z5NjlmQ2E4OHhKaWFMY210?=
 =?utf-8?B?b1lsaDNxRWNCaDNpQlh4S2tWUzE1N3V4dXhtZ0dtN3BMRE1CZmwwbnV6ZHhq?=
 =?utf-8?B?VGd6S2VGR05UM0MrNVVtYk42VFNDaHA2QnlWL09OaGNpNzc4d1UxaWZCTlQz?=
 =?utf-8?B?Q29HK0J5WXlGRStqbnRIOUp6Tmc0M3Q4YnpReHNXRlFIaDUyV2NacXhjOWRs?=
 =?utf-8?B?OUpPRTlmMHRkQStSeEFqcjdDc0FBUHpiNCtFVkxBbks4OElmUlQzc29NK0Zx?=
 =?utf-8?B?VUVwQnlOdUNZUkUwYlNMV002OCtQMzMyNENyUkZESzltVWtIc2F5aTI0ZWRH?=
 =?utf-8?B?Q1ZzTFRuZC8xZDNzMjdmT2dkWm43cTZIeUtUWU1GeE5Rd2l3ZjdoWklSNnN0?=
 =?utf-8?B?eEswMU02dnkrNE1NckZnS2ZYWFNzS0VCOG5ZeWpoMkMwK0ZONE5ydjc5dm5Z?=
 =?utf-8?B?cXpXRHhCaGtVdmI2NDMxeFdQbDZFbmNhbUFUaTlmVzB1SlBHK0tjLzA5aDk1?=
 =?utf-8?B?NklzVkF2amVrajlWcXZob3ZIeVJXdXhSZmFrSys4NHp5Y0MyVkVoQ1k2ME1u?=
 =?utf-8?B?ZGw1cHFjSkNsWEIxeXIza2IwV3hWMWg1VVZLUXZvczFKc3R1L2dWbmZrSUV4?=
 =?utf-8?B?WFVCblFaVGsxUFdZeEZFTEsyMHMvK2lTa1BDTkswNHZicTFkb1plbkpuQ084?=
 =?utf-8?B?K3NUU0g4YkN2dFM1MEU1UHJpSFp5Y1AzcHNzMmpPOVNlYVFoOGxnaWhGbE5a?=
 =?utf-8?B?clZTbnVwNE5HYVF0b05ZZmc0QSs5blNDdEV0N1FKcUN0RGkrNDE5Z2NGOXJZ?=
 =?utf-8?B?SHRVYk4wclRIYmkrWHc0TU02RkVVZmJSQ1hsT25ZL2FGZExCS1ZBdGhDQWNt?=
 =?utf-8?B?azR5aGpJVGVqWjM3UEYyeHlvb3pTMGduMnJzTnBkNFYyZGVDMEVWRGQyWEtN?=
 =?utf-8?B?MDVMVCtTQm9jSjk2NXJ3WTg2SGl2djEwVjlwOURXVnovYXJwblo1ZlNTTnRq?=
 =?utf-8?B?RWNxZEt2cVJvR21XcFBBbHBock8vWDdETE81UFY4YU1vaElJQVVTQ1BVUHpR?=
 =?utf-8?B?ajB3ZVNoRFJHMHZ4OUdBZ2VxbmNOcmEwVXlZc1NnYzY1N0JJL2k0WnpYOHA4?=
 =?utf-8?B?ZEJSQmhhNC9tQVpKamZQOHRtT0xMdEUrSnRDNUhIMjlycUtDemRzKzR2T0w2?=
 =?utf-8?B?cUFIMTlrZXQ0SkFEb3J5ZSszNUpKZDl6Z3hpYlRWY082UjBpcDB3V2VqS2lW?=
 =?utf-8?B?WE5pUzQyajZJNWRQZ3VDWmM5Mm1tQWkxZEM5MHBXbDcvTFlDNzZ5MWxtQSt0?=
 =?utf-8?B?TnpsbTdOdjhVTzRrL1pCZmMxTjdKRlR4VE1STkpkNkQ0SjJtM3hqa0Z6VEpl?=
 =?utf-8?B?TzF1MTI0K05NeTlNZURPRXhKdGt4MEtta2ZEK29sR1RBQmZScXlWNE8xRFYx?=
 =?utf-8?B?bitsKy9wbW9WUUhUYjhvR2VyUUhubmZoQTQxUTJWNERRdnJGMmc5ZjNRa0lj?=
 =?utf-8?Q?AczD2quUTpW48Gvs=3D?=
X-Exchange-RoutingPolicyChecked: lNYeJ7Ea96sG4kaKzdXy9cptLNNmTtipnlwHai4tBCNT2OEJXqApjvFEK9MguBjiHEuwq2EzTpTgqoE11XXvgKOtoiQIdp5Xi2NRaEcvOp3ZYNAikVdxZZO8C9PqwlM4feLUDsilhsZ/vlg2oPauvQQoPq1Obfd8gtdQ/JK6kYiJmr7gualPKc8/+KyKNa4EWseg5vVpMoYekQ9Zs79G6qT9Ge+37ey6eP2L1smzbsBJGMquOEG8kQHrT071ZAWwry+TPrjQ3Xc/kwHcXo6QDJrUQ9JWN6OZl5U1ntVE5P1ILvFj14Nw1+WE9JZhtauct9+iiVgXuteUd/4wr2SXKQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c8044f-2486-4b03-86c5-08ded8439149
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 14:09:44.7272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: grS8W7+AVlx6FNrOgSh687jmdy3K7tXw3TT+7KrOJmBygchtl+ttIvofea/idsQGDTF66CdpWbYe2bT9UmZp6Z67Ut6j5SlAlwbdDeMwIhE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR11MB9941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783001388; x=1814537388;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kW9+m6grfUzJskBK2HLBhu/ucrY2rJ9YXA7WnLCXWVQ=;
 b=RZrBWrTHETkGbyVGdmQXB1wX6dFID2QRQdde2HqA+fQXOCgBt5F7hhvo
 8NT64lw+dk376uJ3jlt6Sb/pWRHFr88wf0IC+TrTmo6zb0Qq79KCCyeon
 CTu7fyQUe2c4b1SXq5YfSWvORTGUt/yH2RQ/E5e6dr3MkopJfK3ar7M11
 xc3Vj61OhMpbWAYpXis7CbRWjnncXiLkQ2neS7/v/NjCZoi6DNNwKTsqz
 U9TAf/l4Ly937Fg9DxeZYn/t1yf1OaP0QOmD+8RAXeFvd5Oum5ZD7Ui+W
 DbsBWtSc+k+QOexECdipLuy3nn1gT7un/vmLujpGsLP4OsyIZXGyxexwZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RZrBWrTH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix stats array
 overflow via proper realloc
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC2906F8B87


>   /**
>    * ice_vsi_alloc_def - set default values for already allocated VSI
>    * @vsi: ptr to VSI
> @@ -2319,7 +2274,17 @@ static int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
>   	u16 prev_txq = vsi->alloc_txq;
>   	u16 prev_rxq = vsi->alloc_rxq;
>   
> +	if (vsi->type == ICE_VSI_CHNL)
> +		return 0;
> +
>   	vsi_stat = pf->vsi_stats[vsi->idx];
> +	if (!vsi_stat) {
> +		vsi_stat = kzalloc_obj(*vsi_stat);
> +		if (!vsi_stat)
> +			return -ENOMEM;
> +
> +		pf->vsi_stats[vsi->idx] = vsi_stat;
> +	}

sashiko [1] points out that if there will be allocation error
later we will end up with, say, vsi_stat->tx_ring_stats == NULL,
but ice_vsi_free_stats() will try to dereference it

will post v2 with a fix

[1] 
https://sashiko.dev/#/patchset/20260701104141.9740-1-przemyslaw.kitszel%40intel.com

>   
>   	if (req_txq < prev_txq) {
>   		for (int i = req_txq; i < prev_txq; i++) {

