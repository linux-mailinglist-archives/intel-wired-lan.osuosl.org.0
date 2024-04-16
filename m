Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5958A6CD0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 15:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7502B81E68;
	Tue, 16 Apr 2024 13:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nK9t4olcySzV; Tue, 16 Apr 2024 13:51:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FC1381E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713275500;
	bh=La+ROYGCifhM3uHvdH9Bis6+6xM5L5k30IUJ2OhUHno=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iXGFTBvHxuUAyqTdcIjMCS3wWdBkn7uHYbjbFQ7x3xyeVUV4UhhTBoTYZ2W81H5lb
	 uYxEYfRO6gwy39c7hTKp4BJUxArY8RBepOschdHeb30sJMQGoVtnBOi1cK0gSXU+V7
	 Hf9jmC5wE+Rt8IPh91X+2PlzpP1hLEBx7zZ1Awjwd29jaBWfXhyh0U4W4AhdKMaELg
	 3iwQ2jF3aA6VcDbA6L/HpGItCo38caE/U0kHhT+1aMw3vgX0OvHkGiHh59qRAPkbeg
	 QjwFEPmbAVlQyNUOQGUm2UMuRGxJW4yQeDupbO1eRgjBhKQABvUbt7sm/jtOQOdrmh
	 IdANm46uU71Gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FC1381E6B;
	Tue, 16 Apr 2024 13:51:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6431BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 750C881E66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:51:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EgvoX6Q7w6td for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 13:51:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C19581E54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C19581E54
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C19581E54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:51:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4EF8D61230;
 Tue, 16 Apr 2024 13:51:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECBB7C2BD10;
 Tue, 16 Apr 2024 13:51:31 +0000 (UTC)
Date: Tue, 16 Apr 2024 14:51:29 +0100
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240416135129.GA3769813@kernel.org>
References: <20240411-igc_led_deadlock-v2-1-b758c0c88b2b@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240411-igc_led_deadlock-v2-1-b758c0c88b2b@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713275495;
 bh=4otepq24ibU/BFgkCAGDDODzhJI1QplbGSgPPr0bnNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h5QRW70WEVB/gjlxQF34XfHI8FAXbbwHnSKkZJgaVQnUEtTNThMJb97o0PD9IaeNK
 efdNoubBn/DS6cPrFYrxB8DbMRoNtUPBy1SS2cduKNPdK11oUwRyjbcmrX6PmL0Mev
 KiJ36YAHFDoyUbYswGVn5Ykj5UuDf4IR3Rixacty6DfYfS+gVPVPRakyNlou3CJIFa
 Rcbbj4ZdOeN7aCuwC6qntXqUuPZTBQxT54F58YyPYrR3H3nnkyFC7CUd5WL3PctA/R
 D5zuGwWEucz1vQ059yTlnSlrfviH32XR0U869Gi8ZkvpZNC+ilcYzgA2bGnNUyfT+e
 7kEDVHjToYhIA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=h5QRW70W
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix deadlock on
 module removal
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 Roman Lozko <lozko.roma@gmail.com>,
 Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>,
 Eric Dumazet <edumazet@google.com>, Lukas Wunner <lukas@wunner.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 15, 2024 at 12:59:37PM +0200, Kurt Kanzenbach wrote:
> From: Lukas Wunner <lukas@wunner.de>
> 
> The removal of the igc module leads to a deadlock:
> 
> |[Mon Apr  8 17:38:55 2024]  __mutex_lock.constprop.0+0x3e5/0x7a0
> |[Mon Apr  8 17:38:55 2024]  ? preempt_count_add+0x85/0xd0
> |[Mon Apr  8 17:38:55 2024]  __mutex_lock_slowpath+0x13/0x20
> |[Mon Apr  8 17:38:55 2024]  mutex_lock+0x3b/0x50
> |[Mon Apr  8 17:38:55 2024]  rtnl_lock+0x19/0x20
> |[Mon Apr  8 17:38:55 2024]  unregister_netdevice_notifier+0x2a/0xc0
> |[Mon Apr  8 17:38:55 2024]  netdev_trig_deactivate+0x25/0x70
> |[Mon Apr  8 17:38:55 2024]  led_trigger_set+0xe2/0x2d0
> |[Mon Apr  8 17:38:55 2024]  led_classdev_unregister+0x4f/0x100
> |[Mon Apr  8 17:38:55 2024]  devm_led_classdev_release+0x15/0x20
> |[Mon Apr  8 17:38:55 2024]  release_nodes+0x47/0xc0
> |[Mon Apr  8 17:38:55 2024]  devres_release_all+0x9f/0xe0
> |[Mon Apr  8 17:38:55 2024]  device_del+0x272/0x3c0
> |[Mon Apr  8 17:38:55 2024]  netdev_unregister_kobject+0x8c/0xa0
> |[Mon Apr  8 17:38:55 2024]  unregister_netdevice_many_notify+0x530/0x7c0
> |[Mon Apr  8 17:38:55 2024]  unregister_netdevice_queue+0xad/0xf0
> |[Mon Apr  8 17:38:55 2024]  unregister_netdev+0x21/0x30
> |[Mon Apr  8 17:38:55 2024]  igc_remove+0xfb/0x1f0 [igc]
> |[Mon Apr  8 17:38:55 2024]  pci_device_remove+0x42/0xb0
> |[Mon Apr  8 17:38:55 2024]  device_remove+0x43/0x70
> 
> unregister_netdev() acquires the RNTL lock and releases the LEDs bound
> to that netdevice. However, netdev_trig_deactivate() and later
> unregister_netdevice_notifier() try to acquire the RTNL lock again.
> 
> Avoid this situation by not using the device-managed LED class
> functions.
> 
> Link: https://lore.kernel.org/r/CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com/
> Link: https://lore.kernel.org/r/ZhRD3cOtz5i-61PB@mail-itl/
> Reported-by: Roman Lozko <lozko.roma@gmail.com>
> Reported-by: "Marek Marczykowski-Górecki" <marmarek@invisiblethingslab.com>
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> [Kurt: Wrote commit message and tested on i225]
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

I am aware that this patch seems to have also been submitted by Lucas
himself. I'd like to suggest that we focus on review of that submission.

https://lore.kernel.org/netdev/2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de/

