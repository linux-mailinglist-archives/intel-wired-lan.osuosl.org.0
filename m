Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A64E33F5C3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 17:41:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73E844ECF7;
	Wed, 17 Mar 2021 16:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jtrsE8_kOFB9; Wed, 17 Mar 2021 16:41:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49B7B4ECD6;
	Wed, 17 Mar 2021 16:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA9161BF402
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 16:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C86496F96E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 16:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmmZ-qrFO_e9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 16:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F3916F969
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 16:41:39 +0000 (UTC)
IronPort-SDR: YRtvRu+d+YHRyjSwcadXZLUUv2AVeqlu0vXB/ThXUh6s5P+thvt6haCHQDcSfKDlSUl0ZNrHTX
 eljE9v8fQtCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="250859549"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="250859549"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:41:39 -0700
IronPort-SDR: jBh0ESDE3nQ62X8GGYlW2EfcuPeTJTTpknrp5suwpoKISw9McOFxBaO2QU73W1LXVA6s+1vd4q
 FoEDLTrxGrbg==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="372408606"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.10.230])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:41:37 -0700
Date: Wed, 17 Mar 2021 09:41:37 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210317094137.00007073@intel.com>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 00/10] ethtool: Factor out
 common code related to writing ethtool strings
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

> This patch set is meant to be a cleanup and refactoring of common code bits
> from several drivers. Specificlly a number of drivers engage in a pattern
> where they will use some variant on an sprintf or memcpy to write a string
> into the ethtool string array and then they will increment their pointer by
> ETH_GSTRING_LEN.
> 
> Instead of having each driver implement this independently I am refactoring
> the code so that we have one central function, ethtool_sprintf that does
> all this and takes a double pointer to access the data, a formatted string
> to print, and the variable arguments that are associated with the string.
> 
> Changes from v1:
> Fixed usage of char ** vs  unsigned char ** in hisilicon drivers
> 
> Changes from RFC:
> Renamed ethtool_gsprintf to ethtool_sprintf
> Fixed reverse xmas tree issue in patch 2
> 

Thanks Alex, I had a look over the whole thing and it looks good to me.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
