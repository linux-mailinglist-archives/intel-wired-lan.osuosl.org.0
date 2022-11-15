Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC17629210
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 07:57:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C108560BC8;
	Tue, 15 Nov 2022 06:57:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C108560BC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668495422;
	bh=hiJNSQKnHPzNU6uu5zfuY0/McoorCbBiv07K3XJ8Hak=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9uSoArmn849tWBD1r2EzSZ73n/AB+pDfFDKb844ODysd7k2CD8PDR63sSeUBslfAW
	 DEcEU4Toe2umhdm409YnnuWvxjoz4dQ5AGmVnEwsME5rtvXecYMviU60Q0SdQGTKmH
	 WBe4E8yjZqrRVNwFuwAvusfJkRwOvN940vXD2yPGhS3FFhXMKfgiuElzVSNPNKvpw+
	 bAAdWMg/Waeg5dvYbKdAAmgf+yikq0ytkvJnxHwAmxF5gbiZCvV4ut/in20kq089L9
	 roIsJe9WK8zJj3QVJcLlK8Hk3zrN59b6NPj/gKwGpoZj8D98dsIaGEG4aWVKxhs8m3
	 fstRuZvvUOGAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KT9kP7N8AEh; Tue, 15 Nov 2022 06:57:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0D1460B0F;
	Tue, 15 Nov 2022 06:57:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0D1460B0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAAA31BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:56:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 765EF40496
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:56:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 765EF40496
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h02F7s5GVsPt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 06:56:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FBC740199
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FBC740199
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:56:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="338975529"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="338975529"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 22:56:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616646014"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="616646014"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 22:56:47 -0800
Date: Tue, 15 Nov 2022 07:56:43 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <Y3M4K5x/WP10apab@localhost.localdomain>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <20221114125755.13659-14-michal.swiatkowski@linux.intel.com>
 <Y3Jepn7bxkCFP+cg@nanopsycho> <Y3Jm36rYH4J1jSoc@praczyns-desk3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3Jm36rYH4J1jSoc@praczyns-desk3>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668495412; x=1700031412;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VUjNQoT1dcrn7tDvWBx0o2oRpkIBdIS+5GXB/nGQbC0=;
 b=C7z6EB+1J6MNU5QQ628aTPf22b6Oc9Xmrsh4JBLUMTFcRBnqPlDa+HAL
 9QWrCuZ4ggfKbXlLgXWXjLazc/AuHcoktS5rwUjRgqUReyyXm74kYzEeC
 Z9NY4MmZCKVzPJMSwKWNh1P3f26RzYUVPJphUd5esumI4LBbDaWeamAUJ
 gDIQ/zI6qJeTXOWg0PtGJFHVzwGAM8P1VnaxiZYL5HgxY/CExLV/swMa8
 ouKcBcvrcQi8oq8wuftthyuH9jvRz2SmCiy8IA40ncevHck0jJ1XVNr6S
 URH/wz8Krb9OjmKu7n0WenKfYgd46gmd9UkwC+B1mRfTPDtCaB0anVcu5
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C7z6EB+1
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/13] devlink,
 ice: add MSIX vectors as devlink resource
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
Cc: Michal Kubiak <michal.kubiak@intel.com>, mustafa.ismail@intel.com,
 netdev@vger.kernel.org, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, Jiri Pirko <jiri@nvidia.com>,
 kuba@kernel.org, pabeni@redhat.com, shiraz.saleem@intel.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 14, 2022 at 05:03:43PM +0100, Piotr Raczynski wrote:
> On Mon, Nov 14, 2022 at 04:28:38PM +0100, Jiri Pirko wrote:
> > Mon, Nov 14, 2022 at 01:57:55PM CET, michal.swiatkowski@linux.intel.com wrote:
> > >From: Michal Kubiak <michal.kubiak@intel.com>
> > >
> > >Implement devlink resource to control how many MSI-X vectors are
> > >used for eth, VF and RDMA. Show misc MSI-X as read only.
> > >
> > >This is first approach to control the mix of resources managed
> > >by ice driver. This commit registers number of available MSI-X
> > >as devlink resource and also add specific resources for eth, vf and RDMA.
> > >
> > >Also, make those resources generic.
> > >
> > >$ devlink resource show pci/0000:31:00.0
> > >  name msix size 1024 occ 172 unit entry dpipe_tables none
> > 
> > 
> > So, 1024 is the total vector count available in your hw?
> > 
> 
> For this particular device and physical function, yes.
> 
> 
> > 
> > >    resources:
> > >      name msix_misc size 4 unit entry dpipe_tables none
> > 
> > What's misc? Why you don't show occupancy for it? Yet, it seems to be
> > accounted in the total (172)
> > 
> > Also, drop the "msix_" prefix from all, you already have parent called
> > "msix".
> 
> misc interrupts are for miscellaneous purposes like communication with
> Firmware or other control plane interrupts (if any).
> 

I will drop msix_ prefix. I didn't show the occupancy because it is the
same all the time and user can't change it. But You are righ it is
accounted, so I will add occupancy also here in next version.

> > 
> > 
> > >      name msix_eth size 92 occ 92 unit entry size_min 1 size_max
> > 
> > Why "size_min is not 0 here?
> 
> Thanks, actually 0 would mean disable the eth, default, netdev at all.
> It could be done, however not implemented in this patchset. But for
> cases when the default port is not needed at all, it seems like a good
> idea.
>

I will try to do it in next version, thanks.

> > 
> > 
> > >	128 size_gran 1 dpipe_tables none
> > >      name msix_vf size 128 occ 0 unit entry size_min 0 size_max
> > >	1020 size_gran 1 dpipe_tables none
> > >      name msix_rdma size 76 occ 76 unit entry size_min 0 size_max
> > 
> > Okay, this means that for eth and rdma, the vectors are fully used, no
> > VF is instanciated?
> 
> Yes, in this driver implementation, both eth and rdma will most probably
> be always fully utilized, but the moment you change the size and execute
> `devlink reload` then they will reconfigure with new values.
> 
> The VF allocation here is the maximum number of interrupt vectors that
> can be assigned to actually created VFs. If so, then occ shows how many
> are actually utilized by the VFs.
> 
> > 
> > 
> > 
> > >	132 size_gran 1 dpipe_tables none
> > >
> > >example commands:
> > >$ devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > >$ devlink resource set pci/0000:31:00.0 path msix/msix_vf size 512
> > >$ devlink dev reload pci/0000:31:00.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
