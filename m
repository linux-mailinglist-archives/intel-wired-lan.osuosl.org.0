Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D5A7BB6D0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:44:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95DAA61233;
	Fri,  6 Oct 2023 11:44:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95DAA61233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696592641;
	bh=j1JRX+AEIr573hByLZc488VRwsyH9kCEVkbQP9wjD7c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rEQ9jHlDW6PGYvWMcKgXk3k6rW+6hVd2isLT41hPdgEgD8Dp3IKSxtmuSdaCh6jsJ
	 15GrFV7d8wqPCx5MMvGYUqylXJHKg7tFtXI4KudznSYb+L3PpYfMGTfLoqubdFnyYy
	 YLLGi7uBxDv8GKEsx3OZ0KKZXMD9zqPRGnt59L00yuZRhIcfn9SP2ihadM38AQFQjp
	 VYw6kv3AvjwDVoN8fMwciYmM781t0HBhAONpoyCgHiXqCZT61uXeerMQ6xIb+glxbT
	 NeXpkAkIBlylDQUOPfjnBk6wsJc7cW1TtlM/y3iDLkpr3Zfv7jhEJwOQMNQKWB/for
	 WSDxcHCadAf8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPljeglfLerl; Fri,  6 Oct 2023 11:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4434860BB2;
	Fri,  6 Oct 2023 11:44:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4434860BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CA191BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35C7983B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35C7983B5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1h_2XdUHNCJz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:43:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7666083B6F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7666083B6F
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="470003226"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470003226"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="925942705"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="925942705"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2023 04:43:47 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 13:40:57 +0200
Message-Id: <20231006114101.1608796-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696592630; x=1728128630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+9H/rvYK5o9whH9rNgHHfHAbgEAl1kqDx0MXJf1anMg=;
 b=PhlsDhYwfwMz7kBB2Yy74nbPdUcfxA+l2knETpHNkTLt6dQnj5Gf3qre
 ViCqk3TzladgUPHwf0X4YxN/fp/UNtQOdMdFV6hjI2z/8sc4vgw4IHWOl
 HAfA+7ckWDqkpaXlA5szrPnvNkDy2WuXnCTkKsyb/2iD42FwVs38d2uMV
 YPfrsBzS/SQ1VcopoQCoo67iJZ0AePswd1vhRRp0yfgw1+g9PoeSsJvhB
 tlL+KzGzT+aMlw5XHTqqm+TiiTZkGfq6zR6V9achrfcYzLgP0CIGEvXNC
 R4W9HxWEapTUB/3Dn/Mor0B3a+0fndxV2Vu+sC1ItgxQVsoIOy2LyRLXd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PhlsDhYw
Subject: [Intel-wired-lan] [PATCH net-next v3 1/5] dpll: docs: add support
 for pin signal phase offset/adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add documentation on:
- measurment of phase of signal between pin and dpll
- adjustment of pin signal phase

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/driver-api/dpll.rst | 53 ++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
index 69670deb8c4e..564997373437 100644
--- a/Documentation/driver-api/dpll.rst
+++ b/Documentation/driver-api/dpll.rst
@@ -173,6 +173,47 @@ in order to configure active input of a MUX-type pin, the user needs to
 request desired pin state of the child pin on the parent pin,
 as described in the ``MUX-type pins`` chapter.
 
+Phase offset measurement and adjustment
+========================================
+
+Device may provide ability to measure a phase difference between signals
+on a pin and its parent dpll device. If pin-dpll phase offset measurement
+is supported, it shall be provided with ``DPLL_A_PIN_PHASE_OFFSET``
+attribute for each parent dpll device.
+
+Device may also provide ability to adjust a signal phase on a pin.
+If pin phase adjustment is supported, minimal and maximal values that pin
+handle shall be provide to the user on ``DPLL_CMD_PIN_GET`` respond
+with ``DPLL_A_PIN_PHASE_ADJUST_MIN`` and ``DPLL_A_PIN_PHASE_ADJUST_MAX``
+attributes. Configured phase adjust value is provided with
+``DPLL_A_PIN_PHASE_ADJUST`` attribute of a pin, and value change can be
+requested with the same attribute with ``DPLL_CMD_PIN_SET`` command.
+
+  =============================== ======================================
+  ``DPLL_A_PIN_ID``               configured pin id
+  ``DPLL_A_PIN_PHASE_ADJUST_MIN`` attr minimum value of phase adjustment
+  ``DPLL_A_PIN_PHASE_ADJUST_MAX`` attr maximum value of phase adjustment
+  ``DPLL_A_PIN_PHASE_ADJUST``     attr configured value of phase
+                                  adjustment on parent dpll device
+  ``DPLL_A_PIN_PARENT_DEVICE``    nested attribute for requesting
+                                  configuration on given parent dpll
+                                  device
+    ``DPLL_A_PIN_PARENT_ID``      parent dpll device id
+    ``DPLL_A_PIN_PHASE_OFFSET``   attr measured phase difference
+                                  between a pin and parent dpll device
+  =============================== ======================================
+
+All phase related values are provided in pico seconds, which represents
+time differnece between signals phase. The negative value means that
+phase of signal on pin is earlier in time than dpll's signal. Positive
+value means that phase of signal on pin is later in time than signal of
+a dpll.
+
+Phase adjust (also min and max) values are integers, but measured phase
+offset values are fractional with 3-digit decimal places and shell be
+divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
+modulo divided to get fractional part.
+
 Configuration commands group
 ============================
 
@@ -263,6 +304,12 @@ according to attribute purpose.
                                        frequencies
       ``DPLL_A_PIN_ANY_FREQUENCY_MIN`` attr minimum value of frequency
       ``DPLL_A_PIN_ANY_FREQUENCY_MAX`` attr maximum value of frequency
+    ``DPLL_A_PIN_PHASE_ADJUST_MIN``    attr minimum value of phase
+                                       adjustment
+    ``DPLL_A_PIN_PHASE_ADJUST_MAX``    attr maximum value of phase
+                                       adjustment
+    ``DPLL_A_PIN_PHASE_ADJUST``        attr configured value of phase
+                                       adjustment on parent device
     ``DPLL_A_PIN_PARENT_DEVICE``       nested attr for each parent device
                                        the pin is connected with
       ``DPLL_A_PIN_PARENT_ID``         attr parent dpll device id
@@ -270,8 +317,10 @@ according to attribute purpose.
                                        dpll device
       ``DPLL_A_PIN_STATE``             attr state of pin on the parent
                                        dpll device
-     ``DPLL_A_PIN_DIRECTION``          attr direction of a pin on the
+      ``DPLL_A_PIN_DIRECTION``         attr direction of a pin on the
                                        parent dpll device
+      ``DPLL_A_PIN_PHASE_OFFSET``      attr measured phase difference
+                                       between a pin and parent dpll
     ``DPLL_A_PIN_PARENT_PIN``          nested attr for each parent pin
                                        the pin is connected with
       ``DPLL_A_PIN_PARENT_ID``         attr parent pin id
@@ -284,6 +333,8 @@ according to attribute purpose.
   ``DPLL_CMD_PIN_SET``                 command to set pins configuration
     ``DPLL_A_PIN_ID``                  attr unique a pin ID
     ``DPLL_A_PIN_FREQUENCY``           attr requested frequency of a pin
+    ``DPLL_A_PIN_PHASE_ADJUST``        attr requested value of phase
+                                       adjustment on parent device
     ``DPLL_A_PIN_PARENT_DEVICE``       nested attr for each parent dpll
                                        device configuration request
       ``DPLL_A_PIN_PARENT_ID``         attr parent dpll device id
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
