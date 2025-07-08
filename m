Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E13AFD6DF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 21:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4027180B62;
	Tue,  8 Jul 2025 19:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N27Zxqh9RXFI; Tue,  8 Jul 2025 19:07:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2E5480B77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752001675;
	bh=pk5Xy3AksycD5+r+2diZTWxI7Xu4eNmdu5gDK9m5H6k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mp7S3qUvmIOyHB54sOQC7Qeh7B5KqBNJ7tt0wG5wRjmloNZp5yAkhaGIrxG0jMRK0
	 +nQlINIMn5cu5YhU8aXlPETbt1+krggqNeyLTIw9qYBA0nDoVJTPLWnoLXlaIsKKI6
	 khhVaKksMiHa1Gir8qpxwuCURdCtEghwdS2CBNPFr3HoR79dqTnyMTUNK+uOd7HQx9
	 BjNtvEgbHoT1rANgb85y3ZtjNgiVlWTn2j5W+jMjqROXs0QJC14pY9J1l+PO9zElZ+
	 LNHVMnff2HYxIVgnlGyFEXERRjFpOxx6hlUXHX0lRBHpO72snLkrnxdK0fGyB4S7Gg
	 gHMf4+VsXEqlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2E5480B77;
	Tue,  8 Jul 2025 19:07:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E8D3315F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9E616116E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Flp7flxtYhXa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 19:07:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5308C608FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5308C608FB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5308C608FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:07:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6CB485C63AB;
 Tue,  8 Jul 2025 19:07:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 188B3C4CEED;
 Tue,  8 Jul 2025 19:07:49 +0000 (UTC)
Date: Tue, 8 Jul 2025 20:07:48 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250708190748.GX452973@horms.kernel.org>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <faa67583-4981-4c99-8eed-56e60140c28f@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <faa67583-4981-4c99-8eed-56e60140c28f@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752001672;
 bh=Tpyz8BtnWMzPCZbAOTcxnIljuuU61L/3QdpNiHzCTPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bbXkKp5pzj3R9nFxo2bDaYimLL6n8hLZ9g6dS+IXbKPnzwEhZF2x2FqbcQE5GyD81
 gQZ3z1yaM7ya+TdRmteHH27wIoPjH0+lZnHRZ3zNsbzBovaUn6oclqmm0fHyXyHqk3
 DLcGZYqDyUDhHJxBjNXuV/VkKKmgzyROiHY7xcrtCuMxY9KqPXL6bWckgvcnSGycMA
 a7DtIlopbvjiSQTpaneNP0fi1ttOr2ZdOy3k3QFsbjQS3IqbVURMez/sv4vQ+YbB9y
 JKguQzHZ4w/LpquqQK/DYcwbP0U3hh3aWiZDfEXRbdYIjES6pweSJwB3aqRUH7z5En
 LyBB6k7ORCeYg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bbXkKp5p
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] e1000e: drop
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

On Tue, Jul 08, 2025 at 10:17:22AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> Let the C type system do it's job.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

The nit below not withstanding this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
>  drivers/net/ethernet/intel/e1000e/nvm.c     | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index c0bbb12eed2e..5d8c66253779 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -959,7 +959,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
>  	}
>  
>  	/* If Checksum is not Correct return error else test passed */
> -	if ((checksum != (u16)NVM_SUM) && !(*data))
> +	if ((checksum != NVM_SUM) && !(*data))

Unnecessary inner parentheses here too.

...

