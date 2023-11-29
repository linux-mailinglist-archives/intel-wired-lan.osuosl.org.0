Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E337FE330
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 23:32:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EBED61AE2;
	Wed, 29 Nov 2023 22:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EBED61AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701297128;
	bh=g7/DLwLAxUXMrCpFnQCWWa+z+cmbe9+OhxZAXF7662U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0BTk77bCnTe952pz4Lt9Jc7lJOAhvJk200/mNdicLleQbMs0OcYmwR6bmM+E9dHgz
	 cujjmAcBUr+Qca39Nro1GsfZNMBB7HqO2Es8PMCwPPyBbU/XqBlY8X7hC/7/Jzix5X
	 SGJfvb69/DaGDQFaRctAuHoDHe5hRsLDl8jF0boSDccV0iGW4uF/5adYelEXPx/MbD
	 gaxayr80LZ/Qenssdcm5ZjriQl2nOJMdAddT99S0biDgTW4svNy9i8YlrcRQfSAoxD
	 jlwRPWjjrJddUMeLZutzJj/DMWMr/EiWDBX4cxosG+mqCn0ff+eKq03UsA9X7dfE+G
	 6hDjaY23jcrcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hP0q6vAXfOyE; Wed, 29 Nov 2023 22:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFA9F61AE5;
	Wed, 29 Nov 2023 22:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFA9F61AE5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9814D1BF356
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 22:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 64EEF401B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 22:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64EEF401B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HI_Pj6gCpl3p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 22:32:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22A7640116
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 22:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22A7640116
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="424385768"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="424385768"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 14:31:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="769071483"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="769071483"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 14:31:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 14:31:58 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 14:31:58 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 14:31:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RGoRrcTuRil3Sd98S0La4NjEqnzNzh/er+O0i0m4DacR2grIaiLHtSVJ14zv2xrHN+ZizSbaNVarEnSF1YwKFcyN9aLEX61ywdA8Pglx21lnz/f+z6D6CN10CRIEwN/TWEH09sj4AXtLYAcFTFIG9xa9tMIQzKk2eZSDYonpAt7swk4tO6/eQFOqi9d0hLHiPZ2XTOF0/YNyWsj75aKCXrLaGPst1sATOlT5MPzVM+dADVh15lFRPWznC6U/WyyrKxqsSmOxtPtr4bP1jFDgyB2r6oEPWfBox3TGCv/5nqFEsB39aCRWlqzwmljCZzajK0Tax5MqUVFPM04UyLFJBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qpyoHhdhASRuJb4RNj058Ho/k1XtN8VQrRAhjC152k=;
 b=FzmcDWjlceQXkt27xR8Qh0ZkvI9xYrWsZv0aqWPOHuenWISMxoRXlu/JQUf1ppCAVw7mM3iZC+PjKjMKCIUtKGgsNX4JmK8HIbFoTYpdaG2KwmPNMZq3WQPXgqn4A2sF8ytIAAgqDyxrfoscHLiDsZQSeV9OsbDJP40gSJwkfGyWPR0sP9xfkiKxbn2VhCeGc4tx+OxeNHi4TzweH4hASfFtzXj3EwtnSY3Nu/zbcUwN0U9/h9xL7sdKbVkj2mvvpA1koJvPl14rEnmWyiA3yBhlnZlIfsOYOFUmgNCftwYh0FPmsVQN7wGhS44cMlQx4Gi9ihnwNXmeBl0EK9ofLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CY5PR11MB6236.namprd11.prod.outlook.com (2603:10b6:930:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.28; Wed, 29 Nov
 2023 22:31:55 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d%6]) with mapi id 15.20.7046.015; Wed, 29 Nov 2023
 22:31:55 +0000
Message-ID: <7f2f2eaa-ab5b-461f-80ae-fce4133a2c1d@intel.com>
Date: Wed, 29 Nov 2023 14:31:53 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-14-jesse.brandeburg@intel.com>
 <20231124110335.GM50352@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <20231124110335.GM50352@kernel.org>
X-ClientProxiedBy: MW4PR03CA0071.namprd03.prod.outlook.com
 (2603:10b6:303:b6::16) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CY5PR11MB6236:EE_
X-MS-Office365-Filtering-Correlation-Id: c2f02333-9e67-4fd1-fb56-08dbf12afdad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xpX41O86z8SCsesVNBCBar13bksreHMJrr8sgsG4Yf30mOU5c1YtXmf1spBu2oRM0X6tecbwrITzMjkHgYRuCRI18Q4Bf6qZIHfpMVdlOW4HSEtzzqY/5hMDc3VDhhGVmHjYRKK5HKfSUOOhtT7+HjRvAwyGk0BfgWBiokyKSQLBb14WOrEIvGM4vFsTVVcaXaINcyLN9mgYVN5ih/fy4QwZXvV0QxV8KVvwDVbNbw3CfvlelP0oSjMQwDVxOFU/qowQvxuzZjklcdZt6Lfb10Fos11yW4vqCGb2ft2mTaUWKT9TEOXCnrE5m84YNkdmWCFQtTbwThue5pCfXvJ6M0RZhQmIiW9LJ/9V/YEI1urWim8lo8qBl8QizCbk7Ba9p4MVjgZVWgKmPrSCus42HXWIZ83k2OVxpbm9l3/boAoQjxJ0IkS1JTQNZqicLZkeYMoNFSQoBy0QShIoSXNh97EVG4RQZYPr5YiEAN6c23HbObtZ76XyaTp9WiUHZjWaMNpPs6MnBli4e5aRZ+V77LV7vVvU7yKQwKmdmp35kS+jzvlirL7Ws4bJAwKsGgp/97DKJKTZh2s0f4RfVcIIUB/OUtwnrx/qRiiQ35WO4roGyrdyiB0QJxLxsUjURUVkXj5ql+k9cwf+DRCRIE+udZQXlBjzEQlQADN7E01xMiNc4ljuaSU4aJ+fCaBVyt3V
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(346002)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(2906002)(8676002)(8936002)(4326008)(6512007)(53546011)(6506007)(66556008)(66476007)(110136005)(316002)(54906003)(6486002)(478600001)(6636002)(66946007)(41300700001)(36756003)(38100700002)(31686004)(86362001)(44832011)(26005)(31696002)(202311291699003)(2616005)(83380400001)(5660300002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzRoUnMyejI5L0pOQngxNzJFaXc3R2ljV3NZRCtRVTZxY1ZZYTV3ZW5RbjNh?=
 =?utf-8?B?cllaY2p3VXJ0VzdKQVZhdEw4Y1grMFNQdW56anFnSnFuSWhyT3J0eDhMZE9s?=
 =?utf-8?B?WVZvNXkwZTIydmpNVndEUG9OVEJ2OFBlQ0tScnFKTEFFcnlHWEFBUnA1OTBr?=
 =?utf-8?B?NTYvcjhTWkZBaDk1WWNwSFFHbS9udXJjWWlFekRkL3g4Ym42bzBneWI2TkN1?=
 =?utf-8?B?R1pBUjAzOFMvb0hiRG45cjFiMDZYNWhuKzBlMDNlWnJYNWtXZnZqVXAwSTFY?=
 =?utf-8?B?YlZIZk9NR1dLTHZsNktWL1FPRjhXV1dkMmRsLzVQaHdGMzIxUTFUWElzSTlu?=
 =?utf-8?B?U0s0cGk0R2RQU2dUSlBIU0lTS2JseEJyNU41VWlCT085bXprdi9vUjYxa3pw?=
 =?utf-8?B?RGp0TWRyV0FOVUN2VXZMUE4xOHhpVCtKcHhmZlMzdzhGa2VEMmRwWHpkNnl1?=
 =?utf-8?B?STRiVVNDNE5mY05EUW4waUxvajFPNGQ4Z2JaTlZhQkwxNGprY1gzNEZMY0d4?=
 =?utf-8?B?TzY4LzNMVUh1YzQ5Q3FXK3ZiZDBvMndPV2VpZnRwczNZNTFaVFg2eTBOanlW?=
 =?utf-8?B?M0Z5QVA3OTdscmp3Q3VuNnk4U3ViMzI2S21Xam9VdEUrRXQ2OXlqN2pKdU9S?=
 =?utf-8?B?WVFuaHdjWTUyM2RjczloNEhzTUpXSDdMbHIvb3NmOG8yRmVwRmdNZWZiak4r?=
 =?utf-8?B?bDA3UEN4dXB4b0luNFBycE1aRUwwOFArVzZrMFNvc1h2WFdIRitVcnRJeGdU?=
 =?utf-8?B?T1FTN2RkOEZaek9ZMFpTRE4ybDdNTHlXZ0VlRXhxRXpySldtaGFSMG5tYTFZ?=
 =?utf-8?B?Q2pKRXl3aldVb3hvQTNMdlA1YysvNmRacHY5bFRYM1FHbE1VMWczLzVyZlp3?=
 =?utf-8?B?NzN5K3VlZm5qVzYrNWY5YU5wc2wwd21naTdTR3dyRHZOdi9ielRSVUw0Uy9D?=
 =?utf-8?B?SERJUjRvUE9PZHZ5a3AreURrZm9QZUE1cVZDb3IvUXFpM2hjTzV2bm5SVnZM?=
 =?utf-8?B?TmJoN1BNNW9UTGtvVmpmK0JaajA3Ync1SGVvTkcxRVZtZ2hvQ1gvck5SUXR2?=
 =?utf-8?B?MURqa0RJN2ZNKzgwNVlJeUZjRXZpOHZGbnFHNG45UFdXZlVHSEFiY0JjLzhZ?=
 =?utf-8?B?NnJUQ1RXd05jMFJGN2pGaE1Nc293UVZzRndUWnBxZ0VIWHBzWm5MT25oQkM1?=
 =?utf-8?B?SEpNenlNdTVhNjZxbUhBTFhGTlNlMkYybUtmSmc1L1N5aGd0QzNoOEZKNDB2?=
 =?utf-8?B?MVpKbWFqOG1RbFVmTHhwTy8wbEFzK2tSWnJxNjVTakxMQUhYVXJudmY2ek8r?=
 =?utf-8?B?dmtEUEc5b1JPdHZ2ajM3bkdvYnRMcGNHL2E3VVJPckFENTNBSXFvZGsxVlVu?=
 =?utf-8?B?RHRQUlNmaTFvOC9JcWVjSGM2b2pGd3FOb0N0WGMyT1ZaNERXRElydjdVdG04?=
 =?utf-8?B?alJVdDVSejZHcjcvaHMydVJZTXlGNWx0K3Nob25Ca1k5SDRzRVpFMHdUeS9n?=
 =?utf-8?B?YkxWdnRyQTZEYUdjSHNtQlVGSm8xb25iR1NlYStaMjBrbW00dUNsZjdPM3BF?=
 =?utf-8?B?SFhFYUlxSkoxR2xvRDJwaXFQN1JJWFdzaHh4L0h2QmZ2dWVjVStvdjhrU1gx?=
 =?utf-8?B?S0MvaFpMUkhMMGlEdmxwWmRSVHEyLzlnNTMvU2gySStQcXJ4N1VhTjFtSHFQ?=
 =?utf-8?B?dFp6b3FBWDVrRXQrRWY2MmxCUTVYaVQvb05XeXpneTFvU1REK0N2cXNpOU9r?=
 =?utf-8?B?akU2d0orRFBWaEZYTStJTEwzLy83NnZFZmRQYmtxVXhMRVIrcmNYc1FBSUFD?=
 =?utf-8?B?YnlIR1FDZVhyUk1xaFFaU1plbC9Sdy85ajJJK3pmUmhJMTJOV2pFTytWSGJJ?=
 =?utf-8?B?L3QrdVZ2NE1kQnZnQ3ArS2dqQ0VpZTBvR3VyLzRxQzc3SDFjTVR3azIxc2cz?=
 =?utf-8?B?NVZMTm43cDBmbWZVbzhXeU5IaGxod1RXcEFaU2RwYWtSM0k5OXRHODBIdDRM?=
 =?utf-8?B?VTdMNEU0NTJCOUdRODJCV1R1SGhXTFpYVlhEMGNST24zeGh5cS8vV0xlQVR6?=
 =?utf-8?B?YVluTWc2Tnkyd1BrVlZyU09RNjVLd0xHSllnZ250dlJZSy9ta1Q0b1NzMVZy?=
 =?utf-8?B?RXQ0L3JjTUZUZkVkdDBrakV4SDJvWGcyUGZLY3dZZ2dINGJpdWFWVHJkcjJS?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f02333-9e67-4fd1-fb56-08dbf12afdad
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 22:31:55.0991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wh74Eh72XAMyDjfzRE5xBhoWuAdPLXOEOy8WrrfffnJJWKNRJa3Yu67quRs32mhyL1D27iuXYkWhD+x1oCSu+1iBC3Xyp5yWEbzGOgFxHxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6236
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701297120; x=1732833120;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JU+LPcWI8B6vFx+7ZLWsrSzLTx8fy+AJxHzlpMFJdgY=;
 b=jFhK9KgKzRkjwwiKDzCbV/uHR8FHNQhX7WwZr+WuixcSi6efMr2dBZqZ
 wswkKirJSlamdy8qBlbjBYyRo+SwlTcVjoSgUdm0uL+VTmkre9Pta8KW+
 /ZkyiMOoUjUob3/g8N3fp1XutZ/vMw6GcX9a//W/h7saLk7zynvL5vscc
 iUZR632zt53B0ehOoNTzEy02kJkJUzaTfVNWiq87rhNF7RY/T6TrVxATZ
 TPAKylOOSl+th+5uwqSPGHNsSo/4JZOSpLr0/weylLjewGwvA2Gv5JKHy
 HTMKQT1YVefZX+Fzv1kP+R4XQ3vHqLC0mRfMzVDu6KSZtYJ2KA1J5Lytg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jFhK9KgK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 13/13] ice: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/24/2023 3:03 AM, Simon Horman wrote:
> On Tue, Nov 21, 2023 at 01:19:21PM -0800, Jesse Brandeburg wrote:
>> Refactor the ice driver to use FIELD_GET() for mask and shift reads,
>> which reduces lines of code and adds clarity of intent.
>>
>> This code was generated by the following coccinelle/spatch script and
>> then manually repaired.
>>
>> @get@
>> constant shift,mask;
>> type T;
>> expression a;
>> @@
>> -(((T)(a) & mask) >> shift)
>> +FIELD_GET(mask, a)
>>
>> and applied via:
>> spatch --sp-file field_prep.cocci --in-place --dir \
>>  drivers/net/ethernet/intel/
>>
>> Cc: Julia Lawall <Julia.Lawall@inria.fr>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 

thanks for the review Simon! I wanted to note here, I found a small fix
was needed to the code while doing further review and testing on this patch.

<pasted as quote below>

> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
> index 7f3e00c187b4..74418c445cc4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
> @@ -967,7 +967,7 @@ void ice_get_dcb_cfg_from_mib_change(struct ice_port_info *pi,
> 
>         mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
> 
> -       change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M,  mib->type);
> +       change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M, mib->type);
>         if (change_type == ICE_AQ_LLDP_MIB_REMOTE)
>                 dcbx_cfg = &pi->qos_cfg.remote_dcbx_cfg;
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 8cdd53412748..d1c1e53fe15c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -974,8 +974,8 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
>         /* Traffic from VSI can be sent to LAN */
>         ctxt->info.sw_flags2 = ICE_AQ_VSI_SW_FLAG_LAN_ENA;
>         /* allow all untagged/tagged packets by default on Tx */
> -       ctxt->info.inner_vlan_flags = FIELD_GET(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
> -                                               ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
> +       ctxt->info.inner_vlan_flags = FIELD_PREP(ICE_AQ_VSI_INNER_VLAN_TX_MODE_M,
> +                                                ICE_AQ_VSI_INNER_VLAN_TX_MODE_ALL);
>         /* SVM - by default bits 3 and 4 in inner_vlan_flags are 0's which
>          * results in legacy behavior (show VLAN, DEI, and UP) in descriptor.
>          *

I'll work with Tony to get the fixes above applied before he relays the
patch upstream as a pull request.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
