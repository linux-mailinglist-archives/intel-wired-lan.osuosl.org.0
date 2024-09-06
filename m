Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E536A96EE18
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 10:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9071060BBE;
	Fri,  6 Sep 2024 08:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VBz0kPvyrHu1; Fri,  6 Sep 2024 08:30:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B12AB60D6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725611446;
	bh=WFUfnBfRtyio+90VekMcNUlTF0vl7wv9aDL1Yw/3kqA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4zQ28l10bdqQCsZ1SfAiu2AlVuejLUALDn7s7u3QrbnqFpToRkLE5tlBeNEEg3srs
	 ri0K/9FNRcTyeqBVS5isPJo3yJXq3+Xh/Zko8swJUSqMl8o0oeIvJ1zok193wEPBI/
	 KV9qUN7T/dB8Wj5MT7pdCVUQkNPDofQgd7j8BCr1Z/eT/WH4AkHzMRuwV76Ce1kF18
	 KEDc+JpidKs/2O3ilPzZ0t6Q6fO7xFwwIyxhRk1eIXAJd1YIVaSIAg4RA9IupJ0zjC
	 fIh7gHF4D/O/Qu7OE9DcdT0Q51zBD8pN5opTZq88t1mSJK28TdGMOmxw1khfNEqRrk
	 muwJizUOp1ddg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B12AB60D6C;
	Fri,  6 Sep 2024 08:30:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11A361BF355
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 08:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08AE440967
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 08:30:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZLnCpARscZ_S for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 08:30:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 21BFC406F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21BFC406F9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21BFC406F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 08:30:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 759E65C5B03;
 Fri,  6 Sep 2024 08:30:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 619BBC4CEC4;
 Fri,  6 Sep 2024 08:30:40 +0000 (UTC)
Date: Fri, 6 Sep 2024 09:30:38 +0100
From: Simon Horman <horms@kernel.org>
To: Gui-Dong Han <hanguidong02@outlook.com>
Message-ID: <20240906083038.GC2097826@kernel.org>
References: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725611442;
 bh=A5dq9VXSOyYLnbKAephiLb4/q2ZPRZWcqiBaCOExek4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SWv0+dmp0VjjpwgOjn/rgchbdug4Cxd8CeXi17mh1b0caKbFg21RCbpO1xdkdEA3+
 UymzcCa7gSnv4pDx4yzQTEuwr2Jz/z58ImXpGaDYfed7FPRb4CaAt1b/4gFuZP9Y8c
 9EZf8pTXk6Ycd3KP+Vi4IDTRUNB2QcuS8RU6dy8JBVho43tpxE0T3sRwSn67l1Actk
 6lIZoXB/cJJrtaigyAABRHFX9913ntCZJR2iHERmKaCl7C+mPy8r8izFNlYviDJpAZ
 q8aXYWL6HPNNRKB9ZtzJhIhYM3DmAfDbVAioCltQU9AwdksKpsW7nMfewX8PLvb+dH
 LZG4fbO9qdUzw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SWv0+dmp
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of
 refcount in ice_sriov_set_msix_vec_count()
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
Cc: przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 baijiaju1990@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 03, 2024 at 11:59:43AM +0000, Gui-Dong Han wrote:
> This patch addresses an issue with improper reference count handling in the
> ice_sriov_set_msix_vec_count() function.
> 
> First, the function calls ice_get_vf_by_id(), which increments the
> reference count of the vf pointer. If the subsequent call to
> ice_get_vf_vsi() fails, the function currently returns an error without
> decrementing the reference count of the vf pointer, leading to a reference
> count leak. The correct behavior, as implemented in this patch, is to
> decrement the reference count using ice_put_vf(vf) before returning an
> error when vsi is NULL.
> 
> Second, the function calls ice_sriov_get_irqs(), which sets
> vf->first_vector_idx. If this call returns a negative value, indicating an
> error, the function returns an error without decrementing the reference
> count of the vf pointer, resulting in another reference count leak. The
> patch addresses this by adding a call to ice_put_vf(vf) before returning
> an error when vf->first_vector_idx < 0. 
> 
> This bug was identified by an experimental static analysis tool developed
> by our team. The tool specializes in analyzing reference count operations
> and identifying potential mismanagement of reference counts. In this case,
> the tool flagged the missing decrement operation as a potential issue,
> leading to this patch.
> 
> Fixes: 4035c72dc1ba ("ice: reconfig host after changing MSI-X on VF")
> Fixes: 4d38cb44bd32 ("ice: manage VFs MSI-X using resource tracking")
> Cc: stable@vger.kernel.org
> Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>
> ---
> v2:
> * In this patch v2, an additional resource leak was addressed when
> vf->first_vector_idx < 0. The issue is now fixed by adding ice_put_vf(vf)
> before returning an error.
>   Thanks to Simon Horman for identifying this additional leak scenario.

Thanks for the update,

I agree with the analysis and that the two instances of
this problem were introduced by each of the cited commits.

Reviewed-by: Simon Horman <horms@kernel.org>

