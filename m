Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7A779291A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Sep 2023 18:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85EFD40259;
	Tue,  5 Sep 2023 16:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85EFD40259
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693932577;
	bh=a+ClOlrpldl2ViKfa/nCzJ7Hjxn1TbgqjTjoRFhscu8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZhkOxAc/fjW8W7tJmtHBH1k1pi1iEpAx+ohfk8NFue/bY7YdjBoE1gpaGpPtvJ9iE
	 5EKo9rqD8u4Q3Rb3Sr3uQUddJRQWWmETW06RsOdu18agq69aFMC0N73o7rwF3hEQRP
	 sxL2/4vQ+3J9lMzv6AoiN2yoP2ubolyGEAJq7CtgDfEuN7d0HDv5MjpI5y0ixVsRYZ
	 ullzv4/vJ4rOl8if6BnA5AZk69ftkI1BUeLJAOLqbU6KxnWFYweK+j24lYo8GLMrYH
	 15gA/UdPqGdbawMm7dpHEB346XhhZLKjFQOEVwV5nJdTlaeVI1uNVavpC/I0UihNGO
	 1g7IQn1RlVtSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q0tt6F8hXIFg; Tue,  5 Sep 2023 16:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2893240235;
	Tue,  5 Sep 2023 16:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2893240235
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F10F71BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 16:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C5F8040227
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 16:49:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5F8040227
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f10JuA5cadIT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 16:49:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F4B840235
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 16:49:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F4B840235
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="375737409"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="375737409"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 09:49:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="717941610"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="717941610"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2023 09:49:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 09:49:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 5 Sep 2023 09:49:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 5 Sep 2023 09:49:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJMbvhBm4zfnIKXksomG2VbV85iRyhgKxtcgOnLohdYY4MH+j/eFPXsADXWGwN+nLjiyHELrfBKDy9yP7cS3+4dtJScXbWIdQD9ivh55dXmWsHT51GTH9P0bJ6ts2hwI4e7y6T1NvklDk1lmqW9Fa7nHYZ9Y8gurJ7fvSg3BObEVcOhKMLWkkI/Pn+sCP70Xmnsq289aYgRrH3LNxe+pXUnPdXijbNwHp6AAbxrpzZR03FLHzBBLd5zwOCwMyi59syC8dOs9FeHrU89NcofaKtA0W6+/Sm7iLQbNwe35ejtw7DDP8vFaBT6vFADz2dZs2eNc7hVkZzBccfUW3+4GmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KANzCBMwI86gl1lZ8pPMF8+IzRiVLK2HAOMwji05jfk=;
 b=hM2JfrD/W38OTmmFMha2LGgy/op3Ox2VWstMR4cCL/uyYbfoagF4Ohgaf+JiUW9K31+4JCoicGuiQKrQv5+WtxyOD0gMi7KHil69wLwqc9iP6i2Kbh5S4xsAUyDJAD9ocbBSLiiJ5QMP23jy7oalbg+ioJxsmHPxROc20dZ0LaazH05p6OFCaIeIlKHjBDmvQpcSesMNqdQ8sHnC4rpPz+mgWXBBCDjXf1qiai4bC3kkFhEtuJhF5vaGWNBueqzvkd2U6v0EWoAUnDMgDCKZGRLMKi+5gwt4qYpMmvKdFKzFWdKUCCMQWfBM2yRRnwWB2GhLb83Og9S5J7lvJPd3Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Tue, 5 Sep
 2023 16:49:25 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6745.030; Tue, 5 Sep 2023
 16:49:25 +0000
Message-ID: <b6e96658-a3fb-dfe3-a6a8-f5706c6720df@intel.com>
Date: Tue, 5 Sep 2023 09:49:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ahmed Zaki <ahmed.zaki@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230901170850.3493782-1-ahmed.zaki@intel.com>
 <20230901170850.3493782-4-ahmed.zaki@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230901170850.3493782-4-ahmed.zaki@intel.com>
X-ClientProxiedBy: MW4PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:303:8f::21) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB6141:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fff5818-12ef-43ed-feb2-08dbae301027
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HR+nrpggx0O+g2f2hcwmp7/yPSXbD5hlRAo95hA/l6slQ9SpBcbheiSzmF45Sl+5zJbmXcoc1fL43q3a3PZoHR4VQCUZpMM+faXju7LfyEKT2dnIYKmaxGTQYiSGOAo+GOw5+PRyNER+G4A5eh0w7KnmwTlV5svmuu4ljZ8DljbNOwid6k/5ptul6eIOf+JCCBuWOSio4ufUhgYXko0xRNLEuILpd1lFfx/lAm84sLjK11ukHil5sCnDtMYL+Xu4V3LShyi/GKllnoR9IVDPBW4wrv/LypSLlFmycyl8aEXtS9SFX2Ypd1z+z6EuFw+x9GV1FzTbvo1sDXHWPgI9v7o1bEKhn2wD7Qwf9y6JBuihBvJgrrLEd195SVqbGDmTeslYUwLQHBCb3Pm1qzhWuUOLPOxhL/34EUgrPuvo6OR4Ko4gqhB7e89gdNStFatNVdZFRn70QY/ABx/78pqLREsEvElp39X1oaR21oQrJ2kOZEbH2eV1eH6DzbPykBNO3BiP26IvdHqoLiX5Ukd9wls6mCqTywQ7sDIp2bKc8mJgawCRy6CwaaZBI1A/IKRFp09Y4UJQT1Md0gWvHmbOXxSLp7bFaOyIzphAPOdqevgoPdhJ2+XUGbQFOTW5O/lIJ08bDoBsyxfE2E7rmiiqWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(136003)(376002)(186009)(1800799009)(451199024)(41300700001)(26005)(38100700002)(6666004)(82960400001)(86362001)(31696002)(478600001)(83380400001)(2616005)(107886003)(6506007)(6486002)(53546011)(6512007)(66476007)(66946007)(54906003)(316002)(2906002)(36756003)(66556008)(4744005)(8676002)(8936002)(5660300002)(31686004)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWtPU2tEWStJTjZoK28vczR0WkdycmY3Z0M1Y2JUU1pnaWZINUhEZXIrNjFy?=
 =?utf-8?B?M3JWZGR2Qm5qdjRYaVJZRDcwOWVaMzFibDl4eGNIYzlSQm9WYmVISjMrbExE?=
 =?utf-8?B?WnJRNTd6azFFb2l0YzZoSm9XSGdOa1ZLYnB4Y052b2tHUjMxTkM0WWI1ZVdO?=
 =?utf-8?B?TEFsRkF2WkkvdXk5b242cWxFWHU0c3FQN054V1VHYWYzRFhMOEZqaE5qQ1Zu?=
 =?utf-8?B?aUt1WURoUGlLYlM4bnNRTnFxRTJvalNtaXV0OGJEYkdaL0s2M1d4OHR5RmFM?=
 =?utf-8?B?OCtSMmVZNUZFd1N2SVYyb29oS2JnWXBKTk40R2lYcGZHclNZUjRxbSs1VE1o?=
 =?utf-8?B?RDhkQWlaalVuOFpTKzdSbkcwaWQ3KzA1SiszK1l2MVYvRldwZlk4YmFlUWZT?=
 =?utf-8?B?S05sYVpXK0t5ZG85c1Bqcm8wVW1JblRibldObHZqdlg0WnZaTTdocmd1QU1u?=
 =?utf-8?B?QzFwZDlvNmZLWkVUL3hZNFdzem5ySlA3ODRnNTZpMXp0eXVVa2JNRTVpUXUw?=
 =?utf-8?B?TVFpSDdVVVUzZ0JPeTBlT0N4M2RMS0lEa1IyUTF6NkVwbmlLUWMwSHYvUzFV?=
 =?utf-8?B?K2RuT3FpM0w0Smg1bDVhc0Y1WGtSekxUeGJWcnlxb3hiYk9oanF5Qi9mR0FM?=
 =?utf-8?B?dkxyYjFzbGJ6Uy92RXpIY0wwWEFuWVJnYk0yNTdJakZtQW9rK3FhQnpEa3RN?=
 =?utf-8?B?Smlqa1J2NGNmREVqZS9FdThrWjZLUnB1R2Z4Y3JvTEhrNnNJSVdqMUdBMnhy?=
 =?utf-8?B?dTNSNlRNdkV0cEMwQXZCWlYvM3B5eFlKR0VlQk9LQXU1MDZ6eEtWblMxUlhn?=
 =?utf-8?B?bGFUQ2NLbGtEaXdaY0R3Q1Nqc2tlMkJHT1pINE5FR1BITmhjM1JhMlI0VGd6?=
 =?utf-8?B?dTJQTTFlYzVuWW54MmJWRmhlVGM0TnBTbzRqNzROTkJ1MVpIQjBRUU5DNFFs?=
 =?utf-8?B?YjIySXJQK25NKzJHbGczcFpKNk0yUXpaS1RoNkdzbFZuTG1LQlJaRDJpUVdT?=
 =?utf-8?B?SjhLdzN4TUYwMUVHdUd5RDJkYlQwMXRBWENIYjY1Mmt2MFpXWUowVU5iYWty?=
 =?utf-8?B?TVVkOHhpcmdBdWJZdEQrbmJBR0EyRzZETTAwWktkRnNrNU9NeGVMcGlkSGdl?=
 =?utf-8?B?U2dGMUV1YjVoUTVyZmVyTndxamg2eHdaMDU0b1FYS2JzYW1XNTRpMGJpLzZ2?=
 =?utf-8?B?MDgwYVRXeDZiMEw0Si9KaVZZYkVMY3NSeDUvd3BpOVRCTHJXOWNzajBSVGdG?=
 =?utf-8?B?QUEzS3hVZHphQ29pTjVVc3hYTjhGaXRadkhXTkpRU29OUTB5Z0ZYRjhPcnVR?=
 =?utf-8?B?UzRKN2c3K0FtL2lrWXVtMkc4dHo1SmhtbHQ3ZVRNVk5uZzhrM0paYTIxa3NT?=
 =?utf-8?B?NWdjdmFwVWJoNTRSK1RBc3hoY0srOXVkSzdGTnIxeDNzSVQxei95cHVtZGxV?=
 =?utf-8?B?MkdCQ3R0UXMveVBLWkRSck93RTc3K25sd1hKWnJZUlpIWE1EU1F5MGZLYkZP?=
 =?utf-8?B?VFV0MjArU01Lb1I4RUZneTJzdVdhREU3U2Zwc1JCTHpwNTB0a2FpK2UxQ2ts?=
 =?utf-8?B?Sk8yUzBIazVUUkw4eTJ1TmtZMTlCSzBSWGp4QU9YSmR1Y3BxL3M5bFdmQkgv?=
 =?utf-8?B?N2VjSFAzellXeFNET20renBwYTNNMURhKzZ2QkRRYWVqcSs3MWV3NEVRdmJR?=
 =?utf-8?B?WnBUQ2FzbHhUSFhlanBFeTBLNk1GcnFOWTBiS3dOS1BXMjNrRk8weVFKaVpQ?=
 =?utf-8?B?QzZRMkNxK243Smk3b2p3UFdZZlA1MXIrY0RnUVJHSElMVHhKWU4zU1Jjcmxs?=
 =?utf-8?B?Y2Vxc0RCMmF2Qms0OEdoQ1M5MjJ2OTFBUWNkVXd0YmY4MGNkZi9TUE1UZzIz?=
 =?utf-8?B?TWp1MVhyOFRnZFl3SCtxUEtKazdTK0NUZXRQcnNZcS9nbnNGdGdHeVYxdXM1?=
 =?utf-8?B?c1c2S0NIdFc5N2lIMVdtMEdSY1gxenJvdTYwY2hiTlBEcnYyRDVOc25hN04y?=
 =?utf-8?B?bmV2TGRWUnc3U2tDZWhOWFNXUEY5U2dVQnQzOCtTdEhzYmUxN2R0ekhyaVdF?=
 =?utf-8?B?QVFGNzhDN1R0ejl6cnBFRzdSVjhITmpVeE5ZTm1NZE9WWkgyeHBYWSs0NVNX?=
 =?utf-8?B?dzBkZUdHbDFGRWhYUHFHZGgwd1NXaWNQdzJSWUxlalBaZmN1K0JPUlFMYkdM?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fff5818-12ef-43ed-feb2-08dbae301027
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2023 16:49:25.8259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P/pMxKc26UPfJ0Vfw9Iqj0LGaI1Qmjg2VhWyZazwwKBl05fjLo9+eAxlR4li2W7yUdKB2Bk3bN4uaIaftZSIet0mPX/v9D/RpZ0nNc1wozI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693932570; x=1725468570;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z30k3m6IOCcqfb1YmxjmL2Dk54dMid6oJdZSHsyuwzU=;
 b=jxc9VSM2NanrddeaJfT99Zv2K6OrDIMudtoUrP4AMdDV3nxWS6uSlIWW
 /ArEN3qSJm9BIzkqpiSMdrUMatQTlyJfpnCkzzGNQa6RI6Nv1JBgfPhW5
 749UG/2g+HlSY7CkMsBKc94sl5SuxLFy6iD4o2eDq3HesISO70WXnxCmZ
 IsKcxxDAYCP/cTv6VXFJ7Y6R3ex2PW8pxXskqfEd7XF0xj8SiMXAiEsr0
 8ZUSS8NLYXgqwG9xGdQfW+1r+iX4h0wBuH5EJUumL9ytoJbXGYBbU5jt4
 CdCrde+fp5tlQsCsBbzCP+bvbTu3vkkikLNIG6KwKNxbAtcHGu9bW0Xcx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jxc9VSM2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/4] ice: Fix VLAN and CRC
 strip co-existence
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
Cc: Haiyue Wang <haiyue.wang@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/1/2023 10:08 AM, Ahmed Zaki wrote:
> +/**
> + * ice_vsi_is_rxq_crc_strip_dis - check if Rx queue CRC strip is disabled or not
> + * @vsi: pointer to the VF VSI info
> + */
> +static bool ice_vsi_is_rxq_crc_strip_dis(struct ice_vsi *vsi)
> +{
> +	u16 i;
> +
> +	ice_for_each_alloc_rxq(vsi , i)

ERROR: space prohibited before that ',' (ctx:WxW)

> +		if (vsi->rx_rings[i]->flags & ICE_RX_FLAGS_CRC_STRIP_DIS)
> +			return true;
> +
> +	return false;
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
