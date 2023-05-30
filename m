Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF47D716856
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26EC582236;
	Tue, 30 May 2023 15:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26EC582236
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685462357;
	bh=uNCPNLa5YM01stSFYGYx1VISj+XMKuDpSC1jqtUJs8o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NHows1TR6ELxhDS96DIKW9uA6YGs7OWnAc2JAVHT77QdZS0BadqohbqZjkYEzR6kD
	 4js6uFU8VFdL7MU3EVLGD5GNNU4zoq/1NDAEbUFfDgOVK86cuRMzRmBzsaYDEZDmq4
	 QgcKxoK3I+CInLzIk7M6nyDE4TFg5VPAbw90i1M3P+igA13RpWg8VIFvINTXnjQciL
	 o583iSZSSdXHoBJkTRPd/fqE7PwaDkhz/9lLC8waJel8gN9t7S7AKrf8f9F6j2efNT
	 4PUhb8BwIcPozOmTUyjJO4m4cKJj4tJBZ5MwZ+NMR81GcvkSILf3HxMA2Ed8FTxfFn
	 BXPxb7/Mhy/Cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id srIehMZlqIEh; Tue, 30 May 2023 15:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00F8681FD5;
	Tue, 30 May 2023 15:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00F8681FD5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDCB61BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B492681FE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B492681FE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OGO_IJuFj-w2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:59:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61C1883083
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61C1883083
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:59:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="339549992"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="339549992"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="830820572"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="830820572"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 30 May 2023 08:59:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 08:59:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 08:59:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 08:59:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQ/O5fQ50h1daYsST+VoFP4DD54L0WgSvHtnwNWuev6sVRlHHVcvknb+bimGmDdOqgZCNXmTOt8McVxr3xLoNiEFcB2rMFP2nJlIGptLHarGCrCOy1p5idFO5WhT+2/V9L5RTOuUWZk8bL6KWHBUySmInDa5GUQ1li3Vmri4n99BhZQL93+OVsAhmHeehrfPnM7+TvN+cjrjw4ldVBeUNpnHrPK3f4Jt5aTC+SSvHHyAaC7k1jNyTI5Nnv6IDaURXSq8A4slNSbz1tUNjIPoOId2ytEZ0NvUzLZwJkBqNThXitdCgTbPFcVv5ArOLf9oOQ9dYAdI3jnFuEmVBD5MnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cYVmeCC8iaHR/gm5+huCjjr3y4kKyDsRCOJe6G5soCE=;
 b=hlp2Jd8aK38m26w8dRLPRSB22paGBYJ7r6f086VvF+z1pfRiUHWKHLjqJZYMgRfatao6CcgFUuWObPIRPpFJqEjvwWufqwanibtdew/wUJfiB6WprnRIX2tLjw1ncUy8uVTzlGmFdoqXcoN98bfGhN45rxI8B9+VxSCH6w2BBRJds9MuVqze9+dZQwcaphgcVbCHWiXrnpG7pN9q+IYvWsjSujr3BoCSIz9OXvnStpNdeezWxcJaI+fndLYZqWEJGqx+w7VijsDExUQZVtX4tQe/T7axWa26D7Ovi9+0WSRxpdsOpYfMRDTTy6Nh1YvwRjyEO/U8ald6zqcLfQAKrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB6396.namprd11.prod.outlook.com (2603:10b6:208:3ab::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 15:59:04 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 15:59:03 +0000
Date: Tue, 30 May 2023 17:58:57 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kamil Maziarz <kamil.maziarz@intel.com>
Message-ID: <ZHYdQUT7oCDR11U8@boxer>
References: <20230525105155.105870-1-kamil.maziarz@intel.com>
Content-Disposition: inline
In-Reply-To: <20230525105155.105870-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: FR0P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB6396:EE_
X-MS-Office365-Filtering-Correlation-Id: 0577f1f2-e28e-46ea-c9a0-08db6126ca57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FfO9gY2kkfJUSmBF9leQv6bRzSWsAxYe3rpBoYvLz2OtOifGHOdN7L3SZUO9mur2spULBaokLSzeX3V2EqU3X4/oh9oFMruMC2se02HRHvdDnGeDWIBifcRYh0IT6GCOvom/31TAEH62mstmoesUNW9CckXQFZcHDN9wdUxSGs43YRFW2lOB24/PkAjssmwKh26DvG7IKYUJY6WXuZXs9AWkjgbmXBibV1Pz2eUeLXX2q/KgV+a+XEnJKthMRp3zvuKnJASaAMwfBgs3iaV915bTxDNRoNSd2arCMlCG5j9e3RuUtx9f9mdkxYhwaqv6bjLCxqc/TByoB32ik8zVPqe6GTqh4+Wx11HzLvuJN52Qn2535qrDr2UhxZRgNRZLIwo4GCKmPy73zpxGNdcJ3xljDv4Xeo8Wntl3Kp5/5yFf3dIQEYAsYBbLkmnhKU2oPYmC50gGKsJyyEdPZTSvbs8ZuHXbdIuPub/WwlP88puNu0KE8lDoAc9SbjiDgFhO0Yu9UliRR2Hd+oRTCjZWpW/1zUPWwRH7243XVob3tZA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(366004)(376002)(136003)(39860400002)(346002)(451199021)(82960400001)(478600001)(38100700002)(86362001)(33716001)(66946007)(66556008)(66476007)(4326008)(6636002)(2906002)(6666004)(9686003)(6486002)(186003)(26005)(316002)(6512007)(6506007)(41300700001)(44832011)(5660300002)(966005)(8676002)(8936002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q0yRG/v91fYZ9ShC3p4zcQsWx7pzgcB4jI52rlAAlfsREQneQmzpE0+a8/F2?=
 =?us-ascii?Q?gTeSnjxm2avtPLt1hXRfiDc2wlM12TkIuWmA5NtDsmcwCd68VVq4TRnKSF19?=
 =?us-ascii?Q?ojZvXlAkadRMdnAPBP9mbgksKTRFTrDiwMfZp+kylaVULIZ62iQ/1fwJRqf5?=
 =?us-ascii?Q?Lh72t3Sw57PCO/pVZUXpGOiVLYp5CzydjWiUBqk0IaXnUXBbUMNZUoQB0rwI?=
 =?us-ascii?Q?xCgkC24s3P2gtfFdT+ulTYU6p6tp6tqNjoVi/okViOAKFPY7OmE6oKmBaU+C?=
 =?us-ascii?Q?0G1rK0Pko3Xv2X02VOn4dNT0m6NOADIHjuJ4dtIeXx2br0JdjC4suPAF8TgS?=
 =?us-ascii?Q?0YUEIUQ0sE/uz/A4VICkY/gZGWn9L/TZ73FUbQ34XVpkvvFxAxYIcuVpVl1U?=
 =?us-ascii?Q?a4eCIspldaLq4SdPvIqwWxC+J4XS2zWagJ9irCXPKUp4k6M17/TrtgYtB6RR?=
 =?us-ascii?Q?wXGoiMBHItOl6UekrTEHYj8qVHgt5Y6B/9ZcXsmbP67XLvNap1ZI2JfEhzL/?=
 =?us-ascii?Q?xH3YOlLM2ze+9Otcdeovu/WxE7BL5RPZLSwcURd03r41+xdslgRMyxGf54k/?=
 =?us-ascii?Q?WuPm8TZ73CcE72xv1AoytwCJCbT9cav7NYPcpcSU+ORQ/nXD433B+6g9a5rc?=
 =?us-ascii?Q?G8NdybdCgIJTFe8TQqFxqOT3FfVwr1EgY7HX7qjpBC6purPK384IswWFS77g?=
 =?us-ascii?Q?iBtUaIyiN3ThzPQMzJLRRxmZ3DCGk/RnnZ7cCytXvp5vD2rDBWi+xR2tyHDB?=
 =?us-ascii?Q?5KLNP1KLSufbFLe59YqS+9oK5GHYefhkUySDInhWQ0eS7hE/ch4HNB1MwPwg?=
 =?us-ascii?Q?GY7HBrOL/RfZjmexmJUDgr8LQX8u28jH9nbBE1si0EJZ8Z/DJzsLui4ievod?=
 =?us-ascii?Q?Gk/w9WmHr4/O/ws8tR91ZoUDTy2QDc0MaM4tgE/MX+RNGqMYnpJFCw+d3SE8?=
 =?us-ascii?Q?I7XfpBKZTzuAApKVDOwxF843DyzKILQ5GaA3cyNClsEfdBFbL0brxwpRCjD1?=
 =?us-ascii?Q?ME8VptHAY4mmZhQMLOIUYNYlSGPZnUU7nfrjro3YJ2j5e7mX4YZUnzct7X9e?=
 =?us-ascii?Q?CJ5XSgOTGb9dzd+9roO8RDTiwRVv29BcCI8Ee6ub91BEhEkFMJSWEEoPy4WH?=
 =?us-ascii?Q?Lfm0w6pvBsEa7Z0dSH0cjpjNe/A3PBO3IFspt8rA1zcYW5twzReNSPEZaF21?=
 =?us-ascii?Q?R7uleCdhLXLenRlcMLb8YdcsHwOVvNHev0Jq6pedQaFwiPHynPk5+G36eorb?=
 =?us-ascii?Q?KMI3t66ECNCrv4d4n6760Z/XVEhTGoVw46a5BH5odMR59S534Axh1UgoEwB6?=
 =?us-ascii?Q?rqKLYqUZoCKZ0Z1nN833/IPFiK6xLKZ57xcGpJxG4YmYuMA20mSoifd99g7R?=
 =?us-ascii?Q?ncSVPhdlKl3lV/6ENxGLgz7X2oCq2vf9Ga5WNxbhC1zJ++DuJnA0do3ik1J0?=
 =?us-ascii?Q?vGEdvQOvzylA2BOZzGH34YOrIY1lycZCg8IQCzqO2/kDRY5PxVvOzQxO+1Zl?=
 =?us-ascii?Q?aGJUkT6n0sy1LCinnR22BcS38g1T5dS4/JtEiGXjJFzsvlo4LPmlC/1wF2O3?=
 =?us-ascii?Q?RSbD33fyMbVY8kxORyTL0kINC/XBPKNkPWAg7fdj037E2UqDjuUR/uUYuwP8?=
 =?us-ascii?Q?pA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0577f1f2-e28e-46ea-c9a0-08db6126ca57
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 15:59:03.5987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4d0bjexRjCzmrE99fG21fTyxbc3NYKZxmCyyG4v/grYFTeoEZc5W6qLG1foo7EVNDgoUrnV5MwPxGE5u+8Pd0kIQH2byGH0f8GEIoIdA8LI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685462349; x=1716998349;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=941gD8I5LSBl8Y5eo1h86i+t57HshLg7E1ubSEaCA9k=;
 b=YeSbVmV9RxHzZFezg/OEOv9/nr4MYNRzuwuBspDLlNCgyTgFNpERA5yh
 utoIjKImGAtOm3dJ+c+ArbHd3XoM8+VPVTntopjHld+M8DNgMwXhjDyN2
 bPOqLykAYmuJMBP1xxBYEjNbwGxmRm2h8RD9ohvH/EMbM9OmGHmCxpH5k
 mlJ2oIUqXOHzS0UWMfsfvcBCPlbnGkGe/nilYY+OWHgPjH7ZO/ierSBSA
 THi6L+leu5ra3BIphfpfWRQoBOOWnIJPGds/CoBGqkR1/MMb00NiynDG3
 S05DJ1UnG+wvlQSZdcvrueHWqbK3k6MMMTyCEf7a02MpUEZws2fiH3tD7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YeSbVmV9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak
 when NIC is brought up and down
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 25, 2023 at 12:51:55PM +0200, Kamil Maziarz wrote:
> Fix the buffer leak that occurs while switching
> the port up and down with traffic and XDP by
> checking for an active XDP program and freeing all empty TX buffers.

How did you spot this? Was this by code walkthrough, or?
Tx buffers are not particularly empty, they are mapped/allocated.
> 
> Fixes: cdedef59deb0 ("ice: Configure VSIs for Tx/Rx")

i think it deserves a fixes tag which points to XDP support being added.
The code you are referring to was just fine before XDP support.

> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a1f7c8edc22f..03513d4871ab 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -7056,6 +7056,10 @@ int ice_down(struct ice_vsi *vsi)
>  	ice_for_each_txq(vsi, i)
>  		ice_clean_tx_ring(vsi->tx_rings[i]);
>  
> +	if (ice_is_xdp_ena_vsi(vsi))
> +		ice_for_each_xdp_txq(vsi, i)
> +			ice_clean_tx_ring(vsi->xdp_rings[i]);
> +
>  	ice_for_each_rxq(vsi, i)
>  		ice_clean_rx_ring(vsi->rx_rings[i]);
>  
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
