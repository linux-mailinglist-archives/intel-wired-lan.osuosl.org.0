Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C7C8529BB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:23:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CF9960B1E;
	Tue, 13 Feb 2024 07:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2SqMC4B61xB; Tue, 13 Feb 2024 07:23:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 905B960B0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809011;
	bh=qfbWpX2NDSqOBLMk8a8Scva3DYzKar2NF8DmThtrrSU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=syZa8h4uDre1FbcdaEK5oct8f7I2BgJ6MWMNlOJPl9nrwqL4IeII1+g7hOa6Vdba/
	 Vy217FjWbJCaNcjfnlxXB+710L0C1Kx0Ys9R+hUfVEb93hKMw57rKpf4TOTp9o/f5J
	 91gWhDnNEluWL/HN8qXWYeUDHGQ6dUiawK5N+iV9bkoqcRxpeAupKw20Ep6A/NYkud
	 xtErZDT1PtwqWNfOkh9Kk3wLf6MyGTeSI22ArgIH6yh5YCBf1UfhGy2nwi/fJp3v15
	 QiJnJMPcoVmIdVVIiMLcHJFiu5nIfq/Z8tlOhIp9AkX8MXG08k56661vMnuVF0QwZ6
	 M1hIG0nKMYFwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 905B960B0A;
	Tue, 13 Feb 2024 07:23:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3A921BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0B394085C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EEFNmlxoky7s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B24340833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B24340833
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B24340833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27247964"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27247964"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385297"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:25 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:16 +0100
Message-ID: <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809008; x=1739345008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MqV78i8tz/1bAqq70F/Cp5mpwdsUYTuSGbwyKNlOpyg=;
 b=aSbY5mFzWkHwiVvT9asW0iHREIYWIIZE4HSxtO1T3RstQM3iUEPMMlXq
 L27KK6ybHy+BHew92W7DtgkNBQZD0Acd4me8FsHciMDfCttFsXstyY7cF
 ZCvxqXh7hCIaTWo7KcxpGB9AyMFLbMvX/P0PZ4H+mBXn2PtEgNhDHKRrE
 JPZ9vffzLima5eIsBza2jXwT6vusbl5CCZRWxGDU3UbWVJbYme+4mDOLa
 E9nAnni8iakqEXljX6dNUtyjAHYhL/z3j+jV/XrWxcixhxUzdH9IfGD1/
 QIWwWrpsDhq0am+ZszVzPd2czYM5rFzTn+5x3pHPDkwKja4nnJK4Q7bMo
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aSbY5mFz
Subject: [Intel-wired-lan] [iwl-next v1 07/15] ice: add auxiliary device
 sfnum attribute
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Add read only sysfs attribute for each auxiliary subfunction
device. This attribute is needed for orchestration layer
to distinguish SF devices from each other since there is no
native devlink mechanism to represent the connection between
devlink instance and the devlink port created for the port
representor.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 31 +++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index ab90db52a8fc..abee733710a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -224,6 +224,36 @@ static void ice_sf_dev_release(struct device *device)
 	kfree(sf_dev);
 }
 
+static ssize_t
+sfnum_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	struct devlink_port_attrs *attrs;
+	struct auxiliary_device *adev;
+	struct ice_sf_dev *sf_dev;
+
+	adev = to_auxiliary_dev(dev);
+	sf_dev = ice_adev_to_sf_dev(adev);
+	attrs = &sf_dev->dyn_port->devlink_port.attrs;
+
+	return sysfs_emit(buf, "%u\n", attrs->pci_sf.sf);
+}
+
+static DEVICE_ATTR_RO(sfnum);
+
+static struct attribute *ice_sf_device_attrs[] = {
+	&dev_attr_sfnum.attr,
+	NULL,
+};
+
+static const struct attribute_group ice_sf_attr_group = {
+	.attrs = ice_sf_device_attrs,
+};
+
+static const struct attribute_group *ice_sf_attr_groups[2] = {
+	&ice_sf_attr_group,
+	NULL
+};
+
 /**
  * ice_sf_eth_activate - Activate Ethernet subfunction port
  * @dyn_port: the dynamic port instance for this subfunction
@@ -262,6 +292,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
 	sf_dev->dyn_port = dyn_port;
 	sf_dev->adev.id = id;
 	sf_dev->adev.name = "sf";
+	sf_dev->adev.dev.groups = ice_sf_attr_groups;
 	sf_dev->adev.dev.release = ice_sf_dev_release;
 	sf_dev->adev.dev.parent = &pdev->dev;
 
-- 
2.42.0

