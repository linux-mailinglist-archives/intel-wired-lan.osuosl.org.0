Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438CE785F0C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 20:00:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAEFE40C94;
	Wed, 23 Aug 2023 18:00:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAEFE40C94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692813640;
	bh=VBfV3jar1fEGrjtbvuoF+9og5lu0zsD54SdyboRCckg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A3QOpqocA8s/mCtHeZocRYhhxhMcXmtAidEu6HYVWJYgLS/REYIB1FUR6O2p80b2V
	 lVodTEESCHXSLXv5g67OlemQEkw+8BtIa4AotBgBcz8aVoJbIf/pGj4ZMiJIIf//2R
	 gGsbDLJ7FF0xLVs66C8J8AdrfV5wWY8uGJMapspaVFFyxj30CcDYvx9hUF/36E/7bz
	 wgcKEFyVwN6L4X9H2zywoRbnmIl71pN1XFY4pKqbWpGH3phtzO3WjxsYvdG5VTBCMh
	 jvtfe5ggRa6Gu3KuWAY63UpweoVIc2QBoazWqcd/5cyzLJCfmNVn8Ttd5wtof+jw2u
	 AWDkr/5eDjKAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6z6Jx4wZURw; Wed, 23 Aug 2023 18:00:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 959AA4054B;
	Wed, 23 Aug 2023 18:00:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 959AA4054B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 184161BF44A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 18:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC285405B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 18:00:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC285405B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5RfafrxzGB8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 18:00:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C9CFB4017A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 18:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9CFB4017A
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374209029"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374209029"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:00:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="851137589"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="851137589"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2023 11:00:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:00:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 11:00:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 11:00:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cfNlHQ0NpZLf4M/cRpZm8MadBYdrEp16Uy2yZ8/dmyui8SVh3FaHe48eVlE8KNSQBoJFtSypwRBEeS0ZkVlWgRswHXCc2t9z0NDuhSNg534qfXwTtkj8GabUCZ31ZsRcCwyZTZgbs7omksM9yEsrMyPJ/eWRh4Q0hXTJkR5HIS7rbQRR7xGnqFqmmzPv7VhRoOw7K3MhdUdwZ67Kj+xJGIg2A9P7uizadZcIURNncyJwxd3LnZMdBEaFZBYqYc/u7YU7YQuuj9mGldkdUzFKaqeHRBT07XyKnjlTPUxmWu0DbmyBPasot0kP/m9rneBj0EyASGxWhQ2r1G2xTwVWAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3sZ8xUPc7saVRn/hCAmQWBGK8LY/Ch3ffZfnGHDfmBw=;
 b=QJGj0ic8iE0hONXYLTCa6ge5a5xEyBL9klmPYM6jl/d0+Y1uQ2vG/qS9v0byGlPG8bVVe9nyM8RJ1VhDZH7mPNjn+J+8sZuxaLLSnWtdSKFBbB2S6UTvCbV/JfjlUkOyqwnRl3tQ8aI4R4WWNuQPgSmAH55ZIj39rJRnqPIwT2oI68TgLUvEmdv0HeNbHdnXvpifm+3KJaSZAKIsD+h9mqNSnq38wd9kEvdBpqt0BFQqfjwjw1mU06GsOU/543YN8chC+4JFGdZDFYd3bJTA0dx7npTgd8fp0Bf0VIUrRRObg+bq4kVk++DXZ/R5uLWP8UZDN/JW2zyg0wfxNwnKmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by IA1PR11MB7318.namprd11.prod.outlook.com (2603:10b6:208:426::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 18:00:29 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7d52:28c5:3dfd:e6fb]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7d52:28c5:3dfd:e6fb%4]) with mapi id 15.20.6699.020; Wed, 23 Aug 2023
 18:00:28 +0000
Date: Wed, 23 Aug 2023 19:56:24 +0200
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>
Message-ID: <ZOZISCYNWEKqBotb@baltimore>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
Content-Disposition: inline
In-Reply-To: <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
X-ClientProxiedBy: FR2P281CA0116.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::9) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|IA1PR11MB7318:EE_
X-MS-Office365-Filtering-Correlation-Id: f609b068-f63c-498a-5a1d-08dba402d5ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hNSJs4QVGW0TNw1U9C82TSMvuZV7WIEGBf3EEp3Hc3TDGFnrK5L1uPkXeQnjrIwZhKQZKSDYh75EQwihqeuq3G/00jCq5KkM3Vj/saiyCmpFlVlxfQN+MeKPyQO9UXn2jg6jqGcivwuNFhvJqonnRVDYalH1NPy34Dnd/iiK8B5/WhGmgPrNWTiJuNnVYduFnZaF10VgocHO5XpBN+CLhmzAVAiZr6dYUVjZz73g2Hm1wF0ubyqgPzuj6X2TJw6s5t35BOjx1ruGMO36i8VEkAcEIyAA/jlioAyu9yw72L6R2xikRRx1DmSKOvNye6ejLPObfT+6gEeh1iE5NHFBYUoYd7LoSOudABuaDCLUV+6G98DBoWylPg3EsHGdKm6626FgCIojVRXcGa0hzAv7Sahkp3/RLpI68OHxb0On38dtZ5cgMpJujstzGrmXwXFyrHm1+P3lPURkQd6c3PG7JHEwx6vj1LfZqZcny1GC7OkYz82+X5ynV8761RLdiAPZWPpk3oPI6u54RmvAFjHT9TJ8jPIOcR9AI9rY+J/hDgU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(136003)(396003)(39860400002)(346002)(366004)(451199024)(186009)(1800799009)(33716001)(86362001)(82960400001)(44832011)(5660300002)(26005)(6862004)(8936002)(8676002)(4326008)(2906002)(83380400001)(478600001)(966005)(6506007)(6486002)(66946007)(53546011)(316002)(66476007)(6636002)(9686003)(41300700001)(6512007)(66556008)(6666004)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XTJvmZ3ycQAoqWPumZqsumqAIETwg/nBMe4diF3KYpO+hIAGF9e3v5QDiA/a?=
 =?us-ascii?Q?KQ+24xSYdptkAEu4MmYwsvyY44/P3G7lXLDLua1lMj4aJeXFccgsNGMj1Qhf?=
 =?us-ascii?Q?cgjqMA1ONz6BGDNEoMQbZ50njOxe+Zg9spVnNOSxXfHOBP2NwOw5C+7D4beo?=
 =?us-ascii?Q?B2p05Jdeavh6nd/JQgECxhxlmtTdqBgvjS2oGK/iEtd4InfjA4k0txF87BbH?=
 =?us-ascii?Q?qjLqifqZIPQfeDY0Bsv3krdImQsAuS1g9BCFwIdN9Txa2SwEdbiN0YxbxavV?=
 =?us-ascii?Q?MQfGiYCg5ka9j7+EShm1E37unJZOygNut+tVvfpipcxbHz81wGQuVk/icANb?=
 =?us-ascii?Q?efjPYAwLQyzN/hhW1fXKtmlid6ptx7hh4eGYqmJf5lmZP3Fgla6U31dKOUmu?=
 =?us-ascii?Q?U86C4JOdTQGibnc7RlGrtqKLPVisiGV1wZ97baOcK49HiIZ1K+9BVVWx0dYv?=
 =?us-ascii?Q?NJK8jnmATakKpY0/Yx69FB24nhtcdM/EmHRvObIBlkt600MSmJ/vCgk7/jE9?=
 =?us-ascii?Q?JhArU8jWcWLW/jtQEJBMtz4p5D0+7gECDnlHSX4P5DuN0f0VuPyLF/kDtr2n?=
 =?us-ascii?Q?tYY3TjpSEZKeOAEVwZqeqg7s9yoJqVWA2N2AK8Gs7FZfkIq+JC/SD66ClL3h?=
 =?us-ascii?Q?coSf9wcOTsqRUEQqTSDzbPvaQeZ7RAl+dy6qs+iaosIcWuRsUF0olA01kEvk?=
 =?us-ascii?Q?PDYxcEFOEbB/lcbDz7LpzhTbHURrTXEkFmaBpXEQqm0oIWj1BOO6l88tbHxJ?=
 =?us-ascii?Q?u6+3QHVDgv+qL/izjjWp1m5pX6DlZ3cAMFTezdROtZ+URo3kBla/iMj5kfwb?=
 =?us-ascii?Q?Hxpi9LHmbjyBQ+0MkXjgOvJEwiE2yZICxUd7HkZ0KP/UMyzfR+NIsNt+kAyb?=
 =?us-ascii?Q?02FXzGfJDo/W5uspw6PkKCasHfHyQVGdIZXv9toyr7UU2bVYtoh2JNffSQym?=
 =?us-ascii?Q?EB6/so4K1+UlV19vJI9hLb7mDnk6Y/4E7Dtdoh4ixLyOQkAgP6TJNvOSHkgp?=
 =?us-ascii?Q?eHcVWytIiI/BW8VYjeusAOiN1MGWX8sHDD93XodMpEDmjdni0c41x1NdBm5E?=
 =?us-ascii?Q?EmOnwJNROvgtV1rdDs/Vq7jAqiyW//IfPkXQ+lKJYnHsCb8DJ5aPHudXrfUA?=
 =?us-ascii?Q?F+sFRG0tCjuO5WO7kQsNKOd4+e178yFTsQdAK+WWG0XBU7/G8e7pjaNOB4rS?=
 =?us-ascii?Q?l6cnZ4L7gmPZNI+j+9x/gUTv0w8dDt3E6En+nsizkszyQSkGksX7HF1B4q5z?=
 =?us-ascii?Q?YUzoe9RPiNRcEr2p6fBTdcg2rdlKDIboghKNHUwGEXCOllcXW6/zTABIF8k2?=
 =?us-ascii?Q?+WtMTir6Ai8x06NHxBrHPwyPGlw1+ZzH3YEbqZ3TtVhBFBoDPTNBH03t4Xs3?=
 =?us-ascii?Q?rlsuUwsB7xX88KM4elaA92EpCzp/RsMPgw+jEIh1gGFJpbqLHvBnotLUBNGX?=
 =?us-ascii?Q?7s+jGiRwCIVHR++08lm2ZnAhKKr/BOO6wW43t9zL4ZWFlZ7SDOgJOtmQZWJr?=
 =?us-ascii?Q?QZs71xc9FEdUJyzbi5YGa6O+10QHCUIMtK1dugRi8nNw+lyPm5tHbq6QYOZb?=
 =?us-ascii?Q?AGaOMewYNRcNBMWxl6UMp/X3+ANb+sn5FPCmyABfcy5+Ve26ESdm5OVeZyph?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f609b068-f63c-498a-5a1d-08dba402d5ce
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 18:00:28.8619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z+Wp6sQItch90uyyGCsZ4N64/ETbj24gq1CclaT6HEHxyshd7fpJEr56Nr/ELuBJVHnRHVeh5JlvQN2D+4311Vlz5AIxPgaiX1G3hfS3JL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692813633; x=1724349633;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2OiW8aS10fMezvIQFxMh3EImNWT4xDsQC06BnFk+8pc=;
 b=FQrEuN39+oDjL1uL23NhrT8aMTPIo74970pUuUcsE6//dnS2ip+ZOQMB
 RZDPlmQeD3GGcNi9EYoQEn8Nze6uRIPgZWq2brJ4HMhC9QNXJcYLY+sb3
 TG8h+sgB5cBbzxqwfaY8FW919nH8Fe2+JQgM08QUVBjkGgVHzTQ2EHej6
 hKIUFykX/iMHvIs2M5Yi7o8gI3tLrKYkLhgH2XK2XE6xF8CWKbcGNtj5+
 FOF4gDBKNasH3AdwvyY609nY250lnFc97uiLn+kxcJgdwvpc/C2iogxQQ
 MUw9InQ6gUFk6MLpF8vIxRz4jI9BsmiRqIMg6CascnqOMXE97vRYmRvzq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FQrEuN39
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, Andrew Lunn <andrew@lunn.ch>,
 intel-wired-lan@lists.osuosl.org, manishc@marvell.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Aug 20, 2023 at 12:20:43PM -0700, Greenwalt, Paul wrote:
> 
> 
> On 8/20/2023 11:54 AM, Andrew Lunn wrote:
> > On Sat, Aug 19, 2023 at 02:39:41AM -0700, Paul Greenwalt wrote:
> >> The need to map Ethtool forced speeds to  Ethtool supported link modes is
> >> common among drivers. To support this move the supported link modes maps
> >> implementation from the qede driver. This is an efficient solution
> >> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
> >> maps on module init") for qede driver.
> >>
> >> ethtool_forced_speed_maps_init() should be called during driver init
> >> with an array of struct ethtool_forced_speed_map to populate the
> >> mapping. The macro ETHTOOL_FORCED_SPEED_MAP is a helper to initialized
> >> the struct ethtool_forced_speed_map.
> > 
> > Is there any way to reuse this table:
> > 
> > https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/phy-core.c#L161
> > 
> > Seems silly to have multiple tables if this one can be made to work.
> > It is also used a lot more than anything you will add, which has just
> > two users so far, so problems with it a likely to be noticed faster.
> > 
> > 	Andrew
> 
> Yes, we'll can look into that.

I think it would be better to leave the maps in the code of respective drivers, as they are too much hardware related. 
Even for a single speed, the sets of supported link modes may vary between the devices.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
