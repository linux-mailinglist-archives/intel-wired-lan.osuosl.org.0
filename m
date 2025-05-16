Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F31AB9827
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 10:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 196C06125C;
	Fri, 16 May 2025 08:54:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id moTsmstDgAiZ; Fri, 16 May 2025 08:54:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D47861273
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747385696;
	bh=CCsZXzNYCJZ7jgPB8uNhyaYNMXgpFUC1qiS5wpBBLq0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XWwXOj8ZbBGDQtyF1E7imznLZeq4rU7hHSjAYaTr5HJ64d6iP9eoEb6ltRzSuUp85
	 NxJxl3OMlsmsdhDE/AJ6jpSBV8dxFrAKBvX+0NB5fq8cJxhmhodQ+nIgPdnl/b8q9p
	 qF1QBZ6i6/sBrn4ILgGNwGaiAZIw7UbVf5fHxg2R0JGBnXMIPEVn1po+y5+p45EFxv
	 sxAw0uO5rMBGA3XV+hojfuhGbjJ6yUE2ROWLlR9IiOsdczviMo7UbTRp0JqjB9486G
	 mHS1vonaEcOFTMMDt96juGkyNTFI9j87Wmi5YvzwDWA4NHGjJIVQ8oLD1cY4n4slhk
	 jRtqmz7d25tzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D47861273;
	Fri, 16 May 2025 08:54:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 696B3185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5809883BF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2pJeyvCMr5Cv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 08:54:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D0D7983C08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0D7983C08
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D0D7983C08
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5E7685C47DC;
 Fri, 16 May 2025 08:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CC8FC4CEF2;
 Fri, 16 May 2025 08:54:50 +0000 (UTC)
Date: Fri, 16 May 2025 09:54:48 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 sridhar.samudrala@intel.com, aleksandr.loktionov@intel.com,
 aleksander.lobakin@intel.com, dinesh.kumar@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, almasrymina@google.com,
 willemb@google.com, pmenzel@molgen.mpg.de
Message-ID: <20250516085448.GE1898636@horms.kernel.org>
References: <20250423192705.1648119-1-ahmed.zaki@intel.com>
 <20250423192705.1648119-4-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423192705.1648119-4-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747385693;
 bh=/CZkgagOiJNK6rIIItrL5/4Uhr1yOuyP0gpTftnaIi0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gZ8NKLYmucYRHkBBzLiYQE1k8nNrkRzmcHsVKmSnwh6CASFjEBe06AaQLR5nJf0JU
 6/IrqbMpIEdP3fUZtYROyloRtPq6nygMMhZNJAn8hbwh1SZU2fXtYMxTntBljEhpB2
 zGoKz0rfEwaYBWXnLFyO6l8hh8bHkZsPyznWBGNPpqHP4OrBisixVTRcoOlKSkaV/W
 Gq5JyOvi+yInPWcSZ1/IPtWfMHs8mYIvL7MHaF5USlGeKE3R0q4QL3sU1sZ1RtqRUJ
 70k7/6Xg1Pl4Kb/rxhyDN7lNqYCtQ/ZZgh3UGQ2aa7ulM7tBkcn3qpu/23Gb41RjR+
 oLljVSErTJW7A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gZ8NKLYm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 3/3] idpf: add flow
 steering support
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

On Wed, Apr 23, 2025 at 01:27:05PM -0600, Ahmed Zaki wrote:
> Use the new virtchnl2 OP codes to communicate with the Control Plane to
> add flow steering filters. We add the basic functionality for add/delete
> with TCP/UDP IPv4 only. Support for other OP codes and protocols will be
> added later.
> 
> Standard 'ethtool -N|--config-ntuple' should be used, for example:
> 
>     # ethtool -N ens801f0d1 flow-type tcp4 src-ip 10.0.0.1 action 6
> 
> to route all IPv4/TCP traffic from IP 10.0.0.1 to queue 6.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

