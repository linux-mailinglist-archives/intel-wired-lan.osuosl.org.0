Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBCAA388F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 17:17:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16F9F6069E;
	Mon, 17 Feb 2025 16:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JNRgaiuH-Ylc; Mon, 17 Feb 2025 16:17:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E69C260861
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739809033;
	bh=hgJk8c9gI577dnH0u+BuUFft5fgX3jdtDDKFtBimGb8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y5YXaEQ/Qmc7JoW241a9l8AlOMJ2yoF2BmA8VBQu50O/QpulNTGe83hj+pxZr5E+8
	 DfbHE8RXglxSd3h/a1NTKxJznQlFHpy02Ax+I37PPwPt5tCbVeHGfcP86H09pawAYX
	 82S61Z4qOHxJNe7XLNeQkg9z88UqUA7XoNYZ2uHwoLznerHylD9iY4OHiCkzCspVbA
	 9YGmJllLhwCx7ZdLjgCMdnDy4vTOQMlSQcy/waBE2FLqgiJlvoc6wpyg54ONBS2Xd2
	 AeRDE6SmpjyDnaWWA4BbH4K+2QzF5V7+5WvqlZVuyYgaWQBS6Z9BoEUCaHZkiRC0x0
	 gV5pGCcjhOB7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E69C260861;
	Mon, 17 Feb 2025 16:17:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FDD4C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 16:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F7A14083B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 16:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A5JBY4gQD8WW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 16:17:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 65D6B4081C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65D6B4081C
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65D6B4081C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 16:17:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 13EA6A40BF0;
 Mon, 17 Feb 2025 16:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FDFCC4CED1;
 Mon, 17 Feb 2025 16:17:05 +0000 (UTC)
Date: Mon, 17 Feb 2025 16:17:03 +0000
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 decot@google.com, willemb@google.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, madhu.chittim@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <20250217161703.GO1615191@kernel.org>
References: <20250214171816.30562-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214171816.30562-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739809027;
 bh=dbN+k2q6EShMVUAh4Ch1jkSdAxdn32s4LBsHWf0F1dM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W6ZT7Owl77PCw1wceouhGsK6E/A95VPA5IbW0E/cpdtIX5vm6RxC8p5246AACe7Ay
 wSzwHzHULZEk3fQ3/8PaYZBuxui6x8tx+dGLcrFZMM327nJY6Gin7rkzh3WGWMdOBQ
 OkE+jvLxVEeN+fYwT/9WQGX5qTVUXk9qAbswIopCdfam0PkYc3xwiiZ2acKm5g2ETw
 P6MEkkh0+mVdI+78Bi0AxO3ShmlGRytI3Z1i+L8Dr5cIBnadqRX79vvpISRbc24tok
 JNZL4R//bAfbNoie4gko94pI3fHsUmuQhNREMOoVCKHyPnsgGd9Env2V2zRKavsQga
 kiroYxa3LSsvQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W6ZT7Owl
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: check error for
 register_netdev() on init
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

On Fri, Feb 14, 2025 at 09:18:16AM -0800, Emil Tantilov wrote:
> Current init logic ignores the error code from register_netdev(),
> which will cause WARN_ON() on attempt to unregister it, if there was one,
> and there is no info for the user that the creation of the netdev failed.
> 
> WARNING: CPU: 89 PID: 6902 at net/core/dev.c:11512 unregister_netdevice_many_notify+0x211/0x1a10
> ...
> [ 3707.563641]  unregister_netdev+0x1c/0x30
> [ 3707.563656]  idpf_vport_dealloc+0x5cf/0xce0 [idpf]
> [ 3707.563684]  idpf_deinit_task+0xef/0x160 [idpf]
> [ 3707.563712]  idpf_vc_core_deinit+0x84/0x320 [idpf]
> [ 3707.563739]  idpf_remove+0xbf/0x780 [idpf]
> [ 3707.563769]  pci_device_remove+0xab/0x1e0
> [ 3707.563786]  device_release_driver_internal+0x371/0x530
> [ 3707.563803]  driver_detach+0xbf/0x180
> [ 3707.563816]  bus_remove_driver+0x11b/0x2a0
> [ 3707.563829]  pci_unregister_driver+0x2a/0x250
> 
> Introduce an error check and log the vport number and error code.
> On removal make sure to check VPORT_REG_NETDEV flag prior to calling
> unregister and free on the netdev.
> 
> Add local variables for idx, vport_config and netdev for readability.
> 
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
> Changelog:
> v2:
> - Refactored a bit to avoid >80 char lines.
> - Changed the netdev and flag check to allow for early continue in the
>   max_vports loop, which also helps to reduce the identation.
> 
> v1:
> https://lore.kernel.org/intel-wired-lan/20250211023851.21090-1-emil.s.tantilov@intel.com/

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>

