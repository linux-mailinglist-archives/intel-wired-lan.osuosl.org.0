Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 884C9AB6E47
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 16:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B28C7610E3;
	Wed, 14 May 2025 14:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMpiMfpHIdDZ; Wed, 14 May 2025 14:42:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A0F9610DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747233728;
	bh=fhtjjZWNfcDlf1aOFjtT2EbcK+5T18n4u0bmk/NYS+g=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0Jdv/wiVNLr4gCDk5CSjDWf11grTlwiEPOniXFQ0aW4xUQnVOkDWZGWyRajCS0qto
	 0ZeitylMoFOaFi7U6zeN66Fhxifsbfd4jm9XC4P6NVrdPehdUpKG0ynIa+ELV3e1hq
	 yKSNoQDng9Ns9wZho8tCxnsE/nfYsRFO1/p0TAP6JMCWdWChD9mpwOMLas4/cSg3PZ
	 Spo6eYHHO+cL5jsqRY6PngIdGjBc8uTpIPkUtqziuDgg8vGO1wYBMWgDT0bi32HtkS
	 5AdZ2sceJoeNcrhznszWrHzIvquVPsXStjyFnqW0sgejmH3pxMzNhRjBIwtdos8zgp
	 64n/Lv0axAhUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A0F9610DB;
	Wed, 14 May 2025 14:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C130712A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4B9981276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZRns_CC1I9-J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 14:42:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2956810D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2956810D5
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2956810D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:42:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4F60C61126;
 Wed, 14 May 2025 14:42:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF9E5C4CEE9;
 Wed, 14 May 2025 14:42:03 +0000 (UTC)
Date: Wed, 14 May 2025 07:42:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250514074203.31b07788@kernel.org>
In-Reply-To: <3b333c97-4bdd-4238-bfab-b0f137e5b869@linux.intel.com>
References: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250512172146.2f06e09f@kernel.org>
 <3b333c97-4bdd-4238-bfab-b0f137e5b869@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747233724;
 bh=i+ia4gaPsI8QQxDosTtCTCynWN4Gq0MlrEQrMMs1Z5s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mRmmRIyrEdzrV6ToRUeo9D+FVuOjkB3mL1SKxSgY9/Gzh/WFCjFVGby5tYXhArFti
 I/z8ujYyAOHmDoQkDNRz0ghpBrTFL3c+6cIbvowDK3UoqWdkleiX4BDhnweWESIfRY
 oztH6AT//AwZE4nLMMZ+dicI4dw8WAGIyTL8TqqWkjsZ8tZlUGVRQisu+Qtzrflwpj
 t64Ozq/IgimXppLA69g/TaKlwUzN7CAwp4cg+K/ffz8qxF2zQjXKHcgdwAVXoIlgEo
 V5ZxJNjPolDTJpO+cD+CKd/vaX619K3UU49TRAjzE7zwcOLkTuCDZ4Zgx5vzWt/jsI
 NKX1YDgj0A4tA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mRmmRIyr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/2] Add link_down_events
 counters to ixgbe and ice drivers
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

On Wed, 14 May 2025 15:44:49 +0200 Szapar-Mudlaw, Martyna wrote:
> The link-down events counter increments upon actual physical link-down 
> events, doesn't increment when user performs a simple down/up of the 
> interface.
> 
> However there is indeed link down event from firmware - as 
> part of interface reinitialization eg. when attaching XDP program, 
> reconfiguring channels and setting interface priv-flags.

Maybe I'm misunderstanding, but are you saying that the link-down
counter doesn't increment on ifdown+ifup but it does increment
when attaching an XDP prog?

The definition of link_down_events is pretty simple - (plus minus
the quantum world of signals) the link_down_events is physical link
downs which the switch / remote end will also see. Unlike software
carrier off which may just configure the MAC or the NIC pipeline to
drop but the PHY stays connected / trained / synchronized.
