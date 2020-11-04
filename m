Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CD82A71D8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 00:33:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D29C863D9;
	Wed,  4 Nov 2020 23:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxdqz4HGSfl1; Wed,  4 Nov 2020 23:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C75F9863E8;
	Wed,  4 Nov 2020 23:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64E311BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 23:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B331203A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 23:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n+6f0VLtO2il for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 23:33:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F0C72014B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 23:33:22 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AEA22074B;
 Wed,  4 Nov 2020 23:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604532802;
 bh=pLgzlZcEoMWv2J4Mk1Xd7jOAN5YoKXgl49GtlZW2QNo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JmQgCSoSsXOhiz82qHrpYSpMT86LMGk98P+q/NWFve+aj9dPapUGXW2jZtVpjbCl/
 lBnZXOwQS4ULyHLXRG0cdVMt+bbLtxZ5Ttcj9SIMxFSEEBYU/jrGwVB/hTcaLzotjg
 +b2z5paNfpiUwSq5ORfkMRu/7q+Vm9ROOGUecoZE=
Date: Wed, 4 Nov 2020 15:33:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20201104153320.66cecba8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1604498942-24274-2-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-2-git-send-email-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/6] i40e: introduce lazy Tx
 completions for AF_XDP zero-copy
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
Cc: maciejromanfijalkowski@gmail.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, jonathan.lemon@gmail.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  4 Nov 2020 15:08:57 +0100 Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Introduce lazy Tx completions when a queue is used for AF_XDP
> zero-copy. In the current design, each time we get into the NAPI poll
> loop we try to complete as many Tx packets as possible from the
> NIC. This is performed by reading the head pointer register in the NIC
> that tells us how many packets have been completed. Reading this
> register is expensive as it is across PCIe, so let us try to limit the
> number of times it is read by only completing Tx packets to user-space
> when the number of available descriptors in the Tx HW ring is below
> some threshold. This will decrease the number of reads issued to the
> NIC and improves performance with 1.5% - 2% for the l2fwd xdpsock
> microbenchmark.
> 
> The threshold is set to the minimum possible size that the HW ring can
> have. This so that we do not run into a scenario where the threshold
> is higher than the configured number of descriptors in the HW ring.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

I feel like this needs a big fat warning somewhere.

It's perfectly fine to never complete TCP packets, but AF_XDP could be
used to implement protocols in user space. What if someone wants to
implement something like TSQ?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
