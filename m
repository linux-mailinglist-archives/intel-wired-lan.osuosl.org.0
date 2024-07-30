Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7709419DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 18:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70EEE405B1;
	Tue, 30 Jul 2024 16:37:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VlednGDbLTEP; Tue, 30 Jul 2024 16:37:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03BD040970
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722357440;
	bh=X/HjjH2JujLp8jRGfz9UetfzzweV0pnzwF6poioGMEE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i7dYEfTk3/6UApwz5437giKLduI1J2t44JJYOpmsSG7t5AJq8BqPUGCnVerwK0BPO
	 PPrEtmDslnLNypi5M6vFBrXKPaCYD/ICNg541ZjJCQc6iLFj0q0TRqLaHQMEAbD0a8
	 1UIOAxqbzoq1aNOhxO0ktG9Vrf1iTKE5ZZ6n9UDffglZ8n/Dc2iBD6LFsfdgpW1KRs
	 AtzC5di9qYOEOvNQgSObu6+NrI+pr7QYadcTe+XkWIiORoedbk8HpK93nLZZsjdyVD
	 gro4we3L59qgRNXm0Y0fQpRD0vqh+w1LXBoqHAcldKzFYWESFRf9cIYZuqY055k4Cy
	 LaYsVzqRUTYfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03BD040970;
	Tue, 30 Jul 2024 16:37:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E3F21BF842
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 16:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF0126077A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 16:37:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sDtgdJy8P5Ew for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 16:37:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0F93E60718
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F93E60718
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F93E60718
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 16:37:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CD5EBCE0CF5;
 Tue, 30 Jul 2024 16:37:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E281EC32782;
 Tue, 30 Jul 2024 16:37:09 +0000 (UTC)
Date: Tue, 30 Jul 2024 17:37:07 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240730163707.GB1967603@kernel.org>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-2-aleksander.lobakin@intel.com>
 <20240726160954.GO97837@kernel.org>
 <870cd73e-0f87-41eb-95d1-c9fe27ed1230@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <870cd73e-0f87-41eb-95d1-c9fe27ed1230@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722357432;
 bh=bxVr8C3E506uZB5bmiS2osb5teqHHgbwQEADek6Rytc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B+RR24TjS9AtJPeSYPZ7XMvdocqiT20L19VuYE1im6SipXXnAMTjpgyWBwtnSdeAl
 pl1yWdD3uoSXbDLFwQZSUvW64duNcEf+S7c8I5/BoyyosARET1OcXy4gL7W7oD3GWC
 w+8/TVNGxUl7f3OG+/duaHiz23SBUjeNNDiB/5xK14BD45u8FOHxOv0/IDVys5U9hc
 QbYWQaYBXOfzXX+dp+zmxiKHU6jzoUvsTEZlcXKLcDWdvnDyZaMNu+B+WDWZmTw64P
 H3Lp4cIX4hisEH+EEZT46I7k5pvTfFBH9+Xeb9rLFuNZhkmMbxs4vhbk2hpnVfbGSs
 z8uCZrxep+eiw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=B+RR24Tj
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: fix memory leaks
 and crashes while performing a soft reset
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
Cc: nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 29, 2024 at 10:54:50AM +0200, Alexander Lobakin wrote:
> From: Simon Horman <horms@kernel.org>
> Date: Fri, 26 Jul 2024 17:09:54 +0100
> 
> > On Wed, Jul 24, 2024 at 03:40:22PM +0200, Alexander Lobakin wrote:
> >> The second tagged commit introduced a UAF, as it removed restoring
> >> q_vector->vport pointers after reinitializating the structures.
> >> This is due to that all queue allocation functions are performed here
> >> with the new temporary vport structure and those functions rewrite
> >> the backpointers to the vport. Then, this new struct is freed and
> >> the pointers start leading to nowhere.
> 
> [...]
> 
> >>  err_reset:
> >> -	idpf_vport_queues_rel(new_vport);
> >> +	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
> >> +				 vport->num_rxq, vport->num_bufq);
> >> +
> >> +err_open:
> >> +	if (current_state == __IDPF_VPORT_UP)
> >> +		idpf_vport_open(vport);
> > 
> > Hi Alexander,
> > 
> > Can the system end up in an odd state if this call to idpf_vport_open(), or
> > the one above, fails. Likewise if the above call to
> > idpf_send_add_queues_msg() fails.
> 
> Adding the queues with the parameters that were before changing them
> almost can't fail. But if any of these two fails, it really will be in
> an odd state...

Thanks for the clarification, this is my concern.

> Perhaps we need to do a more powerful reset then? Can we somehow tell
> the kernel that in fact our iface is down, so that the user could try
> to enable it manually once again?
> Anyway, feels like a separate series or patch to -next, what do you think?

Yes, sure. I agree that this patch improves things, and more extreme
corner cases can be addressed separately.

With the above in mind, I'm happy with this patch.

Reviewed-by: Simon Horman <horms@kernel.org>

