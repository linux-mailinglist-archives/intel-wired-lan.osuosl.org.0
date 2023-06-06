Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 633DF723D26
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 11:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D56984013C;
	Tue,  6 Jun 2023 09:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D56984013C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686043398;
	bh=1V+ymoI1+GtJk4HxnBKeANR+NaJ+HN4/NYNfcDaHMPU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=97lDWSXEuxHEuVoABoHjL/3OMafIicdvyvPERt7NekmWB6bIF1GKduIH2RbdYr6+F
	 3G/oAlVAtHteeVWQQVHxRftvqDZioMBPAoAVexXKMYv81hmBvzDHGk7VzA6BoHGG/Z
	 YtmTVnsOGTtZVur92NnWheYqKNoCA5KSBZPiwLtgZtjTobfGIsjoj4hDpO7+CUwgam
	 6BGzG4A2J0kPObPWSnyo3vJuyXLMszTXt0CPmM2pm96BDwoauwVKoqm9zmbK+NxQhF
	 RnRqGVUU3b6ljXkPsge/CiYznQD6JPqiySFt/WsahxlVvk/Yi1trEvkMnd5g+Rhdsj
	 eqkQXrQIQeo/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGgiHoqbJWh5; Tue,  6 Jun 2023 09:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 651934024D;
	Tue,  6 Jun 2023 09:23:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 651934024D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 633F41BF33B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 482FA400D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 482FA400D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1UDhjxbQuJ_o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 09:23:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E91AE4011B
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2134.outbound.protection.outlook.com [40.107.94.134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E91AE4011B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:23:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BrD3Vcgrsdz8icUnsDDtxV3r6Co8VeJPSMVji+0iivHVhtEpErOkAgNDKeyfWUYTeyQGjCJ2mFhTnP3JO6CUfvCxbuCcXuQF9BMLsNk1jD57Osk+4cv5MlSkySzNN0C6GnknWAcXu4gHjVbo+Xyyfrg698aTEwhi1DYJYXo6yHxJW+5tdU+Cd1wxk6WUQG/B9+DHi1iOZoT1kIo1OZ94Da+XoLOEiK1yi4pJ5EjdTA/cCbx5mWo97kGPD5d6/Kll8f5A8z9Z0a5AUjdQg/rADXkZ1oxjzVYYp9p6+eLM22+xL313CHUfKB/mx/NEvzkHmrZfSEFqGjPNV8ijnr03hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Twvlf0n7jlnM6uC/LdmW2MXSrCLC15MD5g3Z7q3Fjtg=;
 b=LR6z4jgdZmeElk9oDi87x8qelS5ZcRh6tqaubIGDnPSynJEhM4DRK9PQdTdHdFaXVOsV9oss2Tt3F9VjI8K2GfEjFVSvFE3JgZp1sx86/JPlddUYRbZkXasIPocrntRNHTi+chcBFnyJHQnuYpwrgwsPJr4J/y1Wkz9wMHfZwJ0neV3abVsxHbuIVkkOQcDKIZ+hEdRfjL2GbR2c/qokiQO9NpjgaIIvV+e4z8e6KtRccgJ5EDqQkxtLcEAOZXzcFwlXaZaJRtqOIT3FLC43t/OdjByHsVI6DuhCFYRCzxMyNtLGJVO1JqGOTT8tuQu6NXIojtA8Kep2L6bonYeNBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by LV8PR13MB6397.namprd13.prod.outlook.com (2603:10b6:408:185::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.18; Tue, 6 Jun
 2023 09:23:09 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 09:23:09 +0000
Date: Tue, 6 Jun 2023 11:23:01 +0200
From: Simon Horman <simon.horman@corigine.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <ZH769agjmFeTLkq9@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-10-wojciech.drewek@intel.com>
 <ZHy2m2fATV0mXgBT@corigine.com>
 <MW4PR11MB5776E0183A1A0683D726F0EFFD4DA@MW4PR11MB5776.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776E0183A1A0683D726F0EFFD4DA@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM3PR05CA0115.eurprd05.prod.outlook.com
 (2603:10a6:207:2::17) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|LV8PR13MB6397:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b5f7806-33b1-4659-5041-08db666fa46a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7htIjdcqMCfEMG2JDaM8UTUQFGLrvZxnwnT6lA6zF/vCOIa+g7I8BV1p6mwSJBH8GOJIEhTnrDOobvOB3uA950J9e80Tamw7ZM/HmdDCJ1aRxCTUE1+FdLYcKyoeP50+yH/HbA1H65MRgwTK2Np9elNDHp5d4DO6Hg+yCp1ghjQiYUgMvXigJP8zXxL488pgZVz88tSgaF36mf/AeFI80e4vylChg9lACLgZNFYROomlVPRvYEAgCQS+5wacKUfdEuWQmmdQJU8uFjkQiIHJTzM3BJ2tatsqATaOxeeP9MPmWuKMt+Y7JggMvoNVvVl0N+cTBLnw5pehXG3JJs/IZbUxxznUxJ50oGiNaGBXebalHmPThLmyBXUjrw/m2hYP1p3sOcz8Wu6QFkyZtsToFjrPzqomgjPQQZbi8ZvwtyGcfuVM8cHstB6LZGcAgKweAlZ+x2Pt4HMHlU00lTt9hbrjSCzYU+ONX1F9nDhm5qyax+9Wi0LFbFrqt+0Qkv0+hsMmhmCXaAeMxFBysxre7Ro4s474jLmCEvkCKXhC2OE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(376002)(396003)(346002)(39840400004)(136003)(451199021)(66476007)(66946007)(2906002)(478600001)(316002)(8936002)(6916009)(4326008)(8676002)(41300700001)(54906003)(44832011)(66556008)(6666004)(7416002)(5660300002)(6486002)(6512007)(53546011)(6506007)(966005)(38100700002)(186003)(2616005)(83380400001)(36756003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/GS9ZRPG2bIFTf71St7lbG9QIhBp/q4VDoBfpPyAuwb5WX+Gp8+ceBHhbV3j?=
 =?us-ascii?Q?IApxiLwdqz3fwcw8rcp+vdcZpd6IS2UfDd7eW6e0CQZ8QF5dL/c43cLlNz4W?=
 =?us-ascii?Q?XB7ROa9T5PKLr7hBQ8q2iaDuMZLULXscyScOY7Wf4fgYf7NtBWBJr5VL/Xmf?=
 =?us-ascii?Q?SPpUvfVkgQcFDGco3aJ1x510/4OBwWMXDfJuLJY6+FVDeXvJ1qGE6g8dyymS?=
 =?us-ascii?Q?ROcAQKnvwBAyFlH8ncsURnfcNB7MzXfpBuVb5RL6hXgnRZg09iZqoDCGa2C+?=
 =?us-ascii?Q?WbUcAZPdQgqquPTtwEGAqGConEiDcsIeupP9/qmoHvIuzPkrJHgp1Mx7HFYd?=
 =?us-ascii?Q?Kyn8BeAcMeAsYN69U4sE49rkyROoCzpTeA6Fj52nOMQVKRnO4o6g0/NGwkyd?=
 =?us-ascii?Q?ih5BqhO/tFoJEZaZd7RLgotWIbhyoYFOGjPCo3oy9YhVX7ur6Ti/lpAYjlkH?=
 =?us-ascii?Q?r5uCZDeIt+1tMSFm6nrg1FS/H3DvZn7UvcniRBut5WAFMaU6tNa/bEiLjij3?=
 =?us-ascii?Q?ogBSprWno/GwPZg5CxcLNaQphWsD2i/1Ww3BCvssPLER8cRWWFkUgRZPINOZ?=
 =?us-ascii?Q?QjGPvx3eftR5wTU8h/KA9qrotrGUgigh7CgCGNXWpicDgFq8KdzmVfyPJNX+?=
 =?us-ascii?Q?ziqUP7F5H/DSKbflpolCIFp6ASo4RZcMXa2IQc6h8DUXdyL1ruQDJFpWwyQN?=
 =?us-ascii?Q?IHf83fxCYxYv5g/KblZSZ/sAj+rwQd2vSxubd9/m2At4mLB8mX1+j7KSh/It?=
 =?us-ascii?Q?hR6WVhqjNkhB8t2v1AnACUV8iIB9nO3K+yAizPanbQgABRpUvQwSAvf+Ty8E?=
 =?us-ascii?Q?8qAX2GWEjTXaF+6HbRsvhMPIR+8/xJtICbi5yjF/DB3kKlh+DFxTLrlYDgWK?=
 =?us-ascii?Q?mnFjX8MIgjWm4B5OFGjAg6CHTVr7Xu2AOHGXYWIkS3biz1DII9FZyTj8VvJm?=
 =?us-ascii?Q?0ObXjgDENpDauIognXSE4bvD9meDSlfK7LTn0dtY2P7Lbofe5Fkoz6UJFKkx?=
 =?us-ascii?Q?yDDSgyiLPtn2/wbo8j0+DvekmYH0w8tHlxXANMHfWd0JHNZklBj8f/dhkAwn?=
 =?us-ascii?Q?jQe3SfmiK86JQjs+gn3Yq+3d/+Ebak2F8Hc3IeH5I9dKWyTPDtqILshgNQp7?=
 =?us-ascii?Q?gSNC9Etq/1zrkUyEmV/auXYSdsAV2+3/TWmLVIVKrn3ePwWmbbdAEKE1ipi1?=
 =?us-ascii?Q?fz0/RPhWh/iWfHWNFkUCOqTJXrWZ9YUlMrouIwRPOu7RgPeQ8PfSvp43FpVK?=
 =?us-ascii?Q?MROpEAJipvoGUwYe7vfSe9UZQFL+SlaUthxPN1vZQ/YRUiotr/kH+C9orrb2?=
 =?us-ascii?Q?O0KBGZOJI+CvN/8+fyEw1OJ8KN9F4M3oji0gYoNyr3bdGLOMoGh1W+FcZJl4?=
 =?us-ascii?Q?0ObLc+UCuSEScFgnohcsjUJUPZa6ys4rQqIkP81cMglrNvTDLHSWS311LvCK?=
 =?us-ascii?Q?yvjHcdJT3Q/gGv7KGLyWtWOCyhNiZh8u7O01MVBLxM0ws2IWfT2D3m16LdXX?=
 =?us-ascii?Q?yAQk3SLUAz9Di8Ss9qYXk8YrFHc1G5X3E9CJ94aplns7xanWPMflLUDz/MhO?=
 =?us-ascii?Q?Lc/WKzVpaAGEQ9JQboozpMeyEDWaPNnA54ffgez7NsR6eL6zRiVPqKZo70Ni?=
 =?us-ascii?Q?nVuHhU90E4qXaB42rCrVKhbkwfHWa7N5CDmE0r5BEgKzbQwq7gUQts5VOmQQ?=
 =?us-ascii?Q?m6gc6A=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b5f7806-33b1-4659-5041-08db666fa46a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 09:23:09.1465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/jOZbgK6UifMUAinzukwjutC0BA+kozgQs3nOct44gzWL/5j7D0lZTS2bE3of/Cp24/mwIRy33RUULRIZOhq1xppJKFwk+0uwjR2c87JW4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR13MB6397
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Twvlf0n7jlnM6uC/LdmW2MXSrCLC15MD5g3Z7q3Fjtg=;
 b=Gjp/swQiwF5xxz3EZYXatlxiAKqJLUMOJ75/lAXkifDFSrwwVH4mo0W+N0+C37UeV43hN+yjVHzzUPCTBGeihYJp1QIOdDTZeCPWVDexehkYybo47eTIxtu35Tcupu6EqAwfAc2JxZoSxrbXTiVszVshvpHIbBTLIygNEXA8sNo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Gjp/swQi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 09/13] ice: Accept LAG
 netdevs in bridge offloads
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 05, 2023 at 05:12:39PM +0000, Drewek, Wojciech wrote:
> 
> 
> > -----Original Message-----
> > From: Simon Horman <simon.horman@corigine.com>
> > Sent: niedziela, 4 czerwca 2023 18:07
> > To: Drewek, Wojciech <wojciech.drewek@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Ertman, David M
> > <david.m.ertman@intel.com>; michal.swiatkowski@linux.intel.com; marcin.szycik@linux.intel.com; Chmielewski, Pawel
> > <pawel.chmielewski@intel.com>; Samudrala, Sridhar <sridhar.samudrala@intel.com>; pmenzel@molgen.mpg.de;
> > dan.carpenter@linaro.org
> > Subject: Re: [PATCH iwl-next v4 09/13] ice: Accept LAG netdevs in bridge offloads
> > 
> > On Wed, May 24, 2023 at 02:21:17PM +0200, Wojciech Drewek wrote:
> > > Allow LAG interfaces to be used in bridge offload using
> > > netif_is_lag_master. In this case, search for ice netdev in
> > > the list of LAG's lower devices.
> > 
> > Hi Wojciech,
> > 
> > As this uses the first lower device found that is an ICE netdev, it is a
> > little unclear to me how this handles the (likely) case of a LAG having
> > more than one lower device, each of which are ICE netdevs belonging to the
> > same eswitch. And the perhaps less likely case where it has more than
> > once lower devices, but they don't all belong to the same ICE eswitch.
> 
> The only use case here is Active-Backup bond which is send in separate patchset[1].
> 6th patch of the series[2] makes sure that that below scenarios will not happen:
> - non-ice devices
> - more than 2 devices
> So the only possible scenario would be 2 PFs of the same nic bonded together.
> In this patch we want to handle the situation when such bond is added to the bridge.

Thanks, I think that should cover the bases.
Although I haven't reviewed [2] (yet).

> Maybe we should wait with this patch until the LAG series will be accepted?

Yes, perhaps that is a good idea.

> [1] http://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=355487&state=*
> [2] http://patchwork.ozlabs.org/project/intel-wired-lan/patch/20230517230028.321350-7-david.m.ertman@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
