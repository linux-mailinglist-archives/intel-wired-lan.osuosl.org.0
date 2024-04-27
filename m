Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7526C8B46C3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 16:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 290C860772;
	Sat, 27 Apr 2024 14:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4aKIfvICkBJB; Sat, 27 Apr 2024 14:57:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EBAE606E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714229841;
	bh=OuGn/B0Q+MBX4TkdMAnCAoKa4+MA60PyPCJ45J335rQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h0yZduiP8DAwngCmmZJw2Q3gCK5R7g9tMlIZF/oRTHBTL7rAEv81v1UtmG6i8VDI2
	 BwsgDntdijua0pbKfNWTGNHuinVPXfp/uOYYxS12hSfBesDbNsquEdXADwn41IqmhA
	 0L4G/DU+CSbetFZKhszuGT0JCv2ZSoXZwmROv25jQEYMpR3Yy7tWCBx3yYutGhFIZ9
	 LBVMDTvIiA6ukwj3XbxVk6sbd3CNorwZpc4At3KDcEYsHC9S76DnngVLZ6KhmlyUM+
	 MBp73MlhlwwZnNPGQ6TgkLuEQFMj7UYpaUQm+HPLYOYTm4cOaaKVf55cLCNc80gIOp
	 oRlDkXKFrfZfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EBAE606E9;
	Sat, 27 Apr 2024 14:57:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3242D1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18D0F82E22
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1Xn2nvsjM2l for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 14:57:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 76B9682D62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76B9682D62
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76B9682D62
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:57:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BD12C60F73;
 Sat, 27 Apr 2024 14:57:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACD1EC113CE;
 Sat, 27 Apr 2024 14:57:14 +0000 (UTC)
Date: Sat, 27 Apr 2024 15:57:12 +0100
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240427145712.GS516117@kernel.org>
References: <20240427072615.226151-1-ivecera@redhat.com>
 <20240427072615.226151-7-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240427072615.226151-7-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714229837;
 bh=Ri2PZ/2TkiGGwBNLhkri3Uu3MGu24uFF3tTfdAobHts=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q+iDpvyOfV0vHy5lLl3LVJycFy78hK5aHBOfAOqHEGGYnPrwU/lZBLZRaYyPbPsje
 gFsmMJB7EYEMbKnKGqnNVRmasBRMZgPVn5w10tciYGKugyV7CrQPqvWtTihrRZdQ0t
 kgx5dAiXBNDddx/6BcdrMkMHnIMGl7lecHRoceWca4fUBxfPZO9464RsDajCm2Wl9D
 87O8UhEHEO2sjvKHzh7UzP0u2KjmXb36eBZk18ic7n9kR0OO66jmYmkHn8JwxnOPni
 QmNTLaYJOLi+zFc3DJmX+giOgakNY6B0EGtqOwwKKkpcMCT/LxRDR6uKHv5pf8suIt
 nX7VWvUjPl7uw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q+iDpvyO
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 6/7] i40e: Add helper to
 access main VEB
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 27, 2024 at 09:26:07AM +0200, Ivan Vecera wrote:
> Add a helper to access main VEB:
> 
> i40e_pf_get_main_veb(pf) replaces 'pf->veb[pf->lan_veb]'
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

