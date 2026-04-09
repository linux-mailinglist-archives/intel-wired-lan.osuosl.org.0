Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLd/JcBx12maOAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 11:30:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E403C881A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 11:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCC7440B08;
	Thu,  9 Apr 2026 09:30:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8DWO6E0e1nEI; Thu,  9 Apr 2026 09:30:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B319640B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775727036;
	bh=FGpOESm4pt7NJBYd807lDoTaH55R9/u8KBIuaHklUtI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8ciQIHErSDNC4pjDtDi0/QYyjMvBUX9Upe9RZ23GlZebTPaGLFkBcr1KY1Tj1iGIi
	 qY1HjXGfOWwYQZ5pGDevmHeEw/GxEfZ1pi37RH/PAzq+qS90PPNd7ywkWjidCD0b3/
	 0A42VfD2+qoWK/s1mJzffyBOdj31o3lFLj8UnOwatLUnKAPgQMImU5FM9LldZBjIka
	 ldEdBKfDuvzyUxwhYnbyeL9xq0fnd1fQ9ox1weHJePkrI+yQOD2RonY+r5E4a71Lzk
	 3RJPSePvPJD9JCqMYGixy7+TTTGSkeUjTRPo+9/EOAGXGiGprTVi7IPi/biYkgmdss
	 AG1naWlZ4GmcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B319640B30;
	Thu,  9 Apr 2026 09:30:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 842AC237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 09:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 617D560D92
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 09:30:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZxnQwTVWxBow for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 09:30:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5E1D36085F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E1D36085F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E1D36085F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 09:30:33 +0000 (UTC)
X-CSE-ConnectionGUID: /XjrlIl7S02lbsLdOz251w==
X-CSE-MsgGUID: q5cRpNs9RdeNjjhxFsGsTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99353990"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="99353990"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 02:30:23 -0700
X-CSE-ConnectionGUID: 3MAVYzx+SFOalnYUalmgfw==
X-CSE-MsgGUID: amAGPJs1SSmmeKyoKhXqVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="225557921"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 09 Apr 2026 02:30:21 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Leszek Pepiak <leszek.pepiak@intel.com>
Date: Thu,  9 Apr 2026 11:30:20 +0200
Message-ID: <20260409093020.3808687-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775727034; x=1807263034;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cZC1cpq3OkYGpFiaUIPpsCrPyX8cmaKcyyjykqFlc08=;
 b=fikXucms1QBfcDhndifIkIHvIjwcUJ1HV4THwksD41Lx/U80Xc17pkJC
 UNFt06HU51zf82hePoSsJp4ZF/3HAeYSUx6Ghy+6noffoTtkYtUL0Vh/K
 Lzz7wrKFls55Fe5X1MWM9DirjxGNjeWCUkFJK3J+TQ+nABokm5sXk4AMn
 uWWP/vTyZW7rnYvRoNMDXcZ4ROXP/NR2YmVbYhAPDegy69wkZKtu5YU5m
 el9Fjg5UVizJvc4cSMCb2CLoe4+OB5zKcOYkjYJzitKuGf4p71g38oSL6
 LySOkCqrgFuIx42ROmmzeWPnL0SZbRxKslf/zp0WW5JM/tTyrfSE/pwxT
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fikXucms
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: fix kernel-doc comment
 style in iavf_ethtool.c
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 67E403C881A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

iavf_ethtool.c contains 31 kernel-doc comment blocks using the legacy
`**/` terminator instead of the correct single `*/`. Two function
headers also use a colon separator (`iavf_get_channels:`,
`iavf_set_channels:`) instead of the ` - ` dash required by kernel-doc.

Additionally several comments embed their return-value descriptions in
the body paragraph, producing `scripts/kernel-doc -Wreturn` warnings.
Void functions that incorrectly say "Returns ..." are also rephrased.

Fix all issues across the full file:
 - Replace every `**/` terminator with `*/`.
 - Change `function_name:` doc headers to `function_name -`.
 - Move inline "Returns ..." sentences into dedicated `Return:` sections
   for non-void functions (iavf_get_msglevel, iavf_get_rxnfc,
   iavf_set_channels, iavf_get_rxfh_key_size, iavf_get_rxfh_indir_size,
   iavf_get_rxfh, iavf_set_rxfh).
 - Rephrase body descriptions in void functions that incorrectly said
   "Returns ..." (iavf_get_drvinfo, iavf_get_ringparam, iavf_get_coalesce).
 - Remove boilerplate body text for iavf_get_rxfh_key_size and
   iavf_get_rxfh_indir_size; the `Return:` line now conveys the same
   information without the vague "Returns the table size." sentence.

Suggested-by: Anthony L. Nguyen <anthony.l.nguyen@intel.com>
Suggested-by: Leszek Pepiak <leszek.pepiak@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2 extending the scope of the changes to whole iavf_ethtool.c file
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 103 ++++++++++++------------
 1 file changed, 53 insertions(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 1cd1f3f..a615d59 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -32,7 +32,7 @@
  * statistics array. Thus, every statistic string in an array should have the
  * same type and number of format specifiers, to be formatted by variadic
  * arguments to the iavf_add_stat_string() helper function.
- **/
+ */
 struct iavf_stats {
 	char stat_string[ETH_GSTRING_LEN];
 	int sizeof_stat;
@@ -116,7 +116,7 @@ iavf_add_one_ethtool_stat(u64 *data, void *pointer,
  * the next empty location for successive calls to __iavf_add_ethtool_stats.
  * If pointer is null, set the data values to zero and update the pointer to
  * skip these stats.
- **/
+ */
 static void
 __iavf_add_ethtool_stats(u64 **data, void *pointer,
 			 const struct iavf_stats stats[],
@@ -140,7 +140,7 @@ __iavf_add_ethtool_stats(u64 **data, void *pointer,
  *
  * The parameter @stats is evaluated twice, so parameters with side effects
  * should be avoided.
- **/
+ */
 #define iavf_add_ethtool_stats(data, pointer, stats) \
 	__iavf_add_ethtool_stats(data, pointer, stats, ARRAY_SIZE(stats))
 
@@ -157,7 +157,7 @@ __iavf_add_ethtool_stats(u64 **data, void *pointer,
  * buffer and update the data pointer when finished.
  *
  * This function expects to be called while under rcu_read_lock().
- **/
+ */
 static void
 iavf_add_queue_stats(u64 **data, struct iavf_ring *ring)
 {
@@ -189,7 +189,7 @@ iavf_add_queue_stats(u64 **data, struct iavf_ring *ring)
  *
  * Format and copy the strings described by stats into the buffer pointed at
  * by p.
- **/
+ */
 static void __iavf_add_stat_strings(u8 **p, const struct iavf_stats stats[],
 				    const unsigned int size, ...)
 {
@@ -216,7 +216,7 @@ static void __iavf_add_stat_strings(u8 **p, const struct iavf_stats stats[],
  * The parameter @stats is evaluated twice, so parameters with side effects
  * should be avoided. Additionally, stats must be an array such that
  * ARRAY_SIZE can be called on it.
- **/
+ */
 #define iavf_add_stat_strings(p, stats, ...) \
 	__iavf_add_stat_strings(p, stats, ARRAY_SIZE(stats), ## __VA_ARGS__)
 
@@ -249,7 +249,7 @@ static const struct iavf_stats iavf_gstrings_stats[] = {
  *
  * Reports speed/duplex settings. Because this is a VF, we don't know what
  * kind of link we really have, so we fake it.
- **/
+ */
 static int iavf_get_link_ksettings(struct net_device *netdev,
 				   struct ethtool_link_ksettings *cmd)
 {
@@ -308,7 +308,7 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
  * @sset: id of string set
  *
  * Reports size of various string tables.
- **/
+ */
 static int iavf_get_sset_count(struct net_device *netdev, int sset)
 {
 	/* Report the maximum number queues, even if not every queue is
@@ -331,7 +331,7 @@ static int iavf_get_sset_count(struct net_device *netdev, int sset)
  * @data: pointer to data buffer
  *
  * All statistics are added to the data buffer as an array of u64.
- **/
+ */
 static void iavf_get_ethtool_stats(struct net_device *netdev,
 				   struct ethtool_stats *stats, u64 *data)
 {
@@ -367,7 +367,7 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
  * @data: buffer for string data
  *
  * Builds the statistics string table
- **/
+ */
 static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
 {
 	unsigned int i;
@@ -392,7 +392,7 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
  * @data: buffer for string data
  *
  * Builds string tables for various string sets
- **/
+ */
 static void iavf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
 {
 	switch (sset) {
@@ -408,8 +408,8 @@ static void iavf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
  * iavf_get_msglevel - Get debug message level
  * @netdev: network interface device structure
  *
- * Returns current debug message level.
- **/
+ * Return: current debug message level.
+ */
 static u32 iavf_get_msglevel(struct net_device *netdev)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
@@ -424,7 +424,7 @@ static u32 iavf_get_msglevel(struct net_device *netdev)
  *
  * Set current debug message level. Higher values cause the driver to
  * be noisier.
- **/
+ */
 static void iavf_set_msglevel(struct net_device *netdev, u32 data)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
@@ -439,8 +439,8 @@ static void iavf_set_msglevel(struct net_device *netdev, u32 data)
  * @netdev: network interface device structure
  * @drvinfo: ethool driver info structure
  *
- * Returns information about the driver and device for display to the user.
- **/
+ * Fills @drvinfo with information about the driver and device.
+ */
 static void iavf_get_drvinfo(struct net_device *netdev,
 			     struct ethtool_drvinfo *drvinfo)
 {
@@ -458,9 +458,9 @@ static void iavf_get_drvinfo(struct net_device *netdev,
  * @kernel_ring: ethtool extenal ringparam structure
  * @extack: netlink extended ACK report struct
  *
- * Returns current ring parameters. TX and RX rings are reported separately,
- * but the number of rings is not reported.
- **/
+ * Fills @ring with current ring parameters. TX and RX rings are reported
+ * separately, but the number of rings is not reported.
+ */
 static void iavf_get_ringparam(struct net_device *netdev,
 			       struct ethtool_ringparam *ring,
 			       struct kernel_ethtool_ringparam *kernel_ring,
@@ -483,7 +483,7 @@ static void iavf_get_ringparam(struct net_device *netdev,
  *
  * Sets ring parameters. TX and RX rings are controlled separately, but the
  * number of rings is not specified, so all rings get the same settings.
- **/
+ */
 static int iavf_set_ringparam(struct net_device *netdev,
 			      struct ethtool_ringparam *ring,
 			      struct kernel_ethtool_ringparam *kernel_ring,
@@ -551,7 +551,7 @@ static int iavf_set_ringparam(struct net_device *netdev,
  * Gets the per-queue settings for coalescence. Specifically Rx and Tx usecs
  * are per queue. If queue is <0 then we default to queue 0 as the
  * representative value.
- **/
+ */
 static int __iavf_get_coalesce(struct net_device *netdev,
 			       struct ethtool_coalesce *ec, int queue)
 {
@@ -588,11 +588,11 @@ static int __iavf_get_coalesce(struct net_device *netdev,
  * @kernel_coal: ethtool CQE mode setting structure
  * @extack: extack for reporting error messages
  *
- * Returns current coalescing settings. This is referred to elsewhere in the
- * driver as Interrupt Throttle Rate, as this is how the hardware describes
- * this functionality. Note that if per-queue settings have been modified this
- * only represents the settings of queue 0.
- **/
+ * Fills @ec with current coalescing settings. This is referred to elsewhere
+ * in the driver as Interrupt Throttle Rate, as this is how the hardware
+ * describes this functionality. Note that if per-queue settings have been
+ * modified this only represents the settings of queue 0.
+ */
 static int iavf_get_coalesce(struct net_device *netdev,
 			     struct ethtool_coalesce *ec,
 			     struct kernel_ethtool_coalesce *kernel_coal,
@@ -608,7 +608,7 @@ static int iavf_get_coalesce(struct net_device *netdev,
  * @queue: the queue to read
  *
  * Read specific queue's coalesce settings.
- **/
+ */
 static int iavf_get_per_queue_coalesce(struct net_device *netdev, u32 queue,
 				       struct ethtool_coalesce *ec)
 {
@@ -622,7 +622,7 @@ static int iavf_get_per_queue_coalesce(struct net_device *netdev, u32 queue,
  * @queue: the queue to modify
  *
  * Change the ITR settings for a specific queue.
- **/
+ */
 static int iavf_set_itr_per_queue(struct iavf_adapter *adapter,
 				  struct ethtool_coalesce *ec, int queue)
 {
@@ -680,7 +680,7 @@ static int iavf_set_itr_per_queue(struct iavf_adapter *adapter,
  * @queue: the queue to change
  *
  * Sets the coalesce settings for a particular queue.
- **/
+ */
 static int __iavf_set_coalesce(struct net_device *netdev,
 			       struct ethtool_coalesce *ec, int queue)
 {
@@ -722,7 +722,7 @@ static int __iavf_set_coalesce(struct net_device *netdev,
  * @extack: extack for reporting error messages
  *
  * Change current coalescing settings for every queue.
- **/
+ */
 static int iavf_set_coalesce(struct net_device *netdev,
 			     struct ethtool_coalesce *ec,
 			     struct kernel_ethtool_coalesce *kernel_coal,
@@ -1639,7 +1639,7 @@ static int iavf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
  * @netdev: network interface device structure
  *
  * Return: number of RX rings.
- **/
+ */
 static u32 iavf_get_rx_ring_count(struct net_device *netdev)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
@@ -1653,8 +1653,8 @@ static u32 iavf_get_rx_ring_count(struct net_device *netdev)
  * @cmd: ethtool rxnfc command
  * @rule_locs: pointer to store rule locations
  *
- * Returns Success if the command is supported.
- **/
+ * Return: 0 on success, -EOPNOTSUPP if the command is not supported.
+ */
 static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 			  u32 *rule_locs)
 {
@@ -1684,13 +1684,13 @@ static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	return ret;
 }
 /**
- * iavf_get_channels: get the number of channels supported by the device
+ * iavf_get_channels - get the number of channels supported by the device
  * @netdev: network interface device structure
  * @ch: channel information structure
  *
  * For the purposes of our device, we only use combined channels, i.e. a tx/rx
  * queue pair. Report one extra channel to match our "other" MSI-X vector.
- **/
+ */
 static void iavf_get_channels(struct net_device *netdev,
 			      struct ethtool_channels *ch)
 {
@@ -1706,14 +1706,15 @@ static void iavf_get_channels(struct net_device *netdev,
 }
 
 /**
- * iavf_set_channels: set the new channel count
+ * iavf_set_channels - set the new channel count
  * @netdev: network interface device structure
  * @ch: channel information structure
  *
- * Negotiate a new number of channels with the PF then do a reset.  During
- * reset we'll realloc queues and fix the RSS table.  Returns 0 on success,
- * negative on failure.
- **/
+ * Negotiate a new number of channels with the PF then do a reset. During
+ * reset we'll realloc queues and fix the RSS table.
+ *
+ * Return: 0 on success, negative on failure.
+ */
 static int iavf_set_channels(struct net_device *netdev,
 			     struct ethtool_channels *ch)
 {
@@ -1750,8 +1751,8 @@ static int iavf_set_channels(struct net_device *netdev,
  * iavf_get_rxfh_key_size - get the RSS hash key size
  * @netdev: network interface device structure
  *
- * Returns the table size.
- **/
+ * Return: the RSS hash key size.
+ */
 static u32 iavf_get_rxfh_key_size(struct net_device *netdev)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
@@ -1763,8 +1764,8 @@ static u32 iavf_get_rxfh_key_size(struct net_device *netdev)
  * iavf_get_rxfh_indir_size - get the rx flow hash indirection table size
  * @netdev: network interface device structure
  *
- * Returns the table size.
- **/
+ * Return: the indirection table size.
+ */
 static u32 iavf_get_rxfh_indir_size(struct net_device *netdev)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
@@ -1777,8 +1778,10 @@ static u32 iavf_get_rxfh_indir_size(struct net_device *netdev)
  * @netdev: network interface device structure
  * @rxfh: pointer to param struct (indir, key, hfunc)
  *
- * Reads the indirection table directly from the hardware. Always returns 0.
- **/
+ * Reads the indirection table directly from the hardware.
+ *
+ * Return: 0 always.
+ */
 static int iavf_get_rxfh(struct net_device *netdev,
 			 struct ethtool_rxfh_param *rxfh)
 {
@@ -1806,9 +1809,9 @@ static int iavf_get_rxfh(struct net_device *netdev,
  * @rxfh: pointer to param struct (indir, key, hfunc)
  * @extack: extended ACK from the Netlink message
  *
- * Returns -EINVAL if the table specifies an invalid queue id, otherwise
- * returns 0 after programming the table.
- **/
+ * Return: 0 on success, -EOPNOTSUPP if the hash function is not supported,
+ * -EINVAL if the table specifies an invalid queue id.
+ */
 static int iavf_set_rxfh(struct net_device *netdev,
 			 struct ethtool_rxfh_param *rxfh,
 			 struct netlink_ext_ack *extack)
@@ -1885,7 +1888,7 @@ static const struct ethtool_ops iavf_ethtool_ops = {
  *
  * Sets ethtool ops struct in our netdev so that ethtool can call
  * our functions.
- **/
+ */
 void iavf_set_ethtool_ops(struct net_device *netdev)
 {
 	netdev->ethtool_ops = &iavf_ethtool_ops;
-- 
2.52.0
