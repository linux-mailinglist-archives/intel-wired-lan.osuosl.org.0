Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68868A58E38
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 09:34:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1DD240786;
	Mon, 10 Mar 2025 08:34:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b5S7z3qPpa4k; Mon, 10 Mar 2025 08:34:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 872D140787
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741595663;
	bh=Y2NHSFGieJrXy63h9C9tBiXMMHg1HSP9eRFf8a1NgQY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DQt6CS+Cd6qMBbcB0MCzCcPsX0LZsy5NsRUm0UcRgTUwdTAURQvy7QI5UuQRSsPr3
	 xxQ2tAEiAzwu5C3FgNvLXoOWVTAgUEG4AuHeJ8kD/WJrpIn0g90t3SUttf3QmYyAxs
	 IWwgteH+op9RC/jSrQe3eJYe2/aE45vJh73Y2yPT1S17ipoyaUk5aavUwtr4quSHvJ
	 g8stBU3e5tfwEQoQB+l3+mMvuu67Etqve8NSSiEdDut7UBlXJ4syJSsxjgbNR0sC8F
	 GV22stxhxryqBhC1PsUha21JBFNeJCnlPbdUx7W8GWMaQn7vF/HT89UTA38S7dL8X/
	 XSI/NN2ktBCgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 872D140787;
	Mon, 10 Mar 2025 08:34:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D69E1C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 08:34:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C206606BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 08:34:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wJvOpiN1B927 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 08:34:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F1E3560684
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1E3560684
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F1E3560684
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 08:34:19 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-aaec111762bso759036566b.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 01:34:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741595657; x=1742200457;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Y2NHSFGieJrXy63h9C9tBiXMMHg1HSP9eRFf8a1NgQY=;
 b=RzG+GBTWsmV+dFpi4G80DiUj7YGczsW5HmkWgcfQojIM+87Tthk1Fz1DC4db5ogeoz
 CBKTO7NKOE2NySxXAUhd5/0/bCK6Ifh2E4K6jMMVIwOZP2NKtHmxzPBYAyjfrhEu0e0V
 XlZa2T1Ji/ozFfQHHFojt2UZiBgx5S3A4vL375T2gGOLACIDsEyzyHdEJTwcCsClq9Hw
 937YwRCzzWEf3It6tWMf4i0ppIMpO2azuYS0vn3RVnINHCpZvPRWWWLRIFF3NiLjN9I0
 0DFW6ac6n7nFHykS1qaaFH7Q6kudoSH/kCziQ/ksVxu+D2F/m68lr6ePXop1/Q+z3X8a
 rtdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWLC2O8ZqHLlZJ0EgzcgRycgwYdMfQuIDuRkUuQSpwsyD2bWk1PeqUSyZ1/TeQeph8uoWkPXxmK5al4WRvYy0E=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy8MthuQoPdOSHB0yPN5HfTVEr2cDF6AP9SZyulBxK0Y+MPbH+E
 bVtpAdh1PwKZA8QI08KL6bz+pdwQiukzzAu39r/oSxs0KuHH1CqdzVnl7XbjGHA=
X-Gm-Gg: ASbGncsI/yFv7QIn7xLCwoV8/lLoAIaJqY0BmDIchlZLuDo1OmrMzYebjcg3zJScD4y
 UcwBjlSZ7CEoRZaR2onsdSG7ljyABEe7FIY88fu1mri1I8Hr/oIu4adiCWH0/9/Amk6ralGyaGQ
 gdjpSLeYkWbD0FBCjA6qoSXHaxqTBlK2gXjTy+GNs/5SJGSvtpasulWtjB7Mg0zTiPP63PRQ7a7
 97Ocukr1jAwDqtL1+nzVpVz5FMhoR8Xuk2uSf3nscrL26YI3LSVYpwOO+a7uQSVYrkBpSYF37Qo
 OomiQqlhitMaIVg=
X-Google-Smtp-Source: AGHT+IFZvLE5+yAuEYdnhKe40tiikkaeysAEk4mht6wIl9eR/eBXPqLfUik9L3YmGwoHc7gh1HsKqw==
X-Received: by 2002:a17:907:7e92:b0:abb:c647:a4bf with SMTP id
 a640c23a62f3a-ac252af0495mr1152749666b.23.1741595657509; 
 Mon, 10 Mar 2025 01:34:17 -0700 (PDT)
Received: from LQ3V64L9R2 ([46.188.239.10]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac283e4d50csm318030966b.175.2025.03.10.01.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Mar 2025 01:34:17 -0700 (PDT)
Date: Mon, 10 Mar 2025 09:34:14 +0100
From: Joe Damato <jdamato@fastly.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z86kBp2m-L-usV0V@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
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
 <f71d5cee-cafc-4ee0-89fc-35614eb06f94@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f71d5cee-cafc-4ee0-89fc-35614eb06f94@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1741595657; x=1742200457; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Y2NHSFGieJrXy63h9C9tBiXMMHg1HSP9eRFf8a1NgQY=;
 b=M14eqO5AYve+DxXVmYdEellUOD207dYZYeME/S3pyzYCP2+WC/m0TwAEW144GMyMpD
 0MrHehFIq6uCISoxc0AC2IMW90xH1/suk63xZ5DFTaiA3E2Mbl5D96MtOLhvlpqCBXoS
 Hc0qmPhwdRcoVY8ecAW3wDfYaaPqgNmLMf/3A=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=M14eqO5A
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

On Fri, Mar 07, 2025 at 02:03:44PM -0800, Tony Nguyen wrote:
> On 2/17/2025 3:31 AM, Kurt Kanzenbach wrote:
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 157d43787fa0b55a74714f69e9e7903b695fcf0a..a5ad090dfe94b6afc8194fe39d28cdd51c7067b0 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -45,6 +45,7 @@ static void igb_txrx_ring_disable(struct igb_adapter *adapter, u16 qid)
> >   	synchronize_net();
> >   	/* Rx/Tx share the same napi context. */
> > +	igb_set_queue_napi(adapter, qid, NULL);
> >   	napi_disable(&rx_ring->q_vector->napi);
> >   	igb_clean_tx_ring(tx_ring);
> > @@ -78,6 +79,7 @@ static void igb_txrx_ring_enable(struct igb_adapter *adapter, u16 qid)
> >   	/* Rx/Tx share the same napi context. */
> >   	napi_enable(&rx_ring->q_vector->napi);
> > +	igb_set_queue_napi(adapter, qid, &rx_ring->q_vector->napi);
> >   }
> >   struct xsk_buff_pool *igb_xsk_pool(struct igb_adapter *adapter,
> 
> I believe Joe's fix/changes [1] need to be done here as well?
> 
> Thanks,
> Tony
> 
> [1] https://lore.kernel.org/intel-wired-lan/9ddf6293-6cb0-47ea-a0e7-cad7d33c2535@intel.com/T/#m863614df1fb3d1980ad09016b1c9ef4e2f0b074e

Yes, the code above should be dropped. Sorry I missed that during
review - thanks for catching that, Tony.

Kurt: when you respin this to fix what Tony mentioned, can you also
run the test mentioned above?

NETIF=eth0 ./tools/testing/selftests/drivers/net/queues.py
