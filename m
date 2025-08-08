Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE85B1E996
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 15:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AC9B40BCB;
	Fri,  8 Aug 2025 13:53:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUHQnKyZc20D; Fri,  8 Aug 2025 13:53:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 837BB40BDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754661202;
	bh=uyHO6EEX4wxQ8n1VAYSQJzddq+jQC4+vVFy4wsecucA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fgU6Dyb2e2qeP7k7dzcPinWzDj1lqGcHVLN+LznCZTNWqMhU6ZifdoTisidZWtWRS
	 QzaIBbQrU2uRYTAdbig4YoIOQz+pf5rIBxjDh6qnf4QvsLdbIYVnPIHT0mVWGcuZMY
	 mfucK36BL7YM1V+8Y5CZET7LA4Q2tlfkuVr6ffHzoq2CUezlZKTUabAuHBkynpAMQo
	 JqWWzPjDTiiP6++LTrcfFZYZdC72S2/zMW4NUfEWIJthHOFlpN1l5gLToElKYaBgEI
	 wc51dIUft8VMTekYQ9KyRw4zww8GFd20pVK0u2QQS8xLrXsJYKdy0QW42x2VIwwekB
	 17yq8H/e0RzHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 837BB40BDC;
	Fri,  8 Aug 2025 13:53:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F66431
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55D07405E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XuhbipP9X1Le for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 13:53:19 +0000 (UTC)
X-Greylist: delayed 537 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Aug 2025 13:53:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA39040029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA39040029
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA39040029
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2E3B75C676D;
 Fri,  8 Aug 2025 13:44:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5C90C4CEED;
 Fri,  8 Aug 2025 13:44:18 +0000 (UTC)
Date: Fri, 8 Aug 2025 14:44:16 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250808134416.GB4654@horms.kernel.org>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <6d05300d-e5d7-409e-8b78-a7c3da21ed32@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6d05300d-e5d7-409e-8b78-a7c3da21ed32@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754660660;
 bh=UE+WfyQP8dXhzeE53Lj+W1t+g6MjoTdQM6znfZUVi9s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jSCxEr+t6VsjFiCREmn1P7Lz9745oS6kEpPEeelTsuwoeMzuACA0IfPkH6YplZxZ4
 JaEdvPoeui1rdllGx0ETBjC7iwu5GbE/mnD9kOeY+JzYt9zTIonX4dKgHuX/8cT9of
 I+zttJz+3/UHMXZ62lVxEc9wq3e7bK7gc8ymTOYROsjBwG0R+ud9r7qstMUL0lf35N
 Xoy4hVb2aVdC5yplPgkRkoJpMZaggPACRgegVoD8A3GD/cVkUYKx2P96QMZCnYccgF
 MPMtK9HyjY1RIDIfK8ZHNi2qZxtHuX2SJIhqCHkNJNeQQcvpjtashRD/yFW4nqrNJG
 KvqT/tERqxQwA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jSCxEr+t
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/5] e1000e: drop
 unnecessary constant casts to u16
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

On Wed, Jul 23, 2025 at 10:54:35AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> C's integer promotion rules make them ints no matter what.
> 
> Additionally replace E1000_MNG_VLAN_NONE with resulting value
> rather than casting -1 to u16.
> 
> Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

