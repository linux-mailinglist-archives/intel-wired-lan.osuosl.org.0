Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9CEA58BE2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 07:22:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 639FB81326;
	Mon, 10 Mar 2025 06:22:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g-UZ2bDbKN0A; Mon, 10 Mar 2025 06:22:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B654E8131E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741587766;
	bh=6SPOYjueMFvQZmC/pBgFgaBsu+5gQe4Fu/YeV9e3h+I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aiPm15mc7y4Q8kSjLnidM1FNI0J0J8GZuNHT9wrx1mnLZ9ZCWqkiDE6CLIfPg2mFx
	 zouKnbIrlYQ502405G0PuIByAb15kZT9Wq5juMibWSOtbE3bcsnYl8rtypIfohCxPv
	 X4LbukJwZq7j8k0XcURn+ieB3dhYTHmRgxKIcmin0tembWkwsGgdpmiu5xaVtt5dkD
	 FtBGhhGsqhrgW+eoIoN/QEdgqJqPqwCo+0g1hGjFtWmj31t/di3AFBnSZzpdsAF6XK
	 IGvQ28jgl4MAgjgpZ2Q/qOsEEnfxbwUExVSgrYy7974O4yq7ngQNEmH4yZpu74uRy/
	 mCai4m2lthYpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B654E8131E;
	Mon, 10 Mar 2025 06:22:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 93B971C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 06:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81E09606F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 06:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JVXq4vwE_qiO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 06:22:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D33DE605EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D33DE605EE
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D33DE605EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 06:22:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2E31FA45E5E;
 Mon, 10 Mar 2025 06:17:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80C14C4CEE5;
 Mon, 10 Mar 2025 06:22:38 +0000 (UTC)
Date: Mon, 10 Mar 2025 07:22:29 +0100
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <20250310062229.GD4159220@kernel.org>
References: <20250307003956.22018-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307003956.22018-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741587762;
 bh=Heq9Vfd9RkINitmBqpLfkAzNT3H2R2CSZ/30mhG0gZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xc33tu/AzUZBseja0is+oV6q0OgGC8WHWtgmzkHCCYVOiDa+lGm3vJbEEwALy7nOf
 fZrjqTlhaOuQVY2vMM2n/ntBpVPFoH97WtrsS3UdBSvF7JtzBEH8n1WgenAHouSfNR
 8eo9ixUpeamfmXTgXsIYXYM7adtbJqXbPRbBuLaDvVT+Eu8twLZYkTDUevOU0HOGl1
 pxOzrCOmRI9qEp8RWwYeBmTQ8PJ6uk9QUbYv9H7gfo1YGnLHsgKPE0ktQBfgNvi5ap
 TAGbOVTCiC84rIhfHetBGoUxdUCq/fa9xpJvW6P++CrTLHuNq3XyIRpEmKAn0lM0L5
 0rNRBQTIrooTA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Xc33tu/A
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix adapter NULL
 pointer dereference on reboot
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 yuma@redhat.com, Aleksandr.Loktionov@intel.com, edumazet@google.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, decot@google.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 06, 2025 at 04:39:56PM -0800, Emil Tantilov wrote:
> Driver calls idpf_remove() from idpf_shutdown(), which can end up
> calling idpf_remove() again when disabling SRIOV.
> 
> echo 1 > /sys/class/net/<netif>/device/sriov_numvfs
> reboot
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> ...
> RIP: 0010:idpf_remove+0x22/0x1f0 [idpf]
> ...
> ? idpf_remove+0x22/0x1f0 [idpf]
> ? idpf_remove+0x1e4/0x1f0 [idpf]
> pci_device_remove+0x3f/0xb0
> device_release_driver_internal+0x19f/0x200
> pci_stop_bus_device+0x6d/0x90
> pci_stop_and_remove_bus_device+0x12/0x20
> pci_iov_remove_virtfn+0xbe/0x120
> sriov_disable+0x34/0xe0
> idpf_sriov_configure+0x58/0x140 [idpf]
> idpf_remove+0x1b9/0x1f0 [idpf]
> idpf_shutdown+0x12/0x30 [idpf]
> pci_device_shutdown+0x35/0x60
> device_shutdown+0x156/0x200
> ...
> 
> Replace the direct idpf_remove() call in idpf_shutdown() with
> idpf_vc_core_deinit() and idpf_deinit_dflt_mbx(), which perform
> the bulk of the cleanup, such as stopping the init task, freeing IRQs,
> destroying the vports and freeing the mailbox.

Hi Emil,

I think it would be worth adding some commentary on the rest of
the clean-up performed by idpf_remove() and why it is correct
to no longer do so directly from a call to idpf_remove() from
idpf_shutdown() (IOW, it isn't clear to me :).

...
