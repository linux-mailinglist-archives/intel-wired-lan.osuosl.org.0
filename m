Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4F7A46A27
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 19:50:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DBF061036;
	Wed, 26 Feb 2025 18:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a3AkJi8uVmCh; Wed, 26 Feb 2025 18:50:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7BB961045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740595832;
	bh=NOy8MZswnCN9Z/sFkyFtvMhaELZGVtDWghtPctZZWBg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G92uDUcEdJOAjbq1ZLk5cu+sgwwNpaa9Hrt5ly3K9SHQtFtR5VO2rWMbYMfwdH5MU
	 vKZhSDUr2bUkYXSP/xZVdrbs24FzfKcIZzg0iB7Sqwu6XBpd224vhZKOahuo0e1i1x
	 nu1x3IN0xlYMJKAwMw0vDChopVFVXOKXil8vNjPMl2zKLMxFnW4R15pBxBnlonPxdJ
	 +pfJJND/VERwNvA3RUGx7qU+1Ui4uPnyfbtAQcQiCyAkNCfzKzp6guZzG2VsEMXm/Y
	 xw3TNl2rQUw0B4Pr8nC7eU9x0K5yFIKo9Pg1JAy2Tkamo8GVFAbA4SIwykzr7+PQAl
	 9G+Y8LKWQANKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7BB961045;
	Wed, 26 Feb 2025 18:50:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D82D1ED4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 18:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4DBE740D6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 18:50:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BLjNd5Abndyl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 18:50:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04::f03c:95ff:fe5e:7468; helo=tor.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 35D0440C49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35D0440C49
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04::f03c:95ff:fe5e:7468])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35D0440C49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 18:50:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B05C261503;
 Wed, 26 Feb 2025 18:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAB18C4CED6;
 Wed, 26 Feb 2025 18:50:26 +0000 (UTC)
Date: Wed, 26 Feb 2025 20:50:22 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Ertman, David M" <david.m.ertman@intel.com>
Cc: "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>,
 "jgg@nvidia.com" <jgg@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250226185022.GM53094@unreal>
References: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
 <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
 <20250225075530.GD53094@unreal>
 <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740595827;
 bh=GAlBE1MxBLfuNJIdhoKlRlj8/U0KvapKDVttTpAWkto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O+4/s9LhDb3+Glvl+MPUJGDHbmTaCE5lHu8qIRVou/5uMi4gLs+UsT45p/eEplF13
 X6+GbdS5V8QvUDsV1RYxM6s86Z7YRDs3bHSwEI9iMzoEAZxGs1F+fO/qoeo+Sy9+7e
 ah3TfR5ac/wpSWNargdVhkYDiz+jljWsfwnoIe4VcaLJU2MVYTL2UCTlXKvzVuHQCf
 4+5sX7Kb3qe311nMoFcvPRYbmG/9eypEHJYoCIkEwtbVxPMy6/vXZmltChkJuei9Uu
 Y1oStQ5jFCVLR4QsvoDvq9vj1QLyvljO07AT5MvdvcV+500o3dnfPEXtQk33vP0UZA
 lxWmXMOf2I8YA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=O+4/s9Lh
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

On Wed, Feb 26, 2025 at 05:36:44PM +0000, Ertman, David M wrote:
> > -----Original Message-----
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Monday, February 24, 2025 11:56 PM
> > To: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>
> > Cc: jgg@nvidia.com; intel-wired-lan@lists.osuosl.org; linux-
> > rdma@vger.kernel.org; netdev@vger.kernel.org; Ertman, David M
> > <david.m.ertman@intel.com>
> > Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support multiple
> > consumers
> > 
> > On Mon, Feb 24, 2025 at 11:04:28PM -0600, Tatyana Nikolova wrote:
> > > From: Dave Ertman <david.m.ertman@intel.com>
> > >
> > > To support RDMA for E2000 product, the idpf driver will use the IDC
> > > interface with the irdma auxiliary driver, thus becoming a second
> > > consumer of it. This requires the IDC be updated to support multiple
> > > consumers. The use of exported symbols no longer makes sense because it
> > > will require all core drivers (ice/idpf) that can interface with irdma
> > > auxiliary driver to be loaded even if hardware is not present for those
> > > drivers.
> > 
> > In auxiliary bus world, the code drivers (ice/idpf) need to created
> > auxiliary devices only if specific device present. That auxiliary device
> > will trigger the load of specific module (irdma in our case).
> > 
> > EXPORT_SYMBOL won't trigger load of irdma driver, but the opposite is
> > true, load of irdma will trigger load of ice/idpf drivers (depends on
> > their exported symbol).
> > 
> > >
> > > To address this, implement an ops struct that will be universal set of
> > > naked function pointers that will be populated by each core driver for
> > > the irdma auxiliary driver to call.
> > 
> > No, we worked very hard to make proper HW discovery and driver autoload,
> > let's not return back. For now, it is no-go.
> 
> Hi Leon,
> 
> I am a little confused about what the problem here is.  The main issue I pull
> from your response is: Removing exported symbols will stop ice/idpf from
> autoloading when irdma loads.  Is this correct or did I miss your point?

It is one of the main points.

> 
> But, if there is an ice or idpf supported device present in the system, the
> appropriate driver will have already been loaded anyway (and gone through its
> probe flow to create auxiliary devices).  If it is not loaded, then the system owner
> has either unloaded it manually or blacklisted it.  This would not cause an issue
> anyway, since irdma and ice/idpf can load in any order.

There are two assumptions above, which both not true.
1. Users never issue "modprobe irdma" command alone and always will call
to whole chain "modprobe ice ..." before.
2. You open-code module subsystem properly with reference counters,
ownership and locks to protect from function pointers to be set/clear
dynamically.

> 
> > 
> > <...>
> > 
> > > +/* Following APIs are implemented by core PCI driver */
> > > +struct idc_rdma_core_ops {
> > > +	int (*vc_send_sync)(struct idc_rdma_core_dev_info *cdev_info, u8
> > *msg,
> > > +			    u16 len, u8 *recv_msg, u16 *recv_len);
> > > +	int (*vc_queue_vec_map_unmap)(struct idc_rdma_core_dev_info
> > *cdev_info,
> > > +				      struct idc_rdma_qvlist_info *qvl_info,
> > > +				      bool map);
> > > +	/* vport_dev_ctrl is for RDMA CORE driver to indicate it is either
> > ready
> > > +	 * for individual vport aux devices, or it is leaving the state where it
> > > +	 * can support vports and they need to be downed
> > > +	 */
> > > +	int (*vport_dev_ctrl)(struct idc_rdma_core_dev_info *cdev_info,
> > > +			      bool up);
> > > +	int (*request_reset)(struct idc_rdma_core_dev_info *cdev_info,
> > > +			     enum idc_rdma_reset_type reset_type);
> > > +};
> > 
> > Core driver can call to callbacks in irdma, like you already have for
> > irdma_iidc_event_handler(), but all calls from irdma to core driver must
> > be through exported symbols. It gives us race-free world in whole driver
> > except one very specific place (irdma_iidc_event_handler).
> 
> I am confused here as well.  Calling a function through an exported symbol,
> or calling the same function from a function pointer should not affect the
> generation of a race condition, as the same function is being called.
> What is inherently better about an exported symbol versus a function
> pointer when considering race conditions?

Exported symbol guarantees that function exists in core module. Module
subsystem will ensure that core module is impossible to unload until all
users are gone. Function pointer has no such guarantees.

> 
> Also, why is calling a function pointer from the irdma module ok, but calling
> one from the core module not?

Because we need to make sure that core module doesn't disappear while
irdma executes its flow. The opposite is not true because core module
controls irdma devices and aware than irdma module is loaded/unloaded.

Thanks

> 
> Again - Thank you for the review, and if I completely missed your points, please let me know!
> 
> Thanks
> DaveE
> 
> > 
> > Thanks
> 
> 
