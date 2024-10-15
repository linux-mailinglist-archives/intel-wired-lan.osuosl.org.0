Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 809EB99DCF7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 05:44:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEF6F404FE;
	Tue, 15 Oct 2024 03:44:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kqnwxOJwJlIP; Tue, 15 Oct 2024 03:44:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8685403B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728963874;
	bh=hPS/SalmTp6hHiIGdkF/lInIYP1J29HJmrfUXpyO3Lk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MtkF0VXgC/yjtp59neXstVu9beMPwgHFtrsO2Xoiam48pQgYjX2q0JNDTw4ZUlj14
	 EKJZfi8wBDTdawOHwLuMuIqdPjfJjUfn8R8JzAPKHlBtFKozdvpCLRNN/t02aybw4z
	 K9mZhGcqdI0cO0vx0KI1FHABCIS9qHhtbUUJfncAELosbOj8z2Z9y0lGGIdu7nnafz
	 K6ADkJZV2Ts3ThWKp2gVOCDNUAsD0xVDhBFeBaGrhjJWM9dXy1x6z99Raj6TVr06Ht
	 fO6jkHFZCBK6faxnMTSvgBGVFMiIJ3EJ3B805qtpnUlxyZ5NWH6G91fCaoQSuHlQlp
	 g1uBrtpSPodxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8685403B8;
	Tue, 15 Oct 2024 03:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62B4D1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 03:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 598136082C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 03:44:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vtiBeXG6QOGB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 03:44:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8045B60772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8045B60772
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8045B60772
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 03:44:32 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-20cb47387ceso24598635ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 20:44:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728963872; x=1729568672;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hPS/SalmTp6hHiIGdkF/lInIYP1J29HJmrfUXpyO3Lk=;
 b=iQz29tuqKyt5DGZK6DTozh5zMWyZ89ROt+Pj4TTM8atGrDe32a/iz9+S1SzP0G48XU
 XP3Evr6Oaxy4AMR4WLgotPZliCwG/Ek/cnkVYNqjVwpScnjQqhIxFc06s6lAf2jrz5ol
 zEeeceGuvsLE+7qfP+oziBFwGjJdqsUCQvuqZCyore+MWj+VZXNmrEPtg6y81sA4chCf
 afXtmPdSIO9Z5I+O6dcBvCoGwLBgo84WJ08p0zEvj3BSjfbPg7y554aEMcECV2vC0egk
 BkQhQlWG/l4JY5ZsvXE5Ri7KpwCwKVjnJJ3VYM9bKNk1iLDCAOdybYksH2h5bQWWI4Ui
 pw8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVoLUQ9yh6rVSOB6CNr8GVYr1l6+dHDS17ew4i0X6k/7iTD0cdPbIccSIPb116TnVn+SW5k3+IjokR1+jckrs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzOW3GsoShYuTVffm15QiEenx35sH8cP/aTDLsDJGQad7+bLW7m
 p78ePbF1c1ovaCBNV2qbLBnC/myhvvKL/xj1lT88dDQ47D0TuU1c0BT8NLWLerI=
X-Google-Smtp-Source: AGHT+IGg6hD/+JJd3rH0wFYpKIRy4eosYrxoFe5WCFe2nT/KI2r4xFW8hvdy6hjzYV7PyQUOvHMFVg==
X-Received: by 2002:a17:902:e882:b0:20c:c1bc:2253 with SMTP id
 d9443c01a7336-20cc1bc5122mr124496535ad.32.1728963871718; 
 Mon, 14 Oct 2024 20:44:31 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20d1806c744sm2846525ad.309.2024.10.14.20.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2024 20:44:31 -0700 (PDT)
Date: Mon, 14 Oct 2024 20:44:28 -0700
From: Joe Damato <jdamato@fastly.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <Zw3lHHEuMt_llNt8@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 netdev@vger.kernel.org, kurt@linutronix.de,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>
References: <20241014213012.187976-1-jdamato@fastly.com>
 <20241014213012.187976-3-jdamato@fastly.com>
 <87ldyqnneq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ldyqnneq.fsf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728963872; x=1729568672; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hPS/SalmTp6hHiIGdkF/lInIYP1J29HJmrfUXpyO3Lk=;
 b=M1jqmQNc2Y702IAsyJl7Rj1SPjmEOafYFIH8nLHQUMBpCVnGdK9zoy2M9POXZZe1B0
 9UnvFFPhysdAZZsMI/8Y4pGX4/96M76mfmCyWQos3WJ8nLoZkALYcPk+CL1RmcFcJEH/
 DYmUYJ1sLpuyL3+IFevmKsDbd882vQBTSyKN4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=M1jqmQNc
Subject: Re: [Intel-wired-lan] [RFC net-next v2 2/2] igc: Link queues to
 NAPI instances
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 kurt@linutronix.de, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "open list:XDP \(eXpress Data Path\)" <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 14, 2024 at 06:51:57PM -0700, Vinicius Costa Gomes wrote:
> Joe Damato <jdamato@fastly.com> writes:

[...]

> > +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> > +			struct napi_struct *napi)
> > +{
> > +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
> > +		netif_queue_set_napi(adapter->netdev, q_idx,
> > +				     NETDEV_QUEUE_TYPE_RX, napi);
> > +		netif_queue_set_napi(adapter->netdev, q_idx,
> > +				     NETDEV_QUEUE_TYPE_TX, napi);
> > +	} else {
> > +		if (q_idx < adapter->num_rx_queues) {
> > +			netif_queue_set_napi(adapter->netdev, q_idx,
> > +					     NETDEV_QUEUE_TYPE_RX, napi);
> > +		} else {
> > +			q_idx -= adapter->num_rx_queues;
> > +			netif_queue_set_napi(adapter->netdev, q_idx,
> > +					     NETDEV_QUEUE_TYPE_TX, napi);
> > +		}
> > +	}
> > +}
> > +
> > +void igc_unset_queue_napi(struct igc_adapter *adapter, int q_idx)
> > +{
> > +	struct net_device *netdev = adapter->netdev;
> > +
> > +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
> > +		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
> > +				     NULL);
> > +		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX,
> > +				     NULL);
> > +	} else {
> > +		if (q_idx < adapter->num_rx_queues) {
> > +			netif_queue_set_napi(adapter->netdev, q_idx,
> > +					     NETDEV_QUEUE_TYPE_RX, NULL);
> > +		} else {
> > +			q_idx -= adapter->num_rx_queues;
> > +			netif_queue_set_napi(adapter->netdev, q_idx,
> > +					     NETDEV_QUEUE_TYPE_TX, NULL);
> > +		}
> > +	}
> > +}
> 
> It seems that igc_unset_queue_napi() is igc_set_queue_napi(x, y, NULL),
> so I would suggest either implementing "unset" in terms of "set", or
> using igc_set_queue_napi(x, y, NULL) directly in the "unlink" case (I
> have a slight preference for the second option).

Ah, yes, of course. That is much simpler; I'll go with the second
option for the v3. Thank you for catching that in your review.

Unless any other significant feedback comes in, I'll likely send the
v3 as a PATCH instead of an RFC later this week.
