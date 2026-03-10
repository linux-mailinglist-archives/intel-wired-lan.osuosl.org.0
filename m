Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDROMpk4sGlbhQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:28:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D802537E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:28:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E2266064A;
	Tue, 10 Mar 2026 15:28:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kUBQxS4QsNtL; Tue, 10 Mar 2026 15:28:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 862046060B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773156501;
	bh=mm6hm+LHoMGo5Ew01sq1dP9YSITnoqIDxYFDqmtgvh0=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=1FabsSlMs9W4kZl53t29kXO7+yBWt4fSHeN6YMNafjG4RY+7u3uMIAK8gyRUJ51Gx
	 wxE/qUQGQXU7GwWwyOqMIsrKio8m0Z5qKUByILZiintk7CFK/RI7Jua98gvsQHf4df
	 VkLCOwObdaBYu1Z1NFDQrF2HGD1GcBXS5vVKNk846Dd/PW2AVkS+5UVAw+VvUmXpDo
	 7oekbzeWDLeWKq2+horjwBCpWMqNuX6vnYNOdMvlL7wGLAhTISSCY7vstiR7bnl7Kc
	 sshz/EyjVEuoST7j1ZwudoysucaCWD1W4jaH889alKoauJBs86bQDU92cEVlYk97jS
	 /hrUDUoojujYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 862046060B;
	Tue, 10 Mar 2026 15:28:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 88067201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C38983F0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:54:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rQzASimhmZkZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 12:54:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=praan@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D29FD83F11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D29FD83F11
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D29FD83F11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:54:08 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-2aeab6ff148so1475ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 05:54:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1773147248; x=1773752048;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mm6hm+LHoMGo5Ew01sq1dP9YSITnoqIDxYFDqmtgvh0=;
 b=gTYJnJCehKvLzhAC3iITgYF5pDzyagLc5c/KISFA21Hywz8tuCNSmMv1Nk2uEQtU3x
 gOebIfd6nWAFXJf0uQmcmQoRHyqxHwZ66rxJfwtHeqFQgZzxQVuJ1S9AokITABCsQOki
 VKkqiTKP0tIRdMxS7FiMLV0KaQEZDUS4gJAmOntTdZThMzcpYDL46bTJqCF7sTyMHVW8
 LITXTvGD4hrztLMv+kqvXrXYqzFsN2+wtnp8gjE6Qq54N3TmaLEzJcg2gL2xnUkDOtoZ
 SSDY25uMO7vFxgP1ld8Z+BrSc3MeTwGK0sRUz/YFsHzUu+ABsU644gOFZsO7Nr8pgT54
 H2Dw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvp3N3W+87TlA3cQjXfYnT8j6QAdSR2OSQeh3hmih73ag36RvoVi5AYUdkJxkl39Z346BNSPNY83ZVUxfb2Iw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy96AmRENbXNVg83boDXF894AyAgurS73khaig6Gi/zeqnS2rPT
 qet1Zn86EUiMypLc11ZfwfGwi9nUS9gQSaafGL4QrifJZsK5lRxZfIqbeHG0SwgaTQ==
X-Gm-Gg: ATEYQzyLFjpEGcyI5KE35T4A/7frkwu+57b4JJ1m11a5FO6mlnR4X6zS60VaSkd2vqn
 FvreUg5TpbKg48tiIhPA6dNQbM+Vvga64kbwywHDiNzj7hOTpn88NLu1N1JCzTCzGqHtxa9+jSd
 eZNOUf6avrGPLuCHsS/CRXSCi2et88+p25uQzqzbZOE2daALuVwu7G9EZOFklP7k48BZ2n4RN9X
 kEhOWP1ieJMD8VKMx5pDfOriZLuByq+RlWbhX4koxlA3FWJXfefyLf+Xj+nTBn3MC3Vidj+Vese
 dIhw8xuOHwKw/3cVtX6TCK7qOL9UeDPDDhuS7svuXmS4Wli9wTY/m6P4gjdF2f72T9n6+ErLEgw
 7BspyJG/5nBCWKUgovgjamm5hJtojtMuDJqF4u3t+gLxtZp1qg97LToUBWN5dMmOu8XtDHhhtMp
 jX/tGoUw1TjGyalvQrhRRqXMiHB178cBpP7fRJGOWbgDId0UVJAlNL7i7b7Q==
X-Received: by 2002:a17:902:ebd2:b0:2ae:45bb:bc4e with SMTP id
 d9443c01a7336-2aea30ebe48mr3008685ad.24.1773147247400; 
 Tue, 10 Mar 2026 05:54:07 -0700 (PDT)
Received: from google.com (10.129.124.34.bc.googleusercontent.com.
 [34.124.129.10]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c739e0cb73dsm12445679a12.11.2026.03.10.05.53.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2026 05:54:06 -0700 (PDT)
Date: Tue, 10 Mar 2026 12:53:54 +0000
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
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
 Alex Williamson <alex@shazbot.org>
Message-ID: <abAUYvx6VEdSmInm@google.com>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-46-bd63b656022d@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-b4-is_err_or_null-v1-46-bd63b656022d@avm.de>
X-Mailman-Approved-At: Tue, 10 Mar 2026 15:28:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1773147248; x=1773752048; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mm6hm+LHoMGo5Ew01sq1dP9YSITnoqIDxYFDqmtgvh0=;
 b=xIQdaHpswHSWWYjb1XJYn4f40EWB6DR/Hix6At7mhsuGdgdldBZOFrfWp2P7e/ZHJ+
 h489Grdd/hrEigX+wZdBy5t02fDDY1rjJaK/QMS6R+utpArTgaRtK9bt3aHcCmrY7F+m
 Z1DieTcP7jCLx/zwcz3p5eHuUlH8WVUA4Dc27A8foqANg5if/BglDIn4iVezmpWg+igl
 j+PAbPWPsdGsHnbjBdEPE5b0w3uFrsL7jpPFuir5+RwQWx0OxJpDFsjZGfbE61OxZGYd
 czd+kg0bMEWPQ6Co9Ha9/3MQsb3fmxOp3iXFaisMYSUog05lw4CxYw2mfnJPS5/dwOky
 SSXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=xIQdaHps
Subject: Re: [Intel-wired-lan] [PATCH 46/61] vfio: Prefer IS_ERR_OR_NULL
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
From: Pranjal Shrivastava via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Pranjal Shrivastava <praan@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 57D802537E5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:alex@shazbot.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[praan@google.com];
	RCPT_COUNT_GT_50(0.00)[55];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 12:49:12PM +0100, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Change generated with coccinelle.
> 
> To: Alex Williamson <alex@shazbot.org>
> Cc: kvm@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
> ---
>  drivers/vfio/vfio_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 742477546b15d4dbaf9ebcfb2e67627db71521e0..d71922dfde5885967398deddec3e9e04b05adfec 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -923,7 +923,7 @@ vfio_ioctl_device_feature_mig_device_state(struct vfio_device *device,
>  
>  	/* Handle the VFIO_DEVICE_FEATURE_SET */
>  	filp = device->mig_ops->migration_set_state(device, mig.device_state);
> -	if (IS_ERR(filp) || !filp)
> +	if (IS_ERR_OR_NULL(filp))
>  		goto out_copy;
>  
>  	return vfio_ioct_mig_return_fd(filp, arg, &mig);
> 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

The cleanup alone looks fine, but I'm not sure if the maintainers would
be happy about the tree-wide spam, since each patch might go through a
different tree. I'd wait for Alex's preference/ack on that.

Thanks,
Praan
