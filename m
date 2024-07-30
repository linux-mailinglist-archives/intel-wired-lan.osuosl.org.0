Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8A7941025
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 13:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2F1780FB2;
	Tue, 30 Jul 2024 11:03:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VlDW2u8iz1Ji; Tue, 30 Jul 2024 11:03:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB34F81132
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722337415;
	bh=suzdTOI8G9fx2TlYI4CIlVngc8tg6W793qsxT1vg0eQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SjMKYBkJyG0G3U0pZ8fYszat6KFW6YbZ0wmbsfCNRsQfkecjbdPxldzCNMiSspWSi
	 nmZWSTZIz/phKHOcidUJguvsKtJRVhog3aF8nGezSyjeMUsSeeKW6J9ix4VUmiBkLg
	 IiPdskpCWERQhuqtwO26xNrhgh1gNophIAjb7W3UFWEo2YEYcWHk0/oJL94b3LV6g/
	 mTsYwR9Zp/t5Ss5+EFru64PEXyxzAYnRBjHplVM2T+GRbwakkuA5Dru9fJ40dLb4jI
	 63zLQ8HnSpfMKZwyAWdsEtdkj1IlFw68Qkgn02cuVgpGipSRFJecBZOSZS5jNbUC5A
	 dsdie4K8lV2CQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB34F81132;
	Tue, 30 Jul 2024 11:03:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C06661BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 11:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACC46402BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 11:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z2uSQNXIZzD4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 11:03:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B26D24023F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B26D24023F
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B26D24023F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 11:03:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3D1C8CE0A0D;
 Tue, 30 Jul 2024 11:03:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9157FC32782;
 Tue, 30 Jul 2024 11:03:27 +0000 (UTC)
Date: Tue, 30 Jul 2024 12:03:25 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240730110325.GA1781874@kernel.org>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-2-aleksander.lobakin@intel.com>
 <20240726160954.GO97837@kernel.org>
 <870cd73e-0f87-41eb-95d1-c9fe27ed1230@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <870cd73e-0f87-41eb-95d1-c9fe27ed1230@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722337409;
 bh=CXkoGsg6csuPovdY1NpQLB+BXK7giXSuwsrflARY14U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mLO4SXu+NXYj5kFTql9ncVanh291Pk0zTWF7m91Ti2+VYyNB6GsWUQqxeqPpI5R97
 L3MT4tlWOsqc63ESriMBteo0sdNIupp5c/Y1qiA7CyvNu7w4TfwnOmh3fdQ6IQcLzw
 R9E7KFPOsKw4A+UvrXc3gdvLc+SXDDqwvSVF7gXi3TVy5teOxeUvk9oJ48B361BCaw
 /WbFnCa8TG35i6JFsi41i4ZWm3CR3XGJZNpN+0SwizPjdo4uLeQYW0O7qmC9K18AOa
 o6ncDE5dt06FVN20AivMHhB8aObwUkLPZFy8Xs6TXNdbZgc/Pm8DnZrHHg7B/a4i86
 GS/E3V8rVMp6w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mLO4SXu+
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
> 
> Perhaps we need to do a more powerful reset then? Can we somehow tell
> the kernel that in fact our iface is down, so that the user could try
> to enable it manually once again?
> Anyway, feels like a separate series or patch to -next, what do you think?
> 
> > 
> >> +
> >>  free_vport:
> >>  	kfree(new_vport);
> 
> Thanks,
> Olek
> 
