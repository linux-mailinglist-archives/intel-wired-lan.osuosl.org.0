Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A80CDD946
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Dec 2025 10:27:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEBB18126C;
	Thu, 25 Dec 2025 09:27:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j2fGpUbsgUad; Thu, 25 Dec 2025 09:27:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1454981277
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766654842;
	bh=z1s5C7iEYy9u+XBXfT5X/k/pOFRT4TN7MTpomVX9Uwg=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ejnch+PV4aVr5ggEa5CXLy32KFOTDqh7Ya3L+pHsMjx8j4I5Fyz+g5+PrMDXlE8c3
	 0R+somAIDBv2jrNMZ7sFKgtJsIyz2JsvyBFqch05/Y6etJDS8BKToBQNaJeaE3GWNu
	 jPdgldy/yj9j4ASbe8nwb0G2MpAyB4k1Y10PdvQNib485bbk7EIIOZJlrR53rgdLYj
	 0LrZIHb10H7yPK3JlfbxvjhN9tXFO0nbxHimiKms5RcmMstIxzIgZ8CeRnHOQla0+b
	 Lh+fRf7RWlT5UNrm2ouwEe6DOTaaW2M3cqVuCFrWmxj07D5KgLh2/CggSFnA0+aIhH
	 Kdc5DHXgxaTaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1454981277;
	Thu, 25 Dec 2025 09:27:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 291F7EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 09:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1695860628
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 09:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUB9fmYIB9gg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Dec 2025 09:27:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05E8660826
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05E8660826
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05E8660826
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 09:27:17 +0000 (UTC)
Received: from [10.128.41.173] (unknown [103.50.105.82])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C799C61CC3FCE;
 Thu, 25 Dec 2025 10:26:34 +0100 (CET)
Message-ID: <14a86654-7bcd-48ba-bda6-0205b07877f9@molgen.mpg.de>
Date: Thu, 25 Dec 2025 14:26:14 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aaron Ma <aaron.ma@canonical.com>
References: <20251225062122.736308-1-aaron.ma@canonical.com>
Content-Language: en-US
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251225062122.736308-1-aaron.ma@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v3 1/2] ice: Fix NULL pointer
 dereference in ice_vsi_set_napi_queues
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

Dear Aaron,


Thank you for the patch.

Am 25.12.25 um 11:21 schrieb Aaron Ma via Intel-wired-lan:
> Add NULL pointer checks in ice_vsi_set_napi_queues() to prevent crashes
> during resume from suspend when rings[q_idx]->q_vector is NULL.
> 
> Tested adaptor:
> 60:00.0 Ethernet controller [0200]: Intel Corporation Ethernet Controller E810-XXV for SFP [8086:159b] (rev 02)
>          Subsystem: Intel Corporation Ethernet Network Adapter E810-XXV-2 [8086:4003]
> 
> SR-IOV state: both disabled and enabled can reproduce this issue.
> 
> kernel version: v6.18
> 
> Reproduce steps:
> Bootup and execute suspend like systemctl suspend or rtcwake.
> 
> Log:
> <1>[  231.443607] BUG: kernel NULL pointer dereference, address: 0000000000000040
> <1>[  231.444052] #PF: supervisor read access in kernel mode
> <1>[  231.444484] #PF: error_code(0x0000) - not-present page
> <6>[  231.444913] PGD 0 P4D 0
> <4>[  231.445342] Oops: Oops: 0000 [#1] SMP NOPTI
> <4>[  231.446635] RIP: 0010:netif_queue_set_napi+0xa/0x170
> <4>[  231.447067] Code: 31 f6 31 ff c3 cc cc cc cc 0f 1f 80 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 48 85 c9 74 0b <48> 83 79 30 00 0f 84 39 01 00 00 55 41 89 d1 49 89 f8 89 f2 48 89
> <4>[  231.447513] RSP: 0018:ffffcc780fc078c0 EFLAGS: 00010202
> <4>[  231.447961] RAX: ffff8b848ca30400 RBX: ffff8b848caf2028 RCX: 0000000000000010
> <4>[  231.448443] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff8b848dbd4000
> <4>[  231.448896] RBP: ffffcc780fc078e8 R08: 0000000000000000 R09: 0000000000000000
> <4>[  231.449345] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000001
> <4>[  231.449817] R13: ffff8b848dbd4000 R14: ffff8b84833390c8 R15: 0000000000000000
> <4>[  231.450265] FS:  00007c7b29e9d740(0000) GS:ffff8b8c068e2000(0000) knlGS:0000000000000000
> <4>[  231.450715] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4>[  231.451179] CR2: 0000000000000040 CR3: 000000030626f004 CR4: 0000000000f72ef0
> <4>[  231.451629] PKRU: 55555554
> <4>[  231.452076] Call Trace:
> <4>[  231.452549]  <TASK>
> <4>[  231.452996]  ? ice_vsi_set_napi_queues+0x4d/0x110 [ice]
> <4>[  231.453482]  ice_resume+0xfd/0x220 [ice]
> <4>[  231.453977]  ? __pfx_pci_pm_resume+0x10/0x10
> <4>[  231.454425]  pci_pm_resume+0x8c/0x140
> <4>[  231.454872]  ? __pfx_pci_pm_resume+0x10/0x10
> <4>[  231.455347]  dpm_run_callback+0x5f/0x160
> <4>[  231.455796]  ? dpm_wait_for_superior+0x107/0x170
> <4>[  231.456244]  device_resume+0x177/0x270
> <4>[  231.456708]  dpm_resume+0x209/0x2f0
> <4>[  231.457151]  dpm_resume_end+0x15/0x30
> <4>[  231.457596]  suspend_devices_and_enter+0x1da/0x2b0
> <4>[  231.458054]  enter_state+0x10e/0x570
> 
> Add defensive checks for both the ring pointer and its q_vector
> before dereferencing, allowing the system to resume successfully even when
> q_vectors are unmapped.
> 
> Fixes: 2a5dc090b92cf ("ice: move netif_queue_set_napi to rtnl-protected sections")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> V1 -> V2: add test device info.
> V2 -> V3: no changes.
> 
>   drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 15621707fbf81..9d1178bde4495 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2779,11 +2779,13 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
>   
>   	ASSERT_RTNL();
>   	ice_for_each_rxq(vsi, q_idx)
> -		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
> +		if (vsi->rx_rings[q_idx] && vsi->rx_rings[q_idx]->q_vector)
> +			netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
>   				     &vsi->rx_rings[q_idx]->q_vector->napi);
>   
>   	ice_for_each_txq(vsi, q_idx)
> -		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX,
> +		if (vsi->tx_rings[q_idx] && vsi->tx_rings[q_idx]->q_vector)
> +			netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX,
>   				     &vsi->tx_rings[q_idx]->q_vector->napi);
>   	/* Also set the interrupt number for the NAPI */
>   	ice_for_each_q_vector(vsi, v_idx) {

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Pa
