Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7CDC16664
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 19:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03BE7607A7;
	Tue, 28 Oct 2025 18:12:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GEDAqOUrhWf; Tue, 28 Oct 2025 18:12:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 859766078E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761675139;
	bh=dKtOMMirsoHjv5KCBgwqEYTJOlM1srn/i4B7Y2JGSa4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zco2oXr/SGgCB+ptvCoaxDQG6ctH/nH6n94PrxYhjZWZFqBDjEs8L6P+0hjZkTj5a
	 MBsNX4+eMsTsDkV3ht3ePe7rDAVHHYhoMWwcGKaSSvE8ILZ0yI/C1WP6HwW9OBZFwW
	 YIngFTjYdRF7iWOpVxXT7iWgyP3xL4/BcHAmpBIBCmriFOZeoDeUY5VYRLtcEL+xft
	 /AlNUrq3/KCLd6ThhA5OKASNI7ALFJiYAY25gQj9tfr1sL9ssz7RDq4f7aE2McmdWb
	 HkZqpmhliKF+6mH6iJoZe/j7TpDcavJzehRIP0RLohVh0HwiMXNDyCbYD4dxXgCLdH
	 ZoRtLDIVteRCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 859766078E;
	Tue, 28 Oct 2025 18:12:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 69374707
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AE7C60780
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LGIm9JTXSgtW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 18:12:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B36CB6076B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B36CB6076B
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B36CB6076B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 68F7543A90;
 Tue, 28 Oct 2025 18:12:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF95EC4CEE7;
 Tue, 28 Oct 2025 18:12:13 +0000 (UTC)
Date: Tue, 28 Oct 2025 18:12:10 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com
Message-ID: <aQEHes7y5QQw_gOt@horms.kernel.org>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-2-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251025150136.47618-2-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761675136;
 bh=xh400PhYtETk32cIznIvZAhI5hxKU8P8vAL++bW9D4c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jpIDEIw+U1p/Ixt0SMv5V6hpEqLgs5ExG5QHsMhawSwaRiQYLp0SkVaCZ3PlSXypw
 TQtydZl09NaBaEuIKUpqN6kJ6zh6S9StfIn0Sqqm+NqZiITxG/bmOEhCz9L1zv8fgn
 n68iR4BHEcRSxmvTpM1FH6725LSBKkS25kHZW3Z8CX+XZkGIbAtZ0aEN686PNLQKzg
 H3zbQXfjWN+99WpMDGEqloRhKwRpFyin3D0Ie0/Ws87zId1FCZJ9slwRCe6HQiqm5u
 4qmN5QDUIxEwq6TXI622yRjdDeW+9ggLmLh5IA8Rj+uJUURH42ZknLkrqjZtXY0pjR
 Wd3qd8dcUM6pA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jpIDEIw+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for RSS
 key get/set support
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

On Sun, Oct 26, 2025 at 12:01:30AM +0900, Kohei Enju wrote:
> Store the RSS key inside struct igc_adapter and introduce the
> igc_write_rss_key() helper function. This allows the driver to program
> the RSSRK registers using a persistent RSS key, instead of using a
> stack-local buffer in igc_setup_mrqc().
> 
> This is a preparation patch for adding RSS key get/set support in
> subsequent changes, and no functional change is intended in this patch.
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Reviewed-by: Simon Horman <horms@kernel.org>

