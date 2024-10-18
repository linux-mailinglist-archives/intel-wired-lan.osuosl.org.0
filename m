Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5321E9A4444
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 19:04:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F45D60B2C;
	Fri, 18 Oct 2024 17:04:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nmce8TUhZw7a; Fri, 18 Oct 2024 17:04:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8BB560732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729271082;
	bh=sCMQDa/dP8RDWv8tfIk4E6+eiiSMZlKszynM6qeVdr8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yjaUTCZfN2Q2sIBq3w634WctbAAtnzLPMXEBB92FS3y3ofvnJkjEacecqXlCp0ZNc
	 3H0AR2TYq/+3/V0i8jzxr7h/axHp9NbJxXYK8oF65/IMDVvCCcqFI1bFTNpkzX/X45
	 YoYC0qxjL3jUz4UtWdY2E3JysD4noPaVgg5Qwt4jspWrvlhnHFYtyCwFIawt9dYlml
	 asJl/TLeLZ3hDdrSyXDXsjvP+9DCIss0z7G6cbh+hyEnfnwJvAPn8ZjxUwXw9YciB5
	 mzU09Iy/GEqnvrfFr6SrXcxxrXqXLfhmWQwwJNQzy52o/zgmG4z6jF+ANPBsZs0A57
	 eaEaNAVI7iMjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8BB560732;
	Fri, 18 Oct 2024 17:04:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C7D2627E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B52B081517
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:04:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DBv4jONVICm3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 17:04:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42a; helo=mail-pf1-x42a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BCFC381501
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCFC381501
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCFC381501
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:04:39 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-71e61b47c6cso1880080b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 10:04:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729271079; x=1729875879;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sCMQDa/dP8RDWv8tfIk4E6+eiiSMZlKszynM6qeVdr8=;
 b=TAVn5Z220Z4NYjFWUGOhCXykstzUJQsXG1NL6e/L7gk7jBRENyLrEofFeNHB4Z3BOH
 QClZg/qSkzRj6OooCkeyKi0Oj0g1DWVEX9q3WT5DXRAHb4Rd0uzydAtvIofBg/GhWF46
 fdeCvpdCbKPBn4XkJrtaDKMx3BhWcNrknyTKJxiwaoX6ijxBXGwGJkhv7BxDzUreqhWS
 4ReSrtgP9k420beqkiksWYL53ktxF9SpYUKlX4Q75OTvRlogVGoBEoC79hg6ucF0xwmS
 MTXxZfScSe2SV/DJKyjevPJztLPTjMMIuYr9708CU9ZGrxd1OpKQ6TFKRicx85OU5dIX
 8nDw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU9VLXz0pJztkHNAfjRbtTp4QoaE5rIbfkydpoDb4/UgLNCWqiNt+hgRr05dGm+AoYCYqOiOktbOkfjN17WT3I=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzxJrevglyNxLk9x3SFMb/DGLWJKgUwWTvCLi2FIIf0GbmXanjQ
 KdTHt40OumszztI7kscWaw0QWiRWtT6Jou0y6zPcVMiwrdbhqYm1mrL6BU3ErTg=
X-Google-Smtp-Source: AGHT+IE0G/O/vUc33igo/n3Q/6L0CYUI2iXIetuWqMCaUU7jmAzUGItm6+7bfb3fKzqj0wL1ZAFAgQ==
X-Received: by 2002:a05:6a00:4b4c:b0:70b:176e:b3bc with SMTP id
 d2e1a72fcca58-71ea31f6287mr4479529b3a.28.1729271078666; 
 Fri, 18 Oct 2024 10:04:38 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ea3312d5csm1694348b3a.5.2024.10.18.10.04.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2024 10:04:38 -0700 (PDT)
Date: Fri, 18 Oct 2024 10:04:35 -0700
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: netdev@vger.kernel.org, vinicius.gomes@intel.com,
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
Message-ID: <ZxKVI_DvFWBvRMaf@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, netdev@vger.kernel.org,
 vinicius.gomes@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 <87h69d3bm2.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h69d3bm2.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729271079; x=1729875879; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sCMQDa/dP8RDWv8tfIk4E6+eiiSMZlKszynM6qeVdr8=;
 b=hU2RNpegvjT2O2svHTn6pDKPyrhZ1U6t76bUyUBL30aAAJOCrmAJD+4BbHQ41h4fpr
 1l2ycO1mjCc1PqOMKE+6UlXBaSqN7CFVfYBmOkYXL01i6OqHd75kEzrORXSkjnZj6Ig4
 6QSi9pxv9osZEMnROUsaFzKVdhQnMNQLrpXh0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=hU2RNpeg
Subject: Re: [Intel-wired-lan] [RFC net-next v2 2/2] igc: Link queues to
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

On Tue, Oct 15, 2024 at 12:27:01PM +0200, Kurt Kanzenbach wrote:
> On Mon Oct 14 2024, Joe Damato wrote:

[...]

> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 7964bbedb16c..59c00acfa0ed 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -4948,6 +4948,47 @@ static int igc_sw_init(struct igc_adapter *adapter)
> >  	return 0;
> >  }
> >  
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
> 
> In addition, to what Vinicius said. I think this can be done
> simpler. Something like this?
> 
> void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
> 			struct napi_struct *napi)
> {
> 	struct igc_q_vector *q_vector = adapter->q_vector[vector];
> 
> 	if (q_vector->rx.ring)
> 		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_RX, napi);
> 
> 	if (q_vector->tx.ring)
> 		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_TX, napi);
> }

I tried this suggestion but this does not result in correct output
in the case where IGC_FLAG_QUEUE_PAIRS is disabled.

The output from netlink:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                             --dump queue-get --json='{"ifindex": 2}'

[{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'type': 'tx'},
 {'id': 1, 'ifindex': 2, 'type': 'tx'}]

Note the lack of a napi-id for the TX queues. This typically happens
when the linking is not done correctly; netif_queue_set_napi should
take a queue id as the second parameter.

I believe the suggested code above should be modified to be as
follows to use ring->queue_index:

  if (q_vector->rx.ring)
    netif_queue_set_napi(adapter->netdev,
                         q_vector->rx.ring->queue_index,
                         NETDEV_QUEUE_TYPE_RX, napi);
  
  if (q_vector->tx.ring)
    netif_queue_set_napi(adapter->netdev,
                         q_vector->tx.ring->queue_index,
                         NETDEV_QUEUE_TYPE_TX, napi);

Which produces correct output:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                             --dump queue-get --json='{"ifindex": 2}'
[{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]

I wanted to send you a note about this before I post the v3 so that
if/when you review it you'll have the context as to why the v3 code
is slightly different than what was suggested.
