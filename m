Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 342A9C12329
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 01:40:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E453684618;
	Tue, 28 Oct 2025 00:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pj1QIfajLDiV; Tue, 28 Oct 2025 00:40:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C17D98457D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761612038;
	bh=yeoRDkH56hNf9Gjz5r1EsI7+u8xA1i9+I6Sqbz+DgYk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nUWnWRIqPCtJcsw4sJqq5v0cZCTQBt6EC6EHXfsKdH23B3amEY7oXMWxakWyvvh18
	 8yoMmWBsyvORgmVpWFxrjJty5Y2wTg6HrmObCXf2MxGvPQtADLYt2mPji/pqlDtuJN
	 f1V1LYT/bj9LmL33O5j9p8jYuaa5V01O5z9cug10hxgv/dveiNKeci/bpLwL0uxrd6
	 pneacNtywK8njjNGAkTztVe43anEeNVKP1GiNIqcXAry3C+bxrcrxsbrZ8Rx7Y6uAw
	 L2SuzQgS41eVeczUnQ81lG2wMCTRWoF6yD1/dmipNC5S7WPRI5xkuh0EBivz/9C/oN
	 JRWa8FidDEpxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C17D98457D;
	Tue, 28 Oct 2025 00:40:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BD01943F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 00:40:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AEC1341750
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 00:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mc289pSFWHBX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 00:40:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 88A474174D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88A474174D
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88A474174D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 00:40:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E6EEA61D51;
 Tue, 28 Oct 2025 00:40:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDEFC4CEF1;
 Tue, 28 Oct 2025 00:40:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Sasha Levin <sashal@kernel.org>, anthony.l.nguyen@intel.com,
 horms@kernel.org, piotr.kwapulinski@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Oct 2025 20:39:06 -0400
Message-ID: <20251028003940.884625-22-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251028003940.884625-1-sashal@kernel.org>
References: <20251028003940.884625-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.17.5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761612034;
 bh=Fx+WkNr9pwsIoks6u7BO9r4HvNX1LTq23e4CbFGVwig=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oDQQyjjdYohdYLf5RQnao1pfBNCPfsjEPzeqKZCiRYzbaZpCizLpGODmw8uvkbNYW
 9CjQG77bx8pf2i2/L4cJOU3WnEgzZ44UtZWTIG9mZRo2reNC0Tk7XBlYodS65QUnif
 gE0Zq1rMgEhsGi32V81WOAGoRR9aIn/jo+LtB2eNvnF6Mkl2yj3ZHta0sgWU89P1Nz
 rVLF5D8cVtur8/Bocd1KpKgJG/ZQ9ir1hUnugGvo4+ptd5MdlYJ0QImMG3SkVTcRWc
 t4QJdwIGGDjoF9/ydebb79O3nnfVNC9Qpd3yzjc0R+I3MvRY7VuGR9p1Bh5D0HREAS
 2R+cKLuh9W4ZA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oDQQyjjd
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.17] ixgbe: handle
 IXGBE_VF_GET_PF_LINK_STATE mailbox operation
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

From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

[ Upstream commit f7f97cbc03a470ce405d48dedb7f135713caa0fa ]

Update supported API version and provide handler for
IXGBE_VF_GET_PF_LINK_STATE cmd.
Simply put stored values of link speed and link_up from adapter context.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Link: https://lore.kernel.org/stable/20250828095227.1857066-3-jedrzej.jagielski%40intel.com
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Link: https://patch.msgid.link/20251009-jk-iwl-net-2025-10-01-v3-3-ef32a425b92a@intel.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

Based on my comprehensive analysis using semantic code analysis tools
and git history investigation, here is my determination:

## Answer: YES

This commit **should be backported** to stable kernel trees
(specifically those with E610 hardware support).

## Extensive Analysis:

### 1. Semantic Code Analysis - Call Graph and Impact Scope

Using `mcp__semcode__find_function` and `mcp__semcode__find_callers`, I
traced the call chain:

- **Call path**: `ixgbe_msix_other` (IRQ handler) → `ixgbe_msg_task` →
  `ixgbe_rcv_msg_from_vf` → `ixgbe_send_vf_link_status` (new)
- **Exposure**: This code is triggered by VF mailbox messages, making it
  a user-facing code path in SR-IOV configurations
- **Handler location**:
  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c:1257-1348

The new function `ixgbe_send_vf_link_status()` doesn't exist in the
current HEAD because this is a recent addition that provides PF-side
support for VF link state queries.

### 2. Git History Analysis - Bug Fix Classification

Using git log and commit inspection, I discovered this is **definitively
a bug fix**, not a new feature:

**Critical finding**: The companion VF-side commit (53f0eb62b4d23)
shows:
```
ixgbevf: fix getting link speed data for E610 devices

E610 adapters no longer use the VFLINKS register to read PF's link
speed and linkup state. As a result VF driver cannot get actual link
state and it incorrectly reports 10G which is the default option.
It leads to a situation where even 1G adapters print 10G as actual
link speed.

Fixes: 4c44b450c69b ("ixgbevf: Add support for Intel(R) E610 device")
Cc: stable@vger.kernel.org
```

**Key evidence**:
- VF side commit has `Fixes:` tag pointing to E610 initial support
- VF side commit has `Cc: stable@vger.kernel.org`
- Bug impact: VFs incorrectly report 10Gbps on all adapters (even 1G)
- This PF-side commit is required for the VF fix to actually work

### 3. Code Changes Analysis

**What the commit adds**:
1. New mailbox API versions (1.5, 1.6) - lines
   drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h:52-53
2. New command `IXGBE_VF_GET_PF_LINK_STATE` (0x11) - line ixgbe_mbx.h:91
3. Handler function `ixgbe_send_vf_link_status()` - lines
   ixgbe_sriov.c:1264-1294
4. Updates to switch statements to handle API v1.6 (backward compatible
   additions)

**Handler implementation** (ixgbe_sriov.c:1264-1294):
```c
static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
                                     u32 *msgbuf, u32 vf)
{
    struct ixgbe_hw *hw = &adapter->hw;

    switch (adapter->vfinfo[vf].vf_api) {
    case ixgbe_mbox_api_16:
        if (hw->mac.type != ixgbe_mac_e610)
            return -EOPNOTSUPP;
        break;
    default:
        return -EOPNOTSUPP;
    }
    msgbuf[1] = adapter->link_speed;
    msgbuf[2] = adapter->link_up;
    return 0;
}
```

This is simple, safe code that just reads stored values.

### 4. Dependency Analysis

Using `Grep` to check for `ixgbe_mac_e610`:
- Found in 16 files throughout the ixgbe driver
- E610 support is already present in kernel 6.17

**Dependencies required for backport**:
- E610 hardware type enum (`ixgbe_mac_e610`)
- Basic SR-IOV mailbox infrastructure (already present)
- `adapter->link_speed` and `adapter->link_up` fields (standard)

### 5. Risk Assessment

**Risk factors**: VERY LOW
- ✅ Backward compatible: only activates when VF negotiates API v1.6
- ✅ Hardware-specific: only affects E610 hardware
- ✅ No changes to existing code paths
- ✅ Adds new handler to switch statement (safe addition)
- ✅ Simple implementation (3 lines of actual logic)
- ✅ Well-tested (Tested-by: Rafal Romanowski)

**Regression potential**: Minimal - returns `-EOPNOTSUPP` for non-E610
hardware or older API versions

### 6. Backport Indicators

✅ **Companion to stable-marked commit**: VF side has `Cc:
stable@vger.kernel.org`
✅ **Fixes user-visible bug**: Incorrect link speed reporting
✅ **Sent to stable mailing list**: Link:
https://lore.kernel.org/stable/...
✅ **Small, contained change**: 47 insertions, 2 files
✅ **No architectural changes**: Pure bug fix
✅ **Clear Fixes: relationship**: Indirectly fixes 4c44b450c69b via VF
commit

### 7. Stable Tree Compliance

- **Type**: Bug fix (fixes incorrect link speed reporting)
- **Size**: Small (47 lines)
- **Risk**: Low (backward compatible, hardware-specific)
- **Benefit**: Fixes broken functionality on E610 SR-IOV setups
- **Dependencies**: Requires E610 support in target kernel

## Conclusion

This commit is the **PF (Physical Function) side of a critical bug fix**
for E610 VF link speed reporting. Without this PF handler, the VF fix
(already marked for stable) cannot function. The change is small, safe,
backward compatible, and fixes a real user-facing issue where VFs
incorrectly report link speeds.

**Recommendation**: Backport to stable kernels that include E610
hardware support (starting from whenever 4c44b450c69b was introduced).

 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |  5 +++
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 42 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index 4af149b63a39f..f7256a339c99b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -50,6 +50,8 @@ enum ixgbe_pfvf_api_rev {
 	ixgbe_mbox_api_12,	/* API version 1.2, linux/freebsd VF driver */
 	ixgbe_mbox_api_13,	/* API version 1.3, linux/freebsd VF driver */
 	ixgbe_mbox_api_14,	/* API version 1.4, linux/freebsd VF driver */
+	ixgbe_mbox_api_15,	/* API version 1.5, linux/freebsd VF driver */
+	ixgbe_mbox_api_16,	/* API version 1.6, linux/freebsd VF driver */
 	/* This value should always be last */
 	ixgbe_mbox_api_unknown,	/* indicates that API version is not known */
 };
@@ -86,6 +88,9 @@ enum ixgbe_pfvf_api_rev {
 
 #define IXGBE_VF_GET_LINK_STATE 0x10 /* get vf link state */
 
+/* mailbox API, version 1.6 VF requests */
+#define IXGBE_VF_GET_PF_LINK_STATE	0x11 /* request PF to send link info */
+
 /* length of permanent address message returned from PF */
 #define IXGBE_VF_PERMADDR_MSG_LEN 4
 /* word in permanent address message with the current multicast type */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 32ac1e020d915..b09271d61a4ef 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -510,6 +510,7 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 		case ixgbe_mbox_api_12:
 		case ixgbe_mbox_api_13:
 		case ixgbe_mbox_api_14:
+		case ixgbe_mbox_api_16:
 			/* Version 1.1 supports jumbo frames on VFs if PF has
 			 * jumbo frames enabled which means legacy VFs are
 			 * disabled
@@ -1046,6 +1047,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		adapter->vfinfo[vf].vf_api = api;
 		return 0;
 	default:
@@ -1072,6 +1074,7 @@ static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		break;
 	default:
 		return -1;
@@ -1112,6 +1115,7 @@ static int ixgbe_get_vf_reta(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_12:
@@ -1145,6 +1149,7 @@ static int ixgbe_get_vf_rss_key(struct ixgbe_adapter *adapter,
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_12:
@@ -1174,6 +1179,7 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 		fallthrough;
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1244,6 +1250,7 @@ static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1254,6 +1261,38 @@ static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
+/**
+ * ixgbe_send_vf_link_status - send link status data to VF
+ * @adapter: pointer to adapter struct
+ * @msgbuf: pointer to message buffers
+ * @vf: VF identifier
+ *
+ * Reply for IXGBE_VF_GET_PF_LINK_STATE mbox command sending link status data.
+ *
+ * Return: 0 on success or -EOPNOTSUPP when operation is not supported.
+ */
+static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
+				     u32 *msgbuf, u32 vf)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_16:
+		if (hw->mac.type != ixgbe_mac_e610)
+			return -EOPNOTSUPP;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+	/* Simply provide stored values as watchdog & link status events take
+	 * care of its freshness.
+	 */
+	msgbuf[1] = adapter->link_speed;
+	msgbuf[2] = adapter->link_up;
+
+	return 0;
+}
+
 static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 {
 	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
@@ -1328,6 +1367,9 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	case IXGBE_VF_IPSEC_DEL:
 		retval = ixgbe_ipsec_vf_del_sa(adapter, msgbuf, vf);
 		break;
+	case IXGBE_VF_GET_PF_LINK_STATE:
+		retval = ixgbe_send_vf_link_status(adapter, msgbuf, vf);
+		break;
 	default:
 		e_err(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
 		retval = -EIO;
-- 
2.51.0

