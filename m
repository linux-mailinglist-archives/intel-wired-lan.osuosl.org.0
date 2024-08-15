Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6659526CB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 02:20:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F892811B1;
	Thu, 15 Aug 2024 00:20:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NUnvV8XDg5je; Thu, 15 Aug 2024 00:20:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3781811BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723681251;
	bh=pufS3tS+BnwIAS6fc5QK++rR+1brArYrZIVBTFl8H78=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P85fLzzt4HWBCGzYrdUy+fU+xqvKUHLvcqlVDOnLJ2XbxHmNVb+Pbccv9DAhVJxwA
	 qkz5yq+uKYdgWWsTMRL0AV4mX336iEcdeKjiDsGLtB4UPp2jwoxw95q1GkRCyLnx2L
	 JTHswb+MunmtknFQd7b3QTNZrxNa+MmZc2vs6/YR7rz03q39HKw42jSE6EF3R5nCqS
	 hi8am89v+EoyXnQfTkC/eoFfxYHfO+opUoctu1btWFWjEhYaNx+FX0/J8zYpdBRaV5
	 TMKWcyLdJWk/niF0oX+1EJg9xTqB6NfwB6rUmhA2KsVQ9rzg/ZBuBUU7vjRyRflHMt
	 E/iaUURSbD/BA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3781811BB;
	Thu, 15 Aug 2024 00:20:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90AD21BF983
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 00:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DD68608F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 00:20:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aZMezdIKCxaj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 00:20:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1BD1608F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1BD1608F4
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1BD1608F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 00:20:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 92A5360EA2;
 Thu, 15 Aug 2024 00:20:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54EF3C32786;
 Thu, 15 Aug 2024 00:20:47 +0000 (UTC)
Date: Wed, 14 Aug 2024 17:20:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20240814172046.7753a62c@kernel.org>
In-Reply-To: <ZrzxBAWwA7EuRB24@LQ3V64L9R2>
References: <20240812145633.52911-1-jdamato@fastly.com>
 <20240813171710.599d3f01@kernel.org>
 <ZrxZaHGDTO3ohHFH@LQ3V64L9R2.home>
 <ZryfGDU9wHE0IrvZ@LQ3V64L9R2.home>
 <20240814080915.005cb9ac@kernel.org> <ZrzLEZs01KVkvBjw@LQ3V64L9R2>
 <701eb84c-8d26-4945-8af3-55a70e05b09c@nvidia.com>
 <ZrzxBAWwA7EuRB24@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723681248;
 bh=FSrgGRb2+2F//PvIuCsVOMjuXhKEz50wuCkJVSwdb+I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rDPO14qKjJ1wnJ5ZxvYB9oMTm0/dws2WGAOGyl+hbv6KhS7THK4MgXl5q5cfVfsnq
 zgV9IHzFBohsEXiQzywZv65pzVGd9Qb+xnraM5bvU64DylyBf7QpsVihlIwMEttQ3G
 hzFh+IRclmhDON97ZiVB1HbgZKQSFjjFv58beXMeaJEM0ZnT9yFaK5ERXdF6zAHZaG
 9z8P6BwK//xXongNDIzPn/rySWH5hk75m+HFbk6WeOIqRsOTBwBl2bv4AKKEHmyKy3
 n3TduAjS4Thzq+grfjIa6nb6jrMEE6gF06O+/Hw606DJ/UlKnUS5tPJ5yeblHKnGZg
 6Y/Aozow4NgSw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rDPO14qK
Subject: Re: [Intel-wired-lan] [RFC net-next 0/6] Cleanup IRQ affinity
 checks in several drivers
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ziwei Xiao <ziweixiao@google.com>, Jeroen de Borst <jeroendb@google.com>,
 Leon Romanovsky <leon@kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Shailend Chand <shailend@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 Willem de Bruijn <willemb@google.com>, Yishai Hadas <yishaih@nvidia.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Shay Drori <shayd@nvidia.com>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 14 Aug 2024 19:01:40 +0100 Joe Damato wrote:
> If it is, then the only option is to have the drivers pass in their
> IRQ affinity masks, as Stanislav suggested, to avoid adding that
> call to the hot path.
> 
> If not, then the IRQ from napi_struct can be used and the affinity
> mask can be generated on every napi poll. i40e/gve/iavf would need
> calls to netif_napi_set_irq to set the IRQ mapping, which seems to
> be straightforward.

It's a bit sad to have the generic solution blocked.
cpu_rmap_update() is exported. Maybe we can call it from our notifier?
rmap lives in struct net_device
