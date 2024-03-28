Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70318890741
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 211298258D;
	Thu, 28 Mar 2024 17:35:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hh3pTsz3nl9b; Thu, 28 Mar 2024 17:35:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D1E0823CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711647300;
	bh=4yo8VVqwiJswMB/c5yJRGa0JjvWX/zcr6eEowuEhVzc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SH7X/c9q6My3WNMRq8bIM+/qJabQXO+BqHAi1hhRE2s3o1NMKyksRCT1TRwU5jF7P
	 whEJbfC1WIrLTCRLFPbVjTR885pb2hDO1thm69QWWL/Ly6gaPX170cVH/drI1/D2WW
	 i20wXz80I+lbAy+VUMvhI+t7/PH2Lqc34uvIxW+yN3bfoeDmMLI63v11MqOxlRIMIf
	 vrP0zfJgFGSgG1dtusUcjwakmYmytQWFQNrWrJjyWlT85z/O8gcg4HyYOPQuks2b+V
	 580kbdXC+8ZQ8fiiikb7ONZhpM5hlTGetRiz8VocDTYRx6r6L6fc3FGqaK5m6NycZ/
	 eU7gdkp0RBU6w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D1E0823CB;
	Thu, 28 Mar 2024 17:35:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C9371BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17ED0415BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:34:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L2WzKBrlcHIu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:34:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B743415A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B743415A7
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B743415A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:34:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 98D63CE2C30;
 Thu, 28 Mar 2024 17:34:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3077EC43399;
 Thu, 28 Mar 2024 17:34:52 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:34:50 +0000
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240328173450.GH651713@kernel.org>
References: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711647293;
 bh=2KbaQrJ/pqACZSYHyINqiPVX7d7gOj7MJGipN6LUpu0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PD9VuLTx/9ik/D00uOxp2CMmIqrCC7p2cacKEOSa78QxzbhheYbnri4IQz8AIrcOj
 7k4Tjo+SDcVPqhzm7PXq0SDXNvXGdE6X1kgfA9cWCm26VWow2g4mSRdD3E+E80rvjK
 VM1YO8Ww/TR+F7fBFk8EVOHGK4TTbfVJT3CqQH8qvSvqP3v+hDii7q40iuHvqfBOGv
 aALj5cv1LwvIMR/IwOMKyocRwkc9A0GhivjDVJz6TRlOIP5Myql1VA0py6tCwmcDwh
 bxdzYMZ+luwoZraokIEXlvSlNNYLgZmG9tHo6JNmmU2SDn5xWGhEvaw2JwtAFpKNkO
 jo3DgT7amMvng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PD9VuLTx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Reset VF on Tx MDD
 event
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, anthony.l.nguyen@intel.com,
 Liang-Min Wang <liang-min.wang@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 26, 2024 at 05:44:55PM +0100, Marcin Szycik wrote:
> In cases when VF sends malformed packets that are classified as malicious,
> sometimes it causes Tx queue to freeze. This frozen queue can be stuck
> for several minutes being unusable. This behavior can be reproduced with
> a faulty userspace app running on VF.
> 
> When Malicious Driver Detection event occurs and the mdd-auto-reset-vf
> private flag is set, perform a graceful VF reset to quickly bring VF back
> to operational state. Add a log message to notify about the cause of
> the reset. Add a helper for this to be reused for both TX and RX events.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
> Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Hi Marcin,

If I read this correctly then a reset may be performed for several
different conditions - values of different registers - for a VF
as checked in a for loop.

I am wondering if multiple resets could occur for the same VF within
an iteration of the for loop - because more than one of the conditions is
met. And, if so, is this ok?
