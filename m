Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6781F4ED4F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 09:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9E0C41DEA;
	Thu, 31 Mar 2022 07:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6pUN2LUOWLCI; Thu, 31 Mar 2022 07:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32C2F41DE9;
	Thu, 31 Mar 2022 07:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF3791BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 07:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95AAD41DE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 07:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7jQ6VRSR63M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 07:45:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F83D41DE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 07:45:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 59A0961805;
 Thu, 31 Mar 2022 07:45:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 198C6C340F0;
 Thu, 31 Mar 2022 07:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648712714;
 bh=8iqEELlQfidAWxPbSPnuzLLq+C/vvjNyUEt2aMmN8aA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gzrLLIkO73a3ko/CKONc+3yRFmcbMWKdX01oTL6GkxvzXvbt7Ikj0iXk8lEA9BJ9U
 LQAjztQEIt9D+vj2nLVrVKYtT37xj0oGe3c16FBMJyfKDSiSHOBE/VPCvLYRb8r+yn
 71coC207ai6tdIH0HT63mVXsp9afiYsSVU49mdjG42m9qbihUg5NbdktqOktrP6ApX
 nQyLCiBNvPy9DpbkXosk2yEK5udJk4QaYJU4b1EJlnh9Cy0AwBkKt39+CwAXxSUHPM
 8BWw6Nt9ayKjUawJPVWn3FFnqoCs40RZ+CEWNrnOFlLwgKl4pRK9egqcrvVLq8dYAx
 R9OD+wbRYe8fA==
Date: Thu, 31 Mar 2022 10:45:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Shannon Nelson <snelson@pensando.io>
Message-ID: <YkVcBgac41VjNBd7@unreal>
References: <3702fad8a016170947da5f3c521a9251cf0f4a22.1648637865.git.leonro@nvidia.com>
 <b201a3ed-5698-4e91-adc9-34c938e43668@pensando.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b201a3ed-5698-4e91-adc9-34c938e43668@pensando.io>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: ensure IPsec VF<->PF
 compatibility
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Raed Salem <raeds@nvidia.com>,
 Shannon Nelson <shannon.nelson@oracle.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 30, 2022 at 09:13:21AM -0700, Shannon Nelson wrote:
> On 3/30/22 4:01 AM, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > =

> > The VF driver can forward any IPsec flags and such makes the function
> > is not extendable and prone to backward/forward incompatibility.
> > =

> > If new software runs on VF, it won't know that PF configured something
> > completely different as it "knows" only XFRM_OFFLOAD_INBOUND flag.
> > =

> > Fixes: eda0333ac293 ("ixgbe: add VF IPsec management")
> > Reviewed-by: Raed Salem <raeds@nvidia.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> > There is no simple fix for this VF/PF incompatibility as long as FW
> > doesn't filter/decline unsupported options when convey mailbox from VF
> > to PF.
> > ---
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 4 +++-
> >   1 file changed, 3 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/n=
et/ethernet/intel/ixgbe/ixgbe_ipsec.c
> > index e596e1a9fc75..236f244e3f65 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> > @@ -903,7 +903,9 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *ada=
pter, u32 *msgbuf, u32 vf)
> >   	/* Tx IPsec offload doesn't seem to work on this
> >   	 * device, so block these requests for now.
> >   	 */
> > -	if (!(sam->flags & XFRM_OFFLOAD_INBOUND)) {
> > +	sam->flags =3D sam->flags & ~XFRM_OFFLOAD_IPV6;
> > +	if (!(sam->flags & XFRM_OFFLOAD_INBOUND) ||
> > +	    sam->flags & ~XFRM_OFFLOAD_INBOUND) {
> =

> So after stripping the IPV6 flag, you're checking to be sure that INBOUND=
 is
> the only flag enabled, right?
> Could you use
> =A0=A0=A0 if (sam->flags !=3D XFRM_OFFLOAD_INBOUND) {
> instead?

Sure, I'll send new version soon.

Thanks

> =

> sln
> =

> >   		err =3D -EOPNOTSUPP;
> >   		goto err_out;
> >   	}
> =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
