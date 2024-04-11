Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1940A8A1618
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 15:45:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADC8041959;
	Thu, 11 Apr 2024 13:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PTul_1znAADU; Thu, 11 Apr 2024 13:45:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4A3341A14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712843150;
	bh=uZ8yI9+l6B1FButzWubOFMOSKsfgBZKgihR92v06Les=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7qwk2ws1cdjJJKH7Oq+VCfoqAUO8neUyPwXXtUAqor7gPrfoGp2n6SDiFA16LNqcW
	 uDqEi86RRPz0JaIL7Kw4C4AwWT6KtJ7nbVAIPBE2d5rSZkK2PcfKO0s4H/lOdLX5s+
	 1tKtxX2HzuGesBNte6RFxZY3uIzGKzbVTz1wgE2UNzKSjHT6KjcaXpC5uGgyuNuXQY
	 BMFIeRL51vqfRzqup1bQes7itiLL+zeFw7oJgGPsEHtxhTQxMmOil+CtYa3u7dK81h
	 xegCHagWIAAN+kdKjt52ayAw1LH2nYvVLBpyud3GsP9a2qF1cPwQ4rNk0XRQZL0b/y
	 /2kVUp3qaDw5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4A3341A14;
	Thu, 11 Apr 2024 13:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94C031BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 13:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B37E81398
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 13:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z4MWRltWi26C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 13:45:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C873C81354
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C873C81354
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C873C81354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 13:45:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 99D18CE0A66;
 Thu, 11 Apr 2024 13:45:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1681FC072AA;
 Thu, 11 Apr 2024 13:45:42 +0000 (UTC)
Date: Thu, 11 Apr 2024 06:45:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240411064541.7106be9a@kernel.org>
In-Reply-To: <d28896e5-32cd-4376-bb1e-44c9dbfea172@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <20240405212513.0d189968@kernel.org>
 <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
 <755c17b2-0ec2-49dd-9352-63e5d2f1ba4c@intel.com>
 <202404090909.51BAC81A6@keescook>
 <91486cf6-c496-4459-8379-257383d031a1@intel.com>
 <20240410175424.7567d32d@kernel.org>
 <d28896e5-32cd-4376-bb1e-44c9dbfea172@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712843142;
 bh=Tr3v9IwXT/xEwkY/R/VsTmiz604534gdFf1SN3vftzI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UGB5cvdeQh4Eq+B66uxOXvftKKE2Wd+1+rKoLwD9h1fANbqcYmep56Sdyq2lj3fyp
 dA/0xTzxMmrVDh5jKLiCgt4oD3lA74PnWe7y0j1DqpFna9TjkJXfwGvdfvEdQoeFqu
 V6doZHyhAEio4aNe4j7RJTur2+qOHVUTRt6VqOd6gzpkorXrQ+mQuWz1izKno1aXzt
 bQtXCIZBdyh2gLwxGZ2ITCbCw3ET3L6Qe6NDPwGWQOR23tXzYKh6rmVrKZjhyzb6w7
 P0NM3+PJms0BLiVZ7lrIP1rga67kVkVaCOaMK5eSt75Qb3fUZytYVe4KuWKbm9jgaC
 0DwnnZ1jV/43Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UGB5cvde
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Eric Dumazet <edumazet@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Vlastimil Babka <vbabka@suse.cz>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 11 Apr 2024 11:07:24 +0200 Alexander Lobakin wrote:
> > I think doc tree is a strong candidate, or at least we should not
> > merge without consulting Jon. Please post and we'll figure it out.  
> 
> Can this series go simultaneously or it needs to wait for the fix first?

You can send both maybe just mention under the --- that "this one will
generate a known kdoc warning, I'll be fixing kdoc script separately".

> > The question someone may ask, however, is whether it causes new
> > warnings to appear?  
> 
> I tested `make W=12 KDOCFLAGS=-Wall all` yesterday and haven't noticed
> any new issues, although expected them.

Surprising but nice.
