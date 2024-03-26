Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5811988C541
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:36:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04781407F9;
	Tue, 26 Mar 2024 14:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KZNqlKkHxb3H; Tue, 26 Mar 2024 14:36:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C8E840800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711463770;
	bh=z9Ns9Fv8nSShSPTfKy/EiXntGsk26cM/LR2PUVAHE8A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f18ZvyxkFDYUYweo37GPDsu/5S6SgxFFtuiY04ro2hClkSGFHfvBggnP1CzBBI0/7
	 D9vrdOtXhM+0NhMndj/MLSk81P6qwyQggemqOVHH5I6UO9DSFcsAmylnNQMmPUXAPP
	 N+T4dRJAr005ez9SuClbnAigkom5gpghhheB8AxNouqvIH4vpf2iVujVceqEwzmTuB
	 pC+1/HDBqjR0SeDGx9Lh49w/51zVxs+te59HX+RwbBj0M0GoXAsK7Mana/2z3PUqAP
	 E3/5pKMZQJroxnXejM3qmFZy50Wmo8uLFqFjmHGGknowFJt2RVHiF6nAuSTZWG4K9b
	 P9O5R1LhYTtBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C8E840800;
	Tue, 26 Mar 2024 14:36:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C35D1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 561E160836
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:36:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OANJ-C-l-2v9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 14:36:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AA76F607B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA76F607B9
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA76F607B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:36:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DEF0F6123F;
 Tue, 26 Mar 2024 14:36:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7787CC43390;
 Tue, 26 Mar 2024 14:36:02 +0000 (UTC)
Date: Tue, 26 Mar 2024 14:36:00 +0000
From: Simon Horman <horms@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20240326143600.GZ403975@kernel.org>
References: <20240325222951.1460656-1-helgaas@kernel.org>
 <20240325222951.1460656-3-helgaas@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240325222951.1460656-3-helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711463765;
 bh=T8xVXkMmTHcXVBfih/lyulMOMgOEEKuUVkaSFMpq/h0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fwxxIuMlcmMjiYy2E2+Gui0I7rU3vuw/GTXmGcHrjCjPQBzYSCqbHrS8coW9GcPdE
 eBunKhyWoTi3rjx28+dTHxKzljq+4SAGc28Rh7GTwos0zZwc3EIOa5gvsJ2KrHkyVL
 jPQ6/03CrtKIengXLAN2vU6iPoa3DWmP/pAAYZchH2zxyU+GWRwRkUYLuQ/N3abShp
 I7VGiAVD60hgYzz6HQxNWYK0J+BwMzLRCGNiXiYIdxbmPai4g8HsvlbPKy61dd6rgY
 WX47PiVKO232bk2iELiZ4v4R8+dLtmGScst2XPf7isSd/30DpyWNMH4jQPImmP1sW5
 FUtmXRhESu/JA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fwxxIuMl
Subject: Re: [Intel-wired-lan] [PATCH 2/3] igb: Remove redundant runtime
 resume for ethtool_ops
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
Cc: Konstantin Khlebnikov <khlebnikov@openvz.org>,
 Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Zheng Yan <zheng.z.yan@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 25, 2024 at 05:29:50PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> 749ab2cd1270 ("igb: add basic runtime PM support") added
> ethtool_ops.begin() and .complete(), which used pm_runtime_get_sync() to
> resume suspended devices before any ethtool_ops callback and allow suspend
> after it completed.
> 
> Subsequently, f32a21376573 ("ethtool: runtime-resume netdev parent before
> ethtool ioctl ops") added pm_runtime_get_sync() in the dev_ethtool() path,
> so the device is resumed before any ethtool_ops callback even if the driver
> didn't supply a .begin() callback.
> 
> Remove the .begin() and .complete() callbacks, which are now redundant
> because dev_ethtool() already resumes the device.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Reviewed-by: Simon Horman <horms@kernel.org>

