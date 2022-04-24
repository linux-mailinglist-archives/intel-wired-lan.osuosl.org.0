Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B8350D450
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 20:56:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E79F401B2;
	Sun, 24 Apr 2022 18:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AV_YshCjwq7O; Sun, 24 Apr 2022 18:56:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DE41400A6;
	Sun, 24 Apr 2022 18:56:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 063BF1BF316
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF41B41487
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=inria.fr
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWhAw6Mv2D0m for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 18:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A60A4089E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=tDY0felYN2UGd3W13Ur2vcoJF8BZHEnrso7S07EmECQ=;
 b=f9CKFKh2sm4lonJaOpRhh8yBlvXfJfd59KMWrlS7M7tt04X1aOXdaGJG
 rxpSiWbWUg9WvSILEaVhZVcGHxROG9jnlaLCkqlBmiG009BVEGkdv77oY
 D5D8i4YVufzx4BpeE7ZJCzcd1LcwtsW3RD9AqrJTCYtX1nSpW05XyfxMz A=;
Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,287,1643670000"; d="scan'208";a="33054986"
Received: from ip-214.net-89-2-7.rev.numericable.fr (HELO hadrien)
 ([89.2.7.214]) by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2022 20:56:12 +0200
Date: Sun, 24 Apr 2022 20:56:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204242054350.21756@hadrien>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1611063524-1650826572=:21756"
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
Cc: alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org, jdenham@redhat.com,
 manishc@marvell.com, bridge@lists.linux-foundation.org,
 intel-wired-lan@lists.osuosl.org, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shshaikh@marvell.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, GR-Linux-NIC-Dev@marvell.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Julia Lawall <julia.lawall@inria.fr>, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1611063524-1650826572=:21756
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 24 Apr 2022, Alaa Mohamed wrote:

>
> On ٢٤/٤/٢٠٢٢ ١٨:١٥, Julia Lawall wrote:
> >
> > On Sun, 24 Apr 2022, Alaa Mohamed wrote:
> >
> > > Add extack to vxlan_fdb_delete and vxlan_fdb_parse
> > It could be helpful to say more about what adding extack support involves.
> >
> > > Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> > > ---
> > > changes in V2:
> > > 	- fix spelling vxlan_fdb_delete
> > > 	- add missing braces
> > > 	- edit error message
> > > ---
> > > changes in V3:
> > > 	fix errors reported by checkpatch.pl
> > But your changes would seem to also be introducing more checkpatch errors,
> > because the Linux kernel coding style puts a space before an { at the
> > start of an if branch.
> I ran checkpatch script before submitting this patch and got no error

OK, whether checkpatch complains or not doesn't really matter.  The point
is that in the Linux kernel, one writes:

if (...) {

and not

if (...){

You can see other examples of ifs in the Linux kernel.

julia

> >
> > julia
> >
> > > ---
> > >   drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
> > >   1 file changed, 25 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/net/vxlan/vxlan_core.c
> > > b/drivers/net/vxlan/vxlan_core.c
> > > index cf2f60037340..4e1886655101 100644
> > > --- a/drivers/net/vxlan/vxlan_core.c
> > > +++ b/drivers/net/vxlan/vxlan_core.c
> > > @@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev
> > > *vxlan, struct vxlan_fdb *f,
> > >
> > >   static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
> > >   			   union vxlan_addr *ip, __be16 *port, __be32
> > > *src_vni,
> > > -			   __be32 *vni, u32 *ifindex, u32 *nhid)
> > > +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct
> > > netlink_ext_ack *extack)
> > >   {
> > >   	struct net *net = dev_net(vxlan->dev);
> > >   	int err;
> > >
> > >   	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
> > > -	    tb[NDA_PORT]))
> > > -		return -EINVAL;
> > > +	    tb[NDA_PORT])){
> > > +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are
> > > mutually exclusive with NH_ID");
> > > +			return -EINVAL;
> > > +		}
> > >
> > >   	if (tb[NDA_DST]) {
> > >   		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
> > > -		if (err)
> > > +		if (err){
> > > +			NL_SET_ERR_MSG(extack, "Unsupported address family");
> > >   			return err;
> > > +		}
> > >   	} else {
> > >   		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
> > >
> > > @@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[],
> > > struct vxlan_dev *vxlan,
> > >   	}
> > >
> > >   	if (tb[NDA_PORT]) {
> > > -		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
> > > +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
> > > +			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
> > >   			return -EINVAL;
> > > +		}
> > >   		*port = nla_get_be16(tb[NDA_PORT]);
> > >   	} else {
> > >   		*port = vxlan->cfg.dst_port;
> > >   	}
> > >
> > >   	if (tb[NDA_VNI]) {
> > > -		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
> > > +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
> > > +			NL_SET_ERR_MSG(extack, "Invalid vni");
> > >   			return -EINVAL;
> > > +		}
> > >   		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
> > >   	} else {
> > >   		*vni = vxlan->default_dst.remote_vni;
> > >   	}
> > >
> > >   	if (tb[NDA_SRC_VNI]) {
> > > -		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
> > > +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
> > > +			NL_SET_ERR_MSG(extack, "Invalid src vni");
> > >   			return -EINVAL;
> > > +		}
> > >   		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
> > >   	} else {
> > >   		*src_vni = vxlan->default_dst.remote_vni;
> > > @@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[],
> > > struct vxlan_dev *vxlan,
> > >   	if (tb[NDA_IFINDEX]) {
> > >   		struct net_device *tdev;
> > >
> > > -		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
> > > +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
> > > +			NL_SET_ERR_MSG(extack, "Invalid ifindex");
> > >   			return -EINVAL;
> > > +		}
> > >   		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
> > >   		tdev = __dev_get_by_index(net, *ifindex);
> > > -		if (!tdev)
> > > +		if (!tdev){
> > > +			NL_SET_ERR_MSG(extack,"Device not found");
> > >   			return -EADDRNOTAVAIL;
> > > +		}
> > >   	} else {
> > >   		*ifindex = 0;
> > >   	}
> > > @@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct
> > > nlattr *tb[],
> > >   		return -EINVAL;
> > >
> > >   	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> > > -			      &nhid);
> > > +			      &nhid, extack);
> > >   	if (err)
> > >   		return err;
> > >
> > > @@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm,
> > > struct nlattr *tb[],
> > >   	int err;
> > >
> > >   	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> > > -			      &nhid);
> > > +			      &nhid, extack);
> > >   	if (err)
> > >   		return err;
> > >
> > > --
> > > 2.36.0
> > >
> > >
> > >
>
--8323329-1611063524-1650826572=:21756
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-1611063524-1650826572=:21756--
