Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 129BEA2F6F2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 19:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BCA181770;
	Mon, 10 Feb 2025 18:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZF6MceoMiNrx; Mon, 10 Feb 2025 18:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5B138175E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739211953;
	bh=lBLXfzB522A5CbhK5TFNajhZ+MxFO1T0Mo8nWMaVTRQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8FPsrvsqbypMfeX+0TfoMObxJL6VPIc4XD8N0dP1txa3lr9QX0IPOjNMNmKIOCu/j
	 prKfB8TQqV9sp8OQuc+xRDzYeTTruHm6gMtojhxu/HBrby0U3g8hngCkgN8mBLFLLQ
	 TuGCkZLo119el2MuIdk8B9kPeRtEOhYvNZXLaWFf342wUDJobNP1zGl915qX66ywMH
	 xyFy7dmAp6ODhO+i0Ppy47JRqNfzUngRqFNb/l8fUkk339uKapQfuih7POwuFtv1ZB
	 YlVVKCrdQd+TuNjCjRZPauED/j7Uiots39NVSJwL4NeVj39V//gOmzpFzzS1IHgKQ9
	 JDPWirQZsDYyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5B138175E;
	Mon, 10 Feb 2025 18:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 685326C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BF97410E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:25:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n7uflktHTAZQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 18:25:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102d; helo=mail-pj1-x102d.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57E7B410D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57E7B410D1
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57E7B410D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 18:25:51 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-2fa4493a695so3379248a91.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 10:25:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739211950; x=1739816750;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lBLXfzB522A5CbhK5TFNajhZ+MxFO1T0Mo8nWMaVTRQ=;
 b=tEbptd8FT3vaZlExF9XpV1OeQ54tM0KRaXOqHkIE9SSxPpqwiNPSW8WT8HH9tZH3/t
 TDPS+wk9YvgpV2CYgpZRKnvh953rJV6eDSqdS7JHWJINRTUFqXJZgturY6hlePgn31cK
 U1l6etmhnk7SXqO62xDaLsUs4d4bgYrRyBnDkFSSCqBqU8Ib49c/ZcRbQ7UxkCtQyUQc
 vISVbxn6IkN1moY/DtIMDKFipUYtJNrOdoOSt6DYnsfWl7pWm028m8uyDH+NferYtY8b
 Cyi4TmofvKFeQ5nTn+rkH43k+RH0q87OSKwsfPhsIQmlAX76P1Kps7Hgliyb5s2wZ+xA
 445Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVX/JIdpQ7FUPecTiyJfBAJY86e9AKKCDj7a8Q/7xw2L2kCc0T++jeSDDwa9HqIyNM1U1AIUj5qZb39TtU4kaw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YysnC0+jv25zfmCFX7l57ph31JF4gDfI1pN6FtqvvuudA59vnhW
 Pf8VgypzFjCkC6LV2MgPu0ubl4w45p/EdMmH5nddJ+zEKFQKACpM7M+4Bp0mNEg=
X-Gm-Gg: ASbGncvwwlCYuXXo2skqYemQ3OAtw7icV5BcetNI1QpHxIY0JpmzqOEoNQGX+f2FR8z
 E8y+GOl9gGNE8xsc6/xe6dl/+i/hYMgYOLGStcnhaOG8atVYKHFZPslJcDV6ccp8250fkSiw+eJ
 GbWZginSGl02Vvc4I2fL0sFFw3+Z18ujzgIl6yZOl5C4soNmThD+bW8v+qTFT33n6cZZaa/M/zi
 wPkM33qGHTbH3UQ+H96oY0FqzB+DoJzsvqOaw2/tsBB3FDH8y4UHuNnNfcWf0AOCBbAgboUzTcH
 QE6HFuJPcR2fpBsu4b4eOAeHL+ZxYvl7jCurpnRUfay8BXKkt99ePNWtGw==
X-Google-Smtp-Source: AGHT+IEeGi/YxACQdrn8oE1WkyJdsSg+jOCxVIUUqafmiRNWAw7aoFvnfDNnWa0QFcaXWTLwctzU3Q==
X-Received: by 2002:a17:90b:3e8a:b0:2ee:a76a:830 with SMTP id
 98e67ed59e1d1-2fa242e74fdmr23095209a91.24.1739211950624; 
 Mon, 10 Feb 2025 10:25:50 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f9e1e2373esm11431743a91.37.2025.02.10.10.25.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 10:25:50 -0800 (PST)
Date: Mon, 10 Feb 2025 10:25:47 -0800
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z6pEq9fs5RvglrVk@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <20250210-igb_irq-v1-1-bde078cdb9df@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210-igb_irq-v1-1-bde078cdb9df@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739211950; x=1739816750; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lBLXfzB522A5CbhK5TFNajhZ+MxFO1T0Mo8nWMaVTRQ=;
 b=q7iai+qWFnhO6Nq9sZ2K9Th3YpY/Ov2c86En9KwmkOgwxpGOteRx4phddl4X0zu+oN
 ft/G0F22ql6DJ5daXdWZW0e+l/AfmixjwzvApJL2f3DcP/PGQe2w6Z6hslBCTK81KcnC
 OqNB/TkWaei8iyeXgWjqmF43HGGdBLUhklg2k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=q7iai+qW
Subject: Re: [Intel-wired-lan] [PATCH 1/3] igb: Link IRQs to NAPI instances
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

On Mon, Feb 10, 2025 at 10:19:35AM +0100, Kurt Kanzenbach wrote:
> Link IRQs to NAPI instances via netdev-genl API. This allows users to query
> that information via netlink:
> 
> |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
> |                               --dump napi-get --json='{"ifindex": 2}'
> |[{'defer-hard-irqs': 0,
> |  'gro-flush-timeout': 0,
> |  'id': 8204,
> |  'ifindex': 2,
> |  'irq': 127,
> |  'irq-suspend-timeout': 0},
> | {'defer-hard-irqs': 0,
> |  'gro-flush-timeout': 0,
> |  'id': 8203,
> |  'ifindex': 2,
> |  'irq': 126,
> |  'irq-suspend-timeout': 0},
> | {'defer-hard-irqs': 0,
> |  'gro-flush-timeout': 0,
> |  'id': 8202,
> |  'ifindex': 2,
> |  'irq': 125,
> |  'irq-suspend-timeout': 0},
> | {'defer-hard-irqs': 0,
> |  'gro-flush-timeout': 0,
> |  'id': 8201,
> |  'ifindex': 2,
> |  'irq': 124,
> |  'irq-suspend-timeout': 0}]
> |$ cat /proc/interrupts | grep enp2s0
> |123:          0          1 IR-PCI-MSIX-0000:02:00.0   0-edge      enp2s0
> |124:          0          7 IR-PCI-MSIX-0000:02:00.0   1-edge      enp2s0-TxRx-0
> |125:          0          0 IR-PCI-MSIX-0000:02:00.0   2-edge      enp2s0-TxRx-1
> |126:          0          5 IR-PCI-MSIX-0000:02:00.0   3-edge      enp2s0-TxRx-2
> |127:          0          0 IR-PCI-MSIX-0000:02:00.0   4-edge      enp2s0-TxRx-3
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index d368b753a4675d01b5dfa50dee4cd218e6a5e14b..d4128d19cc08f62f95682069bb5ed9b8bbbf10cb 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -947,6 +947,9 @@ static int igb_request_msix(struct igb_adapter *adapter)
>  				  q_vector);
>  		if (err)
>  			goto err_free;
> +
> +		netif_napi_set_irq(&q_vector->napi,
> +				   adapter->msix_entries[vector].vector);
>  	}

As far as I can tell, all paths that lead here hold RTNL:
  - power management (__igb_resume)
  - ethtool set_channels (igb_reinit_queues)
  - and regular ndo_open

So:

Reviewed-by: Joe Damato <jdamato@fastly.com>
