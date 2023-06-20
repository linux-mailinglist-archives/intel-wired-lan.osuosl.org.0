Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2527368A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA2A9418CB;
	Tue, 20 Jun 2023 10:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA2A9418CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255321;
	bh=ZgQaRbCOnYwcNTImF7FkQl+yd+1kL+AdlaOaIdiX2YI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qSdbtLVG+LB4k4ld3pxzQiqqDFCjdQcL8Z98TKHgD4GwF0eFxuh1LYb53KV86AaaE
	 2DaimDSdP8dFACbvJRT0xIn/Z91uRtjfebcxpE64QtxK4uyyB8Veb4MZNPeimTDhHV
	 yUClooPQNHP1FeV0jhxsoSfC2fVZH8BAGCPd5USCcl32J7StgX0TnrZGbZ9YjPuove
	 BExH7Vw0XpdTxzTlUrrv0CLE4xYlWiqId4mzPtO9sKsHDk6KBd4aD6slBGsBdVOeND
	 i7PkaT+hJvU9FTwCLOicx8LbQK09ypHNY+t25v3rJbN/me1sJ1mas3UG8F9T6Y3AUF
	 fsCeE+sLamiYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PhYZzq-knThA; Tue, 20 Jun 2023 10:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A39B418C1;
	Tue, 20 Jun 2023 10:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A39B418C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A53511BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DBCF60E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DBCF60E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oD5DiEaT9iT4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:01:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C96E760D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C96E760D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688596"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688596"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227666"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227666"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:01:43 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 10:00:00 +0000
Message-Id: <20230620100001.5331-15-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255306; x=1718791306;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4IxRCJrQyNed/75qiJMdpLGnuqlhmQ7CqM2yNOXMcgg=;
 b=ZwpuAmv1cLfrf/bHJAZqOKl6wD08HqgANCnWd65qCvHgMjLWTbEWevXs
 Rh5YJv4UNnOsevUYFruiQ+BBpFOY3KmzfU0aNWRlA3Nzfn4ckMcKk8tA9
 iP1wCrkPklwojiypr0d/SWFVAHjBjttuTkkyeQICD/K3swAXovRnW6K+e
 Ae0V9QbmDbrYFfj6ZGcX25TZtICvKb5mSFDHC5elNGgf6IncX9dsmMvj4
 5ut0ZwJjX1hBj1gnxJss4mIsihOKFX8hXCsAk4GKBcUawLtkotVviWe6H
 Wh3d7+lJPWwtPljH/2LpTsjgJ78OwI+KZK3/T/xsnCbcLF+0kZk1pylXH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZwpuAmv1
Subject: [Intel-wired-lan] [PATCH iwl-next V1 14/15] vfio: Expose
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
