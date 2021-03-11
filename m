Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDC8336A06
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 03:08:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 846C642FAD;
	Thu, 11 Mar 2021 02:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4N19RGqx96QW; Thu, 11 Mar 2021 02:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CC9342FA9;
	Thu, 11 Mar 2021 02:08:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30F0E1BF488
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 02:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B06647DE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 02:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QdEoUjNQVr7C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 02:08:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49F3747C46
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 02:08:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1435564FAA;
 Thu, 11 Mar 2021 02:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615428489;
 bh=NLWsAdZX4Z7588LIkFwbfw139IjUY4CRLCIvxvC3TBA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Hsk/nFWRhJV6YvrHzO8BJOANQaMYYcu5PosERdHcsiub2TVeUY22/dJCqClyLsMkq
 BgvnvaB8zq6E+VQKu2pKTDqRk8e71ZgJy5q+S+D6jmf8DtMUFLqtAMmVynJPM4KW0v
 X7z157aXfnRAuqyrzREEw9mDqjoqJEvjOvt4DSIuodAIltlPKFO6PQX/TYS1ew6S4W
 fcZsLXedJYSn2X/4dYSmJPVcYjteHi4Tj3KK3Bd1O6CCs31cBV3LblF1l3BHAmaaZP
 gUkefhDSM03GAKDcrHjSiCNEgTC+H+9R2JaoOl8GlcLcT9S2Bli/ogr7n51xZ36xap
 LDY67frNuwO1Q==
Date: Wed, 10 Mar 2021 18:08:07 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210310180807.5fb1752d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <161542651749.13546.3959589547085613076.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
 <161542651749.13546.3959589547085613076.stgit@localhost.localdomain>
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, yisen.zhuang@huawei.com, gtzalik@amazon.com,
 simon.horman@netronome.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 10 Mar 2021 17:35:17 -0800 Alexander Duyck wrote:
> From: Alexander Duyck <alexanderduyck@fb.com>
> 
> Add a function to handle the common pattern of printing a string into the
> ethtool strings interface and incrementing the string pointer by the
> ETH_GSTRING_LEN. Most of the drivers end up doing this and several have
> implemented their own versions of this function so it would make sense to
> consolidate on one implementation.
> 
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
> ---
>  include/linux/ethtool.h |    9 +++++++++
>  net/ethtool/ioctl.c     |   12 ++++++++++++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index ec4cd3921c67..0493f13b2b20 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -571,4 +571,13 @@ struct ethtool_phy_ops {
>   */
>  void ethtool_set_ethtool_phy_ops(const struct ethtool_phy_ops *ops);
>  
> +/**
> + * ethtool_gsprintf - Write formatted string to ethtool string data
> + * @data: Pointer to start of string to update
> + * @fmt: Format of string to write
> + *
> + * Write formatted string to data. Update data to point at start of
> + * next string.
> + */
> +extern __printf(2, 3) void ethtool_gsprintf(u8 **data, const char *fmt, ...);

I'd drop the 'g' TBH, it seems to have made its way from the ethtool
command ('gstrings') to various places but without the 'string' after
it - it becomes less and less meaningful. Just ethtool_sprintf() would
be fine IMHO.

Other than that there is a minor rev xmas tree violation in patch 2 :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
