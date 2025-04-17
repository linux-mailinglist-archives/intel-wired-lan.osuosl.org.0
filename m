Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA0DA91176
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 04:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 188C683AAF;
	Thu, 17 Apr 2025 02:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CxXmshVz8nTg; Thu, 17 Apr 2025 02:09:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83B4883AAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744855766;
	bh=6WcjTCq7iOZ/iKYMIhB0dmq/MioUwIT7SwqQewJoxcU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LsuJFFcrRYIPX05r65Va2sb+pBQwoE/9KliM0WhKfDh5XN76mx78s2G+dcZW3XfS5
	 f/sksO6fxeT4P/HKaQ66i9ucRFuyGHmJSHElrw3RlnyorOB2aoVueNMB2xtyNDWW8c
	 2FCUynWi7t3pu11r6SZYTf3iRslogrm0MOmS2ytTOVui2VK62ZFmiaTPjQxVabdztE
	 jWA2d3TUed6LMs0Cv1dt5dlu8ZwEtJGutwJsoGxQqS5SMJ+msH/vj6UVZlpYo8eCWn
	 Yw+ZbhO0nLXQYQfH+6EtDlFMci/StN6/saEIsignXe+v4ot3p+ljKXN51yBsSeP7Tv
	 K2PKPPzAygYcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83B4883AAB;
	Thu, 17 Apr 2025 02:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0525311B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 02:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF1D641416
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 02:09:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mx81CqbeEFDG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 02:09:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 618C9400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 618C9400FB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 618C9400FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 02:09:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id ED7F85C579B;
 Thu, 17 Apr 2025 02:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B754C4CEEA;
 Thu, 17 Apr 2025 02:09:22 +0000 (UTC)
Date: Wed, 16 Apr 2025 19:09:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, saeedm@nvidia.com, leon@kernel.org,
 tariqt@nvidia.com, jonathan.lemon@gmail.com, richardcochran@gmail.com,
 aleksandr.loktionov@intel.com, milena.olech@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Message-ID: <20250416190921.3cfd6326@kernel.org>
In-Reply-To: <20250415181543.1072342-2-arkadiusz.kubalewski@intel.com>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
 <20250415181543.1072342-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744855762;
 bh=v0j0T5Wcrf9Gx1tBLBUdRLrzr+SLUjSSw73EKC3/EJY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kFMPt/kBIQJMKPoOpqZkInVTpPszcv+egMTMGs//lSDmewfmqo1f4KkVetZr4Jkaq
 6rtyMk2jWpRtyh3JIE97kg/7nb+KkAJRsspcGZ3CWSnWp45KMs8ins8/u0ZSITh2Tr
 mFI7mSaKiGN9t6fAKYHPdYrCW3Hhd4c5dYzBuV2ONSGRjHfw5a0ESVsfOd91N3Khtj
 Kev3hHqm4cOOR4HAdotIndOEjJYjVHcZOwiZ7GOpoSm84BDm7s5LYoXQoItdzGizmf
 89qDIVSnsCXFKa7HTwOHS+GYKcNoDGtuNtHmUqWvOMZr+hYoUM0ZvQWGhBVaifTCp/
 A5AqUVaOg3ewA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kFMPt/kB
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/4] dpll: use struct
 dpll_device_info for dpll registration
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

On Tue, 15 Apr 2025 20:15:40 +0200 Arkadiusz Kubalewski wrote:
> @@ -408,14 +408,14 @@ EXPORT_SYMBOL_GPL(dpll_device_register);
>   * Context: Acquires a lock (dpll_lock)
>   */
>  void dpll_device_unregister(struct dpll_device *dpll,
> -			    const struct dpll_device_ops *ops, void *priv)
> +			    const struct dpll_device_info *info, void *priv)

Some kdoc unhappiness here, W=1 build should lead you to it.
