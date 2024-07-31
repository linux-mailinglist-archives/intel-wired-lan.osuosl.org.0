Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A608A94397C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 01:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32EAD40E65;
	Wed, 31 Jul 2024 23:47:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bJvGKMgi5Qa6; Wed, 31 Jul 2024 23:47:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2BC9405F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722469642;
	bh=hy3bVld/kFfCFEmAb8ImGLQsZaRy9GkqtYjcvpd1wbE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T+MKh6QyWXZnEFfSFZ1hNHRmqtVW2EfCXCRhCoieUfEz3iSPQr3YRnkjRonQNFpK/
	 jqrfes7iMBKw79h95lMM1QiyarlQ37SasoZfcq+r7UOeQ57TtbQ7L/ydqeCUksMose
	 EzRt31XRAck0aBwlfCpyf6QZJnm7RJtAV1gw9rRnnYUZI5r+GuCSs6/CwRowPtwXEF
	 BwGaIXDl46EZCjECI9ncvA3QDFT5wicHD5a4rs7UyCwM4TR9Oi2M4B7vLzGyK4InBF
	 JOOwh9Vc0IfjvSTb4/CZkzXS9UNcIKWKT0Z/wSsLgnjYjOlI1yNYVCGzAQrYkGsM5s
	 QyEugqbqnpXlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2BC9405F6;
	Wed, 31 Jul 2024 23:47:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1AFC1BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 23:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AABBB408D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 23:47:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id czIYKI8PPwKG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 23:47:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C54E408B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C54E408B6
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C54E408B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 23:47:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 46E3F6263A;
 Wed, 31 Jul 2024 23:47:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6E4DC116B1;
 Wed, 31 Jul 2024 23:47:17 +0000 (UTC)
Date: Wed, 31 Jul 2024 16:47:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>, Wojciech Drewek
 <wojciech.drewek@intel.com>
Message-ID: <20240731164716.63f3b5b7@kernel.org>
In-Reply-To: <c0213cae-5e63-4fd7-81e7-37803806bde4@intel.com>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
 <20240730065835.191bd1de@kernel.org>
 <c0213cae-5e63-4fd7-81e7-37803806bde4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722469638;
 bh=wOo7tBxu6FaBLoulBbGXaFqyq47V+UBc1sue2gyl0hQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XDqZut6W0ZLReuvOzEexNagIs2nsj4J8AP0IU87PDU330gME5gqU86LGNYx6mrGWK
 Ajr6vQGvZXqeaJLoOsCsSyIfxOR2tJ49gehCvgBS3uu4QG5aFBTPN1ov5RfrLuVWgT
 ORQLX4ytgpiX1xfVNZJHcCVBGEzdC6JMrp/gE+LQGxoPzVdhymrTQ5spNnYK8vviT+
 s2wYfZK9fa6cLGyWBzKChfPUUUxQXGxWA2AJ3CYFhJhQo3ioOPl7+eV89VPfuk2wso
 jBrY3SKqcAHtCdooDs3yLMtnD/shpAMoDZLRhiFC6/JJjdhycse+mX2tVbBqLWXTah
 hhmJvMElq6t7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=XDqZut6W
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 anthony.l.nguyen@intel.com, pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 31 Jul 2024 14:08:20 +0200 Wojciech Drewek wrote:
> Quick summary our reset types:
> PF reset reinitialize the resources/data path for PF and its VFs.
> It has no impact on other PF/VFs.
> Core Reset reinitialize all functions and shared parts of the
> device except PHY/MAC units, EMP and PCI Interface.
> Global Reset is Core Reset + PHY/MAC units reset (including External PHY)
> Because Global Reset is a extended Core it makes sense to map it to all.
> PF reset mapping makes sense to me since it is dedicated to a single physical function.

On Wed, 31 Jul 2024 09:48:07 -0700 Jacob Keller wrote:
> PF reset only affects the single PCI function, and does not affect the
> whole adapter. I don't know how it relates to PCIe resets precisely.
> 
> CORE reset affects the whole adapter, and the other functions are
> notified of the impending reset via their miscellaneous interrupt vector
> in combination with some hardware registers.
> 
> GLOBAL reset is similar to the CORE reset, (in that it affects the
> entire device), but it is more invasive in the hardware. I cannot
> remember offhand the differences between CORE and GLOBAL.
> 
> There is also an EMP reset, which is the only reset that completely
> reloads the EMP firmware. It is currently used by the device flash
> update logic, via devlink reload and is only available if the new
> firmware image can be reloaded without issue. (Reloading when the new
> firmware could impact PCIe config space is likely to produce undesirable
> behavior because the PCIe config space is not reloaded except by power
> cycling, so you end up with some weird mismatches.)

Note that the reset is controlled using individual bits which can be
combined:

	ETH_RESET_MGMT		= 1 << 0,	/* Management processor */
	ETH_RESET_IRQ		= 1 << 1,	/* Interrupt requester */
	ETH_RESET_DMA		= 1 << 2,	/* DMA engine */
	ETH_RESET_FILTER	= 1 << 3,	/* Filtering/flow direction */
	ETH_RESET_OFFLOAD	= 1 << 4,	/* Protocol offload */
	ETH_RESET_MAC		= 1 << 5,	/* Media access controller */
	ETH_RESET_PHY		= 1 << 6,	/* Transceiver/PHY */
	ETH_RESET_RAM		= 1 << 7,	/* RAM shared between
						 * multiple components */
	ETH_RESET_AP		= 1 << 8,	/* Application processor */

	ETH_RESET_DEDICATED	= 0x0000ffff,	/* All components dedicated to
						 * this interface */
	ETH_RESET_ALL		= 0xffffffff,	/* All components used by this
						 * interface, even if shared */

Note that ethtool CLI defines "shared" version of all bits as bits
shifted up by 16. And it is forward compatible (accepts raw "flags")
if we need to define new bits.

I guess in your case EMP == MGMT? So if these resets don't reset EMP
I presume we shouldn't use any option that includes MGMT..

Could you express your resets in the correct combination of these bits
instead of picking a single one?
