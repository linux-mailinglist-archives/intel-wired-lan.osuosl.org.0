Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46991A6191E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 19:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01212847EB;
	Fri, 14 Mar 2025 18:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wq7VVCgxKutv; Fri, 14 Mar 2025 18:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E57D847EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741975960;
	bh=bea4aF/eYUXOOd8yEUco3DKEiZCgAkpElXeGPg50Dew=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wHl0jQNJceK51BzAu1/fPFdUQJ+4OgUc3XnXD1TwjANbmXZ2lnhnh3r3iXcRICIKx
	 RiGWu+z5u5/PDJZr9rCXHmKYGI332jR6aAidmC9Yw+DnmdEo1NwRAf8OQ6jrwzp0UK
	 iMJLa6FKeRkYya/kI/qNVlcV6l3bbphtwW7QirMkkk8Lo8ykpW/aisywj1dx6bOV81
	 UuDUIjag9b28q3O7zK6idckQ0DluYpn7/oS9YTvh4uE71izdj2gEKOqB7HskXnLkU8
	 ROuFc2OVjrwBQDq9fRvd7tsoOhMF1KOiLhdpZ6RHcFoCjv99yX7tS8Ys/qIi1S1bbi
	 21mWD/ViAyBoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E57D847EA;
	Fri, 14 Mar 2025 18:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AD02EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 18:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A96741AAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 18:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_FLaTrzWi_d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 18:12:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B481641AAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B481641AAA
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B481641AAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 18:12:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9FF0D5C548B;
 Fri, 14 Mar 2025 18:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 913F5C4CEE3;
 Fri, 14 Mar 2025 18:12:34 +0000 (UTC)
Date: Fri, 14 Mar 2025 20:12:30 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Cc: "Ertman, David M" <david.m.ertman@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>,
 "jgg@nvidia.com" <jgg@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250314181230.GP1322339@unreal>
References: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
 <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
 <20250225075530.GD53094@unreal>
 <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250226185022.GM53094@unreal>
 <IA1PR11MB6194C8F265D13FE65EA006C2DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250302082623.GN53094@unreal>
 <07e75573-9fd0-4de1-ac44-1f6a5461a6b8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <07e75573-9fd0-4de1-ac44-1f6a5461a6b8@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741975955;
 bh=lhJDeX49+5aiNltJ7ikw4MoRh8myuWlXfEQi8+HVDNU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZZ7zmc3UuUHq80xn+QmY6UGtc6zc8u26BpKN10Ds35Zu0b1OICd+uIteduEYFPqYq
 4Pn9fFBa2MT/YyTPBL64M5TVEIm8EJT9+YN3ra5VEGEw65aAVFDNPZBsHTHEqk9LbI
 yU6KUG8AcgkDhhebFPbgKrO9A45m0jFMcCs2TVD8mCSaYAXGA8V77G/5xIS+tlJRLO
 GTN7xYkZeQFr4YxHrb4gCgrCwF/lPtqj/upERBNNqzhRngq8gIt8CKj7ecmMsd2gG5
 Lvw3/XXnjZkZh36GP4JJi7PLSt3huGmE5iZFXwoLiW/ipStaGp06zE3mj+dw5tKkig
 TvhOX0UW9LBDA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZZ7zmc3U
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

On Thu, Mar 13, 2025 at 04:38:39PM -0700, Samudrala, Sridhar wrote:
> 
> 
> On 3/2/2025 12:26 AM, Leon Romanovsky wrote:
> > On Wed, Feb 26, 2025 at 11:01:52PM +0000, Ertman, David M wrote:
> > > 
> > > 
> > > > -----Original Message-----
> > > > From: Leon Romanovsky <leon@kernel.org>
> > > > Sent: Wednesday, February 26, 2025 10:50 AM
> > > > To: Ertman, David M <david.m.ertman@intel.com>
> > > > Cc: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>; jgg@nvidia.com;
> > > > intel-wired-lan@lists.osuosl.org; linux-rdma@vger.kernel.org;
> > > > netdev@vger.kernel.org
> > > > Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support multiple
> > > > consumers
> > > > 
> > > > On Wed, Feb 26, 2025 at 05:36:44PM +0000, Ertman, David M wrote:
> > > > > > -----Original Message-----
> > > > > > From: Leon Romanovsky <leon@kernel.org>
> > > > > > Sent: Monday, February 24, 2025 11:56 PM
> > > > > > To: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>
> > > > > > Cc: jgg@nvidia.com; intel-wired-lan@lists.osuosl.org; linux-
> > > > > > rdma@vger.kernel.org; netdev@vger.kernel.org; Ertman, David M
> > > > > > <david.m.ertman@intel.com>
> > > > > > Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support
> > > > multiple
> > > > > > consumers
> > > > > > 
> > > > > > On Mon, Feb 24, 2025 at 11:04:28PM -0600, Tatyana Nikolova wrote:
> > > > > > > From: Dave Ertman <david.m.ertman@intel.com>
> > > > > > > 
> > > > > > > To support RDMA for E2000 product, the idpf driver will use the IDC
> > > > > > > interface with the irdma auxiliary driver, thus becoming a second
> > > > > > > consumer of it. This requires the IDC be updated to support multiple
> > > > > > > consumers. The use of exported symbols no longer makes sense
> > > > because it
> > > > > > > will require all core drivers (ice/idpf) that can interface with irdma
> > > > > > > auxiliary driver to be loaded even if hardware is not present for those
> > > > > > > drivers.
> > > > > > 
> > > > > > In auxiliary bus world, the code drivers (ice/idpf) need to created
> > > > > > auxiliary devices only if specific device present. That auxiliary device
> > > > > > will trigger the load of specific module (irdma in our case).
> > > > > > 
> > > > > > EXPORT_SYMBOL won't trigger load of irdma driver, but the opposite is
> > > > > > true, load of irdma will trigger load of ice/idpf drivers (depends on
> > > > > > their exported symbol).
> > > > > > 
> > > > > > > 
> > > > > > > To address this, implement an ops struct that will be universal set of
> > > > > > > naked function pointers that will be populated by each core driver for
> > > > > > > the irdma auxiliary driver to call.
> > > > > > 
> > > > > > No, we worked very hard to make proper HW discovery and driver
> > > > autoload,
> > > > > > let's not return back. For now, it is no-go.
> > > > > 
> > > > > Hi Leon,
> > > > > 
> > > > > I am a little confused about what the problem here is.  The main issue I pull
> > > > > from your response is: Removing exported symbols will stop ice/idpf from
> > > > > autoloading when irdma loads.  Is this correct or did I miss your point?
> > > > 
> > > > It is one of the main points.
> > > > 
> > > > > 
> > > > > But, if there is an ice or idpf supported device present in the system, the
> > > > > appropriate driver will have already been loaded anyway (and gone
> > > > through its
> > > > > probe flow to create auxiliary devices).  If it is not loaded, then the system
> > > > owner
> > > > > has either unloaded it manually or blacklisted it.  This would not cause an
> > > > issue
> > > > > anyway, since irdma and ice/idpf can load in any order.
> > > > 
> > > > There are two assumptions above, which both not true.
> > > > 1. Users never issue "modprobe irdma" command alone and always will call
> > > > to whole chain "modprobe ice ..." before.
> > > > 2. You open-code module subsystem properly with reference counters,
> > > > ownership and locks to protect from function pointers to be set/clear
> > > > dynamically.
> > > 
> > > Ah, I see your reasoning now.  Our goal was to make the two modules independent,
> > > with no prescribed load order mandated, and utilize the auxiliary bus and device subsystem
> > > to handle load order and unload of one or the other module.  The auxiliary device only has
> > > the lifespan of the core PCI driver, so if the core driver unloads, then the auxiliary device gets
> > > destroyed, and the associated link based off it will be gone.  We wanted to be able to unload
> > > and reload either of the modules (core or irdma) and have the interaction be able to restart with a
> > > new probe.  All our inter-driver function calls are protected by device lock on the auxiliary
> > > device for the duration of the call.
> > 
> > Yes, you are trying to return to pre-aux era.
> 
> 
> The main motivation to go with callbacks to the parent driver instead of
> using exported symbols is to allow loading only the parent driver required
> for a particular deployment. irdma is a common rdma auxilary driver that
> supports multiple parent pci drivers(ice, idpf, i40e, iavf). If we use
> exported symbols, all these modules will get loaded even on a system with
> only idpf device.

It is not how kernel works. IRDMA doesn't call to all exported symbols
of all these modules. It will call to only one exported symbol and that
module will be loaded.

> 
> The documentation for auxiliary bus
> 	https://docs.kernel.org/driver-api/auxiliary_bus.html
> shows an example on how shared data/callbacks can be used to establish
> connection with the parent.

I'm aware of this documentation, it is incorrect. You can find the
explanation why this documentation exists in habanalabs discussion.

> 
> Auxiliary devices are created and registered by a subsystem-level core
> device that needs to break up its functionality into smaller fragments. One
> way to extend the scope of an auxiliary_device is to encapsulate it within a
> domain-specific structure defined by the parent device. This structure
> contains the auxiliary_device and any associated shared data/callbacks
> needed to establish the connection with the parent.
> 
> An example is:
> 
>  struct foo {
>       struct auxiliary_device auxdev;
>       void (*connect)(struct auxiliary_device *auxdev);
>       void (*disconnect)(struct auxiliary_device *auxdev);
>       void *data;
> };
> 
> This example clearly shows that it is OK to use callbacks from the aux
> driver. The aux driver is dependent on the parent driver and the parent
> driver will guarantee that it will not get unloaded until all the auxiliary
> devices are destroyed.
> 
> Hopefully you will understand our motivation of going with this design and
> not force us to go with a solution that is not optimal.

Feel free to fix documentation.

Thanks

> 
> Thanks
> Sridhar
> 
