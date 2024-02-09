Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7281C84FADD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 18:19:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23FCF42AC1;
	Fri,  9 Feb 2024 17:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l1o3Cl45NHLl; Fri,  9 Feb 2024 17:19:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 500DB42A97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707499159;
	bh=mCTkf7Uhk05htdUngOFotI43lknoNa0E5lP/jBopk84=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tkTGUiJQpf/pCHqC0x2UjJ4NpJKImrH/kXhuFFWDK1f6yl+HfrxWQFgkenqflea4g
	 T/SO7i2V20ASl6/8vUS167JXQe04U5YMQNxJBKNkc4TV412bvg5As+fB233p0ezHlY
	 uB6kkqLj1OQpVfSCcnvx4Pih7r18mWA+6RrwJc77Ej+AuhIZQaWl63FR+Brh0EWtKd
	 u5/3ShZXVAr4zoLrXTYGlu1v9M7WL7f6wG8hFE0IZiMy6bwzNl9p8/u29dqtQFlhdv
	 AeoHuviWeKZeQ1OzjklrxEx2l9u4bbGTJt+MC9gzCWykSI5a9MW9+B9SpbDpF6WU9t
	 8qlqEG4l2YqUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 500DB42A97;
	Fri,  9 Feb 2024 17:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DD2E1BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2708242265
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cfnAku7qgTgy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 17:19:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14C1541703
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14C1541703
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14C1541703
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:19:15 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rYUWo-007P7U-3P; Fri, 09 Feb 2024 18:19:06 +0100
Date: Fri, 9 Feb 2024 18:19:06 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jon Maxwell <jmaxwell37@gmail.com>
Message-ID: <135d4123-29f5-46dd-b06e-d5a66bd7f598@lunn.ch>
References: <20240208221802.131087-1-jmaxwell37@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240208221802.131087-1-jmaxwell37@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=mCTkf7Uhk05htdUngOFotI43lknoNa0E5lP/jBopk84=; b=LHznyKEGKRt7UxP+B/ChINmYVD
 fZWLUuYEyPS5FhCXMRw/ImIQBWn503zlvLefjzwSgOG+QwOlAnW06F8p38bPX+ksKWjDOi9ORuN+3
 LWP4qJOtgpJ10JjchxgOVW4PEHkw4jZY/a4xnYq7ss0K3AJ62uOBJUjcntUZYILHyJaA=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=LHznyKEG
Subject: Re: [Intel-wired-lan] [net-next v2] intel: make module parameters
 readable in sys filesystem
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 09, 2024 at 09:18:02AM +1100, Jon Maxwell wrote:
> v2: Remove the "debug" module parameter as per Andrew Lunns suggestion.
>     It's not really needed as ethtool msglvl can control that.

It is normal to places comments like the above under the ---. In its
current place, it will be part of the commit message. Under the --- it
gets dropped when the patch is applied.

    Andrew

---
pw-bot: cr
