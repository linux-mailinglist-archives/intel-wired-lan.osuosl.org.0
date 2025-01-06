Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0ACA02477
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 12:43:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9869F606D7;
	Mon,  6 Jan 2025 11:43:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xs7cSzMINwJD; Mon,  6 Jan 2025 11:43:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4FC460706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736163791;
	bh=EAi4NEvQxzuexvonrs4tR1VlZ+kEqa3ZNbZMm41FbOY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XQuaTN0HUQ8wAXKb4+UgdHJusNhT+/bcDZNsVNVOiFVyw0L+wFWWdRnPJQDaVdfQR
	 wxYfXvXi6NSOkBDNCkVq8L5VcJd0GgthBOM43rppeIKfj2jSINj4KdjfumT9j9ZLSM
	 8syguLuu2XydeY71QImyXcwi1f/tcSScbVg2oJtFgbZAfbPMJOBRAo/Ooet4MAPeOt
	 cVi8hv3UEMB4E7xapuuvXTH4dWqzCceqFudnr+IYg62YOY1GfOsxosHCW4LpgapQG8
	 xzNxmc9kxx2jnTDdGrokfaloH1tOrPtoVbMGr8guKJ38YvtZcqrC0Md7zq237o0mJX
	 J7dBt4PrX7eiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4FC460706;
	Mon,  6 Jan 2025 11:43:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8450C6B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72DE280C4F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:43:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R6Ldgmi-qm38 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 11:43:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D213580C36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D213580C36
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D213580C36
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:43:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id CFDD3A415C1;
 Mon,  6 Jan 2025 11:41:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42749C4CED2;
 Mon,  6 Jan 2025 11:43:05 +0000 (UTC)
Date: Mon, 6 Jan 2025 11:43:03 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106114303.GD4068@kernel.org>
References: <20241221184247.118752-1-linux@treblig.org>
 <20241221184247.118752-2-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241221184247.118752-2-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736163787;
 bh=JvkP9mKcxBWVEDPrahfv8JaLjHl0dGLATypCidOU4NQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MBhJPTW0CDQxnA3BHJLvvh2qVGPF22XHxUM/79Zg4Pk3gIhIiYrmMWJbXhowN7O86
 4drGC/NcU5FLRgcOJgA14GorIbBcoBPtBjFRTLYie56uR4OYBg2soAuvPiBuWppfWv
 Acsl8qTRP/yA1oOH0tux0jW3aR1yT7/lCS2K3L18BjUwMFzgnhNrh+DPMRnEnR4/s5
 54WYEXDZUoI3pjIqnXkqL51M2bPIPcj3/xRmKoeTNpMCU0jRlOSeLbXXHv2d1X/9SK
 ZqzMPKlFYV1J7Bigk43XRB5EYbAg7/DmR8u2Zp//OTpx6yoP35BdEwv+Pau81RSEEp
 H+OyzphstWm7w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MBhJPTW0
Subject: Re: [Intel-wired-lan] [RFC net-next 1/9] i40e: Deadcode i40e_aq_*
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

On Sat, Dec 21, 2024 at 06:42:39PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i40e_aq_add_mirrorrule(), i40e_aq_delete_mirrorrule() and
> i40e_aq_set_vsi_vlan_promisc() were added in 2016 by
> commit 7bd6875bef70 ("i40e: APIs to Add/remove port mirroring rules")
> but haven't been used.
> 
> They were the last user of i40e_mirrorrule_op().
> 
> i40e_aq_rearrange_nvm() was added in 2018 by
> commit f05798b4ff82 ("i40e: Add AQ command for rearrange NVM structure")
> but hasn't been used.
> 
> i40e_aq_restore_lldp() was added in 2019 by
> commit c65e78f87f81 ("i40e: Further implementation of LLDP")
> but hasn't been used.
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

