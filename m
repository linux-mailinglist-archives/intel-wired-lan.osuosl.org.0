Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5FC73BE2A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 19:58:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0428F416BC;
	Fri, 23 Jun 2023 17:58:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0428F416BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687543107;
	bh=GaSp9ofJ81EMvNr0H+7eqarUuwGJKMLGJHEPkPkngSI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XrAQnD+Y98wk3SdQIK5Ug3nJXZE9eOM5PaOOqYd1a203a0AoXMNYdSlhChYALY331
	 3y8br6e5gpi4c9AGT0H1XwdOqnc6kbOtryO/EeUyX8a9yM2KFwEz4YBENkXfVp5Ke0
	 obIt+0NeSdEZ8mZH03f1unrVlTu7mRUBruSv4E+tWF68qrbuOoXmyoB7eWGJ+VIBK1
	 n9CYGMveQHmvWtwFf1Dk6OBCZ6BRru/lGictD4ywXTHKmnKB2tE7JraCalt2DzbvS0
	 DkeMdS030B0cOnilGl6YTKPbwFle/p2wwMCDlY5D0BNgp6JADcS+Iq5Y4CJmvQuXGB
	 YlS4WOQhDK8FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T2Wf4-iUsbpU; Fri, 23 Jun 2023 17:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61AF242437;
	Fri, 23 Jun 2023 17:58:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61AF242437
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30B381BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 17:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14E63419D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 17:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14E63419D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kuI3dBk-KGo6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 17:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C58F3408D7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C58F3408D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 17:58:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="390852961"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="390852961"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 10:58:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="859952899"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="859952899"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jun 2023 10:58:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 23 Jun 2023 10:58:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 23 Jun 2023 10:58:17 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 23 Jun 2023 10:58:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mW8GYR6j1k/aXOF+XqBnZo7jcDddnL/NBFZBUw7utl5xz7atAaMX5wk2JcIOaYTqVq/jRcnu8eXtIsSErKEqh5+dsyVp2N8YJ/5/B+rdTWGI7Pqvlsm28W4nAHs7aRB4bhFd3IJR3SBcFQkgvACRuhO5HyBws6raqoVu20iZy7fRO6KAHJwd3v0q+Y4QkK988YFZ+PLbstuwI09WDwmQDgksmRttSy/2/mYCXVrqe7rfOdS5m9JkzM6hdj5cs2YP1BeKOeYbMq7wqedNQMP3ONXE989DOhGd+30ANLyWcAWc9MAU8H75k1sp3Zra76XBcZ9Iiv5qi/NERDoIuxJ6wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WUtPh0bAhUqNBm2P5OgkUdu3Us61h4LoWmOT9tZqETY=;
 b=IbZg+BtSa8WfV7hRL51DMrEoshE1BZhn3Tj+ljb3HpsE8kxUS0Btia0o3kXjM6ziCSoiwg2f4MUkW9q6nLiySkBWVnlRDj6GXLsGB/swcbvBXlRTwYTd5W5PD3waZnwMqLZCEmUb0aYMtR1rAabHeqQOzMxi9igKC+eWuyasyaN5/j2TbIZDgNuULdeDf/xUxHWTjhL8RaAkGMISCL3b/hCr7YwIyOOmwKcK/OUJ0WPGXKUzTWN/tcXgONedEl0yvemUfebAl7EBTjz7O5ZJcs7U1uEjnaKw8scb9febHtdBEASlw4RvLkkGRqIN9mTog9E0tImdTr73USfwGE3XFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB5121.namprd11.prod.outlook.com (2603:10b6:303:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Fri, 23 Jun
 2023 17:58:14 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6521.024; Fri, 23 Jun 2023
 17:58:14 +0000
Message-ID: <d81d2a93-e78a-487a-4cff-be0b6a557bc8@intel.com>
Date: Fri, 23 Jun 2023 10:58:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Zaborska, Olga" <olga.zaborska@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20230616114729.27926-1-olga.zaborska@intel.com>
 <SN6PR11MB3229C8E5C13B17847D2F2EBFC65CA@SN6PR11MB3229.namprd11.prod.outlook.com>
 <CH3PR11MB7764C3B7F4F66A4B65FB25C3F923A@CH3PR11MB7764.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CH3PR11MB7764C3B7F4F66A4B65FB25C3F923A@CH3PR11MB7764.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR03CA0057.namprd03.prod.outlook.com
 (2603:10b6:303:8e::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB5121:EE_
X-MS-Office365-Filtering-Correlation-Id: 34822847-a343-47b3-0cf8-08db74136a93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mJJI6WKpf8tBIh1zUNtcgLroh6UBLJCK29m9sC8UW9pe+PpZyf2tffMamzYJc5xqpnSZYp3rBXj6ZPjc89ppbXJcU7TP/dYUbv4pUWnerDkDnDFXnIgDLDTaLgVWCfBmr+Vx4vkoHCGAp25/ZPKnloaj5szJKpp/JZqw07W5hOvOeUFflSQrEIvMXTP98aoOeAE08au5fB6asdzwnKUAwk+pqIVf26lAS+dDhrLnbXRIDWMyF1g+UIQXdxXfF3NA1rxhn6F2QsgybxtpuaGk/iHXepAzIo4BuQB7bzev9FmETeqHaoAF6HTJpyhH19y/MGjC8jdZWRA60BgPwZDZfA1jxNyXnKvD+bds2DUYYdwFZO+XLJyewQE3mVxT4tFXZEWIKr3egl67g8lqQw67FVJ1s/8+s0VoVVx/Lz20BwCfrYaNuq9nkiaKf7zoChOZMQx5Vn+AE4IxO+DGJ8z3Gx8yha2uCHk10bl7GbivMJt+XbP3T15qV4I9+guupdT2eM3YNr7FeU52LSFMSN0rNmEYr1dq7v+KnmvI3NVqafLj0n1AAgZyHd+A+WAp6MBp/TcxUw3LeSnvx8I4DPATkL9asswt2Q6nmSht66wIpJKSWFWBnrkcgCAC91IFVA0aB/JqTDXIQQti4kBsqNggTb3x32k+2hwLT2jFxgneJf6YNrtXjkqiARkP1oRCrVzL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(396003)(136003)(366004)(451199021)(31686004)(6636002)(316002)(41300700001)(8936002)(2906002)(8676002)(5660300002)(478600001)(66946007)(66556008)(66476007)(110136005)(86362001)(31696002)(82960400001)(966005)(6486002)(6666004)(38100700002)(53546011)(83380400001)(186003)(26005)(2616005)(6512007)(36756003)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEVCbjJ1b0o1Qk8xRFJHZmFmY3Q0dGhOdEJwNDBJT0pxaWJMNnU2czdpMFBq?=
 =?utf-8?B?MmxPeVR1K2hrRVlTblA4MTZnMDhjaXFWK2xpV2V2OVhkbGxFMUh2dEF0STk4?=
 =?utf-8?B?Q0w1UTB4a0V1Q2VjQTI1RGdJOEgvYmdYRHdhNmhaMER6VmlxZVJ1eW5jTlhu?=
 =?utf-8?B?SHZCNFpGK3c4L1ZKMzh1THB2ZXBsckNRdWlWYjltdmY1aVQ5N1YzQ3doNEVY?=
 =?utf-8?B?ZFhCUDdiWDBCenRCR0M4Szl0dDJuQVJMdHIvUUIyRDZBRnlxakJSbWZrWURR?=
 =?utf-8?B?TDNqSUhDZUxiUXN4VS9pM3RlaTRyYUhXL1FqaW5HRjk1bDFrSFBhemJvUnZZ?=
 =?utf-8?B?eEI2cFZybkdwZC9jbzk0c0tZdk1ZbmxOaE1hNUhPczFXR1VHdzI2MXdQWThG?=
 =?utf-8?B?MXQrdzZDSnZpUGhBWUlXejNrRUNmTld0VHluYVhMODN2dlRzRmhwRHNGU1U2?=
 =?utf-8?B?V0l3MCt3ejFKbTNDWFlSK3J3Rzg3K1ZsQmJGZUZOZDZtbGpMM2l3Y3QyQmJB?=
 =?utf-8?B?UmZCbm50dW9zMk11SkV4STJvVDF5RnUwdTVBV054bndmT3RlNURiWE1aeDgz?=
 =?utf-8?B?RW91cy9pZFJub3NHSGZPWmtlT1A1SEh5SXBlYkJnVVNxNHo3TGFRbDdnQ0tG?=
 =?utf-8?B?T05UR2g1WjJ0aitZWXJaMnZ6ZFNoblpzYnB2VHB0bGxiV2RmQjJuZHpzN2RV?=
 =?utf-8?B?c2FSZEFOdEpHY05HZ2tqNjNCNjQ1UWttY04yc0ZrRXo2RzIzVlB2OHU0MFVp?=
 =?utf-8?B?ckgramFPTzBmTDBKbkhIK3J6TEx1RHRIc0Z3eE1DdHl3Qk1tSHp2Qm9CcTRL?=
 =?utf-8?B?d0JaTXdwV1djai9HVHIyeVJha2pHYjNJVlJMTGFkeldJU3dQN3JVNnV4T2pP?=
 =?utf-8?B?T0llakdLa1dpQ2oyOUtxU3dJQk90amM5RjVXVWhGQ1cxaVBQQ0xvSVpPVkxQ?=
 =?utf-8?B?QXYyMXB0bmZQalZ5RXMxdzdVQ0xQbFNkdTJMU2N2YUl6WmlEcDg2QkZHS2o3?=
 =?utf-8?B?Q21KRytySTZkbHpXRXAyWGl2YU9YVHA0QUJPVHR5L3hOKzBEM0I3TUFENmNO?=
 =?utf-8?B?ZW0vc0pqcVhMN3B4VENoR3JLRHNwd0dJU1hNMExVZkZNUTVnaHc0dmRPb0Va?=
 =?utf-8?B?TTBORjlHWjY0YzN5alE3TWc0RlI4aFNwZHc5MkQxNmdmdjBjU3hOSElDQ2NF?=
 =?utf-8?B?MEIzVVZ0RjU2elAvM2tYb1lDMVAwVGc2SlJLVm54NC9xQ2tyNmhjamM0VHdR?=
 =?utf-8?B?eG03WE5qVVp2Tm95dERXUWVnUXFxQzdOMUNJdDEwTlhwRVpjTDBwRFRZeWZw?=
 =?utf-8?B?b3JjM3NLU0tCSm5DSSt3QzlaZ0Rya1Iva09Gb2R5MlV2eUVvOVdYNVk2a2lk?=
 =?utf-8?B?Nmh4OFpzVkJUVDdheEFVT2taT1Y4NjVhemp0K2hUaWlVVlk0U3NQSWwvaFhn?=
 =?utf-8?B?Wno4WVVLUFhZT0pyMjBGT3IveEliUTdLVStIeFRCRjBmQm50d3E0LzI0dDlv?=
 =?utf-8?B?NHJWTVBzT2JaWXhVT0F5S3g3M004eC9aRnhOSldxc242eEoybzFRNVlqeUR1?=
 =?utf-8?B?VkcxdHA2TlBpSUVEZ0l1Z1JpdDRTeVdvSGR3dWdXazZBQXF5Vm10a0VKZ1VN?=
 =?utf-8?B?SUN5WnRhNC8waW1JU3MxRUF1RHZWVUpuSWhKYWJuZW9YNlhEU2V6TUs5SStk?=
 =?utf-8?B?bUhIYzBsazg2LzZIUjl1MnRkNXJRV3NnVGQ0YjhBOGd1SEhBdzZnSXhOOTlG?=
 =?utf-8?B?NnQ3ZFhST3dsSGFMU2dJUWZ4UjE1K25lbi9KWDFyS2FXQmc0dE53Wm9CUE9p?=
 =?utf-8?B?NElVMi9oc1ZhaWswdjkzVDd6UUF0bjBkZDhTZk03TVFuNk5aWXUxNU9IRy9E?=
 =?utf-8?B?WXFXT1ZKZXplY3Fxc0t0M1NDeVdLWE1wMk4vZ3h4S3dudHN3eEt2Wktyekgr?=
 =?utf-8?B?TTBWUm12aXBoNTFzVHRqOEtpTDlHZ2V4QUVUbTJENm9VVUlnZmVET2tlbmE5?=
 =?utf-8?B?RFlYVGd2VW55MVFlSjJrV1NWV1d1OXMvWjN6QXhzenB4UDR6MUZmdWc4MHFu?=
 =?utf-8?B?VVdWQnRRaFNIVnhiV01MSU0yTWFsRnJxSmhzMnNnK2hkdVJqZTcxci9jNUVY?=
 =?utf-8?B?cmZpd3o2QWVFK0JFakEyOHFJUE9ydWdEcG95TVR0cmQ4djJObWtLWGg5UFRl?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34822847-a343-47b3-0cf8-08db74136a93
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 17:58:14.6734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ueU8givKdOyFI8ppXuMdToDM7KJbnfEb2Pukm0WjyXzg+9dELqwlbRBV89w3gntTtTuCfbu4puhbXkXMPY6LtTHzbBMxViuZIGBiH6v4s4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5121
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687543098; x=1719079098;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Mhtu8OATi9HlTKWY8NcHRLz6fDRWh8Or2Fm//zRVIJU=;
 b=CLiCYWSsz6D/VFplZJfxG2cHYjM48/qeYmoCKqP0jDuIxU4F3/HQ39Iz
 FE9xP7HkMhrQk9rQ5iyXP+7+ZephSB+dio1jcnoRjxho/m20M+ZPA8HWY
 L02PkemxZag+4r8lVSvXPGKjRDvS/uBjlmp2IYvIE2CmyyfsFMxoEz/fY
 LyskG+LYJ5yzCsUEJKGPf9QPFNXyJ4aZy9XBFRveQSoVE7pmEiW8XNkIY
 +sWwhaoHHs0pCQs3SDSRxh6ih4iDje4sCwvBY5jvZcjqIfCKes9wM/a3Y
 +n9uA3bkJK0cUl6InoR+NgujmahTzLNgGAdS3yLcUx7Fg0h0PiAwpKAlH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CLiCYWSs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change
 IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value
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

On 6/23/2023 2:38 AM, Zaborska, Olga wrote:
>> -----Original Message-----
>> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>> Sent: wtorek, 20 czerwca 2023 20:37
>> To: Zaborska, Olga <olga.zaborska@intel.com>; intel-wired-lan@lists.osuosl.org
>> Cc: Zaborska, Olga <olga.zaborska@intel.com>
>> Subject: RE: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value
>>
>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>>> Of Zaborska, Olga
>>> Sent: Friday, June 16, 2023 4:47 AM
>>> To: intel-wired-lan@lists.osuosl.org
>>> Cc: Zaborska, Olga <olga.zaborska@intel.com>
>>> Subject: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change
>>> IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value
>>
>> This title seems a bit misleading as I presume changes are allowed, just limited on the low end.
> title will be corrected in v2.
>>
>>> From: Olga Zaborska <olga.zaborska@intel.com>
>>>
>>> There is currently a bug where when setting the rx/tx value between 64
>>> and
>>> 80 it automatically sets to 80, this will be fixed by changing
>>> IGBVF_MIN_TXD and IGBVF_MIN_RXD
>>
>> Any insight on why it was 80 before or why 64 is now ok?
>>
>> Is there a side affect other than not being able to set below 80? Since the referenced fixes is from 2009 without anything reported, seems like it'd be more an improvement of allowing smaller sizes than a bug?
> Based on the commit https://sourceforge.net/p/e1000/mailman/message/19194160/ it should be 64 in every e1000e device, igbvf was the only with 80.

Can you put some of this background information in the commit message? 
It provides justification for the change and would be nice to have the 
information easily accessible and not need to ask or jump to another 
commit/link.

It looks like igb and igc (+Sasha) are 80 as well, do those need changing?

>>> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual
>>> functions")
>>> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
>>> Reviewed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h
>>> b/drivers/net/ethernet/intel/igbvf/igbvf.h
>>> index 57d39ee00b58..7b83678ba83a 100644
>>> --- a/drivers/net/ethernet/intel/igbvf/igbvf.h
>>> +++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
>>> @@ -39,11 +39,11 @@ enum latency_range {
>>>   /* Tx/Rx descriptor defines */
>>>   #define IGBVF_DEFAULT_TXD	256
>>>   #define IGBVF_MAX_TXD		4096
>>> -#define IGBVF_MIN_TXD		80
>>> +#define IGBVF_MIN_TXD		64
>>>
>>>   #define IGBVF_DEFAULT_RXD	256
>>>   #define IGBVF_MAX_RXD		4096
>>> -#define IGBVF_MIN_RXD		80
>>> +#define IGBVF_MIN_RXD		64
>>>
>>>   #define IGBVF_MIN_ITR_USECS	10 /* 100000 irq/sec */
>>>   #define IGBVF_MAX_ITR_USECS	10000 /* 100    irq/sec */
>>> --
>>> 2.31.1
>>>
>>> ---------------------------------------------------------------------
>>> Intel Technology Poland sp. z o.o.
>>> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII
>>> Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP
>>> 957-
>>> 07-52-316 | Kapital zakladowy 200.000 PLN.
>>> Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu
>>> ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym
>>> opoznieniom w transakcjach handlowych.
>>>
>>> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego
>>> adresata i moze zawierac informacje poufne. W razie przypadkowego
>>> otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale
>>> jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest
>>> zabronione.
>>> This e-mail and any attachments may contain confidential material for
>>> the sole use of the intended recipient(s). If you are not the intended
>>> recipient, please contact the sender and delete all copies; any review
>>> or distribution by others is strictly prohibited.
>>
>> This footer needs to be removed.
>>
>>> _______________________________________________
>>> Intel-wired-lan mailing list
>>> Intel-wired-lan@osuosl.org
>>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
