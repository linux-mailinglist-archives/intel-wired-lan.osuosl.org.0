Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D21AFA1A20B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 11:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C8126FA4A;
	Thu, 23 Jan 2025 10:43:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CbMIOJHMXQ_C; Thu, 23 Jan 2025 10:43:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 608A7612AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737628993;
	bh=TV+KXr7pjY3sNZBp0RlQZ82A7hdkJa6M04EkKNyz6u4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ujWmw0yFiG6dQPw8/2orYxcTZ9ZzIFvJLWEJ7b61kTW8onZ4q6uup1IHPILEUso2E
	 3x/0JRXXZIcrvrHKuLRVTTxyLDSG0ECBw4iSXQcy69M8RD0TLySWQHiDR7gIxkVkab
	 fm8m9906RGCfrWlPGGUAvwLnCDWc9MKTyC+/2OWqQRvay6/AcZpHd7+qnEfdD+fu00
	 EEDCmvoaGJ+9YNgwC7dm6g18dfnw3ZhRnJR5J4GOQMwvrn/rZdydZ0xCrnesG0ZBJu
	 lKQ46K+NC9niSQ9RK8huYCnbH4dnw9AJmIXCNqELJxjhq2EykfDBi7KBaaTU5Blt8k
	 MoCawSbEUypkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 608A7612AD;
	Thu, 23 Jan 2025 10:43:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C66DB88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79C5140486
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:43:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gq9rLHhtV7vK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 10:43:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A9559403F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9559403F7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9559403F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:43:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2C9035C56B0;
 Thu, 23 Jan 2025 10:42:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 200BCC4CED3;
 Thu, 23 Jan 2025 10:43:05 +0000 (UTC)
Date: Thu, 23 Jan 2025 10:43:03 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20250123104303.GJ395043@kernel.org>
References: <20250122151046.574061-1-maciej.fijalkowski@intel.com>
 <20250122151046.574061-2-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122151046.574061-2-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737628988;
 bh=2GQbGUS1wJQc4Ky9t4ihKM4Dc3qUZ8b7Jo6+U6rH8LA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E+R+SER/dr+BbH6v7s1u8zD9TbUMoH+k8bDIXLNX0uKzxQxUrYohb9FehVjMPIoKX
 2W4OiyytV71o4s9je1JZsgQku1h7TsIt8Fhwbg+qXun6Uv5wjrk9q98RBEOQZmLNuR
 3xoMpxcOzjq38ZsiElB7G+hdMwyNe5pMAhW4klwAtLv5lpYvJSJkDU3ok8sUe3uszd
 RjZjLPyfJ77BeM2o0MtberEZC13THr22HXB49ORHt+Jjk/2Er7TmybO6ho2AQHh7CV
 bgw5T2ZmoVkRMAuV5+0YxWM78BDGDZtnh9dUVRuJjqoP1Z/XdiusBwdB08+Mt5kuj/
 NDOSvZ/6UFMaA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=E+R+SER/
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 1/3] ice: put Rx buffers
 after being done with current frame
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 22, 2025 at 04:10:44PM +0100, Maciej Fijalkowski wrote:
> Introduce a new helper ice_put_rx_mbuf() that will go through gathered
> frags from current frame and will call ice_put_rx_buf() on them. Current
> logic that was supposed to simplify and optimize the driver where we go
> through a batch of all buffers processed in current NAPI instance turned
> out to be broken for jumbo frames and very heavy load that was coming
> from both multi-thread iperf and nginx/wrk pair between server and
> client. The delay introduced by approach that we are dropping is simply
> too big and we need to take the decision regarding page
> recycling/releasing as quick as we can.
> 
> While at it, address an error path of ice_add_xdp_frag() - we were
> missing buffer putting from day 1 there.
> 
> As a nice side effect we get rid of annoying and repetitive three-liner:
> 
> 	xdp->data = NULL;
> 	rx_ring->first_desc = ntc;
> 	rx_ring->nr_frags = 0;
> 
> by embedding it within introduced routine.
> 
> Fixes: 1dc1a7e7f410 ("ice: Centrallize Rx buffer recycling")
> Reported-and-tested-by: Xu Du <xudu@redhat.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
