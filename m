Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38588B18938
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 00:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D872D413DD;
	Fri,  1 Aug 2025 22:33:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3gllyZBgrxi4; Fri,  1 Aug 2025 22:33:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E5CC41443
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754087628;
	bh=rHvT7XzTyZKGUqrO5uQ6yfryUOqdTr9MuHLG9FWPxR0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zNkbpN42BJ6n0/byOvUHlb+Il38h0HQ+UDbBKfXkad1QDbg0f7ZxFI7zjuGI40z7y
	 iVxj3VWpYFj1DNRZs5q7Nog2l7nHnJALDYf/2kDXuRsZey8WxYRq8bfr9aJ2GPU3QB
	 +r3qNriecmyY8hzYk7RULHz4LpzpL8co/tOdGph0VC0Tjxw7tptapWl8zXEmls2r9b
	 GiSwzKJ50VaUXzrQxZlM6cdih4X5KLOnsvoVhfVhjAj1XQTm9YB9wT/ycooie+DXiZ
	 JXqNq/uY9t9TbU1PU1eYnAmGBIDwINW53yiDP7AtzGvC3TmfvCzEVgRNFn9xTDRiIF
	 XkBoPCFpU0/mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E5CC41443;
	Fri,  1 Aug 2025 22:33:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 038C2C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E990A413D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:33:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yh4X9QiZSvt1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 22:33:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 56F0B413C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56F0B413C8
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56F0B413C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 22:33:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 16E3BA5545B;
 Fri,  1 Aug 2025 22:33:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3249FC4CEE7;
 Fri,  1 Aug 2025 22:33:44 +0000 (UTC)
Date: Fri, 1 Aug 2025 15:33:43 -0700
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
Message-ID: <20250801153343.74e0884b@kernel.org>
In-Reply-To: <20250730160717.28976-17-aleksander.lobakin@intel.com>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754087624;
 bh=rHvT7XzTyZKGUqrO5uQ6yfryUOqdTr9MuHLG9FWPxR0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DrMIMpTF7juPOgfakhioYc3zyLfUzAVsbQo2H4ycDqIN5WYj1t/s+UiYa66L9Y5LZ
 fYuKKBFrsZNJdfw4UyR1ZaZF+HlFiWGc/ex3N3VThZOPcdILaL9qKEgws7dQQUhuMK
 fn/2hCTLlQl65fStSZv2lr4uYzZWqkd1pUo0RuQ3xRUF72EHubgFbrSjmP2vO5exqR
 AcCWr53Atg0J2H5OXohHWUaq0i9FxCJ7fbpYPY+W4M3G8qeDYIWT5mfaepB76fPEb4
 AP7SjAWTHFvHeVzrOMvFgJptg2RFy3thhVnZ/2pYY1YhtZUfdkip75NPeAN2E+lmup
 fIJ93hX7SvGOg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DrMIMpTF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 16/18] idpf: add support
 for XDP on Rx
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

On Wed, 30 Jul 2025 18:07:15 +0200 Alexander Lobakin wrote:
> Use __LIBETH_WORD_ACCESS to parse descriptors more efficiently when
> applicable. It really gives some good boosts and code size reduction
> on x86_64.

Could you perhaps quantify the goodness of the boost with a number? :)
