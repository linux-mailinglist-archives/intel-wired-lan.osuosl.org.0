Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3674378B890
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 21:42:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B19D44156A;
	Mon, 28 Aug 2023 19:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B19D44156A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693251725;
	bh=I7uB2vzYfpvBx0rK01Qi733emWluhCuHuW8vPuGn6yY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=exsK3VhqAyiGYzyOwigc7Jm1Z3tknQS0wuwHs4UWApBWFHLgiWroCsP8UY3jMTOwm
	 JPUrNGuRRc5U2St35TkOEGdWZMMEoxUJZHjEG2xK1GgHwwFqIUazpJqMVMGZPFzNMI
	 oSFTc5YqEBcyjo6LCpmAt7YlhBLpv/5ztdfhjBfz6nnONue4Pkl+jaN3iz23ZAiaGe
	 jaFWdIaED6EEdT5OIePZiOysFgd3SdjYawmW0x+qJn10nB9DYgO+OQregZLyLRlt4K
	 CGaE+WZHJ8DRLcnpwL7d3YJ9DTqZkSIJIhN1Mb54C5dTgrcdUDSEtL8lcTitQPzKNY
	 TR1TsQ0KOShFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYnVLrj_dB6K; Mon, 28 Aug 2023 19:42:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EBB641578;
	Mon, 28 Aug 2023 19:42:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EBB641578
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 862811BF276
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 19:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5648D4093B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 19:41:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5648D4093B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W4MtVY9yykdg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 19:41:55 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E95E40949
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 19:41:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E95E40949
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DB13C64CAC;
 Mon, 28 Aug 2023 19:41:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97074C433C7;
 Mon, 28 Aug 2023 19:41:52 +0000 (UTC)
Date: Mon, 28 Aug 2023 12:41:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230828124151.37130b34@kernel.org>
In-Reply-To: <20230824213132.827338-1-vadim.fedorenko@linux.dev>
References: <20230824213132.827338-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693251713;
 bh=FRkyoN28bA0TvlJ3RY9iFOdJIYYMOxmsjaIcU+xn6HA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Z6ykNQHj5v1smymmy8iT87a87m3qn0RUsD5d6MSzm0nvQocIRjlQjx5T/gkjcCnq4
 ebQrqlBLCwhtPUeyi835/CATC7qcAPDZJV4CIeVAQoP6bA8aG23275zbf0c4qB4/kg
 GFm01kwEWoZRq7iP+n1THZK/kDlw1PmVogBxepsSxKtSpio50As0QTGelcex8AbnaA
 /xjeHsLgLk0thp8nOVnIAlZ6sWfORKVj57Bofp7+D45XiRPWzUcNHoLddqgfbOIoMQ
 uB/TO/FSzvVh+FgYSOGioLZjOsc3BfqALSUxdLcUR9leFRBHsB+ejUFC6go3IDgHCU
 mkrkQsKrHXWPg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Z6ykNQHj
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 0/9] Create common DPLL
 configuration API
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 24 Aug 2023 22:31:23 +0100 Vadim Fedorenko wrote:
>  41 files changed, 8050 insertions(+), 96 deletions(-)

After some deliberation we decided to play it safe and defer 
DPLL to v6.7, sorry.
-- 
pw-bot: defer
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
