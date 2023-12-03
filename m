Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8B9802560
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Dec 2023 17:23:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C47840948;
	Sun,  3 Dec 2023 16:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C47840948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701620586;
	bh=G3CmKigewvOuN8dYqIPQMHVlqxerYep6jmPX9u2TDnw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yIG4XI8uCCFuR80aboT+K2pIFBuIaIClezdImYLT3kC6BFJgThX7ZUrwcr0xUyIKA
	 hzDOqNe2/UulkyvS3hVmSC2PYRn9+/OZSarNPRPhDtE2Un40KF00XpaxYR4AjRB6sP
	 nABjjGsj23gOQTIcRgfapyZMe/ARZxqbr6QPjN0il3TcbEi05c3vE0DK180Q0oy/r3
	 4qkfEiRzgznDnPZhta+/tzLbsCR5XRxB27vOAmbNly2LLQRAQUHw8ZoupEn4lvy2wd
	 6clZXA+Fo65KTZMhA1UGGZ8lJPrN2w1J+Wo7qo1yeVL68pQ6rM8EfKdfIxo7J2HTTU
	 ie8eSSdHLpQdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3WD410eo8K6S; Sun,  3 Dec 2023 16:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5532F40913;
	Sun,  3 Dec 2023 16:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5532F40913
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4D61BF471
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 16:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56DD360A6D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 16:22:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56DD360A6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R83Ne4ccYzid for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Dec 2023 16:22:58 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B614D607BC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 16:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B614D607BC
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 07BDFB80C2E;
 Sun,  3 Dec 2023 16:22:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93742C433C7;
 Sun,  3 Dec 2023 16:22:50 +0000 (UTC)
Date: Sun, 3 Dec 2023 16:22:48 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231203162248.GJ50400@kernel.org>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-6-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124150343.81520-6-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701620573;
 bh=b+HQxmADgxcaKYfeScRrPsfKr0PQRdIqvtndccl3ae4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YmaC0b9Q3y99uYWwDy4aWaK9FS3j8sGI8mDZMM0SvvBB0fEePNO9ybiMgkdbL4S1s
 OBNwyiiu8/CgZY6HObBKsCai9VmIx3JfLI3vTZ6nriF2+0bjCez+Cu1KvbOeMFLXSG
 UZS68FQA/2EU/gGoeEO4oo6c6Rh54yEAHZYby+3BKnsPH4OgZVAyMGeDRTCGDpCNqy
 t56n8URjbEiMfsMHTXvwGHduSi3gkicJGtIAiVHQ9EWu/LIXJbSCTm1yY/ZctljnyG
 6Vt3kEPjHYHvGYqsgqv6vFEzwqbB440vE6uu8ieZ699NfXH1pmxl6eKZj2eqstIgib
 D6GqmzTo61q2Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YmaC0b9Q
Subject: Re: [Intel-wired-lan] [PATCH v5 5/5] i40e: Remove VEB recursion
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 24, 2023 at 04:03:43PM +0100, Ivan Vecera wrote:
> The VEB (virtual embedded switch) as a switch element can be
> connected according datasheet though its uplink to:
> - Physical port
> - Port Virtualizer (not used directly by i40e driver but can
>   be present in MFP mode where the physical port is shared
>   between PFs)
> - No uplink (aka floating VEB)
> 
> But VEB uplink cannot be connected to another VEB and any attempt
> to do so results in:
> 
> "i40e 0000:02:00.0: couldn't add VEB, err -EIO aq_err I40E_AQ_RC_ENOENT"
> 
> that indicates "the uplink SEID does not point to valid element".
> 
> Remove this logic from the driver code this way:
> 
> 1) For debugfs only allow to build floating VEB (uplink_seid == 0)
>    or main VEB (uplink_seid == mac_seid)
> 2) Do not recurse in i40e_veb_link_event() as no VEB cannot have
>    sub-VEBs
> 3) Ditto for i40e_veb_rebuild() + simplify the function as we know
>    that the VEB for rebuild can be only the main LAN VEB or some
>    of the floating VEBs
> 4) In i40e_rebuild() there is no need to check veb->uplink_seid
>    as the possible ones are 0 and MAC SEID
> 5) In i40e_vsi_release() do not take into account VEBs whose
>    uplink is another VEB as this is not possible
> 6) Remove veb_idx field from i40e_veb as a VEB cannot have
>    sub-VEBs
> 
> Tested using i40e debugfs interface:
> 1) Initial state
> [root@cnb-03 net-next]# CMD="/sys/kernel/debug/i40e/0000:02:00.0/command"
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [   98.440641] i40e 0000:02:00.0: header: 3 reported 3 total
> [   98.446053] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [   98.452593] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [   98.458856] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> 2) Add floating VEB
> [root@cnb-03 net-next]# echo add relay > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  122.745630] i40e 0000:02:00.0: added relay 162
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  136.650049] i40e 0000:02:00.0: header: 4 reported 4 total
> [  136.655466] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  136.661994] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  136.668264] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> [  136.674787] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> 
> 3) Add VMDQ2 VSI to this new VEB
> [root@cnb-03 net-next]# dmesg -c
> [  168.351763] i40e 0000:02:00.0: added VSI 394 to relay 162
> [  168.374652] enp2s0f0np0v0: NIC Link is Up, 40 Gbps Full Duplex, Flow Control: None
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  195.683204] i40e 0000:02:00.0: header: 5 reported 5 total
> [  195.688611] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  195.695143] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  195.701410] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  195.707935] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  195.714201] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> 4) Try to delete the VEB
> [root@cnb-03 net-next]# echo del relay 162 > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  239.260901] i40e 0000:02:00.0: deleting relay 162
> [  239.265621] i40e 0000:02:00.0: can't remove VEB 162 with 1 VSIs left
> 
> 5) Do PF reset and check switch status after rebuild
> [root@cnb-03 net-next]# echo pfr > $CMD
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> ...
> [  272.333655] i40e 0000:02:00.0: header: 5 reported 5 total
> [  272.339066] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  272.345599] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  272.351862] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  272.358387] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  272.364654] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> 6) Delete VSI and delete VEB
> [  297.199116] i40e 0000:02:00.0: deleting VSI 394
> [  299.807580] i40e 0000:02:00.0: deleting relay 162
> [  309.767905] i40e 0000:02:00.0: header: 3 reported 3 total
> [  309.773318] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  309.779845] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  309.786111] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
