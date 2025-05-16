Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DFCAB9943
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8512D8146C;
	Fri, 16 May 2025 09:47:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IXSWlmh8rGVA; Fri, 16 May 2025 09:47:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F13C9813FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388856;
	bh=rFz2hT4dJU8x+6xyAzn9MNouymJj5+a9kLkmNIJE3sY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=agiPL103BTobU0olpSrvbMx8GzeOukxd/IVzQbfaST/WlE0KbNoouzfzaBweW17vX
	 BbaOAnfpQzbidw/rzeXs7nZ6CK2ALRAX4AAIv5cuMsPyCRE2RvZhQLeCUNJ33LQZAV
	 OCe8bf5wqm9gwVI6uWYq/mDAsrQFcvVCL9sm0ScEG0UWuJ3+i6nBrjox8dRDabvJTk
	 p0jyjfVvh3s4oAicRD2+s2UdOstb3etmxia7wY3d9b/69KwRKMaGitOVI832BB/er8
	 mEpxJXpyif2Hi7/X8Du6G057zdep5acpTTaPF932Thzb8Du0nncDCdJHD1CrqmIZkL
	 wKWsgIX/7oreg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F13C9813FB;
	Fri, 16 May 2025 09:47:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D782F185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD12D6068F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IdWWuifgZTPD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:47:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 000C260641
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 000C260641
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 000C260641
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:32 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 756A73F284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:28 +0000 (UTC)
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-442fa43e018so7576965e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 02:47:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747388848; x=1747993648;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rFz2hT4dJU8x+6xyAzn9MNouymJj5+a9kLkmNIJE3sY=;
 b=G125h8kdGQSSTcGZvIlNiKzt60WZW2GkGKmPYx5n0ClWcSQIO0ZokPUTveRwkc0APm
 41Tqg53g2HzGtj9g6woER516OuZOEVpdonjAW7/TxjQXYWfpami1Ebg3Wl3Y37w9P0cg
 MJMad4AInINQdT1w74xuQEWKCFMZ3i3o5dNDyEK8XsBSG23yJCZHZguXCVzSF0uzyLov
 B8m1AGtFOkOdaClUCHhdKZ2YoVL1xs+3oK/dlvalLZnBmhpfr7kmR/tviZGtbrCwfFEM
 WD8RrEb50MSMPb2GM8+gfzP6/bGKNo0Boli2WOlooN/tgiw5dXrkL3qfEeydxf8XtPKN
 MHxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+EIxuYA7C7T/WRixeFFdHM3AjuuObA+WzP0Bs6pBdGRYOrq8S8raVvIB4KA8k8PQgu1qFslNNeumQcWqdcL4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyUN6w279NUFT2BsSdmmZO6jApkN5ppxYnWZWePbtt86+TLyUFh
 33EKtgiaFlWahGY0fB5qXsxgErqh3DqATFbPZ2AV/gOB9U8J+MtACAWCKYhrHCHfgpaVmWiI9yp
 0TmY5+owYX1u8XH+EtqHuW3au6VMqcHpKwmVeSnV6/R2Jf1pUfsgx5wyUdNCvqychYcwXWX3li7
 sXSUc8M7rrN3E=
X-Gm-Gg: ASbGncs7audWEwewLe2RvFJaak1dz/h6zynA0vI8e4CxrMDCcdoz3BvtAWgXnelqCL2
 2tH53k0UFLs17qD1JGvdQOOK7Ddbbq+UiJ3zw2kNjxuQ+gD3qiRch7ZkAfJ0MWqh4+0/ABiyfKK
 N7PTJrWRhHk10aCvZsfggjYSbww9wC/XS3FWTGcsVo9gsJGKSZNspLNqtS/RbeZl2tQdSoOtaHy
 V3MVgUC2vVuEsvnTqi/umrzvmxHbxp67Z5m149LpL0NKidKAY4BiPAKSDuSmEFucVy9+wfXoFlR
 0cDdjGyESLXWig==
X-Received: by 2002:a5d:59ab:0:b0:3a3:5c87:6e75 with SMTP id
 ffacd0b85a97d-3a35caa2ec2mr2611727f8f.25.1747388848050; 
 Fri, 16 May 2025 02:47:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOz/bnJAGSk9AsZ4SS3NshUSa2NByjlHThL8Xa8m8s2R7j+UwYyrfzxT/4ncnhsaJdnYvq1g==
X-Received: by 2002:a5d:59ab:0:b0:3a3:5c87:6e75 with SMTP id
 ffacd0b85a97d-3a35caa2ec2mr2611705f8f.25.1747388847713; 
 Fri, 16 May 2025 02:47:27 -0700 (PDT)
Received: from rmalz.. ([213.157.19.150]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a35ca88990sm2329962f8f.68.2025.05.16.02.47.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 May 2025 02:47:27 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Fri, 16 May 2025 11:47:24 +0200
Message-Id: <20250516094726.20613-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747388848;
 bh=rFz2hT4dJU8x+6xyAzn9MNouymJj5+a9kLkmNIJE3sY=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=VUreMMMTmbbL7K3elWz5zF2C9aw5jcJ5X7DIIiHClssW5X2CZNJ6KjI6rzf5pxKlt
 etJSlXBHKfqHLHxkN9xOog91wP2ZyxOf69ZksjFpOH4Edwol0Ovh/xCWHas0nDKCqD
 Lz9v7LpflsgWEaocFuBqVZ08fySK64tY3wa/1N59i8070nRanpBXJ7dJJaC/a493JA
 56fZtAsoPQsyujnugXZlGTJeEXAW5mULGnLaJcCmic0DEe2Xe6hMYgtkPCt4qV+TQZ
 LwLffasZ3AHmMiTgW/LmzJojrMbRWbZZ2mBF3OrLuRVx7DxCdY1MDU9Q1d9gcxpm3i
 VMhGjaSMF07uQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=VUreMMMT
Subject: [Intel-wired-lan] [PATCH v2 0/2] improve i40e parallel VF reset
 handling
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

When the i40e driver receives VF reset requests from multiple sources,
some requests may not be handled. For example, a VFLR interrupt might
be ignored if it occurs while a VF is already resetting as part of an
`ndo` request. In such scenarios, the VFLR is lost and, depending on
timing, the VF may be left uninitialized. This can cause the VF driver
to become stuck in an initialization loop until another VF reset is
triggered.

Currently, in i40e_vc_reset_vf, the driver attempts to reset the VF up
to 20 times, logging an error if all attempts fail. This logic assumes
that i40e_reset_vf returns false when another reset is already in
progress. However, i40e_reset_vf currently always returns true, which
causes overlapping resets to be silently ignored.

The first patch updates i40e_reset_vf to return false if a reset is
already in progress. This aligns with the retry logic used in
i40e_vc_reset_vf.

While the first patch addresses resets triggered via ndo operations,
VFLR interrupts can also initiate VF resets. In that case, the driver
directly calls i40e_reset_vf, and if the reset is skipped due to
another one being in progress, the VF reest is not retried. The
second patch addresses this by re-setting the I40E_VFLR_EVENT_PENDING
bit, ensuring the VFLR is handled during the next service task execution.

---
Changes in v2:
- Patch 1: modified doc string for i40e_reset_vf function
- Patch 2: removed unnecessary doc string changes from the patch

Robert Malz (2):
  i40e: return false from i40e_reset_vf if reset is in progress
  i40e: retry VFLR handling if there is ongoing VF reset

 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

-- 
2.34.1

