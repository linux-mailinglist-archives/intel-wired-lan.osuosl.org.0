Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A239BB3C3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:46:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62A51404C8;
	Mon,  4 Nov 2024 11:46:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qvm-tc_VfDtr; Mon,  4 Nov 2024 11:46:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53AA2404B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730720786;
	bh=uOVXjjFqbjTqH1qfb3w3Wgxm5yIhLijKdZ+c9LwXuNQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6jMPH0d52mUtRVBweSu4BWwhQ/4576YdbuePSbFNxfDYQr6nSQ2qpC+m5z+uf0Srt
	 79J1lch3CrDZzR3MU4mJEYt225TEF4WGKwZ/pyj1scinuo1rsQhAwN2ixHAdNZd5Tm
	 GXA9Y/DdB3LOAMBMIkwSBCzeDIZfBcXGOrot06NRbbaiAw8/X1aO3t0RjIZdoqf89E
	 pUdJIBDzzN+4UtIVazxsS2cobiOy8T/tKcva4RmECXAyhU2UJjN773U1xUV4iEqIrJ
	 Mm6osv+Q6B9gAU0cHlB/StXmdB7BM/43kajqkaoP4siqc9HUzh3kAmkp0vs9FTpCNs
	 Cf5s2/exmUo1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53AA2404B6;
	Mon,  4 Nov 2024 11:46:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 56681723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4494260785
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:46:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CyRO0NQBtFAN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:46:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9FA8360780
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FA8360780
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FA8360780
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:46:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AB7B35C11B5;
 Mon,  4 Nov 2024 11:45:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61EE9C4CECE;
 Mon,  4 Nov 2024 11:46:21 +0000 (UTC)
Date: Mon, 4 Nov 2024 11:46:19 +0000
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20241104114619.GB2118587@kernel.org>
References: <20241029094259.77738-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241029094259.77738-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730720782;
 bh=6fyI+TJeacaVlmMYQ3fai+EmFug2NS3CEbFwoFVH6TI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cBTxvycZy7eAxoKgZqgCUjhTNk8sMbRO0QReK3SIv5C5MZrWeBYxfvYQTBlHYYIyH
 LNPcmzuqYYJCS3/wOFi3SyrFAyUptyX7vSpNBMHGG+lpWxxqC/3VdekDVtZN/bWyg0
 CwQoKEyW/tTvBzz8U1cqjWGMw6omcepJ+imb9u4QLd3081/h4Qnq5jwAEdHXvbsu63
 7+sBRVhZSa831KRVJhCQe4UNOnKkt6B05S21tWYqEwe8HOB3ErfFtEvCsKtM49OrM+
 a4CYyb+XiZDvbzpLOcPmJvmdF7S0VDQaPv9sZ9WucuMI1KUtG4Dq55CXbHey5fObra
 rlfiLAYm7pwqg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cBTxvycZ
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix NULL pointer
 dereference in switchdev
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

On Tue, Oct 29, 2024 at 10:42:59AM +0100, Wojciech Drewek wrote:
> Commit ("virtchnl: support queue rate limit and quanta size

It would be nice to include 12 characters of sha1 hash immediately
after "Commit".

> configuration") introduced new virtchnl ops:
> - get_qos_caps
> - cfg_q_bw
> - cfg_q_quanta
> 
> New ops were added to ice_virtchnl_dflt_ops but not to the
> ice_virtchnl_repr_ops. Because of that, if we get one of those
> messages in switchdev mode we end up with NULL pointer dereference:
> 
> [ 1199.794701] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [ 1199.794804] Workqueue: ice ice_service_task [ice]
> [ 1199.794878] RIP: 0010:0x0
> [ 1199.795027] Call Trace:
> [ 1199.795033]  <TASK>
> [ 1199.795039]  ? __die+0x20/0x70
> [ 1199.795051]  ? page_fault_oops+0x140/0x520
> [ 1199.795064]  ? exc_page_fault+0x7e/0x270
> [ 1199.795074]  ? asm_exc_page_fault+0x22/0x30
> [ 1199.795086]  ice_vc_process_vf_msg+0x6e5/0xd30 [ice]
> [ 1199.795165]  __ice_clean_ctrlq+0x734/0x9d0 [ice]
> [ 1199.795207]  ice_service_task+0xccf/0x12b0 [ice]
> [ 1199.795248]  process_one_work+0x21a/0x620
> [ 1199.795260]  worker_thread+0x18d/0x330
> [ 1199.795269]  ? __pfx_worker_thread+0x10/0x10
> [ 1199.795279]  kthread+0xec/0x120
> [ 1199.795288]  ? __pfx_kthread+0x10/0x10
> [ 1199.795296]  ret_from_fork+0x2d/0x50
> [ 1199.795305]  ? __pfx_kthread+0x10/0x10
> [ 1199.795312]  ret_from_fork_asm+0x1a/0x30
> [ 1199.795323]  </TASK>

It seems that the cited commit is present in net-next but not Linus's tree.
But, regardless, I think a Fixes tag is warranted.

> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

The fix itself looks good to me, thanks.

Reviewed-by: Simon Horman <horms@kernel.org>

...
