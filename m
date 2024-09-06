Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E25796EDA1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 10:19:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C17DA60D72;
	Fri,  6 Sep 2024 08:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZOeI0qkBMmu1; Fri,  6 Sep 2024 08:19:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15C4360BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725610742;
	bh=ftVkl5WqsZsR+PuJjES6BnhqSSF1QnApYNZNHhkmKTE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kfbZC1TLAYLGyJm698fgGSDVqnjEA45yAuY9W3K/UpeE6U9DWRotnwN41F86jwMjn
	 e3652mVH1oirQwEVLglEA40Z2jxVbOINcc2hfsL1boq2LkBVOnFJW/QjCW9ddmk2+s
	 X5MGq3+yrJsTTM7HXh2uw8vGrRAHMdW3My9e95YxnxndCMO7/TtDDggNewSRJilm3O
	 IaytYTkuGkhS4SVVbmIximgCk4UFoUS2nzklQ1NckT1bii/H7KwiiCls/FwRdFpHDS
	 ZyNK5cdOjC7YV0WcqHXImCnKd79r+OGLBsEXJ51szUn2CJ+xvGLhOeHuRD0LGI23bB
	 nUShdzwwMPP6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15C4360BBE;
	Fri,  6 Sep 2024 08:19:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25BBE1BF355
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 08:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 129DF81D5F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 08:19:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LSDJE8PMQxsF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 08:18:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F100E81D24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F100E81D24
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F100E81D24
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 08:18:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2E6C3A44C71;
 Fri,  6 Sep 2024 08:18:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEA52C4CEC4;
 Fri,  6 Sep 2024 08:18:54 +0000 (UTC)
Date: Fri, 6 Sep 2024 09:18:52 +0100
From: Simon Horman <horms@kernel.org>
To: Gui-Dong Han <hanguidong02@outlook.com>
Message-ID: <20240906081852.GB2097826@kernel.org>
References: <SY8P300MB0460F0F4B5D0BC6768DCA466C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SY8P300MB0460F0F4B5D0BC6768DCA466C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725610737;
 bh=LSJTC7RdTHY1Ox0sqM20UNoiY7XdIiN8dWGwQOog8Nw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J4CxN0OMSdhKQU6KKHa+C/4OzKle2p6EJGK0yoqy703pt0pzEzysrjL+/HzcLvSS5
 inYiFfiWmcRycD+88STSiy0/cJsOp1vCFly44gJ+rU8OWLnEOCPPeSR69DKyz0LKEt
 pkc2tflP1ELpC2hK95vSxTxWURB7wOVOBcmXUvs430ozLKbrIZU/cAquyzIqQUrzgQ
 tlHJuehZP1OW7FNRkS5YYPlBfGGo5J75w8hOkN7G1uPZ6+b/g+zd6/hKC4sSMS2rFw
 IDYmXJp9YFvMUnUx2B/jRJcDq2jfhYYqaMUo3lzNVy6wrCk4zYxvpxg50NiHcqDcPw
 CLfFen23jzdvw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=J4CxN0OM
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of
 refcount in ice_dpll_init_rclk_pins()
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

On Tue, Sep 03, 2024 at 11:48:43AM +0000, Gui-Dong Han wrote:
> This patch addresses a reference count handling issue in the
> ice_dpll_init_rclk_pins() function. The function calls ice_dpll_get_pins(),
> which increments the reference count of the relevant resources. However,
> if the condition WARN_ON((!vsi || !vsi->netdev)) is met, the function
> currently returns an error without properly releasing the resources
> acquired by ice_dpll_get_pins(), leading to a reference count leak.
> 
> To resolve this, the check has been moved to the top of the function. This
> ensures that the function verifies the state before any resources are
> acquired, avoiding the need for additional resource management in the
> error path. 
> 
> This bug was identified by an experimental static analysis tool developed
> by our team. The tool specializes in analyzing reference count operations
> and detecting potential issues where resources are not properly managed.
> In this case, the tool flagged the missing release operation as a
> potential problem, which led to the development of this patch.
> 
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Cc: stable@vger.kernel.org
> Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>
> ---
> v2:
> * In this patch v2, the check for vsi and vsi->netdev has been moved to
> the top of the function to simplify error handling and avoid the need for
> resource unwinding.
>   Thanks to Simon Horman for suggesting this improvement.

Thanks for the update,

I agree with your analysis and that the problem is introduced by
the cited commit.

Reviewed-by: Simon Horman <horms@kernel.org>

