Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2E550D335
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 18:15:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C069140891;
	Sun, 24 Apr 2022 16:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wq70NsixWQkW; Sun, 24 Apr 2022 16:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C6724086C;
	Sun, 24 Apr 2022 16:15:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 983731BF417
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 16:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 823EB60B2A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 16:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=inria.fr
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rsz3kog5nPvg for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 16:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B07916066D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 16:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=dFgs9qbEcOWsSo2xl3UGtyLPP/Q/SV+0PLsA8mb0eTY=;
 b=dJdcRpTbIo2wX6tp1wmNIOoT4XSB97unPa6eLJxbBD6cK9oSQsZf2NAh
 MPSl5DWl6R2F4p+F2aI8TURJAZys3mHpOrWHoITR7itSnGDiz/bCLVsMs
 OP24VAz6XesPAIVv9yPxq5MeXovM/OmjTg5Ku7Nbv+sBksL1F+kW45Qcr M=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,286,1643670000"; d="scan'208";a="12281397"
Received: from ip-214.net-89-2-7.rev.numericable.fr (HELO hadrien)
 ([89.2.7.214]) by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2022 18:15:08 +0200
Date: Sun, 24 Apr 2022 18:15:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net: vxlan:
 vxlan_core.c: Add extack support to vxlan_fdb_delete
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
 claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On Sun, 24 Apr 2022, Alaa Mohamed wrote:

> Add extack to vxlan_fdb_delete and vxlan_fdb_parse

It could be helpful to say more about what adding extack support involves.

>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
> changes in V2:
> 	- fix spelling vxlan_fdb_delete
> 	- add missing braces
> 	- edit error message
> ---
> changes in V3:
> 	fix errors reported by checkpatch.pl

But your changes would seem to also be introducing more checkpatch errors,
because the Linux kernel coding style puts a space before an { at the
start of an if branch.

julia

> ---
>  drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
>  1 file changed, 25 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
> index cf2f60037340..4e1886655101 100644
> --- a/drivers/net/vxlan/vxlan_core.c
> +++ b/drivers/net/vxlan/vxlan_core.c
> @@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
>
>  static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
> +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
>  {
>  	struct net *net = dev_net(vxlan->dev);
>  	int err;
>
>  	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
> -	    tb[NDA_PORT]))
> -		return -EINVAL;
> +	    tb[NDA_PORT])){
> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> +			return -EINVAL;
> +		}
>
>  	if (tb[NDA_DST]) {
>  		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
> -		if (err)
> +		if (err){
> +			NL_SET_ERR_MSG(extack, "Unsupported address family");
>  			return err;
> +		}
>  	} else {
>  		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
>
> @@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  	}
>
>  	if (tb[NDA_PORT]) {
> -		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
> +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
> +			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
>  			return -EINVAL;
> +		}
>  		*port = nla_get_be16(tb[NDA_PORT]);
>  	} else {
>  		*port = vxlan->cfg.dst_port;
>  	}
>
>  	if (tb[NDA_VNI]) {
> -		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
> +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
> +			NL_SET_ERR_MSG(extack, "Invalid vni");
>  			return -EINVAL;
> +		}
>  		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
>  	} else {
>  		*vni = vxlan->default_dst.remote_vni;
>  	}
>
>  	if (tb[NDA_SRC_VNI]) {
> -		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
> +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
> +			NL_SET_ERR_MSG(extack, "Invalid src vni");
>  			return -EINVAL;
> +		}
>  		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
>  	} else {
>  		*src_vni = vxlan->default_dst.remote_vni;
> @@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  	if (tb[NDA_IFINDEX]) {
>  		struct net_device *tdev;
>
> -		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
> +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
> +			NL_SET_ERR_MSG(extack, "Invalid ifindex");
>  			return -EINVAL;
> +		}
>  		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
>  		tdev = __dev_get_by_index(net, *ifindex);
> -		if (!tdev)
> +		if (!tdev){
> +			NL_SET_ERR_MSG(extack,"Device not found");
>  			return -EADDRNOTAVAIL;
> +		}
>  	} else {
>  		*ifindex = 0;
>  	}
> @@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>  		return -EINVAL;
>
>  	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> -			      &nhid);
> +			      &nhid, extack);
>  	if (err)
>  		return err;
>
> @@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>  	int err;
>
>  	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> -			      &nhid);
> +			      &nhid, extack);
>  	if (err)
>  		return err;
>
> --
> 2.36.0
>
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
