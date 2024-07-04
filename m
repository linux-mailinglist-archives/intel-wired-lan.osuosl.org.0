Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA2E926FAB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 08:36:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 053FE40364;
	Thu,  4 Jul 2024 06:36:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OANPY5pDvwun; Thu,  4 Jul 2024 06:36:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74C324048E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720074993;
	bh=AmU4+a2i26r4aR1BvN/GGbcisq8WOH3VOxScSw2p33A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2fjekVL3vnD4WhoFQhF1DRRRf6WPiY92g4AO9M8BSlLldaHZCfIfK5FWu+gMY4OiL
	 nmdOUkuzfftIt+q7eV67HPmM1VwVSHCj6GPATsLb+9w0fvuSkPF7mIBh875FAlv7gM
	 1gthbUWhjmuCvYw96WZgAAUMz64k0lBDjPa0Wx1GQLvHE3WxQA0UN2L1B6Auc23DMt
	 Hdy3NJ2U9U+SySp6l6e3KkIicOZU7a/7d5n2+ACGkpMhQ84A5cAWbcShrg1UgzLwJQ
	 t0Ui2hPXmVfMpeb6Z67ijbspHfHMyrqMLjY3eVHVWFQVBUKWJUZCzYMmA8ADmYhsvo
	 N81DFkeHOjhpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74C324048E;
	Thu,  4 Jul 2024 06:36:33 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CA3B1BF391
 for <intel-wired-lan@osuosl.org>; Thu,  4 Jul 2024 06:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89227607B2
 for <intel-wired-lan@osuosl.org>; Thu,  4 Jul 2024 06:36:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hxxZybeZ-j58 for <intel-wired-lan@osuosl.org>;
 Thu,  4 Jul 2024 06:36:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 24CB960715
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24CB960715
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24CB960715
 for <intel-wired-lan@osuosl.org>; Thu,  4 Jul 2024 06:36:29 +0000 (UTC)
X-CSE-ConnectionGUID: 9haj1o8ATy6wMQesZTJ1Vw==
X-CSE-MsgGUID: Dt/iO/fhRr6Rjnbra7Sfaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="28726273"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="28726273"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 23:36:28 -0700
X-CSE-ConnectionGUID: 4i5I01aXRWuY34Npdl15/w==
X-CSE-MsgGUID: pwhTDzlDSzWbtl0Tfqr4wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="84034797"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jul 2024 23:36:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 23:36:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 23:36:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 3 Jul 2024 23:36:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 3 Jul 2024 23:36:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3ReSaU4sE8YEKATKI0oa2Jm8pngw5nHPR4ol1Ksk9pfeDK3fl5ZqOcz0QvY5zHYTOaTi8Kp/aeEIKkJWwjQoI6RCqPzHqLETFXvScKeuCMJNSYh6Y+/RhoJ0ab1vxwq+VTZHat1+IyB3XcK9/51/TpkxK6kgkbxsRjvUeXNlGji8yAMeAxPPxnzkJwEK+q9vCQnl+XqeJfa/jYOPg8dx0L8/jAhvmRaeA0rJaPVyWsKZHtRn0r9ed5cDWwT6PUnDiJiBaVK4Ahf4dLL4zTUem7/MAvGbXpr7aYyfYVjnt3ydGzD9jyhtc3ESCfjHSvK+/7hocEO3F6J0v2M7CeKGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AmU4+a2i26r4aR1BvN/GGbcisq8WOH3VOxScSw2p33A=;
 b=GV4+Yz+G52TNvQhrfyZE7U6+uh5weVmL5h8umEv0BYagYcRoOldyk6CkZfrMyAotuof8Q2xZhJiHTfJpbOCvh3ZMCHRiAfeG3WnzvGiDUXENxiEGUwFp2lgFco9gVFHUO/X6DJTKDD0EcR6SoCIt8EoqdeGzTvEGhe1T9Z546pdVsbr7R+yRQtkPgccq2TH6u17IfClZ59H8JsdnLuqLvxb9Mymq69VtvZdINO+otevc/R249oG4QMyZ/raVNhYbVNcsOqBWD/fQZKaEQ3JmLELRzwZGuJUR3rKumJU9pYeQGHjv2LiWhfgiSzWX7CWgAt41mCJe5nSfN0G8mx9JJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW3PR11MB4715.namprd11.prod.outlook.com (2603:10b6:303:57::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Thu, 4 Jul
 2024 06:36:18 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7741.017; Thu, 4 Jul 2024
 06:36:17 +0000
Message-ID: <b693ef35-cdc5-47ed-b066-965bad3d2437@intel.com>
Date: Thu, 4 Jul 2024 08:36:10 +0200
User-Agent: Mozilla Thunderbird
To: Dieter Mummenschanz <dmummenschanz@web.de>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, "Brandt, Todd E" <todd.e.brandt@intel.com>
References: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
 <6be9d31678aa4d8bbe9e1ddb75a2791f@intel.com>
 <1389af76-f0f9-4ac2-9a42-450c3ae99cdc@intel.com>
 <trinity-f4330eb0-c918-4848-a40f-d178a85bd69f-1719560892752@3c-app-webde-bap22>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <trinity-f4330eb0-c918-4848-a40f-d178a85bd69f-1719560892752@3c-app-webde-bap22>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR03CA0002.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::14) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW3PR11MB4715:EE_
X-MS-Office365-Filtering-Correlation-Id: aac0ac47-417d-4c06-0a59-08dc9bf39c10
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UTVRMGlNS3hMdS9FS3Naa2owcXlTY3hpdWswdi9PZzRwb2hUd0VkbWpQREsr?=
 =?utf-8?B?NGFhTm9ZNnltaXBBSE5yR1MxMU4zU09Ja2RvajlSUDVBM3hJMGVoS0hsNkd1?=
 =?utf-8?B?b0xDVkFWNmsvT3VDTi9oRTgzNlhLZ1ZOU2NWS1JTZWdJNFo5YW9ON2pWci9j?=
 =?utf-8?B?VUYxSUl4Ukw3aFIzMFRHWjJxQzJxbmppKzkwbXBWdjQyM210alVxeFBOS2ZL?=
 =?utf-8?B?b3JsN3NFem9MSTRtNzlaYjREcTR1SXh4SldiSUFiYWFMYTRDVzRTZlhQRkZM?=
 =?utf-8?B?d0FkajFxenVic3gzb1diN3U3WmM4d052YVcxRUR0ODcvQ2NCZXBmMDdWOWRi?=
 =?utf-8?B?TDdzeWdXa3ZxUlJhT292L0JvY1RKdFI2cC9oR2FVS3NuMzNpQmsyOUNHMTBV?=
 =?utf-8?B?Vm1PTkhxYjZ6Wmo4aVRsd3h2VkxEOEp2VUR4dklNOFg2ajdHcHBNQkI5KzZV?=
 =?utf-8?B?TnJsWUhPUDJNU0tMaG15WndZYTRkVnhLaFJJME5QK2xoQndXY2FZYUpOdVp3?=
 =?utf-8?B?NXVkTEFaSlZtanNKSEFxRWFIRko1aTEvVFdZWlZTNmJXaExSUjQ1eVI0Tk56?=
 =?utf-8?B?MUhhQ3ZVZnZPU3YvcFh4NmlQdjVjV2N4TUc4ZzBXSmxvenF5ZnhNRU00cDB0?=
 =?utf-8?B?ZnE0Z1kyYXVSZXRrOWUvMGs5ejh2a1BOKys5WTd2alV2MzZqcW81VGpmdGZk?=
 =?utf-8?B?djJVaEZpeWNsU04xTlc0K0ZTRC9vaDdSYmlZMkhLNnQvbEZLYTh1QzhCM3hu?=
 =?utf-8?B?cVByTlRoajU3VUFJdHJxaFpzTHFSNmlYM1M5K3k2ZkxYd3ZTQUY5NEY5VC9T?=
 =?utf-8?B?RFdmMk10UmZEU2N2QlYzTGIzQ0lpYUpITFRPMnBnSFBwNFUrVFhWZCsvbVF0?=
 =?utf-8?B?U1hTdEkzNEs0MGZIYTRxTm5ndW1taUg1ZlRMZyttUGFFamxBaURGcVk3a1Fw?=
 =?utf-8?B?TTFyazdDRkR4Vy9yZkhMOEo3REczbFY4YVFpV3B5R2tmVmEvWWRsTXVNWU90?=
 =?utf-8?B?RlhHNEdkVFMwNm03UFIrczkzVjJBWTI1SzB0YUJGVS9vOHZRNFNOb1gyTW10?=
 =?utf-8?B?ZWdYZlhDRkY3TXp2LzBBc0doSWh3aXIrcWx2aXJ3d25qTUM5YnVWQ2tsRSty?=
 =?utf-8?B?aW56MmM1MTNsWU8yMlpQZGl2blF6WVUxOWd5bWowNnRpeDNkRXNYMmRQaStu?=
 =?utf-8?B?YkZtQ0tZUEdPOWJIdDRWengxVkNGZWFXOG1kSHFnRXk0a2p0aXFxelQrSDkx?=
 =?utf-8?B?N1dYMm04U0NmNFZwL1UrRHB5L0NMbWNmN1hsbEF0c0paNUEyRm8yZk80R1R0?=
 =?utf-8?B?SzJaTlVub1FQQ0pRd3ZTdzNBOHdTTHBmdEdaR3BueHRuL1Ixem5BTmc2d0tq?=
 =?utf-8?B?bHJWRE9NbHFRZWFjRld5WTJzcm82ZEs3YUd1ejh5VGxwaVhpeXhORWV1L2p2?=
 =?utf-8?B?cHlXckliZEg3cDN0V01DdWVOOHZlYTZSUFdYbGN2ZGJ1cDJib2hMSlo1SUFV?=
 =?utf-8?B?emtEdm1yWng5NmRaRVVJR21GL0laWEd6TlNLT3dLZkZSNzVtaHVyWFhjSjVt?=
 =?utf-8?B?NnpjY0kwdy9QandGQlZXcVM1emVTWkE4RWNXUURqNFNMNk95bkYwYWRwYTcr?=
 =?utf-8?B?OHhZc01mMWlZY3VCQjB3dkhzVzU4cHZ3bmYwR042SmtlL2dVSUcyU3dGRENj?=
 =?utf-8?B?eDFWRjc2aGhVTVlRUXpYZXN3enVXcitrbi96WlR1US9kT0pUcFVpR0Z4c3By?=
 =?utf-8?Q?lhy7kKlye+hXXEfnTk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVZQK0wvNkJONjNyaFZrbWo0RngrSGdwWWtyYk5XSDJYaFNpb2J0R3ZrZ292?=
 =?utf-8?B?cEp6L2crQjRhY2FBT0pQdkQ3ZlFvay9GSDU5SW5yV0dUQ0Z2RGw1Q0E2V0pU?=
 =?utf-8?B?OVI5cWxIcTc2ZlZFVzRXZGdUcUZnbHE1eEtaaFNBU2lsaFNjRVpQcXdSaE1F?=
 =?utf-8?B?ems3cForeC9NSkpxR0JubzJ1S1V0aVVRSU5SMlFZZlphcnN5L2w4SlJPZFJB?=
 =?utf-8?B?TjFRcG1nS2JHdDV3cE1DdWt3QjRjMGdvVkVjVThkV2lsU2dwSkxFZ0kzZnRE?=
 =?utf-8?B?NmRQai9Ubk5wZitRdlZWdEJBSjF1NUE3SmhKR28vSHBCQy9pS1JFWXFYWCsw?=
 =?utf-8?B?MnRPNHBiRzZOeExITGFLdHZZYkI5NFpOazhIU294aUlxZU9RbzU2RVhlT0Z6?=
 =?utf-8?B?WnMrcHNqWEYzcllBNlJNdGsvUnFNVGFiTFBTMHJhcFBoVGkxd00rQ3c5cDRh?=
 =?utf-8?B?N1VMTFFPaHRUc3BHT3gwYjFtV3BNNTg3RGNDckc5YlkrMGNhTk8yd3l1VHhP?=
 =?utf-8?B?T012R3YzKy9LMVRmaUdYblpqZHh6VkF4akdBSUxpbURjbnpzZWtFdkNDaEJQ?=
 =?utf-8?B?ejJpa0tzcHlpSW5kc1ZtazVOTm1qcXBHaFJMRmdWbEF0UmFiVjVHUDI5VmU4?=
 =?utf-8?B?YzhpMk01YmRST3F3ZUhIM2tkQmpKRlB1MEZmdE5JQUtmTDUrRG03cEVQeDg2?=
 =?utf-8?B?NkRXcVpWWnJLai9hL0tvTVBycmlKS3lyWWN4cUxyTHpDODVTcGtNdkU2QkZP?=
 =?utf-8?B?Y2pSZGF3aVlYL3dRYlFzakppczR0UUkvM20yZXA0MkIyNE9CZlR6cUloWU94?=
 =?utf-8?B?bndRT2ZsUEY0TkMyMThyajdMcStyTndxZGdCUG9qdU5ZV2VOMk5sV3pqRWla?=
 =?utf-8?B?bWE1RFZ3MzdkTFZXdHY5MzN0UTZCSS9pVmN4Zk0zVFpXRWdRRkpWaGdDdnBB?=
 =?utf-8?B?YzU2T0RkRkVoUWdnVnI5WkJwTnFVVkhKQ1lKSUd6Y2dyU0JITHN0azJZdCt3?=
 =?utf-8?B?WURybjhhV2RSTjIzNHFOajEzU0VsSUdZWGlEdS9jWDhGaGZ5eUozVHhuRi9P?=
 =?utf-8?B?WlVZME1vOHdrSWF1VkNIZmFkNEliWnhWTG1LYnJCelVuL1A5RjY4VUh3c3BY?=
 =?utf-8?B?ZWdad0daYUNob2NsNFFMWk10Rm42RldJb29iK3V5L0UrYmhrOU5mbFN2TUll?=
 =?utf-8?B?WjhUdU83RllqMXd4NVBOYVY1SmNkMkJOLzExeklSWXBPTk8xSTJ4QUJseE1L?=
 =?utf-8?B?VGw4bmk3aHZ0UzlyQ2t0SXFlY0plZHVSVk9NTVJZTllSZWk4a2hwYVpPcFR0?=
 =?utf-8?B?djcrQzNUSnZoMGJ5QkpJQXdzdkdTTWtMY0hidFNmSmRzTUFjbmNFTU90eG1o?=
 =?utf-8?B?SlNiNzVaUW5iQlg4T0FmUjJvNCs0Slo0SlptVzJvZzRvMVMzcHFRdjJCdEZY?=
 =?utf-8?B?U21HbGFsRktCYlQwM29BWWNoY05KdEtlb2tHVldLcEk5dlFHNEJobHhzVFds?=
 =?utf-8?B?aUtIc3lZRGR1MDhKTnUyZFNBS09GYnhSZ1Q1VldpbjFGN3lEV3Y3SlFGa0R2?=
 =?utf-8?B?SWY2K2RFb2EzK0d6Mi9hUlF6YnFUcjVLZURQcUR4QUhIODV5OWdDNzEzYzdY?=
 =?utf-8?B?Ync4L2l4S29WKzVkSkFQZEZHMUMxa1Y1TG15cXlLTlRoMzVocGxvSFRvU1Bl?=
 =?utf-8?B?RjJWNUNLcUpFZ3hXS0JST1VmWUhnbDUvZDYrMXlEdi9JRXVtSjExc2ZsL0xV?=
 =?utf-8?B?ZGExWnhHUWNmUS9OdnhvdTBPbkpUK2lRTHRDRExkaUFDQVRlTEc4dEZRZEdy?=
 =?utf-8?B?a0w5M2pMUDBNL3BzMGxCNXZ2Q2JPbFk0eGt0YzdJcmw1VW9LaXZWR3hxeWVh?=
 =?utf-8?B?WHFmZTlDR1Y2MGZCdHpBZEtDTDhncnF5cjVYR1RGdnRTd2lNZDJvZVl3ZWVk?=
 =?utf-8?B?d1kzeXo4N1lmcXprUEtYck9DaGZNU1MvSlQxbU5vRmFGMlBHZ21JMXUvcGV0?=
 =?utf-8?B?bDFDMmdIejVsOG9lSlpkWUM1bG84K1RabDd5b2I3eGp0SjdnbTk0OXJsZnpn?=
 =?utf-8?B?Tm5iSUx4NTFxaW5FZGVyMVR5VHhORVU1ZlFsajU4dG91MFVaRWFpZExqc1pF?=
 =?utf-8?B?c1JJMmJKVVUybStRUzRLQmh5T00zK3M0VGdMOHloMjFiQ3o2YWhjcndQbWUw?=
 =?utf-8?Q?O3IJXd98we6wcKPaO0hazb0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aac0ac47-417d-4c06-0a59-08dc9bf39c10
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2024 06:36:17.8515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b8lCbz9Y0rpX/pxrdsWbbA4FRj11/a6+4R3Erek21B4CfYTHJwtKaYchSa9ZtP7TbfaKZbJhDAt70oRyB79PlNMbvPoEXm5hEpuauZeBc0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4715
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720074990; x=1751610990;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eV7NnlSNFTmcZniy0gF26Hdm5MzmgowtsAlYntKjRYM=;
 b=E7Ge4A/bEjylsYIk8pejjO54SDL/4sIh7bFcZ4o3Z7i83lQIv22S+myr
 SoX/l/mp6H0BnhnhEO8/8F2YQTfyQiYVKSoNLizzovf3mSV3C0+ilyZur
 NfCu6YFjvyZ8I6NtecAQXgClvZqU7aivYxS34lcuPG5/3lxlDuDQM7OUu
 x/ntesJa5nkXL2gS6TeDSATNnIjK24gWS80Ht7RsW8wfB94g4JFz/rRML
 F4evDlRamyjiHtsJwyVzv59jFcJN8lOigaROOLQc6tq5v2U+NS7uwRCXx
 dnBilfbilr6jKW7cRypnQ0Gyy4M5h4WMOcSExdHb47ZtoRrfKgcUvbc+F
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E7Ge4A/b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix force
 smbus during suspend flow
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
Cc: Sasha Neftin <sasha.neftin@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "hui.wang@canonical.com" <hui.wang@canonical.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/28/24 09:48, Dieter Mummenschanz wrote:
> Hi,
> any chance we can upstream the patch before 6.10 goes final? At least it 
> would fix suspend on older devices (I219-V [8086:15bc] (rev 10)).
> Kind Regards,
> Dieter

would be great, do you want to add your Tested-by?

> 
> On 6/21/2024 10:55 AM, Brandt, Todd E wrote:
>  > I just built and tested your patch on the latest 6.10.0-rc3 tip. It 
> seems to have fixed the issue on three of our machines, but the issue 
> still occurs on our Meteor Lake SDV board (otcpl-mtl-s).

My understanding was that the very first regression was for Meteor Lake,
with subsequent fix (bfd546a552e1) and yet another now (this thread),
with both of the fixes targeted to help on prior platforms. According to
your comment, this patch seems to help with "three of our machines", I 
read this as those are the "older devices" that Vitaly refers to.

So just from your comment I would say that this patch reduces the scope
of affected platforms to a subset of what it was prior to the very first
fix (bfd546a552e1), is that correct?
if so, you could provide your Tested-by tag.

>  >
>  > [ 130.302511] e1000e: EEE TX LPI TIMER: 00000011
>  > [ 130.390014] e1000e 0000:80:1f.6: PM: pci_pm_suspend(): 
> e1000e_pm_suspend [e1000e] returns -2
>  > [ 130.390033] e1000e 0000:80:1f.6: PM: dpm_run_callback(): 
> pci_pm_suspend returns -2
>  > [ 130.390039] e1000e 0000:80:1f.6: PM: failed to suspend async: error -2
>  > [ 130.574807] PM: suspend of devices aborted after 293.955 msecs
>  > [ 130.574817] PM: start suspend of devices aborted after 376.596 msecs
>  > [ 130.574820] PM: Some devices failed to suspend, or early wake event 
> detected
>  >
>  > $> lspci -nn -s 80:1f.6
>  > 80:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:550d]
> 
> I see that the bus of your device is 80 and not 0 as usual, do you use
> virtualization features? If so, can you please disable them and retest?
> 

Would be good to know more to aid future debug, or perhaps it should be
a blocker here? (IOW what's the scope)

>  >
>  > -----Original Message-----
>  > From: Lifshits, Vitaly <vitaly.lifshits@intel.com>
>  > Sent: Wednesday, June 19, 2024 11:37 PM
>  > To: intel-wired-lan@osuosl.org
>  > Cc: hui.wang@canonical.com; Lifshits, Vitaly 
> <vitaly.lifshits@intel.com>; Brandt, Todd E <todd.e.brandt@intel.com>; 
> Dieter Mummenschanz <dmummenschanz@web.de>
>  > Subject: [PATCH iwl-net v2 1/1] e1000e: fix force smbus during 
> suspend flow
>  >
>  > Commit 861e8086029e ("e1000e: move force SMBUS from enable ulp 
> function to avoid PHY loss issue") resolved a PHY access loss during 
> suspend on Meteor Lake consumer platforms, but it affected corporate 
> systems incorrectly.
>  >
>  > A better fix, working for both consumer and corporate systems, was 
> proposed in commit bfd546a552e1 ("e1000e: move force SMBUS near the end 
> of enable_ulp function"). However, it introduced a regression on older 
> devices, such as [8086:15B8], [8086:15F9], [8086:15BE].

Paul was right that such lists are best provided in sorted form, but
for free-form text with just three items, does not matter that much.

>  >
>  > This patch aims to fix the secondary regression, by limiting the 
> scope of the changes to Meteor Lake platforms only.
>  >
>  > Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of 
> enable_ulp function")
>  > Reported-by: Todd Brandt <todd.e.brandt@intel.com>
>  > Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218940 
> <https://bugzilla.kernel.org/show_bug.cgi?id=218940>
>  > Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
>  > Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218936 
> <https://bugzilla.kernel.org/show_bug.cgi?id=218936>
>  > Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

