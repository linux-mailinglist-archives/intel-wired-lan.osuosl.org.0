Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6EE6F4ED0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 04:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B66F7820E9;
	Wed,  3 May 2023 02:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B66F7820E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683080434;
	bh=DCDlUK3a6s1TzbmSJ6fzVRamMmOvcLbtwEQ0K01xQa0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5qX2Zw45UAbrtsEblNEHRFbowxdCvxi0rKCtXbGDfkIWju6sVNDMoucMi7zmmJg0H
	 34kFJB57SIQyWVEl8HLirMEsTBEZplHiwhVhicVLe0gDWsnBE1bbOqTFH123mPDc+x
	 v/zXr1UFm6+qHBpJobfh94x2/aC5mVk16x0HOOKfch6L6+sag+i3Z6hcHhct41A+QT
	 /RkbA8xdNG3yHVjJVXoAz0Mh0vBbRXu8/HNrjIGmLkq9Gfa+a9SkTvPms9iQVvxoWT
	 hnvMuH8baHIR82YPfs1VlLaRy2FOmzG/W3M1C3mVIsGsXBh9NkjObxJa+T5fAH1wAT
	 SENf0EU+9TZIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e2oH_Bp_xK_R; Wed,  3 May 2023 02:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA98D81FAB;
	Wed,  3 May 2023 02:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA98D81FAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 014221BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 02:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAAC181FAB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 02:20:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAAC181FAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9OE4_m_X9Hq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 02:20:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DBF381F74
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DBF381F74
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 02:20:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 35211615BC;
 Wed,  3 May 2023 02:20:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C088BC433EF;
 Wed,  3 May 2023 02:20:25 +0000 (UTC)
Date: Tue, 2 May 2023 19:20:24 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20230502192024.28029188@kernel.org>
In-Reply-To: <965fa809-6cdd-7050-1516-72cc33713972@intel.com>
References: <20230427020917.12029-1-emil.s.tantilov@intel.com>
 <20230426194623.5b922067@kernel.org>
 <97f635bf-a793-7d10-9a5e-2847816dda1d@intel.com>
 <20230426202907.2e07f031@kernel.org>
 <965fa809-6cdd-7050-1516-72cc33713972@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1683080426;
 bh=bo0HlLk/0v6qzsyOqBWj0ZUl4zv2sak5dvJi3hB9PCc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RT2gy8WiLZQjD0EFCTeooCO/tnZrx252vLMTH8p9FEz6fgD3jzb/FR6y6/jLQTOda
 nq2dx+liX/faLKnInTb4hc9VbjEngswu/QQChpvtGrUOmme9Ur9wBYdbsexfEvikAP
 2PEjQ6OzrwVamZmV4Ttp39E5xsibgD1HskLKlIBHZDcMURC7zKt7VnrsrGUcZcqWW/
 XADAoPuE8gpzoxyOO/S7mPkEq8GdDUgAJB8Is1cSx4gKtOaXuBXOJrl222TeVFDDB2
 jqpWSEYiCGRePXsLS5eT7yG7EN2GhQ9FBbk/k9VVFxqtx5xJ2T78Q/vYFkoQ/c0i5U
 lU3mIuPO7c3Tg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RT2gy8Wi
Subject: Re: [Intel-wired-lan] [net-next v3 00/15] Introduce Intel IDPF
 driver
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
Cc: willemb@google.com, pabeni@redhat.com, shailendra.bhatnagar@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, simon.horman@corigine.com,
 intel-wired-lan@lists.osuosl.org, phani.r.burra@intel.com, decot@google.com,
 davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 27 Apr 2023 15:23:12 -0700 Jesse Brandeburg wrote:
> > Jesse, does it sound workable to you? What do you have in mind in terms
> > of the process long term if/once this driver gets merged?  
> 
> Sorry for the thrash on this one.
> 
> We have a proposal by doing these two things in the future:
> 1) to: intel-wired-lan, cc: netdev until we've addressed review comments
> 2) use [iwl-next ] or [iwl-net] in the Subject: when reviewing on
> intel-wired-lan, and cc:netdev, to make clear the intent in both headers
> and Subject line.
> 
> There are two discussions here
> 1) we can solve the "net-next subject" vs cc:netdev via my proposal
> above, would appreciate your feedback.
> 2) Long term, this driver will join the "normal flow" of individual
> patch series that are sent to intel-wired-lan and cc:netdev, but I'd
> like those that are sent from Intel non-maintainers to always use
> [iwl-next], [iwl-net], and Tony or I will provide series to:
> maintainers, cc:netdev with the Subject: [net-next] or [net]

Sounds like a good scheme, let's try it!
Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
