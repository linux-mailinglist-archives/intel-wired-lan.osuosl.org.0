Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 599A2B18930
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 00:30:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E14A78453A;
	Fri,  1 Aug 2025 22:30:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OppTwHlNgrxb; Fri,  1 Aug 2025 22:30:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AEA883F10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754087429;
	bh=gY7NYQluHoyUfAspOKn11ofRz5SXvuJIHH6pAXEXZ6c=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wJwfVTs1sIDJYV0uCilqVTha2obRnqNbv+fw5+G+PDVBEfl57FdhuEI+YF4ZPDcEu
	 szc9TrhwenwnNqM7+ze1dB2/UUAopodYsYCj6jmwmCMcJwajokV93VHW36J84Jgexo
	 aWpV1xPEERpOhsk4YbAuAJa725dAo+bCpB5RKlRBR6mQbaTw/i5RFvSJEufJfRvfFE
	 4dT+yRr+AZop3RUg5Sc8nWj4jAJcKe3LZ1eVQK9V0DSlNQGozllI7S/bJWxnYZRm4X
	 bLfFjeOgP5aL4D4o/+sA2Dd5BKCo8dv+MAUPHstg7bWVAt5GE51VqMKt2JZbK3PekT
	 GVzzvEs/T8gJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AEA883F10;
	Fri,  1 Aug 2025 22:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D3698C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9B1E41357
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:30:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id si9XjejRA2jC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 22:30:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 26B5141351
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26B5141351
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26B5141351
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:30:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 26092A559B7;
 Fri,  1 Aug 2025 22:30:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EB70C4CEE7;
 Fri,  1 Aug 2025 22:30:24 +0000 (UTC)
Date: Fri, 1 Aug 2025 15:30:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Simon
 Horman <horms@kernel.org>, nxne.cnse.osdt.itp.upstreaming@intel.com,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250801153023.087c940c@kernel.org>
In-Reply-To: <20250730160717.28976-14-aleksander.lobakin@intel.com>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-14-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754087424;
 bh=tWrjYCv4Av71BXfLwIY5KSkGF90mEgoc4+EF2H4mUFU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZNonI/EeCWpvWxBn4aEBp9vm/e5E7w1X4sFcMjRT6iOT0CMa2E9AK1m4T1KfF96w1
 7Gyo2jG2brmupaBZ3bKruwfuxi3A5RXlxwrHtcSb/7ji2hAd2nir0rJmBy9rU33wsJ
 z5ndtRukYjTBclcw/f0+TARFk+i6cyWGOrwZTvpG7VU6tSAeNRCaSTZpywJ8plYwgS
 jWpeGJHaBNsMDPMc6Dg3Qiexx0Cl9VcEM6RMKxn+T/5hKX74yDj/LShtUuIsJVFbIN
 YcM0Qvm7AChZKDxdwAxApPx18uq1Qu7BcgS5zyOGi8cpMNtim44A3Qad6cKxJf29ZQ
 ktJtxE0u+sByQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZNonI/Ee
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 13/18] idpf: prepare
 structures to support XDP
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

On Wed, 30 Jul 2025 18:07:12 +0200 Alexander Lobakin wrote:
> Note that "other count" in Ethtool will now also include XDP Tx queues.

Erm, what? You mean other channels? Channels are interrupts, 
not queues.
