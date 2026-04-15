Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHS8OmQD4GltbgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 23:30:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFDA4082EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 23:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89E3D605DD;
	Wed, 15 Apr 2026 21:30:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jkio1x3tCoAf; Wed, 15 Apr 2026 21:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFE31605DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776288610;
	bh=VBirzWvSR4/3IaGGAFPOCNOFJSU2QwGIXQOrszvzBn8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9r/R7IGCurKYZBZ7TLESjzPjVZFEpOHqL/eDGOjXhv8uAyOIZ45WLbqkZiVrp9UFv
	 LgMj7tnZ0kQAnPb1fonvtDnYHHjVovEAVr4UciRX02ZRzkOI6Wpq4Pbui9qBsAoFeA
	 gZohK6RZNGA1E5zqdAS3ogN/VyYTZNVfXfgN6H4bmFZF3KdgfJm0v27PKf7RfdOtaN
	 dBgAdx2fmpIAtj1ndOyXDB4rUkeClEwlE19ZC5b05Lo2IjSFMO3/dH46563amuytj+
	 LGJy0btyak23kNLFxLEmTKk5n9iKTBJQWRLXW9j7MP5Q7sOH5nAyla0opoRqwDtkq8
	 m8k722B2vCr7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFE31605DE;
	Wed, 15 Apr 2026 21:30:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AB97375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C63485097
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:30:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wl3yIqcSG9AN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 16:30:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12d; helo=mail-yx1-xb12d.google.com;
 envelope-from=michael.bommarito@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 670CE85095
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 670CE85095
Received: from mail-yx1-xb12d.google.com (mail-yx1-xb12d.google.com
 [IPv6:2607:f8b0:4864:20::b12d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 670CE85095
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:30:58 +0000 (UTC)
Received: by mail-yx1-xb12d.google.com with SMTP id
 956f58d0204a3-6501418152cso6737192d50.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 09:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776270657; cv=none;
 d=google.com; s=arc-20240605;
 b=EUDmWkiLmZCf+wXIy0av/m5a2qUMZGK5wviwUiuqKaRdk7/VjvGJPRTJFOT+qHznnc
 cXR/5RppANyqy72VrrbZ6PGvJU6kukhJ00oryQuoc6HQDjAabESU83H5M9KXZt4DSFta
 hGzivVkKOUebwKpq61cNMN2tTuLT5lxfO48GkjdxlzAMeq9hOzlDF7NPVPDXQ83rrdk2
 DiItREHB3q7AabWQz/OSnhF/nu29rZEoLj3Z3mQzCz1MtVpwqpysBsspzZM++MiEu05D
 yFJjTuZMTLaugR87jm8r/QITh2Yb4+IqgkE075lxJl6zLYo4XrF/3EODu1GtqmoWA0ml
 3Pqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=VBirzWvSR4/3IaGGAFPOCNOFJSU2QwGIXQOrszvzBn8=;
 fh=lsPaxwfGYhxG0yZfOfUdtc/3yVweqIJcNW7pBuqD1R4=;
 b=GAkSZKFM+IrxxL5K398/j5hkd7DJ2rCqPKJCZw6p2lX7Drt/rI1XC+OUfq0Kycyz/E
 8NBDrw3rfO8vjTIhM+M0OcFKWn8B9filyrgxgChHvLYvByn6C++7QX5L3D8ZFe0/0cE8
 6G31Jg8GG5B57GCkazUa2I1UMpMDVhiB9u7AGFkvjbM6RxhG8Iy+sM6jkh18atOY6yq3
 dMs19agq8dxsAMwqdQAxqit4N1DZ3pvwtEIeWhi2RJ0CcnJWFX204gj94FQzlOUwoGtJ
 cBHgoFL7jG8sUXjGepYUve2H0bwcGzx5/XHPsAEm//x/GKJOWk4U6daouzJkUrMwflwl
 qFvQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776270657; x=1776875457;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=VBirzWvSR4/3IaGGAFPOCNOFJSU2QwGIXQOrszvzBn8=;
 b=qc7+/A8u9bFi7iSydm4/4gty54g3w6SsMdsZ03JJnZ6UcLYjf3BIWcu7ZJGP/+L5HM
 YfkbnE0GCcb4k296EIVzG2pXXs6iobnVRgaPV5Hv5Bs86Ihz2ueaW7DKnv8u7alcKUaT
 GJoyhjYuLNh728yzDxQJohF7smrMPRTS6k3TokAb4cFfYrq876cTPPa4TWZUIOYFaXaT
 lgWB/bQtUcuQb2hXeXA7TIiCan7LvRWPGHcZP02DexCEQ+fQLBwWHDUSs6jnYVRWPWES
 rykVjfx1XXvfS/8pBofOS3EPXdScWN4OKtlFIX0K84hzb196kycAjWd9VD0FR64SNqrS
 Nvnw==
X-Gm-Message-State: AOJu0YxFwRROA7bclkNwHChcC/79hPC/u1xV4zOfCfO28QyJnjDaSFaL
 fDHfaT/T8l6Cg+UENoCvQzQlXwYVEx4xuMz593bc8/Pujk1NJKC6OK4SV3kVvQ8Sh8kUYOqr3jY
 texW0NR/gHfVxJaOgcbX5Tb4tDTY37D0=
X-Gm-Gg: AeBDieskjmeZalP9XSyWCM/owOZj7mJJdhWsXLODId+CEE4mGliHB9KukdgAVUkeVHh
 6rIIRO0eEnXmw0isM22oaPx1nV2LoOjEXWSNoib9nOFfTcJyLLF2iGoZLPlk0Fxa2wuiJSyCXt0
 Lpjcbq9reCAfi6sC/JFlWvtNZ5N746J2jze1Kil6BSMo56HhtJkMrDNrftF/pce2wSrgrxUstKa
 b4zXKVSFwOBQNKe4RHsn1QEcgDj0aKFjQ6QbLyF0pz0a6nmXMyDkDfdkCvTsV8QmJKL9Yj+QnCI
 V/dKHgurourgOJKp9lRV0L533EcmzaYjkNq/++CU8vl5ORg=
X-Received: by 2002:a05:690e:1699:b0:651:bb90:714d with SMTP id
 956f58d0204a3-651bb9071f9mr15120885d50.32.1776270657069; Wed, 15 Apr 2026
 09:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260413182427.298513-1-michael.bommarito@gmail.com>
 <20260415161720.GN772670@horms.kernel.org>
In-Reply-To: <20260415161720.GN772670@horms.kernel.org>
From: Michael Bommarito <michael.bommarito@gmail.com>
Date: Wed, 15 Apr 2026 12:30:45 -0400
X-Gm-Features: AQROBzBJ7VPEuVDr74gDATAW33m2tupUjmRHD1ATtbA3VSrDaDdMAX-O608I1JE
Message-ID: <CAJJ9bXwQyd-cZ0h_FCNj29GZYpXyCBu444VhLGLZkf1bWYqoKQ@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, 
 stable@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 15 Apr 2026 21:30:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776270657; x=1776875457; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VBirzWvSR4/3IaGGAFPOCNOFJSU2QwGIXQOrszvzBn8=;
 b=dwtQD1rGHdtmFLXdTQQuVwu4nsNBNlRK7VtXJNjUqw/YzC/ytN/88q48XM+gWA5Pj+
 pSMeQkVHPOso7K0elgutjKZnfFU6q4iWZ9nO5r0tLpU9F7F0XQO6iQJ3sQuXfRIlVwVC
 z4UsZDoxHt8FXTDLfGi5vYzrSMFEi0MwNNHB+mPM0zQHv1qydUlZzCvUMavY5trwGJ/q
 9VxBxi4lKHD4qcB8fj8UKvUciIBt/BRMaFCAFPl8yPmJjBGVaMzldOsLWIeppmkFuu4w
 HWNcXr/fDOIhnuMGTtm1zp7S4tUgPPI8NcYmJp0VbXP5zOOnVZI8690NIoddH1e9RQo5
 LTzA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=dwtQD1rG
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbevf: fix use-after-free in
 VEPA multicast source pruning
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[michaelbommarito@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michaelbommarito@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6DFDA4082EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 12:17=E2=80=AFPM Simon Horman <horms@kernel.org> wr=
ote:
> Sashiko flags a number of issues in the same function that
> do not seem related to your patch.
>
> I'd suggest looking over them if you are interested in
> follow-up work in this area.

Sure, I'd be happy to keep going here if you're open to more hardening
patches.

Two Qs for you:

1. Do you want smaller patches for each or bigger method-level patches?

2. Anything on my list below that you would *not* want me touching?
I'll combine with anything I can find from your Sashiko items

    1. line 104
       rule:   semgrep bug-on-in-net-code (CWE-617)
       match:  BUG_ON(!test_bit(__IXGBEVF_SERVICE_SCHED,
&adapter->state))
       where:  ixgbevf_service_event_schedule()
       status: untriaged

    2. lines 1219-1225
       rule:   net-drop-continue-in-loop + scan_drop_continue_loops.py
       match:  VEPA multicast pruning kfree_skb + continue (UAF)
       where:  ixgbevf_clean_rx_irq()
       status: SHIPPED as commit ca62ac02b30d (this patch)

    3. line 2769
       rule:   semgrep signed-int-as-size-param-kmalloc
       match:  q_vector =3D kzalloc(size, GFP_KERNEL)  (signed size)
       status: untriaged

    4. line 3452
       rule:   semgrep signed-int-as-size-param-kmalloc
       match:  tx_ring->tx_buffer_info =3D vmalloc(size)  (signed size)
       status: untriaged

    5. line 3530
       rule:   semgrep signed-int-as-size-param-kmalloc
       match:  rx_ring->rx_buffer_info =3D vmalloc(size)  (signed size)
       status: untriaged

    6. line 4114
       rule:   semgrep narrow-accumulator-overflow
       match:  i +=3D tx_ring->count;
       status: untriaged

    7. line 4189
       rule:   semgrep narrow-accumulator-overflow
       match:  count +=3D TXD_USE_COUNT(skb_frag_size(frag));
       status: untriaged

    8. line 4192
       rule:   semgrep narrow-accumulator-overflow
       match:  count +=3D skb_shinfo(skb)->nr_frags;
       status: untriaged

    9. line 4695
       rule:   coccinelle cancel_work.cocci
       match:  INIT_WORK(&adapter->service_task, ixgbevf_service_task)
               with no matching cancel_work_sync on teardown path
       status: untriaged

   10. line 4752
       rule:   coccinelle null_after_free.cocci
       where:  ixgbevf_probe() err_dma path
       status: untriaged

   11. line 4795
       rule:   coccinelle null_after_free.cocci
       where:  ixgbevf_remove()
       status: untriaged
