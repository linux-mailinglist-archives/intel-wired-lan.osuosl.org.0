Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B06737E1B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 713FE4182E;
	Wed, 21 Jun 2023 09:12:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 713FE4182E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338752;
	bh=ZgQaRbCOnYwcNTImF7FkQl+yd+1kL+AdlaOaIdiX2YI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GhJPcMn2rhRCa7sYrpmyoJcswQp3Raw7FgCQ4+aDb/dIdRdOuMvLkEsdDQH8MqT8U
	 GQJ+tyUobnEdB9aF2cPjwRmpeFPQQkBH0mBAbelfHQhTEMRAIvDwMxaxXkEVZp5vOs
	 IVM4u/hvWpy9GPNJ0hVHJddxvLcZRor6Kr6pll+O3rsT4m3N93L0iry2yVtywAly7/
	 jxJ5716pM5AEQuHKHMkzZPewujNxkCi5r+8JyrDBrwr3UcJ8/y6t4q8Gx6pB9xgO7C
	 89T1bwIzQeh97ctntGXYzrzajyb78eWX5nu6QQ16U3kaqav8g2FcDXd5wES9lsami2
	 GrI+O+kRPrHWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 43flF1f1xbQ2; Wed, 21 Jun 2023 09:12:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 715C841802;
	Wed, 21 Jun 2023 09:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 715C841802
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C55BE1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC09783280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC09783280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m0Iio2MFKGnO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:12:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17BE883276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 17BE883276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613806"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613806"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:12:17 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570998"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570998"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:12:14 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:11 +0000
Message-Id: <20230621091112.44945-15-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338738; x=1718874738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4IxRCJrQyNed/75qiJMdpLGnuqlhmQ7CqM2yNOXMcgg=;
 b=Dz9WOGlOIBzBuoWD31dPOUr6bUfUI50o0UcDsmsvOvUVrudLYxjzbtES
 ONxH+qguMP/CwGcmhRJ00Wak6smolmgurf3IJn1sGOk2oHplsc3FaNDAn
 uV8Sbi3kAtJhkIocHsBEieHtq5RbHbt5uLqSjSkzBhxidXZnmcWyP7DrY
 rqJfk2x58BlafP87Hs17DkWVHCmRFZa7LVc7bUShGdktX1qnzjcXudVjE
 E+ewuLR3gF+BqwEt6nK5yxgvSW08B7J1ytFjcB2hlMqI+kBAhR/pCpIeq
 ohKe8DCYJovV2I3sfU2d02BPst2RekdBb7BSHwMv9PpxKE8LHQcTOI/0b
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dz9WOGlO
Subject: [Intel-wired-lan] [PATCH iwl-next V2 14/15] vfio: Expose
 vfio_device_has_container()
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yahui Cao <yahui.cao@intel.com>

Expose vfio_device_has_container() to be used by drivers
to know what is the vfio uAPI probed by user application.

Next patch for ice vfio pci driver will use it.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 drivers/vfio/group.c | 1 +
 include/linux/vfio.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
index fc75c1000d74..ae8f9ed4708a 100644
--- a/drivers/vfio/group.c
+++ b/drivers/vfio/group.c
@@ -744,6 +744,7 @@ bool vfio_device_has_container(struct vfio_device *device)
 {
 	return device->group->container;
 }
+EXPORT_SYMBOL_GPL(vfio_device_has_container);
 
 /**
  * vfio_file_iommu_group - Return the struct iommu_group for the vfio group file
diff --git a/include/linux/vfio.h b/include/linux/vfio.h
index 2c137ea94a3e..ad8ed8fd8d56 100644
--- a/include/linux/vfio.h
+++ b/include/linux/vfio.h
@@ -253,6 +253,7 @@ bool vfio_file_is_group(struct file *file);
 bool vfio_file_enforced_coherent(struct file *file);
 void vfio_file_set_kvm(struct file *file, struct kvm *kvm);
 bool vfio_file_has_dev(struct file *file, struct vfio_device *device);
+bool vfio_device_has_container(struct vfio_device *device);
 
 #define VFIO_PIN_PAGES_MAX_ENTRIES	(PAGE_SIZE/sizeof(unsigned long))
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
