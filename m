Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 344F48D68C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:15:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB46E42440;
	Fri, 31 May 2024 18:15:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CfsIFqkyjsIG; Fri, 31 May 2024 18:15:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBBF14242A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179300;
	bh=IsWah/Z/8aO7rVp1J9ObexVNcQrp23Lzgt1D30Lxlu0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ckciiXf78WgPES8P0+4pQIf+vsyalI8VqWBrnqRD2qTkacLz1pmRaDsn+FRN5IIkK
	 fkznLO8osOW06jlr2MNxNPrcHTRplmAv9+MxXm82w3EoN1gm/P+pp7Ut+kAhCJLWYs
	 sKwRYFJLEL+8jgvw+B/g08B8N/vz+iDgw8l14X/TJTQ2l2/g/d07oVqumKhimHOIAV
	 qu2Z8KdAQ+2lJE8KY/JXsq4LFT1v6ymyQ7i9Mxbp9CXG4XKSAIOHT+Gfvz5sbK4dwo
	 fm2BDT/M1VbWMw4fF6pxaVjuEjtvDfo4Wx51x40UQOls6zHNEFSd6Uo3jcpcjH6mEE
	 7vx2iNBJskOlQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBBF14242A;
	Fri, 31 May 2024 18:14:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39A221BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FD6142418
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:14:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z7gznJqTph7R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:14:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 635BA423FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 635BA423FA
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 635BA423FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:14:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 805B062A12;
 Fri, 31 May 2024 18:14:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35411C116B1;
 Fri, 31 May 2024 18:14:48 +0000 (UTC)
Date: Fri, 31 May 2024 19:14:45 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240531181445.GF491852@kernel.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528043813.1342483-3-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179291;
 bh=ZZvR5hCCeOMVzuUTYKdnIXfmM8hbHFrNxoMfE4gufUo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mjviMxAxsQffthwNIBsqlxWAFBkSC2RWapDMliPhAP8tmYy+hoCO4r9oStLM4eCzz
 mYbQCz3DedSBlTQxqoZgrRfYTtYR7alHULtQzDQxgpKf+qoj6T1lJMpsM/sb4dseAf
 zUwrOIJXAr5C4VP8asF5UYNZ6kDPwaoI1Zim+i+GmMnuc2Yl/cV02vxq7i3nJ1LqnW
 ExmYuFOa9JHoOeAFU0JcTHMPEUYD8yTABmh4mSrTsYKxRakX8QhUNwLQl4CJIU2Y9/
 x2Z5vp7jvBVU7jx8nIK4mnw8NSi2NjYDL9nsMcRUYiMYUJVB5EDTb10Sd1i6qDaM0Y
 0jUKBXyp5hCJw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mjviMxAx
Subject: Re: [Intel-wired-lan] [iwl-next v3 02/15] ice: export ice ndo_ops
 functions
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 06:38:00AM +0200, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Make some of the netdevice_ops functions visible from outside for
> another VSI type created netdev.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

