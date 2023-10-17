Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF297CBF19
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 11:27:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C57540A67;
	Tue, 17 Oct 2023 09:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C57540A67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697534832;
	bh=9CcMocfiMs6d5Lhy/DRF62ZKnzW7VCtcWcbIrAchOp8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nr/3RkveUxybOzYyOgBClL0pZU6t4QrRo8ed5K4WWbkwhsTUY4GtfKlzo4NpaDC2k
	 vur7uJcMqUb0YjLVzwEgb5tRiTN29X+YLEFn5MWrXACwd6vPbxbzHRs1AlsFs1yTzf
	 TTaHLbdkYeAKBlppBFmlk3pCchsJ7vNwcE5kRUtaLRLJdOSP4pVN5d6vW9xc56SFWV
	 Sl5yH6B4fFTE+xpGyWJrgdNVZvY51BoVvkK4UASoSiX+aLET/NMT0YJE0o3HlRvkuG
	 YTzw+s4iNRUUUBQyftos13eiqRXaDt3GktrligZCUQRyAafM1Btgh6uHQIthKUsvHK
	 b8lotgw0TuHJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lmzh1KhSf45R; Tue, 17 Oct 2023 09:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 535E24057B;
	Tue, 17 Oct 2023 09:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 535E24057B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B27E31BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88B424168B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:27:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88B424168B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnjuHGCi7RDL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 09:27:04 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D9854057B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D9854057B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1B77DCE09B3;
 Tue, 17 Oct 2023 09:27:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71240C433C8;
 Tue, 17 Oct 2023 09:26:58 +0000 (UTC)
Date: Tue, 17 Oct 2023 11:26:56 +0200
From: Simon Horman <horms@kernel.org>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <20231017092656.GV1751252@kernel.org>
References: <20231015234304.2633-1-paul.greenwalt@intel.com>
 <20231015234304.2633-4-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231015234304.2633-4-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697534821;
 bh=lcpMF6/W6guREpbGPQFR9XdgG3AcqITe3XAYywvDXHc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jYvR6p3qmSBMAp6/Qlx67EsX82NfgXT1wMmMazSCqbL8wJ0rPXFw35EltCVYKowVJ
 VWlM/Zm+MTDEMw/3CywASRQjFLmQPLwrn6qXiivqplxkttG0rrCsE6eusf/8lxkh4h
 FJERw+cnea46OG3+V6yPCiHWUSgxdslsjaSOm16r90u/wpXpu/5nGC221MCMQ+D4cQ
 wT7y+femjZB83W/c5G7ueTsXC1mkBjxqYCBkcPOAlCzphOBnt0WaS5UqSiqoX/tFod
 T4D7Wz7IKUpgwGnaB0815PLDSUuqC+7PwXoW6koDoPypR44jYPiyduBgUC0xcifICr
 xi2lAtDzMs5mg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jYvR6p3q
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/3] ice: Refactor finding
 advertised link speed
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Oct 15, 2023 at 07:43:04PM -0400, Paul Greenwalt wrote:
> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
> 
> Refactor ice_get_link_ksettings to using forced speed to link modes
> mapping.
> 
> Suggested-by : Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
