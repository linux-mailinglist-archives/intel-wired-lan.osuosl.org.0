Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939E88B412
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 23:30:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 919FD608E9;
	Mon, 25 Mar 2024 22:30:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SE_KVTYockPf; Mon, 25 Mar 2024 22:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFE68608DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711405810;
	bh=tAQlwVWYFz0DCGZt++IXnhgr4sduoZGI7/seZp7kiBg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=J2d8WHOecI8jrVb6LoqiVrsdiIhn7c8TkMALdeYbc+O9tpJTJfuB6lh+qGkE8FJcd
	 3GJpRk06zyZJEVGPvqZqKaN2DbnXCSairbxlTjrxvXSivZvPJwWoNOL9xGIjVHKzd7
	 E/Ibfz3x1tcbVK0UblSJEzBbuBGCEl1B8ClpJRWy03BlnWIabwdslje6DBWiPSYX/m
	 1B4tVTg53EcpK+Fm4K/twUppEtcOAksm6BaxT/RrQ3vR6lmv50zontPmAAjYX+aOiF
	 4Gb4Dk+4dzqM6U8mhGVhhaI28eK9z2hCUafVFiOuP+3TpIRhkBa1Th+Qmg4fW/xo7m
	 HG6y02vYwNsqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFE68608DC;
	Mon, 25 Mar 2024 22:30:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A76041BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0203608CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p8Gv8SKiMhuB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 22:30:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 601E46082F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 601E46082F
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 601E46082F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:30:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B3465CE1D50;
 Mon, 25 Mar 2024 22:29:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B34CEC433F1;
 Mon, 25 Mar 2024 22:29:58 +0000 (UTC)
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Mon, 25 Mar 2024 17:29:48 -0500
Message-Id: <20240325222951.1460656-1-helgaas@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711405799;
 bh=s6f0H6C9JKUP0UFu/98JgZPoNS9zucvQkAEttBGZoDY=;
 h=From:To:Cc:Subject:Date:From;
 b=atuGH1dkaJFc6beHU9/dXrtXnZVohJuLwacVykwe7JIcmAVH5e3J1KxmkEAbeugkF
 DgKyPy0nETCy+CO7aO3A0AJYTPlWC3KigEur69U9yJeAL+t+vFhmxLHGhpCwj6WVdG
 q//063yDQXIo1H1a/2ysO1wueZ5PFmVDV3eRSraUD4ixrraJ21iKzmL5chHT2dOVTB
 3v/JzlB5MHuurUelrCGzwIZ/ZkMIqHgwxqyh6Yg0LmZ7bn3p+uTSk92LBsrcCZouDn
 mlWOMaM3I0kyyM/qX2Bj68xJQfkAET8j8pwCSUGhVuORqd4t3lBwhksArarmov6ZRx
 vY2vpxxClIVqg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=atuGH1dk
Subject: [Intel-wired-lan] [PATCH 0/3] net/e1000e, igb,
 igc: Remove redundant runtime resume
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
Cc: Sasha Neftin <sasha.neftin@intel.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Zheng Yan <zheng.z.yan@intel.com>,
 Konstantin Khlebnikov <khlebnikov@openvz.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bjorn Helgaas <bhelgaas@google.com>

e1000e, igb, and igc all have code to runtime resume the device during
ethtool operations.

Since f32a21376573 ("ethtool: runtime-resume netdev parent before ethtool
ioctl ops"), dev_ethtool() does this for us, so remove it from the
individual drivers.

Bjorn Helgaas (3):
  e1000e: Remove redundant runtime resume for ethtool_ops
  igb: Remove redundant runtime resume for ethtool_ops
  igc: Remove redundant runtime resume for ethtool ops

 drivers/net/ethernet/intel/e1000e/ethtool.c  | 62 ++------------------
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 15 -----
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 17 ------
 3 files changed, 6 insertions(+), 88 deletions(-)

-- 
2.34.1

