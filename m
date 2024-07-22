Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C33FE93915F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76553605A7;
	Mon, 22 Jul 2024 15:06:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KD6N0VqZEWY1; Mon, 22 Jul 2024 15:06:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924D0605A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660817;
	bh=NCYb/iBvgLAa1sWz20CiTCJyf4xFyTdhUzDA7B+7LxM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tjEVG5Wz5hFeZ0kPC5UntM4M8zeEuYgIRfCr7m28r8hXJ/+r528ZkP+forYqj8ZzQ
	 JnllvHROey9yM8WJnOMFf/oV5EkC3T7o2wBFD/04rcMuimub7kmazBwcZOJNbuu8WA
	 Q4NVE4NX9mG1QeWtoRb9VrdFLlApXTXdlIWxVNnx2OoX7awZkO6eTa3zb+PAj6bQ5J
	 3w/DW7AEDsPu+YmA3r3krK7Z1c2BfFnJ4qT+Dfk0a/LwudAc+bVGDc9nhA2rhKXK6n
	 VUvUEh1PVF9w1Qpi/io+8GehVrWpq6z5K9TSTXMa8IbJWccuwMR6JtOJLVTqNtwhn+
	 CAhWPGNa7yEJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 924D0605A9;
	Mon, 22 Jul 2024 15:06:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 308B01BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CD4A80EA7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uy1hJMORpEIy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:06:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6CFEA80E46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CFEA80E46
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CFEA80E46
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 98BEE60B5B;
 Mon, 22 Jul 2024 15:06:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5BE7C4AF0D;
 Mon, 22 Jul 2024 15:06:52 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:06:50 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722150650.GO715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-8-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-8-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660814;
 bh=W0ZtQw1OwdNdI0h383e5t2oHf+aozChGb8HmPG5npVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gGAeyWCF23RCcgVIJxWdFiHzw4kVXyPBA1l8xVdv6CmMw8HGb75IjhkEMGLRZUJnc
 FHVpnFPAOzr6p7tP6Cvcw9NjDMNFSFQXEYABbXbPRWhlQsFNBlOw/tLS2YvCCbfoRs
 CcCmZtDKEg4ow5J8vjNAUklvxerq2b5wu4GIBT0MrWklvYa3MNhdEYet1f/tKq7ykG
 YYgKpI40U6jdIJ9UIsXlP4fqqZh2s45jbL4C8IdmnyxZ2QCzGfQ0HNgKpn1MfHPOI1
 pv8KCxSC+o73strawcqcPG7rwduB7KLY5DLIvTkKUAw+HBSe1+nswlbpxqVZ0EeG7C
 GPZMegc0xTGiQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gGAeyWCF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 07/13] ice: add UDP
 tunnels support to the parser
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:09PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add support for the vxlan, geneve, ecpri UDP tunnels through the
> following APIs:
> - ice_parser_vxlan_tunnel_set()
> - ice_parser_geneve_tunnel_set()
> - ice_parser_ecpri_tunnel_set()
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

