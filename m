Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC090AB9824
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 10:54:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 639C76126F;
	Fri, 16 May 2025 08:54:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CFBmGHYAr899; Fri, 16 May 2025 08:54:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBB326125C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747385684;
	bh=rzd/TB4grynYnYP8Heujq8O18/w+VciQg73v5xJtahM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=18kUt3qm59C9NDVmY4oaA2hMz8nibVAiJ0VhSAGyunJV5FzLL/85khIxGvgATNUFk
	 4kzt5b9jyH14LwOkhvLDmKSbsBGwKtPnvJzmWrxefrtpQ1M9Rh9n/L9fHUN0A02jaR
	 rO9pFgqkLgb5v3kZQieTVdtqbwF7C8YhhcMaP1T52B7XHCiGfefbPz140PbCEhz7Nn
	 NsfiJIhq4DJoTT+8D9p+RoELVotQtIfZw1d87e24RP/pWL/CU0ldsyEXFPh6LYZyjk
	 d2Re3T2vWRVNIjjTSA3jJzSqP8lJTxS2xla1VooqG3vwwEYAVbrlH7DyuVj1FvhmvX
	 R3I9GhQwF06Gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBB326125C;
	Fri, 16 May 2025 08:54:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 208E313D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 126E14090F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v__zd4yXKFF0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 08:54:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 48249405D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48249405D3
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48249405D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DFE5EA42AFB;
 Fri, 16 May 2025 08:54:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75666C4CEE4;
 Fri, 16 May 2025 08:54:37 +0000 (UTC)
Date: Fri, 16 May 2025 09:54:35 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 sridhar.samudrala@intel.com, aleksandr.loktionov@intel.com,
 aleksander.lobakin@intel.com, dinesh.kumar@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, almasrymina@google.com,
 willemb@google.com, pmenzel@molgen.mpg.de
Message-ID: <20250516085435.GD1898636@horms.kernel.org>
References: <20250423192705.1648119-1-ahmed.zaki@intel.com>
 <20250423192705.1648119-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423192705.1648119-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747385680;
 bh=u8TUVqVjYDyhOaOG/FJpKIxvaeKUcVwocQ7ArsZD7vQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eV9sJX8fBavKm2fZjgdXMGtzUCI55F3/klLf/upOQIXT7lfzLO8M3R58mhhTmjM3q
 dgt1z42T4+6fca/lrkfo9KcHlxltu5OPDYwqwRlPgmcSSTWZpwgAmNivSJShk9kwVR
 9FqJ7p8dS6X5aRHbAhPdpQLsTqwEmzQetdwdx2zctKLrqPNFZnR+Q9NzO0oREhfVjB
 0RXEObiG6+hhJIAEzVrqDQxr9ffF3coMKZKAPdEMabmrt1zGeBQcqu5v19AhqiNB64
 CLQeqVyY2UCja9cL5Mvo7D+5dVkiwsc1bXwff/8KqPRNYCBuFxuHAUv1/cY/Ky1hy2
 HiRr7POdhsIiA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eV9sJX8f
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/3] virtchnl2: add flow
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

On Wed, Apr 23, 2025 at 01:27:04PM -0600, Ahmed Zaki wrote:
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> Add opcodes and corresponding message structure to add and delete
> flow steering rules. Flow steering enables configuration
> of rules to take an action or subset of actions based on a match
> criteria. Actions could be redirect to queue, redirect to queue
> group, drop packet or mark.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Co-developed-by: Dinesh Kumar <dinesh.kumar@intel.com>
> Signed-off-by: Dinesh Kumar <dinesh.kumar@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

