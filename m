Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2F0AD9406
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 19:56:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32E5760E65;
	Fri, 13 Jun 2025 17:56:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C8_IbTIZqTVh; Fri, 13 Jun 2025 17:56:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B686E60DE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749837372;
	bh=Ny20xt7YzlQLIvInJ5FD8YYgwWMgCLsQvybVfLhcf3c=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p1uwnDKG7NNZJOE//imz28mx0mTAJbEreTRay0S0b3Jh+I/xan5yo8RRzvbHbNvje
	 2ILo1QGnLyTPZmJZ/0RSAwZmLk4fFQx8i40sfPf2gsYbvkwyHgZ72kiYGva7Siowzy
	 xHxInYxx9AlytBj9KQbHsZjHY64UEeJ3IdErQGcIkwgo8iV+zVgPinFny0YZDQQnlh
	 Wfv6H+yKe3E85YHBIrnoZwtDtAEf6vKHcU3J4EtC6JvGYZoNTVZnovYfyuUjws1XJw
	 zuOzo2u0Mkm4AAHgaLZhchmNkDaS1u33Qva9rXuUa4KSABwmlJlMfni+5FtjGOSpk4
	 As9xaw1j9CuFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B686E60DE1;
	Fri, 13 Jun 2025 17:56:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A0C9A183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 17:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92D2B40511
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 17:56:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kn7wu-EGKjkL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 17:56:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01DEE404F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01DEE404F4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01DEE404F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 17:56:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 836614A85C;
 Fri, 13 Jun 2025 17:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC8A9C4CEF2;
 Fri, 13 Jun 2025 17:56:08 +0000 (UTC)
Date: Fri, 13 Jun 2025 10:56:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com
Message-ID: <20250613105608.7eed2f13@kernel.org>
In-Reply-To: <20250613010111.3548291-4-kuba@kernel.org>
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-4-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749837369;
 bh=sk6BSKokDYyPzIp1GEiEe/wGYX2WQzpn1huqNhxUFfs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GZF20l5wkOawmUViTa+Fv5yYLRw5w46uVEGvFj4rJs4UUN0Dd89gh2kaxTsBDarl2
 3Z5QJYMi2Ku4soZ6yzuE6AckBW4xrP7cm6nj0ttJ5uEQhYrHQaw4Q2d5mQ39ZY0je8
 PoGr4X+9ulg19HYRzs6YBGqiRkQDlssSONE7TDdA5xDPK7QDk/vYa7dOGUwdGEpzAr
 YHYrJHBPnv+R4xO6LpRkcqWYCHWC4XtVQG/hGaTfb/YneUOwGPSHR+RfXTsLJt+1Ug
 +2sGZwh6xA/tDgdIBzE7SsiCcXZPj1jyM4KdfagtzpQS5HIWbXCEJ1f99c1qsfJWXE
 lMbBlqx5xgCcg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GZF20l5w
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/7] eth: ixgbe: migrate to
 new RXFH callbacks
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

On Thu, 12 Jun 2025 18:01:07 -0700 Jakub Kicinski wrote:
> @@ -3797,6 +3795,8 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
>  	.get_rxfh_key_size	= ixgbe_get_rxfh_key_size,
>  	.get_rxfh		= ixgbe_get_rxfh,
>  	.set_rxfh		= ixgbe_set_rxfh,
> +	.get_rxfh_fields	= ixgbe_get_rxfh_fields,
> +	.set_rxfh_fields	= ixgbe_set_rxfh_fields,
>  	.get_eee		= ixgbe_get_eee,
>  	.set_eee		= ixgbe_set_eee,
>  	.get_channels		= ixgbe_get_channels,

same bug here as in enetc -- there is another ops struct that needs to
be updated.
-- 
pw-bot: cr
