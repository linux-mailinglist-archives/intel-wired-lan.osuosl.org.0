Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8DEA3DDAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 16:04:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F75881E0A;
	Thu, 20 Feb 2025 15:04:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vlj7LZVw-nSQ; Thu, 20 Feb 2025 15:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D208481CBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740063876;
	bh=Y6H/GzDdtrZI7nKvZ/bAuX4svxQHnLURdcBPrjCpeLw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lj5gCeC+hCkQaN5o9YDVhHDnqao6qTQ3BCzjsFARAN+pgRlDtiV1j10uveQP6SmVL
	 gc9DtGsM6vqpeCLVRLs0PgGDY7eLDD/WXzmN4LMgAl1tfKFv/iHs8m+ARGXz/iYlUa
	 t31i4pTcAjiK0maDKyWuV7GU+uoqqf37lRlZh/WmzTgXqhK6p1So2EDBul58Gb36Pm
	 iLUCQrDEfbE5QGbZ8fmPfqhZNrXysID6NbubIhgY0VfPstprzlJvbZGvnyUYbJwCK6
	 lAVYhN5C1CSnsrY6+3iZjwzjYNYZKc0aker6EUP4vtEx2jhyw2W2Y0o475M7q5qrZc
	 bFnocyfVU4x5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D208481CBA;
	Thu, 20 Feb 2025 15:04:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B5146D92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 15:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A37EE4053F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 15:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cq1T3GnNLMu8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 15:04:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04::f03c:95ff:fe5e:7468; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D21BE404B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D21BE404B1
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04::f03c:95ff:fe5e:7468])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D21BE404B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 15:04:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2FCCE614B8;
 Thu, 20 Feb 2025 14:55:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09CACC4CED1;
 Thu, 20 Feb 2025 14:55:38 +0000 (UTC)
Date: Thu, 20 Feb 2025 14:55:37 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Message-ID: <20250220145537.GY1615191@kernel.org>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-2-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214085215.2846063-2-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740063341;
 bh=1wBmMz7u7tSMtb3T+ELX1xYQjD8A2MBdGOR+4eYPPxQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CqbN+rMIp1x6f5GiYAdoBKn/qoMLYCaBZ3JuA/jY0GB95WaBdjUYxEqIuS4Gb5mkE
 414KGqehua4APLsKOawywiH9estBct1taKADqsIMyGq5vTdOH6lTfZ+13pR3972NmI
 5d+50QzpdRCU+ZCNKrcqhxd5ZQ2apVlbGezDOVwkRV3EjzWi63SIgPvYb18parKx2P
 oSHJ2QZZbn6LE2CfjveQSwJKrEO3/6VKfKjEzrt7OY1gPAPOO5+ZEi39F19oA1u/xK
 BrE4uFpUx70ZQKwnSooswrN5K/KRGEEOQQ5dHsWUnMLdk9uZXhISNfRSRKdG5wrdqx
 nXPMgY9CUAeZw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CqbN+rMI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/6] ice: fix check for
 existing switch rule
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

On Fri, Feb 14, 2025 at 09:50:35AM +0100, Larysa Zaremba wrote:
> From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> 
> In case the rule already exists and another VSI wants to subscribe to it
> new VSI list is being created and both VSIs are moved to it.
> Currently, the check for already existing VSI with the same rule is done
> based on fdw_id.hw_vsi_id, which applies only to LOOKUP_RX flag.
> Change it to vsi_handle. This is software VSI ID, but it can be applied
> here, because vsi_map itself is also based on it.
> 
> Additionally change return status in case the VSI already exists in the
> VSI map to "Already exists". Such case should be handled by the caller.

FWIIW, I might have made this two patches, but I don't feel
particularly strongly about it.

> 
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

