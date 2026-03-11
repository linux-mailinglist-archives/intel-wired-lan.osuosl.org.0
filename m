Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AYrJnWLsWnkDAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:34:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48430266A06
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:34:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27E4584675;
	Wed, 11 Mar 2026 15:34:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBlkdpx5DJQl; Wed, 11 Mar 2026 15:33:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E74784671
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773243238;
	bh=HYqmy7AhteoWd7btCXx2BOmJQ8zsXIG+24a7NHfSMRU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZKxPrWcQ112PcplarO04KRADHkC/9+NYGEg+NuE7FTMoW5PmDgehVOwrdppfxgnq6
	 kDSKMGWz7CoHPXfTFVUoiHsld/NjUwvhEnRalcPdMTHPd+LbSoxzDJNxshF8rh8h4j
	 F+DdpGMFO8XP3MhkdOUhaXAcfhcN0VJaSCihUnOSWVTo99RBOE/PmIQ7WY+6m0P5+B
	 olXTF4/2uycZpTdW5aUk6pSxh4bSu+0lCH486oKgP4hb3Hh/7Q6Fu/k80K0y79M3V3
	 vZQDCxy6afDdqXMJcxO0A6gxEbZykWTIRFVglMKPojpDAO0vOr7hyOJZF0FzRHsV/Y
	 PWfwDvNM6gtDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E74784671;
	Wed, 11 Mar 2026 15:33:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F3978228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 04:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DBCE0615E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 04:59:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0VtZvmumkQ78 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 04:59:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mhiramat@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 179A5615E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 179A5615E8
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 179A5615E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 04:59:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3382160054;
 Wed, 11 Mar 2026 04:59:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7C9CC4CEF7;
 Wed, 11 Mar 2026 04:59:12 +0000 (UTC)
Date: Wed, 11 Mar 2026 13:59:11 +0900
From: Masami Hiramatsu (Google) <mhiramat@kernel.org>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev, Philipp Zabel
 <p.zabel@pengutronix.de>
Message-Id: <20260311135911.ced50d67e940cdf933a98d1a@kernel.org>
In-Reply-To: <20260310-b4-is_err_or_null-v1-57-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-57-bd63b656022d@avm.de>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 11 Mar 2026 15:33:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773205158;
 bh=hs7h01zebVZ3Cw5TSlyQoCCjwzUa+l8Cgq+3i/i+v4I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=R7QWHNq5KYIpTwVo6Up5GHHSOdSE2gpk5GaKkIBbqjAR4gbzmNPFWIlQW10KkTPof
 EwepFELDieEhDwLa7MFg7ekO96kgeq0l/+LlK0SmYNrKgD9B5JFn2p8cKdN19q4bAB
 ZH5nM61a+EeP1bfo59H2leGLnAv8MA9DVbVTjKyoY75UQZCsrcqb+6U4ml2aryZAOd
 53HkEOSnemZkK807SePgE6JYJ0qIK9ypnQbQrEKCx7cEo9CjlroOKs6BchxOV0buhD
 E4Ehzc8FteV6XUFhu9KE6nGI0Pkr7s204WVgcSsEwXmzro7D3LuhuKd0AU39V1R3Ja
 2cWkRLISF31UQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=R7QWHNq5
Subject: Re: [Intel-wired-lan] [PATCH 57/61] reset: Prefer IS_ERR_OR_NULL
 over manual NULL check
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
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:p.zabel@pengutronix.de,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,pengutronix.de:email];
	FORGED_SENDER(0.00)[mhiramat@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mhiramat@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 48430266A06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 10 Mar 2026 12:49:23 +0100
Philipp Hahn <phahn-oss@avm.de> wrote:

> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Semantich change: Previously the code only printed the warning on error,
> but not when the pointer was NULL. Now the warning is printed in both
> cases!
> 
> Change found with coccinelle.
> 
> To: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
> ---
>  drivers/reset/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/reset/core.c b/drivers/reset/core.c
> index fceec45c8afc1e74fe46311bdc023ff257e8d770..649bb4ebabb20a09349ccbfc62f8280621df450e 100644
> --- a/drivers/reset/core.c
> +++ b/drivers/reset/core.c
> @@ -715,7 +715,7 @@ EXPORT_SYMBOL_GPL(reset_control_bulk_acquire);
>   */
>  void reset_control_release(struct reset_control *rstc)
>  {
> -	if (!rstc || WARN_ON(IS_ERR(rstc)))
> +	if (WARN_ON(IS_ERR_OR_NULL(rstc)))

This changes the behavior when rstc == NULL.
WARN_ON does not hit when rstc == NULL in the original code.

Thanks,

>  		return;
>  
>  	if (reset_control_is_array(rstc))
> 
> -- 
> 2.43.0
> 
> 


-- 
Masami Hiramatsu (Google) <mhiramat@kernel.org>
