Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B78A55390
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 18:54:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68D6780C18;
	Thu,  6 Mar 2025 17:54:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hitIntk5CPBH; Thu,  6 Mar 2025 17:54:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 957ED80C29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741283670;
	bh=c/r1h+tFb+SNtwIxvdNF7APwcLlexSis6Yu2wVyZz8g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LH2sVS5mPR2wsevf20k7uL9vOerg6j9O9r1jtJciL76E19NWMF0R/8kTT0V9cISJf
	 s9naj9ni+zIkWNCE0MouqUyOBcRqjLYYEcw1iDX5KiSJtcMsfmz9Udpe9ll07x7Deq
	 RuRYVy5mGiul2ugP0CgiuCnLH5KJeQ2wVCVKBmwoVB7HRHomV7oxnMFy/EX4OdmJXN
	 iWN8ncUc/22r5otOC+MykJuFHwQeSJEBW7+kJnLzyjNe0abnhg8QbGK3vN2GZ3vfr3
	 YfM55TZBzWYM2HlgpX67x1knDyq3yaTuFlBxOL4c0r4tJCThhVpoSac7n964PswmwB
	 t0nt10Tvf5klQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 957ED80C29;
	Thu,  6 Mar 2025 17:54:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 844E295F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 17:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 597D840159
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 17:54:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O3gTIaVMQQAC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 17:54:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E82C40118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E82C40118
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E82C40118
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 17:54:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 44BE15C599A;
 Thu,  6 Mar 2025 17:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E832EC4CEE9;
 Thu,  6 Mar 2025 17:54:24 +0000 (UTC)
Date: Thu, 6 Mar 2025 17:54:22 +0000
From: Simon Horman <horms@kernel.org>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20250306175422.GD3666230@kernel.org>
References: <20250226113409.446325-1-mateusz.polchlopek@intel.com>
 <20250303095405.GQ1615191@kernel.org>
 <b5e34397-0b81-4132-86d0-498a111cc363@linux.intel.com>
 <ad9799ed-5313-4787-b982-c8fc82a281a2@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ad9799ed-5313-4787-b982-c8fc82a281a2@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741283665;
 bh=74me6EBTwxfLa3+N9Qs74EU4Ympvdr8j2NUeivG2w4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ihu/8LA152qMkA5fLli9F7vxQbUZKL0GU7bfqAtsqIRJOdb11Ma3QAY/ROM3+TcWJ
 WaSFJVj5v3ap1WgS21u7MAWMGNs93R/AiWOnv6E81yU/8hNzwY/GJiSC/SAA8/VuAN
 1N9zmwtFgp76hterXpooNEAMKAjtQZNFk0UU4jkQ8kFlfvDpTDO+S0kabmvzlqT3CG
 0wvN55B/TWX1+DxzobwvLiTY4wPB4OHo8FeuQ7YyJcvLydfCpbdgb6m10m2BewnLD6
 XglD3M0xWj7Ns7vjwoP1vJYgiEhK96RkOk4HWjCQ83S+APuH7xicBQQrAUqyXdfaN5
 Vi8jKS7p0PPoA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ihu/8LA1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor the Tx
 scheduler feature
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

On Wed, Mar 05, 2025 at 02:30:30PM +0100, Szapar-Mudlaw, Martyna wrote:
> 
> 
> On 3/4/2025 2:43 PM, Szapar-Mudlaw, Martyna wrote:
> > 
> > 
> > On 3/3/2025 10:54 AM, Simon Horman wrote:
> > > On Wed, Feb 26, 2025 at 12:33:56PM +0100, Mateusz Polchlopek wrote:
> > > > Embed ice_get_tx_topo_user_sel() inside the only caller:
> > > > ice_devlink_tx_sched_layers_get().
> > > > Instead of jump from the wrapper to the function that does "get"
> > > > operation
> > > > it does "get" itself.
> > > > 
> > > > Remove unnecessary comment and make usage of str_enabled_disabled()
> > > > in ice_init_tx_topology().
> > > 
> > > Hi Mateusz,
> > > 
> > > These changes seem reasonable to me.
> > > But I wonder if they could be motivated in the commit message.
> > > 
> > > What I mean is, the commit message explains what has been done.
> > > But I think it should explain why it has been done.
> > 
> > Hi Simon,
> > 
> > I'm replying on behalf of Mateusz since he's on leave, and we didn't
> > want to keep this issue waiting too long.
> > Would such extended commit message make sense and address your concerns?
> > 
> > "Simplify the code by eliminating an unnecessary wrapper function.
> > Previously, ice_devlink_tx_sched_layers_get() acted as a thin wrapper
> > around ice_get_tx_topo_user_sel(), adding no real value but increasing
> > code complexity. Since both functions were only used once, the wrapper
> > was redundant and contributed approximately 20 lines of unnecessary
> > code. By directly calling ice_get_tx_topo_user_sel(), improve
> > readability and reduce function jumps, without altering functionality.
> > Also remove unnecessary comment and make usage of str_enabled_disabled()
> > in ice_init_tx_topology()."
> > 
> > Thank you,
> > Martyna
> 
> Sorry, I caused some confusion in the previous version of proposed commit
> message. Here’s the corrected one:
> 
> "Simplify the code by eliminating an unnecessary wrapper function.
> Previously, ice_devlink_tx_sched_layers_get() acted as a thin wrapper around
> ice_get_tx_topo_user_sel(), adding no real value but increasing code
> complexity. Since both functions were only used once, the wrapper was
> redundant and contributed approximately 20 lines of unnecessary code. Remove
> ice_get_tx_topo_user_sel() and moves its instructions directly into
> ice_devlink_tx_sched_layers_get(), improving readability and reducing
> function jumps, without altering functionality.
> Also remove unnecessary comment and make usage of str_enabled_disabled() in
> ice_init_tx_topology()."

Yes, thanks :)
