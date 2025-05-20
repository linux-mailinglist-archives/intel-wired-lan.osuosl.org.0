Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C339ABD1AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 10:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE09F4059A;
	Tue, 20 May 2025 08:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IXNh1HXlDT6C; Tue, 20 May 2025 08:18:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62FE7405F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747729094;
	bh=DvQD9v1EHgV8NaZ11TbsyLxZwm51rDEbPM+UjpQqVlw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Qp3WmV4gKaJGr4/LfZEkbiozYST3VhwB+I7EJEY39baRlAyelEBp6mv0hkWu4sj/
	 ni5zpuRUxlvu7BFxjf45o5w6T3WsW7T87cPovVPUJXBJd+3IGgwxBZywhkrwmaj3xM
	 XhGDPIAIRqhh/PJA8SDsPaYR7sDMGSBwFD4VGyr2sqkKJUiuMLSsdnE5AEENZYOWUk
	 8WFRG5eQeNY4mW8asc1jlJbJcmHOZ2hcOfXOJFMm0MDxJTFlHBCBfrLD8j4KLgs17f
	 NTpTlqQETIll2eWpBQMPjDmLLu5KlSgtCprxmivS/QDAVKhVg/mzYW/WFF0HeKEOtq
	 PHMj+JShP96Ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62FE7405F2;
	Tue, 20 May 2025 08:18:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A2EC193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B7CD60709
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:18:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZXXu8NTpB8d6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 08:18:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8744D606D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8744D606D4
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8744D606D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:18:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2D7FA6113B;
 Tue, 20 May 2025 08:18:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E95EC4CEE9;
 Tue, 20 May 2025 08:18:06 +0000 (UTC)
Date: Tue, 20 May 2025 09:18:05 +0100
From: Simon Horman <horms@kernel.org>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Message-ID: <20250520081805.GR365796@horms.kernel.org>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-7-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250519071911.2748406-7-faizal.abdul.rahim@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747729089;
 bh=DxUlgsmpbHBG24D6cBXEt3QLKoVyinm5hyxvuANQBJ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N4rJiZxpyaAUKheOAiF5N9P6A+d4PF5BLYLxvu78HXSt/w+yUQE1ANBhp+xiVe5ek
 bRX49Ev1BYl7Se75jUAuoyte6F8jKak55wVCwq7UqJmSz95Dolv+rpjg38YNxKWC6B
 bvbGd0PV5t8CENWcSvz2LFiWsoMAN63MRcHALwg+b3cGZ31Iwj/rYzWMdkkejlddOD
 JAI1cMN+WZkyqAGBbvd0/wwdUdz6gOOyGni1PgOr41VkjkiwEFSKf5uAzyu4Ao6hU0
 KDifMpAQjC7O/Oqio2S8bngB7gTugyJvgTNhFi0aYYbnv4PeNYPiZp3hly7T+hBTzh
 pRGSz+855cF8g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=N4rJiZxp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 6/7] igc: add preemptible
 queue support in taprio
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

On Mon, May 19, 2025 at 03:19:10AM -0400, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Changes:
> 1. Introduce tx_enabled flag to control preemptible queue. tx_enabled
>    is set via mmsv module based on multiple factors, including link
>    up/down status, to determine if FPE is active or inactive.
> 2. Add priority field to TXDCTL for express queue to improve data
>    fetch performance.
> 3. Block preemptible queue setup in taprio unless reverse-tsn-txq-prio
>    private flag is set. Encourages adoption of standard queue priority
>    scheme for new features.
> 4. Hardware-padded frames from preemptible queues result in incorrect
>    mCRC values, as padding bytes are excluded from the computation. Pad
>    frames to at least 60 bytes using skb_padto() before transmission to
>    ensure the hardware includes padding in the mCRC calculation.
> 
> Tested preemption with taprio by:
> 1. Enable FPE:
>    ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
> 2. Enable private flag to reverse TX queue priority:
>    ethtool --set-priv-flags enp1s0 reverse-txq-prio on
> 3. Enable preemptible queue in taprio:
>    taprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
>    queues 1@0 1@1 1@2 1@3 \
>    fp P P P E
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

