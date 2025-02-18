Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B672A3AA8F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 22:13:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF2AB607C3;
	Tue, 18 Feb 2025 21:13:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RkClac_MXY7Z; Tue, 18 Feb 2025 21:13:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E19C7607ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739913233;
	bh=KOwo1uSBN0fsJpKRiwOTcWgM6AA2XJnPbleDuraZP2o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j2SSMO9GrMWd8CFdOkjGf9HN90YoQwBp3pivu1xoGBkoBqPvv48tWmz2ioIYYzfBS
	 5JHh94dcm9SAMU7khz0rmRduxzFPYzkOHRUmJusZQPK3APgmKuCBsx4dZ+sODqTeVP
	 fP/GoQQiM8c11WnFjATE5y8ixbiahNPQh7281MLQak3ez1grnRXvqHHa90LZTaIeFm
	 7sWtJuefE80ywSYJkq/gO8vhLFLGV7s8sv+Cnf7RK9AxfOPd9E7pt4S1M0fErNeVgi
	 9ePqjGerA0+8bE3Lc1N5/ROiWs/5Zk177wkTJZ1Z/Z28I/vpYx1m+MrbkAfoAzizMl
	 stoonKR22mZaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E19C7607ED;
	Tue, 18 Feb 2025 21:13:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 77C36C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 671ED40BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:13:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CZ0wFpT6Vjgi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 21:13:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::72b; helo=mail-qk1-x72b.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 38B3B40BBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38B3B40BBC
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38B3B40BBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 21:13:50 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id
 af79cd13be357-7c0893f9aa6so328966485a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 13:13:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739913229; x=1740518029;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KOwo1uSBN0fsJpKRiwOTcWgM6AA2XJnPbleDuraZP2o=;
 b=IdApgDSVLFfUmqdhqgS5wa5El6XOa9ZeVje2pRgoWVkiAohUvR2iIV9z5v0eBMnkf0
 uwtDAN5audlLDs8iV4vF7tMPu+MDnw6m65hwRVowpGhHCF6VD2BEFRcgij7P7RWprMyF
 Q+4dQftHNFGsovmy+/1S4wFt5PMF5K9sRCRnWMgtnayYkJBAz+4B3uvXqFrwnPGNbVBF
 LC6NGtesqFdi+BfMaWPrMpgq1qIJwfc44qCyNIqRPvLDz/6EI4g7FlcsuaVQIxtRAK5z
 NIMlU2Ypcwe7K/0Ktgcvmm2ZvNDZHIsCxM59YzpCZV6tW69ZKhkwrMuRsOrraVeFaapr
 fvFg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/QclnfBMowCNpAc8LrQCp2JljjUuDPuJ8yE6fVZHPAADdI0EvOjj6NS4sqg1FU4YbeYU8I93bREQSO+cZPzM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxvpirxuORbK4fD8Q6xbhRkqDSLk/VD08jzcoNSsuw7OHPgM1uJ
 R2yAAWw61Z/TrW0rrUElK/agnA9PVFNiPM9ImJumT0B/A1/hTJQZ0+l09sM12Qo=
X-Gm-Gg: ASbGncuPGzR400fMhP5yDq/x6UFsAZZy6Yt1w6b17s7AtDvd1ttILCeOWY8Kraxf3E1
 4CbmOQa2jYiajwBy8TyUrCzClFjt9yR2Tg/4K9Ew2ZgQLwFij9HWvbgOx41DwZPs8wksBzjE20b
 CCadhGQIYya17WuR7AaeLWtPzR4KIO5NfL3sEmL5/rcVC+lTsxDke+wVxLyuorsYp0DY9TexXBg
 qml7Ijb+RVrYsDoG1eEDlA3dFuHnJOZgQLy2fMO9HjaiWeFcv8oWhyPg/RAHy5JdbhCKwZmwvsm
 wfmkzQ6yNoW0caWk0Os06EgjlsSfUxYDIo78Hh98XcZ6HOH6Es8d+A==
X-Google-Smtp-Source: AGHT+IGesKCuK0/R9g56om9VpqMiX07LesHz+meBhAJvZ6v1OlIF4KCjzwJiIbP6w2H19/Dx4Y4i2A==
X-Received: by 2002:a05:620a:4403:b0:7c0:589b:2f37 with SMTP id
 af79cd13be357-7c08a9dd0a1mr2345321685a.31.1739913228928; 
 Tue, 18 Feb 2025 13:13:48 -0800 (PST)
Received: from LQ3V64L9R2 (ool-44c5a22e.dyn.optonline.net. [68.197.162.46])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7c0b1027932sm84051985a.115.2025.02.18.13.13.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2025 13:13:48 -0800 (PST)
Date: Tue, 18 Feb 2025 16:13:46 -0500
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
Message-ID: <Z7T4Cpv80pWF45tc@LQ3V64L9R2>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-igb_irq-v2-2-4cb502049ac2@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739913229; x=1740518029; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KOwo1uSBN0fsJpKRiwOTcWgM6AA2XJnPbleDuraZP2o=;
 b=wjpE4gVVn7urLIS6xkrWpYnbT0Q+DQMkhpa54XxF0wVZt3EJCZMcuveYlm0qQqPFO/
 043efPCnc3mpTOi6Sajl1laD78cSCMBW3eAg8YlNciP4+55ht1+XjtPV1o4kbpFSvWH9
 0Gq+je1HrbANb4Qw1je9BBhftch4D4KmK/nBs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=wjpE4gVV
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

On Mon, Feb 17, 2025 at 12:31:22PM +0100, Kurt Kanzenbach wrote:
> Link queues to NAPI instances via netdev-genl API. This is required to use
> XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy polling
> support") for details.
> 
> This also allows users to query the info with netlink:
> 
> |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> |                               --dump queue-get --json='{"ifindex": 2}'
> |[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
> | {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]
> 
> Add rtnl locking to PCI error handlers, because netif_queue_set_napi()
> requires the lock held.
> 
> While at __igb_open() use RCT coding style.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
>  drivers/net/ethernet/intel/igb/igb_main.c | 43 +++++++++++++++++++++++++++----
>  drivers/net/ethernet/intel/igb/igb_xsk.c  |  2 ++
>  3 files changed, 42 insertions(+), 5 deletions(-)

[...]

> @@ -9737,16 +9765,21 @@ static void igb_io_resume(struct pci_dev *pdev)
>  	struct net_device *netdev = pci_get_drvdata(pdev);
>  	struct igb_adapter *adapter = netdev_priv(netdev);
>  
> +	rtnl_lock();
>  	if (netif_running(netdev)) {
>  		if (!test_bit(__IGB_DOWN, &adapter->state)) {
>  			dev_dbg(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
> +			rtnl_unlock();
>  			return;
>  		}
> +
>  		if (igb_up(adapter)) {
>  			dev_err(&pdev->dev, "igb_up failed after reset\n");
> +			rtnl_unlock();
>  			return;
>  		}
>  	}
> +	rtnl_unlock();

Does RTNL need to be held when calling netif_running()? If not, you
could probably reduce the size of the section under the lock a bit?

Otherwise, the commit looks OK to me, but I am not an IGB expert and
it is possible there is an RTNL path I missed in my review of the
previous series.
