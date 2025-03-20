Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A6AA6AC61
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 18:48:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC03A61143;
	Thu, 20 Mar 2025 17:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vXDjn27e87Kl; Thu, 20 Mar 2025 17:48:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE16561122
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742492896;
	bh=APQixb3GHqy8SeToO90sEKhoSr4I5Pel4+5SpfQCdFQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AgGR3+DU5phoJzs6l8T0CIibfgh/MJeMuNa19SGMDTv0XWCDkJzxMYxVU1KA0Y4go
	 4BUWBHLNyd+1YsXP2El7kHIJTcO1EITr5CCFh7ZToGrdvwQt241aCM8EmeWnEshOAX
	 4K8gNa++Vldk7G5m1JlqS27kh5T1HsoumxAuJuoj6WUpxskMxxJXvBrmD1BUftJEZW
	 Im5eQibkjGDynnbwiReI3IkI5876RMWQX/Zgh8OJyIqAqkPj1t9BGBBdNebpr05WHL
	 pYV+FFljPyMsBOsjdAaNwbVOSYyUh0M/1/aU2f8QTWoMdCANZUvbNyB2mjxW+YbL/1
	 d815LFsRLDQoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE16561122;
	Thu, 20 Mar 2025 17:48:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FFBE12F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 17:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D0C86109B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 17:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NTMHcDH_wnv9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 17:48:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD34360902
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD34360902
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD34360902
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 17:48:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9996B5C5727;
 Thu, 20 Mar 2025 17:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FBC5C4CEDD;
 Thu, 20 Mar 2025 17:48:10 +0000 (UTC)
Date: Thu, 20 Mar 2025 17:48:08 +0000
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <20250320174808.GG892515@horms.kernel.org>
References: <20250318054202.17405-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318054202.17405-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742492893;
 bh=qUqh0dM3ST2dswSE/kDyddTFGE9Zdzt/hJuSRuesAhg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RUAasTu8uSEDVjSpCJNBnD7RfHptx9MM1S4C7VEB0+KBeYa3QwgHxyYpRYJKildpP
 IqGtEP99xAfizIF8GWpySW4fUmRwr/uZS6SqnyfOp3c2aPJHbgNqhfhEwSb0EUXkef
 nthQuCbFJIWqC4/NHBmt1LEiKmIY31Hiye4q6QhCkMQsn1hpAF8F2EZToMVQlf2qSo
 bc6h1gR/Z0JNonMtfjlPRxNx63GtjAB59xkd1qSrBz3N9HWB4miaRcsqtE/LXqQecZ
 Ydjdb/lC9jUsAl7SaaaUKf5KxK3Td4IxJQeM39e6IHpTBu8Tf0l0rLcangyPcQaAdF
 l8rF1YZK0S/+w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RUAasTu8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix adapter NULL
 pointer dereference on reboot
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 yuma@redhat.com, Aleksandr.Loktionov@intel.com, edumazet@google.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 michal.swiatkowski@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 decot@google.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 17, 2025 at 10:42:02PM -0700, Emil Tantilov wrote:
> With SRIOV enabled, idpf ends up calling into idpf_remove() twice.
> First via idpf_shutdown() and then again when idpf_remove() calls into
> sriov_disable(), because the VF devices use the idpf driver, hence the
> same remove routine. When that happens, it is possible for the adapter
> to be NULL from the first call to idpf_remove(), leading to a NULL
> pointer dereference.
> 
> echo 1 > /sys/class/net/<netif>/device/sriov_numvfs
> reboot
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> ...
> RIP: 0010:idpf_remove+0x22/0x1f0 [idpf]
> ...
> ? idpf_remove+0x22/0x1f0 [idpf]
> ? idpf_remove+0x1e4/0x1f0 [idpf]
> pci_device_remove+0x3f/0xb0
> device_release_driver_internal+0x19f/0x200
> pci_stop_bus_device+0x6d/0x90
> pci_stop_and_remove_bus_device+0x12/0x20
> pci_iov_remove_virtfn+0xbe/0x120
> sriov_disable+0x34/0xe0
> idpf_sriov_configure+0x58/0x140 [idpf]
> idpf_remove+0x1b9/0x1f0 [idpf]
> idpf_shutdown+0x12/0x30 [idpf]
> pci_device_shutdown+0x35/0x60
> device_shutdown+0x156/0x200
> ...
> 
> Replace the direct idpf_remove() call in idpf_shutdown() with
> idpf_vc_core_deinit() and idpf_deinit_dflt_mbx(), which perform
> the bulk of the cleanup, such as stopping the init task, freeing IRQs,
> destroying the vports and freeing the mailbox. This avoids the calls to
> sriov_disable() in addition to a small netdev cleanup, and destroying
> workqueues, which don't seem to be required on shutdown.
> 
> Reported-by: Yuying Ma <yuma@redhat.com>
> Fixes: e850efed5e15 ("idpf: add module register and probe functionality")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
> Changelog:
> v2:
> - Updated the description to clarify the path leading up to the crash,
>   and the difference in the logic between remove and shutdown as result
>   of this change.
> 
> v1:
> https://lore.kernel.org/intel-wired-lan/20250307003956.22018-1-emil.s.tantilov@intel.com/

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>



