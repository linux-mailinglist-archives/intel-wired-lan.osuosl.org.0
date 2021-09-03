Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 526A34007C2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Sep 2021 00:07:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC3D942705;
	Fri,  3 Sep 2021 22:07:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtVApJgqMsdf; Fri,  3 Sep 2021 22:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0838E426F7;
	Fri,  3 Sep 2021 22:07:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 595181BF366
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 22:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5493F83ED7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 22:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wM39UWHnakOd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Sep 2021 22:06:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6187583ED1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 22:06:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B521660724;
 Fri,  3 Sep 2021 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630706814;
 bh=Ht8W/A3YSRfdKt4bjSIX0wrzEonGzovb9ZbFOC0prHY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dYeui8dOxlxIg3yYFsTSW7k4voBAiYXkmK/o2ukD5V8/4c50RG7Ah/37DLVYQ0oBv
 AhFVA4aOEW4xfkOsSNRb2gRNYgR0sgcKvFQZmfC6uMNud03RLWUVWw6f32nZJlQTlz
 UewG6JboLOURRmqR2zdkPXugqbbvaQrg6EQOpTye8U/TP7pmrVi88+9mLIGi4KqXKT
 2xkFZn/36ov8qBlKuyub7Y4/pnKToKK2+TKcRLGUHdW0ySjfQHp0QinIGKod0PzuGM
 QInZP+nW0AGuwU9xemq7hwPNbBCBELXZCUUmRHMr4nwZJzJSbODvqAdplH3alNev0A
 WQjxTuZb6FaiQ==
Date: Fri, 3 Sep 2021 15:06:52 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20210903150652.6e763cb6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210903151436.529478-3-maciej.machnikowski@intel.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-3-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: add support for
 reading SyncE DPLL state
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
Cc: abyagowi@fb.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kselftest@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  3 Sep 2021 17:14:36 +0200 Maciej Machnikowski wrote:
> Implement SyncE DPLL monitoring for E810-T devices.
> Poll loop will periodically check the state of the DPLL and cache it
> in the pf structure. State changes will be logged in the system log.
> 
> Cached state can be read using the RTM_GETEECSTATE rtnetlink
> message.
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>

kdoc issues here:

drivers/net/ethernet/intel/ice/ice_main.c:5990: warning: Function parameter or member 'eec_flags' not described in 'ice_get_eec_state'
drivers/net/ethernet/intel/ice/ice_main.c:5990: warning: Function parameter or member 'extack' not described in 'ice_get_eec_state'
drivers/net/ethernet/intel/ice/ice_main.c:5990: warning: Excess function parameter 'sync_src' description in 'ice_get_eec_state'

./scripts/kernel-doc -none and/or W=1 is your friend.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
