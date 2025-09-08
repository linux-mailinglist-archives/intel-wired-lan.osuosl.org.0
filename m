Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89778B489F9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 12:21:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D1A4417BD;
	Mon,  8 Sep 2025 10:21:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KRYUveUaXtct; Mon,  8 Sep 2025 10:21:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A605F4173B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757326866;
	bh=FAVhqEp7xiJruC158ZJH5xhykVIv0ubPIdu3Tg/04Pw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RqCFsxDfJ7MKFzTQekUTGpALbr2qLG+w+nHVeEWWLvqJpyW3BtY/VFRgmEV5Mna9T
	 8544TvUSq3v6tH2YlMNXQkaxXMp3MMyvFE6tB4kcNb+gDLHbjT/sO8/cpj2rardftT
	 WNYqMnAL50wzhj4cruOPyfSXla6SVeaafu0xKhbXBFlLpfpv1ajcdTQbcGeKWTVlJc
	 K/Iu42qDr8poqtP0UQAIk+ZhFe3asCLCFThlvBztgsfGGnJX+Xdni7hIimAnO20ZcK
	 v6ztO892faax4whqRoE6Y0V0x61a1rcw2peDehhDUXTfVFeK9XH6BuE85YxnAxSF3q
	 lA8lG4Q6PfmOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A605F4173B;
	Mon,  8 Sep 2025 10:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 02C6C186
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E880141527
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iKlD-cXhqJdx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 10:21:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5854441516
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5854441516
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5854441516
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:21:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 75BB1404B2;
 Mon,  8 Sep 2025 10:21:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C2E8C4CEF1;
 Mon,  8 Sep 2025 10:21:01 +0000 (UTC)
Date: Mon, 8 Sep 2025 11:20:59 +0100
From: Simon Horman <horms@kernel.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Alok Tiwari <alok.a.tiwari@oracle.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250908102059.GD2015@horms.kernel.org>
References: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
 <IA3PR11MB8986397B4B9F900B6EA39A8FE503A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986397B4B9F900B6EA39A8FE503A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757326863;
 bh=ZKg17N3KraCewQC0K64+ibWjBGkWF7poTE88VMhOUCM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S3hohKuTcjAP4oK5h4/WMQSHPPVS/IQ5ybIIwlSiP7kCt0OflRmlg6cgzmz7FK+W3
 ou8Rubj2+4ojkx2yo3Lh2RvYsEk9frJ6OLF1uYJ/uk8bQxH96EGTgYYjlUCMCCOQSv
 KxcmDEdKfa1dNK6xO5WWvH6Z+vHvE0SuJ0zKoZZNdjaPxnc0iPKCLiHUpz9k7N5z9F
 GocYiLVLFrNzI9WVbyX+Fa/BPomP+Br2mrP6AiTFISQKapBagfi6eo59bvfMeXCz0b
 2VI5wLEPvMh9FkUZuBgdmxoxemyFnIlmMZbcMpPo3u7DRJQ2skIXnHt7upCSzdvfBZ
 DOR8p12xKFSRQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=S3hohKuT
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
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

On Fri, Sep 05, 2025 at 07:52:13PM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Alok Tiwari
> > Sent: Friday, September 5, 2025 6:34 PM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com; horms@kernel.org; intel-wired-lan@lists.osuosl.org;
> > netdev@vger.kernel.org
> > Cc: alok.a.tiwari@oracle.com
> > Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in
> > function comment for ixgbe_get_num_per_func()
> > 
> > Correct a typo in the comment where "PH" was used instead of "PF".
> > The function returns the number of resources per PF or 0 if no PFs are
> > available.
> > 
> > Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>

Hi Aleksandr,

Perhaps I need more coffee.
But it's unclear to me why you responded to the above with the patch below.

> From: Qiang Liu <liuqiang@kylinos.cn>
> 
> After obtaining the register value via raw_desc,
> redundant self-assignment operations can be removed.
> 
> Signed-off-by: Qiang Liu <liuqiang@kylinos.cn>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index bfeef5b0b99d..6efedf04a963 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -143,18 +143,14 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>  
>  	/* Read sync Admin Command response */
>  	if ((hicr & IXGBE_PF_HICR_SV)) {
> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>  			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -			raw_desc[i] = raw_desc[i];
> -		}
>  	}
>  
>  	/* Read async Admin Command response */
>  	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>  			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] = raw_desc[i];
> -		}
>  	}
>  
>  	/* Handle timeout and invalid state of HICR register */
> -- 
> 2.43.0

...
