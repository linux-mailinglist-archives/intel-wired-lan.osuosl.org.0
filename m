Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C5AC1099
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 18:01:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6529B83D50;
	Thu, 22 May 2025 16:01:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id npj_Ljo6AGlp; Thu, 22 May 2025 16:01:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA40C83D49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747929718;
	bh=0y2bFJz7SvcjVO/EsX16X4aNsVlfUI82CMDCICKgeF0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TtRhJ4frjV653/PjDJoK+Melr8EhHgwKOgz+gwC3DGiAQikrmeugArOSRePy1HxVV
	 hqBCUdFIL6FkZe8ds4gk33aDtQ0Fviw1I4ewK3/0TzqBPYKS3D2PEHtSaKgKHJ/5IB
	 bBYtr84xsIuHf8rBZHATPNtxhqr+0U+algvgwmVIMkEy8XB4CbQVmI3TbPg+HNgDxB
	 EaPwGnM1lcpSWhoH3e5gwilAJPT0r/96PwRP6jsJ924FrmDki2jElRCmV3L38/CXw9
	 bfK41siJY2hqB5pFNwtcOI4QlSSABMnRi6E0PtRUVXWYLIUSW28ke3fC1h/i5Ysv2S
	 SFn+yIO78Q0rA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA40C83D49;
	Thu, 22 May 2025 16:01:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBAFF106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1C2E83D48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yyyl_6dU6PIt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 16:01:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 072AF83C28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 072AF83C28
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 072AF83C28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:54 +0000 (UTC)
X-CSE-ConnectionGUID: gorZ4C/uSBq4xkYau91toA==
X-CSE-MsgGUID: wCSpkclYT66MWcAKw8iZ+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="52594055"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="52594055"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 09:01:54 -0700
X-CSE-ConnectionGUID: 6TblV4qxSUSOvxhU/BeGrQ==
X-CSE-MsgGUID: gvGe2y4DS8u3T8RzMtyWZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="171649464"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 09:01:53 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com
Date: Thu, 22 May 2025 09:01:36 -0700
Message-ID: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747929715; x=1779465715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yJc0bibQnv6mI8uiu8A4gKyMMsVaWSQbTQlBGCYSlaE=;
 b=Q7Q+fOWvwIAkdpLMakW1qPpGJ/7jHqHIdZZuanIqzJgUu3jVWDqZk4NU
 rDeEnFxjZoASlj9+W54i7RSbjjglqF61O31gRrBoeawQ3XSAosP/kDhmI
 IqLqIHUYUL7JSzrREXn0jVHv6YB2JQPwf5Gl+38W/8ra1pC1ZyweFs9JE
 jhWaj+S8n2fMHEDKzTmqGb30VK6N7yqkMxBOqBcmVzcF5EHzKwNr65abw
 2G1GR+nXCStOZnmdmDg6GTK7pbArUNeLiWh7KdB9fc8znoP/uLffE/pnd
 HLUrmrnTNmvTkUIhYoPVsMGKLFKWt0qMHbf4R8WEqHXbwUe36mVrvSanz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q7Q+fOWv
Subject: [Intel-wired-lan] [PATCH linux-firmware 0/3] update ice DDP packages
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update ice DDP packages (default, comms, and wireless_edge) to support
E825-C devices.

Tony Nguyen (3):
  ice: update package to 1.3.43.0
  ice: update comms package to 1.3.55.0
  ice: update wireless_edge package to 1.3.23.0

 WHENCE                                        |   8 ++++----
 ...ms-1.3.52.0.pkg => ice_comms-1.3.55.0.pkg} | Bin 1434500 -> 1434500 bytes
 ...0.0.pkg => ice_wireless_edge-1.3.23.0.pkg} | Bin 1442692 -> 1442692 bytes
 .../{ice-1.3.41.0.pkg => ice-1.3.43.0.pkg}    | Bin 1352580 -> 1352580 bytes
 4 files changed, 4 insertions(+), 4 deletions(-)
 rename intel/ice/ddp-comms/{ice_comms-1.3.52.0.pkg => ice_comms-1.3.55.0.pkg} (99%)
 rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.20.0.pkg => ice_wireless_edge-1.3.23.0.pkg} (99%)
 rename intel/ice/ddp/{ice-1.3.41.0.pkg => ice-1.3.43.0.pkg} (99%)

-- 
2.47.1

