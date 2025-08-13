Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F003B23FF3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 06:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2A65606F8;
	Wed, 13 Aug 2025 04:56:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xty6PybCn7GM; Wed, 13 Aug 2025 04:56:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DD86606E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755060985;
	bh=F2Bi3n78zArMTDJUKwX7/FOGAOb9uR/YCGDo+6JQKzc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sibc0ycox2lTE339kwSwDkEiZPFXzBoI8qk3BIvDLMkU4NU1V5dMKTjoE/tlsB52h
	 ZL44b1PN9NJVeEU3feExuyBaPT5evHD9kBaEUBMfb/8S/Wo5MJ4avNCHML0EsgtWe5
	 6wQ19cPx2ammZpjYFIfP3iOLcG9bqqVcskevkIhPViIohr3/hppZjc3j56k0zEBqdM
	 mJgdaAvCxfpux69jkQG8xW1xh65HDU2rIcJM1a9hRwJbpFJriktHDEeJzBWXgyqQA+
	 Lfa66Y0RANlUqmA9bO76pBHPA32dQ2iC9BJ2NTSkyukLKO4rbPsGETkqIKwnzYdqx2
	 ZB7bNPdvOb8tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DD86606E1;
	Wed, 13 Aug 2025 04:56:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E08EB1B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 04:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2B06606DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 04:56:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BgvPg160QB6v for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 04:56:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A89FE606BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A89FE606BB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A89FE606BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 04:56:21 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7c8.dynamic.kabel-deutschland.de
 [95.90.247.200])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4F62061E647BA;
 Wed, 13 Aug 2025 06:55:53 +0200 (CEST)
Message-ID: <a154eb9b-809e-4b8c-8b77-89c80d6658e1@molgen.mpg.de>
Date: Wed, 13 Aug 2025 06:55:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, willemb@google.com, decot@google.com,
 netdev@vger.kernel.org, joshua.a.hay@intel.com,
 Aleksandr.Loktionov@intel.com, andrew+netdev@lunn.ch, edumazet@google.com,
 jianliu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
References: <20250813024202.10740-1-emil.s.tantilov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250813024202.10740-1-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: set mac type when
 adding and removing MAC filters
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

Dear Emil,


Thank you for the patch.

Am 13.08.25 um 04:42 schrieb Emil Tantilov:
> On control planes that allow changing the MAC address of the interface,
> the driver must provide a MAC type to avoid errors such as:
> 
> idpf 0000:0a:00.0: Transaction failed (op 535)
> idpf 0000:0a:00.0: Received invalid MAC filter payload (op 535) (len 0)
> idpf 0000:0a:00.0: Transaction failed (op 536)
> 
> These errors occur during driver load or when changing the MAC via:
> ip link set <iface> address <mac>
> 
> Add logic to set the MAC type when sending ADD/DEL (opcodes 535/536) to
> the control plane. Since only one primary MAC is supported per vport, the
> driver only needs to send an ADD opcode when setting it. Remove the old
> address by calling __idpf_del_mac_filter(), which skips the message and
> just clears the entry from the internal list.

Could this be split into two patches?

1.  Set the type
2.  Improve logic

> Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
> Reported-by: Jian Liu <jianliu@redhat.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
> Changelog:
> v2:
> - Make sure to clear the primary MAC from the internal list, following
>    successful change.
> - Update the description to include the error on 536 opcode and
>    mention the removal of the old address.
> 
> v1:
> https://lore.kernel.org/intel-wired-lan/20250806192130.3197-1-emil.s.tantilov@intel.com/
> ---
>   drivers/net/ethernet/intel/idpf/idpf_lib.c      |  9 ++++++---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++++++
>   2 files changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 2c2a3e85d693..26edd2cda70b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -2345,6 +2345,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
>   	struct idpf_vport_config *vport_config;
>   	struct sockaddr *addr = p;
>   	struct idpf_vport *vport;
> +	u8 old_addr[ETH_ALEN];

old_mac_addr?

>   	int err = 0;
>   
>   	idpf_vport_ctrl_lock(netdev);
> @@ -2367,17 +2368,19 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
>   	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
>   		goto unlock_mutex;
>   
> +	ether_addr_copy(old_addr, vport->default_mac_addr);
> +	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>   	vport_config = vport->adapter->vport_config[vport->idx];
>   	err = idpf_add_mac_filter(vport, np, addr->sa_data, false);
>   	if (err) {
>   		__idpf_del_mac_filter(vport_config, addr->sa_data);
> +		ether_addr_copy(vport->default_mac_addr, netdev->dev_addr);
>   		goto unlock_mutex;
>   	}
>   
> -	if (is_valid_ether_addr(vport->default_mac_addr))
> -		idpf_del_mac_filter(vport, np, vport->default_mac_addr, false);
> +	if (is_valid_ether_addr(old_addr))
> +		__idpf_del_mac_filter(vport_config, old_addr);
>   
> -	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>   	eth_hw_addr_set(netdev, addr->sa_data);
>   
>   unlock_mutex:
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index a028c69f7fdc..e60438633cc4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3765,6 +3765,15 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
>   	return le32_to_cpu(vport_msg->vport_id);
>   }
>   
> +static void idpf_set_mac_type(struct idpf_vport *vport,
> +			      struct virtchnl2_mac_addr *mac_addr)
> +{
> +	if (ether_addr_equal(vport->default_mac_addr, mac_addr->addr))
> +		mac_addr->type = VIRTCHNL2_MAC_ADDR_PRIMARY;
> +	else
> +		mac_addr->type = VIRTCHNL2_MAC_ADDR_EXTRA;

I’d use the ternary operator. That way, it’s clear the same variable is 
assigned a value in each branch.

> +}
> +
>   /**
>    * idpf_mac_filter_async_handler - Async callback for mac filters
>    * @adapter: private data struct
> @@ -3894,6 +3903,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
>   			    list) {
>   		if (add && f->add) {
>   			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			idpf_set_mac_type(vport, &mac_addr[i]);
>   			i++;
>   			f->add = false;
>   			if (i == total_filters)
> @@ -3901,6 +3911,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
>   		}
>   		if (!add && f->remove) {
>   			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			idpf_set_mac_type(vport, &mac_addr[i]);
>   			i++;
>   			f->remove = false;
>   			if (i == total_filters)

The overall diff looks good. Feel free to add:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
