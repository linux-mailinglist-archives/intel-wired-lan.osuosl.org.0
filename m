Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3D4A65427
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 15:46:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1837D40619;
	Mon, 17 Mar 2025 14:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gOJ9yG73TinA; Mon, 17 Mar 2025 14:46:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57AD7405E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742222808;
	bh=HEE7cJguboNfIM/ImN+bEQAuxRuRsoshNhnvPdF6CRk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PmJLUNAVZstO4ksRxoS6bxGaNKQy1w10suhYMcLPjNOo0xC3UlTM9cZAPlOQw9xK3
	 Czt26qWSpS+cpsdC5WErpi6CaTP/tKDtJ6su9GESgbd69AOw1yM/bIuum8KHL1/cg7
	 uVTYlpxA3o80JHG27kqi4exkquofB0jB2iSHYh4dnByMDZr3GKqZR0LCC9QYr6qUxC
	 Glumo2chL1WAXYcjzCGe0Bz9ZwGpwRS6mnJloamrRbBy9sL6+aAEgXZmY+q1/mrijE
	 jrzDm69meaztJTLjDVti6W6KcyAk2gRjHIV7kvrbkH4E5oYYxRDbsXIKcGaUnBX1XO
	 fy2fyzdlirrFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57AD7405E7;
	Mon, 17 Mar 2025 14:46:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EDC8DD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 14:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DBAF240469
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 14:46:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DOQeq4-e-PfR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 14:46:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::432; helo=mail-wr1-x432.google.com;
 envelope-from=colin.i.king@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C82CB403C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C82CB403C7
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C82CB403C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 14:46:44 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-390fdaf2897so4255070f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 07:46:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742222803; x=1742827603;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HEE7cJguboNfIM/ImN+bEQAuxRuRsoshNhnvPdF6CRk=;
 b=jdopEPO0wmYPME0mED4fX+zE/vmQ5JHcXiE0VlzZ7g4dCRA20jCZV5KFAW2PeWxufK
 WuAHhMGZTlI+gI6oCj2OPkB7qzTmjOIlciUqT9jpwdVgiFcmo1r0Ojuh8sxuCHBYcNcw
 f/ZR/RqP/y51xxiJhWn8qLbuno8OmliUiI3PgE730uANT/BJVam1sbRcToUyL76SOMOo
 r0SNK9ovIVyP1sLqHmqt/MpCbfasRcmRuj/v19vNZ2E5ID3kQi6Bd2CFfy9M06JdR3Ow
 N8xSFT698oN/Ic5jZZ6+l20URBTe6MHLyIDWT2t48T/o6g3N1Ej5FudXaH75lo/4zhxj
 R2Tw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUS63TA0e0mCPYgajDbahUkdngACZGjDHrDdjfXTgr3N5F5fjNx0yG8xUzpT4pbnACIvV9SPsDMJkpvvVpplV0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxnZYWBCKbtL7RJSdjx9VdLBTpabYzSlje+fzc2Jel67KLIxwZY
 eoXCBoEAMby7o3Rd+zjmbZp5z7IRMOm5rc8VnXAfcMKGWYBti7CA6RcWjxxvMOI=
X-Gm-Gg: ASbGnctuQqMBCVspcL+i/TZ1yqWfJ7Q7eejAUs+U2l9JxxfOR5yTSJGNFuY1KRld62e
 ayu+ZXGqPAQOlLZZIgRMFsj+EWCwD8u8HnrJ6XMHiHnIl4xRNQPaWUgSIvoKhMoMNL6sfPyIveI
 1hbAyYH9vAIdfZUTBSZOy4ApkJdyPpvMyHxm2EOTcW8hggH53Tb7qzGuOCLq8QPFskYeGhsPC7Q
 BxIpH64bfFygQiOrHwO9OTUD+AEwTKughp9EAbRz6ys9pRqMXmi9IEKMfr57bgEWgE8kI58Opf6
 oNSSCpzI6RswErpEtKApOwhCQP6vd3EefJI+Fao0sSQWZw==
X-Google-Smtp-Source: AGHT+IFivRZ2EUR5/RimYhdOCuEzRooY6An887/W/KkgBBJttW2RvsoNsxmtBckobWqWYaquB0gK1w==
X-Received: by 2002:a05:6000:18ae:b0:391:40bd:621e with SMTP id
 ffacd0b85a97d-39720398fe7mr13511129f8f.44.1742222802524; 
 Mon, 17 Mar 2025 07:46:42 -0700 (PDT)
Received: from localhost ([194.120.133.58])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-395cb7ec14bsm15130948f8f.100.2025.03.17.07.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Mar 2025 07:46:42 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Mon, 17 Mar 2025 14:46:06 +0000
Message-ID: <20250317144606.478431-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742222803; x=1742827603; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HEE7cJguboNfIM/ImN+bEQAuxRuRsoshNhnvPdF6CRk=;
 b=N5jdmj4w2/XDsxdxL7zyF7C2Njyw+WqaJ1eWmRsdFeuji/xjHhe0fmfBRxP+dIwQGd
 pI8vp10bm1lJ9G9j4nvkvvY3V02TokY7moQ4J0EA7bnFg+QGFwOWHCz4GhZis/k0eVIy
 uFVTDvHewM0CxmQbjd/wgscuDsg20qn0qRW+5MKzwlfvEZPWoPPt5sKBjJ0tR4qfH1KX
 EPzcrKO/oUX9OYtUto0FR+6imXndXkR4gmhU5QUipKX+V03dyw6mUQAZ6LL17nOajHp7
 8wOdJrycaJDFIovF1PgJgClsOrLYXEN0WNKwrKRAOKajTvHZFN8G8TIGqUshHkCaApSm
 BoAA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=N5jdmj4w
Subject: [Intel-wired-lan] [PATCH][next] ice: make const read-only array
 dflt_rules static
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

Don't populate the const read-only array dflt_rules on the stack at run
time, instead make it static.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c        | 2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index d40ee1b42110..7f4102edc75b 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -62,7 +62,7 @@ static int iopagetest(struct intel_memory_region *mem,
 		      resource_size_t offset,
 		      const void *caller)
 {
-	const u8 val[] = { 0x0, 0xa5, 0xc3, 0xf0 };
+	static const u8 val[] = { 0x0, 0xa5, 0xc3, 0xf0 };
 	void __iomem *va;
 	int err;
 	int i;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 1d118171de37..aceec184e89b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1605,7 +1605,7 @@ void ice_fdir_replay_fltrs(struct ice_pf *pf)
  */
 int ice_fdir_create_dflt_rules(struct ice_pf *pf)
 {
-	const enum ice_fltr_ptype dflt_rules[] = {
+	static const enum ice_fltr_ptype dflt_rules[] = {
 		ICE_FLTR_PTYPE_NONF_IPV4_TCP, ICE_FLTR_PTYPE_NONF_IPV4_UDP,
 		ICE_FLTR_PTYPE_NONF_IPV6_TCP, ICE_FLTR_PTYPE_NONF_IPV6_UDP,
 	};
-- 
2.47.2

