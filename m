Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 970038D68CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:15:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BA1342419;
	Fri, 31 May 2024 18:15:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PLvHHeR6kekX; Fri, 31 May 2024 18:15:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2E0242428
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179348;
	bh=P4Jar4elsIrTac0fDWy7PUfgRUAzuJ8CA/GPDTymtvs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KQ5JabP+8e4HxxiHIu22GhUWCDUANjbZEX5rAx4uxk8ayBJafWN9Rd2UQUMkYS/Eb
	 jVMRZQCYe+LCQ3WpvpWVMz8x8U5E8yJTAZkdYZMc6gZlZI8yr5Bys2w2cswabf9sid
	 Ck1r3rp2G8b4dtMBscyX3QdeC6dvxOMJojxP8ujMSh9PL9+mBrcGU5+AS1ME0MPUUs
	 wUf6qgT9EENlqyvoaEf8VkqoWpG6dtKmQZDwGDLhYSw5KV3L7TQ4eyq/wwYMK5+eMx
	 ENOHMpG/WSpgZ5oldz9A9DUao+9Q+GD8tpQGaWSAJIZ/UCU8ArM4oYU7S7Lfg3X0Xv
	 tXB7sHkx0Vp6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2E0242428;
	Fri, 31 May 2024 18:15:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAB8C1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C47B0606CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:15:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ypjrv8qaSZjQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:15:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 33A8D606AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33A8D606AA
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33A8D606AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:15:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 120F461A77;
 Fri, 31 May 2024 18:15:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE1FFC116B1;
 Fri, 31 May 2024 18:15:39 +0000 (UTC)
Date: Fri, 31 May 2024 19:15:37 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240531181537.GI491852@kernel.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-7-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528043813.1342483-7-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179342;
 bh=ojbqQ4rQj8Z2yW3x5JqcO+0NbTOfLU9wZRZbY34oNd4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ODUiJLiUWJDMZ3zU457/PkLvLlTaEL5yeL/sjc6NSNx24gmI55S+ZFkHoE7iqO4AN
 YucnV2o0gTkaWAcH5iZbmlhW+8Q8ZqxxPi1r7uMG2qTQrjPuMU+gOvZ0XDbuXAFI+d
 jBOGy7dt3DZuO//KdS7G4eRufwYV5OkjYsi0VVtECQuT/O8D2/xuCElR4LaeqEX+/Y
 jx7yIPlpfrjnQEF2Mpj3RD5UZ020uU6zEj92mFCqOvsGLxMf8bPUWb/MfkEdSpaIEq
 qMtJ0ZZhao97svp9JGmJSSy61+cgTP+I/gx2yFdEoJRQv3V90nK3E2AiDzF6AKDYbt
 b5qmBRZT2Cw6g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ODUiJLiU
Subject: Re: [Intel-wired-lan] [iwl-next v3 06/15] ice: base subfunction aux
 driver
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 06:38:04AM +0200, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Implement subfunction driver. It is probe when subfunction port is
> activated.
> 
> VSI is already created. During the probe VSI is being configured.
> MAC unicast and broadcast filter is added to allow traffic to pass.
> 
> Store subfunction pointer in VSI struct. The same is done for VF
> pointer. Make union of subfunction and VF pointer as only one of them
> can be set with one VSI.
> 
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

