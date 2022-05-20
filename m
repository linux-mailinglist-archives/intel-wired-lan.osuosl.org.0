Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B3A52E1C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 03:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A6D3833C7;
	Fri, 20 May 2022 01:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b3RiswxUwc1l; Fri, 20 May 2022 01:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5351883267;
	Fri, 20 May 2022 01:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F3B21BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A640084528
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZLAX1Dc__YM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 01:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6ACA08452F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653009356; x=1684545356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ABPrbRrB7H4era6LahfVmzh6b3s4/Or9defPrr4gSZs=;
 b=EmBdVc3wLeXK3FRjAps/Sze6jkwNkRdf9wLdAww2iAhftbL9iX9YhAn1
 Ge9BBZrF/1Z45jmEZhnXx+y4BkI4zFAA8q66GTxoapbUCviyXffTEZM7L
 5rCWEQNXsUMyC4h2B1bdWk5FefMPspwCq5qZox0OWX6IeoC7+DdBepHWE
 1dnaRlO507z1IG6kTfmOtJkB2G2KOTWcyD5qc0vel2iAY8SuCbl2KxafU
 gy8NFgLbMClcKCs9h7XKCPOnmwnVVfy5MJ48Urkl70mEMUYxYlTX0AZSv
 PdRRD6x8HuwAcSqu6nKrdVgFrOvAb0C5U2dvDK5DvH5yhHrpZwwwiVau0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="333064153"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="333064153"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570534539"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.84])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:53 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 19 May 2022 18:15:29 -0700
Message-Id: <20220520011538.1098888-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220520011538.1098888-1-vinicius.gomes@intel.com>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v5 02/11] ethtool: Add support
 for Frame Preemption verification
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, boon.leong.ong@intel.com,
 xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Expose the ethtool parameters to the PREEMPT_SET/_GET commands
necessary to support the verification procedure as defined by IEEE
802.3-2018.

These include the 'verified' bit to indicate that the verification
dialog has concluded successfully with the link partner and frame
preemption is supported. There's also the 'disable_verify' config to
disable initiating the verification dialog.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 Documentation/networking/ethtool-netlink.rst |  3 +++
 include/linux/ethtool.h                      |  3 +++
 include/uapi/linux/ethtool_netlink.h         |  2 ++
 net/ethtool/netlink.h                        |  2 +-
 net/ethtool/preempt.c                        | 11 +++++++++++
 5 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
index 15d7c025cc4e..1731e7ad9ee7 100644
--- a/Documentation/networking/ethtool-netlink.rst
+++ b/Documentation/networking/ethtool-netlink.rst
@@ -1646,6 +1646,8 @@ Kernel response contents:
   ``ETHTOOL_A_PREEMPT_ENABLED``           bool    frame preemption enabled
   ``ETHTOOL_A_PREEMPT_PREEMPTIBLE_MASK``  bitset  preemptible queue mask
   ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE``     u32     Min additional frag size
+  ``ETHTOOL_A_PREEMPT_DISABLE_VERIFY``    u32     disable verification
+  ``ETHTOOL_A_PREEMPT_VERIFIED``          u32     verification procedure
   ======================================  ======  ==========================
 
 ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE`` configures the minimum non-final
@@ -1667,6 +1669,7 @@ Request contents:
   ``ETHTOOL_A_PREEMPT_ENABLED``           bool    frame preemption enabled
   ``ETHTOOL_A_PREEMPT_PREEMPTIBLE_MASK``  bitset  preemptible queue mask
   ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE``     u32     Min additional frag size
+  ``ETHTOOL_A_PREEMPT_DISABLE_VERIFY``    bool    disable verification
   ======================================  ======  ==========================
 
 ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE`` configures the minimum non-final
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 42570ec8ee44..5600a7610fa1 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -13,6 +13,7 @@
 #ifndef _LINUX_ETHTOOL_H
 #define _LINUX_ETHTOOL_H
 
+#include "asm-generic/int-ll64.h"
 #include <linux/bitmap.h>
 #include <linux/compat.h>
 #include <linux/netlink.h>
@@ -464,6 +465,8 @@ struct ethtool_module_power_mode_params {
 struct ethtool_fp {
 	u32 enabled;
 	u32 preemptible_mask;
+	u32 disable_verify;
+	u32 verified;
 	u32 add_frag_size;
 };
 
diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
index 651c7af76776..27c9bc5bfa51 100644
--- a/include/uapi/linux/ethtool_netlink.h
+++ b/include/uapi/linux/ethtool_netlink.h
@@ -709,6 +709,8 @@ enum {
 	ETHTOOL_A_PREEMPT_ENABLED,			/* u8 */
 	ETHTOOL_A_PREEMPT_PREEMPTIBLE_MASK,		/* bitset */
 	ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE,		/* u32 */
+	ETHTOOL_A_PREEMPT_DISABLE_VERIFY,		/* u8 */
+	ETHTOOL_A_PREEMPT_VERIFIED,			/* u8 */
 
 	/* add new constants above here */
 	__ETHTOOL_A_PREEMPT_CNT,
diff --git a/net/ethtool/netlink.h b/net/ethtool/netlink.h
index 444799f3e91a..dfdef5b8fe5b 100644
--- a/net/ethtool/netlink.h
+++ b/net/ethtool/netlink.h
@@ -381,7 +381,7 @@ extern const struct nla_policy ethnl_fec_get_policy[ETHTOOL_A_FEC_HEADER + 1];
 extern const struct nla_policy ethnl_fec_set_policy[ETHTOOL_A_FEC_AUTO + 1];
 extern const struct nla_policy ethnl_module_eeprom_get_policy[ETHTOOL_A_MODULE_EEPROM_I2C_ADDRESS + 1];
 extern const struct nla_policy ethnl_preempt_get_policy[ETHTOOL_A_PREEMPT_HEADER + 1];
-extern const struct nla_policy ethnl_preempt_set_policy[ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE + 1];
+extern const struct nla_policy ethnl_preempt_set_policy[ETHTOOL_A_PREEMPT_VERIFIED + 1];
 extern const struct nla_policy ethnl_stats_get_policy[ETHTOOL_A_STATS_GROUPS + 1];
 extern const struct nla_policy ethnl_phc_vclocks_get_policy[ETHTOOL_A_PHC_VCLOCKS_HEADER + 1];
 extern const struct nla_policy ethnl_module_get_policy[ETHTOOL_A_MODULE_HEADER + 1];
diff --git a/net/ethtool/preempt.c b/net/ethtool/preempt.c
index 0000ba8cb90c..7566ffb948b2 100644
--- a/net/ethtool/preempt.c
+++ b/net/ethtool/preempt.c
@@ -63,6 +63,8 @@ static int preempt_reply_size(const struct ethnl_req_info *req_base,
 
 	len += nla_total_size(sizeof(u8)); /* _PREEMPT_ENABLED */
 	len += nla_total_size(sizeof(u32)); /* _PREEMPT_ADD_FRAG_SIZE */
+	len += nla_total_size(sizeof(u8)); /* _PREEMPT_DISABLE_VERIFY */
+	len += nla_total_size(sizeof(u8)); /* _PREEMPT_VERIFIED */
 
 	return len;
 }
@@ -89,6 +91,12 @@ static int preempt_fill_reply(struct sk_buff *skb,
 	if (ret < 0)
 		return ret;
 
+	if (nla_put_u32(skb, ETHTOOL_A_PREEMPT_DISABLE_VERIFY, preempt->disable_verify))
+		return -EMSGSIZE;
+
+	if (nla_put_u32(skb, ETHTOOL_A_PREEMPT_VERIFIED, preempt->verified))
+		return -EMSGSIZE;
+
 	return 0;
 }
 
@@ -110,6 +118,7 @@ ethnl_preempt_set_policy[ETHTOOL_A_PREEMPT_MAX + 1] = {
 	[ETHTOOL_A_PREEMPT_ENABLED]			= NLA_POLICY_RANGE(NLA_U8, 0, 1),
 	[ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE]		= { .type = NLA_U32 },
 	[ETHTOOL_A_PREEMPT_PREEMPTIBLE_MASK]		= { .type = NLA_NESTED },
+	[ETHTOOL_A_PREEMPT_DISABLE_VERIFY]		= NLA_POLICY_RANGE(NLA_U8, 0, 1),
 };
 
 int ethnl_set_preempt(struct sk_buff *skb, struct genl_info *info)
@@ -155,6 +164,8 @@ int ethnl_set_preempt(struct sk_buff *skb, struct genl_info *info)
 			    tb[ETHTOOL_A_PREEMPT_ENABLED], &mod);
 	ethnl_update_u32(&preempt.add_frag_size,
 			 tb[ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE], &mod);
+	ethnl_update_bool32(&preempt.disable_verify,
+			    tb[ETHTOOL_A_PREEMPT_DISABLE_VERIFY], &mod);
 	ret = 0;
 	if (!mod)
 		goto out_ops;
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
