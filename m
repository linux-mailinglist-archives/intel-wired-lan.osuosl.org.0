Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37208AC9630
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 21:45:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D808940A9A;
	Fri, 30 May 2025 19:45:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w-g2K1yEIA9l; Fri, 30 May 2025 19:45:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50CC540B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748634319;
	bh=0Lb9gK19lVJostbWgjUDtmKKqX07Lhy5W7Dpk4jXPzU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LI9wwlwylRsi2H/AwaGysJvABdWDhUvz86hdJrmU8OneGcSZuqJIjteTDKysAO05e
	 sq1+QVcl+2IhraRCAfBsWMLu8MU4pwrKW1DyBvZYPVjuQ0LXGVdv5iU1weH+8qOSv4
	 subknJPDCp/KUWY2KfblBeK6GUD2OjVg3eGc3n2xc5cOvNpD2IJexrdE8N42VSpZR5
	 aRZSjZ6mbl66zMRZF2WPuYDLnIEuHESC3farqVcZzrcR+vkHyXYShjA3l2Esu0baNK
	 5GjxXn1jP+oARGvIqpwPBqyEnjHOfpB965rXwU4HiipwX+q4dy1iZv0+xapRdmK22b
	 getJRShwTa33g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50CC540B8E;
	Fri, 30 May 2025 19:45:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15915127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 19:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06C5660B6D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 19:45:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7moyTqqXa8x9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 19:45:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 655CF60B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 655CF60B38
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 655CF60B38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 19:45:17 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-22e331215dbso25199085ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 12:45:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748634317; x=1749239117;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0Lb9gK19lVJostbWgjUDtmKKqX07Lhy5W7Dpk4jXPzU=;
 b=p+mQo04+qvso0LfExe6MK4yl35inWtJSWJ1Ow+5RJINSR3rJ/Cqhr/wxEF8tTIlCWF
 jDmnqlWKbtlhRShB1y7Qjn2IWvg5SWQhdcElZYXNz71T/EV17DD7ke8h7xM0drqU8Fqw
 YP4lPoEL/TJb75e3AKAmIJkm9YU5IpvuXCNfpnZEIW5ygPOk95TY4w9RN79GZM+ac98u
 l8GBRB5IDma/9p7zFJLA8JgN7vKAPvmOjplNE+hFZ9Miyz3tK6llT7xCHOTSx/hX5WvK
 0nEUCPIBfgUgAiY6axqV7RLso7I1rZyeHwf8ImKWe0pumI1dPtUiU5M282HRARkR8Nju
 7x4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEBAfhiY+Z6DucKgi6XI1SJcxZPXqEAIeYNJWlZhuwHKUHUOif8rs0+NAH/ve0WCyvRdYqRSUXLp13w80EwW0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyJ+VFVGrMgmUjdqGyn4JsUrFqqJbD+xLsv9TRYImfV1c7FV3Yp
 hDm9uJ+2AaFowCVWDbQr39BdjPmIFF5c7svKZOwl1Ptnb0fZtSRLj05VP35cruxMlOI=
X-Gm-Gg: ASbGncscQbWMC5wUVPnhrgvEMdiRspn61JyDK/q46NfYqxLfPubDuwhhw9CBW7+qmZf
 1h5Pdu8/46XQuohmBFsjDl5l0Sch0j6UTarPkIISNP480X+Qgtv7wbSOBe7hsEmYsdbwibjAe75
 nNmId9HeTq7t4HpK2MbgNd6ygaEpl1A8EZTnfcRITRxCyKkTnNyRrm7+5jUwLaK6samKzDiEG+G
 Iy/mat2YcBf7H1EMChlIk5bFVVkDCZWSNyOGqNDjZa99RwtTSUXtYQklugQuRMwx5XcdI9GfoXZ
 xnmKKGPVpXQ0W2PfKNoQ4zASdS79bud8LmocMlNNwR43eogl2cYOhWIZvFg35cgFx2jCTT8lMn0
 5PT1hTxdhy2dlqK96EkpcUQMi4OzS
X-Google-Smtp-Source: AGHT+IHYTayKgzes3pjEfxOEGOjuYQP5EzWW8jYaSd2BCsF4cWtCCGGULvjBHzBwuqDa1X7eSLYeOw==
X-Received: by 2002:a17:903:1a68:b0:234:6b1f:6356 with SMTP id
 d9443c01a7336-234f6a1eab0mr135626485ad.22.1748634316752; 
 Fri, 30 May 2025 12:45:16 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23506cd7602sm32040845ad.109.2025.05.30.12.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 May 2025 12:45:16 -0700 (PDT)
Date: Fri, 30 May 2025 12:45:13 -0700
From: Joe Damato <jdamato@fastly.com>
To: Stanislav Fomichev <stfomichev@gmail.com>
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
Message-ID: <aDoKyVE7_hVENi4O@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <stfomichev@gmail.com>, netdev@vger.kernel.org,
 kuba@kernel.org, john.cs.hey@gmail.com, jacob.e.keller@intel.com,
 syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20250530014949.215112-1-jdamato@fastly.com>
 <aDnJsSb-DNBJPNUM@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aDnJsSb-DNBJPNUM@mini-arch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1748634317; x=1749239117; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0Lb9gK19lVJostbWgjUDtmKKqX07Lhy5W7Dpk4jXPzU=;
 b=XQttijGAsyFDT/moLSJ8kjLKuOWL78PY7ZKOp4drqIfoos+Q/Oq2dwBGKNcNtU4i85
 ecZ51CDSkJbf6Jbkfr6fPEF5Qk9rMw2ZgtntwjNLnDzcH+ZIECqNNr4DujvH+5m4pqPv
 E1ZmtqBp9V7UBLxkgdMdFF2ItV+b1IabXsfjM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=XQttijGA
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

On Fri, May 30, 2025 at 08:07:29AM -0700, Stanislav Fomichev wrote:
> On 05/30, Joe Damato wrote:
> > Previously, e1000_down called cancel_work_sync for the e1000 reset task
> > (via e1000_down_and_stop), which takes RTNL.
> > 
> > As reported by users and syzbot, a deadlock is possible due to lock
> > inversion in the following scenario:
> > 
> > CPU 0:
> >   - RTNL is held
> >   - e1000_close
> >   - e1000_down
> >   - cancel_work_sync (takes the work queue mutex)
> >   - e1000_reset_task
> > 
> > CPU 1:
> >   - process_one_work (takes the work queue mutex)
> >   - e1000_reset_task (takes RTNL)
> 
> nit: as Jakub mentioned in another thread, it seems more about the
> flush_work waiting for the reset_task to complete rather than
> wq mutexes (which are fake)?

Hm, I probably misunderstood something. Also, not sure what you
meant by the wq mutexes being fake?

My understanding (which is prob wrong) from the syzbot and user
report was that the order of wq mutex and rtnl are inverted in the
two paths, which can cause a deadlock if both paths run.

In the case you describe below, wouldn't cpu0's __flush_work
eventually finish, releasing RTNL, and allowing CPU 1 to proceed? It
seemed to me that the only way for deadlock to happen was with the
inversion described above -- but I'm probably missing something.
 
> CPU 0:
>   - RTNL is held
>   - e1000_close
>   - e1000_down
>   - cancel_work_sync
>   - __flush_work
>   - <wait here for the reset_task to finish>
> 
> CPU 1:
>   - process_one_work
>   - e1000_reset_task (takes RTNL)
>   - <but cpu 0 already holds rtnl>
> 
> The fix looks good!

Thanks for taking a look.

> Acked-by: Stanislav Fomichev <sdf@fomichev.me>
