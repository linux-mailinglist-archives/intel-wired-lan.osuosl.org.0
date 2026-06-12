Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0Qc1MrYjLGp4MAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 17:20:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C3067A7CE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 17:20:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=QYdSi43v;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=163.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A91DB403F4;
	Fri, 12 Jun 2026 15:20:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A2xrRERnzf36; Fri, 12 Jun 2026 15:20:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD79E4110F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781277618;
	bh=ZaPg6v6b9//PiUwAnb+zRa25onPj2hKjdQbrL0q7VG0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QYdSi43vt9QINtzaDHfK7nUHmplVtW9NBOZssvwLyjfz7JrYw+I8ci4AMYB+e3F9B
	 MgXQSnDY/K792tQ4WzGQ4Lj21woDyqTIZWkfpA0efY9Acyq6yMD1Cf9bbvshZp3RbF
	 xKvVc/diD7R4/1m89ner4hjFgPGN2CJFPzsSx7YAPTR5r/lPaDbOjjY3gCdZndPapG
	 NZkMuLWiJ6dTnv3ozni/cT2Kp7cs2wDEEUwhaYGy74RJCT1vAbzOPU6Pdm5BDcW3kB
	 TUW0Bu6EvJ1nKszlM5plObbAHIqCZ9g/FZ0WeymkyQ5NABLN5I7s5ZReKKYIN8sECN
	 xvm/0W39jslkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD79E4110F;
	Fri, 12 Jun 2026 15:20:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 671AAF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4CD3181585
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:10:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0lonQUZ-wce for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2026 08:10:30 +0000 (UTC)
X-Greylist: delayed 395 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 12 Jun 2026 08:10:29 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 669A48222A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 669A48222A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.4;
 helo=m16.mail.163.com; envelope-from=clementwei90@163.com; receiver=<UNKNOWN> 
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 669A48222A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:10:28 +0000 (UTC)
Received: from localhost.localdomain (unknown [])
 by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wA32r1VvStq4Np5DA--.798S2;
 Fri, 12 Jun 2026 16:03:34 +0800 (CST)
From: Rongguang Wei <clementwei90@163.com>
To: przemyslaw.kitszel@intel.com,
	anthony.l.nguyen@intel.com
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Rongguang Wei <weirongguang@kylinos.cn>
Date: Fri, 12 Jun 2026 16:03:31 +0800
Message-Id: <20260612080331.120096-1-clementwei90@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wA32r1VvStq4Np5DA--.798S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw1kJrW8XF1DAFW5KFWxWFg_yoWkWFg_Gr
 1Iqw1xAr15J3ZY9a1jvr4UZ34Igan0grWxCFWxt3s5X3yUWr4DJF4DWF18XF9xKrnxWFy7
 J343ta47A34jgjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8hjjDUUUUU==
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5fohzv5qwzvxizq6il2tof0z/xtbC4hbpVWorvVZMdQAA3b
X-Mailman-Approved-At: Fri, 12 Jun 2026 15:20:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=Za
 Pg6v6b9//PiUwAnb+zRa25onPj2hKjdQbrL0q7VG0=; b=BcVTPhiTH0cS+S4z17
 CapnFI0j3x8Fw82FkRyWm/ois1Sev3nVsmafnq8t3KZv4BhEsCpKNpl00btSJgBh
 WpHpXaWYrjQVcIAgWZM3fOwLHd1MmGrhZp4NLfk9jko53Dv+8BCQaHay+GJ8AfyL
 eMTVyknqpzhWVy4zng2viGgkU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=BcVTPhiT
Subject: [Intel-wired-lan] [PATCH net-next v1] e1000: Initialize phy_data to
 avoid unexpected values
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:weirongguang@kylinos.cn,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_XOIP(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[140.211.166.137:from];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04C3067A7CE

From: Rongguang Wei <weirongguang@kylinos.cn>

The phy_data variable is not initialized. If e1000_read_phy_reg
returns an error, phy_data will not point to a valid value from
the PHY register, which may cause the regs_buff array to be populated
with unexpected values.

Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
Change-Id: I46071b3b21a566f8da650168d38d6968251b077d
---
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index 4dcbeabb3ad2..f068108c5004 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -327,7 +327,7 @@ static void e1000_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
 	u32 *regs_buff = p;
-	u16 phy_data;
+	u16 phy_data = 0;
 
 	memset(p, 0, E1000_REGS_LEN * sizeof(u32));
 
-- 
2.25.1

