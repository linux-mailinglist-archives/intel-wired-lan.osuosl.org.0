Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AD185F303
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 09:32:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDDB98235A;
	Thu, 22 Feb 2024 08:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ozz4F-kpfJpK; Thu, 22 Feb 2024 08:32:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09B6B8233C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708590742;
	bh=/bLwWkDgxQKw9qu4QthKJ30PVwsiOLY1KR/S4UqpzOQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sXKCipSmiLvGHEvhY4NVFnkGU+QJE5DrkOQTqg5X1FaPj4jWhhG5LWaU/f4Q2Rhgu
	 Mpu32wqNLZBLKjh6W1VaWeQ3NiMXopG64SiBQ2pbV0jHkronRcnM1fJqK+M16YZWp9
	 InkK6Yd0m9xAqHSCaQ+sGCaV1kiUdOxzJTQCu8ula6bqi1t26/KW7mZ42liW7dHJn3
	 skdpwvww5iGJmc1S7hsD+WLWuIz+JKZuD2ux1Z94xSwVYK4fmMmebK0a7kxYHWJrfs
	 HRCFk73o0cm+4bdOndsVs+xWfgqiIIew3J37UxWqF1hMNz3fiLG3cP3TUQ6R7Atb72
	 ETOj5w+zVZn5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09B6B8233C;
	Thu, 22 Feb 2024 08:32:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 424191BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 08:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AD79405FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 08:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRSj7z3qfRxC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 08:32:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::233; helo=mail-oi1-x233.google.com;
 envelope-from=magnus.karlsson@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7EB640498
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7EB640498
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7EB640498
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 08:32:18 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id
 5614622812f47-3be110bbff9so2194616b6e.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 00:32:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708590738; x=1709195538;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/bLwWkDgxQKw9qu4QthKJ30PVwsiOLY1KR/S4UqpzOQ=;
 b=ZDRK41LZeU67sh7ZsKJT2T0pJeKhHdeBWiwjp2UMHPSpHp6gveqz3GAd5Q62U9LSwE
 WS2x4jq9mUg0jVFCjzH8bqAnaAUBqBlXAvOHePOD60Gubgwzt+fkF8v2rY+TwNXvtVFI
 Bwb1uNNnwf9XeJ4/L6XoUMb0TiCt29EUuzGcs7wac93hAsWm/Sl2IaliJ2o9BB9uwcR8
 dvBCPKawSf+Y3i0EgpHeugaX6pR3hMd5P1cIXBfrwVsyhqMoIFj2thsFgrUGiDnMHW4h
 GFSGqZamYZt8TkT2DNe5NRbKd48F4mvZ50VPcurYKOKWJ1NclMykOMuYgkZDSxXKHkyO
 fNpg==
X-Gm-Message-State: AOJu0YxEtmh9Uxabou2mGzcpDyIW8e6VwW7WNAMZVFI+yyTD7YOn7RAZ
 moaAAK41+gOs1iBAB5i1Y8cxdxEkvPi2YUd5KElnzvtdy24iM64y17HYwrIWTnQ+w/BfPQ+0DLm
 n57cdocuUNiMIGaGKZRlJT0HiBtU=
X-Google-Smtp-Source: AGHT+IEE4nXXIO+BzOBICLRK/x3Z/cpLGEwvL4kVwPqzcfcDZ7GcnpHd/bBAOj8oIrscxuGJU7ZAfZX0knJ0qiMcov4=
X-Received: by 2002:a05:6808:1828:b0:3c1:52b0:93f8 with SMTP id
 bh40-20020a056808182800b003c152b093f8mr2066251oib.3.1708590737838; Thu, 22
 Feb 2024 00:32:17 -0800 (PST)
MIME-Version: 1.0
References: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 22 Feb 2024 09:32:06 +0100
Message-ID: <CAJ8uoz1988OLXQ4HzPbP1COiHarc=ErSdakmnyMfDogEzuZexA@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708590738; x=1709195538; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/bLwWkDgxQKw9qu4QthKJ30PVwsiOLY1KR/S4UqpzOQ=;
 b=QXCC155IyNWgRk8wAkcT5b3EsDjoGraH3ivD1Hm8iQv3VPzMONxZbkIfcVx2PnDQAK
 01zmVimxKQQQAcbvV2SACUahAadapDnzwgMac6ryT6ijIeUbTqWo+BvYisvBIu8MInRH
 BTe4wTPYe9sUCgZyhCPV7Urv5wdLsPawv++7jBxN06+mLfrA1sfzu2s0Rltlgpj7keFH
 c80hzKUmZnr4DgZZZiYCMDdd1TbsakIiSm1SLZbKaSarvKZ30oh98rv12AzJgFxQIH8L
 AU40JGY+boNHxYiLCjEIjrCr5pCOXA/490sWNsoPtjaFY0ySyKzmhctHrFDtRXTS7dCw
 +uJA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=QXCC155I
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] intel: fix routines that
 disable queue pairs
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 20 Feb 2024 at 22:46, Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> Hi,
>
> It started out as an issue on ixgbe reported by Pavel [0] which first
> patch is supposed to fix, but apparently i40e and ice have queue pair
> disabling flow a bit out of order, so I addressed them as well. More
> info is included in commit messages.
>
> FWIW we are talking here about AF_XDP ZC when xsk_pool is sent down to
> driver. Typically these routines are executed when there is already XDP
> program running on interface.
>
> Thanks!
>
> [0]: https://lore.kernel.org/netdev/CAJEV1ijxNyPTwASJER1bcZzS9nMoZJqfR86nu_3jFFVXzZQ4NA@mail.gmail.com/

Thank you for this fix Maciej.

Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>

> Maciej Fijalkowski (3):
>   ixgbe: {dis,en}able irqs in ixgbe_txrx_ring_{dis,en}able
>   i40e: disable NAPI right after disabling irqs when handling xsk_pool
>   ice: reorder disabling IRQ and NAPI in ice_qp_dis
>
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  9 +--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 56 ++++++++++++++++---
>  3 files changed, 55 insertions(+), 12 deletions(-)
>
> --
> 2.34.1
>
