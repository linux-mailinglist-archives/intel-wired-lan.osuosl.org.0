Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7A4AC0D28
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 15:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2822861452;
	Thu, 22 May 2025 13:48:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NmUrilr3oPVF; Thu, 22 May 2025 13:48:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD22261437
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747921680;
	bh=hmcEnUhrHc593BJNaHdgiOLbYv5+4Gg8NWVkmMIuc/w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JQ1X3HOc20n6bftGdnUg/7omuwuVE7wR0/9e2kA+K/4JsTr2q0AOpPZzxKgkTcQG+
	 H4OtFT3ogALCke7qbxbil0nw3BwxgXn7KjOXvpfVEyKEwqjc9n2d2Ip1kBHZEZnY26
	 utyV2/G/5RnABYt2tc/FemmVAMLdFFLduhokMialWNDHAWqndb72hr9ES8BkaPD7EG
	 oCEvyIwFZWIhBxMJs64XZaGbcJiHKyFrfNPPPtpiIib130MuCxopSsbBThjZa9e3Q0
	 dwkSQZs65X8RZ3xAdpphac9oIABwEUYqn15RbbkFym20ajif3GGZL4yUF8LuBgCFUu
	 U2aZG0yiMnx0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD22261437;
	Thu, 22 May 2025 13:48:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 060E0BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E106141EBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:47:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6cY3ZbbAX8hF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 13:47:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 46C3740642
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46C3740642
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46C3740642
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:47:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A9F2A62A46;
 Thu, 22 May 2025 13:47:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9AD9C4CEE4;
 Thu, 22 May 2025 13:47:55 +0000 (UTC)
Date: Thu, 22 May 2025 14:47:53 +0100
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kuba@kernel.org, dawid.osuchowski@linux.intel.com,
 pmenzel@molgen.mpg.de, Kory Maincent <kory.maincent@bootlin.com>,
 Rinitha S <sx.rinitha@intel.com>
Message-ID: <20250522134753.GE365796@horms.kernel.org>
References: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
 <20250515105011.1310692-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515105011.1310692-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747921677;
 bh=Z+6STB0mJB9ZfxXG40/d45IvVbxmdQAgRwvRZ4HssVU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C8V2N1yxhqtKwY9LWQkGqWIAMFxG17rIK8gKEqIXw8oLQJcTVZYl95N31DWBXSvIv
 l1FZ0kQ5rswjd1AjCy99mQiR47y6EFx0e7vYGGt9IXJYSoO5ovfIMsPd3fLr7q8O77
 hpvx1v2vXQjy5k2ilFeknvmRVnbLaDSXsQyhke875+2yHPCuhYiI7e8jbh8jX59lsf
 G7zT9u9OrAOJJGdInwNx88hZKyg3QCXUJq1j7oGxZGtofW7QxiGqQMALunSEZzRbYQ
 820QO48eDIMZpZhO3KsUkgXBoKVua5SSx9HmnBLdLfHwveZLcNMJ3uNe0oIpuVh2Yt
 5lD25Nb8izyFA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=C8V2N1yx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ice: add
 link_down_events statistic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 15, 2025 at 12:50:09PM +0200, Martyna Szapar-Mudlaw wrote:
> Introduce a link_down_events counter to the ice driver, incremented
> each time the link transitions from up to down.
> This counter can help diagnose issues related to link stability,
> such as port flapping or unexpected link drops.
> 
> The value is exposed via ethtool's get_link_ext_stats() interface.
> 
> Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>
> Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

