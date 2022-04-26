Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD1051017C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 17:10:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D4518316A;
	Tue, 26 Apr 2022 15:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FOIqYbCIbDz3; Tue, 26 Apr 2022 15:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6E8F830A7;
	Tue, 26 Apr 2022 15:10:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65EB31BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 15:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 529E3417B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 15:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K2_ebTji60fI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 15:09:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9762F41796
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 15:09:56 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 59485610A2;
 Tue, 26 Apr 2022 15:09:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61F3AC385A0;
 Tue, 26 Apr 2022 15:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650985794;
 bh=ETaJUv7P/rGpy+MmZXEjTLEuck6SMxqcHJ63Z3uDugk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rVAsSizpKSh0hgTFP2ZqxDw/bk38ROmihs47bEQbs6h9wiELx+Kb3zzTAKxQORbRU
 FjpA902GrmPhQeWY4Au62pb6vN1FXHZuJsQF6ZoQ9CirDS43tYueqTLlcKNkJU2vbY
 GRHPWpz8MsqEi//0V2/RUuMsG4Ts7aRKmWW6pf3qQrDzaSVVBwRzWon7liPaEq9XJB
 A83AlXFUwuShJaggiLsuTgl9lxL4PvBh5JLwFLV1Ueu751LL503ou9rsnve0P1IJl8
 hpVZXOlob/tI4smrzLACEIvvT5qEsK6WLtp+I2rdW1fDCHqay30iHXVOtJXwQXad+B
 7Rr8yecrX1CKw==
Date: Tue, 26 Apr 2022 08:09:53 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maximilian Heyne <mheyne@amazon.de>
Message-ID: <20220426080953.4e5b744d@kernel.org>
In-Reply-To: <20220426084636.31609-1-mheyne@amazon.de>
References: <20220426084636.31609-1-mheyne@amazon.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] drivers,
 ixgbe: show VF statistics via ethtool
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 26 Apr 2022 08:46:35 +0000 Maximilian Heyne wrote:
> +		for (i = 0; i < adapter->num_vfs; i++) {
> +			ethtool_sprintf(&p, "VF %u Rx Packets", i);
> +			ethtool_sprintf(&p, "VF %u Rx Bytes", i);
> +			ethtool_sprintf(&p, "VF %u Tx Packets", i);
> +			ethtool_sprintf(&p, "VF %u Tx Bytes", i);
> +			ethtool_sprintf(&p, "VF %u MC Packets", i);

Please use ndo_get_vf_stats / IFLA_VF_STATS.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
