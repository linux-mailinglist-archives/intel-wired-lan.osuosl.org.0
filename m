Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3998C7B17
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 19:26:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CEAF41D88;
	Thu, 16 May 2024 17:26:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JnqzIvNjzK2j; Thu, 16 May 2024 17:26:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCD8041D92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715880377;
	bh=JLPwevbZr7qyG05/ysC6iuRNGwXqdjfIgp7fbEN99Og=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HvazNZxs7YcI4hKEbmcz5+a9Ny2pfA6pDacaYhHHk+0tR+y/6T8GhqECCKe+HYC2P
	 lxrzBfA873G4kMOOeKtn9P8JawL9qhi8ffS4ClZqI9/cDRRpnH4WiCkgC0vn30YGlV
	 ES2JdZCCPeRRtjLiE3wmSae02X0jZDkCZE8OX3F1H1tiw8MwWRXMHHMvqo6ax7RsyV
	 xf0QTmKqxu7SMT8hOWCtcRehvQTVFY1eQd1tR+0a4fk648ANAISD/mQQ3xun5IASkl
	 Q1y4jWxpin5v/csU08gE6iGhhm9hHTbLDb0QTTITqfNDxmLhCvnGrjPQbuY0slt8qB
	 8fUKWoVCeMhdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCD8041D92;
	Thu, 16 May 2024 17:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 819531BF82C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A78E41C70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NsgR9kIgoYXi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 10:01:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4A1DF400D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A1DF400D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A1DF400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:01:16 +0000 (UTC)
X-CSE-ConnectionGUID: vrVicrZ6RPWhA9icp7tnPQ==
X-CSE-MsgGUID: B+mG0YxcT0iHacJcHq0eNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="14904545"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="14904545"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 03:01:15 -0700
X-CSE-ConnectionGUID: iFfmqHnZTvWBzGzC4IR4PQ==
X-CSE-MsgGUID: 08gnIcHCTqunVJDmnlbing==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="35813173"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa005.fm.intel.com with ESMTP; 16 May 2024 03:01:11 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: larysa.zaremba@intel.com
Date: Thu, 16 May 2024 12:00:39 +0200
Message-Id: <20240516100039.88189-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240515160246.5181-3-larysa.zaremba@intel.com>
References: <20240515160246.5181-3-larysa.zaremba@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 16 May 2024 17:26:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715853677; x=1747389677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JLPwevbZr7qyG05/ysC6iuRNGwXqdjfIgp7fbEN99Og=;
 b=RJECdNHvCEL5+AcGvQ2KXToO2xo2vX8bWOwlOYR8QflyG3Es8OIrChDI
 AyOS6eolm28/EMUr5+W3iFPWN9NHTbvtJTEfdNRRqeToIPrLEpRe+rg2T
 PEAvh1EJPxSn1nYGB2fxNPYL56X9tDhhZfwbAiPrMYAT4XQFoSC2qSxAw
 hyrR7++OzRNC0DgobE4sgMLhVysnA263cZ3eVgIaWweT7HUX62GBJIPYI
 G+6nQYWkbjNJBKM3FpkbC3icrVO+g+sZsKMBE1t3+C9PHgem+NmAoDARV
 jZ5hnN2vwQSTGiBG4vACk7epb8r6Cq5hY5Q2BcoHuZHStYeIpVdoHcB/u
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RJECdNHv
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: add flag to distinguish
 reset from .ndo_bpf in XDP rings config
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
Cc: maciej.fijalkowski@intel.com, hawk@kernel.org, daniel@iogearbox.net,
 linux-kernel@vger.kernel.org, john.fastabend@gmail.com, ast@kernel.org,
 igor.bagnucki@intel.com, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, magnus.karlsson@gmail.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch also fixes an issue when XDP programs become detached from the RX rings on channel number reconfiguration

Regards,
Sergey
