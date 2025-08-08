Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4D7B1E99C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 15:53:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D11040C10;
	Fri,  8 Aug 2025 13:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Atz9fKB9Ufm; Fri,  8 Aug 2025 13:53:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF2E540BF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754661210;
	bh=yAGHWrIY1x7J75rmp7haMu51Na6RDOVgD+ohb4zgTQo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yBkL9rUKn/1RMQHeHiAsoCK/EH0pTWl1FEUGeO6J5nvBxKOFypsFd71XoKgvEm+D8
	 pIiI6h05KL6t2eDA+cqyYQ/jU9L0FXFgiPCDud6BPSJdsF5dLr2TlpYYD9wRZEwYoY
	 WP07vjvyuWYpA0zmUad43H0I7QKu90xJUuxgafdnZZLwSUtIAv8DhGRJwsjMM1R6LF
	 Wz0ghAwGkJ8784twrzon55cI1t1RLiEhceRRtKs+l8GlmZq1tLrccQT0B8bE8SsRzG
	 poetiUaKnvpl21jLPxlpUugWYfhT4VvTjztwmOwVrkCAyc1lm0oM8H8zZblPMdYjV1
	 XZ+hnPqnYkDoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF2E540BF6;
	Fri,  8 Aug 2025 13:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D26531
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43B7E405E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AsF2Ibs44c7A for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4BFA040029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BFA040029
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BFA040029
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8F9146142A;
 Fri,  8 Aug 2025 13:45:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 572EDC4CEED;
 Fri,  8 Aug 2025 13:45:02 +0000 (UTC)
Date: Fri, 8 Aug 2025 14:45:00 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250808134500.GE4654@horms.kernel.org>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <9e21249d-b5a7-4949-b724-e29d7b7ea417@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9e21249d-b5a7-4949-b724-e29d7b7ea417@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754660704;
 bh=KBYLWedCHRrxP1EnxZJ8XRu28Ig8rX3FT3YtyV4RbBw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g8I9scrimov2VRGka2cegfcq1/leGvfBWLBNI4YosHEzMts1Y0av7uKjBV54c12Wn
 ZNmDfRlZOEIOtFdluNGf+krIt5doZ6H7Ts0wUHfLkzuu+QR6AddD0w0oyZf3diZFGB
 YlXdXCCRadd3FaInmEC5qjnrTWTqobOK/xDRClXgLcbDatMwbHz8SUXpLqt7s19FhJ
 EGN6RJu8fSnMtTWbzG+pRDMh51xKqsZ1aWFxvYroTLyROVVEcWYkcjXnXpC/v3N62y
 0nWMlBsO43XmtMrjCSNbvUeeVbYqS55bm2uyp6ysTF+EtBWf4RJ0VoUKNnzxj/BJ3K
 CMRF/QXj9yQRw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=g8I9scri
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ixgbe: drop
 unnecessary casts to u16 / int
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

On Wed, Jul 23, 2025 at 10:55:37AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> C's integer promotion rules make them ints no matter what.
> 
> Additionally drop cast from u16 to int in return statements.
> 
> Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

