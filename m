Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WF4BOQ6WqWkWAgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 15:41:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 601E4213A67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 15:41:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8A5D81203;
	Thu,  5 Mar 2026 14:41:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OKroEmFCKkvI; Thu,  5 Mar 2026 14:41:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 293D481FB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772721676;
	bh=v8KIfrmAXO/kTH2qN+MDY/bFTmG66xWFxB/HbEpX9xQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DAP9ar29WAe9XYVQktE+mGsdr9hCUuMq6MDVWu//dbZixAcxZRBq1MYNU44KO0HsG
	 o9+doXGTk4YgGYb1eee7/sCE1fTt7foFLtFGCq96M0qGOEHfuA2g3+3J95/nr5SIqn
	 XVrHyzbDtaMiSQyzrUaZB8qvxniIxZBbqH6iHv7DPDmbbyoaXOea95y1+l6X0tXF2/
	 GT7WiZG48Rf9w9vHqgYSIGc4CyzCTmQ6PUf++6zMckteT1ys5xnl8zRxTlqFMayGLT
	 TtsQQ2ZsZLvn+oe5jriAGLJFZ7NhLg4WRTFhp9s1Q0r0SK1yvuXZLHeqxRJpZbGdWL
	 fRsRcuc6rkbzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 293D481FB3;
	Thu,  5 Mar 2026 14:41:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A9A91EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 14:41:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CA0381253
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 14:41:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujUT1zM1Q4z1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 14:41:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42d; helo=mail-pf1-x42d.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C61BA81203
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C61BA81203
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C61BA81203
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 14:41:13 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-8297e0b27e5so814738b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Mar 2026 06:41:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772721673; x=1773326473;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=v8KIfrmAXO/kTH2qN+MDY/bFTmG66xWFxB/HbEpX9xQ=;
 b=VnY/dZNdlmshJgQgo7o0IuZce3qUPdnDWygRM+dqUm9c1RkxGzxUN2NCcx6+rSx8u4
 CKOdvORtvso0iQ+KTIdmBaaP/wNznJlRgtMSDztRsN5CxoOKaioGacu4ZzcWn79j38Bl
 bKAXerrHmi/If5Aq951TnaosvvIVxFTnNHDdY4gwCR4hAvH0O+FsF8qwuRPpLTvWZvIZ
 O57D/Ok5m8qd8MjeAjbFpAyS2oYdlUB2w3aumGCg/+l1xnsIbacQ17HVO47G7f1fdhpB
 hpL9VQE9M9Pnw46KiNvBVCN9ip+LC0eGGP3EXjby/Cpck+gJ1PQfuY9ZanA/ZNZ/+o6R
 3zRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgO0XmScA3hI1qYFb1olzqJ27NtN3fAP0pDW0AujtwJ5dQ+q0xA8GtSh4jRF+0Jj8oiWfmGOaRrg85CgbXKcc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzN7sZLAWA/iIECfsHIr/0WjhBO24wgC4rKGIaDqmwTvJKhHyeH
 OIsTv947JOAN5eKcwEa7YkC9J3J81TRkS7RNe5KVVp5RYL5t3n2hrq4jmnmMcoGUv4c=
X-Gm-Gg: ATEYQzyBOGTJLSum0QLM0omUvP4a3NP8udN1cofQ1HhVRQSMbXXlZZM8n1jp7MsPvzR
 Y2DMczkIsmY4nCnF10frRcfq2ZIoohySxpe9aw+16Bx/sO4Q4CNFbQBbUq11gEc3zzjZ9QpIazN
 bo74ot/0G3oGAzfKC7VkI+e28Ab8D1Wf5bpzPsdrbfQP2sJijitR4/aLyfgH5Vd341vEmsveT5w
 ZOicbgf6nyvUVa2/9/oZ6XDQb5rcUA4LMyeRn+rOEVzpd6AqmFlGnzOmDbMgPvYsCGqevEVk/Ec
 IUyJ3elgXMauRFLdKArxzdHZGtGvp5dGso60aQVh1docBATyN9l2892/Kj2AsKw8Rs1bOcvi1Dg
 L2YTcKKP+E8vtvFkmGBP4PRfztzdBt9KRGUrV5XXHdhLEMa71m1UIbxhIyWhbIYcn8mIZ1UuM19
 lwmQfY
X-Received: by 2002:a05:6a00:114e:b0:823:c59:9cb0 with SMTP id
 d2e1a72fcca58-82972b6fed7mr4994038b3a.1.1772721673040; 
 Thu, 05 Mar 2026 06:41:13 -0800 (PST)
Received: from localhost ([2a03:2880:2ff:74::])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-8299a6938a7sm37440b3a.7.2026.03.05.06.41.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2026 06:41:12 -0800 (PST)
Date: Thu, 5 Mar 2026 06:41:11 -0800
From: Joe Damato <joe@dama.to>
To: maximilianpezzullo@gmail.com
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aamWB4kGq8hRLjdN@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>, maximilianpezzullo@gmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-0-b6a9f1d336ff@gmail.com>
 <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-2-b6a9f1d336ff@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304-fix-typos-in-comments-in-intel-ethernet-drivers-igb-igc-v2-2-b6a9f1d336ff@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1772721673; x=1773326473;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=v8KIfrmAXO/kTH2qN+MDY/bFTmG66xWFxB/HbEpX9xQ=;
 b=F6cBwb4d/L5KM3g7IqqqTZTQ7dyM0GNae2LxONRQCSPdhi6U/0v6kxYuHUayPVwruc
 UPQnLahj7qErQQY7geYo8YVKYH18ehrjQHDQqnwLaXzf0cmkN1XgZT7oMDR1a4b0rGD6
 /04Zdt5gOAKzz363X3PulviXKMPj5c2rfEowU2DacwEF9gg6d/u/w8u+KYYL+A5dT4AB
 sPhTnobd17jdhM34fOh1zZrIeUKLd5+hf6TQuO38ulIX4oP9LaWdFrbdhkKuL6ZkQSgV
 ztYQfaY2RcYxQDAg31Qy+9tqUIIUMB1jV/gvJuWAYD3ueRUk4j/umFIw54c2s7gAaEfN
 L3pw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=F6cBwb4d
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] igc: fix typos in comments
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
X-Rspamd-Queue-Id: 601E4213A67
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[dama.to];
	FORGED_RECIPIENTS(0.00)[m:maximilianpezzullo@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 08:21:20AM +0100, Maximilian Pezzullo via B4 Relay wrote:
> From: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
> 
> Fix spelling errors in code comments:
>  - igc_diag.c: 'autonegotioation' -> 'autonegotiation'
>  - igc_main.c: 'revisons' -> 'revisions' (two occurrences)
> 
> Signed-off-by: Maximilian Pezzullo <maximilianpezzullo@gmail.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_diag.c | 2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Joe Damato <joe@dama.to>
