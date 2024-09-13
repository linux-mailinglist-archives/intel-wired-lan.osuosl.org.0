Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14342977634
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2024 02:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 637EF40534;
	Fri, 13 Sep 2024 00:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6A0_g_4mZEZD; Fri, 13 Sep 2024 00:46:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9784B40E91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726188371;
	bh=ApZpSYjPjPxxjHq1hCgxFZGOXSMekzumyPfcM/bIZ8M=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sAkeP9J6aItex5AZeWiUzb7aKAjWCwbbWCFrU43vsG7Vt9q1NTqQaTATlDWjjcbfZ
	 H7bkDR0mo8WQ6vnlW2XCN3NrJjoGSBcGIe6jBHkgrCn2qwtfBsNjnDsRoAymVvKr+U
	 EYt2tElNEZML2UdlwvxTKkny5zZX5XTVtQIifs026vTFSPqmijvglxhDCRmFiNVyO1
	 KHCXk9+5kJgBhb/TbR6uZ0aSJGFgvHiq9GOi4eRQaCMJwwPE9SFwk9PccLbvGFYt4+
	 eV1Ki1F6ibkSm4Gmy9R2wh9tkIYfw0IiznJ+Ung0JQY3IwM/aayol09C9wyegmZZ+E
	 cKj5X2BDRsjHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9784B40E91;
	Fri, 13 Sep 2024 00:46:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2F11BF296
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 00:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A1138415D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 00:46:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mjfBqtCP8YJa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2024 00:46:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1FBD384164
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FBD384164
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FBD384164
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 00:46:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 08747A45908;
 Fri, 13 Sep 2024 00:46:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18FB3C4CEC3;
 Fri, 13 Sep 2024 00:46:07 +0000 (UTC)
Date: Thu, 12 Sep 2024 17:46:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesper Juhl <jesperjuhl76@gmail.com>
Message-ID: <20240912174606.3f008a47@kernel.org>
In-Reply-To: <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
 <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
 <20240912083746.34a7cd3b@kernel.org>
 <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726188367;
 bh=okrO9J2eaHkDTmcWg9GzHl26lCb/j+s27cVNH2FA38w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oH6ufpB97kd/t6+5JhZHck2GzKWWO5hfSxIVNQnkipec40T3A7lEBD3eV3uHGeoY+
 px6iapSJidNAnrCE9u0UbyMI7JJWNV/dPwLfPFBuVsxCiQHYTnleoyup0aN+VWf+wT
 bOxBL39p3znKchWmZPrgwTb2huUOpfd3467zg8QI4+/7nlgh9tHRDsbPO++V1/gMuv
 Fee5GEDqPNPSeEP98zWXP4FmfxmSFgQtRTFpsw9zWLTM+JflP6TVB8a22C35mYqjNy
 9LBrKI7TGqDPDH3lmgiOdme9Vad8JQWJQ2dtVrsAGfccyn/Ao6s4XvTlFZLML0nUUv
 3nmZGVJ8NKxug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oH6ufpB9
Subject: Re: [Intel-wired-lan] igc: Network failure,
 reboot required: igc: Failed to read reg 0xc030!
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 12 Sep 2024 21:45:17 +0200 Jesper Juhl wrote:
> > Would you be able to decode the stack trace? It may be helpful
> > to figure out which line of code this is:
> >
> >  igc_update_stats+0x8a/0x6d0 [igc
> > 22e0a697bfd5a86bd5c20d279bfffd
> > 131de6bb32]  
> 
> Of course. Just tell me what to do.

TBH I don't work much with distro kernels so I don't know.
There is a script for decoding stack traces in the tree:
  ./scripts/decode_stacktrace.sh
but it needs vmlinux (uncompressed) with full(ish) debug info.
I think that distros split the debug symbols out?
