Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 884E9A64D78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 12:57:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 928B14067A;
	Mon, 17 Mar 2025 11:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lqku8PJl7UCL; Mon, 17 Mar 2025 11:57:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D3BB406D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742212657;
	bh=HBz6wIMIx22fEobWdj54WBOuGuYl24RcwedyAK4awWY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ym0EvczSeM9wR1YRYuoVacr6UdEM9L6bAb0kOX+WwoBZ5BXmQ9dN7Da3LBzZ3mHzq
	 ccKKJRBuCWG1o7pp34EMVMg84lAGxkW+fferoosJ1eRAVpWArnvcfpdWbXu5eiBE5l
	 Q/NHSVNDzt03psErzj4DBOqywYVWcuzf7bAfZsOzHeCOHgLmznoUPQMs90Thygf7JA
	 9ocr8QOEObWYP3hItyxN26fMS4SkaUMhvjyliYqbG8H+nC6Bk+B0FupVaqizZDnatx
	 kK/Dx47iNYPTEyBKO9BSeFZnOSEdbf1K/fbb0+geNo+4hF610feis58EB05+jM0H8m
	 agI3r7M54diFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D3BB406D6;
	Mon, 17 Mar 2025 11:57:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 400EFD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 11:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2089440151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 11:57:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bu2gBUKLdJqm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 11:57:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DA520400E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA520400E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA520400E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 11:57:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5174E5C3549;
 Mon, 17 Mar 2025 11:55:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74C81C4CEE3;
 Mon, 17 Mar 2025 11:57:31 +0000 (UTC)
Date: Mon, 17 Mar 2025 13:57:28 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Cc: "Ertman, David M" <david.m.ertman@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>,
 "jgg@nvidia.com" <jgg@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250317115728.GT1322339@unreal>
References: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
 <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
 <20250225075530.GD53094@unreal>
 <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250226185022.GM53094@unreal>
 <IA1PR11MB6194C8F265D13FE65EA006C2DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250302082623.GN53094@unreal>
 <07e75573-9fd0-4de1-ac44-1f6a5461a6b8@intel.com>
 <20250314181230.GP1322339@unreal>
 <8b4868dd-f615-4049-a885-f2f95a3e7a54@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b4868dd-f615-4049-a885-f2f95a3e7a54@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742212651;
 bh=qx4d5VhU7979chbNqkl7b3SaFYWEFssXIF7fOZYmzIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RpSmw1RYqV5+JbUwYKGySg2Juxbpy462CJXAl/VNVe27SelEUl3DgeJBJ1fWqAY2K
 +1/Xag0U+xhoXBkHag3fMFHKdio9trBLn29qq+By2FxSqwjocZMEATysSlBCR8fdkZ
 KxrupN8Dlk64XCWzawU1FDseNOgK2LA81RU6Zgc5UovN+fcP/IIP+sjC5UA+i8so/i
 uiEsP5S+jbo4ueng/k0WcW8skC2GRZ1090rpzS2x6Gls/GNceUOPPavB/EfquA3K00
 9u7s2/UGjTuh5zT4cvgWyl6+XClz4Ywhwa4l39sAGclDbyqdT6s4w3q8XNnyf90HCo
 7v7HK6uI6AIIg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RpSmw1RY
Subject: Re: [Intel-wired-lan] [iwl-next v4 1/1] iidc/ice/irdma: Update IDC
 to support multiple consumers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 14, 2025 at 06:18:00PM -0700, Samudrala, Sridhar wrote:
> 
> 
> On 3/14/2025 11:12 AM, Leon Romanovsky wrote:
> > On Thu, Mar 13, 2025 at 04:38:39PM -0700, Samudrala, Sridhar wrote:
> > > 
> > > 
> > > On 3/2/2025 12:26 AM, Leon Romanovsky wrote:
> > > > On Wed, Feb 26, 2025 at 11:01:52PM +0000, Ertman, David M wrote:
> > > > > 
> > > > > 
> > > > > > -----Original Message-----
> > > > > > From: Leon Romanovsky <leon@kernel.org>
> > > > > > Sent: Wednesday, February 26, 2025 10:50 AM
> > > > > > To: Ertman, David M <david.m.ertman@intel.com>
> > > > > > Cc: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>; jgg@nvidia.com;
> > > > > > intel-wired-lan@lists.osuosl.org; linux-rdma@vger.kernel.org;
> > > > > > netdev@vger.kernel.org
> > > > > > Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support multiple
> > > > > > consumers
> > > > > > 
> > > > > > On Wed, Feb 26, 2025 at 05:36:44PM +0000, Ertman, David M wrote:
> > > > > > > > -----Original Message-----
> > > > > > > > From: Leon Romanovsky <leon@kernel.org>
> > > > > > > > Sent: Monday, February 24, 2025 11:56 PM
> > > > > > > > To: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>
> > > > > > > > Cc: jgg@nvidia.com; intel-wired-lan@lists.osuosl.org; linux-
> > > > > > > > rdma@vger.kernel.org; netdev@vger.kernel.org; Ertman, David M
> > > > > > > > <david.m.ertman@intel.com>
> > > > > > > > Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support
> > > > > > multiple
> > > > > > > > consumers
> > > > > > > > 
> > > > > > > > On Mon, Feb 24, 2025 at 11:04:28PM -0600, Tatyana Nikolova wrote:
> > > > > > > > > From: Dave Ertman <david.m.ertman@intel.com>
> > > > > > > > > 
> > > > > > > > > To support RDMA for E2000 product, the idpf driver will use the IDC
> > > > > > > > > interface with the irdma auxiliary driver, thus becoming a second
> > > > > > > > > consumer of it. This requires the IDC be updated to support multiple
> > > > > > > > > consumers. The use of exported symbols no longer makes sense
> > > > > > because it
> > > > > > > > > will require all core drivers (ice/idpf) that can interface with irdma
> > > > > > > > > auxiliary driver to be loaded even if hardware is not present for those
> > > > > > > > > drivers.
> > > > > > > > 
> > > > > > > > In auxiliary bus world, the code drivers (ice/idpf) need to created
> > > > > > > > auxiliary devices only if specific device present. That auxiliary device
> > > > > > > > will trigger the load of specific module (irdma in our case).
> > > > > > > > 
> > > > > > > > EXPORT_SYMBOL won't trigger load of irdma driver, but the opposite is
> > > > > > > > true, load of irdma will trigger load of ice/idpf drivers (depends on
> > > > > > > > their exported symbol).
> > > > > > > > 
> > > > > > > > > 
> > > > > > > > > To address this, implement an ops struct that will be universal set of
> > > > > > > > > naked function pointers that will be populated by each core driver for
> > > > > > > > > the irdma auxiliary driver to call.
> > > > > > > > 
> > > > > > > > No, we worked very hard to make proper HW discovery and driver
> > > > > > autoload,
> > > > > > > > let's not return back. For now, it is no-go.
> > > > > > > 
> > > > > > > Hi Leon,
> > > > > > > 
> > > > > > > I am a little confused about what the problem here is.  The main issue I pull
> > > > > > > from your response is: Removing exported symbols will stop ice/idpf from
> > > > > > > autoloading when irdma loads.  Is this correct or did I miss your point?
> > > > > > 
> > > > > > It is one of the main points.
> > > > > > 
> > > > > > > 
> > > > > > > But, if there is an ice or idpf supported device present in the system, the
> > > > > > > appropriate driver will have already been loaded anyway (and gone
> > > > > > through its
> > > > > > > probe flow to create auxiliary devices).  If it is not loaded, then the system
> > > > > > owner
> > > > > > > has either unloaded it manually or blacklisted it.  This would not cause an
> > > > > > issue
> > > > > > > anyway, since irdma and ice/idpf can load in any order.
> > > > > > 
> > > > > > There are two assumptions above, which both not true.
> > > > > > 1. Users never issue "modprobe irdma" command alone and always will call
> > > > > > to whole chain "modprobe ice ..." before.
> > > > > > 2. You open-code module subsystem properly with reference counters,
> > > > > > ownership and locks to protect from function pointers to be set/clear
> > > > > > dynamically.
> > > > > 
> > > > > Ah, I see your reasoning now.  Our goal was to make the two modules independent,
> > > > > with no prescribed load order mandated, and utilize the auxiliary bus and device subsystem
> > > > > to handle load order and unload of one or the other module.  The auxiliary device only has
> > > > > the lifespan of the core PCI driver, so if the core driver unloads, then the auxiliary device gets
> > > > > destroyed, and the associated link based off it will be gone.  We wanted to be able to unload
> > > > > and reload either of the modules (core or irdma) and have the interaction be able to restart with a
> > > > > new probe.  All our inter-driver function calls are protected by device lock on the auxiliary
> > > > > device for the duration of the call.
> > > > 
> > > > Yes, you are trying to return to pre-aux era.
> > > 
> > > 
> > > The main motivation to go with callbacks to the parent driver instead of
> > > using exported symbols is to allow loading only the parent driver required
> > > for a particular deployment. irdma is a common rdma auxilary driver that
> > > supports multiple parent pci drivers(ice, idpf, i40e, iavf). If we use
> > > exported symbols, all these modules will get loaded even on a system with
> > > only idpf device.
> > 
> > It is not how kernel works. IRDMA doesn't call to all exported symbols
> > of all these modules. It will call to only one exported symbol and that
> > module will be loaded.
> 
> If we are using plain exported symbols from all the parent pci drivers and
> make direct calls from irdma, i would expect that all the drivers need to
> load based on module dependencies.

Are you doing it already?

Thanks
