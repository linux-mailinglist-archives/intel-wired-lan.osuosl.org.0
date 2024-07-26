Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB0093D6C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 18:16:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53C3560B64;
	Fri, 26 Jul 2024 16:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B8teacPAyg8g; Fri, 26 Jul 2024 16:16:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95F9860B57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722010579;
	bh=LpfgQFpcqMHLpK0fEQfo7SYtgWjDyoqvR5GmEIMr5jc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t3anXKCk8XwePMOUZgZ7luHoBTXYJYrEA0tH34kRyfgmTi9PUy4rDq1sS3cB9paWp
	 blGXX24141jmrErzau6GqzPDefnIJtDkcJDjobxxePTtvpd9HCTwiaBmFId9bQdqyl
	 wM0VTMnX/b9zQo/sg2ZtygyYNVx5FagT5GHptCvaP+liCFk9zXQkXPKi9DDX4FxR5+
	 jfU6xvXyiUkDDwVT+9FCTxbOOxQ2qztUch0gy5C+W6KkOwBqN6+HXe3v17lvx0lGcd
	 OTF8T36QWOltIdp0C76ndJoZt5F+Xif9utMzpYxeJAW+dqrgbbGYGPXxaAE7Hzsoiq
	 iibKwGmME+PJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95F9860B57;
	Fri, 26 Jul 2024 16:16:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D77CD1BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C50A581BCB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYlWNCWxF_F6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 16:16:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F340A81BC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F340A81BC5
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F340A81BC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:16:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 18E98CE17F2;
 Fri, 26 Jul 2024 16:16:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA0E0C32782;
 Fri, 26 Jul 2024 16:16:10 +0000 (UTC)
Date: Fri, 26 Jul 2024 17:16:08 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240726161608.GP97837@kernel.org>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-3-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240724134024.2182959-3-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722010573;
 bh=mmDA6t4TSfv6XfSHaXGCVVdLxR4aF+if9zRvtYtDxRg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E1HHs12NDKpbhf4p86zXpkSAO/96o5WYqB5HlLNm0Zufa8wVTM5AI/u+WLGSw2BQD
 q0E7dcQrDpJzqN9vNkH2sheyuf24FsI+kzPgcHvUtVNHjNBgtuqMpTh0Ls2uEVUKav
 RsZCZzS6dvVfdPDaFnAQy4SJyIG2nqc0aYRCukS70R9GosAXANpQtHIlGvY1qOpYZB
 OAOuq9XUMyzCfseTYKcgBv6W7DMHJxjy+Lnh/imQrFJADpd7YJ0kTnc3Na/ixOocay
 /U+QGSo5KPmx8agXha/z2552m1D6PaYMkIgA+4OJNfC5sJ/hJf7FiwdZj5ElpycKzi
 HGxxlAiXcZeBQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=E1HHs12N
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: fix memleak in
 vport interrupt configuration
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 24, 2024 at 03:40:23PM +0200, Alexander Lobakin wrote:
> From: Michal Kubiak <michal.kubiak@intel.com>
> 
> The initialization of vport interrupt consists of two functions:
>  1) idpf_vport_intr_init() where a generic configuration is done
>  2) idpf_vport_intr_req_irq() where the irq for each q_vector is
>    requested.
> 
> The first function used to create a base name for each interrupt using
> "kasprintf()" call. Unfortunately, although that call allocated memory
> for a text buffer, that memory was never released.
> 
> Fix this by removing creating the interrupt base name in 1).
> Instead, always create a full interrupt name in the function 2), because
> there is no need to create a base name separately, considering that the
> function 2) is never called out of idpf_vport_intr_init() context.
> 
> Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> Cc: stable@vger.kernel.org # 6.7
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

