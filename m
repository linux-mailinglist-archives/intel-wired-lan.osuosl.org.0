Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C0A8683DC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 23:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD1634084B;
	Mon, 26 Feb 2024 22:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4nYkUWj2Auw; Mon, 26 Feb 2024 22:38:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A2494084C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708987138;
	bh=2WfSzgGrDP0JzcY7vQVadI9GQpKxjFYFkT84nTytjZE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IU56gVC6JznU/qNnN9+imdvfO888p3T3MmKO6poClBgVeT7X6IBrC6skjWc11zrNU
	 YgvDY9MWmkTbn2bFp7Mu82ie/goPPOlkp50Hq8/kd38nChR4b93xnjVjnlDg7iVpvt
	 /Ngs/moo8k8sO6KESKwYlno1v80PDsHf/xg6JKd7+upK5zR6Zwoqjd8Gqkv2BDyzUt
	 Kek2LTRvj2dvTR2E+cRS4Wj28bUk0+ZC/PFXfD8wVLaDUXTyQPX/IWQ1l+nkfabrO0
	 849XXZwUm4ZgRXmlMuMr0bNJwsbi1MLMJehjB1gr1KaVXjXEc4jt9RPHV0i68RsUs6
	 goHBTu5XhBXAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A2494084C;
	Mon, 26 Feb 2024 22:38:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EA4F1BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 22:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72FDA405B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 22:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wsVlwzLrekl2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 22:38:54 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 26 Feb 2024 22:38:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0DBE040448
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DBE040448
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DBE040448
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 22:38:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3431537"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3431537"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 14:31:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11491567"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 14:31:01 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 14:31:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 14:30:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 14:30:59 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 14:30:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bx1M4uMfTvNpm0UAWIA2xUOb1lJDq9d9j332LoSKivGfhFo7WK0KgAoAQwip2e/u3j1pd7+5233yzCr4O4wOd2sY86ci7VbwEv7XA0iIBsX1SvIY5L502yRobDjoCMCQcy/xhdRNeZjCG//IWdFSceblVMsFNYfifmyRABPsxdVKQt/0v93BqJQ707d39tSjOkioKNabbuTIGOD/CF6/nx0gQBQeR7uEV+/HSJH6p34f2mQQR7zqfoAErexMAHKKjzi5RlVkpXt4Ad8CPCctZRbY2Z6woaLmgQHhvSy/b+lRbAoJp7SOcBXcDlT7zVsGz/gRphrEbx+aGJkBo7f2IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2WfSzgGrDP0JzcY7vQVadI9GQpKxjFYFkT84nTytjZE=;
 b=SXWCajmpfNNjChdHKgzgdT0RVEWMnJ8wtHH6CUTt9BD4Yu2Xcrw8GSBl3TH+oGh0U5TPWEFjJRojdVLM7zATAX0U2U6sdDHAlP0kac0SmtUbbfh2nyeTOHLrvEnJEGtdpcpoqcj4LuBOm1TTeu7WxGz66Bdot8etfpSU82f5mgKghONZNneT3pkGjZQWM356M+z9JQrIS+FR8Zm7oCmlFa5Si+Rku89V5y7MGT8Zm7uxQigdMYoxO04Di/HFy78HMJHrwN7YZfD+kcTqSNYhGJQ75fMFwtuXyrpYhjV0nXoxdE76DQ3axCc30KZ8QdEDZbuCLcXSrLK0JLnQysyEyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM4PR11MB7256.namprd11.prod.outlook.com (2603:10b6:8:10c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Mon, 26 Feb
 2024 22:30:57 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::13c8:bbc8:40bd:128b]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::13c8:bbc8:40bd:128b%7]) with mapi id 15.20.7339.009; Mon, 26 Feb 2024
 22:30:57 +0000
Message-ID: <4b9d1ce8-c202-4afc-9dcf-ac74a30463d4@intel.com>
Date: Mon, 26 Feb 2024 15:30:52 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexey Kodanev <aleksei.kodanev@bell-sw.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240226132103.69122-1-aleksei.kodanev@bell-sw.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20240226132103.69122-1-aleksei.kodanev@bell-sw.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0004.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::20) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DM4PR11MB7256:EE_
X-MS-Office365-Filtering-Correlation-Id: d2889561-86e5-4aa5-706c-08dc371a99ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FgRAXao0/gXwwXwycmAo+5kPMfRCitbympz9m21bmiWqSEo8xxKVET0D+mJl1Tt3e8QXuYNvOeHXbrBgq4VTmCPvdEH3edOIFfH9kVfGXzwnN1WJZFh18aGh0aGISRidV6lUmJ7Rj3qnFYO4ZbCbg2pd5Gb5nBxBH52sCVQTCseurSvXQ0pJIAq5mcv2+dWB1SHFJPrpvyb99dthKCHsjJ1YUmVNHYPGvQqGMoX6kfQJRSCmQxAT01s5oNuRhT+eNwvDn5KFnKXnrCXm6I5hMYmvH47fLX445m75aauKHDklK8ICgwUeb0pvcqImGT61gqWou4JQ80UjaRTeKoThulHiijIi1J27Y0PlDR0wGuz2kmm4jg4mA1O6P1I3qZqHDFpeQ+9XLqxgUBnNt51DhZZvVOJeEcoFJkL247P94ROf8dGbCRylcw3+fQIjKVqR0FwbVX9mIlbSZANuqw2O3mOoEw9dD1RbraspE4ho9tqAzGmMbULZ4MtbA0G88FOAjq0ItMFjTliGyIjydNGB4sepGE6A4MuAxD66S0xxCwUUP63w9uyAGF8NS7uOJsglpW01HZV776h0irDDDl+Tiw1x2M3OHa0JWDIosa+fSlt/wubJzLLi+SxCN0IfqfC5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QU4zeXJ3M2c1bERhamZ2R01BNkVFTHppK282N0Z6THYyWHdrdWFGa056d0Nx?=
 =?utf-8?B?K3c4bVhEUXc5NjVUWXZhVXNKV2RsM0VjUm9iV0lhdjBFRWc5WkExeTBtTTRQ?=
 =?utf-8?B?V1RlL1dsNkZzTXdteXpmS2NoMVhIMWFvWU5kZnoyM0twbExQWmRid01RZ1FP?=
 =?utf-8?B?THA5aitFSE41V1M0RXFTOVUrZS9oMm40VmIwZmFtQzdaekMvd0tSamd1SG4v?=
 =?utf-8?B?SHRLN21KRDlHNk1uZVZFdHdXSlpYNjFUZ3J6M2hlOTVoNVhnNmNPUm05bSt2?=
 =?utf-8?B?T2c1YkZublg0VnlkWWd6SGdQTllkT3ZOVlQxOHZ6aDJJZS9VRmNyaVBaSmVa?=
 =?utf-8?B?bm1PbnhvTUkxTDVOdFpQeUFJM2F6U0JNNlNKSS9lZkVOck9KTGVrZDZ2SzY1?=
 =?utf-8?B?R1lUM2hROTY0WFI4TndMOExWY2hTWXc1Sjhicjl3NTJpZThGcG5PRmZjM3U5?=
 =?utf-8?B?MVpJVWlqN3UrNjhZVE9tKzJEUmNSdXdqb0lyVGIwT1VBaDdLYW1JNjR4R1lR?=
 =?utf-8?B?aERnbzNOemF0WWpRYzJ6cGUwa3ZlSzRXbmxKQTYxUnNEN1J3VVd2U2tyWHpr?=
 =?utf-8?B?RWlrZTFSdWFGcVVjZllLUlplbi92VE9raWk5YUEwalJjMHFabDVhWnlrOTVw?=
 =?utf-8?B?TGk4WHNtbmpZbCttVTVvekRvaC9zMDhQdEkweGJGSVN0R092ZzJyYXhvUWg1?=
 =?utf-8?B?T3FMRWxHbEVLa0VqTmdDZitwK0JUd1Q3MFRyemlGWkFtMFZzZE1OVVRKYXpm?=
 =?utf-8?B?T1lRQzJBTG1TeDVxTzI5S3ArN1VrMFlyaDlzT3EwcXV5aGtWaTVGdCtlY0hR?=
 =?utf-8?B?KzllZDQ4RFE4NmFHSFYvUTNYa0NkQU0vTitidUxwSElmbHhNM3NPV1cvN1lU?=
 =?utf-8?B?d3d6ZEdsVi9CV1hyQ1NhSFRkUHRpSzA3Um9QR1pRenFuZzF5cFhvYUxnam5Q?=
 =?utf-8?B?MkhlbjcwVk93ZStQaGpjWnVmVE8wKzh1MmV1RHJGaFdWaUljLy9mQ253NjNO?=
 =?utf-8?B?M3NEdzZDNzlEMEVSNE1TNjlTOFdjVkgzejBWelk1bzFoNTRlSjlONFp1YTQ1?=
 =?utf-8?B?YmFoRXBBem4xV3R4NU9Hek5GejZkb3dwd05ueDhjMFZNeG8zaVk0dit5cVFr?=
 =?utf-8?B?TE16dmdXdkZ1ZVJMZ1pGWDB2eE5HNlVLc3AxME9xbWdZb3ZWL1hYdzRrdG5s?=
 =?utf-8?B?am5PM0RncjB6SlNQd1QzWXdjQ2t1MGZrdzcrbVBlbEVrZnZheDR4RzdwUXVE?=
 =?utf-8?B?ekJvN0JuOFd6MU95RnVkT1FzN0VPV0NqTXQvTnpNMk5jN3JBVXJEKzJqRi9r?=
 =?utf-8?B?ZmxoNXYybkxVNWRzWlhpbTBxTHpEQXd2MlJoV3pIVFVybnBwMEs4Z2I3L3hr?=
 =?utf-8?B?bDdJUGJQcVFhWW5Ib2dPNEtlcFBENmIrZnJmSjdTbHNmd3JkR1ZXWUpQU3VE?=
 =?utf-8?B?YWFNK25VOThRTUNjUkoyUnRPdEowZWp2dXZXcDM2a0MvWkViV3NDSnd6RGhF?=
 =?utf-8?B?SUZwUThCSlY2NGNlMzhURHVqaUNkNnoxTS83dW9ZZlBBVGtDUnFTTmp6L0pu?=
 =?utf-8?B?bmRSa0FPVWYraEVYNyt6UjVkYzduTVc2RVFkS2Nydi80R2FUbVg1VllNRmdN?=
 =?utf-8?B?QVA2cmtHeEtoQ2JIMm85WnlHczBlcHZtYW84UFhHUUkyTmNDQUR4Ujhaaml4?=
 =?utf-8?B?OStMM3hVRisrdHZCeEVnSzhJNEpSSFRscjRIaERhYjJCWGx1NHlLRmFEcDdu?=
 =?utf-8?B?QkhBNWM4SDJ3Z1VwbmxVS1RteWlhWTN2K2JxTU13Vi9ydXF3RVNPMzRWMHhr?=
 =?utf-8?B?MGhxcTB1ajhYbm5id2ZWOFNsNWFMTWlNbVdEcG1EWXZtcFhwc2dVZGIyK0dM?=
 =?utf-8?B?MnZ1QzFpRy9FTXRmcGtMQWxCU09jTVJNNWptMEcxdnJ1ZEtnbWVLOW13VUFT?=
 =?utf-8?B?SkxLcHdUWThMZ29rRjMybUFxWDQ4bmhKa1piNWRrTXpsaXVrRW0vcGlCeHQv?=
 =?utf-8?B?MVI5eURUT0lhY3FMNElQcXYwaFg2Z0lJRkJlWWlSUUhQTEtPNk1TTC9sSDUw?=
 =?utf-8?B?ZFpCazFzYWQxcUlSVWFTdFhPYURCYWpxT1NQQ2ZvL085UFNqOTRhdGRiWG9C?=
 =?utf-8?Q?Qs2nUXJLaSmjHb9l5mDmPtHuv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2889561-86e5-4aa5-706c-08dc371a99ff
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 22:30:57.3902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LDbw8XW9ka0jyErEdjvOs60jpQTUGKPmtQ55zKKiDaoJEq241zCLu+ouAX074MzOpUTZyO0hdUg/lJqEl991zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708987135; x=1740523135;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LD0+ooQ4T2gYY27F7oM3pfx+E/71lUi1rFFZnp/+15s=;
 b=TqMBT0dgDIX+E51wMwQDiO++H8A1d7PJ8udAb0zrL8ysUJNUUz9eqqgo
 rGlg3AkG2n8DWAnBsMorv2OahEm8XuJW/aX0wos2doy0sfc+EYbyhtYnR
 DDdSILaQ/9siIPOiy2S2+7ROeBqo+gWIXj3rCls2JnFUP2zGbtkPDhLEw
 8163rs9sgJfGkeprwGzRiMpYFkC6mZXypka1QRhlvEK822xemePdYmaza
 yHOsJ16YgeRSuj+XwzgLZT5ANm81YUQS4RFMbeuuq/ki/+n5YCt5U/kD2
 1uDSE0fDaTA/CodowHO+6V1CO1FoLX4MvEmzXsn6hMF7MChITty9nBbJv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TqMBT0dg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] iavf: drop duplicate
 iavf_{add|del}_cloud_filter() calls
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-02-26 6:21 a.m., Alexey Kodanev wrote:
> There are currently two pairs of identical checks and calls
> to iavf_{add|del}_cloud_filter().
> 
> Detected using the static analysis tool - Svace.
> 
> Signed-off-by: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ---------
>   1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 335fd13e86f7..5097efa2e1cd 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2170,19 +2170,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
>   		iavf_add_cloud_filter(adapter);
>   		return 0;
>   	}
> -
> -	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
> -		iavf_del_cloud_filter(adapter);
> -		return 0;
> -	}
>   	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
>   		iavf_del_cloud_filter(adapter);
>   		return 0;
>   	}
> -	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_CLOUD_FILTER) {
> -		iavf_add_cloud_filter(adapter);
> -		return 0;
> -	}
>   	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_FDIR_FILTER) {
>   		iavf_add_fdir_filter(adapter);
>   		return IAVF_SUCCESS;

Thanks.

Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
