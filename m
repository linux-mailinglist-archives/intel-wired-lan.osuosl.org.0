Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBDF85BC7D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:45:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 622C240711;
	Tue, 20 Feb 2024 12:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uA731zz2BiYN; Tue, 20 Feb 2024 12:45:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABABA41571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708433123;
	bh=SjFcvC3P3BYMEKuctAQC8Xb6vW8d32BfM18GEhzBcOs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QZvrQOYI/esFiSuipel/LorG8IjUHdXsbzi0/GmxZuTXyXhon7FeC03+OLQxnSFw5
	 BNzrs2cgAH1Yy9LEW8z2P0Se/wUEw4PNSwnSxyMgEyfIJ1rFLEssi64B9y/iOJ75fp
	 MR0LKDrmcOJQOPrSvBA4DEHwilZaO2on/q5YCFZP92hjBXJ606XnVezwDY3CfIwkvN
	 fUHZo88CJd00klAof6PDhqTft54Wa4O4sHCTQlj9irOqnbourk48cGU+fuVlqgD0HZ
	 CzlO6RWRz6aY6J6T9scVzPvmJ9tWLU17Ss8BfVhd3/Fdva56qGx0WWamUjmrcpg/45
	 tJZa8Eqz03DIQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABABA41571;
	Tue, 20 Feb 2024 12:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F5311BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AFE1607BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8-uNTGd_1ZY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:45:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9E6A860781
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E6A860781
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E6A860781
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:45:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D5E5860C74;
 Tue, 20 Feb 2024 12:45:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE7C4C433C7;
 Tue, 20 Feb 2024 12:45:17 +0000 (UTC)
Date: Tue, 20 Feb 2024 12:45:16 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240220124516.GD40273@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-7-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240218-keee-u32-cleanup-v4-7-71f13b7c3e60@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708433120;
 bh=JhjxLdnaB4JpbsSkExyQ7bYUCHruGBoELFCOkxWIJME=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o7ZSNEpJjkgsCYVtx+BeEDUh6j3zQKyFqK+GygFmIsNCpQly9K8qxBjtCizd8K8me
 OSYxcUMqOsCoAj+GIajvIgGMqYeMioiuAZ0M0QgrmxY8gMuRYgqzRwralCi6ctrDVl
 SiOtpaxlXxFH8T6IsxpypqFEMhsYZm6LEHseE+FpdBAuFu24ixRc5a1pTI+QZ/gB+S
 b3he6E9ZSwO/WOHUwK77eRTisG4oNHay6XHcwjUhuJd1yIyutv+DOTfAapTNo+T5Hi
 CVwc1BOSQw+1VFkS19QEIPaB/cRtMIOnjgbBWM12EU2J4w3DFe3jj3rpx40jkrA6b2
 Ev16jFJEOtTaw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=o7ZSNEpJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 7/9] net: intel: igb: Use
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

On Sun, Feb 18, 2024 at 11:07:04AM -0600, Andrew Lunn wrote:
> Make use of the existing linkmode helpers for converting PHY EEE
> register values into links modes, now that ethtool_keee uses link
> modes, rather than u32 values.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Simon Horman <horms@kernel.org>

