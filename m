Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F328B23A3D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 22:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FED941E6F;
	Tue, 12 Aug 2025 20:54:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gS4RjjC37Vmn; Tue, 12 Aug 2025 20:54:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB71441E88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755032050;
	bh=OlAKrjKi+FHoGWuz6d6aZG8S0aTidx2jUWsXjgxNNnY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IyavOU66FDgNbq5WQ6vHiCNTAJkPDaxhZcKdqS6n0yXT4+SMtgBFoSdg6klEJVde2
	 LoEhCN5eEhod/Elw4IWGY1o/Yz+UqOKUqgYITs3psL5lQrRB4XbLSIOlXYJvmbiimp
	 KWSwejMl7BMBWDgbcMbRRni2KkWyx8DkfU2X0vw/yHuuFa5Zu+12pO/FE0snHutxt/
	 lrYY0D7kUSUqLFfc05dPc8EPQuBA1wySJWkcddpVaCgTiCDjlUPJgb7W6of6MENlLz
	 64leU8zBqZjtoly8QApyZEdoCyy1qEOCEumc5NFrvM9RSphjN/CqPfVrKA9pQlQuKn
	 8gGsOKFPNA5+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB71441E88;
	Tue, 12 Aug 2025 20:54:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2BD171D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1270E40119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:54:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5QKQZVZskvZR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 20:54:08 +0000 (UTC)
X-Greylist: delayed 352 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 20:54:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 791DF40116
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 791DF40116
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 791DF40116
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:54:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 9BF35A57A2A;
 Tue, 12 Aug 2025 20:48:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1335BC4CEF0;
 Tue, 12 Aug 2025 20:48:13 +0000 (UTC)
Date: Tue, 12 Aug 2025 13:48:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Qianfeng Rong <rongqianfeng@vivo.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jiri Slaby
 <jirislaby@kernel.org>, Nick Kossifidis <mickflemm@gmail.com>, Luis
 Chamberlain <mcgrof@kernel.org>, Brian Norris <briannorris@chromium.org>,
 Francesco Dolcini <francesco@dolcini.it>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Johannes Berg
 <johannes.berg@intel.com>, Sascha Hauer <s.hauer@pengutronix.de>, Kalle
 Valo <kvalo@kernel.org>, Aditya Kumar Singh <quic_adisi@quicinc.com>,
 Roopni Devanathan <quic_rdevanat@quicinc.com>, Dan Carpenter
 <dan.carpenter@linaro.org>, intel-wired-lan@lists.osuosl.org (moderated
 list:INTEL ETHERNET DRIVERS), netdev@vger.kernel.org (open list:NETWORKING
 DRIVERS), linux-kernel@vger.kernel.org (open list),
 oss-drivers@corigine.com (open list:NETRONOME ETHERNET DRIVERS),
 linux-wireless@vger.kernel.org (open list:ATHEROS ATH5K WIRELESS DRIVER),
 bpf@vger.kernel.org (open list:XDP (eXpress Data
 Path):Keyword:(?:\b|_)xdp(?:\b|_))
Message-ID: <20250812134812.298c7d97@kernel.org>
In-Reply-To: <20250812133226.258318-1-rongqianfeng@vivo.com>
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755031694;
 bh=OlAKrjKi+FHoGWuz6d6aZG8S0aTidx2jUWsXjgxNNnY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iXwEyuUrq2SThIz4NtCAH+4DOZlfF58FZtwmAIjKeimhK0e9rAESTZ1Oa2zAGaZ06
 4uMmulzeUoAVZpC6h2+eyZ91S87qJC2+2pz/ALz/gWSaiWnGzRARp/3TCsFtJt3vy6
 kHnwKAuo8MmbbJDjqbJo+5c9Is2/G8VRyWjfQKD25yIBdToNhfKTCv9OhUjoXSWM4P
 iBE3HYzixPVVPSlatbZPsGOv5YhtMFgHxp2HLppWWPld3CXpHffEocvDf4mYqJGuBs
 PlCCIudpvi9U/hyWfOzWWr3i7Stw/K/AEwG9d9jmAcClRAov+pbIzajRq+T0DEAWsf
 G3SI13RC/Fh9w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iXwEyuUr
Subject: Re: [Intel-wired-lan] [PATCH 0/5] net: use vmalloc_array() to
 simplify code
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

On Tue, 12 Aug 2025 21:32:13 +0800 Qianfeng Rong wrote:
> Remove array_size() calls and replace vmalloc() with vmalloc_array() to
> simplify the code and maintain consistency with existing kmalloc_array()
> usage.

You need to submit the first 3 as a separate series.
They get applied to a different tree than wireless patches.
