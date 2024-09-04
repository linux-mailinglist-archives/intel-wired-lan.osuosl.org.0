Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 831D596BBC3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 14:13:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08860401F6;
	Wed,  4 Sep 2024 12:13:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9R9ATG68rQZR; Wed,  4 Sep 2024 12:13:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BED8540265
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725452032;
	bh=uh3zwQosGacku7wCYITExnVZrD8nWKDofzBx6XEt7T8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hXyjO1jyycFalhJp4ms9mXZopmdFUfj3DSBNF9uzaAb7ne2BeknqcIG8fHramDQc8
	 ffP3DGJjnormctggphzGiOfRrmafLLDKjLSto7YG5P03BM7hT8YGSBAynfm/qcqEnX
	 2GiapEIDGvslKO+f54WfIWlLKeQJ6MhGqECSHds5DCovr4dcV28bJAE5rvMwEZtRQu
	 LjpgTl75TKoNz0bMPbvM6xBJjk82nQnvoiw2Cl0q7nNeX26xj08O3xvlNrtniRtnLs
	 NQ/iysruCDWXRWmMr+OG8EsBvy/gJ1K711mqcQgOWoOFmgNd0/WXyyyJjz5OtzWXAc
	 ygHEbz60r+OYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BED8540265;
	Wed,  4 Sep 2024 12:13:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3002C1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19900811D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:13:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 675iWeIA6gUR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 12:13:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D12CA811D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D12CA811D5
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D12CA811D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:13:48 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1slotG-006YDY-SV; Wed, 04 Sep 2024 14:13:38 +0200
Date: Wed, 4 Sep 2024 14:13:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Takamitsu Iwai <takamitz@amazon.co.jp>
Message-ID: <b6b56dd0-b6ff-47d1-a678-d2fde5184723@lunn.ch>
References: <3ef52bb5-3289-416a-81b6-4064c49960c8@lunn.ch>
 <20240904055646.58588-1-takamitz@amazon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240904055646.58588-1-takamitz@amazon.co.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=uh3zwQosGacku7wCYITExnVZrD8nWKDofzBx6XEt7T8=; b=mlM2NzootN0hH8Q8aa21fcpw5o
 2tCCGYTQ4pbiWGRmnkd7EoU81eNdhxGlbCh+XSoXBUm6oWfq95vQoll/fTCSlhwSm0uCk5+/Bj9Pc
 RZC/Y49CGWRamPWAiYaXiKbss5yg40DzPjMgqMaYfruv0WHbKM5D6cIjMdS4WbaObeN8=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=mlM2Nzoo
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 04, 2024 at 02:56:46PM +0900, Takamitsu Iwai wrote:
> > So you have confirmed with the datsheet that the write is not needed?
> >
> > As i said, this is a hardware register, not memory. Writes are not
> > always idempotent. It might be necessary to write it twice.
> 
> I have checked following datasheets and I can not find that we need to write
> RDH, RDT, TDH, TDT registers twice at initialization.
> 
> https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/82577-gbe-phy-datasheet.pdf
> https://www.intel.com/content/www/us/en/content-details/613460/intel-82583v-gbe-controller-datasheet.html
> 
> Write happened once before commit 0845d45e900c, so just out of curiosity,
> have you seen such a device?

This is just risk minimisation. I don't want e1000e to be broken
because you removed a write. I'm trying to ensure you fully understand
what you are changing, and have verified it is a safe change. I don't
have this hardware, so i cannot test it.

> My colleague, Kohei, tested the patch with a real hardware and will provide his
> Tested-by shortly.

Please resend the patch, adding his Tested-by: and update the commit
message to summarise this discussion. Explain how you determined this
is safe.

Thanks
	Andrew
