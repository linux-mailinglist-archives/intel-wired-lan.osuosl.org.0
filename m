Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3102BB1B154
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Aug 2025 11:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6285961776;
	Tue,  5 Aug 2025 09:40:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XXOylj7E-wtQ; Tue,  5 Aug 2025 09:40:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C98D261777
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754386821;
	bh=MhU3HCt3xG+VTmbGWG6873WjpSLX4k8fRZtk1bzx48g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OjHOF7RyrjN+U/gxOVPtZpqOiCoPRraFjuULPQaX9oKAnRrqjVHqQ93SKxmWDG2ic
	 HPPWdXkrf9RBeVkNxLTqewiU3VGq2X/QdWMgw/tfsPD6Wlt1g/qf8YycSZbttM9Mdt
	 XFIWIsrkGOTkSMCE7MJgZkRPfe750Uhv+9CMXpISgr+r/NVaj2YMC25iPCjGbCdOob
	 f48vTZ7Y7XEMKB5WCKSjzQlbeLbhayZQrajFVJF9HjzuvL7Q+vBRcTiF6Lhry2cODq
	 ziSlwkLRlFdZQsR9JH2D409wdycR1Lj3jaIPo7q8ezLinRdDMv6vqbe04GwFixhTXQ
	 3Uoi31GAUpQBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C98D261777;
	Tue,  5 Aug 2025 09:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F1349118
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 09:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7703400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 09:40:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpoBfWPBWLGm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Aug 2025 09:40:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F554400F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F554400F3
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F554400F3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 09:40:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id DF86243632;
 Tue,  5 Aug 2025 09:40:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE89C4CEF0;
 Tue,  5 Aug 2025 09:40:15 +0000 (UTC)
Date: Tue, 5 Aug 2025 10:40:13 +0100
From: Simon Horman <horms@kernel.org>
To: Kees Cook <kees@kernel.org>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, Michal Kubiak <michal.kubiak@intel.com>,
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Message-ID: <20250805094013.GW8494@horms.kernel.org>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
 <20250731123734.GA8494@horms.kernel.org>
 <202507310955.03E47CFA4@keescook>
 <8c085ba0-29a3-492a-b9f1-e7d02b5fb558@intel.com>
 <ff10e2a3-bd97-4c96-b7bd-f47289c9b0e4@intel.com>
 <202508021152.AD1850CD2@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202508021152.AD1850CD2@keescook>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754386818;
 bh=M0YuOEF01PK2T/MfN+UGtDqQuxe12zRPDpYIkWPWD34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=flMnhw+7Hcp5VbdvQFgZBJ3qLty+rB3AoG10K/lacYqadGsKvOi1IsNlKuB6huTQh
 E3HKwSHTFIq1/f+DWtJM0TVMyP5DVV5NEA+gZUJnr/LF+xqS7eXT5M6rfHJZJuuO11
 wItW/6xkgLd7GxjZcYPNJsaEHdcs6w4ehqdRZbBc6SAkImc1JXKZ8Qdy1DpM6+fPRW
 8T4CkC6ZRbIed28q/wGua/dmo31Wy5753HdFNyOIZLh1g2i6sPwzxOvRzW/IDiRHzV
 emGs37i/Dxmw650lccxBMYgf2RkDSXtEMyLYqb8Xol4VVS9wiaTBqyAzC68rfuPGXw
 r1JyyVE6ri/Ww==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=flMnhw+7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 16/18] idpf: add support
 for XDP on Rx
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

On Sat, Aug 02, 2025 at 11:52:44AM -0700, Kees Cook wrote:
> On Fri, Aug 01, 2025 at 03:17:42PM +0200, Alexander Lobakin wrote:
> > From: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Date: Fri, 1 Aug 2025 15:12:43 +0200
> > 
> > > From: Kees Cook <kees@kernel.org>
> > > Date: Thu, 31 Jul 2025 10:05:47 -0700
> > > 
> > >> On Thu, Jul 31, 2025 at 01:37:34PM +0100, Simon Horman wrote:

...

> > >> Yeah, this looks like a nice way to express this, and is way more
> > >> descriptive than "(u64 *)&xdp->base.frame_sz" :)
> > > 
> > > Sounds good to me!
> > > 
> > > Let me send v4 where I'll fix this.
> > 
> > Note: would it be okay if I send v4 with this fix when the window opens,
> > while our validation will retest v3 from Tony's tree in meantine? It's a
> > cosmetic change anyway and does not involve any functional changes.
> 
> If this is directed at me, yeah, I don't see any high urgency here.

Likewise, I see no urgency.
