Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 409F1C16676
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 19:12:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB9DD605AD;
	Tue, 28 Oct 2025 18:12:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s5IyI8PvUJh8; Tue, 28 Oct 2025 18:12:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A46826078B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761675172;
	bh=m+WqripWiV3QrVH0AFLabTjijwV991IR7ROON6LA7Jo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eE/IT2mS/yJFtIFAtT9x89ZLiP7Xa9KpDGTVl+xO51O2nDR2m/IUi643n5c1X67a8
	 nqv34OGNb5U56y/QHEQz35OJXyEbCfyR6T5pu1UBwH3/ESmAcmb+xjS7+6FpnQhw3/
	 yJ5K7RloQrKggaZh53HvlmX2iOsSZvcFEEFS7uRFLXfh9y/zP0lXm0ktcW3s/XpGkC
	 WOY9KFrFKb0gEaZAYj/PYc0ryDZ0ow2D7c51mJN9IW6FfaYQPneuZL3CyhWTey2tIf
	 FIaZOJPMZ/Bnwvf9saSayBCkUqcERDFqx6UkSzc1aU2tMgqP+CYFMv3rZfOrKQ/igm
	 7DhGdluAKA3XQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A46826078B;
	Tue, 28 Oct 2025 18:12:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 562A0707
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C4E140328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1odyH89Un5rB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 18:12:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A062340318
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A062340318
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A062340318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 254D46144A;
 Tue, 28 Oct 2025 18:12:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51ABAC4CEE7;
 Tue, 28 Oct 2025 18:12:45 +0000 (UTC)
Date: Tue, 28 Oct 2025 18:12:42 +0000
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
Message-ID: <aQEHmm4YmzBHTIUb@horms.kernel.org>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-4-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251025150136.47618-4-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761675167;
 bh=rMFZ5kQBLZhjQxuEnEYZtqELf662NSTEeOQnwo23CPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HBDUB+pCEnZzSnEulSKLJd5xLkpkam7tch3J864WTz3dc3AiW+jO8bM/LRk4TVF2d
 d6Zj/3wg5hJRFgOooPvWHcEzDIe/MmxyBuqAOdJud5piZuGI7SLqXBXhMnmayddjoS
 ooJgNPN5RewCOM0n0eYeEFb4kKTktbiIhG745BeHhFFrW/fJkUjxkm28lZTnUteTPs
 pibwu/zJuI+a8x9CBcuDKfXCwfF6njKN+7wFbFbiar3cYwbC9kSffMozakhmUtm723
 mlPz1kaZuGy40T+J5tJuNshycy6DIz0zfNQzpjE34EhJmdymoDJmgas0ErwDoVqtte
 +JxzPJs3zW32w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HBDUB+pC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] igc: allow
 configuring RSS key via ethtool set_rxfh
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

On Sun, Oct 26, 2025 at 12:01:32AM +0900, Kohei Enju wrote:
> Change igc_ethtool_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> RSSRK registers accordingly.
> 
> This can be tested using `ethtool -X <dev> hkey <key>`.
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Reviewed-by: Simon Horman <horms@kernel.org>

