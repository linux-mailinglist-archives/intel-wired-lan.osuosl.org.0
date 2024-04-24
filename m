Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE6E8B0DEC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3834A416A9;
	Wed, 24 Apr 2024 15:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vKxMPAhVjKOM; Wed, 24 Apr 2024 15:19:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14B72415C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971976;
	bh=9AlBe3kk5ztZRFTkgvZ6SOgy/VblETXj3psnO1nVDEQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NHHEWvU/IQwrl9DmwhGAsg4LCBEmeGKMh0KX/YRvI3qAYR83dMqDDbvQmiF5VQ4a/
	 1q6UCI+hAgVwz1nIb83pH8BDDTEuDo9FDFIoqhnswooCPkaDoSL2WP44NJGrAKRoSc
	 t1GHsSdR+oRWyj0A5TfLYYtCjGQpUyEbUSA94OdOfDCMniQHO10Q8AnGom0R6T3zNz
	 5+DHQZ6A1X12NMcHmru1B16MEDa3EaxTYCkPv/NfbA/UFAB7vzc7LXGwqbPAHCQfK6
	 H2786KAQG0v1WiGJQH3yxbRxd/Gekf5obm3mFryxuYvagDoPOKey8oAzu+7gzGTMyL
	 qwFPkabeS1a8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14B72415C1;
	Wed, 24 Apr 2024 15:19:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 208911BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C3AC60BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2mjEYcIR9SZh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:44:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E7F4260BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7F4260BD9
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7F4260BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:44:41 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-6ee0642f718so785639b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:44:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969881; x=1714574681;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9AlBe3kk5ztZRFTkgvZ6SOgy/VblETXj3psnO1nVDEQ=;
 b=YRRnsgDow+Y/zP2A45c0hFgYqBnpNNtVB6yS5VzCoLj5rEyNpEBzUnqMKRUHS1DITx
 eJgMDeBONvLaTlm29OhcJ+0vtN98YNoBal8xoe8AKjgctldd+LEG/nLXhUiEbMxMH0KB
 zzaEwIPNAe95Yn9mf2RfIX9YIVq42q6dXwMBW2CDPInmOsJ3jT9hkYHwq5Cx/B9s1V6f
 GVmroTyrby/Kv9BgKLe1nqLbXl3Tu5VeNUCYXa/PFirwQjzyd6GE4B8jmEZ5iEZQcu75
 n628zb8OF2v9qEQU+K9Riq2Phqi1V6TwLPEpJo09w8ALmL/5Qs4GtvQUajEvgvbKUo7B
 vcfQ==
X-Gm-Message-State: AOJu0YzAsQXvMjRJOpCyRlrMORgnQIIsae+hXeeKK+rhRs8TS/85mial
 jdf3OuLKzxsTL8iibfE27CyzWKXsGnfBJcWTSxuGWm3ZFQmShVF7
X-Google-Smtp-Source: AGHT+IEZ2apyKdcveQJKiKV0/EodXodOYVr/N97y8zIovzzSFGYRD4Ce2vZBNWEv4JnoIEF0HZVlwg==
X-Received: by 2002:a05:6a20:3c8a:b0:1a9:97ab:d09a with SMTP id
 b10-20020a056a203c8a00b001a997abd09amr4044692pzj.16.1713969880981; 
 Wed, 24 Apr 2024 07:44:40 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:6ca6:7f20:5242:67cc])
 by smtp.googlemail.com with ESMTPSA id
 a5-20020aa78e85000000b006e554afa254sm11495743pfr.38.2024.04.24.07.44.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:44:40 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Wed, 24 Apr 2024 21:44:17 +0700
Message-Id: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMEaKWYC/3WMQQ6CMBBFr0Jm7ZhOqSm68h6GRS1TmESoaQ3Rk
 N7dyt7l+z/vbZA5CWe4NBskXiVLXCroQwN+csvIKENl0EobZbTGIG+M8Y6J3YB0dmxDF1pLBFV
 5Jq7/nrv1lSfJr5g+e32l3/ontBIqZKW7k/GtImuu4+zkcfRxhr6U8gUzNIQ7qAAAAA==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>, 
 Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
 GR-Linux-NIC-Dev@marvell.com, Anil Gurumurthy <anil.gurumurthy@qlogic.com>, 
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Fabian Frederick <fabf@skynet.be>, Saurav Kashyap <skashyap@marvell.com>, 
 GR-QLogic-Storage-Upstream@marvell.com, 
 Nilesh Javali <nilesh.javali@cavium.com>, Arun Easi <arun.easi@cavium.com>, 
 Manish Rangankar <manish.rangankar@cavium.com>, 
 Vineeth Vijayan <vneethv@linux.ibm.com>, 
 Peter Oberparleiter <oberpar@linux.ibm.com>, 
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
 Alexander Gordeev <agordeev@linux.ibm.com>, 
 Christian Borntraeger <borntraeger@linux.ibm.com>, 
 Sven Schnelle <svens@linux.ibm.com>, Sunil Goutham <sgoutham@marvell.com>, 
 Linu Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, 
 Jerin Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, 
 Subbaraya Sundeep <sbhatta@marvell.com>
X-Mailer: b4 0.13.0
X-Mailman-Approved-At: Wed, 24 Apr 2024 15:19:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713969881; x=1714574681; darn=lists.osuosl.org;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=9AlBe3kk5ztZRFTkgvZ6SOgy/VblETXj3psnO1nVDEQ=;
 b=OcoJTZMKilLSY0rWc8WSifIRV3EQ7I8JNzO+YlXZM+tcmRzn8DrKYt9LvQ4nJsFWag
 8dzi2G5JHo6ddXYsQCBxrPZbcTO/YRngDz23mru+De031R2DVyCEl/DaqRxRYJ3okMh1
 hG/QMcWuijeQL6H4NZ/3H5fKF57fxEjhfbEYBSteLmLT6shttqQAJJo6eMucONUQEcTh
 mkRAp+a2lOPR8K1Ck2P9i6rhYEBlLLMSF9o19PjzsQgY5UUDTjc9zRDbA2vLvtan+oiN
 jqsJKNsQgrpGlU8tgTDghEu6xVZ7tM/a/k/AD0BIbxb+O1U4ACTgG5zIP/A1C+GJvsbS
 9MNQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=OcoJTZMK
Subject: [Intel-wired-lan] [PATCH v2 0/6] Ensure the copied buf is NUL
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
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
memdup_user_nul.

Thanks,
Quang Minh.

To: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
To: David S. Miller <davem@davemloft.net>
To: Eric Dumazet <edumazet@google.com>
To: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: Rasesh Mody <rmody@marvell.com>
To: Sudarsana Kalluru <skalluru@marvell.com>
To: GR-Linux-NIC-Dev@marvell.com
To: Anil Gurumurthy <anil.gurumurthy@qlogic.com>
To: Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>
To: James E.J. Bottomley <James.Bottomley@HansenPartnership.com>
To: Martin K. Petersen <martin.petersen@oracle.com>
To: Fabian Frederick <fabf@skynet.be>
To: Saurav Kashyap <skashyap@marvell.com>
To: GR-QLogic-Storage-Upstream@marvell.com
To: Nilesh Javali <nilesh.javali@cavium.com>
To: Arun Easi <arun.easi@cavium.com>
To: Manish Rangankar <manish.rangankar@cavium.com>
To: Vineeth Vijayan <vneethv@linux.ibm.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>
To: Heiko Carstens <hca@linux.ibm.com>
To: Vasily Gorbik <gor@linux.ibm.com>
To: Alexander Gordeev <agordeev@linux.ibm.com>
To: Christian Borntraeger <borntraeger@linux.ibm.com>
To: Sven Schnelle <svens@linux.ibm.com>
To: Dupuis, Chad <chad.dupuis@cavium.com>
To: Sunil Goutham <sgoutham@marvell.com>
To: Linu Cherian <lcherian@marvell.com>
To: Geetha sowjanya <gakula@marvell.com>
To: Jerin Jacob <jerinj@marvell.com>
To: hariprasad <hkelam@marvell.com>
To: Subbaraya Sundeep <sbhatta@marvell.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-scsi@vger.kernel.org
Cc: Saurav Kashyap <saurav.kashyap@cavium.com>
Cc: linux-s390@vger.kernel.org
Cc: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>

Changes in v2:
- Patch 5: use memdup_user_nul instead
- Add patch 6
- Link to v1: https://lore.kernel.org/r/20240422-fix-oob-read-v1-0-e02854c30174@gmail.com

---
Bui Quang Minh (6):
      ice: ensure the copied buf is NUL terminated
      bna: ensure the copied buf is NUL terminated
      bfa: ensure the copied buf is NUL terminated
      qedf: ensure the copied buf is NUL terminated
      cio: ensure the copied buf is NUL terminated
      octeontx2-af: avoid off-by-one read from userspace

 drivers/net/ethernet/brocade/bna/bnad_debugfs.c         | 4 ++--
 drivers/net/ethernet/intel/ice/ice_debugfs.c            | 8 ++++----
 drivers/net/ethernet/marvell/octeontx2/af/rvu_debugfs.c | 4 +---
 drivers/s390/cio/cio_inject.c                           | 2 +-
 drivers/scsi/bfa/bfad_debugfs.c                         | 4 ++--
 drivers/scsi/qedf/qedf_debugfs.c                        | 2 +-
 6 files changed, 11 insertions(+), 13 deletions(-)
---
base-commit: ed30a4a51bb196781c8058073ea720133a65596f
change-id: 20240422-fix-oob-read-19ae7f8f3711

Best regards,
-- 
Bui Quang Minh <minhquangbui99@gmail.com>

