Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45310A36FEA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 18:42:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8449B8475C;
	Sat, 15 Feb 2025 17:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zKKxfCSFgAG6; Sat, 15 Feb 2025 17:42:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C853984766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739641320;
	bh=13SGy/3XgupwcXyJZhgWfRFobRSfcZkwqYZ1lrOrVGE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rrF8bdHOlowWn3wGgjF5YZWyI2oxN/Mv1ElR61ZsjG/ATnZbWq8XHnFt3npyy3hof
	 THPh7FN3oOWZiuVs5yOqD9+nFkvWR0wv4TqQl3QxHDDKclQCQPFPCvwagSco7CCLoT
	 CNi+3Ze1HZ6CotgCyBeNfO4U1fZduf/599bKcfoOS+zYm6/B9Xu/OwTSTNbbfgmdg3
	 7yafp/gJxiZDtCrFFFbA+6NwRhrUGXtpKbmMfQbwZLcEILM2hkJQWGA6eoppzprkVk
	 T25eQH7z6twsvaecF7wpPDWjRD5NUMVxtjDoJBuN79BnlrkEsvoY2mw5P6k2Ur4YfK
	 pa/xLIMtnOiUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C853984766;
	Sat, 15 Feb 2025 17:42:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F330DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:41:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC895401FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y-RJm48a7vKV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 17:41:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0EF1140197
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EF1140197
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EF1140197
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:41:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id CBD0BA405AF;
 Sat, 15 Feb 2025 17:40:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E23E0C4CEDF;
 Sat, 15 Feb 2025 17:41:55 +0000 (UTC)
Date: Sat, 15 Feb 2025 09:41:54 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, pavan.chebbi@broadcom.com
Message-ID: <20250215094154.1c83b224@kernel.org>
In-Reply-To: <20250211210657.428439-1-ahmed.zaki@intel.com>
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739641316;
 bh=gt3eqv7a9kh+Gsq8p21OcFzGFMQTfelKF9D3p8oHFac=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nwd0xdANyClMZf1j7d0pTWwfvlg3U5aWW/ktc81K6HnqPLlddlucnBDDeaEXfcNsU
 kjnjnpeOBYtt0vPbB1LAGQminCgT886gYY4it+qqK7AMM/O+Z20iuqVdusTD8Nhact
 PAkQ7zEgnYrRberN4YdhkhisN4oNnhbjJu2FV9oA18l0wBdszrxgryU043UMsLNglV
 QeJ7Ta4E1oeidKLxm79bmlFAlS17i7bvuQPwIpmyBo5W8RhuCcY9OQw8Nntx3hYNHx
 MQudz75BP4lrXQsDBMD4s4h8s1f4/ugm++/H2qeHNwlPBj4qA6b342irI9FXPcKA61
 bNanh8iNfoG/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nwd0xdAN
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 0/6] net: napi: add CPU
 affinity to napi->config
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

On Tue, 11 Feb 2025 14:06:51 -0700 Ahmed Zaki wrote:
> Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
> after reset. However, since there can be only one IRQ affinity notifier
> for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
> management in the core (which also registers separate IRQ affinity
> notifiers).   

Could you extract all the core changes as a first patch of the series
(rmap and affinity together). And then have the driver conversion
patches follow? Obviously don't do it if it'd introduce transient
breakage. But I don't think it should, since core changes should
be a noop before any driver opts in.

The way it's split now makes the logic quite hard to review.
