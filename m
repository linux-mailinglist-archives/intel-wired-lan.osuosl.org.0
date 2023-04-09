Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EA16DBF79
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Apr 2023 12:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D45440476;
	Sun,  9 Apr 2023 10:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D45440476
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681036458;
	bh=VSozDXkckPWx4GE+ZQxwC94sqPzh9oHks1LIKfNv2Ok=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PmppkWdHiR+r4FdFIW8vmveUiUfFGwT1wZpWZsPuPzSLnH31AfqVlT1AHrwWHeaRn
	 hM4C5r1oqJ14MTSkukhKiwBXlNnxQARGfR6RJ46pdhlmtrI8Ex5GN4EmEMMv9mBZ7G
	 cRIaha5TV6Pbj4hxbrNbIHdJc5eZ0cg3s2XplKf7XfxGJ3+4xn+eePeGA7QDZKJ0g+
	 hBcV2SqD/MEXf6YA5ItdwKv7m7Jsnl+Mvo9HZ9LRzNo7Ft/cFW4beXYoT97FJ/E7dW
	 j27AOR/1qdwO3JNLESF2PbqhvcpCZV1OW+440wk89g8PFestkHRWtN6IGRBI+J91+A
	 1+877EzG0BoVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FIsjUHXyBrN; Sun,  9 Apr 2023 10:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CA3A401D5;
	Sun,  9 Apr 2023 10:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CA3A401D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 684B41C2C89
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C0C440880
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:34:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C0C440880
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RwYqEmVcFrEB for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Apr 2023 10:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FB4D40362
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FB4D40362
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:34:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D0B2460D3A;
 Sun,  9 Apr 2023 10:34:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B47CDC433EF;
 Sun,  9 Apr 2023 10:34:09 +0000 (UTC)
Date: Sun, 9 Apr 2023 13:34:06 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20230409103406.GM14869@unreal>
References: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
 <20230407165219.2737504-6-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230407165219.2737504-6-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681036450;
 bh=iqWFymEU6hWEQa1gWG19IWc72Okfkhm8Rs5GNih9oHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IIq6Yp/4cAJgoYDx9BsgmfdagrAHimQ/mNI+FD7DuAmWksTyrr0+o3qBvJ48PbmPQ
 BLBJQtYL+oj74Nx1flKAdgdNWSmp7MZZnRKuxFu5PQG/MuqkNrR/dv8qc4Ci46duzV
 NtKEwMpTu4Q7EtACG8E6GEahp2xnvhHxqS0sBRpey8fcdQKfO21O7Wo5TLy8JXik6+
 3Pa2zWij+LfZCaKBLLQ0panr2Z927qI+6yIUOVredMojkDTi/V3n1oxu+UN1rfzcsJ
 gHfdp1r4wAV38UEJK34O8ILf2osrxCcngBdcsVTkmXhRmnfjTJJImkWsLCO/faVlWD
 vZE3RqwpmihEw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IIq6Yp/4
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 5/5] ice: use src VSI
 instead of src MAC in slow-path
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 07, 2023 at 06:52:19PM +0200, Michal Swiatkowski wrote:
> The use of a source MAC to direct packets from the VF to the corresponding
> port representor is only ok if there is only one MAC on a VF. To support
> this functionality when the number of MACs on a VF is greater, it is
> necessary to match a source VSI instead of a source MAC.
> 
> Let's use the new switch API that allows matching on metadata.
> 
> If MAC isn't used in match criteria there is no need to handle adding
> rule after virtchnl command. Instead add new rule while port representor
> is being configured.
> 
> Remove rule_added field, checking for sp_rule can be used instead.
> Remove also checking for switchdev running in deleting rule as it can be
> called from unroll context when running flag isn't set. Checking for
> sp_rule covers both context (with and without running flag).
> 
> Rules are added in eswitch configuration flow, so there is no need to
> have replay function.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  | 83 ++++++-------------
>  drivers/net/ethernet/intel/ice/ice_eswitch.h  | 14 ----
>  .../ethernet/intel/ice/ice_protocol_type.h    |  5 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c     | 17 ----
>  drivers/net/ethernet/intel/ice/ice_repr.h     |  5 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  6 ++
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  3 -
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 --
>  9 files changed, 40 insertions(+), 102 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
