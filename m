Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24856A14C07
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 10:19:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 847F460F9A;
	Fri, 17 Jan 2025 09:19:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFgBNaMQUdtb; Fri, 17 Jan 2025 09:19:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6781F607D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737105551;
	bh=hfb+PQWQcHJj44K8vaZJz/V/YLS8+nsHRLvZVHK/L2I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m6L3mx7Ya/ju8O4UgJd6N668ijYJJD9xVLxlZKbp0MLV488Epl8SrdulJIxTUddwF
	 k2xc/KE74qmcj8L50wtbvoWBemnXLI9OreDRc9oKIbZG7bncRwRUBpHPOujGz3a41B
	 miy+K7ObUj2W9RjZ1U3c3+Ghy7gnGrPw8S0yBYsmQCm0cOd5ZZjJrHSW0CS5o/0qx4
	 iykLJWgySo0sJt8kWxFmQu0HDzt+QtuGlRQbnhgdGGmWtl0YJVAUKg38kGo+SdEESb
	 qyAiTYGAW8wa+I3dPJkj6NV4XMFZWCJVjmc3sBJrXReYkelm4g5otBqaL0oUodnveJ
	 HmDQ3b4PpxOWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6781F607D0;
	Fri, 17 Jan 2025 09:19:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8818631
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 09:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 677A160706
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 09:19:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MFmHZGBvzxGD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 09:19:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 809586078E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 809586078E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 809586078E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 09:19:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AC8C15C618B;
 Fri, 17 Jan 2025 09:18:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 391A6C4CEEC;
 Fri, 17 Jan 2025 09:19:06 +0000 (UTC)
Date: Fri, 17 Jan 2025 09:19:04 +0000
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Madhu Chittim <madhu.chittim@intel.com>
Message-ID: <20250117091904.GH6206@kernel.org>
References: <20250116135530.94562-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116135530.94562-1-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737105547;
 bh=wqo7SEaByFKABJSnAUbDwqbXNEFLOMEevJ46ECs1yHY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lg6TTR7lyjVvvf6pr35aZMpxRh0C8Zq23wzuhzMRfzJ+iCNtGeFpDKyTlDvsyMn7t
 6mfqfEAYVFmu3qpoF4gCfGWbLEHFw/RtLLqcBegnfUPayHQgl+TRO3rQOS79JksaIA
 qCfMtMtUYEJQ9uPt9/QSBCG0wNPLlRKxUaHyWsDd4jieJOSXrVq9X3rbPfPhwjkONY
 1zTMnz0V0fc00ebjeT7KhUspVzfJkbYfdPmw/l5bh2jdfK299Z7ojNke3Zu1TMKfuD
 x8IzY6QV2TjDUJ1hwAbE2ZpQsbO324AMuoPYowzXeo9VncGoDb8v0T2ATIpa1YNg3d
 nzs0WaFjkRS/g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Lg6TTR7l
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: modify vport_cfg_lock
 to be per-vport
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

On Thu, Jan 16, 2025 at 06:55:30AM -0700, Ahmed Zaki wrote:
> The vport config lock protects the vports queues and config data. These
> mainly change in soft reset path. Since there is no dependency across
> vports, there is no need for this lock to be global.
> 
> Move the lock to be per-vport and allow one vport to reset without
> locking the rest of the vports.
> 
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
> depends on iwl series:
> https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=431435

Reviewed-by: Simon Horman <horms@kernel.org>

