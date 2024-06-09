Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59754901736
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 19:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B3B2607B3;
	Sun,  9 Jun 2024 17:35:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id swSRZbDtRmMc; Sun,  9 Jun 2024 17:35:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F2946063E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717954501;
	bh=2IrJlPy5pQh9RVohVI8epRkSHiDDdnHJDmGUCsYXYHo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RxDuYxIoDyn+MO45bMC6MtyD+12LDKdeSMnGvhH+gkxAiZSH/8AKgy4a5IrzHffIN
	 XooNgL/ahb6aoL7auFtrJRTnSKqZMeoLpl0zAtmk8BNzjnDDltMqGooxOzEnRsrfBJ
	 iKG5wXlzkpWtFRoXoSD6mdaMxsWT6fN3Jrzs4IJkefifVrngc8W/zTDUe6vvM3ekmw
	 J8Rr0+AQs7O2c3iATeAuapRJi69JiopqAfmMAcVaWjFoXF+5S6g7OkNo5xhPsrpy1g
	 bMT7WN5NKBSz2GPafM57EcmnXmTa2cyJjbLJoiYJC3lIn60Bn8zf8YYvYiY5cuqCPn
	 0R+WP23Vg5rsQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F2946063E;
	Sun,  9 Jun 2024 17:35:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 357791BF589
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FDBA81FE4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EneF5CM6TQhO for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F7FE81FDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F7FE81FDB
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F7FE81FDB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 09296600B7;
 Sun,  9 Jun 2024 17:34:35 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id D566D204209; Sun, 09 Jun 2024 17:34:26 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: netdev@vger.kernel.org
Date: Sun,  9 Jun 2024 17:33:51 +0000
Message-ID: <20240609173358.193178-2-ast@fiberby.net>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240609173358.193178-1-ast@fiberby.net>
References: <20240609173358.193178-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1717954494;
 bh=cl0aiIt/dZ9YtxYR73dSSBkiTYMjyEA8XSxLZyngtK0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wwg+YYBtm2XkgMY8PmuH/t/5FPrAPDtG/4EAGWw0yHJp/rJevS53Cz3wAgOV2AkS6
 6twxiIYhYjrC5317y6NvKdibxyILjacUAJMlXy1Xh3H4iyVYokzkpzq84FA9EFBWgS
 Jv4NwEjxTX+fZQhja2sbyI4M8WjmfPe6+T+QcjiIcf5WIQr/tzYhyNZMH/KtIVki71
 EOX1xjQ5+z0b7A1HGkfWK1F+Ws3lrAPgZiaobkokOhKLcD3BBybjnIkAAIsc/6ia1d
 +OjOOKU9n7UdLP5hCQ+nw0F3TfiKCR0FwFzC5HnK/7kUkkWLE27Q1IRdrStBGjqfyt
 Wn7llF2lrlppQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=Wwg+YYBt
Subject: [Intel-wired-lan] [PATCH net-next 1/5] flow_offload: add
 encapsulation control flag helpers
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
Cc: Louis Peens <louis.peens@corigine.com>,
 Davide Caratti <dcaratti@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 linux-net-drivers@amd.com, intel-wired-lan@lists.osuosl.org,
 oss-drivers@corigine.com, i.maximets@ovn.org, Tariq Toukan <tariqt@nvidia.com>,
 linux-kernel@vger.kernel.org, Edward Cree <ecree.xilinx@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>,
 Martin Habets <habetsm.xilinx@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds two new helper functions:
  flow_rule_is_supp_enc_control_flags()
  flow_rule_has_enc_control_flags()

They are intended to be used for validating encapsulation control
flags, and compliment the similar helpers without "enc_" in the name.

The only difference is that they have their own error message,
to make it obvious if an unsupported flag error is related to
FLOW_DISSECTOR_KEY_CONTROL or FLOW_DISSECTOR_KEY_ENC_CONTROL.

flow_rule_has_enc_control_flags() is for drivers supporting
FLOW_DISSECTOR_KEY_ENC_CONTROL, but not supporting any
encapsulation control flags.
(Currently all 4 drivers fits this category)

flow_rule_is_supp_enc_control_flags() is currently only used
for the above helper, but should also be used by drivers once
they implement at least one encapsulation control flag.

There is AFAICT currently no need for an "enc_" variant of
flow_rule_match_has_control_flags(), as all drivers currently
supporting FLOW_DISSECTOR_KEY_ENC_CONTROL, are already calling
flow_rule_match_enc_control() directly.

Only compile tested.

Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
---
 include/net/flow_offload.h | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/include/net/flow_offload.h b/include/net/flow_offload.h
index ec9f80509f60c..292cd8f4b762a 100644
--- a/include/net/flow_offload.h
+++ b/include/net/flow_offload.h
@@ -471,6 +471,28 @@ static inline bool flow_rule_is_supp_control_flags(const u32 supp_flags,
 	return false;
 }
 
+/**
+ * flow_rule_is_supp_enc_control_flags() - check for supported control flags
+ * @supp_enc_flags: encapsulation control flags supported by driver
+ * @enc_ctrl_flags: encapsulation control flags present in rule
+ * @extack: The netlink extended ACK for reporting errors.
+ *
+ * Return: true if only supported control flags are set, false otherwise.
+ */
+static inline bool flow_rule_is_supp_enc_control_flags(const u32 supp_enc_flags,
+						       const u32 enc_ctrl_flags,
+						       struct netlink_ext_ack *extack)
+{
+	if (likely((enc_ctrl_flags & ~supp_enc_flags) == 0))
+		return true;
+
+	NL_SET_ERR_MSG_FMT_MOD(extack,
+			       "Unsupported match on enc_control.flags %#x",
+			       enc_ctrl_flags);
+
+	return false;
+}
+
 /**
  * flow_rule_has_control_flags() - check for presence of any control flags
  * @ctrl_flags: control flags present in rule
@@ -484,6 +506,19 @@ static inline bool flow_rule_has_control_flags(const u32 ctrl_flags,
 	return !flow_rule_is_supp_control_flags(0, ctrl_flags, extack);
 }
 
+/**
+ * flow_rule_has_enc_control_flags() - check for presence of any control flags
+ * @enc_ctrl_flags: encapsulation control flags present in rule
+ * @extack: The netlink extended ACK for reporting errors.
+ *
+ * Return: true if control flags are set, false otherwise.
+ */
+static inline bool flow_rule_has_enc_control_flags(const u32 enc_ctrl_flags,
+						   struct netlink_ext_ack *extack)
+{
+	return !flow_rule_is_supp_enc_control_flags(0, enc_ctrl_flags, extack);
+}
+
 /**
  * flow_rule_match_has_control_flags() - match and check for any control flags
  * @rule: The flow_rule under evaluation.
-- 
2.45.1

