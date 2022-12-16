Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE9564F21D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 21:07:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E514240535;
	Fri, 16 Dec 2022 20:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E514240535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671221238;
	bh=0Z2hE8J2ZMg4RAUoAdE/HUYAkPX9YSHTA34nTzXphdA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OK2s2oaXEyoePqDqicWK8WhSKoCYOSdoCYwUjZMtNRm8p67x3Q+h9daYrOQSRrGrO
	 hlw3Fn4RkScLDOhLBTlXDO1dJ6zbWXS8TG62A3Tr/26gq6fQatyU5aJbeD9tfJ/XQo
	 FAjZzLcHc/f6rNA9Oa1+w/SXyhpGI0jVy74af4dmrsKY7421deSin0rclAjdtHMZhm
	 6mTF0hylFpz0frBdJOhPR+r8yJJTVz5wcsRC0EgCX/g9Up5OSp5C5Axx/YIVEUeUPi
	 YUsrGX092sah5TY4RBtkbL4CqtI+M/PxUJiAi9lkVT2GLsGhckcOaKKM/BIucjMKqh
	 irEezK7Zb52uA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Euo2LWhLA-o6; Fri, 16 Dec 2022 20:07:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 099FC405C2;
	Fri, 16 Dec 2022 20:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 099FC405C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29A801BF973
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F159B41900
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F159B41900
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eECzYOCDa6PV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 20:07:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A7154198D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A7154198D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="320932433"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="320932433"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 12:07:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="682385359"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="682385359"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 12:07:08 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 12:06:54 -0800
Message-Id: <20221216200658.59833-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671221229; x=1702757229;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9Qj1xl8TgTx+X68IP6Jyz8j/DOitLpogZ3EipELIxS8=;
 b=L8FGtBlXbybaJK78l2teHvAS+aMLwnFbZTofpZgkPwZEN5GkXTWqsw8a
 uc5XhKxwpZ7mdJfTU+gJYziqIXSAczanoMr/EOXD6W6/zYC9rBvWk1WoO
 XjRUnWa941HlntbCTMPbzFHXe3AFZdwHskvX1nczcjZq4mGaTVlDOMMXU
 b70bPZqkKhfauBpTWNadz/+wN5x8eVqKgQSkP9vUMVIm0fZRftesRdv5D
 8LBjpq7SXSyfVuBmHqm1YWiavPrrJUqU38CqeDPcbn+hy1op3RFQPZV9J
 XgOvA7AXqU0g/Vrgs8Dg1a09g4EATR7jqTNr4dEDIxPINQ2O51fWQrxBS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L8FGtBlX
Subject: [Intel-wired-lan] [PATCH net-next v1 0/4] virtchnl: update and
 refactor
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The virtchnl.h file is used by i40e/ice physical function (PF) drivers
and irdma when talking to the iavf driver. This series cleans up the
header file by removing unused elements, adding/cleaning some comments,
fixing the data structures so they are explicitly defined, including
padding, and finally does a long overdue rename of the IWARP members in
the structures to RDMA, since the ice driver and it's associated Intel
Ethernet E800 series adapters support both RDMA and IWARP.

The whole series should result in no functional change, but hopefully
clearer code.

Jesse Brandeburg (4):
  virtchnl: remove unused structure declaration
  virtchnl: update header and increase header clarity
  virtchnl: do structure hardening
  virtchnl: i40e/ice/iavf: rename iwarp to rdma

 drivers/net/ethernet/intel/i40e/i40e_client.c |   2 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  63 +++----
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   6 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |   6 +-
 drivers/net/ethernet/intel/iavf/iavf_client.c |  32 ++--
 drivers/net/ethernet/intel/iavf/iavf_client.h |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c |   4 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_status.h |   2 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   6 +-
 include/linux/avf/virtchnl.h                  | 159 ++++++++++--------
 11 files changed, 150 insertions(+), 134 deletions(-)

-- 
2.31.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
