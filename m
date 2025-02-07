Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5043FA2C41A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 14:50:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C643A704AE;
	Fri,  7 Feb 2025 13:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id erbyEnvgihvW; Fri,  7 Feb 2025 13:50:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C873D6FBC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738936216;
	bh=S+lsjWyw+nz+SF3V+dmblzSnVfJVJjaxzaNsfkDsaxw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3fP2QETLjf47Di0ap6l3XCIW+DjiOfGfqE9TYcPuZtKaP4B76jwIXvJFnNnqmR9eS
	 nZ0T6HhXQwvQyYT5xRziKPicd+49fVEXUDVJsL0v4QepM69NvX2yYDwd0yKzQkNK8V
	 lV1lm9EWNrrchWrIy/E0AKx+TcmY+NaIyrwz4sOJn3GBF9OdCGda7sjmSaM+FsVkXI
	 BdcGaE3AVST5wj5BL0YlFU5WcnGqll2iFCO011ZpAYR2L5Cc7EKs2nE06MJzpqlQSt
	 2G0dPJlLbaBAKyb1N5PLZIFjbJYh5JL98AddodEytBDyKLAMFkRkq57HFz8Uznx43x
	 PIb4+TrHYdiKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C873D6FBC9;
	Fri,  7 Feb 2025 13:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 975B1E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 13:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B0A860651
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 13:50:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e5Ef13JSfpnc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 13:50:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 96CB96066E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96CB96066E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96CB96066E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 13:50:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1631A5C5717;
 Fri,  7 Feb 2025 13:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5CBFC4CED1;
 Fri,  7 Feb 2025 13:50:11 +0000 (UTC)
Date: Fri, 7 Feb 2025 13:50:09 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>,
 Qiuxu Zhuo <qiuxu.zhuo@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Kees Cook <kees@kernel.org>, Jiri Slaby <jirislaby@kernel.org>
Message-ID: <20250207135009.GW554665@kernel.org>
References: <20250206223101.6469-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250206223101.6469-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738936213;
 bh=FXMx362M+vYDOjieVoZGpLYHrbMAz5S5rLewpTVOEAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HFYkuMg6vC1zD0GuPqaCzaNDauaBuw/Qrt9knuE1frfAL5TLawjPPrDlkeQjy7KC6
 iUXTnpOKGkdSurXS2VcYv5Qx+idovVAxOBDv0UYxD7nT2RoGEXofUGJUKvq+5z1hUK
 Vx7+/lqBcbs5Pi4CAGCfIfgc01qZaEv7pni7cWduZrJHgXcuJH0LFk1b8eM3E7eFK7
 xw0gBnoMtH7TDpWgEbvfHbEC+Vk+REP5+ytmZMkLHVWgKUcGkNV9AwWwtzyzDQQOcR
 Mfp8y976rFE3lveGsg9xaDo38F0zbE507epjqpHNJTXm+WHj5yTNYT07XUDn+5De1x
 sLGIRyHv4wYCA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HFYkuMg6
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: health.c: fix
 compilation on gcc 7.5
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

On Thu, Feb 06, 2025 at 11:30:23PM +0100, Przemek Kitszel wrote:
> GCC 7 is not as good as GCC 8+ in telling what is a compile-time
> const, and thus could be used for static storage.
> Fortunately keeping strings as const arrays is enough to make old
> gcc happy.
> 
> Excerpt from the report:
> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
> 
>   CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initialization for 'ice_health_status_lookup[0].solution')
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>                                ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initialization for 'ice_health_status_lookup[0].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer element is not constant
>    "Change or replace the module or cable.", {ice_port_number_label}},
>                                               ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initialization for 'ice_health_status_lookup[1].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
> Closes: https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Suggested-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: use static const char[] instead of #define - Simon
>     +added RB tag from Michal, but not adding TB tag from Qiuxu
> 
> v1:
>  https://lore.kernel.org/netdev/20250205104252.30464-2-przemyslaw.kitszel@intel.com
> 
> CC: Kees Cook <kees@kernel.org>
> CC: Jiri Slaby <jirislaby@kernel.org>

Thanks Przemek,

Testing locally gcc 7.5.0 [1] seems happy with this.

Reviewed-by: Simon Horman <horms@kernel.org>

[1] https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/7.5.0/
