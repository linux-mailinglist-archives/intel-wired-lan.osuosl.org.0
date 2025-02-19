Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD65A3C7A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 19:34:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F023180E48;
	Wed, 19 Feb 2025 18:33:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VdzIclhnwczM; Wed, 19 Feb 2025 18:33:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4761C83FAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739989865;
	bh=7+U4hlbRRkCtOivqiZ1mgI+iuEuIRsQgZ1yTe2Wwk4Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yQBN05yDHRzI63WBD5IRxcChdLZZ4BMWBP75JLKeIIwFjk1c+5ZYDbBU2aqyqe/LT
	 nech7HETBL/hnFv6RLhJ+otqsgHpFm1M8uXBd0c6LMWBUwneI2lgqgzGuZGXX9q0BH
	 tu5hJx5rQv7fBDHsxHzb3K4e1uqbVYijdEqMTrfp7ZhNckBv6cnL0uLA0m7aq/zJ4F
	 vLQWNJUUfMImTVDw1ohSTzbPvIDS5swM6h7oiLwhaFyOjNQN3KfrKp+HaSrwPx1LEw
	 MuJHAwidt4ft5NE8Qo/yZG23mQPDMsziBjf31pitzDTdv47rq5RT5CEI7a64ffo+CI
	 QVKOZ9NpHOf/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4761C83FAF;
	Wed, 19 Feb 2025 18:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E54EB940
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C91FF402B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:55:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5x4AbLqb9Gji for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 17:55:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::729; helo=mail-qk1-x729.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9624A400D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9624A400D5
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9624A400D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:55:20 +0000 (UTC)
Received: by mail-qk1-x729.google.com with SMTP id
 af79cd13be357-7c0ac2f439eso4968085a.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 09:55:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739987719; x=1740592519;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7+U4hlbRRkCtOivqiZ1mgI+iuEuIRsQgZ1yTe2Wwk4Q=;
 b=BJ/RB9YD2smzP5wHuC1XQvMmD6x3Y2MdMTSoUnu79WMPAJGa08GlO0dX15hvXnkikU
 ez4sxwXemMdoeECRILYYs/flCBFORbZMM8GpeIVCrhfoAXg0QS/abeDxLpqU6JYpfp5c
 sPoJbhC9niuc+VNPeIp6aQ04/F+Q/tISkvBSRwi95pwoM37pEnB/Kjdhi/l0BAwLpFQz
 3iVbxLdzYe3mLdm9+dTJi4TByb3+Svqv/JWaDSkMU7cEuhKTwzo/a6edQu8FPLoRE1Dy
 9xA3694W3O8fKIjJz2u7AN4yttXNCkP78D1e95mrtCIktwuVI3xRdjGt6swSPQfP8644
 q9/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPro9NrUFLF9CCxjM1qYCdqgnd6UyU2P1osEWHBlhqSdFDmo9IM68BQbJj+491KcFiN6BefvFaIG/Msv7kYak=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwPo/bGZqHiaw7IJ4py/M0WDbpUTtSEQzKpMICGCXC+NCXTctGf
 2vjI7MknSESvGrBTpQQvbMRzGulySh+GxVgkJiUfiA9CraKT2xgRt1yjmKEVyzA=
X-Gm-Gg: ASbGncvhYSu6zisBoiuSxoWSOzj4vaNoLIcjZowcvQsRW8bYP+K2N+yyRCLRX9G33wv
 D1Lml52e1tPrBDwOQLkM1hUIGGfKUzNL0w7b1oeQZBsWUwee/AdOxPotLFzHwAqpRosS7KMky32
 H8qICvCH6oGcXOGMIoFnl4L9FjyKCbxdW+Wj/+YI0qAquOHHY5Phgi6VUEmxvUTKogdDz1CgX8M
 GVtNCCFGkyiyN6tUYJYY1esEIgb5D/S6ylUDXniWPGxkgoRp7tWYQ93jIbxyvlkjY3ga6jIrynm
 iBocvNhLdRlGjpZMG6sh4bi9jSV/xAtP7gT5ygjSBy6ZMZvcw8UjMA==
X-Google-Smtp-Source: AGHT+IF4JWqBzCr9WxZgFH1oI0VmRy7ElF1B9/75UZ7FGlelL5kiY6+NLR0PHY+4Ssp1JO5WDWjiHw==
X-Received: by 2002:a05:620a:2491:b0:7c0:ab10:111d with SMTP id
 af79cd13be357-7c0ab10139fmr1386653285a.51.1739987719327; 
 Wed, 19 Feb 2025 09:55:19 -0800 (PST)
Received: from LQ3V64L9R2 (ool-44c5a22e.dyn.optonline.net. [68.197.162.46])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7c0b3bf7374sm146704085a.95.2025.02.19.09.55.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2025 09:55:18 -0800 (PST)
Date: Wed, 19 Feb 2025 12:55:17 -0500
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
Message-ID: <Z7YbBQqT4wOtmbgC@LQ3V64L9R2>
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
 <20250217-igb_irq-v2-2-4cb502049ac2@linutronix.de>
 <Z7T4Cpv80pWF45tc@LQ3V64L9R2> <875xl62xgy.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875xl62xgy.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739987719; x=1740592519; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7+U4hlbRRkCtOivqiZ1mgI+iuEuIRsQgZ1yTe2Wwk4Q=;
 b=WPXmPmhfVHY2oBiHz2zXcF3ymxBoPRruSymW6dv7OI/OL2rLOPD67nBRpHtDm9z06a
 6fS666v6oqCMpjmnkQ77ldvA3RpY29S/uBl6+aDq01ela0gD0lo34z9rS8EgglOjb7k0
 wDKvQGTqles5YPuR2qFrGrQAEeyebatG9sGCI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=WPXmPmhf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/4] igb: Link queues to
 NAPI instances
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

On Wed, Feb 19, 2025 at 08:41:01AM +0100, Kurt Kanzenbach wrote:
> On Tue Feb 18 2025, Joe Damato wrote:
> > On Mon, Feb 17, 2025 at 12:31:22PM +0100, Kurt Kanzenbach wrote:
> >> Link queues to NAPI instances via netdev-genl API. This is required to use
> >> XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy polling
> >> support") for details.
> >> 
> >> This also allows users to query the info with netlink:
> >> 
> >> |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> >> |                               --dump queue-get --json='{"ifindex": 2}'
> >> |[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
> >> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
> >> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
> >> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
> >> | {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
> >> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
> >> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
> >> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]
> >> 
> >> Add rtnl locking to PCI error handlers, because netif_queue_set_napi()
> >> requires the lock held.
> >> 
> >> While at __igb_open() use RCT coding style.
> >> 
> >> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> >> ---
> >>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
> >>  drivers/net/ethernet/intel/igb/igb_main.c | 43 +++++++++++++++++++++++++++----
> >>  drivers/net/ethernet/intel/igb/igb_xsk.c  |  2 ++
> >>  3 files changed, 42 insertions(+), 5 deletions(-)
> >
> > [...]
> >
> >> @@ -9737,16 +9765,21 @@ static void igb_io_resume(struct pci_dev *pdev)
> >>  	struct net_device *netdev = pci_get_drvdata(pdev);
> >>  	struct igb_adapter *adapter = netdev_priv(netdev);
> >>  
> >> +	rtnl_lock();
> >>  	if (netif_running(netdev)) {
> >>  		if (!test_bit(__IGB_DOWN, &adapter->state)) {
> >>  			dev_dbg(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
> >> +			rtnl_unlock();
> >>  			return;
> >>  		}
> >> +
> >>  		if (igb_up(adapter)) {
> >>  			dev_err(&pdev->dev, "igb_up failed after reset\n");
> >> +			rtnl_unlock();
> >>  			return;
> >>  		}
> >>  	}
> >> +	rtnl_unlock();
> >
> > Does RTNL need to be held when calling netif_running()? If not, you
> > could probably reduce the size of the section under the lock a bit?
> 
> All the other instances in the driver guard the netif_running(), too.

OK, I spent a bit of time tracing through the paths in the igb
source. I think the v1 feedback I sent identified all the RTNL
paths, but: 
  - I am not an igb expert
  - I don't have a device to test this on
  - It is certainly possible I missed a path in my v1 analysis

The above said, as far as I can tell this patch seems fine, so:

Acked-by: Joe Damato <jdamato@fastly.com>
