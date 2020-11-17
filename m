Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2CC2B5665
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 02:49:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1942284A92;
	Tue, 17 Nov 2020 01:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFAWIyaZxzJL; Tue, 17 Nov 2020 01:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3948F848A9;
	Tue, 17 Nov 2020 01:49:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A2FF1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 01:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0320F847DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 01:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2_UdhWgmSbJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 01:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B85384778
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 01:49:30 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y7so15921186pfq.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 17:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qVlMrW/TYBHLQQxRZjCiFsfg0UaJrVYq50hk7EVwNTc=;
 b=CwKKHbTAbA9eRasruBLt5R49ZKjD9W11itiye3oGBbg6WbpVdMtSV7X4ADgqA08cVC
 AlYl096vNNQITnhdw/Bx+Dsbw4EyGHxIoRraox6xge9OqaFJqudfImT+6BkUow0v9I2U
 jmB7MovNElHNNOnGwOtwVMxM/QQXIdGlb9iwsVL/TS+gvIlAE/vP4HHxIKiFdSdBvtgp
 4cwbNblDGogluFOEtzPlIw4BUj9I+FosMqrrSkoGyMpPlEsHANszCB2eMK6JIYCOOoMy
 1UutzUqsbeJ5kEOGz16zDyJ7twmfaUw0PyDSrN3wWjUAEnWuGNGnvZO1zJztfXOZFKjb
 zlaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qVlMrW/TYBHLQQxRZjCiFsfg0UaJrVYq50hk7EVwNTc=;
 b=WcUyQQFFFZORglm25Q6mJv5wAn0R0FWYkmGddNQ8H4ICCPK/RcGzRlXItAVpBUU57R
 kPAZUoZc/mA3XUxBStaZnwx+8XS1Iw+jWSAVgIP3uGW3lXg+ovd7Jr3+J0yQWOv8efRq
 CDrPmsLR5ymw4kyLwe9/P5B0AhFvKQETLWpo6pQg4xNHxEfj+5dHYvi/IHFtWPDc7DFh
 5/Dcb3AaSfsDaMqrwizSGrDdokLLc6Ze4ocp024vhoo0W5GfxvAdPE7RA+r76zPRvBSL
 SwLaM+KLfBJRDxuBnQTKJMXMGXu1km4YCRR0zNwpFm9T3HAnlSJE+nvvXyjM8K3e3yKp
 DFRw==
X-Gm-Message-State: AOAM531JMgQXZqFyruxcZLSJl3WGk0BaflixkZ78Y3mWuA26be4Ahn0D
 uHb+6FDd8i2PXfiO8WSTd3E=
X-Google-Smtp-Source: ABdhPJwgNjCXHUARq5qV1yIwzmK+tclFLwSQJ83ewczMR+FyB/eIGq90Nr+1wccTZGeCviNQsBsp7A==
X-Received: by 2002:a17:90a:5c86:: with SMTP id
 r6mr1877972pji.235.1605577769978; 
 Mon, 16 Nov 2020 17:49:29 -0800 (PST)
Received: from hoboy.vegasvil.org (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id u197sm19850353pfc.127.2020.11.16.17.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 17:49:29 -0800 (PST)
Date: Mon, 16 Nov 2020 17:49:26 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201117014926.GA26272@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874klo7pwp.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 16, 2020 at 05:06:30PM -0800, Vinicius Costa Gomes wrote:
> The PTM dialogs are a pair of messages: a Request from the endpoint (in
> my case, the NIC) to the PCIe root (or switch), and a Response from the
> other side (this message includes the Master Root Time, and the
> calculated propagation delay).
> 
> The interface exposed by the NIC I have allows basically to start/stop
> these PTM dialogs (I was calling them PTM cycles) and to configure the
> interval between each cycle (~1ms - ~512ms).

Ah, now I am starting to understand...

Just to be clear, this is yet another time measurement over PCIe,
different than the cross time stamp that we already have, right?

Also, what is the point of providing time measurements every 1
millisecond?

> Another thing of note, is that trying to start the PTM dialogs "on
> demand" syncronously with the ioctl() doesn't seem too reliable, it
> seems to want to be kept running for a longer time.

So, I think the simplest thing would be to have a one-shot
measurement, if possible.  Then you could use the existing API and let
the user space trigger the time stamps.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
