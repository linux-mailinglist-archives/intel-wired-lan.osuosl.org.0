Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C15DCA2CBD3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 19:47:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F67341A30;
	Fri,  7 Feb 2025 18:47:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Du9JNm949OSt; Fri,  7 Feb 2025 18:47:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BDB0424B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738954074;
	bh=5rcLnBaJ83tNh8TNgLmlz5nnTDQb1xMTf8vhMtR50N8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cOyvB+b4jiZAZ+DkAv0LwvWpM2G8ByV4jjSyshFxbexuLhTSZPAGsa/BPf1ZhmF7I
	 3KYEbedaFz7jIbB6Fu4AkrIJVREjLfEp+85kva/ivOnaz/ASj8HohvfPSgYNucPzzo
	 XxidqQU0mJwEtfGkAK8QZsxXiTLLzN0B/Dy0m+mr85k89riRj02ovvhMkiIa5sgS7r
	 qpPtQlAavD2KnWD3AEH6s8jDkZ3eF3muaKWAxzg7VnPVEtxieVcbqJZ2zYJUaHXrAa
	 50wMQPhM5ptImXbKduG8VDHf8X0QAlh9tvYqv1Jmhi4+pWllRsfw8z59iRSOmzrF+x
	 wvgzeZ0SkoAxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BDB0424B6;
	Fri,  7 Feb 2025 18:47:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C1D7E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BD0D61058
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:47:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15YK_QPM2Xw8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 18:47:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 489C16069B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 489C16069B
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 489C16069B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:47:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4C42EA439E5;
 Fri,  7 Feb 2025 18:46:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 537C5C4CED1;
 Fri,  7 Feb 2025 18:47:49 +0000 (UTC)
Date: Fri, 7 Feb 2025 10:47:48 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <20250207104748.27c7f96b@kernel.org>
In-Reply-To: <20250204220622.156061-1-ahmed.zaki@intel.com>
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738954069;
 bh=SNHeOCTyWvD96DD7OFG4ME5iDM/iA2UYMrI1ko53A1A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sZ59KkDygg+JhdakwAIIaXTh/jB2sEZVMgaNTU8mU7umEwJCkPDTpxaPlqNXuPl5c
 eb6Qg0U8P+nK8dwlZNcaJ4bpfTxmKnLYbYT9HoKQqXwXXIj8cLDio6iBBhXFJrP0c6
 JQyY1ns+l319hN7KOkCKaoZStq8OgRS4mlq9CIdJ93r8gZewDAqW1YDhtNCdkXLahS
 CmMJP038DbUFc1RsOu1oJ7gYWnH5ApUI3jXeb6yDvckVO53salmtMsPAuZfFTcXHPr
 HuIWiOTBNMzUwTG0BPaVjl13F5dO29u3hwCK9q9unDvyNYAyAULVz6iPvUuvhIHmEw
 6rp8hX9rFWBdw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sZ59KkDy
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 0/5] net: napi: add CPU
 affinity to napi->config
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

On Tue,  4 Feb 2025 15:06:17 -0700 Ahmed Zaki wrote:
> Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
> after reset. However, since there can be only one IRQ affinity notifier
> for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
> management in the core (which also registers separate IRQ affinity
> notifiers).   
> 
> Move the IRQ affinity management to the napi struct. This way we can have
> a unified IRQ notifier to re-apply the user-set affinity and also manage
> the ARFS rmaps. The first patch  moves the ARFS rmap management to CORE.
> The second patch adds the IRQ affinity mask to napi_config and re-applies
> the mask after reset. Patches 3-5 use the new API for bnxt, ice and idpf
> drivers.

Hi Ahmed!

I put together a selftest for maintaining the affinity:
https://github.com/kuba-moo/linux/commit/de7d2475750ac05b6e414d7e5201e354b05cf146

It depends on a couple of selftest infra patches (in that branch) 
which I just posted to the list. But if you'd like you can use
it against your drivers.
