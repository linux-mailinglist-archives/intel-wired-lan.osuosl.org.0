Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8D79AC715
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 11:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F779607CF;
	Wed, 23 Oct 2024 09:54:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w6q8haMPjAYY; Wed, 23 Oct 2024 09:54:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B552960733
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729677278;
	bh=LNSKDqG40LuvJJqfbFD0+CIyOBFdGCy4OxW7msF9xro=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XglQ048qbvyCRX4HhILVo1/wEV5GehvXrJCOr7PsC8lkI1+wngjizrcqcdG7GCYeA
	 s8gWVy4AGr5X1vLMK5nBtNvHWYB2z1IpUxrgJGm4lgHNedYOMBNnm2xzt4a+juoquo
	 ZH03z0CWJV+ETPaCUrmOObG5YKeg/WBwKLMk6oDQr3fwablG1jR6Kp5yotJPqGhxvc
	 bDFeMg8SyBFR4CjbrGEVAQBzcVwdnqh6cWXAvbs9/8yHSB2LpU7enZ0OZFGMprxAGk
	 rnUL+wkYgIgq+ZqAXgjcdfQprFE2bz9VTtZZKOc6vkWtiAONQ3CFmsF0DhPrCq0wYW
	 wUFYcK8jSoFbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B552960733;
	Wed, 23 Oct 2024 09:54:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ABE9459B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D17540524
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iw70YCcgUuCM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 09:54:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 398C240539
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 398C240539
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 398C240539
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:54:32 +0000 (UTC)
X-CSE-ConnectionGUID: 6OVMVQxQTCSYkMGwZhrTHg==
X-CSE-MsgGUID: M1LIE7npTSyqgLZ+aNo+rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="54658357"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="54658357"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 02:54:32 -0700
X-CSE-ConnectionGUID: Kvwn5bz/TBC0+i6jazAi+w==
X-CSE-MsgGUID: u8SITGVSTbmrCwGjOTaD0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84771109"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 23 Oct 2024 02:54:29 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D5E1428167;
 Wed, 23 Oct 2024 10:54:27 +0100 (IST)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Konrad Knitter <konrad.knitter@intel.com>
Date: Wed, 23 Oct 2024 12:07:02 +0200
Message-Id: <20241023100702.12606-3-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241023100702.12606-1-konrad.knitter@intel.com>
References: <20241023100702.12606-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729677272; x=1761213272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QonsRn9UUYBCVKXdMXZZDVwET4/jsEve5vP7nGMrv4o=;
 b=DXAybdmmbJOmE2QlWcKScyZNsla6TfN9takV+gz0UF4xSSr1FRwMbvLv
 ndobhQq0PsPWnWnn7f51P92IVWreZoME0WBIKNdaRR5U4IOWk7Egkf+90
 PV9LSkyXhHfNckGUUamuUE8xwrK3dfY1HcmzM8LbGXRI/QHGBTqWd+XV/
 6HZKC+9FGgYgPjgYY7Kviwx9R7DMWD6j7D7ZtLL9tehVfx9z48In+ThEA
 nvWC763pRD/pkQH0v6U6XndBiXKZhQOwsxi07SMgHuTcdRI7Ww3F45kkN
 uJF4NsivC+yyNRK6D94M5ve3uaZc5iNAXNQP7e72z10HhoufbogZUEU1H
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DXAybdmm
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] devlink: add devl guard
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

