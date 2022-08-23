Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8976659EC3C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 21:26:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B277F408EF;
	Tue, 23 Aug 2022 19:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B277F408EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661282783;
	bh=6Rrbai+DoZ+b8zGiToUwjRSos6Iz+vWZgjomYfeuNTw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WHXH7p8Rv8q5658ATliVVwVDCxAKlQvWJc2kSXkgf2GzhNu7MoUd2Br/tijwPPk1J
	 ncQfYGQaLsgxLtxN1OK0LTlmOuXSpAPzt+zldxntsDHNOihf8x9TS9Leb0syyvRVH0
	 kxP72sWtMgEVQYJRylQhxRhc3o6n/CgfHaNes1db45dRj93MQlZp6X4/3ZldKceoa3
	 Ajl2RmGmSc9hdaR87ffDzIIymQcHI2HvCyKL5g13MkxKStJ3I+159DKPbSrRtWukTi
	 4zUD+cJbDVlEzix+BpxIAR6Vf256n0yzJivHTEB+w24VRPObV8eCPANLce8j+RgAvR
	 dkYGsis5zMelQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WPbdWld1MSHw; Tue, 23 Aug 2022 19:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E32964091C;
	Tue, 23 Aug 2022 19:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E32964091C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03AAF1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 19:26:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D21484011C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 19:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D21484011C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ikdFaI8Fu1as for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 19:26:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1024540112
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1024540112
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 19:26:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="380068751"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="380068751"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 12:26:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638791975"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2022 12:26:14 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Aug 2022 21:24:29 +0200
Message-Id: <20220823192429.17881-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661282776; x=1692818776;
 h=from:to:cc:subject:date:message-id;
 bh=oV5KfTRaBpCbl0BmnpIMqeuZzFtaHC188L2dEX/osGs=;
 b=Y7/TMUsQocpInq0ixy0DeX1HhyYifkX/2VZtfKvZJpHEdO6fXyBOkwne
 9I1gMrVzjdOcaaU0Z/QXPKsVpaX+LSYVyajICpCqKJbtuoxxleI+Yc37t
 LwMxvy5Nzra0A5og1BSQfN3E7nHs80WXG4GuyVsZMAOxmHC4VLvYSGSbN
 uO7EfL+et0U+3b/qIXwqkM3t8LRfCE7F0933A1eCAHhWlmaTWy/v7Bn3p
 p9mlZSgVYS55hwOuT0fF8cHnxE2n6aTIbeNyZbXWSl7byX8fQZWRegRTT
 zKRY9FMGFqDVa4zsytA+/O96qdqzN5lpzy/Ap4tEP3lbyOmGRmyrhVcpV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y7/TMUsQ
Subject: [Intel-wired-lan] [PATCH net v1] ice: Add set_termios tty
 operations handle to GNSS
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some third party tools (ex. ubxtool) tries to change GNSS TTY parameters
(ex. speed). While being optional implementation, without set_termios
handle this operation fails and prevent those third party tools from
working. TTY interface in ice driver is virtual and don't need any change
on set_termios, so is left empty. Add this mock to support all Linux TTY
APIs.

Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b5a7f24..c2dc5e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -404,11 +404,26 @@ static unsigned int ice_gnss_tty_write_room(struct tty_struct *tty)
 	return ICE_GNSS_TTY_WRITE_BUF;
 }
 
+/**
+ * ice_gnss_tty_set_termios - mock for set_termios tty operations
+ * @tty: pointer to the tty_struct
+ * @new_termios: pointer to the new termios parameters
+ */
+static void
+ice_gnss_tty_set_termios(struct tty_struct *tty, struct ktermios *new_termios)
+{
+	/* Some 3rd party tools (ex. ubxtool) want to change the TTY parameters.
+	 * In our virtual interface (I2C communication over FW AQ) we don't have
+	 * to change anything, but we need to implement it to unblock tools.
+	 */
+}
+
 static const struct tty_operations tty_gps_ops = {
 	.open =		ice_gnss_tty_open,
 	.close =	ice_gnss_tty_close,
 	.write =	ice_gnss_tty_write,
 	.write_room =	ice_gnss_tty_write_room,
+	.set_termios =  ice_gnss_tty_set_termios,
 };
 
 /**
-- 
2.9.5

base-commit: f1e941dbf80a9b8bab0bffbc4cbe41cc7f4c6fb6
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
