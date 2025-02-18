Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD27A3AAA3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 22:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFFEA608F6;
	Tue, 18 Feb 2025 21:18:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DodXShddJehu; Tue, 18 Feb 2025 21:18:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBDB9608C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739913507;
	bh=xjpibHSSEF25njImBVOUOzn2+A4jeVDzE8tXh3W2tcw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yTkxPKF+MlSW8waDzhz+pwhJOXKmMJDwKisznTWgnT6uHpm7qzS1YRqjfqtTHR7Y6
	 5yXnt2flDhUxQbSqUuUQndukR3cDs55NRrU9J8wF86QjzrVDrc6p9fMGzDT7UGPrfY
	 5j1tzAH+gvt4sWqK/+aJt0KNW9OuLnush0wW64sL5fC8oL/1YaJCAooxxDv1xy7OHE
	 yMjFiQ3vWjrmqHzftymqQX5O417CL1b0zq+HxltYUYxCOMyI8bmx6gRzDGAds6AMp2
	 qwRO3/xqaLqKFG2sDLXjZXF/wWhNsHaXgKP6Z1k5QEJ9jwQNjdCcaohZA33/5qOgUJ
	 7gXB20DKXV5zw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBDB9608C1;
	Tue, 18 Feb 2025 21:18:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E4CD1C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E09CD82F19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:18:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vj7nMCwXC4Bs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 21:18:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f2b; helo=mail-qv1-xf2b.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D417D83412
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D417D83412
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D417D83412
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:18:23 +0000 (UTC)
Received: by mail-qv1-xf2b.google.com with SMTP id
 6a1803df08f44-6e65a00556aso48729026d6.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 13:18:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739913502; x=1740518302;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xjpibHSSEF25njImBVOUOzn2+A4jeVDzE8tXh3W2tcw=;
 b=P1XU8ZBy4V21/EBAiQdYcuBmUMcPITYZ84sVOJOiTaec4zuNcyphgCUhCIGFGDdUj2
 kPYzRCUG9BEvvUcfwjjqSZROM05TJeuVIQBXbG87HGk/wI1LCwqm5ADXeqiGfKxtvCCr
 THlJCyAVAon32o8J3+5tYVW88pGrCaz2igdT07n5S5DShCoEgfRtb8A70d8xfNYPZqJn
 HGv8qz+IjJdoNqRK4LmlRxXXgNRqA4xGIbLAhaEBiwxZV1XR6o+iwWUF8smbJ28tTV4q
 vbMba5N5sAqFzChoV8+smEECLxeb895OObEsc7qksi7fUBqEtyWDuWip5CUqBNV+rAx0
 nIGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUF0taBrsVnRhOM1rAj2Jr4fDYqnE81/zUlJyi+NdEnMaZxkrRkxfGwcqssX3L166rgmSQHx1/1Gz4nR1Pngh4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy+sSUaYDaTv0+Ild1ivE6M/RVD4ArngD+VtGLGw68lNhQ1N8B9
 mgWzAJuiUHEwOhBSzHPck5H2h4EgvDjNKtDVch9ZLeCo0PYUnWQepfkJARaLGf4=
X-Gm-Gg: ASbGnctiVq5W6fMVw4uh96xyNpIfiUxmkdsB3Uej+Ljntsxf5VjcGAIXC23NE9gwPEX
 zqyavJ9Ej4LYoFfJvcl/3e9Rixuwb9PoTGKp8+cU5BOe1LwzRqBK2FD9XNDJEhk23CFceuLCvPi
 KOLNN80xDlxsoLA1ofE/NbZcEg4BO6rK6TEl97p6eD2OMgDFD4lot53X3U8iXrvLtroV3xuLCD0
 Cl3C84cRji7BWyChBEN51iW++oJmwR1Mp0gr5nTRtzcLRED1wVCH3n2HaLKE4qMaM8ZlOjNJx2a
 6U9aIB6c2LQQ6Piq+pappobX1didp/PN0nbOHiWHPzB3BTZyn+1jpQ==
X-Google-Smtp-Source: AGHT+IHyAAERxgU6r6geBpJiRax2TCr1qrKBraw11cLisgh07q3oJukBoKVG3mWeGYHnZ0V+R+hI3Q==
X-Received: by 2002:a05:6214:dc5:b0:6d4:19a0:202 with SMTP id
 6a1803df08f44-6e66cd19fedmr226120986d6.33.1739913502598; 
 Tue, 18 Feb 2025 13:18:22 -0800 (PST)
Received: from LQ3V64L9R2 (ool-44c5a22e.dyn.optonline.net. [68.197.162.46])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-471ef0a5943sm27784491cf.51.2025.02.18.13.18.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2025 13:18:21 -0800 (PST)
Date: Tue, 18 Feb 2025 16:18:19 -0500
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739913502; x=1740518302; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xjpibHSSEF25njImBVOUOzn2+A4jeVDzE8tXh3W2tcw=;
 b=NQBhzNnkIz5aIoZFcCTOHwNV+zmjwLoK1jjtWuQuJJy6ddTPvVBqU706fxI7tDHdZD
 JSCcrIzXnEqpoB2rp4lo+mQPHERLunxNiG206uPerRpiAwaFnRpaNqeqqd5DU0V8PzWJ
 8Itshap/5Qw9pO2uVB+4c6VL2rjIxS+fZOYaY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=NQBhzNnk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/4] igb: XDP/ZC follow up
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

On Mon, Feb 17, 2025 at 12:31:20PM +0100, Kurt Kanzenbach wrote:
> This is a follow up for the igb XDP/ZC implementation. The first two 
> patches link the IRQs and queues to NAPI instances. This is required to 
> bring back the XDP/ZC busy polling support. The last patch removes 
> undesired IRQs (injected via igb watchdog) while busy polling with 
> napi_defer_hard_irqs and gro_flush_timeout set.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v2:
> - Take RTNL lock in PCI error handlers (Joe)
> - Fix typo in commit message (Gerhard)
> - Use netif_napi_add_config() (Joe)
> - Link to v1: https://lore.kernel.org/r/20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de

Thanks for sending a v2.

My comment from the previous series still stands, which simply that
I have no idea if the maintainers will accept changes using this API
or prefer to wait until Stanislav's work [1] is completed to remove
the RTNL requirement from this API altogether.

[1]: https://lore.kernel.org/netdev/20250218020948.160643-1-sdf@fomichev.me/
