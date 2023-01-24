Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FFB6790CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 07:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2759B82069;
	Tue, 24 Jan 2023 06:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2759B82069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674541631;
	bh=Y2nwewcoawD8VWgzCQWSxVEra9+PwmqsY7r2eiX25SM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rX/W/HNabzjlsU8ZVVph1PU4FoNNbDK39vrkFaFgGkMlEumqMEz+XC3+RbMxSTyii
	 JG1fwrTkbQQ8n1lxOA+D0ryCFQeUuw2C7EzJ5PQ/y6pTPvv3OT07p48V/Li5oeKHYV
	 Ahg9fjKaD2GcYvd0qmqnP7GM39tjyWs9qzU2UMO2Vae0e95BUlusYhSNnREWU7qOVs
	 Wog29tmJIoDIr86DzgXO7LvT51EmHM8c6+c854zHUWZ8PkNxmsKJFAiUJXrhAmhkyR
	 mOunlhYeD3iNGqzTn+Vth9tdyoN5qo+fXjqEXsIzi6ZZhE2fG30dlvG135D/1QpSFd
	 7xBbBSb3gunCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NU5nTfctqwHu; Tue, 24 Jan 2023 06:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E23381F6E;
	Tue, 24 Jan 2023 06:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E23381F6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB68A1BF370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 06:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DC7E82041
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 06:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DC7E82041
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1Ei71Gi2OlB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 06:27:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A92B681BB0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A92B681BB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 06:27:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 81096B810C2;
 Tue, 24 Jan 2023 06:27:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B04B8C433EF;
 Tue, 24 Jan 2023 06:26:58 +0000 (UTC)
Date: Tue, 24 Jan 2023 08:22:33 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jay Vosburgh <jay.vosburgh@canonical.com>
Message-ID: <Y895KXqtQgXOytj1@unreal>
References: <cover.1674481435.git.leon@kernel.org>
 <d563de401d6fdc1c52959300eebb2bbb27c6c181.1674481435.git.leon@kernel.org>
 <5064.1674514892@famine>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5064.1674514892@famine>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674541619;
 bh=0E4Oc7/Z2stBA8qPrvNH0kEWWPBwgaEO48l8pr7o85U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y0C8LuIeZXm8qzNM/0x9oaruuBIALECSGYaMY6JmMXHEt/4OO6fq6+06qZLWrY6i8
 /YYXqNse4w2KUvniABDf9pA3W11MlsCChz5gJvaziaPWU5exQ10jdXHnq18ftwwENJ
 WFWPLGpiW20wYNKbJJEXOqd9nDmLzA81okfyPzqIWTVrb6JlllE262R87ggNDsSftd
 ILWr1fy2sGPKt1lW5713650iPtEhl5Bemos7Ul6Kw5aghe/uDMFQCr1TmgUCJPph8Z
 Xu57x2nxiwSFl/idayA3VSw1jJzKxozO5QYBFU7NORPZvlvN0aI9/owULgjlII7j/5
 tcOXg3V17Py7Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Y0C8LuIe
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/10] bonding: fill IPsec
 state validation failure reason
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Paolo Abeni <pabeni@redhat.com>, Ayush Sawal <ayush.sawal@chelsio.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Dumazet <edumazet@google.com>,
 Jonathan Corbet <corbet@lwn.net>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, oss-drivers@corigine.com,
 Veaceslav Falico <vfalico@gmail.com>, Raju Rangoju <rajur@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 23, 2023 at 03:01:32PM -0800, Jay Vosburgh wrote:
> Leon Romanovsky <leon@kernel.org> wrote:
> 
> >From: Leon Romanovsky <leonro@nvidia.com>
> >
> >Rely on extack to return failure reason.
> >
> >Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> >Signed-off-by: Leon Romanovsky <leon@kernel.org>
> >---
> > drivers/net/bonding/bond_main.c | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
> >index 686b2a6fd674..00646aa315c3 100644
> >--- a/drivers/net/bonding/bond_main.c
> >+++ b/drivers/net/bonding/bond_main.c
> >@@ -444,7 +444,7 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs,
> > 	if (!slave->dev->xfrmdev_ops ||
> > 	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
> > 	    netif_is_bond_master(slave->dev)) {
> >-		slave_warn(bond_dev, slave->dev, "Slave does not support ipsec offload\n");
> >+		NL_SET_ERR_MSG_MOD(extack, "Slave does not support ipsec offload");
> > 		rcu_read_unlock();
> > 		return -EINVAL;
> > 	}
> 
> 	Why only this one, and not include the other similar
> slave_warn() calls in the bond_ipsec_* functions?  

Which functions did you have in mind?

The extack was added to XFRM .xdo_dev_state_add() call, which is
translated to bond_ipsec_add_sa() with only one slave_warn() print.

If you are talking about bond_ipsec_add_sa_all(), that function isn't
directly connected to netlink and doesn't have extack pointer to fill.

If you are talking about bond_ipsec_del_sai*() and slave_warn() there, it
will be better to be deleted/changed to make sure what ipsec_list have
only valid devices.

Thanks


> That would seem to make some failures show up in dmesg,
> and others returned to the caller via extack.
> 
> 	-J
> 
> ---
> 	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
