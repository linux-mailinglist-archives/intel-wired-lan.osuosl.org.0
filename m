Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2098D9AE63F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 15:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29C82406DA;
	Thu, 24 Oct 2024 13:28:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYLrQXZYfFYa; Thu, 24 Oct 2024 13:28:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 473CA406A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729776487;
	bh=o3FPHJazw8V4WDG/8rcjKJePfVMarLcN6ZyCakQPKhE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=32MbcJ5WOYrkkyP0keN/wtHM8WUC1BDiFmJ1omiQrU6axGrCbTobbfR0qL5fPnK7J
	 uEEnF1D7/YDdbwJ6UJJ2hOkpQeIvXFRan1rfCEvRrYckaiGtGu5526tuBKORiw5hHM
	 GvKPzRKbzoDY5GFioTJuBk/SdrmHNAmJWMi013XayBE6b2y0BOEufGBPXcmkKUko9k
	 2xr0KyQJhTUyxrAyxVW9HZy0eUAdktR/XxNrk/MDY0pTqB5DoWWRByXeUjFsQax0qT
	 ZgHguknWJAlkeKyoLCMKHhV1vt8RZPobMVmbdJhRePZMWOw9GqqDKShofV9FQ4ggIX
	 tpAbAQbUz9TjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 473CA406A3;
	Thu, 24 Oct 2024 13:28:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 24257972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04D6540BBB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkH5Mmu05c8L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 13:28:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 363C340BB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 363C340BB5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 363C340BB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:28:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6D7845C5FB3;
 Thu, 24 Oct 2024 13:27:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B168C4CEE3;
 Thu, 24 Oct 2024 13:28:00 +0000 (UTC)
Date: Thu, 24 Oct 2024 14:27:58 +0100
From: Simon Horman <horms@kernel.org>
To: Yuan Can <yuancan@huawei.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, alexander.h.duyck@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20241024132758.GN1202098@kernel.org>
References: <20241023121048.26905-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241023121048.26905-1-yuancan@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729776482;
 bh=Pkfsb6G7XD6+q2is2hMkiN3zTsZuYb2EXhEZcy3Igz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fUE7L+mprYIJqY/XTekJVuIwBR++r0sSuFIvUtO4tdXKaxeNCx4Dbr4v/Y6XgHEha
 Swk1ghFJBZfy1wmUk2WzAessXAykVNjuoqaEN/+QH1gbUotMHX/h3wBXij0OziteVo
 lZhRfc26N9a9Yu6M3tY+6mvL1T7g0KKlIlnRnkq50l2oZXkMHkPA50N2Rjo9Z6VxRC
 gY8hEHBDt+eF5pqXsDpDX4mDR/IdGokFD929hTjoNi1eR3vmvg+U1dJIAYUxsOLvFL
 6ondEW8ZZy1RlNxUC/HNIf8vC8qtHlg+f9ze0Y449ilSOIj1ZNoEMzzr/IHLMnyXCL
 YXXrMmkOcftNA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fUE7L+mp
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix potential invalid
 memory access in igb_init_module()
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

On Wed, Oct 23, 2024 at 08:10:48PM +0800, Yuan Can wrote:
> The pci_register_driver() can fail and when this happened, the dca_notifier
> needs to be unregistered, otherwise the dca_notifier can be called when
> igb fails to install, resulting to invalid memory access.
> 
> Fixes: bbd98fe48a43 ("igb: Fix DCA errors and do not use context index for 82576")
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
> Changes since v1:
> - Change fix tag to bbd98fe48a43.
> - Change target branch to net.

Thanks for the updates.

Reviewed-by: Simon Horman <horms@kernel.org>

