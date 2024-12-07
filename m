Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B20B9E7DBD
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Dec 2024 02:32:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 613B281422;
	Sat,  7 Dec 2024 01:32:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5elkMUe0_mYO; Sat,  7 Dec 2024 01:32:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B760581414
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733535135;
	bh=u3q7SJtWHaoF43HYXe0BlKMFfxgpMT0IDZ54PO3Skp4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=264Kiv5cM3pCw+Q5dm2uCatMY5m8VPlseNKYOj8I3eEHWGO81mQ6VIZejl6sfsnC2
	 bB9CmjG2do/7rqmtq0qNfLTcUmrvzERt8HwUozZHJ8roDlW9b9fCPg2QSnLuWFraGH
	 X0CZCI66+Sq7xYyGR1rCJy87vZ+sFGVaLdf/IVBX5VTmeB5CEijHovTb651pchqOH7
	 pRnc0mrSx+OKubs0hv6kxuDra9mNwuWwy4uBO4EoskexBfOyVEMuXGW9jJIoxP5cz2
	 kbKFMoVFjwgmAoGnYiDaOvBfiAr5K3eYmKf8zZZIDm2hQruoMNykwXS8wPTX4peWqB
	 GpQmTswT4wv8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B760581414;
	Sat,  7 Dec 2024 01:32:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC6B6ED2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 01:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF5608140A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 01:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3wnzOmQLXkm for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Dec 2024 01:32:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2903180F6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2903180F6D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2903180F6D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 01:32:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 453F2A445AC;
 Sat,  7 Dec 2024 01:30:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60A0FC4CED1;
 Sat,  7 Dec 2024 01:32:10 +0000 (UTC)
Date: Fri, 6 Dec 2024 17:32:09 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Message-ID: <20241206173209.6f9fd5fe@kernel.org>
In-Reply-To: <20241207004737.33936-1-rosenp@gmail.com>
References: <20241207004737.33936-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733535130;
 bh=L/w6Rf42nzOgdNeNz21pHGIFlrSPjNLkdvscmHfU6J4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dQDgy4wDBGNgYU9b6Zw6HzHN+xI1synkMjbQbtADR1bRoZEY+pgZLswF39sHrBB4N
 f1c4ysEKhejt0RmGzC0AKBL8MydUO+N1axjhLquvszlq8bcCb/18Ncgnt9kZ3PeNsp
 acIcy85U4Ing1U4dMhNlVeJKTLIxkcfH5CJ+H44LzDohcHY77dBWNwNn6bTm0232pd
 lPKunEHupQuYX8MfyE4LYRJy2aW30PZ66bArS5GwGftcsp2PWUgIrwMDzNNIdD9u67
 4KUZT3QQ7O3pb3lgygcwCyJro2cU2YpNZBs997whQ6TLbJsMwK0YTF6qnh8tXrivra
 RcOidGKA+IyRg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dQDgy4wD
Subject: Re: [Intel-wired-lan] [PATCHv4 net-next iwl-next] net: intel: use
 ethtool string helpers
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

On Fri,  6 Dec 2024 16:47:37 -0800 Rosen Penev wrote:
> Cleans up the code quite well.

Maybe the ixgbevf changes, yes, but the rest of it is just churn.
