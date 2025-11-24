Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B27C80856
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 13:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97B4460761;
	Mon, 24 Nov 2025 12:43:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r7uPXBWxfVLL; Mon, 24 Nov 2025 12:43:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FB4B60755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763988193;
	bh=0iVB7pt1rEUTtAaOL43cdl2azNNT4r5D+Ah/Jdjzq7c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VrAH9o2ujh4UIJ3kdb/mC6hoE5PTS9E7eqfvgf4VHvORoGdsMoh3hQroW9W+p46GB
	 +7JJXKk/ggDLOzL7k2StKv0Ns/wP1sRswRe3sW9LSfDczQALEOVZSxyj3nGJoKt2g3
	 Rg0ui6EDCpsFD/7tbG/kihslAa3uFg/FmC1n6/+Pz9cnyrRXtJ3HPSmX5NrakmlyOd
	 V7w3w7GGdGZb4sZ4lOJPvGTsiMHgwZmiejWR9d6AbyPo5LRo1T/IT7b3lBkjjolhsh
	 +bIV9YB7mRZMJ/aSuEhxwcl+0HVIr3zTA6yQk2EPgizMEfOeFaXTUlOlhFHhHaaMRI
	 sMyVZOcYHr2Pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FB4B60755;
	Mon, 24 Nov 2025 12:43:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D4A70158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 12:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6B4240D3C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 12:43:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4eR1e1EfJyK4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 12:43:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F69140CF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F69140CF5
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F69140CF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 12:43:09 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A3B28617C4F8B;
 Mon, 24 Nov 2025 13:42:49 +0100 (CET)
Message-ID: <7327dde3-e6db-4699-acbf-8815434d2757@molgen.mpg.de>
Date: Mon, 24 Nov 2025 13:42:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251124122609.3087-1-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251124122609.3087-1-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update DDP LAG
 package to 1.3.2.0
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

Dear Marcin,


Thank you for v3.

Am 24.11.25 um 13:26 schrieb Marcin Szycik:
> Highlights of changes since 1.3.1.0:
> 
> - Add support for Intel E830 series SR-IOV Link Aggregation (LAG) in
>    active-active mode. This uses a dual-segment package with one segment
>    for E810 and one for E830, which increases package size.
> 
> Testing hints:
>    # Install ice_lag package - refer to Dynamic Device Personalization
>    # section in:
>    # Documentation/networking/device_drivers/ethernet/intel/ice.rst
>    # in kernel tree.
>    modprobe ice
>    devlink dev eswitch set $PF1_PCI mode switchdev
>    ip link add $BR type bridge
>    echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
>    ip link add $BOND type bond miimon 100 mode 802.3ad
>    ip link set $PF1 down
>    ip link set $PF1 master $BOND
>    ip link set $PF2 down
>    ip link set $PF2 master $BOND
>    ip link set $BOND master $BR
>    ip link set $VF1_PR master $BR
>    # Configure link partner in 802.3ad bond mode - e.g. for Linux partner
>    # the same commands as above, but without VF, bridge and switchdev.
>    # Verify both links in bond are transmitting/receiving VF traffic.
>    # Verify connectivity still works after pulling one of the cables -
>    # e.g. physically, or (if using ice on link partner):
>    ethtool --set-priv-flags $PF1 link-down-on-close on
>    ip link set $PF1 down
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v3:
>    * Extend testing hints
>    * Don't use bullet points for testing hints
> v2: Update WHENCE
> ---
>   WHENCE                                        |   2 +-
>   ...ce_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} | Bin 692776 -> 1360772 bytes
>   2 files changed, 1 insertion(+), 1 deletion(-)
>   rename intel/ice/ddp-lag/{ice_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} (49%)

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
