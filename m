Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9845F80F949
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 22:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 267B8819F3;
	Tue, 12 Dec 2023 21:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 267B8819F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702416408;
	bh=s6QJ0R8iZWZG9rbeGxwb64zbKBPYQR+te+URsYWkvyE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rQbaphJxqxexuTt/i5orc743IgXiVLqWmj2yr91xFyfn/WTxCL+w10NXuQw20YY6g
	 0UFZTFkT5hfIiq3p5s3sQcApb4XvXOSlZZzE+sUitjPlAAgR/IXPojZP1SEEfzRy7Z
	 oIK5yfSh8/OvxXpMyxTPF9G3s0uP7XP6nMpo2sGQ5mkHCfyRpw+A0ulKdmwk3Vd2hB
	 yWZAmIl9F1/vmKPsxUODEbaP06KmdTGj3x9KXepnqaWat2exJMEYvdDGM7BMl7vjIo
	 e1dVgaiMMGItltnJ12ICDBzdhBS55LrvkC3I+Tu11aEciR5dGpiJ7RcF7+N6kKpihJ
	 ZKzSgQSnqq0MQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YLYMMt-PrH8B; Tue, 12 Dec 2023 21:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 125A9819D1;
	Tue, 12 Dec 2023 21:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 125A9819D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE8E1BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 21:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8C49819D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 21:26:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8C49819D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qN5r5LEH0H-6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 21:26:41 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B0C7819BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 21:26:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B0C7819BE
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 03E67B8172F;
 Tue, 12 Dec 2023 21:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBA31C433C8;
 Tue, 12 Dec 2023 21:26:37 +0000 (UTC)
Date: Tue, 12 Dec 2023 13:26:37 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Kunwu Chan <chentao@kylinos.cn>
Message-ID: <20231212132637.1b0fb8aa@kernel.org>
In-Reply-To: <20231211031336.235634-1-chentao@kylinos.cn>
References: <20231211031336.235634-1-chentao@kylinos.cn>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702416398;
 bh=7MZqk1hNPj7r4egGXbPOB+Rztv8D/+/C7L1c9OmJaNM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=flRSOrwLQ6Kc4Jr7ORRXvJ9GkwBbbqmpb4qM7hK2Pq5Mo+ix+PgPwknWPbsyLrJk5
 ATqdQHydWfdFqN7c1//tDtxjet1++b4i1v5AH8a+DDpq4uEldVokQHHzyzTEu4snaE
 PHEte5nKs1RG9Td3XkE5pZDvwXd0Al1n19rkQeezl55Mbx636qHNcj2XAigiLYP5I1
 8nZMz9R8VtlS6dMY91F5MT1dyZv+mBHsFOeajqHZy8Z6jSX/NyTnzzkn1GuOQEALCY
 ujUJz7wtIS2l3TqBZ3cA72Q3XKBddfCGVKWrrvtxdIiQR7WlXf2k+1Tju5sYYLA2Mm
 J5FjKLntIkB8w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=flRSOrwL
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add null pointer check to
 igb_set_fw_version
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>, przemyslaw.kitszel@intel.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 11 Dec 2023 11:13:36 +0800 Kunwu Chan wrote:
> kasprintf() returns a pointer to dynamically allocated memory
> which can be NULL upon failure.
> 
> Fixes: 1978d3ead82c ("intel: fix string truncation warnings")
> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>

The allocation is rather pointless here.
Can you convert this code to use snprintf() instead?
-- 
pw-bot: cr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
