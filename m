Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6824F84C179
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 01:45:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 901CB40912;
	Wed,  7 Feb 2024 00:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjnNIjoGaNm4; Wed,  7 Feb 2024 00:45:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1837240515
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707266711;
	bh=YCVmcFL1+OcPTJol0j+tlpjziKKBE/Ma9aoG7avx5P4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oRjhLCycPx67uELlweUMc9GlQDpYpgr4hUNp/Uy77CXniI+/VgLSO5REz1Fl1+Ccv
	 cy2yMkj0HGmxqUvYob0sc2XGjCTv0x6TAdr7BXVFMY4vITp+loiYCB99SLEKFzv2/Z
	 lIp1CzoNtPMBwD+3Q8FEtCoVx4TBU+JwF4t7csrSiWTa9+TmHZGKkZWg/lKnbYvoHs
	 7UJDrBEyPCZzkK1w9zdxCqGc0sPs8ise29UYY5p9l33YakPba5IfbaU4fwUO5qbETo
	 cdq5dtfoNvZEklC9RmSSIZAkQdMJlntZ310tekKmgwwN+RUrAv/1zpIqWaNeRlkaa7
	 mrnJAnC6DKNKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1837240515;
	Wed,  7 Feb 2024 00:45:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92CE01BF95D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 00:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CF1241EF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 00:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TsbkvTVrNgHh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 00:45:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=steven.zou@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 517D141EE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 517D141EE4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 517D141EE4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 00:45:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11965309"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="11965309"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 16:45:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="1483847"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 16:45:04 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 16:45:03 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 16:45:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 16:45:02 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 16:45:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3CD+Ze2BjNMVPfuns5vaPF1+Fsio/2AT/ydS9HDoWV/7yXInBOBPba6UcmKHMmci3ugjrJylgKQpqF6NBtJ0Ms6MKzZUi6TD4CbAghd0xnzO6EEuUMLhe5XXA8SNwOVYsUtRcuXZ1v8qfP+OVU/anB6BDphFaCNSNcso81aW+I56oJtJKoacmr8WEz0Yvay0M9k2gnYbucxSL3cuTIfxX4/nVcPptLm7a0lIM7ft7iJOz/YrKeAq0WLpnGhj/ML/d0QlFeXX6v9+DZtrakooX5854sR5qWCNu3wUdnRxyUQGsn9UzdHw+su323mx+VSd9/l27PX1UMtIprV5Ih1yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YCVmcFL1+OcPTJol0j+tlpjziKKBE/Ma9aoG7avx5P4=;
 b=hiXWq49AvVKCGZ1gQE68KJJq4t1zVUU1jpTHqeKPvwegyDLgLN7GPwsn98dHk7Cc/JkAPVzXX6cwhjtD7xJt/6DS8ChTeTI2CT43M/8x10lUVHpFC/K3Pf/cnjKf6GJCjJBzOZJBOVSs1hPjd3efoth1G5z0mz8TRwWebvQu+JVy8lSLtngJIEt53dOpVohoAp5PJPqHFLBM2t+Jc5U3TNQOpjDB2HxJcmSQmz+IaoMSTRKD0yDjbgFQREWAi1k0qABlv4b+tY3GtYa9hTYuzfIB+0fAFDmvhkLLdi2O0ACG88m+L7NyP/N2+IzKH3x7o0ZR8qbbgl01ko6htLMzKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6801.namprd11.prod.outlook.com (2603:10b6:510:1c9::8)
 by DS0PR11MB7877.namprd11.prod.outlook.com (2603:10b6:8:f4::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.36; Wed, 7 Feb 2024 00:45:00 +0000
Received: from PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::ba44:817c:5bc0:2bb7]) by PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::ba44:817c:5bc0:2bb7%3]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 00:45:00 +0000
Message-ID: <161fc274-d2f1-4bbf-bc84-98193ab49e54@intel.com>
Date: Wed, 7 Feb 2024 08:44:52 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
 <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
 <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
 <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com> <ZbznU+j2b4OIcDgb@boxer>
 <73e1f706-733e-4a2d-8897-78dd8f5905cd@intel.com>
From: "Zou, Steven" <steven.zou@intel.com>
In-Reply-To: <73e1f706-733e-4a2d-8897-78dd8f5905cd@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR02CA0091.apcprd02.prod.outlook.com
 (2603:1096:4:90::31) To PH8PR11MB6801.namprd11.prod.outlook.com
 (2603:10b6:510:1c9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6801:EE_|DS0PR11MB7877:EE_
X-MS-Office365-Filtering-Correlation-Id: edeab260-1460-46ff-3b22-08dc27760373
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IgKuWp4LOIm+7u0Wm2iZu8LmhZZH+p0i8VTogjRRyqf/bxDQVVe1uw3E5s504W0L9Laa9HjThqX0xzbAhf0Exrp/JTjIhZoqa7SfCCeQx/mX5dXP0dxilLwzn4H1IW+JXDurhESg4DltgFuiM4f2jIBeon0AUNblSc7zzbf3R9mI6aXRQYuyZ7GzysIN6ZV0PBVl8DKqRK9OPOQqzker3fDMelwHhAdorYfsAkcAwU2PgI8/9jwmIEwwxUttCZA0gW86EYwIUmtrdMNH7QxidF+N5t1Uf1/jPz+2ZY7Vyz5tmEhVZQOb0d3lB2yEDnAKKxWFQj4/gDod4gJ7NqIo5aLLMATRLYBH4QO5VO+vcBZlnVfnNYucSP81cECXhrHyaXYh0/BASIeNfDXKf6PTZJmm7EXYxnYeNJr2iVCAcrhNfWOPH+jL+jF7tU17Rw8tfZDSoa+WttByYu1aO9zOvZdgFzEDan73MYKfFQe0eCktgPAi/QNNdG6XrkgzvMjR/Q1NHUpKkXb1bDpzGO/t9KOIsWYJmP/hDfyGLYNlx4xKi2+9QvAOn+Xhf1mtRFg5Px+pXD6Ue1WaY5ppFx9AJgUR14Op4PUXXGV3qDL6NYCFc6X+WyQfD6DHUkVCAzCHH/76tVTBbR1ZedDbJemVEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6801.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(346002)(136003)(366004)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(82960400001)(31696002)(86362001)(66476007)(37006003)(316002)(66556008)(54906003)(6636002)(966005)(6862004)(8676002)(8936002)(6486002)(478600001)(4326008)(5660300002)(2906002)(38100700002)(26005)(6512007)(6666004)(6506007)(2616005)(66946007)(53546011)(66899024)(36756003)(41300700001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGhwKy9QN05Bd0F2L3lQMS8yWXZnTlRXd2lDWmZlN21UWlVGaHo3eGtjK1hL?=
 =?utf-8?B?L2NYdjFGdnl2YmhzUk95bHdsaDdObU9ITkppZ0lxVnQwR2wwZUVueDA3eHB1?=
 =?utf-8?B?NTVQSWdiSkIxeERYN2p2T25wTEtYeTB2b0pOVjZOR2dMclVRVExqRlBUVTdB?=
 =?utf-8?B?UUdLZEFaREJFMHRIK21aS1BObmF5R01oSmtVc3ZMR2g4WTE2bDV4Nmp0Y040?=
 =?utf-8?B?RlEvQUxSdElLeXBLQkpyMmVSQjl2ZXdOa3RLbldWR0hhNUZPV215dXR3Sm5C?=
 =?utf-8?B?V2lsMGVpUHQxZGRZTzNXWFhKVU1FUGdVL2VvZFZZcHRsZ2VWM01TOEVvL05j?=
 =?utf-8?B?eWt3OWJaN0prL21rY3piUmxJREtMbmplSEJjUjZwOFhJbjdJU1pDcUloeTV3?=
 =?utf-8?B?a0VoNG9Yc0NUY1RTR0JrUU9IRHNGajliN0YrcklqZ3Z3M0xEN0FrcEhhRVhp?=
 =?utf-8?B?VlpUZEpDSGpLNU84eXhkb0Z4WGRrSHVNNlpWSGprVlNFblRjZ1VvdkhBMU10?=
 =?utf-8?B?dkFHOXlva1FMNnJYMWJCanlzTVB1dE5OSC9KcUdSNWdPVkI1cGxvdVBRcHZB?=
 =?utf-8?B?cFR2eTVMaGZmWlR3UGJCSzZST2ZRK2VzVWNMVEphZUZPQ2tJMURtQjZvRm9W?=
 =?utf-8?B?TmY4MmlXN2JsTTU3MlhPNHVDTW52MEJrejJ0a3JSWmNQK3V3dTA1QjdyK0hW?=
 =?utf-8?B?MXpzTENCMjJiWTJvYzVMRVUxdVJmbEttRG1NdUtkZHJPMWw1ZmE0L1pvVDJr?=
 =?utf-8?B?ME54VDJTWjJ0bEs2UGNKSlp3dnhPQlhFQ0UyenRzWVlZRDJTK1poWnRVK1Vq?=
 =?utf-8?B?TGxQNlJ4SVpLRVpQMUc1OWMxaFllTGNQYjl0M2F6dmFvL3hUcHA2Z0daYjRY?=
 =?utf-8?B?cExwMzR4ZUd0UGFPSHVtZlEvWE9lcjNtQ1FkcWp6R1cweHJVUDZYL3JTcjVF?=
 =?utf-8?B?aTN6M0orSHkzd01KVDgvTEsrTUlhN2t3cVFwdnZ0YWVtc0xNMW9oTVIyOWov?=
 =?utf-8?B?eGUzTmt0KzJFbXpuczJRUDJEWDhhSjQ1M0o5b3k0NnNMVVdYYjFlU2ltQVMz?=
 =?utf-8?B?TFRub3JxV2JZU2NzbEtFYjJzMmRtL25FNWJPNXR2NXJIZjN2ejhvQjJLZytZ?=
 =?utf-8?B?WjV0ZWJHTTQ4Z3B1b1N0U3EycUZaNS9pK2V1RnB0a2NSWHZoTFhoLzVOR09R?=
 =?utf-8?B?ZVVUYWIyb3BiL2NiT3FEZ3NMekNITnE4bW14ZGlkNVlwQStob1Q4Ni9Vb2g3?=
 =?utf-8?B?dm42OFc2SWZKazhnZ3poZ0V2ZGpJS2p4RnFHcy9Ed3YwMjdNbW95YUxpV0Q4?=
 =?utf-8?B?QjBGZUhnZzJ3bjdPVUZOb3p4b3UzSThUSmRPVlRWZXZGTVNTT25WV0taemNk?=
 =?utf-8?B?SUY1ZHJqYjhOczk3UVZUcnBxUFBJczV0czdxS0U4MEpnSEM2NEhUVGM2M25r?=
 =?utf-8?B?SEhMUVEwWUN1MWhpaldHcG5mUkFCL3l2OHZNbWtmQ2tjMjJJbFFjNkhwMGgv?=
 =?utf-8?B?LzgyMkkrMDUzMlQwV3FLbUo3L0VKSzJDT0tXd1ZVTE5kdkRwT3BkTGl1c0Ri?=
 =?utf-8?B?TlpEb29BUXRXTisyRys0ZmlZNHk3dk5HU2dQbkxiMWNJd0FrWlZTUmpKTlRU?=
 =?utf-8?B?S1d2aE1NMWF1Q0dLNGE2cVBZeXdMUjRJbitYUUhmWHJaVEtjUVVlOVUvY0h2?=
 =?utf-8?B?eHIxY1gxTWE0WTZRSUgrR01ZR2M1Q3FoNkZvSDduaGM2NW1yLzV2MXNJVGJn?=
 =?utf-8?B?eE5qYWZxMFIrdkRpVHBUR29ualFuTno0Sm9Eb2dkMDYxL0haYzhZUEhZRTZJ?=
 =?utf-8?B?U3VSblZPRnBTSlp1Z295b1NYelpQandoZ01RdW1BODVFS0xnQlR3M2FkbERI?=
 =?utf-8?B?dEhKNm15WmFqdU83L044eTlCZXFTTXNGVEtaSlJjNkdCZjIrMldZSkdXVWMw?=
 =?utf-8?B?S3ZHYm0yMDNhc2pXTlZldDZUQTBJMFl4QmlZT2haOE0vSEZIckVQMGF3WmNy?=
 =?utf-8?B?UXN2QmJNWWVRMzE0Vk1qV3hHQnNzbTVZTXZ6YVJvd0lSMDNjRHBiRDM1azBF?=
 =?utf-8?B?M2ZmMG8yOUpFdlVuK3FVcDFOVThwZGQxRkdQYnAxQllNaDM1VHIwQkYwV2tU?=
 =?utf-8?Q?iYugsdKYyglnqPnEbfV+xBYcf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edeab260-1460-46ff-3b22-08dc27760373
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6801.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 00:45:00.0327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rX9RHeFpHAPxU7gyCbzlHYnwFpKGf5em8X4QFQ/mP86v+qFQohWJcWJFjEw/a/eN9tEYIZVLJ3WtwqZ8B2JGJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7877
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707266707; x=1738802707;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DQ6gssbc+HCg1hogE4io7L0BWn/+ev4CzEsZDinQFxI=;
 b=E39tY6fuT7nVOCCn7ljDQB32KX+PEI+Y/WkqIAMe8Weu20VvvUlu7llr
 UlL2IYoL77Ob6u9PWmwM7YRsFl8O+f6tQf9PtWTNZwx1M3GBhvtH7Gyx2
 Y4vdtjvw41yfRdvskkPfB2v9ehqUh2jixrVHOm3F98q6mMGwEbukoWzOl
 0rv1Fof9Xo+hArCefVplUsfsRWCQkH9qSEVn75o4fnuzziuu6u5++G80t
 3L1PoiN09jaJOMrkKVHKn0ZPLJL3UHqiEArTnZQJiVeZwqIzS/jjYV0Un
 FcV6jBCnqf4eNTFdbM7XyZX8LTAEIRzg1pXd0FB9KzYEgZCR24rLJKRLG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E39tY6fu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Jiri Pirko <jiri@resnulli.us>, Daniel Machon <daniel.machon@microchip.com>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Dave
 Ertman <david.m.ertman@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2/2/2024 9:01 PM, Alexander Lobakin wrote:
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Date: Fri, 2 Feb 2024 14:00:03 +0100
>
>> On Fri, Feb 02, 2024 at 01:40:18PM +0100, Alexander Lobakin wrote:
>>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> Date: Fri, 2 Feb 2024 13:39:28 +0100
>>>
>>>> From: Michal Schmidt <mschmidt@redhat.com>
>>>> Date: Thu, 1 Feb 2024 19:40:17 +0100
>>>>
>>>>> On 1/31/24 17:59, Alexander Lobakin wrote:
>>>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>>>> Date: Wed, 31 Jan 2024 13:17:44 +0100
>>>>>>
>>>>>>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>>>>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>> index 2a25323105e5..d4848f6fe919 100644
>>>>>>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw
>>>>>>>> *hw, u16 *rid,
>>>>>>>>      new_rcp->content.act_ctrl_fwd_priority = prio;
>>>>>>>>      new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>>>>>>>>      new_rcp->recipe_indx = *rid;
>>>>>>>> -    bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>>>>>>>> -            ICE_MAX_NUM_RECIPES);
>>>>>>>> -    set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>>>>>>>> +    put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>>>>>>> Looks like there might be another incorrect bitmap usage for this in
>>>>>>> ice_add_sw_recipe(). Care to fix it there as well?
>>>>>> Those are already fixed in one switchdev series and will be sent to IWL
>>>>>> soon.
>>>>>> I believe this patch would also make no sense after it's sent.
>>>>> Hi Alexander,
>>>>> When will the series be sent?
>>>>> The bug causes a kernel panic. Will the series target net.git?
>>>> The global fix is here: [0]
>>>> It's targeting net-next.
>>>>
>>>> I don't know what the best way here would be. Target net instead or pick
>>>> your fix to net and then fix it properly in net-next?
>>> Sorry, forgot to paste the link :clownface:
>> IMHO 1/2 should go to net. Then you would have to wait for it to got
>> accepted and get merged to -next and then you come back with 2/2. You know
>> the deal.
> Agree!
>
> Hi Steve,
>
> Could you please send the first patch from your series to net instead of
> net-next?
>
> (and add "Fixes:" tag with the blamed commit)

Hi Olek,
Sure, I will do it soon.

>
>>> [0]
>>> https://lore.kernel.org/intel-wired-lan/20240130025146.30265-2-steven.zou@intel.com
>>>
>>> Thanks,
>>> Olek
> Thanks,
> Olek
-- 

Best Regards,
Steven

