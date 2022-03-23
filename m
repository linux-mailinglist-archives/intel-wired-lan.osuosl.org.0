Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82F64E5267
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 13:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AC3C400FE;
	Wed, 23 Mar 2022 12:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zyWfuo6NMt42; Wed, 23 Mar 2022 12:45:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20E80400FF;
	Wed, 23 Mar 2022 12:45:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAEA51BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C328041579
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OrnmHsoS6zaS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 12:45:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AC624156D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648039546; x=1679575546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b3goUzAA/VI/4DOWbJOhFKgO5Gi2BfRA6h5XH2fYuh0=;
 b=Zis0rnZoo69HdwPZXBarG0vSt7YzDV79FC0fKfu9FH6Oblzo/2OVzXTp
 zTj57owM4W/GG4u42Gl+nbADNJdC+QE/5WfTDaKUPlvlunJCK7EgYpqIL
 sXCBYmdnJt0V14pOAxty64zElfZunxObjrDClm/WyjhoSLvcVAQ2GXNpe
 A9rpjyczhi7MFgeT8zwYMJBgD5KsLgr+hswUYRs87A9TOzwJdZSHnvjFc
 LmrWc3uNth+utl9Y32W3pt66dFlwRM9dKJTmqFZl3xZftyiw7LfLIS2QS
 atb911oGlDiv0k9PrzsuWECleGwkGDaVHQQSmw/s7sbrQWDxmERb4+bMM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="238703666"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="238703666"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 05:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="500987437"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 23 Mar 2022 05:45:42 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22NCjeuC017350; Wed, 23 Mar 2022 12:45:40 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 23 Mar 2022 13:43:51 +0100
Message-Id: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 0/2] ice: avoid sleeping/scheduling in
 atomic contexts
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The `ice_misc_intr() + ice_send_event_to_aux()` infamous pair failed
once again.
Fix yet another (hopefully last one) 'scheduling while atomic' splat
and finally plug the hole to gracefully return prematurely when
invoked in wrong context instead of panicking.

Alexander Lobakin (2):
  ice: fix 'scheduling while atomic' on aux critical err interrupt
  ice: don't allow to run ice_send_event_to_aux() in atomic ctx

 drivers/net/ethernet/intel/ice/ice.h      |  2 ++
 drivers/net/ethernet/intel/ice/ice_idc.c  |  3 +++
 drivers/net/ethernet/intel/ice/ice_main.c | 25 ++++++++++++++---------
 3 files changed, 20 insertions(+), 10 deletions(-)

-- 
Urgent fix, would like to make it directly through -net.
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
