Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E90E985BC85
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:46:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90EF8415A5;
	Tue, 20 Feb 2024 12:46:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rkux6sVHL98v; Tue, 20 Feb 2024 12:46:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C81E340711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708433166;
	bh=JftA5cMVxsirZClSZtJQ1OSwX/hLCvb7DX7yS+QbM44=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nWlK6sZHpg696SifGrg5ernNglzzRCuH6wSP4oixXaq96zn7mva8mD4gpRibY3uJH
	 +hpEf0ev/fAQq1ALCApjnrE/85vXMWW21NePtt2GcxJxoASOBmpi9wvxmf4BnnAeq8
	 eFbtsLDS6+ZO5rKUvkRecToYcywAi/IvolfP0peS98XKjZ6wM8yPg2bFqvPEQdFpiR
	 k+RYpJH1QtkfOOrm3Zc9BxpQQxtnm3DhXqCAwMUN6Rsvtm1b0J8WgjO/O0xeHtqvyc
	 Kvu4pnkCHhiNlzAHYzHoW/IgpicbUVcll9L6IpYl/0uYGJpRRfv011I/uNZBH1ph8X
	 GCFsMVZaufkKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C81E340711;
	Tue, 20 Feb 2024 12:46:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD9EC1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6C1581E6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCvqMR0f-km0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:46:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A97881E25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A97881E25
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A97881E25
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:46:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 598A3CE12CE;
 Tue, 20 Feb 2024 12:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19D6DC433F1;
 Tue, 20 Feb 2024 12:45:57 +0000 (UTC)
Date: Tue, 20 Feb 2024 12:45:56 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240220124556.GE40273@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-8-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240218-keee-u32-cleanup-v4-8-71f13b7c3e60@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708433160;
 bh=gQul3zyPkfTKf/Ml5i7Eh8QLPr9gahhy3HMM4a1ZZlg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GWcPBbTXb1DAkN6KzJq3wn1GlHI+xhNHwjy1bgTzooI/4IXIUFSlAoMoGT4QfyaZm
 Ujwg5oZiKTCwVEMTz3F5BD/UHenO999I6qmX4Ca5VX3E8V3BxNDn8Fo1f65BVQ1cuf
 Du6DQ9saqfcUl1v6HM95gSIBD1/hIK46zFGM7JlMm2JIpkkoyXl5nMIGMPWseufNac
 nj+1n7FC6xq9G5QqsyP0oMvJ9mtcKhA+ikFW58ZN8psKIemW3JcoCvFo+SDutH00VB
 3EeiGvmFZ6yi2lKxVfbiplvnilUp4R1bSqLSsI3Pa49Jv8M4Fq0Y+AKBL80Lto14Qd
 aMQWX/mSjprZA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GWcPBbTX
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 8/9] net: intel: igc: Use
 linkmode helpers for EEE
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

On Sun, Feb 18, 2024 at 11:07:05AM -0600, Andrew Lunn wrote:
> Make use of the existing linkmode helpers for converting PHY EEE
> register values into links modes, now that ethtool_keee uses link
> modes, rather than u32 values.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Simon Horman <horms@kernel.org>

