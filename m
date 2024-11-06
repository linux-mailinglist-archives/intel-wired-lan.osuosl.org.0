Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAC49BE260
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 10:24:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECD79608BA;
	Wed,  6 Nov 2024 09:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QodXRGk_qLXH; Wed,  6 Nov 2024 09:24:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4196B608AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730885081;
	bh=Il7fDe9T0KK9AUb4YbF7jHlP7QfNkNVDGd3adoicP2A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E7folXnW37dXv96K45ecVhvNybSfUBetloH22SNSVsrdN67D8j1gv5+WG4LqihB41
	 9c/PeIcuQVy0ummJLlf0ltjghOKrS1xeCsTHbJHp4ou2YyAC6QjpC0s5G9XatSvfaZ
	 xP1DtTObNeh0szpZXM8ywAH1NxRaIXwQqUIRSICfrOpi0gYVWJZvu/s3SITpD0/+Or
	 D+gYTjKmQq9mLmrzliqXlFrsOzwVxsHgruiaPy6oPavZdm2RhpJQnjIXbnQlijLpGK
	 wpRXId1fJCEkW0Mn3/p0e71vN9J4EIiBRuTPQZ6d3hI/IqOgtJ5K5RFS3GJURluZE2
	 eRCdkzFpD1qFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4196B608AD;
	Wed,  6 Nov 2024 09:24:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 176CD3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FDD5605EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bRipPRxYS4X2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 09:24:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80202607DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80202607DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80202607DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:35 +0000 (UTC)
X-CSE-ConnectionGUID: 7UiZba9LRoC8FCfU2BgCpA==
X-CSE-MsgGUID: 26p42im1QeWB12oIseTVhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34368405"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34368405"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:24:35 -0800
X-CSE-ConnectionGUID: t8nhEareSpmhJjTFVSTmGw==
X-CSE-MsgGUID: 7hbvPhtcQmyYso6I20nXUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="115221990"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 06 Nov 2024 01:24:14 -0800
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 38CA42877E;
 Wed,  6 Nov 2024 09:24:12 +0000 (GMT)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Konrad Knitter <konrad.knitter@intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Date: Wed,  6 Nov 2024 10:36:42 +0100
Message-Id: <20241106093643.106476-3-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241106093643.106476-1-konrad.knitter@intel.com>
References: <20241106093643.106476-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730885076; x=1762421076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aj3QpbQ3vAeAf4pan0gySW1WB6gm994teoTQgAanVdA=;
 b=SlvQciJZEjfQ3bX7WYSWZCt5dX7nOXTJutt1r8sxIQmgD0WblsOLfLJV
 Xc3XC05PJFl+o3aHQVegBNph22Fgz9mhvkmn0zuAJ8NQ4xOOqkaJRzz02
 qYjSb1Q/RG5+rcPVm3otggFhTgueoAE26amJKPPj6hsS76aNVbRRWsxuf
 VYZm6LVrX2oAuMkAtzqw7FS6WLy5S8bJ2E1ToeG/pRho5h1IYh1LD7SsV
 kPhbY631C3Sb8mhMjf3vH/lAYxhRYrpJ0M1+iFoKDaKK4gY8kislSSaQ8
 KxpgGB8PsVrU3yOC/jZLjPU0Am9ElJgC+pSvnB+t4aREla/tM4GkeIDda
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SlvQciJZ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] devlink: add devl guard
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

Add devl guard for scoped_guard().

Example usage:

scoped_guard(devl, priv_to_devlink(pf)) {
	err = init_devlink(pf);
	if (err)
		return err;
}

Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
---
 include/net/devlink.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index 7f5b36554778..6fa46ed3345f 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -1534,6 +1534,7 @@ int devl_trylock(struct devlink *devlink);
 void devl_unlock(struct devlink *devlink);
 void devl_assert_locked(struct devlink *devlink);
 bool devl_lock_is_held(struct devlink *devlink);
+DEFINE_GUARD(devl, struct devlink *, devl_lock(_T), devl_unlock(_T));
 
 struct ib_device;
 
-- 
2.38.1

