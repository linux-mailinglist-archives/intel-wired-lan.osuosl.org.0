Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E309780884D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 13:49:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CE5E42136;
	Thu,  7 Dec 2023 12:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CE5E42136
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701953345;
	bh=1uwgpAloTQNCKl9n6mEd0H6f9VcfLh9ps2wHGDxtwHw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lFjYUVa+gdUppwGx1NNMnOt147DTDVAeF+Eu+a7b1xomV93tjdhN8HkIHAqmQSAGO
	 a8ovmhyCJdQrQAB/n0Yms6fK9wLky15pGL527wjeK7unvaae9BgaTPy4X9oxZU9alN
	 lvR5xlsrF4+YCrjY4cmL0ruyUqrwRkoLNRaSc35ocTVv76rSpYE3yXJNfvTNthAQ9/
	 +5EN1KQNnhBL7oIH3Bs3zQM/fhmsggbjwWzs969qKPcJTQkNDSfF+hs/9HYhZJaUdw
	 FBNe9f2/3qAHrSJ5OADkA6JF9l7Qk+tTlnbgABhinpC1hQCJ3rAq2JZ6V8jP5qPU1b
	 NMhYGiFb8Sx6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E80yCuVK1Iqk; Thu,  7 Dec 2023 12:49:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2A48408C8;
	Thu,  7 Dec 2023 12:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2A48408C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3792E1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 12:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B35883B60
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 12:48:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B35883B60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u1CuPqkdSUBp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 12:48:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C6C283B4F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 12:48:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C6C283B4F
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="397015132"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="397015132"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 04:48:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="837704127"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="837704127"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2023 04:48:54 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.249.158.92])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 211C233EBF;
 Thu,  7 Dec 2023 12:48:53 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Dec 2023 13:48:37 +0100
Message-Id: <20231207124838.29915-1-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701953337; x=1733489337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PypshdJBiWJ8UuGO1KeStpKR9p6uxObiG6BXtzxh8Xw=;
 b=cD4QSFppuji+hIsyuEWlUUvdILtceYPfysK25DlmiBfGhTdwsDVt1GpY
 25Resg2fp8UDUTt9g+jO/KnUmRbH7SGzFAOGUBJ3TpQ2ec0bGCFxj5+NY
 0+hGAuIH56lzGWQvHgf5qsWNnUCqGysAeehzLdHt6WOCq6RRQ8CVB5N9c
 Jxu4XyLOiX2I+HivDyBZz7jnO/5Bo5I2/6A+3osmAzmFg1aptH5PZUuic
 /47Jkjv1WnyTtMPjMzyQAKgIFGzT1fTmA3Uj1kuRbDEWg55GYrl5Go/uv
 U+uN+kmFJcW9rpzdH41Zx5UaqnkLGXbBvY6B/sI0K7yVeDScm6hH9vOah
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cD4QSFpp
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] ice: Support flow
 director ether type filters
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
Cc: netdev@vger.kernel.org, Lukasz Plachno <lukasz.plachno@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool allows creating rules with type=ether, add support for such
filters in ice driver.
Patch 1 allows extending ice_fdir_comp_rules() with handling additional
type of filters.

v2: fixed compilation warning by moving default: case between commits

Jakub Buchocki (1):
  ice: Implement 'flow-type ether' rules

Lukasz Plachno (1):
  ice: Remove unnecessary argument from ice_fdir_comp_rules()

 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 126 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 112 +++++++++-------
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  11 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 204 insertions(+), 46 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
