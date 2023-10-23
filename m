Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EEA7D3CE4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 18:52:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 795FD417F1;
	Mon, 23 Oct 2023 16:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 795FD417F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698079968;
	bh=8pdN8ZHggalc/wtzOkZmNSXk2po3K7AkKXTmoJc7z+I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q5AJIS0MgXol0yHKLT0BrMFL7CZ+uiJH8rj4RPG8fEYsJ3Bykt+iaykmQlZM1YLJP
	 YMAPRD2U3Ie1v/VXfKNu6tDnYAsv+NNRfeW3LXvWTXWMoScJPZnzCsfPeuiK7ZSsAK
	 4YurQQDtM8iC9azsQSTCZsJtgPtuIsuyeA/DDzIO/9YRydNwW2IocndNF7bEnJI7CL
	 vqTFW/Um+NHgWdhaUlZ2zevdUnn07gLA9oEixXoNSnaSdeOhTIQ/94CW/QB2k3Cdea
	 IRnraS+oRXeGE9c7iJluvIlbH2Ryy2KKoaLlSC7WNx9z4KxVzQldDt63eRk1SYip8Q
	 t614t/FMDLbnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AGf2YJGRC_X4; Mon, 23 Oct 2023 16:52:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 203E4416D5;
	Mon, 23 Oct 2023 16:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 203E4416D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12E701BF325
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 16:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DADAC8366E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 16:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DADAC8366E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvKJh3JFdAGz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 16:52:41 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37A5783661
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 16:52:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37A5783661
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2978ECE26C8;
 Mon, 23 Oct 2023 16:52:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA43DC433C8;
 Mon, 23 Oct 2023 16:52:30 +0000 (UTC)
Date: Mon, 23 Oct 2023 17:52:14 +0100
From: Simon Horman <horms@kernel.org>
To: Su Hui <suhui@nfschina.com>
Message-ID: <20231023165214.GX2100445@kernel.org>
References: <20231020092430.209765-1-suhui@nfschina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231020092430.209765-1-suhui@nfschina.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1698079956;
 bh=jQgUixbQL8W4wAwTjcJl3cwhkO3yCkXNSDqf574oSw4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KBG7jWc4h4+fJDaiS4Q/CaPIup2hO13Tne4/anTf6UAPe6fxoRMMivAn2M6uJKvgy
 UrF4/gVI4IKFQbsAjygYKrjiUsEO9xHDnPLTl+cpgcYVDVk06QXpyak5mpqkBqoJU8
 GMx+vshWWycWKcQU2nt0uL1VRjF83xSANNNOjYo8TM16Yn3Ra7K7URTRSIaWTUMv7O
 3MkHeReIqsYdpYLmdD5PSyY4Uwske+NxTwOF2+KalNpMLM8R4UHrVahaxS2uEKIz3+
 XpoEBCZQSyHPgDicSnvGFJC/bgMAOTi9Asxx8J2JAT0TWqOBe2HQaM+d8HdcJfJ3a/
 lYe83bQx8Gi+w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KBG7jWc4
Subject: Re: [Intel-wired-lan] [PATCH] igb: e1000_82575: add an error code
 check in igb_set_d0_lplu_state_82575
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 20, 2023 at 05:24:31PM +0800, Su Hui wrote:
> igb_set_d0_lplu_state_82575() check all phy->ops.read_reg()'s return value
> except this one, just fix this.
> 
> Signed-off-by: Su Hui <suhui@nfschina.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
