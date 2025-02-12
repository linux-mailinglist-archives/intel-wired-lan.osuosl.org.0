Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C197DA32E82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 19:21:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39A838475D;
	Wed, 12 Feb 2025 18:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0UcZjddwRYrn; Wed, 12 Feb 2025 18:21:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66B4084739
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739384480;
	bh=f5bh1ba/9Tp5vYanYm+o5GgKVFqKEZTV1v2v0a7IYm4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VX9MDUb7yo5ZIZ6gKBPQ04Yot2RqpT+5Q/wXl9EYMD9OTEVFeMDzWr/5FlKU/wQ2e
	 RxDiPhIflaEXtvYtyVV8XzNGFXTV+nMxuLjaWoWFst1KS7l9lWtruDybrrRM8yaCB7
	 CTGSx+fhxoCvVuXVg+dgzdHyTAP1ev3/ahvmHc9RrdgR0YH45X67wWzPzcEpU/h3Nq
	 ZelwFCtr8DWRtH0j2IIAKk55aoZDBSDOx+a2tNtjYZ6FgLm2j7v6xHSxIUIcAwC2ZH
	 Dz/lht0GUCCP+i5kB2RTzKz0LEZswc8+pYfXZllGY1W4d/QRmZx68DzBLT5elfuBoq
	 /kEuPBYlnFFIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66B4084739;
	Wed, 12 Feb 2025 18:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 06C871C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01AED60F29
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:21:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aU-icq1JJOPq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 18:21:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 26F226105F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26F226105F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26F226105F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:21:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 71EAC5C5D68;
 Wed, 12 Feb 2025 18:20:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82DB2C4CEDF;
 Wed, 12 Feb 2025 18:21:13 +0000 (UTC)
Date: Wed, 12 Feb 2025 18:21:11 +0000
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 decot@google.com, willemb@google.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, madhu.chittim@intel.com
Message-ID: <20250212182111.GH1615191@kernel.org>
References: <20250211023851.21090-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250211023851.21090-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739384475;
 bh=wD+92cBbxCe7rCQkfdRtFyyzmOpbJZjmX685H3g2G58=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nOzfkl02hIKMj5oI8ivS67Rjpjjlt9MDd+tTFIcWyNFZeNHDelWh6+ry0yC+zuhoW
 96h6/vpGJtHZ6QTby8IvAivv9Fbdk3Plh7C31KauOphYIM0PKdg1xdAE4d9xqUbTzg
 A7/SeNxV0sFJ/uJrPPQPluE3wpWI8hOb+zj2YbnC0pTXYi7Oym7nTUQgs9nFbmoAmh
 gvePIZlYqLH/obaOZORwnE2D21RMk+vgrDtJmWjvrIHTWeyAA5uIm1KVCrnWPgAnnR
 4MK73hWsQH/KlVp25GBgv+eJRyaSD6BmLyIJyWrksSfS/HjATBDmWcnJ6LkUugaq5Q
 aPfW8uxuBhkkg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nOzfkl02
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: check error for
 register_netdev() on init
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

On Mon, Feb 10, 2025 at 06:38:51PM -0800, Emil Tantilov wrote:
> Current init logic ignores the error code from register_netdev(),
> which will cause WARN_ON() on attempt to unregister it, if there was one,
> and there is no info for the user that the creation of the netdev failed.
> 
> WARNING: CPU: 89 PID: 6902 at net/core/dev.c:11512 unregister_netdevice_many_notify+0x211/0x1a10
> ...
> [ 3707.563641]  unregister_netdev+0x1c/0x30
> [ 3707.563656]  idpf_vport_dealloc+0x5cf/0xce0 [idpf]
> [ 3707.563684]  idpf_deinit_task+0xef/0x160 [idpf]
> [ 3707.563712]  idpf_vc_core_deinit+0x84/0x320 [idpf]
> [ 3707.563739]  idpf_remove+0xbf/0x780 [idpf]
> [ 3707.563769]  pci_device_remove+0xab/0x1e0
> [ 3707.563786]  device_release_driver_internal+0x371/0x530
> [ 3707.563803]  driver_detach+0xbf/0x180
> [ 3707.563816]  bus_remove_driver+0x11b/0x2a0
> [ 3707.563829]  pci_unregister_driver+0x2a/0x250
> 
> Introduce an error check and log the vport number and error code.
> On removal make sure to check VPORT_REG_NETDEV flag prior to calling
> unregister and free on the netdev.
> 
> Add local variables for idx, vport_config and netdev for readability.
> 
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 27 ++++++++++++++--------
>  1 file changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c

...

> @@ -1536,12 +1540,17 @@ void idpf_init_task(struct work_struct *work)
>  	}
>  
>  	for (index = 0; index < adapter->max_vports; index++) {
> -		if (adapter->netdevs[index] &&
> -		    !test_bit(IDPF_VPORT_REG_NETDEV,
> -			      adapter->vport_config[index]->flags)) {
> -			register_netdev(adapter->netdevs[index]);
> -			set_bit(IDPF_VPORT_REG_NETDEV,
> -				adapter->vport_config[index]->flags);
> +		struct idpf_vport_config *vport_config = adapter->vport_config[index];
> +		struct net_device *netdev = adapter->netdevs[index];
> +
> +		if (netdev && !test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags)) {
> +			err = register_netdev(netdev);
> +			if (err) {
> +				dev_err(&pdev->dev, "failed to register netdev for vport %d: %pe\n",
> +					index, ERR_PTR(err));
> +				continue;
> +			}
> +			set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
>  		}
>  	}

Hi Emil,

I'm wondering if we could reduce indentation and lines longer
than 80 characters in the above like this (completely untested!):


	for (index = 0; index < adapter->max_vports; index++) {
		struct idpf_vport_config *vport_config = adapter->vport_config[index];
		struct net_device *netdev = adapter->netdevs[index];

		if (!netdev ||
		    test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags))
		    continue;

		err = register_netdev(netdev);
		if (err) {
			dev_err(&pdev->dev, "failed to register netdev for vport %d: %pe\n",
				index, ERR_PTR(err));
			continue;
		}
		set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
	}
