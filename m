Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CFFB4FCBF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Sep 2025 15:28:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 996AF84074;
	Tue,  9 Sep 2025 13:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6OJgiVTYZ1Y; Tue,  9 Sep 2025 13:28:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23DC981D16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757424495;
	bh=lOFbe0vR6czp0/eqbrG1Wb24maTnVEBLDSjkaHmaFxE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ALGqWCTs9qt76SNuywB6tSQ0ZivESMeIybfEjnjyonrrbWiI/ECGnYO7N1WNhbsmU
	 nbjQ4oR3eTnE/KH4m+q6ATo2C9bV3hviPqQHYpDCF7A8375mlkZJopgebHn3WHRKb8
	 N/nDBk41sGOL+u404CCvwUa0DlFQWqentAwgI1qSny2kW2qRui+6pst/vL9vptROiX
	 Uxd+PEHRxQp9nnzt5mQNoviWfSJQm5A55lP0tHC4j42i9NwgOXNfWtDdutXjAJPQTO
	 UgzuAIu3JIpwZGBjk/IGO9MJoO5LpfC+ixZQuPxgYBzeNu+fNLyLvK/BLVhkPRvv09
	 zA5WNbT1xuIPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23DC981D16;
	Tue,  9 Sep 2025 13:28:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BD67CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 13:28:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0252F401A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 13:28:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uc8LNQmlYMXT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Sep 2025 13:28:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 458224018D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 458224018D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 458224018D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 13:28:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 93D7440951;
 Tue,  9 Sep 2025 13:28:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0751AC4CEF4;
 Tue,  9 Sep 2025 13:28:10 +0000 (UTC)
Date: Tue, 9 Sep 2025 15:20:51 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Tatyana Nikolova <tatyana.e.nikolova@intel.com>, jiri@resnulli.us
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com
Message-ID: <20250909122051.GF341237@unreal>
References: <20250904195719.371-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904195719.371-1-tatyana.e.nikolova@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757424491;
 bh=VMUJFmLcsKGBDDr5v9bXqubrob3qdBOhonNwTJDZQaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H+yZ20h0+Dby0VNZESEZBL1k7vPh7lZAT5v4K0c7BYWTYEGfVNgf/a0zNMA6fDYlQ
 +zZ615z4LihhDOJuqLi1RmI4Exu0DZwTcYrIzjOwNjkRxJP166fiFYjsOj/hvkZUY2
 Batn+CgQKCn1AOsrK/I+qFkx8HvulAqoi5DYjTnWrIRKxMgyu83yQa6drOdCHLMtyb
 k5HZPEnsBVqhixIqIPzP5DrZgyfJbIzCi1UX28MjOyeHr67pOwrC83QV11iSMiBAgw
 c/0Fnqo1X1teBFuFGJPXN19nFNh8koJxx134game4/7YsbmO16fcp62PFVwYlbMXIl
 HdbUsYstHAdSg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=H+yZ20h0
Subject: Re: [Intel-wired-lan] [iwl-next] ice,
 irdma: Add rdma_qp_limits_sel devlink parameter for irdma
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

On Thu, Sep 04, 2025 at 02:57:19PM -0500, Tatyana Nikolova wrote:
> Add a devlink parameter to switch between different QP resource profiles
> (max number of QPs) supported by irdma for Intel Ethernet 800 devices. The
> rdma_qp_limits_sel is translated into an index in the rsrc_limits_table to
> select a power of two number between 1 and 256 for max supported QPs (1K-256K).
> To reduce the irdma memory footprint, set the rdma_qp_limits_sel default value
> to 1 (max 1K QPs).
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
> ---
> Since the changes to irdma are minor, this is targeted to iwl-next/net-next.

<...>

>  #define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
>  #define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
>  #define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
> @@ -1621,6 +1723,7 @@ enum ice_param_id {
>  	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>  	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>  	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
> +	ICE_DEVLINK_PARAM_ID_RDMA_QP_LIMITS_SEL,
>  };

I was under impression that driver-specific devlink knobs are not
allowed. Was this limitation changed for Intel?

Thanks
