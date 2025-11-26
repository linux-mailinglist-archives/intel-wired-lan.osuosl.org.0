Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDE1C89142
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 10:49:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB411612F2;
	Wed, 26 Nov 2025 09:49:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ono8noYWAqNh; Wed, 26 Nov 2025 09:49:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0789961210
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764150560;
	bh=nIbCRcyXpSwDfJlHCfXsHmm33BBMEQ9tSPjNLTIWWbE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n38hv1haYwWR3mXbmOsc2tM5FxaMgilmqw3KfVegKVfLZ6vxBAoBQ/uRJ49JJxuwH
	 LgoBO88bZeJaaeFTc3IgZLp8idcOO1RozM0UPMtZZZ4K87dJA4eddChmTCRyrzS3aG
	 P2CYIEnEEfWXlTl3pMAp5gSr1d6sEp/+UwlnBhYEupZd150itNos9upO1VE7/JxC39
	 nd1snJCKqRcpgk3jjQldRsEGeSDn4pOdYSC6BiipkoAD02QZNLJ/KY0d9qz5via/ng
	 yh7Xwaram+zW5xGQlm4DMyi4g9JLYlGju2RU1FDRshnqZZo+/BEbFAMpbMCk4BdELU
	 lI8dYzcba+S9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0789961210;
	Wed, 26 Nov 2025 09:49:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 37ED523F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 09:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E68940FB7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 09:49:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rzdvdilUd_em for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 09:49:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0BCF44085F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BCF44085F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BCF44085F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 09:49:16 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-403-_T7aow0FMQuVCKVuiLxYPw-1; Wed,
 26 Nov 2025 04:49:09 -0500
X-MC-Unique: _T7aow0FMQuVCKVuiLxYPw-1
X-Mimecast-MFC-AGG-ID: _T7aow0FMQuVCKVuiLxYPw_1764150547
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id DA9EE1956059; Wed, 26 Nov 2025 09:49:06 +0000 (UTC)
Received: from rhel-developer-toolbox (unknown [10.43.3.204])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id DE2F13001E83; Wed, 26 Nov 2025 09:49:01 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Sai Krishna <saikrishnag@marvell.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>
Cc: Tim Hostetler <thostet@google.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 26 Nov 2025 10:48:49 +0100
Message-ID: <20251126094850.2842557-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1764150555;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=nIbCRcyXpSwDfJlHCfXsHmm33BBMEQ9tSPjNLTIWWbE=;
 b=axCXk882IYFuRaYyPclhCL3r/NFcYqOK6RB4sHX6pc3/CDxz3SJVmlwsHEF6pcRVJZvqos
 77oJjm/clDsTaWe+hUGkjrddujcXUqKvs80D5p1uC2mqwmmDtA+bRZ5nkrVO9ENEEoFvHP
 YqxJSWVsEHqi1iY6Ym6DiUQQqyw8z4o=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=axCXk882
Subject: [Intel-wired-lan] [PATCH net] iavf: Implement settime64 with
 -EOPNOTSUPP
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

ptp_clock_settime() assumes every ptp_clock has implemented settime64().
Stub it with -EOPNOTSUPP to prevent a NULL dereference.

The fix is similar to commit 329d050bbe63 ("gve: Implement settime64
with -EOPNOTSUPP").

Fixes: d734223b2f0d ("iavf: add initial framework for registering PTP clock")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ptp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index b4d5eda2e84f..9cbd8c154031 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -252,6 +252,12 @@ static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
 	return iavf_read_phc_indirect(adapter, ts, sts);
 }
 
+static int iavf_ptp_settime64(struct ptp_clock_info *info,
+			      const struct timespec64 *ts)
+{
+	return -EOPNOTSUPP;
+}
+
 /**
  * iavf_ptp_cache_phc_time - Cache PHC time for performing timestamp extension
  * @adapter: private adapter structure
@@ -320,6 +326,7 @@ static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
 		 KBUILD_MODNAME, dev_name(dev));
 	ptp_info->owner = THIS_MODULE;
 	ptp_info->gettimex64 = iavf_ptp_gettimex64;
+	ptp_info->settime64 = iavf_ptp_settime64;
 	ptp_info->do_aux_work = iavf_ptp_do_aux_work;
 
 	clock = ptp_clock_register(ptp_info, dev);
-- 
2.51.1

