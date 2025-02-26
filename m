Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7689A46B93
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 20:59:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61CC680A78;
	Wed, 26 Feb 2025 19:59:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I8JZOC_9MfmZ; Wed, 26 Feb 2025 19:59:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A59C80524
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740599970;
	bh=rJ3GmCSN4dwV0luCHC1nQCCdc7NrbsQh/O3sm9V2O7U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KDq0LA3jjEaOyxAMynHyqOdz+Te2PNgOBLqBq/COBf6HZU52ugAeW6/gmDc2nsNnC
	 CsFTNGP80fV5vr+cWnHUn+VE3c3me4Gkp+ahk5SWifq78OLp0APTZe0cCbMpypSyA/
	 +tWnrmHmLRFhnWhcS5odwWSBpBIlJYgZMZDlCtMOYAPlDWDk5uWRDi7MwCineQqJwH
	 WTYqoNry4avnCWH3/ZPgmhI4G1I8/mL6JO77J8OslgiTNX3iIG8bVX8GYTUyC148bq
	 nxwyl3PcOH0i5ZGo+Ox90r1oN6miqNbTwR+wfZNtth8idzT9S+LqYraIrLD0gHwqTG
	 qJUuA+//qQPsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A59C80524;
	Wed, 26 Feb 2025 19:59:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 14F5194F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 19:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DCE38412C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 19:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FgufzpA5DyUu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 19:51:11 +0000 (UTC)
X-Greylist: delayed 399 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Feb 2025 19:51:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B474412BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B474412BA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.144;
 helo=fout-b1-smtp.messagingengine.com; envelope-from=mpearson-lenovo@squebb.ca;
 receiver=<UNKNOWN> 
Received: from fout-b1-smtp.messagingengine.com
 (fout-b1-smtp.messagingengine.com [202.12.124.144])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B474412BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 19:51:11 +0000 (UTC)
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id E58C3114014F;
 Wed, 26 Feb 2025 14:44:30 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Wed, 26 Feb 2025 14:44:31 -0500
X-ME-Sender: <xms:HW-_ZyGM7biCJSajAcIs00fqZOyqwp57zcDxeimz26DZwfzgM9CHTQ>
 <xme:HW-_ZzVsbD1i7GTm_HbODigHMcW9Ri-MkxlNH4ln_xj0qcD-RHZVQTMYfOGaRWU5v
 BNO0tUMxeRsdfXTMy8>
X-ME-Received: <xmr:HW-_Z8IInj6Hg3B98dPo4RaE22AtDFvB5mOfXlNRfI6Mm_qii5ArhivFHxE5R6VajTTjfm5v5bR8vVAfApjz4kPfDdQzxSfp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdekheegiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecuogetfedtuddqtdduuc
 dludehmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhm
 peforghrkhcurfgvrghrshhonhcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvg
 gssgdrtggrqeenucggtffrrghtthgvrhhnpeeftddvjeefleffvefhgfejjeehudetteei
 geeugfekhffhgeejudeuteehgfdvffenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdr
 tggrpdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
 epmhhpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgdprhgtphhtthhopegr
 nhhthhhonhihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehprh
 iivghmhihslhgrfidrkhhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhopegr
 nhgurhgvfidonhgvthguvghvsehluhhnnhdrtghhpdhrtghpthhtohepuggrvhgvmhesug
 grvhgvmhhlohhfthdrnhgvthdprhgtphhtthhopegvughumhgriigvthesghhoohhglhgv
 rdgtohhmpdhrtghpthhtohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtphhtthhope
 hprggsvghnihesrhgvughhrghtrdgtohhmpdhrtghpthhtohepihhnthgvlhdqfihirhgv
 ugdqlhgrnheslhhishhtshdrohhsuhhoshhlrdhorhhg
X-ME-Proxy: <xmx:HW-_Z8Fy4zg85irjJdiFr2NJP5sfm_s2HUVK_ajJkhxkIk-uTCW1Bw>
 <xmx:HW-_Z4UGIfZ6sO9XWAQL8yqb9Isi5WmNfwkhhHQ7eFa_telo0UrT2Q>
 <xmx:HW-_Z_PgbVEW7EhlTdPVcld_h1Jer4p5sC_tjDYV_Yllskcnmsrqtg>
 <xmx:HW-_Z_2qhPCyx2J21_125mgdJl5O6Rn6aUDmmUhjocTLoJLdVKCxDQ>
 <xmx:Hm-_Z3MWWtUASLoI18Pi_JnybmeW4jJ-tvHZVF5RFXBk4XC2_ViYQzvb>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 26 Feb 2025 14:44:29 -0500 (EST)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Feb 2025 14:44:12 -0500
Message-ID: <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 26 Feb 2025 19:59:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1740599070; x=
 1740685470; bh=rJ3GmCSN4dwV0luCHC1nQCCdc7NrbsQh/O3sm9V2O7U=; b=B
 2NMNBYEe1f0QSIS02m5pHkN5AZfIIGuLkmC7956EegWQYMxNyEWTKWBYuUSQh229
 B5uJ/IKcaAqTyQAX0/cFIO5GuQVEWhjBnjGkf6irogTIMIYvmOC9pH6/TvOa3FRX
 8C+RM7E7yA0WTz3uVbs7iax7lYzGIDc0712Lcyt+Naw+1vPkPeHpyJikGlB2Jzw1
 M+Hz3weXJnZUUMXd/0nh4UuwUMfycQ4OroNIQJ99hG8EFN1uzfC/ODnSKOyeUjDh
 LboDoRZz2pFDfBJtnoRio9tlIkixExaZPYzw5MZufz0HxNSBELKUJik9smLswaRT
 O6gqP/0eq0CCsBslqs5FA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1740599070; x=1740685470; bh=r
 J3GmCSN4dwV0luCHC1nQCCdc7NrbsQh/O3sm9V2O7U=; b=m/Cw8/snY3yxmjVwK
 yWIN9ujYAdfTeLScm5r9V8kgGDzAI9EAAGI39msKGIo+fvChiWyRs4j/9cmKauok
 JFTE5bCoLn2Ap2ZiGu8VvMYzr9Bmmwo3u7DecThI0p3JoaPD5XVSrNxtSig7FfdW
 aeamCbKTUamWxac4SnF86O+Sg44VuJiJCpnuhdYecd+l21gO+Z/ZmDV9mvTEFCQX
 ybw7vQmNqGfAjg+GIAinRSX4ko4+E37VE/9Zp0Jo2myjfnFiJYdxKQTOUyNCxDST
 /2UTj35wtLB1EIpXJGoxUD+GPDYzSAPK0UNn7dL1vvAGjNwaM+jkZ90wpqy6EoRv
 fUknw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=squebb.ca
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=squebb.ca header.i=@squebb.ca
 header.a=rsa-sha256 header.s=fm2 header.b=B2NMNBYE; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=m/Cw8/sn
Subject: [Intel-wired-lan] [PATCH] e1000e: Link flap workaround option for
 false IRP events
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

Issue is seen on some Lenovo desktop workstations where there
is a false IRP event which triggers a link flap.
Condition is rare and only seen on networks where link speed
may differ along the path between nodes (e.g 10M/100M)

Intel are not able to determine root cause but provided a
workaround that does fix the issue. Tested extensively at Lenovo.

Adding a module option to enable this workaround for users
who are impacted by this issue.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 286155efcedf..06774fb4b2dd 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -37,6 +37,10 @@ static int debug = -1;
 module_param(debug, int, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
+static int false_irp_workaround;
+module_param(false_irp_workaround, int, 0);
+MODULE_PARM_DESC(false_irp_workaround, "Enable workaround for rare false IRP event causing link flap");
+
 static const struct e1000_info *e1000_info_tbl[] = {
 	[board_82571]		= &e1000_82571_info,
 	[board_82572]		= &e1000_82572_info,
@@ -1757,6 +1761,21 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
 	/* read ICR disables interrupts using IAM */
 	if (icr & E1000_ICR_LSC) {
 		hw->mac.get_link_status = true;
+
+		/*
+		 * False IRP workaround
+		 * Issue seen on Lenovo P5 and P7 workstations where if there
+		 * are different link speeds in the network a false IRP event
+		 * is received, leading to a link flap.
+		 * Intel unable to determine root cause. This read prevents
+		 * the issue occurring
+		 */
+		if (false_irp_workaround) {
+			u16 phy_data;
+
+			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
+		}
+
 		/* ICH8 workaround-- Call gig speed drop workaround on cable
 		 * disconnect (LSC) before accessing any PHY registers
 		 */
-- 
2.43.0

