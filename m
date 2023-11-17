Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AC87EEC1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 07:00:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF5D541B74;
	Fri, 17 Nov 2023 06:00:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF5D541B74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700200815;
	bh=2Y85KPFvqXlzsW84O5b4F6sfMWVYT8bWP8cMXCQW4bc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uH7B5Zv9I/oPouL18koohI2U8a44TnusMG0/tPyTF52aP+O/TQPcVfpcbT4RIBiaz
	 OPMQlzrLVM43UQ99sBvtrZt3gUqdNVCwG2Ndjchz8e8iS2rSwHHzlYsK7FfAFQkDX6
	 AqD4F6vtNN0JlPhP6CatHfSifBhHBDkGzHY2A8vs8PdILbUBBKtq/+b/yGqKSRQk/n
	 Q2oc7ZwcIR2IxbIkdwSUtVo6PyU8fhZdc6dYxftqqg6oESF6crO18zzoP4We+4jE9g
	 1JLOGFOxzQXJCd5cZZARGvP8N9fei5NZbUg+8fVeC6k+iHAVTbEHZWl/FVfBUTIUZZ
	 PmGZHsjfLL6Ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L4KRGUDmWYuI; Fri, 17 Nov 2023 06:00:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7283E41579;
	Fri, 17 Nov 2023 06:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7283E41579
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E2A71BF313
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 06:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0423D81A46
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 06:00:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0423D81A46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6AUWxTknNNKg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Nov 2023 06:00:08 +0000 (UTC)
X-Greylist: delayed 430 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 17 Nov 2023 06:00:07 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5B8B8196E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5B8B8196E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 06:00:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="4375973"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="4375973"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 21:52:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="715435648"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="715435648"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 21:52:55 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 21:52:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 21:52:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 21:52:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DYvn7kBto5E+bZmepIEy6Olh11yp6CZQ3WuJUhgX4RUYPnYfsF236X+CvR9SrX3Ko5hrdU3FbCHTHH89kwxcv/FgTBdSqJ2BhqXwNgxJvpCvRj/hnDDXgWUVNNYAlErSoVz0PlSvE4U7y8erS2HlDSfl3QtZYDiWZJKIcTxGmpX7z7oJON30QiavrPgj8GiNWbkeY19B1ryw/gZcG44N21nY7z5s+8H/1QRlJg3Pqc7Ih7ymwtg/E0lcEtt+hHSjPI9/FSh0B7hXeS61jJ6KIvAnj4juG6tEkVPsGepR5TXiKW3+HBUAOR/Q6d9KjFTCOdtBEeGpAVLtn7yYRH6fIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSA5/srXzS2dqmkzyXXBwXE328CQy28vDATTknk7z8k=;
 b=dJ305qOvvUxZVuPXtIgxfsWC+fM+51UK2rLxy9c5S8KB9f188cngjAqxMxDIDlb9u4ElIFBUfgW8/HukmpCkwc0XQD8oovJtIZ7BNcyV22PlNFAOvLroV0DbIK3Xw9vUV6TYR1fTsNncizp4TyBd6w5u9e661WYFTfV7P4527pyWaJh2NU6IK1paiTePrknD6hw6nlGlLs6/q/C+IUd8ctQuMUgzDPIw1dP4y/LIj9kfuLcbILfd3adrIzzEBHFXz2MFe11lWTIRCnEo4R+/ZSkz2BwPbf3FL4G62TyqjTqe9laXxpmoVca2Ih0DI4l6AIL7j/MB0D1w0wgw1gf2dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by LV8PR11MB8534.namprd11.prod.outlook.com (2603:10b6:408:1f7::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Fri, 17 Nov
 2023 05:52:52 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::124:ae3c:93d1:981b]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::124:ae3c:93d1:981b%7]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 05:52:52 +0000
Message-ID: <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
Date: Thu, 16 Nov 2023 21:52:49 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
In-Reply-To: <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
X-ClientProxiedBy: MW4PR04CA0128.namprd04.prod.outlook.com
 (2603:10b6:303:84::13) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|LV8PR11MB8534:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f4b7b05-e914-4927-c36c-08dbe7317015
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Iuiv1DhxM18PExaTBcajZdO/lHbCRykDN8gQZg6EK0PsZ5yKYtJ44QE/cpi9h4d/3lryoKbMViOFperJER9SAxdG4SZ5lsC3Zff0iPJh4tv34dF92uZ1/o3SJh8MwdB6UR2C401MeBcqqiazgHyyoBvaoma+peAU5WsKR4lIdBSDzPv3lns8JbQ8XZ+n436MddscgopCGnzHxmF9syxJClwLbZAULVuyDhdzSFv1a8MgOBwveN+RjXizIIUalsqZHx5Aeb2/eLKCpt6y6nxjVpEdDMQJreFtDhgAnypnzxbNSBOHp77vHCi/yJWFbVQ35Fw4OZIM3bOZiCngdYcGl5ZQ+iICmDIWo5DokT7hy4Cb8BDWKyhDvSn9XJF5fl6hJ7rfSwyM2k3DmiHvDFiLhxRz40bCEG7tGkcWy7QlJr5fA26eKvzL+2/+uznuUaB5Q0RYM0FhySrcM8eRNziVZc/Q46v4vfJG/YYvKMCyLB6x1eRsjR785fGxLG7J2FbnPmK7Qu/cIQCeUTtHcNNQNnnKcv07Fn53ljhoFH8daWtHgbUm2HnS1yHqNO9dTDBv/6ykHchi/T5kSCFuxGYV2+mBoG8iS0MnPyCTb+nrzZVsp0Dr50EtO3lSm/XvuIlW7s99jEaYyVgObzsCMjzi7uhOnYMz6Iq0qrtIUNnVL9OoqbKv4GuaK1Pmtaqx6Bti
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(136003)(39860400002)(396003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(36756003)(26005)(6666004)(6512007)(53546011)(2616005)(83380400001)(5660300002)(8936002)(8676002)(478600001)(4326008)(41300700001)(966005)(2906002)(6486002)(316002)(31696002)(66476007)(66556008)(54906003)(6916009)(82960400001)(66946007)(86362001)(38100700002)(6506007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eU05bk9UOEpLRFlPSmFxMzlVZHlQTEo3MmZwdHkwSk1PUDJ6MkdoMnArb2Fz?=
 =?utf-8?B?YU9oRzkvMldYSlNvdmw5c29RQ3NLOFZrZGo5b1F0UWRxRnBuc1dMblFQUlo3?=
 =?utf-8?B?bXVUWWZ4K1JkbzRmYk9pRVlkeXlrMlkvS2pIZlZIVXRZNHkwN25COU53T2c2?=
 =?utf-8?B?UXBhSUVodmlEbURUVVFkaEFBR1RqbWlIUFJ0Z3doVlo2T1NDVldXbDE1bW55?=
 =?utf-8?B?b0h2VGZGZ3dxSFQyOHlXaXdOR2FwY0IzQithMHl4YnJSS2o0MnVmQVgzS0dJ?=
 =?utf-8?B?bWpKRzNOTFNkMWEvcmxTWUFVeUdMaUtua3kzWmF2MGhYZThHVzV6czNrMTU2?=
 =?utf-8?B?SWx5dG9GNTRXRlUzdlZGem45WmlNRThUUjJQYjNQeTFIWDVBV0t3YWVvVFFY?=
 =?utf-8?B?OEhSenF3T3lDU2c5MmRvU21QbGM4aEJLZ3BlcDByVlRoem1VdjdxVmJ2TWNl?=
 =?utf-8?B?OXdGNFdVNS80OHBPcjRqYmx0NEJ0cnFmYU4wZExBU2xWV2FWSkdES09oTzFa?=
 =?utf-8?B?OG42NG5KOXlaMndWSWxKc1NFek1Ba2xYRkZYb28xQk1JWEZ5MVgxaVN4RVEv?=
 =?utf-8?B?VzUvenFqdElrNUxZbXdaRkh2OWFrWWRnayt0aW4rZDd3MHZtblk3UFA0UWRK?=
 =?utf-8?B?WDl6cEJVT0YwWVdJeWVlYzlZYVJ1L2JrNGZlbHArTFFBQVM3WXFHc3Q0S05u?=
 =?utf-8?B?d1ZtUTIzYnpmV3NxRHViL21kM3M1K1pyK2hNVmJnaGF1SWdMSVlmMXd2ZjE1?=
 =?utf-8?B?T05sTHNZMlkzWERMbnNEalJjZEg1SUxScElEVVBac1pOdHF4MHRacFFpUkQv?=
 =?utf-8?B?ZEtqNVZIalpBMjY3cnhxajROYXl6SHRFcmw0NktXaWVSMTcwZ2NKU0JDdFhh?=
 =?utf-8?B?Y1RJOVhHRFpxbEF3bFNSTHdsOWFVWFJQTFRJSnhwcVV5ZDMrekhEUE0zU1Ja?=
 =?utf-8?B?Yk9UQVRaVVJCTmI4Tlh6TmhiWlFxMDRTNXZsaUVHb0dLTS9IQmtFVCtna3Y3?=
 =?utf-8?B?b0libmd2T2cyYkF5amt2b0ErN2loOW1WTlRNVldGMXNGbTRvUXhGTHBhTldN?=
 =?utf-8?B?WWsyMW5MUXFPMHBBQk5oTytvOGlEeURWQTBQVjZHWE9iNXczTWZZQzhnTWlP?=
 =?utf-8?B?VnVSQ1BEdmxOaDBjQXRML1hBTFlueitrdkNGWHVPeGlYWW44SGxvVnpMbkR6?=
 =?utf-8?B?eE1PMnBsZG8zUU5OdkN3SUN4WU1XUUY5NFk5N3BvdEFMbkVwT01DQTk2dURF?=
 =?utf-8?B?VWh1MHRRQlNZdVZtcVAxVFhnMFFuRWxyTnNyU2J2WmZFQkZhcHFtbHZlK2pS?=
 =?utf-8?B?cGw4cWQ3TkFjSXlJQnVRV3E4d1NUMG1aVExIUVBqOW1lTmlBOWxXNXBMRGFZ?=
 =?utf-8?B?NVRFbjVFSko5TjFTNUl3OXpFbzZnb29UcjZ3dElneFpaVmE0a3VzWTZPb3BG?=
 =?utf-8?B?NDdWMTZPak5KeXRwYVNvQTEzYjl0V25YeXVQNndQWDdMV1g4NWNEZVc0a1hL?=
 =?utf-8?B?bDlBSnZVNGk5OC9YOUpLQkEraUQvT3p2TVZpdkNPL0tOc0syWEJRYzlxTzVy?=
 =?utf-8?B?RVlER0JGMllRMmthNGN3LzlMd0dhN3kxSkFuUmljOHQ4MVJIMVp3L3hmOHZh?=
 =?utf-8?B?dGpvWlZjZEJtckdRN2VCYlNpSkMrN3dKWllLNmVmTzV2VnpwbXg3ZXFicExW?=
 =?utf-8?B?UGRiOFFObzBmdFovUmRDcXhtNGpESU1CRUpNdmdudXprcW1QeElQUnhNU3lr?=
 =?utf-8?B?L210L2RJQkZaMlh5TmNTK016bjMxb3R3T3ZGYXVhZFowL3J0aWdTYVJjRFFG?=
 =?utf-8?B?UDJ3U1Z5UG9jcERnQS9JOWZMWFlwVFh1cTM1Y3RWTmZnbm0xdCtRdDZhMkpF?=
 =?utf-8?B?ZndzSmpBYlBYV1poM3dZN3dsWkJBajJwc1ZOSU9BKzM5THdNc2FUdVBYUlR6?=
 =?utf-8?B?ejhGNURCUFQzUlR4TXVaM2lLcWpDeHR3V0VPNUJiTWdmTnJEMW9KY0hUNHdo?=
 =?utf-8?B?UTFGYmlUZFY5SThLUFVvazc3bGRKQm9zaS9FeUtYMnVORVNTZjI4Wm45VUVL?=
 =?utf-8?B?OWRodDhjL0xydXl3ZGpKS3JQeFhMZXUyQzNVMXEvbjlVWWs5S0VtNWY2UGtC?=
 =?utf-8?Q?jtI1sgUeCa0gyD9OYL1TikCBi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f4b7b05-e914-4927-c36c-08dbe7317015
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 05:52:52.4853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cVI8fLZw+fyXh7E6WR5S/hHyG01DmclkDhMOY8PADvCEwBr9PI5bbVvLeRuTu0ebtNzKIBYa0opyboiQeTWlKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8534
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700200808; x=1731736808;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mSlgATPvLf/69kwfBGk20vR5draP5kCxUKIFVcSYaVY=;
 b=KMox2X4Dr4TK+AEJlxzLkl5cn3FvQN8tsMiXV4uL05aiPbA3fRP+LWtB
 APR3Pi9Xzi55gcuts0aC9rt+eakgtudlY3Y4WucIHH6xZFT9zDlUCXPQS
 RmK+5BlVZ0I+dho7aJUeunjzQeLBnoQ/UPn2ba2uZk2XuT0IDFtRebuEO
 knY2AowIqlQ3eAKEW4DDs0CflvcSTXTSDrTUHfXGUNghQz9owHnP+CQa/
 eWWYyQbDmwXzeKJlIQ/Se0wU0qJGK715cCy7viXw7qYimvfvWDxOwCA1i
 rwSDKbnbjNmS4BZbRvp+uHG5dXSTBHxLIvFXWBZG5ivBoogKaM1Pfx2YS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KMox2X4D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, qi.z.zhang@intel.com, "Chittim,
 Madhu" <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, Wenjun Wu <wenjun1.wu@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gSmlyaSAmIEpha3ViLAoKVGhhbmtzIGZvciBsb29raW5nIGludG8gb3VyIGxhc3QgcGF0
Y2ggd2l0aCBkZXZsaW5rIEFQSS4gUmVhbGx5IAphcHByZWNpYXRlIHlvdXIgY2FuZGlkIHJldmll
dy4KCkZvbGxvd2luZyB5b3VyIHN1Z2dlc3Rpb24sIHdlIGhhdmUgbG9va2VkIGludG8gMyB0YyBv
ZmZsb2FkIG9wdGlvbnMgdG8gCnN1cHBvcnQgcXVldWUgcmF0ZSBsaW1pdGluZwoKIzEgbXEgKyBt
YXRjaGFsbCArIHBvbGljZQoKIzIgbXEgKyB0YmYKCiMzIGh0YgoKYWxsIDMgdGMgb2ZmbG9hZCBv
cHRpb25zIHJlcXVpcmUgc29tZSBsZXZlbCBvZiB0YyBleHRlbnNpb25zIHRvIHN1cHBvcnQgClZG
IHR4IHF1ZXVlIHJhdGUgbGltaXRpbmcgKHR4X21heHJhdGUgJiB0eF9taW5yYXRlKQoKaHRiIG9m
ZmxvYWQgcmVxdWlyZXMgbWluaW1hbCB0YyBjaGFuZ2VzIG9yIG5vIGNoYW5nZSB3aXRoIHNpbWls
YXIgY2hhbmdlIApkb25lIEAgZHJpdmVyICh3ZSBjYW4gc2hhcmUgcGF0Y2ggZm9yIHJldmlldyku
CgpBZnRlciBkaXNjdXNzaW5nIHdpdGggTWF4aW0gTWlraXR5YW5za2l5KCAKaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbmV0ZGV2LzU0YTdkZDI3LWE2MTItNDZmMS04MGRkLWI0M2UyOGY4ZTRjZUBp
bnRlbC5jb20vIAopLCBsb29rcyBsaWtlIHN5c2ZzIGludGVyZmFjZSB3aXRoIHR4X21pbnJhdGUg
ZXh0ZW5zaW9uIGNvdWxkIGJlIHRoZSAKb3B0aW9uIHdlIGNhbiB0YWtlLgoKTG9vayBmb3J3YXJk
IHlvdXIgb3BpbmlvbiAmIGd1aWRhbmNlLiBUaGFua3MgZm9yIHlvdXIgdGltZSEKClJlZ2FyZHMs
CgpKdW4KCk9uIDgvMjgvMjAyMyAzOjQ2IFBNLCBaaGFuZywgWHVlanVuIHdyb3RlOgo+Cj4gT24g
OC8yNC8yMDIzIDEyOjA0IEFNLCBKaXJpIFBpcmtvIHdyb3RlOgo+PiBXZWQsIEF1ZyAyMywgMjAy
MyBhdCAwOToxMzozNFBNIENFU1QsIHh1ZWp1bi56aGFuZ0BpbnRlbC5jb20gd3JvdGU6Cj4+PiBP
biA4LzIyLzIwMjMgODozNCBBTSwgSmlyaSBQaXJrbyB3cm90ZToKPj4+PiBUdWUsIEF1ZyAyMiwg
MjAyMyBhdCAwNToxMjo1NVBNIENFU1Qsa3ViYUBrZXJuZWwub3JnwqAgd3JvdGU6Cj4+Pj4+IE9u
IFR1ZSwgMjIgQXVnIDIwMjMgMDg6MTI6MjggKzAyMDAgSmlyaSBQaXJrbyB3cm90ZToKPj4+Pj4+
IE5BQ0shIFBvcnQgZnVuY3Rpb24gaXMgdGhlcmUgdG8gY29uZmlndXJlIHRoZSBWRi9TRiBmcm9t
IHRoZSBlc3dpdGNoCj4+Pj4+PiBzaWRlLiBZZXQgeW91IHVzZSBpdCBmb3IgdGhlIGNvbmZpZ3Vy
ZWF0aW9uIG9mIHRoZSBhY3R1YWwgVkYsIAo+Pj4+Pj4gd2hpY2ggaXMKPj4+Pj4+IGNsZWFyIG1p
c3VzZS4gUGxlYXNlIGRvbid0Cj4+Pj4+IFN0YXRpbmcgd2hlcmUgdGhleSBhcmUgc3VwcG9zZWQg
dG8gY29uZmlndXJlIHRoZSByYXRlIHdvdWxkIGJlIAo+Pj4+PiBoZWxwZnVsLgo+Pj4+IFRDPwo+
Pj4gT3VyIGltcGxlbWVudGF0aW9uIGlzIGFuIGV4dGVuc2lvbiB0byB0aGlzIGNvbW1pdCA0MmMy
ZWI2YjFmNDMgaWNlOiAKPj4+IEltcGxlbWVudAo+Pj4gZGV2bGluay1yYXRlIEFQSSkuCj4+Pgo+
Pj4gV2UgYXJlIHNldHRpbmcgdGhlIFR4IG1heCAmIHNoYXJlIHJhdGVzIG9mIGluZGl2aWR1YWwg
cXVldWVzIGluIGEgVkYgCj4+PiB1c2luZwo+Pj4gdGhlIGRldmxpbmsgcmF0ZSBBUEkuCj4+Pgo+
Pj4gSGVyZSB3ZSBhcmUgdXNpbmcgREVWTElOS19QT1JUX0ZMQVZPVVJfVklSVFVBTCBhcyB0aGUg
YXR0cmlidXRlIGZvciAKPj4+IHRoZSBwb3J0Cj4+PiB0byBkaXN0aW5ndWlzaCBpdCBmcm9tIGJl
aW5nIGVzd2l0Y2guCj4+IEkgdW5kZXJzdGFuZCwgdGhhdCBpcyBhIHdyb25nIG9iamVjdC4gU28g
YWdhaW4sIHlvdSBzaG91bGQgdXNlCj4+ICJmdW5jdGlvbiIgc3Vib2JqZWN0IG9mIGRldmxpbmsg
cG9ydCB0byBjb25maWd1cmUgInRoZSBvdGhlciBzaWRlIG9mIHRoZQo+PiB3aXJlIiwgdGhhdCBt
ZWFucyB0aGUgZnVuY3Rpb24gcmVsYXRlZCB0byBhIGVzd2l0Y2ggcG9ydC4gSGVyZSwgeW91IGFy
ZQo+PiBkb2luZyBpdCBmb3IgdGhlIFZGIGRpcmVjdGx5LCB3aGljaCBpcyB3cm9uZy4gSWYgeW91
IG5lZWQgc29tZSByYXRlCj4+IGxpbWl0aW5nIHRvIGJlIGNvbmZpZ3VyZWQgb24gYW4gYWN0dWFs
IFZGLCB1c2Ugd2hhdCB5b3UgdXNlIGZvciBhbnkKPj4gb3RoZXIgbmljLiBPZmZsb2FkIFRDLgo+
IFRoYW5rcyBmb3IgZGV0YWlsZWQgZXhwbGFuYXRpb24gYW5kIHN1Z2dlc3Rpb25zLiBTb3JyeSBm
b3IgbGF0ZSByZXBseSAKPiBhcyBpdCB0b29rIGEgYml0IGxvbmdlciB0byB1bmRlcnN0YW5kIG9w
dGlvbnMuCj4KPiBBcyBzeXNmcyBoYXMgc2ltaWxhciByYXRlIGNvbmZpZ3VyYXRpb24gb24gcGVy
IHF1ZXVlIGJhc2lzIHdpdGggCj4gdHhfbWF4cmF0ZSwgaXMgaXQgYSB2aWFibGUgb3B0aW9uIGZv
ciBvdXIgdXNlIGNhc2UgKGkuZSBhbGxvdyB1c2VyIHRvIAo+IGNvbmZpZ3VyZSB0eCByYXRlIGZv
ciBlYWNoIGFsbG9jYXRlZCBxdWV1ZSBpbiBhIFZGKS4KPgo+IFBscyBhc2xvIHNlZSBJZiBhZGRp
bmcgdHhfbWlucmF0ZSB0byBzeXNmcyB0eCBxdWV1ZSBlbnRyeSBpcyBmZWFzaWJsZSAKPiBvbiB0
aGUgY3VycmVudCBmcmFtZXdvcmsuCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
