Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C34380BA82
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Dec 2023 12:51:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAD6861062;
	Sun, 10 Dec 2023 11:51:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAD6861062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702209108;
	bh=pVM6687VnH4DBz+NEZ+/ZQc4dHNdEJ7QPL8JRWctLAI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aa8fwPoRB2rTYZm5jpPXzIRnuThn+60dpP6MFOHNdmOhOw4dvPZALh4oRXwG0zfHU
	 SHPmCDzEYe68bNz5G417IE6+JSLCTQJaOTRQt34O4yLe3PKnXjbej+zqhPVQv2pYk3
	 tiUubt28FoNNPzdkgwK1oxeicpUezULxF3MCvVfSsn+lpTYMMGIpVNz0qhNusK/yR4
	 I96yFwP2RoT+BF06eMOygx2cxGGi9+UMx6LM77M5VW2hzf/1E2hOlwI3iwK7Tqo0he
	 EUT3/EfC481HKufJ7y428vNbs2Sek4aSmgLOvM3NjnqUe4OpA1op7wnUhLrem2agbX
	 j3BANbY5achmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mPbm4lpp9FPw; Sun, 10 Dec 2023 11:51:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8975D6104C;
	Sun, 10 Dec 2023 11:51:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8975D6104C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96A7C1BF593
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E50182099
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:51:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E50182099
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9NeOvZWZ-Ly for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Dec 2023 11:51:41 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28C698208A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28C698208A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 951CDCE0302;
 Sun, 10 Dec 2023 11:51:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71157C433C8;
 Sun, 10 Dec 2023 11:51:33 +0000 (UTC)
Date: Sun, 10 Dec 2023 11:51:30 +0000
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20231210115130.GI5817@kernel.org>
References: <20231201075043.7822-1-kurt@linutronix.de>
 <20231201075043.7822-2-kurt@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231201075043.7822-2-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702209095;
 bh=zTw11dma9TQr51J8b37cApWXRBd1GrHPH/9aAAbr88M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJ886RBaO1WQggaU9RMEZ/Q+MZqh/qL7pqTx6lS2aiTQ/wGhl2F5LsqzCu2e16WSD
 QZN7UtBVVou4K01d4jugHnpplwfnXq41U8in8Vcoo1S0uMXT7TG1r6b4e4H68lE8Jx
 UdJ3BL8oon2/fHo+PWiDfJ+/Szr8YmZhpUtfhdtRIf7oQK5csPMux82YlLAnPYmIb/
 I7TuHWUx+XR0Dl4ss8hg+fqtwqHjjl8icX6ZCzIHgs+SCJeKnrFbJNpcTyY6+cWGEP
 dYRmZ3p6ckniXZTYHvR20lioOCYEUtjUnD7gEYQ8+L/t3BxTa1hum/9Jftnwgawz6N
 BYPw+X3fhfx7Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EJ886RBa
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] igc: Report VLAN
 EtherType matching back to user
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 01, 2023 at 08:50:42AM +0100, Kurt Kanzenbach wrote:
> Currently the driver allows to configure matching by VLAN EtherType.
> However, the retrieval function does not report it back to the user. Add
> it.
> 
> Before:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 action 0
> |Added rule with ID 63
> |root@host:~# ethtool --show-ntuple enp3s0
> |4 RX rings available
> |Total 1 rules
> |
> |Filter: 63
> |        Flow Type: Raw Ethernet
> |        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Ethertype: 0x0 mask: 0xFFFF
> |        Action: Direct to queue 0
> 
> After:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 action 0
> |Added rule with ID 63
> |root@host:~# ethtool --show-ntuple enp3s0
> |4 RX rings available
> |Total 1 rules
> |
> |Filter: 63
> |        Flow Type: Raw Ethernet
> |        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Ethertype: 0x0 mask: 0xFFFF
> |        VLAN EtherType: 0x8100 mask: 0x0
> |        VLAN: 0x0 mask: 0xffff
> |        User-defined: 0x0 mask: 0xffffffffffffffff
> |        Action: Direct to queue 0
> 
> Fixes: 2b477d057e33 ("igc: Integrate flex filter into ethtool ops")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
