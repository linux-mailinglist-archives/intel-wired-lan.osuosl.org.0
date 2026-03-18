Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QC+oKeLPummfcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:16:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DFA2BF2A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:16:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E492183122;
	Wed, 18 Mar 2026 16:16:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P_hPLVnCHMtU; Wed, 18 Mar 2026 16:16:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32EA6830AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773850591;
	bh=Dla1BTbyc4l54nWX3/vfHTdXPEelTK/vnnV7aOlfzTg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0lPXCPVOmRS1+8pMrTaKyWZemlzbO9DZQ+WB8uUzZLppUqhi0ALZmk9USApLJbU/O
	 yd4u2hdZ9peuutoJtD2wCHXA2ZgLFz+gKrj13Rsi00sFThNdk7tpA0+JZfe1Bo+l/8
	 42biOEf2sG1k6WV4Kx62Dhn4l6TI9Kbf7VEYSnw349WUVWtZ1NW7PCjXKOGvuZMd7Z
	 apKZEZfuCAsU0+Z9HkjFFhmtsxl+Nri0h6tHXNZlgrY6ED2uDPH/2J7mo+omUeCbxd
	 d9pnCbn2B969gLXudrnNOiwir+TVOjRZ3aaExw8INbX9pLJnEbSqEziVL/2Fdl4+YQ
	 8ZOp0AKbMuDng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32EA6830AB;
	Wed, 18 Mar 2026 16:16:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DA681AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EA7082835
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:16:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ut1EzQhuQNU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 16:16:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1336; helo=mail-dy1-x1336.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5F08A822A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F08A822A0
Received: from mail-dy1-x1336.google.com (mail-dy1-x1336.google.com
 [IPv6:2607:f8b0:4864:20::1336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F08A822A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:16:28 +0000 (UTC)
Received: by mail-dy1-x1336.google.com with SMTP id
 5a478bee46e88-2ba9c484e5eso101777eec.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:16:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773850587; x=1774455387;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Dla1BTbyc4l54nWX3/vfHTdXPEelTK/vnnV7aOlfzTg=;
 b=LDgRflLTLPejFQ2SPvANG0xPd8sGWDX5VuVtQOJK3m8tl7qEAyZRYLMpyDiinN8m5h
 nmmRHyV2ZM7dXGeMcim08whitDVCjHlTNG51bCzxYEMNun2V/QJ9dpjM1unE48tGIStq
 6kZOZ3cDHctCtL3uv//KbjBsEMLCzvcDjutkl2jtfZ2guhVkuf+orrjBnQz6CbvwWduw
 s7CuiGB+UWLCWQtJcehp4puZASQzdHZ/JscnxBahTVMuf4O29RLDP8iSiVXNwIufv3jZ
 7KVr142+4NTwq0qSy4NlCX/WQcrNB/ZDlA+upM7jCcTv51WcxuoxPLlnZgnvaRYBGKnz
 t0ig==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmaLsuXBfJ3gcYEjXArxpNZw+g9ERd5XrspUugS2l3QCyvd9zgybokn0MQkkQjgzNxX/w3ECatJ2VWj36hXQc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy3P0sPMyCH86BtfoBSwS98z5umCxJM1G6+fvVBOSlJKMB2v6AY
 gqquCs6zwVTcMb5JjoSD/fcp/ZYRE+otghDaUBDKOxbRE4pCKLD+KVc=
X-Gm-Gg: ATEYQzx4KbfPHyys9yF0RQ+FdsZ/hECszrvcelMKhkgdmW0ejGhbykZwenbQQLEJ83E
 XGqb/xFASuj/dG0JSY2oIXzSlpnkQKKKY/fb1IDe8eYNCT31FTtlfNyO8al07VLU5CIRV0QUXBx
 Ulgyc9d5hEFtuypBpyybSBFANuSvd2TfLweNqpRlVxEClo7OSbMxc+CnW32Zlq/cQFw1lgmSQDg
 ZU6gZvkGlO575YHCIwpzEOKNYGYg2vs33haAyhzrlCTaZ+Kl9zT7jB33eJqbOZaAkUNNGf4U32u
 USqI0ixSaNYg1EUXAtlEPRLm6D8VkZgG4uLLlMMDW6zfZZlubTuNjMskp+o6BFci0mDRQ6UYxE+
 iIT7sgk+83xxUyayGruQLVqSr64E2npbsGsrap7ac6FIcEeroulQA45UaixW4Ph8fo0usHxYi9O
 mZ7AFw0KSXshrrCTX9dK6RInQdHTH1uYRHHvE0jz9q4TopBINWOjojlfUtzv5bAqVojfVmpH4bG
 EVm/Hgs+ZeNJWmvSw==
X-Received: by 2002:a05:7022:6a5:b0:128:d471:8c1 with SMTP id
 a92af1059eb24-1299ba3e555mr1770451c88.17.1773850586365; 
 Wed, 18 Mar 2026 09:16:26 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-129b41289e7sm3582603c88.10.2026.03.18.09.16.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2026 09:16:25 -0700 (PDT)
Date: Wed, 18 Mar 2026 09:16:24 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Stanislav Fomichev <sdf@fomichev.me>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com,
 johannes@sipsolutions.net, sd@queasysnail.net, jianbol@nvidia.com,
 dtatulea@nvidia.com, mohsin.bashr@gmail.com,
 jacob.e.keller@intel.com, willemb@google.com, skhawaja@google.com,
 bestswngs@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Message-ID: <abrP2NavLA4f5iHE@mini-arch>
Mail-Followup-To: Stanislav Fomichev <stfomichev@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com,
 johannes@sipsolutions.net, sd@queasysnail.net, jianbol@nvidia.com,
 dtatulea@nvidia.com, mohsin.bashr@gmail.com,
 jacob.e.keller@intel.com, willemb@google.com, skhawaja@google.com,
 bestswngs@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kselftest@vger.kernel.org, leon@kernel.org
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-3-sdf@fomichev.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260318150305.123900-3-sdf@fomichev.me>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773850587; x=1774455387; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Dla1BTbyc4l54nWX3/vfHTdXPEelTK/vnnV7aOlfzTg=;
 b=Z6ZRSvzLzllHal0qk1uZgCNeGuNgOAfC0k172hofQy+mXtUFHzmpAMzDFeO1+6djyb
 /UFMHzOeQiL1dKbxbO/6plw6eup+Z71snbP4BRSKLHg/kQBdcxds63enZDQKLI5QlFeo
 zZ3GKjEHwPHApHQie/t7eE3pYTj9LHlFJCvbHnt4L/XNGoeeDrpTbP5tvEpA2C3MuO4v
 vHYCUHQuq7GrTAREHio6FP/g3mb9/W0LT10pIg5Tr8PreGYuyrEH7eGNK+Whkm0TJcW6
 xRsMC9gjfGvIp7Bl3PS7quT+VlcuvaLBYZNq0OUdXgJMa8e7ZFY5WXTIujNMsyKk7RRq
 QPiQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Z6ZRSvzL
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/13] wifi: cfg80211: use
 __rtnl_unlock in nl80211_pre_doit
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fomichev.me:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C4DFA2BF2A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/18, Stanislav Fomichev wrote:
> nl80211_pre_doit acquires rtnl_lock and then wiphy_lock, releasing
> rtnl while keeping wiphy_lock held until post_doit. With the
> introduction of rx_mode_wq and its flush in netdev_run_todo, calling
> rtnl_unlock here creates a circular lock dependency:
> 
>   Chain exists of:
>     (wq_completion)rx_mode_wq --> rtnl_mutex --> &rdev->wiphy.mtx
> 
>    Possible unsafe locking scenario:
> 
>          CPU0                    CPU1
>          ----                    ----
>     lock(&rdev->wiphy.mtx);
>                                  lock(rtnl_mutex);
>                                  lock(&rdev->wiphy.mtx);
>     lock((wq_completion)rx_mode_wq);
> 
> Switch to __rtnl_unlock to skip netdev_run_todo in nl80211_pre_doit.
> This seems safe because we run before the op.
> 
> Link: http://lore.kernel.org/netdev/69b5ad67.a00a0220.3b25d1.001a.GAE@google.com
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  net/wireless/nl80211.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c
> index 2225f5d0b124..ce5f25d4c87e 100644
> --- a/net/wireless/nl80211.c
> +++ b/net/wireless/nl80211.c
> @@ -18192,7 +18192,7 @@ static int nl80211_pre_doit(const struct genl_split_ops *ops,
>  		__release(&rdev->wiphy.mtx);
>  	}
>  	if (!(internal_flags & NL80211_FLAG_NEED_RTNL))
> -		rtnl_unlock();
> +		__rtnl_unlock();
>  
>  	return 0;
>  out_unlock:
> -- 
> 2.53.0
> 

ERROR: modpost: "__rtnl_unlock" [net/wireless/cfg80211.ko] undefined!

Gonna re-run local nipa ingest locally to see if anything else pops up.

---
pw-bot: cr
