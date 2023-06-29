Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83847742AA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 18:27:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE9664091F;
	Thu, 29 Jun 2023 16:27:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE9664091F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688056046;
	bh=SeGZsJBlQavpNJpLUlvMI3qi0VjSE9L84DHZLZXKiag=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T7y7laIRMTFHrvlJDGEUZ5xtBeglIhOwytrR40mgoJYCGCnkhjtU74B89MGdIdp0n
	 sSpTRzDkxmzGNJIDID3uqrZof5mPetRAeJjxim0HbyCUPiXNB/bWR/foLQfDZj4fwd
	 mQPjlN3RHuDfxFD0fx17NUE4Xt1s4MAD1uRcFa/mxIeLuEKBq8VHF8uWgkIMOhzcQJ
	 eWzJocCLTX4OVXWMw/AY92RRA6dK6RNLYecXRsEDl3MZJ+/v/llnlS1/Yq0ov2ioqH
	 vkRH0g5sAWO0C2s1GwfNdfTaqxxHCChDA5NfG78eBjL4NNYwgV2ssI+tAmWy6BxJH8
	 DWnFABmoHu5Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HrFVrCSPjJjy; Thu, 29 Jun 2023 16:27:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF493408FB;
	Thu, 29 Jun 2023 16:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF493408FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FAC21BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 16:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04513417B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 16:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04513417B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dpeoUbanJoTC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 16:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB40C4149D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB40C4149D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 16:27:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="364730007"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="364730007"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 09:21:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="747091706"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="747091706"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 29 Jun 2023 09:20:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 09:20:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 09:20:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 29 Jun 2023 09:20:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 29 Jun 2023 09:20:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sz/D1ZGSx5WDz6+PpPnePJ52Pwq7H097Tug+5pfd25wLBbW/ZdRB6ruLaKsOeYleXC+VBmSst5n0nKI7ZUIRoCXffoMlVofdmbm03h+P26tMTWAlKBsWfkVfbcMEOK27ov1QS6aN51P9876Vk5CDx6bUTwNTK7WsEhT5f/SPkEHHIJT3G1cDVDcDHQ1YPCQBWsZwy1MppNwT4Cjz1a9Lx7b1PFExyETLuRW0Q43KTp1rL9xLPaLFqeHx3w9xKKahR35GPfcjv4g4BXtS1d6PN8k3QOtJcGNdgcbtemyNLfHgMfJSCsEp27qTXdlzzQieMjCPVgORArdoT63m1o65bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9t2RJzPyxQ8jR40cVlo8q6Ne8sxCsvlVQUNpfASd47c=;
 b=W1HYe+NGrK07PItvCjfKrdudfdS72D8U7RqGcryNiqNXOwSyTkeu7Jy0pbFJMdiXXO1/iEDlp52eGGHgYFdFfuDmkcYjRxn8pMqEBPVUf+It2UG1rFLi11kzxE9rAz2QygQhvhq9nsEIhFMRd4l15piYQxcXk7wE1YDkRO3Yh4VgPnJ540sFbCPCiXB61ZH7seTda/B4OARSH0AEaWy2VyD6/ZfVTcNUTZZZq1HJbedH0cFPlNDdN8lg3ScqeFvNRW76ApJbBmNDwOzIZSxZQv/KGIVNPsiAqYlD2cBVReaDwhY5/9hKNFxwnPrsRTRmjDLAEoDNd015rmAPJEJtLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB6651.namprd11.prod.outlook.com (2603:10b6:510:1a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Thu, 29 Jun
 2023 16:20:52 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6521.024; Thu, 29 Jun 2023
 16:20:52 +0000
Message-ID: <95e93d2d-a157-5434-2688-da9a20ed3e3d@intel.com>
Date: Thu, 29 Jun 2023 09:20:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Florian Kauer <florian.kauer@linutronix.de>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Vedang
 Patel" <vedang.patel@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Jithu Joseph <jithu.joseph@intel.com>, "Andre
 Guedes" <andre.guedes@intel.com>, Simon Horman <simon.horman@corigine.com>
References: <20230628091148.62256-1-florian.kauer@linutronix.de>
 <87a5wjqnjk.fsf@intel.com>
 <b64dc5c7-600c-66db-d125-2d747a21c1d8@linutronix.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <b64dc5c7-600c-66db-d125-2d747a21c1d8@linutronix.de>
X-ClientProxiedBy: MW4PR03CA0337.namprd03.prod.outlook.com
 (2603:10b6:303:dc::12) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB6651:EE_
X-MS-Office365-Filtering-Correlation-Id: 46e664f8-9006-4b82-b4bc-08db78bcce82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EypQP6+4Ke94YvglNqXRkbMkA8dT0UWgunmIsaN35shl4VDkdnAuhY+6tw3bWJWIPJBOTHtJnVEMILDEPMsJCblhkAGhzKqOQ3BNLB4vEk96ts8DbwnlajuwRhRFZrYap3CCleR77lhATx08pa6g8je2W/AHH4Np3d4TdHfKykpB5ntn+EU3NLOHsKUNiZhHWMGKLPDcADV7vBO7FsQK48JRzSZNb3C0BblyWGyVevxk/bldB4r6mpN3/BFjuE2Crk/vqnof9HnnugplA4FzFy+W4+1eC7uQtUrw/jFAeYInILhEJJ+EYoy8+w30CDNQDQlACIHU1XHLHdW49d2nGiWC+oyWCtBkY+Shx9vdN3SeI2ptr9a6vEL/cv1CpdSqYm1UdA7lZLXZf1jDW6HKQvIqwM1AC4/dWrC65yqbWKKgzm38KuFVOM4dX1ErYEivqStDAt+vRv+KM6u1p4rgmcMB3m8pKKPsYdEIh7cwpTjznmbXsnPQcqgG7CMHakxr5VgNwPJgEoq3BnfSiC3bB4M7O3oR2dDwkYvFw7qFyJIQC6u0c7Z+ar6wBTb/3m3sbhB6ldRXgIf7joq3dSZa9AItY5vV/Xhsifg6SDb6uHNws4n3z7UT/imq3Fu94OKm5u8nDN6WhcofCaYfWQR6edWqNeDixdw8BSam4d5iq3g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(82960400001)(921005)(38100700002)(36756003)(31696002)(86362001)(31686004)(8936002)(110136005)(6486002)(66556008)(41300700001)(6666004)(66946007)(66476007)(8676002)(316002)(53546011)(26005)(6512007)(4744005)(186003)(4326008)(6506007)(2616005)(478600001)(2906002)(5660300002)(7416002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmZ6Q3NPclBuYmQ4VkpWWjZNaW5pM3o2eCtBc1RyVGtXQmJXRjlNOW5XcWN1?=
 =?utf-8?B?VDNrU215OFhxYzJBaENrbzJrdUI5ZGg5amtWazUxWmpoRklaVXo0MEtVdEUw?=
 =?utf-8?B?dSszQ1hjUTZuaEM1dG9IN0ZWWmFWa3lrVWE3Y2pjTW84QXNSMlVIQVhSaFRp?=
 =?utf-8?B?bTJ4OHkweHJ5YS92TVJGTWlTWmpqNkc4UFBNUjNlSGpXeFhSei9Ra2VsZ0Vr?=
 =?utf-8?B?RHVHTmZaYkx3OEZjbDg3c0ptaXN1N21hRzdtVVM4czhjV1VlaGJQYWJNQUs2?=
 =?utf-8?B?RWwxUGRFdUJLYUlORWV6dHM0dGtycnFZT0tCOFM1VE4xY2lOdytoVmhQelV3?=
 =?utf-8?B?Ny9YTk1YajJWejAvYlVjOGV4TVdQYUpCZnkrQnA0dHVmUUpwZWUxUzZ0UXdV?=
 =?utf-8?B?SXhlY2lZSDZ4VDY0Risvb3RoMXBIZFdqVU5QT3pZRWp6eUFZemQvMkZZWTVV?=
 =?utf-8?B?WXV4cG1abStGZ3RSYzlRenV2VmhrS2paTVNpSTZHNTFPZytCRVJrMW5nSERR?=
 =?utf-8?B?b2x2TGg1MGYzR01zd3JuRkUzdnFyTW91UXBWa2lkNlovWEhtL05WV3ZydUxw?=
 =?utf-8?B?b0ZoMGpId2FJZi9FVEVVc3J0SmtsbUZnRnZXdC9LUkFKOGYycDBlcmpUR25K?=
 =?utf-8?B?clR4eVJFVjFwV25mV29LMkxlK0ppQ29SdkNXMktVdXE4Sm5NbUpWbTkwNUtn?=
 =?utf-8?B?dzdEOHczTGx2OHB0Ri9mVVp1Q1BUcG1WYmIwUHRXNUZiclFDWXRNYzhQMDBC?=
 =?utf-8?B?dFJHRysvQldCZHg3U2NvekdXZEJ0TVlLK2ZDWFpidDRYRnNSTHJaYllScldW?=
 =?utf-8?B?ZGhGUDV6WE91QlNpU3JTREQ1bDNlVHlGNlZkQ21HcFp4ckRGeFNOcjV3aWpI?=
 =?utf-8?B?OTlvVmVleW9BV0VOUFBuTUN3VThMaU5jNXFIdlFCZWNkcnIxUEl2cVhDRE45?=
 =?utf-8?B?aTdIbXdWQWlzcHFSSmJCZ0lKSDBkMzNzekFNTmVYZkVsK3ZIYlAySFVHWDUx?=
 =?utf-8?B?Q2hRT0FuOGllcFRiTjR2am5vMEYzTGhWTTBwWDVPRXlERmwxc3hiR0FxL0l2?=
 =?utf-8?B?WEo5RG5UYWdGaWR6aUFZbktrZ1Y2aXBicytxT1hGZjF2YnNjeTBkVjV5VlVT?=
 =?utf-8?B?ZGxHNysvRjJ0bHE4V2ZXNmQ4MGd1NW5tQW5RcWZ2Q1JnWWxzYzMzWC9SaGow?=
 =?utf-8?B?TnpzeGxqRXhtNjQ2VDRkN3Z3QWVHVEttb0cvNTkwM1B5dzUxY3k2dUpoRENX?=
 =?utf-8?B?VEY0MmkveG9zK2daK25paG4yNTdlL1NaSGRIWlBPZEx4aVV2VzE0eGtSWHUy?=
 =?utf-8?B?Rk5manIveHY4TFkvdUNpaFNjQkVKQUVXV3BvMTFyTEhoZk5EdkxGZkxucWVW?=
 =?utf-8?B?UUQramNBZlkzaEtINmFVK21GSlJXQ0w4VitZT3FDWTNNNFlxODVGSjMyZG5j?=
 =?utf-8?B?UVN6QXpYazhFaVR5c2xRQUl2QVJjbll0VmJrZmdlR1NHTVZ4dkcvWS9IQnhU?=
 =?utf-8?B?dk9laVRuVksrVXoyUnpXRzJwOFUwcFRod0I3ODhvRmx3YXNQOHIxV0x4a01H?=
 =?utf-8?B?TndpVndUTVpnSEd1RFNwcmdacWw4cDNncGk0K3dhNDdsK2t2U09SNmhPaU5H?=
 =?utf-8?B?N1NvR2NYTjUxRk9WR1gxeTJrcW03cVB1UnUrTU1xUnpVRHJwTDNNY05UUUlq?=
 =?utf-8?B?ZWo5eC9DQXN0UEtORmthaFRMRW9UNnExVTRKR0ZOS0pha1dHakFYcnIzbGp0?=
 =?utf-8?B?NkhFbEFQdFN6aTRKWDVNUlJCWEFmaHRwb1pEbGs0RjM1QXlKdVg3S0VqZE0r?=
 =?utf-8?B?WXBZK05jMmRiZFM1Y2tKRVZ0dGlDdEs1Q1ZhbHl2Wkl3TWkySTZxUjNCVHY4?=
 =?utf-8?B?azFHVExWVnYrWXhxRG1IZVlTNExpZWFCM2thM2FtMW1mMVN0RFhxOEl4S2oy?=
 =?utf-8?B?VEVOM0FzMnliWjVwSytCaFJOckFQNGxUaU5mK2NzSE92WVZtWEUrT1dtU1FJ?=
 =?utf-8?B?aERpOHc0OUFKRnRzV1Z5WTFxcnY0UnIvZjhZTnR4QzFXWGFLbFM1T1AxZDhz?=
 =?utf-8?B?NXdEUFcyR3hVLzBBLzJEY3p0S2hKSDFoV1FhelJHb1FrRXMyamUxdXUrNVdU?=
 =?utf-8?B?ZHdmQldjRGNUTXdnNk5LQzFJblBLNHFXUldXNGx0dVJZR0FIbFJONWt3NUVQ?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e664f8-9006-4b82-b4bc-08db78bcce82
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2023 16:20:51.8894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /qzxsOBi2mZSyhCgBDGaqhiykf9kEyNAyJnLXiP/Txb5gRK3e87DP5dRMElF/lZBJYGQm7OsA1IxfPkF8QGKknkNlY00H6uQMwlayLT+pMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6651
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688056037; x=1719592037;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3I/yACk5CzL/oHx7hgcPW4TWS0M+W6ns00JINtdQ+yo=;
 b=f1FUFtKfXttwmxgGaU6ibUEWRDZPIaeHcgqBHNPSEr9kWkvwQWuiHsBf
 0vpXoghxkQia/GfgnlQOrfblCaOLB/XfhsKad+6kLu0UEP/01EocY+7nW
 uSiC1mrFQfqyW8yyXLk2I7ZWhELHlZeRjwtbrYYLJXWg7BRMPylyEv+bz
 QvPiwliRpCIbOyT9dQ3+6DurbQut9qM1O01ma6ASxZdl4ytotalmhycZI
 FVqCmEl9YrJi/XmwAwiG0xh4GwiUC2apbhsXmx86XoYy9C/eUkvaMoXYO
 9HxIYELdf9GZNNZ5AZZRxs6yV/C+HYo8EUjWNCIMKfw07uFk6mpEIW0GD
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f1FUFtKf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igc: Prevent garbled TX queue
 with XDP ZEROCOPY
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/29/2023 12:07 AM, Florian Kauer wrote:
...

>> This patch doesn't directly apply because there's a small conflict with
>> commit 95b681485563 ("igc: Avoid transmit queue timeout for XDP"),
>> but really easy to solve.
>>
>> Anyway, good catch:
>>
>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> I am sorry, that was bad timing. I prepared the initial patch on Friday and overlooked the merge.
> Shall I send a v3 or will someone else take care of the conflict resolution?

A v3 would be great.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
