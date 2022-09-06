Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8DE5AE3ED
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Sep 2022 11:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6299740BB0;
	Tue,  6 Sep 2022 09:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6299740BB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662455738;
	bh=MYp9Ldr22KhZLwdghIvm12fAyTPkAtUja8iUklfxd6g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zC+B3hfK3Ew1aaZdOV+FTkv22TwDDeIe4/OAXbag2pf9Skpw3e5kmJ/w5AQAXfDHi
	 kYhzYQp3IiocOZK7uBQIby4+CSFsmZZ1Cybzw0hF/gjav7ODp7wbeWaS5ITqn86S6J
	 DV3nGkt8Yvimr9130D5qa57G0lcP+gkzgfhtRxLiYY37AR9vFASZ/35oOKFe21sdo+
	 Wpctjq8pSFK5Rnm98itI/j+XtYSAkolz0STv6b+3iHsW6dHpDhQDkV3XKJd5q9h7AZ
	 TflMstnYGR2thUs74C1Y3jnPZtDwTsmoqIeUdfK5Brr8oRJdrQMgO3kVRHJdGihRnQ
	 OFDTB58Vzj4dA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJfF6Ba2BpRP; Tue,  6 Sep 2022 09:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C8BC400E7;
	Tue,  6 Sep 2022 09:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C8BC400E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14ACF1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE710417B7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE710417B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M_vPwLu5Ia7T for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Sep 2022 09:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B875D404AA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B875D404AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297331011"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="297331011"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 02:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="647164000"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga001.jf.intel.com with ESMTP; 06 Sep 2022 02:15:26 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Sep 2022 11:14:09 +0200
Message-Id: <20220906091411.910107-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662455727; x=1693991727;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MudkAs5tpqhKjmwNj4EqTFEFjIyeg/mhL9kS/IgdD7I=;
 b=PSVgkKmme3xa8v2J/FvPmykk+zUxOCIwJgR9Vrk8DQqqoxn99cac+G9f
 cwlPgJn65CdCKUQu3JxQcV+h4ZFWgHqh4gzgf/oWmJvF2vZ1Alj+HZw9b
 6/Jj/Chf6N1AhJAORY6DGjvRKPn7aqZK45gXEKmF7FPyR10K2hB7HlKjz
 QTZqcrZM4LE1nOVKpNU+NUYaIBvTm1ywb7txkv9Jf6/fDeKiTNN2TNJXi
 xsQk8ViWWLfsS420BMFZk4x79B8L4eM30XgxjQA48sfGmt/puw3Vqy3PV
 iPb8OeCFHxGXEUnsf6/k0YmYuX7/9WfY+u+HbZeFeSfwaDCc4UVVn+aik
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PSVgkKmm
Subject: [Intel-wired-lan] [PATCH net v1 0/2] Fix vf set max mtu size with
 port vlan and jumbo frames
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix "PF returned error -5 (IAVF_ERR_PARAM) to our request 6" error and
possible page_frag_cache_drain crashes that is a result of this error
when port vlan and jumbo frames are set on vf .

Michal Jaron (2):
  iavf: Fix vf set max mtu size with port vlan and jumbo frames
  i40e: Fix vf set max mtu size

 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 20 +++++++++++++++++++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  7 +++++--
 2 files changed, 25 insertions(+), 2 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
