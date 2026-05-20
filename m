Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIteKeX8DWru5AUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 20:26:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EBF59628E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 20:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D36383E2A;
	Wed, 20 May 2026 18:26:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2dHlqhh8_zf2; Wed, 20 May 2026 18:26:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A429F83E27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779301601;
	bh=3gdi3fMT6kGU35jxcpi4fygQbKR2yAaoq099sRj7Amw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gy1OtH4kaUGbz4VLjngMxinNFPbp83dv7TJwXE+6PA6qmTyc43SHrbkvaH0lDJnn+
	 c+60Oml82R+aP9rK3uFgMH5gVbQgtYb+ObaiHoHe1YYWKPEnkc6i5E20ywf58EhpAT
	 LizGmBFaIxocybGWUiPI3CLhWimp5IXM92QnYKL9zELDr0AyucX3WXSyBAxq9DI0fZ
	 +wx7LaIkZSByRr9b/OFL46fq8c5aG5j8z+hPqSZdxrkEAK9bXSwmpW8XxDy4SltRql
	 o0tx+0zMUFIYPBYPkm9CnuGOr/3Q+CQXZO/ZeGIlr87U+yKSMdQW9330qfkqEClOU0
	 FpvmSCMqGIDrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A429F83E27;
	Wed, 20 May 2026 18:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 59EC0265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 18:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AB13417D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 18:26:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d4XEkRRw9rt3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 18:26:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A5E13417CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5E13417CB
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5E13417CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 18:26:39 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id DF33F600FF;
 Wed, 20 May 2026 18:26:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 902251F000E9;
 Wed, 20 May 2026 18:26:33 +0000 (UTC)
Date: Wed, 20 May 2026 19:26:31 +0100
From: Simon Horman <horms@kernel.org>
To: David CARLIER <devnexen@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Message-ID: <20260520182631.GD988238@horms.kernel.org>
References: <20260514183019.49527-1-devnexen@gmail.com>
 <20260519195734.982404-1-horms@kernel.org>
 <CA+XhMqxFmJm_fQ9aqRmwbG10+Bs8RgJ5kAff9-qtcrvgmfFMug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XhMqxFmJm_fQ9aqRmwbG10+Bs8RgJ5kAff9-qtcrvgmfFMug@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779301596;
 bh=3gdi3fMT6kGU35jxcpi4fygQbKR2yAaoq099sRj7Amw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ksr47UmhVHbr5BOqe2H0UftnrtEY2bK2sTK5b60EB1cwBxR+X89rIMzpZmDdMwGg+
 H58nZRNvSArBUJcsZzafOq61zm6PY81SYrJ1aa8WtnUDuxdQ1RtrG1tcAmXECKYxkA
 zxqbIlFV2UyzOFqvcypmt5tPDc8QUnX3BGQC6nWFwwY4d7p2HyCKYAHDx5VgIXg5lD
 4fqHaXlIGB+C35vrjTcOtaPGAGAnX2B9o/6dDg8Y2FeOStvpBhuzDRbmylyLDiGbtg
 kGqqYmekote8d7TgLQ9iOF2i91DiNE6l8Nn6Yrm8ZuS+HZobInqALIYvmLLUZGDFDC
 WKu3g3AukS9GA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=ksr47Umh
Subject: Re: [Intel-wired-lan] [PATCH net v2] idpf: handle NULL adev in
 idpf_idc_vdev_mtu_event
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C9EBF59628E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 09:19:23PM +0100, David CARLIER wrote:
> > This is an AI-generated review of your patch. The human sending this
>   > email has considered the AI review valid, or at least plausible.
> 
>   Thanks for relaying this, Simon.
> 
>   The scenario this patch fixes is sequential, not concurrent:
>   idpf_idc_vport_dev_ctrl(adapter, false) has already returned and
>   vdev_info->adev is NULL by the time ndo_change_mtu reaches
>   idpf_idc_vdev_mtu_event(). The original code dereferenced
>   vdev_info->adev in device_lock() before the NULL check and oopses
>   deterministically; READ_ONCE() + early-return resolves that.
> 
>   A truly concurrent idpf_idc_vport_dev_ctrl(_, false) racing an
>   in-flight MTU event is a separate, pre-existing window: the original
>   code took no reference between reading vdev_info->adev and
>   dereferencing it either, so this patch neither introduces nor widens
>   it. I haven't constructed a concrete interleaving against auxiliary-bus
>   teardown and have no report of it triggering.
> 
>   Happy to post a follow-up bracketing the handler with
>   get_device()/put_device() if you'd prefer, but I'd rather keep this
>   one scoped to the Fixes: target.

Hi David,

Thanks for the clarification.
I agree we can treat concurrency as a separate issue.

