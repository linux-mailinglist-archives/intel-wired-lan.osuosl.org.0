Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D640A9AB842
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 23:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F5E081095;
	Tue, 22 Oct 2024 21:12:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NiI0mhMb5BBl; Tue, 22 Oct 2024 21:12:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 917C981089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729631565;
	bh=OMX9gc1p0scgCF3QJqOJTXzbE2PMMPwt5sFvxZKTl0I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DWaj6DROFpcM3fCUJJsGxvx2Cdi1iS21qQ6juzc5B6Fmiad5VvpcdRc3mXHvCM+b7
	 sYJzpRByC2cJgFDIgUVNT+/sNY9PjQ5QW63pxCvlO92nw8KP/TG4ff6F+Uw97R5V4t
	 DwjcY3sWIWM9HjjaiECTpXTzWLMI5rGbPSYQgZ7mDxfyWWtQDzP8jKqDNppqn7AVUt
	 m0KG6L1xooIgnebvaVleGkX6U5ajLYoRGihRbv4MXI03f8TPx9w/L7rHBuGMOBdJWf
	 W29Aej8R2KAaZW+91mk91UYnZTeaWunwnd6W20/6J1JO1GRATyje1iC7Aug+qonq4V
	 /BhxGp1d5P3hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 917C981089;
	Tue, 22 Oct 2024 21:12:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 955942072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74F1840106
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 85B5FpheBCN1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 21:12:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 213DA40182
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 213DA40182
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 213DA40182
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:12:41 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-7ea79711fd4so4286455a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729631561; x=1730236361;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=OMX9gc1p0scgCF3QJqOJTXzbE2PMMPwt5sFvxZKTl0I=;
 b=uPrv2f6SSAizO+LlMYuJ+pTqqfTVzko1JHjlBQhRAjcb+yyQHzjOhkaqSrdB5FRY8e
 M+eTwWiZ970jhCt4OVXhXEeUJbwQArIremZlRTRF0lreeKP21LaF8fikJ0u6MZ1QIZLm
 F+aIgydYNX3pygXMOn43uIR6VTIQMXoASF9GD4JXJLXBKaE2XBboudqQpI/j6VVNn1en
 VNObVbB6AzjrNF9ggV62739HdZCqQNdc1orBd91aT6BC7Mt/j9ytRa4Gv6D8KeVI9qoC
 VJMCG1yzw2LilYR8dFoN4f70OX7F3vTxRaiNy2L9wONq24R7ab09Ed9W38mXPKiicuME
 oAkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCKVZfvtAHpXiMBwKQaPfAjbFNfDHUJhKlC7L6O0E0IOwz+gx2NYwoseZQCJOtRwRRfNoF+OgPtDsbnJxWYs0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwAtOQmpPVXgLzQktKK6jI7Su0oYl1pc6DYXRRatO837z9Y2F2U
 rCcyX0HJWCW6wNRcUzpge4ZIvxEXLg864sj7Xn53oWa3xr497g8TrGmo2iSRA08=
X-Google-Smtp-Source: AGHT+IGnHEnhTMneQ9LqXD5cZl6RxLBvruNmPl3/b4r8UU6lMQb/3OYEEgp7HkqliD+NZqBpTRuusw==
X-Received: by 2002:a05:6a21:2d88:b0:1d9:2a8:ce10 with SMTP id
 adf61e73a8af0-1d978bae730mr364398637.34.1729631561291; 
 Tue, 22 Oct 2024 14:12:41 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec13eb642sm5323487b3a.179.2024.10.22.14.12.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 14:12:40 -0700 (PDT)
Date: Tue, 22 Oct 2024 14:12:38 -0700
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org, dmantipov@yandex.ru,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <ZxgVRX7Ne-lTjwiJ@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org,
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
 <ZxgEb0N0cJt1BRte@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZxgEb0N0cJt1BRte@LQ3V64L9R2>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729631561; x=1730236361; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=OMX9gc1p0scgCF3QJqOJTXzbE2PMMPwt5sFvxZKTl0I=;
 b=v0FSj3IiXHu+8ZCQfPIgJEPqyFhEJGzyCmNaLTuWA7fqv8UfimBfIr5e24bTnMjvp9
 y0akN/Srp6GexU6dZ9ONZ2pk8lP+qcaditWm8oKrKjzMVcGqM44EiIXqxBO93ppGsDjz
 5B4evnGCXS9jqBenDzRU8Yy0oEMOxJ9gollDU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=v0FSj3Ii
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

On Tue, Oct 22, 2024 at 01:00:47PM -0700, Joe Damato wrote:
> On Tue, Oct 22, 2024 at 05:21:53PM +0000, Joe Damato wrote:
> > e1000_down calls netif_queue_set_napi, which assumes that RTNL is held.
> > 
> > There are a few paths for e1000_down to be called in e1000 where RTNL is
> > not currently being held:
> >   - e1000_shutdown (pci shutdown)
> >   - e1000_suspend (power management)
> >   - e1000_reinit_locked (via e1000_reset_task delayed work)
> > 
> > Hold RTNL in two places to fix this issue:
> >   - e1000_reset_task
> >   - __e1000_shutdown (which is called from both e1000_shutdown and
> >     e1000_suspend).
> 
> It looks like there's one other spot I missed:
> 
> e1000_io_error_detected (pci error handler) which should also hold
> rtnl_lock:
> 
> +       if (netif_running(netdev)) {
> +               rtnl_lock();
>                 e1000_down(adapter);
> +               rtnl_unlock();
> +       }
> 
> I can send that update in the v2, but I'll wait to see if Intel has suggestions
> on the below.
>  
> > The other paths which call e1000_down seemingly hold RTNL and are OK:
> >   - e1000_close (ndo_stop)
> >   - e1000_change_mtu (ndo_change_mtu)
> > 
> > I'm submitting this is as an RFC because:
> >   - the e1000_reinit_locked issue appears very similar to commit
> >     21f857f0321d ("e1000e: add rtnl_lock() to e1000_reset_task"), which
> >     fixes a similar issue in e1000e
> > 
> > however
> > 
> >   - adding rtnl to e1000_reinit_locked seemingly conflicts with an
> >     earlier e1000 commit b2f963bfaeba ("e1000: fix lockdep warning in
> >     e1000_reset_task").
> > 
> > Hopefully Intel can weigh in and shed some light on the correct way to
> > go.

Regarding the above locations where rtnl_lock may need to be held,
comparing to other intel drivers:

  - e1000_reset_task: it appears that igc, igb, and e100e all hold
    rtnl_lock in their reset_task functions, so I think adding an
    rtnl_lock / rtnl_unlock to e1000_reset_task should be OK,
    despite the existence of commit b2f963bfaeba ("e1000: fix
    lockdep warning in e1000_reset_task").

  - e1000_io_error_detected:
      - e1000e temporarily obtains and drops rtnl in
        e1000e_pm_freeze
      - ixgbe holds rtnl in the same path (toward the bottom of
        ixgbe_io_error_detected)
      - igb does NOT hold rtnl in this path (as far as I can tell)
      - it was suggested in another thread to hold rtnl in this path
        for igc [1].
       
     Given that it will be added to igc and is held in this same
     path in e1000e and ixgbe, I think it is safe to add it for
     e1000, as well.

 - e1000_shutdown: 
   - igb holds rtnl in the same path,
   - e1000e temporarily holds it in this path (via
     e1000e_pm_freeze)
   - ixgbe holds rtnl in the same path

So based on the recommendation for igc [1], and the precedent set in
the other Intel drivers in most cases (except igb and the io_error
path), I think adding rtnl to all 3 locations described above is
correct.

Please let me know if you all agree. Thanks for reviewing this.

[1]: https://lore.kernel.org/netdev/40242f59-139a-4b45-8949-1210039f881b@intel.com/
