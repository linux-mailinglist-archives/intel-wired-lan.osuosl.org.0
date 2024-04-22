Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFCB8AD357
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 19:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A9AA608A2;
	Mon, 22 Apr 2024 17:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Af2TZbY8x3iv; Mon, 22 Apr 2024 17:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7354E60699
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713807573;
	bh=kJ/s9bshwX2Z/U5SUCiWUY86dhIqbJUGtlQVX2ISVdU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iYiPzc5e7ReoarIjRfQH4Y7BULJ2BXktpAe0KfU7hvKXPXQXDKOwytVD5KvZQ/MKy
	 evFAal/DLZEf1BRgJLUePrwC4DJSwp9NA0V2x2L53Z5xByiWyx6eloNfb7eumMvFcN
	 2NAgxTt98XDqAP0dVcsTXWQlciNUlob60zy0bdnJlV8KpJUjcWxIszV5vT4wbjAFf4
	 IAhhCq2wu0+mzts0jmBYT9BisJlJ6rPBG86Scw275GN23yY3oaY5zXZJMuu17NnqjB
	 LemP4G6TyKRTrW+72oIXGdt1GaN6TAQdZNEsFI8ah6ntO+xC3vG2zaZu5j503FboAB
	 jFX2JqNim9uYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7354E60699;
	Mon, 22 Apr 2024 17:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A1001BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72F4060731
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nDE4ZaZ13lHt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 16:42:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2466960708
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2466960708
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2466960708
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:11 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-1e3c3aa8938so31911895ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:42:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713804131; x=1714408931;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kJ/s9bshwX2Z/U5SUCiWUY86dhIqbJUGtlQVX2ISVdU=;
 b=bVDtWgCO7mNaH1bArMQi0Peh/w2beW6+g36y0y3pGw6SIOFSo/KKguUf1dpKjNRhNo
 wyqZvy9cf+LlnoaDM8SASIK1LFLPh+vz4afMJPgIbFDi/vsCxRnNHIkEoYINlpxiPs7k
 0PNHZUVyyWjLtVKa8pMTgIZLF5/vKqn4I1hJLG8ZLK8SYb2IGKaZbwO5ijRlNwzUJDop
 CkLV+0hDChPQCbX9AAhbzmYYuqAcAsESVyd4GzzjytCxRmS2kvUzrTi6QrYSUurNQdQO
 A7dB9162wyWwAc1nBtsEUkOcHBj7ENQgGHLFqMmSAjGbEobRf5BbJvzuhaXEMop3QrxF
 BTcQ==
X-Gm-Message-State: AOJu0YxjePiBcHUsMBjbOh/iDTaO+462eFFaWQwJEPKcYmz4yuMrTR4a
 pdCCK+jOS+P+dtk1dh4arU27sLm7/rDTmzUyBxWyk4d6XMCf+Ngq
X-Google-Smtp-Source: AGHT+IED/ttmM4v5ReF4QaWXjGqNL66DutVSsH/8jOtbJsWcX9E8Nfp6e2ZYUo/WyQMOpfHpKmMv3A==
X-Received: by 2002:a17:902:d4c7:b0:1e2:76ad:cb2 with SMTP id
 o7-20020a170902d4c700b001e276ad0cb2mr10960924plg.15.1713804131274; 
 Mon, 22 Apr 2024 09:42:11 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:f32d:f608:a763:3732])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a170902780300b001e7b8c21ebesm8461702pll.225.2024.04.22.09.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 09:42:10 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Mon, 22 Apr 2024 23:41:35 +0700
Message-Id: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD+TJmYC/x2MQQqAIBAAvyJ7bkFNsPpKdLBcay8aChGIf086D
 sNMhUKZqcAiKmR6uHCKHdQg4LhcPAnZdwYttZFGawz8Yko7ZnIe1ezIhimMVinoyZ2p+3+3bq1
 91dxRI14AAAA=
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>, 
 Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
 GR-Linux-NIC-Dev@marvell.com, Krishna Gudipati <kgudipat@brocade.com>, 
 Anil Gurumurthy <anil.gurumurthy@qlogic.com>, 
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Fabian Frederick <fabf@skynet.be>, Saurav Kashyap <skashyap@marvell.com>, 
 Javed Hasan <jhasan@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com, 
 Nilesh Javali <nilesh.javali@cavium.com>, Arun Easi <arun.easi@cavium.com>, 
 Manish Rangankar <manish.rangankar@cavium.com>, 
 Vineeth Vijayan <vneethv@linux.ibm.com>, 
 Peter Oberparleiter <oberpar@linux.ibm.com>, 
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
 Alexander Gordeev <agordeev@linux.ibm.com>, 
 Christian Borntraeger <borntraeger@linux.ibm.com>, 
 Sven Schnelle <svens@linux.ibm.com>
X-Mailer: b4 0.13.0
X-Mailman-Approved-At: Mon, 22 Apr 2024 17:39:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713804131; x=1714408931; darn=lists.osuosl.org;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=kJ/s9bshwX2Z/U5SUCiWUY86dhIqbJUGtlQVX2ISVdU=;
 b=MKjbTO7QwCleZq/c15t5WfIFz/9qAGF9k0xmAGFe6g+Jx//o+xaJ+v2nyJ0ikdv3W3
 6nm6dn4SZPoRdd9JzKGgkwDExq+mp3Ma44CWK1reOUWbXnQ+Y37JWcgrc6qKLXNdaIeV
 FApOuqjpXABqQ+XI7mLtWJwRtRB7Z8ocWXZ7nOr9Gl0nfdPO7GDHKjtKNxH7yMeeSN6z
 ZMx7bwUaJI6G+hLVotW7MEheti1waklMje5F1DZye6Q92H2CW++B9AV+pGVUXIBJqgPj
 xrIru/o/9yeLGur4nUDlMbu3MkYvx8xkbhWcl805R8zONpHNSeAbUmp+hvOuWzh1AFqh
 qP6g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=MKjbTO7Q
Subject: [Intel-wired-lan] [PATCH 0/5] Ensure the copied buf is NULL
 terminated
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>,
 Bui Quang Minh <minhquangbui99@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi everyone,

I found that some drivers contains an out-of-bound read pattern like this

	kern_buf = memdup_user(user_buf, count);
	...
	sscanf(kern_buf, ...);

The sscanf can be replaced by some other string-related functions. This
pattern can lead to out-of-bound read of kern_buf in string-related
functions.

This series fix the above issue by replacing memdup_user with
memdup_user_nul or allocating count + 1 buffer then writing the NULL
terminator to end of buffer after userspace copying.

Thanks,
Quang Minh.

Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
Bui Quang Minh (5):
      drivers/net/ethernet/intel-ice: ensure the copied buf is NULL terminated
      drivers/net/brocade-bnad: ensure the copied buf is NULL terminated
      drivers/scsi/bfa/bfad: ensure the copied buf is NULL terminated
      drivers/scsi/qedf: ensure the copied buf is NULL terminated
      drivers/s390/cio: ensure the copied buf is NULL terminated

 drivers/net/ethernet/brocade/bna/bnad_debugfs.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_debugfs.c    | 8 ++++----
 drivers/s390/cio/cio_inject.c                   | 3 ++-
 drivers/scsi/bfa/bfad_debugfs.c                 | 4 ++--
 drivers/scsi/qedf/qedf_debugfs.c                | 2 +-
 5 files changed, 11 insertions(+), 10 deletions(-)
---
base-commit: ed30a4a51bb196781c8058073ea720133a65596f
change-id: 20240422-fix-oob-read-19ae7f8f3711

Best regards,
-- 
Bui Quang Minh <minhquangbui99@gmail.com>

