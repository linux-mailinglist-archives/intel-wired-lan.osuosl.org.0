Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C263B855775
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:47:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25D7382CFA;
	Wed, 14 Feb 2024 23:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id afH7bFHlUqqK; Wed, 14 Feb 2024 23:47:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6133882D2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707954471;
	bh=9cEto2ufd+/VtZAKc/WxsaivtyLbsSqC6hiIUSRP6ic=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L+H6H3f27uAC3AxRmDSbd/5ZUnrXTQLeJN5naPe8/hlcUk19X6DkvF1Rem+UFe9P8
	 v/kkujIIxzbqFtXej48LnEK5Vuevt6+qL415dkeEH3XNc8mzldDY5VJkBuKwl+QzdE
	 7YhPAzdH7rO/55RyzrKESmT29nrZ+EGF6aziqoxmT12EOcEdZgtNXtUz7FYnR2Ry0i
	 SgVlrj0PuWSWoIquWT4ZfHBbuyrDcwFjDWGR72pTti2IAV4lcoewidkL6pV23aGZwd
	 scQEcRowusDcUn6Z0EghkNbHg2EAf5gw8z1CA/ifVSmy00hamZvTzW7U3NMBkxF/et
	 dqlrdTXs79v8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6133882D2F;
	Wed, 14 Feb 2024 23:47:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 034F21BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E296E60824
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LY7fxVfrWhKU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 23:47:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C4C26061C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C4C26061C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C4C26061C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:47:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="13416225"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="13416225"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="8098984"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 15:47:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 15:47:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 15:47:47 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 15:47:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qv+WfdjoG2UjCE/Zm0s5kZF1y7n8jmsTPHzB+2+XPhnT0U7B/MMfCn3cpfPAlpssyVXfSDqEGFxvU1eZgXeeVrB/67E+KS/DUqtuk7TuqzwDAHQjTRmiWhUBpLY64W45aN4WmWh5lU8rmBS5ubnXm5KwkzJ1ICGtg7S+VSWc9JU26Rp6JostRM2myr5s/82O/Nefq000nXRGqXx2B0oUY71Nnl0tkbSWpuTE6zVJPZ8ksm3I4olx/p8hFmsX5G2//39MaSbGW9riX1WU3TYafW4GdAUN4tpECCAOj6jYheOGGxiAtKAFfQBalx0u93CTKaaR47Da6WGtCW75zuK6Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9cEto2ufd+/VtZAKc/WxsaivtyLbsSqC6hiIUSRP6ic=;
 b=ZLr4EnHi0mLRDw2Sv2GpwbiBMH2T3Y6PIwyHzrV+NLoAZ8hqJSHFTaZpV7LApPzHUU1sXX166wVqa97Gm9Cedd4CL0hFmhKt+V08p6Y202ZWmBStzXiVDPwb1mov+WHCa5J9od0ZWQCV7q4vkB8eJyMbRlvTTdhliJLtCoTVOq12M2ItoZhKx+9OmAAl9A16YHGN+FEkTfIfT/ptkLURu3av2IrEy0XuqYslhTsAFWfx80Vz7Cprrd2AWFZT+iCpdhovHWNjhONbTw7VhHCjPGXRsYe4Ytz/EmfyFFrm8PBkmTjepsCSGIv6fzBJ/FI98mdQGkBKmsE9ShpmgzXdeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Wed, 14 Feb
 2024 23:47:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 23:47:41 +0000
Message-ID: <06e2b0ae-d531-4778-8e26-c3558514bed1@intel.com>
Date: Wed, 14 Feb 2024 15:47:39 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lukasz Plachno <lukasz.plachno@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240212110307.12704-1-lukasz.plachno@intel.com>
 <20240212110307.12704-3-lukasz.plachno@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240212110307.12704-3-lukasz.plachno@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR2101CA0034.namprd21.prod.outlook.com
 (2603:10b6:302:1::47) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4765:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a540173-c294-440b-aba1-08dc2db7558f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bym05ZPzLCNUBl3BzUblUFWx1D7CaMHHin8rU5hfqZRYXfB7NgX7kidhj2TStl4lF+4YchDCOmuIG+2T9Atw0/cQ7HcOTIZvIKLV1lJ9K0ONrYjgB9SMcklj52nOodkATdEnYxTeTJPsstJ5v8sdcOuPuiaAjLHvJ8bPSndXIlHRTD0Uv5ggU5SaGs4O74QGkBdQ4P0vubCAhiVK3ijJ7F7xb2jbCjwiU8DoSUPOMaJdlq1GVg3Zr2STHbHpn2Pnnog0EcAchmeIA99no83s184eupEFJkuO8leWO3KiYW2KIJqObnbc9P1EKhZyaz/IzOvcF+YEeyR3wgzir5TEHh+qK1fZrdG2AvdXRiTmoG/K3Q5Cmlh/idznHmqXV+CatsIVKGpGCKUKcVxpykAf4YFke5U19GGhamWzm5gVXCJtH/jdCFYpEf+IAvvh56Gy52JbFFPvufNBdQ8832jv6nuzCUGrvgw142q4jiNyAbtwPfmtXBP3uwIvyHc0PS0q9geAJPQEcZIT0qkyAWoDcv6uBuGfW3rHkaVdhs5ljVkKJAzgPhXMolyd4fvK1hkP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(376002)(346002)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(2906002)(5660300002)(4744005)(38100700002)(6512007)(53546011)(6506007)(478600001)(6486002)(31696002)(86362001)(36756003)(41300700001)(83380400001)(107886003)(26005)(2616005)(4326008)(54906003)(8936002)(8676002)(66946007)(66556008)(66476007)(316002)(82960400001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am9Tb0dyRklzc3BUWEd4bFBTdTljQkoyaXFxTUlWcVZUQkNjK0NOQ2lsWUJr?=
 =?utf-8?B?Z0R5VHFwN0tKeE9pb1Z2c2NDMVlqOXVDYXd3Q3FlQkZXYytMbjF6S2ltQkl5?=
 =?utf-8?B?VUl3d2I3eXZnREZPMUZiUWppcHhPa1lhZ2pycytqZnAyYVZtU2lQQzJjeSt6?=
 =?utf-8?B?K05pY3hrRFJiSmkrVjlIcmo0dmxpWTI3dlJFOGhtL2MweGwzbmk4VjBiOE5F?=
 =?utf-8?B?WVBMVGRpMzBUTDFlRTZSRmNSRC9KVmduS05FeHN6K25zeUNyYStVdEYzeTB3?=
 =?utf-8?B?OVpVZVJJWlNGaSt5Z0hzZ3dWaGVMU0UwMEw0OVRIeW5oRUZPcXJGSTdwVWpN?=
 =?utf-8?B?SldsVVQ0a3dOd1F6dWZ5OUo3SDZsRDZsTWdLanRrd29HYllkVEhwRkxFdGV2?=
 =?utf-8?B?bEtWeGVPNFpFYmVueEZ6RXR2Z21uUDA1cExtSWZsTjJDSkYyck8xSkJsQ0JE?=
 =?utf-8?B?TDVBbDM0MHd2Zm9vRUdvWjVvTlBRbmM4TUc3M3VMNzFZaGNKMTh2ZUV3eHJx?=
 =?utf-8?B?ZFAvd3NvZkVnTVIzR21neUF0emJjK25JUk0rdnM3NTBsOWRyL200aWFpa01w?=
 =?utf-8?B?ZWZXcTVvUGlnM3h0VFdFMURSc1hZOTVFS2hUTlpXRWhsQ1dWVEVGb1BHUlZy?=
 =?utf-8?B?TE04UDcwc0ZGTjBiOXo4aDRlTmFINkF1T0VsSElOQ2dXUHlURUx0cXRwV0lR?=
 =?utf-8?B?eGZKRkFDb0phSWJsV0grdHZmbk9aU0RsZnBKUTFSM2g4cWpjTDluNFAwZEVP?=
 =?utf-8?B?N0J6dWMwTnNZbGpPd2MwU01hY3ZIb3EzWkw5aC94ZGpWaU1mMlVrV1NXb1VT?=
 =?utf-8?B?N2RCWlE4bU1qb1pkTnRJb05rNklhRzVJYlE5ZGdJSk9CVHMzT3VPY3VXZW9t?=
 =?utf-8?B?NDVEenI2ZDJPNXFiUm1oWGJEK3pEN3VRdVgwQUpxK0pUNDE4b2IwckZraUhu?=
 =?utf-8?B?dTRrRVRpbVUyUHUvbTZQeXg1cWlieEZkOVlCZFZxUkI3ZERQcU54dnFJR0NN?=
 =?utf-8?B?SnBUREhjVGdpem95MDB6R3libEhWd0h4NElvZ3BldklUL0RXQjdzTERxR2hE?=
 =?utf-8?B?ZElCVjExZDBVRkJxcUpnOWNTcURObVRUU0hRbXZSWThXdGxGV3BCd1lXY2Nu?=
 =?utf-8?B?c3B6TnZDdVIwcmppWjAxY0I2b29GVStLUHQxeUF4VUY4dGNVT0o0Q1Yxendy?=
 =?utf-8?B?ejU4MEo4SU1vUElReHJxVTA2dHoraWMrMXRjTHZ5elhKQVRqK1Nyb1VWb0Qw?=
 =?utf-8?B?MktmZDNwV080RWFXZXBuV3RrYzVTcm9Yd0RFTGRkWWR5Q0NJSkdXc3lXWmw4?=
 =?utf-8?B?bHpLLzlORlNPSGJ1ejVBSEJhdURTWlAvY3BvemszMUVsZk02UXhYUVl1NmE4?=
 =?utf-8?B?NXhHUGI3bGRHeEVwRnU4UVBFOHcrRVI3V0FZc0daaEFsTnVmcGJBaEwxRFFV?=
 =?utf-8?B?QTNrM1Y5ZzhOYVZOOS85aUVQVUdYZnRManJuYmpGN1VLK2o2d3hIaVgveFc0?=
 =?utf-8?B?ckNnK2MrenVUM3hFRENiZ0poRWh1dEpwcVcvTy9zcFJFazRHU1hPYllFME1U?=
 =?utf-8?B?NmRSM01sMDNaWEk3aGFsY3gySkdWTzY3V2NWTG1Xc0RIZkpaMHdnb2haMjFZ?=
 =?utf-8?B?RklEZERDcmMvaTQvbTFyNHNZWUg3cE1DUU5yZWNLWHBtaUZINExaNnR1Tm9B?=
 =?utf-8?B?aVJsUm4wL24vdCt0cjVHZ0k1S1JuWThSN3ZQNVJXbkh6L1AwNW9rb0MzZVFL?=
 =?utf-8?B?MWs4T0JLb0c1TzVRS1U0UGxZSUlPeWw3NDdHQ0ZnR3BGQmJpc0VRaDhoN2Fy?=
 =?utf-8?B?WXd0QXNuS2VZeUZKbnd6eS9IOEtENkFuRlpUcjFNK1ZtSUhacTBMUzIxZW91?=
 =?utf-8?B?UlZselAxTjBzUHNzai9LcTlhZXh3WElpZCtraEVrek52ZVFhNHhNV1BHRTg2?=
 =?utf-8?B?VUJzOHBQVFRCa3EvUTduRktmUXArd05nTWFjSkFBVS9HYmh2d3BYcTgxemFH?=
 =?utf-8?B?WUEvZXBPWGJlc0FoNnZDd1NacUhKWW1nOUhUVmFrd3pxdVVybGxBV0RCNzNo?=
 =?utf-8?B?ZlRRVkVyNnVFSWtsdXpIMmdvR1ZWVllJQ2Z3WjczdVpiWUdTaEtKcm1DQjY1?=
 =?utf-8?B?SzU3TVkzM1diNVBHemJDS250dFVMT1FwQ1h4T0xRVTNKdXpEMzMranI2ald2?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a540173-c294-440b-aba1-08dc2db7558f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 23:47:41.8718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oYTjEWQe+0q0attUgvgP3hmagLYtt5YlREsTYAcmVr9BGrgYnsW/zZgRjWIKM8nnKESHfPw0BZVLhRzRHHOnJdIBOkr2HHHFBm0gY+YwLkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707954468; x=1739490468;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pWOmvOtc/CaSCNOAFCA9Yz2WQFhrc4qfJzqKhir7Z5I=;
 b=fTHO9tP8YxBJoyqY61S0I41eiHPRnSN5PF6tlqZNHKl/P0dtjYyTQVoY
 bN9M5VSCjWXKTnUjAIjO6KwdeXuIyqn2SFQ4RILU9IK3gKHI/PuvdSYxp
 fjuhrJMSa5Ndf/L2UxL00ElUN30zul7c0WoAOd7tiLxiBoq7MgeyDK9ME
 +bqns4e6wynoJL6b2OKWx3i85KfTjZSqddHzPMM9wXWsHcbFQ9YUzMYUY
 mOOA9pggtk8SBz3YuPry91k/AZL8WCvRwuowk0eYi8ghnvIG6TUv9hyMv
 pn4S28wGppZy5TLixEwgMDBe5nJDSdBFKaO8KzoWb2Rm2lbLhK/llTjaN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fTHO9tP8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>, aleksander.lobakin@intel.com,
 horms@kernel.org, Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/12/2024 3:03 AM, Lukasz Plachno wrote:
> +err_mask:
> +	dev_warn(dev, "Only 00:00:00:00:00:00 or ff:ff:ff:ff:ff:ff MAC address mask is allowed for flow-type ether");
> +	return -EOPNOTSUPP;
> +}
> +

It would be nice if this message could be reported via extack over
netlink...

Ah.. well never mind its still only supported via ioctl.

Thanks,
Jake
