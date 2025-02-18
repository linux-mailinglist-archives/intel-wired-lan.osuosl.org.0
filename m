Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E66A3AB67
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 23:00:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FFB26106A;
	Tue, 18 Feb 2025 22:00:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wudse7LPtCe1; Tue, 18 Feb 2025 22:00:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D3DF61074
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739916049;
	bh=NDWVoyJ1SeooEMJORrstyMdt33FZ55CnXUZgLN9GUJQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3EB99h+tLzHUtefNQElynhLlJAaYuhmRSFniC7c7uOlGYftF8HlXrnHIuFIC5yNiv
	 oNTvc5B/KhKSFuqUSnJjVGau390lgT4gW4YTAdugo37z65HmMcNhCHlgU807zUj/7l
	 0NenA7DFONkgsnRNQRIovlDJJhhVZtDl3OSL1+Fu1v8IBBG7DQzO3nM9opWujecqQd
	 UebPU9H7tqirNha7/KciYxbietk/J2M4dV5OX54FwqDnrLi2oAOLs+SNM+5e1zXnty
	 Pmu26j5Mjn0qklA4GSWqYIb/raaPdJLi8+d+U8xglnETj9xDTMQ3AVJ0ntk+hDn8/R
	 h3ta6FanJc2Lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D3DF61074;
	Tue, 18 Feb 2025 22:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E6F0C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 22:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 294E440140
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 22:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfYhGqfnojjs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 22:00:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::82b; helo=mail-qt1-x82b.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8755840913
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8755840913
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8755840913
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 22:00:45 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id
 d75a77b69052e-471f257f763so20366441cf.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 14:00:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739916044; x=1740520844;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NDWVoyJ1SeooEMJORrstyMdt33FZ55CnXUZgLN9GUJQ=;
 b=WWxBuN9dJAfc2V8EcDVVAdP2IcrY8b7Iui2txq3U1ebG81vk0KKVwR1K+7Nt4XyeOk
 Hd8HGpQ5IVbUKAribd5FJCZ+vdeRaqgQNaBCPFmO4DzF/jBECbZCZ61mT57FscY46AZu
 ZAO5Cl4QdhO+NI+r/aN9yixJLunBH8yVXec2isYe5ZmtOZjJZz6TbI51gTSy+WH4B78Q
 PJ27c8cPme74yxe1WNDictbt4Cfig17JalvQffdZFc3h4y+qrQOzEXNahHWXCP9lOzLQ
 4JFAEe38pmT9sa9FsLXAr0KEDAnYtTk4PoCiYJDTGGYfFYpNZQFaHlqdS7tdDiqq1asy
 AY/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFXS25/c61Y5jPUdoOURP3V4MBpXW5hJOKpIISutBBty7oXO4KbkpYilcTwPmpeSpwid3T5eZmF7lW+Uv0iy8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw40K1T9zx1xW+QilhlgmyRdpSPFzu534suFnCIiok4i/uYdEjB
 VbjLIm4Jli2EfnlL733OTo3x1ZFkbh6G7rPS4gYqqBnRVoU/m8dGP28iYj2XoWk=
X-Gm-Gg: ASbGncunKgyjBsY5Wovd6/eKDjtNOknAMsXSs57bQ00XBuq3cEMUpy+xOFxUA8UEmnH
 9RxpnQGbWsBfTjCA9vWv7QvSVGugIqpRKrglNJmkeACjOBqEaQRykqCfGxyEE0Rq1ACRjS+g6kh
 MzSKJDKBjFFZmHEocSAZWNWVT3GdjrvsLcwfDmBzUb6aSXIy1tnSXoPog4DXGHBuyjR5/gPfRPd
 yaK9hg4S5BJcaoUWGNQ1/Mf3XvFjNuV1ozzlnTa8aLE5AT475iAWknYBbQeJoesNmoVfOs7cHEa
 vJ6shToAeVy8r69plYHzLlFZuvC804sxJp3JbJ3/JMPGYVN2j2o+Fw==
X-Google-Smtp-Source: AGHT+IFF3jhc9h+lBjYvLv886LHEtmD9+ojqQqm9gIwO6LpvxiYXxuB+1ocnHpxdisTfrFAz6rqh6w==
X-Received: by 2002:a05:622a:8f02:b0:471:f730:20bf with SMTP id
 d75a77b69052e-471f73027c9mr65171161cf.12.1739916044112; 
 Tue, 18 Feb 2025 14:00:44 -0800 (PST)
Received: from LQ3V64L9R2 (ool-44c5a22e.dyn.optonline.net. [68.197.162.46])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-47203838881sm10061561cf.72.2025.02.18.14.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2025 14:00:43 -0800 (PST)
Date: Tue, 18 Feb 2025 17:00:41 -0500
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z7UDCSckkK7J30oP@LQ3V64L9R2>
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
 <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739916044; x=1740520844; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=NDWVoyJ1SeooEMJORrstyMdt33FZ55CnXUZgLN9GUJQ=;
 b=U4dJOwfr1arKLJcEG9U4HUjLSD3eWqnRLYmgDw0QVMQH4T5s3yjmebsuFyAl5ollTY
 T4E4C8ykUO1vrB6pr4hoGX3380p+3zYxSkqXH5IKQF5UOf9RmdudHtDLmXA2AZiL0TRJ
 FeGUbh8oeDOVNYapd+9j9xOZdMXBqsZAlbZnE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=U4dJOwfr
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

On Tue, Feb 18, 2025 at 04:18:19PM -0500, Joe Damato wrote:
> On Mon, Feb 17, 2025 at 12:31:20PM +0100, Kurt Kanzenbach wrote:
> > This is a follow up for the igb XDP/ZC implementation. The first two 
> > patches link the IRQs and queues to NAPI instances. This is required to 
> > bring back the XDP/ZC busy polling support. The last patch removes 
> > undesired IRQs (injected via igb watchdog) while busy polling with 
> > napi_defer_hard_irqs and gro_flush_timeout set.
> > 
> > Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> > ---
> > Changes in v2:
> > - Take RTNL lock in PCI error handlers (Joe)
> > - Fix typo in commit message (Gerhard)
> > - Use netif_napi_add_config() (Joe)
> > - Link to v1: https://lore.kernel.org/r/20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de
> 
> Thanks for sending a v2.
> 
> My comment from the previous series still stands, which simply that
> I have no idea if the maintainers will accept changes using this API
> or prefer to wait until Stanislav's work [1] is completed to remove
> the RTNL requirement from this API altogether.

Also, may be worth running the newly added XSK test with the NETIF
env var set to the igb device? Assuming eth0 is your igb device:

  NETIF=eth0 ./tools/testing/selftests/drivers/net/queues.py

should output:

  KTAP version 1
  1..4
  ok 1 queues.get_queues
  ok 2 queues.addremove_queues
  ok 3 queues.check_down
  ok 4 queues.check_xdp
  # Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0

Note the check_xdp line above.
