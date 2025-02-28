Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A7BA4A052
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:26:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E126F70F0F;
	Fri, 28 Feb 2025 17:26:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uo86BsE6cgwC; Fri, 28 Feb 2025 17:26:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD12470B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740763563;
	bh=9bVl3nHjPzRaWa0HucN2dnUqDXQUZ1RfnMbcuZ1KrRo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T8vi+Ylr1OBuL03CqHIGT/bht3eXwbfjbtGXU0pABxIElBv42mi4iYQ7pDUSHNKNU
	 wnMBvmOwfZpDxvOyc/xFT1sr28gWJhY0e0y3Zd37xkTypnIpTqhu0gDvpaIBifzm/N
	 0xCHlgHlOf7X1gYYM1pia+sZmo/QoLlfegZejurIlLAwoMbw7r2LhFW9mc4+Fn11K8
	 PjVRzjGExzx8nUVxDtV4RO2DFwFI99GRiGct4QVjw60y2tOmOlBwpcRPrKfoUFG0aI
	 5s5GzeB1b4E7+jZZ1W4PKha6WFC8d9In7GCIxiURjEGIy6gYXepuj8+yB+4+03Rgmi
	 zoRp0s48BfcpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD12470B1B;
	Fri, 28 Feb 2025 17:26:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F50A711
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD5E150997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZtN39pvo34ex for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:18:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04::f03c:95ff:fe5e:7468; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 265324F521
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 265324F521
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04::f03c:95ff:fe5e:7468])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 265324F521
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:18:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4B48461FAF;
 Fri, 28 Feb 2025 17:18:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B4E3C4CEE8;
 Fri, 28 Feb 2025 17:18:35 +0000 (UTC)
Date: Fri, 28 Feb 2025 17:18:33 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jan Glaza <jan.glaza@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20250228171833.GN1615191@kernel.org>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-4-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225090847.513849-4-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740763116;
 bh=kiAYDiNKPRsdXTw71BC5BaVg3ja1Aiiqb5jZ7oCOh6c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cDqbSAPMbhgp6yZl1jn4ChyyyHUe2w5jr1E46ydocLKQO66B0LHaFWSgkkJB37D8k
 qX2DOOlxvNpf/ciMElQrnvB4pMF93JnuLMQNOZQjoAgGDckImCD0b2byGtG2uQbEHV
 Ac0rAPeUi1ml8pk5jTS2D4BA6jV6CLr88khDhg48TcBjm0P8W4vu64oTW1GARMJvLe
 LzeRz8rXu/3FqI/WG1+p9C7WfpUBBzlWypROMt6Bz2G2h3ocKABlyGRyIoDgF7yYsf
 l3EeikKwkdYxF6zhcvwVaEd33WE8Mo2Zf1oh7+giRJQ/pgWE4i0GhPZyR3aSeNplwo
 XAwRfVWSedsrg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cDqbSAPM
Subject: Re: [Intel-wired-lan] [iwl-net v2 1/5] virtchnl: make proto and
 filter action count unsigned
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

On Tue, Feb 25, 2025 at 10:08:45AM +0100, Martyna Szapar-Mudlaw wrote:
> From: Jan Glaza <jan.glaza@intel.com>
> 
> The count field in virtchnl_proto_hdrs and virtchnl_filter_action_set
> should never be negative while still being valid. Changing it from
> int to u32 ensures proper handling of values in virtchnl messages in
> driverrs and prevents unintended behavior.
> In its current signed form, a negative count does not trigger
> an error in ice driver but instead results in it being treated as 0.
> This can lead to unexpected outcomes when processing messages.
> By using u32, any invalid values will correctly trigger -EINVAL,
> making error detection more robust.
> 
> Fixes: 1f7ea1cd6a374 ("ice: Enable FDIR Configure for AVF")
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

