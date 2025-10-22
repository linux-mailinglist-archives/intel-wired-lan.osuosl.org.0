Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED75BFD317
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 18:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7932C408A0;
	Wed, 22 Oct 2025 16:28:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nDq6rxZP27it; Wed, 22 Oct 2025 16:28:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C72CF407F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761150517;
	bh=9vWDPEez/Pn/tuHveZVqlQ/l+YWt3ZfTtD2FdR44qSs=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=InPPlUjfihuHr+mUl+3u1OgOKTykTvuRTpfvFLwtMlHcTN/0DiYqWxn4Ir92EJtZv
	 Byx/fiELQc2d7XGigMbpXW4yNIwgYWeu6FgrBXG14RrcnvKL4fPBef02H9qBqd8B9H
	 TdMKtUlg8XmEryo6ZXS2/n3kre+QtOb1mXig2ALbGd2mr02rtXmtWAlw2Q/Qg92hoG
	 JjCtmvmqXZmqHS24L3yhjAeFNVjEE3qQz8xPZDwVqB3sJORjxe5VUqGaEApZj18fmM
	 lRcnV3ZtRTGD3pKXnBNWi3xhJVcvw53C6wlaUCd8au4tXOPslRNI5YhWDBrZZpEOG/
	 r9qsElG487dtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C72CF407F9;
	Wed, 22 Oct 2025 16:28:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 90DE9DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82C5283CFB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:28:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r6U4H7oECwK5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 16:28:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1033; helo=mail-pj1-x1033.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BC03383C7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC03383C7C
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC03383C7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:28:35 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-33be037cf73so5694255a91.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 09:28:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761150515; x=1761755315;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9vWDPEez/Pn/tuHveZVqlQ/l+YWt3ZfTtD2FdR44qSs=;
 b=i4WTJDe1KOlnWADaz0UG+uCIC6xzjEXZRfzE0P4vWxnhr14KnQ/VHTmw3HEGggfCZE
 EcYFb6zBsUQTl0mN/TIl+AzJGRnHf/ttQNEgnb+Q6XeqnhLVy78PL6IBcfYRIvlu3kHT
 7RvfVcYTvFg82BeiYIvDzBv6MvawhJh0PUjqN1UrZiXAGM9MFNc1F3ASmvQSYd/5isy7
 0sVqE0VC4u5JGJCjP3KO+XseWSlTrdvufY2wkFUw9eycncb/KsImr1ggqvPNkOUI13Vq
 wxTmXM6Fd0ZYvmw6TTeKG4XQI1s0y1WztNMFD7hXojAsM34+R40a8kyY6E3q/Ex/RYaH
 TXlg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiBByQimxjzZzH11r1Sbg3v7anDQi2Ay+2P/GVSj1LuKCrlV6wiGDIXqHyQpQNkIZ3QC3GU6tgRBw/zoJKuQM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxryOsj4cBg5oDdZUKXw8hpKoYuHRMt3lbD+5KF5Ejw8m9yJ9YP
 pATcPdndTeNd/M5N/uQC4NIIFUC1FmniVGfsWfmuY+iqG+D1M/5Bm18H
X-Gm-Gg: ASbGncuk6F3eqR+RwotkItMxTKZJcv+402GupwIjS8IKOsDEYbktvLF+ciJAo2ESUzZ
 97NIPCv/h3z6JRVIKnguZnN2Xhiyfvs4jS24Jc+xGlyqhrNWwmkDOWV1PcUKMYxFiHZAV7+fjOC
 0DCItvoXDD87mwvCbR2rqU2kvnFzQCwpihsTGLH/7CJhvVUH7KIdmkaezB6drgYSHrvdmIAdutE
 9AUhWos+nXzaPedFvAMJxjy3PxZu1fwFGuVn/zC7zxMC5EQk7ohCt0KoGgdtDlqe/wpti2do7/k
 Hznop+kxt8esGlyNz2Hsmjj31QvblOJH+PLlJU5q3EbBhvYJWrFr3MfPxCLvi7Q9GksB/vS0fXZ
 WZqra55IZ+QW7NwXdfXIxIkX3IaGUao6qSW5j072mZIULvPT0Iq0gEhEGgSTUMGiALqcmHOO1wa
 zXNRo=
X-Google-Smtp-Source: AGHT+IHusUArV++0TfBaUizLya7hy6xUc0z7VcX1xC32O50I38HzPymcYuHT2IKLOX0EfF4dDywsEQ==
X-Received: by 2002:a17:90b:4c92:b0:32e:32f8:bf9f with SMTP id
 98e67ed59e1d1-33bcf8f9960mr25809884a91.30.1761150515038; 
 Wed, 22 Oct 2025 09:28:35 -0700 (PDT)
Received: from lima-default ([104.28.246.147])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-33e223d1265sm3041328a91.3.2025.10.22.09.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Oct 2025 09:28:34 -0700 (PDT)
From: Your Name <alessandro.d@gmail.com>
X-Google-Original-From: Your Name <you@gmail.com>
Date: Thu, 23 Oct 2025 03:28:26 +1100
To: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>
Cc: Jason Xing <kerneljasonxing@gmail.com>,
 Alessandro Decina <alessandro.d@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <aPkGKqZjauLHYfka@lima-default>
References: <20251021173200.7908-1-alessandro.d@gmail.com>
 <20251021173200.7908-2-alessandro.d@gmail.com>
 <CAL+tcoCwGQyNSv9BZ_jfsia6YFoyT790iknqxG7bB7wVi3C_vQ@mail.gmail.com>
 <SA1SPRMB0026CD60501E3684B5EC67F290F3A@SA1SPRMB0026.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SA1SPRMB0026CD60501E3684B5EC67F290F3A@SA1SPRMB0026.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761150515; x=1761755315; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=9vWDPEez/Pn/tuHveZVqlQ/l+YWt3ZfTtD2FdR44qSs=;
 b=C8TLR2awssD0ADYUUc0M4wrNkuO2e/FHjcxaCQtNHBYhd6hwZXNrqjWSQvkcCy3p/1
 509LWLqntTj18K0owmjWb/TgUoADi/WWMoPZtcrr8Z0lQhqgBKWdbJCkRLYXOLCGeWe7
 A91+ztEednhHrd1UsaEZzWqgjrJ0TylFAjY/N4yY80MeQIw3kqU7yz5LFlF9bx50XtiI
 LEWHt9M3UApGvFm1ROi3iGv8P91p3DXyLSWG4OuXo4Ch5SNOkIlnuXf0d8e6q58HpkDg
 rVovJ6//fzQoEEyW54e5o2OL3C3KXzw+L0g3FSPKlyOv7thck3kkH7luQJAJqDkfZojb
 YIug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=C8TLR2aw
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

On Wed, Oct 22, 2025 at 05:41:06AM +0000, Sarkar, Tirthendu wrote:
> > From: Jason Xing <kerneljasonxing@gmail.com>
> 
> I believe the issue is not that status_descriptor is getting into
> multi-buffer packet but not updating next_to_clean results in
> I40E_DESC_UNUSED() to return incorrect values.

I don't think this is true? next_to_clean can be < next_to_process by
design, see

	if (next_to_process != next_to_clean)
		first = *i40e_rx_bi(rx_ring, next_to_clean);

at the start of i40e_clean_rx_irq_zc. This condition is normal and means
when we exited the function - for example because we ran out of budget - 
we were in the middle of a multi-buffer packet and now we must continue.

If I understand the code, I think that in that case we just set
entries_to_alloc to a lower number and return fewer buffers to the
hardware. 


> A similar issue was
> reported and fixed on the non-ZC path:
> https://lore.kernel.org/netdev/20231004083454.20143-1-tirthendu.sarkar@intel.com/

This is indeed exactly the same issue, but I'm not yet sold on the
diagnosis :D 

Ciao,
Alessandro
