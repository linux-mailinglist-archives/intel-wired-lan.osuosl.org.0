Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B806F93916F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D93D606F1;
	Mon, 22 Jul 2024 15:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TZMkLAQmtLHE; Mon, 22 Jul 2024 15:10:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D69CF605A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721661013;
	bh=NCYb/iBvgLAa1sWz20CiTCJyf4xFyTdhUzDA7B+7LxM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1BtqTP9TMwnBGTeSR8k1K66yTIo6HCPfGNLCc2iS3AqBmOJTewdPg+pW5Kp4OXN96
	 FWBUCLBGaWjqAq8LIcwbsDtEFBR2fbW+WYPF7VgG/UM6KXyH0ns4F/vuT09fZc+KTm
	 nTTjkpRLqpUblP5f/Wa9XAt0mzdAmO1k/JdMkIuPi3auO0IH7YOR/yqY5279sX1pJZ
	 fhaIZCxep3VmyGgmTvP0E7cLbDn60nTqEfmrFTwbYhC4TRJ4HX+H7GSyhS8qZ9ePXS
	 +0NHzaYfFU9ZqFXIeacERBTgLrWu9LTy1ZlKe28N7RqWUlasFZ1nKI46XttP6k0o0w
	 dBE5KgjjKN/Kg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D69CF605A4;
	Mon, 22 Jul 2024 15:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 277C61BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14E0F8108C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:10:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8fuMOu89-VVp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:10:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4A8B781065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A8B781065
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A8B781065
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:10:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 148A9CE0B0A;
 Mon, 22 Jul 2024 15:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10FF6C4AF0D;
 Mon, 22 Jul 2024 15:10:06 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:10:05 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722151005.GP715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-8-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-8-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721661008;
 bh=W0ZtQw1OwdNdI0h383e5t2oHf+aozChGb8HmPG5npVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PK4mNMWy40IliKUOTohGdefK7PxA3mVDq6jpIhrHOQW+t85WOxDb3b9PcVxJEJPiv
 JVoLPcZjlkjoQXbxh1LuFt1eBLZDvydouyB8c2SyTNodZ5ISdSB0JiImo6K9BpR8wO
 +agh+HWTx/TldyY3tAHUimAfthw3wa/1OTVZzMg3NaOaujnnBx5lzX4++nuD0RM62U
 bubA1mReFqtq1T0kmXFdPtgbFzwGLAP6yHyMoR8h1XRVbnymfXhhvdJazx7oOindG/
 XfHDGyyCCVFhPze5xm/ZqydKAHvPGdlhL40jsgUFf48c4I5JiF0Hnh243wYJCdRK5c
 xpintjuYEAJTA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PK4mNMWy
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

