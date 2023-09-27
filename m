Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FBF7AFFFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 11:27:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EC3E4209B;
	Wed, 27 Sep 2023 09:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EC3E4209B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695806855;
	bh=LW5iBMgRDmHjjU5kugbmgPsoeyOCTQvwB9xmNYwMP5s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=83gMwqhYLDxvPU5PhBGcI6OzamKYTWneHn1iVzqsODArvukhyZVkziN73o+wLBYWT
	 5Kgyu2UbtmEgKuVJZYOlJR8N0TGq7uhSk3vqMdzBO2AbjSrz6/LbcMcWndYdW9ax2P
	 0go/5hoHWEtmKyth9p3Fr9Xt9YJMeuxKlfLtyO56YzybIGkI4vRarTo6z/uCZSBkAH
	 gvEzrtecvqAVwhYmmuPnis1Bs1uXGykXJ1XhNQSu8mM9kPURehHh0dBSWvOC4veIlj
	 X4pPX7Nya/Nx0eWZTLnR0A0DgEuYM61dcl1p+ME9f1YRF5J+81WpcLf9syEQmLobVg
	 jD9NS2Jj2xtbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7cbzrtyg8JSJ; Wed, 27 Sep 2023 09:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADA0F41F8B;
	Wed, 27 Sep 2023 09:27:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADA0F41F8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 390051BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 09:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4897E826EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 09:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4897E826EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cdl2Z5sYHV0y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 09:27:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EBD1826F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 09:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EBD1826F5
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="412692331"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="412692331"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 02:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778479243"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="778479243"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga008.jf.intel.com with ESMTP; 27 Sep 2023 02:27:13 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 27 Sep 2023 11:24:32 +0200
Message-Id: <20230927092435.1565336-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695806843; x=1727342843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BzIFo49aq6U0+R7YpWgvvjZ08XUE358oQhR1J9koMlI=;
 b=L3BtNuYKosJqA5weR79gXilznlSwZo7+AWwgAgUpEJt9yfYA5Qdz30VF
 +nBYg199w23s/1hraz+jmYiGoxa6NPVM3zSfBjR8d9l/ZDMfra6LNJsi4
 7ydtveqfhjGGTTJll4MsMhNMaJlvxPD/Dy2lj+ZmWGlzetFdeL8l0Fa/3
 Ztw9qiqsZJMX0LG8QkUV4VXaQ2+u9XHqP5v0JyLfiy9bpHQKARK4tVXsY
 Ico/jKo3fPnRS/tAuwNvtTgVpp2mpyVkUMLIK+W2x3ltTqrDTGmKt11Y/
 EJ6PU146x4PMjL4DYim7sKYnQSX19eBYmIRn3UMUdqgzT+OoohoE5ZAUx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L3BtNuYK
Subject: [Intel-wired-lan] [PATCH net-next 1/4] dpll: docs: add support for
 pin signal phase offset/adjust
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

Add dpll documentation on new pin's attributes:
- phase-offset - measured difference between phase of signals on pin
  and dpll
- phase-adjust - adjustable value of pin's signal phase
- phase-adjust-min / phase-adjust-max - values for determining limits
  for phase-adjust

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/driver-api/dpll.rst | 53 ++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
index bb52f1b8c0be..59634a3513bd 100644
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
