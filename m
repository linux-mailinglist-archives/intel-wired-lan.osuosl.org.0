Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 274E7483D3F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 08:53:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A695E825B1;
	Tue,  4 Jan 2022 07:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JdYGG1CtzxPx; Tue,  4 Jan 2022 07:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD60082521;
	Tue,  4 Jan 2022 07:53:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3C401BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 07:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B63A40179
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 07:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IjeZRN7oANFk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 07:53:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 761004010F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 07:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5PWaYW/OkT7Anqvi+DI48etTN6eiDX29uzAqA4c4wt8=; b=u94E3xAMya2C8ycWHi96lgca/w
 mr/quhdazQLTasd2H7ZAcRyN3U+xSDLbOsr2ZTh323HieZjeEK3ZwULbtBpO7Vnl6TP0EqL60h5ER
 dc6xDKBebDh9KZ1wTh7TaVoW+eAIOlssoheYG/VVZuud1fesmt8LROwXIXJvilmp/JVAZqCFsfqtL
 W3J+s6rfbCWkaQaE6f7ckmmXl3c+SGBe3sLRFXH/DIdaC/fivTD/ZWLqM9R/xQiR22uFXufq3x9z1
 F07hkMVP3GtHntZNokxTA9dau0iMFBOCz7zVr7d4O8NSRaC/xN9x8EhEKutyG6QkFIcSQdZ7ikXcE
 oGp3pNwg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n4ed2-00AZBN-G0; Tue, 04 Jan 2022 07:53:08 +0000
Date: Mon, 3 Jan 2022 23:53:08 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <YdP85Lj/vCdSVDg7@infradead.org>
References: <c7a34d0096eb4ba98dd9ce5b64ba079126cab708.1641255235.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7a34d0096eb4ba98dd9ce5b64ba079126cab708.1641255235.git.christophe.jaillet@wanadoo.fr>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-wired-lan] [PATCH] intel: Simplify DMA setting
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

Although normally I'd expect one patch per driver.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
