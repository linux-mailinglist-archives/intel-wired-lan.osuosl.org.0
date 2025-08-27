Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B64B384CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 16:19:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20D6960E3F;
	Wed, 27 Aug 2025 14:19:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2JRowuGnNBZR; Wed, 27 Aug 2025 14:19:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9473660DF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756304395;
	bh=iwo2hpA9bNkrnPvBK/oYTlR5K7tDo4ELkCqdisIxHFE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RmqUJsCw8z88WvXyelTrmOpSeZUJvf95eitQTBEG/ZRX+kxgecaLvONvyIGaqRBgq
	 2w0SZSp4uneTzkuUddDsHNfimPzeZmT44TjoCMka64BMp5rLpjGfJQgBnOWm5SwOvi
	 t7PDwAKus+Mk6EfLYOlD89YuloUBpDfV3OFoeSJA8uXp7LrwK7QjUgOQsV6DNYWXjw
	 E1OGUz7tQz4IKdzmjcG55E5SygW0ETOhiNUVqVEDodSdXGderfQCLRoAFgKK4RDGvE
	 Wz1Eb9DA6gjzELaOjFq1smvKk2JBZkNJ39l7UvOisawkXlI1qlJgbQt7VAeJudEtsv
	 t0v6IuP7kRr6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9473660DF7;
	Wed, 27 Aug 2025 14:19:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 861CD17D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7660D80BAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:19:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S1nNFY8_srid for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 14:19:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EE69580BA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE69580BA9
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE69580BA9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:19:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1217C60266;
 Wed, 27 Aug 2025 14:19:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBDF5C4CEF0;
 Wed, 27 Aug 2025 14:19:48 +0000 (UTC)
Date: Wed, 27 Aug 2025 15:19:46 +0100
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr.Loktionov@intel.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com
Message-ID: <20250827141946.GC5652@horms.kernel.org>
References: <20250822035248.22969-1-emil.s.tantilov@intel.com>
 <20250822035248.22969-2-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822035248.22969-2-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756304391;
 bh=7Fjd3YmS5c4fVv5YW2uewpd700LeWpLhFBANrfL+JxM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=de/8ANp0nKe3x0iZQO1ror8mFuAYVHw7KCtG9bXkJnO4i/xRnCEHMH7j8y47SG4ks
 AmpbmxfAERWrd3cwKrss7H7Sq2oQAYZj8+4yVfKeaJovuLlt5geMgfz4hlodeYd5r4
 yEO0fhciCDcIXR6eD10+FQnq2qlH67N8iD0tsFWXrIgRUfWUwFF9IByQLEy/+AqnJS
 cz8kLr3w7lvR69T3RgGaglpAyyIZHtrk7UQSH/lWlqs36U0yHkF/HLmQtv3d5wqydS
 CZ0xgfM8Gerrf9IsLzrVWS59/ggC/9/OpA/bdHkBVv0deN4SgO+4z2VjOJYoBFun+f
 daU8hxfHjtvlw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=de/8ANp0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: convert vport state
 to bitmap
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

On Thu, Aug 21, 2025 at 08:52:47PM -0700, Emil Tantilov wrote:
> Convert vport state to a bitmap and remove the DOWN state which is
> redundant in the existing logic. There are no functional changes aside
> from the use of bitwise operations when setting and checking the states.
> Removed the double underscore to be consistent with the naming of other
> bitmaps in the header and renamed current_state to vport_is_up to match
> the meaning of the new variable.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

