Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C809FCB7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Dec 2024 15:49:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3FAE80E0C;
	Thu, 26 Dec 2024 14:49:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1iTp1nvSjMY; Thu, 26 Dec 2024 14:49:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 883F980FAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735224590;
	bh=Q6mxqG9UwKNRBKZlkuxVYoHOmhJWMbJHiF9VfBhjYXw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hACvrm3Oh3+fZkILiSafd6IGVaV0PzcwgIISZsScR47sYIi985Uj2eCWf12FRmifp
	 H0gL9xiBU6/tCcQ0ag6f8Dy33CCwYArgGzD9konYS94/V14nMEsj0sVux7XpaVv1e7
	 CphdXrXDoiqFbgtgG8SXZ2uGzCPHpLqSCYw2TRnV65UfRA3ExMtKzWI2E2FfCoKeoC
	 ilCxpa0yHsJAxwR1VLbC2AFW0Yi6PgFj1jcTXk2amHyecPnJEjHUwK7BbBNE/N3dhe
	 oEZtWa84K6vsfi1yDbNs+8hjc0F2XIfK92aPPQhq559aZLGqaHOieJuGLpyjQSZYGD
	 1pm9dtSweYTaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 883F980FAB;
	Thu, 26 Dec 2024 14:49:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CD4AF15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 14:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DF9F60642
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 14:49:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rZA82xRlhZIQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Dec 2024 14:49:47 +0000 (UTC)
X-Greylist: delayed 2151 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 26 Dec 2024 14:49:46 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 26B1D6063A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26B1D6063A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=dg@treblig.org; receiver=<UNKNOWN> 
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26B1D6063A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 14:49:46 +0000 (UTC)
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1tQocW-007Hn0-0J;
 Thu, 26 Dec 2024 14:13:48 +0000
Date: Thu, 26 Dec 2024 14:13:48 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: kys@microsoft.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Message-ID: <Z21knM7ASMbu1ZHT@gallifrey>
References: <20241226140923.85717-1-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20241226140923.85717-1-linux@treblig.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-21-amd64 (x86_64)
X-Uptime: 14:13:24 up 232 days,  1:27,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
 :Subject; bh=Q6mxqG9UwKNRBKZlkuxVYoHOmhJWMbJHiF9VfBhjYXw=; b=Ehxrl31XCvYC3aCE
 HvEFeJD63NvSKL5M+2eanYtmWfkT+9BkL5YJ85UsDLh/xNgdftmIurpz2rSMHqGH2AdWydazqpETl
 OAPQhmn1GAgsqoOQgVvbaVhDcKtG0y1vVbJlp4rmUoT+tq4hNvKojakCAmt1bU5zn0pN4hCSr2XWn
 HRypCrZ8AckhSss3c0a9PYzAZZnxch8QJGabpKU2Xlhqy0IioJMWDYF/nonMoZETxszRE2tsh3DzH
 F9XLuakQGEwT3JcZ2QgEj4CL/tIcEUqohfRH0RbSFibVuHzOILsiNWBi6Q79lm8eGLk4Pck663gBK
 VDmEH6A6uTm39kwMCw==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=Ehxrl31X
Subject: Re: [Intel-wired-lan] [RFC net-next] ixgbevf: Remove unused
 ixgbevf_hv_mbx_ops
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

Oops, forgot to cc in kys@microsoft.com:

* linux@treblig.org (linux@treblig.org) wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> The const struct ixgbevf_hv_mbx_ops was added in 2016 as part of
> commit c6d45171d706 ("ixgbevf: Support Windows hosts (Hyper-V)")
> 
> but has remained unused.
> 
> The functions it references are still referenced elsewhere.
> 
> Remove it.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h |  1 -
>  drivers/net/ethernet/intel/ixgbevf/mbx.c     | 12 ------------
>  2 files changed, 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> index 130cb868774c..a43cb500274e 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> @@ -439,7 +439,6 @@ extern const struct ixgbevf_info ixgbevf_82599_vf_hv_info;
>  extern const struct ixgbevf_info ixgbevf_X540_vf_hv_info;
>  extern const struct ixgbevf_info ixgbevf_X550_vf_hv_info;
>  extern const struct ixgbevf_info ixgbevf_X550EM_x_vf_hv_info;
> -extern const struct ixgbe_mbx_operations ixgbevf_hv_mbx_ops;
>  
>  /* needed by ethtool.c */
>  extern const char ixgbevf_driver_name[];
> diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.c b/drivers/net/ethernet/intel/ixgbevf/mbx.c
> index a55dd978f7ca..24d0237e7a99 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/mbx.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/mbx.c
> @@ -505,15 +505,3 @@ const struct ixgbe_mbx_operations ixgbevf_mbx_ops_legacy = {
>  	.check_for_ack	= ixgbevf_check_for_ack_vf,
>  	.check_for_rst	= ixgbevf_check_for_rst_vf,
>  };
> -
> -/* Mailbox operations when running on Hyper-V.
> - * On Hyper-V, PF/VF communication is not through the
> - * hardware mailbox; this communication is through
> - * a software mediated path.
> - * Most mail box operations are noop while running on
> - * Hyper-V.
> - */
> -const struct ixgbe_mbx_operations ixgbevf_hv_mbx_ops = {
> -	.init_params	= ixgbevf_init_mbx_params_vf,
> -	.check_for_rst	= ixgbevf_check_for_rst_vf,
> -};
> -- 
> 2.47.1
> 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
