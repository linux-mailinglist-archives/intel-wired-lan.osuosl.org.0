Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A92C12320
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 01:40:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD2EB614A3;
	Tue, 28 Oct 2025 00:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LW2pHV6bCr3T; Tue, 28 Oct 2025 00:40:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6D58614A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761612037;
	bh=hcMXznoOZcroTtrPE/mctuaSLyiBabdma2/FdVPeBz4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CfOALEpnrcaTLMlMvuQvmnq1z4fll9JfrtmpM2s6X0/H1nnM6svwyorMgoV7xLQlp
	 7rEDHMT0+kmzM6TTG/WzsmZwPNVoVIEkIb0P6Fzt2/HoN/R6xVtgI4Xl3XZQtn/t3C
	 MZvOF+FkCUBjtnaPFoephn9d5K6W997mG+XZo3NfHqVBRd2juxwgKbPqjcCABIfW9o
	 eXYZiSvYZ8405Ms3xJDt9MttnBVMCllKoFH+9iqzSqrSEsJnVyOhuqkZWLcCWfqcOg
	 ALAOeg6Cd5On/U9KxjFW4N8Dq2dt0YxbwIoKUF6wrIb2cL503wxLRIl1Rz1W6iV0vB
	 IYKECeUMA4n0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6D58614A1;
	Tue, 28 Oct 2025 00:40:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E6DA243F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 00:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBFF06149F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 00:40:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ZqVNaO5DobB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 00:40:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A39AE6149D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A39AE6149D
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A39AE6149D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 00:40:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D97E6489C7;
 Tue, 28 Oct 2025 00:40:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 624DEC113D0;
 Tue, 28 Oct 2025 00:40:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Sasha Levin <sashal@kernel.org>, anthony.l.nguyen@intel.com,
 sln@onemain.com, radoslawx.tyl@intel.com, intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Oct 2025 20:39:05 -0400
Message-ID: <20251028003940.884625-21-sashal@kernel.org>
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
 d=kernel.org; s=k20201202; t=1761612032;
 bh=UJKFm6DeAyrm/IsSUNZOhEv2EhKtfpq09FKwf6UXzPE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Gu5+WR92SSwnkBLtn0m0aFk6XVFSiw3ffROYVYbsuDSUZmjM3UxoRrMtbOJVzdaZy
 FkdQq5pZuJb8Q66moCs6LNzN6MU0EQimyWrTWQMYeBeK28TPSsaVX9kvL4t5vq66Mw
 9b9yexPeCj4dbt5YZbWhMGrcd1pcQjq0GrXvsqyR38+7zAYbPg4paY9SOte80CuwWF
 sQYIgyL4d0LbGNBkWUSFsBO3ZcSZ53XTTScbqKmVL6ldRFtf1311O7FDjMxHrLWBbT
 jbmGEzBqkBT3HBvXIDryc0W9k6/TfCCBbLYUVr3v5xtWAVCrvLI0/jRZVfo8I9XB2l
 BNDT3WLYMei4g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Gu5+WR92
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.17] ixgbe: handle
 IXGBE_VF_FEATURES_NEGOTIATE mbox cmd
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

[ Upstream commit 823be089f9c8ab136ba382b516aedd3f7ac854bd ]

Send to VF information about features supported by the PF driver.

Increase API version to 1.7.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Link: https://patch.msgid.link/20251009-jk-iwl-net-2025-10-01-v3-5-ef32a425b92a@intel.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

Based on my analysis using semantic code analysis tools and git history
examination, here is my determination:

**Answer: YES**

**Extensive Explanation:**

## 1. Analysis Performed Using Semantic Tools

I used the following semantic code analysis tools to examine this
commit:

- **mcp__semcode__find_function**: Located `ixgbe_rcv_msg_from_vf()`,
  `ixgbe_negotiate_vf_api()`, and `ixgbe_msg_task()` to understand the
  mailbox message handling flow
- **mcp__semcode__find_callers**: Traced the call chain:
  `ixgbe_msix_other()` (IRQ handler) → `ixgbe_msg_task()` →
  `ixgbe_rcv_msg_from_vf()`, confirming this code is triggered by VF
  interrupts
- **Git tools**: Examined commit history, found companion VF-side fix
  (a7075f501bd33), and traced the problematic commits back to v4.20

## 2. Code Changes Analysis

The commit adds:
- **New API version**: `ixgbe_mbox_api_17` (line 56 in ixgbe_mbx.h)
- **New mailbox command**: `IXGBE_VF_FEATURES_NEGOTIATE` (0x12) for VF-
  to-PF feature negotiation
- **Feature flags**: `IXGBEVF_PF_SUP_IPSEC` and `IXGBEVF_PF_SUP_ESX_MBX`
  to indicate PF capabilities
- **New handler function**: `ixgbe_negotiate_vf_features()` at
  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c:1268
- **Case statement addition**: Adds handling for the new mailbox command
  in `ixgbe_rcv_msg_from_vf()`
- **API version updates**: Adds `ixgbe_mbox_api_17` cases to 8 existing
  switch statements for backward compatibility

## 3. Impact Scope (from semantic analysis)

**Call graph analysis** shows:
- 1 direct caller of `ixgbe_rcv_msg_from_vf()`: the `ixgbe_msg_task()`
  function
- User-space can trigger this code path through SR-IOV VF operations
- The code runs in interrupt context (from MSI-X handler)
- Affects all SR-IOV deployments using ixgbe PF with ixgbevf VF drivers

## 4. This Is a Bug Fix, Not a New Feature

The companion VF-side commit (a7075f501bd33) clearly indicates this is a
**critical bug fix**:

```
Fixes: 0062e7cc955e ("ixgbevf: add VF IPsec offload code")
Fixes: 339f28964147 ("ixgbevf: Add support for new mailbox communication
between PF and VF")
Cc: stable@vger.kernel.org
```

The VF commit message explains:
- "API 1.6 cannot be supported for Linux ixgbe driver as it causes
  **crashes**"
- Backward compatibility was broken since API 1.4 (introduced in v4.20,
  August 2018)
- VF drivers attempting to use IPsec or ESX mailbox features crash when
  PF doesn't support them
- No negotiation mechanism existed, causing interoperability failures
  between Linux/ESX/FreeBSD drivers

## 5. Why This Must Be Backported

**Critical reasons:**
1. **Fixes crashes**: VFs crash when attempting to use features not
   supported by the PF
   (drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c:1268-1282)
2. **Paired fix**: The VF-side fix (a7075f501bd33) has explicit "Cc:
   stable@vger.kernel.org" tag and is already being backported (as
   evidenced by commit a376e29b1b196 showing "commit a7075f501bd33
   upstream")
3. **Incomplete without both sides**: The VF asks "what features do you
   support?" but the PF needs this commit to answer. Without the PF
   handler, VF gets -EOPNOTSUPP, defeating the fix
4. **Affects all kernels ≥ v4.20**: The problematic commits exist in all
   kernels from v4.20 onwards (confirmed via `git tag --contains
   0062e7cc955e`)
5. **Small, contained change**: Only adds 47 lines across 2 files,
   focused on one specific mailbox command

## 6. Compliance with Stable Tree Rules

**Passes all stable tree criteria:**
- ✅ Fixes important bug (crashes in SR-IOV scenarios)
- ✅ Small and obviously correct (adds one mailbox handler)
- ✅ No architectural changes (extends existing switch/case pattern)
- ✅ Minimal regression risk (only affects new API 1.7, old APIs
  unchanged)
- ✅ Companion to explicit stable-tagged commit (a7075f501bd33)
- ✅ Already tested (Tested-by: Rafal Romanowski tag)

## 7. Dependency Check

The commit depends on:
- `ixgbe_send_vf_link_status()` function (added in f7f97cbc03a47, which
  immediately precedes this commit in the series)
- Standard ixgbe mailbox infrastructure (present in all affected
  kernels)

**Recommendation**: Backport as part of the series with its VF
counterpart and the link status fix.

 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  | 10 +++++
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 37 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index f7256a339c99b..0334ed4b8fa39 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -52,6 +52,7 @@ enum ixgbe_pfvf_api_rev {
 	ixgbe_mbox_api_14,	/* API version 1.4, linux/freebsd VF driver */
 	ixgbe_mbox_api_15,	/* API version 1.5, linux/freebsd VF driver */
 	ixgbe_mbox_api_16,	/* API version 1.6, linux/freebsd VF driver */
+	ixgbe_mbox_api_17,	/* API version 1.7, linux/freebsd VF driver */
 	/* This value should always be last */
 	ixgbe_mbox_api_unknown,	/* indicates that API version is not known */
 };
@@ -91,6 +92,9 @@ enum ixgbe_pfvf_api_rev {
 /* mailbox API, version 1.6 VF requests */
 #define IXGBE_VF_GET_PF_LINK_STATE	0x11 /* request PF to send link info */
 
+/* mailbox API, version 1.7 VF requests */
+#define IXGBE_VF_FEATURES_NEGOTIATE	0x12 /* get features supported by PF */
+
 /* length of permanent address message returned from PF */
 #define IXGBE_VF_PERMADDR_MSG_LEN 4
 /* word in permanent address message with the current multicast type */
@@ -101,6 +105,12 @@ enum ixgbe_pfvf_api_rev {
 #define IXGBE_VF_MBX_INIT_TIMEOUT 2000 /* number of retries on mailbox */
 #define IXGBE_VF_MBX_INIT_DELAY   500  /* microseconds between retries */
 
+/* features negotiated between PF/VF */
+#define IXGBEVF_PF_SUP_IPSEC		BIT(0)
+#define IXGBEVF_PF_SUP_ESX_MBX		BIT(1)
+
+#define IXGBE_SUPPORTED_FEATURES	IXGBEVF_PF_SUP_IPSEC
+
 struct ixgbe_hw;
 
 int ixgbe_read_mbx(struct ixgbe_hw *, u32 *, u16, u16);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index b09271d61a4ef..ee133d6749b37 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -511,6 +511,7 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 		case ixgbe_mbox_api_13:
 		case ixgbe_mbox_api_14:
 		case ixgbe_mbox_api_16:
+		case ixgbe_mbox_api_17:
 			/* Version 1.1 supports jumbo frames on VFs if PF has
 			 * jumbo frames enabled which means legacy VFs are
 			 * disabled
@@ -1048,6 +1049,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		adapter->vfinfo[vf].vf_api = api;
 		return 0;
 	default:
@@ -1075,6 +1077,7 @@ static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		break;
 	default:
 		return -1;
@@ -1115,6 +1118,7 @@ static int ixgbe_get_vf_reta(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_17:
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
@@ -1149,6 +1153,7 @@ static int ixgbe_get_vf_rss_key(struct ixgbe_adapter *adapter,
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_17:
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
@@ -1180,6 +1185,7 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1251,6 +1257,7 @@ static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1278,6 +1285,7 @@ static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
 
 	switch (adapter->vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		if (hw->mac.type != ixgbe_mac_e610)
 			return -EOPNOTSUPP;
 		break;
@@ -1293,6 +1301,32 @@ static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
+/**
+ * ixgbe_negotiate_vf_features -  negotiate supported features with VF driver
+ * @adapter: pointer to adapter struct
+ * @msgbuf: pointer to message buffers
+ * @vf: VF identifier
+ *
+ * Return: 0 on success or -EOPNOTSUPP when operation is not supported.
+ */
+static int ixgbe_negotiate_vf_features(struct ixgbe_adapter *adapter,
+				       u32 *msgbuf, u32 vf)
+{
+	u32 features = msgbuf[1];
+
+	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_17:
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	features &= IXGBE_SUPPORTED_FEATURES;
+	msgbuf[1] = features;
+
+	return 0;
+}
+
 static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 {
 	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
@@ -1370,6 +1404,9 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	case IXGBE_VF_GET_PF_LINK_STATE:
 		retval = ixgbe_send_vf_link_status(adapter, msgbuf, vf);
 		break;
+	case IXGBE_VF_FEATURES_NEGOTIATE:
+		retval = ixgbe_negotiate_vf_features(adapter, msgbuf, vf);
+		break;
 	default:
 		e_err(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
 		retval = -EIO;
-- 
2.51.0

