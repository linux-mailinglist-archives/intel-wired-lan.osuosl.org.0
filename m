Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMyOOoYUvGnbrwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 16:21:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD232CD9F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 16:21:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E14CA83B5B;
	Thu, 19 Mar 2026 15:21:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wARYolDGs_bL; Thu, 19 Mar 2026 15:21:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E9E584005
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773933698;
	bh=4fUFXPph0d+U/6GDmGbgLZ/FXBjYuxpYsgD69WTKZEc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QM520q1+LOPAugUcBhy+X1Qnf6DsLDhsKL5ZXvb1ZNiI+iSZ2KNh2lG0L+U6IFgWS
	 kfJ81i5uA9a9D7B0aw7y8Mq2HoS/xU+swgdZ3L7K/ZZD7YVOcx8Z/sw9CmP3GgfT+9
	 L+MasDVdU5cezMIp0tzdKPg9eU5rXwIBO7Jw9B9gt7cqZTOW9l/pEBK6dxGVYuNNsO
	 YMjSviQc6aqkClLEFL1SpFa+0nKLQorrlkaLs0ZgPPJniMIIafe6CYjjh5KUS1YMQt
	 uVzxyNMwYDrs4oB30pSnyWsDuOaiX2vRHkM0psNrwoL3npiYSAy9D7gQrqswjBk5sF
	 O8B0B6nG/vf5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E9E584005;
	Thu, 19 Mar 2026 15:21:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A322F1BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 14:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBE3A401D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 14:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IudHm0kgIW4w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 14:13:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=195.135.223.131;
 helo=smtp-out2.suse.de; envelope-from=jack@suse.cz; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0E58E40063
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E58E40063
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E58E40063
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 14:13:54 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 233AB5BD4B;
 Thu, 19 Mar 2026 14:13:51 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 14B714273B;
 Thu, 19 Mar 2026 14:13:51 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id TmUEBZ8EvGlPZwAAD6G6ig
 (envelope-from <jack@suse.cz>); Thu, 19 Mar 2026 14:13:51 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id C850FA0B32; Thu, 19 Mar 2026 15:13:46 +0100 (CET)
Date: Thu, 19 Mar 2026 15:13:46 +0100
From: Jan Kara <jack@suse.cz>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, gfs2@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
 iommu@lists.linux.dev, 
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-btrfs@vger.kernel.org, 
 linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, 
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, 
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mips@vger.kernel.org, 
 linux-mm@kvack.org, linux-modules@vger.kernel.org,
 linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-phy@lists.infradead.org, 
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-s390@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-sound@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-trace-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, ntfs3@lists.linux.dev, 
 samba-technical@lists.samba.org, sched-ext@lists.linux.dev,
 target-devel@vger.kernel.org, 
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
 Jan Kara <jack@suse.com>
Message-ID: <ol2d7c5z7yfyuwo5tyfxurgqedruhr6bzmuv37bx5phhrmmoyh@4zjspbtexid3>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-12-bd63b656022d@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-b4-is_err_or_null-v1-12-bd63b656022d@avm.de>
X-Mailman-Approved-At: Thu, 19 Mar 2026 15:21:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1773929632; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4fUFXPph0d+U/6GDmGbgLZ/FXBjYuxpYsgD69WTKZEc=;
 b=qJFdgiFwZof840urwELAyJUPmqr5R5KSb1T4rwYuc7bb8XNbCm/kv+M5FkrKSBEOM1bZiu
 /MGyuwm/OFnFKmJm/t/Uz/+GbEcAEAQCMtEWioCbgwKOh4DWZ0qNVZOg9g66xDY+m4U+fD
 w9Xqoe30eNI+goFz62hSwZMzWorThdA=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1773929632;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4fUFXPph0d+U/6GDmGbgLZ/FXBjYuxpYsgD69WTKZEc=;
 b=4jpB79ycXSQsxOkgtV3HKUa6Dm/vQ/wRir8pmFsiYnB6qgK3LbPe12RtulXb4tol7/E3ij
 faYPra8B4GTfZjDQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1773929631; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4fUFXPph0d+U/6GDmGbgLZ/FXBjYuxpYsgD69WTKZEc=;
 b=OrcSAEzL/6c4UDB40dZmtUkHL2UKN/t418W/3/WLfRE3VUYtttdOTA1LBRs2LexriSZBXr
 IUCLAcO9QxQoLCNXA0PSitgNb7BC5cuH9t+EXroQLbXGhfbC1mTChSWj64vc6V41FfYy8R
 mio6pb/J12e+5TPnOnmBoDRex83ce1A=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1773929631;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4fUFXPph0d+U/6GDmGbgLZ/FXBjYuxpYsgD69WTKZEc=;
 b=HXVk5/yPJtxIjyky0dtujMNvVHE9KONXRU8D1O6wb4LBxoqwDaKPYOnkGEkCrYDJmYyVOA
 klxEA++oJw6AsaAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=suse.cz
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=qJFdgiFw; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=4jpB79yc; 
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=OrcSAEzL; 
 dkim=neutral header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=HXVk5/yP
X-Mailman-Original-Authentication-Results: smtp-out2.suse.de;
	none
Subject: Re: [Intel-wired-lan] [PATCH 12/61] quota: Prefer IS_ERR_OR_NULL
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:jack@suse.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[avm.de:email,osuosl.org:dkim,suse.com:email];
	FORGED_SENDER(0.00)[jack@suse.cz,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[suse.cz];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jack@suse.cz,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: DBD232CD9F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue 10-03-26 12:48:38, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Change generated with coccinelle.
> 
> To: Jan Kara <jack@suse.com>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>

Thanks for the patch but frankly I find the original variant clearer wrt
what is going on. So I prefer to keep the code as is.

								Honza

> ---
>  fs/quota/quota.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/quota/quota.c b/fs/quota/quota.c
> index 33bacd70758007129e0375bab44d7431195ec441..2e09fc247d0cf45b9e83a4f8a0be7ea694c8c2a1 100644
> --- a/fs/quota/quota.c
> +++ b/fs/quota/quota.c
> @@ -965,7 +965,7 @@ SYSCALL_DEFINE4(quotactl, unsigned int, cmd, const char __user *, special,
>  	else
>  		drop_super_exclusive(sb);
>  out:
> -	if (pathp && !IS_ERR(pathp))
> +	if (!IS_ERR_OR_NULL(pathp))
>  		path_put(pathp);
>  	return ret;
>  }
> 
> -- 
> 2.43.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
