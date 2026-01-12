Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE60D15BD9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 00:10:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EB9461102;
	Mon, 12 Jan 2026 23:10:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFs6-m0Z_JJi; Mon, 12 Jan 2026 23:10:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EE4861105
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768259410;
	bh=Nr3qS8YvLTsu9x6NwsT9BcYQwikNzECAjN6lT6kPblA=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DxzHwIg8F8BDFj/cKWlcNIXgexvkf3UvmxWEecmvDEgdpfoC7lbqO/1qEaHavn0lJ
	 GJDeS96mRjvDfPPEb+uqT4/44wSrfMZbgo7ZK6n+JUmhSJhjZdvEpNesui2Bg5qed5
	 ke1pRSxlwRUiOwN0VQ2FL6+udOqzkfRxPrJd50FhL0Vl0/AN4s7MxhwbeICv8LZ8a7
	 fxZ4sdwRJmRikYl6INDhzaFJqveHbAgJhuBK9J9UWoBAhi+ovIFVTxE/59Q0HYLELm
	 fTzIgWafTgv/+JYh9p8JrOTJjvu3p4Uwf90i5Nw+HHRmCEoedz/pIGQc38Dnk6ls6o
	 zCxS8HzfyE2nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EE4861105;
	Mon, 12 Jan 2026 23:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6691D18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57896811D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id amR_EUp7YCrd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 23:10:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3tn9laqykdzusffcczxffxcv.tfdzekvc-nzivu-creczjkj.fjlfjc.fix@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91FB8811D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91FB8811D1
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91FB8811D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 23:10:07 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2ae56205588so8475195eec.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:10:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768259406; x=1768864206;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Nr3qS8YvLTsu9x6NwsT9BcYQwikNzECAjN6lT6kPblA=;
 b=OoQ7yzahcNC8BPb2e9avTkxbCx6UuMp6mGel2KZ9UjRvT2BSWpaJgNSpNeEEUkQ9Hq
 1Kma7Y81HYoidIJaegitfufrofXqFdtvhlneTJt2sIIxdyjz9rIt5LSVBzSuHpvoctsF
 quGLqDsOe3LuSzVp7rXB5JleSWV2BdvHwq5wvW1/FbScQWGZrRUWfpj9n5fAUdjweQr9
 XzREEPy7KluLunhjU+0HaMQgFFSIg67HcWLe3itq4BO2Nngr4JvuCyr2hN+BGys550Tk
 AcGfSXF3DsDUCV5ZApCRIfjDYPjMO7AJ83BnPDXx7OAWgcz6qFjpGfPyHH2AdDVZ/Mto
 MIig==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjXFKZg6mW0jaxdAhNoso3hGDzaXown3RYjufCA4ddwL8kBs3ATqVxM4mRvXiIhsi8+adgfhpcRFxNdcA4DzA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz9Wbra1rxZ3TOqpLBY5czjIFImlVvmpePMUN9KZYq70zhVfsl2
 5d8BDx2OppuHWWMrJnxRUvH6UDYNTAUWeqFf1ibQGwxduOOiT4xhurAgRfNn7YEpQsxIXXkvN1Z
 NS+a0Xw==
X-Google-Smtp-Source: AGHT+IEDbDNrcyQ2vSmllcOSSpijsN5OpYTJ0xGlmFWgFknZJ97PGmeMno98rJYaDiuIMbOXb+kZIRS9INA=
X-Received: from dybnb47.prod.google.com
 ([2002:a05:7300:ccaf:b0:2a4:64c9:8bc8])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:d207:b0:2b0:5c14:dec1
 with SMTP id 5a478bee46e88-2b17d3219ffmr14309405eec.36.1768259406423; Mon, 12
 Jan 2026 15:10:06 -0800 (PST)
Date: Mon, 12 Jan 2026 23:09:42 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260112230944.3085309-1-boolli@google.com>
From: Li Li <boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768259406; x=1768864206; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Nr3qS8YvLTsu9x6NwsT9BcYQwikNzECAjN6lT6kPblA=;
 b=ha709YtBYFPo+Hz3r3/kUE+bq9Gpe8ZVYkls6y2THy47CUCX7E4ln/TBcPh0miN9rY
 /VIKolpYxrcnH1Rlyc+FSBqWF0BRGKqOwSwrmISbM/v+3K2sdZ4rTSDBhsnV37BY44KU
 5bi0EaEtqsEojJGSwqSwFGeQN0vItbL0Wg29Mu+E0H0cF663GrTKhGfCX4GkXNoRjxxD
 wJA1rDDGl2t4kTyrbURnbBqhRHvJsczf5Qy/S8dqnhxSHLF1sf07jhlC+74OCfBnMaqS
 XDaIv6qEmENbxgs0G6N8HAwqNJKNroFq5VXKNq8rBRwLGdk1Fc1KGEP+EWV4yrAnuCE1
 KLOg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=ha709YtB
Subject: [Intel-wired-lan] [PATCH 0/2] idpf: skip NULL pointers during
 deallocation.
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

In idpf txq and rxq error paths, some pointers are not allocated in the
first place. In the corresponding deallocation logic, we should not
deallocate them to prevent kernel panics.

Li Li (2):
  idpf: skip deallocating bufq_sets from rx_qgrp if it is NULL.
  idpf: skip deallocating txq group's txqs if it is NULL.

 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 5 +++++
 1 file changed, 5 insertions(+)

-- 
2.52.0.457.g6b5491de43-goog

