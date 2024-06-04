Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBCD8FAE53
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 11:08:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87EBC413B7;
	Tue,  4 Jun 2024 09:08:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8O0xb71QnuFO; Tue,  4 Jun 2024 09:08:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89251413B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717492091;
	bh=7YVFPy7KuQAwktp0Vrlv8MD1jB2jNatS2UpYWHAZODc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B+q/HhzxeAl2Pkk96W5djvHTWXUqqj1/UfF/TUaMZ0RDj16w7fpAz3ZTgPyW8dX1s
	 4CMBA3t6RRYR7N+3OmgF7ccR1zmrm8deI8+V5AR2e2Y0lm+hkCWJJwn1OSiO1Dw3h/
	 Kgf/sbREbZVxbyzmfBaDHc3U1tLvjn46VduE9UnL+aRHi+zYZpStSc4UU9Ff5atG4W
	 +ro9RhpgzYepJjLqdNDjLcTurdMafm7MTlRN1tLBkdaxZ23ygmzwD3o3Vr9tjcfnzF
	 lU4f1Ad53ds2ax1vO9y/uXVY1pFypY22cXsiHI8ULZJMTkZMtQ70VfCiJiy1svXtCP
	 6fVrPIPtkm3cQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89251413B9;
	Tue,  4 Jun 2024 09:08:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF1E31BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5EBA8454D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:08:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YdeOj_FYQ-LK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 09:08:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9556482071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9556482071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9556482071
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:08:07 +0000 (UTC)
X-CSE-ConnectionGUID: Dki44FAgTQKKUpg6TYSLQw==
X-CSE-MsgGUID: lZqe7WeCQK+M1EYoadDpOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="14181093"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="14181093"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 02:08:07 -0700
X-CSE-ConnectionGUID: 9oWTqmq7S+GjGmx+hUWEHQ==
X-CSE-MsgGUID: y3CHkfg7SM27c8NWQflNYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="74682192"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 02:08:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 02:08:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 02:08:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 02:08:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 02:08:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NYfkp52rLaU+KEpOVyzgvcPsP0rQMe7yybDx9NLPsYNiXprPkuJxjGiLc03CfTbCD6QOIZ+zez6cVb21j5Bb0cUCN9P3zCuo1hVEuCv8VC+iUVZGQBljuJF2ayBMqK5SLo0rSnpqG/wMpe+t5ciJ4UQmscMjjkv2tErgU57gWK4xFVRuBIJe+khKB58OyoApshs71aVe4WCAxNLIwcvr8l0U/l3tq7iY2E2fc12AgcOetA08v5xyb4iigoV9VMeCWwoCJThEdlaKR2jd5dC1huPyg3nMgeLs00+96H9LZNQgK1ZfBSQ28vpu5EANgVGYnqCx4z9V3Ctdq5IKjXgjFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YVFPy7KuQAwktp0Vrlv8MD1jB2jNatS2UpYWHAZODc=;
 b=i3ZrcmdKP3Qf0sKYqOktdSEtKEwLxxGPxaeRZR/E3ssitGuGwWH5gOwAiiJ4LuIIYz9oxaz8JfTlXRF1YDQFc7hO+kIN7mW4Fmk+PAyGTiFekCLXnt7DLgkkXTtjfwT1N6HDEzLBW0CqOEPEXOr7liH2kn6ztCLKrOe3/Svxa1pms/Bro3yuiW236CoTjGVE3E/8LHVcjY1rKglBLmwk4yKw5aI2kJmViJm37kxMZefUPqeJxqljiLqZoUC4oEVh0QV420pCjs5VAA0GMmz13KuuyIqdNujfgrGQx8Mc5S5lcuRLW13C+mKTP5pLdMr6fkVJtoYwwQP0ihFOrSoSbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CY5PR11MB6210.namprd11.prod.outlook.com (2603:10b6:930:26::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Tue, 4 Jun
 2024 09:08:02 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 09:08:02 +0000
Message-ID: <cf4c6af6-0196-46e0-8d11-ac8e1cb81656@intel.com>
Date: Tue, 4 Jun 2024 11:07:58 +0200
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20240603123146.735804-1-wojciech.drewek@intel.com>
 <Zl27CvHVJmT-LG6C@nanopsycho.orion>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <Zl27CvHVJmT-LG6C@nanopsycho.orion>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0290.eurprd07.prod.outlook.com
 (2603:10a6:800:130::18) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|CY5PR11MB6210:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b64f82d-a1d7-4827-b6c4-08dc8475d6a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXhUbFB2YndlMjlKNjZCRDh0N0RkV3IvVWk0KzdyWmxYcmVlSVo0SThyVXF2?=
 =?utf-8?B?TU54cVl2TVc2akJ1RlNRbGpmZkt6cklXMkg3anl6SnJONlVYeVl4dm1uMEJS?=
 =?utf-8?B?S2VTKzRTMUJheG8vcVFKdHlnTjdwVnJFZkF3UUN0Sk5HWmtHWFE1Q0hiL1VQ?=
 =?utf-8?B?aW1jUkQ4L3FEZlVXemNrTTRnYmxVV0N2dHhLWHduNVpvWWw0Q09jNUp0TEY3?=
 =?utf-8?B?S0haRFBaRUdaaENrM3g2bXh3QURXS0t6dFoyQVgrTm1GS2w2cWJaNlRka1pL?=
 =?utf-8?B?OGg3U0JITTNPbnVQVDVjdVgvTEZ6bXFxZ1M0YU9vd3RYRU0yRThuRHNBdk1I?=
 =?utf-8?B?aDkrMWtQV2VzM3U5MXI3eFdtVHBoVGUxaTJkNzN0dFBEamt6WUZlcS9hdWc2?=
 =?utf-8?B?L3h4eTgybFVkSGpTOGtERU96RFZ4dzByRjJkUWNNaUJZbGUzcTBJNmtFYS8r?=
 =?utf-8?B?M0dsVVhJY1V3a3l5enViYlo3Y2hFSzhyTytIbTdHYkVPZlFTTzdFdUxHVlds?=
 =?utf-8?B?dkZnRnVBcDdoRW1GWGY2RnhFQnpuaTFNOW80NDdDUDVRTEljc0dmT2pYWDh2?=
 =?utf-8?B?WlFuSWd2ZkY3M3YrZ1dqNTBRUU95QWp1OGRRak9CMmRSS2NZRmJicGFYWEhk?=
 =?utf-8?B?Q2NOY0UzWjBMMloraFN3RzlBeGNtc0V0cERaVFFHT0ZSQTU2ZVF0MzdWTVAv?=
 =?utf-8?B?SzB3bGpadytSQmF4Rkt5aklYeGlOblpTeFh3N1ExTWNwdGhFaXl6aFNwZ2Fv?=
 =?utf-8?B?UDBFK2U4azBjaTlIMi9uVWpEcDN0YkNCUnNnb2hKcXJPVGpNOEVNVWh4MDVK?=
 =?utf-8?B?bnQzSnR2cTlSVVgwRzY4UzZGVTBYaUo5M01GR2tmRUxvb1FRd0hVbldWZGQ4?=
 =?utf-8?B?eWRsakNJU3pjVUQxcEJnQzlJeTlxMTRTZVBobHZTSEg2SEkrZ2htQlo4aHFi?=
 =?utf-8?B?dndYQ2dRMDZrRkpCRlh2dXVIWENMcHFEZGhNVU9TNzAwN1YxemF3a3U1cHIr?=
 =?utf-8?B?M1BHR0J6dklBMzNBQ1lVbkdFRjdVYXNUeDBMR3pEMHo5NVNRRzJRckRtaG8r?=
 =?utf-8?B?SFJ1OWxLUmpIbUhYSVJmcGZyOXVjS0lLZlBpRzJXWTRTeHVRdWlpY3p3OCts?=
 =?utf-8?B?MDNWNzBNNXQ0MlF6enJ4YzQ1c0FrVXRvblo3c3M0UGtTWW81amtQckk5Mncw?=
 =?utf-8?B?Mm0vakZ5ZmFjTmMxbW5nYUNJQ2ZZV2hiUHFjT1VtWm5sOG5SYjU3Ry8vSUhL?=
 =?utf-8?B?NjNudzZ2TVZNRyttRTBQeGplc1lXN0lZYUhuR3JTYnFSSHhwaGVmMDdaR292?=
 =?utf-8?B?YkcwVC9LdTNVZHYyYTlxWUg5dlg4ajJORUJURmVaQzI1aHA4U0lCUFFNMEhB?=
 =?utf-8?B?aW4rM1o0TFlDdFZnQjBiRFVIMU53dHlqMlJYbHFvYlFIb2ExZENKUm1GYkYz?=
 =?utf-8?B?cVZHQlR1Ym8yL1h3dWpzTU1MN1lxN1MxOHluc1Uxcy9idUtSWFJXVHVYSFlj?=
 =?utf-8?B?MUdnVXVZbzlOajdISHR0S2VFLzhDc2NoWnVRMnNRb0JtUDV0eGJ0ODYwbEU5?=
 =?utf-8?B?aDF4RUo1WW0weVJkOFByTUhyU1RrNm5WNzFkSE13L2MySGNmY3lxZkM5TE15?=
 =?utf-8?B?RGtjTitrSzNnUlBrSEhvbmJSeVltODlodS81TmZPVDlySkJEN2xzZDZ6V2pn?=
 =?utf-8?B?NHV3VnE5bEFnK0VZS002K2luMWhvMWlJVlF3VWJYNzVLT1hqc1NBQVp3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTFrWDZrK1YxTmNZVnUzU3BKOVhhOFVqVTE3MWVvWFd1d0ZPbFl3ZXJhUHQv?=
 =?utf-8?B?a29vYU9ldjBTNklWa01Dc0Z0czhEK3kvTlZsYXZVRUtrdnI0Mll4dThyaitm?=
 =?utf-8?B?ZVZEOWtjbTBvMkNldEZCelRkR2NURmZmcjB0UWhSR2pHbVRtZ3lVZytXY2cy?=
 =?utf-8?B?YTJzMGRXd1lxK3RYS1NTS2RYRWY3U3BIdCtXRmNvSi9PZWdHUVh2eUFwWG5i?=
 =?utf-8?B?WThCSFNKc3dDYXVtUmhGUi9aWk94SlFnTGVoTVVpUUZ0Sk4wTmNVblZBQ2h4?=
 =?utf-8?B?RFJURUtXUGdZUnNpSUNFZTJQbnNPZ09oZ3dUN0FxRU5zY3ZxUlRodXZRY0Zz?=
 =?utf-8?B?Mm1iTjJDdE9RV3U4YTl1Y2dXRS9EM0xRTGtoY0pQYXZzMW9PSGxCNk9zVENH?=
 =?utf-8?B?N2xSZnZFNy93d2krZXBoai9DcjErbTZFcDlzNWd6WjhGUWN2allpWGxFMGc3?=
 =?utf-8?B?WlBjR0FCdldFY1dtNDkzSGNMWlBwTzZ5b3VLUGU2cWQzdkhsL2o3ZE9maHg3?=
 =?utf-8?B?QXI3TWoxaUlNcUFzR0Z1cTQrb1BmeUVGYlNNbXUrMlNlTXFVOTM0cmdVbmZk?=
 =?utf-8?B?K3U5Y0NPVlU3cjI5NGNvTVhzMm1FOUFkRjJLdDJnTW9JSWdUbCtMcTBIZmVn?=
 =?utf-8?B?Z2lNRGlYVHE3TlBGSDhkdEljNllNNDV3V3lzNXZIRGEyV0xnNlcxSDdxOWh3?=
 =?utf-8?B?SWtkVDhjbjJNSEtiVWtVNVF6SkZHZ0VneHUzc3EwMU9vQzNBZ2ZNdzBwWlhj?=
 =?utf-8?B?S0wwcTdDMzJCWVd1Sys5Mk1EWS9VbjR5aDBWYk5GTW14MnJ1VUo0NncyWDEy?=
 =?utf-8?B?VXgxalhxdHFtSmhXbTUvalVLK1JSTDRWTUtlWThwaWpEakJrQmVIZ2FvenlW?=
 =?utf-8?B?TmRtdVVGeGUvWmpBc21sN3c2SVdzY3MvNUVhbDJiZy81RGJtcXhraHNabW95?=
 =?utf-8?B?cGp2SWFDNDI0MHNaMmgrS0cxQTAwenJLK2tCTkdEb1JmQzFWS2dPTUxPWHRl?=
 =?utf-8?B?YjVBT2ljTTlzeDJjTWVEN0QrZmhQNFJXYUs3UUQ5aEtJTkRsYkZESmZSUmNz?=
 =?utf-8?B?eDlHZm9NejYyTEU3OHlRV3dxMmp0Zk9mM1lkUm9ZQWdER1pIQlIxUzk3YWN2?=
 =?utf-8?B?NnZrazFPTGxJZzY5U1IxQjVhWXhaRWVNU2kraUwyaVdsQ0VSd2dvYTFIekd4?=
 =?utf-8?B?M00vVlNlVm1RcUdxc2dibXJHbkxwbUFnSnlPZGd0N053TmphRWtnRVNDZEE1?=
 =?utf-8?B?RW9ObUlKbHdLOW1aZk5NL3RrSWRJc2w2VklyYjg2NlFXRFBDSjNuc0dTTkNM?=
 =?utf-8?B?SEl0ZDZDQi93NXlhOURHK1ZsQytLSXRyLzFwcVI0VmZUWmpJQ0lOdXc2czZs?=
 =?utf-8?B?SCtjU2E5NlNRZlVCb0RTMkNzZzlJUWd0a2Y0SnRJeDdwTHUrU0YyOGtidDM0?=
 =?utf-8?B?bkh3M2RWUENPU3hvWmd2Zjk5dVRUTXhlWnNTNDZRTkhMVE9FYTFyT2RlVjBZ?=
 =?utf-8?B?bWI2alNXRDZqN0hsQU1ub2p2VExsZHpLYmJqUWFVSUR4SStNL2tNWkNLMTRo?=
 =?utf-8?B?dkswL0ZZTlQ0U0xBdU91NWlmcFUvZlZyd0p3T20vU0NGR1ROTjBjY2w3Q1Bt?=
 =?utf-8?B?RjJwL2x1aE1QWFEySm52ZXJvK3NnNWpCdkxBamg3U1cxQWlvbU1oZTZROGJh?=
 =?utf-8?B?QThud3cxSm5xb0hEZ3hDdktieGJJRU9lL3Fld2tHeDNUbldGNUtrWkpkMVB6?=
 =?utf-8?B?cE01R3lCQ2lWbUhOL05uZWNqYTFzQW5VNEVyeXVBbFljdzJvYnM1bXdFTTVX?=
 =?utf-8?B?UGdOa3pxT2tTbmo3ejd4VFZNb25WeC9DM2cxK1RKdWRlTTFKR2UxUkFIMDEx?=
 =?utf-8?B?QS9ISUU5c2ZRa0UveXkvK3dmaEUwVU1XV2dLQWp0eUZCdVE2VWJGV2MyOXlz?=
 =?utf-8?B?NkR2MkpUUGN0clNlSE93NW8vNnRNMTNpWWpKemZIUCtBeEtESmlLbm9IMWtK?=
 =?utf-8?B?OHQrUE85VUFSSGxlQnVGK0JoNXhkZ0lHaThLNFhkVUFpK2lLeisyZ25ZbHkv?=
 =?utf-8?B?UUpVQmJRdmJqb0ZzQUwzbVBnM3BoUzdhaC92U1dmTXlhY0ltQ1lwWmNQT3NV?=
 =?utf-8?Q?nUmC9hsvPCAocCqgxvXSKp9Gr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b64f82d-a1d7-4827-b6c4-08dc8475d6a4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 09:08:02.9199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V3s5YA+8LtoHZyannwfzSIu0WNIhxhHOBW948n+hZhJRj2zVra4/cux5mQJGvuBpogFYd8CofhJ4Ph76LaCrTYSHhSOK1HdW+IcTz0p+9L0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6210
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717492088; x=1749028088;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XRQOfs/V+50BRcRywWlaNYmcG43A9EEGOYO183DditA=;
 b=LN6ZGNOER5zm26H86e1ddj7k+BHBFdRg2+4YkmvR2co+r22UwFmXf63E
 lQD/f1HC3f0q5ecef1IeMi3uQXFaw+MjXTRyx9NT7/JpwveFopB0rkoO/
 /Xg4lMB0MvxWIKRMzhdIaM2FD7uhnwlfePzIwrQoWXLniZWZu8icJmYT7
 Mv6Z/9D3qkY7nyB+RFPryvzfPtR8AqqXkz6XNjhW8IWtVE/PWRPcpF8ym
 RpJJQqApIisjnwH29HU9/vuVkDJ8keyimoskjHpYZMuuHlRdg4WDe+EgK
 1CpaQRts56ZECwo6FcbYWposS/WTAMRNNOvjumzAgo3l4TCD9C1uDZ74d
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LN6ZGNOE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add support for
 devlink local_forwarding param.
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
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 03.06.2024 14:46, Jiri Pirko wrote:
> Mon, Jun 03, 2024 at 02:31:46PM CEST, wojciech.drewek@intel.com wrote:
>> From: Pawel Kaminski <pawel.kaminski@intel.com>
>>
>> Add support for driver-specific devlink local_forwarding param.
>> Supported values are "enabled", "disabled" and "prioritized".
>> Default configuration is set to "enabled".
>>
>> Add documentation in networking/devlink/ice.rst.
>>
>> In previous generations of Intel NICs the transmit scheduler was only
>> limited by PCIe bandwidth when scheduling/assigning hairpin-badwidth
>> between VFs. Changes to E810 HW design introduced scheduler limitation,
>> so that available hairpin-bandwidth is bound to external port speed.
>> In order to address this limitation and enable NFV services such as
>> "service chaining" a knob to adjust the scheduler config was created.
>> Driver can send a configuration message to the FW over admin queue and
>> internal FW logic will reconfigure HW to prioritize and add more BW to
>> VF to VF traffic. As end result for example 10G port will no longer limit
>> hairpin-badwith to 10G and much higher speeds can be achieved.
>>
>> Devlink local_forwarding param set to "prioritized" enables higher
>> hairpin-badwitdh on related PFs. Configuration is applicable only to
>> 8x10G and 4x25G cards.
>>
>> Changing local_forwarding configuration will trigger CORER reset in
>> order to take effect.
>>
>> Example command to change current value:
>> devlink dev param set pci/0000:b2:00.3 name local_forwarding \
>>        value prioritized \
>>        cmode runtime
>>
>> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
>> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>> v2: Extend documentation
>> v3: rename loopback to local_forwarding
>> ---
>> Documentation/networking/devlink/ice.rst      |  23 ++++
>> .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
>> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
>> drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
>> drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>> 5 files changed, 164 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
>> index 830c04354222..0eb64bd4710f 100644
>> --- a/Documentation/networking/devlink/ice.rst
>> +++ b/Documentation/networking/devlink/ice.rst
>> @@ -11,6 +11,7 @@ Parameters
>> ==========
>>
>> .. list-table:: Generic parameters implemented
>> +   :widths: 5 5 90
>>
>>    * - Name
>>      - Mode
>> @@ -68,6 +69,28 @@ Parameters
>>
>>        To verify that value has been set:
>>        $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
>> +.. list-table:: Driver specific parameters implemented
>> +    :widths: 5 5 90
>> +
>> +    * - Name
>> +      - Mode
>> +      - Description
>> +    * - ``local_forwarding``
>> +      - runtime
>> +      - Controls loopback behavior by tuning scheduler bandwidth.
>> +        Supported values are:
>> +
>> +        ``enabled`` - VF to VF traffic is allowed on port
>> +
>> +        ``disabled`` - VF to VF traffic is not allowed on this port
>> +
>> +        ``prioritized`` - VF to VF traffic is prioritized on this port
> 
> Does this apply on SFs too?

Yes, it will work for SFs as well. I'll adjust the docs in the next version.

> 
> 
>> +
>> +        Default value of ``local_forwarding`` parameter is ``enabled``.
>> +        ``prioritized`` provides ability to adjust VF to VF traffic rate to increase
>> +        one port capacity at cost of the another. User needs to disable
>> +        local forwarding on one of the ports in order have increased capacity
>> +        on the ``prioritized`` port.
>>
>> Info versions
>> =============

<...>
