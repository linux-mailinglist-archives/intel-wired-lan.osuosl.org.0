Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C85B38899
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 19:28:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C93B740BE3;
	Wed, 27 Aug 2025 17:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wwi9f5OrUT5m; Wed, 27 Aug 2025 17:28:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5091B40C6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756315717;
	bh=Zv4Z33PI0RK1zGgzGZD2cpgFiABzqY8vc1YN3TgwZaI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2LV2+dMLglyjb6seCgMxZehhCUMgcgc2EMAi2PnmbmznmOtT8bIR5fyZpvU9u2yth
	 5rXeHbPR6iRNwAlXj0ng9H1j+65rtqBFqmwdUQ+u2Jt0YFjVkbkLWvQ0DQTBhcUJnH
	 Dub0/Y/6/cVSAMbhzlk5HCgjYCzeV47Om/s9pUXjlQGtufOb+dMvFP2b8CtFZdgvsB
	 JFthGTHeSC3LvVPGZkdVjaV71l6SGren/KQQ+62spLMxKOL+dMvL4x8KurUCRcHRZm
	 unhkDg2EBpBnO564Zh3mLMyOHCq8RVz+0xdIHZdFOvZ2RDI7jUUb+dMuvSv3XvvEKi
	 Bvw7MbOy7cE5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5091B40C6B;
	Wed, 27 Aug 2025 17:28:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 02942B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 17:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D494240640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 17:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HnlhLnQxbwf5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 17:28:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F173405F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F173405F0
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F173405F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 17:28:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B3264434EA;
 Wed, 27 Aug 2025 17:28:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 620B1C4CEEB;
 Wed, 27 Aug 2025 17:28:30 +0000 (UTC)
Date: Wed, 27 Aug 2025 18:28:28 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250827172828.GP10519@horms.kernel.org>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756315713;
 bh=UtrbolA1HHDmLzgsn3xYeflYPsigIkwUh0momqKEeHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PqU8HTMSa5I6ObcVPSD4d6fKFh1wfzdb23B3poxfHNfoGUDbJCIqkxP6+I4ROQbd2
 Z6xA07kdpSE/mdfKDSKk+ea2P5RvKDCmcmk9GQ2e/M41195zoHe20Yc4cCoRhjrmQm
 GN3g9T4c7il6y5uFDmLbfIqONUInMwlXcDlgfcdS5ZMSBmP/S6CmkvquFnzYZMdtHx
 gRKpt14RcBAfZ1nR9UYvuLDLQ8L+tVLj7CopjeLh4i31juvpj2ak2NT2vwh/nUL3Wr
 w+x0MN175xpyHRzneD8cpnC70V4KmE74o56eLhzuUlFhYrxaL0+6necozhXfn6n/V6
 nBOgBoF20lxwg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PqU8HTMS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 00/13] idpf: add XDP
 support
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

On Tue, Aug 26, 2025 at 05:54:54PM +0200, Alexander Lobakin wrote:
> Add XDP support (w/o XSk for now) to the idpf driver using the libeth_xdp
> sublib. All possible verdicts, .ndo_xdp_xmit(), multi-buffer etc. are here.
> In general, nothing outstanding comparing to ice, except performance --
> let's say, up to 2x for .ndo_xdp_xmit() on certain platforms and
> scenarios.
> idpf doesn't support VLAN Rx offload, so only the hash hint is
> available for now.
> 
> Patches 1-7 are prereqs, without which XDP would either not work at all or
> work slower/worse/...

Hi Alexander,

I'm wondering if you could give a hash that this patch-set applies to.
Or a branch where it has been applied.

I suspect it's terribly obvious how to do this, but I'm drawing a blank here.

Thanks!
