Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 760E7A4015A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 21:53:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 399B86072F;
	Fri, 21 Feb 2025 20:53:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJd7yUvE8wYL; Fri, 21 Feb 2025 20:53:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 274A46071B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740171213;
	bh=IoEJ05B0k2QKvLULjk6ScEGJs4y1XCNwR5ARbRdfbJg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ol4mPFB6dY/sTptTFvpx1R4BxW8QTrY9ur2rgdKOME1JqpnMRjuUrA+jyvkhCxZgw
	 u8lZOcVtwFRijFexA937NKwPNjl1uOCLIanGfZF6d8WeEj2Oq3+LLLE5GAC8uCENmV
	 IjKPk35rBJRupgYSBESi1iHiLbfeBH+V9gwlA7Bgs+32wBSSgIe58/QjJbA6QVmMKU
	 dbQfg2tK70Rb5Hc2GF2oawgrpm6IxRPamJZJGazem+RzWvgeH9v8K77bkfMXcDLXjk
	 3WD+kJDgTlpoXWdhd2b7ClyS9MJrfQAaptZ4VHnr6udJgeLW3bNw5+yQgz8f2Rn8eS
	 7nT0ryHtJi45A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 274A46071B;
	Fri, 21 Feb 2025 20:53:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AB775D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 20:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C9CB6066E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 20:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 97VnCsbzC1lf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 20:53:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f34; helo=mail-qv1-xf34.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 82E34605D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82E34605D1
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com
 [IPv6:2607:f8b0:4864:20::f34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82E34605D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 20:53:29 +0000 (UTC)
Received: by mail-qv1-xf34.google.com with SMTP id
 6a1803df08f44-6e67f377236so20048786d6.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:53:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740171208; x=1740776008;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IoEJ05B0k2QKvLULjk6ScEGJs4y1XCNwR5ARbRdfbJg=;
 b=BDhfnoJ3hgFw064dHdJtfuXbUtIVGWGQPu+RiWYzIS3C82nkDQ0QxCL2sWxVyjRP6f
 13EMihIWWLjWrYtcctZj8j7mOZYs1KLzh6BFR9GMqvd2nXnzi19HDNht+Yx98XgtM9Iu
 XzhFCIsJ6FCRBEmecObDOYxN4CbxH+y+eFkxqSd3z+V51iRnc37zmQiSdBrMcY1Gj7lQ
 iFSldN6XcRZ8iYeOtrv1TBf3TqpBlD9V/807p7Jr/1TpveO/UfEqTCnPXe1ANZxhHlhC
 VBwS0rqnCN2/2DLb99MOENUJBY8C96CbGO+9gMhZOC/wvvPYko/+tP5QfqK5Y87ekckJ
 l7Fg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEbk0+Gyi4qR1Cfa8qIGsWvyl8JtcYeUu5FUR26cPHBI4u3P1s4E4f6NdyYNtNFPMcBUmekK+eI0emmoA32b8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzNgvmxHVVFcLpOohV8cxSPzmUxyEx7Tp73qdsaSsa/Kz+vMVB4
 xVD1XpsI/pzmKwQIq3qYPevwwdVb+cU1lbYLSPyTafGPzHzw0ULDxrI3VzotDy0=
X-Gm-Gg: ASbGncslik6y3M1PEAq7wuexHEXOltUaUME2nn9Xso75zIx4uWObcIq3yOzTf7iDYjY
 r1xxirIbLqdR3WswUOFXPX/8DSwoiUe49FVhePKG/pqjuHy/vKSOtyBa0bI2OMbJ3pF6STOShI2
 UAT1j7UOuQ3iqXyJSOW+ML6LxKAbi4jpDU+8qwyAbEpZhui9wwh+N6EHe9LUHic1qob0qW6VCh2
 X8ONaRCMznHLz8yNLZ7plN/cjg2k4r5//hWEJZ/FxHm2NnYu7QV4fCSRkyYTQ4zI1cU7TsBRAyO
 I6Yx4WcyZZW4mzJb6ZetdIVfDB1X3meyJkeeutMD1P9WOOHAVVZLRhSuJgRZ6u1+
X-Google-Smtp-Source: AGHT+IFJ7FpVMjmW9zCHBqwF+fT7qqQnhfBLVFH/v2oLp+6xAwmp6qgigq6Pi/kJVk8ru1yhaHTEXw==
X-Received: by 2002:a05:6214:223:b0:6e6:61a5:aa4f with SMTP id
 6a1803df08f44-6e6b01d78e8mr49854816d6.45.1740171208687; 
 Fri, 21 Feb 2025 12:53:28 -0800 (PST)
Received: from LQ3V64L9R2 (ool-44c5a22e.dyn.optonline.net. [68.197.162.46])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6e65d7a436esm102248016d6.62.2025.02.21.12.53.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2025 12:53:28 -0800 (PST)
Date: Fri, 21 Feb 2025 15:53:26 -0500
From: Joe Damato <jdamato@fastly.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z7jnxolsaLICS6zD@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2> <878qq22xk3.fsf@kurt.kurt.home>
 <20250219180651.0ea6f33d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250219180651.0ea6f33d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1740171208; x=1740776008; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IoEJ05B0k2QKvLULjk6ScEGJs4y1XCNwR5ARbRdfbJg=;
 b=EnXJrUdHTMzI3iH3FVVLLj0dwXFh0OXio4TlUQsBEses6+DZM8L091fMdJcNU11Or8
 GhgI10N4JGSQwnpmiuCDhROTdsrVehdVSRyyA7YkZLZcVWWFQUGpX3SIjUC9RIRfOpRV
 1wvD44Rdb4CBET5JDhvoVtKg0B+ImhN96wgnA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=EnXJrUdH
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

On Wed, Feb 19, 2025 at 06:06:51PM -0800, Jakub Kicinski wrote:
> On Wed, 19 Feb 2025 08:39:08 +0100 Kurt Kanzenbach wrote:
> > > My comment from the previous series still stands, which simply that
> > > I have no idea if the maintainers will accept changes using this API
> > > or prefer to wait until Stanislav's work [1] is completed to remove
> > > the RTNL requirement from this API altogether.  
> > 
> > I'd rather consider patch #2 a bugfix to restore the busy polling with
> > XDP/ZC. After commit 5ef44b3cb43b ("xsk: Bring back busy polling
> > support") it is a requirement to implement this API.
> > 
> > The maintainers didn't speak up on v1, so i went along and sent v2.
> > 
> > @Jakub: What's your preference? Would you accept this series or rather
> > like to wait for Stanislav's work to be finished?
> 
> No strong preference. If rtnl_lock is not causing any issues 
> in this driver, the we can merge as is. I haven't followed 
> the past discussions, tho.

Don't mean to side-track this thread, but does this mean you've
changed your mind on the previous virtio_net thread [1] ?

Or maybe I'm just misreading your response there? And instead I
could re-spin the virtio_net but dropping the first patch and
dealing with RTNL in the code like this series is doing?

For some reason I was under the impression that the virtio_net
series and others like it (like this igb series) were being held
back until locking work Stanislav is doing is done.

[1]: https://lore.kernel.org/netdev/20250127133756.413efb24@kernel.org/
