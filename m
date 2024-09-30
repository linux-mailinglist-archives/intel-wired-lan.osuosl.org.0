Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 424F298A9AD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 18:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE76280CE5;
	Mon, 30 Sep 2024 16:24:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UnE18LOt-jal; Mon, 30 Sep 2024 16:24:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AB6D8101C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727713475;
	bh=MrGt5Upc5o7Dx2xzHjGWOE9OwgSldZ92rzSBdwBzh2I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=J66NKsMdZbO7PjWaS1/ztZjeRbg05l0SEk+uL2kFckvlAtlS5kfo4kiSfErijZxWl
	 74YFhFK7G/3DkDYYBLWwqeJICti0WaKdQrM9cdwBsRV+cfRWuG8kmfeBP9U+Px3tgW
	 jgRxwOjO3ZsgqJB9gVEojEh0SSYFnBO0BcqqbAsUs1xO3ED8JeFg2g68ar2B116RJg
	 PtAWydLmIkrKbicOm6/6KnitmyCZgT626DHMrv53tLNO3hUMS8XBDrTGkrUNZZBOhE
	 lxQeGzDmCjFToKnuAAnoxIfhaCoeHIocppK/tg3tDkq4sx/A1WbKlTxeLmybg+VQ9M
	 018Qq5SEWpY+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AB6D8101C;
	Mon, 30 Sep 2024 16:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE7251BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 16:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC835606CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 16:24:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e6vwr8Mta2ao for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 16:24:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B8083606B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8083606B3
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8083606B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 16:24:31 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-7db12af2f31so3829719a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 09:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727713471; x=1728318271;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MrGt5Upc5o7Dx2xzHjGWOE9OwgSldZ92rzSBdwBzh2I=;
 b=vI1pxMM3S10IGcqkzLBMbIduJe8DnolCS1qe7QuhWEzzr/yerK0JuA8h0bAilSqb0R
 mPJLMN+kvvkb6ypnNS8BdM4/KgOtnS3Xge/JRc4xQwHlwwov7jhINSp0rLm4Q4xahydb
 LDo3t9dYta9WLku01iS3e99jhOYoeQc+qrLDlSfstjpAyobM/i5lFV25QaitvRs4YzRf
 wziCGpw5Tf2NwhNe08lgl7E3k6KDNA955YczpWS1mGFvE8sXpVbSTD8RcZ2ZKfAMjZlq
 JKwNMZo1e4Lg/S9baYyPHpvxtb0L6dnzkiw0/20+AF8JeH9qQQAAYxt2sX3l2f3gX7Nb
 Q0ow==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrgxLOC0/1TIwFs/t4zU13EF2fgJ6MhnXDY8zEHHMYEjNF594FMNG06iXSygYWYUne+bKeR9t1t9VZ7aJUnJg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzzvwZR5fJnaGHHHD0KRK2wCQxo0+reIusKhbDqaFXf74qQPryZ
 mDiZV/mGlf3HEUMgTWniVuRyPNrlzYfbvHSPjQTEMZ7HABIrg6t4uwVl+XtHpfg=
X-Google-Smtp-Source: AGHT+IH+F3Tf3jKyC0qK2FNN1dLVKxM+uT+5rdmirqYof6Zm71lmr9+KaD68IeM8aJIQdD5MFKin8A==
X-Received: by 2002:a05:6a20:d806:b0:1cf:9a86:56ac with SMTP id
 adf61e73a8af0-1d4fa68e8b2mr16968293637.17.1727713470897; 
 Mon, 30 Sep 2024 09:24:30 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71b2649f879sm6411451b3a.22.2024.09.30.09.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 09:24:30 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 16:24:21 +0000
Message-Id: <20240930162422.288995-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727713471; x=1728318271; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MrGt5Upc5o7Dx2xzHjGWOE9OwgSldZ92rzSBdwBzh2I=;
 b=pIjoWKwU2ZE9cok5aqLgWi4SdINTEr4s52v6GlrkDCXyg2X7mk4tHSRpb+ADPwm3HA
 6fE1Ewgb81rRPLF+jIZ9PK2yjDTwHwkJ2LvWlE7LcazayVXRlDathDHlqZ10wc52ZgJl
 BlQgM8pyX25Ek7sIW0S76R1PP6iM6uYbX7LH4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=pIjoWKwU
Subject: [Intel-wired-lan] [net-next v2 0/1] idpf: Don't hardcode
 napi_struct size
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Welcome to v2. This was previously an RFC [1], only changes applied are
to the commit message. See changelog below.

While working on an RFC which adds fields to napi_struct [2], I got a
warning from the kernel test robot about tripping an assertion in idpf
which seems to hardcode the size of napi_struct. The assertion was
triggered after applying patch 3 from the RFC [3].

I did not want to the include this change in my RFC v4 because I wanted
to keep the review of that RFC focused on the in core work instead, so I
was hoping Intel would be OK to merge this (or a change which
accomplishes the same thing).

Please note: I do not have this hardware and thus have only compile
tested this.

Thanks,
Joe

v2:
  - No longer an RFC
  - Added Simon Horman's Reviewed-By tag

[1]: https://lore.kernel.org/lkml/20240925180017.82891-1-jdamato@fastly.com/
[2]: https://lore.kernel.org/netdev/20240912100738.16567-1-jdamato@fastly.com/
[3]: https://lore.kernel.org/netdev/20240912100738.16567-6-jdamato@fastly.com/

Joe Damato (1):
  idpf: Don't hard code napi_struct size

 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
2.25.1

