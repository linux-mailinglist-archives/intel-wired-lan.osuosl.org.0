Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE055D030AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 14:32:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A264A8116C;
	Thu,  8 Jan 2026 13:32:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0tXvr3pAOoIF; Thu,  8 Jan 2026 13:32:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C99D81178
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767879129;
	bh=G3KWwgA0uDuf+F5oINoW1Y8DCp2L7HwVzBKOsyxPfEw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BAXk/5HnnXAOPibQ/wi4MqxrYaZabHZb+0J+P8wDXyQrssEF8FwgbPoeaUVem0vQh
	 CX/5CnEPXXIEER5j+WSxw+pnUcnF/VFguuggM27pH/Qz4ikLUGd+/i1Xuk1N8Ly544
	 vUf8wuwGdAyb++0N47FAOJpnhItYJXMkiH2yYHPp1mit1s9pIFYjWxqT4M8/f3loxb
	 jspQooCv0zl/Q72bZLv6U6ieiUbnVGsu1smRERt7+vAxkhRsl9MWYodSBjOYtpAIH4
	 XLezxjNg6oNeWBS0c4HbS4cxVWbW6DRaHFOJj2AwaAYmeWoZega0qvu+VSIZJtDS6S
	 qQ1HDywkWqhvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C99D81178;
	Thu,  8 Jan 2026 13:32:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76138436
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 13:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 608A781148
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 13:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2DYsFvmto3xC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 13:32:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 990268114D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 990268114D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 990268114D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 13:32:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D34BC4176E;
 Thu,  8 Jan 2026 13:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9D9DC116C6;
 Thu,  8 Jan 2026 13:32:01 +0000 (UTC)
Date: Thu, 8 Jan 2026 13:31:59 +0000
From: Simon Horman <horms@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, YiFei Zhu <zhuyifei@google.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 intel-wired-lan@lists.osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260108133159.GH345651@kernel.org>
References: <20251223194649.3050648-1-almasrymina@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223194649.3050648-1-almasrymina@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767879125;
 bh=GUwF1Yg/W4LjgNFNJ59UKOdN4qBNr5ji6szGlMiVl8k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NlLnLvAAm26tW7Ctjnm5MqUtY9rPp2aVYNTbNQuurD4bq9pBxfY00Bj/GAkOFhp51
 yczSV7P+ZVBnrkELUpujSrlPFab4mPu6U2ItYEx/UMLQ4+AY4ZixCoPH4UQ0HZlOdd
 RVW0OzHhFsBAaEvhbbMKicN1d906C+t3jd5Wrwo92EJqdZuiGkwmmedYufoIbfwSSS
 fq2hN7WZI7TRSOCl7miC/LH7kx5Wt1k722f/J9ug4g42elVQRKtH/J/o5eyiuleF5L
 TPiI7kOFppldobk/V88cMgg9bgi1ohXDzRSApU8mARNZ1YC4NjTlhOQwzFGouyXqlH
 h89oV/6RvmY3w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NlLnLvAA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] idpf: export RX hardware
 timestamping information to XDP
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

On Tue, Dec 23, 2025 at 07:46:46PM +0000, Mina Almasry wrote:
> From: YiFei Zhu <zhuyifei@google.com>
> 
> The logic is similar to idpf_rx_hwtstamp, but the data is exported
> as a BPF kfunc instead of appended to an skb to support grabbing
> timestamps in xsk packets.
> 
> A idpf_queue_has(PTP, rxq) condition is added to check the queue
> supports PTP similar to idpf_rx_process_skb_fields.
> 
> Tested using an xsk connection and checking xdp timestamps are
> retreivable in received packets.
> 
> Cc: intel-wired-lan@lists.osuosl.org
> Signed-off-by: YiFei Zhu <zhuyifei@google.com>
> Signed-off-by: Mina Almasry <almasrymina@google.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

