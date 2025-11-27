Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE7DC8E15B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 12:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6D4D60B4B;
	Thu, 27 Nov 2025 11:45:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vNrg6JaAyiDs; Thu, 27 Nov 2025 11:45:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C6FF60AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764243905;
	bh=YyGVOnZHSWA4n0PFy15O1n4AlFiSH5onZSJO5m9IZio=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MAWR4+f3rHnqhmVaeVQW1PSZdigwjPK0GuW/bO3hMUtm3JcLMdGThm5IFNe1eRMSO
	 5oaH4e2XueIUlqPtla9wBx7bAPisS6CvVTy4rBhcCjARYOu8zYK8ROwJWak69otHpk
	 xE3U8Q2rDEIMBpO3OvLPO69L8f5yrkuQgN0xf82zeEQSY047o1UJ0Lx4hDI5pp8f7g
	 7qFSe0120odeDW94F5W65siAYoySuekLHZjdA3MGg6JDSmnzKwLfU66zBiXo6DWfx5
	 WCVvIfOgFw2yv+WXDD4hjEmDVCH6CJvAhRHfBFjQnRgdUPGNHIbG/Fhn2Jd2VDQxqT
	 UKQQ4HPT+/IbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C6FF60AD3;
	Thu, 27 Nov 2025 11:45:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 18290708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2DC3403FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:45:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qPGqhQ6WmTOo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 11:45:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EE2294019A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE2294019A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE2294019A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:45:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 829B74025A;
 Thu, 27 Nov 2025 11:45:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E18DBC4CEF8;
 Thu, 27 Nov 2025 11:45:00 +0000 (UTC)
Date: Thu, 27 Nov 2025 11:44:58 +0000
From: Simon Horman <horms@kernel.org>
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <aSg5uiOiAyRds6gM@horms.kernel.org>
References: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
 <20251124184750.3625097-2-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124184750.3625097-2-sreedevi.joshi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764243902;
 bh=bhEiLZJrUMZE5RAfsENKBxd0m7eM54hwM9QpdUvUm44=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QHp8WbcuOlkfl9aApJ2sX4htFuk9y4kYsjirnlH9RFfdwzGWCW5H+yTllSh1QQZAM
 q+CJz8eiHUg09XWsp3N1R+iO+FemrSz9Azi3hPVHzsbNRTSZ2WWf/kX4vpfR0LYUpi
 ZE3I4NtTABE98WcpfcMVwOe1wO/b3GflE9FY7y+Z4IGyPwCel29aX/7Sqj43+/ZZXa
 R/NVh144ENx0Jgc+UcrAtWEsmHQu7YbqWx+0jd1eERRD4qB6Kd+10LS14JFGJClfql
 RA62517drMCuRjOZqtRw+OHcUEeb+6SDJngBKajgmV4fAhtakpcLoxGIClo9pl2Mcb
 OHl4PjlJUxAXQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QHp8Wbcu
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] idpf: Fix RSS LUT NULL
 pointer crash on early ethtool operations
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

On Mon, Nov 24, 2025 at 12:47:48PM -0600, Sreedevi Joshi wrote:
> The RSS LUT is not initialized until the interface comes up, causing
> the following NULL pointer crash when ethtool operations like rxhash on/off
> are performed before the interface is brought up for the first time.
> 
> Move RSS LUT initialization from ndo_open to vport creation to ensure LUT
> is always available. This enables RSS configuration via ethtool before
> bringing the interface up. Simplify LUT management by maintaining all
> changes in the driver's soft copy and programming zeros to the indirection
> table when rxhash is disabled. Defer HW programming until the interface
> comes up if it is down during rxhash and LUT configuration changes.
> 
> Steps to reproduce:
> ** Load idpf driver; interfaces will be created
> 	modprobe idpf
> ** Before bringing the interfaces up, turn rxhash off
> 	ethtool -K eth2 rxhash off
> 
> [89408.371875] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [89408.371908] #PF: supervisor read access in kernel mode
> [89408.371924] #PF: error_code(0x0000) - not-present page
> [89408.371940] PGD 0 P4D 0
> [89408.371953] Oops: Oops: 0000 [#1] SMP NOPTI
> <snip>
> [89408.372052] RIP: 0010:memcpy_orig+0x16/0x130
> [89408.372310] Call Trace:
> [89408.372317]  <TASK>
> [89408.372326]  ? idpf_set_features+0xfc/0x180 [idpf]
> [89408.372363]  __netdev_update_features+0x295/0xde0
> [89408.372384]  ethnl_set_features+0x15e/0x460
> [89408.372406]  genl_family_rcv_msg_doit+0x11f/0x180
> [89408.372429]  genl_rcv_msg+0x1ad/0x2b0
> [89408.372446]  ? __pfx_ethnl_set_features+0x10/0x10
> [89408.372465]  ? __pfx_genl_rcv_msg+0x10/0x10
> [89408.372482]  netlink_rcv_skb+0x58/0x100
> [89408.372502]  genl_rcv+0x2c/0x50
> [89408.372516]  netlink_unicast+0x289/0x3e0
> [89408.372533]  netlink_sendmsg+0x215/0x440
> [89408.372551]  __sys_sendto+0x234/0x240
> [89408.372571]  __x64_sys_sendto+0x28/0x30
> [89408.372585]  x64_sys_call+0x1909/0x1da0
> [89408.372604]  do_syscall_64+0x7a/0xfa0
> [89408.373140]  ? clear_bhb_loop+0x60/0xb0
> [89408.373647]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [89408.378887]  </TASK>
> <snip>
> 
> Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Reviewed-by: Simon Horman <horms@kernel.org>

