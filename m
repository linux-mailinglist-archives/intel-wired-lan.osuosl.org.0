Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B61EAA1042
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 17:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AE7F60AC1;
	Tue, 29 Apr 2025 15:20:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4hgqAZKRKiMq; Tue, 29 Apr 2025 15:20:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B28E760A4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745940029;
	bh=f+K2Yc/cYLv7XjhXW56/UAaKP6XQ8WqXKWF0ILuSYwI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mPQ9Iq/vZcolhh/6ZtcUSOfuQ2zYrF8TJXFZ/GynBwztYKDZp1R8PhZvdbYS1fQLg
	 SFp8s1opm2bJNqvgczXBwVlIuGwnLfjCS2JkIdrwc6hSo6lxOlCOWgVahz0ugTII5p
	 RzDmtXPQMG6cXMxkUr3Gi5sE+vUpjZBofc/DXZAt0hboi3cOMPSOUzepFttavgZZSj
	 4SQjiARttqrbUvJDrEAAccoYKiPDzEcSCUccRrd1+fAdHgaNnKWj3f3sP/jOYncMbu
	 3lLWEggcp1C7NkyuAATRONmbOwOSIdPbiv2H39OJII5dal/wyCRwBT/5Jd7hM2bz0T
	 sE/xaAxe4DvCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B28E760A4B;
	Tue, 29 Apr 2025 15:20:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 59639E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 15:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B46660767
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 15:20:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jr64pt42--AT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 15:20:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B92DC60701
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B92DC60701
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B92DC60701
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 15:20:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7A3885C3549;
 Tue, 29 Apr 2025 15:18:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBFC1C4CEE3;
 Tue, 29 Apr 2025 15:20:23 +0000 (UTC)
Date: Tue, 29 Apr 2025 16:20:21 +0100
From: Simon Horman <horms@kernel.org>
To: Ian Ray <ian.ray@gehealthcare.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 brian.ruley@gehealthcare.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Message-ID: <20250429152021.GP3339421@horms.kernel.org>
References: <20250428115450.639-1-ian.ray@gehealthcare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250428115450.639-1-ian.ray@gehealthcare.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745940026;
 bh=rxoMXpkpRsXYKrXv1e5QC5IEfYkq+HrBL07RI8vLYXU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bsORuipn+BexskWvLb3jJGuWS0W5JpuowzIlt3FoR+nvstJhBgHJKNcJyomtzEbTW
 7kNyFfEr9xWqpQ8cf8/eFG94lyqqtnKlJ64HP9hH3HF4dBrRD+KpFqB/K3y/MXSaO0
 tf4s611tM+VX4CMePy1Gqr1bI8mN2Xx+lFK9u7YkbFk5ffLjNmWte2BG3zi8hY7pzY
 ZNWfyhCQCPRsK5jbrm5Jvqvql881wB7NnWvesuhctzUAYaZcTX79HbyDBqE0wxJcpC
 H+B2lRV+Bj6YsnbTgeco/ptBcYCy6jiIH9Cr+5GLSKwYgebn+HKKcKRE4q0zNTwnom
 dMNBgQITYL+SA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bsORuipn
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix watchdog_task race with
 shutdown
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

+ Toke

On Mon, Apr 28, 2025 at 02:54:49PM +0300, Ian Ray wrote:
> A rare [1] race condition is observed between the igb_watchdog_task and
> shutdown on a dual-core i.MX6 based system with two I210 controllers.
> 
> Using printk, the igb_watchdog_task is hung in igb_read_phy_reg because
> __igb_shutdown has already called __igb_close.
> 
> Fix this by locking in igb_watchdog_task (in the same way as is done in
> igb_reset_task).
> 
> reboot             kworker
> 
> __igb_shutdown
>   rtnl_lock
>   __igb_close
>   :                igb_watchdog_task
>   :                :
>   :                igb_read_phy_reg (hung)
>   rtnl_unlock
> 
> [1] Note that this is easier to reproduce with 'initcall_debug' logging
> and additional and printk logging in igb_main.
> 
> Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>

Hi Ian,

Thanks for your patch.

While I think that the simplicity of this approach may well be appropriate
as a fix for the problem described I do have a concern.

I am worried that taking RTNL each time the watchdog tasks will create
unnecessary lock contention. That may manifest in weird and wonderful ways
in future.  Maybe this patch doesn't make things materially worse in that
regard.  But it would be nice to have a plan to move away from using RTNL,
as is happening elsewhere.

...

