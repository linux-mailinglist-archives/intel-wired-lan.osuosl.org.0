Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12385AB7B11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 03:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 973B160E08;
	Thu, 15 May 2025 01:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xeqyxaAGzE8k; Thu, 15 May 2025 01:41:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B2A5605B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747273318;
	bh=Rgze/gk20gcMc5t1HLHy2uBvblNz3B5eJhJy+7TrjeQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q1uw9lfm+SNaX1jXirbYgArjeuNkqT9vJ1m2s88GNQSpURV2jNABfAvmHLfTrpC+O
	 l6c33Dsy9+bu2DoWArwjCWsnxmcfobX4Rr/t7j2WoB8enNoGj4bbC2AFscq+4SJG3C
	 mmlTyYC5rL/k5sVqCHF4M+A0mKJ6GJycrnCAZOeJeEdP1zNV1B8v/cr2PetvRfO3JR
	 Apa7f3iJLte9t40VFHTHHujyQ2o0oWIqx/msV/1BHyyQOSmIgitPKtd6C1VDbNcqha
	 GEbHP+Ld90dwmC0TXpzAeswtTKnG4VZWQmkbMRDmI2PtDX+X7e6JGUTsSmT7DjtYxu
	 ujTY3CO6y2dbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B2A5605B1;
	Thu, 15 May 2025 01:41:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C8C7153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 01:41:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E02A40291
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 01:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5qsQUwIOVVy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 01:41:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AFFA940254
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFFA940254
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFFA940254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 01:41:54 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1uFN7A-00CcQf-1f; Thu, 15 May 2025 03:10:24 +0200
Date: Thu, 15 May 2025 03:10:24 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Pazdan <mpazdan@arista.com>
Cc: aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com,
 daniel.zahka@gmail.com, davem@davemloft.net, ecree.xilinx@gmail.com,
 edumazet@google.com, gal@nvidia.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, jianbol@nvidia.com,
 kory.maincent@bootlin.com, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com, willemb@google.com
Message-ID: <c6c33e70-267f-4433-95ca-93efca0dfbe8@lunn.ch>
References: <6f127b5b-77c6-4bd4-8124-8eea6a12ca61@lunn.ch>
 <20250513224017.202236-1-mpazdan@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513224017.202236-1-mpazdan@arista.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=Rgze/gk20gcMc5t1HLHy2uBvblNz3B5eJhJy+7TrjeQ=; b=nE+5GleEusC4oX5Y2MkFdKdCYH
 /EM4+ydrgWChVXHmg84vCY1rG6uY25n6p53c+IhIq0E2Or94kZ45GNvQIkXBPg2ne4YpXZBE/uyhk
 U61rEsohwGSEmsuBqA3UDukS/G9q/AzG7qwbBn7SScTFm8yWGSwrqumNVArLs//GCbok=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=nE+5GleE
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] ethtool: qsfp
 transceiver reset, interrupt and presence pin control
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

On Tue, May 13, 2025 at 10:40:00PM +0000, Marek Pazdan wrote:
> Common Management Interface Specification defines
> Management Signaling Layer (MSL) control and status signals. This change
> provides API for following signals status reading:
> - signal allowing the host to request module reset (Reset)
> - signal allowing the host to detect module presence (Presence)
> - signal allowing the host to detect module interrupt (Int)

What is missing from here is the use cases you are trying to
address. Why should user space want to reset the module? Why does user
spare care if there is a module inserted or not. What is user space
going to do with an interrupt?

> Additionally API allows for Reset signal assertion with
> following constraints:
> - reset cannot be asserted if firmware update is in progress
> - if reset is asserted, firmware update cannot be started
> - if reset is asserted, power mode cannot be get/set
> In all above constraint cases -EBUSY error is returned.

Seems like there should be one more condition. Reset cannot be
asserted if the interface is admin up. I assume a reset is disruptive
to the link, so you don't want it to happen when the link is in use.

> +static int module_mgmt_get(struct net_device *dev,
> +			   struct module_mgmt_reply_data *data,
> +			   const struct genl_info *info)
> +{
> +	const struct ethtool_ops *ops = dev->ethtool_ops;
> +	struct netlink_ext_ack *extack = info ? info->extack : NULL;
> +
> +	if (!ops->get_module_mgmt_signal)
> +		return -EOPNOTSUPP;
> +
> +	return ops->get_module_mgmt_signal(dev, &data->mgmt, extack);

Should there be a module_busy() check here? Can you get these
parameters if the module is in reset?

	Andrew
