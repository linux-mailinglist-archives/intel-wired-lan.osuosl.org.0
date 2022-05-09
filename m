Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E055207F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 00:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 739CC40A6E;
	Mon,  9 May 2022 22:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pxav2wVXAami; Mon,  9 May 2022 22:46:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D0C240A6A;
	Mon,  9 May 2022 22:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 108A61BF36B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 22:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 062FB40A64
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 22:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9NP1rBS81LuD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 May 2022 22:46:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6690F4000B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 22:46:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 58B1C6114A;
 Mon,  9 May 2022 22:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E47F2C385B3;
 Mon,  9 May 2022 22:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652136365;
 bh=kUsp5ywapvjh+TIviLfPYdjLx8988YN+fB39xNMI1Hk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uz2QlAxx3fLtTv+bya49kC8Eyu85O0tp7SNOppx3x1ZCgUqya39mLXLjHuMQTmFOT
 TFijgu0XUzs94vlLJ7K0fMLiAw4GecyQ4N83nQzZwS4LJNSW6Ci7D88yvimWgO7DKa
 QvZ9ejOgGfS2N6OSnSwRbDRWtDyOiP7SHR98x2OhSKcnVzgQ2unv4h0CiADObiyo+o
 JLH7OkFSQb3UEEda+Cv8r3+6ESFQS1cIy3gAPQW26b7aKBMvlDtio/LA+sutQF05DO
 YNAeOKuVg/U6FVngVsfXr/PNcRQllg64X5YRlh9zKz/PggoljrjiwMA3CMxuqQrG76
 z+UTXDvApWvXQ==
Date: Mon, 9 May 2022 15:46:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <20220509154603.4a7b4243@kernel.org>
In-Reply-To: <ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
 <ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/2] net: vxlan: Add
 extack support to vxlan_fdb_delete
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, roopa@nvidia.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  5 May 2022 17:09:58 +0200 Alaa Mohamed wrote:
> +			NL_SET_ERR_MSG(extack,
> +						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");

This continuation line still does not align with the opening bracket.
Look here if your email client makes it hard to see:

https://lore.kernel.org/all/ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com/

Same story in patch 1:

>  static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>  			       struct net_device *dev,
> -			       const unsigned char *addr, u16 vid)
> +			       const unsigned char *addr, u16 vid,
> +				   struct netlink_ext_ack *extack)

and here:

>  static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>  			    struct net_device *dev,
> -			    const unsigned char *addr, u16 vid)
> +			    const unsigned char *addr, u16 vid,
> +				struct netlink_ext_ack *extack)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
