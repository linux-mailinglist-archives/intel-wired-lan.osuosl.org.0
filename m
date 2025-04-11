Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1B9A852E1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 07:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F6A060B6D;
	Fri, 11 Apr 2025 05:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k6L4LEj-a-3z; Fri, 11 Apr 2025 05:09:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9186608D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744348173;
	bh=3PAqHNuZV3JIQHWJRuhvdcLipzFxM7uNZlAe2jjUupk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PU8GVr9sTV39iMyH/+hwwSNT5Ks4CsxDmXDjtooy4fKp9lL7O0Y7YipGHddUE1uw1
	 nhkE+X0bXZwaOccTvD8T6KOb3gPj9Kiuis7xtsDJVpnieGMqW47r3L5c/xwFWalHEl
	 LUC8FPtNQSDLU1KsiLiF80jb2LxDnne/xfIa8lpazIKKxRp0hvffTzZSa/bcbxRrHO
	 CtdjFd/3MNf5RecKXi/VYSJ3QQ7wY6ic1f7flDaI/Tzx5j0yT6Ql5PwG1sjfcOoFoa
	 iH2lA+6JrKrvdg1FcF+jB00VeFIzU163BD1NFtTxlUf2z50Gex7iSE12e3m7J7uEzz
	 OvYlhEcfsfYHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9186608D4;
	Fri, 11 Apr 2025 05:09:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 01DC7193
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF49F60849
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:09:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tLc16mSUu1Qh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 05:09:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ACCCB60672
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACCCB60672
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACCCB60672
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:09:31 +0000 (UTC)
X-CSE-ConnectionGUID: NMXBAc5MT9OqCRC3U2BPTg==
X-CSE-MsgGUID: DIQ1/ZX1SYyjKGnmWUI3hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45600035"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="45600035"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:09:31 -0700
X-CSE-ConnectionGUID: Uyo2DFClSYO3H/e2tlzVZQ==
X-CSE-MsgGUID: zQrGO42KT1izZMEOj5pBKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="133963928"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:09:29 -0700
Date: Fri, 11 Apr 2025 07:09:12 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <Z/ij+J8kGYM5ezC/@mev-dev.igk.intel.com>
References: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
 <20250407104350.GA395307@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407104350.GA395307@horms.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744348172; x=1775884172;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W9K3wPIr+quSoJsa97ROeiE6HtNrnj6DEIPQ+cSgm/I=;
 b=cTwMWjCAIlbQepGH+HJYWwuHDg7WScgPTMX5J0H44Xu87GLuWCaI/L6Y
 a/lUDfvV9z9NzBuCAVRZ53MWL4DxLnQOeHiOJZ6RiEnq4hcqIrGCPb11c
 AdfdcGT2GBgquYAQ9EIto1jLQpqIsKD6neoaFPerqRkbjAAlBKhV+YtV9
 6xihHdlok5hFh/SX3ctBbk/aRSKokr5MNvv5GQtHSbfzu3ozYnZFOM3Rm
 4MtpwZh4pPlTA6pgWa2fGzuRhBZqU9mEMpq/AuGgKyqVZ/nsB17OAwmSD
 tVr+7SmREu1LQf1/Toz7kKORjDSQlaFJ89IzLQweBfbtSpjEZX0mnJSPN
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cTwMWjCA
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory
 leak on kcalloc() failure
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

On Mon, Apr 07, 2025 at 11:43:50AM +0100, Simon Horman wrote:
> On Fri, Apr 04, 2025 at 12:54:21PM +0200, Michal Swiatkowski wrote:
> > In case of failing on rss_data->rss_key allocation the function is
> > freeing vport without freeing earlier allocated q_vector_idxs. Fix it.
> > 
> > Move from freeing in error branch to goto scheme.
> > 
> > Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> 
> Hi Michal,
> 
> WRT leaking q_vector_indxs, that allocation is not present at
> the commit cited above, so I think the correct Fixes tag for
> that problem is the following, where that allocation was added:
> 
> Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")

Thanks for checking that. I agree, my fixes is wrong.

> 
> I do note that adapter->vport_config[idx] may be allocated but
> not freed on error in idpf_vport_alloc(). But I assume that this
> is not a leak as it will eventually be cleaned up by idpf_remove().

Right, it will be better to free it directly for better readable.
Probably candidate for net-next changes.

> 
> So the Fixes tag not withstanding this looks good to me.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
>

Thanks for review.

> > Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Suggested-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> ...
