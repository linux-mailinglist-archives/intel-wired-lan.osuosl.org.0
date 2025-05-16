Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B123EAB991C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:44:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EA00417A7;
	Fri, 16 May 2025 09:44:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5z-Bt1nASmNl; Fri, 16 May 2025 09:44:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD452412C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388650;
	bh=wmAnDEiDRMdt2igmBrI0PfEavOs2JXqhikzDuWjUX0c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g2ZEmvGttWcejNl8/WygcjR9DlkFhCDbzjOqp3bjzI6XLIimDvLDYuLQ/IGTgZLNe
	 sbyI40UY/eYaa7JBBsAqOq4V+BSlzOgkTTxSNy8Og0n7UJEkITQI2hqvzYNXuYyE7I
	 n0jTCSL/taMbv71E0bmD8GgAuGU/tv7mzOPk38MANzyYDpTZWtvsAke13RnzADbEHG
	 NpKMcnuVuNL7EtQ4vH55+Z69FVuOJn51kw1J/mkiJgBQ8MdEk989OMqTe6QoxszY57
	 8HbTAk2gR/D6xmDN+gr53X0hjkLULT/Gxuw8HzyptnPgDx36tQP2eUcv4aw2hpyTrj
	 75/eMTkHjomWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD452412C2;
	Fri, 16 May 2025 09:44:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DAA2F1AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC3CA80F62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ChQ7LuDvk6Gk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:44:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 47E1E83C82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47E1E83C82
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47E1E83C82
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 10E715C47DC;
 Fri, 16 May 2025 09:41:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79F0DC4CEE4;
 Fri, 16 May 2025 09:44:04 +0000 (UTC)
Date: Fri, 16 May 2025 10:44:02 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Message-ID: <20250516094402.GI1898636@horms.kernel.org>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
 <20250514042945.2685273-2-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514042945.2685273-2-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747388647;
 bh=2o6PA4KQ6CYl1W4ahVFVFPxLG72HP/+8o7tzv5Djm3Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=clUeDqR+NZG4PuFvMckbwKkaDff8q+Fw2o6c178dTJWmUn+zS0xofnY/fAn4MaXYF
 G3IlTT7m6tjkj0aI01lmNZ+5m6I6CHswzdMJ7eYdGf2pFatmYw99M+G/2HkodwLLN6
 5iya/tZTGu2o17P4TGIJFx4ZpG8yUuUyBBbA/KNGq9lfnkKRGeDGY6guiqnQTy2dIL
 nkfjaWtBL4wmvopUukdtUX37UBCWnfhVPFki0eFc1FaOQ/JGpeaVUNzpxCQTpc8HV0
 JcD414OVBJocQiZSF+tVDI4Xizr/tmSBiH1+3QGe51slqC2mqNz9V9J/6LjqrX0DjO
 8B6+hpEnveebQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=clUeDqR+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/8] igc: move TXDCTL and
 RXDCTL related macros
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

On Wed, May 14, 2025 at 12:29:38AM -0400, Faizal Rahim wrote:
> Move and consolidate TXDCTL and RXDCTL macros in preparation for
> upcoming TXDCTL changes. This improves organization and readability.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

