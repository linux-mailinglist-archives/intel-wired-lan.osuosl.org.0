Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDB0BD86CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 11:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C809416EE;
	Tue, 14 Oct 2025 09:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xZGqblV_YVmH; Tue, 14 Oct 2025 09:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99E73416EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760433939;
	bh=GD8FylA4D9oRZZvjSt8kDx0a2u/g49OpkySYU39ZlB0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sWJnKcuIvE3OqSm7GFey0kCUuz56eJ+sn438jsgGn3sMQQqOmnkeJVTHXJrvtZCXh
	 ktiBDMm/+NOLmWV28+2IsFeEIgX8hMXFJ0SNjKoCFAFmJJl97d2vP1WPwjqAL6COio
	 PgERflnHtZL7kx+OPwM0TTfTnzcXJWEgyUzOa0QbEb77Bew1M88/CIfjOGuAWj4Op5
	 dYV/H0koD38afeQyp6kiWQ1sSzTzEuAS1IY0WMXY8y0WdjoyfK7Jd1LavyrNZ525Vs
	 zZGyC8mfbguuRI0Yjmxj/tfDcU4y+ZjmBFE5HGtnZuKOPIr98i8D8F309xAseOF2id
	 HL8+LhMJ9qUkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99E73416EB;
	Tue, 14 Oct 2025 09:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 70ED8294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 09:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65D61413C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 09:25:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6_-uoDaU7Pl2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 09:25:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFD5240F6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFD5240F6A
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFD5240F6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 09:25:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DFD3B62246;
 Tue, 14 Oct 2025 09:25:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAD8FC4CEE7;
 Tue, 14 Oct 2025 09:25:31 +0000 (UTC)
Date: Tue, 14 Oct 2025 10:25:29 +0100
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com,
 willemb@google.com, joshua.a.hay@intel.com, madhu.chittim@intel.com
Message-ID: <aO4XCSu0jZ57k-1Z@horms.kernel.org>
References: <20251013150824.28705-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013150824.28705-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1760433934;
 bh=8Mpb15od7JA5MjgB34GiY42X9T1Dma3DJCUBcLWR5Uo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K2VIJnvjeULkqo+jYu3MvXTdSpkss5eKcDIMzGYsUp3pWCeEXwq+shs9TcZ4PxS/V
 GpMekWpp7laGilxhFxm4nwbvwhNL1qw32IaJfSvItJxyh4CmM/RtUl93JR9ex1ohCY
 znUyPA0CmOYaYXnWOxPeJULE+yQIeoYJLcoqiEY5hhB7tK01obDPy101yM7pK4xDjj
 UMCVcJtT0yvKXp1ITzvmMhH9yWZI5OpzZ4zKH/guopeGKH8LpeKEtZQeGIX9akt//R
 0566OisOS/MhbuLghBymw8ZOkxOc1+1sRewCBbMawDo/6Ii+vE04JTPBYSjcAIqN2Q
 FmIU3KgDSK3GQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=K2VIJnvj
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible
 vport_config NULL pointer deref in remove
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

On Mon, Oct 13, 2025 at 08:08:24AM -0700, Emil Tantilov wrote:
> Attempting to remove the driver will cause a crash in cases where
> the vport failed to initialize. Following trace is from an instance where
> the driver failed during an attempt to create a VF:
> [ 1661.543624] idpf 0000:84:00.7: Device HW Reset initiated
> [ 1722.923726] idpf 0000:84:00.7: Transaction timed-out (op:1 cookie:2900 vc_op:1 salt:29 timeout:60000ms)
> [ 1723.353263] BUG: kernel NULL pointer dereference, address: 0000000000000028
> ...
> [ 1723.358472] RIP: 0010:idpf_remove+0x11c/0x200 [idpf]
> ...
> [ 1723.364973] Call Trace:
> [ 1723.365475]  <TASK>
> [ 1723.365972]  pci_device_remove+0x42/0xb0
> [ 1723.366481]  device_release_driver_internal+0x1a9/0x210
> [ 1723.366987]  pci_stop_bus_device+0x6d/0x90
> [ 1723.367488]  pci_stop_and_remove_bus_device+0x12/0x20
> [ 1723.367971]  pci_iov_remove_virtfn+0xbd/0x120
> [ 1723.368309]  sriov_disable+0x34/0xe0
> [ 1723.368643]  idpf_sriov_configure+0x58/0x140 [idpf]
> [ 1723.368982]  sriov_numvfs_store+0xda/0x1c0
> 
> Avoid the NULL pointer dereference by adding NULL pointer check for
> vport_config[i], before freeing user_config.q_coalesce.
> 
> Fixes: e1e3fec3e34b ("idpf: preserve coalescing settings across resets")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>

Thanks,

I agree that prior to the cited commit adapter->vport_config[i] being
NULL was harmless. But afterwards a NULL pointer dereference would occur.

It also seems to me that the possibility of adapter->vport_config[i]
being null, via an error in idpf_vport_alloc() has existed since
vport configuration was added by commit 0fe45467a104 ("idpf: add create
vport and netdev configuration"). (Which predates the cited commit.)

Reviewed-by: Simon Horman <horms@kernel.org>

