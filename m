Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F0C88C990
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:42:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C57164154F;
	Tue, 26 Mar 2024 16:42:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BqRNEZ-W23Az; Tue, 26 Mar 2024 16:42:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C24484152A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711471321;
	bh=n2mYEUqQdcPCT8UvG7GxNHcSrz+NeU9Mq0+lNfGrzIA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iYw5Cy1XPOuzdmz2QhPI8AGdABqUKy0BhL0c0ts7z9qDjf9OLigHfIWVqQ2O19JeU
	 gBl3P889Y5znLm+xs9JGl4youOrSZHln+V7uP9eEZkitF0Pz1fPZSIh8JyRftTIeBu
	 CMDsvkm6CjosicD2VRlrnjRONH28jwklPsYuqvZKweabfswFMAy1VcszBIDGHhrmeW
	 VCm61MSLFtajAUW7G0FWdUpH4idmLa+wWU/OuapQOJTYN2he2mxiN5BjLIcvWis85A
	 p4/UV/9qN3K6402EUG36H3P5DaGQnwdu6B352Im3rXwvNMxZUNBXsYz5+4DkZ7N6BM
	 d5/N0c2pfP43A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C24484152A;
	Tue, 26 Mar 2024 16:42:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E8041BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:41:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A2F160ABE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:41:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 18ph-BMIdpXN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:41:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C8D51605DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8D51605DE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8D51605DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:41:57 +0000 (UTC)
X-CSE-ConnectionGUID: kIQthg7JQu+Dz2A29R4K5A==
X-CSE-MsgGUID: fM2Ze8w8Q3+DGY+SFmUCjw==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="24023284"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="24023284"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:41:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20667384"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa003.jf.intel.com with ESMTP; 26 Mar 2024 09:41:42 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 26 Mar 2024 17:41:13 +0100
Message-ID: <20240326164116.645718-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711471318; x=1743007318;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D/32WRfGg/BAJYBjvPV5D+qdqDFfYpgQ3mlM4TaI5OE=;
 b=aTAbXAa2KH0syNVGod3rPltLHpGizAROkRTytaMSxT7yOZKvhckYz1GX
 i399kej3pXUl3rMWH79hPZR7uFwFSl7Ew+7lcEg2SitHMy2n+Ps5Tmbvc
 RF/CcPMm8aOp/bdAXLPOkzlKABl5goGfEFQxHVB1PYo7vlj1p8ibfO2AN
 enddrveICCqWKrvLLpgqt1voL5MDOr8k/HV+Im+z2jUIwGMMZS3Dw49I8
 plvj65XCiFIntTitjYhZwqiVQq0tgadGUdRO7P2H3WwIly5mPQnTFNSyv
 buBzkUU2zubh1G6MaCjpuwrJh9a+n3gD7sgeLT0DFnhNRSSnmmAnDMLYl
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aTAbXAa2
Subject: [Intel-wired-lan] [PATCH net-next 0/3] compiler_types: add
 Endianness-dependent __counted_by_{le, be}
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Simon Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some structures contain flexible arrays at the end and the counter for
them, but the counter has explicit Endianness and thus __counted_by()
can't be used directly.

To increase test coverage for potential problems without breaking
anything, introduce __counted_by_{le,be} defined depending on platform's
Endianness to either __counted_by() when applicable or noop otherwise.
The first user will be virtchnl2.h from idpf just as example with 9 flex
structures having Little Endian counters.

Maybe it would be a good idea to introduce such attributes on compiler
level if possible, but for now let's stop on what we have.

Alexander Lobakin (3):
  compiler_types: add Endianness-dependent __counted_by_{le,be}
  idpf: make virtchnl2.h self-contained
  idpf: sprinkle __counted_by{,_le}() in the virtchnl2 header

 Documentation/conf.py                       |  2 ++
 scripts/kernel-doc                          |  1 +
 include/linux/compiler_types.h              | 11 ++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 24 ++++++++++-----------
 4 files changed, 26 insertions(+), 12 deletions(-)

---
From RFC[0]:

* teach kdoc new attributes (Simon, Kees);
* add Acked-by (Kees);
* fix a couple typos;
* send to net-next (Kees).

[0] https://lore.kernel.org/netdev/20240318130354.2713265-1-aleksander.lobakin@intel.com
-- 
2.44.0

