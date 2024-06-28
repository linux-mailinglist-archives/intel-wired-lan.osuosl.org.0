Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F069291BEC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 14:41:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25F6C41C5E;
	Fri, 28 Jun 2024 12:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uvKw_B4CYSaP; Fri, 28 Jun 2024 12:41:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56B1E41B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719578486;
	bh=bGI5kI1dZO+9WD+QKVBmyREjDp/LmO9uo4EDXSRNNuI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cC+MTGLATszFgZ7wMJNsd8cPDDiqdtWk968YBHEpJDjB3W7eFUOBgRhAOp31RvOiB
	 rZ6qa4pf3ZQsLJXXmeJBS+dZ/T/xGpsJna0YKNVMDXBDvdNyG5a9RqvYEFwZ8G6aMq
	 gkPKAs2mLV6LN0RSeBAPnQxA+xbACUyb1yWCWo99PtpdexcSvKFokiADAuIkgmhbeR
	 6ZlSYaaJE2hB16kXoDt/EAllQZnf4a0ctUfX0ZbN9dzCAUmt/kzHKNrIiQbsnIIBI1
	 mcIE9pLRChayIdM1nqJrqZr/UeLSfkhXkHD3xRD2HrxK6uLFfxKrQV5jMpBOzaWs6d
	 CkYH87DddWYQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56B1E41B8B;
	Fri, 28 Jun 2024 12:41:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F2EA1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5949F84537
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5H-H3Q5uu6p9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 12:41:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80BAD83F1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80BAD83F1B
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80BAD83F1B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:41:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 13811CE3C40;
 Fri, 28 Jun 2024 12:41:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AB53C32781;
 Fri, 28 Jun 2024 12:41:16 +0000 (UTC)
Date: Fri, 28 Jun 2024 13:41:14 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240628124114.GB783093@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-3-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618141157.1881093-3-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719578477;
 bh=a6Qym+vvVigvz9wSCKdjQVjJh+CINPYOgGV9UfvA0zE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uh10G45hZiThZvzPGOU88G5I/B5W8k633WgvCJVczL9PP/6JcPzGbjhNSXxAihSdr
 lWeiFIkd6Zk8/3IGCI++D864Rv+/EUptutOKoBEjrnf19EA4FxTo5rmG5t+R3N3rR6
 6AfhW3xh4PPZi065JQ2tjZbjV76dbkUIJhiczK9OHofuoZ51ZDPd7/aY2IkFHty/ok
 GjohtU8+yShZ6cAj/rINxeEU7lA80b+H+65m7GsWFHd3bflB9cAbip4mqZsiNNaK3u
 zcPZ8d0GIbEbmR29cfw6KZhwltc9bAqiaWHjvm2zPnqKeTA/7aQyqXCsTYok3INF+t
 qlLEQzjc5fbCQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Uh10G45h
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/6] ice: Remove reading all
 recipes before adding a new one
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 04:11:53PM +0200, Marcin Szycik wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> The content of the first read recipe is used as a template when adding a
> recipe. It isn't needed - only prune index is directly set from there. Set
> it in the code instead. Also, now there's no need to set rid and lookup
> indexes to 0, as the whole recipe buffer is initialized to 0.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

