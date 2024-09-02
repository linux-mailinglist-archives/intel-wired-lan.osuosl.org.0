Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ED0968C4E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 18:41:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 139E360732;
	Mon,  2 Sep 2024 16:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id evE6RCmH8opQ; Mon,  2 Sep 2024 16:41:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CF2060723
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725295303;
	bh=gsswcvCXYw25bPATotJK9XQVHQsp1B4V6qyjfC70Ww8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=37OWqFIkF+AJHDCfrRE2rSmc7Q1L70PoYPGPwVrvKmvOz6znKvRmyPUtucU7szgEu
	 eCeOddobe/X75n1bN4/whSRQhjhztEg2ih5zNsislMO/iS5bfvJHfIBQ7ta2cP73Zi
	 DrUud/78VXRoiWYGAdea1KDJ6wPZ707zg/bHO2AGWtbjT8pHAHCxyikZZahcV9vUEC
	 gtG4TPbU8s3DpA7SFELMkPmI31VzgsPeuoP5QvRKw5Vth3Ldbek1MScysyRDMCb+mG
	 SfqUS56jwoP34QTsvLheWYmDTwoy+bvvSm4OsEN77tijCVX9E6phZJYDrweqDOyu/c
	 SGgWrcgR16uHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CF2060723;
	Mon,  2 Sep 2024 16:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7862B1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 16:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64C916063D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 16:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RGSTJIrGxc0v for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 16:41:40 +0000 (UTC)
X-Greylist: delayed 2205 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 02 Sep 2024 16:41:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2A9C260622
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A9C260622
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A9C260622
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 16:41:40 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1sl9Xg-006K53-M2; Mon, 02 Sep 2024 18:04:36 +0200
Date: Mon, 2 Sep 2024 18:04:36 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Takamitsu Iwai <takamitz@amazon.co.jp>
Message-ID: <87af1b9e-21c3-4c22-861a-b917b5cd82c2@lunn.ch>
References: <20240902061454.85744-1-takamitz@amazon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902061454.85744-1-takamitz@amazon.co.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=gsswcvCXYw25bPATotJK9XQVHQsp1B4V6qyjfC70Ww8=; b=MPDN5YLZ2CI2K0LgEEi1umS6+G
 wbaX90XA37Dj9XqdYu/a5b6lrzDcf+10R8cn6WPd2NYlVP+LMLOALkvKJBnBe0jFFRS/jRpFVyVGo
 8ngTzqJWfscgmK8BEHxvlTsGKy8ytzMTk0StFnwNtHBzEpD/A8QjRKOjDPxOUZ0u/jz8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=MPDN5YLZ
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 02, 2024 at 03:14:54PM +0900, Takamitsu Iwai wrote:
> Duplicated register initialization codes exist in e1000_configure_tx()
> and e1000_configure_rx().

What does the datasheet say about these registers? Since we are
talking about hardware here, before you remove anything you need to be
sure these writes are not actually required by the hardware.

> commit 0845d45e900c ("e1000e: Modify Tx/Rx configurations to avoid
> null pointer dereferences in e1000_open") has introduced these
> writel(). This commit moved register writing to
> e1000_configure_tx/rx(), and as result, it caused duplication in
> e1000_configure_tx/rx().

Did the same sequence of read/writes happen before 0845d45e900c? Or
did 0845d45e900c add additional writes, not just move them around?

	Andrew
