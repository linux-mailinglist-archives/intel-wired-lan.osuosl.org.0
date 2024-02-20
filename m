Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C0885BC77
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1980840589;
	Tue, 20 Feb 2024 12:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hLV6gz-3jD-F; Tue, 20 Feb 2024 12:44:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66E2A404DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708433089;
	bh=/bIif0fm7RMH7+68uo6CY+tduYM5OK6f3jUutcf+VAE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9c+TVXb+Y87oJcjLUZV2PFjXx2GOSR+LJ9Fx4ugM1Asdt8vP89u66N+dyGSFp1kFn
	 AUY065yX4rD+JcodQEs4VLQkZFZTVjYNHBap8+PfkUK619mXVM2liMoIJ2NfveSPeY
	 T00u+JpZfotuhPSG9x4ZWLGm4BgQ06JFD/9n4ZkR9c0m71ZEBXNrszCjAQSkCK2IKv
	 IwyIS4joqDQvPLg0TrCVlcsWOW4/Ta6PEc1YybA4EjzR448F0zLXLxlF6auhWwNdWU
	 7AV9I8PkdzBPLtSQx1d9RYKh/UIJoqpSun/9gbEuvJmoxDxtcrJSOz2d0yRG8/9MpH
	 beVxHg3F+Ylew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66E2A404DE;
	Tue, 20 Feb 2024 12:44:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8240E1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B454812F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRN5YzoFilFm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:44:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7C19812ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7C19812ED
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7C19812ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:44:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1C20860F7C;
 Tue, 20 Feb 2024 12:44:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F770C433C7;
 Tue, 20 Feb 2024 12:44:43 +0000 (UTC)
Date: Tue, 20 Feb 2024 12:44:41 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240220124441.GC40273@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-6-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240218-keee-u32-cleanup-v4-6-71f13b7c3e60@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708433085;
 bh=Jayoe0AEApGo847AZul/y9I3ziKqFlXjmJFfOUTdMv4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MqQP7EBgV6H8v9YurUso45Yc8KtCWTMmrEjp0Vrsnxf98zXnt2jAEHP8I+I2mo6iN
 wvC9UnecRCL313A3heSPu1tJuZtmGSWP8KTSWEp0IEdchtojs8yo7wpEZCbhe9sHy8
 wwdOpAc9VQoqLqyai8Ahjc1h1JSSYyJNPlkqeU9AAvNDehZhwcKHUZqZMHqxvqBmAi
 8hEcSN8n9sbhS0+DV+6XHMrhnsMYheFasYh7AoKRfAWK2mdx7IOF2JERkCI4Kpb673
 0fJLq35yu8D/Cth7ihOqFi8ksz8GZ5kX2U9963QFXQX0lkRwhypGMV2mKKTfz3waHs
 6UcTxAIUnK3zg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MqQP7EBg
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 6/9] net: intel: e1000e:
 Use linkmode helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Feb 18, 2024 at 11:07:03AM -0600, Andrew Lunn wrote:
> Make use of the existing linkmode helpers for converting PHY EEE
> register values into links modes, now that ethtool_keee uses link
> modes, rather than u32 values.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Simon Horman <horms@kernel.org>

