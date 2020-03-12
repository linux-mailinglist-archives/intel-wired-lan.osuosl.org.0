Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3146C1826E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 790FC88E83;
	Thu, 12 Mar 2020 01:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-tjwuT2iEAO; Thu, 12 Mar 2020 01:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1577C8852E;
	Thu, 12 Mar 2020 01:58:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CC011BF473
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7B39D88E52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0QoPhlcfmtuY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 388228854C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:58:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="236656303"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga008.jf.intel.com with ESMTP; 11 Mar 2020 18:58:21 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 18:58:10 -0700
Message-Id: <20200312015818.1007882-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312015818.1007882-1-jacob.e.keller@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 1/9] ice: use __le16 types for
 explicitly Little Endian values
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_read_sr_aq function returns words in the Little Endian format.
Remove the need for __force and typecasting by using a local variable in
the ice_read_sr_word_aq function.

Additionally clarify explicitly that the ice_read_sr_aq function takes
storage for __le16 values instead of using u16.

Being explicit about the endianness of this data helps when using tools
like sparse to catch endian-related issues.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index f6e25db22c23..5597ec50a662 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -80,13 +80,14 @@ ice_check_sr_access_params(struct ice_hw *hw, u32 offset, u16 words)
  * @hw: pointer to the HW structure
  * @offset: offset in words from module start
  * @words: number of words to read
- * @data: buffer for words reads from Shadow RAM
+ * @data: storage for the words read from Shadow RAM (Little Endian)
  * @last_command: tells the AdminQ that this is the last command
  *
- * Reads 16-bit word buffers from the Shadow RAM using the admin command.
+ * Reads 16-bit Little Endian word buffers from the Shadow RAM using the admin
+ * command.
  */
 static enum ice_status
-ice_read_sr_aq(struct ice_hw *hw, u32 offset, u16 words, u16 *data,
+ice_read_sr_aq(struct ice_hw *hw, u32 offset, u16 words, __le16 *data,
 	       bool last_command)
 {
 	enum ice_status status;
@@ -116,10 +117,11 @@ static enum ice_status
 ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
 {
 	enum ice_status status;
+	__le16 data_local;
 
-	status = ice_read_sr_aq(hw, offset, 1, data, true);
+	status = ice_read_sr_aq(hw, offset, 1, &data_local, true);
 	if (!status)
-		*data = le16_to_cpu(*(__force __le16 *)data);
+		*data = le16_to_cpu(data_local);
 
 	return status;
 }
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
