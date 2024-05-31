Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE998D6B0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 22:47:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91E8D846FB;
	Fri, 31 May 2024 20:47:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1I2lKP4jNcao; Fri, 31 May 2024 20:47:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0C1F846F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717188435;
	bh=OdJFGM89FGwH1lzQMXBZNQI8fDM4jNWhMwM5F+Rp1t8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ftrzQCR+ykfPmCBACWzjf5hy6IWmtwU3PW5/LJjZWPA3DvTSX9ZSW9SPyYdg5s5SX
	 bT2JGQwOuhKhY0B5ApkisDboy3y9uDjZ96zZ2OoLRThi44z9xytzBXdNYpR8/vJiCA
	 rUcEawN2/sbL5VwoTVaofLfSZqft4LKYNoNCPCT0z3H5yLfrE5WdfdEGZwbryIM1yB
	 B05c7u6Apv1zIxDB74LIgLbXOourRF+lJfDi+4BNvcKpXrP7jO+zRO6qsPS9IcYNoE
	 muHD2mIY1NcEKrGKznp2hViQS2qds7W7uiICB6BbAW8XhXNeDgMKHFnbBgGi/1ak7I
	 gI3s1Q+AcSJOw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0C1F846F6;
	Fri, 31 May 2024 20:47:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7611D579B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 20:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55DE360777
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 20:47:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id at1YKuivPA7B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 20:47:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0E0B1605FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E0B1605FA
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E0B1605FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 20:47:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9E30060C01;
 Fri, 31 May 2024 20:47:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF3F2C116B1;
 Fri, 31 May 2024 20:47:09 +0000 (UTC)
Date: Fri, 31 May 2024 21:47:07 +0100
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240531204707.GV491852@kernel.org>
References: <20240520103700.81122-1-wojciech.drewek@intel.com>
 <20240531183605.GS491852@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531183605.GS491852@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717188431;
 bh=N2OLLR+a9Z2gK8vMsAEx2Y+IPXBoYuCzkY4i8KvEMQ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u1jnCmwlxZDkvQQQmVhhQkQhTUapCkuhI1uQw1v3sGmqLwJvOwJvB1sxki4Id8sJp
 1tY0aTnsjR+Qr6jQ8nJfCqwSAnU25dVxY3B9JuCBISFJxQYzDmWvcbuUi9FDJDZJWO
 g6rSRSQuPe8o8pcbTbytU8GSbeg5tZBeYRxL7GgcIaK9tRK8fQrGNX+wSIYKU3uYSx
 clt2YIGc52gjByuPhTFS/XtUb3rvpwaEWkgD8Vvc68jFKPGtzb9rsbOKVVsjzPRWuA
 FcE5NVaT4JMJpmXDXAqC4toHxddUksciIf6jsZ22jl9j0RxVkGDv60MI0o2GB2ILp6
 gA55vANa6dyfg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=u1jnCmwl
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: implement AQ download
 pkg retry
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
Cc: netdev@vger.kernel.org, naveenm@marvell.com,
 intel-wired-lan@lists.osuosl.org, bcreeley@amd.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 31, 2024 at 07:36:05PM +0100, Simon Horman wrote:
> On Mon, May 20, 2024 at 12:37:00PM +0200, Wojciech Drewek wrote:
> > ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
> > to FW issue. Fix this by retrying five times before moving to
> > Safe Mode.
> > 
> > Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

Sorry, please ignore that.
I seem to have managed to respond to a stale patch.
