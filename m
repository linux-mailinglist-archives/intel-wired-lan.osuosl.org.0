Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C4533F59E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 17:36:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD3C36F96E;
	Wed, 17 Mar 2021 16:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XwUb_La5CVVi; Wed, 17 Mar 2021 16:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD7AB6F970;
	Wed, 17 Mar 2021 16:36:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DECB61BF402
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 16:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9D1682FDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 16:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zcx0D93cVDXN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 16:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39C138397F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 16:36:26 +0000 (UTC)
IronPort-SDR: LtMemnDelBXx3/tJoPDO74uOUIPoyCKGBNvH/A3/WsSZs2/olvWJtT5oUWP2X74JN4behmM8U6
 LoL+SXtcY9dQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="168775635"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="168775635"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:36:25 -0700
IronPort-SDR: SHus9+wDX8b0eIupvkjhQgwqpU2eyRx/H6MOHPhxShhdm6rqrk3xoRC5rvqvOKV1xIcXyITO47
 IrkZUrEeWdVg==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="372406847"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.10.230])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:36:24 -0700
Date: Wed, 17 Mar 2021 09:36:24 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210317093624.00005020@intel.com>
In-Reply-To: <161594104491.5644.18446437902161792108.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
 <161594104491.5644.18446437902161792108.stgit@localhost.localdomain>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 02/10] intel: Update
 drivers to use ethtool_sprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, Kernel-team@fb.com,
 yisen.zhuang@huawei.com, gtzalik@amazon.com, simon.horman@netronome.com,
 haiyangz@microsoft.com, drivers@pensando.io, salil.mehta@huawei.com,
 GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com, netdev@vger.kernel.org,
 davem@davemloft.net, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Duyck wrote:

> From: Alexander Duyck <alexanderduyck@fb.com>
> 
> Update the Intel drivers to make use of ethtool_sprintf. The general idea
> is to reduce code size and overhead by replacing the repeated pattern of
> string printf statements and ETH_STRING_LEN counter increments.
> 
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>

Thanks!

Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
