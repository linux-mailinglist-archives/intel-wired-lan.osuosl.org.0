Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFD12F64DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 16:39:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D023D872FE;
	Thu, 14 Jan 2021 15:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jwKfY8Hg3UJt; Thu, 14 Jan 2021 15:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEFBB873A9;
	Thu, 14 Jan 2021 15:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0D931BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95C3B86A73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Deuakx_btFyQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 14:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F4F686A85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:21 +0000 (UTC)
IronPort-SDR: vsK9M7XGhc5qDGlSdKJeFqP2e6uz4bvhCSLMbb/hyWQE034ks+9c9RkKOXHSQM6mSHcyYYn1EA
 1fxuxMZe2D9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="263165426"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="263165426"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 06:33:21 -0800
IronPort-SDR: 5OH1mM9YLhru887LKhDZe6ZrdK+nL0duUlnEfgAAU8iaEVzVrRvDZDNs5cS1YMx2kzYT73QLBj
 I8raqjAmNX4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="353919526"
Received: from silpixa00400572.ir.intel.com ([10.237.213.34])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jan 2021 06:33:19 -0800
From: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 14:33:14 +0000
Message-Id: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 Jan 2021 15:39:23 +0000
Subject: [Intel-wired-lan] [PATCH net-next 0/4] i40e: small improvements on
 XDP path
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
Cc: netdev@vger.kernel.org, edwin.verplanke@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, cristian.dumitrescu@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset introduces some small and straightforward improvements
to the Intel i40e driver XDP path. Each improvement is fully described
in its associated patch.

Cristian Dumitrescu (4):
  i40e: remove unnecessary memory writes of the next to clean pointer
  i40e: remove unnecessary cleaned_count updates
  i40e: remove the redundant buffer info updates
  i40: consolidate handling of XDP program actions

 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 149 +++++++++++----------
 1 file changed, 79 insertions(+), 70 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
