Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 458C087F0B7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 21:02:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD42460807;
	Mon, 18 Mar 2024 20:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZbuwhIC_xekR; Mon, 18 Mar 2024 20:02:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 057CE60818
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710792147;
	bh=4Nif+R+uIeAEicEQtBLuFIAt04fj4KzhHhsjSDA4fK8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dgqdsbgivgZyw84lqwcRcfT7RLitw17iBdOLp/e3ZjS+/uaJCf6wZRr+chlWZf9kt
	 Eoo79RJNmpVLwSutHGY415R2pdWRu76Wes7yB2/p/+E3ftpESTIEG182q9kbCQ+pzo
	 A4X+wXehI6mKWnaXxwOC0GYNrQODgDVQLa5NNizLdPkfsKu+t3isEiGY4NLXBA2dqa
	 ngOIRvtgtWZSBlHwrHlTr+6mWBJVt5GBkQoQij2wScwSeYseIgadXeoCjObbc3DbHW
	 xOnlO05TK9h/3mq4sjV5y33BZ+76h5LI3Z2nTITN20FPIb/L2xS2Qcdxubnd+WU3rt
	 yKVRqqO5tL+lw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 057CE60818;
	Mon, 18 Mar 2024 20:02:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CFEA1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 20:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0830581452
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 20:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qU7EJBuZJ2Vt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 20:02:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 66F9A8144A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66F9A8144A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 66F9A8144A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 20:02:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id ECD9560D2B;
 Mon, 18 Mar 2024 20:02:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DEC5C43390;
 Mon, 18 Mar 2024 20:02:20 +0000 (UTC)
Date: Mon, 18 Mar 2024 20:02:18 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240318200218.GB185808@kernel.org>
References: <20240308113919.11787-1-mateusz.polchlopek@intel.com>
 <20240308113919.11787-2-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308113919.11787-2-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710792142;
 bh=4M30qJs3MhfwH6o1pNlm9jq/i1wEFxv2FMm/CPETW/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kORWP9pQFM9AzKD5QcuSi8LIAmHK/Tr0ixrLcuhvlOiIgnPM/VTnimS8udP1Ec5qp
 +HCa/Lyi/cSr4yQb3I2WsHxPtpt4CoGXOQ5p2BpvB+4amJy87ADb+x6O/YD+mvCnv4
 oYrs0epOAYLhBhuh0cG3eBBfgEt9ASB4KV4BYqTXeFSM37hooYFvis2jNZwFPQJsfJ
 2yNzVCAob5xofUoFcoBrgaDhaX07vw+1IocZe5zc+GRTAxFSY/Nr+76Unoha8R783k
 3SZGawFEEgdF/Je2xJ0rBb1vpp4w7bOniPxUYUTbU9te1wfx2wcG1mTHzQahDLDnh6
 xHZAGszKndZbg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kORWP9pQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 1/6] devlink: extend
 devlink_param *set pointer
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 netdev@vger.kernel.org, lukasz.czapnik@intel.com, victor.raj@intel.com,
 kuba@kernel.org, anthony.l.nguyen@intel.com, Jiri Pirko <jiri@nvidia.com>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 08, 2024 at 06:39:14AM -0500, Mateusz Polchlopek wrote:
> Extend devlink_param *set function pointer to take extack as a param.
> Sometimes it is needed to pass information to the end user from set
> function. It is more proper to use for that netlink instead of passing
> message to dmesg.
> 
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Hi Mateusz,

FWIIW, I think there are several (new?) users of this callback
present in net-next now which will also need to be updated.
