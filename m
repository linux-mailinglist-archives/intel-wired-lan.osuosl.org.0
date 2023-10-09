Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EF57BEE52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 00:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FFB461186;
	Mon,  9 Oct 2023 22:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FFB461186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696890588;
	bh=1GJjmRl23AAPaAUy2DsJJztgTvXc6tanAvfHYC6uP9s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nfe+74jUcsUnE7cM5eZDa5UV1WtZ3Otsl16iL6Fnbqm+V3z6e5038OYVTcL7CzifC
	 kza10+HVdrSKczhZHk32toWACRfA7gH8MgqBKFSt+LUtvU9NwkM0uGQ06OeSb/UH5h
	 OhSCmLzWPXtgZ7gZsn2q+yyU7uAiN0VTh1nQ91ch2eaFbe1Ixc8gH/hVxqOozRgADf
	 bMEVXM9hikiieRg3MSiPuf4Szg/WDgrkRt50K8Lpx1vFC5hts7W6yKnEQ6+VzoA2fe
	 g1+3MYiYmNPzszCD0pCEXfDBNwb59IxYPoTOcuwj9vbLI9qGSLUlUaO518m5A9WQrG
	 MhS40bLzzwbUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O4ZTVyV1EYdO; Mon,  9 Oct 2023 22:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40CA960FFF;
	Mon,  9 Oct 2023 22:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40CA960FFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4964A1BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E24341715
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E24341715
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fV7b4mLlGsXw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 22:29:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52FB241704
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52FB241704
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="2849392"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; 
   d="scan'208";a="2849392"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 15:28:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="843876578"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="843876578"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2023 15:28:50 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 10 Oct 2023 00:26:12 +0200
Message-Id: <20231009222616.12163-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231009222616.12163-1-arkadiusz.kubalewski@intel.com>
References: <20231009222616.12163-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696890577; x=1728426577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yRpEHHx345nS6YYwo+ZTnWtYWBfcifiu4bdKvhxp9Cc=;
 b=TVuyZxX5P/czIO3MlBfKQZYAe6ez2/OvQ9sPn27WJC6YeoLtqmZXMBE8
 08ifW3QCxJuAxU+YqUFWbp7W6QSGVC1hXWsM4TiA46Q+tZJu1B1y74cne
 SnM6zYk1OUo34mhBML/Gjdj8n+bP1BVXXjuaKmLqpkvHAMbAtTsyzjDxN
 w2wqwvtou7MoyfiVoRr8wOsYiizhcRld0pKLUb5/hxNe1bWVoDiMqAAYJ
 /UB1m+3okz8shj2L9EBjW494eKxSVNRy30vVq3JbHG8QwyXvzaKE7shW1
 yudMlXfuH6lyCnFUkxY1bZ9x7/TbJ2l0emOEeMT/hr38X9i7apOtAPBcE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TVuyZxX5
Subject: [Intel-wired-lan] [PATCH net-next v4 1/5] dpll: docs: add support
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
- measurement of phase of signal between pin and dpll
- adjustment of pin signal phase

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/driver-api/dpll.rst | 53 ++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
index 69670deb8c4e..e3d593841aa7 100644
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
+time difference between signals phase. The negative value means that
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
