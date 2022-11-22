Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6BA633C3C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 13:16:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58AD060FD9;
	Tue, 22 Nov 2022 12:16:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58AD060FD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669119384;
	bh=mIGpPpsCdJUX40gykgFuHyfQ8BHZXqqjnhSltVPqbNA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=20je0VLtYVyc2VEJ/UBcV0v0g9++1KGhmbnSpEH6TTNi8rmtZQVRzytNBqwK5hrpa
	 iO5atfT1sInWq5iwu2G6cRXoxBiTdxYBrrpobCDV4dpbzmSje8MYUQxjjSsHk+naff
	 3eNKZ91ZJqOLCTxRPn4V74+dvlRWB0QrAJlv+0dcNF0OkNmZYi2Xq4kwez9AdXv/Sq
	 W+JBNx/nKK+/wdCfyRDY65l204tRd7RSlFAnJ2J3A/p2FnyMCauYgT2B5VdF2AMMTK
	 T6MXtbBhgbXYEJbfB4g6CKcTg0LS832yxwLvyY7zmFpBTc27tjlfvVQRvTyeMUyqUp
	 RLuhF1Oq4ksDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iByYz8vPA6XK; Tue, 22 Nov 2022 12:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67EEA60B51;
	Tue, 22 Nov 2022 12:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67EEA60B51
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B908A1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9323F81EFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9323F81EFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQB6tKjQVj9X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 12:16:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AEDD81EF8
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AEDD81EF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 12:16:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="311429365"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="311429365"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:16:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="643702209"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="643702209"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2022 04:16:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 04:16:10 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 04:16:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 04:16:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VjAEEdrO7rSdIo1oQJdFq+YfGl5i4Q3YG16FpCVYsXz0SGIH9zrj3ikHAEEDKjXi9MgI/63jPj0oWHZaqc0odBk78Q/LwzVQIXQXyOeKNhF0hdL2luYfEGQE3r46Bx0RutRtn2HQ30HQ5YgLng36gMtjMPH8tKxZpPEdQSB2REVb5Em2ryz3wJ3qMv65BwZKzu9Q/u7Vqs3ST/ANBTkYdVAXQd5linbuZy5MNggJJzxBiL6f9e9Ly8txtQIF8Pcnyi6tnePJy2QbQfYZXGtSZF68x+JiXs64iLEwfXLqn7vtSQEXaCzxhg84lsZW87w720S8jvLLDwicMnB5UUl8DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jBEf9o2/XICy7bCj5FfxgJJivTH4RHx6nTiqtanWbOA=;
 b=eeHyX73CSwh/7a4DeiPzLzH0XmCI8qZhUXV4wdkaT5J2lFWRzGlaxjK/n+Rb7E/oj4rqUHuEClu0dAMHEMvt6cdqlgri5EA4XYK3EnztDUv0mFpBg5rclAWntCfWFYfO78xRrAKR2xg6mgl/ckW3XJvIMPMYLNzjWpo8j6G9Y7PzmG5Sy/q9Ka9+AcUDzFecAg/ZxcXUantkPPlzdzsnmDD4j3Q2WPBDVxba4J/xU9GA106gnDIFpkDUjXdqvW9LUhRMEHcU7H8ATFpZzw3DwsbDd6Galv3hAOwWLajtrRx+TJ/S7taGB9JVbXGFVN0hpRGdZDvV23yOFlWqSsNRCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB4912.namprd11.prod.outlook.com (2603:10b6:a03:2ae::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 12:16:04 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6%6]) with mapi id 15.20.5834.009; Tue, 22 Nov 2022
 12:16:03 +0000
Date: Tue, 22 Nov 2022 13:15:49 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Akihiko Odaki <akihiko.odaki@daynix.com>
Message-ID: <Y3y9dbBUYi5j3Qre@boxer>
References: <20221122121312.57741-1-akihiko.odaki@daynix.com>
Content-Disposition: inline
In-Reply-To: <20221122121312.57741-1-akihiko.odaki@daynix.com>
X-ClientProxiedBy: FR3P281CA0103.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB4912:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b49cb73-c2d3-4af5-1dc1-08dacc835328
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MgoOJiZn6liiTmkwoBwAe0FlLQQ5RdfYCw2G7sABwNluV5WbykszGGX9m/DOoaEvZEVM2evNDjKEXCv3PjdkZC25UJi9p49jjEpCmDmR3wUwIHcE2bpDyush0Dg86c1VyuEhlCp0cAzONtreTP5W1MBxy7z2T5YeWsmoSz5pnXJL3Rh9raahUf+vRsb55dgWVbbkxSxfTIqv6xq7n0ECPMjS+pRbzVDU7I3cf447Y9liC6QHYA0cBWDWZ+PYTY+aMvP9cl/Ph3lwPtfjqAlstKSqrfXUrNXTRUJPI2kNc8GqahxwpfqvhikhMkd7w6acJsCiE7Gwb0QIjUyQ7qk24jyihxM78E7APPfikn0sSAJ/5CGN0As8Pl4/En/MHKorNU+Y4nqjzSh2i32o11UQhKIo9nJjiszReBNQWaqqR4LntIJG7pBcBkwNcR+6leQx3YVgVfmpSiUiV83p39zE/smheo4ZtJ6+d8rzPi/EQQsuvwaY3P/HeIJhLgBfsEg6FC0Pm148uoHdqfY7DYpRWrkXJ//xsDapiWEqu9hqu5Wj8yEJBTNs7hcrR6QchbxguASeFzRKw5lxN4ZgqYm2WC9pRbgcLPLC62v8XBQDMS5TT9w93KZQeIBnTgs8RuBHh/PzCwPZfJE14unUVMcUWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199015)(66556008)(86362001)(4326008)(41300700001)(66946007)(66476007)(186003)(5660300002)(8936002)(6486002)(8676002)(6666004)(7416002)(26005)(478600001)(9686003)(6512007)(316002)(44832011)(6506007)(6916009)(33716001)(82960400001)(38100700002)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LWVnd6PXdoTAt83oslGCaUubAiqt9foFyjYV8m7nGkH75llUoq0bnJTGk2I7?=
 =?us-ascii?Q?L70UavoXBmK7nmIxSuc99GKGKyMZWoMkQPMqGAIGQFWCMxIiOz08mwx1eRDV?=
 =?us-ascii?Q?UgcOAtSBkDWhl8h/plpkX+4Zqc2d6AnBVRDc6PtohzTjTdoXzL13TWlFxwNf?=
 =?us-ascii?Q?g8oQRj6nfnk1cupZfMUMxthoHjCCGcjFxZggA10DrZOIUVe12moRRnHMp7rf?=
 =?us-ascii?Q?/jty5GV0SFbYdTsQ3UcgL6kOuPhyJGXth896EJIn9VieEg62lr4w+09Edc0d?=
 =?us-ascii?Q?KzXNlBCCoTQusBAQ0WvidMHdV02xQNA/i5auSRatRGgfNFzCawoZh9zyD7uG?=
 =?us-ascii?Q?CyC8e6MUjE+PQ/zXFGXrz9ZCwEYqqce+gBbK2EjNLn4QWcay2ft1oBcxerCP?=
 =?us-ascii?Q?cMsGw+eFPsxG28HTLFATDw1dG0On+cYP6lNoQ2Illj6hXbzZ21zDOjer4GTs?=
 =?us-ascii?Q?l6t1W4675tbcfCJ/PzE7HfQjmh3gaTUnYGGc0SHF5BfAYhsoNAXZy60TNeRG?=
 =?us-ascii?Q?wuV+kunlHz8y/hrw6kUHodHB6tnvlC6L5BMfI3GqaAEhhBXWCYAjTQs+UvI6?=
 =?us-ascii?Q?9DNsR2yQ+EEYTvmv/Uxo3J2hWyMW0VNxXqVjksZZSIVssGPJwE7z2fUsgkPh?=
 =?us-ascii?Q?slw9VbIDUoa3wxF49z+FGgIrjtGIn2a/Yw4o8xzFGQCG2Ir238qW3W9zllWB?=
 =?us-ascii?Q?+mI9qkNrrYR2i++wy0LQTiJJH2XW5GZdS4725MEcHjE0WyKwOrFd/9f91rxw?=
 =?us-ascii?Q?jI3OduVFlB+jXBk+yFvPIcw/KPuP6RsAaUBlnLQlf9iUggC5W7NEELQe996G?=
 =?us-ascii?Q?WqKf+qaOvv4G33sXBOzwZWPTsdjBnYloOhSiPIL5occbZfXF7BM2xcaJg+KX?=
 =?us-ascii?Q?fxA8fkKTCS7Pt+dAYRFst8pdwB6OclJA/ziIO0QuX9yTM3KBXo27O4xy4w11?=
 =?us-ascii?Q?LGgGkAcERaRCm01Wd/1tCYeczD1J3R9ANNxHHBTF+3KpSKaK49NCg4dkojMG?=
 =?us-ascii?Q?XFMDT7HCylyWz+UFAlsYu7Vlqq63H3LubOHPxiax0OykfBLzsDKArYKexOug?=
 =?us-ascii?Q?uG6iKJaYxJx6Wd+n4LCly3O9iSG7ryJ7ZjuAqY1VqwtXpx43KpbZkc7nrHHq?=
 =?us-ascii?Q?GYmKIzpfsXB2IIPYAISD7BvVA5ZPePfVUnycCq1jUR9gX+crjojQnBxx3haI?=
 =?us-ascii?Q?DgjTdKLyFdQ3Zl+Or876DMwttMS2jOTq1B91tojCXSj6eQmL0EqWnHnhjfAS?=
 =?us-ascii?Q?tAySPkVUvH9shDApsUCjOV3/ZzAg4lPi4GALyEbsUkkmZQjPbXDm9WPsr1zO?=
 =?us-ascii?Q?xCdiz6skeKwaMgUWk7K+VfkcmGgmF4p+QfoF4uGSNVW0qBGElPxBPz2LHcjO?=
 =?us-ascii?Q?hMuizSni31xa69Xfai2DIORtflKHqGC1z6gdv96FRcujTIhQlWBfsDAv2sOe?=
 =?us-ascii?Q?FVbVyMCuNI4L7eYQt503XYQST9Fnvp9am8uW6bHPfr9MxSGwPjWmZgG9DlwF?=
 =?us-ascii?Q?1glWhJUM7lWed879AnydKVIb8kQBhlrH8SJGYnecGNJzqIO4/mAb+6sjqRgi?=
 =?us-ascii?Q?D9or1qHYz3AS74JAXlP1G6YBwfj70KvUbI3p1wH2Sp20qkj0YihoMsfmRNnP?=
 =?us-ascii?Q?jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b49cb73-c2d3-4af5-1dc1-08dacc835328
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 12:16:03.5360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X1S/Ne+LL5eeTBC/tzERETHYdG7DqScV8kfd6Ol3GJeCvDB4Du5UUk1krb8LvpkzpsE6UuMfJm3yxsZKWSC+U3YU1dp9fXdKDAJ28y73jfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4912
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669119375; x=1700655375;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xhjxOGxAbqh71gDPGgqLwRfKHHzbuBd1Tc4wpkTAcA8=;
 b=GnGH/8Po0bV78R9oPIkExPFNW5yNGJEKSsyRySCqx8Y4N9Rl8sGXI5Gv
 CrGUOjemv6OkOopDe79BgkyeDuyPJzK6Y8XnkK0jfqdpwLYiHDKXo41og
 u0LgfhPHomvNfOlj8LuEM6jp0VVAL+Qrvy3T3UhHB/RxfYgpNxC+zUGhc
 dCTikTi6Rcv8XHaIY0TuWFPUKLO9K3yyvZ8Wuf5DRZFD0k0O96hSnqthU
 dtF/aOurU8HRsFHq6zCOnNdF9CvXmfQ9H8I4G5+sC5rzQ9QdCISsjiLGg
 X/3+s2IxObaMTOooorPSNDmYlmSX+DUUAOh4907iKfUEOG3HmLMZrxRo/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel
 header.b=GnGH/8Po
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Allocate MSI-X vector when
 testing
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Yuri Benditovich
 <yuri.benditovich@daynix.com>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Yan Vugenfirer <yan@daynix.com>,
 intel-wired-lan@lists.osuosl.org, no To-header on input <";
 "@osuosl.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller"
 <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 22, 2022 at 09:13:12PM +0900, Akihiko Odaki wrote:
> Allocate MSI-X vector when testing interrupts, otherwise the tests will
> not work.

Hi,

can you say a bit more about why current code was broken? And also what is
the current result of that ethtool test?

Also this is a fix, please provide Fixes: tag and route it to net tree.

> 
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index e5f3e7680dc6..ff911af16a4b 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -1413,6 +1413,8 @@ static int igb_intr_test(struct igb_adapter *adapter, u64 *data)
>  			*data = 1;
>  			return -1;
>  		}
> +		wr32(E1000_IVAR_MISC, E1000_IVAR_VALID << 8);
> +		wr32(E1000_EIMS, BIT(0));
>  	} else if (adapter->flags & IGB_FLAG_HAS_MSI) {
>  		shared_int = false;
>  		if (request_irq(irq,
> -- 
> 2.38.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
