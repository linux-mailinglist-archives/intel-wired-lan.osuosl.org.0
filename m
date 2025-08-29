Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C37B3C4A5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Aug 2025 00:07:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84B9A61AE4;
	Fri, 29 Aug 2025 22:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wETS__oi52CP; Fri, 29 Aug 2025 22:07:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D04461AE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756505275;
	bh=B1+jX2UtJdW9jYLWvE6pcxNpFFmPrUZvX5Itq52bGGQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CROiOtN8pIV6sphQz+jWlAr7+XhYLzPlAtgijJe2RrXLZyuKlp9mT8Q2NE8FB8rnm
	 EEZNW98JfwAXRGwAU8mi9RW1ardssXXEB5lCMx20+eGMPf7uAZEsgCJZrNmsrfChj1
	 G64t35FiVlGGW/kSDRRgJtVl7TjgkGQunw73Z+sT2QhUAAyvKtV1bVlkKXkHp70AGs
	 PFsMc71AsMxOp8o20zOYy5zY/5zuY2h87T6bvRcR+9jNNQkVY2jYlrPp58TMo+EmNY
	 R5ffo9R1ho4krf6q76SDX26rNfe6e8RkiQsAj9uOSoxm82/SMnxHGzJ8zLx/yG52/0
	 EAhquhWsTXjnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D04461AE5;
	Fri, 29 Aug 2025 22:07:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BA68D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 22:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 287E341791
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 22:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rG2bHDVj54_9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 22:07:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C46FA404A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C46FA404A0
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C46FA404A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 22:07:50 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7a9.dynamic.kabel-deutschland.de
 [95.90.247.169])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BC786602019A1;
 Sat, 30 Aug 2025 00:07:26 +0200 (CEST)
Message-ID: <857bf36b-6bc7-44f8-bb5e-7c9460e4ef1c@molgen.mpg.de>
Date: Sat, 30 Aug 2025 00:07:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Madhu Chittim <madhu.chittim@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 horms@kernel.org, linux-pci@vger.kernel.org
References: <20250829172453.2059973-1-madhu.chittim@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250829172453.2059973-1-madhu.chittim@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] idpf: add support for
 IDPF PCI programming interface
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

[Cc: +linux-pci@vger.kernel.org]

Dear Madhu, dear Pavan,


Thank you for the patch.


Am 29.08.25 um 19:24 schrieb Madhu Chittim:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> At present IDPF supports only 0x1452 and 0x145C as PF and VF device IDs
> on our current generation hardware. Future hardware exposes a new set of
> device IDs for each generation. To avoid adding a new device ID for each
> generation and to make the driver forward and backward compatible,
> make use of the IDPF PCI programming interface to load the driver.
> 
> Write and read the VF_ARQBAL mailbox register to find if the current
> device is a PF or a VF.
> 
> PCI SIG allocated a new programming interface for the IDPF compliant
> ethernet network controller devices. It can be found at:
> https://members.pcisig.com/wg/PCI-SIG/document/20113
> with the document titled as 'PCI Code and ID Assignment Revision 1.16'
> or any latest revisions.

Could you please add some information, how you tested this?

> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> 
> ---
> v3:
> - reworked logic to avoid gotos
> 
> v2:
> - replace *u8 with *bool in idpf_is_vf_device function parameter
> - use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter
> 
> ---
> 
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>

This looks like a stray line, but will probably be ignored, when applied.

> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
>   drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
>   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 37 ++++++++++
>   3 files changed, 94 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index c56abf8b4c92..4a16e481faf7 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -1041,6 +1041,7 @@ void idpf_mbx_task(struct work_struct *work);
>   void idpf_vc_event_task(struct work_struct *work);
>   void idpf_dev_ops_init(struct idpf_adapter *adapter);
>   void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
> +int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf);
>   int idpf_intr_req(struct idpf_adapter *adapter);
>   void idpf_intr_rel(struct idpf_adapter *adapter);
>   u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 8c46481d2e1f..493604d50143 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -7,11 +7,57 @@
>   
>   #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
>   
> +#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
> +#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
> +	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
> +
>   MODULE_DESCRIPTION(DRV_SUMMARY);
>   MODULE_IMPORT_NS("LIBETH");
>   MODULE_IMPORT_NS("LIBETH_XDP");
>   MODULE_LICENSE("GPL");
>   
> +/**
> + * idpf_dev_init - Initialize device specific parameters
> + * @adapter: adapter to initialize
> + * @ent: entry in idpf_pci_tbl
> + *
> + * Return: %0 on success, -%errno on failure.
> + */
> +static int idpf_dev_init(struct idpf_adapter *adapter,
> +			 const struct pci_device_id *ent)
> +{
> +	bool is_vf = false;
> +	int err;
> +
> +	if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF) {
> +		err = idpf_is_vf_device(adapter->pdev, &is_vf);
> +		if (err)
> +			return err;
> +		if (is_vf) {
> +			idpf_vf_dev_ops_init(adapter);
> +			adapter->crc_enable = true;
> +		} else {
> +			idpf_dev_ops_init(adapter);
> +		}
> +
> +		return 0;
> +	}
> +
> +	switch (ent->device) {
> +	case IDPF_DEV_ID_PF:
> +		idpf_dev_ops_init(adapter);
> +		break;
> +	case IDPF_DEV_ID_VF:
> +		idpf_vf_dev_ops_init(adapter);
> +		adapter->crc_enable = true;
> +		break;
> +	default:
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * idpf_remove - Device removal routine
>    * @pdev: PCI device information struct
> @@ -165,21 +211,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	adapter->req_tx_splitq = true;
>   	adapter->req_rx_splitq = true;
>   
> -	switch (ent->device) {
> -	case IDPF_DEV_ID_PF:
> -		idpf_dev_ops_init(adapter);
> -		break;
> -	case IDPF_DEV_ID_VF:
> -		idpf_vf_dev_ops_init(adapter);
> -		adapter->crc_enable = true;
> -		break;
> -	default:
> -		err = -ENODEV;
> -		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
> -			ent->device);
> -		goto err_free;
> -	}
> -
>   	adapter->pdev = pdev;
>   	err = pcim_enable_device(pdev);
>   	if (err)
> @@ -259,11 +290,18 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* setup msglvl */
>   	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
>   
> +	err = idpf_dev_init(adapter, ent);
> +	if (err) {
> +		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
> +			ent->device);
> +		goto destroy_vc_event_wq;
> +	}
> +
>   	err = idpf_cfg_hw(adapter);
>   	if (err) {
>   		dev_err(dev, "Failed to configure HW structure for adapter: %d\n",
>   			err);
> -		goto err_cfg_hw;
> +		goto destroy_vc_event_wq;
>   	}
>   
>   	mutex_init(&adapter->vport_ctrl_lock);
> @@ -284,7 +322,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   
>   	return 0;
>   
> -err_cfg_hw:
> +destroy_vc_event_wq:
>   	destroy_workqueue(adapter->vc_event_wq);
>   err_vc_event_wq_alloc:
>   	destroy_workqueue(adapter->stats_wq);
> @@ -304,6 +342,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   static const struct pci_device_id idpf_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF)},
>   	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_VF)},
> +	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, ~0)},
>   	{ /* Sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> index 7527b967e2e7..09cccdf45b50 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> @@ -7,6 +7,43 @@
>   
>   #define IDPF_VF_ITR_IDX_SPACING		0x40
>   
> +#define IDPF_VF_TEST_VAL		0xFEED0000
> +
> +/**
> + * idpf_is_vf_device - Helper to find if it is a VF device
> + * @pdev: PCI device information struct
> + * @is_vf: used to update VF device status
> + *
> + * Return: %0 on success, -%errno on failure.
> + */
> +int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf)
> +{
> +	struct resource mbx_region;
> +	resource_size_t mbx_start;
> +	void __iomem *mbx_addr;
> +	long len;

Use size_t?

     include/linux/ioport.h:static inline resource_size_t 
resource_size(const struct resource *res)


> +
> +	resource_set_range(&mbx_region,	VF_BASE, IDPF_VF_MBX_REGION_SZ);
> +
> +	mbx_start = pci_resource_start(pdev, 0) + mbx_region.start;
> +	len = resource_size(&mbx_region);
> +
> +	mbx_addr = ioremap(mbx_start, len);
> +	if (!mbx_addr)
> +		return -EIO;

Should some kind of error be printed with a hint, what the user could do?

> +
> +	writel(IDPF_VF_TEST_VAL, mbx_addr + VF_ARQBAL - VF_BASE);
> +
> +	/* Force memory write to complete before reading it back */
> +	wmb();
> +
> +	*is_vf = readl(mbx_addr + VF_ARQBAL - VF_BASE) == IDPF_VF_TEST_VAL;
> +
> +	iounmap(mbx_addr);
> +
> +	return 0;
> +}
> +
>   /**
>    * idpf_vf_ctlq_reg_init - initialize default mailbox registers
>    * @adapter: adapter structure

