Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD189074D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 16:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48DB46103B;
	Thu, 13 Jun 2024 14:13:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1-Os_lzAXoR6; Thu, 13 Jun 2024 14:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8694461031
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718288028;
	bh=9ImLj4yEnuP3KxiO9Uc2yulYAdCMZJddf0VtYCT8SmA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oT6EkFIWk/dstbvtSvGH3j6MWz4mpnV8LHzrKJK5Ptn3/MyNgTcL/B8z7ho3O+PaK
	 lpuuDLTFCtYS4jd3l1t9Jn3ZMCe0hVVDQ17CYvfvgG1nY39Beigj0Sh0f8zFv7JmBr
	 kPmqavV5+IcNnQ1W6v0vP15JGn3xSnq0fVNIQqxRIFLiD/mXG3r8cmigJ0923jet6V
	 DgndxYoJk9BcdbXu3e+JOofMUH6vneM9VFLD+s0BNCGpukEqBBSfBLJHnhPV+0qQ+N
	 8a319HqvfPws/+h48x2Cs6U/gTdFz5olhdLykMVeGi7B91cG1OXljWM1yeX//5SVbz
	 CMnX7oBaU15mw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8694461031;
	Thu, 13 Jun 2024 14:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC6A11BF34B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C938E60EFC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q1CWkLzLeK9E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 14:13:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D43CE60ECC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D43CE60ECC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D43CE60ECC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:13:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0994B61797;
 Thu, 13 Jun 2024 14:13:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C59BC2BBFC;
 Thu, 13 Jun 2024 14:13:43 +0000 (UTC)
Date: Thu, 13 Jun 2024 07:13:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240613071343.019e7dca@kernel.org>
In-Reply-To: <ZmqztPo6UDIC6gKx@lzaremba-mobl.ger.corp.intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
 <20240611193837.4ffb2401@kernel.org>
 <ZmlGppe04yuGHvPx@lzaremba-mobl.ger.corp.intel.com>
 <20240612140935.54981c49@kernel.org>
 <ZmqztPo6UDIC6gKx@lzaremba-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718288024;
 bh=miLeVMM2w5yAcnT3uzAx4GpVzV/Y9CzVC17jsvEBUfU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ogjDdw34aMYbnVFXO1TQJ6gxcFOElu+kQ1l9kcwCvX/5TJXX6Y46YnhOfBue9+SfZ
 KpPZTJi+ymmNr/Fe68Gb+Dj57jzeUz4dXcdurC3Y09XSnhkysiQrzzFouyiUXmPG+h
 0Kw32Ke9rEiUSd1lqkOMQXvXVpp7YdjaLVT8YQdUjqxJpeUE/hzDrskqDgJmQaAtLh
 37Y3FO250POxonskubWav59Lxb9Vj8N2COWpo2ifg80tyiSjgFNLU5YuwuFpltcUAS
 pavfyYFer7rPxxkOfzw+IPQUsivZ0OlfTrFK3ejk/7EUpbu2SoYv2OJdtoIY5zQygp
 rp62AoeqnUtCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ogjDdw34
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix synchronization
 between .ndo_bpf() and reset
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 13 Jun 2024 10:54:12 +0200 Larysa Zaremba wrote:
> > > The locking mechanisms I use here do not look pretty, but if I am not missing 
> > > anything, the synchronization they provide must be robust.  
> > 
> > Robust as in they may be correct here, but you lose lockdep and all
> > other infra normal mutex would give you.
> 
> I know, but __netif_queue_set_napi() requires rtnl_lock() inside the potential 
> critical section and creates a deadlock this way. However, after reading 
> patches that introduce this function, I think it is called too early in the
> configuration. Seems like it should be called somewhere right after 
> netif_set_real_num_rx/_tx_queues(), much later in the configuration where we 
> already hold the rtnl_lock(). In such way, ice_vsi_rebuild() could be protected 
> with an internal mutex. WDYT?

On a quick look I think that may work. For setting the NAPI it makes
sense - netif_set_real_num_rx/_tx_queues() and netif_queue_set_napi()
both inform netdev about the queue config, so its logical to keep them
together. I was worried there may be an inconveniently placed
netif_queue_set_napi() call which is clearing the NAPI pointer.
But I don't see one.

> > > A prettier way of protecting the same critical sections would be replacing 
> > > ICE_CFG_BUSY around ice_vsi_rebuild() with rtnl_lock(), this would eliminate 
> > > locking code from .ndo_bpf() altogether, ice_rebuild_pending() logic will have 
> > > to stay.
> > > 
> > > At some point I have decided to avoid using rtnl_lock(), if I do not have to. I 
> > > think this is a goal worth pursuing?  
> > 
> > Is the reset for failure recovery, rather than reconfiguration? 
> > If so netif_device_detach() is generally the best way of avoiding
> > getting called (I think I mentioned it to someone @intal recently).  
> 
> AFAIK, netif_device_detach() does not affect .ndo_bpf() calls. We were trying 
> such approach with idpf and it does work for ethtool, but not for XDP.

I reckon that's an unintentional omission. In theory XDP is "pure
software" but if the device is running driver will likely have to
touch HW to reconfigure. So, if you're willing, do send a ndo_bpf 
patch to add a detached check.
