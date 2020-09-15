Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1735E26AECE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 22:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9D25420107;
	Tue, 15 Sep 2020 20:44:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BZ8UwVEV+qBw; Tue, 15 Sep 2020 20:44:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6623E22882;
	Tue, 15 Sep 2020 20:44:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50A6A1BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BFF986B15
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qeW+CGEwdb-k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 20:44:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C8D686AE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:44:09 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kIHnz-00Eomd-BX; Tue, 15 Sep 2020 22:43:59 +0200
Date: Tue, 15 Sep 2020 22:43:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Saeed Mahameed <saeed@kernel.org>
Message-ID: <20200915204359.GF3526428@lunn.ch>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
 <20200915140326.GG3485708@lunn.ch>
 <734f0c4595a18ab136263b6e5c97e7f48a93abe1.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <734f0c4595a18ab136263b6e5c97e7f48a93abe1.camel@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Yes we can have our own gcc options in the Makfile regardless of what
> you put in W command line argument.
> 
> Example:
> 
> KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
> KBUILD_CFLAGS += -Wmissing-declarations
> KBUILD_CFLAGS += -Wmissing-format-attribute
> KBUILD_CFLAGS += -Wmissing-prototypes
> KBUILD_CFLAGS += -Wold-style-definition
> KBUILD_CFLAGS += -Wmissing-include-dirs

How about something like this, so we get whatever W=1 means.

    Andrew

diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 72e18d505d1a..d4e125831d1c 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -3,6 +3,9 @@
 # Makefile for the Linux network device drivers.
 #
 
+# Enable W=1 by default
+subdir-ccflags-y := $(KBUILD_CFLAGS_WARN1)
+
 #
 # Networking Core Drivers
 #
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 95e4cdb94fe9..bf0de3502849 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -20,23 +20,26 @@ export KBUILD_EXTRA_WARN
 #
 # W=1 - warnings which may be relevant and do not occur too often
 #
-ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
-
-KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
-KBUILD_CFLAGS += -Wmissing-declarations
-KBUILD_CFLAGS += -Wmissing-format-attribute
-KBUILD_CFLAGS += -Wmissing-prototypes
-KBUILD_CFLAGS += -Wold-style-definition
-KBUILD_CFLAGS += -Wmissing-include-dirs
-KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
-KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
-KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
-KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
+KBUILD_CFLAGS_WARN1 += -Wextra -Wunused -Wno-unused-parameter
+KBUILD_CFLAGS_WARN1 += -Wmissing-declarations
+KBUILD_CFLAGS_WARN1 += -Wmissing-format-attribute
+KBUILD_CFLAGS_WARN1 += -Wmissing-prototypes
+KBUILD_CFLAGS_WARN1 += -Wold-style-definition
+KBUILD_CFLAGS_WARN1 += -Wmissing-include-dirs
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wunused-but-set-variable)
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wunused-const-variable)
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wpacked-not-aligned)
+KBUILD_CFLAGS_WARN1 += $(call cc-option, -Wstringop-truncation)
 # The following turn off the warnings enabled by -Wextra
-KBUILD_CFLAGS += -Wno-missing-field-initializers
-KBUILD_CFLAGS += -Wno-sign-compare
-KBUILD_CFLAGS += -Wno-type-limits
+KBUILD_CFLAGS_WARN1 += -Wno-missing-field-initializers
+KBUILD_CFLAGS_WARN1 += -Wno-sign-compare
+KBUILD_CFLAGS_WARN1 += -Wno-type-limits
+
+export KBUILD_CFLAGS_WARN1
+
+ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
 
+KBUILD_CFLAGS += $(KBUILD_CFLAGS_WARN1)
 KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
 
 else
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
