Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB633B0A8ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 18:51:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66A3D4069B;
	Fri, 18 Jul 2025 16:51:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CtES6u4psjTo; Fri, 18 Jul 2025 16:51:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCDF7406A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752857464;
	bh=6QJN17co+1dBfmj4jAjolU6Ddl9SHOHZ3h1icMnW278=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ajvFcSxapkbNN5J8bpEsdw3eMHAJjxDGfKArSED+Gu3ulX6+sa8sZ/vX5x53QjBQy
	 A393b9h7pUelNINvhkD7JpLcpwzUBtOzF8N9PidWqxX6dBC+MilSajd4+G4+4+9Q0c
	 M07UlsP5ioQ8r3ZhYqFmodeERCep5KZkRjRR+7dKhnGh5ArfqyrhTMOGiMIK+x6nsJ
	 XXYKLpKxB5G1BMsbW7iD4qwHJqhyQ58+dW1CGK4D9gzoPu+xqnvGrzvAgelu3y6ANT
	 YvTy/F+8Nse0ZW+5oO3zgAxwvsO6XrmhD9Hz1LBufFT5wtqMqYtVFgEtscPzIMrFUb
	 xJHkPv1qDdySQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCDF7406A8;
	Fri, 18 Jul 2025 16:51:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D4AF41A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 16:51:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C67A060B79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 16:51:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3UmWSZM3kGO1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 16:51:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2EA2260B19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EA2260B19
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EA2260B19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 16:51:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 11BFA5C68E8;
 Fri, 18 Jul 2025 16:51:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B37C4CEEB;
 Fri, 18 Jul 2025 16:50:59 +0000 (UTC)
Date: Fri, 18 Jul 2025 17:50:57 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 vgrinber@redhat.com, netdev@vger.kernel.org
Message-ID: <20250718165057.GJ2459@horms.kernel.org>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752857460;
 bh=Xi0Bb00GS9+L00PpJZElzWqMdLzlC3U0U2Ju6UqTZWE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pLiKUJRh1lFYlPyzgItFA3LdHqHirDH54tlwToLNDDpaUa7tu8UoBBKqgMI7LgwdF
 8QYCfKFIPqeus2RvoMsLMa5cswGRFuu+YXpqdqBcmpweRzjBUAA0MIZrFLhXVXQP82
 u6HO7QcE1LtNuvS7LgY0JyiR0ivKiWY4L7b+RNU9+3EtfyVEE42QLjTplniQ9zwyqr
 PoexVNIurc7Jns4Xu6TlW+GhnQSj7KorVZzZ2F9aidhBoi0RWzMIwx3SVs2O4AuwBb
 sxdQaBPiG6U6ZGYudmJQjg/TfEmZliG75VML5HsrWc1sBzchoiAmTvx27lzjbAnQt4
 l1S4fYgSMFFCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=pLiKUJRh
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix double-call to
 ice_deinit_hw() during probe failure
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

On Thu, Jul 17, 2025 at 09:57:08AM -0700, Jacob Keller wrote:
> The following (and similar) KFENCE bugs have recently been found occurring
> during certain error flows of the ice_probe() function:
> 
> kernel: ==================================================================
> kernel: BUG: KFENCE: use-after-free read in ice_cleanup_fltr_mgmt_struct+0x1d
> kernel: Use-after-free read at 0x00000000e72fe5ed (in kfence-#223):
> kernel:  ice_cleanup_fltr_mgmt_struct+0x1d/0x200 [ice]
> kernel:  ice_deinit_hw+0x1e/0x60 [ice]
> kernel:  ice_probe+0x245/0x2e0 [ice]
> kernel:
> kernel: kfence-#223: <..snip..>
> kernel: allocated by task 7553 on cpu 0 at 2243.527621s (198.108303s ago):
> kernel:  devm_kmalloc+0x57/0x120
> kernel:  ice_init_hw+0x491/0x8e0 [ice]
> kernel:  ice_probe+0x203/0x2e0 [ice]
> kernel:
> kernel: freed by task 7553 on cpu 0 at 2441.509158s (0.175707s ago):
> kernel:  ice_deinit_hw+0x1e/0x60 [ice]
> kernel:  ice_init+0x1ad/0x570 [ice]
> kernel:  ice_probe+0x22b/0x2e0 [ice]
> kernel:
> kernel: ==================================================================
> 
> These occur as the result of a double-call to ice_deinit_hw(). This double
> call happens if ice_init() fails at any point after calling
> ice_init_dev().
> 
> Upon errors, ice_init() calls ice_deinit_dev(), which is supposed to be the
> inverse of ice_init_dev(). However, currently ice_init_dev() does not call
> ice_init_hw(). Instead, ice_init_hw() is called by ice_probe(). Thus,
> ice_probe() itself calls ice_deinit_hw() as part of its error cleanup
> logic.
> 
> This results in two calls to ice_deinit_hw() which results in straight
> forward use-after-free violations due to double calling kfree and other
> cleanup functions.
> 
> To avoid this double call, move the call to ice_init_hw() into
> ice_init_dev(), and remove the now logically unnecessary cleanup from
> ice_probe(). This is simpler than the alternative of moving ice_deinit_hw()
> *out* of ice_deinit_dev().
> 
> Moving the calls to ice_deinit_hw() requires validating all cleanup paths,
> and changing significantly more code. Moving the calls of ice_init_hw()
> requires only validating that the new placement is still prior to all HW
> structure accesses.
> 
> For ice_probe(), this now delays ice_init_hw() from before
> ice_adapter_get() to just after it. This is safe, as ice_adapter_get() does
> not rely on the HW structure.
> 
> For ice_devlink_reinit_up(), the ice_init_hw() is now called after
> ice_set_min_max_msix(). This is also safe as that function does not access
> the HW structure either.
> 
> This flow makes more logical sense, as ice_init_dev() is mirrored by
> ice_deinit_dev(), so it reasonably should be the caller of ice_init_hw().
> It also reduces one extra call to ice_init_hw() since both ice_probe() and
> ice_devlink_reinit_up() call ice_init_dev().
> 
> This resolves the double-free and avoids memory corruption and other
> invalid memory accesses in the event of a failed probe.
> 
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks for the detailed explanation.

Reviewed-by: Simon Horman <horms@kernel.org>

