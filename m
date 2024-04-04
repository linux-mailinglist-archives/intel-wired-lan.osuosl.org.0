Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FCB897D7E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 03:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1B3D60F27;
	Thu,  4 Apr 2024 01:47:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vq10Y-OGh2zm; Thu,  4 Apr 2024 01:47:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C42360F12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712195273;
	bh=ygC0LU74/SPDAZndKw4spPu4awqQNHLrpVdnDmcBzRo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2ddl9IZw7s96YnQFM/PhwZjhaCqMg389/SVlKai08IpxXG58UY1m5aVY48sDu3FMm
	 B/f2wvK0XrMk6CJqzv+9yU0bybXKQDNXPBgrocs9DfvPO4qqZV7ET9XTQ3dnha8wmx
	 KbI8BWpD3Z/RM6X89TJ67mdXPCtx2kb16420LnuUe1AJnAaU/ZVgyqn8rylvoxl3ET
	 DOq8zwpu8BMnT2LvEb4SSl3JUa85bBhB+XLDayOQVardCGr2ljfjUPe/XtPxFj6TB8
	 w3W7uWbMZ7nogIcYj1+XrdqIUjSJAT/92EV4EtY3j5d67gDIx5fnx2S1Gb7IlXKCmf
	 bf//Kd+1AQeLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C42360F12;
	Thu,  4 Apr 2024 01:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52DF11BF33A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 01:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D82B418A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 01:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EwtxN4SgjP93 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 01:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 466FE418A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 466FE418A0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 466FE418A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 01:47:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 52A9860F0B;
 Thu,  4 Apr 2024 01:47:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F86DC433C7;
 Thu,  4 Apr 2024 01:47:47 +0000 (UTC)
Date: Wed, 3 Apr 2024 18:47:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240403184746.178b2268@kernel.org>
In-Reply-To: <20240403131927.87021-6-mateusz.polchlopek@intel.com>
References: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
 <20240403131927.87021-6-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712195268;
 bh=9N46xWif9hh0MBJJT6rUfQjHmQF7goXuFQxvhTk8gRI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=j6xtExnGsFFlKTzChZfmUzPX7QnANskds4SRvsh24CQ9+pQU2MYeQ+WXvSnjXYJEV
 FeZiYs5jxF/56bqH51PuFW/WK4me59YtxMCDtyEfZFZ18oMmb25i8A+6ZDj6zEADLI
 Nxaxw4TVErHr+imWRb8apLbBUSdoz2ppvjtxJ1l2Dz7qA6+OJDXvRERSKaFAgiBPM8
 jvmakBkQ4oxwuYmeEfj1h4traCcV42FMDSX5/n6nJ/11dzv4a6iRIshjqHx356XfDO
 aYsNb0VrAGFssx24jVmb8bVNFuCSENcUKHQmIdtytaR6jx2u48kqjASnurH0yQKobz
 LPDuQ0qVii7EA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=j6xtExnG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 05/12] iavf: negotiate PTP
 capabilities
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
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  3 Apr 2024 09:19:20 -0400 Mateusz Polchlopek wrote:
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -145,6 +145,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
>  	       VIRTCHNL_VF_OFFLOAD_CRC |
>  	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
>  	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
> +	       VIRTCHNL_VF_CAP_PTP |
>  	       VIRTCHNL_VF_OFFLOAD_ADQ |

coccicheck says VIRTCHNL_VF_CAP_PTP ends up on this list twice.
