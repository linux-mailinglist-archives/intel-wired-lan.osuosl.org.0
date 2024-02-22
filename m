Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0989385F9B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 14:25:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61B7441906;
	Thu, 22 Feb 2024 13:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sn1jR6RMAYnI; Thu, 22 Feb 2024 13:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5512040441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708608341;
	bh=tUynd6TIMxnNHG07pK4KEkQfaSE/h0zg4jh539Oac+4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=isK1Bsrg6F1C+3Twm6x0uGMa6I0V61DZoL6quPdV1UtNbdeMZQGTSL/2j2mnj4143
	 r63gmYJ+mkIpMhHSaneR3n1v4ZUsxA00UxhPU3qV+DQMzvUGLzvw9gBz2Zz8tDjnd/
	 RE2sNz/t5J+pQDBuWqRWj4qzw3No2NDN+t/vzi0ImO/M8WmhWDCKsPwFn45rjur16V
	 SqG3hSIhzw2PwgiVry2oDc3vqgmrz7YQQWOsQJhq2jQG6jYItxO2X4o5wZBt6Y9RRj
	 k745ssBz3UHPvV2/BZ3yQMlGSeCwqJ3gNyiQ/oZWanKLDtZmsecQRJ9q/aYk5yo+20
	 JBPHFgZ4wEcCA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5512040441;
	Thu, 22 Feb 2024 13:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B88C31BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:25:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B066F416E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id piC4HFIj3wPd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 13:25:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 912F140441
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 912F140441
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 912F140441
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:25:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="20264079"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="20264079"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 05:25:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="36327848"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 05:25:30 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 05:25:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 05:25:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 05:25:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 05:25:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S6+vjCY6Myz9vmDlbshI5h4Aw8Ip1ubAuLsw4T2dzpHBDuH6add4c+qAkg1JLEaQIkv/FFEgTVUQwzFiNjUCvHqrdllrl/vot4mYBUOVrZ+oXPjoLbSHMLo45wgjJD9JHpH1BWUg8aYWjWlWJ98n+6GpDXbxcvjb4kgYgsEMYuQgy0H04RoX2HPs0Epj/vCnjYckp4UVar7avdtZTNnX71vTYy5FR+rgTx2TitSVp2UPHDB3G8V7N8GztnxYHfq7RgzOrzTaHYPX3e92iW6qBWMm2My7Q510aAJtOlHD5j6LRsydK1xflS9vp9JBUWq2wkTJoBcTsQp4cqTz7LCYcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tUynd6TIMxnNHG07pK4KEkQfaSE/h0zg4jh539Oac+4=;
 b=LT6GRMDuaybrjOUC6H9lIOLDSMQ5HMAK3k84pSqUNhXSosnJDzNdzFgBy4C0ZaEWtltcus/xzz/zrl78hsAW/PtCvxhIHXNx30mOikbh70sowVzZT82VD+TPjDX6xP78YYexankZhB1BZXFPjwRS6tiesbrHuvDF4Xxg2xnZrGeqbpIZOE7RewUwD0Exoaxpkms36HMMNhSrvbm933Euz8U5epy0JGzf7VRlt+K2UzPh5uptpIPlSPJ2S99FraO5RCwYOJYMPuwYVQHaFcc5JI3g5I9tqNWPcTstT+kqWLZgeGNx90crnZDBRPxBLyHa2rbMQNehekHSGuBY1o7WUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Thu, 22 Feb
 2024 13:25:26 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::4710:fe84:5d93:26a9]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::4710:fe84:5d93:26a9%4]) with mapi id 15.20.7316.018; Thu, 22 Feb 2024
 13:25:26 +0000
Message-ID: <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
Date: Thu, 22 Feb 2024 14:25:21 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
 <ZdNLkJm2qr1kZCis@nanopsycho> <20240221153805.20fbaf47@kernel.org>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240221153805.20fbaf47@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0261.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::15) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA2PR11MB4891:EE_
X-MS-Office365-Filtering-Correlation-Id: 3dc3740d-8753-41e1-8b9c-08dc33a9bb49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Elo8yZ/8Sx0O3fHoxLJgCJ599V1y83CAbKcZX3yzMKyyoe5hJDMjLjPbMdCukjaOrmtVyoByArfoNiG0SeYRJSwup9wPdVcTI1zeLoxBVaUJr3HmzpLt1Hjvd3HqB7+UWuiMGXEvh5d4NpkvNOf85RsTnlQdoZC7ox59DjriouMOhQ5rDcthtePt/QoVJ7MAwXs7PKFBwYXm7Gw3V8G1QjELXVtkoDorrm1wS6/Bxvd3lWk2mMnk2cnY0YdjCAyRoxR9J52ZSf2lOliCvT+O0txY8Fhf+dVzaA0Srw89jT8aUX5dESivQI7ulz8K1ihZMWXkRy62TI9mKReppbm0pg3xBenDEQPsyXL4MuEc8xRQNXfXsRG7LxUxh8UKuTqdFDTivshX7uw0cdCi46V8BX1CHOYK+fZFZFyeWwUbaVH68ayUx39pdG8651t4nRwRmRFrqfcY2nCkNXGMO/p9IJGWAuw6aZAVS2Uf1zFUnIWg6pPdVjhDkegbjySrs7VpFs5SQjZ3BR76Xl0g0488gas6ABiYxtVhOjmCBRuLT8I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vk9ScWNNZnVidnpwQS9sb2plREdFV29NcVduQ3NNR1B4ajVUZGJtQjJRV05z?=
 =?utf-8?B?ck1QN1RJa3o5VitQdW5GLzZVb3RLeVpVVlN5K2dYb0NsR1R2UytvYTNxTjNI?=
 =?utf-8?B?SlFZVkNSUFR3dVh2TGtGRWhIRkxuQms4V3hoaW54U1psTlBRNVVXMEJMTWZ5?=
 =?utf-8?B?czZXYnlZK2JWTmRYVVhwYU44L00wWEowNGZ0eGRWVi9FV25rUjl3eTVrby9O?=
 =?utf-8?B?SHVmS25lMDc0aXk0d1pxRm9sZVRkNHAwY0VWbHZRMEJJNWZ6ZExaQzI1Qyt4?=
 =?utf-8?B?MjBjb3I3V2pHOS9pTE04RmErM3ZKK2dLeXlXWEJnUTNpb0Jzbzl4SzhwSEFt?=
 =?utf-8?B?Ynh2akRiVU05TzgzcXVMdytGM0RNQTBhcm5pRndTWWxJOHluME9qbWpJM2lO?=
 =?utf-8?B?R1VQRVZBMms0alhad25kaWo1QjBsMlRERHNXbjJYblU2ZkhoVG1DV0Vsa1d3?=
 =?utf-8?B?UHdiKy9XWmlqRjBJVHBDWFNrM1RkeVJiUXNKRWljdFBGZ09LczlEMlU1WDNN?=
 =?utf-8?B?djZlWk5qT2lkWUZCNlhzaTNFTzBXYWJ6d2RaU2I3MmNNQWRGcGp5cEEyVzhU?=
 =?utf-8?B?NkFXVTJ4WktidzlVZnQxVTV5eklVWk10VDRDVEovdFV6RWRva1NzWHEyUE9l?=
 =?utf-8?B?N1MxL3ZiTWtySUFDMXhnSE0zMWpyb0paNzg3SUl2d3hZakhDSFhwcVBqdE9D?=
 =?utf-8?B?a2tQLzFJQWFQMk44MHRnV2F4emlkTy9RUXUvQTM3NXBNZERSWVBEZTUzd1h4?=
 =?utf-8?B?WFM2VWZZdUlkM2RGTUtkc1o0aEI1c1lZS0t6bkN0blorbko0akh5RVprKzFz?=
 =?utf-8?B?aUxkdExMa3I4eE1vMEQxUGt0enZNNGFDMGlXakU1bWdNeWorbkc1eWxHT1Yz?=
 =?utf-8?B?aTVaR2lMdjBHam4wM3JlMmh5UlV0Q3FIdnR2eUtwZmhROGpyd2VOTFMwdGJL?=
 =?utf-8?B?dzZyYTc0SG1DNVhZbUovZXZNdTY5UjV4NFpzSEI0bjB0MlIvWTBTZS9KOFpx?=
 =?utf-8?B?SjJCS01QczQ1TWh3SmRTTGRZWW5MMGlLQlRhbklVbGd1c1Y5eEVjY3BDTERX?=
 =?utf-8?B?OUt1RDllVE1XRFNxTE5wRUkxdjVPTHgrVXFFclA5TG44UWFad1V5NnNpeklT?=
 =?utf-8?B?bkhPbGI4blY3dFl0YWkvZUdobktYRzg0VWRKTXNBVUV6Q3JpUVRnQVFzaVhP?=
 =?utf-8?B?bEUrcnVRaWMrcktiZUw3OVoyUWZmcU5lMFVhWEY3dXY2a3NRV1hzM1BhSzJV?=
 =?utf-8?B?bG8yRnhYaW1vdlRSbkVGWjJ2a1NxRkF2Ri9tQklIT1RrVjlXVnRid0tISEJS?=
 =?utf-8?B?R1RncEQ1ZXo1MU1EZmxNaTR4YmtlcnUwRWE5YzBUTWdMaUQydnhoRXZ2dlpH?=
 =?utf-8?B?M0ZpVm82a2p5eEEwdy9tL3VSenRtTWpoM0pieXRCakExdXJiSk5XUWJOeEtT?=
 =?utf-8?B?RnJFYzdkOTZ5YVpLUjdSWW85UjByTm11Q3I2bU12aUVoeDBPWkY2WjBLQ0c4?=
 =?utf-8?B?UE93aWlSRS9sdXJ5eVJkWkRZdUFaeExoTlA1SXQwa0YyMjNGMGNkb3Q3YzJL?=
 =?utf-8?B?aG05cWRzZVo5NmoxZThHRklITjF6bTBHc2RDY0dabExyWGx0b3hETFEwRjRY?=
 =?utf-8?B?SjNVLyswUG9pZFhBdGo4RzN5L25nZ1pBeVA2TDUvN0ZQZ1NaeitkNmR0SmM1?=
 =?utf-8?B?QW9GdHJZSlRnWDZPMURPc05LWk9VRExIOFM3aWZzOVBDMDR3QStvRWM2dklZ?=
 =?utf-8?B?WkMrbDVuUzM0cGsrM3haMlhoU3BDTU9zL0hHeWk3K3NBV2FmNkVmYkFyR3J1?=
 =?utf-8?B?YXRKYklDMHhtTzdEeFZTSjRHejJuL25RY3RKZjdXOGxyZXpKUVFSMWdJKzlG?=
 =?utf-8?B?ckpwdnl4aEI2NW92SVUzcDJHd0tScnc3NVhCSE0zZ3hnSW9iT3VSTHZvWWov?=
 =?utf-8?B?TVduMnhmK0FoT0R4NloycTFrUVBPWEJEN3pxa2x6OUF5MHZEUmxlUXQ3VXdG?=
 =?utf-8?B?OGVSbWpkYjJ6SERoR1dDaVR0U2VDaEg4NWc1WHNhY09XRC8xekJJTktibjVi?=
 =?utf-8?B?cGJnRlh0bG5mcWxlK1ZSd2lrRW5sTklvamlvT1JUTzhzM0h1U3JhRzlhTnUy?=
 =?utf-8?B?d3BjOUwrWk9ma3d1NkVDVFBsdzNDNThSTWZFN1ZWOEtzRlZJMGVOQ1YvVFRm?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dc3740d-8753-41e1-8b9c-08dc33a9bb49
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 13:25:26.6127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aNVoYz09OjLdjMyiVaaRI6yIKypGD5UoyjdzNoeSsvBHgmJwQx58QvVILf8aPlt/c1jrC9owzw0FeL1Nf68zH3rosxPnFMU+IeDoeBJrLlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708608337; x=1740144337;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FnMzeFZGIbAVklyg8H0LiPy6weEI56optHfOHcdaEos=;
 b=GiHxgCvjSsLzZLa8UAa7faax63yp2our/RBwwQUpSGiOtjQwpEGiSd/x
 R78vsWE+nvawSOvc+8j9F5YhrtqEOtuCBD3uBITzj3SWaRJWf5vZGgarR
 jKx0ph8WItbanIHJg7TQiqJEXHoIdVrjvXt5sL1KY8y6FnGUK7BpqxtbT
 aJQU0hwiZSeDHtfiVRta5a6VYD0iVSbsEIJmohiJiu+fepoaWRMcLKSZA
 182p63vCYZR0P/Ax/VPersN9BPuM3eQRWvykVCDVD6WLu8+xLZwzqyLS+
 0zAWTPKsOV3jVyo3Oehd1J5f/BW14lWuA9WsTaQZE4eZH1vlcwKNF/CYM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GiHxgCvj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/22/2024 12:38 AM, Jakub Kicinski wrote:
> On Mon, 19 Feb 2024 13:37:36 +0100 Jiri Pirko wrote:
>>> devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>>> pci/0000:4b:00.0:
>>>   name tx_scheduling_layers type driver-specific
>>>     values:
>>>       cmode permanent value 9
>>>
>>> Set:
>>> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>>> cmode permanent
> 
> It's been almost a year since v1 was posted, could you iterate quicker? :(
> 

Yes... Sorry for iterating so slowly, I promise to do it quicker in the 
future. That issue was kind of problematic for us, so it took quite a 
long time.

>> This is kind of proprietary param similar to number of which were shot
>> down for mlx5 in past. Jakub?
> 
> I remain somewhat confused about what this does.
> Specifically IIUC the problem is that the radix of each node is
> limited, so we need to start creating multi-layer hierarchies
> if we want a higher radix. Or in the "5-layer mode" the radix
> is automatically higher?

Basically, switching from 9 to 5 layers topology allows us to have 512 
leaves instead of 8 leaves which improves performance. I will add this 
information to the commit message and Documentation too, when we get an 
ACK for devlink parameter.

In the future we plan to extend this feature to support other layer 
counts too.
