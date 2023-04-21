Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CCC6EAEFB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 18:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B70A41D7A;
	Fri, 21 Apr 2023 16:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B70A41D7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682094277;
	bh=SuPo0IEtvcA1vHvM0Ur8MqmVH+WSBTbBEr0qAGqe26M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VWdMXL9w4fUSBW5Z3l8MpFoKqIFZs/plSkjW1dwqfsvTSclLwNrSziBFT0oN9p15V
	 yfMoPfiLlTmkxzofrQi3RrjHlrLB6w4nnLlMy3EkumDniw6nRFtdInXzetAgMR4V6Y
	 5mfh0eRIK8v808pbfpzmNN0/isJutK1hb5eBkd4LYWwox4qgOQjLzlB3wNs3/7GZhG
	 W+SDUNt+ZKrpuxcRGt9XFa7BKpB0rxWVdcyYabwmQjc7IK1dfxFZEoXY5cau+bHktO
	 p5kfv5rXDkf510LIVfz610MNga7TWXJ+Yd0NMsMuxNseAqULxoZe4vggI5Lyh4KvaK
	 yvDCiC8XBHxGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gD8L8XVCW8XG; Fri, 21 Apr 2023 16:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FC9340105;
	Fri, 21 Apr 2023 16:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FC9340105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9A601BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 16:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 758C24289F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 16:24:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 758C24289F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GTXeITeg7M8x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 16:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5053142874
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5053142874
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 16:24:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="325629334"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="325629334"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 09:24:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="692335120"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="692335120"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 21 Apr 2023 09:24:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 09:24:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 09:24:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 09:24:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KJbksqQFYQCKasoy6r5dGY6av2/EWgwTEalease291UTFmmpF9z2HzYVonf5n+uUdSqRvCUgqvd5f+zP+PwX9PZakjZBm4pJsP39lbJdtRRPeb1xgX4f1A8Rvts6LxO8HbUbngU3DavOnRfUDWE0GBmaWCenHx0IHBrstAV5zajYZZ2rygA4rcEJP7Ado6y4A/nQEfuUfh3Au/qfiuLX2cKTDjXjeFXwoQwTNRocQx+qoJ2qCcR4IBcE6wzrLdH8SkNUaAaJAjYlAWCSd+sFjHbrfgpUwb78wqEvDMdwakvChYD7KTLHJXZJ9HWZ3p4kY0pSxraQw0d8jwLuTEaCGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5rlGG9kZr4GJDIJyMYyLXxU0RPZgOJyZymASW7B47pw=;
 b=KmY8scIHzeqI59h1oUilxWdTy3vrevkkWpotEotTEEEp6ofH10tYb4Rm1QBAfL1BhDaGPppwaT3junGPBabpENQmGCFwrfGXfMll0afpdBNk3KDYhBChJeBuQ9G5Z8Nc19J/0dhGnu3/b1fWZMiKj7UOaZaHALtY6O5vavveHYk8mZVGrxeaZmRusptGpyifOS44BuyjGjKnekqBMJCSAxXq/WzV0xGctR5HutipYL/qUDs+JZCxTXpxXqpP1xg3U/RfICStLmFCnvd4pjqIL8DZamxxZHF+CN8BwZFd388pbHmS9ptcVzZvRth8U4D2VLBRyX4xAC9OK1FewaWVJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY5PR11MB6284.namprd11.prod.outlook.com (2603:10b6:930:20::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.21; Fri, 21 Apr
 2023 16:24:07 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 16:24:07 +0000
Message-ID: <a868e53c-add1-986e-7c96-a02afbddde1e@intel.com>
Date: Fri, 21 Apr 2023 18:22:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-11-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230417093412.12161-11-wojciech.drewek@intel.com>
X-ClientProxiedBy: FR2P281CA0047.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY5PR11MB6284:EE_
X-MS-Office365-Filtering-Correlation-Id: 35776765-cafa-4bf8-a947-08db4284d446
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tkLelK5nxELdrX+I9h1C+snUkdn/R84C04TESFnVcZVT/kVbQvfrVw6fTMSQF13mkJSX5JtzpuFd62vteuvKPLMPePcVdFVGYlAUNPylPaKxXCWbEuy3y/UaZqEyqsZuW8JX6k2pA9jznYSFV7H72Bi/ADLikkNbFuHeXzfPt2c3biadamn6ipvxTN6nJnSfZ4CF0xEyuQihtDhFB+zdcny539rHq/JEfWw2NQt7UK95YTakJEyzwVonW2MhMFjzu8yMgNWEcd7uWv/pQiyXIznV4U90DUHMHeQ0BYUZ3MZ5s6wWApMhd0I4/ezL2MKn2b2Pbm+m9/tlQ0FdrDSrT/of9v/oEE++UoMVoKhGHdfasrNl/rfqfB4Dz0vFNsyWQG1Kwm18gNfiNV8EZiuoAfF0AfsRRs+9kgItsEPL22ehUlkBF5Nyy7xO4hOc/nxU9cwZT6djk2vhvyvUwG9rEy5cUIttRDuNmztk4zA5vxQ5R6E6xZdpLJWSXPCFSkkVzHuWz2vneEl4gaOeogCRqXR70Ny5pl/fBCdueZq1semAHB/51YuDA9IvYdATT5kUiOL6Ny6qumibc26bTQh4lIA9x8zIXL2t0Ev2Gn6nqDlYN+M2T7B4F315odL8TSclVvwqH2ApRcMyct1+weT5tQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(396003)(346002)(376002)(451199021)(6666004)(6486002)(478600001)(36756003)(66556008)(66946007)(66476007)(86362001)(6862004)(2906002)(8676002)(31696002)(8936002)(41300700001)(4326008)(5660300002)(37006003)(6636002)(83380400001)(2616005)(38100700002)(82960400001)(31686004)(316002)(6506007)(6512007)(26005)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RytaV1BsendkOXVVempqdnBSUnErMGFZNnlJUUIwNUFFU29nVUUyOXdWaU1F?=
 =?utf-8?B?OG1RSlcxb0Q3VnpqWmdvdmd4cXl1TU1CZVBwSW9ZeWR6aXdROHdBa2FmeVo3?=
 =?utf-8?B?NlRiWUs3SWFjV1M2ZTYrNFErTWdMc2NGNFBYaEU3OGU1NWFGVitNa094MHBv?=
 =?utf-8?B?ZmZ3RWRxcTdnMmQzdXNCR3ZsU1NtZ3QzR2ZoclE1M2p0RDBCekNGdklKSVQ4?=
 =?utf-8?B?SWtTTjhpWWJpWUV5aUg0akJXWUptZlRGbzh3cFY4cDFjdWRqMzhpSW1MeVEx?=
 =?utf-8?B?bEVyK2JJUS91bG80VVRYREFVbTgzRVhROTVXaUN0bFd4NDhORCtOdW9PQW43?=
 =?utf-8?B?bDl0K2N0M0V4cklLVVdNMVd5WXVvSEczTC96ajljUVlRZi9vendUekJlcGdM?=
 =?utf-8?B?UW1hMk5tSmwvT2svRm5RTXFKNStUWUIzMG9ueG01RXpQU0VkczlkSVU4ZVFL?=
 =?utf-8?B?YmlXRUZLbWhSSHlSSGhFSlF1MHdiWXYwLyt6WW1aSEtEUXFPSFIzVExDZmg5?=
 =?utf-8?B?SmZHbVpKQ21sbHBVUk1PQ0NtS0JsSDE5d2VhZDVVUHdOUnhOU1l4SlhsZmt2?=
 =?utf-8?B?MUFMSXNudWVPWmFFKzIxMlVueGV2UER4Z3lEaDNCOXhPRE1jbzRTOFo1aWM5?=
 =?utf-8?B?Y0lSN0lvMHlaVVRKaWo2K2VZUVZaNVpxbXE2WlpZVWt5VGEyWHVlck42R21I?=
 =?utf-8?B?dXJVWnFKbjFkZldLUXlZaVFkbDQyYjZoaWR4VDMzYW9Rc2N0QnZ2YlVkdnZS?=
 =?utf-8?B?Q1RVZ1pnWGxhVWhUSzM5OENpZmc1eVcrTlpYV1B5elpVRDFBaCtEbGxnbmVC?=
 =?utf-8?B?ZlJjeXhwbmZLZllHQmhlc2orTlhMUVdUTFBlVE1ib3N6dWtJMlYvSkJPYkFx?=
 =?utf-8?B?dTJYL1Z4SmNIQ3JnS1dUTjNvOUxHRUp0amx4aHhKc0s2UzBNK0o5NitnRWdq?=
 =?utf-8?B?Ni9oOWErUUNYTUpaWEYrazQ4U2tkVmFKV2M4amM1K1RrZ2ZyZGs2YUNmWUha?=
 =?utf-8?B?MnBzREY5TzB0R0JHdmo5YmNMWE1RV3ZEZ1pEY2NKNGxHaDZRV1dkZlp6bDJG?=
 =?utf-8?B?ZnBIOXp3elFtL0R1bGdzK05XN2FZTndTODQ2Wmp5K0ZBaTBmK0tkcTRPOVFW?=
 =?utf-8?B?SExZUHk0UjlMcFI2dWlaZ2NybkVkSGs3bkZ1Ri9XeFFRdTV0Zk01VS9tMEJr?=
 =?utf-8?B?SEMzRnVjRFcwK0E0Z0U0S2swZGRYdG1icjlUWUxsVis4cWxGVGZHQ0ZlU0dx?=
 =?utf-8?B?REo0cWpWMmF6dnFuYmtJQXJwYW51aGk1c0NnRTNUVGlTQ01wbjhNdzk5Qk5R?=
 =?utf-8?B?a29Ta0lRb0hucGpoRlF5amNyeWRRUjhYeDJDVGRFcTk5aVBUaUp5MjB0SnMy?=
 =?utf-8?B?RDBjTVFMbVRVTXdCc3pOOGx3cEdkSGN4bGhBWEllRE4ycEdnQU8yd2psTnJy?=
 =?utf-8?B?dXJpQ1cyT3d6dzd6OUNvL0JaODhWdmVUNFN0aTYvWVBqRkJlZEJXK3hvRVlT?=
 =?utf-8?B?TVp4eHhQVC82dm8zQ2JtTmV0UHA0SzRmaXA4aGp2NVpsYzN1SzkyNXh2amxy?=
 =?utf-8?B?ZGl5NEVuZjBEVXNGTWNscGZxWC9CbjdHUVU0Z3RzYnYzUEdjeVFralIwVExw?=
 =?utf-8?B?OHlzUVZZNjEwS21wYWtHWTdiQ2c1cFA3NVlib1BPd0tmcCtET3B2U3pic21T?=
 =?utf-8?B?TkNsV2JwUW9RVjVITHVQU2tUTGIzYW1hMmpmQkRpMkkrQ3M5aFdUSjAxZlpu?=
 =?utf-8?B?NUZaT3JSelQxd244NmRMdS9ieEl3VzhwUEdKb0dkaGJzWFBDRXF1RUtBSE9w?=
 =?utf-8?B?M25hRzlrWUttdWdHcUVYNVNqZlR1UWsvVXp6bTlGdjE3VHRaMTNITTNDQVYr?=
 =?utf-8?B?RUVNNmU4TkExK096ZjJTRFBPd1ZFQVRHUXVEc2psb3lxQnJ3UGYrdGp3TG5G?=
 =?utf-8?B?VnZ1c3g1dDdNQzUzNTdyU2p2Um9NUmFlSnAzTUhLR1hETHFyOUJ4UmxaZ1Mr?=
 =?utf-8?B?Q3VhZXNmMGFGR3VYY0oxdG5XeEhSbFFSOHg3TkN4bUJheTlPQ2piaGRhbEdI?=
 =?utf-8?B?QWJiSjBqa1JUNmdZTVl3cktIbmNBRVAzdSt3VFVPMThhVDBIWkloNWNBS055?=
 =?utf-8?B?MEFFcUNXQjI3SGtBbG00MWdHVVlLa2p3dk9wZmdON1FvVkkva2EwS2xvOUZq?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35776765-cafa-4bf8-a947-08db4284d446
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 16:24:07.2517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xv9HHLW0RVIYbQp7IcehFuN2YcT0/pI2HkHmGpyZTnfYEa/EzF7ryicMmrad6QMANRDqpPeekXpYq1+tTln70kRbnVNWfkbHH/vnEAYZMq4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6284
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682094269; x=1713630269;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hZA/sm+RPkyxwQ3WYlroR44cBgeBvVSSjJWY035Dho0=;
 b=YC3dcqHGLukXbG68PYsEUvdUJxDUSBsajv9pBknyTy4Poy1DJ6SjaiuW
 BSx3BDmbMzlLKeSG2VMa+3ejqasF7mS5QS4pMYQZBP85cx/mZdexbXqvI
 0BATHTY7b9JvnjRaKOgB8MHL9MrCEuqK1AmUhD7ca3f+x1L9nyivL1pwW
 +mSXzvGdAxZHkjFC9Vb1X6M8ulCCmBknrXbDFN0OpYxGD83kSPGOs/sGB
 t8YTLfBbrgV/fQsEnCT05KDVN6MT/9BvyskuzYIWcBp4oF27i+dSLEmuE
 G2ZTyVEQ7IVBeTB4VKhO9CDfX1o3qH2bdPxVMBJU0G15z8ASEjZ5bR7mK
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YC3dcqHG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/12] ice: implement static
 version of ageing
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Mon, 17 Apr 2023 11:34:10 +0200

> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Remove fdb entries always when ageing time expired.
> 
> Allow user to set ageing time using port object attribute.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 46 +++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   | 11 +++++
>  2 files changed, 57 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> index a21eca5088f7..6c3144f98100 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> @@ -8,6 +8,8 @@
>  #include "ice_vlan.h"
>  #include "ice_vf_vsi_vlan_ops.h"
>  
> +#define ICE_ESW_BRIDGE_UPDATE_INTERVAL_MS 1000

I think you can define it without '_MS' and as msecs_to_jiffies(1000)
right here, so that you wouldn't need to convert it at use sites (it's
more expensive to do there in terms of chars vs line width).

> +
>  static const struct rhashtable_params ice_fdb_ht_params = {
>  	.key_offset = offsetof(struct ice_esw_br_fdb_entry, data),
>  	.key_len = sizeof(struct ice_esw_br_fdb_data),
> @@ -440,6 +442,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
>  	fdb_entry->br_port = br_port;
>  	fdb_entry->flow = flow;
>  	fdb_entry->dev = netdev;
> +	fdb_entry->last_use = jiffies;
>  	event = SWITCHDEV_FDB_ADD_TO_BRIDGE;
>  
>  	if (added_by_user) {
> @@ -838,6 +841,10 @@ ice_eswitch_br_port_obj_attr_set(struct net_device *netdev, const void *ctx,
>  		ice_eswitch_br_vlan_filtering_set(br_port->bridge,
>  						  attr->u.vlan_filtering);
>  		break;
> +	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
> +		br_port->bridge->ageing_time =
> +			clock_t_to_jiffies(attr->u.ageing_time);

Why reviews also teach the reviewer himself -- because I never knew of
clock_t and that userspace has its own ticks, which we have to convert O_.

(sounds as a joke BTW, why not just use ms/us/ns everywhere, "tick" is
 something very intimate/internal)

> +		break;
>  	default:
>  		return -EOPNOTSUPP;
>  	}

[...]

> +	if (!bridge)
> +		return;
> +
> +	rtnl_lock();
> +	list_for_each_entry_safe(entry, tmp, &bridge->fdb_list, list) {
> +		if (entry->flags & ICE_ESWITCH_BR_FDB_ADDED_BY_USER)
> +			continue;
> +
> +		if (time_is_before_jiffies(entry->last_use +
> +					   bridge->ageing_time))
> +			ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge,
> +								    entry);

Maybe invert the condition to give a bit more space for arguments?

		if (time_is_after_eq_jiffies(entry->last_use +
					     bridge->ageing_time))
			continue;

		ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, entry);
	}


> +	}
> +	rtnl_unlock();
> +}
> +
> +static void ice_eswitch_br_update_work(struct work_struct *work)
> +{
> +	struct ice_esw_br_offloads *br_offloads =
> +		ice_work_to_br_offloads(work);

Assign it in a separate line pls :s

> +
> +	ice_eswitch_br_update(br_offloads);
> +
> +	queue_delayed_work(br_offloads->wq, &br_offloads->update_work,
> +			   msecs_to_jiffies(ICE_ESW_BRIDGE_UPDATE_INTERVAL_MS));
> +}
[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
