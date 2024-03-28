Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0293890713
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:22:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42DCA82660;
	Thu, 28 Mar 2024 17:22:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oE4OKepsQLTi; Thu, 28 Mar 2024 17:22:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B57182509
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711646572;
	bh=H/HNjMyukSMNAqG6J5jj2OUNatBNpXxrSTOvpRCf0aM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vpa2/upxtR0sA6dXnoLqfmm01GGp3A5KEbz3i00B7f2+43jrKZjmQ2hmltIzsWWgG
	 6Ry3jIfqQ9RXxIWOt6JPt5grlic8YkGemJuWMQtxz1CGisdEyJxqzewTPZn7boG3M3
	 UzR4JrKw3DKKZ/0sQlpbBgQVChZukoTyQY/Ber2kZcriRAZozhMKj7dTzRTRDGe6di
	 TpkcPcB25uKg5luFxdcPlhYc7QYPBhypeQFEVv/WM/OB+g6/VzPbGGhPoEO9atJNu0
	 fSgiHUpu0rFLQzNf5KqJ3Ngq8GUc8cfH03oiFLgXNhcTEQoz+oVOj+V9Q6yQRuMS+1
	 nO/76mNOnX+ZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B57182509;
	Thu, 28 Mar 2024 17:22:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 667DD1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53A9360674
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:22:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UcH9iXmcodXy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:22:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 767D660663
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 767D660663
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 767D660663
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:22:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EC783CE2C2B;
 Thu, 28 Mar 2024 17:22:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFC3FC433C7;
 Thu, 28 Mar 2024 17:22:41 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:22:39 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240328172239.GA651713@kernel.org>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-3-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327075733.8967-3-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711646564;
 bh=zvaTfL5i0i12k1PkvRyuQpdi6paxqsJzTnBVoQrSthA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t4I3A/48nhIb+L1iaJu5fwn1VAQusll0dPaugv+hKN7sjAQkljRIPiUqP5lSUd/yi
 Ta/Sy95JRaawTvdMkFdyHR8n1la7mVSEtFHpZWB/DDCjkQ6PRa3+Bkl28a5E9LX+30
 6r9vdgnnGXKsgJuddSVGo3+JkoqBT42A84nAkYZ/DP54F1/pE5lzvew/Lld6PqO/a3
 lmLuanHA+4EUqZ7FKx/8A2ed3REAma5J8+ytAdYllHGir+mOzpXHnY1s5eb/FAxO49
 zFOaqyyiZ3rOA++2e59cWssHVrkhA4iul4UbGTgUKieYInytY/e73XzG0lIYuySS0C
 WZr5vBSFqrQxQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=t4I3A/48
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/7] i40e: Refactor
 argument of several client notification functions
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 08:57:28AM +0100, Ivan Vecera wrote:
> Commit 0ef2d5afb12d ("i40e: KISS the client interface") simplified
> the client interface so in practice it supports only one client
> per i40e netdev. But we have still 2 notification functions that
> uses as parameter a pointer to VSI of netdevice associated with
> the client. After the mentioned commit only possible and used
> VSI is the main (LAN) VSI.
> So refactor these functions so they are called with PF pointer argument
> and the associated VSI (LAN) is taken inside them.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

