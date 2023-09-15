Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA45E7A204F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 15:58:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F2B661375;
	Fri, 15 Sep 2023 13:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F2B661375
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694786335;
	bh=wbxY9u52uUJFuQy3la86q4uV+PkJXFq9H5Evs+hzWgQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q1/sWSPbn2Q6it8OYfhudEz5GOh/lEX2vDLqMFzhuTOGM/jztKNf8hjJF8gqoecvM
	 NAVBhqa6qQKklDfYxRhxVjLkv65RvAQpt1G4s5Amw5+8uv+fwiGK+lIpfVps5yxk1Y
	 0SdgEpA2O+zHJnKs+4+uGLzsA5SgIFeBfjkrtwBMbh8ZllAP4ZIi+GmYukh3GRcTBj
	 ZWfNRSGS18RS3LSc1D5tbFZ91tRjU2SinEdnWGc431BzXmO9FL87YZObU5JOf1lB+/
	 eXJiHVgnI/Nf9xnF82O9S1BMXkIW42FhXBDJbWZtsqt4+qPUc42OdBHanZ+8SrsP/5
	 o5dZT1rH1JySw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IH4qeovwv1LI; Fri, 15 Sep 2023 13:58:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 626436135B;
	Fri, 15 Sep 2023 13:58:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 626436135B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE6AF1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A434E402F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:58:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A434E402F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TPgGls-yv9un for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 13:58:49 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0522D40164
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0522D40164
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qh9LK-006Y3M-A3; Fri, 15 Sep 2023 15:58:46 +0200
Date: Fri, 15 Sep 2023 15:58:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <145ec8c7-ae64-42a2-ab7f-b77b1b0d23bf@lunn.ch>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
 <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
 <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
 <ZPCQ5DNU8k8mfAct@baltimore>
 <87ea2635-c0b3-4de4-bc65-cbc33a0d5814@lunn.ch>
 <ZQMYUM3F/9v9cTQM@baltimore>
 <3713a4ff-c977-c62e-aa56-9293cf2cfd1f@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3713a4ff-c977-c62e-aa56-9293cf2cfd1f@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=QvVRYtWOCyMDuzncQnkYEAfoirjzGGs2skJ72Y0JYro=; b=uQxf4rz0Q6q4sgnHDKl2jtTbnK
 hsYKYXGtz72u7tWy0W2KhSxEy+2Ihuek0I8ATLf1MwVULLqxcZ51PEv98sh5AbQdxHUpB2D0IA+Xs
 1wt4el7lJEfsrYkA2Vz0xWwU/l2PCOidRyyGqaGKhW5icXC67W5PLJBd/lp8cRSG4a4I=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=uQxf4rz0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, "Greenwalt, Paul" <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Here I'd like to add that we're planning to try to use Phylink in ice
> soon. It may take a while and will most likely require core code
> expansion, since Phylink was originally developed for embedded HW and
> DeviceTree and doesn't fully support PCI devices.

Cool.

And yes, not having device tree will require some changes, but i don't
think it will require changes to the core of phylink, just the edges
where you instantiate phylink, using a different configuration
mechanism.

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
