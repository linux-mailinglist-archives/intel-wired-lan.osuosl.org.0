Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037BA976DE4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 17:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84FBE41047;
	Thu, 12 Sep 2024 15:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LBDcqNADWbtb; Thu, 12 Sep 2024 15:37:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7A494105F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726155472;
	bh=VV+BeTG/F4iR0y+46h/fJVbJSn5jBTgj0DNOlG4lJpk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k1tHpU2tDoYD2I+qoFFaF8yA0Qp4TjyJY+s+Fpw6mc4e5MJ/ZlU83aXBSKCz0/68W
	 1yutclVKqbP3i8JdvnCz8LZKvSWXZN3MuSXcAs+7V8oU3xO5VyOw5nX9XUpAF88tOW
	 LMJnCZChrjHdj6lC2RuLbbsP0ICTxQCBhvN1JXkhr11HJxd4YsC3vByhCKoxpoMShR
	 PqEHgDb29eJP0hPnpCMmAB8GJVr9pwWU3dWbr+or16JZTDyv4JP9O6yc9E/ALYKhPl
	 ML+NMVN06i+V+ehAp8AYDXcHQbozjLM1L6U9/6qjWBipPOPDpxg0VjzMVY2L3dPNL2
	 NJbiBcpYxa0OQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7A494105F;
	Thu, 12 Sep 2024 15:37:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B9DE1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 15:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19CE5608CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 15:37:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KSIENQ2MrcHu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 15:37:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4BBD96061F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BBD96061F
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BBD96061F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 15:37:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8AD89A456B0;
 Thu, 12 Sep 2024 15:37:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8905DC4CEC3;
 Thu, 12 Sep 2024 15:37:47 +0000 (UTC)
Date: Thu, 12 Sep 2024 08:37:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesper Juhl <jesperjuhl76@gmail.com>
Message-ID: <20240912083746.34a7cd3b@kernel.org>
In-Reply-To: <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
 <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726155467;
 bh=VDEkcdKckh9mPuSApnR6EFdrLs0vpu+n/LBlESm4vi8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=p7hjT542MlZrTY4Z6loWP4DsEIRjTOEyV/pgDOCs8Z/Wetc+L5eAsMCHhrmPm4hV4
 kQ5Rz51v1chPfSPPjatsbr2MHr1YQswS6zzsxAFiXd+Jo2H0b07ynmKHekNxS85k7k
 jrFvE2vUiEu/agtHg4G6H5BhpU4ZykA8nPyApKsM4gbJ8QGWoaWXutuWqAwz1Qg5Oi
 OZ7Mh4zcyUZA5mmRXIZrSZLnl9zyZU5B2x9Cr69aOKqzdbM9CwGaE/V42u2x9g3ZW/
 BTK7rOaA5kDI26HRtjQiguo0EMVNPCI5L+M9K16an0JtYerEMw4FRLPflHbiPDOJMG
 2PnKzcEAQLfGQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=p7hjT542
Subject: Re: [Intel-wired-lan] igc: Network failure,
 reboot required: igc: Failed to read reg 0xc030!
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 12 Sep 2024 15:03:14 +0200 Jesper Juhl wrote:
> It just happened again.
> Same error message, but different stacktrace:

Hm, I wonder if it's power management related or the device just goes
sideways for other reasons. The crashes are in accessing statistics
and the relevant function doesn't resume the device. But then again,
it could just be that stats reading is the most common control path
operation.

Hopefully the Intel team can help.

Would you be able to decode the stack trace? It may be helpful
to figure out which line of code this is:

  igc_update_stats+0x8a/0x6d0 [igc
22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
