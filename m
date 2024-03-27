Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DF888E5FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 15:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04D6181F69;
	Wed, 27 Mar 2024 14:30:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sr5_tb3JjORe; Wed, 27 Mar 2024 14:30:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 165A981F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711549825;
	bh=+BJoTDMSdq9KYHq3olYlHcPhqy5n3QvHtV5DaWD1VUw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9t2t2G+QcTXs80X4OZGUnkO70xr1VJOvZX6mjMy7nSmnDWNwQsrFEgI/jPzKuAknK
	 oMVwqJPdMb/kYSqg0kkDUqRzHa/KCcdt08CPTIWmkLpEtCQVTSOspohOx4NZnQwgKI
	 Bm31Jq7OKslAMCBSGxl+WhVJ7faNCEjjgjUH4gtr0PhWhwR+t2FgNipo8xUY76989r
	 VzZBSVSW+35W5dt/RYYKxZ0QoOvitugIEU3fY3+cMZTNas0ENCtlTfummO0T4WV99k
	 Mir22aLejT/NUYrmwt2tIdjq2IZ4lu+SP7VY5H5E+QQ96r8JR1hgpk45Bga0tsgxho
	 d+WLizdzM+pVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 165A981F8B;
	Wed, 27 Mar 2024 14:30:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B86D21BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4A0681FA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xJ85BYoWYUD2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 14:30:19 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 27 Mar 2024 14:30:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A1D5E81F69
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1D5E81F69
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1D5E81F69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:19 +0000 (UTC)
X-CSE-ConnectionGUID: 8U0xhn7jRXmWa1N9MDsg2Q==
X-CSE-MsgGUID: YWbM4z6vTPuDBF1/30fe1g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6592516"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6592516"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="20973051"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 27 Mar 2024 07:23:10 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 15:22:38 +0100
Message-ID: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711549819; x=1743085819;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P4JbEcNYFbSu9LXCltDr+BrUszGs2RfxtXt7yDaOeNg=;
 b=Wf7XKII1hCnhZiC7wJIuvvvqm4WSST1JASMfs4lOwZzM+5heDgwgO6gi
 NgOBW9euBhKObZ40GQFJSLDnLEqFKKK32WQ2eCWw57QYtxupyHbo7EOx3
 DWojbjlsX8n3q0Idyn0Uz0dr9F4FLpMkyhAo8wpy/Bu0GAo9bifiESMTs
 xvBQyeG+yBC968nm/XJj4zd+tn8cQjCy3QraOql3Na76oPqkh3Xk9MUGk
 Qbo/HnEA6Nh8Jo/ToxJBNE/ZhE5ir7s85nuEGADd9QCFavXdd8Zjm/Nwg
 Jsuv5y0ymFIs0pqpcZlfgjCOuhKo5x4z8hiblZ3fX8cwZ6w6mg6dzjl91
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wf7XKII1
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] compiler_types: add
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
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  2 ++
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 24 ++++++++++-----------
 5 files changed, 28 insertions(+), 12 deletions(-)

---
From v1[0]:
* fix compilation of #2 (Jakub);
* pick Acked-bys (Gustavo).

From RFC[1]:

* teach kdoc new attributes (Simon, Kees);
* add Acked-by (Kees);
* fix a couple typos;
* send to net-next (Kees).

[0] https://lore.kernel.org/netdev/20240326164116.645718-1-aleksander.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20240318130354.2713265-1-aleksander.lobakin@intel.com
-- 
2.44.0

