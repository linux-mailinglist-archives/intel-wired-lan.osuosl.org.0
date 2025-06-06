Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 723C3ACFAD1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jun 2025 03:43:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C20B483EFB;
	Fri,  6 Jun 2025 01:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xko6WrH0dviM; Fri,  6 Jun 2025 01:43:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50DE183EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749174224;
	bh=oE0emLIVHGE4UZ6APnSBgjHY/ntihXqOoYqp9iNxr2k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nvD8cDCJxK7sMCGzAIJov/VgF4Cq/NKtFvVhRp34fccCCaIgOAYa1bJuYZbOhb4mC
	 BW8UGYvWG7+L9Kg7ugGOghF8lIgL3/BjpU+8UMh9B6mTsr3bZLT+MIaLQsS+KiKNCF
	 LMS8SGUYGNEfIkg80PKpQzurtTaI7AZIlRx5pV9wFnHUBJJAkMjdUWI3PnjCx/8n3o
	 5fUkH4ulWS9Rd0piy8FwbiT22kLH3wEZ/KdpbsMjOeJvdzTu4iGl+Af5Pu7RATBfHw
	 Ycc4ir0kj27I+YFOqN/s6/9gS028yo0nzgaUIbj7qyADDMPv6yI8HAXGWtfRMA5vFv
	 lGaYgd40wskzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50DE183EC4;
	Fri,  6 Jun 2025 01:43:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2621BC8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 01:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1810940343
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 01:43:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNSvD4T01UTX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jun 2025 01:43:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 92C3740068
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92C3740068
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 92C3740068
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 01:43:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 669595C5419;
 Fri,  6 Jun 2025 01:41:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25719C4CEE7;
 Fri,  6 Jun 2025 01:43:40 +0000 (UTC)
Date: Thu, 5 Jun 2025 18:43:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ian Ray <ian.ray@gehealthcare.com>
Cc: horms@kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 brian.ruley@gehealthcare.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250605184339.7a4e0f96@kernel.org>
In-Reply-To: <20250603080949.1681-1-ian.ray@gehealthcare.com>
References: <20250603080949.1681-1-ian.ray@gehealthcare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749174220;
 bh=WHD4PuJMG/otH7gj9OW8gaFkbv8GJd+ZMOtkEz6VlI0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KDiBNQFwPOJSHFPrrahSQhMOzBG9hBiS/dxK00kJTNqTOE3QOaOhTkOY9DfSBh6bX
 ZCgWdmJM1YbRTIOlNFme98LasmYt/0R811/ItDw1NgUZB68+boR2uhQ6IoHqbukGzH
 UVwmM0lNPIPhNcbSDRMXkQL/OAGg8NK88yWk7z3UAArRUhLYtvL9VTs7eLDihalUlv
 kY3Gtd7+0Kbqnnk2O3sYzbsQWEbKVSn1OD/M9KQYUH/zp7UVKIl+8hBpnPv0Evcxbr
 kxsL7dMK+XVSabsh1I6QnVHfrXdeEtQFCOuYwSmpHfJDE0AatbjLmiZekYjJkztQAJ
 5UoDPBEOgJbUQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=KDiBNQFw
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix watchdog_task race with
 shutdown
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

On Tue,  3 Jun 2025 11:09:49 +0300 Ian Ray wrote:
>  	set_bit(__IGB_DOWN, &adapter->state);
> +	timer_delete_sync(&adapter->watchdog_timer);
> +	timer_delete_sync(&adapter->phy_info_timer);
> +
> +	cancel_work_sync(&adapter->watchdog_task);

This doesn't look very race-proof as watchdog_task
can schedule the timer as its last operation?
