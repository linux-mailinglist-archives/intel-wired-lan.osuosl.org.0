Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 420B4A33D36
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 12:00:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32884611D8;
	Thu, 13 Feb 2025 11:00:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SIWVu2FgRsAs; Thu, 13 Feb 2025 11:00:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32AAA6119F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739444456;
	bh=YYl1kcHf0hEPiHN0liKKzA2VFofLlbvOat4yFqC89Ow=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ESUkshPuJ5EVgiqeEcUcPCyKU6MXhxZ+rjeCQEW2vxp+jbYlnxmyZZaLSKsjvJsox
	 JP25dRPrMre681LAHehkLAL+P2xGOR9HXcXRSmhcxRgQq9JnDyr/eZcQfKoyQpiwnR
	 DlBviGRsnHsx/LrHTvpRfP5mqrXs3ERrkVaV6fX3xGhxU28cwlo3QBTDDVfSU5NIzx
	 3KKjBeWY+iOxrHTQqZ19YacR1bgriZ+GmGbh/0Y28//roreJahiYJc7G1W8d0mf43b
	 H+/bNc8bNkPI/49GgMkZKYo04Kb2Ms4KF825iCYo0QXGPstEIyoUQMQNlt38NfTwmu
	 VRu+CozGxChPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32AAA6119F;
	Thu, 13 Feb 2025 11:00:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D4A5B12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEF94404E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:00:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ks2_UsbrgsKl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 11:00:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5E4D6403CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E4D6403CB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E4D6403CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:00:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B60B75C54E0;
 Thu, 13 Feb 2025 11:00:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A586CC4CED1;
 Thu, 13 Feb 2025 11:00:49 +0000 (UTC)
Date: Thu, 13 Feb 2025 11:00:47 +0000
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20250213110047.GK1615191@kernel.org>
References: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
 <20250211174322.603652-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250211174322.603652-2-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739444451;
 bh=H1nfbbc+DNTr9c7soOdkJDZDBuFwRn1OAMGIxM0nPRk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oblr/DtUUxGTSBTNU2lJY15UlOZTU216telkxtswMxzZH/JRCLyRFKJwCpXXJ42wh
 zfOZ1xxko18wqg7orXvQPaOEsJ49CDbb77qAn/Q5zZVEI91ksyT3LexsUgRdT8vYPP
 7ccMxFV905okVRn6TPwwKZOYpDj6YXE/+zugRM78FATHXM9Pvmp1xS4cMNPJKMQytK
 r8rs27gYxwO8+65jmpcTWX+/4kpVaMqg91pAZHva9BJNr6Dy1LppEk4GkMwTMPp+NP
 jnNos266TPo4ARQKFjmuXiauoFKDaFQYr32S5dSLoZF847IpqssbnyuUB/TT69PAtl
 CpdEQaXwQD6Tg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oblr/DtU
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Avoid setting
 default Rx VSI twice in switchdev setup
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 11, 2025 at 06:43:22PM +0100, Marcin Szycik wrote:
> As part of switchdev environment setup, uplink VSI is configured as
> default for both Tx and Rx. Default Rx VSI is also used by promiscuous
> mode. If promisc mode is enabled and an attempt to enter switchdev mode
> is made, the setup will fail because Rx VSI is already configured as
> default (rule exists).
> 
> Reproducer:
>   devlink dev eswitch set $PF1_PCI mode switchdev
>   ip l s $PF1 up
>   ip l s $PF1 promisc on
>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> 
> In switchdev setup, use ice_set_dflt_vsi() instead of plain
> ice_cfg_dflt_vsi(), which avoids repeating setting default VSI for Rx if
> it's already configured.
> 
> Fixes: 50d62022f455 ("ice: default Tx rule instead of to queue")
> Reported-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
> Closes: https://lore.kernel.org/intel-wired-lan/PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.namprd11.prod.outlook.com
> Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

