Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F77B8676A6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 14:33:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C900981F7F;
	Mon, 26 Feb 2024 13:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ysWcKnkgrrC5; Mon, 26 Feb 2024 13:33:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 119C281F75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708954425;
	bh=b/OyXbcxfoXujip/lMu1PP3/Dg+snYbFZ5e/M1ZojoI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SSOj8dEjGDXqx+qjdOXhi9h7XuS9KEsMKrCgky+hs8WAwBoOBjsMyJU1wp0ujjOKc
	 87UIN+FIloKSSGAYZVtnrW4AJPOrzHchunqfsda+gyzFvmuPokOFjolW5OY+aW7W6e
	 oZiVyx3z1mMmg9T3UIBP42QNYmObKjix+DrnfipJylKDok7YI+mb7NGuFDZUyyXl8n
	 f3h3ptL+zT7k2XumDKgcvZEFwPNi8lhUL1KlSQxki1+gS3qt0ko1YGdc3x1DaE+ewc
	 aK/alRE6NstQPP0YldiHVRrFIFsE9kmMH8TAtbXrFBpbJhV7HDfwTcyQNeObX8iFjW
	 q8/EdqdUUId/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 119C281F75;
	Mon, 26 Feb 2024 13:33:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 363821BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:33:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FDCF60ACC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V5cJCbDaO7c7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 13:33:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 915E260A9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 915E260A9C
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 915E260A9C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:33:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AAFED611B7;
 Mon, 26 Feb 2024 13:33:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A14A3C433F1;
 Mon, 26 Feb 2024 13:33:38 +0000 (UTC)
Date: Mon, 26 Feb 2024 13:33:34 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240226133334.GC13129@kernel.org>
References: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
 <20240222123956.2393-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222123956.2393-3-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708954421;
 bh=3F3a2hjfNgnWwI7UM4NM18GlspXcpUia5Ij1lXCE6KA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tMnbHomak7nJGPkaweH+wRQekJ0YztQyRn3bODQ+JK6lV7pFOMI2AY2mlu2OmRe1d
 UZSmwsY8TwecieNXXTIad6NxJIduyB9Dj0cgDUgHnq3DeFJhP1skHatb6v3hFWRW/z
 Aq3Oz5iTuPZ4PlPbljMkhSFL97+GAqOyou+ynsID1jlrNq/thSo7FQawnwVr1+4GlY
 e16AKuUZn1uDooAYmMi3m/73yDuQZU8oIOx4wowxOSdm4h7sWcKG3BDTb+98FFss2+
 4qOab1OcmgIYrH/wbPur4TnpZd8C15WXYksBsDmGPI6O5rPneJYX0B4/+XMp4KM9rP
 iRlOp/ERslp1g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tMnbHoma
Subject: Re: [Intel-wired-lan] [iwl-next v2 2/2] ice: tc: allow ip_proto
 matching
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, sridhar.samudrala@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 22, 2024 at 01:39:56PM +0100, Michal Swiatkowski wrote:
> Add new matching type for ip_proto.
> 
> Use it in the same lookup type as for TTL. In hardware it has the same
> protocol ID, but different offset.
> 
> Example command to add filter with ip_proto:
> $tc filter add dev eth10 ingress protocol ip flower ip_proto icmp \
>  skip_sw action mirred egress redirect dev eth0
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

