Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EFF67C4E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 08:28:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 777BB60FEE;
	Thu, 26 Jan 2023 07:28:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 777BB60FEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674718096;
	bh=1D+x0yignGByGcCaC5IT0K27PFwf3P3OFz7A49CxiAw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bg/3AL7PGmM1AMEaBjVXT8oouA1w4XC3CpiNBeTmzSb86mr8XzSPVJIfB8FHKSFXz
	 bvnriVU6XLIiVgHNLC+12/1hVjpqadOZ2JHLODmFakATPhGYHdIjooxXSjzRyGlCCI
	 wHBbgvUq121e13sAPJT9D3ZuB8uA6FA8q5qX4rOH/bZlSwXvayZLT11zrgMh3+ns41
	 jXEI81k7ICWTfnql1py3LAkhGAbbqQUoZML+zL9ueVGigGdh+ApyCyvri335Nn4E2w
	 ZeuJqJLK/mdEuBXTtPGi7nWd3Z67J7YQ1t4QEy/wIYe/sr2sLhHam42SyuzTVcvA9+
	 82M1s+wGMj8Gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C60CrfD3PEJV; Thu, 26 Jan 2023 07:28:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B5AF60F6D;
	Thu, 26 Jan 2023 07:28:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B5AF60F6D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 765EA1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 07:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AB5D40A0E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 07:28:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AB5D40A0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-tYE9UydFmG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 07:28:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E96E409E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E96E409E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 07:28:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 85D9361752;
 Thu, 26 Jan 2023 07:28:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 386EBC433EF;
 Thu, 26 Jan 2023 07:28:05 +0000 (UTC)
Date: Thu, 26 Jan 2023 09:28:02 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y9Irgrgf3uxOjwUm@unreal>
References: <cover.1674560845.git.leon@kernel.org>
 <c182cae29914fa19ce970859e74234d3de506853.1674560845.git.leon@kernel.org>
 <20230125110226.66dc7eeb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230125110226.66dc7eeb@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674718087;
 bh=FP9vuXTK892fNGc55uvufWHZKaEX/J0FjCpiBCeGi28=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ahanLAX1jHk2265b+uqA+hNuR4qWvgo2XQ8DgoPW1fhBpx3U/md7lhcB5uVvG2aBz
 ewBTvWBB0UFZvZQEs8a1Hox8blCimFkmeMveP+r3xVPULc68P7m3R/g6RI2OPtksIO
 oh5LM5BNVdd6OZoNY/gPsKVmW7WNU9IUpC7BzEDIpyKCcfwbVfdzhCmE4W58Z4L68P
 OGlEQpS1YmaKofixwlx3mHha+mbnTgXmsTPYx6s6BpCMruQsHKpn6z14eDmaEzh6AT
 0QVOSED+Vn1VjoIR1g34IvH+sQHOEc0o/wYxbs+zJDd4VuU+0JIKUNJRpzILAukx31
 9f2kVcePtzJcg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ahanLAX1
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 01/10] xfrm: extend add
 policy callback to set failure reason
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
 Veaceslav Falico <vfalico@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Jonathan Corbet <corbet@lwn.net>, Jay Vosburgh <j.vosburgh@gmail.com>,
 oss-drivers@corigine.com, linux-doc@vger.kernel.org,
 Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S . Miller" <davem@davemloft.net>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 25, 2023 at 11:02:26AM -0800, Jakub Kicinski wrote:
> On Tue, 24 Jan 2023 13:54:57 +0200 Leon Romanovsky wrote:
> > -	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp);
> > +	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp, extack);
> >  	if (err) {
> >  		xdo->dev = NULL;
> >  		xdo->real_dev = NULL;
> >  		xdo->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
> >  		xdo->dir = 0;
> >  		netdev_put(dev, &xdo->dev_tracker);
> > -		NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> 
> In a handful of places we do:
> 
> if (!extack->msg)
> 	NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> 
> in case the device did not provide the extack.
> Dunno if it's worth doing here.

Honestly, I followed devlink.c which didn't do that, but looked again
and found that devlink can potentially overwrite messages :)

For example in this case:
    997         err = ops->port_fn_state_get(port, &state, &opstate, extack);
    998         if (err) {
    999                 if (err == -EOPNOTSUPP)
   1000                         return 0;
   1001                 return err;
   1002         }
   1003         if (!devlink_port_fn_state_valid(state)) {
   1004                 WARN_ON_ONCE(1);
   1005                 NL_SET_ERR_MSG_MOD(extack, "Invalid state read from driver");
   1006                 return -EINVAL;
   1007         }


So what do you think about the following change, so we can leave
NL_SET_ERR_MSG_MOD() in devlink and xfrm intact? 

diff --git a/include/linux/netlink.h b/include/linux/netlink.h
index 38f6334f408c..d6f3a958e30b 100644
--- a/include/linux/netlink.h
+++ b/include/linux/netlink.h
@@ -101,7 +101,7 @@ struct netlink_ext_ack {
                                                        \
        do_trace_netlink_extack(__msg);                 \
                                                        \
-       if (__extack)                                   \
+       if (__extack && !__extack->msg)                 \
                __extack->_msg = __msg;                 \
 } while (0)

@@ -111,7 +111,7 @@ struct netlink_ext_ack {
 #define NL_SET_ERR_MSG_FMT(extack, fmt, args...) do {                         \
        struct netlink_ext_ack *__extack = (extack);                           \
                                                                               \
-       if (!__extack)                                                         \
+       if (!__extack || __extack->msg)                                        \
                break;                                                         \
        if (snprintf(__extack->_msg_buf, NETLINK_MAX_FMTMSG_LEN,               \
                     "%s" fmt "%s", "", ##args, "") >=                         \


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
