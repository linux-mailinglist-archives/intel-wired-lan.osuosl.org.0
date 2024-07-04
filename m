Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 054E592720F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 10:50:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 804B1846B4;
	Thu,  4 Jul 2024 08:50:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BkjqHgTJ3SV1; Thu,  4 Jul 2024 08:50:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D82E481062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720083001;
	bh=hnqDWWVNzYd34Y8iNvqdl8+IKfNSnkCVOWpTgSkDnV4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VL8wuKmt95E1TPwkOXk18S3NotrRmQzBFtGD9rOKaXjdtTXau0ekZNUVSZxINsRjV
	 XfLMmx089e64+KGOpZlB98qjDw19b3cg1zLt+/qluItreltdRtA34HzxgTJCcl4oQ/
	 talgvUpgAJaboqugaQaRDo+1tN2oXYXF9H6AhXneSehUbDodAH3BNFdYhgkjDwqI19
	 EDLr8KU3Ud9oSbrQ58RR5UsYUCjX/CX8y1l7nrGVubQpPmdDLPaWUeU62PRqB3090G
	 y/nqLV6cj9vZKBSOyYiNvayinRl15W8pVn2I6VOAgCpVQq+WBr+ozgVYsitulaWi3k
	 R+TH+vutxvh9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D82E481062;
	Thu,  4 Jul 2024 08:50:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7B501BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 08:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D035D40607
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 08:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KNEzwOyQ79FH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2024 08:49:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E43E0405C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E43E0405C8
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E43E0405C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 08:49:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B1956625F1;
 Thu,  4 Jul 2024 08:49:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B527C3277B;
 Thu,  4 Jul 2024 08:49:56 +0000 (UTC)
Date: Thu, 4 Jul 2024 09:49:53 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240704084953.GX598357@kernel.org>
References: <20240703112502.28021-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703112502.28021-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720082997;
 bh=9qThL+3P8lKzFUHyhDS878/lZM3tEgVQ2g2r3nsI7+o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IfK7OEIU85cziov8aM9QQ8EQ5vW8tcWcp7vK2hyuqc8Xs6iJ8gX/qw21xIPYlXS0C
 xd1DHZ8vzyBFA3dhmHyROqsipMrADlqthC7TaPbvcES6fQA/rdCzwhLW9zFNXWrFiM
 W1aHbcDAm95630uOSEeDqyeYvEK1kJ3Fu3R28a8f/O2jeK0VZNQPaZVNo7lK4Py2GC
 vqBfdFRxFc0z1v0TeOAVV8BcIXMWNcbsOKk4O+d2gEGp8YtjYWeCl87TMR1fYVt0HZ
 pA1OrGzIaoRekcf3io5xcZt6Ha7dXvwQQRR26Iv/hQdkVxoPGDZBcR5pgZFFrrEsf/
 V4Zh1nWPqqlLg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IfK7OEIU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Fix field vector array
 data type
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 03, 2024 at 01:25:02PM +0200, Marcin Szycik wrote:
> Correct the datatype of fv_idx array in struct ice_sw_recipe to be u8
> instead of u16. This array contents are used solely to be later passed
> to lkup_indx in struct ice_aqc_recipe_content, which is u8.
> 
> Fixes: 6d82b8eda4c7 ("ice: Optimize switch recipe creation")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> Targeting next, as the commit to be fixed is on dev-queue.
> Tony, please squash this with commit 6d82b8eda4c7 ("ice: Optimize switch recipe creation")

FWIIW, this LGTM.

...
