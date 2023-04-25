Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF90C6EE65E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 19:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0470A61473;
	Tue, 25 Apr 2023 17:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0470A61473
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682442561;
	bh=vYXvuMSocx2QgReF4KL1lk6HGzuPsJVLqaWbmBWGxC4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cfOQ4GITSdNPXYXC0gj9oAKJL21uFSICVuRhpbcXmG4F8UuPb8xa9MIOtD+uC7bW1
	 s3DWK6pCfG9/dFL1/nHrXK7ulzSnk+Ym/h38XYCOTx/zbqKZrKHtYI5AdFto90TSus
	 TBnMhoLtxLNxmzUklHFk0X6kVB1OoOPVF0c5L2OE+ysQFOMmxz3bXLNgoBc2d2UoHQ
	 i6i2NhAR/TleRyAg9OZl4QFZpCS77C2s+KEY/yOG1WXlmj1b/fiFbbsBhQoO9ic90M
	 wOot7MYYMz05pgzpviPWv5xkkYeyHZiicZxEKPfamTlpAv0O3fmIAPW2WyVI+V10kJ
	 TC4KiYKABuPvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wwwkSF-AHGsR; Tue, 25 Apr 2023 17:09:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D016161458;
	Tue, 25 Apr 2023 17:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D016161458
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7662F1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 17:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B292400D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 17:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B292400D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V2Q1fzFdx71B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 17:09:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EFD841175
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EFD841175
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 17:09:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="326438474"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="326438474"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 10:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="724086339"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="724086339"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 25 Apr 2023 10:09:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 10:09:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 10:09:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 10:09:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YAHN0C6OmN0HU+3xGRJiH+FjyDY6RdH4YLkrel2+PtrVZZsu2EK8CbcZpRnkPzcSRq1itabeQdBGfnkKbyA+e+IKMJ4WyUsmGlkW4+AO4FayGG9kDQIkVqntbQM5xklL1DH84u6pcB+Vlan/8mR+P8H6fruqN/t3SnGb+DY22g4hnkbnG12ZjnxOJgJv2Eomcae3KWr4hMHBzHJgLUQrbD+ebExqFZPBupeAIbPNEYNcWeHQ8N+3Nx1pxXQL2wI726b8xsVC/AKcuAFQYLaCB5X2j/0DAwzRWz91vQ7DW2zwfmDxEymgqA7HJRz1diL9SNkXtB+9BG377milLJnAvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9oxxfQmB0+QmaNL/lJJAf3Gw8bShQzKPJshlPzFx3jU=;
 b=C4U9b4o29qjpRIbmj/WRhnvrkE4lzUpMigtAdq1+CgXDyNT7tNfQHZOiitH7H78d3dfJ+zmZ0kyiLWcos54VqSMeOJqgRTA5IW8dFxbeXRezPm6EOKBlla7dNB0Ud54/m2qZa1LOm0pGA9n47wJx9fcL8410reAZxpWSPx72NMitAfbkG48rL5T52DaMVmjl/bisG6kpWVlarwa4AGUrOQu18tloguWwn7n5BURHatoJCXXjrgV2d9uC9ugnuh/agnacA+Wo7/hNzqGnyQD36qE67+wT61fmmrSvsY/Ss4lYqGM8QaYddPiwrKCt6VUL+JEjO5TOesItMIwmcLEcNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL3PR11MB6506.namprd11.prod.outlook.com (2603:10b6:208:38d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Tue, 25 Apr
 2023 17:08:58 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%6]) with mapi id 15.20.6319.034; Tue, 25 Apr 2023
 17:08:58 +0000
Message-ID: <1cccdb84-af3d-568f-4737-9991d2fb22cf@intel.com>
Date: Tue, 25 Apr 2023 10:08:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230421073006.3009216-1-andrii.staikov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230421073006.3009216-1-andrii.staikov@intel.com>
X-ClientProxiedBy: BYAPR08CA0058.namprd08.prod.outlook.com
 (2603:10b6:a03:117::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BL3PR11MB6506:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e9f9568-2127-47e3-6b74-08db45afc205
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I9s6DNSz8yoLo8RzZgYT1kK7bK7RQVrkp1ZI+c2FdUYLtocDFBVOVUt6LCgOeFd1clvYFGzNPwMHUyf154qugM4NdXVRpHeXQUv4iQHXC+WfGGpllAUcvVSg/tSa4hR9ZN55Yg9dXyR3xdHGDvnRVoRgJjBxV9Mgi0AyQ7aAOpgQYiA5bL52Y1lMBAxKNYDz9y2nf9Cp3nfwAiJQfxlFTm5H/uSk0cmHET++o0YFEZ0P4EKVNTLX5gZ2hmqx6qJzmMbDTCQogDCYH8pOFFf/2AfYrlMY+evN/m4/cKB3MLEk6ghIcvMW1mr3ipt1d/tezeDqABwgkXbpUYmSJ+048WZcZZAnMC+gUXf7GFxytxSQPGy1vhwpFlKTBYYOZk43qSwxBSiM0n8r5nJL0Qda3pq9UjcSAFGvCp9qrXZm3/28txpqG1/Ra4bMgOcb5LmflRKO8pk9zObu/HUaGu1PaT2iTBenzRadqHNxTkf7AHKa1Km+cjeO22zBUI6OYS0A9PWtobJelo6Cd+o/4fxVWXtTzGOOA6L3eo/+RqLnQnaL4TNyHnP9XLn0eOFQafxZ1t0eQTzXRgcAoPxoNcObn49eOg6aJajVV9v9I1v2yHO2AllunNMTuQW7cqD4x5yFMrg7r7FGvv7onj8WM4tebQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199021)(66556008)(86362001)(83380400001)(26005)(186003)(6506007)(6512007)(36756003)(53546011)(2616005)(31696002)(82960400001)(38100700002)(5660300002)(316002)(8936002)(41300700001)(8676002)(6486002)(6666004)(66476007)(66946007)(478600001)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzlIejZCSWVWY08ySGdsY3I1K1RrSnZ6UmxidFBhVWhndStCUkttc0FjcjRO?=
 =?utf-8?B?Y1pPamJYNGNCQVVna2xHeWRmQzRiUDJKQ3hpWDB5aFNXWUZTRFNTOGFiemZZ?=
 =?utf-8?B?ODJYd0JNK2g2SHExV1gyVDhTMEc2WmhrYkJqLy90bkQwZTlGbGJQeXFTZjZ6?=
 =?utf-8?B?L2NycW9Ld0ZTcG5pc1ZVRnhaQnNOUFNMeTFiOTVCK1ZXakNnS1c3eXB6Z3d0?=
 =?utf-8?B?NGxkSkRMdWxjUzlBdUFCZnlwbHkxdmx3bzhrZ1N5d1V0Q0xJRUw0elRwTEYy?=
 =?utf-8?B?QmxQZFFnNzFFRi93aittLzZEQlltYWRuaHVRNEpjQVJ5ZVE3OElXK1NRUS9X?=
 =?utf-8?B?YXFTSjhPUmtrUExrOG5qdnNNVGY0VnltVWFWM2RQdy9lb0NVV3cvb2U2UFRN?=
 =?utf-8?B?Z2tuUEY5YmZVaHFvUW5DWVhEU3NHaG12dEJQMlg2U0ZMalJpd2p5bDFOS3g0?=
 =?utf-8?B?L3M1cHhNQjg4cVpNN1lBcEQvWThpSFJMOUZLWHlSNWxYTXhiQ2s1UmM4MDRw?=
 =?utf-8?B?UE5yQTNNdngrN1J3QVg5cDJmbEowVmpKWDE4RmZBNVVkVm5GRi90WStVanVh?=
 =?utf-8?B?eXJSZTBpWWlJQnlER2lib3FtUkRYSFMycHRBK1Bnbk5zVUJ6RmpRejBUbFZz?=
 =?utf-8?B?ZDNGQ243NE1aSGNrc1cyS00yQVNKN1NXK0F5ZjYxY1RuS08vMHZHRTBYT0g2?=
 =?utf-8?B?Z1NhR1prbHc3Tnl4V0E3alFFRWlvLzJuNFZvQWp5UStFRVRpRmY2TFhGWlNy?=
 =?utf-8?B?WXRlVjM4UGt3aHlMZEhoMm9VWnNra3pkWHEvakZpc3puNHNYUlcrTjFKbFEz?=
 =?utf-8?B?VlRyZkEvaXlHVDRtRTFQNjNGTkppSlpZMDFCaFJzUDQwVmlDVlFRN1I4czJh?=
 =?utf-8?B?dVY1a1BaN3A2ekltNlppcUxrcjFKbHhvVkM2RE43dHVVanhLbGROYUpOMDBh?=
 =?utf-8?B?b2Fac1UzWkxnbUUyeXRDTkx5UVZVeGdtclU5c3VQbytJR1JPTE1kQU1lVTF2?=
 =?utf-8?B?RUg2bGkvOTZXdnd1VUpFY05aUXJROEpYQjBRNkdSeVpnWVoxais0MzV1OVp3?=
 =?utf-8?B?eTM5K2JZZXVoUmFtNHg2Ly94U2JBcHRmV25pa1IyM05ReWNwQVdQMmtYZld3?=
 =?utf-8?B?MFhyK016UUdTSmhWcGhUbTk5b1lXVzliOHIweE1xMmVScVpMQVJZdW00a1Bi?=
 =?utf-8?B?eEJXUWgzdUhBMTVLWlp2em4yb0M4TVZ2Y3krbEFmUzA4cXZjVnMydkJRZGw0?=
 =?utf-8?B?ZXNEMnBkMnFMS25kQzdoai9MUHU4clBUbWt1QlZhUXp3cDFENkJRTzdERndo?=
 =?utf-8?B?b0doU1EyblpOakNwbHBwTHphck1rRUtnU25MbXVhTTZDMDVEU3BhOG9qNWVT?=
 =?utf-8?B?bjFmNjRiNDlkaFBPdnNYSlFEbTE4UzFaOEVtZjBucTkza0lLZzlZQWR5Mlh1?=
 =?utf-8?B?ZCtDRDNUZDM3YnZ1MWlLdTg0SmNOSjYvV2Zmb3grSWU2S01JaXA4THRqTHlY?=
 =?utf-8?B?aFBnbHZpZ21ZMm8rVG8xa0J1aDVHeUNLV3ZsRms3Z05MKzNaMzJZazV6RVNq?=
 =?utf-8?B?YWxYSmhpdllVN1lKdkVDeFRPWExid2FPQlJaNldKZzVBT1g4aFU4R2g2aE9S?=
 =?utf-8?B?K3hWQWw4MDYvRlp2Ky9FbnNDcTA4TlEyTlhtMGsydEs3UG0rZ1lOTWdqWHkr?=
 =?utf-8?B?c2hFbU9vNVVkZVQ2TjlSd2habHJxaGR0dml5YmFFY1d4bkZGbVdKMVJhN2Vv?=
 =?utf-8?B?YWsvVjdKd2YwOWNtOXBDWjBLVHUrVzdwL2QwUmtZZ0R6b29RYUJQOFN6K1NU?=
 =?utf-8?B?OFphTXlUUFJHdVc5eHU2eHEzZ2FqY2J3Nks4a1E2VTRXYk04YmQzY0dGYmNn?=
 =?utf-8?B?ZWRpYTVzQWo2cHBBdFJCRmxHRndqN2o3bFJrZUx0WkxkS1ZNMEc4K3ZDenFV?=
 =?utf-8?B?VFZxRnFDQzZUQTRSTnI3RStKczY4dUJaSXVJRm9DMDZ1d2lFM3BTTUdCb3JP?=
 =?utf-8?B?U29IODhYWUxWZDQxMUIvZzZEdFp6N0l5Q2JxKzZyOFVNTXAyeVgvYnFBWmIv?=
 =?utf-8?B?SzJkUHVTeWZiSTRrSzh0SEd3YVBrZHNEam85OWdoSmE3UFBzZ0FSbTNsWGxw?=
 =?utf-8?B?R0J6R3RtcmRYZG5KSUgyY3AzaUZ2K0trYU9Xck5hcEF4SzRheWIraEE4TDBx?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e9f9568-2127-47e3-6b74-08db45afc205
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 17:08:58.2957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5FS4ADMRerknQwBnwHbt+Lev66+k6CqwyGSSlnV5mYIUN97I+jPOLjboPqi5YHaC0bmyR90Hjn9wTYpadV+T8o3tGdontV9y2VmvtDDRhRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6506
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682442553; x=1713978553;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sSEWeEmQW6KuRfzh+HYrm6HEj9nPqWLeEAN/bi5R4ME=;
 b=bQRolCxqmVlR1/LPwCOCbIrr9uwcVewxJbceX7nWs9XvLDdN5kLh0eBr
 Ptx7XCaPlG+/xMhmwy5kCVGsWMhfGynqs5C5C8iB2raEoEaLzwaricN1W
 epS2jD29GAFZQWtohPLiRtMHFu2QnyGCcaQ4mi+QoO5lSUrju03hX4ix0
 NknlJwB7rW+bBUkeVA7S/SIwKR7rakS0th2FiN9YX0y7gngRhXs1/Vkpn
 Ztir/794IzulKvZm/b15/31EbwXkdUf/Pc4UOzC09V4rbqLSGsokgQM/5
 i59PdzsiH+gB4d8XxWt0c3DtMrX1HBbwP0g65SNrvMrNCRR3nNcnRiQmP
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bQRolCxq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb-linux: fix array size
 overrun
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

s/igb-linux/igb

On 4/21/2023 12:30 AM, Andrii Staikov wrote:
> igb_configure_msix() and igb_setup_dca() functions use the value
> of q_vectors number without checking if it exceeds the MAX_Q_VECTORS
> limit. As these functions read values from an array, there is a
> chance it will case an undesired and undefined behavior. Other parts
> of the code do this check, issue a warning and alter their logic by
> using the MAX_Q_VECTORS value in such case.
> Fix it by introducing num_q_vectors variable inside these functions
> which value depends on a check.
> 
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v2: Fixed the commit message
> ---
>   drivers/net/ethernet/intel/igb/igb.h      | 2 +-
>   drivers/net/ethernet/intel/igb/igb_main.c | 6 ++++--
>   2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index 015b78144114..1eef5022f749 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -45,7 +45,7 @@ struct igb_adapter;
>   #define IGB_MAX_ITR_USECS	10000
>   #define IGB_MIN_ITR_USECS	10
>   #define NON_Q_VECTORS		1
> -#define MAX_Q_VECTORS		8
> +#define MAX_Q_VECTORS		8U
>   #define MAX_MSIX_ENTRIES	10
>   
>   /* Transmit and receive queues */
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 274c781b5547..0b46268cb264 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -865,6 +865,7 @@ static void igb_configure_msix(struct igb_adapter *adapter)
>   	u32 tmp;
>   	int i, vector = 0;
>   	struct e1000_hw *hw = &adapter->hw;
> +	int num_q_vectors = min(MAX_Q_VECTORS, adapter->num_q_vectors);

RCT please

>   	adapter->eims_enable_mask = 0;
>   
> @@ -913,7 +914,7 @@ static void igb_configure_msix(struct igb_adapter *adapter)
>   
>   	adapter->eims_enable_mask |= adapter->eims_other;
>   
> -	for (i = 0; i < adapter->num_q_vectors; i++)
> +	for (i = 0; i < num_q_vectors; i++)
>   		igb_assign_vector(adapter->q_vector[i], vector++);
>   
>   	wrfl();
> @@ -7149,6 +7150,7 @@ static void igb_setup_dca(struct igb_adapter *adapter)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
>   	int i;
> +	int num_q_vectors = min(MAX_Q_VECTORS, adapter->num_q_vectors);

Here as well

>   	if (!(adapter->flags & IGB_FLAG_DCA_ENABLED))
>   		return;
> @@ -7156,7 +7158,7 @@ static void igb_setup_dca(struct igb_adapter *adapter)
>   	/* Always use CB2 mode, difference is masked in the CB driver. */
>   	wr32(E1000_DCA_CTRL, E1000_DCA_CTRL_DCA_MODE_CB2);
>   
> -	for (i = 0; i < adapter->num_q_vectors; i++) {
> +	for (i = 0; i < num_q_vectors; i++) {
>   		adapter->q_vector[i]->cpu = -1;
>   		igb_update_dca(adapter->q_vector[i]);
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
