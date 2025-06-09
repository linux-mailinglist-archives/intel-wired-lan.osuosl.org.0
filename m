Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD94BAD2972
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 00:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F22C41CA6;
	Mon,  9 Jun 2025 22:38:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0o6aRAmnfGRQ; Mon,  9 Jun 2025 22:38:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50D4341CA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749508703;
	bh=W/29krmLYFSxoTIhnV0Pt4wML5+e9mtZUlJs5at4+40=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Lfrb9q0TfZ4ATL/A3MO1BwyKBUjx7d/q0jkU8rG2TGTbmqNEApZijYcChj4E2MZB9
	 AJvuwM5ouprYCg5C8ztI8i+tcd/xZoSTjwG8M9D4OixbUCsiYDbxaMUOSu1QdXudnt
	 VCPH8tfHhoAk/VcAlQKanMG8t1TjGvNp0MzdwebR6CC7T89vAmm/mLpouoBKQFSaFx
	 xifWrjy2/EH01H3moIQdc4rUex9MNUZD20eQ/trPCnHkxO4WTF0YVHzxJZtDPrjA8J
	 oJTX8T6xGX1ePtqbb6GPINbhrmjBFno/+yd4nTak4N8rVX4m1Yu87B2cvTSyh7N2K3
	 1y5aNGj6J2ijw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50D4341CA7;
	Mon,  9 Jun 2025 22:38:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EF2D91A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 22:38:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D515E61565
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 22:38:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cATcwZZY629s for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 22:38:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A4CF614C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A4CF614C4
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A4CF614C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 22:38:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BF04D5C41D6;
 Mon,  9 Jun 2025 22:36:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19131C4CEEB;
 Mon,  9 Jun 2025 22:38:18 +0000 (UTC)
Date: Mon, 9 Jun 2025 15:38:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, mheib@redhat.com,
 ruanjinjie@huawei.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Message-ID: <20250609153817.14d7e762@kernel.org>
In-Reply-To: <20250609162541.1230022-1-stfomichev@gmail.com>
References: <20250609162541.1230022-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749508699;
 bh=JBXmNJeT/xZX3RurxwwkpLVdwAYpNQhCQiA1mKMKOUs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AxifVN7FeC65QCVf7TUYkIjnE/rIZ52inY/Wee1YAJ7ODWu66fPTScZ/3VoyrdBMm
 Upw846Twc/EGGPQSKiwLiME9e2F7IaHSVtpwNlvIAhOSgNfk+NTI7xtpHmJzuolqC8
 HVkTxCvhR5A5wEh3eoMUqg0zNDUx7L3L3NDeuLfFLzCRpGTsgek0eGEUJ9WZewwxF4
 xlbzpl6iNxR3OcduOF+Wqzotm6AyXM3v1OEg/MPHN6FSvPedw2Y1527H4G0VS+r3W1
 VUJNtPtDPN1hRI8W+MyuR5AFTmAoQ9ybpBhcd1EBdYrjaxXnrajNr8m6kyaQY9hv44
 XNHBAk/TtwWwg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AxifVN7F
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/4] udp_tunnel: remove
 rtnl_lock dependency
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

On Mon,  9 Jun 2025 09:25:37 -0700 Stanislav Fomichev wrote:
> Recently bnxt had to grow back a bunch of rtnl dependencies because
> of udp_tunnel's infra. Add separate (global) mutext to protect
> udp_tunnel state.

Appears to break the selftest, unfortunately:
https://netdev.bots.linux.dev/contest.html?test=udp-tunnel-nic-sh&branch=net-next-2025-06-09--21-00
-- 
pw-bot: cr
