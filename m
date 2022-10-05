Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3C15F50D9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 10:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55DCF60D74;
	Wed,  5 Oct 2022 08:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55DCF60D74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664958767;
	bh=ksOG4igSjYyWx6sJbHH1r/TctsN5dF/J7j+xWY1mLVo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=s9nIoTXE4wCeXnJsR2lmKOf5vkupHlJP6FNtXQZXZwPQ/7DKmLE7Vjbzg0qhNVgMm
	 rujhQ4Irhm+tdROR3Fy4xwgImMJU/MRVtLLrzZ2c0npt0uIEuhsDwQkar/gRwV7E7Q
	 50nANN6pXMfAmu7FdyMiD/umayIjaIbdl93YJiPojNiOQqCN8gmVwAJN+/m85uVeGK
	 FPDNhAHhrSD3Vr5SXF3v4udgPfKvsSGJv75mzYpP/Zm2ENsZFrAMFQuSvpp7CvsG3M
	 HLuLfBRpIsIWV6YcDr+L+isQoVN+mgRLfNhSz2hkrWUhbdo8RhjxUlOVrD4kVa0lk5
	 Ds1e+Pgyp3WFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id veBezm0RJf8J; Wed,  5 Oct 2022 08:32:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2566260B77;
	Wed,  5 Oct 2022 08:32:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2566260B77
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 951401BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EACF40524
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EACF40524
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RTxcFgitFdSK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 08:32:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 991DB40126
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 991DB40126
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:39 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id i3so572774pfk.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 01:32:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=/eytcqcN9ObTjJXf5sWWbGpgnvUxzBhOmrxffhLDb8A=;
 b=W/NV9FSZxLdggfn/ZWLMjkLzDLrDKtTz4YoI+oxAvvOsaooIFNmtIrw5jaG94To5Rg
 YVyFDC1Ao10dA6mLZaAteTzSEXtYn6QRPRq8XfwtDP/1latigbhO0EqTE7+aV3wNseEE
 zxVQXL2VNriWKbANs6IHpI8v1K6BJ3Fk5culK3zFbWC7Ty2DFbnIXal7tTvryv0OUS/Q
 RYu0EqrmFH0ZqKQwucGZiVWTiJTZOXieJ6cQaO1KN+8AbIJx6fAwYzfqVP83uSHcQHd8
 TpP746M0oOEf8ZD227Xoutwvt8vQicKFOoMVzQMT8LI63nL2YmOhwDRpzs5FyvNNvp7Z
 1dfA==
X-Gm-Message-State: ACrzQf19XJUcK70InReBv7Q+JX45G3tsH/kzK4lBOLIY/0MN9ZwZcz/x
 sqQ6Qwid5kP9vSiNVm5j2HiP0FeUZ86jn7AN6SSjUiy8b+2xOeXAflD4AdyuYZYIfXH/ewhfgZu
 LtKU5rvlvmAKQzsuEkYSMWoNjlZyXq5/+MWIG3UjvTFKV/LLHcizzfA56PTLWnlrgb2eRHCVDJv
 WOlN3I6A==
X-Google-Smtp-Source: AMsMyM4h7FqDzkyepaxhErmCqwlZbJPt0bfly91xvwlxEOAWVD/3M2M+654mqKzZT+9f3nZy8NqQLw==
X-Received: by 2002:a63:2c0b:0:b0:434:ebb6:7594 with SMTP id
 s11-20020a632c0b000000b00434ebb67594mr26209005pgs.245.1664958758170; 
 Wed, 05 Oct 2022 01:32:38 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 jj9-20020a170903048900b0017ec1b1bf9fsm5899320plb.217.2022.10.05.01.32.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 01:32:37 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 01:31:40 -0700
Message-Id: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=/eytcqcN9ObTjJXf5sWWbGpgnvUxzBhOmrxffhLDb8A=;
 b=DG/kNFiVNEycPiKk3NuoWSHbut8wRcXmM6VuM1dkdcRMtRI9QpID7D9jy4bDNzUzfG
 Vxslk5P760O46JDAZgMwuSFsiBOo374uPHpgDE1/tmF7uj9Z+B5DM8ZWNhWKAEiqZgV8
 H36oluwI4ExV6UtwooRJOyEGpNlO7qsJjMw5o=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=DG/kNFiV
Subject: [Intel-wired-lan] [next-queue 0/3] i40e: Add an i40e_napi_poll
 tracepoint
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Debugging and tuning the NAPI and i40e NIC parameters can be a bit tricky
as there are many different options to test.

This change adds a tracepoint to i40e_napi_poll which exposes a lot of
helpful debug information for users who'd like to get a better
understanding of how their NIC is performing as they adjust various
parameters and tuning knobs.

Some tweaks to i40e to support this information are made along the way;
including a tweak to i40e_clean_tx_irq (and i40e_clean_xdp_tx_irq, etc)
which returns the actual number of packets processed.

Thanks,
Joe


Joe Damato (3):
  i40e: Store the irq number in i40e_q_vector
  i40e: i40e_clean_tx_irq returns work done
  i40e: Add i40e_napi_poll tracepoint

 drivers/net/ethernet/intel/i40e/i40e.h       |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 50 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 27 +++++++++------
 drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 12 +++----
 drivers/net/ethernet/intel/i40e/i40e_xsk.h   |  2 +-
 6 files changed, 75 insertions(+), 18 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
