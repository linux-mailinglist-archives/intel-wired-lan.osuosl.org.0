Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C28AC98C8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 May 2025 03:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A9846109D;
	Sat, 31 May 2025 01:31:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9emkbh3fcQiS; Sat, 31 May 2025 01:31:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14105610A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748655105;
	bh=wMmhhNcw3u7DSn1msRU5G35tNpOplct7cl8NYKQe3hQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5mLsakKFGdjS6OryrbJZEJS5JiOnvm+iWJ6M6j0MTppg9aCLcTxZXvYPNeialcKOp
	 h4TBcyouWH8S4ChftnO10EEijNqT9ZPQOcLsqD7Od9ohiiyb4ftIIg04kYNkbxiI5r
	 NJEq+7L2MQQH/vSh8NlFsPMlb3zalI8fM+4I4S2GVCaH41a92ELIRZQUp8tQdPzHpR
	 /eDy9xIW6hgGCkjAIK/wpyygvASxQDgnT+I01G41KTljfMVo3hG/Y5sJRLtwMoTGnB
	 TKy08bGl+yyI2+hyJyh9F66eJwyXX9zpmYFlWu470cFPT3pD7rR6z3j50rbbKyZwwB
	 DmzSKBLwMbKTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14105610A2;
	Sat, 31 May 2025 01:31:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0921A236
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 01:31:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2F0983B14
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 01:31:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOgN4T-BIpcp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 May 2025 01:31:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 549A083AEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 549A083AEA
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 549A083AEA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 01:31:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C6A9149FCE;
 Sat, 31 May 2025 01:31:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD5BC4CEEB;
 Sat, 31 May 2025 01:31:41 +0000 (UTC)
Date: Fri, 30 May 2025 18:31:40 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: Stanislav Fomichev <stfomichev@gmail.com>, netdev@vger.kernel.org,
 john.cs.hey@gmail.com, jacob.e.keller@intel.com,
 syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list
 <linux-kernel@vger.kernel.org>
Message-ID: <20250530183140.6cfad3ae@kernel.org>
In-Reply-To: <aDoKyVE7_hVENi4O@LQ3V64L9R2>
References: <20250530014949.215112-1-jdamato@fastly.com>
 <aDnJsSb-DNBJPNUM@mini-arch> <aDoKyVE7_hVENi4O@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748655101;
 bh=SeUxHDr/ovRgaIvx1nnr6AEFPNfj0/y2SyAmVaiwcko=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OaX9pnSHDCbGdiDnup73JGl16WHOa4dTLIen1Z+gHD0BtEFl6UYvX4tbVA9iy5an3
 taGfejmVAUotdaLZntWpY3i/sfH5rMc2o0QKzUaDqJhI6WfAq1FJtpbNnzPhXdS0pX
 cd7A8fKPMyoxS/zkxmVkbHvNH3xoaz3EbLu+pYopW8Lc08C0MF6PyMcKUFaZaUsm4v
 S5sLCI4MyxiYCggletz5cpNQojT1tkRNdQORLOkQN8XoKM7CGTarIeSnI6XATUn75P
 HXOHnt99fUrh5t/xIRAwzGHe7XzvT9DXr71wqp3yZ1Y9DCbpN4Z6TBgv8mzPuxlUNd
 sBxcMQYQHt80Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OaX9pnSH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] e1000: Move cancel_work_sync
 to avoid deadlock
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

On Fri, 30 May 2025 12:45:13 -0700 Joe Damato wrote:
> > nit: as Jakub mentioned in another thread, it seems more about the
> > flush_work waiting for the reset_task to complete rather than
> > wq mutexes (which are fake)?  
> 
> Hm, I probably misunderstood something. Also, not sure what you
> meant by the wq mutexes being fake?
> 
> My understanding (which is prob wrong) from the syzbot and user
> report was that the order of wq mutex and rtnl are inverted in the
> two paths, which can cause a deadlock if both paths run.

Take a look at touch_work_lockdep_map(), theres nosaj thing as wq mutex.
It's just a lockdep "annotation" that helps lockdep connect the dots
between waiting thread and the work item, not a real mutex. So the
commit msg may be better phrased like this (modulo the lines in front):

   CPU 0:
  , - RTNL is held
 /  - e1000_close
 |  - e1000_down
 +- - cancel_work_sync (cancel / wait for e1000_reset_task())
 |
 | CPU 1:
 |  - process_one_work
  \ - e1000_reset_task
   `- take RTNL 
