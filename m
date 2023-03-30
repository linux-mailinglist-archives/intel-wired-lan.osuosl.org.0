Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036186D0CB8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 19:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D2D341E85;
	Thu, 30 Mar 2023 17:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D2D341E85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680197117;
	bh=utqqDcZIx8+7/MVnyTfNXcxe2tP7q+WLDCaXcaC+qnY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vhOh9F+AziUnMwoMCUD72To/MyCLNsfe2JVGcn3rhAsMk0gWXhZYPxvy+BUsXaurg
	 8AfGZVXy3D1rb4wI2hJqMb4JAssqKcrH5m+02dCAmit08crjQjlZpG7lv1SAC6y/IJ
	 EGuCo0WT3m2lJ/repa1O16urxFgcdVgsgXCWMTdPHu2kwTW41yjkWDHyQGCqAFJdRT
	 yxO/9O5h6EhcpYzDk8nN0iKnEM4WWqgSC9WXbjpFMbr+kihjTRZwTETOLetqL2QwUA
	 x4gv09JhJxKCwXu5iwbHNDMHAv2/UxvbWq7eCZFK0reK8KRaag3CvQX7RZhuiuZlVQ
	 z1Xjc5hWBwG/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJCxcWvhHx4E; Thu, 30 Mar 2023 17:25:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D8DB403E7;
	Thu, 30 Mar 2023 17:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D8DB403E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D60101BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA6BF61674
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA6BF61674
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eRgBX3Pm4p2z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 17:25:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF23B60B78
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF23B60B78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:25:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C36F5B8233F;
 Thu, 30 Mar 2023 17:25:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E187C433EF;
 Thu, 30 Mar 2023 17:25:06 +0000 (UTC)
Date: Thu, 30 Mar 2023 10:25:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230330102505.6d3b88da@kernel.org>
In-Reply-To: <ZCV6fZfuX5O8sRtA@nvidia.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <ZCV6fZfuX5O8sRtA@nvidia.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1680197106;
 bh=YM0v4eaeKHQ1bnz6FwcmsrLI1BUtds5k0Ahl7g2zAnQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WsB8ItIbbwOflodLshtDZCnJen6ZRl9S2NZPgmRHez/jnfHH8Z5qwu9tgPLr2b0ie
 bzSLDHC8c8cSbPVTapJRyTXLewIEsLGJI+UmkyApwaKLOMkbNiZPKQeKkyTM+gStAF
 Z3NHsjF+iwpbKDcFsHer3HpLl7JxVGSTGt392YhjCK6KzuyokPKzkVgMzlWQ75BrU7
 +4D50Dx7viNTpADeevNyrGxbqOhtEZs3Hg6TLA2F5p/b7WxYjtFTYh6kuMMyuWEWQS
 a0PWgk8MPUZKqG3cZw9Z7q47wiDOrhq+nney5oIAXleUKUI/FTBkukTRnkLMiEdFQ4
 OJFzg95Sib4bw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WsB8ItIb
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 intel-wired-lan@lists.osuosl.org, decot@google.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 30 Mar 2023 09:03:09 -0300 Jason Gunthorpe wrote:
> On Wed, Mar 29, 2023 at 07:03:49AM -0700, Pavan Kumar Linga wrote:
> > This patch series introduces the Infrastructure Data Path Function (IDPF)
> > driver. It is used for both physical and virtual functions. Except for
> > some of the device operations the rest of the functionality is the same
> > for both PF and VF. IDPF uses virtchnl version2 opcodes and structures
> > defined in the virtchnl2 header file which helps the driver to learn
> > the capabilities and register offsets from the device Control Plane (CP)
> > instead of assuming the default values.  
> 
> Isn't IDPF currently being "standardized" at OASIS?
> 
> Has a standard been ratified? Isn't it rather premature to merge a
> driver for a standard that doesn't exist?
> 
> Publicly posting pre-ratification work is often against the IP
> policies of standards orgs, are you even legally OK to post this?
> 
> Confused,

And you called me politically motivated in the discussion about RDMA :|
Vendor posts a driver, nothing special as far as netdev is concerned.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
