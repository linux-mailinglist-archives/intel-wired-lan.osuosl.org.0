Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A2F9F35F3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 17:27:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7545E80CD4;
	Mon, 16 Dec 2024 16:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ryebw1IRNguQ; Mon, 16 Dec 2024 16:27:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A80280CE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734366465;
	bh=474yaotgwCzzWyKV5Ltdz6258KpTVXmf9MtVet0h7Es=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yWum7YGmEp3NZW3AJZn877YOkOO2fuyivdQLdD+hxI74Z1lpH4c3ZAsICwmPGBaHW
	 njy9eH1lL2548Mmy8SlaCiSRX2B87qvZ0+otiZ6u2zImrYRfDLtbHkfqJBfFA7xqnP
	 HRIyG/cig/wUW7Jc5sGC5FoBaysKa5s6UfaqrzHNTJaTY8/q9Pn4vTU6JXXv9LBGyB
	 tQi6TqjFL6HZyEWUZJEu5aR0DG2sXR5MX+RMb1Dool1hCarPrxLg055elYDUca61PZ
	 N+smlsf7K+SVfRLjHX/5nkHn6OrF0r4Wq4HRBZXWNAl5RWz9FFHcdLeHbaQNitibo/
	 oUBv/ptjHuE7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A80280CE2;
	Mon, 16 Dec 2024 16:27:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 573FEC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 449DD80CBC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1OMSv9wHuv5K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 16:27:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::104a; helo=mail-pj1-x104a.google.com;
 envelope-from=3_vrgzwckd2ojzqivddowwotm.kwuqvbmt-eqzml-tivtqaba.wacwat.wzo@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 641F380CC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 641F380CC5
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 641F380CC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:42 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 98e67ed59e1d1-2ef909597d9so5917009a91.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:27:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734366462; x=1734971262;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=474yaotgwCzzWyKV5Ltdz6258KpTVXmf9MtVet0h7Es=;
 b=UqtUG3/wqmo6QfHjXUoRbvWZpDIQNjZORArIB99L5VX9rrXZXRZzjj3kGwlBf4phrY
 Vsca7NVFPhVrN1ShZWdCzObG4lx8T3Xg2+I4V/P1zajnedxEYMzy0XBF4OB5Y6vRnXjJ
 p5WTcJTMUodn2P7u39sLvWZUEVxmLXww3Db3FbFXZPBf3Yq/3YsDCHAB/gnQeL1fp7kE
 cE3xwtepiANzw0uxp5xKXGEH2n/c2pvE3Xz9orQDYH55XLyT4qs249RFQIpvqdJZ5pm/
 gN2juH6vJPzowVZxTK23YqIxvKa7hfhUgxzgy8aZTqxRgFQKVbHzqL4QSj4vlumwyZg3
 mYzA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUysZVgM2AYBrrASdpYIdpRVSbFLJyunWcYeanebALmjHbnDH3f6QWwI10F7ErmQXUC7h2LRtQr8srNv/iH3lU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx9k1o21ez30l1k1y3ElGOi7zFgUex6Th8I2FODfgAMdKvl8oft
 RLcm6CG1/DerUxxnotovZqHPYtdNzN50Ieq26hU/ernvGWuzg8VYDVfzNyeJf6j6h1Jregnj1+7
 8Bk54YQ==
X-Google-Smtp-Source: AGHT+IHSei2yGRztaubYbqKCul3QQv1EHtbndGGlv/0ZZYijOdz2zocYYRlRLidwM2ED0OUQcir6SLdjFVu3
X-Received: from pjwx12.prod.google.com ([2002:a17:90a:c2cc:b0:2ef:8055:93d9])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:3c86:b0:2ee:7411:ca99
 with SMTP id 98e67ed59e1d1-2f28fa54f59mr18372516a91.1.1734366461730; Mon, 16
 Dec 2024 08:27:41 -0800 (PST)
Date: Mon, 16 Dec 2024 16:27:32 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241216162735.2047544-1-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Brian Vazquez <brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734366462; x=1734971262; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=474yaotgwCzzWyKV5Ltdz6258KpTVXmf9MtVet0h7Es=;
 b=fSnwMLpuNnil3FRpsZBh1nCEQzsrnlaDPdHui0CJ57+gd5RtvCu0XdQdOv+CGUjPgF
 P2Fnjvnmx3IZQQOr458qDf/lrfDApwDxKg+pxxMkFXWcXCjUMCcBHw7w1QM2fmcVbWxt
 MeHbQjdf8bKIAeHHJMk2n2RqW2xKf3KwZ/Wf5c2g26X5R0Z7O03xF3z94Sq+NCJs3sCO
 R2J91reZaw3gOd7s3Ro9rwSk1yffrz62ZBoxjKNGDz28yn8YGslBoTXMXhWKZzx6Fkjc
 RPL+qEtp0QuAo7ooWcQKyB5H5Bnow2OdqlqGD4QdgERFKW56bkrvBjeDRjI0qmcZqjLR
 izaA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=fSnwMLpu
Subject: [Intel-wired-lan] [iwl-next PATCH v4 0/3] IDPF Virtchnl: Enhance
 error reporting & fix locking/workqueue issues
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

This patch series addresses several IDPF virtchnl issues:

* Improved error reporting for better diagnostics.
* Fixed locking sequence in virtchnl message handling to avoid potential race conditions.
* Converted idpf workqueues to unbound to prevent virtchnl processing delays under heavy load.

Previously, CPU-bound kworkers for virtchnl processing could be starved,
leading to transaction timeouts and connection failures.
This was particularly problematic when IRQ traffic and user space processes contended for the same CPU. 

By making the workqueues unbound, we ensure virtchnl processing is not tied to a specific CPU,
improving responsiveness even under high system load.

---
v4: 
 - Addresed commit message comments (Paul Menzel)
v3:
 - Taking over Manoj's v2 series
 - Dropped "idpf: address an rtnl lock splat in tx timeout recovery
   path" it needs more rework and will be submitted later
 - Addresed nit typo
 - Addresed checkpatch.pl errors and warnings
v2:
 - Dropped patch from Willem
 - RCS/RCT variable naming
 - Improved commit message on feedback
v1: https://lore.kernel.org/netdev/20240813182747.1770032-2-manojvishy@google.com/T/

Manoj Vishwanathan (2):
  idpf: Acquire the lock before accessing the xn->salt
  idpf: add more info during virtchnl transaction timeout/salt mismatch

Marco Leogrande (1):
  idpf: convert workqueues to unbound

 drivers/net/ethernet/intel/idpf/idpf_main.c     | 15 ++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 14 +++++++++-----
 2 files changed, 19 insertions(+), 10 deletions(-)

-- 
2.47.1.613.gc27f4b7a9f-goog

