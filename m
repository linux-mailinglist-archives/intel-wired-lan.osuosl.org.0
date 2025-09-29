Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DA4BAA658
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 20:59:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACF2480B0F;
	Mon, 29 Sep 2025 18:59:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TafiJPjOAEuG; Mon, 29 Sep 2025 18:59:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88B6E80AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759172377;
	bh=4WWXQEo0ZYbaslwoQcM2AxZJovOrxPKokbk/6UusphA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8Kd322/too7z6vNflINNO3KfY/0tPzTTlxtTVHcViWm9JGkGhZJiBI/qSsQ5CgGm7
	 Wki3RdzIn+GRFRsderaEzF4qqbf2nB0uE0vLnmRUQeSOtRNrENXDOgGrJLdL5hc8S5
	 GQK517+IdlNSrPfHo5dFVuGY+U+P/rmSzGIkJ+NslwyoiCJdbUo8R06QSI02jqiSeu
	 /2y+XJlf6OipSTgh0BUrpEFHFblWx8xxif9sLgrBmUX/ai8iPMAUQgSgFrLkgwTFXs
	 FD/5xHNY4rO0OzNGCJ5jSztQUQerxg+94N4nRy8PhCjTxuKQmDwR0pb7SHNxkmU1Tx
	 HJF2Z0eCuNRMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88B6E80AF1;
	Mon, 29 Sep 2025 18:59:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 80090CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 18:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6ED0F40A82
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 18:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgA4QPWeqrKp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 18:59:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CDEFA40A7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDEFA40A7C
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDEFA40A7C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 18:59:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 44F1E626E6;
 Mon, 29 Sep 2025 18:59:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E91AC4CEF4;
 Mon, 29 Sep 2025 18:59:32 +0000 (UTC)
Date: Mon, 29 Sep 2025 11:59:31 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20250929115931.1d01a48b@kernel.org>
In-Reply-To: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
References: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1759172372;
 bh=Ik7paXHQoL8nXJ243MBED5YSnAKgJqIx9caZBVg4mwM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=B8+JzZAH+FQG2ZexkE1rR0q2qe4EeUW7/mUQqbkQQIE19q7bUVNsLzbe3NQ/Iaf0Q
 v8DgvBVZFR81kIqyt4C80b+kJuJpxYogab88zaAYQ89VF4nd8qKiiWYssYq5m/brV6
 vgnIvcL60ne2Ax/KWJIVy3c5CUQzOs0y2+KeBSGfoQNNh0DRUcwicpqPvwTrGEHNtT
 zmnkRIe9UrQ9NxZtTtLMlWnYBhzDficlN6pJvn0/pf6GhRJZVG5bZYYSyLO3ulyJFu
 RGOISBqLvBlBVsKP6dtdximXEw8e1HA3huznoXl86IMSg5tFth6MTGr6AvOYzhaUOr
 aGX77MMhK/Y7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=B8+JzZAH
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typos and
 docstring inconsistencies
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

On Mon, 29 Sep 2025 05:44:01 -0700 Alok Tiwari wrote:
> Corrected function and variable name typos in comments and docstrings:
>  ixgbe_write_ee_hostif_X550 -> ixgbe_write_ee_hostif_data_X550
>  ixgbe_get_lcd_x550em -> ixgbe_get_lcd_t_x550em
>  "Determime" -> "Determine"
>  "point to hardware structure" -> "pointer to hardware structure"
>  "To turn on the LED" -> "To turn off the LED"

Hi Jake, looks trivial. Ack for us to take it directly to net-next now?
