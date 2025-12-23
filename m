Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B251CD9EE4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 17:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B077F60D5C;
	Tue, 23 Dec 2025 16:23:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0pklkFJb6pwL; Tue, 23 Dec 2025 16:23:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9C5860D6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766506993;
	bh=NiVv4VG/swHKILAsJIpUoUQtmn8TsYBKMx+CuhseMNs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dHrpyXvUj/8qbim3saE3kuKvarl5S8mCIZwBqNCXMXPHJDvj3sF5dD9cvGq4cIhSk
	 OswgZjnai/bBmj5d6D0CkkeUJ8FJPSp5FgoXOU+Va5DJtcd9byBjwfEs1Fzwz4A75c
	 dd01Q/xoz94WmhoX1t3EGkNMvzJ/G2LRaUzfFIBN9ODv3txVDv1xPNAjiGhibkYtLE
	 gyVYmEd2pKGgDRTrwYau3Smz4uT0PbY9EfvJFDQeUHqAZgR2YFLnKdUvH4PNcJXMZQ
	 Eevl2wEEWP6q5CMGMzYabo7CEQHgJBBvjcNq78Eyk4o+4lNu40DarmehDDwrLvJ75o
	 Z5MrP4iDMnTFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9C5860D6A;
	Tue, 23 Dec 2025 16:23:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 620D4255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48F6140103
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ei4UQHaGhhj2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 16:23:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12c; helo=mail-yx1-xb12c.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A8DB40018
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A8DB40018
Received: from mail-yx1-xb12c.google.com (mail-yx1-xb12c.google.com
 [IPv6:2607:f8b0:4864:20::b12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A8DB40018
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:09 +0000 (UTC)
Received: by mail-yx1-xb12c.google.com with SMTP id
 956f58d0204a3-641e9422473so4189532d50.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 08:23:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766506988; x=1767111788;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=NiVv4VG/swHKILAsJIpUoUQtmn8TsYBKMx+CuhseMNs=;
 b=TUBv65+hsU4Y6T6hrlvQtqbpfs4KlGMj1oHVZRNTNrILZEr1dR+Xus7yMOClDITEb1
 FJqRsjEZFt3WDmtT7CQa/OdHqRY2A0cQfAZaWx68ppnnrxPL9gAyIDOYSUA5s3EXO7yW
 0m4oIyK1tZ7fgko5n2CJz1MgFFboAFzEJ/07zxk3BVVFt421m/KYzi6AFI/XZevxxRhv
 L7Ol8w0JGfAflZ8EYoh/0vGghOwAz2Zzb3KdxdO/6K/7V7kRcLoZmTVeYp/du97fuljV
 /rSWDYVNZXnovBncCiQJH/RGpgGzcbdhoMOeE+oPtDZ0co2ao3Db/wqLbSSUE/bzQhOP
 HhRg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+hb7lmgLcIYAZVvx/92UkLQajrFjYymk7ItisD9J3i9BRhqNqoNN3HkDQ1drKwt2O6nVlbsbgNVbMlcYyHk0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwuMWZbLzQ5cBgk5lg7yCXVCFHkCSF8YCiSTbs2VXdpJajdTkBD
 a0dRIjjUNSbO4kF4/OPfBMzL6q3XdRs5h6utKE1HfKb4RuEYe6BeDpE2
X-Gm-Gg: AY/fxX5JOw/e2fQaan5yCuqHTBMX/99pwdK8gu5TwqbVya/b1LISiRQLgh1DWmkbqGY
 HpuLkg5+c6RZ8SHbPqTuxTzt0LoR2Th75WkL+OnAo4LquNIq4RiiICrhkgaDaSHBZSnapS3tEZI
 Y2gIm0dcg00uBcVwsBypGYsik5/AcTnNkZT2ygFdihMZf9Apr4/qptf4JVGDhuUFpX+pjJihj7w
 mAlfjONme5SQlLfTq2rvl7V34k2tfxK4SQws30hvBvrsnXtCfzNsJn3LUdLheSDnagbAoS6t6qq
 mOVmFMdjg9fRbGyXRgcoXHWfNi9rs/KSI1HM9I1RH0pJmBn/3Leyx4rda1+7mKUa29Hoy+LteAU
 4jj/fqGI0X+SMcA96sv5IJrxrlODfaRK1I1RQbTr5SHUgZIBuQOrJef4QA+tNfm301fJNiJml0Z
 BzdBBzY3o=
X-Google-Smtp-Source: AGHT+IEIDS9zMM50ZlFA5Hl9bR03FFoth14fmX1kch5FUlZ2LFbCe/5eRU4YNWQQOULng7e4U3/pdw==
X-Received: by 2002:a05:690c:4912:b0:78d:7307:769f with SMTP id
 00721157ae682-78fb3f03ff1mr254742257b3.3.1766506988228; 
 Tue, 23 Dec 2025 08:23:08 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:4913:14a4:1114:ff0d])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb43cfae9sm55561267b3.23.2025.12.23.08.23.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Dec 2025 08:23:08 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 11:23:02 -0500
Message-ID: <20251223162303.434659-4-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223162303.434659-1-yury.norov@gmail.com>
References: <20251223162303.434659-1-yury.norov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766506988; x=1767111788; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NiVv4VG/swHKILAsJIpUoUQtmn8TsYBKMx+CuhseMNs=;
 b=Spsq9kbmcqlM2WFoRoDXFmVEmT4iYEN1+PqICVyfPt+ByRluSivQFamKpLYPM8nsxa
 hPxCQWdMjOhX55riGryQ+gA/sFBSLADbZO1TNHMN+MZJ3EmLgJsEtTISizCnfJBHB4D+
 OeZcccMJwQ4DnvjUEfW5YLc7LOf0tVx8xRCvOZ4e8JgwNAUAhDXu88IuRVIMyNqW1fA7
 odh4a2j9b2bYIaHieWCDIxh832sNgPjHtiwlgmTi3iVFivjxuQ69SwV3+hWI0K7WMp94
 NWrLtjYbnN/PkXjZ6cHanQfrT6rV9OHVukXZJBDGqvd1rsonbwVtdMCAQi2YI/ELgrdd
 yYxA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Spsq9kbm
Subject: [Intel-wired-lan] [PATCH 3/3] ice: use bitmap_empty() in
 ice_vf_has_no_qs_ena
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

bitmap_empty() is more verbose and efficient, as it stops traversing
{r,t}xq_ena as soon as the 1st set bit found.

Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index de9e81ccee66..2b359752a158 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1210,8 +1210,8 @@ bool ice_is_vf_trusted(struct ice_vf *vf)
  */
 bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
 {
-	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
-		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
+	return bitmap_empty(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
+		bitmap_empty(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
 }
 
 /**
-- 
2.43.0

