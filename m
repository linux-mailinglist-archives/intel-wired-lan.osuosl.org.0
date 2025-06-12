Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1DBAD6535
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 03:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE04E813D8;
	Thu, 12 Jun 2025 01:43:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fr6RRXT58CVX; Thu, 12 Jun 2025 01:43:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F4F1814EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749692632;
	bh=LjwFAIBoJN2DFCOZK3YQK/MaS7Ur4DjiuLDzXfrUQhU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E4+JajMHvpd6Qd9U200z7URtKFRL42MyeKprdyCEPmZD3jegxjHVH464M9EY0lb/x
	 dQ1SCipyj4gQXp8bB00VrUPr/nVS3u3tDNuul18EhJOhp64VxIZnJIECVNogiw+VAh
	 H9lZ/d+AgMvd4QouymLyyj+7emBvIeCcl8Wi8B+z8EP8esMblcF2Zk+joVBNsnekgs
	 6Yf4ezb5ZMJb6CMW0IisYPahdPP5WAu9WOKYqkMgxrKFAfcR31xV5Gdab2qw2RvQeK
	 fqvccsd1m3rnGPu4Q+3ixEbtdQ4VWa5lTceFqG0/OqdncWytfxRQhr7SPOTZywEui+
	 tynLChFZLzmTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F4F1814EA;
	Thu, 12 Jun 2025 01:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22B07237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 01:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1489260A6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 01:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CapPKz7jHYod for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 01:43:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7BDD4606A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BDD4606A6
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BDD4606A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 01:43:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id F2DC6A51B55;
 Thu, 12 Jun 2025 01:43:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F823C4CEE3;
 Thu, 12 Jun 2025 01:43:46 +0000 (UTC)
Date: Wed, 11 Jun 2025 18:43:45 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org,
 ruanjinjie@huawei.com, mheib@redhat.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org, Cosmin Ratiu
 <cratiu@nvidia.com>
Message-ID: <20250611184345.3b403ad0@kernel.org>
In-Reply-To: <20250610171522.2119030-2-stfomichev@gmail.com>
References: <20250610171522.2119030-1-stfomichev@gmail.com>
 <20250610171522.2119030-2-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749692627;
 bh=LjwFAIBoJN2DFCOZK3YQK/MaS7Ur4DjiuLDzXfrUQhU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lSaj5qBTgjvlHyd9hDez5o6TNERrsmupKiHUlCAhlKg4ETATeVKt5W/jmAYbkfOEw
 3CHzvNrBX5+udhVCa+fZNmW6GQPQ8s7XGYLVBxqUo598mZSUE4zwADcDKP3txgZgMT
 2zKvnAgkHWpVmKlhNcJ95NhyE/PSNUCWbLV2tjKpqjxwWwmZAPazpmfU6+T8K3whlj
 4RwgvEi3Rqmb0VuiPl1gcIeZIf+F2/0/sVIhLyPM/pEay/LGrVb0uNCJivCCoZzfPB
 87UlI+Pudwnx66ZybIKu8CYxC+Bo0raVTtijIOO0susUCCJBT5DwX0NA9g+ekbiSwB
 DtCzRXJhnIzvw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lSaj5qBT
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/4] udp_tunnel: remove
 rtnl_lock dependency
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

On Tue, 10 Jun 2025 10:15:19 -0700 Stanislav Fomichev wrote:
> Drivers that are using ops lock and don't depend on RTNL lock
> still need to manage it because udp_tunnel's RTNL dependency.
> Introduce new udp_tunnel_nic_lock and use it instead of
> rtnl_lock. Drop non-UDP_TUNNEL_NIC_INFO_MAY_SLEEP mode from
> udp_tunnel infra (udp_tunnel_nic_device_sync_work needs to
> grab udp_tunnel_nic_lock mutex and might sleep).

There are multiple entry points to this code, basically each member of
struct udp_tunnel_nic_ops and the netdev notifiers. In this patch only
reset and work are locked. I'm a bit confused as to what is the new
lock protecting :S
