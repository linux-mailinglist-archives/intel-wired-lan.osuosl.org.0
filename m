Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1226EC972F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 13:11:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7B6D4096A;
	Mon,  1 Dec 2025 12:11:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8DyfVdVRYgZz; Mon,  1 Dec 2025 12:11:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4536340979
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764591097;
	bh=r7+DYtqqBfukw9TqiWbqW9JxhoADJ7iu+VRT0HCZDyk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ftBtCsH9hLqknrdiP9qiU5BHh0SwbY966y/38LeAhaE8vUk4VQzGxUTS/JknHF68Z
	 7NOZeLEd9jDqN8OsuvF7r0St1J2XboM1s+4ryFeXo/94g6CJ7kgQcP62gqqihGXo95
	 OjnP/aJaSFgNj0HLvw1ZCyfILocylqHcpW5FcHqElAzUZgLHormJ/gGFkoQYoNxMiQ
	 l3BiCUtUbOOC2lYF/aQD5OCFyOlR6WG+zs2cF4YYebo8XHfaCNB/yBZlSt3qPe+mOp
	 wnRw8NKHy8N0ChNMB0vsD9xmvgg+vm7f8vyodUc+1m1L44RhnJs2ylEvVgkCNbKlyL
	 tRXZpG84nR/sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4536340979;
	Mon,  1 Dec 2025 12:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F85B1BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 12:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 419E160F2E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 12:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JfQYUHvGWLyo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 12:11:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E8D660AE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E8D660AE8
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E8D660AE8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 12:11:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B5C506016B;
 Mon,  1 Dec 2025 12:11:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7F44C4CEF1;
 Mon,  1 Dec 2025 12:11:29 +0000 (UTC)
Date: Mon, 1 Dec 2025 12:11:27 +0000
From: Simon Horman <horms@kernel.org>
To: Guangshuo Li <lgs201920130244@gmail.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Florian Westphal <fw@strlen.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Nguyen <tony.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <aS2F70YK_89QrsOL@horms.kernel.org>
References: <20251201034058.263839-1-lgs201920130244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201034058.263839-1-lgs201920130244@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764591092;
 bh=r7+DYtqqBfukw9TqiWbqW9JxhoADJ7iu+VRT0HCZDyk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nl4UMKPIHGWUMlmmF44CiagGEXDQPhbCogdwcvYc+lTpPNGC7kGRqGAk2Z02AM7aK
 iEkm7d9zV6uS8J1dozJlp1B1V6eMt0K93s+l8pcOz1fxCReuKgeglQMD8+g8aKdxlU
 pCe0a2ky2e4ZNf2yRlzMhTCx+C9Xcv+yHCZ7G1RUPRntv24lLm7JMIOT6/euamrKZB
 zMLlOYUm+dMZgpX8ChbDYKy243bEks8xSEekcTeXyrw8pEbr/uYAos39ZKygr0Zh5Y
 /U+QkssbvlctlcTMSjcw2MUthhoUDAJZor2Hk2QEmnz0CYprhE+XXFRELDxQUdMtSv
 dRGEbxGbUiYkg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nl4UMKPI
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000: fix OOB in
 e1000_tbi_should_accept()
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

+ Aleksandr

On Mon, Dec 01, 2025 at 11:40:58AM +0800, Guangshuo Li wrote:
> In e1000_tbi_should_accept() we read the last byte of the frame via
> 'data[length - 1]' to evaluate the TBI workaround. If the descriptor-
> reported length is zero or larger than the actual RX buffer size, this
> read goes out of bounds and can hit unrelated slab objects. The issue
> is observed from the NAPI receive path (e1000_clean_rx_irq):

...

> Fixes: 2037110c96d5 ("e1000: move tbi workaround code into helper function")
> Cc: stable@vger.kernel.org
> Suggested-by: Tony Nguyen <tony.nguyen@intel.com>
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>

> ---
> changelog:
> v2:
> - Keep declarations at the beginning of e1000_tbi_should_accept().
> - Move the last_byte assignment after the length bounds checks (suggested by Tony Nguyen)

I'm not sure that Tony's suggestions warrant a Suggested-by tag.
And perhaps Aleksandr's Reviewed-by tag should have been carried
over from v1: IMHO, I don't think the changes between v1 and v2
materially effect the review. But overall this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
