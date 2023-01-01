Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4598F65A944
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jan 2023 09:32:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CA6A60BE6;
	Sun,  1 Jan 2023 08:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CA6A60BE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672561955;
	bh=CZ36ELY5A2MD1+/UYufxbyNVEftPLPXsIeojDjy3KPg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zLIQWLPPFkkga7YkK54WrG83f0gaqctyObLB6nLoeg0u2Z0kOSeH1DANVi3ACiJQy
	 j8ku92OU1xIWZUIQLkX2qSs/TBgR7O/SlXQcQ8i7VpNoLaba4hf+9o08d53PUlZseb
	 UQh4SSMqyCh5LmTZ7m/lgXsX45oOr13+lR6rngwc116CK1bGYumG6fzXGSRy133Hym
	 mDm2SOOmtCEdKa9YlKR6K1cZRZI5+oZIfFm08+zV9YiyVTOqPYY5EFZomqTxaXGc/w
	 mvxlHUeTR24zcPWh9hed/ftrAIlLuS8MiDZJkQLtxHlIdKX/uFaayNeHgdQjBGNdO/
	 FH7bWZt8znl7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IywV6O4qREPj; Sun,  1 Jan 2023 08:32:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64F2260B9F;
	Sun,  1 Jan 2023 08:32:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F2260B9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2934F1BF282
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 08:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 008C6813A4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 08:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 008C6813A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VHDxWpcKPe2j for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Jan 2023 08:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72C87813A2
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72C87813A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 08:32:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D254BB80951;
 Sun,  1 Jan 2023 08:32:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F767C433EF;
 Sun,  1 Jan 2023 08:32:21 +0000 (UTC)
Date: Sun, 1 Jan 2023 10:32:17 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
Message-ID: <Y7FFESJONJqGJUkb@unreal>
References: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672561942;
 bh=bbsHjJ0JkS3AgnKxQQCuXwAIuU+mqpDxReBTV+i0EVQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lb1Jda9Ch4NFf6oW/o+yKMtS22KQjDd8sIZglOIIeHjAHBSoRgjIQieOngfEWoBt1
 tYXKlNCB/+LIGPIZeF9lFVrh0gdnQhkWkEQT9Z3ZdpnsoNmPbFaFJ4IZmWc+MTEl9t
 Nd05ILknaYXnn9PIdn1tp5AgkhHWja478AIMlaxxCN2NHm6MP7TjVd5So0WUFvOKQG
 onh/YU2m+4Fhym24POumGF9ch6bGGmOCL7RA/8t75FgHV3lx3dAjnmLnmhLSuyRFgY
 AijLTnoC1Xv4HDhPX9IUo+PIaciN6XhbGyc102mkTnNebiubrLzwPf4AOrCWAAxJo6
 jLdVw5YKdBMHQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Lb1Jda9C
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: intel-wired-lan@lists.osuosl.org, rajat.khandelwal@intel.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
> The CPU logs get flooded with replay rollover/timeout AER errors in
> the system with i225_lmvp connected, usually inside thunderbolt devices.
> 
> One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
> an Intel Foxville chipset, which uses the igc driver.
> On connecting ethernet, CPU logs get inundated with these errors. The point
> is we shouldn't be spamming the logs with such correctible errors as it
> confuses other kernel developers less familiar with PCI errors, support
> staff, and users who happen to look at the logs.
> 
> Signed-off-by: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 28 +++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ebff0e04045d..a3a6e8086c8d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6201,6 +6201,26 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>  	return value;
>  }
>  
> +#ifdef CONFIG_PCIEAER
> +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
> +{
> +	struct pci_dev *pdev = adapter->pdev;
> +	u32 aer_pos, corr_mask;
> +
> +	if (pdev->device != IGC_DEV_ID_I225_LMVP)
> +		return;
> +
> +	aer_pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ERR);
> +	if (!aer_pos)
> +		return;
> +
> +	pci_read_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, &corr_mask);
> +
> +	corr_mask |= PCI_ERR_COR_REP_ROLL | PCI_ERR_COR_REP_TIMER;
> +	pci_write_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, corr_mask);

Shouldn't this igc_mask_aer_replay_correctible function be implemented
in drivers/pci/quirks.c and not in igc_probe()?

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
