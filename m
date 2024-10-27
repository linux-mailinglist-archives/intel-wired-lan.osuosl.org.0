Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8602F9B34DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 16:28:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FAF980E0D;
	Mon, 28 Oct 2024 15:28:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0AUCP95J_rQ3; Mon, 28 Oct 2024 15:28:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DDD980E20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730129333;
	bh=XXPjWYkS1ou6WAfmU+S7znEG1ISKjNgZKIg99AXek2E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yMHCECgbjFiVw6I7JuLWC4IX/WZ2QQs9hWu6Q3Oqff+HP8tzUvqiLaO4z5g55nbbI
	 73EYpNlikQtdX7S+EAD2E3SQvBl22AHSRcGi6NncwdegaMLIZlIfTySltKUpKYYGmQ
	 cArS+xwdx2Cq8e/P6Abtq5rmMmmNxWlTTifKNcT4HEs5r+RKFhCwk7FoAhlS2IBUF9
	 ln1P+INGH2fJi2jpYwjtNH5ulcBkuKMa8XYJCBE2XpNGo+oUA4fMKp1dtIiqQasHY2
	 z5gSpB96aDv7QIk5LFXs+fgRyvN2up5OxAKmsH/2ZHhtrSDtST+wJFXDXO0ZXrNJNj
	 aKZXvJN6IiVYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DDD980E20;
	Mon, 28 Oct 2024 15:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 791F8971
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 14:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 441FA6066D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 14:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oVBQGdPNMdtj for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Oct 2024 14:19:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102c; helo=mail-pj1-x102c.google.com;
 envelope-from=prosunofficial@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 666FC60646
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 666FC60646
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 666FC60646
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 14:19:16 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 98e67ed59e1d1-2e56750bb13so442464a91.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 07:19:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730038756; x=1730643556;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XXPjWYkS1ou6WAfmU+S7znEG1ISKjNgZKIg99AXek2E=;
 b=Nbnabaq1GBjvMNpwfRLKZ07Y99NFXe2rmT11smgh9f1JcoRhR1dda8lxigedEg49mJ
 s7eNG9BQZiW/alFx069AMxxjlXNOdyMxi2D/z2tV3YFu98F2kmso55hFdc28JvVZwxDt
 78c/MRjSQvtP907yMiF5+S5wlfvzB6BY0IhSGQAH4XrSDcTwirQiX39+nMRVqBeWCmbB
 sTPCXw/5QG8HyjyBMzMCyybs8yGNcPsBqBYsu+60FZlT01URbVcz53rti9jmUJghJTFi
 hWmQ9n/aW7Am33qIUY756YzMm0FzvQ2HS83wZHRdk+d5lkJbrEOstj5O2H3U5lrLJvZn
 kEnQ==
X-Gm-Message-State: AOJu0YwrjL1z1jgDstfa2NEsNtECkfOI2jAS+HaDFFQ6TCcqeCXbGNmG
 WWvQGAiQ/oVf5RNqNC+evnws38o0+L5TcVQJd1B/1N99Vmo/3H2x
X-Google-Smtp-Source: AGHT+IGdcF+/Dvwbm6ynLf8C2n0Fs1lvcxhZ/buJsFTOqotTyakOouENBfyYD4vXxijoqhpweq464A==
X-Received: by 2002:a17:90a:cb8b:b0:2d8:be3b:4785 with SMTP id
 98e67ed59e1d1-2e8f11beea7mr2607524a91.6.1730038755626; 
 Sun, 27 Oct 2024 07:19:15 -0700 (PDT)
Received: from dev.. ([2402:e280:214c:86:1331:92bc:956d:bb87])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e77e48bba8sm7350367a91.3.2024.10.27.07.19.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2024 07:19:15 -0700 (PDT)
From: R Sundar <prosunofficial@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, davem@davemloft.net,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>
Date: Sun, 27 Oct 2024 19:49:07 +0530
Message-Id: <20241027141907.503946-1-prosunofficial@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 28 Oct 2024 15:28:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730038756; x=1730643556; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=XXPjWYkS1ou6WAfmU+S7znEG1ISKjNgZKIg99AXek2E=;
 b=YgoqLbyV5oibYnY6AeyyArPycNLwYI8eS2M0UITOZ7vaUmjDJQBvBSUTDYaO2xAjl9
 FxGJhZ4BVv+4kEwEACzZ98SyFPPCfpw4z/P+Jz3v/0nKsBRnVAE9iFl0gjDfJtGcXr6F
 gesvIQGPka93VzfzLDnmQaSkEeaFcgoxCWA8FlXxC8h/tz9+PyRLGHu9V0gyvVsHLvru
 LguVz8pMigSM7mBNe1CjrbAZVRIXD6w0V+5ORfbPKxxaSCELKFZq09A0d6HxQXrTeBIK
 LY87Lqu/d5RoPr0n8vHfjSOj5/l7UsfL+++uirpWY7nRNZPgTRUvl62jjlQo5fhQTazx
 lqIA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=YgoqLbyV
Subject: [Intel-wired-lan] [PATCH linux-next] ice: use string choice helpers
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
Cc: R Sundar <prosunofficial@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Julia Lawall <julia.lawall@inria.fr>, karol.kolacinski@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use string choice helpers for better readability.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@inria.fr>
Closes: https://lore.kernel.org/r/202410121553.SRNFzc2M-lkp@intel.com/
Signed-off-by: R Sundar <prosunofficial@gmail.com>
---

Reported in linux repository.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master

cocci warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:396:4-22: opportunity for str_enabled_disabled(dw24 . ts_pll_enable)
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:474:4-22: opportunity for str_enabled_disabled(dw24 . ts_pll_enable)

vim +396 drivers/net/ethernet/intel/ice/ice_ptp_hw.c


 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index da88c6ccfaeb..d8d3395e49c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -393,7 +393,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  str_enabled_disabled(dw24.ts_pll_enable),
 		  ice_clk_src_str(dw24.time_ref_sel),
 		  ice_clk_freq_str(dw9.time_ref_freq_sel),
 		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
@@ -471,7 +471,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  str_enabled_disabled(dw24.ts_pll_enable),
 		  ice_clk_src_str(dw24.time_ref_sel),
 		  ice_clk_freq_str(dw9.time_ref_freq_sel),
 		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
@@ -548,7 +548,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  str_enabled_disabled(dw24.ts_pll_enable),
 		  ice_clk_src_str(dw23.time_ref_sel),
 		  ice_clk_freq_str(dw9.time_ref_freq_sel),
 		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
@@ -653,7 +653,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
 
 	/* Log the current clock configuration */
 	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
-		  dw24.ts_pll_enable ? "enabled" : "disabled",
+		  str_enabled_disabled(dw24.ts_pll_enable),
 		  ice_clk_src_str(dw23.time_ref_sel),
 		  ice_clk_freq_str(dw9.time_ref_freq_sel),
 		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
-- 
2.34.1

