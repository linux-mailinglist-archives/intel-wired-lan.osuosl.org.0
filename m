Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 763402DF4EA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Dec 2020 10:50:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 341FB20380;
	Sun, 20 Dec 2020 09:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id exqaWvIXCYwH; Sun, 20 Dec 2020 09:50:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5834920478;
	Sun, 20 Dec 2020 09:50:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC60F1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9F6E92041D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xInVHxtVwNwx for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Dec 2020 09:50:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 84A7B20380
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 09:50:28 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id c5so7643393wrp.6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Dec 2020 01:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IWuhldxwHU0GrGepZfTUu2uv7Uiis+sD+/VmSDV/jZc=;
 b=flS0PQkk6kf4/B/P1RwX6xggHhh/J/p5x4O6LkGu5G92KwODjXHQvdpR2T9stjD2kP
 cKXHrDSUHwrQsO8m+LrZbkwkmo96y6jZ2/hSB+qsObt3e3iHUkriQOy6elIs2sjTnwJi
 jlqDDRlD84oo8LNkYCMWAw3qkRhtXrO+n7KH6xhKNVnuBctquKfJksNiTMGOMyLWmBeL
 zrmb35BrKe02BRofDGSYgib7r2klnsVBbdifM7brRYBsuE+414Qfz2woJtItFB4lhr7P
 g0aKO8mPguC+mc3M4xuW8KoOux/d/bzzBv+tphmi4w3oUh214/q0KdS9oCTCeZr5+QnK
 +vGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IWuhldxwHU0GrGepZfTUu2uv7Uiis+sD+/VmSDV/jZc=;
 b=oTNS0su7pqWLDm8LS6KXo5K9IxLXqk+lVBp1+DYnrlsWClxDi7A/5CRaJbyERQ4Mum
 V3iyaTQ3FWZj90k9/KO66pCLgQcsBw6s6FeggGg6YuzgKRXY9rjA515CLhZJmbyj0UXI
 2aBEQWNKn55oBsUiMPHMJVV8JdB/a383K/MOX5pMHAcsAuMF99eqIKY71vLO/On7q/5G
 SjgH35jlwXt323Bb0ncjzMU0R+pSXu7wkvjZvmg7XdTuz4Tw/hwoj5Wdb2OhR7XavI7G
 f7S+qXeYJfhBvphkJhVuK+krYL9Pj48tSXoWFk8ZqSu6ZvutnPMBg4kKe0v5KvNEWHp2
 8Yog==
X-Gm-Message-State: AOAM533VNtOvweTIksCTjSZH/vOcIDDeqfBZ1v9lTTwUvLQ9IOmRUuc8
 3PYUuSJ3CJxTTT6WsUxn3fU=
X-Google-Smtp-Source: ABdhPJwLzKdnNDNZnOI2lSWTMWsv0L9VyT6d7TevaODXX1DuA8FAG6f8Z0qqGNWhk17jIfMTpK9TnA==
X-Received: by 2002:adf:d0c6:: with SMTP id z6mr12994986wrh.10.1608457826835; 
 Sun, 20 Dec 2020 01:50:26 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de5:4000:d8f2:de32:a0d6:1baa])
 by smtp.gmail.com with ESMTPSA id y68sm20402475wmc.0.2020.12.20.01.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Dec 2020 01:50:26 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Date: Sun, 20 Dec 2020 10:50:10 +0100
Message-Id: <20201220095010.20227-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] MAINTAINERS: mark dca driver orphan
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
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Gabriele Paoloni <gabriele.paoloni@intel.com>,
 Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
 intel-wired-lan@lists.osuosl.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Pia Eichinger <pia.eichinger@st.oth-regensburg.de>,
 Shuah Khan <shuah@kernel.org>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The dca driver did not have any maintainer section since its inclusion.
As discussed with Dan Williams, there is no maintainer for this driver
since the initial developers moved away.

Introduce a new DIRECT CACHE ACCESS (DCA) DRIVER section and mark the
driver orphan.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20201218 and current master

Dan, please pick this trivial clarification patch.

 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f5eafee83bc6..c8cc5e1a759f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5223,6 +5223,11 @@ L:	linux-i2c@vger.kernel.org
 S:	Maintained
 F:	drivers/i2c/busses/i2c-diolan-u2c.c
 
+DIRECT CACHE ACCESS (DCA) DRIVER
+S:	Orphan
+F:	drivers/dca/
+F:	include/linux/dca.h
+
 DIRECTORY NOTIFICATION (DNOTIFY)
 M:	Jan Kara <jack@suse.cz>
 R:	Amir Goldstein <amir73il@gmail.com>
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
