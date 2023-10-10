Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CD67C764F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB5F4610A0;
	Thu, 12 Oct 2023 19:07:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB5F4610A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137669;
	bh=q4JZNHJUJF2LUSMH7A09xCjiR8Fvnglp3mwinSH/mYI=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6RHkbrsQpNqCzwgW9qPU/nEGeSTPh3Rhl2EOrpuM1QFht2MXTZP5NAfX1Tfngy+fu
	 GlIUsFkfppUlsUQ88zn5zO9CD8Nq/RaYmdk1Ukn+6RAKNSaRdm544R3ly7bfWFMA9k
	 YWt+lScTYTmGAkoQpv35f27TKfmh6HoiLHjVC5RWPHoEzWEzBPbG/IiM2xukCE+waG
	 HYqBM3yZ1D+9v/2zNVokxVnzYuO0jv519SR6cfkqW51frZ1wFNCQEsidXCtSJHtc2V
	 WCuDGyufBZy/JTmn683piWMJRum2SXFJYtCjpjIFBYcmEw5DpbVu2L/sSqT8fahKQL
	 oNs2vATYW4wnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iafD6r9lHHpx; Thu, 12 Oct 2023 19:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E001660596;
	Thu, 12 Oct 2023 19:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E001660596
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BDEC1BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42D4D4044D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42D4D4044D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yg0yaG10Aakv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:27:12 +0000 (UTC)
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03A4C40012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03A4C40012
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-d85fc6261ffso7776482276.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:27:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696976831; x=1697581631;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oWOmRc+XZmwUYDYQzA9Y2kZz6fI7UsCc4iSNlP1q3ak=;
 b=UZQuwXIMM+QE+ydOQsYZE9S+2pX28ssSy7OqW6nVHGVFwlFRf+qgMOjVtQCTdpx094
 tkzOb4f688AU8x4IJHKa/gCzIA4/T4WDEPxiu+riYxx2VnCoXNIJ3AvjSA1Yt0RY10bi
 XEWPafwk4YPUx5Lm+ZX3dCW8PallVfkUiVHf0Zx/kiwR8DW9mTTfnXXgOaoJ9ybZNFBg
 MVnKtwbu7KfQ6fYhldU28lv0EktEUtlvnJWOEZxWrl6C+mLUU9/TvLG3jX4lnBxjoD6k
 J9qgO4yrV09HRs4HDwXcBPwZAMGQpnRymk5+tL5cCDzdD0b6H2CowgHziwnD71/1sU27
 IASQ==
X-Gm-Message-State: AOJu0YyWQbnZu5O+QLH+7NB/OrSjA4UCQ38u+Yv7U7Q26QjcwAVPRc2I
 /YXKlZJIEv1aZztkra7Fgvd3ZiQUCi1MRcxZCw==
X-Google-Smtp-Source: AGHT+IFkc91aNuPbdgNMKkpApTBJBwoJdK74m18bTrvbP5UnyOxaDLY5NiS6TA4MHAZJINXqQEimpa3GEQg6j8fOtQ==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a5b:b50:0:b0:d80:904d:c211 with SMTP
 id b16-20020a5b0b50000000b00d80904dc211mr300318ybr.7.1696976830823; Tue, 10
 Oct 2023 15:27:10 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:26:57 +0000
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
Mime-Version: 1.0
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696976825; l=1944;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=vWykgd1iTIJF2QxHf+tyASmo5uKe5mdTGzeWp73J3yY=;
 b=dzlYZaGDxURN55XtwFmYQSEtTx4wp18WY6OhgjXTiLw5YGpZ7hnkSxOnVmHET2lNMcPyKfgGC
 QVaHSfcsAGGCOAoWF6TUtQ+jGaiCMlbEXkYYAyMsry5Pgk0nUS2vgl1
X-Mailer: b4 0.12.3
Message-ID: <20231010-netdev-replace-strncpy-resend-as-series-v1-4-caf9f0f2f021@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696976831; x=1697581631; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=oWOmRc+XZmwUYDYQzA9Y2kZz6fI7UsCc4iSNlP1q3ak=;
 b=iPtVB8teXisTZVzmFth9mGyolubVBD8Rj1Smd/xtUlWbpXlC7kV9FkyvXkoPgpLf1t
 JOj2pnjyBv7dASycSQFFkk7QdQf9BuMEj5XxzRCsp0IVMwabHmFYGO31e55GLzIm5Ikc
 6PRe/0Wq7gqIQ5buOCtOSkW0XKmTzFgkXDcPFZK0Do4o35ajQJtti2LJsFMsF0YSb/OP
 7Lt4Z23gqzKUjNtOIQsQaDcqE6x3Ezufcto+xcGyV1MkTl/QSjD2lMtS30Sp/Z9ad+ec
 5rtOkp0C5KLd/Qw6fyHNik8CCg0BR5wKparudvTE7ll/q+aYJbUs4EupYzWz7c++9PKj
 Q0OA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=iPtVB8te
Subject: [Intel-wired-lan] [PATCH v1 net-next 4/7] i40e: use scnprintf over
 strncpy+strncat
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
Cc: netdev@vger.kernel.org, Justin Stitt <justinstitt@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

`strncpy` is deprecated for use on NUL-terminated destination strings
[1] and as such we should prefer more robust and less ambiguous string
interfaces.

Moreover, `strncat` shouldn't really be used either as per
fortify-string.h:
 * Do not use this function. While FORTIFY_SOURCE tries to avoid
 * read and write overflows, this is only possible when the sizes
 * of @p and @q are known to the compiler. Prefer building the
 * string with formatting, via scnprintf() or similar.

Instead, use `scnprintf` with "%s%s" format string. This code is now
more readable and robust.

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>

---
Note: build-tested only.
---
 drivers/net/ethernet/intel/i40e/i40e_ddp.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 0e72abd178ae..ec25e4be250f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -438,10 +438,9 @@ int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash)
 		char profile_name[sizeof(I40E_DDP_PROFILE_PATH)
 				  + I40E_DDP_PROFILE_NAME_MAX];
 
-		profile_name[sizeof(profile_name) - 1] = 0;
-		strncpy(profile_name, I40E_DDP_PROFILE_PATH,
-			sizeof(profile_name) - 1);
-		strncat(profile_name, flash->data, I40E_DDP_PROFILE_NAME_MAX);
+		scnprintf(profile_name, sizeof(profile_name), "%s%s",
+			  I40E_DDP_PROFILE_PATH, flash->data);
+
 		/* Load DDP recipe. */
 		status = request_firmware(&ddp_config, profile_name,
 					  &netdev->dev);

-- 
2.42.0.609.gbb76f46606-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
