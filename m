Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E2F6BA741
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 06:41:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE0E7410C4;
	Wed, 15 Mar 2023 05:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE0E7410C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678858876;
	bh=HxTbzHJrJxp6DAK4Kgf7wflzWz+oPn/eKTTsKIUppO4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PoPOf8Cbc+djXfpMImobc5mNsNZIEPGuCw+2RiVu8/g9BLHxIOi2rh6sdKwN/aPsV
	 9mRUu/oKfuJ1wKAbtURJwPWYF2GAFVGTfqsrJUDajxuxdFWlWwyx4hK3V7lUFBfjvO
	 /BpkKsWRGUAPxJk0rDVRPMgMDK4QmWLX3A1cfzegdh/bHj57WoLDQYAcv8q0cF7eJm
	 8lvWoMDykQse+4j+UL6HTLwx+bGXm1s4yjGcVFqhzeF8fowIxB5LzwHTGoGPtNmmPc
	 lFzA6QhRrQrURLsMOIPfIyvhhpe5eeXx58AruHe2zr8drRRUTOB46ctGuuC2Qsiyu7
	 z/iu8jRub5NLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id it_AkaiR1LKz; Wed, 15 Mar 2023 05:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 847D1410B7;
	Wed, 15 Mar 2023 05:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 847D1410B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53BF41BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 05:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2BD55813A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 05:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BD55813A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QESB-o-X4-yH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 05:41:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC7328134A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC7328134A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 05:41:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0BE8561ADE;
 Wed, 15 Mar 2023 05:41:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 789DDC433EF;
 Wed, 15 Mar 2023 05:41:05 +0000 (UTC)
Date: Tue, 14 Mar 2023 22:41:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Message-ID: <20230314224104.71db5ab4@kernel.org>
In-Reply-To: <20230314121216.413434-21-schnelle@linux.ibm.com>
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-21-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1678858866;
 bh=FXai2qLa/oxwiLINWHjW+akZur4pSld/3ZcuGMVc30Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SQuoLTKrYJs2COu6Qkxi1TsG3DVOypXfLjk4NYc9xP5LQTgot2jL8VGx0RsYCzHRQ
 ebQeuI5EgWlygrnWeOQB8I+P2YHGOQPFObBwd3FgMEgZlDmRzde7PThKvm8bgpbTo/
 GOFLLGd1Y+Iknth/r6bhfJbsiA97l9Y4xnTkUHZaaUmPeHQK6wzcg09dmFMDDUtwqj
 ouUhe9wMN8pgYJ3pWB3AxSqMZ/42vYJ3V9FfTxJVWl1E40Q9N/NG17vohokSOftUzv
 D6S+aNeaDZk1Nz2T+tRVQaZSm8Ngl3TDZhlMADtHe+XUxQH1SAkAMj9CpqH3svmnNy
 wL4hubqX9Jf7g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SQuoLTKr
Subject: Re: [Intel-wired-lan] [PATCH v3 20/38] net: handle HAS_IOPORT
 dependencies
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-pci@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-arch@vger.kernel.org, Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>,
 Alan Stern <stern@rowland.harvard.edu>, Paolo Abeni <pabeni@redhat.com>,
 Wolfgang Grandegger <wg@grandegger.com>, intel-wired-lan@lists.osuosl.org,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 linux-can@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-hams@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Arnd Bergmann <arnd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 14 Mar 2023 13:11:58 +0100 Niklas Schnelle wrote:
> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. We thus need to add HAS_IOPORT as dependency for
> those drivers requiring them. For the DEFXX driver there use of I/O
> ports is optional and we only need to fence those paths.can It also
> turns out that with HAS_IOPORT handled explicitly HAMRADIO does not need
> the !S390 dependency and successfully builds the bpqether driver.

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
