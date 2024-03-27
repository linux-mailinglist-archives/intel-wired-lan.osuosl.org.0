Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D7A88E8C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F187981FEC;
	Wed, 27 Mar 2024 15:24:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yuw8wkCKj3fC; Wed, 27 Mar 2024 15:24:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 689EE81E43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553097;
	bh=5bzpAGGmxSumtfAIG9LtKZvSRXZTyNWs9m5xL7//Fbo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=esOV5CBL4QhK8mOaH4fn/RA2g2k+6sbxr5GqmI3o2iWOVIb8XdRPCDQi6uSmaX4JH
	 jpmoXWHzS08rxFoOh6ZaR05nurd08mxMYVeyVhZoWUUZo876sTRRCzdGe94abKtLoq
	 oifJVUiFqjwCui4uArVqTLAgvbSXZwlrzw4mW1fnWUHq/tMduVAFT/uK8sYZg4SV7h
	 exV8l/d+P0NzN8DtTdqpAyYUUN7dmtbVnl7f4JKVYI8R+qfBhc7/hNfXq3wZvGiagM
	 nmWYbbtHTyAjaBMnEChJ6Sa9VEISnadqVyug49zUxYnTjtjsCzQO87rwRV6P9RcT4f
	 GUmcnHTqhkekw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 689EE81E43;
	Wed, 27 Mar 2024 15:24:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2431C1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C96C60BA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:24:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sDfkpaojhQfT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:24:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 40614606EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40614606EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40614606EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:24:51 +0000 (UTC)
X-CSE-ConnectionGUID: 3jQ9jM+tTLe0BO3My+8lZQ==
X-CSE-MsgGUID: /xt4Y1zuTaut+6hoc96PNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518121"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518121"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414126"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:24:45 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:41 +0100
Message-ID: <20240327152358.2368467-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553092; x=1743089092;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K8EtF1oz7qGa6EZGjVbDGQaJGDn7Nfv4xr++cP1EjNk=;
 b=MSCY6PNKTP23vGD/2hIU2hwGrxjACySyOdhvWwQSzFVQNL9UAYw0N18B
 QOOFVnfy7EEiDS3hPyTm32XhiHgbBAbmCOsP5+Hr8TJo/OkMRpgKVt9R3
 uUXfxNlJ++QQFKVEWVytmq1AOWxBnscgaaGulzQOFNje9QaSzgqFiut4h
 KsZNf8DoiuczwhkWQwjerdI9WFMF4y1cXpskWIFyknFrgC+QGpzqUUkk+
 rV/Ug4ftpp2POa5uo4gsAj4Ia2Dwl9f3LPQNQstbt1Q5dMgmsXfq5Ptsp
 coqkohaNHr1fP7NAdXUH/ShI6oI3CUY8lzqk/vgeiOYk25+bSd7XfPTa+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MSCY6PNK
Subject: [Intel-wired-lan] [PATCH net-next v6 04/21] bitops: add missing
 prototype check
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
Cc: Yury Norov <yury.norov@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 8238b4579866 ("wait_on_bit: add an acquire memory barrier") added
a new bitop, test_bit_acquire(), with proper wrapping in order to try to
optimize it at compile-time, but missed the list of bitops used for
checking their prototypes a bit below.
The functions added have consistent prototypes, so that no more changes
are required and no functional changes take place.

Fixes: 8238b4579866 ("wait_on_bit: add an acquire memory barrier")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/bitops.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 2ba557e067fe..f7f5a783da2a 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -80,6 +80,7 @@ __check_bitop_pr(__test_and_set_bit);
 __check_bitop_pr(__test_and_clear_bit);
 __check_bitop_pr(__test_and_change_bit);
 __check_bitop_pr(test_bit);
+__check_bitop_pr(test_bit_acquire);
 
 #undef __check_bitop_pr
 
-- 
2.44.0

