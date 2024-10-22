Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F38DA9AB857
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 23:17:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E31760879;
	Tue, 22 Oct 2024 21:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wVFxgDjQH8u8; Tue, 22 Oct 2024 21:17:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55BDD6087B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729631844;
	bh=XYr64/ZMrEvmz5LKiZ/kP4LINn+F8DeQPo0l+Qm0N4U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wMZDWKSTRpSN0T6jZhZZNLIC1TLnyoAwhU+68xSsYzSvmAKXVuKgJmjAHeAWqmkvq
	 CB9LFWq8hzXJsGg8Egdk8ivgE/7OtHYCOM+DLfJNE8i7xLvEfpezW0K6cUpOzqQ+nR
	 62AneXTE1qDnDcXP2JhaTpFcZDooHSNt4MzR7QqgwHBFvaGlQw+H9Fum1f8jLzWzAv
	 pthsA0peCG7qHJk8ooMFEwnizYyCSSujp++4RcZG5+fxOTJtg1/MRiQV+32uTzuop2
	 XkRfD/veBqqaS6osQX0OFiu9yfMhh+oCKN/5N+9TM67UYXeQ7rdh2EZbKVop9Jssop
	 uRgPqPCfrKGjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55BDD6087B;
	Tue, 22 Oct 2024 21:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 01E252072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A24F96088B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ZKll6TNGdYL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 21:17:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E50060871
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E50060871
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E50060871
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:17:17 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-20ca7fc4484so44223415ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:17:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729631837; x=1730236637;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XYr64/ZMrEvmz5LKiZ/kP4LINn+F8DeQPo0l+Qm0N4U=;
 b=qPNkO29dQoe+9G/mtQql2G3h/JoGLvMJbxkpc7JLdLx/4qs0oflnTg+DY6o3kKSVcp
 RQs5At4s6kAG5LfVXV5UbPP1gbwYzAxfEDX9x+KLhZ37d5NaVt6rxrSW19A5VCxiO1X4
 CJX5kotuegJuwlRrNK8vA9/vN4SMjhqW+FYwhuYsqP9KTvycWcoh8at6QcAg+8ItCcNu
 rprvmj8wJykV2WUr2BqrnyEo2d2NqDVe85fO3AK66MzsTmWGV02iEV6fqhNm4oNQPUCG
 ejPpk2mphzQkgsavW1feSJwIFkFA0VY+jKqUih8LVyVS1t8ig/COKaWSnnOIfHwogMy0
 EwZQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVR8Ukmxsdgkcn3zMsvvU6IkjWXRnUdoT/qQP2JOUKzUnVv3ws63OAT+qZtaqgR2I50D+ccFxd3iGYaELdHU9s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwLgaZ5Eo4WvhBQbiO0YR+Y+hmzgkweEdTtrEbey6DXq9vffILq
 PgitZiqEoGH1lNYmkBMDtPgq+WUrSPul2orgoHcCV33902di0NAVgdmeSPwWamo=
X-Google-Smtp-Source: AGHT+IGi6HnkolQs9gyiaf/yt0J5Hxo52WSssx+MmkAvaoJ2SCUXBOL2PutgPzSeR1QzfzbnP4nzWQ==
X-Received: by 2002:a17:902:e5c4:b0:20c:637e:b28 with SMTP id
 d9443c01a7336-20fa9e9f461mr5423065ad.39.1729631837337; 
 Tue, 22 Oct 2024 14:17:17 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20e7f0f363esm46806005ad.269.2024.10.22.14.17.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 14:17:16 -0700 (PDT)
Date: Tue, 22 Oct 2024 14:17:14 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev@vger.kernel.org, dmantipov@yandex.ru,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <ZxgWWgJKx4h0Thfe@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 dmantipov@yandex.ru, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20241022172153.217890-1-jdamato@fastly.com>
 <ZxgEb0N0cJt1BRte@LQ3V64L9R2> <ZxgVRX7Ne-lTjwiJ@LQ3V64L9R2>
 <270a914d-3b50-4eee-b564-1b8cff82facc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <270a914d-3b50-4eee-b564-1b8cff82facc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729631837; x=1730236637; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XYr64/ZMrEvmz5LKiZ/kP4LINn+F8DeQPo0l+Qm0N4U=;
 b=iChaKqkpKfaBGenbn0jPRFLRgUpZLJji4M+7igczwdZbIQR+eFR6P2pHo93b5zNpJ6
 +JK2ysf44eHogew5jeTpm26AauAqGhnBC1MCjHsFFN63FmCLkirytmUE0LeB8mIXtlU0
 HWZUySKVeyqWSJ5Z0ygGbf/MSQSn/c0QcDcu8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=iChaKqkp
Subject: Re: [Intel-wired-lan] [RFC iwl-net] e1000: Hold RTNL when
 e1000_down can be called
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

On Tue, Oct 22, 2024 at 02:15:27PM -0700, Jacob Keller wrote:
> 
> 
> On 10/22/2024 2:12 PM, Joe Damato wrote:
> > On Tue, Oct 22, 2024 at 01:00:47PM -0700, Joe Damato wrote:
> >> On Tue, Oct 22, 2024 at 05:21:53PM +0000, Joe Damato wrote:
> >>> e1000_down calls netif_queue_set_napi, which assumes that RTNL is held.
> >>>
> >>> There are a few paths for e1000_down to be called in e1000 where RTNL is
> >>> not currently being held:
> >>>   - e1000_shutdown (pci shutdown)
> >>>   - e1000_suspend (power management)
> >>>   - e1000_reinit_locked (via e1000_reset_task delayed work)
> >>>
> >>> Hold RTNL in two places to fix this issue:
> >>>   - e1000_reset_task
> >>>   - __e1000_shutdown (which is called from both e1000_shutdown and
> >>>     e1000_suspend).
> >>
> >> It looks like there's one other spot I missed:
> >>
> >> e1000_io_error_detected (pci error handler) which should also hold
> >> rtnl_lock:
> >>
> >> +       if (netif_running(netdev)) {
> >> +               rtnl_lock();
> >>                 e1000_down(adapter);
> >> +               rtnl_unlock();
> >> +       }
> >>
> >> I can send that update in the v2, but I'll wait to see if Intel has suggestions
> >> on the below.
> >>  
> >>> The other paths which call e1000_down seemingly hold RTNL and are OK:
> >>>   - e1000_close (ndo_stop)
> >>>   - e1000_change_mtu (ndo_change_mtu)
> >>>
> >>> I'm submitting this is as an RFC because:
> >>>   - the e1000_reinit_locked issue appears very similar to commit
> >>>     21f857f0321d ("e1000e: add rtnl_lock() to e1000_reset_task"), which
> >>>     fixes a similar issue in e1000e
> >>>
> >>> however
> >>>
> >>>   - adding rtnl to e1000_reinit_locked seemingly conflicts with an
> >>>     earlier e1000 commit b2f963bfaeba ("e1000: fix lockdep warning in
> >>>     e1000_reset_task").
> >>>
> >>> Hopefully Intel can weigh in and shed some light on the correct way to
> >>> go.
> > 
> > Regarding the above locations where rtnl_lock may need to be held,
> > comparing to other intel drivers:
> > 
> >   - e1000_reset_task: it appears that igc, igb, and e100e all hold
> >     rtnl_lock in their reset_task functions, so I think adding an
> >     rtnl_lock / rtnl_unlock to e1000_reset_task should be OK,
> >     despite the existence of commit b2f963bfaeba ("e1000: fix
> >     lockdep warning in e1000_reset_task").
> > 
> >   - e1000_io_error_detected:
> >       - e1000e temporarily obtains and drops rtnl in
> >         e1000e_pm_freeze
> >       - ixgbe holds rtnl in the same path (toward the bottom of
> >         ixgbe_io_error_detected)
> >       - igb does NOT hold rtnl in this path (as far as I can tell)
> >       - it was suggested in another thread to hold rtnl in this path
> >         for igc [1].
> >        
> >      Given that it will be added to igc and is held in this same
> >      path in e1000e and ixgbe, I think it is safe to add it for
> >      e1000, as well.
> > 
> >  - e1000_shutdown: 
> >    - igb holds rtnl in the same path,
> >    - e1000e temporarily holds it in this path (via
> >      e1000e_pm_freeze)
> >    - ixgbe holds rtnl in the same path
> > 
> > So based on the recommendation for igc [1], and the precedent set in
> > the other Intel drivers in most cases (except igb and the io_error
> > path), I think adding rtnl to all 3 locations described above is
> > correct.
> > 
> > Please let me know if you all agree. Thanks for reviewing this.
> > 
> > 
> [1]:
> https://lore.kernel.org/netdev/40242f59-139a-4b45-8949-1210039f881b@intel.com/
> 
> I agree with this assessment.

Thanks for taking a look. I will send an official iwl-net PATCH with
these changes once the 24 hour timer has expired.
