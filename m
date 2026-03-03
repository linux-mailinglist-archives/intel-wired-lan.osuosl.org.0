Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGdNCixqp2l/hQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 00:09:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 998D11F845C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 00:09:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 489AE606BB;
	Tue,  3 Mar 2026 23:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yQbyDkERHC_j; Tue,  3 Mar 2026 23:09:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EFD0606BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772579368;
	bh=4F+wvsg+rCfB+Xgc2i771Wn+E0HEDYAO2XFtN4tcCqo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=23+tZcufkUv4Iihshup87NFQ+6Zq0APB8dY6zY0ICQy+0lIiIIqeVoTYBt7NGkGWc
	 C3bDMI4TV4+7Fj4ocXW/uqBhBzDLjwO8u2/bTr969hDYU5n6sKImiiA+XCnq2pHWks
	 k0ZS8auxfdTJ879SGKMe1bOSyYk+96VdxcctS2NXqKjVmXJFxniXKcY4MVzJj7zpEE
	 6HpzlEaszTs5wqtzAyRsAdr9OAY+G+Et8VLwsYUS2FoNxMxv3mqknp6NMWY9+eve9v
	 I7jOQkNFpEJcRZCkQsc9VvXd5DmHZgM0Gq90VPNjGEqnsWHGm/tdaJPVrKla1cOe9o
	 uUH92k3vR1qqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EFD0606BF;
	Tue,  3 Mar 2026 23:09:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C2CF71EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 23:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4A53402C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 23:09:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Abkg7Zw0i6lO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 23:09:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 13E56402B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13E56402B0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13E56402B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 23:09:25 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-3598b95ad7dso2064605a91.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Mar 2026 15:09:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772579365; x=1773184165;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4F+wvsg+rCfB+Xgc2i771Wn+E0HEDYAO2XFtN4tcCqo=;
 b=pUjftznEF2X+ySVKv1fQdG9vwUpioAU9Byi+Pqx0957+gWGW5oMjFCRUWJalDFEFOI
 w8EM7t6sKmROyvGIi0X69QKzqbsQ8JSdDJDl3MGnsg89gqy2/9084PATUpixKxZIkL3k
 qmRGr+WAQnph1iggOseVZyOh/aHitLNEvQes5ct80PvOzp9gFTAnfuEPHVAfQ/e5fbg8
 a03W+GaUGackOSy92vqxy4LJBNAob+FxRpOwU3KKomSKJu6z4d6xKCxF3imcV2auG5f+
 XFObOb/TbI8PMGlN9CBfZlwUuwBz6PLqmSefZqDbpNk6yLG+1k8qVGqQaNUYjQ8nWdoU
 rN9g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWmz/Huz3jFCcFsWQKlcqJ0zaYxEuJGQxTvpQpdwIWVis9ERrgbKZlcvrCTxcWM2EUw2phGvXf3XrzU5Ycr2Xg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzZ1BiUf9zpDv5cghFk9d34SKAEuj3zLpnw83W6tVm5yamoy7zC
 8LKqwyk+jDg6Z1A7KXGBikPK24y/4CoXKqVVdDuJC9NOaHp60uKgxmIy4yPOpJ3I3VGPtRVOd12
 MyPrtxuM=
X-Gm-Gg: ATEYQzxqWusj8OPsMX9ieySpsQTFG7ttjMICJy/nJzhv6V/A5LzGLfoZHhjY1PeSxpu
 UNNhFolpGM/Z5TesGftucINzd1ZRTGT6sAW92UVfnzVA/wkHvlEanVmmR+iyCvUoX5WJ1snz7GO
 Mm/++QiMuquP4wHx/0E5luhU44irPi17g1DvqBWP3lGEmECkSDR/eSg6HIUfbuNX2BELxtEfhqW
 6BLPzBKlbzD5rdSwPJjdegDnk+NHjyvmEdZrgvgB9V7i7dYFtx0/EUif0BOiLvjP5FZfRL1kNOP
 cXzUoJWDt2RxlTX3INHQYOkZhXg6WvN+KhciXq5uk9LpEy1VxeYB5YVrOLmSRCDhIOKO986YXty
 TQMEqtqiWfYCHhq3TBnJNnyFlX+hSPEs/4P9a9vG1SpJ4FsjB+L9vFObQ0ZlnuJpGLvMybWQsDV
 tMGl+Z
X-Received: by 2002:a17:90b:3e4b:b0:33b:be31:8194 with SMTP id
 98e67ed59e1d1-359a6a7d267mr67210a91.34.1772579365311; 
 Tue, 03 Mar 2026 15:09:25 -0800 (PST)
Received: from localhost ([2a03:2880:2ff:58::])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3599c39db5bsm3340289a91.9.2026.03.03.15.09.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2026 15:09:24 -0800 (PST)
Date: Tue, 3 Mar 2026 15:09:24 -0800
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
Message-ID: <aadqJKC8MagHA1de@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>, maximilianpezzullo@gmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260303-master-v1-0-f180b1ad98b5@gmail.com>
 <20260303-master-v1-2-f180b1ad98b5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-master-v1-2-f180b1ad98b5@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1772579365; x=1773184165;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4F+wvsg+rCfB+Xgc2i771Wn+E0HEDYAO2XFtN4tcCqo=;
 b=irTT99uZxsuyYgKWpDBpcCzZuSaZCEu5z0RJYYTuiulsXlOM8R0qDrMiIMRVu1KT09
 mZj/8TyzNUpvKnKBL+HHVb0nZ8Mn+rzOGe7ocxQFxD7oXHgBJTVZef6N42hyO+KZ2cwo
 HFzCVGATg3M58ssgNkO8xU8I2snoPZlN7RhwF8k8+KlGuayptccvLNFu4K3u3g7EHDFU
 o5knJwE/NuwqQY4YLdK8WzpG2bWTj42x5OyT6IUGv11Xy9+CV8Mq8/hHlg3u6bjpLQPZ
 x5521W4hL76fTkEhFFwgdi/Y2O2lfZcq/BPHrYm2WGp5jkiV0SOXn8JmfS4Bs1SspKxT
 OsDw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=irTT99uZ
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: fix typos in comments
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
X-Rspamd-Queue-Id: 998D11F845C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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

On Tue, Mar 03, 2026 at 10:38:21PM +0100, Maximilian Pezzullo via B4 Relay wrote:
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
