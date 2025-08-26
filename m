Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C50C0B36EC5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 17:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7368D6058C;
	Tue, 26 Aug 2025 15:52:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R1WuazyAU2sk; Tue, 26 Aug 2025 15:52:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0443C60594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756223553;
	bh=xn2QVJFsj4HJ+90OP93aEyUZIkHET4micAEgf76DaQI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UHOM0p8ffKfOLSlo5ngUvvvbhMGGM3XupdGVnbekcnoYPO16oOGu11nTi70n0iXnM
	 xFpIIqyNkt7diX0q/q6IMw8O0QmWGMpiKG1hcaiBRNBXpvizW3api4ldTS9KqPbgwY
	 aZ/pzfGWjlX3LWr5KU84nqJfy+uAuXUotc14iu3DA5GBF/2VLKh1piXMw1+uYBTrFp
	 z/ir3y4/xMxa8t2EIclKLhLpR4i2o/O8cwXFbQyOW6pbh3nSHDqzdV/kC4ZwBkdMbb
	 2ww5xz8DPVrIBNE5DleL1B6JvAvKPb2xN4sJlE0r/VBbY10E8FHyQ8dEiyE73f9Xnc
	 kaQcjtW74jINA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0443C60594;
	Tue, 26 Aug 2025 15:52:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 66BFFB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 15:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5859A401FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 15:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KSFDcLLdP9m5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 15:52:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D1D57401FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1D57401FC
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1D57401FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 15:52:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 839DA42BA2;
 Tue, 26 Aug 2025 15:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1301DC113CF;
 Tue, 26 Aug 2025 15:52:27 +0000 (UTC)
Date: Tue, 26 Aug 2025 16:52:25 +0100
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com
Message-ID: <20250826155225.GC5892@horms.kernel.org>
References: <20250813075206.70114-1-enjuk@amazon.com>
 <20250813075206.70114-3-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813075206.70114-3-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756223550;
 bh=uDBeTmPv8qUYnsaeZ6TQuJA23FxviL4Fghpbh0NN7H0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RU/r9Sund3xTkuhzXlsz26/E/R4O9PNZ55Tn1GMiDSKHLmR99Ol6YPFWTZjI5FJqE
 bDbkq+eNy2l+nLHRcJ9cTsCi8FZb1YByUp5OHOcqg9wKRx3qDz6sukonGTOpnLM2Zn
 yFuji07uxovAaXITbxGjY+AlaztCS9b/wpe14rtxd47QScdAcz9hhSGw3uknrLr/AC
 azurJFt84j+V0sYz9U+33vwZsaulP0X9KAZhAbw6A60jilpq+iRxQ/F7hKBRzQMPhW
 CKpLQyeyy0AxMSNPXu2fNlogGe20Ik5dbGs/10vo8AoGqFlsociW4k9/JX7P0R9OiW
 rPyWxzt/w0Qtg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RU/r9Sun
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next 2/2] igbvf: remove
 duplicated counter rx_long_byte_count from ethtool statistics
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

On Wed, Aug 13, 2025 at 04:50:51PM +0900, Kohei Enju wrote:
> rx_long_byte_count shows the value of the GORC (Good Octets Received
> Count) register. However, the register value is already shown as
> rx_bytes and they always show the same value.
> 
> Remove rx_long_byte_count as the Intel ethernet driver e1000e did in
> commit 0a939912cf9c ("e1000e: cleanup redundant statistics counter").
> 
> Tested on Intel Corporation I350 Gigabit Network Connection.
> 
> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Reviewed-by: Simon Horman <horms@kernel.org>

