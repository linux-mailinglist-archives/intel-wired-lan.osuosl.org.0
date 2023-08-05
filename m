Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A96277105A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 17:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A7DE409CF;
	Sat,  5 Aug 2023 15:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A7DE409CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691249419;
	bh=/NTABT+s9D9eZZA8RaZ53WOB02FQM4XvcuLW+nv/4K4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CSxD1PaZVZZC+7I+LZ7ZjiKjZbY9eIS09kbX12/O382vVwiHZPeSuAA3wf+7zTJ1N
	 I4ckMY7ZcZAjqqxGgfcdNFsrVWiLty27DgfW5DGqsJ3zvfHrEsaUnv+T55oab37hu8
	 mDtl3wOqaXVUx2uklmIWZVl88CZGhQhoPqcRmEYtAbG+i2gOQUOpwkP9a2meKduYQn
	 mjogTdEvkdhyMf0UINCZmUp0vWo4ioCyKzuVixxamRUcENFUM4yhYCNQLmAM3Au4O+
	 kqeQfWoNFVhSZzmo8uQg5CX8QF8PRi+IIl3alV77oIc4bAPfIxNe8U89z7uSa8hx9n
	 XKCcIe1nahTgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qnBVeP7L6C-T; Sat,  5 Aug 2023 15:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 175E040217;
	Sat,  5 Aug 2023 15:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 175E040217
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7C01BF29C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 15:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D50F40148
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 15:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D50F40148
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFxfEwvrqCI2 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Aug 2023 15:29:47 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B62F403A2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 15:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B62F403A2
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D162660BCA;
 Sat,  5 Aug 2023 15:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C1E4C433C8;
 Sat,  5 Aug 2023 15:29:44 +0000 (UTC)
Date: Sat, 5 Aug 2023 17:29:42 +0200
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <ZM5q5hk5i+4xahKG@vergenet.net>
References: <20230804125203.30924-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230804125203.30924-1-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691249386;
 bh=1Pa5TB+z7Nn+ZHCGLRTSizWtVNvcIpKw6YoTtkM365M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PCIEITfIFlKwtfeeALeOGYFqG2Abm5vkSz7L7z8T3r1yO0Z8R90etpOE6aT7wcKgT
 A4eqaqZ+pKFJ6COr7YfMfkxdh4SCzFOVL8vl4XpjfPcnZ+k7inVI/MOrl+qOasR5b/
 wWlFxNjm3K3P/6oDfKOxEXin7q8EON93GidI3UHbOqDNGFGR0u5DyDwqynoagBgJsM
 TYwEV2J3sORliqo1ily/T0LWaarGceBxllmoai1MMzL0Uw8aaP9b+f5BGIrl5nXWNQ
 RlnuVqPigf0cT2FjntSk0rremncrQswWA+vJAvkgtQCyaJMj3rost0xW91fKPaVM/5
 vzOQNQRuKmIMg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PCIEITfI
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove unused
 function declarations
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
Cc: intel-wired-lan@lists.osuosl.org, daniel@veobot.com,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 04, 2023 at 08:52:03PM +0800, Yue Haibing wrote:
> Commit dc166e22ede5 ("ixgbe: DCB remove ixgbe_fcoe_getapp routine")
> leave ixgbe_fcoe_getapp() unused.
> Commit ffed21bcee7a ("ixgbe: Don't bother clearing buffer memory for descriptor rings")
> leave ixgbe_unmap_and_free_tx_resource() declaration unused.
> And commit 3b3bf3b92b31 ("ixgbe: remove unused fcoe.tc field and fcoe_setapp()")
> removed the ixgbe_fcoe_setapp() implementation.
> 
> Commit c44ade9ef8ff ("ixgbe: update to latest common code module")
> declared but never implemented ixgbe_init_ops_generic().
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
