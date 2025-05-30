Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 070BAAC91FA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 17:07:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F4CF41D91;
	Fri, 30 May 2025 15:07:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id suyuxBDTXa9x; Fri, 30 May 2025 15:07:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B644841D97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748617654;
	bh=A6qdI8/H6FUFv6NVTYVjlRQps5Gkl5ZjJBcqTPMVnmg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4AhqS7Rvrben96J3F7td9HWKBAKRD0+DJ3u2FB/hMGCofb2+OmRn8K3vx8Ijesgwi
	 LLB7GX1s8nxI87ROQIBe3PMT9BBe9TLSXDeCNCVk6c34c/JBcAI2iY72HuXVGrGIi4
	 U/CaoAUUYyILGG/sN75Fqu82SgFRra/VUB0g2bcBXMB+VyOZhdqz5SgU62B7rg7Lpb
	 IyqfllHHnXo2oRc2gt8CduX1FdL5kCbm+CDEEDnncDsHXKbPIREZQzLRgjF1eHshWs
	 qZcxqFMC3ckDPdnB0Surtoac+qXQxIaX0aB/KpqNyBQrV9f2nCdc2sa34pYkeAA4yT
	 7eJNGxYRdGh6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B644841D97;
	Fri, 30 May 2025 15:07:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DDA2236
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 15:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63FFC842F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 15:07:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GhwTQaZaHEez for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 15:07:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC087842E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC087842E8
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC087842E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 15:07:31 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-22e16234307so18509015ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 08:07:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748617651; x=1749222451;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A6qdI8/H6FUFv6NVTYVjlRQps5Gkl5ZjJBcqTPMVnmg=;
 b=YZ55J0nV2t7R1Gm2FMvTApkIjv7NjdbWeNcNEo5xEp895Vt+9Mdpoy0PoRZz8853uZ
 lpkWL99bbbGBJOjBGI/yAL1AB8aIeDtnWaVmiDbZQsaLuz3XlSYhFzW+CzZdNKaPo5pS
 Fx8iJdxbMSJGLHFSqQ8SiJ+wry7nssrFtIPS1aIQlnEYXaCSr5Nl5xq444AaQmRbyiiL
 r2Fbqi2UWRvXBe3QWgaOkiMRdCxjKfUGzMGec1pLICgS47wDeK5b10+OKipkjh0SjBpX
 xaQMkW7LQlnBMSIfe0ec+sJNfZYzSG1FVU6zY0mL2fhPqDsMSCvesApyAb3B2wpysra0
 w5bg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXuLNX9zRXQ2aWy82GJeawMlSESC8qX1frG4YdEDVAyTa7N3pZwYDz4k3kauA1IrJNavStDcqBzWutJ9ll3lkM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw17goE+FNqfwNNnCdmYslvaN26gYWw4eYCufJO3ae3f/mYcYzk
 G/I1xuYVDJrumbQKBHGC9rDsIVM3km/R7SUdo0O8Uibz+wwIbDSWrso=
X-Gm-Gg: ASbGncuZmLodVdaBtkkLU/9vHb7Nk2usvp57FYZVGfWw0CNyOzMxtG667cL5+WTtmQf
 JerDYS6rsVunHET8pXltJi4xBukgFbnHQwZ933R6sS16q0ZWpOzJEJjticNbaF87N9ly0vNObgr
 bdbG1QRSBc75Q3diH3N2y7HuKOLj32UTLW1HSKFaJ+o6YNKh2LVZ1IpsOAJIqeCsRbDmtYmhA0O
 Bebdk3MLlfJ153lvuyy82SlkJ6jHo0rR6iLJw5z4rsre/4uyRaAO+tFpDS28NFPquA2QwLGgcym
 4O5waGRedz8m4joP/9tP94xP6nz1Gbv//KEF503qtBhwcWx/cBk54VHMOOQ6IzUtV7AksW7+GyJ
 mkpbgIdvochpd
X-Google-Smtp-Source: AGHT+IGlTTPOmzXUsUpJ/7FdUyOJNuOAbe0a7n7VjK/BZAqbeinV1GZA6IG1AeSirgWPRHNewicsDA==
X-Received: by 2002:a17:902:cf10:b0:234:8eeb:cf8c with SMTP id
 d9443c01a7336-234f6a08adfmr117720865ad.20.1748617651021; 
 Fri, 30 May 2025 08:07:31 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 98e67ed59e1d1-3124e29f865sm1328221a91.7.2025.05.30.08.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 May 2025 08:07:30 -0700 (PDT)
Date: Fri, 30 May 2025 08:07:29 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Joe Damato <jdamato@fastly.com>
Cc: netdev@vger.kernel.org, kuba@kernel.org, john.cs.hey@gmail.com,
 jacob.e.keller@intel.com,
 syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <aDnJsSb-DNBJPNUM@mini-arch>
References: <20250530014949.215112-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250530014949.215112-1-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1748617651; x=1749222451; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=A6qdI8/H6FUFv6NVTYVjlRQps5Gkl5ZjJBcqTPMVnmg=;
 b=gzwzVh/MazUL/jBWqpuVrmYsmiQ27GdrMPs8p9efnH2KByARglJ7605+XfKnjL7sY2
 p7POqKi+WkxDyUG0FAfF+PVT0yBy0zglJTxWGpE7RTRPkTDfQQFETYXEADuw72ThaTbM
 oBYIUmMF2wrhbeoMPNCOLXygcFZKFCQcJMIhXS8J9M92UI7NFHE4yLoR3qtcczEnb8g2
 4gjc1AeRMuHYIp/jnTWZ46F5kaBwh/DXHuzJIq+KfObCwPxXU0kYLGBY/O6ThVrvp9bG
 w3UP0hCNmJc+Q7rDK6jI3AnOqm86jG26UJG+Dy01tzTyt81pG8APwfflzR5Kbvs94M1H
 GrPA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=gzwzVh/M
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] e1000: Move cancel_work_sync
 to avoid deadlock
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

On 05/30, Joe Damato wrote:
> Previously, e1000_down called cancel_work_sync for the e1000 reset task
> (via e1000_down_and_stop), which takes RTNL.
> 
> As reported by users and syzbot, a deadlock is possible due to lock
> inversion in the following scenario:
> 
> CPU 0:
>   - RTNL is held
>   - e1000_close
>   - e1000_down
>   - cancel_work_sync (takes the work queue mutex)
>   - e1000_reset_task
> 
> CPU 1:
>   - process_one_work (takes the work queue mutex)
>   - e1000_reset_task (takes RTNL)

nit: as Jakub mentioned in another thread, it seems more about the
flush_work waiting for the reset_task to complete rather than
wq mutexes (which are fake)?

CPU 0:
  - RTNL is held
  - e1000_close
  - e1000_down
  - cancel_work_sync
  - __flush_work
  - <wait here for the reset_task to finish>

CPU 1:
  - process_one_work
  - e1000_reset_task (takes RTNL)
  - <but cpu 0 already holds rtnl>

The fix looks good!

Acked-by: Stanislav Fomichev <sdf@fomichev.me>
