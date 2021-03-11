Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6780F337F0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 21:32:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 756134ECF8;
	Thu, 11 Mar 2021 20:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96qhep68Nv5a; Thu, 11 Mar 2021 20:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2452E4ECDB;
	Thu, 11 Mar 2021 20:32:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D03E1BF989
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 20:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33B5B4ECEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 20:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sa0F3-jEQC0r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 20:32:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4364E4ECDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 20:32:36 +0000 (UTC)
IronPort-SDR: SfqKdV0j67CvBW8Bfq1Sejtpp/GcLd4Wf+nKrctcDaB7b1DyvAYO2A30ClFN/TE/nkUiWE+pMA
 CtuLUQPEmhgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250102699"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="250102699"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 12:32:35 -0800
IronPort-SDR: 8xNhb8wMcbUS77T52NVrxn7TvEEBcUq3HgASnvdPs2ySDrE05KoWH6NFqJDrxPfOx86BxTu34B
 SkoOJuQVEZ1w==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438277275"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.251.18.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 12:32:30 -0800
Date: Thu, 11 Mar 2021 12:32:29 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210311123229.00007580@intel.com>
In-Reply-To: <161542652605.13546.13143472024905128153.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
 <161542652605.13546.13143472024905128153.stgit@localhost.localdomain>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 02/10] intel: Update drivers to
 use ethtool_gsprintf
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
Cc: "doshir@vmware.com" <doshir@vmware.com>, "mst@redhat.com" <mst@redhat.com>,
 "oss-drivers@netronome.com" <oss-drivers@netronome.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "akiyano@amazon.com" <akiyano@amazon.com>,
 "wei.liu@kernel.org" <wei.liu@kernel.org>,
 "sthemmin@microsoft.com" <sthemmin@microsoft.com>,
 "pv-drivers@vmware.com" <pv-drivers@vmware.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "yisen.zhuang@huawei.com" <yisen.zhuang@huawei.com>,
 "gtzalik@amazon.com" <gtzalik@amazon.com>,
 "simon.horman@netronome.com" <simon.horman@netronome.com>,
 "haiyangz@microsoft.com" <haiyangz@microsoft.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 "salil.mehta@huawei.com" <salil.mehta@huawei.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 "rmody@marvell.com" <rmody@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "netanel@amazon.com" <netanel@amazon.com>,
 "saeedb@amazon.com" <saeedb@amazon.com>,
 "snelson@pensando.io" <snelson@pensando.io>,
 "skalluru@marvell.com" <skalluru@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Duyck wrote:

> From: Alexander Duyck <alexanderduyck@fb.com>
> 
> Update the Intel drivers to make use of ethtool_gsprintf. The general idea
> is to reduce code size and overhead by replacing the repeated pattern of
> string printf statements and ETH_STRING_LEN counter increments.
> 
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c   |   16 ++----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c     |   55 +++++++---------------
>  drivers/net/ethernet/intel/igb/igb_ethtool.c     |   40 ++++++----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |   40 ++++++----------
>  4 files changed, 50 insertions(+), 101 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index c70dec65a572..932c6635cfd6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2368,21 +2368,15 @@ static void i40e_get_priv_flag_strings(struct net_device *netdev, u8 *data)
>  	struct i40e_netdev_priv *np = netdev_priv(netdev);
>  	struct i40e_vsi *vsi = np->vsi;
>  	struct i40e_pf *pf = vsi->back;
> -	char *p = (char *)data;
> +	u8 *p = data;
>  	unsigned int i;

As Jakub said, RCT... :-)

no other comments on the rest of the patch, looks good and Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
