Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D311337F23
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 21:37:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBF7B6F840;
	Thu, 11 Mar 2021 20:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttUWO-Hua5r8; Thu, 11 Mar 2021 20:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 063BC6F5A4;
	Thu, 11 Mar 2021 20:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 882C61BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 20:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 822E78444B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 20:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vXCD0mSdQzfs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 20:37:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D615B8444A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 20:37:23 +0000 (UTC)
IronPort-SDR: NYjWcEdBDQ7xRyuafUUj1YZ6BqLkGmtjrVAVCKsGjH6Y/2r4+7zQTxC2ZwThroLZ9RwFv7nNYI
 KM0yVPI0JjxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175851860"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175851860"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 12:37:23 -0800
IronPort-SDR: BqbB2zz3Nv8GXxVLf0B9QzES99iqYIWgAir+PXBwqkW1pZ5nwvYRNmsg3TfhVFh8P1NsI8fPTk
 ruF4nSkEwDDw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438278581"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.251.18.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 12:37:21 -0800
Date: Thu, 11 Mar 2021 12:37:21 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210311123721.00005913@intel.com>
In-Reply-To: <20210310180807.5fb1752d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
 <161542651749.13546.3959589547085613076.stgit@localhost.localdomain>
 <20210310180807.5fb1752d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 01/10] ethtool: Add common
 function for filling out strings
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

Jakub Kicinski wrote:

> On Wed, 10 Mar 2021 17:35:17 -0800 Alexander Duyck wrote:
> > From: Alexander Duyck <alexanderduyck@fb.com>
> > +/**
> > + * ethtool_gsprintf - Write formatted string to ethtool string data
> > + * @data: Pointer to start of string to update
> > + * @fmt: Format of string to write
> > + *
> > + * Write formatted string to data. Update data to point at start of
> > + * next string.
> > + */
> > +extern __printf(2, 3) void ethtool_gsprintf(u8 **data, const char *fmt, ...);
> 
> I'd drop the 'g' TBH, it seems to have made its way from the ethtool
> command ('gstrings') to various places but without the 'string' after
> it - it becomes less and less meaningful. Just ethtool_sprintf() would
> be fine IMHO.
> 
> Other than that there is a minor rev xmas tree violation in patch 2 :)


I agree with Jakub, and I really like this series, it's a good clean up.

I'll be glad to add a reviewed by tag to v2.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
