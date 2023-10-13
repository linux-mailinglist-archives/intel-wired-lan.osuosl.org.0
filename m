Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 837157C8C01
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 19:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E64041FF7;
	Fri, 13 Oct 2023 17:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E64041FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697216909;
	bh=mCF+E8J46dZFe2pX1CZdD83kSLiWiO2c7XFdRC237vM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SUew+tUZVglwCKrQ/ItHyB+ekI7oSsvokgo+znHcQbHsl7eHXjDEpu+J3AenDf7vp
	 nZBnKOzV+L39y5bf3vH1jVYd8Z3lBQ2xVIPQQ4xjULVRSXkennCrlF/qblrcDTfjdh
	 GOaogewe+se3F2djhThkH8cwbd6fCxqIR4sfgoNMLIEupFgPrBD+e/et1X0yr5Ni6r
	 XnzH4eg4ENf1vl5sPGvvdntIzIKeLjRIGFDF71UFZlah+Qz26u3USoeskcARKDA+a6
	 fXSm4uqesaarpqhquVH4nLiGHBXF5lIub2FaGA9aKBEyYPFha5VQNi2vco94fKNVwK
	 PFRw+a0K/hVxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOhSXjhb2dVt; Fri, 13 Oct 2023 17:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8B804188F;
	Fri, 13 Oct 2023 17:08:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8B804188F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9FCC1BF425
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 17:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD4A941FED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 17:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD4A941FED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lGsCFfWtX6dA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 17:08:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9285F41B33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 17:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9285F41B33
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-218-Nf45X2WpPnS7TiydF3ZteA-1; Fri, 13 Oct 2023 13:08:04 -0400
X-MC-Unique: Nf45X2WpPnS7TiydF3ZteA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F0B7800B23;
 Fri, 13 Oct 2023 17:08:03 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.161])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE5831C060DF;
 Fri, 13 Oct 2023 17:08:01 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 13 Oct 2023 19:07:53 +0200
Message-ID: <20231013170755.2367410-4-ivecera@redhat.com>
In-Reply-To: <20231013170755.2367410-1-ivecera@redhat.com>
References: <20231013170755.2367410-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697216898;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2xsezFWFByy4rpS2ZiIdJ03gAqw56BIfXZENvTM4VoQ=;
 b=JHsvrfruZjGlq3OsziqH2hZMmu6rMnZ6hMS3ZcwEHd3SMQd0qkYJORPFFNX6crHfOwuYtK
 U0AqMGQhE6YiN0Kp6lOIl6i7Y3Fv/NyDRjcyr5WBNoJzTuxzAsH8/9OF8yyzXaQjMpMDNq
 UWKdvDqGG5V0eJQRakTw/8ownI+FyL0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JHsvrfru
Subject: [Intel-wired-lan] [PATCH net-next 3/5] i40e: Add handler for
 devlink .info_get
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Provide devlink .info_get callback to allow the driver to report
detailed version information. The following info is reported:

 "serial_number" -> The PCI DSN of the adapter
 "fw.mgmt" -> The version of the firmware
 "fw.mgmt.api" -> The API version of interface exposed over the AdminQ
 "fw.psid" -> The version of the NVM image
 "fw.bundle_id" -> Unique identifier for the combined flash image
 "fw.undi" -> The combo image version

With this, 'devlink dev info' provides at least the same amount
information as is reported by ETHTOOL_GDRVINFO:

$ ethtool -i enp2s0f0 | egrep '(driver|firmware)'
driver: i40e
firmware-version: 9.30 0x8000e5f3 1.3429.0

$ devlink dev info pci/0000:02:00.0
pci/0000:02:00.0:
  driver i40e
  serial_number c0-de-b7-ff-ff-ef-ec-3c
  versions:
      running:
        fw.mgmt 9.130.73618
        fw.mgmt.api 1.15
        fw.psid 9.30
        fw.bundle_id 0x8000e5f3
        fw.undi 1.3429.0

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index 66b7f5be45ae..fb6144d74c98 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -5,7 +5,97 @@
 #include "i40e.h"
 #include "i40e_devlink.h"
 
+static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
+{
+	u8 dsn[8];
+
+	put_unaligned_be64(pci_get_dsn(pf->pdev), dsn);
+
+	snprintf(buf, len, "%8phD", dsn);
+}
+
+static void i40e_info_fw_mgmt(struct i40e_hw *hw, char *buf, size_t len)
+{
+	struct i40e_adminq_info *aq = &hw->aq;
+
+	snprintf(buf, len, "%u.%u.%05d",
+		 aq->fw_maj_ver, aq->fw_min_ver, aq->fw_build);
+}
+
+static void i40e_info_fw_api(struct i40e_hw *hw, char *buf, size_t len)
+{
+	struct i40e_adminq_info *aq = &hw->aq;
+
+	snprintf(buf, len, "%u.%u", aq->api_maj_ver, aq->api_min_ver);
+}
+
+enum i40e_devlink_version_type {
+	I40E_DL_VERSION_RUNNING,
+};
+
+static int i40e_devlink_info_put(struct devlink_info_req *req,
+				 enum i40e_devlink_version_type type,
+				 const char *key, const char *value)
+{
+	if (!strlen(value))
+		return 0;
+
+	switch (type) {
+	case I40E_DL_VERSION_RUNNING:
+		return devlink_info_version_running_put(req, key, value);
+	}
+	return 0;
+}
+
+static int i40e_devlink_info_get(struct devlink *dl,
+				 struct devlink_info_req *req,
+				 struct netlink_ext_ack *extack)
+{
+	struct i40e_pf *pf = devlink_priv(dl);
+	struct i40e_hw *hw = &pf->hw;
+	char buf[32];
+	int err;
+
+	i40e_info_get_dsn(pf, buf, sizeof(buf));
+	err = devlink_info_serial_number_put(req, buf);
+	if (err)
+		return err;
+
+	i40e_info_fw_mgmt(hw, buf, sizeof(buf));
+	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
+				    DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, buf);
+	if (err)
+		return err;
+
+	i40e_info_fw_api(hw, buf, sizeof(buf));
+	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
+				    DEVLINK_INFO_VERSION_GENERIC_FW_MGMT_API,
+				    buf);
+	if (err)
+		return err;
+
+	i40e_info_nvm_ver(hw, buf, sizeof(buf));
+	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
+				    DEVLINK_INFO_VERSION_GENERIC_FW_PSID, buf);
+	if (err)
+		return err;
+
+	i40e_info_eetrack(hw, buf, sizeof(buf));
+	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
+				    DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
+				    buf);
+	if (err)
+		return err;
+
+	i40e_info_civd_ver(hw, buf, sizeof(buf));
+	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
+				    DEVLINK_INFO_VERSION_GENERIC_FW_UNDI, buf);
+
+	return err;
+}
+
 static const struct devlink_ops i40e_devlink_ops = {
+	.info_get = i40e_devlink_info_get,
 };
 
 /**
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
