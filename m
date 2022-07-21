Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F3C57D5AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:15:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EEA1417E2;
	Thu, 21 Jul 2022 21:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EEA1417E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658438146;
	bh=Q1b/blFROVptuCkUR5JSYy2HlyAmAzG+ihY5FbdFN5o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M4+JGJ3qYC2AKV6pwowBZd002hutSor8dx4rQmB/KR1mM8i3HupJK0eAz05/sJ4GC
	 kzZmUglpufjWbUw3evpmDAgWAXWpl5CynyuyI0IHnbXOUct96Bb/Jw5kO5GqnUrWJO
	 HfhUvmD6EN4QAy1a8DtI/QbH0UwVCDrza7Flh1z2+pAIfh72xjP0JrSMCvaH3s0+xM
	 ZB2g5Kr+LDoeyPWzHYPxSHM7bQawqKVoE0+BxnjpeA3X9pDQ8039CDG7K1sPCr9VfF
	 dcDIMhD4jJlU89dJwtHdbyEqSVLVmBoh76qp8b3EqqF1pW6om3gUnW4NP7s/z1Af/j
	 l7O2VSI2nbTPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbEcZOwuzhlw; Thu, 21 Jul 2022 21:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0229B417C6;
	Thu, 21 Jul 2022 21:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0229B417C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B15F81BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8974760B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8974760B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2DcHItoAL-96 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:15:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA9A660AD2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA9A660AD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:15:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="267571472"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="267571472"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:15:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="925816212"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:14:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 21 Jul 2022 14:14:49 -0700
Message-Id: <20220721211451.2475600-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721211451.2475600-1-jacob.e.keller@intel.com>
References: <20220721211451.2475600-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658438131; x=1689974131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bz91TNeeBfGTVdIdZvjlrnngeTyrZBksJ2a1iP5sz44=;
 b=F/yNWlupaKXKvle1RUP/XEPgtjnM1Rk6tKOOCQq3IwBFC4aBNiE5G8YA
 XdJO83s65J+nZwu1FurZ6M2eLhcP1rBXw9r0XUw7oMWTwgBODh3KLWoxb
 /cg/tjfIpK9f1A6sLnRJVuMV1jVUE/jLAYQ1xYH84woCQXKSy6caOkPsD
 y0hUxEE8U72BuGEOJ4CbYpWxD7q2PEhGhOawADDS9uuSZPadYmHc6tB6m
 Wi6zXx9eKaXKErH/PLVM8P/bp6QlNRZcBLqrE8zNiHO1svBc0zzC8kojl
 Eh6iFA4uyX8Ymp7W/wNJ9dyXyCpywxaY471JhFKkhDyEhVJHYoWnfGuy8
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F/yNWlup
Subject: [Intel-wired-lan] [iproute2-next v2 1/3] update <linux/devlink.h>
 UAPI header
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
Cc: Jonathan Corbet <corbet@lwn.net>, intel-wired-lan@lists.osuosl.org,
 David Ahern <dsahern@kernel.org>, linux-doc@vger.kernel.org,
 Stephen Hemminger <stephen@networkplumber.org>,
 Eric Dumazet <edumazet@google.com>, Jiri Pirko <jiri@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 include/uapi/linux/devlink.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/uapi/linux/devlink.h b/include/uapi/linux/devlink.h
index da0f1ba8f7a0..90f6cf97d308 100644
--- a/include/uapi/linux/devlink.h
+++ b/include/uapi/linux/devlink.h
@@ -576,6 +576,14 @@ enum devlink_attr {
 	DEVLINK_ATTR_LINECARD_TYPE,		/* string */
 	DEVLINK_ATTR_LINECARD_SUPPORTED_TYPES,	/* nested */
 
+	/* Before adding this attribute to a command, user space should check
+	 * the policy dump and verify the kernel recognizes the attribute.
+	 * Otherwise older kernels which do not recognize the attribute may
+	 * silently accept the unknown attribute while not actually performing
+	 * a dry run.
+	 */
+	DEVLINK_ATTR_DRY_RUN,			/* flag */
+
 	/* add new attributes above here, update the policy in devlink.c */
 
 	__DEVLINK_ATTR_MAX,
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
