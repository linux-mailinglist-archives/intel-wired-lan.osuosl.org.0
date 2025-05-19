Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DBCABB833
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 11:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 551DB60ECC;
	Mon, 19 May 2025 09:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6VY_seEze4VH; Mon, 19 May 2025 09:06:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC03F60DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747645619;
	bh=BRvJMmaCO0QV3QyU53c6Wr96/0gQ66HLwf4SDfc4Bvg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aYPx0sZ3GRXPaRUEyfMNDlN+PK98nfdG6QoztLNnmajKAFdP2w0rx6Jb9ueI3t1qa
	 a/5GaJjNFuHs9x6Avh3rRLV1LGMJHdmSlQ9CD+VLzsfmhP1vhtFNC1Py+RtIs//dQs
	 Vg2c4tZeUVYX9hExv06bb4cQwgtxriGraGxapl6YExmCdOCHIJlGjelb3dqnLRcPvZ
	 6ER3vFh9cU9Cx1v0cFJgtBNiqYbMcO/H9tk7fZjMOAow45ThwfmcJgOxpHIxYlBPV3
	 +JFlQvJhqj4aMRPkC2Pes1P1Qw+H3xn8iCp9vMNylKwMAGIkE/2vEtpe0wyYi88Fht
	 O5RTJDtE/Rh6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC03F60DF9;
	Mon, 19 May 2025 09:06:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 251DA193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E514080EB1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9_-A96aImTQJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 09:06:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 01E6580E71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01E6580E71
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01E6580E71
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:06:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 72E566112E;
 Mon, 19 May 2025 09:06:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32372C4CEE4;
 Mon, 19 May 2025 09:06:54 +0000 (UTC)
Date: Mon, 19 May 2025 10:06:51 +0100
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250519090651.GB365796@horms.kernel.org>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
 <20250422160149.1131069-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422160149.1131069-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747645615;
 bh=ck3iCsPvj/FKaeZ74qAqaYo0PAgfNPbgnOH3LG9nXnk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BJgOGFcN4uZ0DWBCd1yNLLsgDZawdEzCa7LXrXPETpH3NtxMKdjXyNpOzq6B/6z+W
 bX9liUB3IlM2lQ4fTlvv7954bOQyoSr6FuOWl5ovWYhr8ytRydibKnRxmsoJsFKytO
 sBTRnUbbpp/MNCtZCwaSdaYwUjrklA8XMheQOyGgNrtuL+y0pGJRLSCm35T1Z1L2zZ
 1Oqb+N8k6JZb84Au3//9okXwa6nrNK3E0F1Q5YzFkVBw1sDVpiXyv12ZuIDE5VgCnp
 rV2wLHFhX6zWx8cMn6LcfyZelk941Rbfc8MjHA49VJwBfMB1LMoYRbdp1tMIx7Ct6Z
 gZeXIgAXaDPaA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BJgOGFcN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/3] ice: redesign dpll
 sma/u.fl pins control
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

On Tue, Apr 22, 2025 at 06:01:47PM +0200, Arkadiusz Kubalewski wrote:
> DPLL-enabled E810 NIC driver provides user with list of input and output
> pins. Hardware internal design impacts user control over SMA and U.FL
> pins. Currently end-user view on those dpll pins doesn't provide any layer
> of abstraction. On the hardware level SMA and U.FL pins are tied together
> due to existence of direction control logic for each pair:
> - SMA1 (bi-directional) and U.FL1 (only output)
> - SMA2 (bi-directional) and U.FL2 (only input)
> The user activity on each pin of the pair may impact the state of the
> other.
> 
> Previously all the pins were provided to the user as is, without the
> control over SMA pins direction.
> 
> Introduce a software controlled layer of abstraction over external board
> pins, instead of providing the user with access to raw pins connected to
> the dpll:
> - new software controlled SMA and U.FL pins,
> - callback operations directing user requests to corresponding hardware
>   pins according to the runtime configuration,
> - ability to control SMA pins direction.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v5:
> - stop pins unregister for not present SW pins @E810-LOM NIC.

Reviewed-by: Simon Horman <horms@kernel.org>

