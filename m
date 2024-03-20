Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3D18810C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 12:19:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E6FD60A4D;
	Wed, 20 Mar 2024 11:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XLxx9902vO8X; Wed, 20 Mar 2024 11:19:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95ED360838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710933578;
	bh=KvYdVeqUMadXTpMnQ/h0XsRMF6GHv7ldsxO1YZKthF8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QL3yyczhGrt9P4WTZl0al/HgAsI2acXTJ0lIP/mozDlLOSBRQbRfcI1UNcGD8IF//
	 skq6KT1ePIyciWYhXBOfKbJcCv+T9TLFe50NcrUoeBfgp1bCyLz1WpypN7f9Ul0HxT
	 ojDnD9WGzKMAdLNWov+M4Jqg9fAyHmP461cgEyDxlVx9LhVIlfGkzg8PnHWXlIfaCa
	 DG1MQv0uxSs/qDyLUJ8EGR2JooARZAY1Hcs/nZ8QFWwGRfjcd3OnGHuXA0bF+0++GY
	 jERV/CORT8W+x0Cwap2iPT0529YEzuQLvyZqva96OxoMJ4dT0XxwT6fC07SkLr+zWi
	 hp2D1nSRRz32A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95ED360838;
	Wed, 20 Mar 2024 11:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 020A51BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E30DC60838
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sl5zPT2iXnIi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 11:19:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F27B260675
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F27B260675
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F27B260675
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:19:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 38997CE10F6;
 Wed, 20 Mar 2024 11:19:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CCF9C433C7;
 Wed, 20 Mar 2024 11:19:28 +0000 (UTC)
Date: Wed, 20 Mar 2024 11:19:26 +0000
From: Simon Horman <horms@kernel.org>
To: Erwan Velu <erwanaliasr1@gmail.com>
Message-ID: <20240320111926.GR185808@kernel.org>
References: <20240319141657.2783609-1-e.velu@criteo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240319141657.2783609-1-e.velu@criteo.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710933570;
 bh=ZGjdmKze+W8MptFXyZLv1/NCN4+JrhWDnVc972JzEF8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fyN1zphyJpnuHnDx7UpdrrSMXLAs8FwjMy2i14ohff6IKAt3jk1kD8DQw1aWs60J+
 X0lDM0yCzd7FRs21GUXslXmcDacFrUGk3IEXB9hYyuYdBgDd0lipaVEfv5jycSape/
 iD/V9tMzSENbTM2tUTL+7VsAiwbN/QvYW3rhiIdPhR7vdy/DAQ6JAybzhJYXoOJ2TG
 r3uDzb0cYcbrbVBzhmJlOYOuTylN9j0N2aYJpnnDNnUTnrz1NqunH3vBwm2cVFnL9a
 W9tCJPpU7YaIE3LImFQ++UjFmgZTfl8bjcM4UxQb1cAaJ4XJJXwPfNpizq77QT+8xq
 O4WTAkzZvulJA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=fyN1zphy
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Report MFS in decimal
 base instead of hex
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 19, 2024 at 03:16:55PM +0100, Erwan Velu wrote:
> If the MFS is set below the default (0x2600), a warning message is
> reported like the following :
> 
> 	MFS for port 1 has been set below the default: 600
> 
> This message is a bit confusing as the number shown here (600) is in
> fact an hexa number: 0x600 = 1536
> 
> Without any explicit "0x" prefix, this message is read like the MFS is
> set to 600 bytes.
> 
> MFS, as per MTUs, are usually expressed in decimal base.
> 
> This commit reports both current and default MFS values in decimal
> so it's less confusing for end-users.
> 
> A typical warning message looks like the following :
> 
> 	MFS for port 1 (1536) has been set below the default (9728)
> 

Hi Erwan,

If this is for (iwl-)net, then it should probably have a Fixes tag.
I expect it is sufficient to respond to this email with an appropriate tag.

> Signed-off-by: Erwan Velu <e.velu@criteo.com>

That not withstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

...
