Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF81B39A69
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D02E60B21;
	Thu, 28 Aug 2025 10:40:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uf7sg3cYF9Eq; Thu, 28 Aug 2025 10:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5230360BCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756377644;
	bh=/sqTPAhGuwTYFXfsuiKw4m1Tn0kTsx3MzexPL5jVVYY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VQGsdgVn5fkys+ts0iUWrhEZQqfoxeeVKc8zGHATF6Ju9L1tY8JXQLnBcKny8vlGC
	 3kgi6lfIcyyCJ5FH80ap8tU84l2pBlpH38OnqSkwNHwYMchIJPAYeX4wGw+hsqhG+t
	 k4cg23AD+nj9U3BeYD/TdbL7qAGw3TtIOFA+qRiJ0Puf03RupL8WhdiR55iX8y5rto
	 tky6X6Ywa30XetYwLK2EOBSamXjPHnCfdkYv/WZQw7476kyaKbUNbkgOlrNery5CPh
	 sn4DiBeIGSdJ8tgAv+MDtDausnBqvGMDxD/8iG9sz1zC1BRCN9E+19o95pB2kST+hv
	 JmlKYU+l+ptzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5230360BCD;
	Thu, 28 Aug 2025 10:40:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D61517D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81F9A813DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:40:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_qO9YSPUS0s for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:40:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9F1F98142A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F1F98142A
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F1F98142A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:40:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5054C601BB;
 Thu, 28 Aug 2025 10:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C80CAC4CEEB;
 Thu, 28 Aug 2025 10:40:38 +0000 (UTC)
Date: Thu, 28 Aug 2025 11:40:36 +0100
From: Simon Horman <horms@kernel.org>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, madhu.chittim@intel.com,
 netdev@vger.kernel.org, Sridhar Samudrala <sridhar.samudrala@intel.com>
Message-ID: <20250828104036.GA10519@horms.kernel.org>
References: <20250826172845.265142-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250826172845.265142-1-pavan.kumar.linga@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756377640;
 bh=NwR50ZpM6+Ymc6dkl0+mc9OsZhEF6EybCCscmIk+Dzo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b/MrN/V9C+XQmfWdIPZiTK9ah1S1Zvix6O9zkq3Qk26i/Wna/kqG9XOV+7+c7Wc9n
 JOaIkR3bmfJ0nePmMaaodHhqeCe+bzLayOWcV/yN7bzttvT2ekqaA8euLSU9xVRBpg
 ASE0RGmdG/2Lw7YAcyeunohVxv0bsNNnWqgIodTSFLiCWvgeNYOaT9lijWiI9wGljk
 JDP+cO/0LiLRW/NOm3mYHeUoRyxWxK7wEC8DINQU5qmiOMB4gXijI7bPNt6wLLx05d
 SzfiX/U+JRiEeHGtjhwB4asa3qE+5NnfTBuTbC8YkeTvtEc1sXzExl8u6cKszlWGmR
 9fwoNM83X5gdw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=b/MrN/V9
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] idpf: add support for
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

On Tue, Aug 26, 2025 at 10:28:45AM -0700, Pavan Kumar Linga wrote:
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
> 
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 8c46481d2e1f..b161715e1168 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -7,11 +7,57 @@
>  
>  #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
>  
> +#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
> +#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
> +	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
> +
>  MODULE_DESCRIPTION(DRV_SUMMARY);
>  MODULE_IMPORT_NS("LIBETH");
>  MODULE_IMPORT_NS("LIBETH_XDP");
>  MODULE_LICENSE("GPL");
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
> +	u8 is_vf = 0;
> +	int err;
> +
> +	switch (ent->device) {
> +	case IDPF_DEV_ID_PF:
> +		goto dev_ops_init;
> +	case IDPF_DEV_ID_VF:
> +		is_vf = 1;
> +		goto dev_ops_init;
> +	default:
> +		if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF)
> +			goto check_vf;
> +
> +		return -ENODEV;
> +	}
> +
> +check_vf:
> +	err = idpf_is_vf_device(adapter->pdev, &is_vf);
> +	if (err)
> +		return err;
> +
> +dev_ops_init:
> +	if (is_vf) {
> +		idpf_vf_dev_ops_init(adapter);
> +		adapter->crc_enable = true;
> +	} else {
> +		idpf_dev_ops_init(adapter);
> +	}
> +
> +	return 0;
> +}

Hi Pavan,

I think that in Kernel Networking code the usual use cases
of goto labels are: for error handling; and, optimisation,
f.e. in the datapath.

I don't think this code falls into either category.
So I suggest implementing it without gotos.

Thanks!

...
